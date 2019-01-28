NBL_LEARN:
		jb	RAM_2B.4, code_A5E2
		mov	A, RPM_RT_32
		mov	DPTR, #0F85Ch
		movx	@DPTR, A
		mov	A, GBC_RT_32
		mov	DPTR, #0F85Dh
		movx	@DPTR, A
		jnb	RAM_2C.7, code_A5C8
		mov	RAM_70,	#0FFh
		sjmp	code_A5CB
; ---------------------------------------------------------------------------

code_A5C8:
		mov	RAM_70,	#0

code_A5CB:
		clr	A
		mov	DPTR, #0F85Bh
		movx	@DPTR, A
		mov	DPTR, #0F85Eh
		movx	@DPTR, A
		mov	DPTR, #0F860h
		movx	@DPTR, A
		mov	DPTR, #0F885h
		movx	@DPTR, A
		mov	RAM_6E,	#0
		setb	RAM_2B.4
		ret
; ---------------------------------------------------------------------------

code_A5E2:
		jb	RAM_26.6, code_A5E7
		sjmp	code_A627
; ---------------------------------------------------------------------------

code_A5E7:
		mov	DPTR, #60A6h	; Допуск на стационарность для обучения
		clr	A
		movc	A, @A+DPTR
		mov	B, A	
		mov	DPTR, #0F85Ch
		movx	A, @DPTR
		clr	C
		subb	A, RPM_RT_32
		lcall	ABS_ACC
		clr	C
		subb	A, B	
		jnc	code_A60C
		mov	DPTR, #0F85Dh
		movx	A, @DPTR
		clr	C
		subb	A, GBC_RT_32
		lcall	ABS_ACC
		clr	C
		subb	A, B	
		jc	code_A61F

code_A60C:	
		clr	A
		mov	DPTR, #0F85Eh
		movx	@DPTR, A
		mov	A, RPM_RT_32
		mov	DPTR, #0F85Ch
		movx	@DPTR, A
		mov	A, GBC_RT_32
		mov	DPTR, #0F85Dh
		movx	@DPTR, A
		sjmp	code_A627
; ---------------------------------------------------------------------------

code_A61F:	
		mov	DPTR, #0F85Eh
		movx	A, @DPTR
		inc	A
		jz	code_A627
		movx	@DPTR, A

code_A627:			
	
		mov	DPTR, #0F860h
		movx	A, @DPTR
		clr	C
		subb	A, #1
		jc	code_A633
		movx	@DPTR, A
		sjmp	code_A640
; ---------------------------------------------------------------------------

code_A633:	
		jb	RAM_26.6, code_A638
		sjmp	code_A640
; ---------------------------------------------------------------------------

code_A638:	
		mov	DPTR, #0F85Bh
		movx	A, @DPTR
		inc	A
		jz	code_A640
		movx	@DPTR, A

code_A640:		
		
		jbc	RAM_26.6, code_A645
		sjmp	code_A6C2
; ---------------------------------------------------------------------------

code_A645:			
		jnb	RAM_2C.7, code_A64B
		ljmp	code_A6CE
; ---------------------------------------------------------------------------

code_A64B:			
		jnb	RAM_2C.6, code_A651
		ljmp	code_A6F0
; ---------------------------------------------------------------------------

code_A651:		
		clr	A
		mov	DPTR, #0F883h
		movx	@DPTR, A

code_A656:		
		mov	DPTR, #0F860h
		movx	A, @DPTR
		jnz	code_A666
		mov	DPTR, #0F884h
		movx	A, @DPTR
		jb	ACC.0, code_A667 ; Accumulator
		ljmp	code_A746
; ---------------------------------------------------------------------------

code_A666:				
		ret
; ---------------------------------------------------------------------------

code_A667:			
		mov	DPTR, #60A8h	; Цикловая задержка при	регулировании |	циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A	
		mov	DPTR, #0F85Bh
		movx	A, @DPTR
		clr	C
		subb	A, B
		jc	code_A6C2
		mov	DPTR, #0F885h
		movx	A, @DPTR
		inc	A
		jz	code_A682
		mov	DPTR, #0F885h
		movx	@DPTR, A

code_A682:			
		mov	DPTR, #0F885h
		movx	A, @DPTR
		mov	B, A		
		mov	DPTR, #0F883h
		movx	A, @DPTR
		jz	code_A695
		mov	DPTR, #5FF0h	; Задержка при последующем центирировании | циклов
		clr	A
		movc	A, @A+DPTR
		sjmp	code_A69A
; ---------------------------------------------------------------------------

code_A695:		
		mov	DPTR, #5FEFh	; Задержка при первом центирировании | циклов
		clr	A
		movc	A, @A+DPTR

code_A69A:			
		cjne	A, B, code_A69D	

code_A69D:
		jnc	code_A6C2
		clr	A
		mov	DPTR, #0F885h
		movx	@DPTR, A
		mov	DPTR, #87BDh	; Шаг изменения	КР при центрировании |	- Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A		
		jb	RAM_2C.7, code_A6B5
		add	A, RAM_6E
		mov	RAM_6E,	A
		sjmp	code_A6BB
; ---------------------------------------------------------------------------

code_A6B5:			
		cpl	A
		inc	A
		add	A, RAM_6E
		mov	RAM_6E,	A

code_A6BB:			
		jb	ACC.7, code_A6C3
		add	A, #0B0h 
		jc	code_A6CB

code_A6C2:				
				
		ret
; ---------------------------------------------------------------------------

code_A6C3:				
		add	A, #50h	; 'P'
		jnc	code_A6C8
		ret
; ---------------------------------------------------------------------------

code_A6C8:				
		ljmp	code_A7D3
; ---------------------------------------------------------------------------

code_A6CB:				
		ljmp	code_A7ED
; ---------------------------------------------------------------------------

code_A6CE:				
		jnb	RAM_2C.6, code_A6DA
		mov	A, #3
		mov	DPTR, #0F883h
		movx	@DPTR, A
		ljmp	code_A656
; ---------------------------------------------------------------------------

code_A6DA:		
		setb	RAM_2C.6
		mov	A, #1
		mov	DPTR, #0F883h
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F89Fh
		movx	@DPTR, A
		mov	DPTR, #0F885h
		movx	@DPTR, A
		mov	DPTR, #890Bh	; Задержка регулирования Rich-Lean | Время, сек. - Обороты коленвала, об/мин - Цикловое	наполнение,мг/цикл
		sjmp	code_A704
; ---------------------------------------------------------------------------

code_A6F0:		
		mov	A, #2
		mov	DPTR, #0F883h
		movx	@DPTR, A
		clr	RAM_2C.6
		clr	A
		mov	DPTR, #0F8A6h
		movx	@DPTR, A
		mov	DPTR, #0F885h
		movx	@DPTR, A
		mov	DPTR, #880Bh	; Задержка регулирования Lean-Rich | Время, сек. - Обороты коленвала, об/мин - Цикловое	наполнение,мг/цикл

code_A704:			
		mov	A, RPM_GBC_3D_RT
		movc	A, @A+DPTR
		mov	DPTR, #0F860h
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F85Bh
		movx	@DPTR, A
		mov	DPTR, #0F884h
		movx	A, @DPTR
		anl	A, #0FEh
		mov	DPTR, #0F884h
		movx	@DPTR, A
		mov	DPTR, #8696h	; Шаг изменения	КР при переходе	|  - Обороты коленвала,	об/мин - Цикловое наполнение,мг/цикл
		mov	A, RPM_GBC_3D_RT
		movc	A, @A+DPTR
		mov	B, A		
		mov	DPTR, #0F85Fh
		movx	A, @DPTR
		clr	C
		subb	A, RAM_6E
		lcall	ABS_ACC
		div	AB
		mov	B, A	
		mov	A, RAM_70

code_A731:			
		mov	C, RAM_2C.7
		cpl	C
		rlc	A
		djnz	B, code_A731
		mov	RAM_70,	A
		mov	DPTR, #0F861h
		movx	@DPTR, A
		mov	A, RAM_6E
		mov	DPTR, #0F85Fh
		movx	@DPTR, A
		sjmp	code_A773
; ---------------------------------------------------------------------------

code_A746:			
		mov	DPTR, #0F884h
		movx	A, @DPTR
		orl	A, #1
		mov	DPTR, #0F884h
		movx	@DPTR, A
		mov	DPTR, #8696h	; Шаг изменения	КР при переходе	|  - Обороты коленвала,	об/мин - Цикловое наполнение,мг/цикл
		mov	A, RPM_GBC_3D_RT
		movc	A, @A+DPTR
		mov	B, A	
		jb	RAM_2C.7, code_A75F
		add	A, RAM_6E
		sjmp	code_A763
; ---------------------------------------------------------------------------

code_A75F:			
		cpl	A
		inc	A
		add	A, RAM_6E

code_A763:			
		mov	RAM_6E,	A
		jb	ACC.7, code_A76F
		add	A, #0B0h
		jnc	code_A773
		ljmp	code_A7ED
; ---------------------------------------------------------------------------

code_A76F:
		add	A, #50h	
		jnc	code_A7D3
		
; ---------------------------------------------------------------------------
; Обучение
; ---------------------------------------------------------------------------

code_A773:
	
		jb	RAM_2B.7, code_A7D2
		
		mov	A, RAM_70
		anl	A, #0Fh
		cjne	A, #5, code_A7D2
		
		mov	DPTR, #5F96h	; Температура разрешения обучения | град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_A785

code_A785:
		jnc	code_A7D2
		mov	DPTR, #5F6Ah	; Число	стабильных циклов для обучения | циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A	
		mov	DPTR, #0F85Eh
		movx	A, @DPTR
		clr	C
		subb	A, B	
		jc	code_A7D2
		
		mov	DPTR, #0F85Fh
		movx	A, @DPTR
		mov	B, A
		
code_A790:		
		mov	DPTR, #0FD00h
		mov	DPL, RAM_6A
		movx	A, @DPTR
		xch	A, B	
		jnz	code_A7AC
		mov	A, B	
		sjmp	code_A7BC


code_A7AC:
		jb	ACC.7, code_A7B7
		mov	A, B	
		inc	A
		jnz	code_A7BC
		dec	A
		sjmp	code_A7BC


code_A7B7:	
		mov	A, B	
		jz	code_A7BC
		dec	A

code_A7BC:		
			
		movx	@DPTR, A
		
		mov	DPTR, #0F88Ch
		movx	@DPTR, A
		mov	A, RAM_6A
		mov	DPTR, #0F88Eh
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F889h
		movx	@DPTR, A
		
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.4, code_A7D2		
		
		setb	RAM_2B.7

code_A7D2:		
			
		ret
; ---------------------------------------------------------------------------




code_A7D3:
		
		mov	RAM_6E,	#0B0h
		mov	DPTR, #0F810h
		movx	A, @DPTR
		jnb	ACC.7, code_A80D
		mov	DPTR, #0F8A6h
		movx	A, @DPTR
		add	A, #1
		movx	@DPTR, A
		cjne	A, #63h, code_A7E7

code_A7E7:
		jc	code_A80D
		setb	RAM_25.4
		sjmp	code_A805
; ---------------------------------------------------------------------------

code_A7ED:

		mov	RAM_6E,	#50h ; 'P'
		mov	DPTR, #0F810h
		movx	A, @DPTR
		jnb	ACC.7, code_A80D ; Accumulator
		mov	DPTR, #0F89Fh
		movx	A, @DPTR
		add	A, #1
		movx	@DPTR, A
		cjne	A, #64h, code_A801 ; 'd'

code_A801:
		jc	code_A80D
		setb	RAM_25.5

code_A805:				
		mov	RAM_6E,	#0
		clr	RAM_2B.4
		lcall	CLR_ADAPT_FUEL

code_A80D:				
					
		ret
; End of function code_A5B1

; ================================================================================================================