	.file	"wiring_shift.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.stabs	"applet/arduino/wiring_shift.c",100,0,2,.Ltext0
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
	.stabs	"shiftOut:F(0,15)",36,0,0,shiftOut
	.stabs	"dataPin:P(5,2)",64,0,0,14
	.stabs	"clockPin:P(5,2)",64,0,0,15
	.stabs	"bitOrder:P(5,2)",64,0,0,11
	.stabs	"val:P(5,2)",64,0,0,18
.global	shiftOut
	.type	shiftOut, @function
shiftOut:
	.stabn	68,0,43,.LM0-.LFBB1
.LM0:
.LFBB1:
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
	mov r14,r24
	mov r15,r22
	mov r11,r20
	.stabn	68,0,43,.LM1-.LFBB1
.LM1:
	ldi r28,lo8(7)
	ldi r29,hi8(7)
	mov r16,r18
	ldi r17,lo8(0)
	.stabn	68,0,48,.LM2-.LFBB1
.LM2:
	ldi r24,lo8(7)
	mov r12,r24
	mov r13,__zero_reg__
.L4:
	.stabn	68,0,47,.LM3-.LFBB1
.LM3:
	tst r11
	brne .L2
	.stabn	68,0,48,.LM4-.LFBB1
.LM4:
	movw r22,r12
	sub r22,r28
	sbc r23,r29
	movw r24,r16
	rjmp 2f
1:	asr r25
	ror r24
2:	dec r22
	brpl 1b
	movw r22,r24
	rjmp .L7
.L2:
	.stabn	68,0,50,.LM5-.LFBB1
.LM5:
	movw r22,r16
	mov r0,r28
	rjmp 2f
1:	asr r23
	ror r22
2:	dec r0
	brpl 1b
.L7:
	andi r22,lo8(1)
	mov r24,r14
	call digitalWrite
	.stabn	68,0,52,.LM6-.LFBB1
.LM6:
	mov r24,r15
	ldi r22,lo8(1)
	call digitalWrite
	.stabn	68,0,53,.LM7-.LFBB1
.LM7:
	mov r24,r15
	ldi r22,lo8(0)
	call digitalWrite
	sbiw r28,1
	.stabn	68,0,46,.LM8-.LFBB1
.LM8:
	ldi r25,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r25
	brne .L4
/* epilogue start */
	.stabn	68,0,55,.LM9-.LFBB1
.LM9:
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.size	shiftOut, .-shiftOut
.Lscope1:
	.stabs	"shiftIn:F(5,2)",36,0,0,shiftIn
	.stabs	"dataPin:P(5,2)",64,0,0,15
	.stabs	"clockPin:P(5,2)",64,0,0,16
	.stabs	"bitOrder:P(5,2)",64,0,0,14
.global	shiftIn
	.type	shiftIn, @function
shiftIn:
	.stabn	68,0,27,.LM10-.LFBB2
.LM10:
.LFBB2:
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
	mov r15,r24
	mov r16,r22
	mov r14,r20
	.stabn	68,0,27,.LM11-.LFBB2
.LM11:
	ldi r17,lo8(0)
	ldi r28,lo8(7)
	ldi r29,hi8(7)
	.stabn	68,0,34,.LM12-.LFBB2
.LM12:
	ldi r25,lo8(7)
	mov r12,r25
	mov r13,__zero_reg__
.L11:
	.stabn	68,0,32,.LM13-.LFBB2
.LM13:
	mov r24,r16
	ldi r22,lo8(1)
	call digitalWrite
	.stabn	68,0,33,.LM14-.LFBB2
.LM14:
	tst r14
	brne .L9
	.stabn	68,0,34,.LM15-.LFBB2
.LM15:
	mov r24,r15
	call digitalRead
	movw r18,r12
	sub r18,r28
	sbc r19,r29
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r18
	brpl 1b
	rjmp .L14
.L9:
	.stabn	68,0,36,.LM16-.LFBB2
.LM16:
	mov r24,r15
	call digitalRead
	mov r0,r28
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
.L14:
	or r17,r24
	.stabn	68,0,37,.LM17-.LFBB2
.LM17:
	mov r24,r16
	ldi r22,lo8(0)
	call digitalWrite
	sbiw r28,1
	.stabn	68,0,31,.LM18-.LFBB2
.LM18:
	ldi r24,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r24
	brne .L11
	.stabn	68,0,40,.LM19-.LFBB2
.LM19:
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	shiftIn, .-shiftIn
	.stabs	"value:r(5,2)",64,0,0,17
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
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
