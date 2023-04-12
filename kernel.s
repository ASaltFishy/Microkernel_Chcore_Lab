
kernel/_build/kernel.img:     file format elf64-littleaarch64


Disassembly of section init:

0000000000080000 <_start>:
   80000:	d53800a8 	mrs	x8, mpidr_el1
   80004:	92401d08 	and	x8, x8, #0xff
   80008:	b4000048 	cbz	x8, 80010 <primary>
   8000c:	14000000 	b	8000c <_start+0xc>

0000000000080010 <primary>:
   80010:	94001ffc 	bl	88000 <arm64_elX_to_el1>
   80014:	580000a0 	ldr	x0, 80028 <primary+0x18>
   80018:	91400400 	add	x0, x0, #0x1, lsl #12
   8001c:	9100001f 	mov	sp, x0
   80020:	940020e2 	bl	883a8 <init_c>
   80024:	14000000 	b	80024 <primary+0x14>
   80028:	00088980 	.word	0x00088980
   8002c:	00000000 	.word	0x00000000
   80030:	14000400 	b	81030 <__start_kernel_veneer+0xff8>
   80034:	d503201f 	nop

0000000000080038 <__start_kernel_veneer>:
   80038:	58000090 	ldr	x16, 80048 <__start_kernel_veneer+0x10>
   8003c:	10000011 	adr	x17, 8003c <__start_kernel_veneer+0x4>
   80040:	8b110210 	add	x16, x16, x17
   80044:	d61f0200 	br	x16
   80048:	0000ffc4 	.word	0x0000ffc4
   8004c:	ffffff00 	.word	0xffffff00
	...
   81030:	0000006b 	.word	0x0000006b
   81034:	00490003 	.word	0x00490003
   81038:	01040000 	.word	0x01040000
   8103c:	000d0efb 	.word	0x000d0efb
   81040:	01010101 	.word	0x01010101
   81044:	01000000 	.word	0x01000000
   81048:	2f010000 	.word	0x2f010000
   8104c:	736f6863 	.word	0x736f6863
   81050:	72656b2f 	.word	0x72656b2f
   81054:	2f6c656e 	.word	0x2f6c656e
   81058:	68637261 	.word	0x68637261
   8105c:	7261612f 	.word	0x7261612f
   81060:	34366863 	.word	0x34366863
   81064:	6f6f622f 	.word	0x6f6f622f
   81068:	61722f74 	.word	0x61722f74
   8106c:	33697073 	.word	0x33697073
   81070:	696e692f 	.word	0x696e692f
   81074:	73000074 	.word	0x73000074
   81078:	74726174 	.word	0x74726174
   8107c:	0100532e 	.word	0x0100532e
   81080:	00000000 	.word	0x00000000
   81084:	00000209 	.word	0x00000209
   81088:	00000008 	.word	0x00000008
   8108c:	14030000 	.word	0x14030000
   81090:	23212101 	.word	0x23212101
   81094:	21212324 	.word	0x21212324
   81098:	03022322 	.word	0x03022322
   8109c:	2a010100 	.word	0x2a010100
   810a0:	02000000 	.word	0x02000000
   810a4:	0810cd00 	.word	0x0810cd00
   810a8:	30010800 	.word	0x30010800
   810ac:	00000810 	.word	0x00000810
   810b0:	00000800 	.word	0x00000800
   810b4:	30000000 	.word	0x30000000
   810b8:	00000800 	.word	0x00000800
   810bc:	20000000 	.word	0x20000000
   810c0:	53000811 	.word	0x53000811
   810c4:	67000811 	.word	0x67000811
   810c8:	01000811 	.word	0x01000811
   810cc:	00110180 	.word	0x00110180
   810d0:	01110610 	.word	0x01110610
   810d4:	0e030112 	.word	0x0e030112
   810d8:	0e250e1b 	.word	0x0e250e1b
   810dc:	00000513 	.word	0x00000513
	...
   810f0:	0000002c 	.word	0x0000002c
   810f4:	109f0002 	.word	0x109f0002
   810f8:	00080008 	.word	0x00080008
   810fc:	00000000 	.word	0x00000000
   81100:	00080000 	.word	0x00080000
   81104:	00000000 	.word	0x00000000
   81108:	00000030 	.word	0x00000030
	...
   81120:	6f68632f 	.word	0x6f68632f
   81124:	656b2f73 	.word	0x656b2f73
   81128:	6c656e72 	.word	0x6c656e72
   8112c:	6372612f 	.word	0x6372612f
   81130:	61612f68 	.word	0x61612f68
   81134:	36686372 	.word	0x36686372
   81138:	6f622f34 	.word	0x6f622f34
   8113c:	722f746f 	.word	0x722f746f
   81140:	69707361 	.word	0x69707361
   81144:	6e692f33 	.word	0x6e692f33
   81148:	732f7469 	.word	0x732f7469
   8114c:	74726174 	.word	0x74726174
   81150:	2f00532e 	.word	0x2f00532e
   81154:	736f6863 	.word	0x736f6863
   81158:	72656b2f 	.word	0x72656b2f
   8115c:	2f6c656e 	.word	0x2f6c656e
   81160:	6975625f 	.word	0x6975625f
   81164:	4700646c 	.word	0x4700646c
   81168:	4120554e 	.word	0x4120554e
   8116c:	2e322053 	.word	0x2e322053
   81170:	00003433 	.word	0x00003433

0000000000081174 <init_boot_pt>:
   81174:	d503201f 	nop
   81178:	d65f03c0 	ret
   8117c:	000000ff 	.inst	0x000000ff ; undefined
   81180:	127f0004 	.inst	0x127f0004 ; undefined
   81184:	01080008 	.inst	0x01080008 ; undefined
   81188:	00081386 	.inst	0x00081386 ; undefined
   8118c:	0814790c 	stxrb	w20, w12, [x8]
   81190:	08115300 	stxrb	w17, w0, [x24]
   81194:	08117400 	stxrb	w17, w0, [x0]
   81198:	00000000 	.inst	0x00000000 ; undefined
   8119c:	00000800 	.inst	0x00000800 ; undefined
   811a0:	00000000 	.inst	0x00000000 ; undefined
   811a4:	08131f00 	stxrb	w19, w0, [x24]
   811a8:	36750200 	tbz	w0, #14, 7b1e8 <_start-0x4e18>
   811ac:	0f010034 	.inst	0x0f010034 ; undefined
   811b0:	00003917 	.inst	0x00003917 ; undefined
   811b4:	07080300 	.inst	0x07080300 ; undefined
   811b8:	0008885d 	.inst	0x0008885d ; undefined
   811bc:	62070403 	.inst	0x62070403 ; undefined
   811c0:	04000888 	add	z8.b, p2/m, z8.b, z4.b
   811c4:	0000002d 	.inst	0x0000002d ; undefined
   811c8:	00000058 	.inst	0x00000058 ; undefined
   811cc:	00003905 	.inst	0x00003905 ; undefined
   811d0:	0001ff00 	.inst	0x0001ff00 ; undefined
   811d4:	08142506 	stxrb	w20, w6, [x8]
   811d8:	051c0100 	mov	z0.b, p12/z, #8
   811dc:	00000047 	.inst	0x00000047 ; undefined
   811e0:	03091000 	.inst	0x03091000 ; undefined
   811e4:	00086000 	.inst	0x00086000 ; undefined
   811e8:	00000000 	.inst	0x00000000 ; undefined
   811ec:	08143306 	stxrb	w20, w6, [x24]
   811f0:	051d0100 	mov	z0.b, p13/z, #8
   811f4:	00000047 	.inst	0x00000047 ; undefined
   811f8:	03091000 	.inst	0x03091000 ; undefined
   811fc:	00084000 	.inst	0x00084000 ; undefined
   81200:	00000000 	.inst	0x00000000 ; undefined
   81204:	08144106 	stxrb	w20, w6, [x8]
   81208:	051e0100 	mov	z0.b, p14/z, #8
   8120c:	00000047 	.inst	0x00000047 ; undefined
   81210:	03091000 	.inst	0x03091000 ; undefined
   81214:	00083000 	.inst	0x00083000 ; undefined
   81218:	00000000 	.inst	0x00000000 ; undefined
   8121c:	08145d06 	stxrb	w20, w6, [x8]
   81220:	05200100 	ext	z0.b, z0.b, z8.b, #0
   81224:	00000047 	.inst	0x00000047 ; undefined
   81228:	03091000 	.inst	0x03091000 ; undefined
   8122c:	00087000 	.inst	0x00087000 ; undefined
   81230:	00000000 	.inst	0x00000000 ; undefined
   81234:	08146b06 	stxrb	w20, w6, [x24]
   81238:	05210100 	ext	z0.b, z0.b, z8.b, #8
   8123c:	00000047 	.inst	0x00000047 ; undefined
   81240:	03091000 	.inst	0x03091000 ; undefined
   81244:	00085000 	.inst	0x00085000 ; undefined
   81248:	00000000 	.inst	0x00000000 ; undefined
   8124c:	08144f06 	stxrb	w20, w6, [x24]
   81250:	05220100 	ext	z0.b, z0.b, z8.b, #16
   81254:	00000047 	.inst	0x00000047 ; undefined
   81258:	03091000 	.inst	0x03091000 ; undefined
   8125c:	00082000 	.inst	0x00082000 ; undefined
   81260:	00000000 	.inst	0x00000000 ; undefined
   81264:	08141807 	stxrb	w20, w7, [x0]
   81268:	06340100 	.inst	0x06340100 ; undefined
   8126c:	00081174 	.inst	0x00081174 ; undefined
   81270:	00000000 	.inst	0x00000000 ; undefined
   81274:	00000008 	.inst	0x00000008 ; undefined
   81278:	00000000 	.inst	0x00000000 ; undefined
   8127c:	01009c01 	.inst	0x01009c01 ; undefined
   81280:	0e250111 	saddl	v17.8h, v8.8b, v5.8b
   81284:	0e030b13 	.inst	0x0e030b13 ; undefined
   81288:	01110e1b 	.inst	0x01110e1b ; undefined
   8128c:	17100712 	b	fffffffffc482ed4 <kernel_stack+0xfffc3d2e94>
   81290:	16020000 	b	fffffffff8101290 <kernel_stack+0xfff8051250>
   81294:	3a080300 	adcs	w0, w24, w8
   81298:	390b3b0b 	strb	w11, [x24, #718]
   8129c:	0013490b 	.inst	0x0013490b ; undefined
   812a0:	00240300 	.inst	0x00240300 ; NYI
   812a4:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
   812a8:	00000e03 	.inst	0x00000e03 ; undefined
   812ac:	49010104 	.inst	0x49010104 ; undefined
   812b0:	00130113 	.inst	0x00130113 ; undefined
   812b4:	00210500 	.inst	0x00210500 ; NYI
   812b8:	052f1349 	ext	z9.b, z9.b, z26.b, #124
   812bc:	34060000 	cbz	w0, 8d2bc <uart_send_string+0x7bc>
   812c0:	3a0e0300 	adcs	w0, w24, w14
   812c4:	390b3b0b 	strb	w11, [x24, #718]
   812c8:	3f13490b 	.inst	0x3f13490b ; undefined
   812cc:	05018819 	orr	z25.s, z25.s, #0x8000
   812d0:	00001802 	.inst	0x00001802 ; undefined
   812d4:	3f002e07 	.inst	0x3f002e07 ; undefined
   812d8:	3a0e0319 	adcs	w25, w24, w14
   812dc:	390b3b0b 	strb	w11, [x24, #718]
   812e0:	1119270b 	add	w11, w24, #0x649
   812e4:	40071201 	.inst	0x40071201 ; undefined
   812e8:	19429718 	.inst	0x19429718 ; undefined
   812ec:	2c000000 	stnp	s0, s0, [x0]
   812f0:	02000000 	.inst	0x02000000 ; undefined
   812f4:	08117c00 	stxrb	w17, w0, [x0]
   812f8:	00000800 	.inst	0x00000800 ; undefined
   812fc:	74000000 	.inst	0x74000000 ; undefined
   81300:	00000811 	.inst	0x00000811 ; undefined
   81304:	08000000 	stxrb	w0, w0, [x0]
	...
   8131c:	63000000 	.inst	0x63000000 ; undefined
   81320:	03000000 	.inst	0x03000000 ; undefined
   81324:	00004700 	.inst	0x00004700 ; undefined
   81328:	fb010400 	.inst	0xfb010400 ; undefined
   8132c:	01000d0e 	.inst	0x01000d0e ; undefined
   81330:	00010101 	.inst	0x00010101 ; undefined
   81334:	00010000 	.inst	0x00010000 ; undefined
   81338:	632f0100 	.inst	0x632f0100 ; undefined
   8133c:	2f736f68 	.inst	0x2f736f68 ; undefined
   81340:	6e72656b 	umax	v11.8h, v11.8h, v18.8h
   81344:	612f6c65 	.inst	0x612f6c65 ; undefined
   81348:	2f686372 	umlsl	v18.4s, v27.4h, v8.h[2]
   8134c:	63726161 	.inst	0x63726161 ; undefined
   81350:	2f343668 	ursra	v8.2s, v19.2s, #12
   81354:	746f6f62 	.inst	0x746f6f62 ; undefined
   81358:	7361722f 	.inst	0x7361722f ; undefined
   8135c:	2f336970 	.inst	0x2f336970 ; undefined
   81360:	74696e69 	.inst	0x74696e69 ; undefined
   81364:	6d6d0000 	ldp	d0, d0, [x0, #-304]
   81368:	00632e75 	.inst	0x00632e75 ; undefined
   8136c:	00000001 	.inst	0x00000001 ; undefined
   81370:	09000105 	.inst	0x09000105 ; undefined
   81374:	08117402 	stxrb	w17, w2, [x0]
   81378:	00000000 	.inst	0x00000000 ; undefined
   8137c:	01340300 	.inst	0x01340300 ; undefined
   81380:	00020214 	.inst	0x00020214 ; undefined
   81384:	4e470101 	.inst	0x4e470101 ; undefined
   81388:	31432055 	adds	w21, w2, #0xc8, lsl #12
   8138c:	2e392037 	usubl	v23.8h, v1.8b, v25.8b
   81390:	20302e33 	.inst	0x20302e33 ; undefined
   81394:	72616d2d 	.inst	0x72616d2d ; undefined
   81398:	613d6863 	.inst	0x613d6863 ; undefined
   8139c:	38766d72 	.inst	0x38766d72 ; undefined
   813a0:	6e2b612d 	rsubhn2	v13.16b, v9.8h, v11.8h
   813a4:	2070666f 	.inst	0x2070666f ; undefined
   813a8:	696c6d2d 	ldpsw	x13, x27, [x9, #-160]
   813ac:	656c7474 	fnmls	z20.h, p5/m, z3.h, z12.h
   813b0:	646e652d 	.inst	0x646e652d ; undefined
   813b4:	206e6169 	.inst	0x206e6169 ; undefined
   813b8:	62616d2d 	.inst	0x62616d2d ; undefined
   813bc:	706c3d69 	adr	x9, 159b6b <img_end+0x99b6b>
   813c0:	2d203436 	stp	s22, s13, [x1, #-256]
   813c4:	672d2067 	.inst	0x672d2067 ; undefined
   813c8:	304f2d20 	adr	x0, 11f96d <img_end+0x5f96d>
   813cc:	66662d20 	.inst	0x66662d20 ; undefined
   813d0:	73656572 	.inst	0x73656572 ; undefined
   813d4:	646e6174 	.inst	0x646e6174 ; undefined
   813d8:	20676e69 	.inst	0x20676e69 ; undefined
   813dc:	4950662d 	.inst	0x4950662d ; undefined
   813e0:	662d2043 	.inst	0x662d2043 ; undefined
   813e4:	6e797361 	uabdl2	v1.4s, v27.8h, v25.8h
   813e8:	6f726863 	umlsl2	v3.4s, v3.8h, v2.h[7]
   813ec:	73756f6e 	.inst	0x73756f6e ; undefined
   813f0:	776e752d 	.inst	0x776e752d ; undefined
   813f4:	2d646e69 	ldp	s9, s27, [x19, #-224]
   813f8:	6c626174 	ldnp	d20, d24, [x11, #-480]
   813fc:	2d207365 	stp	s5, s28, [x27, #-256]
   81400:	61747366 	.inst	0x61747366 ; undefined
   81404:	632d6b63 	.inst	0x632d6b63 ; undefined
   81408:	6873616c 	.inst	0x6873616c ; undefined
   8140c:	6f72702d 	fcmla	v13.8h, v1.8h, v18.h[1], #270
   81410:	74636574 	.inst	0x74636574 ; undefined
   81414:	006e6f69 	.inst	0x006e6f69 ; undefined
   81418:	74696e69 	.inst	0x74696e69 ; undefined
   8141c:	6f6f625f 	umlsl2	v31.4s, v18.8h, v15.h[2]
   81420:	74705f74 	.inst	0x74705f74 ; undefined
   81424:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
   81428:	74745f74 	.inst	0x74745f74 ; undefined
   8142c:	5f307262 	.inst	0x5f307262 ; undefined
   81430:	6200306c 	.inst	0x6200306c ; undefined
   81434:	5f746f6f 	.inst	0x5f746f6f ; undefined
   81438:	72627474 	.inst	0x72627474 ; undefined
   8143c:	316c5f30 	adds	w16, w25, #0xb17, lsl #12
   81440:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
   81444:	74745f74 	.inst	0x74745f74 ; undefined
   81448:	5f307262 	.inst	0x5f307262 ; undefined
   8144c:	6200326c 	.inst	0x6200326c ; undefined
   81450:	5f746f6f 	.inst	0x5f746f6f ; undefined
   81454:	72627474 	.inst	0x72627474 ; undefined
   81458:	326c5f31 	.inst	0x326c5f31 ; undefined
   8145c:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
   81460:	74745f74 	.inst	0x74745f74 ; undefined
   81464:	5f317262 	.inst	0x5f317262 ; undefined
   81468:	6200306c 	.inst	0x6200306c ; undefined
   8146c:	5f746f6f 	.inst	0x5f746f6f ; undefined
   81470:	72627474 	.inst	0x72627474 ; undefined
   81474:	316c5f31 	adds	w17, w25, #0xb17, lsl #12
   81478:	68632f00 	.inst	0x68632f00 ; undefined
   8147c:	6b2f736f 	subs	w15, w27, w15, uxtx #4
   81480:	656e7265 	fnmls	z5.h, p4/m, z19.h, z14.h
   81484:	72612f6c 	.inst	0x72612f6c ; undefined
   81488:	612f6863 	.inst	0x612f6863 ; undefined
   8148c:	68637261 	.inst	0x68637261 ; undefined
   81490:	622f3436 	.inst	0x622f3436 ; undefined
   81494:	2f746f6f 	.inst	0x2f746f6f ; undefined
   81498:	70736172 	adr	x18, 1680c7 <img_end+0xa80c7>
   8149c:	692f3369 	stgp	x9, x12, [x27, #-544]
   814a0:	2f74696e 	umlsl	v14.4s, v11.4h, v4.h[7]
   814a4:	2e756d6d 	umin	v13.4h, v11.4h, v21.4h
   814a8:	43470063 	.inst	0x43470063 ; undefined
   814ac:	28203a43 	stnp	w3, w14, [x18, #-256]
   814b0:	6e756255 	rsubhn2	v21.8h, v18.4s, v21.4s
   814b4:	39207574 	strb	w20, [x11, #2077]
   814b8:	302e332e 	adr	x14, ddb1d <img_end+0x1db1d>
   814bc:	7537312d 	.inst	0x7537312d ; undefined
   814c0:	746e7562 	.inst	0x746e7562 ; undefined
   814c4:	327e3175 	.inst	0x327e3175 ; undefined
   814c8:	34302e30 	cbz	w16, e1a8c <img_end+0x21a8c>
   814cc:	2e392029 	usubl	v9.8h, v1.8b, v25.8b
   814d0:	00302e33 	.inst	0x00302e33 ; NYI
   814d4:	00000000 	.inst	0x00000000 ; undefined
   814d8:	00000010 	.inst	0x00000010 ; undefined
   814dc:	00000000 	.inst	0x00000000 ; undefined
   814e0:	00527a01 	.inst	0x00527a01 ; undefined
   814e4:	011e7804 	.inst	0x011e7804 ; undefined
   814e8:	001f0c1b 	.inst	0x001f0c1b ; undefined
   814ec:	00000010 	.word	0x00000010
   814f0:	00000018 	.word	0x00000018
   814f4:	fffffc80 	.word	0xfffffc80
   814f8:	00000008 	.word	0x00000008
	...

0000000000082000 <boot_ttbr1_l2>:
	...

0000000000083000 <boot_ttbr0_l2>:
	...

0000000000084000 <boot_ttbr0_l1>:
	...

0000000000085000 <boot_ttbr1_l1>:
	...

0000000000086000 <boot_ttbr0_l0>:
	...

0000000000087000 <boot_ttbr1_l0>:
	...

0000000000088000 <arm64_elX_to_el1>:
   88000:	d5384249 	mrs	x9, currentel
   88004:	f100113f 	cmp	x9, #0x4
   88008:	54000480 	b.eq	88098 <arm64_elX_to_el1+0x98>  // b.none
   8800c:	f100213f 	cmp	x9, #0x8
   88010:	54000120 	b.eq	88034 <arm64_elX_to_el1+0x34>  // b.none
   88014:	d53e1109 	mrs	x9, scr_el3
   88018:	d280a02a 	mov	x10, #0x501                 	// #1281
   8801c:	aa0a0129 	orr	x9, x9, x10
   88020:	d51e1109 	msr	scr_el3, x9
   88024:	100003a9 	adr	x9, 88098 <arm64_elX_to_el1+0x98>
   88028:	d51e4029 	msr	elr_el3, x9
   8802c:	d28078a9 	mov	x9, #0x3c5                 	// #965
   88030:	d51e4009 	msr	spsr_el3, x9
   88034:	d53ce109 	mrs	x9, cnthctl_el2
   88038:	b2400529 	orr	x9, x9, #0x3
   8803c:	d51ce109 	msr	cnthctl_el2, x9
   88040:	d51ce07f 	msr	cntvoff_el2, xzr
   88044:	d51c211f 	msr	vttbr_el2, xzr
   88048:	d2867fe9 	mov	x9, #0x33ff                	// #13311
   8804c:	d51c1149 	msr	cptr_el2, x9
   88050:	d2a00609 	mov	x9, #0x300000              	// #3145728
   88054:	d5181049 	msr	cpacr_el1, x9
   88058:	d5380409 	mrs	x9, id_aa64pfr0_el1
   8805c:	92680d29 	and	x9, x9, #0xf000000
   88060:	b40000c9 	cbz	x9, 88078 <arm64_elX_to_el1+0x78>
   88064:	d53cc9a9 	mrs	x9, s3_4_c12_c9_5
   88068:	d280012a 	mov	x10, #0x9                   	// #9
   8806c:	aa0a0129 	orr	x9, x9, x10
   88070:	d51cc9a9 	msr	s3_4_c12_c9_5, x9
   88074:	d51ccb1f 	msr	s3_4_c12_c11_0, xzr
   88078:	d2b00009 	mov	x9, #0x80000000            	// #2147483648
   8807c:	d51c1109 	msr	hcr_el2, x9
   88080:	100000c9 	adr	x9, 88098 <arm64_elX_to_el1+0x98>
   88084:	d51c4029 	msr	elr_el2, x9
   88088:	d28078a9 	mov	x9, #0x3c5                 	// #965
   8808c:	d51c4009 	msr	spsr_el2, x9
   88090:	d5033fdf 	isb
   88094:	d69f03e0 	eret
   88098:	d65f03c0 	ret

000000000008809c <invalidate_cache_all>:
   8809c:	d5390020 	mrs	x0, clidr_el1
   880a0:	12080803 	and	w3, w0, #0x7000000
   880a4:	53177c63 	lsr	w3, w3, #23
   880a8:	340003e3 	cbz	w3, 88124 <invalidate_cache_all+0x88>
   880ac:	5280000a 	mov	w10, #0x0                   	// #0
   880b0:	52800028 	mov	w8, #0x1                   	// #1
   880b4:	0b4a0542 	add	w2, w10, w10, lsr #1
   880b8:	1ac22401 	lsr	w1, w0, w2
   880bc:	12000821 	and	w1, w1, #0x7
   880c0:	7100083f 	cmp	w1, #0x2
   880c4:	5400028b 	b.lt	88114 <invalidate_cache_all+0x78>  // b.tstop
   880c8:	d51a000a 	msr	csselr_el1, x10
   880cc:	d5033fdf 	isb
   880d0:	d5390001 	mrs	x1, ccsidr_el1
   880d4:	12000822 	and	w2, w1, #0x7
   880d8:	11001042 	add	w2, w2, #0x4
   880dc:	53033024 	ubfx	w4, w1, #3, #10
   880e0:	5ac01085 	clz	w5, w4
   880e4:	1ac52089 	lsl	w9, w4, w5
   880e8:	1ac5210c 	lsl	w12, w8, w5
   880ec:	530d6c27 	ubfx	w7, w1, #13, #15
   880f0:	1ac220e7 	lsl	w7, w7, w2
   880f4:	1ac2210d 	lsl	w13, w8, w2
   880f8:	2a09014b 	orr	w11, w10, w9
   880fc:	2a07016b 	orr	w11, w11, w7
   88100:	d508764b 	dc	isw, x11
   88104:	6b0d00e7 	subs	w7, w7, w13
   88108:	54ffff8a 	b.ge	880f8 <invalidate_cache_all+0x5c>  // b.tcont
   8810c:	eb0c0129 	subs	x9, x9, x12
   88110:	54fffeea 	b.ge	880ec <invalidate_cache_all+0x50>  // b.tcont
   88114:	1100094a 	add	w10, w10, #0x2
   88118:	6b0a007f 	cmp	w3, w10
   8811c:	d5033f9f 	dsb	sy
   88120:	54fffcac 	b.gt	880b4 <invalidate_cache_all+0x18>
   88124:	d508751f 	ic	iallu
   88128:	d5033fdf 	isb
   8812c:	d65f03c0 	ret

0000000000088130 <el1_mmu_activate>:
   88130:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   88134:	910003fd 	mov	x29, sp
   88138:	97ffffd9 	bl	8809c <invalidate_cache_all>
   8813c:	d508831f 	tlbi	vmalle1is
   88140:	d5033fdf 	isb
   88144:	d5033f9f 	dsb	sy
   88148:	58000388 	ldr	x8, 881b8 <delay+0x10>
   8814c:	d518a208 	msr	mair_el1, x8
   88150:	58000388 	ldr	x8, 881c0 <delay+0x18>
   88154:	d5182048 	msr	tcr_el1, x8
   88158:	d5033fdf 	isb
   8815c:	d0ffffe8 	adrp	x8, 86000 <boot_ttbr0_l0>
   88160:	d5182008 	msr	ttbr0_el1, x8
   88164:	f0ffffe8 	adrp	x8, 87000 <boot_ttbr1_l0>
   88168:	d5182028 	msr	ttbr1_el1, x8
   8816c:	d5033fdf 	isb
   88170:	d5381008 	mrs	x8, sctlr_el1
   88174:	927ef908 	and	x8, x8, #0xfffffffffffffffd
   88178:	927bf908 	and	x8, x8, #0xffffffffffffffef
   8817c:	927cf908 	and	x8, x8, #0xfffffffffffffff7
   88180:	b27a0108 	orr	x8, x8, #0x40
   88184:	b27e0108 	orr	x8, x8, #0x4
   88188:	b2740108 	orr	x8, x8, #0x1000
   8818c:	d5181008 	msr	sctlr_el1, x8
   88190:	a8c17bfd 	ldp	x29, x30, [sp], #16
   88194:	d65f03c0 	ret

0000000000088198 <early_put32>:
   88198:	b9000001 	str	w1, [x0]
   8819c:	d65f03c0 	ret

00000000000881a0 <early_get32>:
   881a0:	b9400000 	ldr	w0, [x0]
   881a4:	d65f03c0 	ret

00000000000881a8 <delay>:
   881a8:	f1000400 	subs	x0, x0, #0x1
   881ac:	54ffffe1 	b.ne	881a8 <delay>  // b.any
   881b0:	d65f03c0 	ret
   881b4:	00000000 	.inst	0x00000000 ; undefined
   881b8:	44ff0400 	.word	0x44ff0400
   881bc:	00000000 	.word	0x00000000
   881c0:	35103510 	.word	0x35103510
   881c4:	00000015 	.word	0x00000015
   881c8:	000000d0 	.word	0x000000d0
   881cc:	00490003 	.word	0x00490003
   881d0:	01040000 	.word	0x01040000
   881d4:	000d0efb 	.word	0x000d0efb
   881d8:	01010101 	.word	0x01010101
   881dc:	01000000 	.word	0x01000000
   881e0:	2f010000 	.word	0x2f010000
   881e4:	736f6863 	.word	0x736f6863
   881e8:	72656b2f 	.word	0x72656b2f
   881ec:	2f6c656e 	.word	0x2f6c656e
   881f0:	68637261 	.word	0x68637261
   881f4:	7261612f 	.word	0x7261612f
   881f8:	34366863 	.word	0x34366863
   881fc:	6f6f622f 	.word	0x6f6f622f
   88200:	61722f74 	.word	0x61722f74
   88204:	33697073 	.word	0x33697073
   88208:	696e692f 	.word	0x696e692f
   8820c:	74000074 	.word	0x74000074
   88210:	736c6f6f 	.word	0x736c6f6f
   88214:	0100532e 	.word	0x0100532e
   88218:	00000000 	.word	0x00000000
   8821c:	80000209 	.word	0x80000209
   88220:	00000008 	.word	0x00000008
   88224:	3b030000 	.word	0x3b030000
   88228:	21212401 	.word	0x21212401
   8822c:	21212421 	.word	0x21212421
   88230:	21212421 	.word	0x21212421
   88234:	21212521 	.word	0x21212521
   88238:	21232321 	.word	0x21232321
   8823c:	21232123 	.word	0x21232123
   88240:	21212321 	.word	0x21212321
   88244:	21242321 	.word	0x21242321
   88248:	21212123 	.word	0x21212123
   8824c:	25232122 	.word	0x25232122
   88250:	21212121 	.word	0x21212121
   88254:	21212221 	.word	0x21212221
   88258:	21212121 	.word	0x21212121
   8825c:	21212121 	.word	0x21212121
   88260:	23212121 	.word	0x23212121
   88264:	21222121 	.word	0x21222121
   88268:	22212121 	.word	0x22212121
   8826c:	21212221 	.word	0x21212221
   88270:	21212421 	.word	0x21212421
   88274:	21202b03 	.word	0x21202b03
   88278:	21212322 	.word	0x21212322
   8827c:	21252123 	.word	0x21252123
   88280:	21212321 	.word	0x21212321
   88284:	26222121 	.word	0x26222121
   88288:	22212121 	.word	0x22212121
   8828c:	21222122 	.word	0x21222122
   88290:	21242126 	.word	0x21242126
   88294:	02212124 	.word	0x02212124
   88298:	01010006 	.word	0x01010006
   8829c:	0000002a 	.word	0x0000002a
   882a0:	82ca0002 	.word	0x82ca0002
   882a4:	01080008 	.word	0x01080008
   882a8:	000881c8 	.word	0x000881c8
   882ac:	00088000 	.word	0x00088000
   882b0:	00000000 	.word	0x00000000
   882b4:	000881c8 	.word	0x000881c8
   882b8:	00000000 	.word	0x00000000
   882bc:	00088310 	.word	0x00088310
   882c0:	00081153 	.word	0x00081153
   882c4:	00081167 	.word	0x00081167
   882c8:	11018001 	.word	0x11018001
   882cc:	11061000 	.word	0x11061000
   882d0:	03011201 	.word	0x03011201
   882d4:	250e1b0e 	.word	0x250e1b0e
   882d8:	0005130e 	.word	0x0005130e
   882dc:	00000000 	.word	0x00000000
   882e0:	0000002c 	.word	0x0000002c
   882e4:	829c0002 	.word	0x829c0002
   882e8:	00080008 	.word	0x00080008
   882ec:	00000000 	.word	0x00000000
   882f0:	00088000 	.word	0x00088000
   882f4:	00000000 	.word	0x00000000
   882f8:	000001c8 	.word	0x000001c8
	...
   88310:	6f68632f 	.word	0x6f68632f
   88314:	656b2f73 	.word	0x656b2f73
   88318:	6c656e72 	.word	0x6c656e72
   8831c:	6372612f 	.word	0x6372612f
   88320:	61612f68 	.word	0x61612f68
   88324:	36686372 	.word	0x36686372
   88328:	6f622f34 	.word	0x6f622f34
   8832c:	722f746f 	.word	0x722f746f
   88330:	69707361 	.word	0x69707361
   88334:	6e692f33 	.word	0x6e692f33
   88338:	742f7469 	.word	0x742f7469
   8833c:	736c6f6f 	.word	0x736c6f6f
   88340:	0000532e 	.word	0x0000532e

0000000000088344 <clear_bss>:
   88344:	d10083ff 	sub	sp, sp, #0x20
   88348:	900000c0 	adrp	x0, a0000 <init_end+0x10000>
   8834c:	f9400400 	ldr	x0, [x0, #8]
   88350:	f9000be0 	str	x0, [sp, #16]
   88354:	900000c0 	adrp	x0, a0000 <init_end+0x10000>
   88358:	f9400800 	ldr	x0, [x0, #16]
   8835c:	f90007e0 	str	x0, [sp, #8]
   88360:	f9400be0 	ldr	x0, [sp, #16]
   88364:	f9000fe0 	str	x0, [sp, #24]
   88368:	14000006 	b	88380 <clear_bss+0x3c>
   8836c:	f9400fe0 	ldr	x0, [sp, #24]
   88370:	3900001f 	strb	wzr, [x0]
   88374:	f9400fe0 	ldr	x0, [sp, #24]
   88378:	91000400 	add	x0, x0, #0x1
   8837c:	f9000fe0 	str	x0, [sp, #24]
   88380:	f9400fe1 	ldr	x1, [sp, #24]
   88384:	f94007e0 	ldr	x0, [sp, #8]
   88388:	eb00003f 	cmp	x1, x0
   8838c:	54ffff03 	b.cc	8836c <clear_bss+0x28>  // b.lo, b.ul, b.last
   88390:	900000c0 	adrp	x0, a0000 <init_end+0x10000>
   88394:	f9400c00 	ldr	x0, [x0, #24]
   88398:	f900001f 	str	xzr, [x0]
   8839c:	d503201f 	nop
   883a0:	910083ff 	add	sp, sp, #0x20
   883a4:	d65f03c0 	ret

00000000000883a8 <init_c>:
   883a8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   883ac:	910003fd 	mov	x29, sp
   883b0:	97ffffe5 	bl	88344 <clear_bss>
   883b4:	94001173 	bl	8c980 <early_uart_init>
   883b8:	90000000 	adrp	x0, 88000 <arm64_elX_to_el1>
   883bc:	9110c000 	add	x0, x0, #0x430
   883c0:	940011d0 	bl	8cb00 <uart_send_string>
   883c4:	90000000 	adrp	x0, 88000 <arm64_elX_to_el1>
   883c8:	91110000 	add	x0, x0, #0x440
   883cc:	940011cd 	bl	8cb00 <uart_send_string>
   883d0:	97ffe369 	bl	81174 <init_boot_pt>
   883d4:	97ffff57 	bl	88130 <el1_mmu_activate>
   883d8:	90000000 	adrp	x0, 88000 <arm64_elX_to_el1>
   883dc:	9111a000 	add	x0, x0, #0x468
   883e0:	940011c8 	bl	8cb00 <uart_send_string>
   883e4:	90000000 	adrp	x0, 88000 <arm64_elX_to_el1>
   883e8:	91120000 	add	x0, x0, #0x480
   883ec:	940011c5 	bl	8cb00 <uart_send_string>
   883f0:	900000c0 	adrp	x0, a0000 <init_end+0x10000>
   883f4:	f9401000 	ldr	x0, [x0, #32]
   883f8:	97ffdf10 	bl	80038 <__start_kernel_veneer>
   883fc:	d503201f 	nop
   88400:	a8c17bfd 	ldp	x29, x30, [sp], #16
   88404:	d65f03c0 	ret

0000000000088408 <secondary_boot_flag>:
   88408:	0000beef 00000000 00000000 00000000     ................
	...

0000000000088428 <clear_bss_flag>:
   88428:	0000beef 00000000 746f6f62 6e69203a     ........boot: in
   88438:	635f7469 00000a0d 4f4f425b 49205d54     it_c....[BOOT] I
   88448:	6174736e 62206c6c 20746f6f 65676170     nstall boot page
   88458:	62617420 0a0d656c 00000000 00000000      table..........
   88468:	4f4f425b 45205d54 6c62616e 6c652065     [BOOT] Enable el
   88478:	4d4d2031 000a0d55 4f4f425b 4a205d54     1 MMU...[BOOT] J
   88488:	20706d75 6b206f74 656e7265 616d206c     ump to kernel ma
   88498:	0a0d6e69 00016a00 0b000400 08000886     in...j..........
   884a8:	08138601 88df0c00 11530008 83440008     ..........S...D.
   884b8:	00000008 00c40000 00000000 87260000     ..............&.
   884c8:	ad020008 02000888 00390d14 01030000     ..........9.....
   884d8:	08887808 88a40200 15020008 0000390d     .x...........9..
   884e8:	36750400 11030034 00005d1c 004c0500     ..u64....]....L.
   884f8:	08030000 08885807 07040300 00088862     .....X......b...
   88508:	7d070203 03000888 886f0801 08030008     ...}......o.....
   88518:	0888c705 05040600 00746e69 d5050203     ........int.....
   88528:	03000888 88710601 39070008 ac000000     ......q....9....
   88538:	08000000 000000ac 00ac0903 0fff0000     ................
   88548:	07080300 0008885d 0889130a 06130100     ....]...........
   88558:	00000095 80030910 00000889 07000000     ................
   88568:	000000da 000000da 0000ac08 03000300     ................
   88578:	88cc0508 440b0008 01000888 00ca061f     .......D........
   88588:	03090000 00088408 00000000 08882b0b     .............+..
   88598:	0e200100 00000058 84280309 00000008     .. .X.....(.....
   885a8:	9d0c0000 01000888 83a80635 00000008     ........5.......
   885b8:	00600000 00000000 9c010000 08883a0d     ..`..........:..
   885c8:	0d260100 00088344 00000000 00000064     ..&.D.......d...
   885d8:	00000000 b80e9c01 01000888 004c0d28     ............(.L.
   885e8:	91020000 88900e70 29010008 00004c0d     ....p......).L..
   885f8:	68910200 0100690f 004c0d2a 91020000     ...h.i..*.L.....
   88608:	01000078 0e250111 0e030b13 01110e1b     x.....%.........
   88618:	17100712 34020000 3a0e0300 390b3b0b     .......4...:.;.9
   88628:	3f13490b 00193c19 00240300 0b3e0b0b     .I.?.<....$...>.
   88638:	00000e03 03001604 3b0b3a08 490b390b     .........:.;.9.I
   88648:	05000013 13490035 24060000 3e0b0b00     ....5.I....$...>
   88658:	0008030b 01010700 13011349 21080000     ........I......!
   88668:	2f134900 0900000b 13490021 0000052f     .I./....!.I./...
   88678:	0300340a 3b0b3a0e 490b390b 88193f13     .4...:.;.9.I.?..
   88688:	18020b01 340b0000 3a0e0300 390b3b0b     .......4...:.;.9
   88698:	3f13490b 00180219 002e0c00 0e03193f     .I.?........?...
   886a8:	0b3b0b3a 19270b39 07120111 42961840     :.;.9.'.....@..B
   886b8:	0d000019 0e03012e 0b3b0b3a 19270b39     ........:.;.9.'.
   886c8:	07120111 42971840 0e000019 0e030034     ....@..B....4...
   886d8:	0b3b0b3a 13490b39 00001802 0300340f     :.;.9.I......4..
   886e8:	3b0b3a08 490b390b 00180213 002c0000     .:.;.9.I......,.
   886f8:	00020000 0008849d 00000008 83440000     ..............D.
   88708:	00000008 00c40000 00000000 00000000     ................
	...
   88724:	01010000 00030000 000000a9 0efb0104     ................
   88734:	0101000d 00000101 00000100 68632f01     ............./ch
   88744:	6b2f736f 656e7265 72612f6c 612f6863     os/kernel/arch/a
   88754:	68637261 622f3436 2f746f6f 70736172     arch64/boot/rasp
   88764:	692f3369 0074696e 6f68632f 656b2f73     i3/init./chos/ke
   88774:	6c656e72 6372612f 61612f68 36686372     rnel/arch/aarch6
   88784:	6f622f34 722f746f 69707361 6e692f33     4/boot/raspi3/in
   88794:	64756c63 632f0065 2f736f68 6e72656b     clude./chos/kern
   887a4:	692f6c65 756c636e 632f6564 6f6d6d6f     el/include/commo
   887b4:	6900006e 5f74696e 00632e63 62000001     n..init_c.c....b
   887c4:	2e746f6f 00020068 70797400 682e7365     oot.h....types.h
   887d4:	00000300 00010500 83440209 00000008     ..........D.....
   887e4:	26030000 25180501 053d1605 09053e10     ...&...%..=..>..
   887f4:	0012052e 21030402 02001c05 05200304     .......!...... .
   88804:	04020034 09051f03 01040200 4d18053c     4...........<..M
   88814:	3f3d0105 23300905 233d3f21 053d3f21     ..=?..0#!?=#!?=.
   88824:	03023f01 63010100 7261656c 7373625f     .?.....clear_bss
   88834:	616c665f 6c630067 5f726165 00737362     _flag.clear_bss.
   88844:	6f636573 7261646e 6f625f79 665f746f     secondary_boot_f
   88854:	0067616c 676e6f6c 6e6f6c20 6e752067     lag.long long un
   88864:	6e676973 69206465 7500746e 6769736e     signed int.unsig
   88874:	2064656e 72616863 6f687300 75207472     ned char.short u
   88884:	6769736e 2064656e 00746e69 5f737362     nsigned int.bss_
   88894:	5f646e65 72646461 696e6900 00635f74     end_addr.init_c.
   888a4:	7373625f 646e655f 73625f00 74735f73     _bss_end._bss_st
   888b4:	00747261 5f737362 72617473 64615f74     art.bss_start_ad
   888c4:	6c007264 20676e6f 676e6f6c 746e6920     dr.long long int
   888d4:	6f687300 69207472 2f00746e 736f6863     .short int./chos
   888e4:	72656b2f 2f6c656e 68637261 7261612f     /kernel/arch/aar
   888f4:	34366863 6f6f622f 61722f74 33697073     ch64/boot/raspi3
   88904:	696e692f 6e692f74 635f7469 6200632e     /init/init_c.c.b
   88914:	5f746f6f 5f757063 63617473 0000006b     oot_cpu_stack...
   88924:	00000000 00000010 00000000 00527a01     .............zR.
   88934:	011e7804 001f0c1b 00000014 00000018     .x..............
   88944:	fffffa00 00000064 200e4100 00000e57     ....d....A. W...
   88954:	00000020 00000030 fffffa4c 00000060      ...0...L...`...
   88964:	100e4100 019e029d 0eddde56 00000000     .A......V.......
	...

0000000000088980 <boot_cpu_stack>:
	...

000000000008c980 <early_uart_init>:
   8c980:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   8c984:	910003fd 	mov	x29, sp
   8c988:	d2800080 	mov	x0, #0x4                   	// #4
   8c98c:	f2a7e400 	movk	x0, #0x3f20, lsl #16
   8c990:	97ffee04 	bl	881a0 <early_get32>
   8c994:	b9001fe0 	str	w0, [sp, #28]
   8c998:	b9401fe0 	ldr	w0, [sp, #28]
   8c99c:	12117000 	and	w0, w0, #0xffff8fff
   8c9a0:	b9001fe0 	str	w0, [sp, #28]
   8c9a4:	b9401fe0 	ldr	w0, [sp, #28]
   8c9a8:	32130000 	orr	w0, w0, #0x2000
   8c9ac:	b9001fe0 	str	w0, [sp, #28]
   8c9b0:	b9401fe0 	ldr	w0, [sp, #28]
   8c9b4:	120e7000 	and	w0, w0, #0xfffc7fff
   8c9b8:	b9001fe0 	str	w0, [sp, #28]
   8c9bc:	b9401fe0 	ldr	w0, [sp, #28]
   8c9c0:	32100000 	orr	w0, w0, #0x10000
   8c9c4:	b9001fe0 	str	w0, [sp, #28]
   8c9c8:	b9401fe1 	ldr	w1, [sp, #28]
   8c9cc:	d2800080 	mov	x0, #0x4                   	// #4
   8c9d0:	f2a7e400 	movk	x0, #0x3f20, lsl #16
   8c9d4:	97ffedf1 	bl	88198 <early_put32>
   8c9d8:	52800001 	mov	w1, #0x0                   	// #0
   8c9dc:	d2801280 	mov	x0, #0x94                  	// #148
   8c9e0:	f2a7e400 	movk	x0, #0x3f20, lsl #16
   8c9e4:	97ffeded 	bl	88198 <early_put32>
   8c9e8:	d28012c0 	mov	x0, #0x96                  	// #150
   8c9ec:	97ffedef 	bl	881a8 <delay>
   8c9f0:	52980001 	mov	w1, #0xc000                	// #49152
   8c9f4:	d2801300 	mov	x0, #0x98                  	// #152
   8c9f8:	f2a7e400 	movk	x0, #0x3f20, lsl #16
   8c9fc:	97ffede7 	bl	88198 <early_put32>
   8ca00:	d28012c0 	mov	x0, #0x96                  	// #150
   8ca04:	97ffede9 	bl	881a8 <delay>
   8ca08:	52800001 	mov	w1, #0x0                   	// #0
   8ca0c:	d2801300 	mov	x0, #0x98                  	// #152
   8ca10:	f2a7e400 	movk	x0, #0x3f20, lsl #16
   8ca14:	97ffede1 	bl	88198 <early_put32>
   8ca18:	52800021 	mov	w1, #0x1                   	// #1
   8ca1c:	d28a0080 	mov	x0, #0x5004                	// #20484
   8ca20:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ca24:	97ffeddd 	bl	88198 <early_put32>
   8ca28:	52800001 	mov	w1, #0x0                   	// #0
   8ca2c:	d28a0880 	mov	x0, #0x5044                	// #20548
   8ca30:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ca34:	97ffedd9 	bl	88198 <early_put32>
   8ca38:	52800001 	mov	w1, #0x0                   	// #0
   8ca3c:	d28a0c00 	mov	x0, #0x5060                	// #20576
   8ca40:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ca44:	97ffedd5 	bl	88198 <early_put32>
   8ca48:	52800001 	mov	w1, #0x0                   	// #0
   8ca4c:	d28a0880 	mov	x0, #0x5044                	// #20548
   8ca50:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ca54:	97ffedd1 	bl	88198 <early_put32>
   8ca58:	52800061 	mov	w1, #0x3                   	// #3
   8ca5c:	d28a0980 	mov	x0, #0x504c                	// #20556
   8ca60:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ca64:	97ffedcd 	bl	88198 <early_put32>
   8ca68:	52800001 	mov	w1, #0x0                   	// #0
   8ca6c:	d28a0a00 	mov	x0, #0x5050                	// #20560
   8ca70:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ca74:	97ffedc9 	bl	88198 <early_put32>
   8ca78:	528021c1 	mov	w1, #0x10e                 	// #270
   8ca7c:	d28a0d00 	mov	x0, #0x5068                	// #20584
   8ca80:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ca84:	97ffedc5 	bl	88198 <early_put32>
   8ca88:	52800061 	mov	w1, #0x3                   	// #3
   8ca8c:	d28a0c00 	mov	x0, #0x5060                	// #20576
   8ca90:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ca94:	97ffedc1 	bl	88198 <early_put32>
   8ca98:	d503201f 	nop
   8ca9c:	a8c27bfd 	ldp	x29, x30, [sp], #32
   8caa0:	d65f03c0 	ret

000000000008caa4 <early_uart_lsr>:
   8caa4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   8caa8:	910003fd 	mov	x29, sp
   8caac:	d28a0a80 	mov	x0, #0x5054                	// #20564
   8cab0:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8cab4:	97ffedbb 	bl	881a0 <early_get32>
   8cab8:	a8c17bfd 	ldp	x29, x30, [sp], #16
   8cabc:	d65f03c0 	ret

000000000008cac0 <early_uart_send>:
   8cac0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   8cac4:	910003fd 	mov	x29, sp
   8cac8:	b9001fe0 	str	w0, [sp, #28]
   8cacc:	97fffff6 	bl	8caa4 <early_uart_lsr>
   8cad0:	121b0000 	and	w0, w0, #0x20
   8cad4:	7100001f 	cmp	w0, #0x0
   8cad8:	54000041 	b.ne	8cae0 <early_uart_send+0x20>  // b.any
   8cadc:	17fffffc 	b	8cacc <early_uart_send+0xc>
   8cae0:	d503201f 	nop
   8cae4:	b9401fe1 	ldr	w1, [sp, #28]
   8cae8:	d28a0800 	mov	x0, #0x5040                	// #20544
   8caec:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8caf0:	97ffedaa 	bl	88198 <early_put32>
   8caf4:	d503201f 	nop
   8caf8:	a8c27bfd 	ldp	x29, x30, [sp], #32
   8cafc:	d65f03c0 	ret

000000000008cb00 <uart_send_string>:
   8cb00:	d10043ff 	sub	sp, sp, #0x10
   8cb04:	f90007e0 	str	x0, [sp, #8]
   8cb08:	d503201f 	nop
   8cb0c:	910043ff 	add	sp, sp, #0x10
   8cb10:	d65f03c0 	ret
   8cb14:	00000110 	.inst	0x00000110 ; undefined
   8cb18:	cc280004 	.inst	0xcc280004 ; undefined
   8cb1c:	01080008 	.inst	0x01080008 ; undefined
   8cb20:	00081386 	.inst	0x00081386 ; undefined
   8cb24:	08cdfd0c 	.inst	0x08cdfd0c ; undefined
   8cb28:	08115300 	stxrb	w17, w0, [x24]
   8cb2c:	08c98000 	.inst	0x08c98000 ; undefined
   8cb30:	00000000 	.inst	0x00000000 ; undefined
   8cb34:	00019400 	.inst	0x00019400 ; undefined
   8cb38:	00000000 	.inst	0x00000000 ; undefined
   8cb3c:	08cd1700 	ldlarb	w0, [x24]
   8cb40:	07080200 	.inst	0x07080200 ; undefined
   8cb44:	00088858 	.inst	0x00088858 ; undefined
   8cb48:	62070402 	.inst	0x62070402 ; undefined
   8cb4c:	02000888 	.inst	0x02000888 ; undefined
   8cb50:	887d0702 	ldxp	w2, w1, [x24]
   8cb54:	01020008 	.inst	0x01020008 ; undefined
   8cb58:	08886f08 	stllrb	w8, [x24]
   8cb5c:	05080200 	.inst	0x05080200 ; undefined
   8cb60:	000888c7 	.inst	0x000888c7 ; undefined
   8cb64:	69050403 	stgp	x3, x1, [x0, #160]
   8cb68:	0200746e 	.inst	0x0200746e ; undefined
   8cb6c:	88d50502 	ldlar	w2, [x8]
   8cb70:	01020008 	.inst	0x01020008 ; undefined
   8cb74:	08887106 	stllrb	w6, [x8]
   8cb78:	08010200 	stxrb	w1, w0, [x16]
   8cb7c:	00088878 	.inst	0x00088878 ; undefined
   8cb80:	08cddc04 	.inst	0x08cddc04 ; undefined
   8cb84:	064d0100 	.inst	0x064d0100 ; undefined
   8cb88:	0008cb00 	.inst	0x0008cb00 ; undefined
   8cb8c:	00000000 	.inst	0x00000000 ; undefined
   8cb90:	00000014 	.inst	0x00000014 ; undefined
   8cb94:	00000000 	.inst	0x00000000 ; undefined
   8cb98:	009a9c01 	.inst	0x009a9c01 ; undefined
   8cb9c:	73050000 	.inst	0x73050000 ; undefined
   8cba0:	01007274 	.inst	0x01007274 ; undefined
   8cba4:	009a1d4d 	.inst	0x009a1d4d ; undefined
   8cba8:	91020000 	add	x0, x0, #0x80
   8cbac:	08060078 	stxrb	w6, w24, [x3]
   8cbb0:	00000065 	.inst	0x00000065 ; undefined
   8cbb4:	08cded07 	.inst	0x08cded07 ; undefined
   8cbb8:	0d440100 	.inst	0x0d440100 ; undefined
   8cbbc:	0008cac0 	.inst	0x0008cac0 ; undefined
   8cbc0:	00000000 	.inst	0x00000000 ; undefined
   8cbc4:	00000040 	.inst	0x00000040 ; undefined
   8cbc8:	00000000 	.inst	0x00000000 ; undefined
   8cbcc:	00cc9c01 	.inst	0x00cc9c01 ; undefined
   8cbd0:	63050000 	.inst	0x63050000 ; undefined
   8cbd4:	2a440100 	orr	w0, w8, w4, lsr #0
   8cbd8:	00000034 	.inst	0x00000034 ; undefined
   8cbdc:	007c9102 	.inst	0x007c9102 ; undefined
   8cbe0:	08cdbd08 	.inst	0x08cdbd08 ; undefined
   8cbe4:	153f0100 	b	504cfe4 <img_end+0x4f8cfe4>
   8cbe8:	00000034 	.inst	0x00000034 ; undefined
   8cbec:	0008caa4 	.inst	0x0008caa4 ; undefined
   8cbf0:	00000000 	.inst	0x00000000 ; undefined
   8cbf4:	0000001c 	.inst	0x0000001c ; undefined
   8cbf8:	00000000 	.inst	0x00000000 ; undefined
   8cbfc:	cc099c01 	.inst	0xcc099c01 ; undefined
   8cc00:	010008cd 	.inst	0x010008cd ; undefined
   8cc04:	c9800623 	.inst	0xc9800623 ; undefined
   8cc08:	00000008 	.inst	0x00000008 ; undefined
   8cc0c:	01240000 	.inst	0x01240000 ; undefined
   8cc10:	00000000 	.inst	0x00000000 ; undefined
   8cc14:	9c010000 	ldr	q0, 8ec14 <uart_send_string+0x2114>
   8cc18:	0061720a 	.inst	0x0061720a ; undefined
   8cc1c:	34162501 	cbz	w1, b90bc <_bss_end+0x107c>
   8cc20:	02000000 	.inst	0x02000000 ; undefined
   8cc24:	00007c91 	.inst	0x00007c91 ; undefined
   8cc28:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   8cc2c:	030b130e 	.inst	0x030b130e ; undefined
   8cc30:	110e1b0e 	add	w14, w24, #0x386
   8cc34:	10071201 	adr	x1, 9ae74 <init_end+0xae74>
   8cc38:	02000017 	.inst	0x02000017 ; undefined
   8cc3c:	0b0b0024 	add	w4, w1, w11
   8cc40:	0e030b3e 	.inst	0x0e030b3e ; undefined
   8cc44:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
   8cc48:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
   8cc4c:	0008030b 	.inst	0x0008030b ; undefined
   8cc50:	012e0400 	.inst	0x012e0400 ; undefined
   8cc54:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
   8cc58:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
   8cc5c:	19270b39 	.inst	0x19270b39 ; undefined
   8cc60:	07120111 	.inst	0x07120111 ; undefined
   8cc64:	42971840 	.inst	0x42971840 ; undefined
   8cc68:	00130119 	.inst	0x00130119 ; undefined
   8cc6c:	00050500 	.inst	0x00050500 ; undefined
   8cc70:	0b3a0803 	add	w3, w0, w26, uxtb #2
   8cc74:	0b390b3b 	add	w27, w25, w25, uxtb #2
   8cc78:	18021349 	ldr	w9, 90ee0 <init_end+0xee0>
   8cc7c:	0f060000 	.inst	0x0f060000 ; undefined
   8cc80:	490b0b00 	.inst	0x490b0b00 ; undefined
   8cc84:	07000013 	.inst	0x07000013 ; undefined
   8cc88:	0e03012e 	tbl	v14.8b, {v9.16b}, v3.8b
   8cc8c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
   8cc90:	19270b39 	.inst	0x19270b39 ; undefined
   8cc94:	07120111 	.inst	0x07120111 ; undefined
   8cc98:	42961840 	.inst	0x42961840 ; undefined
   8cc9c:	00130119 	.inst	0x00130119 ; undefined
   8cca0:	002e0800 	.inst	0x002e0800 ; NYI
   8cca4:	0b3a0e03 	add	w3, w16, w26, uxtb #3
   8cca8:	0b390b3b 	add	w27, w25, w25, uxtb #2
   8ccac:	13491927 	.inst	0x13491927 ; undefined
   8ccb0:	07120111 	.inst	0x07120111 ; undefined
   8ccb4:	42961840 	.inst	0x42961840 ; undefined
   8ccb8:	09000019 	.inst	0x09000019 ; undefined
   8ccbc:	193f012e 	.inst	0x193f012e ; undefined
   8ccc0:	0b3a0e03 	add	w3, w16, w26, uxtb #3
   8ccc4:	0b390b3b 	add	w27, w25, w25, uxtb #2
   8ccc8:	01111927 	.inst	0x01111927 ; undefined
   8cccc:	18400712 	ldr	w18, 10cdac <img_end+0x4cdac>
   8ccd0:	00194296 	.inst	0x00194296 ; undefined
   8ccd4:	00340a00 	.inst	0x00340a00 ; NYI
   8ccd8:	0b3a0803 	add	w3, w0, w26, uxtb #2
   8ccdc:	0b390b3b 	add	w27, w25, w25, uxtb #2
   8cce0:	18021349 	ldr	w9, 90f48 <init_end+0xf48>
   8cce4:	2c000000 	stnp	s0, s0, [x0]
   8cce8:	02000000 	.inst	0x02000000 ; undefined
   8ccec:	08cb1400 	ldlarb	w0, [x0]
   8ccf0:	00000800 	.inst	0x00000800 ; undefined
   8ccf4:	80000000 	.inst	0x80000000 ; undefined
   8ccf8:	000008c9 	.inst	0x000008c9 ; undefined
   8ccfc:	94000000 	bl	8ccfc <uart_send_string+0x1fc>
   8cd00:	00000001 	.inst	0x00000001 ; undefined
	...
   8cd14:	a2000000 	.inst	0xa2000000 ; undefined
   8cd18:	03000000 	.inst	0x03000000 ; undefined
   8cd1c:	00004f00 	.inst	0x00004f00 ; undefined
   8cd20:	fb010400 	.inst	0xfb010400 ; undefined
   8cd24:	01000d0e 	.inst	0x01000d0e ; undefined
   8cd28:	00010101 	.inst	0x00010101 ; undefined
   8cd2c:	00010000 	.inst	0x00010000 ; undefined
   8cd30:	632f0100 	.inst	0x632f0100 ; undefined
   8cd34:	2f736f68 	.inst	0x2f736f68 ; undefined
   8cd38:	6e72656b 	umax	v11.8h, v11.8h, v18.8h
   8cd3c:	612f6c65 	.inst	0x612f6c65 ; undefined
   8cd40:	2f686372 	umlsl	v18.4s, v27.4h, v8.h[2]
   8cd44:	63726161 	.inst	0x63726161 ; undefined
   8cd48:	2f343668 	ursra	v8.2s, v19.2s, #12
   8cd4c:	746f6f62 	.inst	0x746f6f62 ; undefined
   8cd50:	7361722f 	.inst	0x7361722f ; undefined
   8cd54:	2f336970 	.inst	0x2f336970 ; undefined
   8cd58:	69726570 	ldpsw	x16, x25, [x11, #-112]
   8cd5c:	72656870 	.inst	0x72656870 ; undefined
   8cd60:	00736c61 	.inst	0x00736c61 ; undefined
   8cd64:	72617500 	.inst	0x72617500 ; undefined
   8cd68:	00632e74 	.inst	0x00632e74 ; undefined
   8cd6c:	00000001 	.inst	0x00000001 ; undefined
   8cd70:	09000105 	.inst	0x09000105 ; undefined
   8cd74:	08c98002 	.inst	0x08c98002 ; undefined
   8cd78:	00000000 	.inst	0x00000000 ; undefined
   8cd7c:	01230300 	.inst	0x01230300 ; undefined
   8cd80:	05310e05 	ext	z5.b, z5.b, z16.b, #139
   8cd84:	3d3d4b0c 	str	b12, [x24, #3922]
   8cd88:	3d09053d 	str	b29, [x9, #577]
   8cd8c:	4b2f4b4c 	sub	w12, w26, w15, uxtw #2
   8cd90:	4b4b4c2f 	sub	w15, w1, w11, lsr #19
   8cd94:	4b4b4b4b 	sub	w11, w26, w11, lsr #18
   8cd98:	4b01054c 	sub	w12, w10, w1, lsl #1
   8cd9c:	2f10053f 	ushr	v31.4h, v9.4h, #16
   8cda0:	313d0105 	adds	w5, w8, #0xf40
   8cda4:	053e1505 	ext	z5.b, z5.b, z8.b, #245
   8cda8:	14052026 	b	1d4e40 <img_end+0x114e40>
   8cdac:	3d190520 	str	b0, [x9, #1601]
   8cdb0:	05220905 	ext	z5.b, z5.b, z8.b, #18
   8cdb4:	323f4b01 	orr	w1, w24, #0xffffe
   8cdb8:	01000302 	.inst	0x01000302 ; undefined
   8cdbc:	72616501 	.inst	0x72616501 ; undefined
   8cdc0:	755f796c 	.inst	0x755f796c ; undefined
   8cdc4:	5f747261 	sqdmlsl	s1, h19, v4.h[3]
   8cdc8:	0072736c 	.inst	0x0072736c ; undefined
   8cdcc:	6c726165 	ldnp	d5, d24, [x11, #-224]
   8cdd0:	61755f79 	.inst	0x61755f79 ; undefined
   8cdd4:	695f7472 	ldpsw	x18, x29, [x3, #248]
   8cdd8:	0074696e 	.inst	0x0074696e ; undefined
   8cddc:	74726175 	.inst	0x74726175 ; undefined
   8cde0:	6e65735f 	uabdl2	v31.4s, v26.8h, v5.8h
   8cde4:	74735f64 	.inst	0x74735f64 ; undefined
   8cde8:	676e6972 	.inst	0x676e6972 ; undefined
   8cdec:	72616500 	.inst	0x72616500 ; undefined
   8cdf0:	755f796c 	.inst	0x755f796c ; undefined
   8cdf4:	5f747261 	sqdmlsl	s1, h19, v4.h[3]
   8cdf8:	646e6573 	.inst	0x646e6573 ; undefined
   8cdfc:	68632f00 	.inst	0x68632f00 ; undefined
   8ce00:	6b2f736f 	subs	w15, w27, w15, uxtx #4
   8ce04:	656e7265 	fnmls	z5.h, p4/m, z19.h, z14.h
   8ce08:	72612f6c 	.inst	0x72612f6c ; undefined
   8ce0c:	612f6863 	.inst	0x612f6863 ; undefined
   8ce10:	68637261 	.inst	0x68637261 ; undefined
   8ce14:	622f3436 	.inst	0x622f3436 ; undefined
   8ce18:	2f746f6f 	.inst	0x2f746f6f ; undefined
   8ce1c:	70736172 	adr	x18, 173a4b <img_end+0xb3a4b>
   8ce20:	702f3369 	adr	x9, eb48f <img_end+0x2b48f>
   8ce24:	70697265 	adr	x5, 15fc73 <img_end+0x9fc73>
   8ce28:	61726568 	.inst	0x61726568 ; undefined
   8ce2c:	752f736c 	.inst	0x752f736c ; undefined
   8ce30:	2e747261 	uabdl	v1.4s, v19.4h, v20.4h
   8ce34:	00000063 	.inst	0x00000063 ; undefined
   8ce38:	00000010 	.inst	0x00000010 ; undefined
   8ce3c:	00000000 	.inst	0x00000000 ; undefined
   8ce40:	00527a01 	.inst	0x00527a01 ; undefined
   8ce44:	011e7804 	.inst	0x011e7804 ; undefined
   8ce48:	001f0c1b 	.inst	0x001f0c1b ; undefined
   8ce4c:	0000001c 	.word	0x0000001c
   8ce50:	00000018 	.word	0x00000018
   8ce54:	fffffb2c 	.word	0xfffffb2c
   8ce58:	00000124 	.word	0x00000124
   8ce5c:	200e4100 	.word	0x200e4100
   8ce60:	039e049d 	.word	0x039e049d
   8ce64:	ddde4702 	.word	0xddde4702
   8ce68:	0000000e 	.word	0x0000000e
   8ce6c:	0000001c 	.word	0x0000001c
   8ce70:	00000038 	.word	0x00000038
   8ce74:	fffffc30 	.word	0xfffffc30
   8ce78:	0000001c 	.word	0x0000001c
   8ce7c:	100e4100 	.word	0x100e4100
   8ce80:	019e029d 	.word	0x019e029d
   8ce84:	0eddde45 	.word	0x0eddde45
   8ce88:	00000000 	.word	0x00000000
   8ce8c:	0000001c 	.word	0x0000001c
   8ce90:	00000058 	.word	0x00000058
   8ce94:	fffffc2c 	.word	0xfffffc2c
   8ce98:	00000040 	.word	0x00000040
   8ce9c:	200e4100 	.word	0x200e4100
   8cea0:	039e049d 	.word	0x039e049d
   8cea4:	0eddde4e 	.word	0x0eddde4e
   8cea8:	00000000 	.word	0x00000000
   8ceac:	00000018 	.word	0x00000018
   8ceb0:	00000078 	.word	0x00000078
   8ceb4:	fffffc4c 	.word	0xfffffc4c
   8ceb8:	00000014 	.word	0x00000014
   8cebc:	100e4100 	.word	0x100e4100
   8cec0:	00000e43 	.word	0x00000e43
   8cec4:	00000000 	.word	0x00000000

Disassembly of section .text:

ffffff0000090000 <start_kernel>:
ffffff0000090000:	580000c2 	ldr	x2, ffffff0000090018 <start_kernel+0x18>
ffffff0000090004:	91400842 	add	x2, x2, #0x2, lsl #12
ffffff0000090008:	9100005f 	mov	sp, x2
ffffff000009000c:	d2800003 	mov	x3, #0x0                   	// #0
ffffff0000090010:	d518d083 	msr	tpidr_el1, x3
ffffff0000090014:	94000003 	bl	ffffff0000090020 <main>
ffffff0000090018:	000b0040 	.word	0x000b0040
ffffff000009001c:	ffffff00 	.word	0xffffff00

ffffff0000090020 <main>:
ffffff0000090020:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000090024:	910003fd 	mov	x29, sp
ffffff0000090028:	f9000fe0 	str	x0, [sp, #24]
ffffff000009002c:	52800382 	mov	w2, #0x1c                  	// #28
ffffff0000090030:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090034:	9100c001 	add	x1, x0, #0x30
ffffff0000090038:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009003c:	91000000 	add	x0, x0, #0x0
ffffff0000090040:	94000619 	bl	ffffff00000918a4 <printk>
ffffff0000090044:	14000000 	b	ffffff0000090044 <main+0x24>

ffffff0000090048 <flush_dcache_area>:
ffffff0000090048:	d53b0023 	mrs	x3, ctr_el0
ffffff000009004c:	d503201f 	nop
ffffff0000090050:	d3504c63 	ubfx	x3, x3, #16, #4
ffffff0000090054:	d2800082 	mov	x2, #0x4                   	// #4
ffffff0000090058:	9ac32042 	lsl	x2, x2, x3
ffffff000009005c:	8b010001 	add	x1, x0, x1
ffffff0000090060:	d1000443 	sub	x3, x2, #0x1
ffffff0000090064:	8a230000 	bic	x0, x0, x3
ffffff0000090068:	d50b7e20 	dc	civac, x0
ffffff000009006c:	8b020000 	add	x0, x0, x2
ffffff0000090070:	eb01001f 	cmp	x0, x1
ffffff0000090074:	54ffffa3 	b.cc	ffffff0000090068 <flush_dcache_area+0x20>  // b.lo, b.ul, b.last
ffffff0000090078:	d5033f9f 	dsb	sy
ffffff000009007c:	d65f03c0 	ret

ffffff0000090080 <put32>:
ffffff0000090080:	b9000001 	str	w1, [x0]
ffffff0000090084:	d65f03c0 	ret

ffffff0000090088 <get32>:
ffffff0000090088:	b9400000 	ldr	w0, [x0]
ffffff000009008c:	d65f03c0 	ret

ffffff0000090090 <put64>:
ffffff0000090090:	f9000001 	str	x1, [x0]
ffffff0000090094:	d65f03c0 	ret

ffffff0000090098 <get64>:
ffffff0000090098:	f9400000 	ldr	x0, [x0]
ffffff000009009c:	d65f03c0 	ret

ffffff00000900a0 <delay>:
ffffff00000900a0:	d10043ff 	sub	sp, sp, #0x10
ffffff00000900a4:	b9000fe0 	str	w0, [sp, #12]
ffffff00000900a8:	14000004 	b	ffffff00000900b8 <delay+0x18>
ffffff00000900ac:	b9400fe0 	ldr	w0, [sp, #12]
ffffff00000900b0:	51000400 	sub	w0, w0, #0x1
ffffff00000900b4:	b9000fe0 	str	w0, [sp, #12]
ffffff00000900b8:	b9400fe0 	ldr	w0, [sp, #12]
ffffff00000900bc:	7100001f 	cmp	w0, #0x0
ffffff00000900c0:	54ffff61 	b.ne	ffffff00000900ac <delay+0xc>  // b.any
ffffff00000900c4:	d503201f 	nop
ffffff00000900c8:	d503201f 	nop
ffffff00000900cc:	910043ff 	add	sp, sp, #0x10
ffffff00000900d0:	d65f03c0 	ret

ffffff00000900d4 <uart_init>:
ffffff00000900d4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000900d8:	910003fd 	mov	x29, sp
ffffff00000900dc:	929fff60 	mov	x0, #0xffffffffffff0004    	// #-65532
ffffff00000900e0:	f2a7e400 	movk	x0, #0x3f20, lsl #16
ffffff00000900e4:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000900e8:	97ffffe8 	bl	ffffff0000090088 <get32>
ffffff00000900ec:	b9001fe0 	str	w0, [sp, #28]
ffffff00000900f0:	b9401fe0 	ldr	w0, [sp, #28]
ffffff00000900f4:	12117000 	and	w0, w0, #0xffff8fff
ffffff00000900f8:	b9001fe0 	str	w0, [sp, #28]
ffffff00000900fc:	b9401fe0 	ldr	w0, [sp, #28]
ffffff0000090100:	32130000 	orr	w0, w0, #0x2000
ffffff0000090104:	b9001fe0 	str	w0, [sp, #28]
ffffff0000090108:	b9401fe0 	ldr	w0, [sp, #28]
ffffff000009010c:	120e7000 	and	w0, w0, #0xfffc7fff
ffffff0000090110:	b9001fe0 	str	w0, [sp, #28]
ffffff0000090114:	b9401fe0 	ldr	w0, [sp, #28]
ffffff0000090118:	32100000 	orr	w0, w0, #0x10000
ffffff000009011c:	b9001fe0 	str	w0, [sp, #28]
ffffff0000090120:	b9401fe1 	ldr	w1, [sp, #28]
ffffff0000090124:	929fff60 	mov	x0, #0xffffffffffff0004    	// #-65532
ffffff0000090128:	f2a7e400 	movk	x0, #0x3f20, lsl #16
ffffff000009012c:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000090130:	97ffffd4 	bl	ffffff0000090080 <put32>
ffffff0000090134:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090138:	929fed60 	mov	x0, #0xffffffffffff0094    	// #-65388
ffffff000009013c:	f2a7e400 	movk	x0, #0x3f20, lsl #16
ffffff0000090140:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000090144:	97ffffcf 	bl	ffffff0000090080 <put32>
ffffff0000090148:	528012c0 	mov	w0, #0x96                  	// #150
ffffff000009014c:	97ffffd5 	bl	ffffff00000900a0 <delay>
ffffff0000090150:	52980001 	mov	w1, #0xc000                	// #49152
ffffff0000090154:	929fece0 	mov	x0, #0xffffffffffff0098    	// #-65384
ffffff0000090158:	f2a7e400 	movk	x0, #0x3f20, lsl #16
ffffff000009015c:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000090160:	97ffffc8 	bl	ffffff0000090080 <put32>
ffffff0000090164:	528012c0 	mov	w0, #0x96                  	// #150
ffffff0000090168:	97ffffce 	bl	ffffff00000900a0 <delay>
ffffff000009016c:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090170:	929fece0 	mov	x0, #0xffffffffffff0098    	// #-65384
ffffff0000090174:	f2a7e400 	movk	x0, #0x3f20, lsl #16
ffffff0000090178:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff000009017c:	97ffffc1 	bl	ffffff0000090080 <put32>
ffffff0000090180:	52800021 	mov	w1, #0x1                   	// #1
ffffff0000090184:	9295ff60 	mov	x0, #0xffffffffffff5004    	// #-45052
ffffff0000090188:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff000009018c:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000090190:	97ffffbc 	bl	ffffff0000090080 <put32>
ffffff0000090194:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090198:	9295f760 	mov	x0, #0xffffffffffff5044    	// #-44988
ffffff000009019c:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000901a0:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000901a4:	97ffffb7 	bl	ffffff0000090080 <put32>
ffffff00000901a8:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000901ac:	9295f3e0 	mov	x0, #0xffffffffffff5060    	// #-44960
ffffff00000901b0:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000901b4:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000901b8:	97ffffb2 	bl	ffffff0000090080 <put32>
ffffff00000901bc:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000901c0:	9295f760 	mov	x0, #0xffffffffffff5044    	// #-44988
ffffff00000901c4:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000901c8:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000901cc:	97ffffad 	bl	ffffff0000090080 <put32>
ffffff00000901d0:	52800061 	mov	w1, #0x3                   	// #3
ffffff00000901d4:	9295f660 	mov	x0, #0xffffffffffff504c    	// #-44980
ffffff00000901d8:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000901dc:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000901e0:	97ffffa8 	bl	ffffff0000090080 <put32>
ffffff00000901e4:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000901e8:	9295f5e0 	mov	x0, #0xffffffffffff5050    	// #-44976
ffffff00000901ec:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000901f0:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000901f4:	97ffffa3 	bl	ffffff0000090080 <put32>
ffffff00000901f8:	528021c1 	mov	w1, #0x10e                 	// #270
ffffff00000901fc:	9295f2e0 	mov	x0, #0xffffffffffff5068    	// #-44952
ffffff0000090200:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff0000090204:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000090208:	97ffff9e 	bl	ffffff0000090080 <put32>
ffffff000009020c:	52800061 	mov	w1, #0x3                   	// #3
ffffff0000090210:	9295f3e0 	mov	x0, #0xffffffffffff5060    	// #-44960
ffffff0000090214:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff0000090218:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff000009021c:	97ffff99 	bl	ffffff0000090080 <put32>
ffffff0000090220:	52800180 	mov	w0, #0xc                   	// #12
ffffff0000090224:	94000032 	bl	ffffff00000902ec <uart_send>
ffffff0000090228:	52800360 	mov	w0, #0x1b                  	// #27
ffffff000009022c:	94000030 	bl	ffffff00000902ec <uart_send>
ffffff0000090230:	52800b60 	mov	w0, #0x5b                  	// #91
ffffff0000090234:	9400002e 	bl	ffffff00000902ec <uart_send>
ffffff0000090238:	52800640 	mov	w0, #0x32                  	// #50
ffffff000009023c:	9400002c 	bl	ffffff00000902ec <uart_send>
ffffff0000090240:	52800940 	mov	w0, #0x4a                  	// #74
ffffff0000090244:	9400002a 	bl	ffffff00000902ec <uart_send>
ffffff0000090248:	d503201f 	nop
ffffff000009024c:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff0000090250:	d65f03c0 	ret

ffffff0000090254 <uart_lsr>:
ffffff0000090254:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000090258:	910003fd 	mov	x29, sp
ffffff000009025c:	9295f560 	mov	x0, #0xffffffffffff5054    	// #-44972
ffffff0000090260:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff0000090264:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000090268:	97ffff88 	bl	ffffff0000090088 <get32>
ffffff000009026c:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000090270:	d65f03c0 	ret

ffffff0000090274 <uart_recv>:
ffffff0000090274:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000090278:	910003fd 	mov	x29, sp
ffffff000009027c:	97fffff6 	bl	ffffff0000090254 <uart_lsr>
ffffff0000090280:	12000000 	and	w0, w0, #0x1
ffffff0000090284:	7100001f 	cmp	w0, #0x0
ffffff0000090288:	54000041 	b.ne	ffffff0000090290 <uart_recv+0x1c>  // b.any
ffffff000009028c:	17fffffc 	b	ffffff000009027c <uart_recv+0x8>
ffffff0000090290:	d503201f 	nop
ffffff0000090294:	9295f7e0 	mov	x0, #0xffffffffffff5040    	// #-44992
ffffff0000090298:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff000009029c:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000902a0:	97ffff7a 	bl	ffffff0000090088 <get32>
ffffff00000902a4:	12001c00 	and	w0, w0, #0xff
ffffff00000902a8:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff00000902ac:	d65f03c0 	ret

ffffff00000902b0 <nb_uart_recv>:
ffffff00000902b0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff00000902b4:	910003fd 	mov	x29, sp
ffffff00000902b8:	97ffffe7 	bl	ffffff0000090254 <uart_lsr>
ffffff00000902bc:	12000000 	and	w0, w0, #0x1
ffffff00000902c0:	7100001f 	cmp	w0, #0x0
ffffff00000902c4:	540000e0 	b.eq	ffffff00000902e0 <nb_uart_recv+0x30>  // b.none
ffffff00000902c8:	9295f7e0 	mov	x0, #0xffffffffffff5040    	// #-44992
ffffff00000902cc:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000902d0:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000902d4:	97ffff6d 	bl	ffffff0000090088 <get32>
ffffff00000902d8:	12001c00 	and	w0, w0, #0xff
ffffff00000902dc:	14000002 	b	ffffff00000902e4 <nb_uart_recv+0x34>
ffffff00000902e0:	12800000 	mov	w0, #0xffffffff            	// #-1
ffffff00000902e4:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff00000902e8:	d65f03c0 	ret

ffffff00000902ec <uart_send>:
ffffff00000902ec:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000902f0:	910003fd 	mov	x29, sp
ffffff00000902f4:	b9001fe0 	str	w0, [sp, #28]
ffffff00000902f8:	97ffffd7 	bl	ffffff0000090254 <uart_lsr>
ffffff00000902fc:	121b0000 	and	w0, w0, #0x20
ffffff0000090300:	7100001f 	cmp	w0, #0x0
ffffff0000090304:	54000041 	b.ne	ffffff000009030c <uart_send+0x20>  // b.any
ffffff0000090308:	17fffffc 	b	ffffff00000902f8 <uart_send+0xc>
ffffff000009030c:	d503201f 	nop
ffffff0000090310:	b9401fe1 	ldr	w1, [sp, #28]
ffffff0000090314:	9295f7e0 	mov	x0, #0xffffffffffff5040    	// #-44992
ffffff0000090318:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff000009031c:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000090320:	97ffff58 	bl	ffffff0000090080 <put32>
ffffff0000090324:	d503201f 	nop
ffffff0000090328:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff000009032c:	d65f03c0 	ret

ffffff0000090330 <simple_outputchar>:
ffffff0000090330:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000090334:	910003fd 	mov	x29, sp
ffffff0000090338:	f9000fe0 	str	x0, [sp, #24]
ffffff000009033c:	39005fe1 	strb	w1, [sp, #23]
ffffff0000090340:	f9400fe0 	ldr	x0, [sp, #24]
ffffff0000090344:	f100001f 	cmp	x0, #0x0
ffffff0000090348:	54000160 	b.eq	ffffff0000090374 <simple_outputchar+0x44>  // b.none
ffffff000009034c:	f9400fe0 	ldr	x0, [sp, #24]
ffffff0000090350:	f9400000 	ldr	x0, [x0]
ffffff0000090354:	39405fe1 	ldrb	w1, [sp, #23]
ffffff0000090358:	39000001 	strb	w1, [x0]
ffffff000009035c:	f9400fe0 	ldr	x0, [sp, #24]
ffffff0000090360:	f9400000 	ldr	x0, [x0]
ffffff0000090364:	91000401 	add	x1, x0, #0x1
ffffff0000090368:	f9400fe0 	ldr	x0, [sp, #24]
ffffff000009036c:	f9000001 	str	x1, [x0]
ffffff0000090370:	14000003 	b	ffffff000009037c <simple_outputchar+0x4c>
ffffff0000090374:	39405fe0 	ldrb	w0, [sp, #23]
ffffff0000090378:	97ffffdd 	bl	ffffff00000902ec <uart_send>
ffffff000009037c:	d503201f 	nop
ffffff0000090380:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff0000090384:	d65f03c0 	ret

ffffff0000090388 <prints>:
ffffff0000090388:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
ffffff000009038c:	910003fd 	mov	x29, sp
ffffff0000090390:	f90017e0 	str	x0, [sp, #40]
ffffff0000090394:	f90013e1 	str	x1, [sp, #32]
ffffff0000090398:	b9001fe2 	str	w2, [sp, #28]
ffffff000009039c:	b9001be3 	str	w3, [sp, #24]
ffffff00000903a0:	b9004fff 	str	wzr, [sp, #76]
ffffff00000903a4:	52800400 	mov	w0, #0x20                  	// #32
ffffff00000903a8:	b9004be0 	str	w0, [sp, #72]
ffffff00000903ac:	b9401fe0 	ldr	w0, [sp, #28]
ffffff00000903b0:	7100001f 	cmp	w0, #0x0
ffffff00000903b4:	540003ed 	b.le	ffffff0000090430 <prints+0xa8>
ffffff00000903b8:	b90047ff 	str	wzr, [sp, #68]
ffffff00000903bc:	f94013e0 	ldr	x0, [sp, #32]
ffffff00000903c0:	f9001fe0 	str	x0, [sp, #56]
ffffff00000903c4:	14000007 	b	ffffff00000903e0 <prints+0x58>
ffffff00000903c8:	b94047e0 	ldr	w0, [sp, #68]
ffffff00000903cc:	11000400 	add	w0, w0, #0x1
ffffff00000903d0:	b90047e0 	str	w0, [sp, #68]
ffffff00000903d4:	f9401fe0 	ldr	x0, [sp, #56]
ffffff00000903d8:	91000400 	add	x0, x0, #0x1
ffffff00000903dc:	f9001fe0 	str	x0, [sp, #56]
ffffff00000903e0:	f9401fe0 	ldr	x0, [sp, #56]
ffffff00000903e4:	39400000 	ldrb	w0, [x0]
ffffff00000903e8:	7100001f 	cmp	w0, #0x0
ffffff00000903ec:	54fffee1 	b.ne	ffffff00000903c8 <prints+0x40>  // b.any
ffffff00000903f0:	b94047e1 	ldr	w1, [sp, #68]
ffffff00000903f4:	b9401fe0 	ldr	w0, [sp, #28]
ffffff00000903f8:	6b00003f 	cmp	w1, w0
ffffff00000903fc:	5400006b 	b.lt	ffffff0000090408 <prints+0x80>  // b.tstop
ffffff0000090400:	b9001fff 	str	wzr, [sp, #28]
ffffff0000090404:	14000005 	b	ffffff0000090418 <prints+0x90>
ffffff0000090408:	b9401fe1 	ldr	w1, [sp, #28]
ffffff000009040c:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090410:	4b000020 	sub	w0, w1, w0
ffffff0000090414:	b9001fe0 	str	w0, [sp, #28]
ffffff0000090418:	b9401be0 	ldr	w0, [sp, #24]
ffffff000009041c:	12000000 	and	w0, w0, #0x1
ffffff0000090420:	7100001f 	cmp	w0, #0x0
ffffff0000090424:	54000060 	b.eq	ffffff0000090430 <prints+0xa8>  // b.none
ffffff0000090428:	52800600 	mov	w0, #0x30                  	// #48
ffffff000009042c:	b9004be0 	str	w0, [sp, #72]
ffffff0000090430:	b9401be0 	ldr	w0, [sp, #24]
ffffff0000090434:	121f0000 	and	w0, w0, #0x2
ffffff0000090438:	7100001f 	cmp	w0, #0x0
ffffff000009043c:	54000381 	b.ne	ffffff00000904ac <prints+0x124>  // b.any
ffffff0000090440:	1400000c 	b	ffffff0000090470 <prints+0xe8>
ffffff0000090444:	b9404be0 	ldr	w0, [sp, #72]
ffffff0000090448:	12001c00 	and	w0, w0, #0xff
ffffff000009044c:	2a0003e1 	mov	w1, w0
ffffff0000090450:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090454:	97ffffb7 	bl	ffffff0000090330 <simple_outputchar>
ffffff0000090458:	b9404fe0 	ldr	w0, [sp, #76]
ffffff000009045c:	11000400 	add	w0, w0, #0x1
ffffff0000090460:	b9004fe0 	str	w0, [sp, #76]
ffffff0000090464:	b9401fe0 	ldr	w0, [sp, #28]
ffffff0000090468:	51000400 	sub	w0, w0, #0x1
ffffff000009046c:	b9001fe0 	str	w0, [sp, #28]
ffffff0000090470:	b9401fe0 	ldr	w0, [sp, #28]
ffffff0000090474:	7100001f 	cmp	w0, #0x0
ffffff0000090478:	54fffe6c 	b.gt	ffffff0000090444 <prints+0xbc>
ffffff000009047c:	1400000c 	b	ffffff00000904ac <prints+0x124>
ffffff0000090480:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090484:	39400000 	ldrb	w0, [x0]
ffffff0000090488:	2a0003e1 	mov	w1, w0
ffffff000009048c:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090490:	97ffffa8 	bl	ffffff0000090330 <simple_outputchar>
ffffff0000090494:	b9404fe0 	ldr	w0, [sp, #76]
ffffff0000090498:	11000400 	add	w0, w0, #0x1
ffffff000009049c:	b9004fe0 	str	w0, [sp, #76]
ffffff00000904a0:	f94013e0 	ldr	x0, [sp, #32]
ffffff00000904a4:	91000400 	add	x0, x0, #0x1
ffffff00000904a8:	f90013e0 	str	x0, [sp, #32]
ffffff00000904ac:	f94013e0 	ldr	x0, [sp, #32]
ffffff00000904b0:	39400000 	ldrb	w0, [x0]
ffffff00000904b4:	7100001f 	cmp	w0, #0x0
ffffff00000904b8:	54fffe41 	b.ne	ffffff0000090480 <prints+0xf8>  // b.any
ffffff00000904bc:	1400000c 	b	ffffff00000904ec <prints+0x164>
ffffff00000904c0:	b9404be0 	ldr	w0, [sp, #72]
ffffff00000904c4:	12001c00 	and	w0, w0, #0xff
ffffff00000904c8:	2a0003e1 	mov	w1, w0
ffffff00000904cc:	f94017e0 	ldr	x0, [sp, #40]
ffffff00000904d0:	97ffff98 	bl	ffffff0000090330 <simple_outputchar>
ffffff00000904d4:	b9404fe0 	ldr	w0, [sp, #76]
ffffff00000904d8:	11000400 	add	w0, w0, #0x1
ffffff00000904dc:	b9004fe0 	str	w0, [sp, #76]
ffffff00000904e0:	b9401fe0 	ldr	w0, [sp, #28]
ffffff00000904e4:	51000400 	sub	w0, w0, #0x1
ffffff00000904e8:	b9001fe0 	str	w0, [sp, #28]
ffffff00000904ec:	b9401fe0 	ldr	w0, [sp, #28]
ffffff00000904f0:	7100001f 	cmp	w0, #0x0
ffffff00000904f4:	54fffe6c 	b.gt	ffffff00000904c0 <prints+0x138>
ffffff00000904f8:	b9404fe0 	ldr	w0, [sp, #76]
ffffff00000904fc:	a8c57bfd 	ldp	x29, x30, [sp], #80
ffffff0000090500:	d65f03c0 	ret

ffffff0000090504 <simple_outputi>:
ffffff0000090504:	a9b67bfd 	stp	x29, x30, [sp, #-160]!
ffffff0000090508:	910003fd 	mov	x29, sp
ffffff000009050c:	f9001fe0 	str	x0, [sp, #56]
ffffff0000090510:	f9001be1 	str	x1, [sp, #48]
ffffff0000090514:	b9002fe2 	str	w2, [sp, #44]
ffffff0000090518:	b9002be3 	str	w3, [sp, #40]
ffffff000009051c:	b90027e4 	str	w4, [sp, #36]
ffffff0000090520:	b90023e5 	str	w5, [sp, #32]
ffffff0000090524:	b9001fe6 	str	w6, [sp, #28]
ffffff0000090528:	b90093ff 	str	wzr, [sp, #144]
ffffff000009052c:	b9008fff 	str	wzr, [sp, #140]
ffffff0000090530:	f9401be0 	ldr	x0, [sp, #48]
ffffff0000090534:	f90043e0 	str	x0, [sp, #128]
ffffff0000090538:	f9401be0 	ldr	x0, [sp, #48]
ffffff000009053c:	f100001f 	cmp	x0, #0x0
ffffff0000090540:	54000161 	b.ne	ffffff000009056c <simple_outputi+0x68>  // b.any
ffffff0000090544:	52800600 	mov	w0, #0x30                  	// #48
ffffff0000090548:	390103e0 	strb	w0, [sp, #64]
ffffff000009054c:	390107ff 	strb	wzr, [sp, #65]
ffffff0000090550:	910103e0 	add	x0, sp, #0x40
ffffff0000090554:	b94023e3 	ldr	w3, [sp, #32]
ffffff0000090558:	b94027e2 	ldr	w2, [sp, #36]
ffffff000009055c:	aa0003e1 	mov	x1, x0
ffffff0000090560:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090564:	97ffff89 	bl	ffffff0000090388 <prints>
ffffff0000090568:	14000055 	b	ffffff00000906bc <simple_outputi+0x1b8>
ffffff000009056c:	b9402be0 	ldr	w0, [sp, #40]
ffffff0000090570:	7100001f 	cmp	w0, #0x0
ffffff0000090574:	54000180 	b.eq	ffffff00000905a4 <simple_outputi+0xa0>  // b.none
ffffff0000090578:	b9402fe0 	ldr	w0, [sp, #44]
ffffff000009057c:	7100281f 	cmp	w0, #0xa
ffffff0000090580:	54000121 	b.ne	ffffff00000905a4 <simple_outputi+0xa0>  // b.any
ffffff0000090584:	f9401be0 	ldr	x0, [sp, #48]
ffffff0000090588:	f100001f 	cmp	x0, #0x0
ffffff000009058c:	540000ca 	b.ge	ffffff00000905a4 <simple_outputi+0xa0>  // b.tcont
ffffff0000090590:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000090594:	b90093e0 	str	w0, [sp, #144]
ffffff0000090598:	f9401be0 	ldr	x0, [sp, #48]
ffffff000009059c:	cb0003e0 	neg	x0, x0
ffffff00000905a0:	f90043e0 	str	x0, [sp, #128]
ffffff00000905a4:	910103e0 	add	x0, sp, #0x40
ffffff00000905a8:	9100fc00 	add	x0, x0, #0x3f
ffffff00000905ac:	f9004fe0 	str	x0, [sp, #152]
ffffff00000905b0:	f9404fe0 	ldr	x0, [sp, #152]
ffffff00000905b4:	3900001f 	strb	wzr, [x0]
ffffff00000905b8:	1400001c 	b	ffffff0000090628 <simple_outputi+0x124>
ffffff00000905bc:	b9802fe1 	ldrsw	x1, [sp, #44]
ffffff00000905c0:	f94043e0 	ldr	x0, [sp, #128]
ffffff00000905c4:	9ac10802 	udiv	x2, x0, x1
ffffff00000905c8:	9b017c41 	mul	x1, x2, x1
ffffff00000905cc:	cb010000 	sub	x0, x0, x1
ffffff00000905d0:	b90097e0 	str	w0, [sp, #148]
ffffff00000905d4:	b94097e0 	ldr	w0, [sp, #148]
ffffff00000905d8:	7100241f 	cmp	w0, #0x9
ffffff00000905dc:	540000cd 	b.le	ffffff00000905f4 <simple_outputi+0xf0>
ffffff00000905e0:	b9401fe0 	ldr	w0, [sp, #28]
ffffff00000905e4:	5100e800 	sub	w0, w0, #0x3a
ffffff00000905e8:	b94097e1 	ldr	w1, [sp, #148]
ffffff00000905ec:	0b000020 	add	w0, w1, w0
ffffff00000905f0:	b90097e0 	str	w0, [sp, #148]
ffffff00000905f4:	b94097e0 	ldr	w0, [sp, #148]
ffffff00000905f8:	12001c00 	and	w0, w0, #0xff
ffffff00000905fc:	f9404fe1 	ldr	x1, [sp, #152]
ffffff0000090600:	d1000421 	sub	x1, x1, #0x1
ffffff0000090604:	f9004fe1 	str	x1, [sp, #152]
ffffff0000090608:	1100c000 	add	w0, w0, #0x30
ffffff000009060c:	12001c01 	and	w1, w0, #0xff
ffffff0000090610:	f9404fe0 	ldr	x0, [sp, #152]
ffffff0000090614:	39000001 	strb	w1, [x0]
ffffff0000090618:	b9802fe0 	ldrsw	x0, [sp, #44]
ffffff000009061c:	f94043e1 	ldr	x1, [sp, #128]
ffffff0000090620:	9ac00820 	udiv	x0, x1, x0
ffffff0000090624:	f90043e0 	str	x0, [sp, #128]
ffffff0000090628:	f94043e0 	ldr	x0, [sp, #128]
ffffff000009062c:	f100001f 	cmp	x0, #0x0
ffffff0000090630:	54fffc61 	b.ne	ffffff00000905bc <simple_outputi+0xb8>  // b.any
ffffff0000090634:	b94093e0 	ldr	w0, [sp, #144]
ffffff0000090638:	7100001f 	cmp	w0, #0x0
ffffff000009063c:	54000300 	b.eq	ffffff000009069c <simple_outputi+0x198>  // b.none
ffffff0000090640:	b94027e0 	ldr	w0, [sp, #36]
ffffff0000090644:	7100001f 	cmp	w0, #0x0
ffffff0000090648:	540001e0 	b.eq	ffffff0000090684 <simple_outputi+0x180>  // b.none
ffffff000009064c:	b94023e0 	ldr	w0, [sp, #32]
ffffff0000090650:	12000000 	and	w0, w0, #0x1
ffffff0000090654:	7100001f 	cmp	w0, #0x0
ffffff0000090658:	54000160 	b.eq	ffffff0000090684 <simple_outputi+0x180>  // b.none
ffffff000009065c:	528005a1 	mov	w1, #0x2d                  	// #45
ffffff0000090660:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090664:	97ffff33 	bl	ffffff0000090330 <simple_outputchar>
ffffff0000090668:	b9408fe0 	ldr	w0, [sp, #140]
ffffff000009066c:	11000400 	add	w0, w0, #0x1
ffffff0000090670:	b9008fe0 	str	w0, [sp, #140]
ffffff0000090674:	b94027e0 	ldr	w0, [sp, #36]
ffffff0000090678:	51000400 	sub	w0, w0, #0x1
ffffff000009067c:	b90027e0 	str	w0, [sp, #36]
ffffff0000090680:	14000007 	b	ffffff000009069c <simple_outputi+0x198>
ffffff0000090684:	f9404fe0 	ldr	x0, [sp, #152]
ffffff0000090688:	d1000400 	sub	x0, x0, #0x1
ffffff000009068c:	f9004fe0 	str	x0, [sp, #152]
ffffff0000090690:	f9404fe0 	ldr	x0, [sp, #152]
ffffff0000090694:	528005a1 	mov	w1, #0x2d                  	// #45
ffffff0000090698:	39000001 	strb	w1, [x0]
ffffff000009069c:	b94023e3 	ldr	w3, [sp, #32]
ffffff00000906a0:	b94027e2 	ldr	w2, [sp, #36]
ffffff00000906a4:	f9404fe1 	ldr	x1, [sp, #152]
ffffff00000906a8:	f9401fe0 	ldr	x0, [sp, #56]
ffffff00000906ac:	97ffff37 	bl	ffffff0000090388 <prints>
ffffff00000906b0:	2a0003e1 	mov	w1, w0
ffffff00000906b4:	b9408fe0 	ldr	w0, [sp, #140]
ffffff00000906b8:	0b000020 	add	w0, w1, w0
ffffff00000906bc:	a8ca7bfd 	ldp	x29, x30, [sp], #160
ffffff00000906c0:	d65f03c0 	ret

ffffff00000906c4 <simple_vsprintf>:
ffffff00000906c4:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
ffffff00000906c8:	910003fd 	mov	x29, sp
ffffff00000906cc:	f9000bf3 	str	x19, [sp, #16]
ffffff00000906d0:	f90017e0 	str	x0, [sp, #40]
ffffff00000906d4:	f90013e1 	str	x1, [sp, #32]
ffffff00000906d8:	aa0203f3 	mov	x19, x2
ffffff00000906dc:	b90047ff 	str	wzr, [sp, #68]
ffffff00000906e0:	14000461 	b	ffffff0000091864 <simple_vsprintf+0x11a0>
ffffff00000906e4:	f94013e0 	ldr	x0, [sp, #32]
ffffff00000906e8:	39400000 	ldrb	w0, [x0]
ffffff00000906ec:	7100941f 	cmp	w0, #0x25
ffffff00000906f0:	540088c1 	b.ne	ffffff0000091808 <simple_vsprintf+0x1144>  // b.any
ffffff00000906f4:	f94013e0 	ldr	x0, [sp, #32]
ffffff00000906f8:	91000400 	add	x0, x0, #0x1
ffffff00000906fc:	f90013e0 	str	x0, [sp, #32]
ffffff0000090700:	b9004bff 	str	wzr, [sp, #72]
ffffff0000090704:	b9404be0 	ldr	w0, [sp, #72]
ffffff0000090708:	b9004fe0 	str	w0, [sp, #76]
ffffff000009070c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090710:	39400000 	ldrb	w0, [x0]
ffffff0000090714:	7100001f 	cmp	w0, #0x0
ffffff0000090718:	54008b00 	b.eq	ffffff0000091878 <simple_vsprintf+0x11b4>  // b.none
ffffff000009071c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090720:	39400000 	ldrb	w0, [x0]
ffffff0000090724:	7100941f 	cmp	w0, #0x25
ffffff0000090728:	54008740 	b.eq	ffffff0000091810 <simple_vsprintf+0x114c>  // b.none
ffffff000009072c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090730:	39400000 	ldrb	w0, [x0]
ffffff0000090734:	7100b41f 	cmp	w0, #0x2d
ffffff0000090738:	540001a1 	b.ne	ffffff000009076c <simple_vsprintf+0xa8>  // b.any
ffffff000009073c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090740:	91000400 	add	x0, x0, #0x1
ffffff0000090744:	f90013e0 	str	x0, [sp, #32]
ffffff0000090748:	52800040 	mov	w0, #0x2                   	// #2
ffffff000009074c:	b9004be0 	str	w0, [sp, #72]
ffffff0000090750:	14000007 	b	ffffff000009076c <simple_vsprintf+0xa8>
ffffff0000090754:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090758:	91000400 	add	x0, x0, #0x1
ffffff000009075c:	f90013e0 	str	x0, [sp, #32]
ffffff0000090760:	b9404be0 	ldr	w0, [sp, #72]
ffffff0000090764:	32000000 	orr	w0, w0, #0x1
ffffff0000090768:	b9004be0 	str	w0, [sp, #72]
ffffff000009076c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090770:	39400000 	ldrb	w0, [x0]
ffffff0000090774:	7100c01f 	cmp	w0, #0x30
ffffff0000090778:	54fffee0 	b.eq	ffffff0000090754 <simple_vsprintf+0x90>  // b.none
ffffff000009077c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090780:	39400000 	ldrb	w0, [x0]
ffffff0000090784:	7100a81f 	cmp	w0, #0x2a
ffffff0000090788:	54000541 	b.ne	ffffff0000090830 <simple_vsprintf+0x16c>  // b.any
ffffff000009078c:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090790:	f9400260 	ldr	x0, [x19]
ffffff0000090794:	7100003f 	cmp	w1, #0x0
ffffff0000090798:	540000ab 	b.lt	ffffff00000907ac <simple_vsprintf+0xe8>  // b.tstop
ffffff000009079c:	91002c01 	add	x1, x0, #0xb
ffffff00000907a0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000907a4:	f9000261 	str	x1, [x19]
ffffff00000907a8:	1400000d 	b	ffffff00000907dc <simple_vsprintf+0x118>
ffffff00000907ac:	11002022 	add	w2, w1, #0x8
ffffff00000907b0:	b9001a62 	str	w2, [x19, #24]
ffffff00000907b4:	b9401a62 	ldr	w2, [x19, #24]
ffffff00000907b8:	7100005f 	cmp	w2, #0x0
ffffff00000907bc:	540000ad 	b.le	ffffff00000907d0 <simple_vsprintf+0x10c>
ffffff00000907c0:	91002c01 	add	x1, x0, #0xb
ffffff00000907c4:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000907c8:	f9000261 	str	x1, [x19]
ffffff00000907cc:	14000004 	b	ffffff00000907dc <simple_vsprintf+0x118>
ffffff00000907d0:	f9400662 	ldr	x2, [x19, #8]
ffffff00000907d4:	93407c20 	sxtw	x0, w1
ffffff00000907d8:	8b000040 	add	x0, x2, x0
ffffff00000907dc:	b9400000 	ldr	w0, [x0]
ffffff00000907e0:	b9004fe0 	str	w0, [sp, #76]
ffffff00000907e4:	f94013e0 	ldr	x0, [sp, #32]
ffffff00000907e8:	91000400 	add	x0, x0, #0x1
ffffff00000907ec:	f90013e0 	str	x0, [sp, #32]
ffffff00000907f0:	14000018 	b	ffffff0000090850 <simple_vsprintf+0x18c>
ffffff00000907f4:	b9404fe1 	ldr	w1, [sp, #76]
ffffff00000907f8:	2a0103e0 	mov	w0, w1
ffffff00000907fc:	531e7400 	lsl	w0, w0, #2
ffffff0000090800:	0b010000 	add	w0, w0, w1
ffffff0000090804:	531f7800 	lsl	w0, w0, #1
ffffff0000090808:	b9004fe0 	str	w0, [sp, #76]
ffffff000009080c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090810:	39400000 	ldrb	w0, [x0]
ffffff0000090814:	5100c000 	sub	w0, w0, #0x30
ffffff0000090818:	b9404fe1 	ldr	w1, [sp, #76]
ffffff000009081c:	0b000020 	add	w0, w1, w0
ffffff0000090820:	b9004fe0 	str	w0, [sp, #76]
ffffff0000090824:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090828:	91000400 	add	x0, x0, #0x1
ffffff000009082c:	f90013e0 	str	x0, [sp, #32]
ffffff0000090830:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090834:	39400000 	ldrb	w0, [x0]
ffffff0000090838:	7100bc1f 	cmp	w0, #0x2f
ffffff000009083c:	540000a9 	b.ls	ffffff0000090850 <simple_vsprintf+0x18c>  // b.plast
ffffff0000090840:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090844:	39400000 	ldrb	w0, [x0]
ffffff0000090848:	7100e41f 	cmp	w0, #0x39
ffffff000009084c:	54fffd49 	b.ls	ffffff00000907f4 <simple_vsprintf+0x130>  // b.plast
ffffff0000090850:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090854:	39400000 	ldrb	w0, [x0]
ffffff0000090858:	7101e01f 	cmp	w0, #0x78
ffffff000009085c:	540016e0 	b.eq	ffffff0000090b38 <simple_vsprintf+0x474>  // b.none
ffffff0000090860:	7101e01f 	cmp	w0, #0x78
ffffff0000090864:	54007f8c 	b.gt	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff0000090868:	7101d41f 	cmp	w0, #0x75
ffffff000009086c:	54000d40 	b.eq	ffffff0000090a14 <simple_vsprintf+0x350>  // b.none
ffffff0000090870:	7101d41f 	cmp	w0, #0x75
ffffff0000090874:	54007f0c 	b.gt	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff0000090878:	7101cc1f 	cmp	w0, #0x73
ffffff000009087c:	540023c0 	b.eq	ffffff0000090cf4 <simple_vsprintf+0x630>  // b.none
ffffff0000090880:	7101cc1f 	cmp	w0, #0x73
ffffff0000090884:	54007e8c 	b.gt	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff0000090888:	7101c01f 	cmp	w0, #0x70
ffffff000009088c:	540010e0 	b.eq	ffffff0000090aa8 <simple_vsprintf+0x3e4>  // b.none
ffffff0000090890:	7101c01f 	cmp	w0, #0x70
ffffff0000090894:	54007e0c 	b.gt	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff0000090898:	7101b01f 	cmp	w0, #0x6c
ffffff000009089c:	540027a0 	b.eq	ffffff0000090d90 <simple_vsprintf+0x6cc>  // b.none
ffffff00000908a0:	7101b01f 	cmp	w0, #0x6c
ffffff00000908a4:	54007d8c 	b.gt	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff00000908a8:	7101a01f 	cmp	w0, #0x68
ffffff00000908ac:	54005060 	b.eq	ffffff00000912b8 <simple_vsprintf+0xbf4>  // b.none
ffffff00000908b0:	7101a01f 	cmp	w0, #0x68
ffffff00000908b4:	54007d0c 	b.gt	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff00000908b8:	7101901f 	cmp	w0, #0x64
ffffff00000908bc:	54000180 	b.eq	ffffff00000908ec <simple_vsprintf+0x228>  // b.none
ffffff00000908c0:	7101901f 	cmp	w0, #0x64
ffffff00000908c4:	54007c8c 	b.gt	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff00000908c8:	71018c1f 	cmp	w0, #0x63
ffffff00000908cc:	54001ca0 	b.eq	ffffff0000090c60 <simple_vsprintf+0x59c>  // b.none
ffffff00000908d0:	71018c1f 	cmp	w0, #0x63
ffffff00000908d4:	54007c0c 	b.gt	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff00000908d8:	7101601f 	cmp	w0, #0x58
ffffff00000908dc:	54001780 	b.eq	ffffff0000090bcc <simple_vsprintf+0x508>  // b.none
ffffff00000908e0:	7101881f 	cmp	w0, #0x62
ffffff00000908e4:	540004e0 	b.eq	ffffff0000090980 <simple_vsprintf+0x2bc>  // b.none
ffffff00000908e8:	140003db 	b	ffffff0000091854 <simple_vsprintf+0x1190>
ffffff00000908ec:	b9401a61 	ldr	w1, [x19, #24]
ffffff00000908f0:	f9400260 	ldr	x0, [x19]
ffffff00000908f4:	7100003f 	cmp	w1, #0x0
ffffff00000908f8:	540000ab 	b.lt	ffffff000009090c <simple_vsprintf+0x248>  // b.tstop
ffffff00000908fc:	91002c01 	add	x1, x0, #0xb
ffffff0000090900:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090904:	f9000261 	str	x1, [x19]
ffffff0000090908:	1400000d 	b	ffffff000009093c <simple_vsprintf+0x278>
ffffff000009090c:	11002022 	add	w2, w1, #0x8
ffffff0000090910:	b9001a62 	str	w2, [x19, #24]
ffffff0000090914:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090918:	7100005f 	cmp	w2, #0x0
ffffff000009091c:	540000ad 	b.le	ffffff0000090930 <simple_vsprintf+0x26c>
ffffff0000090920:	91002c01 	add	x1, x0, #0xb
ffffff0000090924:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090928:	f9000261 	str	x1, [x19]
ffffff000009092c:	14000004 	b	ffffff000009093c <simple_vsprintf+0x278>
ffffff0000090930:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090934:	93407c20 	sxtw	x0, w1
ffffff0000090938:	8b000040 	add	x0, x2, x0
ffffff000009093c:	b9400000 	ldr	w0, [x0]
ffffff0000090940:	b9003be0 	str	w0, [sp, #56]
ffffff0000090944:	b9403be0 	ldr	w0, [sp, #56]
ffffff0000090948:	93407c00 	sxtw	x0, w0
ffffff000009094c:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000090950:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090954:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090958:	52800023 	mov	w3, #0x1                   	// #1
ffffff000009095c:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000090960:	aa0003e1 	mov	x1, x0
ffffff0000090964:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090968:	97fffee7 	bl	ffffff0000090504 <simple_outputi>
ffffff000009096c:	2a0003e1 	mov	w1, w0
ffffff0000090970:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090974:	0b010000 	add	w0, w0, w1
ffffff0000090978:	b90047e0 	str	w0, [sp, #68]
ffffff000009097c:	140003b7 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000090980:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090984:	f9400260 	ldr	x0, [x19]
ffffff0000090988:	7100003f 	cmp	w1, #0x0
ffffff000009098c:	540000ab 	b.lt	ffffff00000909a0 <simple_vsprintf+0x2dc>  // b.tstop
ffffff0000090990:	91002c01 	add	x1, x0, #0xb
ffffff0000090994:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090998:	f9000261 	str	x1, [x19]
ffffff000009099c:	1400000d 	b	ffffff00000909d0 <simple_vsprintf+0x30c>
ffffff00000909a0:	11002022 	add	w2, w1, #0x8
ffffff00000909a4:	b9001a62 	str	w2, [x19, #24]
ffffff00000909a8:	b9401a62 	ldr	w2, [x19, #24]
ffffff00000909ac:	7100005f 	cmp	w2, #0x0
ffffff00000909b0:	540000ad 	b.le	ffffff00000909c4 <simple_vsprintf+0x300>
ffffff00000909b4:	91002c01 	add	x1, x0, #0xb
ffffff00000909b8:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000909bc:	f9000261 	str	x1, [x19]
ffffff00000909c0:	14000004 	b	ffffff00000909d0 <simple_vsprintf+0x30c>
ffffff00000909c4:	f9400662 	ldr	x2, [x19, #8]
ffffff00000909c8:	93407c20 	sxtw	x0, w1
ffffff00000909cc:	8b000040 	add	x0, x2, x0
ffffff00000909d0:	b9400000 	ldr	w0, [x0]
ffffff00000909d4:	b9003be0 	str	w0, [sp, #56]
ffffff00000909d8:	b9403be0 	ldr	w0, [sp, #56]
ffffff00000909dc:	93407c00 	sxtw	x0, w0
ffffff00000909e0:	52800c26 	mov	w6, #0x61                  	// #97
ffffff00000909e4:	b9404be5 	ldr	w5, [sp, #72]
ffffff00000909e8:	b9404fe4 	ldr	w4, [sp, #76]
ffffff00000909ec:	52800023 	mov	w3, #0x1                   	// #1
ffffff00000909f0:	52800042 	mov	w2, #0x2                   	// #2
ffffff00000909f4:	aa0003e1 	mov	x1, x0
ffffff00000909f8:	f94017e0 	ldr	x0, [sp, #40]
ffffff00000909fc:	97fffec2 	bl	ffffff0000090504 <simple_outputi>
ffffff0000090a00:	2a0003e1 	mov	w1, w0
ffffff0000090a04:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090a08:	0b010000 	add	w0, w0, w1
ffffff0000090a0c:	b90047e0 	str	w0, [sp, #68]
ffffff0000090a10:	14000392 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000090a14:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090a18:	f9400260 	ldr	x0, [x19]
ffffff0000090a1c:	7100003f 	cmp	w1, #0x0
ffffff0000090a20:	540000ab 	b.lt	ffffff0000090a34 <simple_vsprintf+0x370>  // b.tstop
ffffff0000090a24:	91002c01 	add	x1, x0, #0xb
ffffff0000090a28:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090a2c:	f9000261 	str	x1, [x19]
ffffff0000090a30:	1400000d 	b	ffffff0000090a64 <simple_vsprintf+0x3a0>
ffffff0000090a34:	11002022 	add	w2, w1, #0x8
ffffff0000090a38:	b9001a62 	str	w2, [x19, #24]
ffffff0000090a3c:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090a40:	7100005f 	cmp	w2, #0x0
ffffff0000090a44:	540000ad 	b.le	ffffff0000090a58 <simple_vsprintf+0x394>
ffffff0000090a48:	91002c01 	add	x1, x0, #0xb
ffffff0000090a4c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090a50:	f9000261 	str	x1, [x19]
ffffff0000090a54:	14000004 	b	ffffff0000090a64 <simple_vsprintf+0x3a0>
ffffff0000090a58:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090a5c:	93407c20 	sxtw	x0, w1
ffffff0000090a60:	8b000040 	add	x0, x2, x0
ffffff0000090a64:	b9400000 	ldr	w0, [x0]
ffffff0000090a68:	b9003be0 	str	w0, [sp, #56]
ffffff0000090a6c:	b9403be0 	ldr	w0, [sp, #56]
ffffff0000090a70:	2a0003e0 	mov	w0, w0
ffffff0000090a74:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000090a78:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090a7c:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090a80:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000090a84:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000090a88:	aa0003e1 	mov	x1, x0
ffffff0000090a8c:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090a90:	97fffe9d 	bl	ffffff0000090504 <simple_outputi>
ffffff0000090a94:	2a0003e1 	mov	w1, w0
ffffff0000090a98:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090a9c:	0b010000 	add	w0, w0, w1
ffffff0000090aa0:	b90047e0 	str	w0, [sp, #68]
ffffff0000090aa4:	1400036d 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000090aa8:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090aac:	f9400260 	ldr	x0, [x19]
ffffff0000090ab0:	7100003f 	cmp	w1, #0x0
ffffff0000090ab4:	540000ab 	b.lt	ffffff0000090ac8 <simple_vsprintf+0x404>  // b.tstop
ffffff0000090ab8:	91003c01 	add	x1, x0, #0xf
ffffff0000090abc:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090ac0:	f9000261 	str	x1, [x19]
ffffff0000090ac4:	1400000d 	b	ffffff0000090af8 <simple_vsprintf+0x434>
ffffff0000090ac8:	11002022 	add	w2, w1, #0x8
ffffff0000090acc:	b9001a62 	str	w2, [x19, #24]
ffffff0000090ad0:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090ad4:	7100005f 	cmp	w2, #0x0
ffffff0000090ad8:	540000ad 	b.le	ffffff0000090aec <simple_vsprintf+0x428>
ffffff0000090adc:	91003c01 	add	x1, x0, #0xf
ffffff0000090ae0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090ae4:	f9000261 	str	x1, [x19]
ffffff0000090ae8:	14000004 	b	ffffff0000090af8 <simple_vsprintf+0x434>
ffffff0000090aec:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090af0:	93407c20 	sxtw	x0, w1
ffffff0000090af4:	8b000040 	add	x0, x2, x0
ffffff0000090af8:	f9400000 	ldr	x0, [x0]
ffffff0000090afc:	f9001fe0 	str	x0, [sp, #56]
ffffff0000090b00:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090b04:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000090b08:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090b0c:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090b10:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000090b14:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000090b18:	aa0003e1 	mov	x1, x0
ffffff0000090b1c:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090b20:	97fffe79 	bl	ffffff0000090504 <simple_outputi>
ffffff0000090b24:	2a0003e1 	mov	w1, w0
ffffff0000090b28:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090b2c:	0b010000 	add	w0, w0, w1
ffffff0000090b30:	b90047e0 	str	w0, [sp, #68]
ffffff0000090b34:	14000349 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000090b38:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090b3c:	f9400260 	ldr	x0, [x19]
ffffff0000090b40:	7100003f 	cmp	w1, #0x0
ffffff0000090b44:	540000ab 	b.lt	ffffff0000090b58 <simple_vsprintf+0x494>  // b.tstop
ffffff0000090b48:	91002c01 	add	x1, x0, #0xb
ffffff0000090b4c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090b50:	f9000261 	str	x1, [x19]
ffffff0000090b54:	1400000d 	b	ffffff0000090b88 <simple_vsprintf+0x4c4>
ffffff0000090b58:	11002022 	add	w2, w1, #0x8
ffffff0000090b5c:	b9001a62 	str	w2, [x19, #24]
ffffff0000090b60:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090b64:	7100005f 	cmp	w2, #0x0
ffffff0000090b68:	540000ad 	b.le	ffffff0000090b7c <simple_vsprintf+0x4b8>
ffffff0000090b6c:	91002c01 	add	x1, x0, #0xb
ffffff0000090b70:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090b74:	f9000261 	str	x1, [x19]
ffffff0000090b78:	14000004 	b	ffffff0000090b88 <simple_vsprintf+0x4c4>
ffffff0000090b7c:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090b80:	93407c20 	sxtw	x0, w1
ffffff0000090b84:	8b000040 	add	x0, x2, x0
ffffff0000090b88:	b9400000 	ldr	w0, [x0]
ffffff0000090b8c:	b9003be0 	str	w0, [sp, #56]
ffffff0000090b90:	b9403be0 	ldr	w0, [sp, #56]
ffffff0000090b94:	2a0003e0 	mov	w0, w0
ffffff0000090b98:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000090b9c:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090ba0:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090ba4:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000090ba8:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000090bac:	aa0003e1 	mov	x1, x0
ffffff0000090bb0:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090bb4:	97fffe54 	bl	ffffff0000090504 <simple_outputi>
ffffff0000090bb8:	2a0003e1 	mov	w1, w0
ffffff0000090bbc:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090bc0:	0b010000 	add	w0, w0, w1
ffffff0000090bc4:	b90047e0 	str	w0, [sp, #68]
ffffff0000090bc8:	14000324 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000090bcc:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090bd0:	f9400260 	ldr	x0, [x19]
ffffff0000090bd4:	7100003f 	cmp	w1, #0x0
ffffff0000090bd8:	540000ab 	b.lt	ffffff0000090bec <simple_vsprintf+0x528>  // b.tstop
ffffff0000090bdc:	91002c01 	add	x1, x0, #0xb
ffffff0000090be0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090be4:	f9000261 	str	x1, [x19]
ffffff0000090be8:	1400000d 	b	ffffff0000090c1c <simple_vsprintf+0x558>
ffffff0000090bec:	11002022 	add	w2, w1, #0x8
ffffff0000090bf0:	b9001a62 	str	w2, [x19, #24]
ffffff0000090bf4:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090bf8:	7100005f 	cmp	w2, #0x0
ffffff0000090bfc:	540000ad 	b.le	ffffff0000090c10 <simple_vsprintf+0x54c>
ffffff0000090c00:	91002c01 	add	x1, x0, #0xb
ffffff0000090c04:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090c08:	f9000261 	str	x1, [x19]
ffffff0000090c0c:	14000004 	b	ffffff0000090c1c <simple_vsprintf+0x558>
ffffff0000090c10:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090c14:	93407c20 	sxtw	x0, w1
ffffff0000090c18:	8b000040 	add	x0, x2, x0
ffffff0000090c1c:	b9400000 	ldr	w0, [x0]
ffffff0000090c20:	b9003be0 	str	w0, [sp, #56]
ffffff0000090c24:	b9403be0 	ldr	w0, [sp, #56]
ffffff0000090c28:	2a0003e0 	mov	w0, w0
ffffff0000090c2c:	52800826 	mov	w6, #0x41                  	// #65
ffffff0000090c30:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090c34:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090c38:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000090c3c:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000090c40:	aa0003e1 	mov	x1, x0
ffffff0000090c44:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090c48:	97fffe2f 	bl	ffffff0000090504 <simple_outputi>
ffffff0000090c4c:	2a0003e1 	mov	w1, w0
ffffff0000090c50:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090c54:	0b010000 	add	w0, w0, w1
ffffff0000090c58:	b90047e0 	str	w0, [sp, #68]
ffffff0000090c5c:	140002ff 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000090c60:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090c64:	f9400260 	ldr	x0, [x19]
ffffff0000090c68:	7100003f 	cmp	w1, #0x0
ffffff0000090c6c:	540000ab 	b.lt	ffffff0000090c80 <simple_vsprintf+0x5bc>  // b.tstop
ffffff0000090c70:	91002c01 	add	x1, x0, #0xb
ffffff0000090c74:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090c78:	f9000261 	str	x1, [x19]
ffffff0000090c7c:	1400000d 	b	ffffff0000090cb0 <simple_vsprintf+0x5ec>
ffffff0000090c80:	11002022 	add	w2, w1, #0x8
ffffff0000090c84:	b9001a62 	str	w2, [x19, #24]
ffffff0000090c88:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090c8c:	7100005f 	cmp	w2, #0x0
ffffff0000090c90:	540000ad 	b.le	ffffff0000090ca4 <simple_vsprintf+0x5e0>
ffffff0000090c94:	91002c01 	add	x1, x0, #0xb
ffffff0000090c98:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090c9c:	f9000261 	str	x1, [x19]
ffffff0000090ca0:	14000004 	b	ffffff0000090cb0 <simple_vsprintf+0x5ec>
ffffff0000090ca4:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090ca8:	93407c20 	sxtw	x0, w1
ffffff0000090cac:	8b000040 	add	x0, x2, x0
ffffff0000090cb0:	b9400000 	ldr	w0, [x0]
ffffff0000090cb4:	12001c00 	and	w0, w0, #0xff
ffffff0000090cb8:	3900e3e0 	strb	w0, [sp, #56]
ffffff0000090cbc:	3940e3e0 	ldrb	w0, [sp, #56]
ffffff0000090cc0:	390103e0 	strb	w0, [sp, #64]
ffffff0000090cc4:	390107ff 	strb	wzr, [sp, #65]
ffffff0000090cc8:	910103e0 	add	x0, sp, #0x40
ffffff0000090ccc:	b9404be3 	ldr	w3, [sp, #72]
ffffff0000090cd0:	b9404fe2 	ldr	w2, [sp, #76]
ffffff0000090cd4:	aa0003e1 	mov	x1, x0
ffffff0000090cd8:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090cdc:	97fffdab 	bl	ffffff0000090388 <prints>
ffffff0000090ce0:	2a0003e1 	mov	w1, w0
ffffff0000090ce4:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090ce8:	0b010000 	add	w0, w0, w1
ffffff0000090cec:	b90047e0 	str	w0, [sp, #68]
ffffff0000090cf0:	140002da 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000090cf4:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090cf8:	f9400260 	ldr	x0, [x19]
ffffff0000090cfc:	7100003f 	cmp	w1, #0x0
ffffff0000090d00:	540000ab 	b.lt	ffffff0000090d14 <simple_vsprintf+0x650>  // b.tstop
ffffff0000090d04:	91003c01 	add	x1, x0, #0xf
ffffff0000090d08:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090d0c:	f9000261 	str	x1, [x19]
ffffff0000090d10:	1400000d 	b	ffffff0000090d44 <simple_vsprintf+0x680>
ffffff0000090d14:	11002022 	add	w2, w1, #0x8
ffffff0000090d18:	b9001a62 	str	w2, [x19, #24]
ffffff0000090d1c:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090d20:	7100005f 	cmp	w2, #0x0
ffffff0000090d24:	540000ad 	b.le	ffffff0000090d38 <simple_vsprintf+0x674>
ffffff0000090d28:	91003c01 	add	x1, x0, #0xf
ffffff0000090d2c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090d30:	f9000261 	str	x1, [x19]
ffffff0000090d34:	14000004 	b	ffffff0000090d44 <simple_vsprintf+0x680>
ffffff0000090d38:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090d3c:	93407c20 	sxtw	x0, w1
ffffff0000090d40:	8b000040 	add	x0, x2, x0
ffffff0000090d44:	f9400000 	ldr	x0, [x0]
ffffff0000090d48:	f9001fe0 	str	x0, [sp, #56]
ffffff0000090d4c:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090d50:	f100001f 	cmp	x0, #0x0
ffffff0000090d54:	54000060 	b.eq	ffffff0000090d60 <simple_vsprintf+0x69c>  // b.none
ffffff0000090d58:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090d5c:	14000003 	b	ffffff0000090d68 <simple_vsprintf+0x6a4>
ffffff0000090d60:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090d64:	9100e000 	add	x0, x0, #0x38
ffffff0000090d68:	b9404be3 	ldr	w3, [sp, #72]
ffffff0000090d6c:	b9404fe2 	ldr	w2, [sp, #76]
ffffff0000090d70:	aa0003e1 	mov	x1, x0
ffffff0000090d74:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090d78:	97fffd84 	bl	ffffff0000090388 <prints>
ffffff0000090d7c:	2a0003e1 	mov	w1, w0
ffffff0000090d80:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090d84:	0b010000 	add	w0, w0, w1
ffffff0000090d88:	b90047e0 	str	w0, [sp, #68]
ffffff0000090d8c:	140002b3 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000090d90:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090d94:	91000400 	add	x0, x0, #0x1
ffffff0000090d98:	f90013e0 	str	x0, [sp, #32]
ffffff0000090d9c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000090da0:	39400000 	ldrb	w0, [x0]
ffffff0000090da4:	7101e01f 	cmp	w0, #0x78
ffffff0000090da8:	54000ae0 	b.eq	ffffff0000090f04 <simple_vsprintf+0x840>  // b.none
ffffff0000090dac:	7101e01f 	cmp	w0, #0x78
ffffff0000090db0:	5400280c 	b.gt	ffffff00000912b0 <simple_vsprintf+0xbec>
ffffff0000090db4:	7101d41f 	cmp	w0, #0x75
ffffff0000090db8:	540005e0 	b.eq	ffffff0000090e74 <simple_vsprintf+0x7b0>  // b.none
ffffff0000090dbc:	7101d41f 	cmp	w0, #0x75
ffffff0000090dc0:	5400278c 	b.gt	ffffff00000912b0 <simple_vsprintf+0xbec>
ffffff0000090dc4:	7101b01f 	cmp	w0, #0x6c
ffffff0000090dc8:	540012e0 	b.eq	ffffff0000091024 <simple_vsprintf+0x960>  // b.none
ffffff0000090dcc:	7101b01f 	cmp	w0, #0x6c
ffffff0000090dd0:	5400270c 	b.gt	ffffff00000912b0 <simple_vsprintf+0xbec>
ffffff0000090dd4:	7101601f 	cmp	w0, #0x58
ffffff0000090dd8:	54000de0 	b.eq	ffffff0000090f94 <simple_vsprintf+0x8d0>  // b.none
ffffff0000090ddc:	7101901f 	cmp	w0, #0x64
ffffff0000090de0:	54002681 	b.ne	ffffff00000912b0 <simple_vsprintf+0xbec>  // b.any
ffffff0000090de4:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090de8:	f9400260 	ldr	x0, [x19]
ffffff0000090dec:	7100003f 	cmp	w1, #0x0
ffffff0000090df0:	540000ab 	b.lt	ffffff0000090e04 <simple_vsprintf+0x740>  // b.tstop
ffffff0000090df4:	91003c01 	add	x1, x0, #0xf
ffffff0000090df8:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090dfc:	f9000261 	str	x1, [x19]
ffffff0000090e00:	1400000d 	b	ffffff0000090e34 <simple_vsprintf+0x770>
ffffff0000090e04:	11002022 	add	w2, w1, #0x8
ffffff0000090e08:	b9001a62 	str	w2, [x19, #24]
ffffff0000090e0c:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090e10:	7100005f 	cmp	w2, #0x0
ffffff0000090e14:	540000ad 	b.le	ffffff0000090e28 <simple_vsprintf+0x764>
ffffff0000090e18:	91003c01 	add	x1, x0, #0xf
ffffff0000090e1c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090e20:	f9000261 	str	x1, [x19]
ffffff0000090e24:	14000004 	b	ffffff0000090e34 <simple_vsprintf+0x770>
ffffff0000090e28:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090e2c:	93407c20 	sxtw	x0, w1
ffffff0000090e30:	8b000040 	add	x0, x2, x0
ffffff0000090e34:	f9400000 	ldr	x0, [x0]
ffffff0000090e38:	f9001fe0 	str	x0, [sp, #56]
ffffff0000090e3c:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090e40:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000090e44:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090e48:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090e4c:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000090e50:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000090e54:	aa0003e1 	mov	x1, x0
ffffff0000090e58:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090e5c:	97fffdaa 	bl	ffffff0000090504 <simple_outputi>
ffffff0000090e60:	2a0003e1 	mov	w1, w0
ffffff0000090e64:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090e68:	0b010000 	add	w0, w0, w1
ffffff0000090e6c:	b90047e0 	str	w0, [sp, #68]
ffffff0000090e70:	14000111 	b	ffffff00000912b4 <simple_vsprintf+0xbf0>
ffffff0000090e74:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090e78:	f9400260 	ldr	x0, [x19]
ffffff0000090e7c:	7100003f 	cmp	w1, #0x0
ffffff0000090e80:	540000ab 	b.lt	ffffff0000090e94 <simple_vsprintf+0x7d0>  // b.tstop
ffffff0000090e84:	91003c01 	add	x1, x0, #0xf
ffffff0000090e88:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090e8c:	f9000261 	str	x1, [x19]
ffffff0000090e90:	1400000d 	b	ffffff0000090ec4 <simple_vsprintf+0x800>
ffffff0000090e94:	11002022 	add	w2, w1, #0x8
ffffff0000090e98:	b9001a62 	str	w2, [x19, #24]
ffffff0000090e9c:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090ea0:	7100005f 	cmp	w2, #0x0
ffffff0000090ea4:	540000ad 	b.le	ffffff0000090eb8 <simple_vsprintf+0x7f4>
ffffff0000090ea8:	91003c01 	add	x1, x0, #0xf
ffffff0000090eac:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090eb0:	f9000261 	str	x1, [x19]
ffffff0000090eb4:	14000004 	b	ffffff0000090ec4 <simple_vsprintf+0x800>
ffffff0000090eb8:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090ebc:	93407c20 	sxtw	x0, w1
ffffff0000090ec0:	8b000040 	add	x0, x2, x0
ffffff0000090ec4:	f9400000 	ldr	x0, [x0]
ffffff0000090ec8:	f9001fe0 	str	x0, [sp, #56]
ffffff0000090ecc:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090ed0:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000090ed4:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090ed8:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090edc:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000090ee0:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000090ee4:	aa0003e1 	mov	x1, x0
ffffff0000090ee8:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090eec:	97fffd86 	bl	ffffff0000090504 <simple_outputi>
ffffff0000090ef0:	2a0003e1 	mov	w1, w0
ffffff0000090ef4:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090ef8:	0b010000 	add	w0, w0, w1
ffffff0000090efc:	b90047e0 	str	w0, [sp, #68]
ffffff0000090f00:	140000ed 	b	ffffff00000912b4 <simple_vsprintf+0xbf0>
ffffff0000090f04:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090f08:	f9400260 	ldr	x0, [x19]
ffffff0000090f0c:	7100003f 	cmp	w1, #0x0
ffffff0000090f10:	540000ab 	b.lt	ffffff0000090f24 <simple_vsprintf+0x860>  // b.tstop
ffffff0000090f14:	91003c01 	add	x1, x0, #0xf
ffffff0000090f18:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090f1c:	f9000261 	str	x1, [x19]
ffffff0000090f20:	1400000d 	b	ffffff0000090f54 <simple_vsprintf+0x890>
ffffff0000090f24:	11002022 	add	w2, w1, #0x8
ffffff0000090f28:	b9001a62 	str	w2, [x19, #24]
ffffff0000090f2c:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090f30:	7100005f 	cmp	w2, #0x0
ffffff0000090f34:	540000ad 	b.le	ffffff0000090f48 <simple_vsprintf+0x884>
ffffff0000090f38:	91003c01 	add	x1, x0, #0xf
ffffff0000090f3c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090f40:	f9000261 	str	x1, [x19]
ffffff0000090f44:	14000004 	b	ffffff0000090f54 <simple_vsprintf+0x890>
ffffff0000090f48:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090f4c:	93407c20 	sxtw	x0, w1
ffffff0000090f50:	8b000040 	add	x0, x2, x0
ffffff0000090f54:	f9400000 	ldr	x0, [x0]
ffffff0000090f58:	f9001fe0 	str	x0, [sp, #56]
ffffff0000090f5c:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090f60:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000090f64:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090f68:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090f6c:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000090f70:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000090f74:	aa0003e1 	mov	x1, x0
ffffff0000090f78:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000090f7c:	97fffd62 	bl	ffffff0000090504 <simple_outputi>
ffffff0000090f80:	2a0003e1 	mov	w1, w0
ffffff0000090f84:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000090f88:	0b010000 	add	w0, w0, w1
ffffff0000090f8c:	b90047e0 	str	w0, [sp, #68]
ffffff0000090f90:	140000c9 	b	ffffff00000912b4 <simple_vsprintf+0xbf0>
ffffff0000090f94:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000090f98:	f9400260 	ldr	x0, [x19]
ffffff0000090f9c:	7100003f 	cmp	w1, #0x0
ffffff0000090fa0:	540000ab 	b.lt	ffffff0000090fb4 <simple_vsprintf+0x8f0>  // b.tstop
ffffff0000090fa4:	91003c01 	add	x1, x0, #0xf
ffffff0000090fa8:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090fac:	f9000261 	str	x1, [x19]
ffffff0000090fb0:	1400000d 	b	ffffff0000090fe4 <simple_vsprintf+0x920>
ffffff0000090fb4:	11002022 	add	w2, w1, #0x8
ffffff0000090fb8:	b9001a62 	str	w2, [x19, #24]
ffffff0000090fbc:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000090fc0:	7100005f 	cmp	w2, #0x0
ffffff0000090fc4:	540000ad 	b.le	ffffff0000090fd8 <simple_vsprintf+0x914>
ffffff0000090fc8:	91003c01 	add	x1, x0, #0xf
ffffff0000090fcc:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000090fd0:	f9000261 	str	x1, [x19]
ffffff0000090fd4:	14000004 	b	ffffff0000090fe4 <simple_vsprintf+0x920>
ffffff0000090fd8:	f9400662 	ldr	x2, [x19, #8]
ffffff0000090fdc:	93407c20 	sxtw	x0, w1
ffffff0000090fe0:	8b000040 	add	x0, x2, x0
ffffff0000090fe4:	f9400000 	ldr	x0, [x0]
ffffff0000090fe8:	f9001fe0 	str	x0, [sp, #56]
ffffff0000090fec:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090ff0:	52800826 	mov	w6, #0x41                  	// #65
ffffff0000090ff4:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000090ff8:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000090ffc:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091000:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091004:	aa0003e1 	mov	x1, x0
ffffff0000091008:	f94017e0 	ldr	x0, [sp, #40]
ffffff000009100c:	97fffd3e 	bl	ffffff0000090504 <simple_outputi>
ffffff0000091010:	2a0003e1 	mov	w1, w0
ffffff0000091014:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000091018:	0b010000 	add	w0, w0, w1
ffffff000009101c:	b90047e0 	str	w0, [sp, #68]
ffffff0000091020:	140000a5 	b	ffffff00000912b4 <simple_vsprintf+0xbf0>
ffffff0000091024:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000091028:	91000400 	add	x0, x0, #0x1
ffffff000009102c:	f90013e0 	str	x0, [sp, #32]
ffffff0000091030:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000091034:	39400000 	ldrb	w0, [x0]
ffffff0000091038:	7101e01f 	cmp	w0, #0x78
ffffff000009103c:	54000a60 	b.eq	ffffff0000091188 <simple_vsprintf+0xac4>  // b.none
ffffff0000091040:	7101e01f 	cmp	w0, #0x78
ffffff0000091044:	5400132c 	b.gt	ffffff00000912a8 <simple_vsprintf+0xbe4>
ffffff0000091048:	7101d41f 	cmp	w0, #0x75
ffffff000009104c:	54000560 	b.eq	ffffff00000910f8 <simple_vsprintf+0xa34>  // b.none
ffffff0000091050:	7101d41f 	cmp	w0, #0x75
ffffff0000091054:	540012ac 	b.gt	ffffff00000912a8 <simple_vsprintf+0xbe4>
ffffff0000091058:	7101601f 	cmp	w0, #0x58
ffffff000009105c:	54000de0 	b.eq	ffffff0000091218 <simple_vsprintf+0xb54>  // b.none
ffffff0000091060:	7101901f 	cmp	w0, #0x64
ffffff0000091064:	54001221 	b.ne	ffffff00000912a8 <simple_vsprintf+0xbe4>  // b.any
ffffff0000091068:	b9401a61 	ldr	w1, [x19, #24]
ffffff000009106c:	f9400260 	ldr	x0, [x19]
ffffff0000091070:	7100003f 	cmp	w1, #0x0
ffffff0000091074:	540000ab 	b.lt	ffffff0000091088 <simple_vsprintf+0x9c4>  // b.tstop
ffffff0000091078:	91003c01 	add	x1, x0, #0xf
ffffff000009107c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091080:	f9000261 	str	x1, [x19]
ffffff0000091084:	1400000d 	b	ffffff00000910b8 <simple_vsprintf+0x9f4>
ffffff0000091088:	11002022 	add	w2, w1, #0x8
ffffff000009108c:	b9001a62 	str	w2, [x19, #24]
ffffff0000091090:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000091094:	7100005f 	cmp	w2, #0x0
ffffff0000091098:	540000ad 	b.le	ffffff00000910ac <simple_vsprintf+0x9e8>
ffffff000009109c:	91003c01 	add	x1, x0, #0xf
ffffff00000910a0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000910a4:	f9000261 	str	x1, [x19]
ffffff00000910a8:	14000004 	b	ffffff00000910b8 <simple_vsprintf+0x9f4>
ffffff00000910ac:	f9400662 	ldr	x2, [x19, #8]
ffffff00000910b0:	93407c20 	sxtw	x0, w1
ffffff00000910b4:	8b000040 	add	x0, x2, x0
ffffff00000910b8:	f9400000 	ldr	x0, [x0]
ffffff00000910bc:	f9001fe0 	str	x0, [sp, #56]
ffffff00000910c0:	f9401fe0 	ldr	x0, [sp, #56]
ffffff00000910c4:	52800c26 	mov	w6, #0x61                  	// #97
ffffff00000910c8:	b9404be5 	ldr	w5, [sp, #72]
ffffff00000910cc:	b9404fe4 	ldr	w4, [sp, #76]
ffffff00000910d0:	52800023 	mov	w3, #0x1                   	// #1
ffffff00000910d4:	52800142 	mov	w2, #0xa                   	// #10
ffffff00000910d8:	aa0003e1 	mov	x1, x0
ffffff00000910dc:	f94017e0 	ldr	x0, [sp, #40]
ffffff00000910e0:	97fffd09 	bl	ffffff0000090504 <simple_outputi>
ffffff00000910e4:	2a0003e1 	mov	w1, w0
ffffff00000910e8:	b94047e0 	ldr	w0, [sp, #68]
ffffff00000910ec:	0b010000 	add	w0, w0, w1
ffffff00000910f0:	b90047e0 	str	w0, [sp, #68]
ffffff00000910f4:	1400006e 	b	ffffff00000912ac <simple_vsprintf+0xbe8>
ffffff00000910f8:	b9401a61 	ldr	w1, [x19, #24]
ffffff00000910fc:	f9400260 	ldr	x0, [x19]
ffffff0000091100:	7100003f 	cmp	w1, #0x0
ffffff0000091104:	540000ab 	b.lt	ffffff0000091118 <simple_vsprintf+0xa54>  // b.tstop
ffffff0000091108:	91003c01 	add	x1, x0, #0xf
ffffff000009110c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091110:	f9000261 	str	x1, [x19]
ffffff0000091114:	1400000d 	b	ffffff0000091148 <simple_vsprintf+0xa84>
ffffff0000091118:	11002022 	add	w2, w1, #0x8
ffffff000009111c:	b9001a62 	str	w2, [x19, #24]
ffffff0000091120:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000091124:	7100005f 	cmp	w2, #0x0
ffffff0000091128:	540000ad 	b.le	ffffff000009113c <simple_vsprintf+0xa78>
ffffff000009112c:	91003c01 	add	x1, x0, #0xf
ffffff0000091130:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091134:	f9000261 	str	x1, [x19]
ffffff0000091138:	14000004 	b	ffffff0000091148 <simple_vsprintf+0xa84>
ffffff000009113c:	f9400662 	ldr	x2, [x19, #8]
ffffff0000091140:	93407c20 	sxtw	x0, w1
ffffff0000091144:	8b000040 	add	x0, x2, x0
ffffff0000091148:	f9400000 	ldr	x0, [x0]
ffffff000009114c:	f9001fe0 	str	x0, [sp, #56]
ffffff0000091150:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000091154:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091158:	b9404be5 	ldr	w5, [sp, #72]
ffffff000009115c:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000091160:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091164:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091168:	aa0003e1 	mov	x1, x0
ffffff000009116c:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000091170:	97fffce5 	bl	ffffff0000090504 <simple_outputi>
ffffff0000091174:	2a0003e1 	mov	w1, w0
ffffff0000091178:	b94047e0 	ldr	w0, [sp, #68]
ffffff000009117c:	0b010000 	add	w0, w0, w1
ffffff0000091180:	b90047e0 	str	w0, [sp, #68]
ffffff0000091184:	1400004a 	b	ffffff00000912ac <simple_vsprintf+0xbe8>
ffffff0000091188:	b9401a61 	ldr	w1, [x19, #24]
ffffff000009118c:	f9400260 	ldr	x0, [x19]
ffffff0000091190:	7100003f 	cmp	w1, #0x0
ffffff0000091194:	540000ab 	b.lt	ffffff00000911a8 <simple_vsprintf+0xae4>  // b.tstop
ffffff0000091198:	91003c01 	add	x1, x0, #0xf
ffffff000009119c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000911a0:	f9000261 	str	x1, [x19]
ffffff00000911a4:	1400000d 	b	ffffff00000911d8 <simple_vsprintf+0xb14>
ffffff00000911a8:	11002022 	add	w2, w1, #0x8
ffffff00000911ac:	b9001a62 	str	w2, [x19, #24]
ffffff00000911b0:	b9401a62 	ldr	w2, [x19, #24]
ffffff00000911b4:	7100005f 	cmp	w2, #0x0
ffffff00000911b8:	540000ad 	b.le	ffffff00000911cc <simple_vsprintf+0xb08>
ffffff00000911bc:	91003c01 	add	x1, x0, #0xf
ffffff00000911c0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000911c4:	f9000261 	str	x1, [x19]
ffffff00000911c8:	14000004 	b	ffffff00000911d8 <simple_vsprintf+0xb14>
ffffff00000911cc:	f9400662 	ldr	x2, [x19, #8]
ffffff00000911d0:	93407c20 	sxtw	x0, w1
ffffff00000911d4:	8b000040 	add	x0, x2, x0
ffffff00000911d8:	f9400000 	ldr	x0, [x0]
ffffff00000911dc:	f9001fe0 	str	x0, [sp, #56]
ffffff00000911e0:	f9401fe0 	ldr	x0, [sp, #56]
ffffff00000911e4:	52800c26 	mov	w6, #0x61                  	// #97
ffffff00000911e8:	b9404be5 	ldr	w5, [sp, #72]
ffffff00000911ec:	b9404fe4 	ldr	w4, [sp, #76]
ffffff00000911f0:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000911f4:	52800202 	mov	w2, #0x10                  	// #16
ffffff00000911f8:	aa0003e1 	mov	x1, x0
ffffff00000911fc:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000091200:	97fffcc1 	bl	ffffff0000090504 <simple_outputi>
ffffff0000091204:	2a0003e1 	mov	w1, w0
ffffff0000091208:	b94047e0 	ldr	w0, [sp, #68]
ffffff000009120c:	0b010000 	add	w0, w0, w1
ffffff0000091210:	b90047e0 	str	w0, [sp, #68]
ffffff0000091214:	14000026 	b	ffffff00000912ac <simple_vsprintf+0xbe8>
ffffff0000091218:	b9401a61 	ldr	w1, [x19, #24]
ffffff000009121c:	f9400260 	ldr	x0, [x19]
ffffff0000091220:	7100003f 	cmp	w1, #0x0
ffffff0000091224:	540000ab 	b.lt	ffffff0000091238 <simple_vsprintf+0xb74>  // b.tstop
ffffff0000091228:	91003c01 	add	x1, x0, #0xf
ffffff000009122c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091230:	f9000261 	str	x1, [x19]
ffffff0000091234:	1400000d 	b	ffffff0000091268 <simple_vsprintf+0xba4>
ffffff0000091238:	11002022 	add	w2, w1, #0x8
ffffff000009123c:	b9001a62 	str	w2, [x19, #24]
ffffff0000091240:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000091244:	7100005f 	cmp	w2, #0x0
ffffff0000091248:	540000ad 	b.le	ffffff000009125c <simple_vsprintf+0xb98>
ffffff000009124c:	91003c01 	add	x1, x0, #0xf
ffffff0000091250:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091254:	f9000261 	str	x1, [x19]
ffffff0000091258:	14000004 	b	ffffff0000091268 <simple_vsprintf+0xba4>
ffffff000009125c:	f9400662 	ldr	x2, [x19, #8]
ffffff0000091260:	93407c20 	sxtw	x0, w1
ffffff0000091264:	8b000040 	add	x0, x2, x0
ffffff0000091268:	f9400000 	ldr	x0, [x0]
ffffff000009126c:	f9001fe0 	str	x0, [sp, #56]
ffffff0000091270:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000091274:	52800826 	mov	w6, #0x41                  	// #65
ffffff0000091278:	b9404be5 	ldr	w5, [sp, #72]
ffffff000009127c:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000091280:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091284:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091288:	aa0003e1 	mov	x1, x0
ffffff000009128c:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000091290:	97fffc9d 	bl	ffffff0000090504 <simple_outputi>
ffffff0000091294:	2a0003e1 	mov	w1, w0
ffffff0000091298:	b94047e0 	ldr	w0, [sp, #68]
ffffff000009129c:	0b010000 	add	w0, w0, w1
ffffff00000912a0:	b90047e0 	str	w0, [sp, #68]
ffffff00000912a4:	14000002 	b	ffffff00000912ac <simple_vsprintf+0xbe8>
ffffff00000912a8:	d503201f 	nop
ffffff00000912ac:	14000002 	b	ffffff00000912b4 <simple_vsprintf+0xbf0>
ffffff00000912b0:	d503201f 	nop
ffffff00000912b4:	14000169 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff00000912b8:	f94013e0 	ldr	x0, [sp, #32]
ffffff00000912bc:	91000400 	add	x0, x0, #0x1
ffffff00000912c0:	f90013e0 	str	x0, [sp, #32]
ffffff00000912c4:	f94013e0 	ldr	x0, [sp, #32]
ffffff00000912c8:	39400000 	ldrb	w0, [x0]
ffffff00000912cc:	7101e01f 	cmp	w0, #0x78
ffffff00000912d0:	54000b40 	b.eq	ffffff0000091438 <simple_vsprintf+0xd74>  // b.none
ffffff00000912d4:	7101e01f 	cmp	w0, #0x78
ffffff00000912d8:	5400294c 	b.gt	ffffff0000091800 <simple_vsprintf+0x113c>
ffffff00000912dc:	7101d41f 	cmp	w0, #0x75
ffffff00000912e0:	54000620 	b.eq	ffffff00000913a4 <simple_vsprintf+0xce0>  // b.none
ffffff00000912e4:	7101d41f 	cmp	w0, #0x75
ffffff00000912e8:	540028cc 	b.gt	ffffff0000091800 <simple_vsprintf+0x113c>
ffffff00000912ec:	7101a01f 	cmp	w0, #0x68
ffffff00000912f0:	54001380 	b.eq	ffffff0000091560 <simple_vsprintf+0xe9c>  // b.none
ffffff00000912f4:	7101a01f 	cmp	w0, #0x68
ffffff00000912f8:	5400284c 	b.gt	ffffff0000091800 <simple_vsprintf+0x113c>
ffffff00000912fc:	7101601f 	cmp	w0, #0x58
ffffff0000091300:	54000e60 	b.eq	ffffff00000914cc <simple_vsprintf+0xe08>  // b.none
ffffff0000091304:	7101901f 	cmp	w0, #0x64
ffffff0000091308:	540027c1 	b.ne	ffffff0000091800 <simple_vsprintf+0x113c>  // b.any
ffffff000009130c:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000091310:	f9400260 	ldr	x0, [x19]
ffffff0000091314:	7100003f 	cmp	w1, #0x0
ffffff0000091318:	540000ab 	b.lt	ffffff000009132c <simple_vsprintf+0xc68>  // b.tstop
ffffff000009131c:	91002c01 	add	x1, x0, #0xb
ffffff0000091320:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091324:	f9000261 	str	x1, [x19]
ffffff0000091328:	1400000d 	b	ffffff000009135c <simple_vsprintf+0xc98>
ffffff000009132c:	11002022 	add	w2, w1, #0x8
ffffff0000091330:	b9001a62 	str	w2, [x19, #24]
ffffff0000091334:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000091338:	7100005f 	cmp	w2, #0x0
ffffff000009133c:	540000ad 	b.le	ffffff0000091350 <simple_vsprintf+0xc8c>
ffffff0000091340:	91002c01 	add	x1, x0, #0xb
ffffff0000091344:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091348:	f9000261 	str	x1, [x19]
ffffff000009134c:	14000004 	b	ffffff000009135c <simple_vsprintf+0xc98>
ffffff0000091350:	f9400662 	ldr	x2, [x19, #8]
ffffff0000091354:	93407c20 	sxtw	x0, w1
ffffff0000091358:	8b000040 	add	x0, x2, x0
ffffff000009135c:	b9400000 	ldr	w0, [x0]
ffffff0000091360:	13003c00 	sxth	w0, w0
ffffff0000091364:	790073e0 	strh	w0, [sp, #56]
ffffff0000091368:	79c073e0 	ldrsh	w0, [sp, #56]
ffffff000009136c:	93403c00 	sxth	x0, w0
ffffff0000091370:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091374:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000091378:	b9404fe4 	ldr	w4, [sp, #76]
ffffff000009137c:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000091380:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091384:	aa0003e1 	mov	x1, x0
ffffff0000091388:	f94017e0 	ldr	x0, [sp, #40]
ffffff000009138c:	97fffc5e 	bl	ffffff0000090504 <simple_outputi>
ffffff0000091390:	2a0003e1 	mov	w1, w0
ffffff0000091394:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000091398:	0b010000 	add	w0, w0, w1
ffffff000009139c:	b90047e0 	str	w0, [sp, #68]
ffffff00000913a0:	14000119 	b	ffffff0000091804 <simple_vsprintf+0x1140>
ffffff00000913a4:	b9401a61 	ldr	w1, [x19, #24]
ffffff00000913a8:	f9400260 	ldr	x0, [x19]
ffffff00000913ac:	7100003f 	cmp	w1, #0x0
ffffff00000913b0:	540000ab 	b.lt	ffffff00000913c4 <simple_vsprintf+0xd00>  // b.tstop
ffffff00000913b4:	91002c01 	add	x1, x0, #0xb
ffffff00000913b8:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000913bc:	f9000261 	str	x1, [x19]
ffffff00000913c0:	1400000d 	b	ffffff00000913f4 <simple_vsprintf+0xd30>
ffffff00000913c4:	11002022 	add	w2, w1, #0x8
ffffff00000913c8:	b9001a62 	str	w2, [x19, #24]
ffffff00000913cc:	b9401a62 	ldr	w2, [x19, #24]
ffffff00000913d0:	7100005f 	cmp	w2, #0x0
ffffff00000913d4:	540000ad 	b.le	ffffff00000913e8 <simple_vsprintf+0xd24>
ffffff00000913d8:	91002c01 	add	x1, x0, #0xb
ffffff00000913dc:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000913e0:	f9000261 	str	x1, [x19]
ffffff00000913e4:	14000004 	b	ffffff00000913f4 <simple_vsprintf+0xd30>
ffffff00000913e8:	f9400662 	ldr	x2, [x19, #8]
ffffff00000913ec:	93407c20 	sxtw	x0, w1
ffffff00000913f0:	8b000040 	add	x0, x2, x0
ffffff00000913f4:	b9400000 	ldr	w0, [x0]
ffffff00000913f8:	12003c00 	and	w0, w0, #0xffff
ffffff00000913fc:	790073e0 	strh	w0, [sp, #56]
ffffff0000091400:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000091404:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091408:	b9404be5 	ldr	w5, [sp, #72]
ffffff000009140c:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000091410:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091414:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091418:	aa0003e1 	mov	x1, x0
ffffff000009141c:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000091420:	97fffc39 	bl	ffffff0000090504 <simple_outputi>
ffffff0000091424:	2a0003e1 	mov	w1, w0
ffffff0000091428:	b94047e0 	ldr	w0, [sp, #68]
ffffff000009142c:	0b010000 	add	w0, w0, w1
ffffff0000091430:	b90047e0 	str	w0, [sp, #68]
ffffff0000091434:	140000f4 	b	ffffff0000091804 <simple_vsprintf+0x1140>
ffffff0000091438:	b9401a61 	ldr	w1, [x19, #24]
ffffff000009143c:	f9400260 	ldr	x0, [x19]
ffffff0000091440:	7100003f 	cmp	w1, #0x0
ffffff0000091444:	540000ab 	b.lt	ffffff0000091458 <simple_vsprintf+0xd94>  // b.tstop
ffffff0000091448:	91002c01 	add	x1, x0, #0xb
ffffff000009144c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091450:	f9000261 	str	x1, [x19]
ffffff0000091454:	1400000d 	b	ffffff0000091488 <simple_vsprintf+0xdc4>
ffffff0000091458:	11002022 	add	w2, w1, #0x8
ffffff000009145c:	b9001a62 	str	w2, [x19, #24]
ffffff0000091460:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000091464:	7100005f 	cmp	w2, #0x0
ffffff0000091468:	540000ad 	b.le	ffffff000009147c <simple_vsprintf+0xdb8>
ffffff000009146c:	91002c01 	add	x1, x0, #0xb
ffffff0000091470:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091474:	f9000261 	str	x1, [x19]
ffffff0000091478:	14000004 	b	ffffff0000091488 <simple_vsprintf+0xdc4>
ffffff000009147c:	f9400662 	ldr	x2, [x19, #8]
ffffff0000091480:	93407c20 	sxtw	x0, w1
ffffff0000091484:	8b000040 	add	x0, x2, x0
ffffff0000091488:	b9400000 	ldr	w0, [x0]
ffffff000009148c:	12003c00 	and	w0, w0, #0xffff
ffffff0000091490:	790073e0 	strh	w0, [sp, #56]
ffffff0000091494:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000091498:	52800c26 	mov	w6, #0x61                  	// #97
ffffff000009149c:	b9404be5 	ldr	w5, [sp, #72]
ffffff00000914a0:	b9404fe4 	ldr	w4, [sp, #76]
ffffff00000914a4:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000914a8:	52800202 	mov	w2, #0x10                  	// #16
ffffff00000914ac:	aa0003e1 	mov	x1, x0
ffffff00000914b0:	f94017e0 	ldr	x0, [sp, #40]
ffffff00000914b4:	97fffc14 	bl	ffffff0000090504 <simple_outputi>
ffffff00000914b8:	2a0003e1 	mov	w1, w0
ffffff00000914bc:	b94047e0 	ldr	w0, [sp, #68]
ffffff00000914c0:	0b010000 	add	w0, w0, w1
ffffff00000914c4:	b90047e0 	str	w0, [sp, #68]
ffffff00000914c8:	140000cf 	b	ffffff0000091804 <simple_vsprintf+0x1140>
ffffff00000914cc:	b9401a61 	ldr	w1, [x19, #24]
ffffff00000914d0:	f9400260 	ldr	x0, [x19]
ffffff00000914d4:	7100003f 	cmp	w1, #0x0
ffffff00000914d8:	540000ab 	b.lt	ffffff00000914ec <simple_vsprintf+0xe28>  // b.tstop
ffffff00000914dc:	91002c01 	add	x1, x0, #0xb
ffffff00000914e0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000914e4:	f9000261 	str	x1, [x19]
ffffff00000914e8:	1400000d 	b	ffffff000009151c <simple_vsprintf+0xe58>
ffffff00000914ec:	11002022 	add	w2, w1, #0x8
ffffff00000914f0:	b9001a62 	str	w2, [x19, #24]
ffffff00000914f4:	b9401a62 	ldr	w2, [x19, #24]
ffffff00000914f8:	7100005f 	cmp	w2, #0x0
ffffff00000914fc:	540000ad 	b.le	ffffff0000091510 <simple_vsprintf+0xe4c>
ffffff0000091500:	91002c01 	add	x1, x0, #0xb
ffffff0000091504:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091508:	f9000261 	str	x1, [x19]
ffffff000009150c:	14000004 	b	ffffff000009151c <simple_vsprintf+0xe58>
ffffff0000091510:	f9400662 	ldr	x2, [x19, #8]
ffffff0000091514:	93407c20 	sxtw	x0, w1
ffffff0000091518:	8b000040 	add	x0, x2, x0
ffffff000009151c:	b9400000 	ldr	w0, [x0]
ffffff0000091520:	12003c00 	and	w0, w0, #0xffff
ffffff0000091524:	790073e0 	strh	w0, [sp, #56]
ffffff0000091528:	f9401fe0 	ldr	x0, [sp, #56]
ffffff000009152c:	52800826 	mov	w6, #0x41                  	// #65
ffffff0000091530:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000091534:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000091538:	52800003 	mov	w3, #0x0                   	// #0
ffffff000009153c:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091540:	aa0003e1 	mov	x1, x0
ffffff0000091544:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000091548:	97fffbef 	bl	ffffff0000090504 <simple_outputi>
ffffff000009154c:	2a0003e1 	mov	w1, w0
ffffff0000091550:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000091554:	0b010000 	add	w0, w0, w1
ffffff0000091558:	b90047e0 	str	w0, [sp, #68]
ffffff000009155c:	140000aa 	b	ffffff0000091804 <simple_vsprintf+0x1140>
ffffff0000091560:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000091564:	91000400 	add	x0, x0, #0x1
ffffff0000091568:	f90013e0 	str	x0, [sp, #32]
ffffff000009156c:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000091570:	39400000 	ldrb	w0, [x0]
ffffff0000091574:	7101e01f 	cmp	w0, #0x78
ffffff0000091578:	54000ac0 	b.eq	ffffff00000916d0 <simple_vsprintf+0x100c>  // b.none
ffffff000009157c:	7101e01f 	cmp	w0, #0x78
ffffff0000091580:	540013cc 	b.gt	ffffff00000917f8 <simple_vsprintf+0x1134>
ffffff0000091584:	7101d41f 	cmp	w0, #0x75
ffffff0000091588:	540005a0 	b.eq	ffffff000009163c <simple_vsprintf+0xf78>  // b.none
ffffff000009158c:	7101d41f 	cmp	w0, #0x75
ffffff0000091590:	5400134c 	b.gt	ffffff00000917f8 <simple_vsprintf+0x1134>
ffffff0000091594:	7101601f 	cmp	w0, #0x58
ffffff0000091598:	54000e60 	b.eq	ffffff0000091764 <simple_vsprintf+0x10a0>  // b.none
ffffff000009159c:	7101901f 	cmp	w0, #0x64
ffffff00000915a0:	540012c1 	b.ne	ffffff00000917f8 <simple_vsprintf+0x1134>  // b.any
ffffff00000915a4:	b9401a61 	ldr	w1, [x19, #24]
ffffff00000915a8:	f9400260 	ldr	x0, [x19]
ffffff00000915ac:	7100003f 	cmp	w1, #0x0
ffffff00000915b0:	540000ab 	b.lt	ffffff00000915c4 <simple_vsprintf+0xf00>  // b.tstop
ffffff00000915b4:	91002c01 	add	x1, x0, #0xb
ffffff00000915b8:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000915bc:	f9000261 	str	x1, [x19]
ffffff00000915c0:	1400000d 	b	ffffff00000915f4 <simple_vsprintf+0xf30>
ffffff00000915c4:	11002022 	add	w2, w1, #0x8
ffffff00000915c8:	b9001a62 	str	w2, [x19, #24]
ffffff00000915cc:	b9401a62 	ldr	w2, [x19, #24]
ffffff00000915d0:	7100005f 	cmp	w2, #0x0
ffffff00000915d4:	540000ad 	b.le	ffffff00000915e8 <simple_vsprintf+0xf24>
ffffff00000915d8:	91002c01 	add	x1, x0, #0xb
ffffff00000915dc:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000915e0:	f9000261 	str	x1, [x19]
ffffff00000915e4:	14000004 	b	ffffff00000915f4 <simple_vsprintf+0xf30>
ffffff00000915e8:	f9400662 	ldr	x2, [x19, #8]
ffffff00000915ec:	93407c20 	sxtw	x0, w1
ffffff00000915f0:	8b000040 	add	x0, x2, x0
ffffff00000915f4:	b9400000 	ldr	w0, [x0]
ffffff00000915f8:	13001c00 	sxtb	w0, w0
ffffff00000915fc:	3900e3e0 	strb	w0, [sp, #56]
ffffff0000091600:	39c0e3e0 	ldrsb	w0, [sp, #56]
ffffff0000091604:	93401c00 	sxtb	x0, w0
ffffff0000091608:	52800c26 	mov	w6, #0x61                  	// #97
ffffff000009160c:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000091610:	b9404fe4 	ldr	w4, [sp, #76]
ffffff0000091614:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000091618:	52800142 	mov	w2, #0xa                   	// #10
ffffff000009161c:	aa0003e1 	mov	x1, x0
ffffff0000091620:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000091624:	97fffbb8 	bl	ffffff0000090504 <simple_outputi>
ffffff0000091628:	2a0003e1 	mov	w1, w0
ffffff000009162c:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000091630:	0b010000 	add	w0, w0, w1
ffffff0000091634:	b90047e0 	str	w0, [sp, #68]
ffffff0000091638:	14000071 	b	ffffff00000917fc <simple_vsprintf+0x1138>
ffffff000009163c:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000091640:	f9400260 	ldr	x0, [x19]
ffffff0000091644:	7100003f 	cmp	w1, #0x0
ffffff0000091648:	540000ab 	b.lt	ffffff000009165c <simple_vsprintf+0xf98>  // b.tstop
ffffff000009164c:	91002c01 	add	x1, x0, #0xb
ffffff0000091650:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091654:	f9000261 	str	x1, [x19]
ffffff0000091658:	1400000d 	b	ffffff000009168c <simple_vsprintf+0xfc8>
ffffff000009165c:	11002022 	add	w2, w1, #0x8
ffffff0000091660:	b9001a62 	str	w2, [x19, #24]
ffffff0000091664:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000091668:	7100005f 	cmp	w2, #0x0
ffffff000009166c:	540000ad 	b.le	ffffff0000091680 <simple_vsprintf+0xfbc>
ffffff0000091670:	91002c01 	add	x1, x0, #0xb
ffffff0000091674:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091678:	f9000261 	str	x1, [x19]
ffffff000009167c:	14000004 	b	ffffff000009168c <simple_vsprintf+0xfc8>
ffffff0000091680:	f9400662 	ldr	x2, [x19, #8]
ffffff0000091684:	93407c20 	sxtw	x0, w1
ffffff0000091688:	8b000040 	add	x0, x2, x0
ffffff000009168c:	b9400000 	ldr	w0, [x0]
ffffff0000091690:	12001c00 	and	w0, w0, #0xff
ffffff0000091694:	3900e3e0 	strb	w0, [sp, #56]
ffffff0000091698:	f9401fe0 	ldr	x0, [sp, #56]
ffffff000009169c:	52800c26 	mov	w6, #0x61                  	// #97
ffffff00000916a0:	b9404be5 	ldr	w5, [sp, #72]
ffffff00000916a4:	b9404fe4 	ldr	w4, [sp, #76]
ffffff00000916a8:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000916ac:	52800142 	mov	w2, #0xa                   	// #10
ffffff00000916b0:	aa0003e1 	mov	x1, x0
ffffff00000916b4:	f94017e0 	ldr	x0, [sp, #40]
ffffff00000916b8:	97fffb93 	bl	ffffff0000090504 <simple_outputi>
ffffff00000916bc:	2a0003e1 	mov	w1, w0
ffffff00000916c0:	b94047e0 	ldr	w0, [sp, #68]
ffffff00000916c4:	0b010000 	add	w0, w0, w1
ffffff00000916c8:	b90047e0 	str	w0, [sp, #68]
ffffff00000916cc:	1400004c 	b	ffffff00000917fc <simple_vsprintf+0x1138>
ffffff00000916d0:	b9401a61 	ldr	w1, [x19, #24]
ffffff00000916d4:	f9400260 	ldr	x0, [x19]
ffffff00000916d8:	7100003f 	cmp	w1, #0x0
ffffff00000916dc:	540000ab 	b.lt	ffffff00000916f0 <simple_vsprintf+0x102c>  // b.tstop
ffffff00000916e0:	91002c01 	add	x1, x0, #0xb
ffffff00000916e4:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000916e8:	f9000261 	str	x1, [x19]
ffffff00000916ec:	1400000d 	b	ffffff0000091720 <simple_vsprintf+0x105c>
ffffff00000916f0:	11002022 	add	w2, w1, #0x8
ffffff00000916f4:	b9001a62 	str	w2, [x19, #24]
ffffff00000916f8:	b9401a62 	ldr	w2, [x19, #24]
ffffff00000916fc:	7100005f 	cmp	w2, #0x0
ffffff0000091700:	540000ad 	b.le	ffffff0000091714 <simple_vsprintf+0x1050>
ffffff0000091704:	91002c01 	add	x1, x0, #0xb
ffffff0000091708:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff000009170c:	f9000261 	str	x1, [x19]
ffffff0000091710:	14000004 	b	ffffff0000091720 <simple_vsprintf+0x105c>
ffffff0000091714:	f9400662 	ldr	x2, [x19, #8]
ffffff0000091718:	93407c20 	sxtw	x0, w1
ffffff000009171c:	8b000040 	add	x0, x2, x0
ffffff0000091720:	b9400000 	ldr	w0, [x0]
ffffff0000091724:	12001c00 	and	w0, w0, #0xff
ffffff0000091728:	3900e3e0 	strb	w0, [sp, #56]
ffffff000009172c:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000091730:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091734:	b9404be5 	ldr	w5, [sp, #72]
ffffff0000091738:	b9404fe4 	ldr	w4, [sp, #76]
ffffff000009173c:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091740:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091744:	aa0003e1 	mov	x1, x0
ffffff0000091748:	f94017e0 	ldr	x0, [sp, #40]
ffffff000009174c:	97fffb6e 	bl	ffffff0000090504 <simple_outputi>
ffffff0000091750:	2a0003e1 	mov	w1, w0
ffffff0000091754:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000091758:	0b010000 	add	w0, w0, w1
ffffff000009175c:	b90047e0 	str	w0, [sp, #68]
ffffff0000091760:	14000027 	b	ffffff00000917fc <simple_vsprintf+0x1138>
ffffff0000091764:	b9401a61 	ldr	w1, [x19, #24]
ffffff0000091768:	f9400260 	ldr	x0, [x19]
ffffff000009176c:	7100003f 	cmp	w1, #0x0
ffffff0000091770:	540000ab 	b.lt	ffffff0000091784 <simple_vsprintf+0x10c0>  // b.tstop
ffffff0000091774:	91002c01 	add	x1, x0, #0xb
ffffff0000091778:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff000009177c:	f9000261 	str	x1, [x19]
ffffff0000091780:	1400000d 	b	ffffff00000917b4 <simple_vsprintf+0x10f0>
ffffff0000091784:	11002022 	add	w2, w1, #0x8
ffffff0000091788:	b9001a62 	str	w2, [x19, #24]
ffffff000009178c:	b9401a62 	ldr	w2, [x19, #24]
ffffff0000091790:	7100005f 	cmp	w2, #0x0
ffffff0000091794:	540000ad 	b.le	ffffff00000917a8 <simple_vsprintf+0x10e4>
ffffff0000091798:	91002c01 	add	x1, x0, #0xb
ffffff000009179c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000917a0:	f9000261 	str	x1, [x19]
ffffff00000917a4:	14000004 	b	ffffff00000917b4 <simple_vsprintf+0x10f0>
ffffff00000917a8:	f9400662 	ldr	x2, [x19, #8]
ffffff00000917ac:	93407c20 	sxtw	x0, w1
ffffff00000917b0:	8b000040 	add	x0, x2, x0
ffffff00000917b4:	b9400000 	ldr	w0, [x0]
ffffff00000917b8:	12001c00 	and	w0, w0, #0xff
ffffff00000917bc:	3900e3e0 	strb	w0, [sp, #56]
ffffff00000917c0:	f9401fe0 	ldr	x0, [sp, #56]
ffffff00000917c4:	52800826 	mov	w6, #0x41                  	// #65
ffffff00000917c8:	b9404be5 	ldr	w5, [sp, #72]
ffffff00000917cc:	b9404fe4 	ldr	w4, [sp, #76]
ffffff00000917d0:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000917d4:	52800202 	mov	w2, #0x10                  	// #16
ffffff00000917d8:	aa0003e1 	mov	x1, x0
ffffff00000917dc:	f94017e0 	ldr	x0, [sp, #40]
ffffff00000917e0:	97fffb49 	bl	ffffff0000090504 <simple_outputi>
ffffff00000917e4:	2a0003e1 	mov	w1, w0
ffffff00000917e8:	b94047e0 	ldr	w0, [sp, #68]
ffffff00000917ec:	0b010000 	add	w0, w0, w1
ffffff00000917f0:	b90047e0 	str	w0, [sp, #68]
ffffff00000917f4:	14000002 	b	ffffff00000917fc <simple_vsprintf+0x1138>
ffffff00000917f8:	d503201f 	nop
ffffff00000917fc:	14000002 	b	ffffff0000091804 <simple_vsprintf+0x1140>
ffffff0000091800:	d503201f 	nop
ffffff0000091804:	14000015 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000091808:	d503201f 	nop
ffffff000009180c:	14000002 	b	ffffff0000091814 <simple_vsprintf+0x1150>
ffffff0000091810:	d503201f 	nop
ffffff0000091814:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000091818:	39400000 	ldrb	w0, [x0]
ffffff000009181c:	7100281f 	cmp	w0, #0xa
ffffff0000091820:	54000081 	b.ne	ffffff0000091830 <simple_vsprintf+0x116c>  // b.any
ffffff0000091824:	528001a1 	mov	w1, #0xd                   	// #13
ffffff0000091828:	f94017e0 	ldr	x0, [sp, #40]
ffffff000009182c:	97fffac1 	bl	ffffff0000090330 <simple_outputchar>
ffffff0000091830:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000091834:	39400000 	ldrb	w0, [x0]
ffffff0000091838:	2a0003e1 	mov	w1, w0
ffffff000009183c:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000091840:	97fffabc 	bl	ffffff0000090330 <simple_outputchar>
ffffff0000091844:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000091848:	11000400 	add	w0, w0, #0x1
ffffff000009184c:	b90047e0 	str	w0, [sp, #68]
ffffff0000091850:	14000002 	b	ffffff0000091858 <simple_vsprintf+0x1194>
ffffff0000091854:	d503201f 	nop
ffffff0000091858:	f94013e0 	ldr	x0, [sp, #32]
ffffff000009185c:	91000400 	add	x0, x0, #0x1
ffffff0000091860:	f90013e0 	str	x0, [sp, #32]
ffffff0000091864:	f94013e0 	ldr	x0, [sp, #32]
ffffff0000091868:	39400000 	ldrb	w0, [x0]
ffffff000009186c:	7100001f 	cmp	w0, #0x0
ffffff0000091870:	54ff73a1 	b.ne	ffffff00000906e4 <simple_vsprintf+0x20>  // b.any
ffffff0000091874:	14000002 	b	ffffff000009187c <simple_vsprintf+0x11b8>
ffffff0000091878:	d503201f 	nop
ffffff000009187c:	f94017e0 	ldr	x0, [sp, #40]
ffffff0000091880:	f100001f 	cmp	x0, #0x0
ffffff0000091884:	54000080 	b.eq	ffffff0000091894 <simple_vsprintf+0x11d0>  // b.none
ffffff0000091888:	f94017e0 	ldr	x0, [sp, #40]
ffffff000009188c:	f9400000 	ldr	x0, [x0]
ffffff0000091890:	3900001f 	strb	wzr, [x0]
ffffff0000091894:	b94047e0 	ldr	w0, [sp, #68]
ffffff0000091898:	f9400bf3 	ldr	x19, [sp, #16]
ffffff000009189c:	a8c57bfd 	ldp	x29, x30, [sp], #80
ffffff00000918a0:	d65f03c0 	ret

ffffff00000918a4 <printk>:
ffffff00000918a4:	a9b67bfd 	stp	x29, x30, [sp, #-160]!
ffffff00000918a8:	910003fd 	mov	x29, sp
ffffff00000918ac:	f9001fe0 	str	x0, [sp, #56]
ffffff00000918b0:	f90037e1 	str	x1, [sp, #104]
ffffff00000918b4:	f9003be2 	str	x2, [sp, #112]
ffffff00000918b8:	f9003fe3 	str	x3, [sp, #120]
ffffff00000918bc:	f90043e4 	str	x4, [sp, #128]
ffffff00000918c0:	f90047e5 	str	x5, [sp, #136]
ffffff00000918c4:	f9004be6 	str	x6, [sp, #144]
ffffff00000918c8:	f9004fe7 	str	x7, [sp, #152]
ffffff00000918cc:	910283e0 	add	x0, sp, #0xa0
ffffff00000918d0:	f90023e0 	str	x0, [sp, #64]
ffffff00000918d4:	910283e0 	add	x0, sp, #0xa0
ffffff00000918d8:	f90027e0 	str	x0, [sp, #72]
ffffff00000918dc:	910183e0 	add	x0, sp, #0x60
ffffff00000918e0:	f9002be0 	str	x0, [sp, #80]
ffffff00000918e4:	128006e0 	mov	w0, #0xffffffc8            	// #-56
ffffff00000918e8:	b9005be0 	str	w0, [sp, #88]
ffffff00000918ec:	b9005fff 	str	wzr, [sp, #92]
ffffff00000918f0:	910043e2 	add	x2, sp, #0x10
ffffff00000918f4:	910103e3 	add	x3, sp, #0x40
ffffff00000918f8:	a9400460 	ldp	x0, x1, [x3]
ffffff00000918fc:	a9000440 	stp	x0, x1, [x2]
ffffff0000091900:	a9410460 	ldp	x0, x1, [x3, #16]
ffffff0000091904:	a9010440 	stp	x0, x1, [x2, #16]
ffffff0000091908:	910043e0 	add	x0, sp, #0x10
ffffff000009190c:	aa0003e2 	mov	x2, x0
ffffff0000091910:	f9401fe1 	ldr	x1, [sp, #56]
ffffff0000091914:	d2800000 	mov	x0, #0x0                   	// #0
ffffff0000091918:	97fffb6b 	bl	ffffff00000906c4 <simple_vsprintf>
ffffff000009191c:	d503201f 	nop
ffffff0000091920:	a8ca7bfd 	ldp	x29, x30, [sp], #160
ffffff0000091924:	d65f03c0 	ret
