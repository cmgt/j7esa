; ---------------------------------------------------------------------------
; ���. ����������������� ���������
; ---------------------------------------------------------------------------
PROC_MSG_IOLI_HSP:
		mov	A, R3
		xrl	A, #1
		jnz	PMI_HSP_1
		
		mov	R0, #91h
		mov	A, @R0
		orl	A, #80h
		mov	@R0, A
		clr	C
		ret

PMI_HSP_1:
		setb    C
		ret
; ---------------------------------------------------------------------------