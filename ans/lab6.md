### 思考题 1：请自行查阅资料，并阅读userland/servers/sd中的代码，回答以下问题:
- circle中还提供了SDHost的代码。SD卡，eMMC和SDHost三者之间的关系是怎么样的？
  
  SD卡是常用的存储介质。eMMC作为常见SD控制器的一种，用于控制SD存储卡和SDIO设备的访问和通信。
  SDHost是一种标准的接口协议，eMMC控制器支持SDHost接口标准。

- 请详细描述Chcore是如何与SD卡进行交互的？即Chcore发出的指令是如何输送到SD卡上，又是如何得到SD卡的响应的。(提示: IO设备常使用MMIO的方式映射到内存空间当中)
  
  TODO

- 请简要介绍一下SD卡驱动的初始化流程。
  
  TODO

- 在驱动代码的初始化当中，设置时钟频率的意义是什么？为什么需要调用TimeoutWait进行等待?
  
  TODO

