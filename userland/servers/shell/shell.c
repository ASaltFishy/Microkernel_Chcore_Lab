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

#include <chcore/assert.h>
#include <chcore/fs/defs.h>
#include <chcore/internal/raw_syscall.h>
#include <chcore/internal/server_caps.h>
#include <chcore/ipc.h>
#include <chcore/procm.h>
#include <chcore/thread.h>
#include <malloc.h>
#include <stdio.h>
#include <string.h>

#define SERVER_READY_FLAG(vaddr) (*(int *)(vaddr))
#define SERVER_EXIT_FLAG(vaddr) (*(int *)((u64)vaddr + 4))

static struct ipc_struct ipc_struct;
static int tmpfs_scan_pmo_cap;

/* fs_server_cap in current process; can be copied to others */
int fs_server_cap;

#define BUFLEN 4096

struct ipc_struct *fs_ipc_struct = NULL;

static void connect_tmpfs_server(void) {
    int tmpfs_cap = __chcore_get_tmpfs_cap();
    chcore_assert(tmpfs_cap >= 0);
    fs_ipc_struct = ipc_register_client(tmpfs_cap);
    chcore_assert(fs_ipc_struct);
}

int mount_fs(const char *fspath, const char *mount_point) {
    int ret;
    struct ipc_msg *ipc_msg = ipc_create_msg(
        fs_ipc_struct, sizeof(struct fs_request), 0);
    chcore_assert(ipc_msg);
    struct fs_request *fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);
    fr->req = FS_REQ_MOUNT;
    strcpy(fr->mount.fs_path, fspath);
    strcpy(fr->mount.mount_path, mount_point);
    ret = ipc_call(fs_ipc_struct, ipc_msg);
    ipc_destroy_msg(fs_ipc_struct, ipc_msg);
    return ret;
}

/* Retrieve the entry name from one dirent */
static void get_dent_name(struct dirent *p, char name[]) {
    int len;
    len = p->d_reclen - sizeof(p->d_ino) - sizeof(p->d_off) - sizeof(p->d_reclen) - sizeof(p->d_type);
    memcpy(name, p->d_name, len);
    name[len - 1] = '\0';
}

/* See demo_getdents() for example */
int getdents(int fd, char *buf, int count) {
    struct ipc_msg *ipc_msg = 0;
    struct fd_record_extension *fd_ext;
    struct fs_request *fr_ptr;
    int ret = 0, remain = count, cnt;
    chcore_assert(fs_ipc_struct);

    ipc_msg = ipc_create_msg(fs_ipc_struct, 512, 0);
    fr_ptr = (struct fs_request *)ipc_get_msg_data(ipc_msg);
    while (remain > 0) {
        fr_ptr->req = FS_REQ_GETDENTS64;
        fr_ptr->getdents64.fd = fd;
        cnt = MIN(remain, PAGE_SIZE);
        fr_ptr->getdents64.count = cnt;
        ret = ipc_call(fs_ipc_struct, ipc_msg);
        if (ret < 0)
            goto error;
        memcpy(buf, ipc_get_msg_data(ipc_msg), ret);
        buf += ret;
        remain -= ret;
        if (ret != cnt)
            break;
    }
    ret = count - remain;
error:
    ipc_destroy_msg(fs_ipc_struct, ipc_msg);
    return ret;
}

void demo_getdents(int fd) {
    char name[BUFLEN];
    char scan_buf[BUFLEN];
    int offset;
    struct dirent *p;

    int ret = getdents(fd, scan_buf, BUFLEN);

    for (offset = 0; offset < ret; offset += p->d_reclen) {
        p = (struct dirent *)(scan_buf + offset);
        get_dent_name(p, name);
        printf("The name is %s \n", name);
    }
}

int alloc_fd() {
    static int cnt = 0;
    return ++cnt;
}

int do_complement(char *buf, char *complement, int complement_time) {
    int ret = 0, j = 0;
    struct dirent *p;
    char name[BUFLEN];
    char scan_buf[BUFLEN];
    int r = -1;
    int offset;

    /* LAB 5 TODO BEGIN */
	char mode = 'r';
	FILE *parent = fopen("/\0",&mode);

	ret = getdents(parent->fd, scan_buf, BUFLEN);

	for (offset = 0; offset < ret; offset += p->d_reclen) {
		memset(name, '\0', sizeof(name));
		p = (struct dirent *)(scan_buf + offset);
		get_dent_name(p, name);
		if(*name == '.' && strlen(name) == 1){
			continue;
		}
		if(j == complement_time){
			memcpy(buf, name, strlen(name));
			r = 1;
			break;
		}
		j++;
	}
    // fclose(parent);
    /* LAB 5 TODO END */

    return r;
}

extern char getch();

// read a command from stdin leading by `prompt`
// put the commond in `buf` and return `buf`
// What you typed should be displayed on the screen
char *readline(const char *prompt) {
    static char buf[BUFLEN];

    int i = 0, j = 0;
    signed char c = 0;
    int ret = 0;
    char complement[BUFLEN];
    int complement_time = 0;

    if (prompt != NULL) {
        printf("%s", prompt);
    }

    while (1) {
        __chcore_sys_yield();
        c = getch();

        /* LAB 5 TODO BEGIN */
        /* Fill buf and handle tabs with do_complement(). */
        if(c == '\t'){
        		do_complement(buf, complement, complement_time);
        		printf("%s\n", buf);
        		complement_time++;
        		continue;
        	}
        if (c == '\n' || c == '\r') {
            break;
        }
        buf[i] = c;
        i++;
        /* LAB 5 TODO END */
    }

    return buf;
}

int do_top() {
    __chcore_sys_top();
    return 0;
}

void print_file_content(char *path) {
    /* LAB 5 TODO BEGIN */
	char mode = 'r';
	FILE *f = fopen(path,&mode);
	char rbuf[512];
	// read buf 不能过大 不超过512
	fread(rbuf,sizeof(char),sizeof(rbuf),f);
    // fclose(f);

	chcore_console_printf("%s", rbuf);
    /* LAB 5 TODO END */
}

void fs_scan(char *path) {
    /* LAB 5 TODO BEGIN */
	// printf("[fs_scan] path: %s, len: %d\n",path,strlen(path));
	char mode = 'r';
	FILE *f = fopen(path,&mode);

	char name[BUFLEN];
    char scan_buf[BUFLEN];
    int offset;
    struct dirent *p;

    int ret = getdents(f->fd, scan_buf, 512);

    for (offset = 0; offset < ret; offset += p->d_reclen) {
        p = (struct dirent *)(scan_buf + offset);
        get_dent_name(p, name);
		if(name[0]=='.') continue;
		chcore_console_printf("%s ", name);
    }
	// printf("\n");
    /* LAB 5 TODO END */
}

int do_ls(char *cmdline) {
	// printf("[do_ls] cmd: %s\n",cmdline);
    char pathbuf[BUFLEN];

    pathbuf[0] = '\0';
    cmdline += 2;
    while (*cmdline == ' ')
        cmdline++;
    strcat(pathbuf, cmdline);
    fs_scan(pathbuf); /* LAB 5: Complete fs_scan() */
    return 0;
}

int do_cat(char *cmdline) {
	// printf("[do_cat] cmd: %s\n",cmdline);
    char pathbuf[BUFLEN];

    pathbuf[0] = '\0';
    cmdline += 3;
    while (*cmdline == ' ')
        cmdline++;
    strcat(pathbuf, cmdline);
    print_file_content(pathbuf); /* LAB 5: Complete print_file_content() */
    return 0;
}

int do_echo(char *cmdline) {
    /* LAB 5 TODO BEGIN */
	// printf("[do_echo] cmd: %s\n",cmdline);
	cmdline += 4;
    while (*cmdline == ' ')
        cmdline++;
	chcore_console_printf("%s", cmdline);
    /* LAB 5 TODO END */
    return 0;
}

void do_clear(void) {
    putc(12);
    putc(27);
    putc('[');
    putc('2');
    putc('J');
}

int builtin_cmd(char *cmdline) {
    int ret, i;
    char cmd[BUFLEN];
    for (i = 0; cmdline[i] != ' ' && cmdline[i] != '\0'; i++)
        cmd[i] = cmdline[i];
    cmd[i] = '\0';
    if (!strcmp(cmd, "quit") || !strcmp(cmd, "exit"))
        __chcore_sys_thread_exit();
    if (!strcmp(cmd, "ls")) {
        ret = do_ls(cmdline);
        return !ret ? 1 : -1;
    }
    if (!strcmp(cmd, "echo")) {
        ret = do_echo(cmdline);
        return !ret ? 1 : -1;
    }
    if (!strcmp(cmd, "cat")) {
        ret = do_cat(cmdline);
        return !ret ? 1 : -1;
    }
    if (!strcmp(cmd, "clear")) {
        do_clear();
        return 1;
    }
    if (!strcmp(cmd, "top")) {
        ret = do_top();
        return !ret ? 1 : -1;
    }
    return 0;
}

int run_cmd(char *cmdline) {
    int cap = 0;
    /* Hint: Function chcore_procm_spawn() could be used here. */
    /* LAB 5 TODO BEGIN */
	chcore_console_printf("%s",cmdline);
	chcore_procm_spawn(cmdline, &cap);
    while (true);
    /* LAB 5 TODO END */
    return 0;
}

void connect_fs(void) {
    // register fs client
    connect_tmpfs_server();
}
