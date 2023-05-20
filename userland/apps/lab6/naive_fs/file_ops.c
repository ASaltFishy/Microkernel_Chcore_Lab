#include "file_ops.h"

#include <stdio.h>
#include <string.h>

#include "block_layer.h"

// 16MSD卡，512block大小
// 0号block存 FAT bitmap
#define BLOCK_NUM 32768
#define DATA_BLOCK_NUM 32000
#define FAT_BLOCK_NUM (DATA_BLOCK_NUM * sizeof(int) / BLOCK_SIZE)
#define ROOT_DIR_BLOCK FAT_BLOCK_NUM + 1
#define NAME_LENGTH 24

struct dir_entry {
    char file_name[24];
    int block_num;
    int size
};

/*-----------------------FOR BITMAP----------------------*/

int alloc_block() {
    // 遍历从左到右bitmap寻找free block (0号block是根目录，默认已分配)
    int begin_id = 1;
    char *buf = (char *)malloc(BLOCK_SIZE);
    sd_bread(0, buf);
    *buf = 1 << 7;

    // 根据blockid逐个查询bitmap的有效情况，直到找到空位为止
    for (int i = begin_id; i < DATA_BLOCK_NUM; i++) {
        int offset = i / 8;
        int bit = i % 8;
        char temp = *(buf + offset);
        if (temp != 0xff) {
            if (((temp >> (7 - bit)) & 1) == 0) {
                *(buf + offset) = temp | (1 << (7 - bit));
                sd_bwrite(0, buf);
                free(buf);
                return i;
            }
        }
    }
    free(buf);
    return 0;
}

void free_block(int id) {
    if (id < 0 || id >= DATA_BLOCK_NUM)
        return;

    int block_location = id / 8;
    int bit_location = id % 8;
    char buf[BLOCK_SIZE];
    sd_bread(0, buf);
    char temp = buf[block_location];
    buf[block_location] = temp & ~(0x1 << (7 - bit_location));
    sd_bwrite(0, buf);
    return;
}

/*-----------------------FOR BITMAP----------------------*/

int naive_fs_access(const char *name) {
    /* LAB 6 TODO BEGIN */
    // get root block data
    char buff[BLOCK_SIZE];
    sd_bread(ROOT_DIR_BLOCK, buff);

    // search dir entries
    int entrySize = sizeof(struct dir_entry);
    struct dir_entry *ptr = (struct dir_entry *)buff;
    for (int i = 0; buff[i * entrySize] != '\0'; i++) {
        if (strcmp(ptr->file_name, name) == 0) {
            return 0;
        }
        ptr++;
    }
    return -1;
    /* LAB 6 TODO END */
    return -2;
}

int naive_fs_creat(const char *name) {
    /* LAB 6 TODO BEGIN */
    if (naive_fs_access(name) == 0) {
        return -1;
    }

    // read data from block
    char buff[BLOCK_SIZE];
    sd_bread(ROOT_DIR_BLOCK, buff);

    // construct new entry
    int i;
    int entrySize = sizeof(struct dir_entry);
    for (i = 0; buff[i * entrySize] != '\0'; i++)
        ;
    struct dir_entry *ptr = ((struct dir_entry *)buff) + i;
    strcpy(ptr->file_name, name);
    ptr->size = 0;
    ptr->block_num = alloc_block();

    // write back dir
    sd_bwrite(ROOT_DIR_BLOCK, buff);
    return 0;
    /* LAB 6 TODO END */
    return -2;
}

int naive_fs_pread(const char *name, int offset, int size, char *buffer) {
    /* LAB 6 TODO BEGIN */
    // read data from block
    char buff[BLOCK_SIZE],data[BLOCK_SIZE];
    sd_bread(ROOT_DIR_BLOCK, buff);

    // get dir entry
    int i, fileSize, first_blk, readByte = 0;
    int entrySize = sizeof(struct dir_entry);
    struct dir_entry *ptr = (struct dir_entry *)buff;
    for (i = 0; buff[i * entrySize] != '\0'; i++) {
        if (strcmp(ptr->file_name, name) == 0) {
            fileSize = ptr->size;
            first_blk = ptr->block_num;
            sd_bread(first_blk,data);
            if (offset >= fileSize) {
                return 0;
            } else {
                readByte = fileSize - offset < size ? fileSize - offset : size;
                // read file (似乎没用到FAT，读取都限制在一个block中)
                memcpy(buffer, data + offset, readByte);
                return readByte;
            }
        }
        ptr++;
    }

    // non-existed file
    return -1;

    /* LAB 6 TODO END */
    return -2;
}

int naive_fs_pwrite(const char *name, int offset, int size, const char *buffer) {
    /* LAB 6 TODO BEGIN */
    if (naive_fs_access(name) != 0) {
        return -1;
    }

    char buff[BLOCK_SIZE],data[BLOCK_SIZE];
    sd_bread(ROOT_DIR_BLOCK, buff);

    // get dir entry
    int i, fileSize, first_blk, writeByte = 0;
    int entrySize = sizeof(struct dir_entry);
    struct dir_entry *ptr = (struct dir_entry *)buff;
    for (i = 0; buff[i * entrySize] != '\0'; i++) {
        if (strcmp(ptr->file_name, name) == 0) {
            // change size of file
            ptr->size = offset+size;
            sd_bwrite(ROOT_DIR_BLOCK,buff);
            sd_bread(ptr->block_num,data);
            memcpy(data+offset,buffer,size);
            sd_bwrite(ptr->block_num,data);
            return size;
        }
        ptr++;
    }

    // non-existed file
    return -1;

    /* LAB 6 TODO END */
    return -2;
}

int naive_fs_unlink(const char *name) {
    /* LAB 6 TODO BEGIN */
    // read data from block
    char buff[BLOCK_SIZE];
    sd_bread(ROOT_DIR_BLOCK, buff);

    // destruct entry
    int i;
    int entrySize = sizeof(struct dir_entry);
    struct dir_entry *ptr = (struct dir_entry *)buff;
    for (i = 0; buff[i * entrySize] != '\0'; i++) {
        if (strcmp(ptr->file_name, name) == 0) {
            int first_blk = ptr->block_num;
            memset((void *)ptr, 0, sizeof(struct dir_entry));
            sd_bwrite(ROOT_DIR_BLOCK,buff);
            free_block(first_blk);
            return 0;
        }
        ptr++;
    }

    // cannot find this file
    return -1;
    /* LAB 6 TODO END */
    return -2;
}
