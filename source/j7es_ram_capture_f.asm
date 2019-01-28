PROC_MSG_IOLI_SRMCM:
IFDEF RAM_CAPTURE_SUPPORT
	mov	A, R3
	mov	DPTR, #RAM_CAPTURE_MODE
	movx	@DPTR, A
ENDIF
	clr	C
ret

; =============== S U B	R O U T	I N E =======================================
GET_2D_RAM_INTERPOLATION:
	mov	B, R3
	mov	DPL, R2
	movx	A, @DPTR
	mov	R2, A
	inc	DPL
	movx	A, @DPTR
	clr	C
	subb	A, R2
	jc	GET_2D_RAM_INTERPOLATION_1
	mul	AB
	add	A, #80h
	mov	A, B
	addc	A, R2
	ret

GET_2D_RAM_INTERPOLATION_1:
	cpl	A
	inc	A
	mul	AB
	clr	C
	mov	A, R2
	subb	A, B
	ret
; End of function GET_2D_RAM_INTERPOLATION

GET_2D_RAM_VALUE:
		mov	A, R2
		swap	A
		rl	A
		anl	A, #1Fh
		mov	R3, A
		mov	A, R2
		swap	A
		rl	A
		anl	A, #0E0h
		mov	R2, A
		jnz	GET_2D_VALUE_1
		mov	A, R3
		mov	DPL, A
		movx	A, @DPTR
		ret
; ---------------------------------------------------------------------------

GET_2D_VALUE_1:
		mov	B, R2
		mov	A, R3
		inc	A
		mov	DPL, A
		movx	A, @DPTR
		mul	AB
		mov	R0, A
		mov	R1, B
		mov	A, R2
		cpl	A
		inc	A
		mov	B, A
		mov	A, R3
		mov	DPL, A
		movx	A, @DPTR
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B
		ret