#### 思考题 1: 内核从完成必要的初始化到用户态程序的过程是怎么样的？尝试描述一下调用关系。
内核需要创建新的用户态进程，并将控制流切换至用户态运行。
创建进程的过程为：创建PCB，初始化虚拟内存，初始化内核栈，加载可执行文件至内存，初始化用户栈及运行环境，初始化处理器上下文

#### 思考题 8： ChCore中的系统调用是通过使用汇编代码直接跳转到syscall_table中的相应条目来处理的。请阅读kernel/arch/aarch64/irq/irq_entry.S中的代码，并简要描述ChCore是如何将系统调用从异常向量分派到系统调用表中对应条目的。
```
adr	x27, syscall_table		// syscall table in x27
uxtw	x16, w8				// syscall number in x16
ldr	x16, [x27, x16, lsl #3]		// find the syscall entry
blr	x16
```
将系统调用表基地址和调用号分别加载至x27和x16寄存器中，使用ldr指令将系统调用表对应偏移量处的syscall函数地址取出，存至x16中，再使用blr指令跳转至x16寄存器存储的地址处进行系统调用。