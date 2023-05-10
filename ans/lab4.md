#### 思考题 1：阅读汇编代码kernel/arch/aarch64/boot/raspi3/init/start.S。说明ChCore是如何选定主CPU，并阻塞其他其他CPU的执行的。
```
mrs	x8, mpidr_el1
and	x8, x8,	#0xFF
cbz	x8, primary
```
该段代码读取核id，cbz控制当id为0时，该核即为主CPU，跳转至primary段初始化自身和整个os；其他CPU核则执行接下来初始化自身的代码并利用```cbz x3, wait_until_smp_enabled```指令等待主CPU完成操作系统的初始化。

#### 思考题 2：阅读汇编代码kernel/arch/aarch64/boot/raspi3/init/start.S, init_c.c以及kernel/arch/aarch64/main.c，解释用于阻塞其他CPU核心的secondary_boot_flag是物理地址还是虚拟地址？是如何传入函数enable_smp_cores中，又该如何赋值的（考虑虚拟地址/物理地址）？
secondary_boot_flag是物理地址，因为mmu的开启在从secondary_boot_flag读取数据之后

如何传参：
在init_c()函数中调用了start_kernel(secondary_boot_flag)，在start_kernel汇编代码的最后一行跳转至main()函数，在其中调用了enable_smp_cores(boot_flag)。

如何赋值：
应在enable_smp_cores()函数中调用phys_to_virt()函数将物理地址转化为虚拟地址后在经行赋值。


#### 思考题 5：在el0_syscall调用lock_kernel时，在栈上保存了寄存器的值。这是为了避免调用lock_kernel时修改这些寄存器。在unlock_kernel时，是否需要将寄存器的值保存到栈中，试分析其原因。
不需要，调用unlock后立即退出内核态，之后进入用户态，寄存器中保存的值将直接被刷新，且不会对程序运行造成影响，故无需保存寄存器中的值。

#### 思考题 6：为何idle_threads不会加入到等待队列中？请分析其原因？
因为idle线程最终会排到队列头并开始执行，此时若其后有线程在等待则造成了资源的浪费。故空闲线程是游离在队列之外需要特殊处理的，只有在队列为空时才运行此线程。

#### 思考题 8：如果异常是从内核态捕获的，CPU核心不会在kernel/arch/aarch64/irq/irq_entry.c的handle_irq中获得大内核锁。但是，有一种特殊情况，即如果空闲线程（以内核态运行）中捕获了错误，则CPU核心还应该获取大内核锁。否则，内核可能会被永远阻塞。请思考一下原因。
为了防止内核忙等使得大内核锁锁住内核，空闲线程运行时会释放大内核锁供其他内核使用，若在空闲线程中捕获了错误但CPU核心不获取大内核锁，则会因为无锁无法运行内核异常处理程序代码而永远阻塞。

