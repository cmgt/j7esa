CALC_DUOZ_REGXX:
		mov	DPTR, #6095h	; ���� �����⢨⥫쭮�� | ��/���.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, DELTA_RPM_XX
		mov	R0, A
		lcall	ABS_ACC
		clr	C
		subb	A, B
		jnc	CALC_DUOZ_REGXX_1
		mov	R0, #0

CALC_DUOZ_REGXX_1:
		lcall	code_ADE2
		mov	B, #8
		lcall	MUL_ABSR0R1_B
		mov	A, R0
		mov	R0, B
		mov	R1, A
		mov	A, R1
		mov	DPTR, #6094h	; �ய��樮����� �����樥�� 2 | ��./(��/���)
		jb	ACC.7, CALC_DUOZ_REGXX_2
		mov	DPTR, #6093h	; �ய��樮����� �����樥�� 1 | ��./(��/���)

CALC_DUOZ_REGXX_2:
		
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		lcall	MUL_ABSR0R1_B
		lcall	code_ADEC
		mov	B, A
		mov	DPTR, #6096h	; �������쭮� ᬥ饭�� ��� | ��.�.�.�.
		clr	A
		movc	A, @A+DPTR
		mov	R0, A
		mov	DPTR, #6097h	; ���ᨬ��쭮� ᬥ饭��	��� | ��.�.�.�.
		clr	A
		movc	A, @A+DPTR
		mov	R1, A
		mov	A, B
		lcall	code_AD14
		mov	DPTR, #0FAB0h
		movx	@DPTR, A
		
		ret

;=============== S U B R O U T I N E =======================================
FLAGS_INIT:
		mov	DPTR, #5F30h		; ���ࢠ� ��ࠢ�� ᮮ�饭�� ᪮��⭮�� ��⮪���
		clr	A
		movc	A, @A+DPTR
		mov	R0, #0B5h
		mov	@R0, A		


		mov	DPTR, #6051h
		clr	A
		movc	A, @A+DPTR
		mov	Hardware, A

		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		mov	C, ACC.2
		mov	RAM_27.6, C

		mov	DPTR, #6052h
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #5F02h
		clr	A
		movc	A, @A+DPTR
		mov	C, ACC.0
		mov	B.0, C

		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		mov	C, ACC.7		; HIP9011
		mov	RAM_28.7, C
		
		jnb	Hardware.5, code_E9DC
		jb	RAM_22.4, code_E9DC
		jb	ACC.1, code_E9DC 
		clr	B.5
		orl	P9, #40h	
		
		sjmp	code_E9DD

code_E9DC:				
					
		setb	B.5
		anl	P9, #0BFh	

code_E9DD:
		mov	Options, B
		ret
; End of function code_E9A9

;=============== S U B R O U T I N E =======================================
SET_START_FW_VARIANT:
		mov	A, P6
		mov	C, ACC.4

		sjmp	FWV_20
		
SET_FW_VARIANT:
		mov	DPTR, #0F843h
		movx	A, @DPTR
		mov	B, A
		
		mov	A, P6
		swap	A
		anl	A, #1
		
		xrl	A, B
		jz	SFWV_END
		
		; ᬥ�� ��ਠ�� ��訢��
		
		; ���. ��
		mov	DPTR, #5F03h 
		clr	A
		movc	A, @A+DPTR
		mov	C, ACC.1
		anl	C, /RAM_2B.0
		jnc	FWV_10
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		setb	ACC.3
		movx	@DPTR, A	

		;
FWV_10:		
		mov	C, B.0
		cpl	C
FWV_20:
		clr	A
		mov	ACC.0, C
		mov	DPTR, #0F843h
		movx	@DPTR, A

		jc	FWV_30
		anl	P6, #0FEh
		nop
		nop
		nop
		nop
		sjmp	SFWV_END

FWV_30:
		orl	P6, #1
		nop
		nop
		nop
		nop

SFWV_END:
		ret
