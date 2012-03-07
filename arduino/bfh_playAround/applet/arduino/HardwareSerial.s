	.file	"HardwareSerial.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.text
	.weak	_Z11serialEventv
	.type	_Z11serialEventv, @function
_Z11serialEventv:
/* prologue: function */
/* frame size = 0 */
/* epilogue start */
	ret
	.size	_Z11serialEventv, .-_Z11serialEventv
.global	__vector_18
	.type	__vector_18, @function
__vector_18:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r20,198
	lds r18,rx_buffer+64
	lds r19,(rx_buffer+64)+1
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	andi r18,lo8(63)
	andi r19,hi8(63)
	lds r24,rx_buffer+66
	lds r25,(rx_buffer+66)+1
	cp r18,r24
	cpc r19,r25
	breq .L5
	lds r30,rx_buffer+64
	lds r31,(rx_buffer+64)+1
	subi r30,lo8(-(rx_buffer))
	sbci r31,hi8(-(rx_buffer))
	st Z,r20
	sts (rx_buffer+64)+1,r19
	sts rx_buffer+64,r18
.L5:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_18, .-__vector_18
	.weak	_Z14serialEventRunv
	.type	_Z14serialEventRunv, @function
_Z14serialEventRunv:
/* prologue: function */
/* frame size = 0 */
	lds r30,Serial+12
	lds r31,(Serial+12)+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r24,Z+
	ld r25,Z+
	ld r18,Z
	ldd r19,Z+1
	sub r24,r18
	sbc r25,r19
	andi r24,lo8(63)
	andi r25,hi8(63)
	or r24,r25
	breq .L8
	call _Z11serialEventv
.L8:
	ret
	.size	_Z14serialEventRunv, .-_Z14serialEventRunv
.global	__vector_19
	.type	__vector_19, @function
__vector_19:
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
	lds r18,tx_buffer+64
	lds r19,(tx_buffer+64)+1
	lds r24,tx_buffer+66
	lds r25,(tx_buffer+66)+1
	cp r18,r24
	cpc r19,r25
	brne .L10
	lds r24,193
	andi r24,lo8(-33)
	sts 193,r24
	rjmp .L12
.L10:
	lds r30,tx_buffer+66
	lds r31,(tx_buffer+66)+1
	subi r30,lo8(-(tx_buffer))
	sbci r31,hi8(-(tx_buffer))
	ld r20,Z
	lds r24,tx_buffer+66
	lds r25,(tx_buffer+66)+1
	adiw r24,1
	ldi r22,lo8(64)
	ldi r23,hi8(64)
	call __divmodhi4
	sts (tx_buffer+66)+1,r25
	sts tx_buffer+66,r24
	sts 198,r20
.L12:
/* epilogue start */
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
	.size	__vector_19, .-__vector_19
.global	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh
	.type	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh, @function
_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh:
	push r8
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ldi r24,lo8(1000)
	ldi r25,hi8(1000)
	ldi r26,hlo8(1000)
	ldi r27,hhi8(1000)
	std Z+4,r24
	std Z+5,r25
	std Z+6,r26
	std Z+7,r27
	ldi r24,lo8(_ZTV14HardwareSerial+4)
	ldi r25,hi8(_ZTV14HardwareSerial+4)
	std Z+1,r25
	st Z,r24
	std Z+13,r23
	std Z+12,r22
	std Z+15,r21
	std Z+14,r20
	std Z+17,r19
	std Z+16,r18
	std Z+19,r17
	std Z+18,r16
	std Z+21,r15
	std Z+20,r14
	std Z+23,r13
	std Z+22,r12
	std Z+25,r11
	std Z+24,r10
	std Z+26,r8
	ldd r24,Y+14
	std Z+27,r24
	ldd r24,Y+15
	std Z+28,r24
	ldd r24,Y+16
	std Z+29,r24
	ldd r24,Y+17
	std Z+30,r24
/* epilogue start */
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r8
	ret
	.size	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh, .-_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh
.global	_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh
	.type	_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh, @function
_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh:
	push r8
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ldi r24,lo8(1000)
	ldi r25,hi8(1000)
	ldi r26,hlo8(1000)
	ldi r27,hhi8(1000)
	std Z+4,r24
	std Z+5,r25
	std Z+6,r26
	std Z+7,r27
	ldi r24,lo8(_ZTV14HardwareSerial+4)
	ldi r25,hi8(_ZTV14HardwareSerial+4)
	std Z+1,r25
	st Z,r24
	std Z+13,r23
	std Z+12,r22
	std Z+15,r21
	std Z+14,r20
	std Z+17,r19
	std Z+16,r18
	std Z+19,r17
	std Z+18,r16
	std Z+21,r15
	std Z+20,r14
	std Z+23,r13
	std Z+22,r12
	std Z+25,r11
	std Z+24,r10
	std Z+26,r8
	ldd r24,Y+14
	std Z+27,r24
	ldd r24,Y+15
	std Z+28,r24
	ldd r24,Y+16
	std Z+29,r24
	ldd r24,Y+17
	std Z+30,r24
/* epilogue start */
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r8
	ret
	.size	_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh, .-_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh
.global	_ZN14HardwareSerial5beginEm
	.type	_ZN14HardwareSerial5beginEm, @function
_ZN14HardwareSerial5beginEm:
	push r10
	push r11
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	movw r14,r20
	movw r16,r22
	clr r13
	cpi r20,lo8(57600)
	ldi r24,hi8(57600)
	cpc r21,r24
	ldi r24,hlo8(57600)
	cpc r22,r24
	ldi r24,hhi8(57600)
	cpc r23,r24
	breq .L22
	clr r13
	inc r13
.L22:
	ldi r25,lo8(1)
	mov r10,r25
	mov r11,__zero_reg__
.L24:
	ldd r30,Y+20
	ldd r31,Y+21
	tst r13
	breq .L19
	movw r24,r10
	ldd r0,Y+30
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	st Z,r24
	ldi r22,lo8(4000000)
	ldi r23,hi8(4000000)
	ldi r24,hlo8(4000000)
	ldi r25,hhi8(4000000)
	rjmp .L25
.L19:
	st Z,__zero_reg__
	ldi r22,lo8(2000000)
	ldi r23,hi8(2000000)
	ldi r24,hlo8(2000000)
	ldi r25,hhi8(2000000)
.L25:
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sbci r20,hlo8(-(-1))
	sbci r21,hhi8(-(-1))
	lsr r21
	ror r20
	ror r19
	ror r18
	ldi r24,hi8(4096)
	cpi r18,lo8(4096)
	cpc r19,r24
	brlo .L21
	tst r13
	breq .L21
	clr r13
	rjmp .L24
.L21:
	ldd r30,Y+16
	ldd r31,Y+17
	st Z,r19
	ldd r30,Y+18
	ldd r31,Y+19
	st Z,r18
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	movw r24,r18
	ldd r0,Y+26
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	or r20,r24
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	movw r24,r18
	ldd r0,Y+27
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	or r20,r24
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	movw r24,r18
	ldd r0,Y+28
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	or r20,r24
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r24,Z
	ldd r0,Y+29
	rjmp 2f
1:	lsl r18
	rol r19
2:	dec r0
	brpl 1b
	com r18
	and r18,r24
	st Z,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	ret
	.size	_ZN14HardwareSerial5beginEm, .-_ZN14HardwareSerial5beginEm
.global	_ZN14HardwareSerial3endEv
	.type	_ZN14HardwareSerial3endEv, @function
_ZN14HardwareSerial3endEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	adiw r26,14
	ld r24,X+
	ld r25,X
	sbiw r26,14+1
	movw r28,r24
	subi r28,lo8(-(64))
	sbci r29,hi8(-(64))
	movw r30,r24
	subi r30,lo8(-(66))
	sbci r31,hi8(-(66))
.L27:
	ld r18,Y
	ldd r19,Y+1
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brne .L27
	adiw r26,22
	ld r30,X+
	ld r31,X
	sbiw r26,22+1
	ld r20,Z
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	movw r24,r18
	adiw r26,26
	ld r0,X
	sbiw r26,26
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	com r24
	and r24,r20
	st Z,r24
	adiw r26,22
	ld r30,X+
	ld r31,X
	sbiw r26,22+1
	ld r20,Z
	movw r24,r18
	adiw r26,27
	ld r0,X
	sbiw r26,27
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	com r24
	and r24,r20
	st Z,r24
	adiw r26,22
	ld r30,X+
	ld r31,X
	sbiw r26,22+1
	ld r20,Z
	movw r24,r18
	adiw r26,28
	ld r0,X
	sbiw r26,28
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	com r24
	and r24,r20
	st Z,r24
	adiw r26,22
	ld r30,X+
	ld r31,X
	sbiw r26,22+1
	ld r24,Z
	adiw r26,29
	ld r0,X
	sbiw r26,29
	rjmp 2f
1:	lsl r18
	rol r19
2:	dec r0
	brpl 1b
	com r18
	and r18,r24
	st Z,r18
	adiw r26,12
	ld r30,X+
	ld r31,X
	sbiw r26,12+1
	subi r30,lo8(-(66))
	sbci r31,hi8(-(66))
	ld r24,Z
	ldd r25,Z+1
	st -Z,r25
	st -Z,r24
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN14HardwareSerial3endEv, .-_ZN14HardwareSerial3endEv
.global	_ZN14HardwareSerial9availableEv
	.type	_ZN14HardwareSerial9availableEv, @function
_ZN14HardwareSerial9availableEv:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	adiw r26,12
	ld r30,X+
	ld r31,X
	sbiw r26,12+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r18,Z+
	ld r19,Z+
	ld r24,Z
	ldd r25,Z+1
	sub r18,r24
	sbc r19,r25
	andi r18,lo8(63)
	andi r19,hi8(63)
	movw r24,r18
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial9availableEv, .-_ZN14HardwareSerial9availableEv
.global	_ZN14HardwareSerial4peekEv
	.type	_ZN14HardwareSerial4peekEv, @function
_ZN14HardwareSerial4peekEv:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	adiw r26,12
	ld r30,X+
	ld r31,X
	sbiw r26,12+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r18,Z
	ldd r19,Z+1
	subi r30,lo8(-(-64))
	sbci r31,hi8(-(-64))
	movw r26,r30
	subi r26,lo8(-(66))
	sbci r27,hi8(-(66))
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r18,r24
	cpc r19,r25
	brne .L33
	ldi r18,lo8(-1)
	ldi r19,hi8(-1)
	rjmp .L34
.L33:
	ld r24,X+
	ld r25,X
	add r30,r24
	adc r31,r25
	ld r24,Z
	mov r18,r24
	ldi r19,lo8(0)
.L34:
	movw r24,r18
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial4peekEv, .-_ZN14HardwareSerial4peekEv
.global	_ZN14HardwareSerial4readEv
	.type	_ZN14HardwareSerial4readEv, @function
_ZN14HardwareSerial4readEv:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	adiw r26,12
	ld r30,X+
	ld r31,X
	sbiw r26,12+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r18,Z
	ldd r19,Z+1
	subi r30,lo8(-(-64))
	sbci r31,hi8(-(-64))
	movw r26,r30
	subi r26,lo8(-(66))
	sbci r27,hi8(-(66))
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r18,r24
	cpc r19,r25
	brne .L37
	ldi r18,lo8(-1)
	ldi r19,hi8(-1)
	rjmp .L38
.L37:
	ld r24,X+
	ld r25,X
	sbiw r26,1
	add r30,r24
	adc r31,r25
	ld r18,Z
	ld r24,X+
	ld r25,X
	sbiw r26,1
	adiw r24,1
	andi r24,lo8(63)
	andi r25,hi8(63)
	adiw r26,1
	st X,r25
	st -X,r24
	ldi r19,lo8(0)
.L38:
	movw r24,r18
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial4readEv, .-_ZN14HardwareSerial4readEv
.global	_ZN14HardwareSerial5flushEv
	.type	_ZN14HardwareSerial5flushEv, @function
_ZN14HardwareSerial5flushEv:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldd r24,Z+14
	ldd r25,Z+15
	movw r26,r24
	subi r26,lo8(-(64))
	sbci r27,hi8(-(64))
	movw r30,r24
	subi r30,lo8(-(66))
	sbci r31,hi8(-(66))
.L41:
	ld r18,X+
	ld r19,X
	sbiw r26,1
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brne .L41
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial5flushEv, .-_ZN14HardwareSerial5flushEv
.global	_ZN14HardwareSerial5writeEh
	.type	_ZN14HardwareSerial5writeEh, @function
_ZN14HardwareSerial5writeEh:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	mov r20,r22
	ldd r30,Y+14
	ldd r31,Y+15
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r24,Z
	ldd r25,Z+1
	subi r30,lo8(-(-64))
	sbci r31,hi8(-(-64))
	adiw r24,1
	ldi r22,lo8(64)
	ldi r23,hi8(64)
	call __divmodhi4
	movw r18,r24
	movw r26,r30
	subi r26,lo8(-(66))
	sbci r27,hi8(-(66))
.L45:
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r18,r24
	cpc r19,r25
	breq .L45
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r24,Z
	ldd r25,Z+1
	subi r30,lo8(-(-64))
	sbci r31,hi8(-(-64))
	add r30,r24
	adc r31,r25
	st Z,r20
	ldd r30,Y+14
	ldd r31,Y+15
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	std Z+1,r19
	st Z,r18
	ldd r30,Y+22
	ldd r31,Y+23
	ld r18,Z
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldd r0,Y+29
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	or r18,r24
	st Z,r18
	ldi r24,lo8(1)
	ldi r25,hi8(1)
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN14HardwareSerial5writeEh, .-_ZN14HardwareSerial5writeEh
	.type	_GLOBAL__I_rx_buffer, @function
_GLOBAL__I_rx_buffer:
/* prologue: function */
/* frame size = 0 */
	sts (Serial+2)+1,__zero_reg__
	sts Serial+2,__zero_reg__
	ldi r24,lo8(1000)
	ldi r25,hi8(1000)
	ldi r26,hlo8(1000)
	ldi r27,hhi8(1000)
	sts Serial+4,r24
	sts (Serial+4)+1,r25
	sts (Serial+4)+2,r26
	sts (Serial+4)+3,r27
	ldi r24,lo8(_ZTV14HardwareSerial+4)
	ldi r25,hi8(_ZTV14HardwareSerial+4)
	sts (Serial)+1,r25
	sts Serial,r24
	ldi r24,lo8(rx_buffer)
	ldi r25,hi8(rx_buffer)
	sts (Serial+12)+1,r25
	sts Serial+12,r24
	ldi r24,lo8(tx_buffer)
	ldi r25,hi8(tx_buffer)
	sts (Serial+14)+1,r25
	sts Serial+14,r24
	ldi r24,lo8(197)
	ldi r25,hi8(197)
	sts (Serial+16)+1,r25
	sts Serial+16,r24
	ldi r24,lo8(196)
	ldi r25,hi8(196)
	sts (Serial+18)+1,r25
	sts Serial+18,r24
	ldi r24,lo8(192)
	ldi r25,hi8(192)
	sts (Serial+20)+1,r25
	sts Serial+20,r24
	ldi r24,lo8(193)
	ldi r25,hi8(193)
	sts (Serial+22)+1,r25
	sts Serial+22,r24
	ldi r24,lo8(198)
	ldi r25,hi8(198)
	sts (Serial+24)+1,r25
	sts Serial+24,r24
	ldi r24,lo8(4)
	sts Serial+26,r24
	ldi r24,lo8(3)
	sts Serial+27,r24
	ldi r24,lo8(7)
	sts Serial+28,r24
	ldi r24,lo8(5)
	sts Serial+29,r24
	ldi r24,lo8(1)
	sts Serial+30,r24
/* epilogue start */
	ret
	.size	_GLOBAL__I_rx_buffer, .-_GLOBAL__I_rx_buffer
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.word	gs(_GLOBAL__I_rx_buffer)
.global	rx_buffer
.global	rx_buffer
	.section .bss
	.type	rx_buffer, @object
	.size	rx_buffer, 68
rx_buffer:
	.skip 68,0
.global	tx_buffer
.global	tx_buffer
	.type	tx_buffer, @object
	.size	tx_buffer, 68
tx_buffer:
	.skip 68,0
.global	Serial
.global	Serial
	.type	Serial, @object
	.size	Serial, 31
Serial:
	.skip 31,0
	.weak	_ZTV14HardwareSerial
	.data
	.type	_ZTV14HardwareSerial, @object
	.size	_ZTV14HardwareSerial, 16
_ZTV14HardwareSerial:
	.word	0
	.word	0
	.word	gs(_ZN14HardwareSerial5writeEh)
	.word	gs(_ZN5Print5writeEPKhj)
	.word	gs(_ZN14HardwareSerial9availableEv)
	.word	gs(_ZN14HardwareSerial4readEv)
	.word	gs(_ZN14HardwareSerial4peekEv)
	.word	gs(_ZN14HardwareSerial5flushEv)
	.weak	_ZTV6Stream
	.type	_ZTV6Stream, @object
	.size	_ZTV6Stream, 16
_ZTV6Stream:
	.word	0
	.word	0
	.word	gs(__cxa_pure_virtual)
	.word	gs(_ZN5Print5writeEPKhj)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
