; =============== S U B	R O U T	I N E =======================================
CALC_DAD_ENGINE_STOP:
		mov	DPTR, #0F80Ch
		movx	A, @DPTR
		mov	B, #4
		mul	AB
		mov	R2, A
		mov	R3, B
		jmp	code_EBF8
; End of function code_EB96

; =============== S U B	R O U T	I N E =======================================
CALC_DAD_VALUE:
		mov	C, RAM_23.6
		orl	C, RAM_24.6
		jnc	code_EBC3
		
		mov	A, THR_CODE
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		movc	A, @A+DPTR
		mov	R3, A
		mov	R2, RPM_RT
		mov	DPTR, #0A1B1h	; Имитатор давления при отказе ДАД | Абсолютное давление, кПа*10 - Обороты коленвала, об/мин - Положение дросселя,%
		lcall	GET_3D_VALUE
		mov	B, #64h
		mul	AB
		mov	R0, A
		mov	R1, B
		sjmp	code_EC2C
; ---------------------------------------------------------------------------

code_EBC3:
		mov	A, RAM_33
		jnz	code_EBC8
		ret
; ---------------------------------------------------------------------------

code_EBC8:
		mov	B, #40h
		mul	AB
		mov	MD0, RAM_34
		mov	MD1, RAM_35
		mov	MD2, RAM_7F
		mov	MD3, #0
		mov	MD4, A
		mov	MD5, B
		nop
		nop
		nop
		nop
		nop
		nop
		mov	R2, MD0	
		mov	R3, MD1	
		mov	A, MD2
		mov	B, MD3
		mov	B, MD4
		mov	B, MD5
		jz	code_EBF8
		mov	R2, #0FFh
		mov	R3, #0FFh

code_EBF8:
		mov	DPTR, #609Ah	; Смещение характеристики ДАД |	вольт
		clr	A
		movc	A, @A+DPTR
		mov	R0, A
		mov	A, #1
		movc	A, @A+DPTR
		mov	R1, A
		mov	A, R0
		add	A, R2
		mov	R2, A
		mov	A, R1
		addc	A, R3
		mov	R3, A
		mov	DPTR, #6098h	; Hаклон характеристики	ДАД | кПа/вольт
		clr	A
		movc	A, @A+DPTR
		mov	R0, A
		mov	A, #1
		movc	A, @A+DPTR
		mov	R1, A
		mov	MD0, R2	
		mov	MD4, R0
		mov	MD1, R3	
		mov	MD5, R1	
		nop
		nop
		nop
		nop
		mov	A, MD0
		mov	R0, MD1	
		mov	R1, MD2	
		mov	A, MD3
		jz	code_EC2C
		mov	R0, #0FFh
		mov	R1, #0FFh

code_EC2C:
		
		mov	PRESS_LO, R0
		mov	PRESS_HI, R1
		
		mov	DPTR, #0F876h		; давление в диагностике
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
; ------- фильтр		
		mov	DPTR, #60E1h		; Коэффициент фильтра давления
		clr	A
		movc	A, @A+DPTR
		mov	B, A

		mov	DPTR, #0F896h		; фильтрованное давление
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		
		lcall	SUB_R0R1_R2R3
		lcall	MUL_ABSR0R1_B
		lcall	ADD_R0R1_R2R3
		
		mov	A, R1
		movx	@DPTR, A
		dec	DPL
		mov	A, R0
		movx	@DPTR, A	
; -------		
		
		mov	MD0, PRESS_LO
		mov	MD4, #3		
		mov	MD1, PRESS_HI
		mov	MD5, #0	
		nop
		nop
		nop
		nop
		mov	R0, MD0	
		mov	R1, MD1	
		mov	R2, MD2	
		mov	R3, MD3		
		nop
		mov	MD0, R0	
		mov	MD1, R1	
		mov	MD2, R2		
		mov	MD3, R3	
		mov	MD4, #5	
		mov	MD5, #0	
		nop
		nop
		nop
		nop
		nop
		nop
		mov	R0, MD0	
		mov	R1, MD1	
		mov	A, MD2	
		mov	A, MD3	
		mov	A, MD4	
		mov	A, MD5	
		mov	DPTR, #5EF2h	; Минимум для квантования давления | кПа
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	A, #1
		movc	A, @A+DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		clr	A
		jc	code_ED68
		mov	DPTR, #5EF4h	; Диапазон квантования давления	| кПа
		clr	A
		movc	A, @A+DPTR
		mov	B, A	
		lcall	DIV_R0R1_8
		lcall	MUL_R0R1_B
		mov	A, R1
		jnz	code_ED66
		mov	A, R0
		cjne	A, #0F0h, code_ED64 

code_ED64:
		jc	code_ED68

code_ED66:				
		mov	A, #0F0h 

code_ED68:				
		
		mov	DPTR, #0F89Ah
		movx	@DPTR, A
		
		add	A, #8
		anl	A, #0F0h
		mov	B, A
		mov	A, RPM_RT
		add	A, #8
		anl	A, #0F0h
		swap	A
		add	A, B
		mov	DPTR, #0F88Dh
		movx	@DPTR, A		
				
		ret

; =============== S U B	R O U T	I N E =======================================
code_ED6D:		
		
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #84E1h	; Пересчет ТОЖ для модели Тзаряда | Температура, град.С	- Температура, град.С
		lcall	GET_2D_INTERPOLATION
		mov	DPTR, #0F87Bh
		movx	@DPTR, A
		ret
; End of function code_ED6D

; ---------------------------------------------------------------------------
CALC_DAD_GBC:
		mov	DPTR, #5F02h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.6, code_EC62

		mov	DPTR, #0F98Ch	; ДПДЗ, %
		movx	A, @DPTR
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		movc	A, @A+DPTR
		mov	R3, A
		mov	DPTR, #6613h	; Коэффициент выбора Тзаряда | Коэффициент - Обороты коленвала,	об/мин - Положение дросселя,%
		sjmp	code_EC64

code_EC62:
		mov	DPTR, #0F89Ah	; PRESS_RT
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #9AA7h	; Коэффициент выбора Тз по давлению	
		
code_EC64:		
		mov	R2, RPM_RT
		lcall	GET_3D_VALUE
		mov	B, A
		mov	DPTR, #0F87Bh
		movx	A, @DPTR
		mov	R0, A
		
		mov	DPTR, #0F93Bh	; ТВ
		movx	A, @DPTR
		clr	C
		subb	A, R0
		jnc	code_EC65
		mov	R1, A
		clr	A
		clr	C
		subb	A, R1
		mul	AB
		clr	A
		clr	C
		subb	A, B
		sjmp	code_EC68

code_EC65:
		mul	AB
		mov	A, B

code_EC68:
		add	A, R0
		mov	R0, A
		
; ---------------------------------------------------------------------------		
		mov	DPTR, #5F07h	; Коэф. фильтра Тзаряда
		clr	A
		movc	A, @A+DPTR
		mov	B, A		
		;mov	B, #1Ah
		
		mov	DPTR, #0F99Bh
		movx	A, @DPTR
		xch	A, R0
		clr	C
		subb	A, R0
		jnc	code_EC81
		mov	R1, A
		clr	A
		clr	C
		subb	A, R1
		mul	AB
		clr	A
		clr	C
		subb	A, B
		sjmp	code_EC84

code_EC81:
		mul	AB
		mov	A, B

code_EC84:
		add	A, R0
		movx	@DPTR, A
		
		mov	DPTR, #0F99Ah
		movx	@DPTR, A		
		push	ACC
; ---------------------------------------------------------------------------		

		mov	DPTR, #60ADh	; Цилиндровый объем двигателя |	см.куб.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, #1
		movc	A, @A+DPTR
		mov	MD0, PRESS_LO	
		mov	MD4, B	
		mov	MD1, PRESS_HI
		mov	MD5, A	
		nop
		nop
		nop
		nop
		mov	A, MD0	
		mov	A, MD1	
		mov	R0, MD2	
		mov	R1, MD3	
		
; ---------------------------------------------------------------------------

		pop	ACC
		mov	DPTR, #8C27h	; Коррекция ЦН по Тзаряда
		lcall	code_AED3
		mov	DPTR, #0F979h
		movx	@DPTR, A
		mov	B, A
		lcall	MUL_R0R1_2
		lcall	MUL_R0R1_B		

		mov	DPTR, #0F99Ch
		mov	A, R0
		movx	@DPTR, A
		inc	DPL	
		mov	A, R1
		movx	@DPTR, A

; ---------------------------------------------------------------------------

		mov	DPTR, #0F98Ch
		movx	A, @DPTR
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		movc	A, @A+DPTR
		push	ACC
		
		mov	R3, A
		mov	R2, RPM_RT

		; Поправка циклового наполнения по дросселю
		
		mov	DPTR, #5F02h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.3, code_EC85
		
		mov	DPTR, #7CF7h	
		lcall	GET_3D_VALUE_32x16		; ПЦН 32х16
		
		sjmp	code_EC86
		
code_EC85:		
		GET_3D_RAM_WITH_INTERPOLATION 7CF7h, CAPTURE_KGBC_MODE

code_EC86:
		mov	DPTR, #0F945h
		movx	@DPTR, A

		mov	DPTR, #0F89Ah	; PRESS_RT
		movx	A, @DPTR
		mov	R3, A
		mov	R2, RPM_RT
		
		; Поправка циклового наполнения по давлению
		
		mov	DPTR, #5F02h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.4, code_EC90		
		
		mov	DPTR, #9294h	
		lcall	GET_3D_VALUE_32x32		; ПЦН 32х32
		
		sjmp	code_EC91
		
code_EC90:		
		GET_3D_RAM_WITH_INTERPOLATION 9294h, CAPTURE_KGBC_DAD_MODE

code_EC91:
		mov	DPTR, #0F8B9h
		movx	@DPTR, A
		
		pop	ACC		;Вернуть положение дросселя
		mov	R3, A
		mov	R2, PSM
		mov	DPTR, #76EFh 	;Добавка по шагам РХХ
		lcall	GET_3D_VALUE
		push	ACC
		
		mov	DPTR, #0F99Ch
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		
		movx	A, @DPTR
		mov	R1, A
		
		lcall	MUL_R0R1_2
		mov	DPTR, #0F945h
		movx	A, @DPTR
		mov	B, A
		lcall	MUL_R0R1_B
		
		lcall	MUL_R0R1_2
		mov	DPTR, #0F8B9h
		movx	A, @DPTR
		mov	B, A
		lcall	MUL_R0R1_B		
		
		mov	DPTR, #0F887h	; ТОЖ
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #866Fh	; Коррекция ЦН по ТОЖ
		lcall	GET_2D_INTERPOLATION
		mov	B, A
		lcall	MUL_R0R1_B
		
		pop	ACC
		mov	B, #4
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B
		mov	R1, A
		
		mov	DPTR, #0F869h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------		
		mov	DPTR, #5F09h	; Коэффициент фильтра для ХХ |
		jb	RAM_2B.1, code_16AD
		mov	DPTR, #5F08h	; Коэффициент фильтра |
code_16AD:				
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F82Ch
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		lcall	MUL_ABSR0R1_B
		lcall	ADD_R0R1_R2R3
		mov	A, R1
		movx	@DPTR, A
		dec	DPL
		mov	A, R0
		movx	@DPTR, A


		mov	DPTR, #0F82Eh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------		
		
		mov	A, RPM
		jnz	code_16DD
		mov	R0, #0
		mov	R1, #0
		sjmp	code_171B

code_16DD:
		mov	MD0, #0E8h
		mov	MD4, R0
		mov	MD1, #3
		mov	MD5, R1
		nop
		nop
		nop
		nop
		mov	R0, MD0
		mov	R1, MD1
		mov	R2, MD2
		mov	R3, MD3
		clr	IEN0.7
		mov	A, RAM_38
		mov	B, RAM_39
		setb	IEN0.7
		mov	MD0, R0
		mov	MD1, R1
		mov	MD2, R2
		mov	MD3, R3
		mov	MD4, A
		mov	MD5, B
		nop
		nop
		nop
		nop
		nop
		nop
		mov	R0, MD0	
		mov	R1, MD1	
		mov	A, MD2	
		mov	A, MD3	
		mov	A, MD4	
		mov	A, MD5	

code_171B:
		mov	DPTR, #0F808h	; МРВ
		mov	A, R0
		movx	@DPTR, A
		inc	DPL	
		mov	A, R1
		movx	@DPTR, A
		
		anl	A, #0FEh
		jz	code_172C
		mov	A, #0FFh
		sjmp	code_1730

code_172C:			
		mov	A, R1
		rrc	A
		mov	A, R0
		rrc	A

code_1730:				
		mov	DPTR, #0FF48h
		movx	@DPTR, A
		ret
;----------------------------------------------------------------------------

;======== Ускор. насос по ДАД
CALC_DAD_ADD_FIELD:
		mov	DPTR, #0F983h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		
		movx	A, @DPTR
		mov	R3, A
		clr	C
		mov	A, PRESS_LO
		subb	A, R2
		mov	R2, A
		mov	A, PRESS_HI
		subb	A, R3
		mov	R3, A
		jnc	code_EDDF
		clr	C
		mov	A, #0FFh
		subb	A, R2
		mov	R2, A
		mov	A, #0FFh
		subb	A, R3
		mov	R3, A
		mov	DPTR, #0F983h
		mov	A, PRESS_LO
		movx	@DPTR, A
		inc	DPL
		mov	A, PRESS_HI
		movx	@DPTR, A
		clr	A
		mov	DPTR, #5F1Dh
		movc	A, @A+DPTR
		mov	R0, A
		mov		A, #1
		movc	A, @A+DPTR
		mov	R1, A
		clr	C
		mov	A, R2
		subb	A, R0
		mov	A, R3
		subb	A, R1
		jnc	code_EDD6
		mov	DPTR, #0F981h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		clr	A
		mov	DPTR, #5F1Fh
		movc	A, @A+DPTR
		mov	B, A
		lcall	MUL_R0R1_B
		mov	DPTR, #0F981h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		ret
; ---------------------------------------------------------------------------

code_EDD6:
		clr	A
		mov	DPTR, #0F981h
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		ret
; ---------------------------------------------------------------------------

code_EDDF:
		mov	DPTR, #0F983h
		mov	A, PRESS_LO
		movx	@DPTR, A
		inc	DPL
		mov	A, PRESS_HI
		movx	@DPTR, A
		clr	A
		mov	DPTR, #5F20h
		movc	A, @A+DPTR
		mov	R0, A
		mov	A, #1
		movc	A, @A+DPTR
		mov	R1, A
		clr	C
		mov	A, R2
		subb	A, R0
		mov	A, R3
		subb	A, R1
		jc	code_EE39
		mov	A, R3
		mov	R1, A
		mov	A, R2
		mov	R0, A
		mov	DPTR, #8508h	; Экстраполирующий коэффициент пересчета давления, X -Температура, град.С, F - Коэффициент коррекции
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A
		lcall	MUL_R0R1_B
		mov	A, RPM_RT_32	; Коэффициент топлива по оборотам X - Обороты коленвала, об/мин F - Коэффициент коррекции
		mov	DPTR, #0A560h
		movc	A, @A+DPTR
		mov	B, A
		lcall	MUL_R0R1_B
		mov	DPTR, #0F89Ah	; Квантованное давление
		movx	A, @DPTR
		add	A, #4
		swap	A
		rl	A
		anl	A, #1Fh
		mov	DPTR, #0A580h	; Коэффициент топлива по давлению X - Абсолютное давление, кПа*10 F - Коэффициент коррекции
		movc	A, @A+DPTR
		mov	B, A
		lcall	MUL_R0R1_B
		mov	DPTR, #0F981h	; Доп. топливо по давлению
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		clr	C
		mov	A, R0
		subb	A, R2
		mov	A, R1
		subb	A, R3
		jc	code_EE42
		sjmp	code_EE55
; ---------------------------------------------------------------------------

code_EE39:
		mov	A, RAM_41
		jnz	code_EE5E
		mov	DPTR, #5F1Fh
		sjmp	code_EE45
; ---------------------------------------------------------------------------

code_EE42:
		mov	DPTR, #5F22h

code_EE45:
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F981h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		lcall	MUL_R0R1_B

code_EE55:
		mov	DPTR, #0F981h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A

code_EE5E:
		ret
		
; =============== S U B	R O U T	I N E =======================================


DIAG_DAD:
		;jb	RAM_2A.3, code_EE95
		
		mov	DPTR, #0F80Ch
		movx	A, @DPTR
		mov	R0, A
		mov	DPTR, #5EF0h	; Мин. напряжение АЦП ДАД для диагностики | В
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, R0
		jc	code_EE7E
		
		mov	DPTR, #0F99Eh
		movx	A, @DPTR
		jz	code_EE79
		dec	A
		movx	@DPTR, A
		ret
; ---------------------------------------------------------------------------

code_EE79:
		setb	RAM_23.6
		clr	RAM_24.6
		ret
; ---------------------------------------------------------------------------

code_EE7E:
		mov	DPTR, #5EF1h	; Макс.	напряжение АЦП ДАД для диагностики | B
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, R0
		jnc	code_EE95
		
		mov	DPTR, #0F99Eh
		movx	A, @DPTR
		jz	code_EE90
		dec	A
		movx	@DPTR, A
		ret
; ---------------------------------------------------------------------------

code_EE90:
		clr	RAM_23.6
		setb	RAM_24.6
		ret
; ---------------------------------------------------------------------------

code_EE95:
		mov	DPTR, #0F99Eh
		mov	A, #4
		movx	@DPTR, A
		clr	RAM_23.6
		clr	RAM_24.6
		ret
; End of function code_EE5F


; =============== S U B	R O U T	I N E =======================================