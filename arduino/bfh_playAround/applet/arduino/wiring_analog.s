	.file	"wiring_analog.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.stabs	"applet/arduino/wiring_analog.c",100,0,2,.Ltext0
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
	.stabs	"analogReference:F(0,15)",36,0,0,analogReference
	.stabs	"mode:P(5,2)",64,0,0,24
.global	analogReference
	.type	analogReference, @function
analogReference:
	.stabn	68,0,33,.LM0-.LFBB1
.LM0:
.LFBB1:
/* prologue: function */
/* frame size = 0 */
	.stabn	68,0,37,.LM1-.LFBB1
.LM1:
	sts analog_reference,r24
/* epilogue start */
	.stabn	68,0,38,.LM2-.LFBB1
.LM2:
	ret
	.size	analogReference, .-analogReference
.Lscope1:
	.stabs	"analogRead:F(0,1)",36,0,0,analogRead
	.stabs	"pin:P(5,2)",64,0,0,25
.global	analogRead
	.type	analogRead, @function
analogRead:
	.stabn	68,0,41,.LM3-.LFBB2
.LM3:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
	mov r25,r24
	.stabn	68,0,49,.LM4-.LFBB2
.LM4:
	cpi r24,lo8(14)
	brlo .L4
	subi r25,lo8(-(-14))
.L4:
	.stabn	68,0,65,.LM5-.LFBB2
.LM5:
	andi r25,lo8(7)
	lds r24,analog_reference
	swap r24
	lsl r24
	lsl r24
	andi r24,lo8(-64)
	or r24,r25
	sts 124,r24
	.stabn	68,0,73,.LM6-.LFBB2
.LM6:
	lds r24,122
	ori r24,lo8(64)
	sts 122,r24
.L5:
	.stabn	68,0,76,.LM7-.LFBB2
.LM7:
	lds r24,122
	sbrc r24,6
	rjmp .L5
	.stabn	68,0,82,.LM8-.LFBB2
.LM8:
	lds r18,120
	.stabn	68,0,83,.LM9-.LFBB2
.LM9:
	lds r20,121
	mov r25,r20
	ldi r24,lo8(0)
	ldi r19,lo8(0)
	or r18,r24
	or r19,r25
	.stabn	68,0,92,.LM10-.LFBB2
.LM10:
	movw r24,r18
/* epilogue start */
	ret
	.size	analogRead, .-analogRead
	.stabs	"low:r(5,2)",64,0,0,18
	.stabs	"high:r(5,2)",64,0,0,20
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
	.stabs	"analogWrite:F(0,15)",36,0,0,analogWrite
	.stabs	"pin:P(5,2)",64,0,0,17
	.stabs	"val:P(0,1)",64,0,0,28
.global	analogWrite
	.type	analogWrite, @function
analogWrite:
	.stabn	68,0,99,.LM11-.LFBB3
.LM11:
.LFBB3:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	movw r28,r22
	.stabn	68,0,105,.LM12-.LFBB3
.LM12:
	ldi r22,lo8(1)
	call pinMode
	.stabn	68,0,106,.LM13-.LFBB3
.LM13:
	sbiw r28,0
	brne .+2
	rjmp .L23
.L9:
	.stabn	68,0,110,.LM14-.LFBB3
.LM14:
	cpi r28,255
	cpc r29,__zero_reg__
	brne .+2
	rjmp .L20
.L11:
.LBB2:
	.stabn	68,0,116,.LM15-.LFBB3
.LM15:
	mov r30,r17
	ldi r31,lo8(0)
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
/* #APP */
 ;  116 "applet/arduino/wiring_analog.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE2:
	cpi r24,lo8(3)
	breq .L15
	cpi r24,lo8(4)
	brsh .L19
	cpi r24,lo8(1)
	breq .L13
	cpi r24,lo8(2)
	brne .L12
	rjmp .L24
.L19:
	cpi r24,lo8(6)
	breq .L17
	cpi r24,lo8(7)
	breq .L18
	cpi r24,lo8(4)
	brne .L12
	rjmp .L25
.L13:
	.stabn	68,0,130,.LM16-.LFBB3
.LM16:
	in r24,68-32
	ori r24,lo8(-128)
	out 68-32,r24
	.stabn	68,0,131,.LM17-.LFBB3
.LM17:
	out 71-32,r28
	rjmp .L21
.L24:
	.stabn	68,0,138,.LM18-.LFBB3
.LM18:
	in r24,68-32
	ori r24,lo8(32)
	out 68-32,r24
	.stabn	68,0,139,.LM19-.LFBB3
.LM19:
	out 72-32,r28
	rjmp .L21
.L15:
	.stabn	68,0,146,.LM20-.LFBB3
.LM20:
	lds r24,128
	ori r24,lo8(-128)
	sts 128,r24
	.stabn	68,0,147,.LM21-.LFBB3
.LM21:
	sts (136)+1,r29
	sts 136,r28
	rjmp .L21
.L25:
	.stabn	68,0,154,.LM22-.LFBB3
.LM22:
	lds r24,128
	ori r24,lo8(32)
	sts 128,r24
	.stabn	68,0,155,.LM23-.LFBB3
.LM23:
	sts (138)+1,r29
	sts 138,r28
	rjmp .L21
.L17:
	.stabn	68,0,170,.LM24-.LFBB3
.LM24:
	lds r24,176
	ori r24,lo8(-128)
	sts 176,r24
	.stabn	68,0,171,.LM25-.LFBB3
.LM25:
	sts 179,r28
	rjmp .L21
.L18:
	.stabn	68,0,178,.LM26-.LFBB3
.LM26:
	lds r24,176
	ori r24,lo8(32)
	sts 176,r24
	.stabn	68,0,179,.LM27-.LFBB3
.LM27:
	sts 180,r28
	rjmp .L21
.L12:
	.stabn	68,0,265,.LM28-.LFBB3
.LM28:
	cpi r28,128
	cpc r29,__zero_reg__
	brge .L20
.L23:
	.stabn	68,0,266,.LM29-.LFBB3
.LM29:
	mov r24,r17
	ldi r22,lo8(0)
	rjmp .L22
.L20:
	.stabn	68,0,268,.LM30-.LFBB3
.LM30:
	mov r24,r17
	ldi r22,lo8(1)
.L22:
	call digitalWrite
.L21:
/* epilogue start */
	.stabn	68,0,272,.LM31-.LFBB3
.LM31:
	pop r29
	pop r28
	pop r17
	ret
	.size	analogWrite, .-analogWrite
	.stabs	"__result:r(5,2)",64,0,0,24
	.stabn	192,0,0,.LBB2-.LFBB3
	.stabn	224,0,0,.LBE2-.LFBB3
.Lscope3:
.global	analog_reference
	.data
	.type	analog_reference, @object
	.size	analog_reference, 1
analog_reference:
	.byte	1
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
	.stabs	"analog_reference:G(5,2)",32,0,0,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
