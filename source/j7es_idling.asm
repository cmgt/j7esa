; =============== S U B	R O U T	I N E =======================================


REG_IDLE:
		jb	RAM_2C.1, code_A82C
		clr	A
		mov	DPTR, #0F8A0h
		movx	@DPTR, A
		mov	DPTR, #0F8A1h
		movx	@DPTR, A
		mov	DPTR, #0F84Eh
		movx	@DPTR, A
		sjmp	code_A88F
; ---------------------------------------------------------------------------

code_A82C:
		mov	DPTR, #0F849h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F84Ah
		movx	A, @DPTR
		clr	C
		subb	A, B
		jnc	code_A841
		mov	A, B
		mov	DPTR, #0F84Ah
		movx	@DPTR, A

code_A841:
		mov	DPTR, #0F847h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F84Ah
		movx	A, @DPTR
		clr	C
		subb	A, B
		jc	code_A860
		mov	DPTR, #0F948h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #6913h	; Шаг уменьшения уставки оборотов 1 | (об/мин)/сек - скорость автомобиля, км/час
		mov	A, B
		movc	A, @A+DPTR
		mov	B, A
		sjmp	code_A86E
; ---------------------------------------------------------------------------

code_A860:
		mov	DPTR, #0F948h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #6933h	; Шаг уменьшения уставки оборотов 2 | (об/мин)/сек - скорость автомобиля, км/час
		mov	A, B
		movc	A, @A+DPTR
		mov	B, A

code_A86E:
		mov	DPTR, #0F84Eh
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		clr	C
		subb	A, B
		jc	code_A88F
		clr	A
		movx	@DPTR, A
		mov	DPTR, #0F849h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F84Ah
		movx	A, @DPTR
		dec	A
		movx	@DPTR, A
		clr	C
		subb	A, B
		jnc	code_A88F
		mov	A, B
		movx	@DPTR, A

code_A88F:

		mov	DPTR, #0F84Ah
		movx	A, @DPTR
		clr	C
		subb	A, RPM_XX
		jc	code_A89F
		jnb	ACC.7, code_A8A6
		mov	A, #7Fh
		sjmp	code_A8A6
; ---------------------------------------------------------------------------

code_A89F:
		jb	ACC.7, code_A8A6
		mov	A, #80h
		sjmp	code_A8A6

code_A8A6:

		mov	DELTA_RPM_XX, A
		mov	DPTR, #5F69h	; Ошибка запрещающая регулирование | об/мин
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, DELTA_RPM_XX
		mov	R0, A
		lcall	ABS_ACC
		clr	C
		subb	A, B
		jnc	code_A8C5
		clr	A
		mov	DPTR, #0F8BCh
		movx	@DPTR, A
		mov	DPTR, #0F8BDh
		movx	@DPTR, A
		sjmp	code_A8F2
; ---------------------------------------------------------------------------

code_A8C5:
		mov	DPTR, #0F9D4h
		movx	A, @DPTR
		cjne	A, #0Fh, code_A8CC

code_A8CC:
		jc	code_A8D0
		mov	A, #0Fh

code_A8D0:
		mov	B, A
		
		;mov	DPTR, #8A22h	; Пропорциональный коэффициент | % - Время после пуска, сек
		;mov	A, B
		;movc	A, @A+DPTR
		GET_RAM_BY_INDEX 8A22h, B, CAPTURE_PROP_K_MODE
		
		mov	DPTR, #0F8BDh
		movx	@DPTR, A
		mov	DPTR, #0F847h
		movx	A, @DPTR
		cjne	A, RPM_XX, code_A8E3

code_A8E3:
		jnc	code_A8E8
		clr	A
		sjmp	code_A8EE
; ---------------------------------------------------------------------------

code_A8E8:
		;mov	DPTR, #8A12h	; Диференциальный коэффициент |	% - Время после	пуска, сек
		;mov	A, B
		;movc	A, @A+DPTR
		GET_RAM_BY_INDEX 8A12h, B, CAPTURE_DIF_K_MODE

code_A8EE:
		mov	DPTR, #0F8BCh
		movx	@DPTR, A

code_A8F2:
		jb	RAM_2C.1, code_A90C
		mov	A, DELTA_RPM_XX
		mov	DPTR, #0F84Ch
		movx	@DPTR, A
		mov	A, USSM
		mov	R0, A
		mov	R1, #0
		lcall	MUL_R0R1_16
		mov	DPTR, #0F845h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A

code_A90C:
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_A97D
		
		lcall CALC_DUOZ_REGXX
		
		mov	B, A
		jnb	RAM_2D.5, code_A977
		mov	DPTR, #5F8Dh	; Температура активации	УОЗ при	движении | град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_A96D

code_A96D:
		jnc	code_A977
		mov	DPTR, #780Fh	; УОЗ на ХХ при	движении | УОЗ,	гр.п.к.в. - Цикловое наполнение, мг/цикл
		mov	A, GBC_RT_32
		movc	A, @A+DPTR
		sjmp	code_A979
; ---------------------------------------------------------------------------

code_A977:

		mov	A, UOZXX_2

code_A979:
		add	A, B
		mov	B, A
		mov	DPTR, #0FF60h
		movx	A, @DPTR
		add	A, B
		mov	UOZXX_1, A

code_A97D:
		mov	A, DEV_FLAGS
		anl	A, #20h
		jz	code_A984
		ret
; ---------------------------------------------------------------------------

code_A984:
		mov	DPTR, #0F84Ch
		movx	A, @DPTR
		mov	B, A
		mov	A, DELTA_RPM_XX
		clr	C
		subb	A, B
		mov	B, A
		mov	DPTR, #0F84Ch
		movx	A, @DPTR
		mov	C, ACC.7
		mov	A, DELTA_RPM_XX
		anl	C, ACC.7
		jc	code_A9C1
		mov	DPTR, #0F84Ch
		movx	A, @DPTR
		mov	C, ACC.7
		cpl	C
		mov	A, DELTA_RPM_XX
		anl	C, /ACC.7
		jc	code_A9C1
		mov	A, DELTA_RPM_XX
		jb	ACC.7, code_A9B9
		mov	A, B
		jnb	ACC.7, code_A9C1
		mov	B, #7Fh
		sjmp	code_A9C1
; ---------------------------------------------------------------------------

code_A9B9:
		mov	A, B
		jb	ACC.7, code_A9C1
		mov	B, #80h

code_A9C1:

		mov	A, DELTA_RPM_XX
		mov	DPTR, #0F84Ch
		movx	@DPTR, A
		mov	DPTR, #60F7h	; Температура холодного пуска для регулирования	| град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_A9CF

code_A9CF:
		jc	code_A9DC
		mov	A, DELTA_RPM_XX
		jb	ACC.7, code_A9DC
		jnb	B.7, code_A9DC
		mov	B, #0

code_A9DC:

		mov	DPTR, #0F8BCh
		movx	A, @DPTR
		mov	R0, A
		clr	A
		jnb	B.7, code_A9E7
		clr	C
		subb	A, R0

code_A9E7:
		mov	R1, A
		mov	A, R0
		mul	AB
		mov	R2, A
		mov	A, B
		add	A, R1
		mov	R3, A
		mov	DPTR, #60EBh	; Ограничение ошибки П регулятора | об/мин
		clr	A
		movc	A, @A+DPTR
		mov	R1, A
		cpl	A
		inc	A
		mov	R0, A
		mov	A, DELTA_RPM_XX
		lcall	code_AD14
		mov	R0, A
		lcall	code_ADE2
		mov	DPTR, #0F8BDh
		movx	A, @DPTR
		mov	B, A
		lcall	MUL_ABSR0R1_B
		lcall	ADD_R0R1_R2R3
		mov	R2, B
		
		; Жесткость регулятора частоты вращения	| Коэффициент коррекции	- Обороты коленвала, об/мин - Цикловое наполнение,мг/цикл
		GET_RAM_BY_INDEX 700Bh, RPM_GBC_3D_RT, CAPTURE_GAINXX_MODE
		
		mov	B, A
		push	B
		lcall	MUL_ABSR0R1_B
		mov	DPTR, #0F8A1h
		movx	A, @DPTR
		add	A, B
		movx	@DPTR, A
		mov	A, R0
		addc	A, #0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		pop	B
		mov	A, R2
		mul	AB
		mov	R2, A
		mov	DPTR, #0F8A0h
		movx	A, @DPTR
		add	A, R2
		movx	@DPTR, A
		mov	DPTR, #0F8A1h
		movx	A, @DPTR
		addc	A, B
		movx	@DPTR, A
		mov	A, R0
		addc	A, #0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		
		
		mov	DPTR, #6084h	; Мин. расход воздуха (ограничение уставки) | кг/час
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0FF48h
		movx	A, @DPTR
		clr	C
		subb	A, B
		jnc	code_AA5A
		mov	A, R1
		jnb	ACC.7, code_AA5A
		ret
; ---------------------------------------------------------------------------

code_AA5A:

		mov	DPTR, #0F845h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		lcall	ADD_R0R1_R2R3
		mov	A, R1
		jnb	ACC.7, code_AA6E
		mov	R0, #0
		mov	R1, #0

code_AA6E:
		mov	DPTR, #6082h	; Максимальное положение РХХ | шаг
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #60F7h	; Температура холодного пуска для регулирования	| град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_AA7D

code_AA7D:
		jc	code_AA86
		mov	DPTR, #60F6h	; Максимальное положение РХХ холодного двигателя | шаг
		clr	A
		movc	A, @A+DPTR
		mov	B, A

code_AA86:
		mov	A, B
		swap	A
		anl	A, #0Fh
		mov	R3, A
		mov	A, B
		swap	A
		anl	A, #0F0h
		mov	R2, A
		lcall	MIN_R1R0_R3R2
		
		jnb	RAM_2D.6, code_AAA1
		mov	DPTR, #5FE2h		; Минимальное положение РХХ при кондиционировании | шаг.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		sjmp	code_AAB4
; ---------------------------------------------------------------------------

code_AAA1:
		jnb	RAM_2D.5, code_AAAD
		mov	DPTR, #60B3h		; Минимальное положение РХХ при	движении | шаг.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		sjmp	code_AAB4
; ---------------------------------------------------------------------------

code_AAAD:
		mov	DPTR, #5FA3h		; Минимальное положение РХХ | шаг.
		clr	A
		movc	A, @A+DPTR
		mov	B, A

code_AAB4:

		mov	A, B
		swap	A
		anl	A, #0Fh
		mov	R3, A
		mov	A, B
		swap	A
		anl	A, #0F0h
		mov	R2, A
		lcall	MAX_R1R0_R3R2
		
		mov	DPTR, #0F845h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		lcall	MUL_R0R1_16
		
		mov	A, R1
		mov	USSM, A
		
		mov	DPTR, #0FF43h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		ret
		
; End of function REG_SSM


; =============== S U B	R O U T	I N E =======================================


ADAPT_SSM:
		mov	A, DEV_FLAGS
		anl	A, #20h
		jz	code_AADA
		ret
; ---------------------------------------------------------------------------

code_AADA:
		jb	RAM_2D.5, code_AB08
		
		mov	DPTR, #0FF57h
		movx	A, @DPTR
		jnb	ACC.0, code_AAF6
		
		mov	A, DELTA_RPM_XX
		lcall	ABS_ACC
		mov	B, A
		
		mov	DPTR, #0A02Ah		; Ошибка оборотов сбрасывающая фильтр
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		cjne	A, B, code_AAF4
code_AAF4:	jc	code_AB08

code_AAF6:
		mov	DPTR, #0F84Ah		; Уставка оборотов ХХ
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F84Bh		; Уставка оборотов с прошлого цикла
		movx	A, @DPTR
		
		jnb	RAM_2C.1, code_AB08
		clr	C
		subb	A, B
		jz	code_AB18
		
; ------- сброс данных адаптации

code_AB08:

		mov	DPTR, #0F84Ah		; Уставка оборотов ХХ
		movx	A, @DPTR
		mov	DPTR, #0F84Bh		; Уставка оборотов с прошлого цикла
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F8BEh		; Счетчик задержки адаптации
		movx	@DPTR, A
		lcall	CLR_ADAPT_SSM
		
; -------

code_AB18:
		jnb	RAM_29.1, code_AB23
		
		mov	DPTR, #0F8BEh		; Счетчик задержки адаптации
		movx	A, @DPTR
		inc	A
		jz	code_AB23
		movx	@DPTR, A

; -------
code_AB23:

		mov	DPTR, #0FF48h		; Расход воздуха на ХХ
		movx	A, @DPTR
		mov	B, A
		
		mov	DPTR, #0F854h		; Сумма расхода воздуха за 128 циклов для адаптации
		movx	A, @DPTR
		add	A, B
		movx	@DPTR, A
		inc	DPL
		movx	A, @DPTR
		addc	A, #0
		movx	@DPTR, A
		
		mov	DPTR, #0F851h		; Счетчик 128 циклов адаптации
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		clr	C
		subb	A, #80h
		jz	code_AB42
		ret
; ---------------------------------------------------------------------------

code_AB42:
		mov	A, DEV_FLAGS
		anl	A, #20h
		jz	code_AB49
		ret
; ---------------------------------------------------------------------------

code_AB49:
		mov	DPTR, #60EFh		; Задержка адаптации РХХ горячего двигателя | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		
		mov	DPTR, #60F7h		; Температура холодного	пуска для регулирования	| град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_AB58
code_AB58:	jc	code_AB61

		mov	DPTR, #60F5h		; Задержка адаптации РХХ холодного двигателя | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A

code_AB61:
		mov	DPTR, #0F8BEh		; Счетчик задержки адаптации
		movx	A, @DPTR
		cjne	A, B, code_AB68

code_AB68:
		jnc	code_AB6D
		ljmp	CLR_ADAPT_SSM
; ---------------------------------------------------------------------------

code_AB6D:
		mov	DPTR, #0F854h		; Сумма расхода воздуха за 128 циклов для адаптации
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		lcall	MUL_R0R1_2
		mov	A, R1
		mov	R2, A			; *2/256 - среднее
		
		lcall	UGB_to_USSM
		mov	B, A
		
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.6, code_ABB4
		
		clr	EAL
		mov	USSM, B
		mov	PSM, B
		setb	EAL
		
;code_AB6C:
		mov	DPTR, #0FF43h		; Положение РХХ * 256
		clr	A
		movx	@DPTR, A
		inc	DPL
		mov	A, B
		movx	@DPTR, A

		mov	DPTR, #0F845h		; Положение РРХ * 16
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		mov	A, B
		anl	A, #0F0h
		swap	A
		mov	R1, A
		
		mov	A, B
		anl	A, #0Fh
		swap	A
		mov	B, A
		mov	A, R0
		anl	A, #0Fh
		add	A, B
		mov	R0, A
		
		mov	DPTR, #0F845h		; Положение РРХ * 16
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A

; ---------------------------------------------------------------------------
; ошибки РХХ

code_ABB4:
		mov	DPTR, #608Ah	; Температура разрешения отключения топлива | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, TWAT
		cjne	A, B, code_ABC0

code_ABC0:
		jc	code_ABE3
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		jnz	code_ABE3
		mov	A, DELTA_RPM_XX
		lcall	ABS_ACC
		cjne	A, #14h, code_ABD0

code_ABD0:
		jc	code_ABE3
		mov	DPTR, #0F986h
		movx	A, @DPTR
		inc	A
		jz	code_ABDA
		movx	@DPTR, A

code_ABDA:
		cjne	A, #0Ch, code_ABDD

code_ABDD:
		jc	code_ABEA
		setb	RAM_25.7
		sjmp	code_ABEA

code_ABE3:

		clr	RAM_25.7
		clr	A
		mov	DPTR, #0F986h
		movx	@DPTR, A

; ---------------------------------------------------------------------------
code_ABEA:

		mov	DPTR, #0F847h
		movx	A, @DPTR
		mov	B, A
		mov	A, RPM_XX
		clr	C
		subb	A, B
		jnc	CLR_ADAPT_SSM
		mov	DPTR, #0FF57h
		movx	A, @DPTR
		setb	ACC.0
		movx	@DPTR, A
		clr	RAM_2C.2
		clr	RAM_22.6
		
; ---------------------------------------------------------------------------
CLR_ADAPT_SSM:

		clr	A
		mov	DPTR, #0F851h
		mov	R1, #5

code_AC08:
		movx	@DPTR, A
		inc	DPL
		djnz	R1, code_AC08
		ret
; End of function ADAPT_SSM

; =============== S U B	R O U T	I N E =======================================

CALC_USSM:

		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		mov	R3, A
		mov	R2, RPM_RT
		
		; Желаемое положение РХХ, шаги | Обороты коленвала,	об/мин - Положение дросселя,%
		GET_3D_RAM_WITH_INTERPOLATION 9E5Ch, CAPTURE_UGBXX_MODE
		mov	B, A
		
		mov	DPTR, #75A2h	; Поправка положения РХХ по ТОЖ., шаги |  Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		add	A, B
		mov	B, A
		
		mov	DPTR, #6082h	; Максимальное положение РХХ | шаг
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_B881
code_B881:	jnc	code_B885
		mov	B, A
code_B885:
		mov	R2, B	
		
		mov	DPTR, #0F952h	; Индекс по скорости/оборотам
		movx	A, @DPTR
		
		mov	DPTR, #8A0Ch	; Коэффициент фильтра |  - Индекс SPEED/RPM
		movc	A, @A+DPTR
		mov	R4, A
		cpl	A
		inc	A
		mov	B, A
		
		mov	DPTR, #0FF43h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		lcall	MUL_R0R1_B
		
		mov	B, R4
		mov	A, R2
		mul	AB
		mov	R2, A
		mov	R3, B
		
		lcall	ADD_R0R1_R2R3
		
		mov	DPTR, #0FF43h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		mov	A, DEV_FLAGS
		jb	ACC.5, code_B888		
		
		mov	USSM, R1
code_B888:		
		ret
; End of function CALC_USSM


; =============== S U B	R O U T	I N E =======================================


DEC_USSM:

		mov	DPTR, #8E0Ah	; Коррекция по оборотам, шаги | Обороты, об/мин
		mov	R2, RPM_RT
		lcall	GET_2D_VALUE
		mov	B, A
		
		mov	DPTR, #6FE4h	; Минимальное положение РХХ, шагов | Температура,	град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		clr	C
		subb	A, B
		jnc	code_B8CC
		clr	A
code_B8CC:
		mov	R0, A
		
		mov	DPTR, #6082h	; Максимальное положение РХХ | шаг
		clr	A
		movc	A, @A+DPTR
		mov	R1, A
		
		mov	DPTR, #0F952h	; Индекс по скорости/оборотам
		movx	A, @DPTR
		
		mov	DPTR, #75D9h	; Период уменьшения уставки РХХ, циклов | Индекс SPEED/RPM
		movc	A, @A+DPTR
		mov	B, A
		
		mov	DPTR, #0F976h	; счетчик
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B8E6

code_B8E6:
		jc	code_B8F9
		
		clr	A
		mov	DPTR, #0F976h
		movx	@DPTR, A
		
		mov	DPTR, #0FF44h
		movx	A, @DPTR
		dec	A
		
		lcall	CHK_A_in_R0_R1
		
		mov	DPTR, #0FF44h
		movx	@DPTR, A

code_B8F9:
		mov	DPTR, #0FF44h
		movx	A, @DPTR
		
		mov	B, DEV_FLAGS
		jb	B.5, code_B8FA
				
		mov	USSM, A

code_B8FA:		
		ret
; End of function DEC_USSM

; =============== S U B	R O U T	I N E =======================================


UGB_to_USSM:

		mov	DPTR, #6084h	; Мин. расход воздуха | кг/час
		clr	A
		movc	A, @A+DPTR
		mov	R0, A
		
		mov	DPTR, #6085h	; Макс расход воздуха | кг/час
		clr	A
		movc	A, @A+DPTR
		mov	R1, A
		
		mov	A, R2
		
		lcall	CHK_A_in_R0_R1
		
		mov	R2, A
		swap	A
		rl	A
		anl	A, #1Fh
		
		;mov	DPTR, #0FF4Bh
		;movx	@DPTR, A
		
		GET_2D_RAM_VALUE_BY_R2 0A2D8h, CAPTURE_DUTY_RXX_MODE ; Прямая характеристика РХХ | Положение	РХХ, шагов - Желаемый расход воздуха
		mov	B, A
		
		mov	R0, #0
		mov	DPTR, #6082h	; Максимальное положение РХХ | шаг
		clr	A
		movc	A, @A+DPTR
		mov	R1, A
		
		mov	A, B
		lcall	CHK_A_in_R0_R1
		
		;mov	USSM, A
		
		ret
; End of function UGB_to_USSM

; =============== S U B	R O U T	I N E =======================================


;RHH_PSM_to_UGB:
;		mov	A, PSM
;		mov	R2, A
;		swap	A
;		rl	A
;		anl	A, #1Fh
;		mov	DPTR, #0FF4Ch
;		movx	@DPTR, A
;
;		GET_2D_RAM_VALUE_BY_R2 0A2F8h, CAPTURE_INVERS_DUTY_RXX_MODE ; Обратная характеристика РХХ |	Расход воздуха через РХХ - Положение РХХ, шагов
;		
;		mov	DPTR, #0FF44h
;		movx	@DPTR, A
;		ret
; End of function RHH_PSM_to_UGB

; =============== S U B	R O U T	I N E =======================================


code_AC0E:
		mov	A, PSM
		mov	DPTR, #0F9C1h
		movx	@DPTR, A
		clr	RAM_28.5
		mov	DPTR, #5F62h	; Максимальное положение РХХ для синхронизации | шаг.
		clr	A
		movc	A, @A+DPTR
		add	A, #14h
		mov	RAM_4, A
		
		clr	EAL
		mov	PSM, A
		mov	USSM, #0
		setb	EAL
		
		mov	DPTR, #0F9C1h

code_AC2B:
		setb	WDT
		setb	SWDT
		mov	A, PSM
		cjne	A, RAM_4, code_AC36
		sjmp	code_AC4A
; ---------------------------------------------------------------------------

code_AC36:
		xch	A, RAM_4
		clr	C
		subb	A, RAM_4
		xch	A, RAM_4
		movx	A, @DPTR
		jz	code_AC4A
		clr	C
		subb	A, RAM_4
		jnc	code_AC46
		clr	A

code_AC46:
		movx	@DPTR, A
		mov	RAM_4, PSM

code_AC4A:

		mov	DPTR, #60CAh	; Напряжение отключения	питания	| В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_0, A
		mov	B, #0
		lcall	READ_ADC
		mov	DPTR, #0F9C1h
		cjne	A, RAM_0, code_AC5D

code_AC5D:
		jnc	code_AC64
		mov	A, USSM
		cjne	A, PSM, code_AC2B

code_AC64:
		clr	EAL
		mov	DPTR, #6AA1h	; Положение РХХ	при пуске | Шаги РХХ - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	USSM, A
		mov	DPTR, #0F9C1h
		movx	A, @DPTR
		mov	PSM, A
		setb	EAL

code_AC76:
		setb	WDT
		setb	SWDT
		mov	A, PSM
		movx	@DPTR, A
		mov	DPTR, #60CAh	; Напряжение отключения	питания	| В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_0, A
		mov	B, #0
		lcall	READ_ADC
		mov	DPTR, #0F9C1h
		cjne	A, RAM_0, code_AC90

code_AC90:
		jnc	code_AC9A
		mov	A, USSM
		cjne	A, PSM, code_AC76
		mov	A, PSM
		movx	@DPTR, A

code_AC9A:
		mov	DPTR, #60CAh	; Напряжение отключения питания | В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_0, A
		mov	B, #0
		lcall	READ_ADC
		cjne	A, RAM_0, code_ACAA

code_ACAA:
		jc	code_ACAF
		lcall	code_B304

code_ACAF:
		ret
; End of function code_AC0E


; =============== S U B	R O U T	I N E =======================================


SET_START_PSM:
		mov	A, TWAT
		mov	DPTR, #0F80Ah
		movx	@DPTR, A
		mov	PSM, #7Fh
		mov	USSM, #0
		setb	EAL

code_ACBE:
		setb	WDT
		setb	SWDT
		mov	A, USSM
		cjne	A, PSM, code_ACBE
		mov	DPTR, #6AA1h	; Положение РХХ при пуске | Шаги РХХ - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	USSM, A

code_ACCF:
		setb	WDT
		setb	SWDT
		mov	A, USSM
		cjne	A, PSM, code_ACCF
		ret
; End of function SET_START_PSM

