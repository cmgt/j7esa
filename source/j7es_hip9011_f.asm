; -------------------------------------------------------------------------

HIP9011_SPI_SLEEP:
	FILL_NOP	30h
	ret
	
; -------------------------------------------------------------------------

;HIP9011_SPI_SEND_CMD:
		
		
;		mov	A, B
;		mov	B, #8
		
;HIP_SSC_1:		
;		setb	P1.1		; SCK
;		rlc	A
;		mov	P1.0, C		; MOSI
;		nop
;		nop
;		clr	P1.1
;		nop
;		djnz	B, HIP_SSC_1

;		ret
		
; -------------------------------------------------------------------------

HIP9011_SPI_SEND_CMD_2:

		clr	P1.7
		
		nop
		nop
		nop
		nop
		nop
		nop
		
		setb	P1.1
		mov	C, B.7
		mov	P1.0, C
		clr	P1.1
		nop
		
		setb	P1.1
		mov	C, B.6
		mov	P1.0, C
		clr	P1.1
		nop
		
		setb	P1.1
		mov	C, B.5
		mov	P1.0, C
		clr	P1.1
		nop
		
		setb	P1.1
		mov	C, B.4
		mov	P1.0, C
		clr	P1.1
		nop
		
		setb	P1.1
		mov	C, B.3
		mov	P1.0, C
		clr	P1.1
		nop
		
		setb	P1.1
		mov	C, B.2
		mov	P1.0, C
		clr	P1.1
		nop
		
		setb	P1.1
		mov	C, B.1
		mov	P1.0, C
		clr	P1.1
		nop
		
		setb	P1.1
		mov	C, B.0
		mov	P1.0, C
		clr	P1.1

		nop
		nop
		nop
		nop
		nop
		
		setb	P1.7

		ret		

; -------------------------------------------------------------------------

HIP9011_CALC_T_INT:

		mov	DPTR, #0F82Bh	; Постоянная времени интегратора
		movx	A, @DPTR
		mov	R2, A

		mov	DPTR, #0F934h	; Общий уровень шума
		movx	A, @DPTR
		mov	R0, A
		mov	B, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A

		jz	HIP_CTI_1
		mov	B, #0FFh
		
HIP_CTI_1:		
		mov	DPTR, #5F56h	; Макс.	порог шума для переключения аттенюатора на уменьшение
		clr	A
		movc	A, @A+DPTR

		cjne	A, B, HIP_CTI_2
HIP_CTI_2:	jc	HIP_CTI_4

		mov	DPTR, #5F55h	; Мин. порог шума для переключения аттенюатора на увеличение
		clr	A
		movc	A, @A+DPTR
		
		cjne	A, B, HIP_CTI_3
HIP_CTI_3:	jnc	HIP_CTI_6
		
		ret
; ---------------------------------------------------------------------------

HIP_CTI_4:
		cjne	R2, #10h, HIP_CTI_5
		
		ret
; -------

HIP_CTI_5:
		mov	A, R2
		add	A, #8
		mov	DPTR, #0F82Bh	; Постоянная времени интегратора
		movx	@DPTR, A
		
		lcall	DIV_R0R1_2

		mov	DPTR, #0F934h	; Общий уровень шума
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		ret
; ---------------------------------------------------------------------------

HIP_CTI_6:
		cjne	R2, #8,	HIP_CTI_7
HIP_CTI_7:	jnc	HIP_CTI_8	; >= 8
		
		ret
; ---------------------------------------------------------------------------

HIP_CTI_8:
		mov	A, R2
		clr	C
		subb	A, #8
		mov	DPTR, #0F82Bh	; Постоянная времени интегратора
		movx	@DPTR, A

		lcall	MUL_R0R1_2

		mov	DPTR, #0F934h	; Общий уровень шума
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		ret