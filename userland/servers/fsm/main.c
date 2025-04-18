/*
 * Copyright (c) 2022 Institute of Parallel And Distributed Systems (IPADS)
 * ChCore-Lab is licensed under the Mulan PSL v1.
 * You can use this software according to the terms and conditions of the Mulan PSL v1.
 * You may obtain a copy of Mulan PSL v1 at:
 *     http://license.coscl.org.cn/MulanPSL
 * THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR
 * PURPOSE.
 * See the Mulan PSL v1 for more details.
 */

#include <chcore/fs/defs.h>
#include <chcore/fsm.h>
#include <chcore/internal/raw_syscall.h>
#include <chcore/internal/server_caps.h>
#include <chcore/ipc.h>
#include <chcore/procm.h>
#include <chcore/tmpfs.h>
#include <chcore/types.h>
#include <stdio.h>

#include "fsm.h"
#include "mount_info.h"

extern struct spinlock fsmlock;

extern struct list_head fsm_mount_info_mapping;

/* Mapping a pair of client_badge and fd to a mount_point_info_node struct*/
void fsm_set_mount_info_withfd(u64 client_badge, int fd,
                               struct mount_point_info_node *mount_point_info) {
    struct client_fd_info_node *private_iter;
    for_each_in_list(private_iter, struct client_fd_info_node, node, &fsm_mount_info_mapping) {
        if (private_iter->client_badge == client_badge) {
            private_iter->mount_point_info[fd] = mount_point_info;
            return;
        }
    }
    struct client_fd_info_node *n = (struct client_fd_info_node *)malloc(sizeof(struct client_fd_info_node));
    n->client_badge = client_badge;
    int i;
    for (i = 0; i < MAX_SERVER_ENTRY_PER_CLIENT; i++)
        n->mount_point_info[i] = NULL;

    n->mount_point_info[fd] = mount_point_info;
    /* Insert node to fsm_server_entry_mapping */
    list_append(&n->node, &fsm_mount_info_mapping);
}

/* Get a mount_point_info_node struct with a pair of client_badge and fd*/
struct mount_point_info_node *fsm_get_mount_info_withfd(u64 client_badge, int fd) {
    struct client_fd_info_node *n;
    for_each_in_list(n, struct client_fd_info_node, node, &fsm_mount_info_mapping) if (n->client_badge == client_badge) return n->mount_point_info[fd];
    return NULL;
}

void strip_path(struct mount_point_info_node *mpinfo, char *path) {
    if (strcmp(mpinfo->path, "/")) {
        char *s = path;
        int i, len_after_strip;
        // change the VFS path to real path
        len_after_strip = strlen(path) - mpinfo->path_len;
        if (len_after_strip == 0) {
            path[0] = '/';
            path[1] = '\0';
        } else {
            for (i = 0; i < len_after_strip; ++i) {
                path[i] = path[i + mpinfo->path_len];
            }
            path[i] = '\0';
        }
    }
}

/* You could add new functions here as you want. */
/* LAB 5 TODO BEGIN */
// static struct ipc_struct *fakefs_ipc_struct = NULL;
// static struct ipc_struct *tmpfs_ipc_struct = NULL;

/* LAB 5 TODO END */

void fsm_server_dispatch(struct ipc_msg *ipc_msg, u64 client_badge) {
    int ret;
    bool ret_with_cap = false;
    struct fs_request *fr;
    fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);
    struct mount_point_info_node *mpinfo = NULL;

    /* You could add code here as you want.*/
    /* LAB 5 TODO BEGIN */
    /* LAB 5 TODO END */

    spinlock_lock(&fsmlock);

    switch (fr->req) {
        case FS_REQ_MOUNT:
            // printf("[fsm_server_dispatch]mount %s\n", fr->mount.fs_path);
            ret = fsm_mount_fs(fr->mount.fs_path, fr->mount.mount_path);  // path=(device_name), path2=(mount_point)
            break;
        case FS_REQ_UMOUNT:
            // printf("[fsm_server_dispatch]unmount %s\n", fr->mount.fs_path);
            ret = fsm_umount_fs(fr->mount.fs_path);
            break;
        case FS_REQ_GET_FS_CAP:
            // printf("[fsm_server_dispatch] get fs cap %s\n", fr->getfscap.pathname);
            mpinfo = get_mount_point(fr->getfscap.pathname, strlen(fr->getfscap.pathname));
            strip_path(mpinfo, fr->getfscap.pathname);
            ipc_msg->cap_slot_number = 1;
            ipc_set_msg_cap(ipc_msg, 0, mpinfo->fs_cap);
            ret_with_cap = true;
            break;

        /* LAB 5 TODO BEGIN */
        case FS_REQ_CREAT: {
            // printf("[fsm_server_dispatch] create file %s\n", fr->creat.pathname);
            mpinfo = get_mount_point(fr->creat.pathname, strlen(fr->creat.pathname));
            strip_path(mpinfo, fr->creat.pathname);

            struct ipc_msg *ipc_msg_fs = ipc_create_msg(mpinfo->_fs_ipc_struct, sizeof(struct fs_request), 0);
            struct fs_request *fr_fs = (struct fs_request *)ipc_get_msg_data(ipc_msg_fs);
            fr_fs->req = FS_REQ_CREAT;
            strcpy(fr_fs->creat.pathname, fr->creat.pathname);

            ret = ipc_call(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            ipc_destroy_msg(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            break;
        }
        case FS_REQ_OPEN: {
            // printf("[fsm_server_dispatch] open file %s\n", fr->open.pathname);
            mpinfo = get_mount_point(fr->open.pathname, strlen(fr->open.pathname));
            strip_path(mpinfo, fr->open.pathname);
            // printf("[fsm_server_dispatch] open file name after stripe %s\n", fr->open.pathname);

            struct ipc_msg *ipc_msg_fs = ipc_create_msg(mpinfo->_fs_ipc_struct, sizeof(struct fs_request), 0);
            struct fs_request *fs_fr = (struct fs_request *)ipc_get_msg_data(ipc_msg_fs);
            fs_fr->req = FS_REQ_OPEN;
            fs_fr->open.new_fd = fr->open.new_fd;
            strcpy(fs_fr->open.pathname, fr->open.pathname);

            ret = ipc_call(mpinfo->_fs_ipc_struct, ipc_msg_fs);
			fsm_set_mount_info_withfd(client_badge, ret, mpinfo);
            ipc_destroy_msg(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            break;
        }
        case FS_REQ_CLOSE: {
            // printf("[fsm_server_dispatch] close file %d\n", fr->close.fd);
            mpinfo = fsm_get_mount_info_withfd(client_badge, fr->close.fd);

			// BUG_ON(mpinfo==NULL);

            struct ipc_msg *ipc_msg_fs = ipc_create_msg(mpinfo->_fs_ipc_struct, sizeof(struct fs_request), 0);
            struct fs_request *fs_fr = (struct fs_request *)ipc_get_msg_data(ipc_msg_fs);
            fs_fr->req = FS_REQ_CLOSE;
            fs_fr->close.fd = fr->close.fd;

            ret = ipc_call(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            ipc_destroy_msg(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            break;
        }
        // case FS_REQ_WRITE: {
        //     mpinfo = get_mount_point(fr->getfscap.pathname, strlen(fr->getfscap.pathname));
        //     strip_path(mpinfo, fr->creat.pathname);

        //     int cnt = fr->write.count;
        //     struct ipc_msg *ipc_msg = ipc_create_msg(mpinfo->_fs_ipc_struct, sizeof(struct fs_request) + cnt + 1, 0);
        //     struct fs_request *fs_fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);

        //     fs_fr->req = FS_REQ_WRITE;
        //     fs_fr->write.fd = fr->write.fd;
        //     fs_fr->write.count = cnt;

        //     ipc_set_msg_data(ipc_msg, (void *)fr->write.write_buff_begin, sizeof(struct fs_request), cnt + 1);
        //     ret = ipc_call(mpinfo->_fs_ipc_struct, ipc_msg);
        //     ipc_destroy_msg(mpinfo->_fs_ipc_struct, ipc_msg);
        //     break;
        // }
        case FS_REQ_READ: {
            // printf("[fsm_server_dispatch]read file %d\n", fr->read.fd);
            mpinfo = fsm_get_mount_info_withfd(client_badge, fr->read.fd);

            int cnt = fr->read.count;
            struct ipc_msg *ipc_msg_fs = ipc_create_msg(mpinfo->_fs_ipc_struct, sizeof(struct fs_request) + cnt + 2, 0);
            struct fs_request *fs_fr = (struct fs_request *)ipc_get_msg_data(ipc_msg_fs);
            fs_fr->req = FS_REQ_READ;
            fs_fr->read.fd = fr->read.fd;
            fs_fr->read.count = cnt;
            // char *destv = (void *)fr;

            ret = ipc_call(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            if (ret > 0) {
                // memcpy(destv, ipc_get_msg_data(ipc_msg_fs), ret);
                ipc_set_msg_data(ipc_msg, ipc_get_msg_data(ipc_msg_fs), 0, ret);
            }
            ipc_destroy_msg(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            break;
        }
        case FS_REQ_GETDENTS64: {
            // printf("[fsm_server_dispatch]get dent %d\n", fr->getdents64.fd);
            mpinfo = fsm_get_mount_info_withfd(client_badge, fr->getdents64.fd);

            int cnt = fr->getdents64.count;
			// printf("[fsm_server_dispatch]get dent cnt %d\n",cnt);
			// 这个cnt略有点大，超限了，直接限制在512算了
			// BUG_ON(mpinfo==NULL);
			// BUG_ON(mpinfo->_fs_ipc_struct==NULL);

            struct ipc_msg *ipc_msg_fs = ipc_create_msg(mpinfo->_fs_ipc_struct, 512, 0);
            // printf("[fsm_server_dispatch]get dent A create msg\n");
			struct fs_request *fs_fr = (struct fs_request *)ipc_get_msg_data(ipc_msg_fs);
			// printf("[fsm_server_dispatch]get dent A create req\n");
            fs_fr->req = FS_REQ_GETDENTS64;
            fs_fr->getdents64.fd = fr->getdents64.fd;
            fs_fr->getdents64.count = cnt;

            ret = ipc_call(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            if (ret > 0) {
				// printf("[fsm_server_dispatch]get dent return size %d\n",ret);
                ipc_set_msg_data(ipc_msg, ipc_get_msg_data(ipc_msg_fs), 0, ret);
            }
            ipc_destroy_msg(mpinfo->_fs_ipc_struct, ipc_msg_fs);
            break;
        }
            /* LAB 5 TODO END */

        default:
            printf("[Error] Strange FS Server request number %d\n", fr->req);
            ret = -EINVAL;
            break;
    }

    spinlock_unlock(&fsmlock);

    if (ret_with_cap) {
        ipc_return_with_cap(ipc_msg, ret);
    } else {
        ipc_return(ipc_msg, ret);
    }
}

int main(int argc, char *argv[]) {
    init_fsm();

    ipc_register_server(fsm_server_dispatch);

    while (1) {
        __chcore_sys_yield();
    }
    return 0;
}
