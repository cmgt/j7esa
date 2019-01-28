WBL_LEARN:

		mov	DPTR, #0F97Bh	; обогащение по дросселю
		movx	A, @DPTR
		jnz	WBL_3
		inc	DPL
		movx	A, @DPTR
		jnz	WBL_3
		
		mov	DPTR, #0F98Dh	; обеднение по дросселю
		movx	A, @DPTR
		jnz	WBL_3
		inc	DPL
		movx	A, @DPTR
		jnz	WBL_3

		mov	DPTR, #0F981h	; обогащение по давлению
		movx	A, @DPTR
		jnz	WBL_3
		inc	DPL
		movx	A, @DPTR
		jnz	WBL_3

		mov	DPTR, #0F885h	; задержка по доп. топливу
		movx	A, @DPTR
		jz	WBL_5
		dec	A
		movx	@DPTR, A
		sjmp	WBL_5

WBL_3:
		mov	DPTR, #5F97h	; Задержка по доп. топливу
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F885h
		movx	@DPTR, A

WBL_5:
		mov	DPTR, #0FA9Bh
		movx	A, @DPTR
		mov	C, ACC.0
		anl	A, #0FEh
		movx	@DPTR, A
		jc	WBL_10
		mov	DPTR, #0F860h	; задержка после отсечки топлива
		movx	A, @DPTR
		jz	WBL_15
		dec	A
		movx	@DPTR, A
		sjmp	WBL_15

WBL_10:
		mov	DPTR, #5F98h
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F860h	; задержка после отсечки топлива
		movx	@DPTR, A

WBL_15:	
		mov	DPTR, #0F85Bh	; Цикловая задержка
		movx	A, @DPTR
		jz	WBL_20
		dec	A
		movx	@DPTR, A

WBL_20:
		jb	RAM_26.6, WBL_30
		
		ret
; ---------------------------------------------------------------------------

WBL_30:	
		clr	RAM_26.6
		
; ---------------------------------------------------------------------------		
; разрешение и задержки обучения		
		
		jnb	RAM_2B.4, WBL_40
		
		mov	DPTR, #0F860h	; задержка после отсечки топлива
		movx	A, @DPTR
		jnz	WBL_60
		mov	DPTR, #0F885h	; задержка по доп. топливу
		movx	A, @DPTR
		jnz	WBL_60
		
; стационарность		
		mov	DPTR, #0F85Ch	; РТ по оборотам/дросселю
		movx	A, @DPTR
		xrl	A, RPM_THR_3D_RT
		jnz	WBL_50
		
		sjmp	WBL_70

; ---------------------------------------------------------------------------

WBL_40:
		clr	A
		mov	RAM_6E,	A
		setb	RAM_2B.4

WBL_50:
		mov	A, RPM_THR_3D_RT
		mov	DPTR, #0F85Ch	; РТ по оборотам/дросселю
		movx	@DPTR, A
		
WBL_60:
		clr	A
		mov	DPTR, #0F85Bh	; Цикловая задержка
		movx	@DPTR, A
		mov	DPTR, #0F85Eh	; Число стабильных циклов
		movx	@DPTR, A
		mov	DPTR, #0F85Fh	; Коррекция по ШДК
		movx	@DPTR, A
		
		mov	DPTR, #5F9Bh	; Число опросов ШДК
		movc	A, @A+DPTR
		mov	DPTR, #0F883h	; Число опросов ШДК
		movx	@DPTR, A		

		ret
; ---------------------------------------------------------------------------		
; температура 		
		
WBL_70:		
		mov	DPTR, #5F96h	; Температура разрешения обучения, град.С
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, TWAT
		jnc	WBL_60
		
		mov	DPTR, #5FA5h	; Порог температуры для отключения регулирования, град.С
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, TWAT
		jc	WBL_60
		
; ---------------------------------------------------------------------------
; стабильные циклы

WBL_140:
		mov	DPTR, #0F85Eh	; число стабильных циклов
		movx	A, @DPTR
		mov	B, A
		inc	A
		jz	WBL_150
		movx	@DPTR, A
		mov	B, A

WBL_150:
		clr	A
		mov	DPTR, #5F6Ah	; Число стабильных циклов для обучения
		movc	A, @A+DPTR
		cjne	A, B, WBL_160
WBL_160:
		jc	WBL_X10

WBL_170:	
		ret

; ---------------------------------------------------------------------------
WBL_X10:
		mov	DPTR, #0F85Bh	; Цикловая задержка
		movx	A, @DPTR
		jnz	WBL_170

; ---------------------------------------------------------------------------

		mov	DPTR, #0FF40h	; AFR с ШДК
		movx	A, @DPTR
		cjne	A, #0Ah, WBL_80
WBL_80:		jc	WBL_170
		cjne	A, #0F0h, WBL_90
WBL_90:		jnc	WBL_170
		
		clr	C
		subb	A, ALF_2
		mov	RAM_2C.7, C
		lcall	ABS_ACC
		
		cjne	A, #4, WBL_100
WBL_100:	
		jc	WBL_110
		mov	A, #4
WBL_110:
		mov	B, A
		jz	WBL_A10
		
		
		mov	DPTR, #0F85Fh	; Коррекция по ШДК
		movx	A, @DPTR
		jb	RAM_2C.7, WBL_120
		add	A, B
		sjmp	WBL_130
WBL_120:
		clr	C
		subb	A, B
WBL_130:		
		movx	@DPTR, A
		
		jb	ACC.7, WBL_135	; -100 .. +100
		
		add	A, #9Bh
		jnc	WBL_A10
		mov	A, #64h
		sjmp	WBL_137

WBL_135:
		add	A, #64h	
		jc	WBL_A10
		mov	A, #9Ch

WBL_137:
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------		
		
WBL_A10:
		mov	DPTR, #0F883h	; Число опросов ШДК
		movx	A, @DPTR
		jz	WBL_180
		dec	A
		movx	@DPTR, A

WBL_138:
		ret
		


; ---------------------------------------------------------------------------


WBL_180:
		mov	DPTR, #5F9Ah	; Порог нечувствительности
		clr	A
		movc	A, @A+DPTR
		mov	B, A

		mov	DPTR, #0F85Fh	; Коррекция по ШДК
		movx	A, @DPTR
		lcall	ABS_ACC
		clr	C
		subb	A, B
		
		orl	C, RAM_2B.7

		mov	DPTR, #5F9Bh	; Число опросов ШДК
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F883h	; Число опросов ШДК
		movx	@DPTR, A		

		mov	DPTR, #0F85Fh	; Коррекция по ШДК
		movx	A, @DPTR
		mov	B, A
		clr	A
		movx	@DPTR, A
		
		jc	WBL_210
		
WBL_190:
		mov	DPTR, #60ABh	; Цикловая задержка на ХХ
		jb	RAM_2B.1, WBL_200
		mov	DPTR, #60A9h	; Цикловая задержка 

WBL_200:
		clr	A
		movc	A, @A+DPTR

		mov	DPTR, #0F85Bh	; цикловая задержка
		movx	@DPTR, A		
		
		ljmp	code_A790
WBL_210:		
		ret

; End of function WBL_LEARN



