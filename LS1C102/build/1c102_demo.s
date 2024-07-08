
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800ef 	lu12i.w	$r15,114695(0x1c007)
1c00000c:	03aed1ef 	ori	$r15,$r15,0xbb4
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	0380b1ef 	ori	$r15,$r15,0x2c
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	0389a1ad 	ori	$r13,$r13,0x268
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	54311400 	bl	12564(0x3114) # 1c0041a4 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54315c00 	bl	12636(0x315c) # 1c0041f4 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5431e800 	bl	12776(0x31e8) # 1c004288 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54321c00 	bl	12828(0x321c) # 1c0042c4 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54303c00 	bl	12348(0x303c) # 1c0040ec <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	5433ec00 	bl	13292(0x33ec) # 1c0044a4 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5432d400 	bl	13012(0x32d4) # 1c00439c <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b63084 	ld.w	$r4,$r4,-628(0xd8c)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017c00 	bl	380(0x17c) # 1c0014cc <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54016400 	bl	356(0x164) # 1c0014cc <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014c00 	bl	332(0x14c) # 1c0014cc <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54013800 	bl	312(0x138) # 1c0014cc <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012000 	bl	288(0x120) # 1c0014cc <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	5417a000 	bl	6048(0x17a0) # 1c002b74 <DisableInt>
1c0013d8:	54170000 	bl	5888(0x1700) # 1c002ad8 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	541ec000 	bl	7872(0x1ec0) # 1c0032a0 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	541e0000 	bl	7680(0x1e00) # 1c0031e8 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54106000 	bl	4192(0x1060) # 1c002454 <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	54111800 	bl	4376(0x1118) # 1c002518 <Uart1_init>
1c001404:	54196400 	bl	6500(0x1964) # 1c002d68 <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	54177000 	bl	6000(0x1770) # 1c002b98 <EnableInt>
1c00142c:	541a0400 	bl	6660(0x1a04) # 1c002e30 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	5417cc00 	bl	6092(0x17cc) # 1c002c00 <Wake_Set>
1c001438:	541e3c00 	bl	7740(0x1e3c) # 1c003274 <WDG_DogFeed>
1c00143c:	54187000 	bl	6256(0x1870) # 1c002cac <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001450:	02a3c084 	addi.w	$r4,$r4,-1808(0x8f0)
1c001454:	54074c00 	bl	1868(0x74c) # 1c001ba0 <myprintf>
1c001458:	5418c000 	bl	6336(0x18c0) # 1c002d18 <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001468:	02a3a084 	addi.w	$r4,$r4,-1816(0x8e8)
1c00146c:	54073400 	bl	1844(0x734) # 1c001ba0 <myprintf>
1c001470:	543dd800 	bl	15832(0x3dd8) # 1c005248 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001488:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c00148c:	54071400 	bl	1812(0x714) # 1c001ba0 <myprintf>
1c001490:	543db800 	bl	15800(0x3db8) # 1c005248 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0014a8:	02a31084 	addi.w	$r4,$r4,-1852(0x8c4)
1c0014ac:	5406f400 	bl	1780(0x6f4) # 1c001ba0 <myprintf>
1c0014b0:	57fd37ff 	bl	-716(0xffffd34) # 1c0011e4 <cpu_sleep>
1c0014b4:	0015000c 	move	$r12,$r0
1c0014b8:	00150184 	move	$r4,$r12
1c0014bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014dc:	001500ac 	move	$r12,$r5
1c0014e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014e4:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001500:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001504:	50006c00 	b	108(0x6c) # 1c001570 <AFIO_RemapConfig+0xa4>
1c001508:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00150c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001510:	001831ac 	sra.w	$r12,$r13,$r12
1c001514:	0340058c 	andi	$r12,$r12,0x1
1c001518:	40004d80 	beqz	$r12,76(0x4c) # 1c001564 <AFIO_RemapConfig+0x98>
1c00151c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001520:	0040858c 	slli.w	$r12,$r12,0x1
1c001524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00152c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001530:	001731ac 	sll.w	$r12,$r13,$r12
1c001534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001538:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00153c:	0014300c 	nor	$r12,$r0,$r12
1c001540:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001544:	0014b1ac 	and	$r12,$r13,$r12
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001550:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001554:	001731ac 	sll.w	$r12,$r13,$r12
1c001558:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00155c:	001531ac 	or	$r12,$r13,$r12
1c001560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001564:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00156c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001570:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001574:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001578:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001508 <AFIO_RemapConfig+0x3c>
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001584:	2980018d 	st.w	$r13,$r12,0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001590:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001594:	4c000020 	jirl	$r0,$r1,0

1c001598 <gpio_get_pin>:
gpio_get_pin():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a4:	0015008c 	move	$r12,$r4
1c0015a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015ac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015b4:	0382018c 	ori	$r12,$r12,0x80
1c0015b8:	001031ac 	add.w	$r12,$r13,$r12
1c0015bc:	29000180 	st.b	$r0,$r12,0
1c0015c0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015c8:	0382018c 	ori	$r12,$r12,0x80
1c0015cc:	001031ac 	add.w	$r12,$r13,$r12
1c0015d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0015d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015d8:	00150184 	move	$r4,$r12
1c0015dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015e4:	4c000020 	jirl	$r0,$r1,0

1c0015e8 <gpio_write_pin>:
gpio_write_pin():
1c0015e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015f4:	0015008c 	move	$r12,$r4
1c0015f8:	001500ad 	move	$r13,$r5
1c0015fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001600:	001501ac 	move	$r12,$r13
1c001604:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001608:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00160c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001610:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001634 <gpio_write_pin+0x4c>
1c001614:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00161c:	0382018c 	ori	$r12,$r12,0x80
1c001620:	001031ac 	add.w	$r12,$r13,$r12
1c001624:	0015018d 	move	$r13,$r12
1c001628:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00162c:	290001ac 	st.b	$r12,$r13,0
1c001630:	50002000 	b	32(0x20) # 1c001650 <gpio_write_pin+0x68>
1c001634:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00163c:	0382018c 	ori	$r12,$r12,0x80
1c001640:	001031ac 	add.w	$r12,$r13,$r12
1c001644:	0015018d 	move	$r13,$r12
1c001648:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00164c:	290001ac 	st.b	$r12,$r13,0
1c001650:	03400000 	andi	$r0,$r0,0x0
1c001654:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001658:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00165c:	4c000020 	jirl	$r0,$r1,0

1c001660 <gpio_pin_remap>:
gpio_pin_remap():
1c001660:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001664:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001668:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00166c:	0015008c 	move	$r12,$r4
1c001670:	001500ad 	move	$r13,$r5
1c001674:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001678:	001501ac 	move	$r12,$r13
1c00167c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001680:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001684:	0044918c 	srli.w	$r12,$r12,0x4
1c001688:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00168c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001690:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001694:	03403d8c 	andi	$r12,$r12,0xf
1c001698:	0040858c 	slli.w	$r12,$r12,0x1
1c00169c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0016a0:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0016a4:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c0016a8:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c00185c <gpio_pin_remap+0x1fc>
1c0016ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016b4:	580089ac 	beq	$r13,$r12,136(0x88) # 1c00173c <gpio_pin_remap+0xdc>
1c0016b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016bc:	40002180 	beqz	$r12,32(0x20) # 1c0016dc <gpio_pin_remap+0x7c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016c8:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c00179c <gpio_pin_remap+0x13c>
1c0016cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016d0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016d4:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017fc <gpio_pin_remap+0x19c>
1c0016d8:	50018800 	b	392(0x188) # 1c001860 <gpio_pin_remap+0x200>
1c0016dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016e0:	0380418c 	ori	$r12,$r12,0x10
1c0016e4:	2880018d 	ld.w	$r13,$r12,0
1c0016e8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016f0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016f4:	0014300c 	nor	$r12,$r0,$r12
1c0016f8:	0015018e 	move	$r14,$r12
1c0016fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001700:	0380418c 	ori	$r12,$r12,0x10
1c001704:	0014b9ad 	and	$r13,$r13,$r14
1c001708:	2980018d 	st.w	$r13,$r12,0
1c00170c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001710:	0380418c 	ori	$r12,$r12,0x10
1c001714:	2880018d 	ld.w	$r13,$r12,0
1c001718:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00171c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001720:	001731cc 	sll.w	$r12,$r14,$r12
1c001724:	0015018e 	move	$r14,$r12
1c001728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00172c:	0380418c 	ori	$r12,$r12,0x10
1c001730:	001539ad 	or	$r13,$r13,$r14
1c001734:	2980018d 	st.w	$r13,$r12,0
1c001738:	50012800 	b	296(0x128) # 1c001860 <gpio_pin_remap+0x200>
1c00173c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001740:	0380518c 	ori	$r12,$r12,0x14
1c001744:	2880018d 	ld.w	$r13,$r12,0
1c001748:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00174c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001750:	001731cc 	sll.w	$r12,$r14,$r12
1c001754:	0014300c 	nor	$r12,$r0,$r12
1c001758:	0015018e 	move	$r14,$r12
1c00175c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001760:	0380518c 	ori	$r12,$r12,0x14
1c001764:	0014b9ad 	and	$r13,$r13,$r14
1c001768:	2980018d 	st.w	$r13,$r12,0
1c00176c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001770:	0380518c 	ori	$r12,$r12,0x14
1c001774:	2880018d 	ld.w	$r13,$r12,0
1c001778:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00177c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001780:	001731cc 	sll.w	$r12,$r14,$r12
1c001784:	0015018e 	move	$r14,$r12
1c001788:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00178c:	0380518c 	ori	$r12,$r12,0x14
1c001790:	001539ad 	or	$r13,$r13,$r14
1c001794:	2980018d 	st.w	$r13,$r12,0
1c001798:	5000c800 	b	200(0xc8) # 1c001860 <gpio_pin_remap+0x200>
1c00179c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017a0:	0380618c 	ori	$r12,$r12,0x18
1c0017a4:	2880018d 	ld.w	$r13,$r12,0
1c0017a8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017b0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017b4:	0014300c 	nor	$r12,$r0,$r12
1c0017b8:	0015018e 	move	$r14,$r12
1c0017bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c0:	0380618c 	ori	$r12,$r12,0x18
1c0017c4:	0014b9ad 	and	$r13,$r13,$r14
1c0017c8:	2980018d 	st.w	$r13,$r12,0
1c0017cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d0:	0380618c 	ori	$r12,$r12,0x18
1c0017d4:	2880018d 	ld.w	$r13,$r12,0
1c0017d8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017e0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017e4:	0015018e 	move	$r14,$r12
1c0017e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017ec:	0380618c 	ori	$r12,$r12,0x18
1c0017f0:	001539ad 	or	$r13,$r13,$r14
1c0017f4:	2980018d 	st.w	$r13,$r12,0
1c0017f8:	50006800 	b	104(0x68) # 1c001860 <gpio_pin_remap+0x200>
1c0017fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001800:	0380718c 	ori	$r12,$r12,0x1c
1c001804:	2880018d 	ld.w	$r13,$r12,0
1c001808:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00180c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001810:	001731cc 	sll.w	$r12,$r14,$r12
1c001814:	0014300c 	nor	$r12,$r0,$r12
1c001818:	0015018e 	move	$r14,$r12
1c00181c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001820:	0380718c 	ori	$r12,$r12,0x1c
1c001824:	0014b9ad 	and	$r13,$r13,$r14
1c001828:	2980018d 	st.w	$r13,$r12,0
1c00182c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001830:	0380718c 	ori	$r12,$r12,0x1c
1c001834:	2880018d 	ld.w	$r13,$r12,0
1c001838:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00183c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001840:	001731cc 	sll.w	$r12,$r14,$r12
1c001844:	0015018e 	move	$r14,$r12
1c001848:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00184c:	0380718c 	ori	$r12,$r12,0x1c
1c001850:	001539ad 	or	$r13,$r13,$r14
1c001854:	2980018d 	st.w	$r13,$r12,0
1c001858:	50000800 	b	8(0x8) # 1c001860 <gpio_pin_remap+0x200>
1c00185c:	03400000 	andi	$r0,$r0,0x0
1c001860:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001864:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001868:	4c000020 	jirl	$r0,$r1,0

1c00186c <gpio_set_direction>:
gpio_set_direction():
1c00186c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001870:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001874:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001878:	0015008c 	move	$r12,$r4
1c00187c:	001500ad 	move	$r13,$r5
1c001880:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001884:	001501ac 	move	$r12,$r13
1c001888:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00188c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001890:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001894:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001898:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00189c:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c001900 <gpio_set_direction+0x94>
1c0018a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018a4:	0381018c 	ori	$r12,$r12,0x40
1c0018a8:	2880018d 	ld.w	$r13,$r12,0
1c0018ac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018b4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018b8:	0014300c 	nor	$r12,$r0,$r12
1c0018bc:	0015018e 	move	$r14,$r12
1c0018c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c4:	0381018c 	ori	$r12,$r12,0x40
1c0018c8:	0014b9ad 	and	$r13,$r13,$r14
1c0018cc:	2980018d 	st.w	$r13,$r12,0
1c0018d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018d4:	0381018c 	ori	$r12,$r12,0x40
1c0018d8:	2880018d 	ld.w	$r13,$r12,0
1c0018dc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018e8:	0015018e 	move	$r14,$r12
1c0018ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018f0:	0381018c 	ori	$r12,$r12,0x40
1c0018f4:	001539ad 	or	$r13,$r13,$r14
1c0018f8:	2980018d 	st.w	$r13,$r12,0
1c0018fc:	50008c00 	b	140(0x8c) # 1c001988 <gpio_set_direction+0x11c>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001908:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001984 <gpio_set_direction+0x118>
1c00190c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001910:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001914:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001984 <gpio_set_direction+0x118>
1c001918:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00191c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001920:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001924:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001928:	0381418c 	ori	$r12,$r12,0x50
1c00192c:	2880018d 	ld.w	$r13,$r12,0
1c001930:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001938:	001731cc 	sll.w	$r12,$r14,$r12
1c00193c:	0014300c 	nor	$r12,$r0,$r12
1c001940:	0015018e 	move	$r14,$r12
1c001944:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001948:	0381418c 	ori	$r12,$r12,0x50
1c00194c:	0014b9ad 	and	$r13,$r13,$r14
1c001950:	2980018d 	st.w	$r13,$r12,0
1c001954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001958:	0381418c 	ori	$r12,$r12,0x50
1c00195c:	2880018d 	ld.w	$r13,$r12,0
1c001960:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001968:	001731cc 	sll.w	$r12,$r14,$r12
1c00196c:	0015018e 	move	$r14,$r12
1c001970:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001974:	0381418c 	ori	$r12,$r12,0x50
1c001978:	001539ad 	or	$r13,$r13,$r14
1c00197c:	2980018d 	st.w	$r13,$r12,0
1c001980:	50000800 	b	8(0x8) # 1c001988 <gpio_set_direction+0x11c>
1c001984:	03400000 	andi	$r0,$r0,0x0
1c001988:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00198c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001990:	4c000020 	jirl	$r0,$r1,0

1c001994 <myputchar>:
myputchar():
1c001994:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001998:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00199c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0019a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019a4:	0015008c 	move	$r12,$r4
1c0019a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019b0:	00150185 	move	$r5,$r12
1c0019b4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019b8:	54098c00 	bl	2444(0x98c) # 1c002344 <UART_SendData>
1c0019bc:	03400000 	andi	$r0,$r0,0x0
1c0019c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019cc:	4c000020 	jirl	$r0,$r1,0

1c0019d0 <printbase>:
printbase():
1c0019d0:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019d4:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019d8:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019dc:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019e0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019e4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019e8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019ec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019f0:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019f4:	40002580 	beqz	$r12,36(0x24) # 1c001a18 <printbase+0x48>
1c0019f8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019fc:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a18 <printbase+0x48>
1c001a00:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a04:	0011300c 	sub.w	$r12,$r0,$r12
1c001a08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a0c:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a10:	57ff87ff 	bl	-124(0xfffff84) # 1c001994 <myputchar>
1c001a14:	50000c00 	b	12(0xc) # 1c001a20 <printbase+0x50>
1c001a18:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a20:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a24:	50005000 	b	80(0x50) # 1c001a74 <printbase+0xa4>
1c001a28:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a2c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a30:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a34:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a3c <printbase+0x6c>
1c001a38:	002a0007 	break	0x7
1c001a3c:	00005dcc 	ext.w.b	$r12,$r14
1c001a40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a44:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a48:	001035cd 	add.w	$r13,$r14,$r13
1c001a4c:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a50:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a54:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a58:	002135cc 	div.wu	$r12,$r14,$r13
1c001a5c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a64 <printbase+0x94>
1c001a60:	002a0007 	break	0x7
1c001a64:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a74:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a78:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a28 <printbase+0x58>
1c001a7c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a84:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a88:	001231ad 	slt	$r13,$r13,$r12
1c001a8c:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a90:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a94:	001531cc 	or	$r12,$r14,$r12
1c001a98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a9c:	50007400 	b	116(0x74) # 1c001b10 <printbase+0x140>
1c001aa0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001aa8:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ac4 <printbase+0xf4>
1c001aac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ab0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001ab4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001ab8:	001031ac 	add.w	$r12,$r13,$r12
1c001abc:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ac0:	50000800 	b	8(0x8) # 1c001ac8 <printbase+0xf8>
1c001ac4:	0015000c 	move	$r12,$r0
1c001ac8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001acc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ad0:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ad4:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001aec <printbase+0x11c>
1c001ad8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001adc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae0:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	50001400 	b	20(0x14) # 1c001afc <printbase+0x12c>
1c001aec:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001af0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af4:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001af8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001afc:	00150184 	move	$r4,$r12
1c001b00:	57fe97ff 	bl	-364(0xffffe94) # 1c001994 <myputchar>
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b14:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001aa0 <printbase+0xd0>
1c001b18:	0015000c 	move	$r12,$r0
1c001b1c:	00150184 	move	$r4,$r12
1c001b20:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b24:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b28:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b2c:	4c000020 	jirl	$r0,$r1,0

1c001b30 <puts>:
puts():
1c001b30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b40:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b44:	50003000 	b	48(0x30) # 1c001b74 <puts+0x44>
1c001b48:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b50:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b5c <puts+0x2c>
1c001b54:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b58:	57fe3fff 	bl	-452(0xffffe3c) # 1c001994 <myputchar>
1c001b5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b60:	00150184 	move	$r4,$r12
1c001b64:	57fe33ff 	bl	-464(0xffffe30) # 1c001994 <myputchar>
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b70:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b78:	2a00018c 	ld.bu	$r12,$r12,0
1c001b7c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b80:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b84:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b48 <puts+0x18>
1c001b88:	0015000c 	move	$r12,$r0
1c001b8c:	00150184 	move	$r4,$r12
1c001b90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b94:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b9c:	4c000020 	jirl	$r0,$r1,0

1c001ba0 <myprintf>:
myprintf():
1c001ba0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001ba4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001ba8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001bac:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001bb0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001bb4:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bb8:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bbc:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bc0:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bc4:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bc8:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bcc:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bd0:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bd4:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bd8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001be0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001be4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001be8:	50033000 	b	816(0x330) # 1c001f18 <myprintf+0x378>
1c001bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bf0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001bf4:	001031ac 	add.w	$r12,$r13,$r12
1c001bf8:	2a00018c 	ld.bu	$r12,$r12,0
1c001bfc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001c00:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001c04:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001c08:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001eec <myprintf+0x34c>
1c001c0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c20:	001031ac 	add.w	$r12,$r13,$r12
1c001c24:	2800018c 	ld.b	$r12,$r12,0
1c001c28:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c2c:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c30:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001edc <myprintf+0x33c>
1c001c34:	0040898d 	slli.w	$r13,$r12,0x2
1c001c38:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001c3c:	0284f18c 	addi.w	$r12,$r12,316(0x13c)
1c001c40:	001031ac 	add.w	$r12,$r13,$r12
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	4c000180 	jirl	$r0,$r12,0
1c001c4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c50:	2880018c 	ld.w	$r12,$r12,0
1c001c54:	00150184 	move	$r4,$r12
1c001c58:	57fedbff 	bl	-296(0xffffed8) # 1c001b30 <puts>
1c001c5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c60:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c64:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c74:	50029800 	b	664(0x298) # 1c001f0c <myprintf+0x36c>
1c001c78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c7c:	2880018c 	ld.w	$r12,$r12,0
1c001c80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c84:	00150184 	move	$r4,$r12
1c001c88:	57fd0fff 	bl	-756(0xffffd0c) # 1c001994 <myputchar>
1c001c8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c90:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ca0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ca4:	50026800 	b	616(0x268) # 1c001f0c <myprintf+0x36c>
1c001ca8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cac:	2880018c 	ld.w	$r12,$r12,0
1c001cb0:	00150007 	move	$r7,$r0
1c001cb4:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cb8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cbc:	00150184 	move	$r4,$r12
1c001cc0:	57fd13ff 	bl	-752(0xffffd10) # 1c0019d0 <printbase>
1c001cc4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cc8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ccc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cdc:	50023000 	b	560(0x230) # 1c001f0c <myprintf+0x36c>
1c001ce0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ce4:	2880018c 	ld.w	$r12,$r12,0
1c001ce8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001cec:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cf0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cf4:	00150184 	move	$r4,$r12
1c001cf8:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019d0 <printbase>
1c001cfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d14:	5001f800 	b	504(0x1f8) # 1c001f0c <myprintf+0x36c>
1c001d18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d1c:	2880018c 	ld.w	$r12,$r12,0
1c001d20:	00150007 	move	$r7,$r0
1c001d24:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d28:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d2c:	00150184 	move	$r4,$r12
1c001d30:	57fca3ff 	bl	-864(0xffffca0) # 1c0019d0 <printbase>
1c001d34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d4c:	5001c000 	b	448(0x1c0) # 1c001f0c <myprintf+0x36c>
1c001d50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d54:	2880018c 	ld.w	$r12,$r12,0
1c001d58:	00150007 	move	$r7,$r0
1c001d5c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d60:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d64:	00150184 	move	$r4,$r12
1c001d68:	57fc6bff 	bl	-920(0xffffc68) # 1c0019d0 <printbase>
1c001d6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d70:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d84:	50018800 	b	392(0x188) # 1c001f0c <myprintf+0x36c>
1c001d88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d8c:	2880018c 	ld.w	$r12,$r12,0
1c001d90:	00150007 	move	$r7,$r0
1c001d94:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d98:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d9c:	00150184 	move	$r4,$r12
1c001da0:	57fc33ff 	bl	-976(0xffffc30) # 1c0019d0 <printbase>
1c001da4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001da8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001db4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001db8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dbc:	50015000 	b	336(0x150) # 1c001f0c <myprintf+0x36c>
1c001dc0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001dc4:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001994 <myputchar>
1c001dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd4:	50013800 	b	312(0x138) # 1c001f0c <myprintf+0x36c>
1c001dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ddc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001de8:	50003c00 	b	60(0x3c) # 1c001e24 <myprintf+0x284>
1c001dec:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001df0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001df4:	001c31ad 	mul.w	$r13,$r13,$r12
1c001df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e00:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e04:	001031cc 	add.w	$r12,$r14,$r12
1c001e08:	2800018c 	ld.b	$r12,$r12,0
1c001e0c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e10:	001031ac 	add.w	$r12,$r13,$r12
1c001e14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e2c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e30:	001031ac 	add.w	$r12,$r13,$r12
1c001e34:	2800018d 	ld.b	$r13,$r12,0
1c001e38:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e3c:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c14 <myprintf+0x74>
1c001e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e48:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e4c:	001031ac 	add.w	$r12,$r13,$r12
1c001e50:	2800018d 	ld.b	$r13,$r12,0
1c001e54:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e58:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001dec <myprintf+0x24c>
1c001e5c:	53fdbbff 	b	-584(0xffffdb8) # 1c001c14 <myprintf+0x74>
1c001e60:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e64:	50003c00 	b	60(0x3c) # 1c001ea0 <myprintf+0x300>
1c001e68:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e6c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e70:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e7c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e80:	001031cc 	add.w	$r12,$r14,$r12
1c001e84:	2800018c 	ld.b	$r12,$r12,0
1c001e88:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e8c:	001031ac 	add.w	$r12,$r13,$r12
1c001e90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ea4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ea8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001eac:	001031ac 	add.w	$r12,$r13,$r12
1c001eb0:	2800018d 	ld.b	$r13,$r12,0
1c001eb4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eb8:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c14 <myprintf+0x74>
1c001ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ec4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ec8:	001031ac 	add.w	$r12,$r13,$r12
1c001ecc:	2800018d 	ld.b	$r13,$r12,0
1c001ed0:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ed4:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e68 <myprintf+0x2c8>
1c001ed8:	53fd3fff 	b	-708(0xffffd3c) # 1c001c14 <myprintf+0x74>
1c001edc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ee0:	57fab7ff 	bl	-1356(0xffffab4) # 1c001994 <myputchar>
1c001ee4:	03400000 	andi	$r0,$r0,0x0
1c001ee8:	50002400 	b	36(0x24) # 1c001f0c <myprintf+0x36c>
1c001eec:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ef0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ef4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001f00 <myprintf+0x360>
1c001ef8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001efc:	57fa9bff 	bl	-1384(0xffffa98) # 1c001994 <myputchar>
1c001f00:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f04:	00150184 	move	$r4,$r12
1c001f08:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001994 <myputchar>
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f20:	001031ac 	add.w	$r12,$r13,$r12
1c001f24:	2800018c 	ld.b	$r12,$r12,0
1c001f28:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001bec <myprintf+0x4c>
1c001f2c:	0015000c 	move	$r12,$r0
1c001f30:	00150184 	move	$r4,$r12
1c001f34:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f38:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f3c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f40:	4c000020 	jirl	$r0,$r1,0

1c001f44 <UART_Init>:
UART_Init():
1c001f44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f48:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001f4c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f50:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f54:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f58:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001f5c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f64:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001f68:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001f6c:	03403d8c 	andi	$r12,$r12,0xf
1c001f70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001f74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f78:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001f7c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001f80:	0044918c 	srli.w	$r12,$r12,0x4
1c001f84:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001f88:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001f8c:	40000d80 	beqz	$r12,12(0xc) # 1c001f98 <UART_Init+0x54>
1c001f90:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f94:	44001980 	bnez	$r12,24(0x18) # 1c001fac <UART_Init+0x68>
1c001f98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f9c:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c001fa0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001fa4:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c001fa8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fac:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001fb0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c001fb4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001fcc <UART_Init+0x88>
1c001fb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fbc:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c001fc0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001fc4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001fc8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fcc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fd0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001fd4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001fd8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001fdc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001fe0:	580011ac 	beq	$r13,$r12,16(0x10) # 1c001ff0 <UART_Init+0xac>
1c001fe4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001fe8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c001fec:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c00204c <UART_Init+0x108>
1c001ff0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ff4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001ff8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ffc:	2880018c 	ld.w	$r12,$r12,0
1c002000:	002131ae 	div.wu	$r14,$r13,$r12
1c002004:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00200c <UART_Init+0xc8>
1c002008:	002a0007 	break	0x7
1c00200c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002010:	002135cc 	div.wu	$r12,$r14,$r13
1c002014:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00201c <UART_Init+0xd8>
1c002018:	002a0007 	break	0x7
1c00201c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002020:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002024:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002028:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00202c:	2880018e 	ld.w	$r14,$r12,0
1c002030:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002034:	001c31ce 	mul.w	$r14,$r14,$r12
1c002038:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00203c:	001c31cc 	mul.w	$r12,$r14,$r12
1c002040:	001131ac 	sub.w	$r12,$r13,$r12
1c002044:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002048:	50005400 	b	84(0x54) # 1c00209c <UART_Init+0x158>
1c00204c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002050:	2880018c 	ld.w	$r12,$r12,0
1c002054:	1400010d 	lu12i.w	$r13,8(0x8)
1c002058:	002131ae 	div.wu	$r14,$r13,$r12
1c00205c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002064 <UART_Init+0x120>
1c002060:	002a0007 	break	0x7
1c002064:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002068:	002135cc 	div.wu	$r12,$r14,$r13
1c00206c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002074 <UART_Init+0x130>
1c002070:	002a0007 	break	0x7
1c002074:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002078:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00207c:	2880018d 	ld.w	$r13,$r12,0
1c002080:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002084:	001c31ad 	mul.w	$r13,$r13,$r12
1c002088:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00208c:	001c31ac 	mul.w	$r12,$r13,$r12
1c002090:	1400010d 	lu12i.w	$r13,8(0x8)
1c002094:	001131ac 	sub.w	$r12,$r13,$r12
1c002098:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00209c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0020a0:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0020a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0020a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020ac:	2880018c 	ld.w	$r12,$r12,0
1c0020b0:	002131ae 	div.wu	$r14,$r13,$r12
1c0020b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0020bc <UART_Init+0x178>
1c0020b8:	002a0007 	break	0x7
1c0020bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0020c0:	002135cc 	div.wu	$r12,$r14,$r13
1c0020c4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0020cc <UART_Init+0x188>
1c0020c8:	002a0007 	break	0x7
1c0020cc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020d4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0020d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020dc:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0020e0:	001531ac 	or	$r12,$r13,$r12
1c0020e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020ec:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0020f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020fc:	2900018d 	st.b	$r13,$r12,0
1c002100:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002104:	0044a18c 	srli.w	$r12,$r12,0x8
1c002108:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00210c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002110:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002114:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002118:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00211c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002120:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002124:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002128:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00212c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002130:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002134:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002138:	0341fd8c 	andi	$r12,$r12,0x7f
1c00213c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002140:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002144:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002148:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00214c:	29000580 	st.b	$r0,$r12,1(0x1)
1c002150:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002154:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002158:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00215c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002160:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002164:	001531ac 	or	$r12,$r13,$r12
1c002168:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00216c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002170:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002174:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002178:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00217c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002180:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002184:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c002188:	001531ac 	or	$r12,$r13,$r12
1c00218c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002190:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002194:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002198:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00219c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0021a8:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0021ac:	001531ac 	or	$r12,$r13,$r12
1c0021b0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021b8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0021bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021c0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021c4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021c8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0021cc:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0021d0:	001531ac 	or	$r12,$r13,$r12
1c0021d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021dc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0021e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021e4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021ec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0021f0:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c0021f4:	001531ac 	or	$r12,$r13,$r12
1c0021f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002200:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002204:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002208:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00220c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002210:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002214:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002218:	001531ac 	or	$r12,$r13,$r12
1c00221c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002220:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002224:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002228:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00222c:	2a00018c 	ld.bu	$r12,$r12,0
1c002230:	03400000 	andi	$r0,$r0,0x0
1c002234:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002238:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00223c:	4c000020 	jirl	$r0,$r1,0

1c002240 <UART_StructInit>:
UART_StructInit():
1c002240:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002244:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002248:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00224c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002250:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002254:	1400038d 	lu12i.w	$r13,28(0x1c)
1c002258:	038801ad 	ori	$r13,$r13,0x200
1c00225c:	2980018d 	st.w	$r13,$r12,0
1c002260:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002264:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002268:	038801ad 	ori	$r13,$r13,0x200
1c00226c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002270:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002274:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002278:	2900298d 	st.b	$r13,$r12,10(0xa)
1c00227c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002280:	29002d80 	st.b	$r0,$r12,11(0xb)
1c002284:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002288:	29003580 	st.b	$r0,$r12,13(0xd)
1c00228c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002290:	29003180 	st.b	$r0,$r12,12(0xc)
1c002294:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002298:	29003d80 	st.b	$r0,$r12,15(0xf)
1c00229c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a0:	29003980 	st.b	$r0,$r12,14(0xe)
1c0022a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a8:	29402180 	st.h	$r0,$r12,8(0x8)
1c0022ac:	03400000 	andi	$r0,$r0,0x0
1c0022b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0022b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022b8:	4c000020 	jirl	$r0,$r1,0

1c0022bc <UART_ITConfig>:
UART_ITConfig():
1c0022bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022c0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0022c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022c8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0022cc:	001500ac 	move	$r12,$r5
1c0022d0:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0022d4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0022d8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0022dc:	40002980 	beqz	$r12,40(0x28) # 1c002304 <UART_ITConfig+0x48>
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0022e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0022ec:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0022f0:	001531ac 	or	$r12,$r13,$r12
1c0022f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0022f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022fc:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002300:	50003400 	b	52(0x34) # 1c002334 <UART_ITConfig+0x78>
1c002304:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002308:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00230c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002310:	00005d8d 	ext.w.b	$r13,$r12
1c002314:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002318:	0014300c 	nor	$r12,$r0,$r12
1c00231c:	00005d8c 	ext.w.b	$r12,$r12
1c002320:	0014b1ac 	and	$r12,$r13,$r12
1c002324:	00005d8c 	ext.w.b	$r12,$r12
1c002328:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00232c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002330:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002334:	03400000 	andi	$r0,$r0,0x0
1c002338:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00233c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002340:	4c000020 	jirl	$r0,$r1,0

1c002344 <UART_SendData>:
UART_SendData():
1c002344:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002348:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00234c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002350:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002354:	001500ac 	move	$r12,$r5
1c002358:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00235c:	03400000 	andi	$r0,$r0,0x0
1c002360:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002364:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002368:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00236c:	0340818c 	andi	$r12,$r12,0x20
1c002370:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002360 <UART_SendData+0x1c>
1c002374:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002378:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00237c:	2900018d 	st.b	$r13,$r12,0
1c002380:	03400000 	andi	$r0,$r0,0x0
1c002384:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002388:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00238c:	4c000020 	jirl	$r0,$r1,0

1c002390 <UART_SendDataALL>:
UART_SendDataALL():
1c002390:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002394:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002398:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00239c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0023a0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0023a4:	001500cc 	move	$r12,$r6
1c0023a8:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0023ac:	50004400 	b	68(0x44) # 1c0023f0 <UART_SendDataALL+0x60>
1c0023b0:	03400000 	andi	$r0,$r0,0x0
1c0023b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023b8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0023bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023c0:	0340818c 	andi	$r12,$r12,0x20
1c0023c4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0023b4 <UART_SendDataALL+0x24>
1c0023c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0023d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d4:	2900018d 	st.b	$r13,$r12,0
1c0023d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023e4:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c0023e8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0023ec:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0023f0:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c0023f4:	47ffbd9f 	bnez	$r12,-68(0x7fffbc) # 1c0023b0 <UART_SendDataALL+0x20>
1c0023f8:	03400000 	andi	$r0,$r0,0x0
1c0023fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002400:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002404:	4c000020 	jirl	$r0,$r1,0

1c002408 <UART_ReceiveData>:
UART_ReceiveData():
1c002408:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00240c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002410:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002414:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002418:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00241c:	03400000 	andi	$r0,$r0,0x0
1c002420:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002424:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002428:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00242c:	0340058c 	andi	$r12,$r12,0x1
1c002430:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002420 <UART_ReceiveData+0x18>
1c002434:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002438:	2a00018c 	ld.bu	$r12,$r12,0
1c00243c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002440:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002444:	00150184 	move	$r4,$r12
1c002448:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00244c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002450:	4c000020 	jirl	$r0,$r1,0

1c002454 <Uart0_init>:
Uart0_init():
1c002454:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002458:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00245c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002460:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002464:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002468:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00246c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002470:	57f1f3ff 	bl	-3600(0xffff1f0) # 1c001660 <gpio_pin_remap>
1c002474:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002478:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c00247c:	57f1e7ff 	bl	-3612(0xffff1e4) # 1c001660 <gpio_pin_remap>
1c002480:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002484:	00150184 	move	$r4,$r12
1c002488:	57fdbbff 	bl	-584(0xffffdb8) # 1c002240 <UART_StructInit>
1c00248c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002490:	28ae018c 	ld.w	$r12,$r12,-1152(0xb80)
1c002494:	2880018c 	ld.w	$r12,$r12,0
1c002498:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00249c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024a0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0024a4:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0024a8:	00150185 	move	$r5,$r12
1c0024ac:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0024b0:	57fa97ff 	bl	-1388(0xffffa94) # 1c001f44 <UART_Init>
1c0024b4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0024b8:	0380098c 	ori	$r12,$r12,0x2
1c0024bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0024c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0024c4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0024c8:	0380098c 	ori	$r12,$r12,0x2
1c0024cc:	038021ad 	ori	$r13,$r13,0x8
1c0024d0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0024d4:	2900018d 	st.b	$r13,$r12,0
1c0024d8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0024dc:	2a00018c 	ld.bu	$r12,$r12,0
1c0024e0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0024e4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0024e8:	038021ad 	ori	$r13,$r13,0x8
1c0024ec:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0024f0:	2900018d 	st.b	$r13,$r12,0
1c0024f4:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0024f8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0024fc:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002500:	57fdbfff 	bl	-580(0xffffdbc) # 1c0022bc <UART_ITConfig>
1c002504:	03400000 	andi	$r0,$r0,0x0
1c002508:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00250c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002510:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002514:	4c000020 	jirl	$r0,$r1,0

1c002518 <Uart1_init>:
Uart1_init():
1c002518:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00251c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002520:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002524:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002528:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00252c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002530:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002534:	57f12fff 	bl	-3796(0xffff12c) # 1c001660 <gpio_pin_remap>
1c002538:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00253c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002540:	57f123ff 	bl	-3808(0xffff120) # 1c001660 <gpio_pin_remap>
1c002544:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002548:	00150184 	move	$r4,$r12
1c00254c:	57fcf7ff 	bl	-780(0xffffcf4) # 1c002240 <UART_StructInit>
1c002550:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002554:	28aaf18c 	ld.w	$r12,$r12,-1348(0xabc)
1c002558:	2880018c 	ld.w	$r12,$r12,0
1c00255c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002560:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002564:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002568:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00256c:	00150185 	move	$r5,$r12
1c002570:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002574:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c001f44 <UART_Init>
1c002578:	00150006 	move	$r6,$r0
1c00257c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002580:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002584:	57fd3bff 	bl	-712(0xffffd38) # 1c0022bc <UART_ITConfig>
1c002588:	03400000 	andi	$r0,$r0,0x0
1c00258c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002590:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002594:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002598:	4c000020 	jirl	$r0,$r1,0

1c00259c <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c00259c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0025a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0025a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0025a8:	1400006c 	lu12i.w	$r12,3(0x3)
1c0025ac:	03ba018c 	ori	$r12,$r12,0xe80
1c0025b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0025b4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025bc:	2880018d 	ld.w	$r13,$r12,0
1c0025c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025c4:	038101ad 	ori	$r13,$r13,0x40
1c0025c8:	2980018d 	st.w	$r13,$r12,0
1c0025cc:	03400000 	andi	$r0,$r0,0x0
1c0025d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025d4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0025d8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0025dc:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c0025d0 <CLOCK_WaitForHSEStartUp+0x34>
1c0025e0:	50001c00 	b	28(0x1c) # 1c0025fc <CLOCK_WaitForHSEStartUp+0x60>
1c0025e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025e8:	2880018e 	ld.w	$r14,$r12,0
1c0025ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025f0:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c0025f4:	0014b5cd 	and	$r13,$r14,$r13
1c0025f8:	2980018d 	st.w	$r13,$r12,0
1c0025fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002600:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002604:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c0025e4 <CLOCK_WaitForHSEStartUp+0x48>
1c002608:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00260c:	2880018d 	ld.w	$r13,$r12,0
1c002610:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002614:	038201ad 	ori	$r13,$r13,0x80
1c002618:	2980018d 	st.w	$r13,$r12,0
1c00261c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002620:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002624:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002628:	00150184 	move	$r4,$r12
1c00262c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002630:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002634:	4c000020 	jirl	$r0,$r1,0

1c002638 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002638:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00263c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002640:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002644:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002648:	50008800 	b	136(0x88) # 1c0026d0 <CLOCK_WaitForLSEStartUp+0x98>
1c00264c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002650:	2880018e 	ld.w	$r14,$r12,0
1c002654:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002658:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c00265c:	0014b5cd 	and	$r13,$r14,$r13
1c002660:	2980018d 	st.w	$r13,$r12,0
1c002664:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002668:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00266c:	50001400 	b	20(0x14) # 1c002680 <CLOCK_WaitForLSEStartUp+0x48>
1c002670:	03400000 	andi	$r0,$r0,0x0
1c002674:	03400000 	andi	$r0,$r0,0x0
1c002678:	03400000 	andi	$r0,$r0,0x0
1c00267c:	03400000 	andi	$r0,$r0,0x0
1c002680:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002684:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002688:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00268c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002670 <CLOCK_WaitForLSEStartUp+0x38>
1c002690:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002694:	2880018d 	ld.w	$r13,$r12,0
1c002698:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00269c:	038081ad 	ori	$r13,$r13,0x20
1c0026a0:	2980018d 	st.w	$r13,$r12,0
1c0026a4:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c0026a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026ac:	50001400 	b	20(0x14) # 1c0026c0 <CLOCK_WaitForLSEStartUp+0x88>
1c0026b0:	03400000 	andi	$r0,$r0,0x0
1c0026b4:	03400000 	andi	$r0,$r0,0x0
1c0026b8:	03400000 	andi	$r0,$r0,0x0
1c0026bc:	03400000 	andi	$r0,$r0,0x0
1c0026c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026c4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0026c8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0026cc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0026b0 <CLOCK_WaitForLSEStartUp+0x78>
1c0026d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026d4:	0380118c 	ori	$r12,$r12,0x4
1c0026d8:	2880018d 	ld.w	$r13,$r12,0
1c0026dc:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c0026e0:	0014b1ac 	and	$r12,$r13,$r12
1c0026e4:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c00264c <CLOCK_WaitForLSEStartUp+0x14>
1c0026e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026ec:	0380118c 	ori	$r12,$r12,0x4
1c0026f0:	2880018d 	ld.w	$r13,$r12,0
1c0026f4:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c0026f8:	0014b1ac 	and	$r12,$r13,$r12
1c0026fc:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c00264c <CLOCK_WaitForLSEStartUp+0x14>
1c002700:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002704:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002708:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00270c:	00150184 	move	$r4,$r12
1c002710:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002714:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002718:	4c000020 	jirl	$r0,$r1,0

1c00271c <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c00271c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002720:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002724:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002728:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00272c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002730:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002734:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002738:	2880018e 	ld.w	$r14,$r12,0
1c00273c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002740:	0014300d 	nor	$r13,$r0,$r12
1c002744:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002748:	0014b5cd 	and	$r13,$r14,$r13
1c00274c:	2980018d 	st.w	$r13,$r12,0
1c002750:	1400002c 	lu12i.w	$r12,1(0x1)
1c002754:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002758:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00275c:	50001400 	b	20(0x14) # 1c002770 <CLOCK_HSEConfig+0x54>
1c002760:	03400000 	andi	$r0,$r0,0x0
1c002764:	03400000 	andi	$r0,$r0,0x0
1c002768:	03400000 	andi	$r0,$r0,0x0
1c00276c:	03400000 	andi	$r0,$r0,0x0
1c002770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002774:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002778:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00277c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002760 <CLOCK_HSEConfig+0x44>
1c002780:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002784:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002788:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002798 <CLOCK_HSEConfig+0x7c>
1c00278c:	57fe13ff 	bl	-496(0xffffe10) # 1c00259c <CLOCK_WaitForHSEStartUp>
1c002790:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002794:	50002400 	b	36(0x24) # 1c0027b8 <CLOCK_HSEConfig+0x9c>
1c002798:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00279c:	2880018e 	ld.w	$r14,$r12,0
1c0027a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027a4:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c0027a8:	0014b5cd 	and	$r13,$r14,$r13
1c0027ac:	2980018d 	st.w	$r13,$r12,0
1c0027b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0027b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0027b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027bc:	00150184 	move	$r4,$r12
1c0027c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0027c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0027c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027cc:	4c000020 	jirl	$r0,$r1,0

1c0027d0 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c0027d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0027d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0027d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0027dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0027e0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0027e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0027e8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0027ec:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0027f0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002800 <CLOCK_LSEConfig+0x30>
1c0027f4:	57fe47ff 	bl	-444(0xffffe44) # 1c002638 <CLOCK_WaitForLSEStartUp>
1c0027f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027fc:	50002400 	b	36(0x24) # 1c002820 <CLOCK_LSEConfig+0x50>
1c002800:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002804:	2880018e 	ld.w	$r14,$r12,0
1c002808:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00280c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002810:	0014b5cd 	and	$r13,$r14,$r13
1c002814:	2980018d 	st.w	$r13,$r12,0
1c002818:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00281c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002820:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002824:	00150184 	move	$r4,$r12
1c002828:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00282c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002830:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002834:	4c000020 	jirl	$r0,$r1,0

1c002838 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002838:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00283c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002840:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002844:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002848:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00284c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002850:	2980018d 	st.w	$r13,$r12,0
1c002854:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002858:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c00285c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002860:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002864:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002868:	2980218d 	st.w	$r13,$r12,8(0x8)
1c00286c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002870:	29803180 	st.w	$r0,$r12,12(0xc)
1c002874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002878:	29804180 	st.w	$r0,$r12,16(0x10)
1c00287c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002880:	29805180 	st.w	$r0,$r12,20(0x14)
1c002884:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002888:	29806180 	st.w	$r0,$r12,24(0x18)
1c00288c:	03400000 	andi	$r0,$r0,0x0
1c002890:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002894:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002898:	4c000020 	jirl	$r0,$r1,0

1c00289c <CLOCK_Init>:
CLOCK_Init():
1c00289c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028a0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0028a4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0028a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0028b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028b8:	2880018e 	ld.w	$r14,$r12,0
1c0028bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028c0:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c0028c4:	0014b5cd 	and	$r13,$r14,$r13
1c0028c8:	2980018d 	st.w	$r13,$r12,0
1c0028cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028d0:	2880018e 	ld.w	$r14,$r12,0
1c0028d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028d8:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0028dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028e0:	001535cd 	or	$r13,$r14,$r13
1c0028e4:	2980018d 	st.w	$r13,$r12,0
1c0028e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028ec:	2880018e 	ld.w	$r14,$r12,0
1c0028f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028f4:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c0028f8:	0014b5cd 	and	$r13,$r14,$r13
1c0028fc:	2980018d 	st.w	$r13,$r12,0
1c002900:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002904:	2880018e 	ld.w	$r14,$r12,0
1c002908:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00290c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002910:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002914:	001535cd 	or	$r13,$r14,$r13
1c002918:	2980018d 	st.w	$r13,$r12,0
1c00291c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002920:	2880018e 	ld.w	$r14,$r12,0
1c002924:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002928:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c00292c:	039ffdad 	ori	$r13,$r13,0x7ff
1c002930:	0014b5cd 	and	$r13,$r14,$r13
1c002934:	2980018d 	st.w	$r13,$r12,0
1c002938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00293c:	2880018e 	ld.w	$r14,$r12,0
1c002940:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002944:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00294c:	001535cd 	or	$r13,$r14,$r13
1c002950:	2980018d 	st.w	$r13,$r12,0
1c002954:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002958:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00295c:	00150184 	move	$r4,$r12
1c002960:	57fdbfff 	bl	-580(0xffffdbc) # 1c00271c <CLOCK_HSEConfig>
1c002964:	0015008d 	move	$r13,$r4
1c002968:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00296c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002978 <CLOCK_Init+0xdc>
1c002970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002974:	50015000 	b	336(0x150) # 1c002ac4 <CLOCK_Init+0x228>
1c002978:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00297c:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002980:	00150184 	move	$r4,$r12
1c002984:	57fe4fff 	bl	-436(0xffffe4c) # 1c0027d0 <CLOCK_LSEConfig>
1c002988:	0015008d 	move	$r13,$r4
1c00298c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002990:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00299c <CLOCK_Init+0x100>
1c002994:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002998:	50012c00 	b	300(0x12c) # 1c002ac4 <CLOCK_Init+0x228>
1c00299c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0029a0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0029a4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0029a8:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002aa4 <CLOCK_Init+0x208>
1c0029ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0029b0:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c0029b4:	4000a180 	beqz	$r12,160(0xa0) # 1c002a54 <CLOCK_Init+0x1b8>
1c0029b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029bc:	2880018e 	ld.w	$r14,$r12,0
1c0029c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029c4:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c0029c8:	03bffdad 	ori	$r13,$r13,0xfff
1c0029cc:	0014b5cd 	and	$r13,$r14,$r13
1c0029d0:	2980018d 	st.w	$r13,$r12,0
1c0029d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029d8:	2880018e 	ld.w	$r14,$r12,0
1c0029dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0029e0:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c0029e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029e8:	001535cd 	or	$r13,$r14,$r13
1c0029ec:	2980018d 	st.w	$r13,$r12,0
1c0029f0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0029f4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0029f8:	2880018c 	ld.w	$r12,$r12,0
1c0029fc:	40004180 	beqz	$r12,64(0x40) # 1c002a3c <CLOCK_Init+0x1a0>
1c002a00:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002a04:	0386c18c 	ori	$r12,$r12,0x1b0
1c002a08:	2880018c 	ld.w	$r12,$r12,0
1c002a0c:	0040898e 	slli.w	$r14,$r12,0x2
1c002a10:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002a14:	002031cd 	div.w	$r13,$r14,$r12
1c002a18:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002a20 <CLOCK_Init+0x184>
1c002a1c:	002a0007 	break	0x7
1c002a20:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002a24:	001c31ac 	mul.w	$r12,$r13,$r12
1c002a28:	0015018d 	move	$r13,$r12
1c002a2c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a30:	0297d18c 	addi.w	$r12,$r12,1524(0x5f4)
1c002a34:	2980018d 	st.w	$r13,$r12,0
1c002a38:	50008000 	b	128(0x80) # 1c002ab8 <CLOCK_Init+0x21c>
1c002a3c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a40:	0297918c 	addi.w	$r12,$r12,1508(0x5e4)
1c002a44:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002a48:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002a4c:	2980018d 	st.w	$r13,$r12,0
1c002a50:	50006800 	b	104(0x68) # 1c002ab8 <CLOCK_Init+0x21c>
1c002a54:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002a58:	0386c18c 	ori	$r12,$r12,0x1b0
1c002a5c:	2880018c 	ld.w	$r12,$r12,0
1c002a60:	40002d80 	beqz	$r12,44(0x2c) # 1c002a8c <CLOCK_Init+0x1f0>
1c002a64:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002a68:	0386c18c 	ori	$r12,$r12,0x1b0
1c002a6c:	2880018d 	ld.w	$r13,$r12,0
1c002a70:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002a74:	001c31ac 	mul.w	$r12,$r13,$r12
1c002a78:	0015018d 	move	$r13,$r12
1c002a7c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a80:	0296918c 	addi.w	$r12,$r12,1444(0x5a4)
1c002a84:	2980018d 	st.w	$r13,$r12,0
1c002a88:	50003000 	b	48(0x30) # 1c002ab8 <CLOCK_Init+0x21c>
1c002a8c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a90:	0296518c 	addi.w	$r12,$r12,1428(0x594)
1c002a94:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002a98:	038801ad 	ori	$r13,$r13,0x200
1c002a9c:	2980018d 	st.w	$r13,$r12,0
1c002aa0:	50001800 	b	24(0x18) # 1c002ab8 <CLOCK_Init+0x21c>
1c002aa4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002aa8:	0295f18c 	addi.w	$r12,$r12,1404(0x57c)
1c002aac:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002ab0:	038801ad 	ori	$r13,$r13,0x200
1c002ab4:	2980018d 	st.w	$r13,$r12,0
1c002ab8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002abc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ac4:	00150184 	move	$r4,$r12
1c002ac8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002acc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ad0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ad4:	4c000020 	jirl	$r0,$r1,0

1c002ad8 <SystemClockInit>:
SystemClockInit():
1c002ad8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002adc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ae0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ae4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ae8:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c002aec:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002af0:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002af4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002af8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002afc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b00:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002b04:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002b08:	00150184 	move	$r4,$r12
1c002b0c:	57fd2fff 	bl	-724(0xffffd2c) # 1c002838 <CLOCK_StructInit>
1c002b10:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002b14:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c002b18:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002b1c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002b20:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002b24:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002b28:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002b2c:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c002b30:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002b34:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b38:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002b3c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002b40:	00150184 	move	$r4,$r12
1c002b44:	57fd5bff 	bl	-680(0xffffd58) # 1c00289c <CLOCK_Init>
1c002b48:	0015008d 	move	$r13,$r4
1c002b4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b50:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002b5c <SystemClockInit+0x84>
1c002b54:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002b58:	50000800 	b	8(0x8) # 1c002b60 <SystemClockInit+0x88>
1c002b5c:	0015000c 	move	$r12,$r0
1c002b60:	00150184 	move	$r4,$r12
1c002b64:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b68:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b70:	4c000020 	jirl	$r0,$r1,0

1c002b74 <DisableInt>:
DisableInt():
1c002b74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b78:	29803076 	st.w	$r22,$r3,12(0xc)
1c002b7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b80:	0380100c 	ori	$r12,$r0,0x4
1c002b84:	04000180 	csrxchg	$r0,$r12,0x0
1c002b88:	03400000 	andi	$r0,$r0,0x0
1c002b8c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002b90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b94:	4c000020 	jirl	$r0,$r1,0

1c002b98 <EnableInt>:
EnableInt():
1c002b98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b9c:	29803076 	st.w	$r22,$r3,12(0xc)
1c002ba0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002ba4:	0380100c 	ori	$r12,$r0,0x4
1c002ba8:	0400018c 	csrxchg	$r12,$r12,0x0
1c002bac:	03400000 	andi	$r0,$r0,0x0
1c002bb0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002bb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002bb8:	4c000020 	jirl	$r0,$r1,0

1c002bbc <Set_Timer_stop>:
Set_Timer_stop():
1c002bbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002bc0:	29803076 	st.w	$r22,$r3,12(0xc)
1c002bc4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002bc8:	04010420 	csrwr	$r0,0x41
1c002bcc:	03400000 	andi	$r0,$r0,0x0
1c002bd0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002bd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002bd8:	4c000020 	jirl	$r0,$r1,0

1c002bdc <Set_Timer_clear>:
Set_Timer_clear():
1c002bdc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002be0:	29803076 	st.w	$r22,$r3,12(0xc)
1c002be4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002be8:	0380040c 	ori	$r12,$r0,0x1
1c002bec:	0401102c 	csrwr	$r12,0x44
1c002bf0:	03400000 	andi	$r0,$r0,0x0
1c002bf4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002bf8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002bfc:	4c000020 	jirl	$r0,$r1,0

1c002c00 <Wake_Set>:
Wake_Set():
1c002c00:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c04:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002c08:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c0c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002c10:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c14:	40006980 	beqz	$r12,104(0x68) # 1c002c7c <Wake_Set+0x7c>
1c002c18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c1c:	0040a18c 	slli.w	$r12,$r12,0x8
1c002c20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c24:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c2c:	0380218c 	ori	$r12,$r12,0x8
1c002c30:	2880018d 	ld.w	$r13,$r12,0
1c002c34:	14001fec 	lu12i.w	$r12,255(0xff)
1c002c38:	03bffd8c 	ori	$r12,$r12,0xfff
1c002c3c:	0014b1ac 	and	$r12,$r13,$r12
1c002c40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002c44:	001031ac 	add.w	$r12,$r13,$r12
1c002c48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c50:	0380318c 	ori	$r12,$r12,0xc
1c002c54:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002c58:	2980018d 	st.w	$r13,$r12,0
1c002c5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c60:	0380118c 	ori	$r12,$r12,0x4
1c002c64:	2880018d 	ld.w	$r13,$r12,0
1c002c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c6c:	0380118c 	ori	$r12,$r12,0x4
1c002c70:	038601ad 	ori	$r13,$r13,0x180
1c002c74:	2980018d 	st.w	$r13,$r12,0
1c002c78:	50002400 	b	36(0x24) # 1c002c9c <Wake_Set+0x9c>
1c002c7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c80:	0380118c 	ori	$r12,$r12,0x4
1c002c84:	2880018e 	ld.w	$r14,$r12,0
1c002c88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c8c:	0380118c 	ori	$r12,$r12,0x4
1c002c90:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c002c94:	0014b5cd 	and	$r13,$r14,$r13
1c002c98:	2980018d 	st.w	$r13,$r12,0
1c002c9c:	03400000 	andi	$r0,$r0,0x0
1c002ca0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002ca4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ca8:	4c000020 	jirl	$r0,$r1,0

1c002cac <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c002cac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002cb0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002cb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002cb8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cc0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002cc4:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002cc8:	0014b1ac 	and	$r12,$r13,$r12
1c002ccc:	44000d80 	bnez	$r12,12(0xc) # 1c002cd8 <PMU_GetRstRrc+0x2c>
1c002cd0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cd4:	50003000 	b	48(0x30) # 1c002d04 <PMU_GetRstRrc+0x58>
1c002cd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cdc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ce0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002ce4:	0014b1ad 	and	$r13,$r13,$r12
1c002ce8:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002cec:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002cfc <PMU_GetRstRrc+0x50>
1c002cf0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002cf4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cf8:	50000c00 	b	12(0xc) # 1c002d04 <PMU_GetRstRrc+0x58>
1c002cfc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d08:	00150184 	move	$r4,$r12
1c002d0c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d10:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d14:	4c000020 	jirl	$r0,$r1,0

1c002d18 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c002d18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d1c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d28:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002d2c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002d30:	0380198c 	ori	$r12,$r12,0x6
1c002d34:	2a00018c 	ld.bu	$r12,$r12,0
1c002d38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d44:	0340058c 	andi	$r12,$r12,0x1
1c002d48:	40000d80 	beqz	$r12,12(0xc) # 1c002d54 <PMU_GetBootSpiStatus+0x3c>
1c002d4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d50:	50000800 	b	8(0x8) # 1c002d58 <PMU_GetBootSpiStatus+0x40>
1c002d54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d58:	00150184 	move	$r4,$r12
1c002d5c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d60:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d64:	4c000020 	jirl	$r0,$r1,0

1c002d68 <ls1x_logo>:
ls1x_logo():
1c002d68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002d6c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002d70:	29802076 	st.w	$r22,$r3,8(0x8)
1c002d74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002d78:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d7c:	02853084 	addi.w	$r4,$r4,332(0x14c)
1c002d80:	57ee23ff 	bl	-4576(0xfffee20) # 1c001ba0 <myprintf>
1c002d84:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d88:	02851084 	addi.w	$r4,$r4,324(0x144)
1c002d8c:	57ee17ff 	bl	-4588(0xfffee14) # 1c001ba0 <myprintf>
1c002d90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d94:	02867084 	addi.w	$r4,$r4,412(0x19c)
1c002d98:	57ee0bff 	bl	-4600(0xfffee08) # 1c001ba0 <myprintf>
1c002d9c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002da0:	0287d084 	addi.w	$r4,$r4,500(0x1f4)
1c002da4:	57edffff 	bl	-4612(0xfffedfc) # 1c001ba0 <myprintf>
1c002da8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002dac:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c002db0:	57edf3ff 	bl	-4624(0xfffedf0) # 1c001ba0 <myprintf>
1c002db4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002db8:	028a9084 	addi.w	$r4,$r4,676(0x2a4)
1c002dbc:	57ede7ff 	bl	-4636(0xfffede4) # 1c001ba0 <myprintf>
1c002dc0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002dc4:	028bf084 	addi.w	$r4,$r4,764(0x2fc)
1c002dc8:	57eddbff 	bl	-4648(0xfffedd8) # 1c001ba0 <myprintf>
1c002dcc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002dd0:	028d5084 	addi.w	$r4,$r4,852(0x354)
1c002dd4:	57edcfff 	bl	-4660(0xfffedcc) # 1c001ba0 <myprintf>
1c002dd8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002ddc:	028eb084 	addi.w	$r4,$r4,940(0x3ac)
1c002de0:	57edc3ff 	bl	-4672(0xfffedc0) # 1c001ba0 <myprintf>
1c002de4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002de8:	02901084 	addi.w	$r4,$r4,1028(0x404)
1c002dec:	57edb7ff 	bl	-4684(0xfffedb4) # 1c001ba0 <myprintf>
1c002df0:	03400000 	andi	$r0,$r0,0x0
1c002df4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002df8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002dfc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002e00:	4c000020 	jirl	$r0,$r1,0

1c002e04 <get_count>:
get_count():
1c002e04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e08:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e10:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e14:	0000600c 	rdtimel.w	$r12,$r0
1c002e18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e20:	00150184 	move	$r4,$r12
1c002e24:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002e28:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e2c:	4c000020 	jirl	$r0,$r1,0

1c002e30 <open_count>:
open_count():
1c002e30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002e34:	29803076 	st.w	$r22,$r3,12(0xc)
1c002e38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002e3c:	0380400c 	ori	$r12,$r0,0x10
1c002e40:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c002e44:	03400000 	andi	$r0,$r0,0x0
1c002e48:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002e4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002e50:	4c000020 	jirl	$r0,$r1,0

1c002e54 <start_count>:
start_count():
1c002e54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e58:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002e5c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002e60:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e64:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e6c:	29800180 	st.w	$r0,$r12,0
1c002e70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e74:	29801180 	st.w	$r0,$r12,4(0x4)
1c002e78:	57ff8fff 	bl	-116(0xfffff8c) # 1c002e04 <get_count>
1c002e7c:	0015008d 	move	$r13,$r4
1c002e80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e84:	2980018d 	st.w	$r13,$r12,0
1c002e88:	03400000 	andi	$r0,$r0,0x0
1c002e8c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002e90:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002e94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e98:	4c000020 	jirl	$r0,$r1,0

1c002e9c <stop_count>:
stop_count():
1c002e9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ea0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ea4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ea8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002eac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002eb0:	57ff57ff 	bl	-172(0xfffff54) # 1c002e04 <get_count>
1c002eb4:	0015008d 	move	$r13,$r4
1c002eb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ebc:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002ec0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ec4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ec8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ecc:	2880018c 	ld.w	$r12,$r12,0
1c002ed0:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c002eec <stop_count+0x50>
1c002ed4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ed8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002edc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ee0:	2880018c 	ld.w	$r12,$r12,0
1c002ee4:	001131ac 	sub.w	$r12,$r13,$r12
1c002ee8:	50002800 	b	40(0x28) # 1c002f10 <stop_count+0x74>
1c002eec:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002ef0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ef4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ef8:	2880018c 	ld.w	$r12,$r12,0
1c002efc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f00:	001131ad 	sub.w	$r13,$r13,$r12
1c002f04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f08:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002f0c:	001031ac 	add.w	$r12,$r13,$r12
1c002f10:	00150184 	move	$r4,$r12
1c002f14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002f18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002f1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f20:	4c000020 	jirl	$r0,$r1,0

1c002f24 <delay_cycle>:
delay_cycle():
1c002f24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002f28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002f2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002f30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f38:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f3c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002f40:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002f44:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002f48:	00150184 	move	$r4,$r12
1c002f4c:	57ff0bff 	bl	-248(0xfffff08) # 1c002e54 <start_count>
1c002f50:	50001400 	b	20(0x14) # 1c002f64 <delay_cycle+0x40>
1c002f54:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002f58:	00150184 	move	$r4,$r12
1c002f5c:	57ff43ff 	bl	-192(0xfffff40) # 1c002e9c <stop_count>
1c002f60:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002f64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f6c:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c002f54 <delay_cycle+0x30>
1c002f70:	03400000 	andi	$r0,$r0,0x0
1c002f74:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002f78:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002f7c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f80:	4c000020 	jirl	$r0,$r1,0

1c002f84 <delay_us>:
delay_us():
1c002f84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002f88:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002f8c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002f90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002f94:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002f98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f9c:	00408d8c 	slli.w	$r12,$r12,0x3
1c002fa0:	00150184 	move	$r4,$r12
1c002fa4:	57ff83ff 	bl	-128(0xfffff80) # 1c002f24 <delay_cycle>
1c002fa8:	03400000 	andi	$r0,$r0,0x0
1c002fac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002fb0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002fb4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002fb8:	4c000020 	jirl	$r0,$r1,0

1c002fbc <delay_ms>:
delay_ms():
1c002fbc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002fc0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002fc4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002fc8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002fcc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002fd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002fd4:	1400002c 	lu12i.w	$r12,1(0x1)
1c002fd8:	03bd018c 	ori	$r12,$r12,0xf40
1c002fdc:	001c31ac 	mul.w	$r12,$r13,$r12
1c002fe0:	00150184 	move	$r4,$r12
1c002fe4:	57ff43ff 	bl	-192(0xfffff40) # 1c002f24 <delay_cycle>
1c002fe8:	03400000 	andi	$r0,$r0,0x0
1c002fec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ff0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002ff4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ff8:	4c000020 	jirl	$r0,$r1,0

1c002ffc <memset>:
memset():
1c002ffc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003000:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003004:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003008:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00300c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003010:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003014:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003018:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00301c:	50001c00 	b	28(0x1c) # 1c003038 <memset+0x3c>
1c003020:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003024:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003028:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00302c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003030:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003034:	2900018d 	st.b	$r13,$r12,0
1c003038:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00303c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003040:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003044:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003020 <memset+0x24>
1c003048:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00304c:	00150184 	move	$r4,$r12
1c003050:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003054:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003058:	4c000020 	jirl	$r0,$r1,0

1c00305c <pstrstr>:
pstrstr():
1c00305c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003060:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003064:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003068:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00306c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003070:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003074:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003078:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00307c:	2800018c 	ld.b	$r12,$r12,0
1c003080:	44008580 	bnez	$r12,132(0x84) # 1c003104 <pstrstr+0xa8>
1c003084:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003088:	50008c00 	b	140(0x8c) # 1c003114 <pstrstr+0xb8>
1c00308c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003090:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003094:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003098:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00309c:	50001c00 	b	28(0x1c) # 1c0030b8 <pstrstr+0x5c>
1c0030a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0030ac:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0030b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030b4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030bc:	2800018c 	ld.b	$r12,$r12,0
1c0030c0:	40002580 	beqz	$r12,36(0x24) # 1c0030e4 <pstrstr+0x88>
1c0030c4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0030c8:	2800018c 	ld.b	$r12,$r12,0
1c0030cc:	40001980 	beqz	$r12,24(0x18) # 1c0030e4 <pstrstr+0x88>
1c0030d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030d4:	2800018d 	ld.b	$r13,$r12,0
1c0030d8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0030dc:	2800018c 	ld.b	$r12,$r12,0
1c0030e0:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c0030a0 <pstrstr+0x44>
1c0030e4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0030e8:	2800018c 	ld.b	$r12,$r12,0
1c0030ec:	44000d80 	bnez	$r12,12(0xc) # 1c0030f8 <pstrstr+0x9c>
1c0030f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030f4:	50002000 	b	32(0x20) # 1c003114 <pstrstr+0xb8>
1c0030f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003100:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003104:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003108:	2800018c 	ld.b	$r12,$r12,0
1c00310c:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c00308c <pstrstr+0x30>
1c003110:	0015000c 	move	$r12,$r0
1c003114:	00150184 	move	$r4,$r12
1c003118:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00311c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003120:	4c000020 	jirl	$r0,$r1,0

1c003124 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003124:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003128:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00312c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003130:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003134:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003138:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00313c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003140:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003144:	001531ad 	or	$r13,$r13,$r12
1c003148:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00314c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003150:	03400000 	andi	$r0,$r0,0x0
1c003154:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003158:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00315c:	4c000020 	jirl	$r0,$r1,0

1c003160 <WDG_getOddValue>:
WDG_getOddValue():
1c003160:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003164:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003168:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00316c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003174:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003178:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00317c:	50003800 	b	56(0x38) # 1c0031b4 <WDG_getOddValue+0x54>
1c003180:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003188:	001731ac 	sll.w	$r12,$r13,$r12
1c00318c:	0015018d 	move	$r13,$r12
1c003190:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003194:	0014b1ac 	and	$r12,$r13,$r12
1c003198:	40001180 	beqz	$r12,16(0x10) # 1c0031a8 <WDG_getOddValue+0x48>
1c00319c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0031a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0031a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0031a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0031b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0031b8:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0031bc:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003180 <WDG_getOddValue+0x20>
1c0031c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0031c4:	0340058c 	andi	$r12,$r12,0x1
1c0031c8:	44000d80 	bnez	$r12,12(0xc) # 1c0031d4 <WDG_getOddValue+0x74>
1c0031cc:	1400010c 	lu12i.w	$r12,8(0x8)
1c0031d0:	50000800 	b	8(0x8) # 1c0031d8 <WDG_getOddValue+0x78>
1c0031d4:	0015000c 	move	$r12,$r0
1c0031d8:	00150184 	move	$r4,$r12
1c0031dc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0031e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031e4:	4c000020 	jirl	$r0,$r1,0

1c0031e8 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0031e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0031f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0031f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0031fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003200:	140000ec 	lu12i.w	$r12,7(0x7)
1c003204:	03bffd8c 	ori	$r12,$r12,0xfff
1c003208:	0014b1ac 	and	$r12,$r13,$r12
1c00320c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003210:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003214:	57ff4fff 	bl	-180(0xfffff4c) # 1c003160 <WDG_getOddValue>
1c003218:	0015008c 	move	$r12,$r4
1c00321c:	0015018d 	move	$r13,$r12
1c003220:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003224:	0015358c 	or	$r12,$r12,$r13
1c003228:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00322c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003230:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003234:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003238:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00323c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003240:	0014300c 	nor	$r12,$r0,$r12
1c003244:	0040c18c 	slli.w	$r12,$r12,0x10
1c003248:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00324c:	001531ac 	or	$r12,$r13,$r12
1c003250:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003254:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003258:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00325c:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003260:	03400000 	andi	$r0,$r0,0x0
1c003264:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003268:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00326c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003270:	4c000020 	jirl	$r0,$r1,0

1c003274 <WDG_DogFeed>:
WDG_DogFeed():
1c003274:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003278:	29803076 	st.w	$r22,$r3,12(0xc)
1c00327c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003280:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003284:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003288:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00328c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003290:	03400000 	andi	$r0,$r0,0x0
1c003294:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003298:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00329c:	4c000020 	jirl	$r0,$r1,0

1c0032a0 <WdgInit>:
WdgInit():
1c0032a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0032a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0032a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0032ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0032b0:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c0032b4:	03bffd84 	ori	$r4,$r12,0xfff
1c0032b8:	57ff33ff 	bl	-208(0xfffff30) # 1c0031e8 <WDG_SetWatchDog>
1c0032bc:	03400000 	andi	$r0,$r0,0x0
1c0032c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0032c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0032c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032cc:	4c000020 	jirl	$r0,$r1,0

1c0032d0 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c0032d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032dc:	0015008c 	move	$r12,$r4
1c0032e0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0032e4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0032e8:	0040898c 	slli.w	$r12,$r12,0x2
1c0032ec:	0015018d 	move	$r13,$r12
1c0032f0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0032f4:	0381018c 	ori	$r12,$r12,0x40
1c0032f8:	001031ac 	add.w	$r12,$r13,$r12
1c0032fc:	2880018c 	ld.w	$r12,$r12,0
1c003300:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003304:	037ffd8c 	andi	$r12,$r12,0xfff
1c003308:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00330c:	00150184 	move	$r4,$r12
1c003310:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003314:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003318:	4c000020 	jirl	$r0,$r1,0

1c00331c <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c00331c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003320:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003324:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003328:	0015008c 	move	$r12,$r4
1c00332c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003330:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003334:	0040898c 	slli.w	$r12,$r12,0x2
1c003338:	0015018d 	move	$r13,$r12
1c00333c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003340:	0382018c 	ori	$r12,$r12,0x80
1c003344:	001031ac 	add.w	$r12,$r13,$r12
1c003348:	2880018c 	ld.w	$r12,$r12,0
1c00334c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003350:	037ffd8c 	andi	$r12,$r12,0xfff
1c003354:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003358:	00150184 	move	$r4,$r12
1c00335c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003360:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003364:	4c000020 	jirl	$r0,$r1,0

1c003368 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003368:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00336c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003370:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003374:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003378:	0015008c 	move	$r12,$r4
1c00337c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003380:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003384:	50003400 	b	52(0x34) # 1c0033b8 <Printf_KeyChannel+0x50>
1c003388:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c00338c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003390:	001831ac 	sra.w	$r12,$r13,$r12
1c003394:	0340058c 	andi	$r12,$r12,0x1
1c003398:	40001580 	beqz	$r12,20(0x14) # 1c0033ac <Printf_KeyChannel+0x44>
1c00339c:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c0033a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033a4:	02bab084 	addi.w	$r4,$r4,-340(0xeac)
1c0033a8:	57e7fbff 	bl	-6152(0xfffe7f8) # 1c001ba0 <myprintf>
1c0033ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0033b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0033bc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0033c0:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003388 <Printf_KeyChannel+0x20>
1c0033c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033c8:	02ba3084 	addi.w	$r4,$r4,-372(0xe8c)
1c0033cc:	57e7d7ff 	bl	-6188(0xfffe7d4) # 1c001ba0 <myprintf>
1c0033d0:	03400000 	andi	$r0,$r0,0x0
1c0033d4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0033d8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0033dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0033e0:	4c000020 	jirl	$r0,$r1,0

1c0033e4 <Printf_KeyType>:
Printf_KeyType():
1c0033e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0033ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0033f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033f4:	0015008c 	move	$r12,$r4
1c0033f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0033fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003400:	0340058c 	andi	$r12,$r12,0x1
1c003404:	40001180 	beqz	$r12,16(0x10) # 1c003414 <Printf_KeyType+0x30>
1c003408:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00340c:	02b93084 	addi.w	$r4,$r4,-436(0xe4c)
1c003410:	57e793ff 	bl	-6256(0xfffe790) # 1c001ba0 <myprintf>
1c003414:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003418:	0340098c 	andi	$r12,$r12,0x2
1c00341c:	40001180 	beqz	$r12,16(0x10) # 1c00342c <Printf_KeyType+0x48>
1c003420:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003424:	02b8f084 	addi.w	$r4,$r4,-452(0xe3c)
1c003428:	57e77bff 	bl	-6280(0xfffe778) # 1c001ba0 <myprintf>
1c00342c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003430:	0340118c 	andi	$r12,$r12,0x4
1c003434:	40001180 	beqz	$r12,16(0x10) # 1c003444 <Printf_KeyType+0x60>
1c003438:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00343c:	02b8b084 	addi.w	$r4,$r4,-468(0xe2c)
1c003440:	57e763ff 	bl	-6304(0xfffe760) # 1c001ba0 <myprintf>
1c003444:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003448:	0340218c 	andi	$r12,$r12,0x8
1c00344c:	40001180 	beqz	$r12,16(0x10) # 1c00345c <Printf_KeyType+0x78>
1c003450:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003454:	02b88084 	addi.w	$r4,$r4,-480(0xe20)
1c003458:	57e74bff 	bl	-6328(0xfffe748) # 1c001ba0 <myprintf>
1c00345c:	03400000 	andi	$r0,$r0,0x0
1c003460:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003464:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003468:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00346c:	4c000020 	jirl	$r0,$r1,0

1c003470 <Printf_KeyVal>:
Printf_KeyVal():
1c003470:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003474:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003478:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c00347c:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003480:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003484:	5000d800 	b	216(0xd8) # 1c00355c <Printf_KeyVal+0xec>
1c003488:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00348c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003490:	00150184 	move	$r4,$r12
1c003494:	57fe8bff 	bl	-376(0xffffe88) # 1c00331c <TOUCH_GetCountValue>
1c003498:	0015008c 	move	$r12,$r4
1c00349c:	0015018d 	move	$r13,$r12
1c0034a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034a4:	0040898c 	slli.w	$r12,$r12,0x2
1c0034a8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0034ac:	001031cc 	add.w	$r12,$r14,$r12
1c0034b0:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c0034b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034b8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0034bc:	00150184 	move	$r4,$r12
1c0034c0:	57fe13ff 	bl	-496(0xffffe10) # 1c0032d0 <TOUCH_GetBaseVal>
1c0034c4:	0015008c 	move	$r12,$r4
1c0034c8:	0015018d 	move	$r13,$r12
1c0034cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034d0:	0040898c 	slli.w	$r12,$r12,0x2
1c0034d4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0034d8:	001031cc 	add.w	$r12,$r14,$r12
1c0034dc:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c0034e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034e4:	0040898c 	slli.w	$r12,$r12,0x2
1c0034e8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0034ec:	001031ac 	add.w	$r12,$r13,$r12
1c0034f0:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c0034f4:	40004980 	beqz	$r12,72(0x48) # 1c00353c <Printf_KeyVal+0xcc>
1c0034f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034fc:	0040898c 	slli.w	$r12,$r12,0x2
1c003500:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003504:	001031ac 	add.w	$r12,$r13,$r12
1c003508:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c00350c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003510:	0040898c 	slli.w	$r12,$r12,0x2
1c003514:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003518:	001031cc 	add.w	$r12,$r14,$r12
1c00351c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003520:	001131ad 	sub.w	$r13,$r13,$r12
1c003524:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003528:	0040898c 	slli.w	$r12,$r12,0x2
1c00352c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003530:	001031cc 	add.w	$r12,$r14,$r12
1c003534:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003538:	50001800 	b	24(0x18) # 1c003550 <Printf_KeyVal+0xe0>
1c00353c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003540:	0040898c 	slli.w	$r12,$r12,0x2
1c003544:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003548:	001031ac 	add.w	$r12,$r13,$r12
1c00354c:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003550:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003554:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003558:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00355c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003560:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003564:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003488 <Printf_KeyVal+0x18>
1c003568:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00356c:	02b45084 	addi.w	$r4,$r4,-748(0xd14)
1c003570:	57e633ff 	bl	-6608(0xfffe630) # 1c001ba0 <myprintf>
1c003574:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003578:	02b4c084 	addi.w	$r4,$r4,-720(0xd30)
1c00357c:	57e627ff 	bl	-6620(0xfffe624) # 1c001ba0 <myprintf>
1c003580:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003584:	50003400 	b	52(0x34) # 1c0035b8 <Printf_KeyVal+0x148>
1c003588:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00358c:	0040898c 	slli.w	$r12,$r12,0x2
1c003590:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003594:	001031ac 	add.w	$r12,$r13,$r12
1c003598:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c00359c:	00150185 	move	$r5,$r12
1c0035a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0035a4:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c0035a8:	57e5fbff 	bl	-6664(0xfffe5f8) # 1c001ba0 <myprintf>
1c0035ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0035b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035bc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0035c0:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003588 <Printf_KeyVal+0x118>
1c0035c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0035c8:	02b3c084 	addi.w	$r4,$r4,-784(0xcf0)
1c0035cc:	57e5d7ff 	bl	-6700(0xfffe5d4) # 1c001ba0 <myprintf>
1c0035d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035d4:	50003400 	b	52(0x34) # 1c003608 <Printf_KeyVal+0x198>
1c0035d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035dc:	0040898c 	slli.w	$r12,$r12,0x2
1c0035e0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0035e4:	001031ac 	add.w	$r12,$r13,$r12
1c0035e8:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c0035ec:	00150185 	move	$r5,$r12
1c0035f0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0035f4:	02b2f084 	addi.w	$r4,$r4,-836(0xcbc)
1c0035f8:	57e5abff 	bl	-6744(0xfffe5a8) # 1c001ba0 <myprintf>
1c0035fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003600:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003604:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003608:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00360c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003610:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0035d8 <Printf_KeyVal+0x168>
1c003614:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003618:	02b2b084 	addi.w	$r4,$r4,-852(0xcac)
1c00361c:	57e587ff 	bl	-6780(0xfffe584) # 1c001ba0 <myprintf>
1c003620:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003624:	50007400 	b	116(0x74) # 1c003698 <Printf_KeyVal+0x228>
1c003628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00362c:	0040898c 	slli.w	$r12,$r12,0x2
1c003630:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003634:	001031ac 	add.w	$r12,$r13,$r12
1c003638:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c00363c:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003668 <Printf_KeyVal+0x1f8>
1c003640:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003644:	0040898c 	slli.w	$r12,$r12,0x2
1c003648:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00364c:	001031ac 	add.w	$r12,$r13,$r12
1c003650:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003654:	00150185 	move	$r5,$r12
1c003658:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00365c:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c003660:	57e543ff 	bl	-6848(0xfffe540) # 1c001ba0 <myprintf>
1c003664:	50002800 	b	40(0x28) # 1c00368c <Printf_KeyVal+0x21c>
1c003668:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00366c:	0040898c 	slli.w	$r12,$r12,0x2
1c003670:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003674:	001031ac 	add.w	$r12,$r13,$r12
1c003678:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c00367c:	00150185 	move	$r5,$r12
1c003680:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003684:	02b15084 	addi.w	$r4,$r4,-940(0xc54)
1c003688:	57e51bff 	bl	-6888(0xfffe518) # 1c001ba0 <myprintf>
1c00368c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003690:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003694:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003698:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00369c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0036a0:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003628 <Printf_KeyVal+0x1b8>
1c0036a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0036a8:	02aeb084 	addi.w	$r4,$r4,-1108(0xbac)
1c0036ac:	57e4f7ff 	bl	-6924(0xfffe4f4) # 1c001ba0 <myprintf>
1c0036b0:	03400000 	andi	$r0,$r0,0x0
1c0036b4:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c0036b8:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c0036bc:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c0036c0:	4c000020 	jirl	$r0,$r1,0

1c0036c4 <TIM_GetITStatus>:
TIM_GetITStatus():
1c0036c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036c8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036d8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0036dc:	2880018d 	ld.w	$r13,$r12,0
1c0036e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036e4:	0014b1ac 	and	$r12,$r13,$r12
1c0036e8:	40001180 	beqz	$r12,16(0x10) # 1c0036f8 <TIM_GetITStatus+0x34>
1c0036ec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0036f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036f4:	50000800 	b	8(0x8) # 1c0036fc <TIM_GetITStatus+0x38>
1c0036f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003700:	00150184 	move	$r4,$r12
1c003704:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003708:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00370c:	4c000020 	jirl	$r0,$r1,0

1c003710 <TIM_ClearIT>:
TIM_ClearIT():
1c003710:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003714:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003718:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00371c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003720:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003724:	2880018e 	ld.w	$r14,$r12,0
1c003728:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00372c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003730:	001535cd 	or	$r13,$r14,$r13
1c003734:	2980018d 	st.w	$r13,$r12,0
1c003738:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00373c:	03800d8c 	ori	$r12,$r12,0x3
1c003740:	2a00018c 	ld.bu	$r12,$r12,0
1c003744:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003748:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00374c:	03800d8c 	ori	$r12,$r12,0x3
1c003750:	038005ad 	ori	$r13,$r13,0x1
1c003754:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003758:	2900018d 	st.b	$r13,$r12,0
1c00375c:	03400000 	andi	$r0,$r0,0x0
1c003760:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003764:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003768:	4c000020 	jirl	$r0,$r1,0

1c00376c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c00376c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003770:	29803061 	st.w	$r1,$r3,12(0xc)
1c003774:	29802076 	st.w	$r22,$r3,8(0x8)
1c003778:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00377c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003780:	02b350c6 	addi.w	$r6,$r6,-812(0xcd4)
1c003784:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c003788:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00378c:	02ad5084 	addi.w	$r4,$r4,-1196(0xb54)
1c003790:	57e413ff 	bl	-7152(0xfffe410) # 1c001ba0 <myprintf>
1c003794:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003798:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00379c:	03808184 	ori	$r4,$r12,0x20
1c0037a0:	57f987ff 	bl	-1660(0xffff984) # 1c003124 <EXTI_ClearITPendingBit>
1c0037a4:	03400000 	andi	$r0,$r0,0x0
1c0037a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037b4:	4c000020 	jirl	$r0,$r1,0

1c0037b8 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0037b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0037c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0037c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0037cc:	02b280c6 	addi.w	$r6,$r6,-864(0xca0)
1c0037d0:	02806005 	addi.w	$r5,$r0,24(0x18)
1c0037d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0037d8:	02ac2084 	addi.w	$r4,$r4,-1272(0xb08)
1c0037dc:	57e3c7ff 	bl	-7228(0xfffe3c4) # 1c001ba0 <myprintf>
1c0037e0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0037e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037e8:	03808184 	ori	$r4,$r12,0x20
1c0037ec:	57f93bff 	bl	-1736(0xffff938) # 1c003124 <EXTI_ClearITPendingBit>
1c0037f0:	03400000 	andi	$r0,$r0,0x0
1c0037f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003800:	4c000020 	jirl	$r0,$r1,0

1c003804 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003804:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003808:	29803061 	st.w	$r1,$r3,12(0xc)
1c00380c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003810:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003814:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003818:	02b1b0c6 	addi.w	$r6,$r6,-916(0xc6c)
1c00381c:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c003820:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003824:	02aaf084 	addi.w	$r4,$r4,-1348(0xabc)
1c003828:	57e37bff 	bl	-7304(0xfffe378) # 1c001ba0 <myprintf>
1c00382c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003830:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003834:	03808184 	ori	$r4,$r12,0x20
1c003838:	57f8efff 	bl	-1812(0xffff8ec) # 1c003124 <EXTI_ClearITPendingBit>
1c00383c:	03400000 	andi	$r0,$r0,0x0
1c003840:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003844:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003848:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00384c:	4c000020 	jirl	$r0,$r1,0

1c003850 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003850:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003854:	29803061 	st.w	$r1,$r3,12(0xc)
1c003858:	29802076 	st.w	$r22,$r3,8(0x8)
1c00385c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003860:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003864:	02b0e0c6 	addi.w	$r6,$r6,-968(0xc38)
1c003868:	02808805 	addi.w	$r5,$r0,34(0x22)
1c00386c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003870:	02a9c084 	addi.w	$r4,$r4,-1424(0xa70)
1c003874:	57e32fff 	bl	-7380(0xfffe32c) # 1c001ba0 <myprintf>
1c003878:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00387c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003880:	03808184 	ori	$r4,$r12,0x20
1c003884:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c003124 <EXTI_ClearITPendingBit>
1c003888:	03400000 	andi	$r0,$r0,0x0
1c00388c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003890:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003894:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003898:	4c000020 	jirl	$r0,$r1,0

1c00389c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c00389c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0038b0:	02b010c6 	addi.w	$r6,$r6,-1020(0xc04)
1c0038b4:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c0038b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0038bc:	02a89084 	addi.w	$r4,$r4,-1500(0xa24)
1c0038c0:	57e2e3ff 	bl	-7456(0xfffe2e0) # 1c001ba0 <myprintf>
1c0038c4:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0038c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038cc:	03808184 	ori	$r4,$r12,0x20
1c0038d0:	57f857ff 	bl	-1964(0xffff854) # 1c003124 <EXTI_ClearITPendingBit>
1c0038d4:	03400000 	andi	$r0,$r0,0x0
1c0038d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0038e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038e4:	4c000020 	jirl	$r0,$r1,0

1c0038e8 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0038e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0038fc:	02af40c6 	addi.w	$r6,$r6,-1072(0xbd0)
1c003900:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c003904:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003908:	02a76084 	addi.w	$r4,$r4,-1576(0x9d8)
1c00390c:	57e297ff 	bl	-7532(0xfffe294) # 1c001ba0 <myprintf>
1c003910:	02808005 	addi.w	$r5,$r0,32(0x20)
1c003914:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003918:	03808184 	ori	$r4,$r12,0x20
1c00391c:	57f80bff 	bl	-2040(0xffff808) # 1c003124 <EXTI_ClearITPendingBit>
1c003920:	03400000 	andi	$r0,$r0,0x0
1c003924:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003928:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00392c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003930:	4c000020 	jirl	$r0,$r1,0

1c003934 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003934:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003938:	29803061 	st.w	$r1,$r3,12(0xc)
1c00393c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003940:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003944:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003948:	02ae70c6 	addi.w	$r6,$r6,-1124(0xb9c)
1c00394c:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c003950:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003954:	02a63084 	addi.w	$r4,$r4,-1652(0x98c)
1c003958:	57e24bff 	bl	-7608(0xfffe248) # 1c001ba0 <myprintf>
1c00395c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003960:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003964:	03808184 	ori	$r4,$r12,0x20
1c003968:	57f7bfff 	bl	-2116(0xffff7bc) # 1c003124 <EXTI_ClearITPendingBit>
1c00396c:	03400000 	andi	$r0,$r0,0x0
1c003970:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003974:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003978:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00397c:	4c000020 	jirl	$r0,$r1,0

1c003980 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003980:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003984:	29803061 	st.w	$r1,$r3,12(0xc)
1c003988:	29802076 	st.w	$r22,$r3,8(0x8)
1c00398c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003990:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003994:	02ada0c6 	addi.w	$r6,$r6,-1176(0xb68)
1c003998:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c00399c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0039a0:	02a50084 	addi.w	$r4,$r4,-1728(0x940)
1c0039a4:	57e1ffff 	bl	-7684(0xfffe1fc) # 1c001ba0 <myprintf>
1c0039a8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0039ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039b0:	03808184 	ori	$r4,$r12,0x20
1c0039b4:	57f773ff 	bl	-2192(0xffff770) # 1c003124 <EXTI_ClearITPendingBit>
1c0039b8:	03400000 	andi	$r0,$r0,0x0
1c0039bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0039c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039c8:	4c000020 	jirl	$r0,$r1,0

1c0039cc <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0039cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0039d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0039d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0039d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039dc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0039e0:	02acd0c6 	addi.w	$r6,$r6,-1228(0xb34)
1c0039e4:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c0039e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0039ec:	02a3d084 	addi.w	$r4,$r4,-1804(0x8f4)
1c0039f0:	57e1b3ff 	bl	-7760(0xfffe1b0) # 1c001ba0 <myprintf>
1c0039f4:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0039f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039fc:	03808184 	ori	$r4,$r12,0x20
1c003a00:	57f727ff 	bl	-2268(0xffff724) # 1c003124 <EXTI_ClearITPendingBit>
1c003a04:	03400000 	andi	$r0,$r0,0x0
1c003a08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a14:	4c000020 	jirl	$r0,$r1,0

1c003a18 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c003a18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a20:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a28:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003a2c:	02ac00c6 	addi.w	$r6,$r6,-1280(0xb00)
1c003a30:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003a34:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a38:	02a2a084 	addi.w	$r4,$r4,-1880(0x8a8)
1c003a3c:	57e167ff 	bl	-7836(0xfffe164) # 1c001ba0 <myprintf>
1c003a40:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003a44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a48:	03808184 	ori	$r4,$r12,0x20
1c003a4c:	57f6dbff 	bl	-2344(0xffff6d8) # 1c003124 <EXTI_ClearITPendingBit>
1c003a50:	03400000 	andi	$r0,$r0,0x0
1c003a54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a60:	4c000020 	jirl	$r0,$r1,0

1c003a64 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003a64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a68:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a74:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003a78:	02ab30c6 	addi.w	$r6,$r6,-1332(0xacc)
1c003a7c:	02811405 	addi.w	$r5,$r0,69(0x45)
1c003a80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a84:	02a17084 	addi.w	$r4,$r4,-1956(0x85c)
1c003a88:	57e11bff 	bl	-7912(0xfffe118) # 1c001ba0 <myprintf>
1c003a8c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c003a90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a94:	03808184 	ori	$r4,$r12,0x20
1c003a98:	57f68fff 	bl	-2420(0xffff68c) # 1c003124 <EXTI_ClearITPendingBit>
1c003a9c:	03400000 	andi	$r0,$r0,0x0
1c003aa0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003aa4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003aa8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003aac:	4c000020 	jirl	$r0,$r1,0

1c003ab0 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c003ab0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ab4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ab8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003abc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ac0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ac4:	02aa60c6 	addi.w	$r6,$r6,-1384(0xa98)
1c003ac8:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c003acc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ad0:	02a04084 	addi.w	$r4,$r4,-2032(0x810)
1c003ad4:	57e0cfff 	bl	-7988(0xfffe0cc) # 1c001ba0 <myprintf>
1c003ad8:	03a00005 	ori	$r5,$r0,0x800
1c003adc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ae0:	03808184 	ori	$r4,$r12,0x20
1c003ae4:	57f643ff 	bl	-2496(0xffff640) # 1c003124 <EXTI_ClearITPendingBit>
1c003ae8:	03400000 	andi	$r0,$r0,0x0
1c003aec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003af0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003af4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003af8:	4c000020 	jirl	$r0,$r1,0

1c003afc <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c003afc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b00:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b04:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b0c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003b10:	02a990c6 	addi.w	$r6,$r6,-1436(0xa64)
1c003b14:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c003b18:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003b1c:	029f1084 	addi.w	$r4,$r4,1988(0x7c4)
1c003b20:	57e083ff 	bl	-8064(0xfffe080) # 1c001ba0 <myprintf>
1c003b24:	14000025 	lu12i.w	$r5,1(0x1)
1c003b28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b2c:	03808184 	ori	$r4,$r12,0x20
1c003b30:	57f5f7ff 	bl	-2572(0xffff5f4) # 1c003124 <EXTI_ClearITPendingBit>
1c003b34:	03400000 	andi	$r0,$r0,0x0
1c003b38:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b3c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b40:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b44:	4c000020 	jirl	$r0,$r1,0

1c003b48 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c003b48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b4c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b50:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b54:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b58:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003b5c:	02a8c0c6 	addi.w	$r6,$r6,-1488(0xa30)
1c003b60:	02815005 	addi.w	$r5,$r0,84(0x54)
1c003b64:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003b68:	029de084 	addi.w	$r4,$r4,1912(0x778)
1c003b6c:	57e037ff 	bl	-8140(0xfffe034) # 1c001ba0 <myprintf>
1c003b70:	14000045 	lu12i.w	$r5,2(0x2)
1c003b74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b78:	03808184 	ori	$r4,$r12,0x20
1c003b7c:	57f5abff 	bl	-2648(0xffff5a8) # 1c003124 <EXTI_ClearITPendingBit>
1c003b80:	03400000 	andi	$r0,$r0,0x0
1c003b84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b88:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b90:	4c000020 	jirl	$r0,$r1,0

1c003b94 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c003b94:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b98:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b9c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ba0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ba4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ba8:	02a7f0c6 	addi.w	$r6,$r6,-1540(0x9fc)
1c003bac:	02816405 	addi.w	$r5,$r0,89(0x59)
1c003bb0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003bb4:	029cb084 	addi.w	$r4,$r4,1836(0x72c)
1c003bb8:	57dfebff 	bl	-8216(0xfffdfe8) # 1c001ba0 <myprintf>
1c003bbc:	14000085 	lu12i.w	$r5,4(0x4)
1c003bc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bc4:	03808184 	ori	$r4,$r12,0x20
1c003bc8:	57f55fff 	bl	-2724(0xffff55c) # 1c003124 <EXTI_ClearITPendingBit>
1c003bcc:	03400000 	andi	$r0,$r0,0x0
1c003bd0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003bd4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003bd8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003bdc:	4c000020 	jirl	$r0,$r1,0

1c003be0 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c003be0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003be4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003be8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003bec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003bf0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003bf4:	02a720c6 	addi.w	$r6,$r6,-1592(0x9c8)
1c003bf8:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c003bfc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c00:	029b8084 	addi.w	$r4,$r4,1760(0x6e0)
1c003c04:	57df9fff 	bl	-8292(0xfffdf9c) # 1c001ba0 <myprintf>
1c003c08:	14000105 	lu12i.w	$r5,8(0x8)
1c003c0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c10:	03808184 	ori	$r4,$r12,0x20
1c003c14:	57f513ff 	bl	-2800(0xffff510) # 1c003124 <EXTI_ClearITPendingBit>
1c003c18:	03400000 	andi	$r0,$r0,0x0
1c003c1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c28:	4c000020 	jirl	$r0,$r1,0

1c003c2c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c003c2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c30:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c34:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c3c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003c40:	02a650c6 	addi.w	$r6,$r6,-1644(0x994)
1c003c44:	02819005 	addi.w	$r5,$r0,100(0x64)
1c003c48:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c4c:	029a5084 	addi.w	$r4,$r4,1684(0x694)
1c003c50:	57df53ff 	bl	-8368(0xfffdf50) # 1c001ba0 <myprintf>
1c003c54:	14000205 	lu12i.w	$r5,16(0x10)
1c003c58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c5c:	03808184 	ori	$r4,$r12,0x20
1c003c60:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c003124 <EXTI_ClearITPendingBit>
1c003c64:	03400000 	andi	$r0,$r0,0x0
1c003c68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c74:	4c000020 	jirl	$r0,$r1,0

1c003c78 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c003c78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c7c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c80:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c88:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003c8c:	02a580c6 	addi.w	$r6,$r6,-1696(0x960)
1c003c90:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c003c94:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c98:	02992084 	addi.w	$r4,$r4,1608(0x648)
1c003c9c:	57df07ff 	bl	-8444(0xfffdf04) # 1c001ba0 <myprintf>
1c003ca0:	14000405 	lu12i.w	$r5,32(0x20)
1c003ca4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ca8:	03808184 	ori	$r4,$r12,0x20
1c003cac:	57f47bff 	bl	-2952(0xffff478) # 1c003124 <EXTI_ClearITPendingBit>
1c003cb0:	03400000 	andi	$r0,$r0,0x0
1c003cb4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003cb8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003cbc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cc0:	4c000020 	jirl	$r0,$r1,0

1c003cc4 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c003cc4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003cc8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ccc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003cd0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003cd4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003cd8:	02a4b0c6 	addi.w	$r6,$r6,-1748(0x92c)
1c003cdc:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c003ce0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ce4:	0297f084 	addi.w	$r4,$r4,1532(0x5fc)
1c003ce8:	57debbff 	bl	-8520(0xfffdeb8) # 1c001ba0 <myprintf>
1c003cec:	14000805 	lu12i.w	$r5,64(0x40)
1c003cf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cf4:	03808184 	ori	$r4,$r12,0x20
1c003cf8:	57f42fff 	bl	-3028(0xffff42c) # 1c003124 <EXTI_ClearITPendingBit>
1c003cfc:	03400000 	andi	$r0,$r0,0x0
1c003d00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d0c:	4c000020 	jirl	$r0,$r1,0

1c003d10 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c003d10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d14:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d18:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d20:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d24:	02a3e0c6 	addi.w	$r6,$r6,-1800(0x8f8)
1c003d28:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c003d2c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d30:	0296c084 	addi.w	$r4,$r4,1456(0x5b0)
1c003d34:	57de6fff 	bl	-8596(0xfffde6c) # 1c001ba0 <myprintf>
1c003d38:	14001005 	lu12i.w	$r5,128(0x80)
1c003d3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d40:	03808184 	ori	$r4,$r12,0x20
1c003d44:	57f3e3ff 	bl	-3104(0xffff3e0) # 1c003124 <EXTI_ClearITPendingBit>
1c003d48:	03400000 	andi	$r0,$r0,0x0
1c003d4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d58:	4c000020 	jirl	$r0,$r1,0

1c003d5c <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c003d5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d60:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d64:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d6c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d70:	02a310c6 	addi.w	$r6,$r6,-1852(0x8c4)
1c003d74:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c003d78:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d7c:	02959084 	addi.w	$r4,$r4,1380(0x564)
1c003d80:	57de23ff 	bl	-8672(0xfffde20) # 1c001ba0 <myprintf>
1c003d84:	14002005 	lu12i.w	$r5,256(0x100)
1c003d88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d8c:	03808184 	ori	$r4,$r12,0x20
1c003d90:	57f397ff 	bl	-3180(0xffff394) # 1c003124 <EXTI_ClearITPendingBit>
1c003d94:	03400000 	andi	$r0,$r0,0x0
1c003d98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d9c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003da0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003da4:	4c000020 	jirl	$r0,$r1,0

1c003da8 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c003da8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003dac:	29803061 	st.w	$r1,$r3,12(0xc)
1c003db0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003db4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003db8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003dbc:	02a240c6 	addi.w	$r6,$r6,-1904(0x890)
1c003dc0:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c003dc4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003dc8:	02946084 	addi.w	$r4,$r4,1304(0x518)
1c003dcc:	57ddd7ff 	bl	-8748(0xfffddd4) # 1c001ba0 <myprintf>
1c003dd0:	14004005 	lu12i.w	$r5,512(0x200)
1c003dd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003dd8:	03808184 	ori	$r4,$r12,0x20
1c003ddc:	57f34bff 	bl	-3256(0xffff348) # 1c003124 <EXTI_ClearITPendingBit>
1c003de0:	03400000 	andi	$r0,$r0,0x0
1c003de4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003de8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003dec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003df0:	4c000020 	jirl	$r0,$r1,0

1c003df4 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c003df4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003df8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003dfc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e04:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e08:	02a170c6 	addi.w	$r6,$r6,-1956(0x85c)
1c003e0c:	02820805 	addi.w	$r5,$r0,130(0x82)
1c003e10:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e14:	02933084 	addi.w	$r4,$r4,1228(0x4cc)
1c003e18:	57dd8bff 	bl	-8824(0xfffdd88) # 1c001ba0 <myprintf>
1c003e1c:	14008005 	lu12i.w	$r5,1024(0x400)
1c003e20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e24:	03808184 	ori	$r4,$r12,0x20
1c003e28:	57f2ffff 	bl	-3332(0xffff2fc) # 1c003124 <EXTI_ClearITPendingBit>
1c003e2c:	03400000 	andi	$r0,$r0,0x0
1c003e30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e3c:	4c000020 	jirl	$r0,$r1,0

1c003e40 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c003e40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e44:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e48:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e50:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e54:	02a0a0c6 	addi.w	$r6,$r6,-2008(0x828)
1c003e58:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c003e5c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e60:	02920084 	addi.w	$r4,$r4,1152(0x480)
1c003e64:	57dd3fff 	bl	-8900(0xfffdd3c) # 1c001ba0 <myprintf>
1c003e68:	14010005 	lu12i.w	$r5,2048(0x800)
1c003e6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e70:	03808184 	ori	$r4,$r12,0x20
1c003e74:	57f2b3ff 	bl	-3408(0xffff2b0) # 1c003124 <EXTI_ClearITPendingBit>
1c003e78:	03400000 	andi	$r0,$r0,0x0
1c003e7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e88:	4c000020 	jirl	$r0,$r1,0

1c003e8c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c003e8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e90:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e94:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e9c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003ea0:	029fd0c6 	addi.w	$r6,$r6,2036(0x7f4)
1c003ea4:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c003ea8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003eac:	0290d084 	addi.w	$r4,$r4,1076(0x434)
1c003eb0:	57dcf3ff 	bl	-8976(0xfffdcf0) # 1c001ba0 <myprintf>
1c003eb4:	14020005 	lu12i.w	$r5,4096(0x1000)
1c003eb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ebc:	03808184 	ori	$r4,$r12,0x20
1c003ec0:	57f267ff 	bl	-3484(0xffff264) # 1c003124 <EXTI_ClearITPendingBit>
1c003ec4:	03400000 	andi	$r0,$r0,0x0
1c003ec8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ecc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ed0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ed4:	4c000020 	jirl	$r0,$r1,0

1c003ed8 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c003ed8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003edc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ee0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ee4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ee8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003eec:	029f00c6 	addi.w	$r6,$r6,1984(0x7c0)
1c003ef0:	02824405 	addi.w	$r5,$r0,145(0x91)
1c003ef4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ef8:	028fa084 	addi.w	$r4,$r4,1000(0x3e8)
1c003efc:	57dca7ff 	bl	-9052(0xfffdca4) # 1c001ba0 <myprintf>
1c003f00:	14040005 	lu12i.w	$r5,8192(0x2000)
1c003f04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f08:	03808184 	ori	$r4,$r12,0x20
1c003f0c:	57f21bff 	bl	-3560(0xffff218) # 1c003124 <EXTI_ClearITPendingBit>
1c003f10:	03400000 	andi	$r0,$r0,0x0
1c003f14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f20:	4c000020 	jirl	$r0,$r1,0

1c003f24 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c003f24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f28:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f34:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f38:	029e30c6 	addi.w	$r6,$r6,1932(0x78c)
1c003f3c:	02825805 	addi.w	$r5,$r0,150(0x96)
1c003f40:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f44:	028e7084 	addi.w	$r4,$r4,924(0x39c)
1c003f48:	57dc5bff 	bl	-9128(0xfffdc58) # 1c001ba0 <myprintf>
1c003f4c:	14080005 	lu12i.w	$r5,16384(0x4000)
1c003f50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f54:	03808184 	ori	$r4,$r12,0x20
1c003f58:	57f1cfff 	bl	-3636(0xffff1cc) # 1c003124 <EXTI_ClearITPendingBit>
1c003f5c:	03400000 	andi	$r0,$r0,0x0
1c003f60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f64:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f6c:	4c000020 	jirl	$r0,$r1,0

1c003f70 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c003f70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f74:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f78:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f80:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f84:	029d60c6 	addi.w	$r6,$r6,1880(0x758)
1c003f88:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c003f8c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f90:	028d4084 	addi.w	$r4,$r4,848(0x350)
1c003f94:	57dc0fff 	bl	-9204(0xfffdc0c) # 1c001ba0 <myprintf>
1c003f98:	14100005 	lu12i.w	$r5,32768(0x8000)
1c003f9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fa0:	03808184 	ori	$r4,$r12,0x20
1c003fa4:	57f183ff 	bl	-3712(0xffff180) # 1c003124 <EXTI_ClearITPendingBit>
1c003fa8:	03400000 	andi	$r0,$r0,0x0
1c003fac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fb0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fb8:	4c000020 	jirl	$r0,$r1,0

1c003fbc <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c003fbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fc0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fc4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fc8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fcc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003fd0:	029c90c6 	addi.w	$r6,$r6,1828(0x724)
1c003fd4:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c003fd8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003fdc:	028c1084 	addi.w	$r4,$r4,772(0x304)
1c003fe0:	57dbc3ff 	bl	-9280(0xfffdbc0) # 1c001ba0 <myprintf>
1c003fe4:	14200005 	lu12i.w	$r5,65536(0x10000)
1c003fe8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fec:	03808184 	ori	$r4,$r12,0x20
1c003ff0:	57f137ff 	bl	-3788(0xffff134) # 1c003124 <EXTI_ClearITPendingBit>
1c003ff4:	03400000 	andi	$r0,$r0,0x0
1c003ff8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ffc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004000:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004004:	4c000020 	jirl	$r0,$r1,0

1c004008 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004008:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00400c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004010:	29802076 	st.w	$r22,$r3,8(0x8)
1c004014:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004018:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00401c:	029bc0c6 	addi.w	$r6,$r6,1776(0x6f0)
1c004020:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c004024:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004028:	028ae084 	addi.w	$r4,$r4,696(0x2b8)
1c00402c:	57db77ff 	bl	-9356(0xfffdb74) # 1c001ba0 <myprintf>
1c004030:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004034:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004038:	03808184 	ori	$r4,$r12,0x20
1c00403c:	57f0ebff 	bl	-3864(0xffff0e8) # 1c003124 <EXTI_ClearITPendingBit>
1c004040:	03400000 	andi	$r0,$r0,0x0
1c004044:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004048:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00404c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004050:	4c000020 	jirl	$r0,$r1,0

1c004054 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004054:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004058:	29803061 	st.w	$r1,$r3,12(0xc)
1c00405c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004060:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004064:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004068:	029af0c6 	addi.w	$r6,$r6,1724(0x6bc)
1c00406c:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c004070:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004074:	0289b084 	addi.w	$r4,$r4,620(0x26c)
1c004078:	57db2bff 	bl	-9432(0xfffdb28) # 1c001ba0 <myprintf>
1c00407c:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004080:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004084:	03808184 	ori	$r4,$r12,0x20
1c004088:	57f09fff 	bl	-3940(0xffff09c) # 1c003124 <EXTI_ClearITPendingBit>
1c00408c:	03400000 	andi	$r0,$r0,0x0
1c004090:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004094:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004098:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00409c:	4c000020 	jirl	$r0,$r1,0

1c0040a0 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0040a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040b0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0040b4:	029a20c6 	addi.w	$r6,$r6,1672(0x688)
1c0040b8:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c0040bc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0040c0:	02888084 	addi.w	$r4,$r4,544(0x220)
1c0040c4:	57dadfff 	bl	-9508(0xfffdadc) # 1c001ba0 <myprintf>
1c0040c8:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0040cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040d0:	03808184 	ori	$r4,$r12,0x20
1c0040d4:	57f053ff 	bl	-4016(0xffff050) # 1c003124 <EXTI_ClearITPendingBit>
1c0040d8:	03400000 	andi	$r0,$r0,0x0
1c0040dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040e8:	4c000020 	jirl	$r0,$r1,0

1c0040ec <ext_handler>:
ext_handler():
1c0040ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0040f0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0040f4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0040f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0040fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004100:	0380f18c 	ori	$r12,$r12,0x3c
1c004104:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004108:	2980018d 	st.w	$r13,$r12,0
1c00410c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004110:	0380818c 	ori	$r12,$r12,0x20
1c004114:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004118:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00411c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004120:	0380818c 	ori	$r12,$r12,0x20
1c004124:	2880018c 	ld.w	$r12,$r12,0
1c004128:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00412c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004130:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004134:	0014b1ac 	and	$r12,$r13,$r12
1c004138:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00413c:	03400000 	andi	$r0,$r0,0x0
1c004140:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004144:	50004000 	b	64(0x40) # 1c004184 <ext_handler+0x98>
1c004148:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00414c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004150:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004154:	0340058c 	andi	$r12,$r12,0x1
1c004158:	40002180 	beqz	$r12,32(0x20) # 1c004178 <ext_handler+0x8c>
1c00415c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004160:	0288c1ad 	addi.w	$r13,$r13,560(0x230)
1c004164:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004168:	0040898c 	slli.w	$r12,$r12,0x2
1c00416c:	001031ac 	add.w	$r12,$r13,$r12
1c004170:	2880018c 	ld.w	$r12,$r12,0
1c004174:	4c000181 	jirl	$r1,$r12,0
1c004178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00417c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004180:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004184:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004188:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00418c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004148 <ext_handler+0x5c>
1c004190:	03400000 	andi	$r0,$r0,0x0
1c004194:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004198:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00419c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041a0:	4c000020 	jirl	$r0,$r1,0

1c0041a4 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0041a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0041a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0041ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0041b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0041b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041b8:	0380f18c 	ori	$r12,$r12,0x3c
1c0041bc:	1400020d 	lu12i.w	$r13,16(0x10)
1c0041c0:	2980018d 	st.w	$r13,$r12,0
1c0041c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041c8:	0380118c 	ori	$r12,$r12,0x4
1c0041cc:	2880018c 	ld.w	$r12,$r12,0
1c0041d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0041d4:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c003274 <WDG_DogFeed>
1c0041d8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0041dc:	57ea27ff 	bl	-5596(0xfffea24) # 1c002c00 <Wake_Set>
1c0041e0:	03400000 	andi	$r0,$r0,0x0
1c0041e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0041e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0041ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041f0:	4c000020 	jirl	$r0,$r1,0

1c0041f4 <TOUCH>:
TOUCH():
1c0041f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0041f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0041fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c004200:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004204:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004208:	0380118c 	ori	$r12,$r12,0x4
1c00420c:	2880018c 	ld.w	$r12,$r12,0
1c004210:	0044c18c 	srli.w	$r12,$r12,0x10
1c004214:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004218:	037ffd8c 	andi	$r12,$r12,0xfff
1c00421c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004220:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004224:	0380118c 	ori	$r12,$r12,0x4
1c004228:	2880018c 	ld.w	$r12,$r12,0
1c00422c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004230:	03403d8c 	andi	$r12,$r12,0xf
1c004234:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004238:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00423c:	0380f18c 	ori	$r12,$r12,0x3c
1c004240:	1400040d 	lu12i.w	$r13,32(0x20)
1c004244:	2980018d 	st.w	$r13,$r12,0
1c004248:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00424c:	0380118c 	ori	$r12,$r12,0x4
1c004250:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004254:	2980018d 	st.w	$r13,$r12,0
1c004258:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00425c:	00150184 	move	$r4,$r12
1c004260:	57f187ff 	bl	-3708(0xffff184) # 1c0033e4 <Printf_KeyType>
1c004264:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004268:	00150184 	move	$r4,$r12
1c00426c:	57f0ffff 	bl	-3844(0xffff0fc) # 1c003368 <Printf_KeyChannel>
1c004270:	57f203ff 	bl	-3584(0xffff200) # 1c003470 <Printf_KeyVal>
1c004274:	03400000 	andi	$r0,$r0,0x0
1c004278:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00427c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004280:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004284:	4c000020 	jirl	$r0,$r1,0

1c004288 <UART2_INT>:
UART2_INT():
1c004288:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00428c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004290:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004294:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004298:	0380f18c 	ori	$r12,$r12,0x3c
1c00429c:	1400080d 	lu12i.w	$r13,64(0x40)
1c0042a0:	2980018d 	st.w	$r13,$r12,0
1c0042a4:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0042a8:	0380098c 	ori	$r12,$r12,0x2
1c0042ac:	2a00018c 	ld.bu	$r12,$r12,0
1c0042b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0042b4:	03400000 	andi	$r0,$r0,0x0
1c0042b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0042bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0042c0:	4c000020 	jirl	$r0,$r1,0

1c0042c4 <BAT_FAIL>:
BAT_FAIL():
1c0042c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0042c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0042cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0042d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0042d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042d8:	0380118c 	ori	$r12,$r12,0x4
1c0042dc:	2880018c 	ld.w	$r12,$r12,0
1c0042e0:	0044cd8c 	srli.w	$r12,$r12,0x13
1c0042e4:	03407d8c 	andi	$r12,$r12,0x1f
1c0042e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0042ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042f0:	0380118c 	ori	$r12,$r12,0x4
1c0042f4:	2880018e 	ld.w	$r14,$r12,0
1c0042f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042fc:	0380f18c 	ori	$r12,$r12,0x3c
1c004300:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004304:	0014b5cd 	and	$r13,$r14,$r13
1c004308:	2980018d 	st.w	$r13,$r12,0
1c00430c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004310:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004314:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004384 <BAT_FAIL+0xc0>
1c004318:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00431c:	0040898d 	slli.w	$r13,$r12,0x2
1c004320:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c004324:	0283b18c 	addi.w	$r12,$r12,236(0xec)
1c004328:	001031ac 	add.w	$r12,$r13,$r12
1c00432c:	2880018c 	ld.w	$r12,$r12,0
1c004330:	4c000180 	jirl	$r0,$r12,0
1c004334:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004338:	02bfb084 	addi.w	$r4,$r4,-20(0xfec)
1c00433c:	57d867ff 	bl	-10140(0xfffd864) # 1c001ba0 <myprintf>
1c004340:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004344:	0380118c 	ori	$r12,$r12,0x4
1c004348:	29800180 	st.w	$r0,$r12,0
1c00434c:	50003c00 	b	60(0x3c) # 1c004388 <BAT_FAIL+0xc4>
1c004350:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004354:	02bfe084 	addi.w	$r4,$r4,-8(0xff8)
1c004358:	57d84bff 	bl	-10168(0xfffd848) # 1c001ba0 <myprintf>
1c00435c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004360:	0380118c 	ori	$r12,$r12,0x4
1c004364:	2880018e 	ld.w	$r14,$r12,0
1c004368:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00436c:	0380118c 	ori	$r12,$r12,0x4
1c004370:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004374:	03bffdad 	ori	$r13,$r13,0xfff
1c004378:	0014b5cd 	and	$r13,$r14,$r13
1c00437c:	2980018d 	st.w	$r13,$r12,0
1c004380:	50000800 	b	8(0x8) # 1c004388 <BAT_FAIL+0xc4>
1c004384:	03400000 	andi	$r0,$r0,0x0
1c004388:	03400000 	andi	$r0,$r0,0x0
1c00438c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004390:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004394:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004398:	4c000020 	jirl	$r0,$r1,0

1c00439c <intc_handler>:
intc_handler():
1c00439c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0043a0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0043a4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0043a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0043ac:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0043b0:	0380158c 	ori	$r12,$r12,0x5
1c0043b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0043b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0043bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0043c0:	0340058c 	andi	$r12,$r12,0x1
1c0043c4:	40001d80 	beqz	$r12,28(0x1c) # 1c0043e0 <intc_handler+0x44>
1c0043c8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0043cc:	57f2fbff 	bl	-3336(0xffff2f8) # 1c0036c4 <TIM_GetITStatus>
1c0043d0:	0015008c 	move	$r12,$r4
1c0043d4:	40000d80 	beqz	$r12,12(0xc) # 1c0043e0 <intc_handler+0x44>
1c0043d8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0043dc:	57f337ff 	bl	-3276(0xffff334) # 1c003710 <TIM_ClearIT>
1c0043e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0043e4:	0340118c 	andi	$r12,$r12,0x4
1c0043e8:	40001580 	beqz	$r12,20(0x14) # 1c0043fc <intc_handler+0x60>
1c0043ec:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0043f0:	03800d8c 	ori	$r12,$r12,0x3
1c0043f4:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0043f8:	2900018d 	st.b	$r13,$r12,0
1c0043fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004400:	0340218c 	andi	$r12,$r12,0x8
1c004404:	40007d80 	beqz	$r12,124(0x7c) # 1c004480 <intc_handler+0xe4>
1c004408:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00440c:	0380098c 	ori	$r12,$r12,0x2
1c004410:	2a00018c 	ld.bu	$r12,$r12,0
1c004414:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004418:	0340118c 	andi	$r12,$r12,0x4
1c00441c:	40005580 	beqz	$r12,84(0x54) # 1c004470 <intc_handler+0xd4>
1c004420:	50003800 	b	56(0x38) # 1c004458 <intc_handler+0xbc>
1c004424:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004428:	57dfe3ff 	bl	-8224(0xfffdfe0) # 1c002408 <UART_ReceiveData>
1c00442c:	0015008c 	move	$r12,$r4
1c004430:	0015018d 	move	$r13,$r12
1c004434:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004438:	02af318c 	addi.w	$r12,$r12,-1076(0xbcc)
1c00443c:	2900018d 	st.b	$r13,$r12,0
1c004440:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004444:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004448:	02aef0a5 	addi.w	$r5,$r5,-1092(0xbbc)
1c00444c:	1cc7ffa4 	pcaddu12i	$r4,409597(0x63ffd)
1c004450:	28af2084 	ld.w	$r4,$r4,-1080(0xbc8)
1c004454:	5415f000 	bl	5616(0x15f0) # 1c005a44 <Queue_Wirte>
1c004458:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00445c:	0380158c 	ori	$r12,$r12,0x5
1c004460:	2a00018c 	ld.bu	$r12,$r12,0
1c004464:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004468:	0340058c 	andi	$r12,$r12,0x1
1c00446c:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004424 <intc_handler+0x88>
1c004470:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004474:	03800d8c 	ori	$r12,$r12,0x3
1c004478:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00447c:	2900018d 	st.b	$r13,$r12,0
1c004480:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004484:	03800d8c 	ori	$r12,$r12,0x3
1c004488:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00448c:	2900018d 	st.b	$r13,$r12,0
1c004490:	03400000 	andi	$r0,$r0,0x0
1c004494:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004498:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00449c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0044a0:	4c000020 	jirl	$r0,$r1,0

1c0044a4 <TIMER_HANDLER>:
TIMER_HANDLER():
1c0044a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044b4:	57e72bff 	bl	-6360(0xfffe728) # 1c002bdc <Set_Timer_clear>
1c0044b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044bc:	02bad084 	addi.w	$r4,$r4,-332(0xeb4)
1c0044c0:	57d6e3ff 	bl	-10528(0xfffd6e0) # 1c001ba0 <myprintf>
1c0044c4:	57e6fbff 	bl	-6408(0xfffe6f8) # 1c002bbc <Set_Timer_stop>
1c0044c8:	03400000 	andi	$r0,$r0,0x0
1c0044cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044d8:	4c000020 	jirl	$r0,$r1,0

1c0044dc <IIC_Delay>:
IIC_Delay():
1c0044dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0044e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0044e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0044e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0044ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0044f0:	50001000 	b	16(0x10) # 1c004500 <IIC_Delay+0x24>
1c0044f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044f8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0044fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004500:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004504:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0044f4 <IIC_Delay+0x18>
1c004508:	03400000 	andi	$r0,$r0,0x0
1c00450c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004510:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004514:	4c000020 	jirl	$r0,$r1,0

1c004518 <IIC_Init>:
IIC_Init():
1c004518:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00451c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004520:	29802076 	st.w	$r22,$r3,8(0x8)
1c004524:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004528:	00150005 	move	$r5,$r0
1c00452c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004530:	57d133ff 	bl	-11984(0xfffd130) # 1c001660 <gpio_pin_remap>
1c004534:	00150005 	move	$r5,$r0
1c004538:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00453c:	57d127ff 	bl	-11996(0xfffd124) # 1c001660 <gpio_pin_remap>
1c004540:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004544:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004548:	57d327ff 	bl	-11484(0xfffd324) # 1c00186c <gpio_set_direction>
1c00454c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004550:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004554:	57d31bff 	bl	-11496(0xfffd318) # 1c00186c <gpio_set_direction>
1c004558:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00455c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004560:	57d08bff 	bl	-12152(0xfffd088) # 1c0015e8 <gpio_write_pin>
1c004564:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004568:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00456c:	57d07fff 	bl	-12164(0xfffd07c) # 1c0015e8 <gpio_write_pin>
1c004570:	03400000 	andi	$r0,$r0,0x0
1c004574:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004578:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00457c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004580:	4c000020 	jirl	$r0,$r1,0

1c004584 <SDA_IN>:
SDA_IN():
1c004584:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004588:	29803061 	st.w	$r1,$r3,12(0xc)
1c00458c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004590:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004594:	00150005 	move	$r5,$r0
1c004598:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00459c:	57d2d3ff 	bl	-11568(0xfffd2d0) # 1c00186c <gpio_set_direction>
1c0045a0:	03400000 	andi	$r0,$r0,0x0
1c0045a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045b0:	4c000020 	jirl	$r0,$r1,0

1c0045b4 <SDA_OUT>:
SDA_OUT():
1c0045b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0045c8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0045cc:	57d2a3ff 	bl	-11616(0xfffd2a0) # 1c00186c <gpio_set_direction>
1c0045d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0045d4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0045d8:	57d013ff 	bl	-12272(0xfffd010) # 1c0015e8 <gpio_write_pin>
1c0045dc:	03400000 	andi	$r0,$r0,0x0
1c0045e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045ec:	4c000020 	jirl	$r0,$r1,0

1c0045f0 <IIC_Start>:
IIC_Start():
1c0045f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004600:	57ffb7ff 	bl	-76(0xfffffb4) # 1c0045b4 <SDA_OUT>
1c004604:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004608:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00460c:	57cfdfff 	bl	-12324(0xfffcfdc) # 1c0015e8 <gpio_write_pin>
1c004610:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004614:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004618:	57cfd3ff 	bl	-12336(0xfffcfd0) # 1c0015e8 <gpio_write_pin>
1c00461c:	57fec3ff 	bl	-320(0xffffec0) # 1c0044dc <IIC_Delay>
1c004620:	00150005 	move	$r5,$r0
1c004624:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004628:	57cfc3ff 	bl	-12352(0xfffcfc0) # 1c0015e8 <gpio_write_pin>
1c00462c:	57feb3ff 	bl	-336(0xffffeb0) # 1c0044dc <IIC_Delay>
1c004630:	00150005 	move	$r5,$r0
1c004634:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004638:	57cfb3ff 	bl	-12368(0xfffcfb0) # 1c0015e8 <gpio_write_pin>
1c00463c:	03400000 	andi	$r0,$r0,0x0
1c004640:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004644:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004648:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00464c:	4c000020 	jirl	$r0,$r1,0

1c004650 <IIC_Stop>:
IIC_Stop():
1c004650:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004654:	29803061 	st.w	$r1,$r3,12(0xc)
1c004658:	29802076 	st.w	$r22,$r3,8(0x8)
1c00465c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004660:	57ff57ff 	bl	-172(0xfffff54) # 1c0045b4 <SDA_OUT>
1c004664:	00150005 	move	$r5,$r0
1c004668:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00466c:	57cf7fff 	bl	-12420(0xfffcf7c) # 1c0015e8 <gpio_write_pin>
1c004670:	00150005 	move	$r5,$r0
1c004674:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004678:	57cf73ff 	bl	-12432(0xfffcf70) # 1c0015e8 <gpio_write_pin>
1c00467c:	57fe63ff 	bl	-416(0xffffe60) # 1c0044dc <IIC_Delay>
1c004680:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004684:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004688:	57cf63ff 	bl	-12448(0xfffcf60) # 1c0015e8 <gpio_write_pin>
1c00468c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004690:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004694:	57cf57ff 	bl	-12460(0xfffcf54) # 1c0015e8 <gpio_write_pin>
1c004698:	57fe47ff 	bl	-444(0xffffe44) # 1c0044dc <IIC_Delay>
1c00469c:	03400000 	andi	$r0,$r0,0x0
1c0046a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046ac:	4c000020 	jirl	$r0,$r1,0

1c0046b0 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c0046b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0046b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0046b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0046bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0046c0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0046c4:	57fec3ff 	bl	-320(0xffffec0) # 1c004584 <SDA_IN>
1c0046c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0046cc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0046d0:	57cf1bff 	bl	-12520(0xfffcf18) # 1c0015e8 <gpio_write_pin>
1c0046d4:	57fe0bff 	bl	-504(0xffffe08) # 1c0044dc <IIC_Delay>
1c0046d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0046dc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0046e0:	57cf0bff 	bl	-12536(0xfffcf08) # 1c0015e8 <gpio_write_pin>
1c0046e4:	57fdfbff 	bl	-520(0xffffdf8) # 1c0044dc <IIC_Delay>
1c0046e8:	50002800 	b	40(0x28) # 1c004710 <IIC_Wait_Ack+0x60>
1c0046ec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0046f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0046f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0046f8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0046fc:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c004700:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c004710 <IIC_Wait_Ack+0x60>
1c004704:	57ff4fff 	bl	-180(0xfffff4c) # 1c004650 <IIC_Stop>
1c004708:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00470c:	50002400 	b	36(0x24) # 1c004730 <IIC_Wait_Ack+0x80>
1c004710:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004714:	57ce87ff 	bl	-12668(0xfffce84) # 1c001598 <gpio_get_pin>
1c004718:	0015008c 	move	$r12,$r4
1c00471c:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c0046ec <IIC_Wait_Ack+0x3c>
1c004720:	00150005 	move	$r5,$r0
1c004724:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004728:	57cec3ff 	bl	-12608(0xfffcec0) # 1c0015e8 <gpio_write_pin>
1c00472c:	0015000c 	move	$r12,$r0
1c004730:	00150184 	move	$r4,$r12
1c004734:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004738:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00473c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004740:	4c000020 	jirl	$r0,$r1,0

1c004744 <IIC_Send_Byte>:
IIC_Send_Byte():
1c004744:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004748:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00474c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004750:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004754:	0015008c 	move	$r12,$r4
1c004758:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00475c:	57fe5bff 	bl	-424(0xffffe58) # 1c0045b4 <SDA_OUT>
1c004760:	00150005 	move	$r5,$r0
1c004764:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004768:	57ce83ff 	bl	-12672(0xfffce80) # 1c0015e8 <gpio_write_pin>
1c00476c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004770:	50006000 	b	96(0x60) # 1c0047d0 <IIC_Send_Byte+0x8c>
1c004774:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c004778:	64001580 	bge	$r12,$r0,20(0x14) # 1c00478c <IIC_Send_Byte+0x48>
1c00477c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004780:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004784:	57ce67ff 	bl	-12700(0xfffce64) # 1c0015e8 <gpio_write_pin>
1c004788:	50001000 	b	16(0x10) # 1c004798 <IIC_Send_Byte+0x54>
1c00478c:	00150005 	move	$r5,$r0
1c004790:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004794:	57ce57ff 	bl	-12716(0xfffce54) # 1c0015e8 <gpio_write_pin>
1c004798:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00479c:	0040858c 	slli.w	$r12,$r12,0x1
1c0047a0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0047a4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047a8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0047ac:	57ce3fff 	bl	-12740(0xfffce3c) # 1c0015e8 <gpio_write_pin>
1c0047b0:	57fd2fff 	bl	-724(0xffffd2c) # 1c0044dc <IIC_Delay>
1c0047b4:	00150005 	move	$r5,$r0
1c0047b8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0047bc:	57ce2fff 	bl	-12756(0xfffce2c) # 1c0015e8 <gpio_write_pin>
1c0047c0:	57fd1fff 	bl	-740(0xffffd1c) # 1c0044dc <IIC_Delay>
1c0047c4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0047c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0047cc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0047d0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0047d4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0047d8:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c004774 <IIC_Send_Byte+0x30>
1c0047dc:	03400000 	andi	$r0,$r0,0x0
1c0047e0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0047e4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0047e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0047ec:	4c000020 	jirl	$r0,$r1,0

1c0047f0 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c0047f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004800:	57fd1bff 	bl	-744(0xffffd18) # 1c004518 <IIC_Init>
1c004804:	03400000 	andi	$r0,$r0,0x0
1c004808:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00480c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004810:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004814:	4c000020 	jirl	$r0,$r1,0

1c004818 <OLED_WR_Byte>:
OLED_WR_Byte():
1c004818:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00481c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004820:	29806076 	st.w	$r22,$r3,24(0x18)
1c004824:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004828:	0015008c 	move	$r12,$r4
1c00482c:	001500ad 	move	$r13,$r5
1c004830:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004834:	001501ac 	move	$r12,$r13
1c004838:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00483c:	57fdb7ff 	bl	-588(0xffffdb4) # 1c0045f0 <IIC_Start>
1c004840:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c004844:	57ff03ff 	bl	-256(0xfffff00) # 1c004744 <IIC_Send_Byte>
1c004848:	57fe6bff 	bl	-408(0xffffe68) # 1c0046b0 <IIC_Wait_Ack>
1c00484c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004850:	00150184 	move	$r4,$r12
1c004854:	57fef3ff 	bl	-272(0xffffef0) # 1c004744 <IIC_Send_Byte>
1c004858:	57fe5bff 	bl	-424(0xffffe58) # 1c0046b0 <IIC_Wait_Ack>
1c00485c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004860:	00150184 	move	$r4,$r12
1c004864:	57fee3ff 	bl	-288(0xffffee0) # 1c004744 <IIC_Send_Byte>
1c004868:	57fe4bff 	bl	-440(0xffffe48) # 1c0046b0 <IIC_Wait_Ack>
1c00486c:	57fde7ff 	bl	-540(0xffffde4) # 1c004650 <IIC_Stop>
1c004870:	03400000 	andi	$r0,$r0,0x0
1c004874:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004878:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00487c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004880:	4c000020 	jirl	$r0,$r1,0

1c004884 <OLED_Set_Pos>:
OLED_Set_Pos():
1c004884:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004888:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00488c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004890:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004894:	0015008c 	move	$r12,$r4
1c004898:	001500ad 	move	$r13,$r5
1c00489c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0048a0:	001501ac 	move	$r12,$r13
1c0048a4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0048a8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0048ac:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0048b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0048b4:	00150005 	move	$r5,$r0
1c0048b8:	00150184 	move	$r4,$r12
1c0048bc:	57ff5fff 	bl	-164(0xfffff5c) # 1c004818 <OLED_WR_Byte>
1c0048c0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0048c4:	0044918c 	srli.w	$r12,$r12,0x4
1c0048c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0048cc:	0380418c 	ori	$r12,$r12,0x10
1c0048d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0048d4:	00150005 	move	$r5,$r0
1c0048d8:	00150184 	move	$r4,$r12
1c0048dc:	57ff3fff 	bl	-196(0xfffff3c) # 1c004818 <OLED_WR_Byte>
1c0048e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0048e4:	03403d8c 	andi	$r12,$r12,0xf
1c0048e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0048ec:	00150005 	move	$r5,$r0
1c0048f0:	00150184 	move	$r4,$r12
1c0048f4:	57ff27ff 	bl	-220(0xfffff24) # 1c004818 <OLED_WR_Byte>
1c0048f8:	03400000 	andi	$r0,$r0,0x0
1c0048fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004900:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004904:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004908:	4c000020 	jirl	$r0,$r1,0

1c00490c <OLED_Clear>:
OLED_Clear():
1c00490c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004910:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004914:	29806076 	st.w	$r22,$r3,24(0x18)
1c004918:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00491c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004920:	50006800 	b	104(0x68) # 1c004988 <OLED_Clear+0x7c>
1c004924:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004928:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c00492c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004930:	00150005 	move	$r5,$r0
1c004934:	00150184 	move	$r4,$r12
1c004938:	57fee3ff 	bl	-288(0xffffee0) # 1c004818 <OLED_WR_Byte>
1c00493c:	00150005 	move	$r5,$r0
1c004940:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004944:	57fed7ff 	bl	-300(0xffffed4) # 1c004818 <OLED_WR_Byte>
1c004948:	00150005 	move	$r5,$r0
1c00494c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004950:	57fecbff 	bl	-312(0xffffec8) # 1c004818 <OLED_WR_Byte>
1c004954:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004958:	50001c00 	b	28(0x1c) # 1c004974 <OLED_Clear+0x68>
1c00495c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004960:	00150004 	move	$r4,$r0
1c004964:	57feb7ff 	bl	-332(0xffffeb4) # 1c004818 <OLED_WR_Byte>
1c004968:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00496c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004970:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004974:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c004978:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c00495c <OLED_Clear+0x50>
1c00497c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004980:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004984:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004988:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00498c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004990:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c004924 <OLED_Clear+0x18>
1c004994:	03400000 	andi	$r0,$r0,0x0
1c004998:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00499c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049a4:	4c000020 	jirl	$r0,$r1,0

1c0049a8 <OLED_Init>:
OLED_Init():
1c0049a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049b8:	57fe3bff 	bl	-456(0xffffe38) # 1c0047f0 <OLED_Hardware_Init>
1c0049bc:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0049c0:	57e5ffff 	bl	-6660(0xfffe5fc) # 1c002fbc <delay_ms>
1c0049c4:	57ff4bff 	bl	-184(0xfffff48) # 1c00490c <OLED_Clear>
1c0049c8:	00150005 	move	$r5,$r0
1c0049cc:	00150004 	move	$r4,$r0
1c0049d0:	57feb7ff 	bl	-332(0xffffeb4) # 1c004884 <OLED_Set_Pos>
1c0049d4:	00150005 	move	$r5,$r0
1c0049d8:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0049dc:	57fe3fff 	bl	-452(0xffffe3c) # 1c004818 <OLED_WR_Byte>
1c0049e0:	00150005 	move	$r5,$r0
1c0049e4:	00150004 	move	$r4,$r0
1c0049e8:	57fe33ff 	bl	-464(0xffffe30) # 1c004818 <OLED_WR_Byte>
1c0049ec:	00150005 	move	$r5,$r0
1c0049f0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0049f4:	57fe27ff 	bl	-476(0xffffe24) # 1c004818 <OLED_WR_Byte>
1c0049f8:	00150005 	move	$r5,$r0
1c0049fc:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004a00:	57fe1bff 	bl	-488(0xffffe18) # 1c004818 <OLED_WR_Byte>
1c004a04:	00150005 	move	$r5,$r0
1c004a08:	02820404 	addi.w	$r4,$r0,129(0x81)
1c004a0c:	57fe0fff 	bl	-500(0xffffe0c) # 1c004818 <OLED_WR_Byte>
1c004a10:	00150005 	move	$r5,$r0
1c004a14:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c004a18:	57fe03ff 	bl	-512(0xffffe00) # 1c004818 <OLED_WR_Byte>
1c004a1c:	00150005 	move	$r5,$r0
1c004a20:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c004a24:	57fdf7ff 	bl	-524(0xffffdf4) # 1c004818 <OLED_WR_Byte>
1c004a28:	00150005 	move	$r5,$r0
1c004a2c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c004a30:	57fdebff 	bl	-536(0xffffde8) # 1c004818 <OLED_WR_Byte>
1c004a34:	00150005 	move	$r5,$r0
1c004a38:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c004a3c:	57fddfff 	bl	-548(0xffffddc) # 1c004818 <OLED_WR_Byte>
1c004a40:	00150005 	move	$r5,$r0
1c004a44:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c004a48:	57fdd3ff 	bl	-560(0xffffdd0) # 1c004818 <OLED_WR_Byte>
1c004a4c:	00150005 	move	$r5,$r0
1c004a50:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c004a54:	57fdc7ff 	bl	-572(0xffffdc4) # 1c004818 <OLED_WR_Byte>
1c004a58:	00150005 	move	$r5,$r0
1c004a5c:	02820404 	addi.w	$r4,$r0,129(0x81)
1c004a60:	57fdbbff 	bl	-584(0xffffdb8) # 1c004818 <OLED_WR_Byte>
1c004a64:	00150005 	move	$r5,$r0
1c004a68:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c004a6c:	57fdafff 	bl	-596(0xffffdac) # 1c004818 <OLED_WR_Byte>
1c004a70:	00150005 	move	$r5,$r0
1c004a74:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c004a78:	57fda3ff 	bl	-608(0xffffda0) # 1c004818 <OLED_WR_Byte>
1c004a7c:	00150005 	move	$r5,$r0
1c004a80:	00150004 	move	$r4,$r0
1c004a84:	57fd97ff 	bl	-620(0xffffd94) # 1c004818 <OLED_WR_Byte>
1c004a88:	00150005 	move	$r5,$r0
1c004a8c:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c004a90:	57fd8bff 	bl	-632(0xffffd88) # 1c004818 <OLED_WR_Byte>
1c004a94:	00150005 	move	$r5,$r0
1c004a98:	02820004 	addi.w	$r4,$r0,128(0x80)
1c004a9c:	57fd7fff 	bl	-644(0xffffd7c) # 1c004818 <OLED_WR_Byte>
1c004aa0:	00150005 	move	$r5,$r0
1c004aa4:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c004aa8:	57fd73ff 	bl	-656(0xffffd70) # 1c004818 <OLED_WR_Byte>
1c004aac:	00150005 	move	$r5,$r0
1c004ab0:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c004ab4:	57fd67ff 	bl	-668(0xffffd64) # 1c004818 <OLED_WR_Byte>
1c004ab8:	00150005 	move	$r5,$r0
1c004abc:	02836804 	addi.w	$r4,$r0,218(0xda)
1c004ac0:	57fd5bff 	bl	-680(0xffffd58) # 1c004818 <OLED_WR_Byte>
1c004ac4:	00150005 	move	$r5,$r0
1c004ac8:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004acc:	57fd4fff 	bl	-692(0xffffd4c) # 1c004818 <OLED_WR_Byte>
1c004ad0:	00150005 	move	$r5,$r0
1c004ad4:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c004ad8:	57fd43ff 	bl	-704(0xffffd40) # 1c004818 <OLED_WR_Byte>
1c004adc:	00150005 	move	$r5,$r0
1c004ae0:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004ae4:	57fd37ff 	bl	-716(0xffffd34) # 1c004818 <OLED_WR_Byte>
1c004ae8:	00150005 	move	$r5,$r0
1c004aec:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004af0:	57fd2bff 	bl	-728(0xffffd28) # 1c004818 <OLED_WR_Byte>
1c004af4:	00150005 	move	$r5,$r0
1c004af8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004afc:	57fd1fff 	bl	-740(0xffffd1c) # 1c004818 <OLED_WR_Byte>
1c004b00:	00150005 	move	$r5,$r0
1c004b04:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c004b08:	57fd13ff 	bl	-752(0xffffd10) # 1c004818 <OLED_WR_Byte>
1c004b0c:	00150005 	move	$r5,$r0
1c004b10:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004b14:	57fd07ff 	bl	-764(0xffffd04) # 1c004818 <OLED_WR_Byte>
1c004b18:	00150005 	move	$r5,$r0
1c004b1c:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c004b20:	57fcfbff 	bl	-776(0xffffcf8) # 1c004818 <OLED_WR_Byte>
1c004b24:	00150005 	move	$r5,$r0
1c004b28:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c004b2c:	57fcefff 	bl	-788(0xffffcec) # 1c004818 <OLED_WR_Byte>
1c004b30:	00150005 	move	$r5,$r0
1c004b34:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c004b38:	57fce3ff 	bl	-800(0xffffce0) # 1c004818 <OLED_WR_Byte>
1c004b3c:	00150005 	move	$r5,$r0
1c004b40:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c004b44:	57fcd7ff 	bl	-812(0xffffcd4) # 1c004818 <OLED_WR_Byte>
1c004b48:	57fdc7ff 	bl	-572(0xffffdc4) # 1c00490c <OLED_Clear>
1c004b4c:	00150005 	move	$r5,$r0
1c004b50:	00150004 	move	$r4,$r0
1c004b54:	57fd33ff 	bl	-720(0xffffd30) # 1c004884 <OLED_Set_Pos>
1c004b58:	03400000 	andi	$r0,$r0,0x0
1c004b5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b68:	4c000020 	jirl	$r0,$r1,0

1c004b6c <OLED_ShowChar>:
OLED_ShowChar():
1c004b6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004b7c:	0015008c 	move	$r12,$r4
1c004b80:	001500af 	move	$r15,$r5
1c004b84:	001500ce 	move	$r14,$r6
1c004b88:	001500ed 	move	$r13,$r7
1c004b8c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c004b90:	001501ec 	move	$r12,$r15
1c004b94:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c004b98:	001501cc 	move	$r12,$r14
1c004b9c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c004ba0:	001501ac 	move	$r12,$r13
1c004ba4:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c004ba8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004bac:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004bb0:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c004bb4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004bb8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c004bc4 <OLED_ShowChar+0x58>
1c004bbc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004bc0:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c004bc4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c004bc8:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c004bcc:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c004bd0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004bd4:	50009800 	b	152(0x98) # 1c004c6c <OLED_ShowChar+0x100>
1c004bd8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c004bdc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c004be0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c004be4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004be8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004bec:	001031ac 	add.w	$r12,$r13,$r12
1c004bf0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004bf4:	00150185 	move	$r5,$r12
1c004bf8:	001501c4 	move	$r4,$r14
1c004bfc:	57fc8bff 	bl	-888(0xffffc88) # 1c004884 <OLED_Set_Pos>
1c004c00:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004c04:	50004800 	b	72(0x48) # 1c004c4c <OLED_ShowChar+0xe0>
1c004c08:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c004c0c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c10:	00408d8e 	slli.w	$r14,$r12,0x3
1c004c14:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004c18:	001031cc 	add.w	$r12,$r14,$r12
1c004c1c:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c004c20:	02acd1ce 	addi.w	$r14,$r14,-1228(0xb34)
1c004c24:	004091ad 	slli.w	$r13,$r13,0x4
1c004c28:	001035cd 	add.w	$r13,$r14,$r13
1c004c2c:	001031ac 	add.w	$r12,$r13,$r12
1c004c30:	2a00018c 	ld.bu	$r12,$r12,0
1c004c34:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004c38:	00150184 	move	$r4,$r12
1c004c3c:	57fbdfff 	bl	-1060(0xffffbdc) # 1c004818 <OLED_WR_Byte>
1c004c40:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004c44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c48:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004c4c:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c004c50:	0044858c 	srli.w	$r12,$r12,0x1
1c004c54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004c58:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c004c5c:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c004c08 <OLED_ShowChar+0x9c>
1c004c60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c68:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004c6c:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c004c70:	00448d8c 	srli.w	$r12,$r12,0x3
1c004c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004c78:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004c7c:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c004bd8 <OLED_ShowChar+0x6c>
1c004c80:	03400000 	andi	$r0,$r0,0x0
1c004c84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004c88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004c8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004c90:	4c000020 	jirl	$r0,$r1,0

1c004c94 <OLED_DrawFont16>:
OLED_DrawFont16():
1c004c94:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004c98:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004c9c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004ca0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004ca4:	0015008c 	move	$r12,$r4
1c004ca8:	001500ad 	move	$r13,$r5
1c004cac:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c004cb0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c004cb4:	001501ac 	move	$r12,$r13
1c004cb8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c004cbc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004cc0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004cc4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004cc8:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c004ccc:	02806c0c 	addi.w	$r12,$r0,27(0x1b)
1c004cd0:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c004cd4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004cd8:	50013800 	b	312(0x138) # 1c004e10 <OLED_DrawFont16+0x17c>
1c004cdc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004ce0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004ce4:	028181ad 	addi.w	$r13,$r13,96(0x60)
1c004ce8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004cec:	001c31cc 	mul.w	$r12,$r14,$r12
1c004cf0:	001031ac 	add.w	$r12,$r13,$r12
1c004cf4:	2a00018d 	ld.bu	$r13,$r12,0
1c004cf8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004cfc:	2a00018c 	ld.bu	$r12,$r12,0
1c004d00:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c004e04 <OLED_DrawFont16+0x170>
1c004d04:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004d08:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004d0c:	0280e1ad 	addi.w	$r13,$r13,56(0x38)
1c004d10:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004d14:	001c31cc 	mul.w	$r12,$r14,$r12
1c004d18:	001031ac 	add.w	$r12,$r13,$r12
1c004d1c:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c004d20:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004d24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d28:	2a00018c 	ld.bu	$r12,$r12,0
1c004d2c:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c004e04 <OLED_DrawFont16+0x170>
1c004d30:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004d34:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004d38:	028031ad 	addi.w	$r13,$r13,12(0xc)
1c004d3c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004d40:	001c31cc 	mul.w	$r12,$r14,$r12
1c004d44:	001031ac 	add.w	$r12,$r13,$r12
1c004d48:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c004d4c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004d50:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004d54:	2a00018c 	ld.bu	$r12,$r12,0
1c004d58:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c004e04 <OLED_DrawFont16+0x170>
1c004d5c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004d60:	50009400 	b	148(0x94) # 1c004df4 <OLED_DrawFont16+0x160>
1c004d64:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c004d68:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c004d6c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c004d70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d74:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004d78:	001031ac 	add.w	$r12,$r13,$r12
1c004d7c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d80:	00150185 	move	$r5,$r12
1c004d84:	001501c4 	move	$r4,$r14
1c004d88:	57faffff 	bl	-1284(0xffffafc) # 1c004884 <OLED_Set_Pos>
1c004d8c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004d90:	50004c00 	b	76(0x4c) # 1c004ddc <OLED_DrawFont16+0x148>
1c004d94:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c004d98:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004d9c:	0040918d 	slli.w	$r13,$r12,0x4
1c004da0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004da4:	001031ad 	add.w	$r13,$r13,$r12
1c004da8:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c004dac:	02be61ce 	addi.w	$r14,$r14,-104(0xf98)
1c004db0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004db4:	001c31ec 	mul.w	$r12,$r15,$r12
1c004db8:	001031cc 	add.w	$r12,$r14,$r12
1c004dbc:	0010358c 	add.w	$r12,$r12,$r13
1c004dc0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c004dc4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004dc8:	00150184 	move	$r4,$r12
1c004dcc:	57fa4fff 	bl	-1460(0xffffa4c) # 1c004818 <OLED_WR_Byte>
1c004dd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004dd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004dd8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ddc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004de0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004de4:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c004d94 <OLED_DrawFont16+0x100>
1c004de8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004dec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004df0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004df4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c004df8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004dfc:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c004d64 <OLED_DrawFont16+0xd0>
1c004e00:	50001c00 	b	28(0x1c) # 1c004e1c <OLED_DrawFont16+0x188>
1c004e04:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c004e08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e0c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c004e10:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c004e14:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c004e18:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c004cdc <OLED_DrawFont16+0x48>
1c004e1c:	03400000 	andi	$r0,$r0,0x0
1c004e20:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004e24:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004e28:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004e2c:	4c000020 	jirl	$r0,$r1,0

1c004e30 <OLED_DrawFont32>:
OLED_DrawFont32():
1c004e30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004e34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004e38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004e3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004e40:	0015008c 	move	$r12,$r4
1c004e44:	001500ad 	move	$r13,$r5
1c004e48:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c004e4c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c004e50:	001501ac 	move	$r12,$r13
1c004e54:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c004e58:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004e5c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004e60:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004e64:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c004e68:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c004e6c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c004e70:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004e74:	50014400 	b	324(0x144) # 1c004fb8 <OLED_DrawFont32+0x188>
1c004e78:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004e7c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004e80:	02bb11ad 	addi.w	$r13,$r13,-316(0xec4)
1c004e84:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004e88:	001c31cc 	mul.w	$r12,$r14,$r12
1c004e8c:	001031ac 	add.w	$r12,$r13,$r12
1c004e90:	2a00018c 	ld.bu	$r12,$r12,0
1c004e94:	0015018d 	move	$r13,$r12
1c004e98:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004e9c:	2800018c 	ld.b	$r12,$r12,0
1c004ea0:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c004fac <OLED_DrawFont32+0x17c>
1c004ea4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004ea8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004eac:	02ba61ad 	addi.w	$r13,$r13,-360(0xe98)
1c004eb0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004eb4:	001c31cc 	mul.w	$r12,$r14,$r12
1c004eb8:	001031ac 	add.w	$r12,$r13,$r12
1c004ebc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004ec0:	0015018d 	move	$r13,$r12
1c004ec4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004ec8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ecc:	2800018c 	ld.b	$r12,$r12,0
1c004ed0:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c004fac <OLED_DrawFont32+0x17c>
1c004ed4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004ed8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004edc:	02b9a1ad 	addi.w	$r13,$r13,-408(0xe68)
1c004ee0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004ee4:	001c31cc 	mul.w	$r12,$r14,$r12
1c004ee8:	001031ac 	add.w	$r12,$r13,$r12
1c004eec:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c004ef0:	0015018d 	move	$r13,$r12
1c004ef4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004ef8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004efc:	2800018c 	ld.b	$r12,$r12,0
1c004f00:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c004fac <OLED_DrawFont32+0x17c>
1c004f04:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004f08:	50009400 	b	148(0x94) # 1c004f9c <OLED_DrawFont32+0x16c>
1c004f0c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c004f10:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c004f14:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c004f18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f1c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004f20:	001031ac 	add.w	$r12,$r13,$r12
1c004f24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004f28:	00150185 	move	$r5,$r12
1c004f2c:	001501c4 	move	$r4,$r14
1c004f30:	57f957ff 	bl	-1708(0xffff954) # 1c004884 <OLED_Set_Pos>
1c004f34:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004f38:	50004c00 	b	76(0x4c) # 1c004f84 <OLED_DrawFont32+0x154>
1c004f3c:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c004f40:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004f44:	0040958d 	slli.w	$r13,$r12,0x5
1c004f48:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f4c:	001031ad 	add.w	$r13,$r13,$r12
1c004f50:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c004f54:	028691ce 	addi.w	$r14,$r14,420(0x1a4)
1c004f58:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c004f5c:	001c31ec 	mul.w	$r12,$r15,$r12
1c004f60:	001031cc 	add.w	$r12,$r14,$r12
1c004f64:	0010358c 	add.w	$r12,$r12,$r13
1c004f68:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c004f6c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004f70:	00150184 	move	$r4,$r12
1c004f74:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c004818 <OLED_WR_Byte>
1c004f78:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f84:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004f88:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004f8c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c004f3c <OLED_DrawFont32+0x10c>
1c004f90:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004f94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f98:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004f9c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c004fa0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004fa4:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c004f0c <OLED_DrawFont32+0xdc>
1c004fa8:	50001c00 	b	28(0x1c) # 1c004fc4 <OLED_DrawFont32+0x194>
1c004fac:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c004fb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fb4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c004fb8:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c004fbc:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c004fc0:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c004e78 <OLED_DrawFont32+0x48>
1c004fc4:	03400000 	andi	$r0,$r0,0x0
1c004fc8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004fcc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004fd0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004fd4:	4c000020 	jirl	$r0,$r1,0

1c004fd8 <OLED_Show_Str>:
OLED_Show_Str():
1c004fd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004fdc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004fe0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004fe4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004fe8:	0015008c 	move	$r12,$r4
1c004fec:	001500ae 	move	$r14,$r5
1c004ff0:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c004ff4:	001500ed 	move	$r13,$r7
1c004ff8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c004ffc:	001501cc 	move	$r12,$r14
1c005000:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005004:	001501ac 	move	$r12,$r13
1c005008:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c00500c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005010:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005014:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005018:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c00501c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005020:	580209ac 	beq	$r13,$r12,520(0x208) # 1c005228 <OLED_Show_Str+0x250>
1c005024:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005028:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c00502c:	5001fc00 	b	508(0x1fc) # 1c005228 <OLED_Show_Str+0x250>
1c005030:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005034:	44012580 	bnez	$r12,292(0x124) # 1c005158 <OLED_Show_Str+0x180>
1c005038:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c00503c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005040:	0044858c 	srli.w	$r12,$r12,0x1
1c005044:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005048:	0015018e 	move	$r14,$r12
1c00504c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005050:	0011398c 	sub.w	$r12,$r12,$r14
1c005054:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005080 <OLED_Show_Str+0xa8>
1c005058:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c00505c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005060:	00448d8c 	srli.w	$r12,$r12,0x3
1c005064:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005068:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00506c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005070:	001031ac 	add.w	$r12,$r13,$r12
1c005074:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005078:	03401d8c 	andi	$r12,$r12,0x7
1c00507c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005080:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005084:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005088:	00448d8c 	srli.w	$r12,$r12,0x3
1c00508c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005090:	0015018e 	move	$r14,$r12
1c005094:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005098:	0011398c 	sub.w	$r12,$r12,$r14
1c00509c:	6400098d 	bge	$r12,$r13,8(0x8) # 1c0050a4 <OLED_Show_Str+0xcc>
1c0050a0:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c0050a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0050a8:	2800018c 	ld.b	$r12,$r12,0
1c0050ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0050b0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0050b4:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0050c4 <OLED_Show_Str+0xec>
1c0050b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0050bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0050c0:	50016800 	b	360(0x168) # 1c005228 <OLED_Show_Str+0x250>
1c0050c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0050c8:	2800018d 	ld.b	$r13,$r12,0
1c0050cc:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0050d0:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005100 <OLED_Show_Str+0x128>
1c0050d4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0050d8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0050dc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0050e0:	001031ac 	add.w	$r12,$r13,$r12
1c0050e4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0050e8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0050ec:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0050f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0050f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050f8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0050fc:	50004c00 	b	76(0x4c) # 1c005148 <OLED_Show_Str+0x170>
1c005100:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005104:	2800018c 	ld.b	$r12,$r12,0
1c005108:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00510c:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c005110:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005114:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005118:	001501e7 	move	$r7,$r15
1c00511c:	001501c6 	move	$r6,$r14
1c005120:	001501a5 	move	$r5,$r13
1c005124:	00150184 	move	$r4,$r12
1c005128:	57fa47ff 	bl	-1468(0xffffa44) # 1c004b6c <OLED_ShowChar>
1c00512c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005130:	0044858c 	srli.w	$r12,$r12,0x1
1c005134:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005138:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00513c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005140:	001031ac 	add.w	$r12,$r13,$r12
1c005144:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005148:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00514c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005150:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005154:	5000d400 	b	212(0xd4) # 1c005228 <OLED_Show_Str+0x250>
1c005158:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c00515c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005160:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c005164:	001131cc 	sub.w	$r12,$r14,$r12
1c005168:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005194 <OLED_Show_Str+0x1bc>
1c00516c:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005170:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005174:	00448d8c 	srli.w	$r12,$r12,0x3
1c005178:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00517c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005180:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005184:	001031ac 	add.w	$r12,$r13,$r12
1c005188:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00518c:	03401d8c 	andi	$r12,$r12,0x7
1c005190:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005194:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005198:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00519c:	00448d8c 	srli.w	$r12,$r12,0x3
1c0051a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051a4:	0015018e 	move	$r14,$r12
1c0051a8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0051ac:	0011398c 	sub.w	$r12,$r12,$r14
1c0051b0:	6400098d 	bge	$r12,$r13,8(0x8) # 1c0051b8 <OLED_Show_Str+0x1e0>
1c0051b4:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c0051b8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0051bc:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0051c0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0051c4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0051e4 <OLED_Show_Str+0x20c>
1c0051c8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0051cc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0051d0:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c0051d4:	001501a5 	move	$r5,$r13
1c0051d8:	00150184 	move	$r4,$r12
1c0051dc:	57fc57ff 	bl	-940(0xffffc54) # 1c004e30 <OLED_DrawFont32>
1c0051e0:	50002800 	b	40(0x28) # 1c005208 <OLED_Show_Str+0x230>
1c0051e4:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0051e8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0051ec:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005208 <OLED_Show_Str+0x230>
1c0051f0:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0051f4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0051f8:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c0051fc:	001501a5 	move	$r5,$r13
1c005200:	00150184 	move	$r4,$r12
1c005204:	57fa93ff 	bl	-1392(0xffffa90) # 1c004c94 <OLED_DrawFont16>
1c005208:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00520c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005210:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005214:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005218:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00521c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005220:	001031ac 	add.w	$r12,$r13,$r12
1c005224:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005228:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00522c:	2800018c 	ld.b	$r12,$r12,0
1c005230:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c005030 <OLED_Show_Str+0x58>
1c005234:	03400000 	andi	$r0,$r0,0x0
1c005238:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00523c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005240:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005244:	4c000020 	jirl	$r0,$r1,0

1c005248 <main>:
main():
1c005248:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00524c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005250:	29806076 	st.w	$r22,$r3,24(0x18)
1c005254:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005258:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00525c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c005260:	57d87bff 	bl	-10120(0xfffd878) # 1c002ad8 <SystemClockInit>
1c005264:	57c0cbff 	bl	-16184(0xfffc0c8) # 1c00132c <GPIOInit>
1c005268:	57f743ff 	bl	-2240(0xffff740) # 1c0049a8 <OLED_Init>
1c00526c:	54062c00 	bl	1580(0x62c) # 1c005898 <DHT11_Init>
1c005270:	57d92bff 	bl	-9944(0xfffd928) # 1c002b98 <EnableInt>
1c005274:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005278:	28b68084 	ld.w	$r4,$r4,-608(0xda0)
1c00527c:	54065c00 	bl	1628(0x65c) # 1c0058d8 <Queue_Init>
1c005280:	54097c00 	bl	2428(0x97c) # 1c005bfc <BEEP_Init>
1c005284:	1400004c 	lu12i.w	$r12,2(0x2)
1c005288:	03960184 	ori	$r4,$r12,0x580
1c00528c:	57d1cbff 	bl	-11832(0xfffd1c8) # 1c002454 <Uart0_init>
1c005290:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005294:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005298:	02a270c6 	addi.w	$r6,$r6,-1892(0x89c)
1c00529c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0052a0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0052a4:	57fd37ff 	bl	-716(0xffffd34) # 1c004fd8 <OLED_Show_Str>
1c0052a8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0052ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0052b0:	02a250c6 	addi.w	$r6,$r6,-1900(0x894)
1c0052b4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0052b8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0052bc:	57fd1fff 	bl	-740(0xffffd1c) # 1c004fd8 <OLED_Show_Str>
1c0052c0:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0052c4:	02b510a5 	addi.w	$r5,$r5,-700(0xd44)
1c0052c8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0052cc:	02b4e884 	addi.w	$r4,$r4,-710(0xd3a)
1c0052d0:	5404bc00 	bl	1212(0x4bc) # 1c00578c <DHT11_Read_Data>
1c0052d4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0052d8:	02b4b98c 	addi.w	$r12,$r12,-722(0xd2e)
1c0052dc:	2a40018d 	ld.hu	$r13,$r12,0
1c0052e0:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c0052e4:	002131ae 	div.wu	$r14,$r13,$r12
1c0052e8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0052f0 <main+0xa8>
1c0052ec:	002a0007 	break	0x7
1c0052f0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0052f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052f8:	02bfe98c 	addi.w	$r12,$r12,-6(0xffa)
1c0052fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005300:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005304:	02b4918c 	addi.w	$r12,$r12,-732(0xd24)
1c005308:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00530c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005310:	02b3e18c 	addi.w	$r12,$r12,-776(0xcf8)
1c005314:	2a40018d 	ld.hu	$r13,$r12,0
1c005318:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00531c:	002131ae 	div.wu	$r14,$r13,$r12
1c005320:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005328 <main+0xe0>
1c005324:	002a0007 	break	0x7
1c005328:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c00532c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005330:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005334:	02b3d18c 	addi.w	$r12,$r12,-780(0xcf4)
1c005338:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00533c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005340:	02b3198c 	addi.w	$r12,$r12,-826(0xcc6)
1c005344:	2a40018d 	ld.hu	$r13,$r12,0
1c005348:	02845c0c 	addi.w	$r12,$r0,279(0x117)
1c00534c:	6800218d 	bltu	$r12,$r13,32(0x20) # 1c00536c <main+0x124>
1c005350:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005354:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005358:	029ff0c6 	addi.w	$r6,$r6,2044(0x7fc)
1c00535c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005360:	02811804 	addi.w	$r4,$r0,70(0x46)
1c005364:	57fc77ff 	bl	-908(0xffffc74) # 1c004fd8 <OLED_Show_Str>
1c005368:	50004c00 	b	76(0x4c) # 1c0053b4 <main+0x16c>
1c00536c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005370:	02b2598c 	addi.w	$r12,$r12,-874(0xc96)
1c005374:	2a40018d 	ld.hu	$r13,$r12,0
1c005378:	02859c0c 	addi.w	$r12,$r0,359(0x167)
1c00537c:	6c00218d 	bgeu	$r12,$r13,32(0x20) # 1c00539c <main+0x154>
1c005380:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005384:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005388:	029f50c6 	addi.w	$r6,$r6,2004(0x7d4)
1c00538c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005390:	02811804 	addi.w	$r4,$r0,70(0x46)
1c005394:	57fc47ff 	bl	-956(0xffffc44) # 1c004fd8 <OLED_Show_Str>
1c005398:	50001c00 	b	28(0x1c) # 1c0053b4 <main+0x16c>
1c00539c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0053a0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0053a4:	029f00c6 	addi.w	$r6,$r6,1984(0x7c0)
1c0053a8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0053ac:	02811804 	addi.w	$r4,$r0,70(0x46)
1c0053b0:	57fc2bff 	bl	-984(0xffffc28) # 1c004fd8 <OLED_Show_Str>
1c0053b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053b8:	02b1418c 	addi.w	$r12,$r12,-944(0xc50)
1c0053bc:	2a40018d 	ld.hu	$r13,$r12,0
1c0053c0:	02895c0c 	addi.w	$r12,$r0,599(0x257)
1c0053c4:	6800218d 	bltu	$r12,$r13,32(0x20) # 1c0053e4 <main+0x19c>
1c0053c8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0053cc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0053d0:	029e10c6 	addi.w	$r6,$r6,1924(0x784)
1c0053d4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0053d8:	02811804 	addi.w	$r4,$r0,70(0x46)
1c0053dc:	57fbffff 	bl	-1028(0xffffbfc) # 1c004fd8 <OLED_Show_Str>
1c0053e0:	50001c00 	b	28(0x1c) # 1c0053fc <main+0x1b4>
1c0053e4:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0053e8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0053ec:	029de0c6 	addi.w	$r6,$r6,1912(0x778)
1c0053f0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0053f4:	02811804 	addi.w	$r4,$r0,70(0x46)
1c0053f8:	57fbe3ff 	bl	-1056(0xffffbe0) # 1c004fd8 <OLED_Show_Str>
1c0053fc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005400:	28b0518c 	ld.w	$r12,$r12,-1004(0xc14)
1c005404:	2a00018c 	ld.bu	$r12,$r12,0
1c005408:	44006180 	bnez	$r12,96(0x60) # 1c005468 <main+0x220>
1c00540c:	02815004 	addi.w	$r4,$r0,84(0x54)
1c005410:	54081c00 	bl	2076(0x81c) # 1c005c2c <esp8266_check_cmd>
1c005414:	0015008c 	move	$r12,$r4
1c005418:	40005180 	beqz	$r12,80(0x50) # 1c005468 <main+0x220>
1c00541c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005420:	28afd18c 	ld.w	$r12,$r12,-1036(0xbf4)
1c005424:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005428:	2900018d 	st.b	$r13,$r12,0
1c00542c:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005430:	57db8fff 	bl	-9332(0xfffdb8c) # 1c002fbc <delay_ms>
1c005434:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005438:	57db87ff 	bl	-9340(0xfffdb84) # 1c002fbc <delay_ms>
1c00543c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005440:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005444:	57c1a7ff 	bl	-15964(0xfffc1a4) # 1c0015e8 <gpio_write_pin>
1c005448:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00544c:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005450:	57c19bff 	bl	-15976(0xfffc198) # 1c0015e8 <gpio_write_pin>
1c005454:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005458:	57db67ff 	bl	-9372(0xfffdb64) # 1c002fbc <delay_ms>
1c00545c:	00150005 	move	$r5,$r0
1c005460:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005464:	57c187ff 	bl	-15996(0xfffc184) # 1c0015e8 <gpio_write_pin>
1c005468:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00546c:	28aea18c 	ld.w	$r12,$r12,-1112(0xba8)
1c005470:	2a00018d 	ld.bu	$r13,$r12,0
1c005474:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005478:	5ffe49ac 	bne	$r13,$r12,-440(0x3fe48) # 1c0052c0 <main+0x78>
1c00547c:	02977004 	addi.w	$r4,$r0,1500(0x5dc)
1c005480:	57db3fff 	bl	-9412(0xfffdb3c) # 1c002fbc <delay_ms>
1c005484:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005488:	02ae818c 	addi.w	$r12,$r12,-1120(0xba0)
1c00548c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005490:	0015018d 	move	$r13,$r12
1c005494:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005498:	02ae418c 	addi.w	$r12,$r12,-1136(0xb90)
1c00549c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0054a0:	001031ac 	add.w	$r12,$r13,$r12
1c0054a4:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c0054a8:	02ae01ad 	addi.w	$r13,$r13,-1152(0xb80)
1c0054ac:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c0054b0:	0010358c 	add.w	$r12,$r12,$r13
1c0054b4:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c0054b8:	02adc1ad 	addi.w	$r13,$r13,-1168(0xb70)
1c0054bc:	2a0015ad 	ld.bu	$r13,$r13,5(0x5)
1c0054c0:	0010358d 	add.w	$r13,$r12,$r13
1c0054c4:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c0054c8:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0054cc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0054d4 <main+0x28c>
1c0054d0:	002a0007 	break	0x7
1c0054d4:	006781cd 	bstrpick.w	$r13,$r14,0x7,0x0
1c0054d8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054dc:	02ad318c 	addi.w	$r12,$r12,-1204(0xb4c)
1c0054e0:	2900198d 	st.b	$r13,$r12,6(0x6)
1c0054e4:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c0054e8:	02ad00a5 	addi.w	$r5,$r5,-1216(0xb40)
1c0054ec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0054f0:	0299f084 	addi.w	$r4,$r4,1660(0x67c)
1c0054f4:	57c6afff 	bl	-14676(0xfffc6ac) # 1c001ba0 <myprintf>
1c0054f8:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0054fc:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005500:	02aca0a5 	addi.w	$r5,$r5,-1240(0xb28)
1c005504:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005508:	57ce8bff 	bl	-12664(0xfffce88) # 1c002390 <UART_SendDataALL>
1c00550c:	53fdb7ff 	b	-588(0xffffdb4) # 1c0052c0 <main+0x78>

1c005510 <DHT11_Rst>:
DHT11_Rst():
1c005510:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005514:	29803061 	st.w	$r1,$r3,12(0xc)
1c005518:	29802076 	st.w	$r22,$r3,8(0x8)
1c00551c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005520:	54007000 	bl	112(0x70) # 1c005590 <DHT11_IO_Out>
1c005524:	00150005 	move	$r5,$r0
1c005528:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00552c:	57c0bfff 	bl	-16196(0xfffc0bc) # 1c0015e8 <gpio_write_pin>
1c005530:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005534:	57da8bff 	bl	-9592(0xfffda88) # 1c002fbc <delay_ms>
1c005538:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00553c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005540:	57c0abff 	bl	-16216(0xfffc0a8) # 1c0015e8 <gpio_write_pin>
1c005544:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005548:	57da3fff 	bl	-9668(0xfffda3c) # 1c002f84 <delay_us>
1c00554c:	03400000 	andi	$r0,$r0,0x0
1c005550:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005554:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005558:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00555c:	4c000020 	jirl	$r0,$r1,0

1c005560 <DHT11_IO_In>:
DHT11_IO_In():
1c005560:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005564:	29803061 	st.w	$r1,$r3,12(0xc)
1c005568:	29802076 	st.w	$r22,$r3,8(0x8)
1c00556c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005570:	00150005 	move	$r5,$r0
1c005574:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005578:	57c2f7ff 	bl	-15628(0xfffc2f4) # 1c00186c <gpio_set_direction>
1c00557c:	03400000 	andi	$r0,$r0,0x0
1c005580:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005584:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005588:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00558c:	4c000020 	jirl	$r0,$r1,0

1c005590 <DHT11_IO_Out>:
DHT11_IO_Out():
1c005590:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005594:	29803061 	st.w	$r1,$r3,12(0xc)
1c005598:	29802076 	st.w	$r22,$r3,8(0x8)
1c00559c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0055a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055a4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0055a8:	57c2c7ff 	bl	-15676(0xfffc2c4) # 1c00186c <gpio_set_direction>
1c0055ac:	03400000 	andi	$r0,$r0,0x0
1c0055b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0055b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0055b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055bc:	4c000020 	jirl	$r0,$r1,0

1c0055c0 <DHT11_Check>:
DHT11_Check():
1c0055c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0055c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0055cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055d0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0055d4:	57ff8fff 	bl	-116(0xfffff8c) # 1c005560 <DHT11_IO_In>
1c0055d8:	50001000 	b	16(0x10) # 1c0055e8 <DHT11_Check+0x28>
1c0055dc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0055e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0055e8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0055ec:	57bfafff 	bl	-16468(0xfffbfac) # 1c001598 <gpio_get_pin>
1c0055f0:	0015008c 	move	$r12,$r4
1c0055f4:	40001180 	beqz	$r12,16(0x10) # 1c005604 <DHT11_Check+0x44>
1c0055f8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0055fc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005600:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0055dc <DHT11_Check+0x1c>
1c005604:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005608:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00560c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005618 <DHT11_Check+0x58>
1c005610:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005614:	50004c00 	b	76(0x4c) # 1c005660 <DHT11_Check+0xa0>
1c005618:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00561c:	50001000 	b	16(0x10) # 1c00562c <DHT11_Check+0x6c>
1c005620:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005624:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005628:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00562c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005630:	57bf6bff 	bl	-16536(0xfffbf68) # 1c001598 <gpio_get_pin>
1c005634:	0015008c 	move	$r12,$r4
1c005638:	44001180 	bnez	$r12,16(0x10) # 1c005648 <DHT11_Check+0x88>
1c00563c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005640:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005644:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005620 <DHT11_Check+0x60>
1c005648:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00564c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005650:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c00565c <DHT11_Check+0x9c>
1c005654:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005658:	50000800 	b	8(0x8) # 1c005660 <DHT11_Check+0xa0>
1c00565c:	0015000c 	move	$r12,$r0
1c005660:	00150184 	move	$r4,$r12
1c005664:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005668:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00566c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005670:	4c000020 	jirl	$r0,$r1,0

1c005674 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c005674:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005678:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00567c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005680:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005684:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005688:	50001000 	b	16(0x10) # 1c005698 <DHT11_Read_Bit+0x24>
1c00568c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005690:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005694:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005698:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00569c:	57beffff 	bl	-16644(0xfffbefc) # 1c001598 <gpio_get_pin>
1c0056a0:	0015008c 	move	$r12,$r4
1c0056a4:	40001180 	beqz	$r12,16(0x10) # 1c0056b4 <DHT11_Read_Bit+0x40>
1c0056a8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0056ac:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0056b0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c00568c <DHT11_Read_Bit+0x18>
1c0056b4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0056b8:	50001000 	b	16(0x10) # 1c0056c8 <DHT11_Read_Bit+0x54>
1c0056bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0056c8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0056cc:	57becfff 	bl	-16692(0xfffbecc) # 1c001598 <gpio_get_pin>
1c0056d0:	0015008c 	move	$r12,$r4
1c0056d4:	44001180 	bnez	$r12,16(0x10) # 1c0056e4 <DHT11_Read_Bit+0x70>
1c0056d8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0056dc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0056e0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0056bc <DHT11_Read_Bit+0x48>
1c0056e4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0056e8:	57d89fff 	bl	-10084(0xfffd89c) # 1c002f84 <delay_us>
1c0056ec:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0056f0:	57beabff 	bl	-16728(0xfffbea8) # 1c001598 <gpio_get_pin>
1c0056f4:	0015008c 	move	$r12,$r4
1c0056f8:	40000d80 	beqz	$r12,12(0xc) # 1c005704 <DHT11_Read_Bit+0x90>
1c0056fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005700:	50000800 	b	8(0x8) # 1c005708 <DHT11_Read_Bit+0x94>
1c005704:	0015000c 	move	$r12,$r0
1c005708:	00150184 	move	$r4,$r12
1c00570c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005710:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005714:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005718:	4c000020 	jirl	$r0,$r1,0

1c00571c <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c00571c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005720:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005724:	29806076 	st.w	$r22,$r3,24(0x18)
1c005728:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00572c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005730:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005734:	50003400 	b	52(0x34) # 1c005768 <DHT11_Read_Byte+0x4c>
1c005738:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00573c:	0040858c 	slli.w	$r12,$r12,0x1
1c005740:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005744:	57ff33ff 	bl	-208(0xfffff30) # 1c005674 <DHT11_Read_Bit>
1c005748:	0015008c 	move	$r12,$r4
1c00574c:	0015018d 	move	$r13,$r12
1c005750:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005754:	001531ac 	or	$r12,$r13,$r12
1c005758:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00575c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005760:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005764:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005768:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00576c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005770:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c005738 <DHT11_Read_Byte+0x1c>
1c005774:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005778:	00150184 	move	$r4,$r12
1c00577c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005780:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005784:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005788:	4c000020 	jirl	$r0,$r1,0

1c00578c <DHT11_Read_Data>:
DHT11_Read_Data():
1c00578c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005790:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005794:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005798:	29809077 	st.w	$r23,$r3,36(0x24)
1c00579c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0057a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0057a4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0057a8:	57fd6bff 	bl	-664(0xffffd68) # 1c005510 <DHT11_Rst>
1c0057ac:	57fe17ff 	bl	-492(0xffffe14) # 1c0055c0 <DHT11_Check>
1c0057b0:	0015008c 	move	$r12,$r4
1c0057b4:	4400c180 	bnez	$r12,192(0xc0) # 1c005874 <DHT11_Read_Data+0xe8>
1c0057b8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0057bc:	50002800 	b	40(0x28) # 1c0057e4 <DHT11_Read_Data+0x58>
1c0057c0:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c0057c4:	57ff5bff 	bl	-168(0xfffff58) # 1c00571c <DHT11_Read_Byte>
1c0057c8:	0015008c 	move	$r12,$r4
1c0057cc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0057d0:	00105dad 	add.w	$r13,$r13,$r23
1c0057d4:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c0057d8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0057dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057e4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0057e8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0057ec:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c0057c0 <DHT11_Read_Data+0x34>
1c0057f0:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c0057f4:	0015018d 	move	$r13,$r12
1c0057f8:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c0057fc:	001031ac 	add.w	$r12,$r13,$r12
1c005800:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c005804:	0010358c 	add.w	$r12,$r12,$r13
1c005808:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00580c:	0010358c 	add.w	$r12,$r12,$r13
1c005810:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005814:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c00587c <DHT11_Read_Data+0xf0>
1c005818:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c00581c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005820:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005824:	001c31ac 	mul.w	$r12,$r13,$r12
1c005828:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00582c:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005830:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005834:	001031ac 	add.w	$r12,$r13,$r12
1c005838:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00583c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005840:	2940018d 	st.h	$r13,$r12,0
1c005844:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c005848:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00584c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005850:	001c31ac 	mul.w	$r12,$r13,$r12
1c005854:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005858:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00585c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005860:	001031ac 	add.w	$r12,$r13,$r12
1c005864:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005868:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00586c:	2940018d 	st.h	$r13,$r12,0
1c005870:	50000c00 	b	12(0xc) # 1c00587c <DHT11_Read_Data+0xf0>
1c005874:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005878:	50000800 	b	8(0x8) # 1c005880 <DHT11_Read_Data+0xf4>
1c00587c:	0015000c 	move	$r12,$r0
1c005880:	00150184 	move	$r4,$r12
1c005884:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005888:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00588c:	28809077 	ld.w	$r23,$r3,36(0x24)
1c005890:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005894:	4c000020 	jirl	$r0,$r1,0

1c005898 <DHT11_Init>:
DHT11_Init():
1c005898:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00589c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0058a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0058a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0058a8:	00150005 	move	$r5,$r0
1c0058ac:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0058b0:	57bdb3ff 	bl	-16976(0xfffbdb0) # 1c001660 <gpio_pin_remap>
1c0058b4:	57fcdfff 	bl	-804(0xffffcdc) # 1c005590 <DHT11_IO_Out>
1c0058b8:	57fc5bff 	bl	-936(0xffffc58) # 1c005510 <DHT11_Rst>
1c0058bc:	57fd07ff 	bl	-764(0xffffd04) # 1c0055c0 <DHT11_Check>
1c0058c0:	0015008c 	move	$r12,$r4
1c0058c4:	00150184 	move	$r4,$r12
1c0058c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0058cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0058d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0058d4:	4c000020 	jirl	$r0,$r1,0

1c0058d8 <Queue_Init>:
Queue_Init():
1c0058d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0058dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0058e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0058e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0058e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0058ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058f0:	44000d80 	bnez	$r12,12(0xc) # 1c0058fc <Queue_Init+0x24>
1c0058f4:	0015000c 	move	$r12,$r0
1c0058f8:	50001800 	b	24(0x18) # 1c005910 <Queue_Init+0x38>
1c0058fc:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c005900:	00150005 	move	$r5,$r0
1c005904:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c005908:	57d6f7ff 	bl	-10508(0xfffd6f4) # 1c002ffc <memset>
1c00590c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005910:	00150184 	move	$r4,$r12
1c005914:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005918:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00591c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005920:	4c000020 	jirl	$r0,$r1,0

1c005924 <Queue_isEmpty>:
Queue_isEmpty():
1c005924:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005928:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00592c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005930:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005938:	44000d80 	bnez	$r12,12(0xc) # 1c005944 <Queue_isEmpty+0x20>
1c00593c:	0015000c 	move	$r12,$r0
1c005940:	50002400 	b	36(0x24) # 1c005964 <Queue_isEmpty+0x40>
1c005944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005948:	2a40018d 	ld.hu	$r13,$r12,0
1c00594c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005950:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005954:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c005960 <Queue_isEmpty+0x3c>
1c005958:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00595c:	50000800 	b	8(0x8) # 1c005964 <Queue_isEmpty+0x40>
1c005960:	0015000c 	move	$r12,$r0
1c005964:	00150184 	move	$r4,$r12
1c005968:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00596c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005970:	4c000020 	jirl	$r0,$r1,0

1c005974 <Queue_HadUse>:
Queue_HadUse():
1c005974:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005978:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00597c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005980:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005984:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005988:	44000d80 	bnez	$r12,12(0xc) # 1c005994 <Queue_HadUse+0x20>
1c00598c:	0015000c 	move	$r12,$r0
1c005990:	50003800 	b	56(0x38) # 1c0059c8 <Queue_HadUse+0x54>
1c005994:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005998:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c00599c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059a0:	2a40018c 	ld.hu	$r12,$r12,0
1c0059a4:	001131ac 	sub.w	$r12,$r13,$r12
1c0059a8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0059ac:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c0059b0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0059b4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0059b8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0059bc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0059c4 <Queue_HadUse+0x50>
1c0059c0:	002a0007 	break	0x7
1c0059c4:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0059c8:	00150184 	move	$r4,$r12
1c0059cc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0059d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0059d4:	4c000020 	jirl	$r0,$r1,0

1c0059d8 <Queue_NoUse>:
Queue_NoUse():
1c0059d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0059dc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0059e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0059e4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0059e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059ec:	44000d80 	bnez	$r12,12(0xc) # 1c0059f8 <Queue_NoUse+0x20>
1c0059f0:	0015000c 	move	$r12,$r0
1c0059f4:	50004000 	b	64(0x40) # 1c005a34 <Queue_NoUse+0x5c>
1c0059f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059fc:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005a00:	0015018d 	move	$r13,$r12
1c005a04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a08:	2a40018c 	ld.hu	$r12,$r12,0
1c005a0c:	001131ac 	sub.w	$r12,$r13,$r12
1c005a10:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c005a14:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005a18:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005a1c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005a24 <Queue_NoUse+0x4c>
1c005a20:	002a0007 	break	0x7
1c005a24:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005a28:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c005a2c:	001131ac 	sub.w	$r12,$r13,$r12
1c005a30:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005a34:	00150184 	move	$r4,$r12
1c005a38:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005a3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a40:	4c000020 	jirl	$r0,$r1,0

1c005a44 <Queue_Wirte>:
Queue_Wirte():
1c005a44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005a48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005a4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005a50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005a54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005a58:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005a5c:	001500cc 	move	$r12,$r6
1c005a60:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005a64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005a68:	44000d80 	bnez	$r12,12(0xc) # 1c005a74 <Queue_Wirte+0x30>
1c005a6c:	0015000c 	move	$r12,$r0
1c005a70:	50009c00 	b	156(0x9c) # 1c005b0c <Queue_Wirte+0xc8>
1c005a74:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005a78:	57ff63ff 	bl	-160(0xfffff60) # 1c0059d8 <Queue_NoUse>
1c005a7c:	0015008c 	move	$r12,$r4
1c005a80:	0015018d 	move	$r13,$r12
1c005a84:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005a88:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005a94 <Queue_Wirte+0x50>
1c005a8c:	0015000c 	move	$r12,$r0
1c005a90:	50007c00 	b	124(0x7c) # 1c005b0c <Queue_Wirte+0xc8>
1c005a94:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a98:	50006400 	b	100(0x64) # 1c005afc <Queue_Wirte+0xb8>
1c005a9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005aa0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005aa4:	001031ac 	add.w	$r12,$r13,$r12
1c005aa8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005aac:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c005ab0:	001501ae 	move	$r14,$r13
1c005ab4:	2a00018d 	ld.bu	$r13,$r12,0
1c005ab8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005abc:	0010398c 	add.w	$r12,$r12,$r14
1c005ac0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005ac4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ac8:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005acc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ad0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005ad4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005ad8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005adc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005ae4 <Queue_Wirte+0xa0>
1c005ae0:	002a0007 	break	0x7
1c005ae4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005ae8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005aec:	2940098d 	st.h	$r13,$r12,2(0x2)
1c005af0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005af4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005af8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005afc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005b00:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005b04:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005a9c <Queue_Wirte+0x58>
1c005b08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b0c:	00150184 	move	$r4,$r12
1c005b10:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b14:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b18:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b1c:	4c000020 	jirl	$r0,$r1,0

1c005b20 <Queue_Read>:
Queue_Read():
1c005b20:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005b24:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005b28:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005b2c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005b30:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005b34:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005b38:	001500cc 	move	$r12,$r6
1c005b3c:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005b40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b44:	44000d80 	bnez	$r12,12(0xc) # 1c005b50 <Queue_Read+0x30>
1c005b48:	0015000c 	move	$r12,$r0
1c005b4c:	50009c00 	b	156(0x9c) # 1c005be8 <Queue_Read+0xc8>
1c005b50:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005b54:	57fe23ff 	bl	-480(0xffffe20) # 1c005974 <Queue_HadUse>
1c005b58:	0015008c 	move	$r12,$r4
1c005b5c:	0015018d 	move	$r13,$r12
1c005b60:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005b64:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005b70 <Queue_Read+0x50>
1c005b68:	0015000c 	move	$r12,$r0
1c005b6c:	50007c00 	b	124(0x7c) # 1c005be8 <Queue_Read+0xc8>
1c005b70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005b74:	50006400 	b	100(0x64) # 1c005bd8 <Queue_Read+0xb8>
1c005b78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b7c:	2a40018c 	ld.hu	$r12,$r12,0
1c005b80:	0015018e 	move	$r14,$r12
1c005b84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b88:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005b8c:	001031ac 	add.w	$r12,$r13,$r12
1c005b90:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005b94:	001039ad 	add.w	$r13,$r13,$r14
1c005b98:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c005b9c:	2900018d 	st.b	$r13,$r12,0
1c005ba0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ba4:	2a40018c 	ld.hu	$r12,$r12,0
1c005ba8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bac:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bb0:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005bb4:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005bb8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005bc0 <Queue_Read+0xa0>
1c005bbc:	002a0007 	break	0x7
1c005bc0:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005bc4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005bc8:	2940018d 	st.h	$r13,$r12,0
1c005bcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005bd8:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005bdc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005be0:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005b78 <Queue_Read+0x58>
1c005be4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005be8:	00150184 	move	$r4,$r12
1c005bec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005bf0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005bf4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005bf8:	4c000020 	jirl	$r0,$r1,0

1c005bfc <BEEP_Init>:
BEEP_Init():
1c005bfc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c00:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c04:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c10:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005c14:	57bc5bff 	bl	-17320(0xfffbc58) # 1c00186c <gpio_set_direction>
1c005c18:	03400000 	andi	$r0,$r0,0x0
1c005c1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005c20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005c24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005c28:	4c000020 	jirl	$r0,$r1,0

1c005c2c <esp8266_check_cmd>:
esp8266_check_cmd():
1c005c2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005c30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005c34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005c38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005c3c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005c40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005c44:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c48:	288f4084 	ld.w	$r4,$r4,976(0x3d0)
1c005c4c:	57fcdbff 	bl	-808(0xffffcd8) # 1c005924 <Queue_isEmpty>
1c005c50:	0015008c 	move	$r12,$r4
1c005c54:	44009580 	bnez	$r12,148(0x94) # 1c005ce8 <esp8266_check_cmd+0xbc>
1c005c58:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c5c:	288ef084 	ld.w	$r4,$r4,956(0x3bc)
1c005c60:	57fd17ff 	bl	-748(0xffffd14) # 1c005974 <Queue_HadUse>
1c005c64:	0015008c 	move	$r12,$r4
1c005c68:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005c6c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c70:	288e718c 	ld.w	$r12,$r12,924(0x39c)
1c005c74:	2900018d 	st.b	$r13,$r12,0
1c005c78:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c005c7c:	00150005 	move	$r5,$r0
1c005c80:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c84:	288e7084 	ld.w	$r4,$r4,924(0x39c)
1c005c88:	57d377ff 	bl	-11404(0xfffd374) # 1c002ffc <memset>
1c005c8c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c90:	288df18c 	ld.w	$r12,$r12,892(0x37c)
1c005c94:	2a00018c 	ld.bu	$r12,$r12,0
1c005c98:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c9c:	00150186 	move	$r6,$r12
1c005ca0:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005ca4:	288df0a5 	ld.w	$r5,$r5,892(0x37c)
1c005ca8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cac:	288db084 	ld.w	$r4,$r4,876(0x36c)
1c005cb0:	57fe73ff 	bl	-400(0xffffe70) # 1c005b20 <Queue_Read>
1c005cb4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cb8:	288d518c 	ld.w	$r12,$r12,852(0x354)
1c005cbc:	2a00018c 	ld.bu	$r12,$r12,0
1c005cc0:	0015018d 	move	$r13,$r12
1c005cc4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cc8:	288d618c 	ld.w	$r12,$r12,856(0x358)
1c005ccc:	0010358c 	add.w	$r12,$r12,$r13
1c005cd0:	29000180 	st.b	$r0,$r12,0
1c005cd4:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005cd8:	288d20a5 	ld.w	$r5,$r5,840(0x348)
1c005cdc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005ce0:	02ba4084 	addi.w	$r4,$r4,-368(0xe90)
1c005ce4:	57bebfff 	bl	-16708(0xfffbebc) # 1c001ba0 <myprintf>
1c005ce8:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005cec:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cf0:	288cc084 	ld.w	$r4,$r4,816(0x330)
1c005cf4:	57d36bff 	bl	-11416(0xfffd368) # 1c00305c <pstrstr>
1c005cf8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d00:	00150184 	move	$r4,$r12
1c005d04:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005d08:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005d0c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005d10:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c005d20 <msg_wakeup>:
msg_wakeup():
1c005d20:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01c880 <_sidata+0x14ccc>
1c005d24:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c005d29 <hexdecarr>:
hexdecarr():
1c005d29:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c005d2d:	37363534 	0x37363534
1c005d31:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfebe69 <_start-0x14197>
1c005d35:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec299 <_start-0x13d67>
1c005d39:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005d3d:	79654b0a 	0x79654b0a
1c005d41:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c005d45:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c005d49:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c005d4d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01cdbd <_sidata+0x15209>
1c005d51:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffccb1 <_start-0x334f>
1c005d55:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c005d59:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffccbd <_start-0x3343>
1c005d5d:	72616220 	0x72616220
1c005d61:	0a0d216b 	0x0a0d216b
1c005d65:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005d69:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffbedd <_start-0x4123>
1c005d6d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c005d71:	c0000a0d 	0xc0000a0d
1c005d75:	dc1c001d 	0xdc1c001d
1c005d79:	dc1c001e 	0xdc1c001e
1c005d7d:	dc1c001e 	0xdc1c001e
1c005d81:	dc1c001e 	0xdc1c001e
1c005d85:	dc1c001e 	0xdc1c001e
1c005d89:	dc1c001e 	0xdc1c001e
1c005d8d:	dc1c001e 	0xdc1c001e
1c005d91:	dc1c001e 	0xdc1c001e
1c005d95:	dc1c001e 	0xdc1c001e
1c005d99:	dc1c001e 	0xdc1c001e
1c005d9d:	d81c001e 	0xd81c001e
1c005da1:	601c001d 	blt	$r0,$r29,7168(0x1c00) # 1c0079a1 <tfont32+0x8ad>
1c005da5:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0079a5 <tfont32+0x8b1>
1c005da9:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0079a9 <tfont32+0x8b5>
1c005dad:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0079ad <tfont32+0x8b9>
1c005db1:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0079b1 <tfont32+0x8bd>
1c005db5:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0079b5 <tfont32+0x8c1>
1c005db9:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0079b9 <tfont32+0x8c5>
1c005dbd:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0079bd <tfont32+0x8c9>
1c005dc1:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0079c1 <tfont32+0x8cd>
1c005dc5:	dc1c001e 	0xdc1c001e
1c005dc9:	dc1c001e 	0xdc1c001e
1c005dcd:	dc1c001e 	0xdc1c001e
1c005dd1:	dc1c001e 	0xdc1c001e
1c005dd5:	dc1c001e 	0xdc1c001e
1c005dd9:	dc1c001e 	0xdc1c001e
1c005ddd:	dc1c001e 	0xdc1c001e
1c005de1:	dc1c001e 	0xdc1c001e
1c005de5:	dc1c001e 	0xdc1c001e
1c005de9:	dc1c001e 	0xdc1c001e
1c005ded:	dc1c001e 	0xdc1c001e
1c005df1:	dc1c001e 	0xdc1c001e
1c005df5:	dc1c001e 	0xdc1c001e
1c005df9:	dc1c001e 	0xdc1c001e
1c005dfd:	dc1c001e 	0xdc1c001e
1c005e01:	dc1c001e 	0xdc1c001e
1c005e05:	dc1c001e 	0xdc1c001e
1c005e09:	dc1c001e 	0xdc1c001e
1c005e0d:	dc1c001e 	0xdc1c001e
1c005e11:	dc1c001e 	0xdc1c001e
1c005e15:	dc1c001e 	0xdc1c001e
1c005e19:	dc1c001e 	0xdc1c001e
1c005e1d:	dc1c001e 	0xdc1c001e
1c005e21:	dc1c001e 	0xdc1c001e
1c005e25:	dc1c001e 	0xdc1c001e
1c005e29:	dc1c001e 	0xdc1c001e
1c005e2d:	dc1c001e 	0xdc1c001e
1c005e31:	dc1c001e 	0xdc1c001e
1c005e35:	dc1c001e 	0xdc1c001e
1c005e39:	dc1c001e 	0xdc1c001e
1c005e3d:	dc1c001e 	0xdc1c001e
1c005e41:	dc1c001e 	0xdc1c001e
1c005e45:	dc1c001e 	0xdc1c001e
1c005e49:	dc1c001e 	0xdc1c001e
1c005e4d:	dc1c001e 	0xdc1c001e
1c005e51:	dc1c001e 	0xdc1c001e
1c005e55:	dc1c001e 	0xdc1c001e
1c005e59:	dc1c001e 	0xdc1c001e
1c005e5d:	dc1c001e 	0xdc1c001e
1c005e61:	dc1c001e 	0xdc1c001e
1c005e65:	501c001e 	b	7871488(0x781c00) # 1c787a65 <_sidata+0x77feb1>
1c005e69:	781c001d 	0x781c001d
1c005e6d:	e01c001c 	0xe01c001c
1c005e71:	dc1c001c 	0xdc1c001c
1c005e75:	dc1c001e 	0xdc1c001e
1c005e79:	dc1c001e 	0xdc1c001e
1c005e7d:	dc1c001e 	0xdc1c001e
1c005e81:	dc1c001e 	0xdc1c001e
1c005e85:	dc1c001e 	0xdc1c001e
1c005e89:	dc1c001e 	0xdc1c001e
1c005e8d:	dc1c001e 	0xdc1c001e
1c005e91:	dc1c001e 	0xdc1c001e
1c005e95:	dc1c001e 	0xdc1c001e
1c005e99:	181c001e 	pcaddi	$r30,57344(0xe000)
1c005e9d:	881c001d 	0x881c001d
1c005ea1:	dc1c001d 	0xdc1c001d
1c005ea5:	dc1c001e 	0xdc1c001e
1c005ea9:	4c1c001e 	jirl	$r30,$r0,7168(0x1c00)
1c005ead:	dc1c001c 	0xdc1c001c
1c005eb1:	a81c001e 	0xa81c001e
1c005eb5:	dc1c001c 	0xdc1c001c
1c005eb9:	dc1c001e 	0xdc1c001e
1c005ebd:	881c001e 	0x881c001e
1c005ec1:	0a1c001d 	xvfmadd.s	$xr29,$xr0,$xr0,$xr24
1c005ec5:	7c000000 	0x7c000000
1c005ec9:	7c7c7c7c 	0x7c7c7c7c
1c005ecd:	7c7c7c7c 	0x7c7c7c7c
1c005ed1:	7c7c7c7c 	0x7c7c7c7c
1c005ed5:	7c7c7c7c 	0x7c7c7c7c
1c005ed9:	7c7c7c7c 	0x7c7c7c7c
1c005edd:	7c7c7c7c 	0x7c7c7c7c
1c005ee1:	7c7c7c7c 	0x7c7c7c7c
1c005ee5:	7c7c7c7c 	0x7c7c7c7c
1c005ee9:	7c7c7c7c 	0x7c7c7c7c
1c005eed:	7c7c7c7c 	0x7c7c7c7c
1c005ef1:	7c7c7c7c 	0x7c7c7c7c
1c005ef5:	7c7c7c7c 	0x7c7c7c7c
1c005ef9:	7c7c7c7c 	0x7c7c7c7c
1c005efd:	7c7c7c7c 	0x7c7c7c7c
1c005f01:	7c7c7c7c 	0x7c7c7c7c
1c005f05:	7c7c7c7c 	0x7c7c7c7c
1c005f09:	7c7c7c7c 	0x7c7c7c7c
1c005f0d:	7c7c7c7c 	0x7c7c7c7c
1c005f11:	7c7c7c7c 	0x7c7c7c7c
1c005f15:	7c7c7c7c 	0x7c7c7c7c
1c005f19:	7c7c7c7c 	0x7c7c7c7c
1c005f1d:	7c7c7c7c 	0x7c7c7c7c
1c005f21:	7c7c7c7c 	0x7c7c7c7c
1c005f25:	7c7c7c7c 	0x7c7c7c7c
1c005f29:	7c00000a 	0x7c00000a
1c005f2d:	7c20207c 	0x7c20207c
1c005f31:	7c7c7c7c 	0x7c7c7c7c
1c005f35:	7c7c7c7c 	0x7c7c7c7c
1c005f39:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005f3d:	7c202020 	0x7c202020
1c005f41:	7c7c7c7c 	0x7c7c7c7c
1c005f45:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005f49:	7c202020 	0x7c202020
1c005f4d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f51:	7c7c2020 	0x7c7c2020
1c005f55:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f59:	7c7c7c20 	0x7c7c7c20
1c005f5d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005f61:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005f65:	7c7c7c7c 	0x7c7c7c7c
1c005f69:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005f6d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005f71:	7c7c7c7c 	0x7c7c7c7c
1c005f75:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005f79:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005f7d:	7c7c7c7c 	0x7c7c7c7c
1c005f81:	7c202020 	0x7c202020
1c005f85:	7c7c7c7c 	0x7c7c7c7c
1c005f89:	7c7c2020 	0x7c7c2020
1c005f8d:	7c00000a 	0x7c00000a
1c005f91:	7c20207c 	0x7c20207c
1c005f95:	7c7c7c7c 	0x7c7c7c7c
1c005f99:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f9d:	7c7c2020 	0x7c7c2020
1c005fa1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005fa5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fa9:	7c7c2020 	0x7c7c2020
1c005fad:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005fb1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fb5:	7c202020 	0x7c202020
1c005fb9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fbd:	7c7c7c20 	0x7c7c7c20
1c005fc1:	7c20207c 	0x7c20207c
1c005fc5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fc9:	7c7c7c20 	0x7c7c7c20
1c005fcd:	7c202020 	0x7c202020
1c005fd1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fd5:	7c7c7c20 	0x7c7c7c20
1c005fd9:	7c202020 	0x7c202020
1c005fdd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fe1:	7c7c7c20 	0x7c7c7c20
1c005fe5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005fe9:	7c7c7c7c 	0x7c7c7c7c
1c005fed:	7c7c2020 	0x7c7c2020
1c005ff1:	7c00000a 	0x7c00000a
1c005ff5:	7c20207c 	0x7c20207c
1c005ff9:	7c7c7c7c 	0x7c7c7c7c
1c005ffd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006001:	7c7c7c20 	0x7c7c7c20
1c006005:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006009:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00600d:	7c7c7c20 	0x7c7c7c20
1c006011:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006015:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006019:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00601d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006021:	7c7c7c20 	0x7c7c7c20
1c006025:	7c7c2020 	0x7c7c2020
1c006029:	7c7c7c7c 	0x7c7c7c7c
1c00602d:	7c7c7c7c 	0x7c7c7c7c
1c006031:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006035:	7c7c7c20 	0x7c7c7c20
1c006039:	7c7c7c7c 	0x7c7c7c7c
1c00603d:	7c7c2020 	0x7c7c2020
1c006041:	7c7c7c7c 	0x7c7c7c7c
1c006045:	7c7c7c20 	0x7c7c7c20
1c006049:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00604d:	7c7c7c20 	0x7c7c7c20
1c006051:	7c7c2020 	0x7c7c2020
1c006055:	7c00000a 	0x7c00000a
1c006059:	7c20207c 	0x7c20207c
1c00605d:	7c7c7c7c 	0x7c7c7c7c
1c006061:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006065:	7c7c7c20 	0x7c7c7c20
1c006069:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00606d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006071:	7c7c7c20 	0x7c7c7c20
1c006075:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006079:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00607d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006081:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006085:	7c7c7c20 	0x7c7c7c20
1c006089:	7c7c2020 	0x7c7c2020
1c00608d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006091:	7c7c7c20 	0x7c7c7c20
1c006095:	7c7c7c7c 	0x7c7c7c7c
1c006099:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00609d:	7c7c7c7c 	0x7c7c7c7c
1c0060a1:	7c7c2020 	0x7c7c2020
1c0060a5:	7c7c7c7c 	0x7c7c7c7c
1c0060a9:	7c7c7c20 	0x7c7c7c20
1c0060ad:	7c7c2020 	0x7c7c2020
1c0060b1:	7c7c2020 	0x7c7c2020
1c0060b5:	7c7c2020 	0x7c7c2020
1c0060b9:	7c00000a 	0x7c00000a
1c0060bd:	7c20207c 	0x7c20207c
1c0060c1:	7c7c7c7c 	0x7c7c7c7c
1c0060c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060c9:	7c7c7c20 	0x7c7c7c20
1c0060cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060d5:	7c7c7c20 	0x7c7c7c20
1c0060d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060e1:	7c7c7c20 	0x7c7c7c20
1c0060e5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0060e9:	7c7c7c20 	0x7c7c7c20
1c0060ed:	7c7c2020 	0x7c7c2020
1c0060f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060f5:	7c7c7c20 	0x7c7c7c20
1c0060f9:	7c7c7c7c 	0x7c7c7c7c
1c0060fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006101:	7c7c7c20 	0x7c7c7c20
1c006105:	7c7c2020 	0x7c7c2020
1c006109:	7c7c7c7c 	0x7c7c7c7c
1c00610d:	7c7c7c20 	0x7c7c7c20
1c006111:	7c7c2020 	0x7c7c2020
1c006115:	7c20207c 	0x7c20207c
1c006119:	7c7c2020 	0x7c7c2020
1c00611d:	7c00000a 	0x7c00000a
1c006121:	7c20207c 	0x7c20207c
1c006125:	7c7c7c7c 	0x7c7c7c7c
1c006129:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00612d:	7c7c2020 	0x7c7c2020
1c006131:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006135:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006139:	7c7c2020 	0x7c7c2020
1c00613d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006141:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006145:	7c7c7c20 	0x7c7c7c20
1c006149:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00614d:	7c7c7c20 	0x7c7c7c20
1c006151:	7c202020 	0x7c202020
1c006155:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006159:	7c7c7c20 	0x7c7c7c20
1c00615d:	7c202020 	0x7c202020
1c006161:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006165:	7c7c7c7c 	0x7c7c7c7c
1c006169:	7c202020 	0x7c202020
1c00616d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006171:	7c7c7c20 	0x7c7c7c20
1c006175:	7c7c2020 	0x7c7c2020
1c006179:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00617d:	7c7c2020 	0x7c7c2020
1c006181:	7c00000a 	0x7c00000a
1c006185:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006189:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00618d:	7c7c7c7c 	0x7c7c7c7c
1c006191:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006195:	7c202020 	0x7c202020
1c006199:	7c7c7c7c 	0x7c7c7c7c
1c00619d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0061a1:	7c202020 	0x7c202020
1c0061a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061a9:	7c7c7c20 	0x7c7c7c20
1c0061ad:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0061b1:	7c7c7c20 	0x7c7c7c20
1c0061b5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0061b9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0061bd:	7c7c7c7c 	0x7c7c7c7c
1c0061c1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0061c5:	7c202020 	0x7c202020
1c0061c9:	7c7c7c7c 	0x7c7c7c7c
1c0061cd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0061d1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0061d5:	7c7c7c7c 	0x7c7c7c7c
1c0061d9:	7c7c2020 	0x7c7c2020
1c0061dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061e1:	7c7c2020 	0x7c7c2020
1c0061e5:	7c00000a 	0x7c00000a
1c0061e9:	7c7c7c7c 	0x7c7c7c7c
1c0061ed:	7c7c7c7c 	0x7c7c7c7c
1c0061f1:	7c7c7c7c 	0x7c7c7c7c
1c0061f5:	7c7c7c7c 	0x7c7c7c7c
1c0061f9:	7c7c7c7c 	0x7c7c7c7c
1c0061fd:	7c7c7c7c 	0x7c7c7c7c
1c006201:	7c7c7c7c 	0x7c7c7c7c
1c006205:	7c7c7c7c 	0x7c7c7c7c
1c006209:	7c7c7c7c 	0x7c7c7c7c
1c00620d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c006211:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c006215:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c006219:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00621d:	7c7c7c5d 	0x7c7c7c5d
1c006221:	7c7c7c7c 	0x7c7c7c7c
1c006225:	7c7c7c7c 	0x7c7c7c7c
1c006229:	7c7c7c7c 	0x7c7c7c7c
1c00622d:	7c7c7c7c 	0x7c7c7c7c
1c006231:	7c7c7c7c 	0x7c7c7c7c
1c006235:	7c7c7c7c 	0x7c7c7c7c
1c006239:	7c7c7c7c 	0x7c7c7c7c
1c00623d:	7c7c7c7c 	0x7c7c7c7c
1c006241:	7c7c7c7c 	0x7c7c7c7c
1c006245:	7c7c7c7c 	0x7c7c7c7c
1c006249:	0900000a 	0x0900000a
1c00624d:	0a006425 	0x0a006425
1c006251:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006255:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006259:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00625d:	0050550a 	0x0050550a
1c006261:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006265:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00d7b1 <_sidata+0x5bfd>
1c006269:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00626d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006271:	756f430a 	0x756f430a
1c006275:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006279:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00627d:	3030090a 	0x3030090a
1c006281:	09313009 	0x09313009
1c006285:	30093230 	0x30093230
1c006289:	34300933 	0x34300933
1c00628d:	09353009 	0x09353009
1c006291:	30093630 	0x30093630
1c006295:	38300937 	fldx.s	$f23,$r9,$r2
1c006299:	09393009 	0x09393009
1c00629d:	31093031 	0x31093031
1c0062a1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c0062a5:	746e630a 	0x746e630a
1c0062a9:	09000000 	0x09000000
1c0062ad:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0062b1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0062b5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0062b9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00c40d <_sidata+0x4859>
1c0062bd:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0062c1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfed811 <_start-0x127ef>
1c0062c5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0062c9:	09000000 	0x09000000
1c0062cd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0062d1:	09000000 	0x09000000
1c0062d5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0062d9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0062dd:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0062e1:	3a515249 	0x3a515249
1c0062e5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0062e9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffd15d <_start-0x2ea3>
1c0062ed:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0062f1:	0d3e2020 	0x0d3e2020
1c0062f5:	0a00000a 	0x0a00000a
1c0062f9:	2e2e2e2e 	0x2e2e2e2e
1c0062fd:	2e2e2e2e 	0x2e2e2e2e
1c006301:	2e2e2e2e 	0x2e2e2e2e
1c006305:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ab255 <_sidata+0x3a36a1>
1c006309:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00630d:	2e2e2e54 	0x2e2e2e54
1c006311:	2e2e2e2e 	0x2e2e2e2e
1c006315:	2e2e2e2e 	0x2e2e2e2e
1c006319:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00631d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c006321:	2e2e2e0a 	0x2e2e2e0a
1c006325:	2e2e2e2e 	0x2e2e2e2e
1c006329:	2e2e2e2e 	0x2e2e2e2e
1c00632d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39a559 <_sidata+0x3929a5>
1c006331:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1a98d <_start-0x2e5673>
1c006335:	2e2e4c49 	0x2e2e4c49
1c006339:	2e2e2e2e 	0x2e2e2e2e
1c00633d:	2e2e2e2e 	0x2e2e2e2e
1c006341:	2e2e2e2e 	0x2e2e2e2e
1c006345:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c006349:	2e2e2e0a 	0x2e2e2e0a
1c00634d:	2e2e2e2e 	0x2e2e2e2e
1c006351:	2e2e2e2e 	0x2e2e2e2e
1c006355:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38a481 <_sidata+0x3828cd>
1c006359:	2e2e2e43 	0x2e2e2e43
1c00635d:	2e2e2e2e 	0x2e2e2e2e
1c006361:	2e2e2e2e 	0x2e2e2e2e
1c006365:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c006369:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b6369 <_sidata+0x2ae7b5>
1c00636d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c006371:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d0d9 <_sidata+0x15525>
1c006375:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00c695 <_sidata+0x4ae1>
1c006379:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00637d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01d7e9 <_sidata+0x15c35>
1c006381:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c006385:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c006389:	 	bgeu	$r0,$r10,0 # 1c006389 <hexdecarr+0x660>

1c00638c <Ext_IrqHandle>:
1c00638c:	1c00376c 	pcaddu12i	$r12,443(0x1bb)
1c006390:	1c0037b8 	pcaddu12i	$r24,445(0x1bd)
1c006394:	1c003804 	pcaddu12i	$r4,448(0x1c0)
1c006398:	1c003850 	pcaddu12i	$r16,450(0x1c2)
1c00639c:	1c00389c 	pcaddu12i	$r28,452(0x1c4)
1c0063a0:	1c0038e8 	pcaddu12i	$r8,455(0x1c7)
1c0063a4:	1c003934 	pcaddu12i	$r20,457(0x1c9)
1c0063a8:	1c003980 	pcaddu12i	$r0,460(0x1cc)
1c0063ac:	1c0039cc 	pcaddu12i	$r12,462(0x1ce)
1c0063b0:	1c003a18 	pcaddu12i	$r24,464(0x1d0)
1c0063b4:	1c003a64 	pcaddu12i	$r4,467(0x1d3)
1c0063b8:	1c003ab0 	pcaddu12i	$r16,469(0x1d5)
1c0063bc:	1c003afc 	pcaddu12i	$r28,471(0x1d7)
1c0063c0:	1c003b48 	pcaddu12i	$r8,474(0x1da)
1c0063c4:	1c003b94 	pcaddu12i	$r20,476(0x1dc)
1c0063c8:	1c003be0 	pcaddu12i	$r0,479(0x1df)
1c0063cc:	1c003c2c 	pcaddu12i	$r12,481(0x1e1)
1c0063d0:	1c003c78 	pcaddu12i	$r24,483(0x1e3)
1c0063d4:	1c003cc4 	pcaddu12i	$r4,486(0x1e6)
1c0063d8:	1c003d10 	pcaddu12i	$r16,488(0x1e8)
1c0063dc:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c0063e0:	1c003da8 	pcaddu12i	$r8,493(0x1ed)
1c0063e4:	1c003df4 	pcaddu12i	$r20,495(0x1ef)
1c0063e8:	1c003e40 	pcaddu12i	$r0,498(0x1f2)
1c0063ec:	1c003e8c 	pcaddu12i	$r12,500(0x1f4)
1c0063f0:	1c003ed8 	pcaddu12i	$r24,502(0x1f6)
1c0063f4:	1c003f24 	pcaddu12i	$r4,505(0x1f9)
1c0063f8:	1c003f70 	pcaddu12i	$r16,507(0x1fb)
1c0063fc:	1c003fbc 	pcaddu12i	$r28,509(0x1fd)
1c006400:	1c004008 	pcaddu12i	$r8,512(0x200)
1c006404:	1c004054 	pcaddu12i	$r20,514(0x202)
1c006408:	1c0040a0 	pcaddu12i	$r0,517(0x205)
1c00640c:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006410:	1c004334 	pcaddu12i	$r20,537(0x219)
1c006414:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006418:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c00641c:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006420:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006424:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006428:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c00642c:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006430:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006434:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006438:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c00643c:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006440:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006444:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c006448:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c00644c:	1c004350 	pcaddu12i	$r16,538(0x21a)

1c006450 <__FUNCTION__.1646>:
1c006450:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8c8 <_sidata+0x15d14>
1c006454:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4b8 <_sidata+0x15904>
1c006458:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff94b8 <_start-0x6b48>
1c00645c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5cc <_start-0x2a34>
1c006460:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2c0 <_sidata+0x570c>
1c006464:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006468 <__FUNCTION__.1650>:
1c006468:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8e0 <_sidata+0x15d2c>
1c00646c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4d0 <_sidata+0x1591c>
1c006470:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff95d0 <_start-0x6a30>
1c006474:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5e4 <_start-0x2a1c>
1c006478:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2d8 <_sidata+0x5724>
1c00647c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006480 <__FUNCTION__.1654>:
1c006480:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8f8 <_sidata+0x15d44>
1c006484:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4e8 <_sidata+0x15934>
1c006488:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff96e8 <_start-0x6918>
1c00648c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5fc <_start-0x2a04>
1c006490:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2f0 <_sidata+0x573c>
1c006494:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006498 <__FUNCTION__.1658>:
1c006498:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d910 <_sidata+0x15d5c>
1c00649c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d500 <_sidata+0x1594c>
1c0064a0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff9800 <_start-0x6800>
1c0064a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd614 <_start-0x29ec>
1c0064a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d308 <_sidata+0x5754>
1c0064ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064b0 <__FUNCTION__.1662>:
1c0064b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d928 <_sidata+0x15d74>
1c0064b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d518 <_sidata+0x15964>
1c0064b8:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff9918 <_start-0x66e8>
1c0064bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd62c <_start-0x29d4>
1c0064c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d320 <_sidata+0x576c>
1c0064c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064c8 <__FUNCTION__.1666>:
1c0064c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d940 <_sidata+0x15d8c>
1c0064cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d530 <_sidata+0x1597c>
1c0064d0:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff9a30 <_start-0x65d0>
1c0064d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd644 <_start-0x29bc>
1c0064d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d338 <_sidata+0x5784>
1c0064dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064e0 <__FUNCTION__.1670>:
1c0064e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d958 <_sidata+0x15da4>
1c0064e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d548 <_sidata+0x15994>
1c0064e8:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff9b48 <_start-0x64b8>
1c0064ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd65c <_start-0x29a4>
1c0064f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d350 <_sidata+0x579c>
1c0064f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064f8 <__FUNCTION__.1674>:
1c0064f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d970 <_sidata+0x15dbc>
1c0064fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d560 <_sidata+0x159ac>
1c006500:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff9c60 <_start-0x63a0>
1c006504:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd674 <_start-0x298c>
1c006508:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d368 <_sidata+0x57b4>
1c00650c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006510 <__FUNCTION__.1678>:
1c006510:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d988 <_sidata+0x15dd4>
1c006514:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d578 <_sidata+0x159c4>
1c006518:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff9578 <_start-0x6a88>
1c00651c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd68c <_start-0x2974>
1c006520:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d380 <_sidata+0x57cc>
1c006524:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006528 <__FUNCTION__.1682>:
1c006528:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9a0 <_sidata+0x15dec>
1c00652c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d590 <_sidata+0x159dc>
1c006530:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9690 <_start-0x6970>
1c006534:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6a4 <_start-0x295c>
1c006538:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d398 <_sidata+0x57e4>
1c00653c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006540 <__FUNCTION__.1686>:
1c006540:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9b8 <_sidata+0x15e04>
1c006544:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5a8 <_sidata+0x159f4>
1c006548:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff97a8 <_start-0x6858>
1c00654c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6bc <_start-0x2944>
1c006550:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3b0 <_sidata+0x57fc>
1c006554:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006558 <__FUNCTION__.1690>:
1c006558:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9d0 <_sidata+0x15e1c>
1c00655c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5c0 <_sidata+0x15a0c>
1c006560:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff98c0 <_start-0x6740>
1c006564:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6d4 <_start-0x292c>
1c006568:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3c8 <_sidata+0x5814>
1c00656c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006570 <__FUNCTION__.1694>:
1c006570:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9e8 <_sidata+0x15e34>
1c006574:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5d8 <_sidata+0x15a24>
1c006578:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff99d8 <_start-0x6628>
1c00657c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6ec <_start-0x2914>
1c006580:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3e0 <_sidata+0x582c>
1c006584:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006588 <__FUNCTION__.1698>:
1c006588:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da00 <_sidata+0x15e4c>
1c00658c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5f0 <_sidata+0x15a3c>
1c006590:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff9af0 <_start-0x6510>
1c006594:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd704 <_start-0x28fc>
1c006598:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3f8 <_sidata+0x5844>
1c00659c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065a0 <__FUNCTION__.1702>:
1c0065a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da18 <_sidata+0x15e64>
1c0065a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d608 <_sidata+0x15a54>
1c0065a8:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff9c08 <_start-0x63f8>
1c0065ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd71c <_start-0x28e4>
1c0065b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d410 <_sidata+0x585c>
1c0065b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065b8 <__FUNCTION__.1706>:
1c0065b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da30 <_sidata+0x15e7c>
1c0065bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d620 <_sidata+0x15a6c>
1c0065c0:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff9d20 <_start-0x62e0>
1c0065c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd734 <_start-0x28cc>
1c0065c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d428 <_sidata+0x5874>
1c0065cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065d0 <__FUNCTION__.1710>:
1c0065d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da48 <_sidata+0x15e94>
1c0065d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d638 <_sidata+0x15a84>
1c0065d8:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9638 <_start-0x69c8>
1c0065dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd74c <_start-0x28b4>
1c0065e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d440 <_sidata+0x588c>
1c0065e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065e8 <__FUNCTION__.1714>:
1c0065e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da60 <_sidata+0x15eac>
1c0065ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d650 <_sidata+0x15a9c>
1c0065f0:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9750 <_start-0x68b0>
1c0065f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd764 <_start-0x289c>
1c0065f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d458 <_sidata+0x58a4>
1c0065fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006600 <__FUNCTION__.1718>:
1c006600:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da78 <_sidata+0x15ec4>
1c006604:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d668 <_sidata+0x15ab4>
1c006608:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff9868 <_start-0x6798>
1c00660c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd77c <_start-0x2884>
1c006610:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d470 <_sidata+0x58bc>
1c006614:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006618 <__FUNCTION__.1722>:
1c006618:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da90 <_sidata+0x15edc>
1c00661c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d680 <_sidata+0x15acc>
1c006620:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff9980 <_start-0x6680>
1c006624:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd794 <_start-0x286c>
1c006628:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d488 <_sidata+0x58d4>
1c00662c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006630 <__FUNCTION__.1726>:
1c006630:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01daa8 <_sidata+0x15ef4>
1c006634:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d698 <_sidata+0x15ae4>
1c006638:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff9a98 <_start-0x6568>
1c00663c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7ac <_start-0x2854>
1c006640:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4a0 <_sidata+0x58ec>
1c006644:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006648 <__FUNCTION__.1730>:
1c006648:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dac0 <_sidata+0x15f0c>
1c00664c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6b0 <_sidata+0x15afc>
1c006650:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff9bb0 <_start-0x6450>
1c006654:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7c4 <_start-0x283c>
1c006658:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4b8 <_sidata+0x5904>
1c00665c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006660 <__FUNCTION__.1734>:
1c006660:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dad8 <_sidata+0x15f24>
1c006664:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6c8 <_sidata+0x15b14>
1c006668:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9cc8 <_start-0x6338>
1c00666c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7dc <_start-0x2824>
1c006670:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4d0 <_sidata+0x591c>
1c006674:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006678 <__FUNCTION__.1738>:
1c006678:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01daf0 <_sidata+0x15f3c>
1c00667c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6e0 <_sidata+0x15b2c>
1c006680:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff9de0 <_start-0x6220>
1c006684:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7f4 <_start-0x280c>
1c006688:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4e8 <_sidata+0x5934>
1c00668c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006690 <__FUNCTION__.1742>:
1c006690:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db08 <_sidata+0x15f54>
1c006694:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6f8 <_sidata+0x15b44>
1c006698:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff96fc <_start-0x6904>
1c00669c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd80c <_start-0x27f4>
1c0066a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d500 <_sidata+0x594c>
1c0066a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066a8 <__FUNCTION__.1746>:
1c0066a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db20 <_sidata+0x15f6c>
1c0066ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d710 <_sidata+0x15b5c>
1c0066b0:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff9814 <_start-0x67ec>
1c0066b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd824 <_start-0x27dc>
1c0066b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d518 <_sidata+0x5964>
1c0066bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066c0 <__FUNCTION__.1750>:
1c0066c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db38 <_sidata+0x15f84>
1c0066c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d728 <_sidata+0x15b74>
1c0066c8:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff992c <_start-0x66d4>
1c0066cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd83c <_start-0x27c4>
1c0066d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d530 <_sidata+0x597c>
1c0066d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066d8 <__FUNCTION__.1754>:
1c0066d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db50 <_sidata+0x15f9c>
1c0066dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d740 <_sidata+0x15b8c>
1c0066e0:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff9a44 <_start-0x65bc>
1c0066e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd854 <_start-0x27ac>
1c0066e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d548 <_sidata+0x5994>
1c0066ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066f0 <__FUNCTION__.1758>:
1c0066f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db68 <_sidata+0x15fb4>
1c0066f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d758 <_sidata+0x15ba4>
1c0066f8:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff9b5c <_start-0x64a4>
1c0066fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd86c <_start-0x2794>
1c006700:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d560 <_sidata+0x59ac>
1c006704:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006708 <__FUNCTION__.1762>:
1c006708:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db80 <_sidata+0x15fcc>
1c00670c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d770 <_sidata+0x15bbc>
1c006710:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9c74 <_start-0x638c>
1c006714:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd884 <_start-0x277c>
1c006718:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d578 <_sidata+0x59c4>
1c00671c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006720 <__FUNCTION__.1766>:
1c006720:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db98 <_sidata+0x15fe4>
1c006724:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d788 <_sidata+0x15bd4>
1c006728:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff9d8c <_start-0x6274>
1c00672c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd89c <_start-0x2764>
1c006730:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d590 <_sidata+0x59dc>
1c006734:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006738 <__FUNCTION__.1770>:
1c006738:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dbb0 <_sidata+0x15ffc>
1c00673c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7a0 <_sidata+0x15bec>
1c006740:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff9ea4 <_start-0x615c>
1c006744:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8b4 <_start-0x274c>
1c006748:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5a8 <_sidata+0x59f4>
1c00674c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006750 <asc2_1608>:
	...
1c006760:	f8000000 	0xf8000000
1c006764:	00000000 	0x00000000
1c006768:	33000000 	0x33000000
1c00676c:	00000000 	0x00000000
1c006770:	020c1000 	slti	$r0,$r0,772(0x304)
1c006774:	00020c10 	0x00020c10
	...
1c006780:	78c04000 	0x78c04000
1c006784:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c006788:	043f0400 	csrrd	$r0,0xfc1
1c00678c:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c006790:	88887000 	0x88887000
1c006794:	003008fc 	0x003008fc
1c006798:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c00679c:	001e21ff 	mulh.d	$r31,$r15,$r8
1c0067a0:	80f008f0 	0x80f008f0
1c0067a4:	00001860 	cto.w	$r0,$r3
1c0067a8:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c0067ac:	001e211e 	mulh.d	$r30,$r8,$r8
1c0067b0:	8808f000 	0x8808f000
1c0067b4:	00000070 	0x00000070
1c0067b8:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c0067bc:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c0067c0:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c0067d0:	e0000000 	0xe0000000
1c0067d4:	00020418 	0x00020418
1c0067d8:	07000000 	0x07000000
1c0067dc:	00402018 	0x00402018
1c0067e0:	18040200 	pcaddi	$r0,8208(0x2010)
1c0067e4:	000000e0 	0x000000e0
1c0067e8:	18204000 	pcaddi	$r0,66048(0x10200)
1c0067ec:	00000007 	0x00000007
1c0067f0:	f0804040 	0xf0804040
1c0067f4:	00404080 	0x00404080
1c0067f8:	0f010202 	0x0f010202
1c0067fc:	00020201 	0x00020201
1c006800:	00000000 	0x00000000
1c006804:	000000e0 	0x000000e0
1c006808:	01010100 	fadd.d	$f0,$f8,$f0
1c00680c:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c006818:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c006828:	01010100 	fadd.d	$f0,$f8,$f0
1c00682c:	00010101 	0x00010101
	...
1c006838:	00303000 	0x00303000
	...
1c006844:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c006848:	07186000 	0x07186000
1c00684c:	00000000 	0x00000000
1c006850:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c006854:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006858:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c00685c:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006860:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c006864:	000000f8 	0x000000f8
1c006868:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c00686c:	0020203f 	div.w	$r31,$r1,$r8
1c006870:	08087000 	0x08087000
1c006874:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006878:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c00687c:	00302122 	0x00302122
1c006880:	08083000 	0x08083000
1c006884:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006888:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c00688c:	001c2221 	mul.w	$r1,$r17,$r8
1c006890:	40800000 	beqz	$r0,32768(0x8000) # 1c00e890 <_sidata+0x6cdc>
1c006894:	0000f830 	0x0000f830
1c006898:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c00689c:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c0068a0:	8888f800 	0x8888f800
1c0068a4:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c0068a8:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c0068ac:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0068b0:	8810e000 	0x8810e000
1c0068b4:	00009088 	0x00009088
1c0068b8:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c0068bc:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0068c0:	08081800 	0x08081800
1c0068c4:	00186888 	sra.w	$r8,$r4,$r26
1c0068c8:	3e000000 	0x3e000000
1c0068cc:	00000001 	0x00000001
1c0068d0:	08887000 	0x08887000
1c0068d4:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0068d8:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c0068dc:	001c2221 	mul.w	$r1,$r17,$r8
1c0068e0:	0808f000 	0x0808f000
1c0068e4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0068e8:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c0068ec:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c0068f0:	c0000000 	0xc0000000
1c0068f4:	000000c0 	0x000000c0
1c0068f8:	30000000 	0x30000000
1c0068fc:	00000030 	0x00000030
1c006900:	80000000 	0x80000000
1c006904:	00000000 	0x00000000
1c006908:	e0000000 	0xe0000000
1c00690c:	00000000 	0x00000000
1c006910:	40800000 	beqz	$r0,32768(0x8000) # 1c00e910 <_sidata+0x6d5c>
1c006914:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006918:	04020100 	csrxchg	$r0,$r8,0x80
1c00691c:	00201008 	div.w	$r8,$r0,$r4
1c006920:	40404000 	beqz	$r0,16448(0x4040) # 1c00a960 <_sidata+0x2dac>
1c006924:	00404040 	0x00404040
1c006928:	02020200 	slti	$r0,$r16,128(0x80)
1c00692c:	00020202 	0x00020202
1c006930:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c006934:	00008040 	0x00008040
1c006938:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c00693c:	00010204 	0x00010204
1c006940:	08487000 	0x08487000
1c006944:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006948:	30000000 	0x30000000
1c00694c:	00000037 	0x00000037
1c006950:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c006954:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c006958:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c00695c:	0017282f 	sll.w	$r15,$r1,$r10
1c006960:	38c00000 	0x38c00000
1c006964:	000000e0 	0x000000e0
1c006968:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c00696c:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c006970:	8888f808 	0x8888f808
1c006974:	00007088 	0x00007088
1c006978:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00697c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006980:	080830c0 	0x080830c0
1c006984:	00380808 	0x00380808
1c006988:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00698c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006990:	0808f808 	0x0808f808
1c006994:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006998:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00699c:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0069a0:	8888f808 	0x8888f808
1c0069a4:	001008e8 	add.w	$r8,$r7,$r2
1c0069a8:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0069ac:	00182023 	sra.w	$r3,$r1,$r8
1c0069b0:	8888f808 	0x8888f808
1c0069b4:	001008e8 	add.w	$r8,$r7,$r2
1c0069b8:	00203f20 	div.w	$r0,$r25,$r15
1c0069bc:	00000003 	0x00000003
1c0069c0:	080830c0 	0x080830c0
1c0069c4:	00003808 	revb.2w	$r8,$r0
1c0069c8:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0069cc:	00021e22 	0x00021e22
1c0069d0:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0069d4:	08f80800 	0x08f80800
1c0069d8:	01213f20 	0x01213f20
1c0069dc:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c0069e0:	f8080800 	0xf8080800
1c0069e4:	00000808 	0x00000808
1c0069e8:	3f202000 	0x3f202000
1c0069ec:	00002020 	clo.d	$r0,$r1
1c0069f0:	08080000 	0x08080000
1c0069f4:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c0069f8:	808080c0 	0x808080c0
1c0069fc:	0000007f 	0x0000007f
1c006a00:	c088f808 	0xc088f808
1c006a04:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c006a08:	01203f20 	0x01203f20
1c006a0c:	00203826 	div.w	$r6,$r1,$r14
1c006a10:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006a14:	00000000 	0x00000000
1c006a18:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006a1c:	00302020 	0x00302020
1c006a20:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c006a24:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c006a28:	3e013f20 	0x3e013f20
1c006a2c:	00203f01 	div.w	$r1,$r24,$r15
1c006a30:	c030f808 	0xc030f808
1c006a34:	08f80800 	0x08f80800
1c006a38:	00203f20 	div.w	$r0,$r25,$r15
1c006a3c:	003f1807 	0x003f1807
1c006a40:	080810e0 	0x080810e0
1c006a44:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006a48:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c006a4c:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006a50:	0808f808 	0x0808f808
1c006a54:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006a58:	01213f20 	0x01213f20
1c006a5c:	00000101 	0x00000101
1c006a60:	080810e0 	0x080810e0
1c006a64:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006a68:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c006a6c:	004f5030 	0x004f5030
1c006a70:	8888f808 	0x8888f808
1c006a74:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c006a78:	00203f20 	div.w	$r0,$r25,$r15
1c006a7c:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c006a80:	08887000 	0x08887000
1c006a84:	00380808 	0x00380808
1c006a88:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c006a8c:	001c2221 	mul.w	$r1,$r17,$r8
1c006a90:	f8080818 	0xf8080818
1c006a94:	00180808 	sra.w	$r8,$r0,$r2
1c006a98:	3f200000 	0x3f200000
1c006a9c:	00000020 	0x00000020
1c006aa0:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006aa4:	08f80800 	0x08f80800
1c006aa8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006aac:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006ab0:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c006ab4:	0838c800 	0x0838c800
1c006ab8:	38070000 	0x38070000
1c006abc:	0000010e 	0x0000010e
1c006ac0:	f800f808 	0xf800f808
1c006ac4:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c006ac8:	013e0300 	0x013e0300
1c006acc:	0000033e 	0x0000033e
1c006ad0:	80681808 	0x80681808
1c006ad4:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c006ad8:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c006adc:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c006ae0:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c006ae4:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c006ae8:	3f200000 	0x3f200000
1c006aec:	00000020 	0x00000020
1c006af0:	08080810 	0x08080810
1c006af4:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c006af8:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c006afc:	00182020 	sra.w	$r0,$r1,$r8
1c006b00:	fe000000 	0xfe000000
1c006b04:	00020202 	0x00020202
1c006b08:	7f000000 	0x7f000000
1c006b0c:	00404040 	0x00404040
1c006b10:	c0380400 	0xc0380400
1c006b14:	00000000 	0x00000000
1c006b18:	01000000 	0x01000000
1c006b1c:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c006b20:	02020200 	slti	$r0,$r16,128(0x80)
1c006b24:	000000fe 	0x000000fe
1c006b28:	40404000 	beqz	$r0,16448(0x4040) # 1c00ab68 <_sidata+0x2fb4>
1c006b2c:	0000007f 	0x0000007f
1c006b30:	02040000 	slti	$r0,$r0,256(0x100)
1c006b34:	00000402 	0x00000402
	...
1c006b48:	80808080 	0x80808080
1c006b4c:	80808080 	0x80808080
1c006b50:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c006b60:	80800000 	0x80800000
1c006b64:	00000080 	0x00000080
1c006b68:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c006b6c:	00203f12 	div.w	$r18,$r24,$r15
1c006b70:	8000f010 	0x8000f010
1c006b74:	00000080 	0x00000080
1c006b78:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c006b7c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006b80:	80000000 	0x80000000
1c006b84:	00008080 	0x00008080
1c006b88:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006b8c:	00112020 	sub.w	$r0,$r1,$r8
1c006b90:	80800000 	0x80800000
1c006b94:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c006b98:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006b9c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c006ba0:	80800000 	0x80800000
1c006ba4:	00008080 	0x00008080
1c006ba8:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c006bac:	00172424 	sll.w	$r4,$r1,$r9
1c006bb0:	e0808000 	0xe0808000
1c006bb4:	00209090 	mod.w	$r16,$r4,$r4
1c006bb8:	3f202000 	0x3f202000
1c006bbc:	00002020 	clo.d	$r0,$r1
1c006bc0:	80800000 	0x80800000
1c006bc4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006bc8:	94946b00 	0x94946b00
1c006bcc:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c006bd0:	8000f010 	0x8000f010
1c006bd4:	00008080 	0x00008080
1c006bd8:	00213f20 	div.wu	$r0,$r25,$r15
1c006bdc:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c006be0:	98988000 	0x98988000
1c006be4:	00000000 	0x00000000
1c006be8:	3f202000 	0x3f202000
1c006bec:	00002020 	clo.d	$r0,$r1
1c006bf0:	80000000 	0x80000000
1c006bf4:	00009898 	0x00009898
1c006bf8:	8080c000 	0x8080c000
1c006bfc:	00007f80 	0x00007f80
1c006c00:	0000f010 	0x0000f010
1c006c04:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006c08:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c006c0c:	00203029 	div.w	$r9,$r1,$r12
1c006c10:	f8101000 	0xf8101000
1c006c14:	00000000 	0x00000000
1c006c18:	3f202000 	0x3f202000
1c006c1c:	00002020 	clo.d	$r0,$r1
1c006c20:	80808080 	0x80808080
1c006c24:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006c28:	00203f20 	div.w	$r0,$r25,$r15
1c006c2c:	3f00203f 	0x3f00203f
1c006c30:	80008080 	0x80008080
1c006c34:	00008080 	0x00008080
1c006c38:	00213f20 	div.wu	$r0,$r25,$r15
1c006c3c:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c006c40:	80800000 	0x80800000
1c006c44:	00008080 	0x00008080
1c006c48:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006c4c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006c50:	80008080 	0x80008080
1c006c54:	00000080 	0x00000080
1c006c58:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c006c5c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006c60:	80000000 	0x80000000
1c006c64:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c006c68:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006c6c:	80ff9120 	0x80ff9120
1c006c70:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006c74:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006c78:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c006c7c:	00010020 	asrtle.d	$r1,$r0
1c006c80:	80800000 	0x80800000
1c006c84:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006c88:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c006c8c:	00192424 	srl.d	$r4,$r1,$r9
1c006c90:	e0808000 	0xe0808000
1c006c94:	00008080 	0x00008080
1c006c98:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c006c9c:	00102020 	add.w	$r0,$r1,$r8
1c006ca0:	00008080 	0x00008080
1c006ca4:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c006ca8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006cac:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c006cb0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006cb4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006cb8:	300c0300 	0x300c0300
1c006cbc:	0000030c 	0x0000030c
1c006cc0:	80008080 	0x80008080
1c006cc4:	80800080 	0x80800080
1c006cc8:	0c300e01 	0x0c300e01
1c006ccc:	01063807 	0x01063807
1c006cd0:	80808000 	0x80808000
1c006cd4:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c006cd8:	0e312000 	0x0e312000
1c006cdc:	0020312e 	div.w	$r14,$r9,$r12
1c006ce0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006ce4:	80808000 	0x80808000
1c006ce8:	78868100 	0x78868100
1c006cec:	00010618 	0x00010618
1c006cf0:	80808000 	0x80808000
1c006cf4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006cf8:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c006cfc:	00302122 	0x00302122
1c006d00:	00000000 	0x00000000
1c006d04:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c006d08:	00000000 	0x00000000
1c006d0c:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04ad48 <_sidata+0x43194>
1c006d10:	00000000 	0x00000000
1c006d14:	000000ff 	0x000000ff
1c006d18:	00000000 	0x00000000
1c006d1c:	000000ff 	0x000000ff
1c006d20:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c006d24:	00000000 	0x00000000
1c006d28:	013e4040 	0x013e4040
1c006d2c:	00000000 	0x00000000
1c006d30:	02010200 	slti	$r0,$r16,64(0x40)
1c006d34:	00020402 	0x00020402
	...

1c006d40 <tfont16>:
1c006d40:	00b2b7e5 	bstrins.d	$r5,$r31,0x32,0x2d
1c006d44:	8282e200 	0x8282e200
1c006d48:	82828282 	0x82828282
1c006d4c:	00fe8282 	bstrpick.d	$r2,$r20,0x3e,0x20
1c006d50:	00000000 	0x00000000
1c006d54:	40403f00 	beqz	$r24,16444(0x403c) # 1c00ad90 <_sidata+0x31dc>
1c006d58:	40404040 	beqz	$r2,16448(0x4040) # 1c00ad98 <_sidata+0x31e4>
1c006d5c:	40404040 	beqz	$r2,16448(0x4040) # 1c00ad9c <_sidata+0x31e8>
1c006d60:	e8000078 	0xe8000078
1c006d64:	40409ebf 	beqz	$r21,-245604(0x7c409c) # 1bfcae00 <_start-0x35200>
1c006d68:	0400cc42 	csrxchg	$r2,$r2,0x33
1c006d6c:	475c6444 	bnez	$r2,1268836(0x135c64) # 1c13c9d0 <_sidata+0x134e1c>
1c006d70:	444444f4 	bnez	$r7,-3128252(0x504444) # 1bd0b1b4 <_start-0x2f4e4c>
1c006d74:	40000004 	beqz	$r0,1048576(0x100000) # 1c106d74 <_sidata+0xff1c0>
1c006d78:	44201f20 	bnez	$r25,8220(0x201c) # 1c008d94 <_sidata+0x11e0>
1c006d7c:	44444444 	bnez	$r2,1066052(0x104444) # 1c10b1c0 <_sidata+0x10360c>
1c006d80:	4444447f 	bnez	$r3,-244668(0x7c4444) # 1bfcb1c4 <_start-0x34e3c>
1c006d84:	8ee60044 	0x8ee60044
1c006d88:	101010a5 	addu16i.d	$r5,$r5,1028(0x404)
1c006d8c:	445010ff 	bnez	$r7,-241648(0x7c5010) # 1bfcbd9c <_start-0x34264>
1c006d90:	44c66554 	bnez	$r10,-3094940(0x50c664) # 1bd133f4 <_start-0x2ecc0c>
1c006d94:	40445464 	beqz	$r3,1066068(0x104454) # 1c10b1e8 <_sidata+0x103634>
1c006d98:	82440400 	0x82440400
1c006d9c:	8282017f 	0x8282017f
1c006da0:	2223564a 	ll.d	$r10,$r18,9044(0x2354)
1c006da4:	02824e52 	addi.w	$r18,$r18,147(0x93)
1c006da8:	b088e500 	0xb088e500
1c006dac:	4a526242 	0x4a526242
1c006db0:	625242c6 	blt	$r22,$r6,-110016(0x25240) # 1bfebff0 <_start-0x14010>
1c006db4:	00f800c2 	bstrpick.d	$r2,$r6,0x38,0x0
1c006db8:	0000ff00 	0x0000ff00
1c006dbc:	4444c440 	bnez	$r2,17604(0x44c4) # 1c00b280 <_sidata+0x36cc>
1c006dc0:	2424247f 	ldptr.w	$r31,$r3,9252(0x2424)
1c006dc4:	400f0020 	beqz	$r1,3840(0xf00) # 1c007cc4 <_sidata+0x110>
1c006dc8:	00007f80 	0x00007f80
1c006dcc:	068384e2 	0x068384e2
1c006dd0:	f8e60909 	0xf8e60909
1c006dd4:	0202040c 	slti	$r12,$r0,129(0x81)
1c006dd8:	04020202 	csrxchg	$r2,$r16,0x80
1c006ddc:	0000001e 	0x0000001e
1c006de0:	1f070000 	pcaddu18i	$r0,-509952(0x83800)
1c006de4:	40402030 	beqz	$r1,-4177888(0x404020) # 1bc0ae04 <_start-0x3f51fc>
1c006de8:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c006dec:	e6000010 	0xe6000010
1c006df0:	8080aa9c 	0x8080aa9c
1c006df4:	88888888 	0x88888888
1c006df8:	8888ff88 	0x8888ff88
1c006dfc:	80888888 	0x80888888
1c006e00:	20200080 	ll.w	$r0,$r4,8192(0x2000)
1c006e04:	02040810 	slti	$r16,$r0,258(0x102)
1c006e08:	0201ff01 	slti	$r1,$r24,127(0x7f)
1c006e0c:	20100804 	ll.w	$r4,$r0,4104(0x1008)
1c006e10:	a3e60020 	0xa3e60020
1c006e14:	d0101080 	0xd0101080
1c006e18:	205090ff 	ll.w	$r31,$r7,20624(0x5090)
1c006e1c:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c006e20:	40402050 	beqz	$r2,-4177888(0x404020) # 1bc0ae40 <_start-0x3f51c0>
1c006e24:	00030400 	0x00030400
1c006e28:	444100ff 	bnez	$r7,-245504(0x7c4100) # 1bfcaf28 <_start-0x350d8>
1c006e2c:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00bc6c <_sidata+0x40b8>
1c006e30:	40404758 	beqz	$r26,-2080700(0x604044) # 1be0ae74 <_start-0x1f518c>
1c006e34:	8bb5e600 	0x8bb5e600
1c006e38:	8c026010 	0x8c026010
1c006e3c:	f202fe00 	0xf202fe00
1c006e40:	f800fe02 	0xf800fe02
1c006e44:	0000ff00 	0x0000ff00
1c006e48:	017e0404 	0x017e0404
1c006e4c:	0f304780 	0x0f304780
1c006e50:	47002710 	bnez	$r24,-3997660(0x430024) # 1bc36e74 <_start-0x3c918c>
1c006e54:	00007f80 	0x00007f80
1c006e58:	42b088e5 	beqz	$r7,1486984(0x16b088) # 1c171ee0 <_sidata+0x16a32c>
1c006e5c:	c64a5262 	0xc64a5262
1c006e60:	c2625242 	0xc2625242
1c006e64:	0000f800 	0x0000f800
1c006e68:	400000ff 	beqz	$r7,-262144(0x7c0000) # 1bfc6e68 <_start-0x39198>
1c006e6c:	7f4444c4 	0x7f4444c4
1c006e70:	20242424 	ll.w	$r4,$r1,9252(0x2424)
1c006e74:	80400f00 	0x80400f00
1c006e78:	e400007f 	0xe400007f
1c006e7c:	8000a0bc 	0x8000a0bc
1c006e80:	4007f860 	beqz	$r3,2040(0x7f8) # 1c007678 <tfont32+0x584>
1c006e84:	5fe84848 	bne	$r2,$r8,-6072(0x3e848) # 1c0056cc <DHT11_Read_Bit+0x58>
1c006e88:	40484848 	beqz	$r2,2115656(0x204848) # 1c20b6d0 <_sidata+0x203b1c>
1c006e8c:	00010040 	asrtle.d	$r2,$r0
1c006e90:	0000ff00 	0x0000ff00
1c006e94:	22120b02 	ll.d	$r2,$r24,4616(0x1208)
1c006e98:	00060ad2 	alsl.wu	$r18,$r22,$r2,0x1
1c006e9c:	84e60000 	0x84e60000
1c006ea0:	fc00009f 	0xfc00009f
1c006ea4:	5454d404 	bl	1070292(0x1054d4) # 1c10c378 <_sidata+0x1047c4>
1c006ea8:	7f04d454 	0x7f04d454
1c006eac:	0436c584 	csrxchg	$r4,$r12,0xdb1
1c006eb0:	01668800 	0x01668800
1c006eb4:	82826300 	0x82826300
1c006eb8:	8284ab92 	0x8284ab92
1c006ebc:	cf2402c1 	0xcf2402c1
1c006ec0:	a899e500 	0xa899e500
1c006ec4:	929e8080 	0x929e8080
1c006ec8:	e09e9292 	0xe09e9292
1c006ecc:	d2b29e80 	0xd2b29e80
1c006ed0:	00809e92 	bstrins.d	$r18,$r20,0x0,0x27
1c006ed4:	94f40808 	0x94f40808
1c006ed8:	00f19292 	bstrpick.d	$r18,$r20,0x31,0x24
1c006edc:	9492f201 	0x9492f201
1c006ee0:	0008f894 	bytepick.w	$r20,$r4,$r30,0x1
1c006ee4:	10a9b8e6 	addu16i.d	$r6,$r7,10862(0x2a6e)
1c006ee8:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c006eec:	9292fe00 	0x9292fe00
1c006ef0:	fe929292 	0xfe929292
1c006ef4:	04000000 	csrrd	$r0,0x0
1c006ef8:	40017e04 	beqz	$r16,1048956(0x10017c) # 1c107074 <_sidata+0xff4c0>
1c006efc:	7e42427e 	0x7e42427e
1c006f00:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ab17c <_sidata+0xa35c8>
1c006f04:	e600407e 	0xe600407e
1c006f08:	6010bfb9 	blt	$r29,$r25,4284(0x10bc) # 1c007fc4 <_sidata+0x410>
1c006f0c:	fe008c02 	0xfe008c02
1c006f10:	92929292 	0x92929292
1c006f14:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c006f18:	04040000 	csrrd	$r0,0x100
1c006f1c:	4844017e 	bcnez	$fcc3,-506880(0x784400) # 1bf8b31c <_start-0x74ce4>
1c006f20:	40407f50 	beqz	$r26,-4177796(0x40407c) # 1bc0af9c <_start-0x3f5064>
1c006f24:	4448507f 	bnez	$r3,-243632(0x7c4850) # 1bfcb774 <_start-0x3488c>
1c006f28:	bae50040 	0xbae50040
1c006f2c:	fc0000a6 	0xfc0000a6
1c006f30:	fc242424 	0xfc242424
1c006f34:	fc242625 	0xfc242625
1c006f38:	04242424 	csrwr	$r4,0x909
1c006f3c:	8f304000 	0x8f304000
1c006f40:	554c8480 	bl	33639556(0x2014c84) # 1e01bbc4 <_sidata+0x2014010>
1c006f44:	55252525 	bl	76883236(0x4952524) # 20959468 <_sidata+0x49518b4>
1c006f48:	8080804c 	0x8080804c
1c006f4c:	919be700 	0x919be700
1c006f50:	007e0000 	bstrins.w	$r0,$r0,0x1e,0x0
1c006f54:	4000ff00 	beqz	$r24,252(0xfc) # 1c007050 <tfont16+0x310>
1c006f58:	14040f30 	lu12i.w	$r16,8313(0x2079)
1c006f5c:	00000464 	0x00000464
1c006f60:	427e4040 	beqz	$r2,163392(0x27e40) # 1c02eda0 <_sidata+0x271ec>
1c006f64:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ab1e0 <_sidata+0xa362c>
1c006f68:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ab1e4 <_sidata+0xa3630>
1c006f6c:	0040407e 	0x0040407e
1c006f70:	108bb5e6 	addu16i.d	$r6,$r15,8941(0x22ed)
1c006f74:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c006f78:	02f202fe 	addi.d	$r30,$r23,-896(0xc80)
1c006f7c:	00f800fe 	bstrpick.d	$r30,$r7,0x38,0x0
1c006f80:	040000ff 	csrxchg	$r31,$r7,0x0
1c006f84:	80017e04 	0x80017e04
1c006f88:	100f3047 	addu16i.d	$r7,$r2,972(0x3cc)
1c006f8c:	80470027 	0x80470027
1c006f90:	e500007f 	0xe500007f
1c006f94:	0c109eae 	0x0c109eae
1c006f98:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c00841c <_sidata+0x868>
1c006f9c:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c006fa0:	14040404 	lu12i.w	$r4,8224(0x2020)
1c006fa4:	8404000c 	0x8404000c
1c006fa8:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c006fac:	0c070c14 	0x0c070c14
1c006fb0:	84442414 	0x84442414
1c006fb4:	aae90004 	0xaae90004
1c006fb8:	82fa028c 	0x82fa028c
1c006fbc:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c08f0b8 <_sidata+0x87504>
1c006fc0:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03bc10 <_sidata+0x3405c>
1c006fc4:	4020504c 	beqz	$r2,3154000(0x302050) # 1c309014 <_sidata+0x301460>
1c006fc8:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c0087d0 <_sidata+0xc1c>
1c006fcc:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10af10 <_sidata+0x10335c>
1c006fd0:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c006fd4:	40475860 	beqz	$r3,18264(0x4758) # 1c00b72c <_sidata+0x3b78>
1c006fd8:	baa4e700 	0xbaa4e700
1c006fdc:	42424040 	beqz	$r2,148032(0x24240) # 1c02b21c <_sidata+0x23668>
1c006fe0:	c2424242 	0xc2424242
1c006fe4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab224 <_sidata+0xa3670>
1c006fe8:	00404042 	0x00404042
1c006fec:	06081020 	cacop	0x0,$r1,516(0x204)
1c006ff0:	7f804000 	0x7f804000
1c006ff4:	02000000 	slti	$r0,$r0,0
1c006ff8:	00300804 	0x00300804
1c006ffc:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c007000:	92fe0000 	0x92fe0000
1c007004:	92929292 	0x92929292
1c007008:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c00700c:	40000000 	beqz	$r0,0 # 1c00700c <tfont16+0x2cc>
1c007010:	40584442 	beqz	$r2,546884(0x85844) # 1c08c854 <_sidata+0x84ca0>
1c007014:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcb054 <_start-0x34fac>
1c007018:	4850407f 	bceqz	$fcc3,-241600(0x7c5040) # 1bfcc058 <_start-0x33fa8>
1c00701c:	e5004046 	0xe5004046
1c007020:	0c109eae 	0x0c109eae
1c007024:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c0084a8 <_sidata+0x8f4>
1c007028:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c00702c:	14040404 	lu12i.w	$r4,8224(0x2020)
1c007030:	8404000c 	0x8404000c
1c007034:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c007038:	0c070c14 	0x0c070c14
1c00703c:	84442414 	0x84442414
1c007040:	aae90004 	0xaae90004
1c007044:	82fa028c 	0x82fa028c
1c007048:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c08f144 <_sidata+0x87590>
1c00704c:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03bc9c <_sidata+0x340e8>
1c007050:	4020504c 	beqz	$r2,3154000(0x302050) # 1c3090a0 <_sidata+0x3014ec>
1c007054:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c00885c <_sidata+0xca8>
1c007058:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10af9c <_sidata+0x1033e8>
1c00705c:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c007060:	40475860 	beqz	$r3,18264(0x4758) # 1c00b7b8 <_sidata+0x3c04>
1c007064:	be99e700 	0xbe99e700
1c007068:	22e20202 	ll.d	$r2,$r16,-7680(0xe200)
1c00706c:	262a3222 	ldptr.d	$r2,$r17,10800(0x2a30)
1c007070:	22222222 	ll.d	$r2,$r17,8736(0x2220)
1c007074:	000202e2 	0x000202e2
1c007078:	42ff0000 	beqz	$r0,196352(0x2ff00) # 1c036f78 <_sidata+0x2f3c4>
1c00707c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab2bc <_sidata+0xa3708>
1c007080:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab2c0 <_sidata+0xa370c>
1c007084:	000000ff 	0x000000ff
1c007088:	2491a7e7 	ldptr.w	$r7,$r31,-28252(0x91a4)
1c00708c:	a3fea424 	0xa3fea424
1c007090:	cc220022 	0xcc220022
1c007094:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c007098:	08000000 	0x08000000
1c00709c:	00ff0106 	bstrpick.d	$r6,$r8,0x3f,0x0
1c0070a0:	04040401 	csrrd	$r1,0x101
1c0070a4:	02ff0404 	addi.d	$r4,$r0,-63(0xfc1)
1c0070a8:	e8000202 	0xe8000202
1c0070ac:	6484a38d 	bge	$r28,$r13,33952(0x84a0) # 1c00f54c <_sidata+0x7998>
1c0070b0:	242f2424 	ldptr.w	$r4,$r1,12068(0x2f24)
1c0070b4:	2424a424 	ldptr.w	$r4,$r1,9380(0x24a4)
1c0070b8:	a424242f 	0xa424242f
1c0070bc:	42400064 	beqz	$r3,1196032(0x124000) # 1c12b0bc <_sidata+0x123508>
1c0070c0:	0a122222 	xvfmadd.s	$xr2,$xr17,$xr8,$xr4
1c0070c4:	0a06ff06 	0x0a06ff06
1c0070c8:	42222212 	beqz	$r16,-3530208(0x4a2220) # 1bca92e8 <_start-0x356d18>
1c0070cc:	88e50040 	0x88e50040
1c0070d0:	d020409b 	0xd020409b
1c0070d4:	c844434c 	0xc844434c
1c0070d8:	f8002010 	0xf8002010
1c0070dc:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0070e0:	3f000000 	0x3f000000
1c0070e4:	47484440 	bnez	$r2,215108(0x34844) # 1c03b928 <_sidata+0x33d74>
1c0070e8:	0f007040 	0x0f007040
1c0070ec:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
1c0070f0:	00000000 	0x00000000

1c0070f4 <tfont32>:
1c0070f4:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c0070f8:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0070fc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007100:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007104:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c007108:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00710c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007110:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c00711c:	f8fc0000 	0xf8fc0000
1c007120:	08080808 	0x08080808
1c007124:	08080b0c 	0x08080b0c
1c007128:	08080808 	0x08080808
1c00712c:	f8fc0808 	0xf8fc0808
	...
1c00713c:	ffff0000 	0xffff0000
1c007140:	08080808 	0x08080808
1c007144:	08080808 	0x08080808
1c007148:	08080808 	0x08080808
1c00714c:	ffff0808 	0xffff0808
	...
1c00715c:	3f7f0000 	0x3f7f0000
1c007160:	08080808 	0x08080808
1c007164:	08080808 	0x08080808
1c007168:	08080808 	0x08080808
1c00716c:	3f7f0808 	0x3f7f0808
1c007170:	00000000 	0x00000000
1c007174:	e7000000 	0xe7000000
1c007178:	000091a7 	0x000091a7
1c00717c:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c007180:	e0e02020 	0xe0e02020
1c007184:	18181030 	pcaddi	$r16,49281(0xc081)
1c007188:	80000000 	0x80000000
1c00718c:	00000080 	0x00000080
1c007190:	f8fc0000 	0xf8fc0000
1c007194:	00000008 	0x00000008
1c007198:	00000000 	0x00000000
1c00719c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0071a0:	ffff9010 	0xffff9010
1c0071a4:	18101010 	pcaddi	$r16,32896(0x8080)
1c0071a8:	c0000010 	0xc0000010
1c0071ac:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c0071b0:	ffff0000 	0xffff0000
	...
1c0071bc:	18204080 	pcaddi	$r0,66052(0x10204)
1c0071c0:	ffff030e 	0xffff030e
1c0071c4:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe77c4 <_start-0x1883c>
1c0071c8:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c0071cc:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c0071d0:	ffff1010 	0xffff1010
1c0071d4:	0c0c0808 	0x0c0c0808
1c0071d8:	01000000 	0x01000000
1c0071dc:	00000000 	0x00000000
1c0071e0:	3f7f0000 	0x3f7f0000
	...
1c0071f0:	3f7f0000 	0x3f7f0000
1c0071f4:	00000000 	0x00000000
1c0071f8:	8de80000 	0x8de80000
1c0071fc:	000000a3 	0x000000a3
1c007200:	80808080 	0x80808080
1c007204:	80808080 	0x80808080
1c007208:	8088f8fc 	0x8088f8fc
1c00720c:	80808080 	0x80808080
1c007210:	8088f8fc 	0x8088f8fc
1c007214:	e0c08080 	0xe0c08080
1c007218:	000080c0 	0x000080c0
1c00721c:	00000000 	0x00000000
1c007220:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c007224:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007228:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c00722c:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c007230:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c007234:	f0d01010 	0xf0d01010
1c007238:	00001038 	clo.w	$r24,$r1
1c00723c:	00000000 	0x00000000
1c007240:	02020200 	slti	$r0,$r16,128(0x80)
1c007244:	c2820202 	0xc2820202
1c007248:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c00724c:	0e02ffff 	0x0e02ffff
1c007250:	82c26212 	0x82c26212
1c007254:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c007258:	00000203 	0x00000203
1c00725c:	10000000 	addu16i.d	$r0,$r0,0
1c007260:	06040808 	cacop	0x8,$r0,258(0x102)
1c007264:	00010102 	0x00010102
1c007268:	00000000 	0x00000000
1c00726c:	00003f7f 	revb.d	$r31,$r27
1c007270:	01000000 	0x01000000
1c007274:	0e060303 	0x0e060303
1c007278:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c00727c:	9b88e500 	0x9b88e500
1c007280:	00000000 	0x00000000
1c007284:	c0000000 	0xc0000000
1c007288:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c00728c:	80c04060 	0x80c04060
	...
1c007298:	f8000000 	0xf8000000
1c00729c:	000000f8 	0x000000f8
1c0072a0:	40800000 	beqz	$r0,32768(0x8000) # 1c00f2a0 <_sidata+0x76ec>
1c0072a4:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c0072a8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0072ac:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c0072b0:	00000207 	0x00000207
1c0072b4:	0002ff00 	0x0002ff00
1c0072b8:	ff000000 	0xff000000
1c0072bc:	000000ff 	0x000000ff
1c0072c0:	00000100 	0x00000100
1c0072c4:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c0072c8:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c0092c8 <_sidata+0x1714>
1c0072cc:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c0072d0:	00008000 	0x00008000
1c0072d4:	00007f00 	0x00007f00
1c0072d8:	ff000000 	0xff000000
1c0072dc:	000000ff 	0x000000ff
1c0072e0:	00000000 	0x00000000
1c0072e4:	303f0700 	0x303f0700
1c0072e8:	30303030 	0x30303030
1c0072ec:	30303030 	0x30303030
1c0072f0:	00103f38 	add.w	$r24,$r25,$r15
1c0072f4:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0072f8:	3f703030 	0x3f703030
1c0072fc:	0000001f 	0x0000001f
1c007300:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c007318:	40800000 	beqz	$r0,32768(0x8000) # 1c00f318 <_sidata+0x7764>
1c00731c:	00102040 	add.w	$r0,$r2,$r8
	...
1c007334:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c007338:	00000306 	0x00000306
	...
1c007354:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c007358:	000000c0 	0x000000c0
	...
1c007378:	04020100 	csrxchg	$r0,$r8,0x80
1c00737c:	0010080c 	add.w	$r12,$r0,$r2
1c007380:	e5000000 	0xe5000000
1c007384:	0000978c 	0x0000978c
	...
1c007390:	08f8fc00 	0x08f8fc00
1c007394:	00000000 	0x00000000
1c007398:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c0073a8:	08080808 	0x08080808
1c0073ac:	08080808 	0x08080808
1c0073b0:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c0073b4:	00000000 	0x00000000
1c0073b8:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcb4b4 <_start-0x34b4c>
1c0073bc:	18103020 	pcaddi	$r0,33153(0x8181)
1c0073c0:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c0073cc:	80000000 	0x80000000
1c0073d0:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c0073d4:	00000000 	0x00000000
1c0073d8:	0000ffff 	0x0000ffff
1c0073dc:	00000000 	0x00000000
1c0073e0:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c0073e4:	00000000 	0x00000000
1c0073e8:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c0073ec:	00010103 	0x00010103
1c0073f0:	003f7f00 	0x003f7f00
1c0073f4:	00000000 	0x00000000
1c0073f8:	30303f1f 	0x30303f1f
1c0073fc:	30303030 	0x30303030
1c007400:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c007404:	bae40000 	0xbae40000
1c007408:	800000ac 	0x800000ac
1c00740c:	80808080 	0x80808080
1c007410:	80808080 	0x80808080
1c007414:	8c808080 	0x8c808080
1c007418:	80b0f898 	0x80b0f898
1c00741c:	80808080 	0x80808080
1c007420:	c0808080 	0xc0808080
1c007424:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c007430:	08f8f800 	0x08f8f800
1c007434:	08080808 	0x08080808
1c007438:	08080808 	0x08080808
1c00743c:	f8080808 	0xf8080808
1c007440:	000008fc 	0x000008fc
	...
1c007450:	e4cf0f00 	0xe4cf0f00
1c007454:	04040444 	csrxchg	$r4,$r2,0x101
1c007458:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c00745c:	cf442404 	0xcf442404
1c007460:	0000008f 	0x0000008f
1c007464:	00000000 	0x00000000
1c007468:	20000000 	ll.w	$r0,$r0,0
1c00746c:	04081010 	csrrd	$r16,0x204
1c007470:	00010306 	0x00010306
1c007474:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c007478:	00003f3f 	revb.d	$r31,$r25
1c00747c:	00000000 	0x00000000
1c007480:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c007484:	00000018 	0x00000018
1c007488:	89bcef00 	0x89bcef00
1c00748c:	00000000 	0x00000000
1c007490:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007494:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c0074b4:	06010000 	cacop	0x0,$r0,64(0x40)
1c0074b8:	0000f03c 	0x0000f03c
	...
1c0074d4:	c0800000 	0xc0800000
1c0074d8:	00000f78 	0x00000f78
	...
1c0074f0:	0c081000 	0x0c081000
1c0074f4:	00010306 	0x00010306
	...
1c00750c:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c007510:	40404000 	beqz	$r0,16448(0x4040) # 1c00b550 <_sidata+0x399c>
1c007514:	e0202020 	0xe0202020
1c007518:	181030e0 	pcaddi	$r0,33159(0x8187)
1c00751c:	00000018 	0x00000018
1c007520:	00008080 	0x00008080
1c007524:	fc000000 	0xfc000000
1c007528:	000008f8 	0x000008f8
1c00752c:	00000000 	0x00000000
1c007530:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007534:	ff901010 	0xff901010
1c007538:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c00753c:	00001018 	clo.w	$r24,$r0
1c007540:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c007544:	ff000000 	0xff000000
1c007548:	000000ff 	0x000000ff
1c00754c:	00000000 	0x00000000
1c007550:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c007554:	ff030e18 	0xff030e18
1c007558:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c00755c:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c007560:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c007564:	ff101010 	0xff101010
1c007568:	0c0808ff 	0x0c0808ff
1c00756c:	0000000c 	0x0000000c
1c007570:	00000001 	0x00000001
1c007574:	7f000000 	0x7f000000
1c007578:	0000003f 	0x0000003f
	...
1c007584:	7f000000 	0x7f000000
1c007588:	0000003f 	0x0000003f
1c00758c:	e6000000 	0xe6000000
1c007590:	0000808a 	0x0000808a
1c007594:	00000000 	0x00000000
1c007598:	08f8fc00 	0x08f8fc00
	...
1c0075a4:	f8fc0000 	0xf8fc0000
1c0075a8:	00000008 	0x00000008
	...
1c0075b4:	02020202 	slti	$r2,$r16,128(0x80)
1c0075b8:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c0075bc:	42438382 	beqz	$r28,672640(0xa4380) # 1c0ab93c <_sidata+0xa3d88>
1c0075c0:	82828282 	0x82828282
1c0075c4:	ffff8282 	0xffff8282
1c0075c8:	82828282 	0x82828282
1c0075cc:	020383c2 	slti	$r2,$r30,224(0xe0)
1c0075d0:	00000000 	0x00000000
1c0075d4:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c0075d8:	01ffff02 	0x01ffff02
1c0075dc:	00000000 	0x00000000
1c0075e0:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c0075e4:	8000c070 	0x8000c070
1c0075e8:	0f3c70c0 	0x0f3c70c0
1c0075ec:	00000003 	0x00000003
1c0075f0:	00000000 	0x00000000
1c0075f4:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c0075f8:	003f3f70 	0x003f3f70
1c0075fc:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c007600:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c007604:	0703060c 	0x0703060c
1c007608:	38180c0f 	stx.w	$r15,$r0,$r3
1c00760c:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c007610:	8fe50000 	0x8fe50000
1c007614:	00000091 	0x00000091
1c007618:	f0800000 	0xf0800000
1c00761c:	00000070 	0x00000070
1c007620:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c007624:	00000000 	0x00000000
1c007628:	70100800 	0x70100800
1c00762c:	0000c0e0 	0x0000c0e0
	...
1c007638:	05070e04 	0x05070e04
1c00763c:	84040404 	0x84040404
1c007640:	8487fff4 	0x8487fff4
1c007644:	84848484 	0x84848484
1c007648:	84848484 	0x84848484
1c00764c:	0484c584 	csrxchg	$r4,$r12,0x2131
1c007650:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c00765c:	0f3ce080 	0x0f3ce080
1c007660:	06010003 	cacop	0x3,$r0,64(0x40)
1c007664:	80e03018 	0x80e03018
1c007668:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c00766c:	00000307 	0x00000307
1c007670:	00000000 	0x00000000
1c007674:	20000000 	ll.w	$r0,$r0,0
1c007678:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c00767c:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c007680:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c007684:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c007688:	0c060703 	0x0c060703
1c00768c:	3038181c 	0x3038181c
1c007690:	00103030 	add.w	$r16,$r1,$r12
1c007694:	95b1e500 	0x95b1e500
1c007698:	00000000 	0x00000000
1c00769c:	08f80400 	0x08f80400
1c0076a0:	08080808 	0x08080808
1c0076a4:	08080808 	0x08080808
1c0076a8:	08080808 	0x08080808
1c0076ac:	08080808 	0x08080808
1c0076b0:	08f8fc08 	0x08f8fc08
	...
1c0076bc:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c0076c0:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c0076c4:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c0076c8:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c0076cc:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c0076d0:	00233321 	div.du	$r1,$r25,$r12
	...
1c0076dc:	043fff00 	csrxchg	$r0,$r24,0xfff
1c0076e0:	fc040404 	0xfc040404
1c0076e4:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c0076e8:	04c4740c 	csrrd	$r12,0x311d
1c0076ec:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00bb70 <_sidata+0x3fbc>
1c0076f0:	06062434 	cacop	0x14,$r1,393(0x189)
1c0076f4:	00000004 	0x00000004
1c0076f8:	18204000 	pcaddi	$r0,66048(0x10200)
1c0076fc:	00000107 	0x00000107
1c007700:	3f000000 	0x3f000000
1c007704:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c007708:	03000004 	lu52i.d	$r4,$r0,0
1c00770c:	180c0607 	pcaddi	$r7,24624(0x6030)
1c007710:	30383818 	0x30383818
1c007714:	00001010 	clo.w	$r16,$r0
1c007718:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c00771c:	80808000 	0x80808000
1c007720:	80808080 	0x80808080
1c007724:	80808080 	0x80808080
1c007728:	88b8fce0 	0x88b8fce0
1c00772c:	80808080 	0x80808080
1c007730:	80808080 	0x80808080
1c007734:	c0e0c080 	0xc0e0c080
1c007738:	00000080 	0x00000080
1c00773c:	00000000 	0x00000000
1c007740:	c0800000 	0xc0800000
1c007744:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c007748:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c00774c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007750:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c00775c:	04081000 	csrrd	$r0,0x204
1c007760:	00010306 	0x00010306
1c007764:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfeba60 <_start-0x145a0>
1c007768:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab9a8 <_sidata+0xa3df4>
1c00776c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab9ac <_sidata+0xa3df8>
1c007770:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c007784:	00003f7f 	revb.d	$r31,$r27
1c007788:	00000000 	0x00000000
1c00778c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007790:	003f7030 	0x003f7030
1c007794:	00000000 	0x00000000
1c007798:	e9000000 	0xe9000000
1c00779c:	00009099 	0x00009099
1c0077a0:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c0077a4:	f0101010 	0xf0101010
1c0077a8:	00001078 	clo.w	$r24,$r3
1c0077ac:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c0077b0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0077b4:	f8101010 	0xf8101010
1c0077b8:	00000010 	0x00000010
1c0077bc:	00000000 	0x00000000
1c0077c0:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0077c4:	c33e0000 	0xc33e0000
1c0077c8:	00000000 	0x00000000
1c0077cc:	8484ffff 	0x8484ffff
1c0077d0:	84848484 	0x84848484
1c0077d4:	ff848484 	0xff848484
	...
1c0077e0:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0077e4:	c0c04000 	0xc0c04000
1c0077e8:	00007eff 	0x00007eff
1c0077ec:	0000ffff 	0x0000ffff
1c0077f0:	c0701e01 	0xc0701e01
1c0077f4:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c0077f8:	0000040e 	0x0000040e
1c0077fc:	00000000 	0x00000000
1c007800:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c007804:	00010000 	asrtle.d	$r0,$r0
1c007808:	00000000 	0x00000000
1c00780c:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c007810:	01020204 	0x01020204
1c007814:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c007818:	00183818 	sra.w	$r24,$r0,$r14
1c00781c:	85e50000 	0x85e50000
1c007820:	000000ac 	0x000000ac
1c007824:	00000000 	0x00000000
1c007828:	80000000 	0x80000000
1c00782c:	001078e0 	add.w	$r0,$r7,$r30
1c007830:	1c000000 	pcaddu12i	$r0,0
1c007834:	000080e0 	0x000080e0
	...
1c007844:	c0800000 	0xc0800000
1c007848:	070e3860 	0x070e3860
1c00784c:	00000001 	0x00000001
1c007850:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c007854:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c007858:	c0c0e070 	0xc0c0e070
1c00785c:	00000080 	0x00000080
1c007860:	04000000 	csrrd	$r0,0x0
1c007864:	00010302 	0x00010302
1c007868:	c0000000 	0xc0000000
1c00786c:	071c3860 	0x071c3860
1c007870:	00000103 	0x00000103
1c007874:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c007878:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c00787c:	00010103 	0x00010103
1c007880:	00000000 	0x00000000
1c007884:	38080000 	ldx.w	$r0,$r0,$r0
1c007888:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c00788c:	08081818 	0x08081818
1c007890:	08080808 	0x08080808
1c007894:	0f090808 	0x0f090808
1c007898:	00307c1e 	0x00307c1e
1c00789c:	00000000 	0x00000000
1c0078a0:	b88fe500 	0xb88fe500
1c0078a4:	00000000 	0x00000000
1c0078a8:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0078ac:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0078b0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0078b4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0078b8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0078bc:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c0078c0:	00000000 	0x00000000
1c0078c4:	04000000 	csrrd	$r0,0x0
1c0078c8:	84c40404 	0x84c40404
1c0078cc:	84848484 	0x84848484
1c0078d0:	84848484 	0x84848484
1c0078d4:	0684c484 	0x0684c484
1c0078d8:	00000406 	0x00000406
1c0078dc:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c0078e8:	ffff0000 	0xffff0000
1c0078ec:	40404040 	beqz	$r2,16448(0x4040) # 1c00b92c <_sidata+0x3d78>
1c0078f0:	40404040 	beqz	$r2,16448(0x4040) # 1c00b930 <_sidata+0x3d7c>
1c0078f4:	0000ff40 	0x0000ff40
1c0078f8:	00000000 	0x00000000
1c0078fc:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c007908:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c007914:	00010100 	asrtle.d	$r8,$r0
1c007918:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c00791c:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c007920:	00000000 	0x00000000
1c007924:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c007928:	00000000 	0x00000000
1c00792c:	f0080000 	0xf0080000
1c007930:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007934:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007938:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00793c:	f0f81010 	0xf0f81010
	...
1c00794c:	ff000000 	0xff000000
1c007950:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abb90 <_sidata+0xa3fdc>
1c007954:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abb94 <_sidata+0xa3fe0>
1c007958:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abb98 <_sidata+0xa3fe4>
1c00795c:	ffff4242 	0xffff4242
	...
1c007968:	08000000 	0x08000000
1c00796c:	c0e17030 	0xc0e17030
1c007970:	fe000000 	0xfe000000
1c007974:	000000fe 	0x000000fe
1c007978:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c00797c:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c0139fc <_sidata+0xbe48>
1c007980:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c007984:	00000000 	0x00000000
1c007988:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00798c:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c007990:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c007994:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c007998:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c00799c:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c0079a0:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c0079a4:	e7000000 	0xe7000000
1c0079a8:	0000baa4 	0x0000baa4
1c0079ac:	00000000 	0x00000000
1c0079b0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079b4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079b8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079bc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079c0:	30382020 	0x30382020
1c0079c4:	00000020 	0x00000020
1c0079c8:	00000000 	0x00000000
1c0079cc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079d0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079d4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079d8:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c0079dc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079e0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0079e4:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c0079e8:	00000000 	0x00000000
1c0079ec:	80000000 	0x80000000
1c0079f0:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c0079f4:	00000406 	0x00000406
1c0079f8:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c0079fc:	04020000 	csrrd	$r0,0x80
1c007a00:	e0701808 	0xe0701808
1c007a04:	000080c0 	0x000080c0
1c007a08:	00000000 	0x00000000
1c007a0c:	01030408 	fsub.d	$f8,$f0,$f1
1c007a10:	08000000 	0x08000000
1c007a14:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c007a18:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c007a24:	00030701 	0x00030701
1c007a28:	aee50000 	0xaee50000
1c007a2c:	0000009e 	0x0000009e
1c007a30:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c007a34:	00000000 	0x00000000
1c007a38:	04000000 	csrrd	$r0,0x0
1c007a3c:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c007a48:	00000080 	0x00000080
1c007a4c:	00000000 	0x00000000
1c007a50:	810f1c18 	0x810f1c18
1c007a54:	09010101 	0x09010101
1c007a58:	01713919 	0x01713919
1c007a5c:	fdff0101 	0xfdff0101
1c007a60:	01010105 	fadd.d	$f5,$f8,$f0
1c007a64:	07090101 	0x07090101
1c007a68:	00020307 	0x00020307
1c007a6c:	10000000 	addu16i.d	$r0,$r0,0
1c007a70:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007a74:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c007a78:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007a7c:	93bffcd0 	0x93bffcd0
1c007a80:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007a84:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007a88:	00101818 	add.w	$r24,$r0,$r6
1c007a8c:	40000000 	beqz	$r0,0 # 1c007a8c <tfont32+0x998>
1c007a90:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c007a94:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c007a98:	070e0c18 	0x070e0c18
1c007a9c:	01000003 	0x01000003
1c007aa0:	06020301 	cacop	0x1,$r24,128(0x80)
1c007aa4:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c007aa8:	00000030 	0x00000030
1c007aac:	8caae900 	0x8caae900
1c007ab0:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007ab4:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c007ab8:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c007abc:	00000000 	0x00000000
1c007ac0:	f0800000 	0xf0800000
1c007ac4:	80e8183c 	0x80e8183c
	...
1c007ad0:	80000000 	0x80000000
1c007ad4:	00001fff 	ctz.w	$r31,$r31
1c007ad8:	003fff00 	0x003fff00
1c007adc:	50204080 	b	33562688(0x2002040) # 1e009b1c <_sidata+0x2001f68>
1c007ae0:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30be24 <_sidata+0x304270>
1c007ae4:	43404040 	beqz	$r2,213056(0x34040) # 1c03bb24 <_sidata+0x33f70>
1c007ae8:	70784c66 	0x70784c66
1c007aec:	00202070 	div.w	$r16,$r3,$r8
1c007af0:	c1c14000 	0xc1c14000
1c007af4:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c007af8:	ff810121 	0xff810121
1c007afc:	1c00000f 	pcaddu12i	$r15,0
1c007b00:	0c02c0f0 	0x0c02c0f0
1c007b04:	0000e0f8 	0x0000e0f8
1c007b08:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c007b14:	18080800 	pcaddi	$r0,16448(0x4040)
1c007b18:	070f1838 	0x070f1838
1c007b1c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007b20:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c007b24:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c007b28:	18101013 	pcaddi	$r19,32896(0x8080)
1c007b2c:	00001018 	clo.w	$r24,$r0
1c007b30:	e5a9b8e6 	0xe5a9b8e6
1c007b34:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c007b38:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007b3c:	00000000 	0x00000000
1c007b40:	e5bfb9e6 	0xe5bfb9e6
1c007b44:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c007b48:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007b4c:	00000000 	0x00000000
1c007b50:	20776f4c 	ll.w	$r12,$r26,30572(0x776c)
1c007b54:	00002020 	clo.d	$r0,$r1
1c007b58:	68676948 	bltu	$r10,$r8,26472(0x6768) # 1c00e2c0 <_sidata+0x670c>
1c007b5c:	00002020 	clo.d	$r0,$r1
1c007b60:	6d726f4e 	bgeu	$r26,$r14,94828(0x1726c) # 1c01edcc <_sidata+0x17218>
1c007b64:	00006c61 	cpucfg	$r1,$r3
1c007b68:	00007325 	0x00007325
1c007b6c:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bffe0d4 <_start-0x1f2c>
1c007b70:	4155206b 	beqz	$r3,2970912(0x2d5520) # 1c2dd090 <_sidata+0x2d54dc>
1c007b74:	5f305452 	bne	$r2,$r18,-53164(0x33054) # 1bffabc8 <_start-0x5438>
1c007b78:	425f5852 	beqz	$r2,-3514536(0x4a5f58) # 1bcadad0 <_start-0x352530>
1c007b7c:	253a4655 	stptr.w	$r21,$r18,14916(0x3a44)
1c007b80:	000a0d73 	0x000a0d73
1c007b84:	3a646d63 	0x3a646d63
1c007b88:	0a0d7325 	0x0a0d7325
1c007b8c:	00000000 	0x00000000
1c007b90:	0a0d7325 	0x0a0d7325
1c007b94:	00000000 	0x00000000
1c007b98:	3a6b6361 	0x3a6b6361
1c007b9c:	0a0d7325 	0x0a0d7325
1c007ba0:	00000000 	0x00000000
1c007ba4:	3a736572 	0x3a736572
1c007ba8:	0a0d6425 	0x0a0d6425
1c007bac:	00000000 	0x00000000
1c007bb0:	00007325 	0x00007325

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c005d29 	pcaddu12i	$r9,745(0x2e9)
80001008:	80000138 	0x80000138
8000100c:	80001020 	0x80001020
80001010:	80000006 	0x80000006
80001014:	80000008 	0x80000008
80001018:	1c005d20 	pcaddu12i	$r0,745(0x2e9)
8000101c:	8000013c 	0x8000013c

80001020 <g_SystemFreq>:
80001020:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001024 <data>:
80001024:	0000aa55 	0x0000aa55
80001028:	bb000000 	0xbb000000

Disassembly of section .bss:

80000000 <_sbss>:
	...

80000002 <temperature>:
	...

80000004 <humidity>:
	...

80000006 <wifi_connected>:
	...

80000008 <Circular_queue>:
	...

80000138 <Read_length>:
_sbss():
80000138:	00000000 	0x00000000

8000013c <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
