	.file	"wiring_digital.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.stabs	"applet/arduino/wiring_digital.c",100,0,2,.Ltext0
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
	.stabs	"pinMode:F(0,15)",36,0,0,pinMode
	.stabs	"pin:P(5,2)",64,0,0,24
	.stabs	"mode:P(5,2)",64,0,0,22
.global	pinMode
	.type	pinMode, @function
pinMode:
	.stabn	68,0,32,.LM0-.LFBB1
.LM0:
.LFBB1:
/* prologue: function */
/* frame size = 0 */
.LBB14:
	.stabn	68,0,33,.LM1-.LFBB1
.LM1:
	mov r20,r24
	ldi r21,lo8(0)
	movw r24,r20
	subi r24,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r25,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r24
/* #APP */
 ;  33 "applet/arduino/wiring_digital.c" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE14:
.LBB15:
	.stabn	68,0,34,.LM2-.LFBB1
.LM2:
	subi r20,lo8(-(digital_pin_to_port_PGM))
	sbci r21,hi8(-(digital_pin_to_port_PGM))
	movw r30,r20
/* #APP */
 ;  34 "applet/arduino/wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE15:
	.stabn	68,0,37,.LM3-.LFBB1
.LM3:
	tst r24
	breq .L4
.LBB16:
	.stabn	68,0,40,.LM4-.LFBB1
.LM4:
	mov r30,r24
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_mode_PGM))
	sbci r31,hi8(-(port_to_mode_PGM))
/* #APP */
 ;  40 "applet/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE16:
	.stabn	68,0,42,.LM5-.LFBB1
.LM5:
	tst r22
	brne .L3
.LBB17:
	.stabn	68,0,43,.LM6-.LFBB1
.LM6:
	in r25,__SREG__
	.stabn	68,0,44,.LM7-.LFBB1
.LM7:
/* #APP */
 ;  44 "applet/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
	.stabn	68,0,45,.LM8-.LFBB1
.LM8:
/* #NOAPP */
	ld r24,X
	com r18
	and r24,r18
	st X,r24
	.stabn	68,0,46,.LM9-.LFBB1
.LM9:
	out __SREG__,r25
	ret
.L3:
.LBE17:
.LBB18:
	.stabn	68,0,48,.LM10-.LFBB1
.LM10:
	in r25,__SREG__
	.stabn	68,0,49,.LM11-.LFBB1
.LM11:
/* #APP */
 ;  49 "applet/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
	.stabn	68,0,50,.LM12-.LFBB1
.LM12:
/* #NOAPP */
	ld r24,X
	or r24,r18
	st X,r24
	.stabn	68,0,51,.LM13-.LFBB1
.LM13:
	out __SREG__,r25
.L4:
	ret
.LBE18:
	.size	pinMode, .-pinMode
	.stabs	"__result:r(5,2)",64,0,0,18
	.stabn	192,0,0,.LBB14-.LFBB1
	.stabn	224,0,0,.LBE14-.LFBB1
	.stabs	"__result:r(5,2)",64,0,0,24
	.stabn	192,0,0,.LBB15-.LFBB1
	.stabn	224,0,0,.LBE15-.LFBB1
	.stabs	"__addr16:r(5,4)",64,0,0,30
	.stabs	"__result:r(5,4)",64,0,0,26
	.stabn	192,0,0,.LBB16-.LFBB1
	.stabn	224,0,0,.LBE16-.LFBB1
	.stabs	"oldSREG:r(5,2)",64,0,0,25
	.stabn	192,0,0,.LBB17-.LFBB1
	.stabn	224,0,0,.LBE17-.LFBB1
	.stabs	"oldSREG:r(5,2)",64,0,0,25
	.stabn	192,0,0,.LBB18-.LFBB1
	.stabn	224,0,0,.LBE18-.LFBB1
.Lscope1:
	.stabs	"digitalWrite:F(0,15)",36,0,0,digitalWrite
	.stabs	"pin:P(5,2)",64,0,0,24
	.stabs	"val:P(5,2)",64,0,0,22
.global	digitalWrite
	.type	digitalWrite, @function
digitalWrite:
	.stabn	68,0,126,.LM14-.LFBB2
.LM14:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
.LBB19:
	.stabn	68,0,127,.LM15-.LFBB2
.LM15:
	mov r20,r24
	ldi r21,lo8(0)
	movw r24,r20
	subi r24,lo8(-(digital_pin_to_timer_PGM))
	sbci r25,hi8(-(digital_pin_to_timer_PGM))
	movw r30,r24
/* #APP */
 ;  127 "applet/arduino/wiring_digital.c" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE19:
.LBB20:
	.stabn	68,0,128,.LM16-.LFBB2
.LM16:
	movw r24,r20
	subi r24,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r25,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r24
/* #APP */
 ;  128 "applet/arduino/wiring_digital.c" 1
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE20:
.LBB21:
	.stabn	68,0,129,.LM17-.LFBB2
.LM17:
	subi r20,lo8(-(digital_pin_to_port_PGM))
	sbci r21,hi8(-(digital_pin_to_port_PGM))
	movw r30,r20
/* #APP */
 ;  129 "applet/arduino/wiring_digital.c" 1
	lpm r19, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE21:
	.stabn	68,0,132,.LM18-.LFBB2
.LM18:
	tst r19
	brne .+2
	rjmp .L17
	.stabn	68,0,136,.LM19-.LFBB2
.LM19:
	tst r18
	breq .L7
.LBB22:
.LBB23:
	.stabn	68,0,71,.LM20-.LFBB2
.LM20:
	cpi r18,lo8(3)
	breq .L10
	cpi r18,lo8(4)
	brsh .L14
	cpi r18,lo8(1)
	breq .L8
	cpi r18,lo8(2)
	brne .L7
	rjmp .L22
.L14:
	cpi r18,lo8(6)
	breq .L12
	cpi r18,lo8(7)
	breq .L13
	cpi r18,lo8(4)
	brne .L7
	rjmp .L23
.L10:
	.stabn	68,0,74,.LM21-.LFBB2
.LM21:
	lds r24,128
	andi r24,lo8(127)
	rjmp .L18
.L23:
	.stabn	68,0,77,.LM22-.LFBB2
.LM22:
	lds r24,128
	andi r24,lo8(-33)
.L18:
	sts 128,r24
	rjmp .L7
.L8:
	.stabn	68,0,85,.LM23-.LFBB2
.LM23:
	in r24,68-32
	andi r24,lo8(127)
	rjmp .L20
.L22:
	.stabn	68,0,89,.LM24-.LFBB2
.LM24:
	in r24,68-32
	andi r24,lo8(-33)
.L20:
	out 68-32,r24
	rjmp .L7
.L12:
	.stabn	68,0,92,.LM25-.LFBB2
.LM25:
	lds r24,176
	andi r24,lo8(127)
	rjmp .L19
.L13:
	.stabn	68,0,95,.LM26-.LFBB2
.LM26:
	lds r24,176
	andi r24,lo8(-33)
.L19:
	sts 176,r24
.L7:
.LBE23:
.LBE22:
.LBB24:
	.stabn	68,0,138,.LM27-.LFBB2
.LM27:
	mov r30,r19
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  138 "applet/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE24:
	.stabn	68,0,140,.LM28-.LFBB2
.LM28:
	in r18,__SREG__
	.stabn	68,0,141,.LM29-.LFBB2
.LM29:
/* #APP */
 ;  141 "applet/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
	.stabn	68,0,143,.LM30-.LFBB2
.LM30:
/* #NOAPP */
	tst r22
	brne .L15
	.stabn	68,0,144,.LM31-.LFBB2
.LM31:
	ld r24,X
	com r25
	and r24,r25
	rjmp .L21
.L15:
	.stabn	68,0,146,.LM32-.LFBB2
.LM32:
	ld r24,X
	or r24,r25
.L21:
	st X,r24
	.stabn	68,0,149,.LM33-.LFBB2
.LM33:
	out __SREG__,r18
.L17:
	ret
	.size	digitalWrite, .-digitalWrite
	.stabs	"oldSREG:r(5,2)",64,0,0,18
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabs	"__result:r(5,2)",64,0,0,18
	.stabn	192,0,0,.LBB19-.LFBB2
	.stabn	224,0,0,.LBE19-.LFBB2
	.stabs	"__result:r(5,2)",64,0,0,25
	.stabn	192,0,0,.LBB20-.LFBB2
	.stabn	224,0,0,.LBE20-.LFBB2
	.stabs	"__result:r(5,2)",64,0,0,19
	.stabn	192,0,0,.LBB21-.LFBB2
	.stabn	224,0,0,.LBE21-.LFBB2
	.stabs	"__addr16:r(5,4)",64,0,0,30
	.stabs	"__result:r(5,4)",64,0,0,26
	.stabn	192,0,0,.LBB24-.LFBB2
	.stabn	224,0,0,.LBE24-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
	.stabs	"digitalRead:F(0,1)",36,0,0,digitalRead
	.stabs	"pin:P(5,2)",64,0,0,24
.global	digitalRead
	.type	digitalRead, @function
digitalRead:
	.stabn	68,0,153,.LM34-.LFBB3
.LM34:
.LFBB3:
/* prologue: function */
/* frame size = 0 */
.LBB25:
	.stabn	68,0,154,.LM35-.LFBB3
.LM35:
	mov r22,r24
	ldi r23,lo8(0)
	movw r24,r22
	subi r24,lo8(-(digital_pin_to_timer_PGM))
	sbci r25,hi8(-(digital_pin_to_timer_PGM))
	movw r30,r24
/* #APP */
 ;  154 "applet/arduino/wiring_digital.c" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE25:
.LBB26:
	.stabn	68,0,155,.LM36-.LFBB3
.LM36:
	movw r24,r22
	subi r24,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r25,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r24
/* #APP */
 ;  155 "applet/arduino/wiring_digital.c" 1
	lpm r20, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE26:
.LBB27:
	.stabn	68,0,156,.LM37-.LFBB3
.LM37:
	subi r22,lo8(-(digital_pin_to_port_PGM))
	sbci r23,hi8(-(digital_pin_to_port_PGM))
	movw r30,r22
/* #APP */
 ;  156 "applet/arduino/wiring_digital.c" 1
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE27:
	.stabn	68,0,158,.LM38-.LFBB3
.LM38:
	tst r25
	brne .L25
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L26
.L25:
	.stabn	68,0,162,.LM39-.LFBB3
.LM39:
	tst r18
	breq .L27
.LBB28:
.LBB29:
	.stabn	68,0,71,.LM40-.LFBB3
.LM40:
	cpi r18,lo8(3)
	breq .L30
	cpi r18,lo8(4)
	brsh .L34
	cpi r18,lo8(1)
	breq .L28
	cpi r18,lo8(2)
	brne .L27
	rjmp .L40
.L34:
	cpi r18,lo8(6)
	breq .L32
	cpi r18,lo8(7)
	breq .L33
	cpi r18,lo8(4)
	brne .L27
	rjmp .L41
.L30:
	.stabn	68,0,74,.LM41-.LFBB3
.LM41:
	lds r24,128
	andi r24,lo8(127)
	rjmp .L37
.L41:
	.stabn	68,0,77,.LM42-.LFBB3
.LM42:
	lds r24,128
	andi r24,lo8(-33)
.L37:
	sts 128,r24
	rjmp .L27
.L28:
	.stabn	68,0,85,.LM43-.LFBB3
.LM43:
	in r24,68-32
	andi r24,lo8(127)
	rjmp .L39
.L40:
	.stabn	68,0,89,.LM44-.LFBB3
.LM44:
	in r24,68-32
	andi r24,lo8(-33)
.L39:
	out 68-32,r24
	rjmp .L27
.L32:
	.stabn	68,0,92,.LM45-.LFBB3
.LM45:
	lds r24,176
	andi r24,lo8(127)
	rjmp .L38
.L33:
	.stabn	68,0,95,.LM46-.LFBB3
.LM46:
	lds r24,176
	andi r24,lo8(-33)
.L38:
	sts 176,r24
.L27:
.LBE29:
.LBE28:
.LBB30:
	.stabn	68,0,164,.LM47-.LFBB3
.LM47:
	mov r24,r25
	ldi r25,lo8(0)
	lsl r24
	rol r25
	subi r24,lo8(-(port_to_input_PGM))
	sbci r25,hi8(-(port_to_input_PGM))
	movw r30,r24
/* #APP */
 ;  164 "applet/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
.LBE30:
	ld r24,X
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	and r24,r20
	breq .L26
	ldi r18,lo8(1)
	ldi r19,hi8(1)
.L26:
	.stabn	68,0,166,.LM48-.LFBB3
.LM48:
	movw r24,r18
/* epilogue start */
	ret
	.size	digitalRead, .-digitalRead
	.stabs	"__result:r(5,2)",64,0,0,18
	.stabn	192,0,0,.LBB25-.LFBB3
	.stabn	224,0,0,.LBE25-.LFBB3
	.stabs	"__result:r(5,2)",64,0,0,20
	.stabn	192,0,0,.LBB26-.LFBB3
	.stabn	224,0,0,.LBE26-.LFBB3
	.stabs	"__result:r(5,2)",64,0,0,25
	.stabn	192,0,0,.LBB27-.LFBB3
	.stabn	224,0,0,.LBE27-.LFBB3
	.stabs	"__addr16:r(5,4)",64,0,0,24
	.stabs	"__result:r(5,4)",64,0,0,26
	.stabn	192,0,0,.LBB30-.LFBB3
	.stabn	224,0,0,.LBE30-.LFBB3
.Lscope3:
.global	port_to_mode_PGM
	.section	.progmem.data,"a",@progbits
	.type	port_to_mode_PGM, @object
	.size	port_to_mode_PGM, 10
port_to_mode_PGM:
	.word	0
	.word	0
	.word	36
	.word	39
	.word	42
.global	port_to_output_PGM
	.type	port_to_output_PGM, @object
	.size	port_to_output_PGM, 10
port_to_output_PGM:
	.word	0
	.word	0
	.word	37
	.word	40
	.word	43
.global	port_to_input_PGM
	.type	port_to_input_PGM, @object
	.size	port_to_input_PGM, 10
port_to_input_PGM:
	.word	0
	.word	0
	.word	35
	.word	38
	.word	41
.global	digital_pin_to_port_PGM
	.type	digital_pin_to_port_PGM, @object
	.size	digital_pin_to_port_PGM, 20
digital_pin_to_port_PGM:
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
.global	digital_pin_to_bit_mask_PGM
	.type	digital_pin_to_bit_mask_PGM, @object
	.size	digital_pin_to_bit_mask_PGM, 20
digital_pin_to_bit_mask_PGM:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
.global	digital_pin_to_timer_PGM
	.type	digital_pin_to_timer_PGM, @object
	.size	digital_pin_to_timer_PGM, 20
digital_pin_to_timer_PGM:
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	3
	.byte	4
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.stabs	"port_to_mode_PGM:G(0,16)=ar(0,17)=r(0,17);0;-1;;0;4;(5,4)",32,0,0,0
	.stabs	"port_to_input_PGM:G(0,16)",32,0,0,0
	.stabs	"port_to_output_PGM:G(0,16)",32,0,0,0
	.stabs	"digital_pin_to_port_PGM:G(0,18)=ar(0,17);0;19;(5,2)",32,0,0,0
	.stabs	"digital_pin_to_bit_mask_PGM:G(0,18)",32,0,0,0
	.stabs	"digital_pin_to_timer_PGM:G(0,18)",32,0,0,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
