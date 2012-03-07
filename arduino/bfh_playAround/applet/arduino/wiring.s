	.file	"wiring.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.stabs	"applet/arduino/wiring.c",100,0,2,.Ltext0
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
	.stabs	"__vector_16:F(0,15)",36,0,0,__vector_16
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
	.stabn	68,0,49,.LM0-.LFBB1
.LM0:
.LFBB1:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r26
	push r27
/* prologue: Signal */
/* frame size = 0 */
	.stabn	68,0,52,.LM1-.LFBB1
.LM1:
	lds r24,timer0_millis
	lds r25,(timer0_millis)+1
	lds r26,(timer0_millis)+2
	lds r27,(timer0_millis)+3
	.stabn	68,0,53,.LM2-.LFBB1
.LM2:
	lds r19,timer0_fract
	.stabn	68,0,55,.LM3-.LFBB1
.LM3:
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	.stabn	68,0,56,.LM4-.LFBB1
.LM4:
	mov r18,r19
	subi r18,lo8(-(3))
	.stabn	68,0,57,.LM5-.LFBB1
.LM5:
	cpi r18,lo8(125)
	brlo .L2
	.stabn	68,0,58,.LM6-.LFBB1
.LM6:
	subi r18,lo8(-(-125))
	.stabn	68,0,59,.LM7-.LFBB1
.LM7:
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L2:
	.stabn	68,0,62,.LM8-.LFBB1
.LM8:
	sts timer0_fract,r18
	.stabn	68,0,63,.LM9-.LFBB1
.LM9:
	sts timer0_millis,r24
	sts (timer0_millis)+1,r25
	sts (timer0_millis)+2,r26
	sts (timer0_millis)+3,r27
	.stabn	68,0,64,.LM10-.LFBB1
.LM10:
	lds r24,timer0_overflow_count
	lds r25,(timer0_overflow_count)+1
	lds r26,(timer0_overflow_count)+2
	lds r27,(timer0_overflow_count)+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts timer0_overflow_count,r24
	sts (timer0_overflow_count)+1,r25
	sts (timer0_overflow_count)+2,r26
	sts (timer0_overflow_count)+3,r27
/* epilogue start */
	.stabn	68,0,65,.LM11-.LFBB1
.LM11:
	pop r27
	pop r26
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_16, .-__vector_16
	.stabs	"m:r(0,5)",64,0,0,24
	.stabs	"f:r(0,11)",64,0,0,18
	.stabn	192,0,0,.LFBB1-.LFBB1
	.stabn	224,0,0,.Lscope1-.LFBB1
.Lscope1:
	.stabs	"millis:F(0,5)",36,0,0,millis
.global	millis
	.type	millis, @function
millis:
	.stabn	68,0,68,.LM12-.LFBB2
.LM12:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
	.stabn	68,0,70,.LM13-.LFBB2
.LM13:
	in r24,__SREG__
	.stabn	68,0,74,.LM14-.LFBB2
.LM14:
/* #APP */
 ;  74 "applet/arduino/wiring.c" 1
	cli
 ;  0 "" 2
	.stabn	68,0,75,.LM15-.LFBB2
.LM15:
/* #NOAPP */
	lds r18,timer0_millis
	lds r19,(timer0_millis)+1
	lds r20,(timer0_millis)+2
	lds r21,(timer0_millis)+3
	.stabn	68,0,76,.LM16-.LFBB2
.LM16:
	out __SREG__,r24
	.stabn	68,0,79,.LM17-.LFBB2
.LM17:
	movw r22,r18
	movw r24,r20
/* epilogue start */
	ret
	.size	millis, .-millis
	.stabs	"m:r(0,5)",64,0,0,18
	.stabs	"oldSREG:r(5,2)",64,0,0,24
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
	.stabs	"micros:F(0,5)",36,0,0,micros
.global	micros
	.type	micros, @function
micros:
	.stabn	68,0,81,.LM18-.LFBB3
.LM18:
.LFBB3:
/* prologue: function */
/* frame size = 0 */
	.stabn	68,0,83,.LM19-.LFBB3
.LM19:
	in r25,__SREG__
	.stabn	68,0,85,.LM20-.LFBB3
.LM20:
/* #APP */
 ;  85 "applet/arduino/wiring.c" 1
	cli
 ;  0 "" 2
	.stabn	68,0,86,.LM21-.LFBB3
.LM21:
/* #NOAPP */
	lds r18,timer0_overflow_count
	lds r19,(timer0_overflow_count)+1
	lds r20,(timer0_overflow_count)+2
	lds r21,(timer0_overflow_count)+3
	.stabn	68,0,88,.LM22-.LFBB3
.LM22:
	in r24,70-32
	.stabn	68,0,97,.LM23-.LFBB3
.LM23:
	sbis 53-32,0
	rjmp .L7
	cpi r24,lo8(-1)
	breq .L7
	.stabn	68,0,98,.LM24-.LFBB3
.LM24:
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sbci r20,hlo8(-(1))
	sbci r21,hhi8(-(1))
.L7:
	.stabn	68,0,104,.LM25-.LFBB3
.LM25:
	out __SREG__,r25
	mov r21,r20
	mov r20,r19
	mov r19,r18
	clr r18
	add r18,r24
	adc r19,__zero_reg__
	adc r20,__zero_reg__
	adc r21,__zero_reg__
	ldi r24,2
1:	lsl r18
	rol r19
	rol r20
	rol r21
	dec r24
	brne 1b
	.stabn	68,0,107,.LM26-.LFBB3
.LM26:
	movw r22,r18
	movw r24,r20
/* epilogue start */
	ret
	.size	micros, .-micros
	.stabs	"m:r(0,5)",64,0,0,18
	.stabs	"oldSREG:r(5,2)",64,0,0,25
	.stabs	"t:r(5,2)",64,0,0,24
	.stabn	192,0,0,.LFBB3-.LFBB3
	.stabn	224,0,0,.Lscope3-.LFBB3
.Lscope3:
	.stabs	"delay:F(0,15)",36,0,0,delay
	.stabs	"ms:P(0,5)",64,0,0,18
.global	delay
	.type	delay, @function
delay:
	.stabn	68,0,110,.LM27-.LFBB4
.LM27:
.LFBB4:
/* prologue: function */
/* frame size = 0 */
	movw r18,r22
	movw r20,r24
.LBB6:
.LBB7:
	.stabn	68,0,83,.LM28-.LFBB4
.LM28:
	in r23,__SREG__
	.stabn	68,0,85,.LM29-.LFBB4
.LM29:
/* #APP */
 ;  85 "applet/arduino/wiring.c" 1
	cli
 ;  0 "" 2
	.stabn	68,0,86,.LM30-.LFBB4
.LM30:
/* #NOAPP */
	lds r24,timer0_overflow_count
	lds r25,(timer0_overflow_count)+1
	lds r26,(timer0_overflow_count)+2
	lds r27,(timer0_overflow_count)+3
	.stabn	68,0,88,.LM31-.LFBB4
.LM31:
	in r22,70-32
	.stabn	68,0,97,.LM32-.LFBB4
.LM32:
	sbis 53-32,0
	rjmp .L10
	cpi r22,lo8(-1)
	breq .L10
	.stabn	68,0,98,.LM33-.LFBB4
.LM33:
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L10:
	.stabn	68,0,104,.LM34-.LFBB4
.LM34:
	out __SREG__,r23
.LBE7:
.LBE6:
	.stabn	68,0,111,.LM35-.LFBB4
.LM35:
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	add r24,r22
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	ldi r22,2
1:	lsl r24
	rol r25
	rol r26
	rol r27
	dec r22
	brne 1b
	movw r22,r24
	rjmp .L11
.L15:
.LBB8:
.LBB9:
	.stabn	68,0,83,.LM36-.LFBB4
.LM36:
	in r31,__SREG__
	.stabn	68,0,85,.LM37-.LFBB4
.LM37:
/* #APP */
 ;  85 "applet/arduino/wiring.c" 1
	cli
 ;  0 "" 2
	.stabn	68,0,86,.LM38-.LFBB4
.LM38:
/* #NOAPP */
	lds r24,timer0_overflow_count
	lds r25,(timer0_overflow_count)+1
	lds r26,(timer0_overflow_count)+2
	lds r27,(timer0_overflow_count)+3
	.stabn	68,0,88,.LM39-.LFBB4
.LM39:
	in r30,70-32
	.stabn	68,0,97,.LM40-.LFBB4
.LM40:
	sbis 53-32,0
	rjmp .L12
	cpi r30,lo8(-1)
	breq .L12
	.stabn	68,0,98,.LM41-.LFBB4
.LM41:
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L12:
	.stabn	68,0,104,.LM42-.LFBB4
.LM42:
	out __SREG__,r31
.LBE9:
.LBE8:
	.stabn	68,0,114,.LM43-.LFBB4
.LM43:
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	add r24,r30
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	ldi r30,2
1:	lsl r24
	rol r25
	rol r26
	rol r27
	dec r30
	brne 1b
	sub r24,r22
	sbc r25,r23
	subi r24,lo8(1000)
	sbci r25,hi8(1000)
	brlo .L15
	.stabn	68,0,115,.LM44-.LFBB4
.LM44:
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sbci r20,hlo8(-(-1))
	sbci r21,hhi8(-(-1))
	.stabn	68,0,116,.LM45-.LFBB4
.LM45:
	subi r22,lo8(-(1000))
	sbci r23,hi8(-(1000))
.L11:
	.stabn	68,0,113,.LM46-.LFBB4
.LM46:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L15
/* epilogue start */
	.stabn	68,0,119,.LM47-.LFBB4
.LM47:
	ret
	.size	delay, .-delay
	.stabs	"start:r(5,4)",64,0,0,22
	.stabn	192,0,0,.LFBB4-.LFBB4
	.stabs	"m:r(0,5)",64,0,0,24
	.stabs	"oldSREG:r(5,2)",64,0,0,23
	.stabs	"t:r(5,2)",64,0,0,22
	.stabn	192,0,0,.LBB7-.LFBB4
	.stabn	224,0,0,.LBE7-.LFBB4
	.stabs	"m:r(0,5)",64,0,0,24
	.stabs	"oldSREG:r(5,2)",64,0,0,31
	.stabs	"t:r(5,2)",64,0,0,30
	.stabn	192,0,0,.LBB9-.LFBB4
	.stabn	224,0,0,.LBE9-.LFBB4
	.stabn	224,0,0,.Lscope4-.LFBB4
.Lscope4:
	.stabs	"delayMicroseconds:F(0,15)",36,0,0,delayMicroseconds
	.stabs	"us:P(0,4)",64,0,0,24
.global	delayMicroseconds
	.type	delayMicroseconds, @function
delayMicroseconds:
	.stabn	68,0,123,.LM48-.LFBB5
.LM48:
.LFBB5:
/* prologue: function */
/* frame size = 0 */
	.stabn	68,0,133,.LM49-.LFBB5
.LM49:
	sbiw r24,1
	breq .L19
	.stabn	68,0,139,.LM50-.LFBB5
.LM50:
	lsl r24
	rol r25
	lsl r24
	rol r25
	.stabn	68,0,142,.LM51-.LFBB5
.LM51:
	sbiw r24,2
	.stabn	68,0,165,.LM52-.LFBB5
.LM52:
/* #APP */
 ;  165 "applet/arduino/wiring.c" 1
	1: sbiw r24,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.L19:
	ret
	.size	delayMicroseconds, .-delayMicroseconds
.Lscope5:
	.stabs	"init:F(0,15)",36,0,0,init
.global	init
	.type	init, @function
init:
	.stabn	68,0,172,.LM53-.LFBB6
.LM53:
.LFBB6:
/* prologue: function */
/* frame size = 0 */
	.stabn	68,0,175,.LM54-.LFBB6
.LM54:
/* #APP */
 ;  175 "applet/arduino/wiring.c" 1
	sei
 ;  0 "" 2
	.stabn	68,0,181,.LM55-.LFBB6
.LM55:
/* #NOAPP */
	in r24,68-32
	ori r24,lo8(2)
	out 68-32,r24
	.stabn	68,0,182,.LM56-.LFBB6
.LM56:
	in r24,68-32
	ori r24,lo8(1)
	out 68-32,r24
	.stabn	68,0,195,.LM57-.LFBB6
.LM57:
	in r24,69-32
	ori r24,lo8(2)
	out 69-32,r24
	.stabn	68,0,196,.LM58-.LFBB6
.LM58:
	in r24,69-32
	ori r24,lo8(1)
	out 69-32,r24
	.stabn	68,0,209,.LM59-.LFBB6
.LM59:
	ldi r30,lo8(110)
	ldi r31,hi8(110)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.stabn	68,0,220,.LM60-.LFBB6
.LM60:
	ldi r30,lo8(129)
	ldi r31,hi8(129)
	st Z,__zero_reg__
	.stabn	68,0,223,.LM61-.LFBB6
.LM61:
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	.stabn	68,0,225,.LM62-.LFBB6
.LM62:
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.stabn	68,0,235,.LM63-.LFBB6
.LM63:
	ldi r30,lo8(128)
	ldi r31,hi8(128)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.stabn	68,0,244,.LM64-.LFBB6
.LM64:
	ldi r30,lo8(177)
	ldi r31,hi8(177)
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	.stabn	68,0,253,.LM65-.LFBB6
.LM65:
	ldi r30,lo8(176)
	ldi r31,hi8(176)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.stabn	68,0,281,.LM66-.LFBB6
.LM66:
	ldi r30,lo8(122)
	ldi r31,hi8(122)
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	.stabn	68,0,282,.LM67-.LFBB6
.LM67:
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	.stabn	68,0,283,.LM68-.LFBB6
.LM68:
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.stabn	68,0,286,.LM69-.LFBB6
.LM69:
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	.stabn	68,0,295,.LM70-.LFBB6
.LM70:
	sts 193,__zero_reg__
/* epilogue start */
	.stabn	68,0,297,.LM71-.LFBB6
.LM71:
	ret
	.size	init, .-init
.Lscope6:
.global	timer0_overflow_count
.global	timer0_overflow_count
	.section .bss
	.type	timer0_overflow_count, @object
	.size	timer0_overflow_count, 4
timer0_overflow_count:
	.skip 4,0
.global	timer0_millis
.global	timer0_millis
	.type	timer0_millis, @object
	.size	timer0_millis, 4
timer0_millis:
	.skip 4,0
	.lcomm timer0_fract,1
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
	.stabs	"timer0_fract:S(0,11)",38,0,0,timer0_fract
	.stabs	"timer0_overflow_count:G(0,5)",32,0,0,0
	.stabs	"timer0_millis:G(0,5)",32,0,0,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
