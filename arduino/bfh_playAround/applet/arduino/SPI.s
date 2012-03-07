	.file	"SPI.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.text
.global	_ZN8SPIClass3endEv
	.type	_ZN8SPIClass3endEv, @function
_ZN8SPIClass3endEv:
/* prologue: function */
/* frame size = 0 */
	in r24,76-32
	andi r24,lo8(-65)
	out 76-32,r24
/* epilogue start */
	ret
	.size	_ZN8SPIClass3endEv, .-_ZN8SPIClass3endEv
.global	_ZN8SPIClass11setBitOrderEh
	.type	_ZN8SPIClass11setBitOrderEh, @function
_ZN8SPIClass11setBitOrderEh:
/* prologue: function */
/* frame size = 0 */
	tst r24
	brne .L4
	in r24,76-32
	ori r24,lo8(32)
	rjmp .L7
.L4:
	in r24,76-32
	andi r24,lo8(-33)
.L7:
	out 76-32,r24
	ret
	.size	_ZN8SPIClass11setBitOrderEh, .-_ZN8SPIClass11setBitOrderEh
.global	_ZN8SPIClass11setDataModeEh
	.type	_ZN8SPIClass11setDataModeEh, @function
_ZN8SPIClass11setDataModeEh:
/* prologue: function */
/* frame size = 0 */
	in r25,76-32
	andi r25,lo8(-13)
	or r25,r24
	out 76-32,r25
/* epilogue start */
	ret
	.size	_ZN8SPIClass11setDataModeEh, .-_ZN8SPIClass11setDataModeEh
.global	_ZN8SPIClass15setClockDividerEh
	.type	_ZN8SPIClass15setClockDividerEh, @function
_ZN8SPIClass15setClockDividerEh:
/* prologue: function */
/* frame size = 0 */
	in r18,76-32
	mov r19,r24
	andi r19,lo8(3)
	andi r18,lo8(-4)
	or r19,r18
	out 76-32,r19
	in r18,77-32
	ldi r25,lo8(0)
	asr r25
	ror r24
	asr r25
	ror r24
	andi r24,lo8(1)
	andi r18,lo8(-2)
	or r24,r18
	out 77-32,r24
/* epilogue start */
	ret
	.size	_ZN8SPIClass15setClockDividerEh, .-_ZN8SPIClass15setClockDividerEh
.global	_ZN8SPIClass5beginEv
	.type	_ZN8SPIClass5beginEv, @function
_ZN8SPIClass5beginEv:
/* prologue: function */
/* frame size = 0 */
	ldi r24,lo8(13)
	ldi r22,lo8(1)
	call pinMode
	ldi r24,lo8(11)
	ldi r22,lo8(1)
	call pinMode
	ldi r24,lo8(10)
	ldi r22,lo8(1)
	call pinMode
	ldi r24,lo8(13)
	ldi r22,lo8(0)
	call digitalWrite
	ldi r24,lo8(11)
	ldi r22,lo8(0)
	call digitalWrite
	ldi r24,lo8(10)
	ldi r22,lo8(1)
	call digitalWrite
	in r24,76-32
	ori r24,lo8(16)
	out 76-32,r24
	in r24,76-32
	ori r24,lo8(64)
	out 76-32,r24
/* epilogue start */
	ret
	.size	_ZN8SPIClass5beginEv, .-_ZN8SPIClass5beginEv
.global	SPI
.global	SPI
	.section .bss
	.type	SPI, @object
	.size	SPI, 1
SPI:
	.skip 1,0
