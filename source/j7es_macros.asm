FIRMWARE_VERSION MACRO
	db 'j7esa_v0.4.9'
ENDM

;���樠������ ��ﬨ
INIT_DB_ZERO MACRO COUNT_BYTE
REPT COUNT_BYTE
	db	0
ENDM
ENDM

ALIGN_NOP MACRO ADDRESS
jmp ADDRESS
REPT ADDRESS - $
	db	0
ENDM
ENDM

FILL_NOP MACRO COUNT_NOP
REPT COUNT_NOP
	nop
ENDM
ENDM

GET_UOZ_XX MACRO
		mov	DPTR, #6F9Dh	; ���४�� ���	�� �� |	���, ��.�.�.�. - ���������, �ࠤ.�
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A
		GET_RAM_BY_INDEX 6F7Dh, RPM_RT_32, CAPTURE_UOZ_XX_MODE
		clr	C
		subb	A, B
		mov	UOZXX_2, A
ENDM


; ����� ���⥫쭮�� ������ ����᪠ �� ����᪮� �ந�����⥫쭮�� ���
CALC_INJ_STAT MACRO
		mov	DPTR, #5F24h
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, #1
		movc	A, @A+DPTR
		mov	MD0, R0
		mov	MD4, B
		mov	MD1, R1
		mov	MD5, A
		nop
		nop
		nop
		nop
		mov	A, MD0
		mov	A, MD1
		mov	R0, MD2
		mov	R1, MD3
ENDM