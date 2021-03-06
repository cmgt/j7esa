RAM_CAPTURE_SUPPORT		equ	1
RAM_CAPTURE_MODE		equ	0F832h
RAM_CAPTURE_HI_ADDR		equ	0FEh

CAPTURE_UOZ_XX_MODE		equ	1		;* ��� �� ��
CAPTURE_RPM_XX_MODE		equ	2		;* �������� ������� ��
CAPTURE_GBC_MODE		equ	3		;* ���
CAPTURE_KGBC_MODE		equ	4		;* ��� �� ��������
CAPTURE_UOZ_MODE		equ	5		;* ��� �� ��������
CAPTURE_EXTR_GBC_MODE		equ	6		;* ���������������� ����������� ��������� GBC ��� ����������
CAPTURE_FAZA_MODE		equ	7		;* ���� �������
CAPTURE_AFR_MODE		equ	8		;* �� �� ��������
CAPTURE_LAUNCH_CUTOFF_MODE	equ	9		;* ������� ���������� ������� � ����� Launch
CAPTURE_TINJ_MODE		equ	0Ah		;* ��������� ��������� ������� ������� ��
CAPTURE_UGBXX_MODE		equ	0Bh		;* �������� ��������� ���
CAPTURE_GAINXX_MODE		equ	0Ch		;* ��������� ���������� ������� ��������
CAPTURE_KTWATUOZ_MODE		equ	0Dh		; ��������� ��� �� ���
CAPTURE_KTAIRUOZ_MODE		equ	0Eh		; ��������� ��� �� ��
CAPTURE_DUTY_RXX_MODE		equ	0Fh		;* ������ �������������� ���
;CAPTURE_INVERS_DUTY_RXX_MODE	equ	10h		; - �������� �������������� ���
CAPTURE_AFR_DAD_MODE		equ	11h		;* �� �� ��������
CAPTURE_UOZ_DAD_MODE		equ	12h		;* ��� �� ��������
CAPTURE_KGBC_DAD_MODE		equ	13h		;* ��� �� ��������
CAPTURE_WGDC_MODE		equ	14h		;* ������� duty (WGDC)
CAPTURE_PROP_K_MODE		equ	15h		;* ���������������� �����������
CAPTURE_DIF_K_MODE		equ	16h		;* ��������������� �����������




TEST_RAM_MODE MACRO GOTO_LABLE, MODE
		mov	DPTR, #RAM_CAPTURE_MODE
		movx	A, @DPTR
		xrl	A, #MODE
		jnz	GOTO_LABLE
		mov	DPH, #RAM_CAPTURE_HI_ADDR
ENDM

; ADDRESS - ������� ����� ����������
; INDEX - ���������� �� ���������
; MODE - capture mode ����� ������� RAM
GET_RAM_BY_INDEX MACRO	ADDRESS, INDEX, MODE
LOCAL GET_ROM_VALUE, F_EXIT
	IF RAM_CAPTURE_SUPPORT
		TEST_RAM_MODE GET_ROM_VALUE, MODE
		mov	DPL, INDEX
		movx	A, @DPTR
		sjmp	F_EXIT
	ENDIF
GET_ROM_VALUE:
		mov	DPTR, #ADDRESS
		mov	A, INDEX
		movc	A, @A+DPTR
F_EXIT:
ENDM

; ADDRESS - ������� ����� ����������
; ACC - ��������
; MODE - capture mode ����� ������� RAM
; GET_RAM_BY_ACC MACRO	ADDRESS, MODE
; LOCAL GET_ROM_VALUE, F_EXIT
; IF	RAM_CAPTURE_SUPPORT
		; TEST_RAM_MODE GET_ROM_VALUE, MODE
		; mov		DPL, A
		; movx	A, @DPTR
		; sjmp		F_EXIT
; ENDIF
; GET_ROM_VALUE:
		; mov		DPTR, #ADDRESS
		; movc	A, @A+DPTR
; F_EXIT:
; ENDM

; ADDRESS - ������� ����� ����������
; MODE - capture mode ����� ������� RAM
; R2 - ����� �����
; R3 - �������
GET_2D_RAM_WITH_INTERPOLATION MACRO	ADDRESS, MODE
LOCAL GET_ROM_VALUE, F_EXIT
IF	RAM_CAPTURE_SUPPORT
		TEST_RAM_MODE GET_ROM_VALUE, MODE
		call	GET_2D_RAM_INTERPOLATION
		sjmp	F_EXIT
ENDIF
GET_ROM_VALUE:
		mov	DPTR, #ADDRESS
		call	GET_2D_INTERPOLATION
F_EXIT:
ENDM

; ADDRESS - ������� ����� ����������
; MODE - capture mode ����� ������� RAM
; R2 - ������
GET_2D_RAM_VALUE_BY_R2 MACRO	ADDRESS, MODE
LOCAL GET_ROM_VALUE, F_EXIT
IF	RAM_CAPTURE_SUPPORT
		TEST_RAM_MODE GET_ROM_VALUE, MODE
		call	GET_2D_RAM_VALUE
		sjmp	F_EXIT
ENDIF
GET_ROM_VALUE:
		mov	DPTR, #ADDRESS
		call	GET_2D_VALUE
F_EXIT:
ENDM

; ADDRESS - ������� ����� ����������
; MODE - capture mode ����� ������� RAM
; R2 - index1
; R3 - index2
GET_3D_RAM_WITH_INTERPOLATION MACRO	ADDRESS, MODE
LOCAL GET_ROM_VALUE, F_EXIT
	IF RAM_CAPTURE_SUPPORT
		TEST_RAM_MODE GET_ROM_VALUE, MODE
		call	GET_3D_RAM_VALUE
		sjmp	F_EXIT
	ENDIF
GET_ROM_VALUE:
		mov	DPTR, #ADDRESS
		call	GET_3D_VALUE
F_EXIT:
ENDM