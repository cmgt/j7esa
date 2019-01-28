GET_3D_VALUE_32x16:
		mov	A, R2
		anl	A, #0F8h
		mov	B, #8
		div	AB
		add	A, DPL
		mov	DPL, A
		mov	A, DPH
		addc	A, #0
		mov	DPH, A

		mov	A, R3
		swap	A
		anl	A, #0Fh
		mov	B, #20h
		mul	AB
		add	A, DPL
		mov	DPL, A
		mov	A, DPH
		addc	A, B
		mov	DPH, A

		mov	A, R2
		rl	A
		anl	A, #0Eh
		mov	R2, A		; смещение по x

		mov	A, R3
		anl	A, #0Fh
		mov	R3, A		; смещение по y

		orl	A, R2
		jnz	code_4AD0
		movc	A, @A+DPTR	; точное попадание в точку

		ret
		
; ---------------------------------------------------------------------------

GET_3D_VALUE_32x32:
		mov	A, R2
		anl	A, #0F8h
		mov	B, #8
		div	AB
		add	A, DPL
		mov	DPL, A
		mov	A, DPH
		addc	A, #0
		mov	DPH, A

		mov	A, R3
		anl	A, #0F8h
		mov	B, #8
		div	AB
		mov	B, #20h
		mul	AB
		add	A, DPL
		mov	DPL, A
		mov	A, DPH
		addc	A, B
		mov	DPH, A

		mov	A, R2
		rl	A
		anl	A, #0Eh
		mov	R2, A		; смещение по x

		mov	A, R3
		rl	A
		anl	A, #0Eh
		mov	R3, A		; смещение по y

		orl	A, R2
		jnz	code_4AD0
		movc	A, @A+DPTR	; точное попадание в точку

		ret
		
; ---------------------------------------------------------------------------

code_4AD0:
		mov	A, #10h
		clr	C
		subb	A, R2
		mov	B, A		; (16 - x)

		clr	C
		mov	A, #10h
		subb	A, R3		; (16 - y)

		mul	AB
		mov	B, A		; (16 - x) * (16 - y)

		clr	A
		movc	A, @A+DPTR	; z11

		mul	AB		; z11 * (16 - x) * (16 - y)
		mov	R0, A
		mov	R1, B
; ---
		clr	C
		mov	A, #10h
		subb	A, R3
		mov	B, R2
		mul	AB
		mov	B, A		; x * (16 - y)

		mov	A, #1
		movc	A, @A+DPTR	; z12 = z[y,x]

		mul	AB		; z12 * x * (16	- y)

		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B
		mov	R1, A		; z11 *	(16 - x) * (16 - y) + z12 * x * (16 - y)
; ---
		mov	A, #10h
		clr	C
		subb	A, R2
		mov	B, R3
		mul	AB
		mov	B, A		; (16 -	x) * y

		mov	A, #20h
		movc	A, @A+DPTR	; z21

		mul	AB		; z21 * (16 - x) * y

		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B
		mov	R1, A		; z11 * (16 - x) * (16 - y) + z12 * x * (16 - y) + z21 * (16 - x) * y

		mov	A, R2
		mov	B, R3
		mul	AB
		mov	B, A		; x * y

		mov	A, #21h
		movc	A, @A+DPTR	; z22

		mul	AB		; z22 * x * y

		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B		; z11 * (16 - x) * (16 - y) + z12 * x * (16 - y) + z21 * (16 - x) * y +	z22 * x	* y

		ret
		
; End of function GET_3D_VALUE_32x16

