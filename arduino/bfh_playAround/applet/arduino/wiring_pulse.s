	.file	"wiring_pulse.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.stabs	"applet/arduino/wiring_pulse.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-32768;32767;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=r(0,3);-2147483648;2147483647;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0;65535;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=r(0,5);0;-1;",128,0,0,0
	.stabs	"long long int:t(0,6)=r(0,6);0;-1;",128,0,0,0
	.stabs	"long long unsigned int:t(0,7)=r(0,7);0;-1;",128,0,0,0
	.stabs	"short int:t(0,8)=r(0,8);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,9)=r(0,9);0;65535;",128,0,0,0
	.stabs	"signed char:t(0,10)=r(0,10);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,11)=r(0,11);0;255;",128,0,0,0
	.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,13)=r(0,1);4;0;",128,0,0,0
	.stabs	"long double:t(0,14)=r(0,1);4;0;",128,0,0,0
	.stabs	"void:t(0,15)=(0,15)",128,0,0,0
	.stabs	"applet/arduino/wiring_private.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/avr/io.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/avr/sfr_defs.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/inttypes.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/stdint.h",130,0,0,0
	.stabs	"int8_t:t(5,1)=(0,10)",128,0,0,0
	.stabs	"uint8_t:t(5,2)=(0,11)",128,0,0,0
	.stabs	"int16_t:t(5,3)=(0,1)",128,0,0,0
	.stabs	"uint16_t:t(5,4)=(0,4)",128,0,0,0
	.stabs	"int32_t:t(5,5)=(0,3)",128,0,0,0
	.stabs	"uint32_t:t(5,6)=(0,5)",128,0,0,0
	.stabs	"int64_t:t(5,7)=(0,6)",128,0,0,0
	.stabs	"uint64_t:t(5,8)=(0,7)",128,0,0,0
	.stabs	"intptr_t:t(5,9)=(5,3)",128,0,0,0
	.stabs	"uintptr_t:t(5,10)=(5,4)",128,0,0,0
	.stabs	"int_least8_t:t(5,11)=(5,1)",128,0,0,0
	.stabs	"uint_least8_t:t(5,12)=(5,2)",128,0,0,0
	.stabs	"int_least16_t:t(5,13)=(5,3)",128,0,0,0
	.stabs	"uint_least16_t:t(5,14)=(5,4)",128,0,0,0
	.stabs	"int_least32_t:t(5,15)=(5,5)",128,0,0,0
	.stabs	"uint_least32_t:t(5,16)=(5,6)",128,0,0,0
	.stabs	"int_least64_t:t(5,17)=(5,7)",128,0,0,0
	.stabs	"uint_least64_t:t(5,18)=(5,8)",128,0,0,0
	.stabs	"int_fast8_t:t(5,19)=(5,1)",128,0,0,0
	.stabs	"uint_fast8_t:t(5,20)=(5,2)",128,0,0,0
	.stabs	"int_fast16_t:t(5,21)=(5,3)",128,0,0,0
	.stabs	"uint_fast16_t:t(5,22)=(5,4)",128,0,0,0
	.stabs	"int_fast32_t:t(5,23)=(5,5)",128,0,0,0
	.stabs	"uint_fast32_t:t(5,24)=(5,6)",128,0,0,0
	.stabs	"int_fast64_t:t(5,25)=(5,7)",128,0,0,0
	.stabs	"uint_fast64_t:t(5,26)=(5,8)",128,0,0,0
	.stabs	"intmax_t:t(5,27)=(5,7)",128,0,0,0
	.stabs	"uintmax_t:t(5,28)=(5,8)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"int_farptr_t:t(4,1)=(5,5)",128,0,0,0
	.stabs	"uint_farptr_t:t(4,2)=(5,6)",128,0,0,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/avr/fuse.h",130,0,0,0
	.stabs	"__fuse_t:t(6,1)=(6,2)=s3low:(0,11),0,8;high:(0,11),8,8;extended:(0,11),16,8;;",128,0,0,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/stdio.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/include/stdarg.h",130,0,0,0
	.stabs	"__gnuc_va_list:t(8,1)=(8,2)=*(0,15)",128,0,0,0
	.stabs	"va_list:t(8,3)=(8,1)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/include/stddef.h",130,0,0,0
	.stabs	"size_t:t(9,1)=(0,4)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"__file:T(7,1)=s14buf:(7,2)=*(0,2),0,16;unget:(0,11),16,8;flags:(5,2),24,8;size:(0,1),32,16;len:(0,1),48,16;put:(7,3)=*(7,4)=f(0,1),64,16;get:(7,5)=*(7,6)=f(0,1),80,16;udata:(8,2),96,16;;",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"applet/arduino/Arduino.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/stdlib.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/include/stddef.h",130,0,0,0
	.stabs	"wchar_t:t(12,1)=(0,1)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"div_t:t(11,1)=(11,2)=s4quot:(0,1),0,16;rem:(0,1),16,16;;",128,0,0,0
	.stabs	"ldiv_t:t(11,3)=(11,4)=s8quot:(0,3),0,32;rem:(0,3),32,32;;",128,0,0,0
	.stabs	"__compar_fn_t:t(11,5)=(11,6)=*(11,7)=f(0,1)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/avr/pgmspace.h",130,0,0,0
	.stabs	"prog_void:t(13,1)=(0,15)",128,0,0,0
	.stabs	"prog_char:t(13,2)=(0,2)",128,0,0,0
	.stabs	"prog_uchar:t(13,3)=(0,11)",128,0,0,0
	.stabs	"prog_int8_t:t(13,4)=(0,10)",128,0,0,0
	.stabs	"prog_uint8_t:t(13,5)=(0,11)",128,0,0,0
	.stabs	"prog_int16_t:t(13,6)=(5,3)",128,0,0,0
	.stabs	"prog_uint16_t:t(13,7)=(5,4)",128,0,0,0
	.stabs	"prog_int32_t:t(13,8)=(5,5)",128,0,0,0
	.stabs	"prog_uint32_t:t(13,9)=(5,6)",128,0,0,0
	.stabs	"prog_int64_t:t(13,10)=(5,7)",128,0,0,0
	.stabs	"prog_uint64_t:t(13,11)=(5,8)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"word:t(10,1)=(0,4)",128,0,0,0
	.stabs	"boolean:t(10,2)=(5,2)",128,0,0,0
	.stabs	"byte:t(10,3)=(5,2)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"voidFuncPtr:t(1,1)=(1,2)=*(1,3)=f(0,15)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"pulseIn:F(0,5)",36,0,0,pulseIn
	.stabs	"pin:P(5,2)",64,0,0,24
	.stabs	"state:P(5,2)",64,0,0,22
	.stabs	"timeout:P(0,5)",64,0,0,18
.global	pulseIn
	.type	pulseIn, @function
pulseIn:
	.stabn	68,0,33,.LM0-.LFBB1
.LM0:
.LFBB1:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
.LBB2:
	.stabn	68,0,37,.LM1-.LFBB1
.LM1:
	mov r26,r24
	ldi r27,lo8(0)
	movw r24,r26
	subi r24,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r25,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r24
/* #APP */
 ;  37 "applet/arduino/wiring_pulse.c" 1
	lpm r8, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE2:
.LBB3:
	.stabn	68,0,38,.LM2-.LFBB1
.LM2:
	subi r26,lo8(-(digital_pin_to_port_PGM))
	sbci r27,hi8(-(digital_pin_to_port_PGM))
	movw r30,r26
/* #APP */
 ;  38 "applet/arduino/wiring_pulse.c" 1
	lpm r13, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE3:
	.stabn	68,0,39,.LM3-.LFBB1
.LM3:
	tst r22
	brne .L2
	clr r9
	rjmp .L3
.L2:
	mov r9,r8
.L3:
	.stabn	68,0,45,.LM4-.LFBB1
.LM4:
	movw r24,r20
	movw r22,r18
	ldi r18,lo8(16000)
	ldi r19,hi8(16000)
	ldi r20,hlo8(16000)
	ldi r21,hhi8(16000)
	call __mulsi3
	call __udivmodsi4
	movw r14,r18
	movw r16,r20
.LBB4:
	.stabn	68,0,48,.LM5-.LFBB1
.LM5:
	mov r22,r13
	ldi r23,lo8(0)
	lsl r22
	rol r23
	subi r22,lo8(-(port_to_input_PGM))
	sbci r23,hi8(-(port_to_input_PGM))
	clr r10
	clr r11
	movw r12,r10
	movw r30,r22
/* #APP */
 ;  48 "applet/arduino/wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L4
.L6:
.LBE4:
	.stabn	68,0,49,.LM6-.LFBB1
.LM6:
	cp r10,r14
	cpc r11,r15
	cpc r12,r16
	cpc r13,r17
	brne .+2
	rjmp .L5
	sec
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	adc r12,__zero_reg__
	adc r13,__zero_reg__
.L4:
	.stabn	68,0,48,.LM7-.LFBB1
.LM7:
	ld r24,X
	and r24,r8
	cp r24,r9
	breq .L6
	rjmp .L15
.L8:
	.stabn	68,0,54,.LM8-.LFBB1
.LM8:
	cp r10,r14
	cpc r11,r15
	cpc r12,r16
	cpc r13,r17
	brne .+2
	rjmp .L5
	sec
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	adc r12,__zero_reg__
	adc r13,__zero_reg__
	rjmp .L14
.L15:
.LBB5:
	.stabn	68,0,53,.LM9-.LFBB1
.LM9:
	movw r30,r22
/* #APP */
 ;  53 "applet/arduino/wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
.L14:
.LBE5:
	ld r24,X
	and r24,r8
	cp r24,r9
	brne .L8
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	ldi r20,hlo8(0)
	ldi r21,hhi8(0)
.LBB6:
	.stabn	68,0,58,.LM10-.LFBB1
.LM10:
	movw r30,r22
/* #APP */
 ;  58 "applet/arduino/wiring_pulse.c" 1
	lpm r28, Z+
	lpm r29, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L9
.L10:
.LBE6:
	.stabn	68,0,59,.LM11-.LFBB1
.LM11:
	movw r26,r20
	movw r24,r18
	add r24,r10
	adc r25,r11
	adc r26,r12
	adc r27,r13
	cp r24,r14
	cpc r25,r15
	cpc r26,r16
	cpc r27,r17
	breq .L5
	.stabn	68,0,61,.LM12-.LFBB1
.LM12:
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sbci r20,hlo8(-(1))
	sbci r21,hhi8(-(1))
.L9:
	.stabn	68,0,58,.LM13-.LFBB1
.LM13:
	ld r24,Y
	and r24,r8
	cp r24,r9
	breq .L10
	.stabn	68,0,68,.LM14-.LFBB1
.LM14:
	movw r24,r20
	movw r22,r18
	ldi r18,lo8(21000)
	ldi r19,hi8(21000)
	ldi r20,hlo8(21000)
	ldi r21,hhi8(21000)
	call __mulsi3
	subi r22,lo8(-(16000))
	sbci r23,hi8(-(16000))
	sbci r24,hlo8(-(16000))
	sbci r25,hhi8(-(16000))
	ldi r18,lo8(16000)
	ldi r19,hi8(16000)
	ldi r20,hlo8(16000)
	ldi r21,hhi8(16000)
	call __udivmodsi4
	movw r24,r18
	movw r26,r20
	movw r18,r24
	movw r20,r26
	rjmp .L11
.L5:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	ldi r20,hlo8(0)
	ldi r21,hhi8(0)
.L11:
	.stabn	68,0,69,.LM15-.LFBB1
.LM15:
	movw r22,r18
	movw r24,r20
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	pulseIn, .-pulseIn
	.stabs	"stateMask:r(5,2)",64,0,0,9
	.stabs	"width:r(0,5)",64,0,0,18
	.stabs	"numloops:r(0,5)",64,0,0,10
	.stabn	192,0,0,.LFBB1-.LFBB1
	.stabs	"__result:r(5,2)",64,0,0,8
	.stabn	192,0,0,.LBB2-.LFBB1
	.stabn	224,0,0,.LBE2-.LFBB1
	.stabs	"__result:r(5,2)",64,0,0,13
	.stabn	192,0,0,.LBB3-.LFBB1
	.stabn	224,0,0,.LBE3-.LFBB1
	.stabs	"__addr16:r(5,4)",64,0,0,22
	.stabn	192,0,0,.LBB4-.LFBB1
	.stabn	224,0,0,.LBE4-.LFBB1
	.stabs	"__addr16:r(5,4)",64,0,0,30
	.stabn	192,0,0,.LBB5-.LFBB1
	.stabn	224,0,0,.LBE5-.LFBB1
	.stabs	"__addr16:r(5,4)",64,0,0,30
	.stabn	192,0,0,.LBB6-.LFBB1
	.stabn	224,0,0,.LBE6-.LFBB1
	.stabn	224,0,0,.Lscope1-.LFBB1
.Lscope1:
	.stabs	"SS:c=i10",128,0,0,0
	.stabs	"MOSI:c=i11",128,0,0,0
	.stabs	"MISO:c=i12",128,0,0,0
	.stabs	"SCK:c=i13",128,0,0,0
	.stabs	"SDA:c=i18",128,0,0,0
	.stabs	"SCL:c=i19",128,0,0,0
	.stabs	"LED_BUILTIN:c=i13",128,0,0,0
	.stabs	"A0:c=i14",128,0,0,0
	.stabs	"A1:c=i15",128,0,0,0
	.stabs	"A2:c=i16",128,0,0,0
	.stabs	"A3:c=i17",128,0,0,0
	.stabs	"A4:c=i18",128,0,0,0
	.stabs	"A5:c=i19",128,0,0,0
	.stabs	"A6:c=i20",128,0,0,0
	.stabs	"A7:c=i21",128,0,0,0
	.stabs	"",100,0,0,.Letext0
.Letext0:
