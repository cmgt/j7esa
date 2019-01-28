; ---------------------------------------------------------------------------
CALC_ETM_OPEN_RATIO:

		mov	A, PSM
		mov	DPTR, #0A338h		; Характеристика управления моментного РХХ
		lcall	GET_2D_MAP_VALUE_I44
		mov	RAM_66,	A
		
		ret

; ---------------------------------------------------------------------------

CALC_ETM_PWM_PARAM:
		
		mov	DPTR, #0F891h
		movx	A, @DPTR
		mov	R1, A

		clr	C
		subb	A, RAM_66
		jc	CEPP_10

		mov	DPTR, #6076h		; Макс. скорость закрытия РДВ
		clr	A
		movc	A, @A+DPTR
		mov	B, A

		mov	A, R1
		clr	C
		subb	A, B
		jc	CEPP_10
		
		clr	C
		subb	A, RAM_66
		jc	CEPP_10
		
		add	A, RAM_66
		sjmp	CEPP_20

CEPP_10:
		mov	A, RAM_66

CEPP_20:
		push	ACC
		mov	DPTR, #0F891h
		movx	@DPTR, A
		
; -------
		mov	DPTR, #0F978h		; Точка квантования напряжения питания	
		movx    A, @DPTR
		push	ACC
		
		mov	DPTR, #0A2F8h		; Аддитивная коррекция по напряжению
		lcall	GET_2D_MAP_VALUE_I44
		mov	R0, A

		pop	ACC
		mov	DPTR, #0A308h		; Мультипликативная коррекция по напряжению
		lcall	GET_2D_MAP_VALUE_I44
		
		pop	B
		mul	AB
		rlc	A
		mov	A, B
		rlc	A
		mov	B, A
		
		mov	A, R0

		jc	CEPP_40
		jb	ACC.7, CEPP_30
		add	A, B
		jnc	CEPP_60
		sjmp	CEPP_50

CEPP_30:
		add	A, B
		jc	CEPP_60
		clr	A
		sjmp	CEPP_60

CEPP_40:
		jnb	ACC.7, CEPP_50
		add	A, B
		jnc	CEPP_60

CEPP_50:
		mov	A, #0FFh
; -------

CEPP_60:
		;mov	DPTR, #0F774h
		;movx	@DPTR, A
		
		mov	R0, #0Ah
		mov	R1, #0F5h
		lcall	CHK_A_in_R0_R1
		mov	B, A

		mov	R0, #41h
		mov	R1, #3
		lcall	MUL_R1R0_B
		mov	R2, RAM_0
		mov	R3, RAM_1

		mov	R0, #41h
		mov	R1, #3
		lcall	SUB_R1R0_R3R2

		mov	DPTR, #0F8A2h	; Длительность импульса открытия моментного РХХ

		clr	EAL
		
		mov	A, R2
		movx	@DPTR, A
		inc	DPTR
		mov	A, R3
		movx	@DPTR, A
		
		inc	DPTR
		mov	A, R0
		movx	@DPTR, A	; F8A4 - Длительность импульса закрытия моментного РХХ
		inc	DPTR
		mov	A, R1
		movx	@DPTR, A
		
		setb	EAL
		
		ret
		
; ---------------------------------------------------------------------------

ICS_0:	; COMSET Interrupt

		push	PSW
		push	ACC
		push	DPL
		push	DPH
		
		mov	A, RAM_67
		cjne	A, #0, ICS_100
		
		mov	DPTR, #0F8A2h	; Длительность импульса открытия моментного РХХ
		movx	A, @DPTR
		
		add	A, COMSETL
		mov	COMSETL, A
		
		inc	DPTR
		movx	A, @DPTR
		
		addc	A, COMSETH
		mov	COMSETH, A
		
		setb	P5.1
		clr	P5.2
		
		jmp	ICS_EXIT
; -------

ICS_100:
		cjne	A, #2, ICS_200
		
		mov	DPTR, #0F8A4h	; Длительность импульса закрытия моментного РХХ
		movx	A, @DPTR
		
		add	A, COMSETL
		mov	COMSETL, A
		
		inc	DPTR
		movx	A, @DPTR
		
		addc	A, COMSETH
		mov	COMSETH, A
		
		setb	P5.2
		clr	P5.1
		
		
		jmp	ICS_EXIT
; -------

ICS_200:
		mov	A, COMSETL
		add	A, #28h
		mov	COMSETL, A
		
		mov	A, COMSETH
		addc	A, #0
		mov	COMSETH, A
		
		clr	P5.2
		clr	P5.1

; -------

ICS_EXIT:
		inc	RAM_67
		anl	RAM_67, #3
		
		pop	DPH
		pop	DPL
		pop	ACC
		pop	PSW
		
		reti

