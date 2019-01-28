;============ Управление доп выводами
OUT_PIN_PROCESS:
		mov	R0, #0
		mov	R1, #0

code_EAFA:

		cjne	R0, #3,	code_EAFB
		mov	A, R1
		jz	code_EB0A
		lcall	SET_OUT_PIN_STATE
code_EB0A:
		ret
; -------

code_EAFB:
		mov	DPTR, #5EF9h
		mov	A, R0
		inc	R0
		movc	A, @A+DPTR
		jz	code_EAFA

; ---------------------------------------------------------------------------
; доп. вентилятор

code_EB0B:
		jnb	ACC.0, code_EB44
		
		mov	DPTR, #6090h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.1, code_EB22
		mov	C, RAM_23.3
		orl	C, RAM_24.3
		jc	code_EB64
		mov	B, TWAT
		sjmp	code_EB2E


code_EB22:
		mov	C, RAM_23.2
		orl	C, RAM_24.2
		jc	code_EB74
		mov	DPTR, #0F93Bh
		movx	A, @DPTR
		mov	B, A

code_EB2E:
		mov	DPTR, #6091h
		clr	A
		movc	A, @A+DPTR
		xch	A, B
		cjne	A, B, code_EB2F
code_EB2F:
		cpl	C
		jc	code_EB74
		
		xch	A, B
		mov	DPTR, #6092h
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_EB30
code_EB30:
		jnc	code_EB74
		sjmp	code_EAFA
; ---------------------------------------------------------------------------
; shiftlight

code_EB44:
		jnb	ACC.1, code_EB63
		
		mov	DPTR, #0F952h
		movx	A, @DPTR
		cjne	A, #5, out_pin_1
out_pin_1:
		jc	out_pin_2
		mov	A, #5
out_pin_2:
		push	ACC
		mov	B, RPM
		mov	DPTR, #5F0Ah
		movc	A, @A+DPTR
		xch	A, B
		cjne	A, B, out_pin_2_1
out_pin_2_1:
		cpl	C
		pop	B
		jc	code_EB74
		
		xch	A, B
		mov	DPTR, #5F10h
		movc	A, @A+DPTR
		cjne	A, B, out_pin_2_2
out_pin_2_2:
		jnc	code_EB74
		sjmp	code_EAFA
; ---------------------------------------------------------------------------
; карта обороты/дроссель

code_EB63:
		jnb	ACC.2, code_EB65
		
		mov	DPTR, #63D3h		; Зона срабатывания по оборотам/дросселю		
		mov	A, RPM_THR_3D_RT
		movc	A, @A+DPTR
		mov	C, ACC.3

code_EB64:
		sjmp	code_EB74

; ---------------------------------------------------------------------------
; карта обороты/давление

code_EB65:

		jnb	ACC.3, code_EB93
		
		mov	A, RPM_RT
		add	A, #8
		anl	A, #0F0h
		swap	A
		mov	B, A

		mov	DPTR, #0F89Ah		; PRESS_RT
		movx	A, @DPTR
		add	A, #8
		anl	A, #0F0h
		add	A, B
		
		mov	DPTR, #63D3h		; Зона срабатывания по оборотам/давлению
		movc	A, @A+DPTR
		mov	C, ACC.4

; ---------------------------------------------------------------------------
code_EB74:

		mov	DPTR, #0F999h
		movx	A, @DPTR
		
		mov	PSW.1, C
		
		cjne	R0, #1,	code_EB80
		mov	C, PSW.1
		mov	ACC.0, C
		sjmp	code_EB92

code_EB80:
		cjne	R0, #2,	code_EB8C
		mov	C, PSW.1
		mov	ACC.1, C
		setb	ACC.7
		sjmp	code_EB92

code_EB8C:
		cjne	R0, #3,	code_EB93
		mov	C, PSW.1
		mov	ACC.2, C

code_EB92:

		movx	@DPTR, A
		inc	R1

code_EB93:
		jmp	code_EAFA

; End of function code_EAF6

; =============== S U B	R O U T	I N E =======================================

SET_OUT_PIN_STATE:			
					
		mov	DPTR, #0F999h
		movx	A, @DPTR
		mov	B, A
		
		jnb	ACC.7, code_EA43
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		mov	C, B.1
		mov	ACC.5, C
		movx	@DPTR, A
		
code_EA43:
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		mov	C, B.0
		mov	ACC.7, C
		mov	C, B.2
		mov	ACC.5, C
		movx	@DPTR, A
		
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.2, code_EA5C 
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		mov	C, ACC.3		
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		mov	ACC.5, C	
		movx	@DPTR, A

code_EA5C:	
		mov	DPTR, #5F03h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.1, code_EA5D 
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.3
		movx	@DPTR, A

code_EA5D:
		anl	P9, #7Fh	; Port 9 (PDIR=0)
		mov	A, #0F0h ; 'Ё'
		lcall	code_EA81
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		lcall	code_EA81
		orl	P9, #80h	; Port 9 (PDIR=0)
		anl	P9, #7Fh	; Port 9 (PDIR=0)
		mov	A, #0FFh
		lcall	code_EA81
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		lcall	code_EA81
		orl	P9, #80h	; Port 9 (PDIR=0)
		
		ret
; End of function SET_OUT_PIN_STATE