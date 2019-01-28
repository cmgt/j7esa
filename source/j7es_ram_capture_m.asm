RAM_CAPTURE_SUPPORT		equ	1
RAM_CAPTURE_MODE		equ	0F832h
RAM_CAPTURE_HI_ADDR		equ	0FEh

CAPTURE_UOZ_XX_MODE		equ	1		;* УОЗ на ХХ
CAPTURE_RPM_XX_MODE		equ	2		;* Желаемые обороты ХХ
CAPTURE_GBC_MODE		equ	3		;* БЦН
CAPTURE_KGBC_MODE		equ	4		;* ПЦН по дросселю
CAPTURE_UOZ_MODE		equ	5		;* УОЗ по дросселю
CAPTURE_EXTR_GBC_MODE		equ	6		;* Экстраполирующий коэффициент пересчета GBC для обогащения
CAPTURE_FAZA_MODE		equ	7		;* Фаза впрыска
CAPTURE_AFR_MODE		equ	8		;* СС по дросселю
CAPTURE_LAUNCH_CUTOFF_MODE	equ	9		;* Обороты блокировки впрыска в режим Launch
CAPTURE_TINJ_MODE		equ	0Ah		;* Начальная коррекция времени впрыска ХХ
CAPTURE_UGBXX_MODE		equ	0Bh		;* Желаемое положение РХХ
CAPTURE_GAINXX_MODE		equ	0Ch		;* Жесткость регулятора частоты вращения
CAPTURE_KTWATUOZ_MODE		equ	0Dh		; Коррекция УОЗ по Тож
CAPTURE_KTAIRUOZ_MODE		equ	0Eh		; Коррекция УОЗ по Тв
CAPTURE_DUTY_RXX_MODE		equ	0Fh		;* Прямая характеристика РХХ
;CAPTURE_INVERS_DUTY_RXX_MODE	equ	10h		; - Обратная характеристика РХХ
CAPTURE_AFR_DAD_MODE		equ	11h		;* СС по давлению
CAPTURE_UOZ_DAD_MODE		equ	12h		;* УОЗ по давлению
CAPTURE_KGBC_DAD_MODE		equ	13h		;* ПЦН по давлению
CAPTURE_WGDC_MODE		equ	14h		;* Базовый duty (WGDC)
CAPTURE_PROP_K_MODE		equ	15h		;* Пропорциональный коэффициент
CAPTURE_DIF_K_MODE		equ	16h		;* Диференциальный коэффициент




TEST_RAM_MODE MACRO GOTO_LABLE, MODE
		mov	DPTR, #RAM_CAPTURE_MODE
		movx	A, @DPTR
		xrl	A, #MODE
		jnz	GOTO_LABLE
		mov	DPH, #RAM_CAPTURE_HI_ADDR
ENDM

; ADDRESS - базовый адрес калибровки
; INDEX - переменная со смещением
; MODE - capture mode номер таблицы RAM
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

; ADDRESS - базовый адрес калибровки
; ACC - смещение
; MODE - capture mode номер таблицы RAM
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

; ADDRESS - базовый адрес калибровки
; MODE - capture mode номер таблицы RAM
; R2 - целая часть
; R3 - остаток
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

; ADDRESS - базовый адрес калибровки
; MODE - capture mode номер таблицы RAM
; R2 - индекс
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

; ADDRESS - базовый адрес калибровки
; MODE - capture mode номер таблицы RAM
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