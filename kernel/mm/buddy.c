/*
 * Copyright (c) 2022 Institute of Parallel And Distributed Systems (IPADS)
 * ChCore-Lab is licensed under the Mulan PSL v1.
 * You can use this software according to the terms and conditions of the Mulan
 * PSL v1. You may obtain a copy of Mulan PSL v1 at:
 *     http://license.coscl.org.cn/MulanPSL
 * THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
 * NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE. See the
 * Mulan PSL v1 for more details.
 */

#include <common/kprint.h>
#include <common/macro.h>
#include <common/util.h>
#include <mm/buddy.h>

/*
 * The layout of a phys_mem_pool:
 * | page_metadata are (an array of struct page) | alignment pad | usable memory
 * |
 *
 * The usable memory: [pool_start_addr, pool_start_addr + pool_mem_size).
 * page is orgnazied as a list which head is start_page
 */
void init_buddy(struct phys_mem_pool *pool, struct page *start_page,
                vaddr_t start_addr, u64 page_num) {
  int order;
  int page_idx;
  struct page *page;

  /* Init the physical memory pool. */
  pool->pool_start_addr = start_addr;
  pool->page_metadata = start_page;
  pool->pool_mem_size = page_num * BUDDY_PAGE_SIZE;
  /* This field is for unit test only. */
  pool->pool_phys_page_num = page_num;

  /* Init the free lists */
  for (order = 0; order < BUDDY_MAX_ORDER; ++order) {
    pool->free_lists[order].nr_free = 0;
    init_list_head(&(pool->free_lists[order].free_list));
  }

  /* Clear the page_metadata area. */
  memset((char *)start_page, 0, page_num * sizeof(struct page));

  /* Init the page_metadata area. */
  for (page_idx = 0; page_idx < page_num; ++page_idx) {
    page = start_page + page_idx;
    page->allocated = 1;
    page->order = 0;
    page->pool = pool;
  }

  /* Put each physical memory page into the free lists. */
  for (page_idx = 0; page_idx < page_num; ++page_idx) {
    page = start_page + page_idx;
    buddy_free_pages(pool, page);
  }
}

static struct page *get_buddy_chunk(struct phys_mem_pool *pool,
                                    struct page *chunk) {
  u64 chunk_addr;
  u64 buddy_chunk_addr;
  int order;

  /* Get the address of the chunk. */
  chunk_addr = (u64)page_to_virt(chunk);
  order = chunk->order;
/*
 * Calculate the address of the buddy chunk according to the address
 * relationship between buddies.
 * BUDDY_PAGE_SIZE_ORDER is offset of a page
 */
#define BUDDY_PAGE_SIZE_ORDER (12)
  // change related bit
  buddy_chunk_addr = chunk_addr ^ (1UL << (order + BUDDY_PAGE_SIZE_ORDER));

  /* Check whether the buddy_chunk_addr belongs to pool. */
  if ((buddy_chunk_addr < pool->pool_start_addr) ||
      (buddy_chunk_addr >= (pool->pool_start_addr + pool->pool_mem_size))) {
    return NULL;
  }

  return virt_to_page((void *)buddy_chunk_addr);
}

static struct page *split_page(struct phys_mem_pool *pool, u64 order,
                               struct page *page) {
  /* LAB 2 TODO 2 BEGIN */
  /*
   * Hint: Recursively put the buddy of current chunk into
   * a suitable free list.
   */
  if (page->order == order)
    return page;
  else {
    page->order--;
    struct page *buddy = get_buddy_chunk(pool, page);
    buddy->order = page->order;
    pool->free_lists[buddy->order].nr_free++;
    list_add(&buddy->node, &(pool->free_lists[buddy->order].free_list));
    return split_page(pool, order, page);
  }

  /* LAB 2 TODO 2 END */
}

struct page *buddy_get_pages(struct phys_mem_pool *pool, u64 order) {
  /* LAB 2 TODO 2 BEGIN */
  /*
   * Hint: Find a chunk that satisfies the order requirement
   * in the free lists, then split it if necessary.
   */

  // check invalid input
  if (order < 0 || order >= BUDDY_MAX_ORDER) return NULL;

  struct page *to_be_splite;
  if (pool->free_lists[order].nr_free == 0) {
    for (int i = order + 1; i < BUDDY_MAX_ORDER; i++) {
      if (pool->free_lists[i].nr_free > 0) {
        to_be_splite =
            list_entry((pool->free_lists[i].free_list.next), struct page, node);
        pool->free_lists[i].nr_free--;
        list_del(&to_be_splite->node);
        struct page *p = split_page(pool, order, to_be_splite);
        p->allocated = 1;
        return p;
      }
    }
    return NULL;
  } else {
    struct page *ret =
        list_entry((pool->free_lists[order].free_list.next), struct page, node);
    list_del(&ret->node);
    pool->free_lists[order].nr_free--;
    ret->allocated = 1;
    return ret;
  }

  /* LAB 2 TODO 2 END */
}

static struct page *merge_page(struct phys_mem_pool *pool, struct page *page) {
  /* LAB 2 TODO 2 BEGIN */
  /*
   * Hint: Recursively merge current chunk with its buddy
   * if possible.
   */
  struct page *buddy = get_buddy_chunk(pool, page);
  if (page->order >= BUDDY_MAX_ORDER - 1 || buddy == NULL ||
      buddy->order != page->order) {
    return page;
  } else {
    if (buddy->allocated == 1) {
      return page;
    } else {
      pool->free_lists[buddy->order].nr_free--;
      list_del(&buddy->node);
      if (page > buddy) {
        struct page *temp = buddy;
        buddy = page;
        page = temp;
      }
      page->order++;
      buddy->order++;
      return merge_page(pool, page);
    }
  }

  /* LAB 2 TODO 2 END */
}

void buddy_free_pages(struct phys_mem_pool *pool, struct page *page) {
  /* LAB 2 TODO 2 BEGIN */
  /*
   * Hint: Merge the chunk with its buddy and put it into
   * a suitable free list.
   */
  if (page->allocated == 0) return;

  page->allocated = 0;
  struct page *after_merge_page = merge_page(pool, page);
  int order = after_merge_page->order;
  pool->free_lists[order].nr_free++;
  list_add(&after_merge_page->node, &(pool->free_lists[order].free_list));

  /* LAB 2 TODO 2 END */
}

void *page_to_virt(struct page *page) {
  u64 addr;
  struct phys_mem_pool *pool = page->pool;

  BUG_ON(pool == NULL);
  /* page_idx * BUDDY_PAGE_SIZE + start_addr */
  addr = (page - pool->page_metadata) * BUDDY_PAGE_SIZE + pool->pool_start_addr;
  return (void *)addr;
}

struct page *virt_to_page(void *ptr) {
  struct page *page;
  struct phys_mem_pool *pool = NULL;
  u64 addr = (u64)ptr;
  int i;

  /* Find the corresponding physical memory pool. */
  for (i = 0; i < physmem_map_num; ++i) {
    if (addr >= global_mem[i].pool_start_addr &&
        addr < global_mem[i].pool_start_addr + global_mem[i].pool_mem_size) {
      pool = &global_mem[i];
      break;
    }
  }

  BUG_ON(pool == NULL);
  page = pool->page_metadata +
         (((u64)addr - pool->pool_start_addr) / BUDDY_PAGE_SIZE);
  return page;
}

u64 get_free_mem_size_from_buddy(struct phys_mem_pool *pool) {
  int order;
  struct free_list *list;
  u64 current_order_size;
  u64 total_size = 0;

  for (order = 0; order < BUDDY_MAX_ORDER; order++) {
    /* 2^order * 4K */
    current_order_size = BUDDY_PAGE_SIZE * (1 << order);
    list = pool->free_lists + order;
    total_size += list->nr_free * current_order_size;

    /* debug : print info about current order */
    // kdebug("buddy memory chunk order: %d, size: 0x%lx, num: %d\n", order,
          //  current_order_size, list->nr_free);
  }
  return total_size;
}

#ifdef CHCORE_KERNEL_TEST
#include <lab.h>
#include <mm/mm.h>
void lab2_test_buddy(void) {
  struct phys_mem_pool *pool = &global_mem[0];
  {
    u64 free_mem_size = get_free_mem_size_from_buddy(pool);
    lab_check(pool->pool_phys_page_num == free_mem_size / PAGE_SIZE,
              "Init buddy");
  }
  {
    lab_check(buddy_get_pages(pool, BUDDY_MAX_ORDER + 1) == NULL &&
                  buddy_get_pages(pool, (u64)-1) == NULL,
              "Check invalid order");
  }
  {
    bool ok = true;
    u64 expect_free_mem = pool->pool_phys_page_num * PAGE_SIZE;
    struct page *page = buddy_get_pages(pool, 0);
    BUG_ON(page == NULL);
    lab_assert(page->order == 0 && page->allocated);
    expect_free_mem -= PAGE_SIZE;
    lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
    buddy_free_pages(pool, page);
    expect_free_mem += PAGE_SIZE;
    lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
    lab_check(ok, "Allocate & free order 0");
  }
  {
    bool ok = true;
    u64 expect_free_mem = pool->pool_phys_page_num * PAGE_SIZE;
    struct page *page;
    for (int i = 0; i < BUDDY_MAX_ORDER; i++) {
      page = buddy_get_pages(pool, i);
      BUG_ON(page == NULL);
      lab_assert(page->order == i && page->allocated);
      expect_free_mem -= (1 << i) * PAGE_SIZE;
      lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
      buddy_free_pages(pool, page);
      expect_free_mem += (1 << i) * PAGE_SIZE;
      lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
    }
    for (int i = BUDDY_MAX_ORDER - 1; i >= 0; i--) {
      page = buddy_get_pages(pool, i);
      BUG_ON(page == NULL);
      lab_assert(page->order == i && page->allocated);
      expect_free_mem -= (1 << i) * PAGE_SIZE;
      lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
      buddy_free_pages(pool, page);
      expect_free_mem += (1 << i) * PAGE_SIZE;
      lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
    }
    lab_check(ok, "Allocate & free each order");
  }
  {
    bool ok = true;
    u64 expect_free_mem = pool->pool_phys_page_num * PAGE_SIZE;
    struct page *pages[BUDDY_MAX_ORDER];
    for (int i = 0; i < BUDDY_MAX_ORDER; i++) {
      pages[i] = buddy_get_pages(pool, i);
      BUG_ON(pages[i] == NULL);
      lab_assert(pages[i]->order == i);
      expect_free_mem -= (1 << i) * PAGE_SIZE;
      lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
    }
    for (int i = 0; i < BUDDY_MAX_ORDER; i++) {
      buddy_free_pages(pool, pages[i]);
      expect_free_mem += (1 << i) * PAGE_SIZE;
      lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
    }
    lab_check(ok, "Allocate & free all orders");
  }
  {
    bool ok = true;
    u64 expect_free_mem = pool->pool_phys_page_num * PAGE_SIZE;
    struct page *page;
    for (int i = 0; i < pool->pool_phys_page_num; i++) {
      page = buddy_get_pages(pool, 0);
      BUG_ON(page == NULL);
      lab_assert(page->order == 0);
      expect_free_mem -= PAGE_SIZE;
      lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
    }
    lab_assert(get_free_mem_size_from_buddy(pool) == 0);
    lab_assert(buddy_get_pages(pool, 0) == NULL);
    for (int i = 0; i < pool->pool_phys_page_num; i++) {
      page = pool->page_metadata + i;
      lab_assert(page->allocated);
      buddy_free_pages(pool, page);
      expect_free_mem += PAGE_SIZE;
      lab_assert(get_free_mem_size_from_buddy(pool) == expect_free_mem);
    }
    lab_assert(pool->pool_phys_page_num * PAGE_SIZE == expect_free_mem);
    lab_check(ok, "Allocate & free all memory");
  }
  printk("[TEST] Buddy tests finished\n");
}
#endif /* CHCORE_KERNEL_TEST */
