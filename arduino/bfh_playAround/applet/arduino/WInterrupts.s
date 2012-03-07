	.file	"WInterrupts.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.stabs	"applet/arduino/WInterrupts.c",100,0,2,.Ltext0
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
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/inttypes.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/stdint.h",130,0,0,0
	.stabs	"int8_t:t(2,1)=(0,10)",128,0,0,0
	.stabs	"uint8_t:t(2,2)=(0,11)",128,0,0,0
	.stabs	"int16_t:t(2,3)=(0,1)",128,0,0,0
	.stabs	"uint16_t:t(2,4)=(0,4)",128,0,0,0
	.stabs	"int32_t:t(2,5)=(0,3)",128,0,0,0
	.stabs	"uint32_t:t(2,6)=(0,5)",128,0,0,0
	.stabs	"int64_t:t(2,7)=(0,6)",128,0,0,0
	.stabs	"uint64_t:t(2,8)=(0,7)",128,0,0,0
	.stabs	"intptr_t:t(2,9)=(2,3)",128,0,0,0
	.stabs	"uintptr_t:t(2,10)=(2,4)",128,0,0,0
	.stabs	"int_least8_t:t(2,11)=(2,1)",128,0,0,0
	.stabs	"uint_least8_t:t(2,12)=(2,2)",128,0,0,0
	.stabs	"int_least16_t:t(2,13)=(2,3)",128,0,0,0
	.stabs	"uint_least16_t:t(2,14)=(2,4)",128,0,0,0
	.stabs	"int_least32_t:t(2,15)=(2,5)",128,0,0,0
	.stabs	"uint_least32_t:t(2,16)=(2,6)",128,0,0,0
	.stabs	"int_least64_t:t(2,17)=(2,7)",128,0,0,0
	.stabs	"uint_least64_t:t(2,18)=(2,8)",128,0,0,0
	.stabs	"int_fast8_t:t(2,19)=(2,1)",128,0,0,0
	.stabs	"uint_fast8_t:t(2,20)=(2,2)",128,0,0,0
	.stabs	"int_fast16_t:t(2,21)=(2,3)",128,0,0,0
	.stabs	"uint_fast16_t:t(2,22)=(2,4)",128,0,0,0
	.stabs	"int_fast32_t:t(2,23)=(2,5)",128,0,0,0
	.stabs	"uint_fast32_t:t(2,24)=(2,6)",128,0,0,0
	.stabs	"int_fast64_t:t(2,25)=(2,7)",128,0,0,0
	.stabs	"uint_fast64_t:t(2,26)=(2,8)",128,0,0,0
	.stabs	"intmax_t:t(2,27)=(2,7)",128,0,0,0
	.stabs	"uintmax_t:t(2,28)=(2,8)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"int_farptr_t:t(1,1)=(2,5)",128,0,0,0
	.stabs	"uint_farptr_t:t(1,2)=(2,6)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/avr/io.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/avr/fuse.h",130,0,0,0
	.stabs	"__fuse_t:t(4,1)=(4,2)=s3low:(0,11),0,8;high:(0,11),8,8;extended:(0,11),16,8;;",128,0,0,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/avr/pgmspace.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/include/stddef.h",130,0,0,0
	.stabs	"size_t:t(6,1)=(0,4)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"prog_void:t(5,1)=(0,15)",128,0,0,0
	.stabs	"prog_char:t(5,2)=(0,2)",128,0,0,0
	.stabs	"prog_uchar:t(5,3)=(0,11)",128,0,0,0
	.stabs	"prog_int8_t:t(5,4)=(0,10)",128,0,0,0
	.stabs	"prog_uint8_t:t(5,5)=(0,11)",128,0,0,0
	.stabs	"prog_int16_t:t(5,6)=(2,3)",128,0,0,0
	.stabs	"prog_uint16_t:t(5,7)=(2,4)",128,0,0,0
	.stabs	"prog_int32_t:t(5,8)=(2,5)",128,0,0,0
	.stabs	"prog_uint32_t:t(5,9)=(2,6)",128,0,0,0
	.stabs	"prog_int64_t:t(5,10)=(2,7)",128,0,0,0
	.stabs	"prog_uint64_t:t(5,11)=(2,8)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/stdio.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/include/stdarg.h",130,0,0,0
	.stabs	"__gnuc_va_list:t(8,1)=(8,2)=*(0,15)",128,0,0,0
	.stabs	"va_list:t(8,3)=(8,1)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"__file:T(7,1)=s14buf:(7,2)=*(0,2),0,16;unget:(0,11),16,8;flags:(2,2),24,8;size:(0,1),32,16;len:(0,1),48,16;put:(7,3)=*(7,4)=f(0,1),64,16;get:(7,5)=*(7,6)=f(0,1),80,16;udata:(8,2),96,16;;",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"applet/arduino/wiring_private.h",130,0,0,0
	.stabs	"applet/arduino/Arduino.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/stdlib.h",130,0,0,0
	.stabs	"/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/include/stddef.h",130,0,0,0
	.stabs	"wchar_t:t(12,1)=(0,1)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"div_t:t(11,1)=(11,2)=s4quot:(0,1),0,16;rem:(0,1),16,16;;",128,0,0,0
	.stabs	"ldiv_t:t(11,3)=(11,4)=s8quot:(0,3),0,32;rem:(0,3),32,32;;",128,0,0,0
	.stabs	"__compar_fn_t:t(11,5)=(11,6)=*(11,7)=f(0,1)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"word:t(10,1)=(0,4)",128,0,0,0
	.stabs	"boolean:t(10,2)=(2,2)",128,0,0,0
	.stabs	"byte:t(10,3)=(2,2)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"voidFuncPtr:t(9,1)=(9,2)=*(9,3)=f(0,15)",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"attachInterrupt:F(0,15)",36,0,0,attachInterrupt
	.stabs	"interruptNum:P(2,2)",64,0,0,24
	.stabs	"userFunc:P(9,2)",64,0,0,22
	.stabs	"mode:P(0,1)",64,0,0,20
.global	attachInterrupt
	.type	attachInterrupt, @function
attachInterrupt:
	.stabn	68,0,38,.LM0-.LFBB1
.LM0:
.LFBB1:
/* prologue: function */
/* frame size = 0 */
	.stabn	68,0,39,.LM1-.LFBB1
.LM1:
	cpi r24,lo8(2)
	brsh .L5
	.stabn	68,0,40,.LM2-.LFBB1
.LM2:
	mov r30,r24
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	std Z+1,r23
	st Z,r22
	.stabn	68,0,49,.LM3-.LFBB1
.LM3:
	tst r24
	breq .L3
	cpi r24,lo8(1)
	brne .L5
	rjmp .L6
.L3:
	.stabn	68,0,86,.LM4-.LFBB1
.LM4:
	lds r24,105
	andi r24,lo8(-4)
	or r24,r20
	sts 105,r24
	.stabn	68,0,87,.LM5-.LFBB1
.LM5:
	sbi 61-32,0
	ret
.L6:
	.stabn	68,0,101,.LM6-.LFBB1
.LM6:
	lds r24,105
	lsl r20
	rol r21
	lsl r20
	rol r21
	andi r24,lo8(-13)
	or r24,r20
	sts 105,r24
	.stabn	68,0,102,.LM7-.LFBB1
.LM7:
	sbi 61-32,1
.L5:
	ret
	.size	attachInterrupt, .-attachInterrupt
.Lscope1:
	.stabs	"detachInterrupt:F(0,15)",36,0,0,detachInterrupt
	.stabs	"interruptNum:P(2,2)",64,0,0,24
.global	detachInterrupt
	.type	detachInterrupt, @function
detachInterrupt:
	.stabn	68,0,118,.LM8-.LFBB2
.LM8:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
	.stabn	68,0,119,.LM9-.LFBB2
.LM9:
	cpi r24,lo8(2)
	brsh .L12
	.stabn	68,0,123,.LM10-.LFBB2
.LM10:
	tst r24
	breq .L10
	cpi r24,lo8(1)
	brne .L9
	rjmp .L13
.L10:
	.stabn	68,0,152,.LM11-.LFBB2
.LM11:
	cbi 61-32,0
	rjmp .L9
.L13:
	.stabn	68,0,164,.LM12-.LFBB2
.LM12:
	cbi 61-32,1
.L9:
	.stabn	68,0,176,.LM13-.LFBB2
.LM13:
	mov r30,r24
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L12:
	ret
	.size	detachInterrupt, .-detachInterrupt
.Lscope2:
	.stabs	"__vector_1:F(0,15)",36,0,0,__vector_1
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
	.stabn	68,0,230,.LM14-.LFBB3
.LM14:
.LFBB3:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	.stabn	68,0,231,.LM15-.LFBB3
.LM15:
	lds r24,intFunc
	lds r25,(intFunc)+1
	or r24,r25
	breq .L16
	.stabn	68,0,232,.LM16-.LFBB3
.LM16:
	lds r30,intFunc
	lds r31,(intFunc)+1
	icall
.L16:
/* epilogue start */
	.stabn	68,0,233,.LM17-.LFBB3
.LM17:
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_1, .-__vector_1
.Lscope3:
	.stabs	"__vector_2:F(0,15)",36,0,0,__vector_2
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
	.stabn	68,0,235,.LM18-.LFBB4
.LM18:
.LFBB4:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	.stabn	68,0,236,.LM19-.LFBB4
.LM19:
	lds r24,intFunc+2
	lds r25,(intFunc+2)+1
	or r24,r25
	breq .L19
	.stabn	68,0,237,.LM20-.LFBB4
.LM20:
	lds r30,intFunc+2
	lds r31,(intFunc+2)+1
	icall
.L19:
/* epilogue start */
	.stabn	68,0,238,.LM21-.LFBB4
.LM21:
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_2, .-__vector_2
.Lscope4:
	.lcomm intFunc,4
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
	.stabs	"intFunc:S(0,16)=ar(0,17)=r(0,17);0;-1;;0;1;(9,1)",40,0,0,intFunc
	.stabs	"",100,0,0,.Letext0
.Letext0:
