HSP_SEND_MSG MACRO
		mov	A, R7
		mov	B, #3
		div	AB
		xch	A, B
		jnz	HSP_SM_EXIT
		
		mov	R0, #0B0h

		clr	C
		mov	A, R2
		subb	A, @R0
		mov	B, A
		
		mov	A, R2
		mov	@R0, A
		
		inc	R0
		mov	A, R3
		subb	A, @R0
		mov	R1, A
		
		mov	A, R3
		mov	@R0, A
		
		inc	R0
		inc	@R0			; 0xB2 - число интервалов по 18гпкв между сообщениями

		inc	R0			; 0xB3 - время между сообщениями по Timer2
		mov	A, B
		add	A, @R0
		mov	@R0, A
		
		inc	R0
		mov	A, R1
		addc	A, @R0
		mov	@R0, A

		jnb	RAM_26.7, HSP_SM_END

		inc	R0
		mov	B, @R0			; 0xB5 - интервал отправки сообщений
		cjne	A, B, HSP_SM_1

HSP_SM_1:
		jc	HSP_SM_END
		
		mov	R0, #0B2h
		mov	DPTR, #0F8D2h
		mov	B, #3
		
HSP_SM_2:
		clr	A
		xch	A, @R0
		movx	@DPTR, A
		
		inc	R0
		inc	DPL

		djnz	B, HSP_SM_2
		
		mov	DPTR, #0F88Fh
		movx	A, @DPTR
		mov	DPSEL, #7
		mov	DPTR, #0F8D5h
		movx	@DPTR, A
		
		inc	DPL
		mov	A, ALF_2
		movx	@DPTR, A
		
		mov	DPSEL, #5
		mov	DPTR, #0F991h
		movx	A, @DPTR
		mov	DPSEL, #7
		inc	DPL
		movx	@DPTR, A
		mov	DPSEL, #5
		inc	DPL
		movx	A, @DPTR
		mov	DPSEL, #7
		inc	DPL
		movx	@DPTR, A
		
		mov	R0, #92h
		mov	@R0, #2
		mov	RAM_51,	#9
		;mov	DPSEL, #7
		mov	DPTR, #0F8D0h
		clr	RAM_2F.3
		clr	RAM_2F.0
		clr	RAM_2F.4
		mov	RAM_78,	#0
		setb	REN0
		setb	TI0
		mov	DPSEL, #5

HSP_SM_END:


HSP_SM_EXIT:

ENDM


; ---------------------------------------------------------------------------
HSP_RI0_TI0 MACRO

HSP_RI0_TI0_0:
		jnb	RAM_2F.0, code_4030
		
		push	PSW
		push	ACC
		
		mov	A, RAM_7E
		jnz	HSP_RT0_20
; ---
		mov	A, S0BUF
		cjne	A, #0EEh, HSP_RT0_10
		inc	RAM_7E

HSP_RT0_10:
		mov	RAM_78,	#0
		pop	ACC
		pop	PSW
		ljmp	RI0_TI0_TR
; ---

HSP_RT0_20:
		mov	RAM_7E,	#0
		mov	A, S0BUF
		cjne	A, #88h, HSP_RT0_30
		clr	RAM_26.7
		sjmp	HSP_RT0_10
; ---------------------------------------------------------------------------

HSP_RT0_30:
		push	DPSEL
		mov	DPSEL, #6
		mov	DPTR, #0F88Fh		; корректор УОЗ
		movx	@DPTR, A
		orl	RAM_7A,	#8
		pop	DPSEL
		sjmp	HSP_RT0_10
; ---------------------------------------------------------------------------

code_4030:
		mov	RAM_7E,	#0
		ljmp	RI0_TI0_TR

ENDM
		
; ---------------------------------------------------------------------------
