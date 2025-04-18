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
#include <string.h>

typedef __builtin_va_list va_list;
#define va_start(v, l) __builtin_va_start(v, l)
#define va_end(v) __builtin_va_end(v)
#define va_arg(v, l) __builtin_va_arg(v, l)
#define va_copy(d, s) __builtin_va_copy(d, s)

extern struct ipc_struct *fs_ipc_struct;

/* You could add new functions or include headers here.*/
/* LAB 5 TODO BEGIN */

int fs_alloc_fd() {
    static int cnt = 0;
    return ++cnt;
}

// convert string to int
// 暂未考虑对负数的处理
int StringToInt(char *str) {
    int size = strlen(str);
    int off = 0;
    int number = 0;
    while (off < size && '0' <= str[off] && str[off] <= '9') {
        number = (str[off++] - '0') + number * 10;
    }
    return number;
}

// convert int to string
void IntToString(int src, char *dst) {
    int i = 0;
    char *temp = (char *)malloc(512);
    memset(temp, '\0', 512);

    while (src > 0) {
        temp[i++] = (src % 10) + '0';
        src /= 10;
    }

    // convert the string
    int size = strlen(temp);
    i = 0;
    for (int j = size - 1; j >= 0; j--) {
        dst[i++] = temp[j];
    }
    // printf("src int: %d, dst char: %s\n", src, dst);
    free(temp);
}

/* LAB 5 TODO END */

FILE *fopen(const char *filename, const char *mode) {
    /* LAB 5 TODO BEGIN */
    // printf("[fopen] open file %s mode %c\n", filename, *mode);
    struct ipc_msg *ipc_msg = ipc_create_msg(fs_ipc_struct, sizeof(struct fs_request), 0);
    struct fs_request *fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);

    FILE *file = (FILE *)malloc(sizeof(FILE));
    int fd = fs_alloc_fd();
    file->fd = fd;

    fr->req = FS_REQ_OPEN;
    strcpy(fr->open.pathname, filename);
    fr->open.new_fd = fd;
    switch (*mode) {
        case 'w':
            fr->open.mode = O_RDWR;
            fr->open.flags = O_RDWR;
            file->write = 1;
            break;
        case 'r':
            fr->open.mode = O_RDONLY;
            fr->open.flags = O_RDONLY;
            file->write = 0;
            break;
    }

    int ret = ipc_call(fs_ipc_struct, ipc_msg);
    ipc_destroy_msg(fs_ipc_struct, ipc_msg);

    if (ret < 0) {
        if (*mode == 'w') {
            // printf("[fopen] open unexisted file %s at mode write, create now\n", filename);
            ipc_msg = ipc_create_msg(fs_ipc_struct, sizeof(struct fs_request), 0);
            fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);
            fr->req = FS_REQ_CREAT;
            strcpy(fr->creat.pathname, filename);
            ret = ipc_call(fs_ipc_struct, ipc_msg);
            ipc_destroy_msg(fs_ipc_struct, ipc_msg);
            if (ret >= 0) {
                return fopen(filename, mode);
            } else {
                // printf("[fopen] create failed!\n");
                return NULL;
            }
        } else {
            // printf("[fopen] open unexisted file %s at mode read, return NULL\n", filename);
            return NULL;
        }
    } else {
        // printf("[fopen] open file %s successfully \n", filename);
        return file;
    }

    /* LAB 5 TODO END */
    return NULL;
}

size_t fwrite(const void *src, size_t size, size_t nmemb, FILE *f) {
    /* LAB 5 TODO BEGIN */
    // printf("[fwrite] write fd%d size %d nmemb %d\n", f->fd, size, nmemb);
    int cnt = nmemb * size + 1;
    struct ipc_msg *ipc_msg = ipc_create_msg(fs_ipc_struct, sizeof(struct fs_request) + cnt + 1, 0);
    struct fs_request *fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);

    fr->req = FS_REQ_WRITE;
    fr->write.fd = f->fd;
    fr->write.count = cnt - 1;

    // printf("[fwrite] write content %s\n", src);
    ipc_set_msg_data(ipc_msg, (void *)src, sizeof(struct fs_request), cnt + 1);

    int ret = ipc_call(fs_ipc_struct, ipc_msg);
    // printf("[fwrite] ipc call write fd%d ret %d\n", f->fd, ret);

    ipc_destroy_msg(fs_ipc_struct, ipc_msg);

    return ret;
    /* LAB 5 TODO END */
    return 0;
}

size_t fread(void *destv, size_t size, size_t nmemb, FILE *f) {
    /* LAB 5 TODO BEGIN */
    // printf("[fread] read fd%d size %d nmemb %d\n", f->fd, size, nmemb);
    int cnt = size * nmemb;
    struct ipc_msg *ipc_msg = ipc_create_msg(fs_ipc_struct, sizeof(struct fs_request) + cnt + 2, 0);
    struct fs_request *fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);
    fr->req = FS_REQ_READ;
    fr->read.fd = f->fd;
    fr->read.count = cnt;

    int ret = ipc_call(fs_ipc_struct, ipc_msg);
    if (ret > 0) {
        // printf("[fread] read fd%d size %d into dest\n", f->fd, ret);
        memcpy(destv, ipc_get_msg_data(ipc_msg), ret);
    }
    ipc_destroy_msg(fs_ipc_struct, ipc_msg);
    return ret;
    /* LAB 5 TODO END */
    return 0;
}

int fclose(FILE *f) {
    /* LAB 5 TODO BEGIN */
    // printf("[fclose] close fd%d\n", f->fd);
    struct ipc_msg *ipc_msg = ipc_create_msg(fs_ipc_struct, sizeof(struct fs_request), 0);
    struct fs_request *fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);

    fr->req = FS_REQ_CLOSE;
    fr->close.fd = f->fd;

    int ret = ipc_call(fs_ipc_struct, ipc_msg);
    ipc_destroy_msg(fs_ipc_struct, ipc_msg);
    // printf("[fopen] open fd%d return %d\n", f->fd, ret);
    if (ret < 0)
        return ret;
    /* LAB 5 TODO END */
    return 0;
}

/* Need to support %s and %d. */
int fscanf(FILE *f, const char *fmt, ...) {
    /* LAB 5 TODO BEGIN */
    // 1024 is enough for test /doge
    char rbuf[1024];
    memset(rbuf, 0x0, sizeof(rbuf));
    int file_len = fread(rbuf, sizeof(char), sizeof(rbuf), f);
    // printf("[fscanf]rbuf: %s, len %d\n", rbuf, file_len);

    va_list ap;
    va_start(ap, fmt);
    // printf("%s\n", fmt);
    int i = 0;
    int len = strlen(fmt);
    int fcursor = 0;
    while (i < len) {
        if (fmt[i] == '%') {
            i++;
            if (fmt[i] == 's') {
                char *tmp = va_arg(ap, char *);
                int end = fcursor;
                while (end < file_len) {
                    // 遇到空格或换行或制表符时结束
                    if (rbuf[end] == ' ' || rbuf[end] == '\n' || rbuf[end] == '\t') {
                        break;
                    }
                    end++;
                }
                memcpy(tmp, rbuf + fcursor, end - fcursor);
                fcursor = end;
            } else if (fmt[i] == 'd') {
                int *tmp = va_arg(ap, int *);
                int end = fcursor;
                while (end < file_len) {
                    if (rbuf[end] == ' ') {
                        break;
                    }
                    end++;
                }
                char str[256] = {'\0'};
                memcpy((char *)str, rbuf + fcursor, end - fcursor);
                *tmp = StringToInt(str);
                fcursor = end;
            }
        } else {
            if (rbuf[fcursor] == fmt[i]) {
                fcursor++;
            } else {
                // printf("unmatch format where i=%d cursor=%d\n",i,fcursor);
                return -EINVAL;
            }
        }
        i++;
    }
    va_end(ap);
    /* LAB 5 TODO END */
    return 0;
}

/* Need to support %s and %d. */
int fprintf(FILE *f, const char *fmt, ...) {
    /* LAB 5 TODO BEGIN */
    char wbuf[1024];
    memset(wbuf, 0x0, sizeof(wbuf));

    va_list ap;
    va_start(ap, fmt);
    // printf("%s\n", fmt);
    int i = 0;
    int len = strlen(fmt);
    int fcursor = 0;
    while (i < len) {
        if (fmt[i] == '%') {
            i++;
            if (fmt[i] == 's') {
                char *tmp = va_arg(ap, char *);
                memcpy(wbuf + fcursor, tmp, strlen(tmp));
                fcursor += strlen(tmp);
            } else if (fmt[i] == 'd') {
                int tmp = va_arg(ap, int);
                char str[256] = {'\0'};
                IntToString(tmp, str);
                memcpy(wbuf + fcursor, str, strlen(str));
                fcursor += strlen(str);
            }
        } else {
            wbuf[fcursor] = fmt[i];
            fcursor++;
        }
        i++;
    }
    // printf("wbuf is %s\n", wbuf);
	fwrite(wbuf, sizeof(char), strlen(wbuf), f);
    va_end(ap);

    /* LAB 5 TODO END */
    return 0;
}
