
; ===========================================================================
$NOMOD51
$INCLUDE (C509.MCU)
$INCLUDE (j7es_const.asm)
$INCLUDE (j7es_macros.asm)
$INCLUDE (j7es_ram.asm)
$INCLUDE (j7es_calibr.asm)
$INCLUDE (j7es_ram_capture_m.asm)
$INCLUDE (j7es_hip9011_m.asm)
$INCLUDE (j7es_hsp_m.asm)
CSEG

; =============== S U B	R O U T	I N E =======================================

; RESET
; Attributes: thunk

		; public RESET
		ljmp	RESET_0
; End of function RESET


; =============== S U B	R O U T	I N E =======================================

; External Interrupt 0
; Attributes: thunk

		; public IE0
		ljmp	IE0_0
; End of function IE0

; ---------------------------------------------------------------------------
		db    0FAh	; ·
		db    RAM_CAPTURE_SUPPORT
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Timer	0 Overflow

		; public TF0
		reti
; End of function TF0

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; External Interrupt 1
; Attributes: thunk

		; public IE1
		ljmp	IE1_0
; End of function IE1

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Timer	1 Overflow
; Attributes: thunk

		; public TF1
		ljmp	TF1_0
; End of function TF1

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Serial Channel 0
; Attributes: thunk

		; public RI0_TI0
RI0_TI0:
		ljmp	RI0_TI0_0
; End of function RI0_TI0

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Timer	2 Overflow / Ext. Reload

		; public TF2_EXF2
TF2_EXF2:
		reti
; End of function TF2_EXF2

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		FIRMWARE_VERSION
		INIT_DB_ZERO	%43h - $

; =============== S U B	R O U T	I N E =======================================

; A/D Converter

		; public IADC
		reti
; End of function IADC

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; External Interrupt 2

		; public IEX2
		reti
; End of function IEX2

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; External Interrupt 3

		; public IEX3
		reti
; End of function IEX3

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; External Interrupt 4

		; public IEX4
		reti
; End of function IEX4

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; External Interrupt 5

		; public IEX5
		reti
; End of function IEX5

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; External Interrupt 6
; Attributes: thunk

		; public IEX6
		ljmp	IEX6_0
; End of function IEX6

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Serial Channel 1

		; public RI1_TI1
RI1_TI1:
		reti
; End of function RI1_TI1

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Compare Match	Interupt of Compare Registers assigned to Timer	2 CM0-CM7
; Attributes: thunk

		; public ICMP0_ICMP7
ICMP0_ICMP7:
		ljmp	ICMP0_ICMP7_0
; End of function ICMP0_ICMP7

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Compare Timer	Overflow

		; public CTF
CTF:
		reti
; End of function CTF

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Compare Match	Interupt of Compare Register COMSET

		; public ICS
ICS:
		ljmp	ICS_0
		;reti
; End of function ICS

; ---------------------------------------------------------------------------
		;db    0
		;db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Compare Match	Interupt of Compare Register COMCLR

		; public ICR
ICR:
		reti
; End of function ICR

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Compare / Capture Event interrupt

		; public ICC10_ICC17
ICC10_ICC17:
		reti
; End of function ICC10_ICC17

; ---------------------------------------------------------------------------
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================

; Compare Timer	1 Overflow

		; public CT1F
CT1F:
		inc	RAM_78
		reti
; End of function CT1F

; ---------------------------------------------------------------------------
		db    0
		db    0
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR IEX6_0

code_E0:
		mov	R2, CCL3
		mov	R3, CCH3
		cjne	R6, #39h, code_100
		mov	A, R2
		add	A, R4
		mov	CCL3, A
		mov	A, R3
		addc	A, R5
		mov	CCH3, A
		clr	IRCON0.5
		inc	R6
		mov	R7, #1Ch
		ljmp	code_2C3
; ---------------------------------------------------------------------------

code_100:
		clr	RAM_27.3
		anl	CCEN, #3Fh
		orl	CCEN, #40h
		inc	R6
		mov	R7, #1Dh
		ljmp	code_2C3
; ---------------------------------------------------------------------------

; =============== S U B	R O U T	I N E =======================================


IEX6_0:	

; FUNCTION CHUNK AT 00E0 SIZE 00000033 BYTES

		push	PSW
		push	ACC
		push	B
		mov	PSW, #18h
		push	DPSEL
		mov	DPSEL, #5
		
		jb	RAM_27.3, code_E0
		mov	A, CCL3
		clr	C
		subb	A, R2
		mov	R0, A
		mov	A, CCH3
		subb	A, R3
		mov	R1, A
		jb	RAM_26.1, code_10E
		setb	RAM_26.5
		jmp	code_23D
		
code_10E:
		mov	A, RAM_5
		cjne	A, #4, code_139
		ljmp	code_1F2
; ---------------------------------------------------------------------------

code_139:
		clr	C
		subb	A, #2
		jnc	code_146
		inc	RAM_5
		ljmp	code_1DA
; ---------------------------------------------------------------------------

code_143:
		ljmp	code_1D7
; ---------------------------------------------------------------------------

code_146:
		mov	A, R4
		clr	C
		rlc	A
		mov	RAM_6, A
		mov	A, R5
		rlc	A
		jc	code_143
		mov	RAM_7, A
		mov	A, R0
		clr	C
		subb	A, RAM_6
		mov	RAM_6, A
		mov	A, R1
		subb	A, RAM_7
		mov	RAM_7, A
		setb	PSW.5
		jnc	code_170
		clr	PSW.5
		mov	A, RAM_6
		cpl	A
		add	A, #1
		mov	RAM_6, A
		mov	A, RAM_7
		cpl	A
		addc	A, #0
		mov	RAM_7, A

code_170:
		mov	A, RAM_6
		clr	C
		subb	A, R4
		mov	RAM_6, A
		mov	A, RAM_7
		subb	A, R5
		mov	RAM_7, A
		jnc	code_19E
		mov	A, R5
		jz	code_191
		rrc	A
		anl	A, #7Fh
		mov	B, A
		mov	A, R4
		rrc	A
		add	A, RAM_6
		mov	A, B
		addc	A, RAM_7
		jnc	code_1D7
		sjmp	code_1BB
; ---------------------------------------------------------------------------

code_191:
		mov	A, R4
		rrc	A
		anl	A, #7Fh
		add	A, RAM_6
		clr	A
		addc	A, RAM_7
		jnc	code_1D7
		sjmp	code_1BB
; ---------------------------------------------------------------------------

code_19E:
		mov	A, R5
		jz	code_1AF
		mov	B, A
		mov	A, R4
		clr	C
		subb	A, RAM_6
		mov	A, B
		subb	A, RAM_7
		jc	code_1D7
		sjmp	code_1BB
; ---------------------------------------------------------------------------

code_1AF:
		mov	A, R4
		rrc	A
		anl	A, #7Fh
		clr	C
		subb	A, RAM_6
		clr	A
		subb	A, RAM_7
		jc	code_1D7

code_1BB:
		jb	PSW.5, code_1C3
		mov	RAM_5, #3
		sjmp	code_1DA
; ---------------------------------------------------------------------------

code_1C3:
		mov	A, RAM_5
		cjne	A, #3, code_1D7
		mov	R2, CCL3
		mov	R3, CCH3
		inc	RAM_5
		clr	RAM_25.2
		clr	RAM_27.2
		clr	RAM_27.1
		ljmp	code_299
; ---------------------------------------------------------------------------

code_1D7:

		mov	RAM_5, #2

code_1DA:
		mov	R4, RAM_18
		mov	R5, RAM_19
		mov	R2, CCL3
		mov	R3, CCH3
		setb	RAM_26.5
		ljmp	code_5A2
; ---------------------------------------------------------------------------

code_1E7:
		jb	RAM_27.2, code_23B
		jb	RAM_27.1, code_23B
		setb	RAM_27.2
		ljmp	code_5A2
; ---------------------------------------------------------------------------

code_1F2:
		mov	A, R0
		clr	C
		subb	A, R4
		mov	RAM_6, A
		mov	A, R1
		subb	A, R5
		mov	RAM_7, A
		jnc	code_21E
		mov	A, R5
		jz	code_211
		rrc	A
		anl	A, #7Fh
		mov	B, A
		mov	A, R4
		rrc	A
		add	A, RAM_6
		mov	A, B
		addc	A, RAM_7
		jc	code_250
		sjmp	code_1E7
; ---------------------------------------------------------------------------

code_211:
		mov	A, R4
		rrc	A
		anl	A, #7Fh
		add	A, RAM_6
		clr	A
		addc	A, RAM_7
		jc	code_250
		sjmp	code_1E7
; ---------------------------------------------------------------------------

code_21E:
		mov	A, R5
		jz	code_22F
		mov	B, A
		mov	A, R4
		clr	C
		subb	A, RAM_6
		mov	A, B
		subb	A, RAM_7
		jnc	code_250
		sjmp	code_23B
; ---------------------------------------------------------------------------

code_22F:
		mov	A, R4
		rrc	A
		anl	A, #7Fh
		clr	C
		subb	A, RAM_6
		clr	A
		subb	A, RAM_7
		jnc	code_250

code_23B:

		setb	RAM_25.2

code_23D:
		mov	RAM_5, #0
		clr	RAM_26.2
		clr	RAM_26.3
		anl	CMEN, #0Fh
		orl	P4, #0F0h
		orl	CMEN, #0F0h
		ljmp	code_5A2
; ---------------------------------------------------------------------------

code_250:
		mov	R2, CCL3
		mov	R3, CCH3
		mov	C, RAM_27.2
		mov	RAM_27.1, C
		clr	RAM_27.2
		cjne	R6, #38h, code_27B
		mov	R4, RAM_18
		mov	R5, RAM_19
		setb	RAM_27.3
		anl	CCEN, #3Fh
		orl	CCEN, #80h
		setb	P1.3
		mov	A, R2
		add	A, R4
		mov	CCL3, A
		mov	A, R3
		addc	A, R5
		mov	CCH3, A	
		clr	IRCON0.5
		inc	R6
		mov	R7, #1Bh
		ljmp	code_2C3
; ---------------------------------------------------------------------------

code_27B:
		jnc	code_296
		mov	R4, RAM_18
		mov	R5, RAM_19
		inc	R6
		cjne	R6, #1Eh, code_28E
		mov	R7, #0
		inc	RAM_40
		anl	RAM_40,	#3
		sjmp	code_2C3
; ---------------------------------------------------------------------------

code_28E:
		mov	A, R6
		jc	code_293
		subb	A, #1Eh

code_293:
		mov	R7, A
		sjmp	code_2C3
; ---------------------------------------------------------------------------

code_296:
		cjne	R6, #3Bh, code_23B


; ---------------------------------------------------------------------------
; Начало отсчета ДПКВ (19 зубьев или 114 град. до ВМТ 1 и 4)
; ---------------------------------------------------------------------------
 
code_299:
		mov	R6, #0
		mov	R7, #0
		

; -------------------------------------------------------------------------
; ДФ - номер такта 1 цилиндра
; -------------------------------------------------------------------------
		
		jnb	Hardware.5, code_2B0
		mov	A, P1
		mov	C, ACC.2
		jc	code_2AB
		jnb	RAM_26.0, code_2AE
		sjmp	code_2B5
; ---------------------------------------------------------------------------

code_2AB:
		jnb	RAM_26.0, code_2B5

code_2AE:
		setb	RAM_22.4

code_2B0:
		mov	A, RAM_40
		inc	A
		sjmp	code_2BB
; ---------------------------------------------------------------------------

code_2B5:

		clr	RAM_22.4
		cpl	RAM_26.0
		rlc	A
		rl	A

code_2BB:
		anl	A, #2
		mov	RAM_40,	A
		jnz	code_2C3
		setb	RAM_26.6

code_2C3:
		setb	RAM_26.5
		mov	A, R5
		anl	A, #0F8h
		jz	code_2CE
		clr	RAM_26.2
		clr	RAM_26.3
		
; -------------------------------------------------------------------------
; Скоростной протокол
; -------------------------------------------------------------------------

code_2CE:
		HSP_SEND_MSG
	
; -------------------------------------------------------------------------
; Запуск процедуры топливоподачи 
; -------------------------------------------------------------------------

		mov	A, R7
		jbc	RAM_26.4, code_305
		cjne	A, RAM_3C, code_305
		jnb	RAM_26.3, code_2ED
		mov	RAM_34,	RAM_30
		mov	RAM_35,	RAM_31
		mov	RAM_33,	RAM_32
		mov	RAM_7F,	RAM_56
		clr	A
		mov	RAM_30,	A
		mov	RAM_31,	A
		mov	RAM_32,	A
		mov	RAM_56,	A

code_2ED:
		mov	A, RAM_40
		clr	C
		subb	A, RAM_3D
		anl	A, #3
		mov	RAM_41,	A
		mov	A, R7
		setb	RAM_28.0
		setb	TCON.1
		mov	RAM_3C,	RAM_3E
		mov	RAM_3D,	RAM_3F
		setb	RAM_26.4
		setb	RAM_26.3


; -------------------------------------------------------------------------
; Для расчета оборотов в главном цикле
; -------------------------------------------------------------------------

code_305:
		;cjne	A, #0, code_37B
		jz	code_310
		jmp	code_37B
code_310:		
		jnb	RAM_26.2, code_35E
		
		mov	A, R2
		subb	A, RAM_36
		mov	RAM_38,	A
		mov	A, R3
		subb	A, RAM_37
		mov	RAM_39,	A
		
		setb	RAM_28.6

code_35E:
		mov	RAM_36,	R2
		mov	RAM_37,	R3
		setb	RAM_26.2

; -------------------------------------------------------------------------
; Вырезание зажигания
; -------------------------------------------------------------------------

		inc	RAM_68
		mov	A, RAM_68
		setb	C
		subb	A, RAM_69
		jc	code_370
		mov	RAM_68,	#0

		;push	DPSEL
		;mov	DPSEL, #5
		mov	DPTR, #0FA9Bh
		movx	A, @DPTR
		orl	A, #1
		movx	@DPTR, A
		;pop	DPSEL

code_370:
		mov	A, RAM_69
		clr	C
		subb	A, #3
		jc	code_37A
		mov	RAM_68,	#1

code_37A:
		mov	A, R7


; -------------------------------------------------------------------------
; Переключение такта 1го цилиндра в ВМТ и НМТ
; -------------------------------------------------------------------------

code_37B:			
		cjne	A, RAM_42, code_382
		mov	R0, #90h
		mov	@R0, RAM_40


; -------------------------------------------------------------------------
; Зажигание - углы вкл/выкл
; -------------------------------------------------------------------------

code_382:
		cjne	A, #8, code_3EA
		mov	RAM_43,	RAM_40
		mov	C, RAM_27.5
		mov	RAM_2A.2, C
		setb	RAM_28.2
		setb	TCON.1

		mov	A, #18h
		clr	C
		subb	A, RAM_7D
		mov	RAM_42, A

		mov	A, RAM_43
		cpl	ACC.1
		rl	A
		rl	A
		add	A, #80h
		mov	R0, A
		mov	A, RAM_43
		jnb	ACC.0, code_3C5
		mov	A, @R0
		jnb	RAM_27.6, code_3AB
		add	A, LAUNCH_UOZ_OFFSET
		cjne	A, #3Ch, code_3A7

code_3A7:
		jc	code_3AB
		subb	A, #3Ch

code_3AB:

		mov	RAM_10,	A
		inc	R0
		mov	RAM_11,	@R0
		inc	R0
		mov	A, @R0
		jnb	RAM_27.6, code_3BE
		add	A, LAUNCH_UOZ_OFFSET
		cjne	A, #3Ch, code_3BA ; '<'

code_3BA:
		jc	code_3BE
		subb	A, #3Ch	; '<'

code_3BE:				; CODE XREF: IEX6_0+299j
					; IEX6_0:code_3BAj
		mov	RAM_12,	A
		inc	R0
		mov	RAM_13,	@R0
		sjmp	code_3EA
; ---------------------------------------------------------------------------

code_3C5:				; CODE XREF: IEX6_0+282j
		mov	A, @R0
		jnb	RAM_27.6, code_3D2
		add	A, LAUNCH_UOZ_OFFSET
		cjne	A, #3Ch, code_3CE ; '<'

code_3CE:
		jc	code_3D2
		subb	A, #3Ch	; '<'

code_3D2:				; CODE XREF: IEX6_0+2ADj
					; IEX6_0:code_3CEj
		mov	RAM_14,	A
		inc	R0
		mov	RAM_15,	@R0
		inc	R0
		mov	A, @R0
		jnb	RAM_27.6, code_3E5
		add	A, LAUNCH_UOZ_OFFSET
		cjne	A, #3Ch, code_3E1 ; '<'

code_3E1:
		jc	code_3E5
		subb	A, #3Ch	; '<'

code_3E5:				; CODE XREF: IEX6_0+2C0j
					; IEX6_0:code_3E1j
		mov	RAM_16,	A
		inc	R0
		mov	RAM_17,	@R0

; -------------------------------------------------------------------------
; ДД
; -------------------------------------------------------------------------

code_3EA:

		mov	A, R7
		
		jb	RAM_28.7, code_400
		
		cjne	A, RAM_4C, code_3FA

		clr	TR0
		clr	A
		mov	TL0, A
		mov	TH0, A	
		setb	TR0
		
		mov	A, R7

code_3FA:
		cjne	A, RAM_72, code_409

		clr	TR0
		mov	KNOCK_LO, TL0
		mov	KNOCK_HI, TH0
		
		sjmp	code_409
		
; ------- HIP9011

code_400:	
		
		cjne	A, RAM_4C, code_402

		setb	P1.5

code_402:
		cjne	A, RAM_72, code_407

		clr	P1.5	

code_407:
		READ_CURRENT_KNOCK_ADC

; -------------------------------------------------------------------------
; Тахометр
; -------------------------------------------------------------------------

code_409:
		cjne	A, #0Bh, code_40D
		clr	P5.0

code_40D:
		cjne	A, #1, code_412
		setb	P5.0

code_412:
		mov	A, R6
		

; -------------------------------------------------------------------------
; Управление катушками зажигания
; -------------------------------------------------------------------------

; -------------------------------------------------------------------------
; накопление 1-4 цилиндры

		
		cjne	A, RAM_10, code_413
		mov	B, RAM_11	; B-Register
		clr	C
		mov	A, R4
		rlc	A
		mov	R0, A
		mov	A, R5
		rlc	A
		jz	code_433
		mul	AB
		xch	A, R0
		mov	R1, B		; B-Register
		mov	B, RAM_11	; B-Register
		mul	AB
		mov	A, R0
		add	A, B		; B-Register
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		sjmp	code_439
		
code_413:
		sjmp	code_494
; ---------------------------------------------------------------------------

code_433:				; CODE XREF: IEX6_0+306j
		mov	A, R0
		mul	AB
		mov	R0, B		; B-Register
		mov	R1, #0

code_439:				; CODE XREF: IEX6_0+318j
		mov	A, R2
		add	A, R0
		mov	R0, A
		mov	A, R3
		addc	A, R1
		jb	Options.5, code_473
		mov	R1, #90h ; 'Р'
		cjne	@R1, #3, code_45C
		anl	CMEN, #0EFh	; Compare Enable Register (RMAP=0)
		mov	CMH4, A		; Compare Register 4, High Byte	(RMAP=0)
		mov	CML4, R0	; Compare Register 4, Low Byte (RMAP=0)
		orl	CMEN, #10h	; Compare Enable Register (RMAP=0)
		mov	A, RAM_68
		jz	code_48B
		clr	P4.4		; Port 4 (PDIR=0)
		sjmp	code_48B
; ---------------------------------------------------------------------------

code_45C:				; CODE XREF: IEX6_0+32Cj
		cjne	@R1, #1, code_48B
		anl	CMEN, #7Fh	; Compare Enable Register (RMAP=0)
		mov	CMH7, A		; B-Register
		mov	CML7, R0	; Compare Register 7, Low Byte (RMAP=0)
		orl	CMEN, #80h	; Compare Enable Register (RMAP=0)
		mov	A, RAM_68
		jz	code_48B
		clr	P4.7		; Port 4 (PDIR=0)
		sjmp	code_48B
; ---------------------------------------------------------------------------

code_473:				; CODE XREF: IEX6_0+327j
		mov	B, A
		mov	A, RAM_68
		anl		CMEN, #0EFh     ; Compare Enable Register (RMAP=0)
		mov		CMH4, B         ; Compare Register 4, High Byte (RMAP=0)
		mov		CML4, R0        ; Compare Register 4, Low Byte (RMAP=0)
		orl		CMEN, #10h      ; Compare Enable Register (RMAP=0)
		
		jz	code_474
		clr		P4.4            ; Port 4 (PDIR=0)
		
code_474:
		anl		CMEN, #7Fh      ; Compare Enable Register (RMAP=0)
		mov		CMH7, B         ; Compare Register 7, High Byte (RMAP=0)
		mov		CML7, R0        ; Compare Register 7, Low Byte (RMAP=0)
		orl		CMEN, #80h      ; Compare Enable Register (RMAP=0)
		jz	code_48B
		clr		P4.7

code_48B:				; CODE XREF: IEX6_0+33Cj IEX6_0+340j ...
		mov	C, RAM_2A.2
		mov	A, IEN2		; Interrupt Enable Register 2
		mov	ACC.2, C	; Accumulator
		mov	IEN2, A		; Interrupt Enable Register 2
		mov	A, R6

; -------------------------------------------------------------------------
; зажигание 1-4 цилиндры

code_494:				; CODE XREF: IEX6_0+2FAj
		cjne	A, RAM_12, code_4DB
		jb	RAM_2A.2, code_4DB
		mov	B, RAM_13	; B-Register
		clr	C
		mov	A, R4
		rlc	A
		mov	R0, A
		mov	A, R5
		rlc	A
		jz	code_4B7
		mul	AB
		xch	A, R0
		mov	R1, B		; B-Register
		mov	B, RAM_13	; B-Register
		mul	AB
		mov	A, R0
		add	A, B		; B-Register
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		sjmp	code_4BD
; ---------------------------------------------------------------------------

code_4B7:				; CODE XREF: IEX6_0+38Aj
		mov	A, R0
		mul	AB
		mov	R0, B		; B-Register
		mov	R1, #0

code_4BD:				; CODE XREF: IEX6_0+39Cj
		mov	A, R2
		add	A, R0
		mov	R0, A
		mov	A, R3
		addc	A, R1
		anl		CMEN, #0EFh     ; Compare Enable Register (RMAP=0)
		mov     CMH4, A         ; Compare Register 4, High Byte (RMAP=0)
		mov     CML4, R0        ; Compare Register 4, Low Byte (RMAP=0)
		orl     CMEN, #10h      ; Compare Enable Register (RMAP=0)
		setb    P4.4            ; Port 4 (PDIR=0)
		anl     CMEN, #7Fh      ; Compare Enable Register (RMAP=0)
		mov     CMH7, A         ; Compare Register 7, High Byte (RMAP=0)
		mov     CML7, R0        ; Compare Register 7, Low Byte (RMAP=0)
		orl     CMEN, #80h      ; Compare Enable Register (RMAP=0)
		setb    P4.7    
		mov	A, R6

code_4DB:				; CODE XREF: IEX6_0:code_494j
					; IEX6_0+37Ej
		cjne	A, RAM_14, code_4DC
		mov	B, RAM_15	; B-Register
		clr	C
		mov	A, R4
		rlc	A
		mov	R0, A
		mov	A, R5
		rlc	A
		jz	code_4FB
		mul	AB
		xch	A, R0
		mov	R1, B		; B-Register
		mov	B, RAM_15	; B-Register
		mul	AB
		mov	A, R0
		add	A, B		; B-Register
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		sjmp	code_501

code_4DC:
		sjmp	code_55C
; ---------------------------------------------------------------------------

code_4FB:				; CODE XREF: IEX6_0+3CEj
		mov	A, R0
		mul	AB
		mov	R0, B		; B-Register
		mov	R1, #0

code_501:				; CODE XREF: IEX6_0+3E0j
		mov	A, R2
		add	A, R0
		mov	R0, A
		mov	A, R3
		addc	A, R1
		jb	Options.5, code_53B
		mov	R1, #90h ; 'Р'
		cjne	@R1, #0, code_524
		anl	CMEN, #0BFh	; Compare Enable Register (RMAP=0)
		mov	CMH6, A		; B-Register
		mov	CML6, R0	; Compare Register 6, Low Byte (RMAP=0)
		orl	CMEN, #40h	; Compare Enable Register (RMAP=0)
		mov	A, RAM_68
		jz	code_553
		clr	P4.6		; Port 4 (PDIR=0)
		sjmp	code_553
; ---------------------------------------------------------------------------

code_524:				; CODE XREF: IEX6_0+3F4j
		cjne	@R1, #2, code_553
		anl	CMEN, #0DFh	; Compare Enable Register (RMAP=0)
		mov	CMH5, A		; Compare Register 5, High Byte	(RMAP=0)
		mov	CML5, R0	; Compare Register 5, Low Byte (RMAP=0)
		orl	CMEN, #20h	; Compare Enable Register (RMAP=0)
		mov	A, RAM_68
		jz	code_553
		clr	P4.5		; Port 4 (PDIR=0)
		sjmp	code_553
; ---------------------------------------------------------------------------

code_53B:				; CODE XREF: IEX6_0+3EFj
		mov	B, A
		mov	A, RAM_68
		anl     CMEN, #0BFh     ; Compare Enable Register (RMAP=0)
		mov     CMH6, B         ; Compare Register 6, High Byte (RMAP=0)
		mov     CML6, R0        ; Compare Register 6, Low Byte (RMAP=0)
		orl     CMEN, #40h      ; Compare Enable Register (RMAP=0)
		jz	code_53C
		clr     P4.6            ; Port 4 (PDIR=0)
		
code_53C:
		anl     CMEN, #0DFh     ; Compare Enable Register (RMAP=0)
		mov     CMH5, B         ; Compare Register 5, High Byte (RMAP=0)
		mov     CML5, R0        ; Compare Register 5, Low Byte (RMAP=0)
		orl     CMEN, #20h      ; Compare Enable Register (RMAP=0)
		jz	code_553
		clr     P4.5     

code_553:				; CODE XREF: IEX6_0+404j IEX6_0+408j ...
		mov	C, RAM_2A.2
		mov	A, IEN2		; Interrupt Enable Register 2
		mov	ACC.2, C	; Accumulator
		mov	IEN2, A		; Interrupt Enable Register 2
		mov	A, R6

code_55C:				; CODE XREF: IEX6_0:code_4DBj
		cjne	A, RAM_16, code_5A2
		jb	RAM_2A.2, code_5A2
		mov	B, RAM_17	; B-Register
		clr	C
		mov	A, R4
		rlc	A
		mov	R0, A
		mov	A, R5
		rlc	A
		jz	code_57F
		mul	AB
		xch	A, R0
		mov	R1, B		; B-Register
		mov	B, RAM_17	; B-Register
		mul	AB
		mov	A, R0
		add	A, B		; B-Register
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		sjmp	code_585
; ---------------------------------------------------------------------------

code_57F:				; CODE XREF: IEX6_0+452j
		mov	A, R0
		mul	AB
		mov	R0, B		; B-Register
		mov	R1, #0

code_585:				; CODE XREF: IEX6_0+464j
		mov	A, R2
		add	A, R0
		mov	R0, A
		mov	A, R3
		addc	A, R1
		anl     CMEN, #0BFh 
		mov     CMH6, A
		mov     CML6, R0
		orl     CMEN, #40h
		setb    P4.6 
		anl     CMEN, #0DFh
		mov     CMH5, A
		mov     CML5, R0
		orl     CMEN, #20h
		setb    P4.5     

code_5A2:
		pop	DPSEL
		pop	B
		pop	ACC
		pop	PSW
		reti
; End of function IEX6_0


; =============== S U B	R O U T	I N E =======================================


TF1_0:
		push	PSW
		push	ACC
		push	B
		push	DPL
		push	DPH
		mov	PSW, #0
		push	RAM_0
		
		clr	EAL
		clr	TR1
		mov	A, TH1
		jz	code_5C3
		mov	TL1, #0FFh

code_5C3:
		mov	A, TL1
		add	A, #0CBh
		mov	TL1, A
		mov	A, #0FAh
		addc	A, #0
		mov	TH1, A
		setb	TR1
		setb	EAL
		
		djnz	RAM_46,	code_5E4
		mov	RAM_46,	#14h
		setb	RAM_29.0
		
		mov	A, RAM_4A
		jz	code_5E4
		inc	A
		jz	code_5E4
		mov	RAM_4A,	A

code_5E4:
		jb	RAM_2F.1, code_64C
		jnb	REN0, code_644
		jb	RAM_2F.3, code_644
		mov	A, RAM_78
		clr	C
		subb	A, #28h
		jc	code_649
		clr	REN0
		anl	IEN3, #0F7h
		clr	RAM_2F.2
		setb	RAM_2F.3
		mov	RAM_78,	#0
		sjmp	code_649
; ---------------------------------------------------------------------------

code_644:
		jnb	RAM_2F.3, code_649
		inc	RAM_78

code_649:
		jnb	RAM_2F.1, code_689

code_64C:
		inc	RAM_78
		mov	A, RAM_78
		xrl	A, #14h
		jnz	code_689
		mov	RAM_78,	A
		mov	R0, #92h
		inc	@R0
		mov	A, @R0
		xrl	A, #1
		jnz	code_66A
		mov	R0, #0A8h
		mov	S0RELL,	@R0
		mov	R0, #91h
		mov	@R0, #0
		setb	REN0
		sjmp	code_689
; ---------------------------------------------------------------------------

code_66A:
		mov	A, @R0
		clr	C
		subb	A, #0FAh
		jc	code_689
		clr	REN0
		clr	RAM_2F.1
		clr	RAM_2F.5
		clr	RAM_2F.6
		clr	A
		mov	RAM_79,	A
		mov	DEV_FLAGS, A
		mov	RAM_7B,	A
		mov	RAM_7C,	A
		mov	R0, #91h
		mov	@R0, A
		lcall	code_E3DC
		setb	REN0

code_689:

; ---------------------------------------------------------------------------

		jb	RAM_2A.6, code_71B
		mov	A, RAM_7C
		anl	A, #10h
		jnz	code_6D6
		mov	A, RAM_7C
		anl	A, #20h
		jz	code_71B

code_6D6:
		mov	DPTR, #0F960h
		movx	A, @DPTR
		jz	code_700
		dec	A
		movx	@DPTR, A
		mov	DPTR, #0F961h
		movx	A, @DPTR
		jz	code_71B
		dec	A
		movx	@DPTR, A
		jnz	code_71B
		mov	A, RAM_7C
		anl	A, #10h
		jz	code_6F4
		clr	P4.4		; Port 4 (PDIR=0)
		clr	P4.7		; Port 4 (PDIR=0)
		sjmp	code_71B
; ---------------------------------------------------------------------------

code_6F4:				; CODE XREF: TF1_0+143j
		mov	A, RAM_7C
		anl	A, #20h
		jz	code_71B
		clr	P4.6		; Port 4 (PDIR=0)
		clr	P4.5		; Port 4 (PDIR=0)
		sjmp	code_71B
; ---------------------------------------------------------------------------

code_700:				; CODE XREF: TF1_0+131j
		orl	P4, #0F0h	; Port 4 (PDIR=0)
		mov	A, #9
		movx	@DPTR, A
		mov	DPTR, #0F962h
		movx	A, @DPTR
		jz	code_71B
		dec	A
		movx	@DPTR, A
		jnz	code_715
		anl	RAM_7C,	#0CFh
		sjmp	code_71B
; ---------------------------------------------------------------------------

code_715:				; CODE XREF: TF1_0+165j
		mov	DPTR, #0F961h
		mov	A, #8
		movx	@DPTR, A

code_71B:				; CODE XREF: TF1_0:code_6C7j
					; TF1_0+12Bj ...
		jb	RAM_2A.6, code_77E
		mov	A, RAM_7C
		anl	A, #0Fh
		jz	code_77E
		mov	DPTR, #0F95Eh
		movx	A, @DPTR
		jz	code_760
		dec	A
		movx	@DPTR, A
		mov	DPTR, #0F95Dh
		movx	A, @DPTR
		jz	code_77E
		dec	A
		movx	@DPTR, A
		jnz	code_77E
		mov	A, RAM_7C
		jnb	ACC.0, code_742	; Accumulator
		anl	CMEN, #0FBh	; Compare Enable Register (RMAP=0)
		clr	P4.2		; Port 4 (PDIR=0)
		sjmp	code_77E
; ---------------------------------------------------------------------------

code_742:				; CODE XREF: TF1_0+18Fj
		jnb	ACC.1, code_74C	; Accumulator
		anl	CMEN, #0FDh	; Compare Enable Register (RMAP=0)
		clr	P4.1		; Port 4 (PDIR=0)
		sjmp	code_77E
; ---------------------------------------------------------------------------

code_74C:				; CODE XREF: TF1_0:code_742j
		jnb	ACC.2, code_756	; Accumulator
		anl	CMEN, #0FEh	; Compare Enable Register (RMAP=0)
		clr	P4.0		; Port 4 (PDIR=0)
		sjmp	code_77E
; ---------------------------------------------------------------------------

code_756:				; CODE XREF: TF1_0:code_74Cj
		jnb	ACC.3, code_77E	; Accumulator
		anl	CMEN, #0F7h	; Compare Enable Register (RMAP=0)
		clr	P4.3		; Port 4 (PDIR=0)
		sjmp	code_77E
; ---------------------------------------------------------------------------

code_760:				; CODE XREF: TF1_0+17Fj
		orl	P4, #0Fh	; Port 4 (PDIR=0)
		mov	DPTR, #0F95Fh
		movx	A, @DPTR
		jz	code_77E
		dec	A
		movx	@DPTR, A
		jnz	code_772
		anl	RAM_7C,	#0F0h
		sjmp	code_77E
; ---------------------------------------------------------------------------

code_772:
		mov	DPTR, #0F95Eh
		mov	A, #9
		movx	@DPTR, A
		mov	DPTR, #0F95Dh
		mov	A, #5
		movx	@DPTR, A


; ---------------------------------------------------------------------------
; Управление шаговым РХХ
; ---------------------------------------------------------------------------

code_77E:

		jb	RAM_28.5, code_799
		
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.0, code_798		; Моментный РХХ	
		
; ---------------------------------------------------------------------------

code_784:
		mov	A, RAM_67
		jz	code_78B
		djnz	RAM_67,	code_799

code_78B:
		mov	A, USSM
		clr	C
		subb	A, PSM
		jc	code_79C
		jnb	ACC.7, code_7A1
		mov	A, #7Fh
		sjmp	code_7A1
; ---------------------------------------------------------------------------
code_798:
		mov	PSM, USSM
code_799:
		ljmp	code_83B
; ---------------------------------------------------------------------------

code_79C:
		jb	ACC.7, code_7A1
		mov	A, #80h	; 'А'

code_7A1:
		jnz	code_7B6
		mov	A, RAM_66
		jz	code_799
		cjne	A, #0FFh, code_7AC
		sjmp	code_7AF
; ---------------------------------------------------------------------------

code_7AC:
		cjne	A, #1, code_7B5

code_7AF:
		mov	RAM_66,	#0
		ljmp	code_83B
; ---------------------------------------------------------------------------

code_7B5:				; CODE XREF: TF1_0:code_7ACj
		clr	A

code_7B6:				; CODE XREF: TF1_0:code_7A1j
		add	A, #80h	; 'А'
		mov	B, A		; B-Register
		setb	RAM_27.7
		mov	A, RAM_66
		add	A, #80h	; 'А'
		cjne	A, B, code_7C5	; B-Register
		sjmp	code_7F7
; ---------------------------------------------------------------------------

code_7C5:				; CODE XREF: TF1_0+217j
		jnc	code_7DF
		mov	DPTR, #60CCh	; Количество шагов разгона/остановки | шаг.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, RAM_66
		cjne	A, B, code_7D5	; B-Register
		sjmp	code_7F7
; ---------------------------------------------------------------------------

code_7D5:				; CODE XREF: TF1_0+227j
		inc	A
		mov	RAM_66,	A
		jnz	code_7F7
		mov	RAM_66,	#1
		sjmp	code_7F7
; ---------------------------------------------------------------------------

code_7DF:				; CODE XREF: TF1_0:code_7C5j
		mov	DPTR, #60CCh	; Количество шагов разгона/остановки | шаг.
		clr	A
		movc	A, @A+DPTR
		cpl	A
		inc	A
		mov	B, A		; B-Register
		mov	A, RAM_66
		cjne	A, B, code_7EF	; B-Register
		sjmp	code_7F7
; ---------------------------------------------------------------------------

code_7EF:
		dec	A
		mov	RAM_66,	A
		jnz	code_7F7
		mov	RAM_66,	#0FFh

code_7F7:
		mov	A, RAM_66
		jb	ACC.7, code_80B
		mov	DPTR, #6137h	; Динамика разгона РХХ | Время шага, мс. - Индекс скорости
		mov	A, RAM_66
		movc	A, @A+DPTR
		mov	RAM_67,	A
		inc	PSM
		mov	B, #0
		sjmp	code_818
; ---------------------------------------------------------------------------

code_80B:
		cpl	A
		inc	A
		mov	DPTR, #6137h	; Динамика разгона РХХ | Время шага, мс. - Индекс скорости
		movc	A, @A+DPTR
		mov	RAM_67,	A
		dec	PSM
		mov	B, #2

code_818:
		mov	DPTR, #60CDh	; Направление движения РХХ
		clr	A
		movc	A, @A+DPTR
		add	A, B
		mov	B, A
		mov	A, P6
		mov	C, ACC.2
		mov	ACC.0, C
		mov	C, ACC.1
		mov	ACC.1, C
		anl	A, #0Bh
		add	A, B
		jb	ACC.1, code_838
		xrl	P6, #2
		jmp	code_83B


code_838:
		xrl	P6, #4

; ---------------------------------------------------------------------------
; Сумма расхода воздуха или АЦП ДАД
; ---------------------------------------------------------------------------

code_83B:

		mov	A, RAM_32
		inc	A
		jz	code_8AB
		jnb	Options.0, code_876

		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		mov	R0, #53h
		jnb	ACC.4, code_843
		mov	R0, #55h
		
code_843:
		clr	RAM_28.3
		
code_844:
		mov	ADCON1,	R0 ; 'S' ; A/D Converter Control Register 1
		mov	ADDATL,	#0	; A/D Converter	Data Register, Low Byte

code_84B:				; CODE XREF: TF1_0:code_84Bj
		jb	ADCON0.4, code_84B ; A/D Converter Control Register 0
		mov	A, ADDATL	; A/D Converter	Data Register, Low Byte
		mov	B, ADDATH	; A/D Converter	Data Register, High Byte
		jbc	RAM_28.3, code_844
		setb	RAM_28.3
		clr	C
		clr	EAL		; Interrupt Enable Register 0
		add	A, RAM_30
		mov	RAM_30,	A
		mov	A, B		; B-Register
		addc	A, RAM_31
		mov	RAM_31,	A
		clr	A
		addc	A, RAM_56
		mov	RAM_56,	A
		inc	RAM_32
		setb	EAL		; Interrupt Enable Register 0
		mov	A, B		; B-Register
		mov	DPTR, #0F80Ch
		movx	@DPTR, A
		sjmp	code_8AB
; ---------------------------------------------------------------------------

code_876:				; CODE XREF: TF1_0+297j
		clr	RAM_28.3

code_878:				; CODE XREF: TF1_0+2DAj
		mov	ADCON1,	#3	; A/D Converter	Control	Register 1
		mov	ADDATL,	#0	; A/D Converter	Data Register, Low Byte

code_87E:				; CODE XREF: TF1_0:code_87Ej
		jb	ADCON0.4, code_87E ; A/D Converter Control Register 0
		mov	A, ADDATH	; A/D Converter	Data Register, High Byte
		jbc	RAM_28.3, code_878
		setb	RAM_28.3
		mov	DPTR, #0F80Ch
		movx	@DPTR, A
		mov	B, A
		mov	DPTR, #0A358h	; Тарировка ДМРВ
		movc	A, @A+DPTR
		clr	C
		clr	EAL
		add	A, RAM_30
		xch	A, B
		inc	DPH
		movc	A, @A+DPTR
		addc	A, RAM_31
		jnc	code_8A2
		sjmp	code_8A9
; ---------------------------------------------------------------------------

code_8A2:
		mov	RAM_30,	B
		mov	RAM_31,	A
		inc	RAM_32

code_8A9:		
		setb	EAL	

code_8AB:
		jb	Hardware.1, code_pwm
		jb	Hardware.2, code_boost_pwm
		sjmp	code_8BB

code_boost_pwm:
code_pwm:
		mov	DPTR, #0F806h
		movx	A, @DPTR
		mov	R0, A
		inc	RAM_76
		anl	RAM_76,	#3Fh
		mov	A, RAM_76
		cjne	A, RAM_0, code_8B8

code_8B8:
		cpl	C
		mov	P5.2, C

code_8BB:
		jnb	P3.5, code_8CC
		jbc	RAM_27.4, code_8C3
		sjmp	code_8CE
; ---------------------------------------------------------------------------

code_8C3:
		mov	R0, #0C0h ; 'L'
		inc	@R0
		inc	R0
		inc	@R0
		inc	R0
		inc	@R0
		sjmp	code_8CE
; ---------------------------------------------------------------------------

code_8CC:
		setb	RAM_27.4

code_8CE:
		pop	RAM_0
		pop	DPH
		pop	DPL
		pop	B
		pop	ACC
		pop	PSW
		jnb	TF1,	code_8DF 
		setb	RAM_22.1

code_8DF:
		reti
; End of function TF1_0


; =============== S U B	R O U T	I N E =======================================


IE0_0:
		push	PSW
		push	ACC
		push	B
		push	DPSEL
		mov	DPSEL, #0
		push	DPL
		push	DPH
		mov	PSW, #8
		jb	RAM_28.2, code_8FB

		ljmp	code_1651
; ---------------------------------------------------------------------------

code_8FB:
		clr	RAM_28.2
		
		jnb	RAM_28.7, code_900	; HIP9011
; -------		
		mov     DPTR, #96FBh  		; Точка переключения аттенюатора
		mov     A, RPM_1
		movc    A, @A+DPTR
		
		;mov	DPTR, #0F93Dh
		;movx	@DPTR, A
		
		setb    ACC.7
		clr     ACC.6
		mov     B, A
		HIP9011_SPI_PROG 
		
		mov	R2, KNOCK_LO
		mov	R3, KNOCK_HI		

		sjmp	code_910
; -------
code_900:	
		mov	R0, KNOCK_LO
		mov	R1, KNOCK_HI
		
		lcall	code_AD86
		
		mov	DPTR, #0F8BAh		; Скорректированный коэффициент пересчета в уровень детонации
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		mov	MD0, R2
		mov	MD4, R0
		mov	MD1, R3
		mov	MD5, R1
		nop
		nop
		nop
		nop
		mov	R0, MD0
		mov	R1, MD1
		mov	R2, MD2
		mov	R3, MD3
; -------		
code_910:		
		mov	A, RAM_43
		rl	A
		mov	R4, A
		
		mov	A, #0A0h
		add	A, R4
		mov	R0, A
		mov	@R0, RAM_A		; R2[1]
		inc	R0
		mov	@R0, RAM_B		; R3[1]
		
		mov	RAM_8, RAM_A		; R0[1]=R2
		mov	RAM_9, RAM_B		; R1[1]=R3
		
		mov	DPTR, #0FF41h		; Текущий уровень ДД
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------		
; ограничение

		mov	DPTR, #0F96Eh		; Цилиндровые пороги детонации
		mov	A, RAM_43
		rl	A
		add	A, DPL
		mov	DPL, A
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		
		mov	DPTR, #0FA8Eh		; Цилиндровый порог детонации текущего цилиндра
		mov	A, R2
		movx	@DPTR, A
		inc	DPL
		mov	A, R3
		movx	@DPTR, A
		
		lcall	SUB_R0R1_R2R3
		jc	code_966
		
		mov	DPTR, #0FA8Eh		; Цилиндровый порог детонации текущего цилиндра
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		sjmp	code_96F

code_966:
		mov	DPTR, #0FF41h		; Текущий уровень ДД
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A

; ---------------------------------------------------------------------------
; фильтр

code_96F:
		mov	DPTR, #0F966h		; Цилиндровые уровни шума
		mov	A, RAM_43
		rl	A
		add	A, DPL
		mov	DPL, A
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		
		lcall	SUB_R0R1_R2R3
		
		mov	DPTR, #5F7Ch		; Коэф. поцилиндрового фильтра шума двигателя
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		
		lcall	MUL_ABSR0R1_B
		
		mov	DPTR, #0F881h		; LSB
		movx	A, @DPTR
		add	A, B
		mov	DPTR, #0F881h
		movx	@DPTR, A
		clr	A
		addc	A, R0
		mov	R0, A
		clr	A
		addc	A, R1
		mov	R1, A
		
		mov	DPTR, #0F966h
		mov	A, RAM_43
		rl	A
		add	A, DPL
		mov	DPL, A
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		
		lcall	ADD_R0R1_R2R3
		
		mov	A, R1
		movx	@DPTR, A
		dec	DPL
		mov	A, R0
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------
; режим
		mov	DPTR, #0F933h
		movx	A, @DPTR
		;jnb	RAM_26.7, code_9CE
		jnb	ACC.4, code_9CE
		
		mov	DPTR, #5F6Fh		; Порог температуры для активизации калибровки уровня шума | град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_9C0

code_9C0:
		jnc	code_9CB
		mov	DPTR, #0F965h
		movx	A, @DPTR
		cjne	A, #0FFh, code_9C9

code_9C9:
		jc	code_9D1

code_9CB:
		ljmp	code_A8B
; ---------------------------------------------------------------------------

code_9CE:
		ljmp	code_A12
; ---------------------------------------------------------------------------
; зона адаптации по шуму

code_9D1:
		mov	DPTR, #0FF41h		; Текущий уровень ДД
		movx	A, @DPTR
		mov	R0, A
		inc	DPL	
		movx	A, @DPTR
		mov	R1, A
		
		mov	DPTR, #0F934h		; Общий уровень шума
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		
		lcall	SUB_R0R1_R2R3
		
		mov	DPTR, #5F52h		; Коэффициент общего фильтра шума двигателя
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		
		lcall	MUL_ABSR0R1_B
		
		mov	DPTR, #0F937h		; LSB
		movx	A, @DPTR
		add	A, B
		mov	DPTR, #0F937h
		movx	@DPTR, A
		clr	A
		addc	A, R0
		mov	R0, A
		clr	A
		addc	A, R1
		mov	R1, A
		
		lcall	ADD_R0R1_R2R3
		
		mov	DPTR, #0F934h		; Общий уровень шума
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		jnb	RAM_28.7, code_A00	; HIP9011
		
		lcall	HIP9011_CALC_T_INT

code_A00:
		lcall	DIAG_DD_NOISE_ERROR
		
		ljmp	code_A8B
; ---------------------------------------------------------------------------
; зона контроля детонации

code_A12:
		clr	A
		mov	DPTR, #0F965h
		movx	@DPTR, A
; -------		
		mov	DPTR, #0F943h		; Порог детонации
		movx	A, @DPTR
		mov	B, A
		
		lcall	MUL_R0R1_B
		
		mov	A, R1
		
		jz	code_A29
		
		mov	R0, #0FFh
		mov	R1, #0Fh
		sjmp	code_A34

code_A29:
		mov	RAM_9, RAM_8		; R1[1] := R0[1]
		mov	R0, B
		lcall	DIV_R0R1_8
		lcall	DIV_R0R1_2

code_A34:
		mov	DPTR, #0F96Eh		; Цилиндровые пороги детонации
		mov	A, RAM_43
		rl	A
		add	A, DPL
		mov	DPL, A	
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		mov	DPTR, #0FA8Eh		; Цилиндровый порог детонации текущего цилиндра
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------		
; проверка порогов детонации		
		
		mov	DPTR, #0FF41h		; Текущий уровень ДД
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		
		mov	DPTR, #0FA92h		; Общий порог детонации
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		lcall	SUB_R0R1_R2R3
		jc	code_A82
		
		mov	DPTR, #0FA8Eh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		lcall	SUB_R0R1_R2R3
		jnc	code_A8B
		
		mov	DPTR, #0F9D1h		; Общий порог детонации / 2
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		lcall	SUB_R0R1_R2R3
		jc	code_A82
		
		sjmp	code_A8B
		
; ---------------------------------------------------------------------------
		; детонация
code_A82:
		mov	R1, RAM_43
		mov	DPTR, #5EE0h
		mov	A, R1
		movc	A, @A+DPTR
		orl	RAM_71,	A

code_A8B:
		mov	DPTR, #0F82Bh	; Постоянная времени интегратора
		movx	A, @DPTR
		setb	ACC.7		; установить постоянную времени интегратора HIP9011 
		setb	ACC.6
		clr	ACC.5
		mov	B, A
		HIP9011_SPI_PROG
		lcall	HIP9011_SPI_SLEEP

		mov	A, #1
		clr	ACC.7		; Prescaler/SO terminal status
		setb	ACC.6
		mov	B, A
		HIP9011_SPI_PROG
		lcall	HIP9011_SPI_SLEEP

		mov	DPTR, #0F82Ah	; Номер точки настройки фильтра
		movx	A, @DPTR
		clr	ACC.7		; BandPass Filter Frequency
		clr	ACC.6
		mov	B, A
		HIP9011_SPI_PROG

; ===========================================================================		
; удаление ДПВ
; ===========================================================================		

code_1651:
	
		jbc	RAM_28.0, code_1657
		ljmp	code_2471
; ---------------------------------------------------------------------------

code_1657:
		jnb	Options.0, code_1737  

;Работать по ДАД или дросселю
		mov	C, RAM_23.5
		orl	C, RAM_24.5
		jc	code_1666
		lcall	code_E8CF

code_1666:
		mov	DPTR, #5F02h
		clr	A
		movc	A, @A+DPTR
		
		jnb	ACC.1, dad_gbc
		jnb	ACC.2, table_gbc
		lcall	CALC_DAD_VALUE

table_gbc:
		lcall	CALC_TABLE_GBC
		jmp	code_19FF

dad_gbc:
		lcall	CALC_DAD_VALUE
		lcall	CALC_DAD_GBC
		jmp	code_19FF
; ---------------------------------------------------------------------------

code_1737:
		mov	A, RAM_33
		jnz	code_173E
		ljmp	code_17BA
; ---------------------------------------------------------------------------

code_173E:
		rr	A
		anl	A, #7Fh
		mov	B, A		; B-Register
		mov	A, RAM_34
		add	A, B		; B-Register
		mov	RAM_34,	A
		mov	A, RAM_35
		addc	A, #0
		mov	RAM_35,	A
		jnc	code_1757
		mov	RAM_34,	#0FFh
		mov	RAM_35,	#0FFh

code_1757:				; CODE XREF: IE0_0+E6Fj
		mov	MD0, RAM_34	
		mov	MD1, RAM_35	
		mov	MD4, RAM_33	
		mov	MD5, #0		
		nop
		nop
		nop
		nop
		mov	R0, MD0		
		mov	R1, MD1		
		mov	A, MD4		
		mov	A, MD5		
		jb	RAM_29.4, code_179F
		clr	C
		mov	A, R0
		subb	A, #0E8h ; 'ш'
		mov	R0, A
		mov	A, R1
		subb	A, #3
		jnc	code_177E
		clr	A
		mov	R0, A

code_177E:				; CODE XREF: IE0_0+E9Aj
		mov	R1, A
		mov	A, R1
		jnz	code_17AF
		jb	RAM_2A.3, code_17AF
		mov	DPTR, #6062h	; Минимальный расход воздуха для диагностики ДМРВ | кг/час
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R0
		clr	C
		mov	RAM_23.6, C
		subb	A, B		; B-Register
		jnc	code_17AF
		mov	DPTR, #0F80Ch
		movx	A, @DPTR
		clr	C
		subb	A, #7
		mov	RAM_23.6, C
		clr	RAM_24.6

code_179F:				; CODE XREF: IE0_0+E8Fj
		mov	R0, #0
		mov	R1, #0
		mov	DPTR, #0F808h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		ljmp	code_17BA
; ---------------------------------------------------------------------------

code_17AF:				; CODE XREF: IE0_0+EA0j IE0_0+EA2j ...
		clr	RAM_23.6
		mov	DPTR, #0F808h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A

code_17BA:				; CODE XREF: IE0_0+E5Bj IE0_0+ECCj
		jnb	RAM_28.5, code_17D2

code_17BD:				; CODE XREF: IE0_0+EF6j
		mov	DPTR, #5F71h	; К.Д.К. GBC на	оборотах выше 5010 |
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F949h
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F989h
		movx	@DPTR, A
		mov	DPTR, #0FAACh
		movx	@DPTR, A
		ljmp	code_1847
; ---------------------------------------------------------------------------

code_17D2:				; CODE XREF: IE0_0:code_17BAj
		mov	C, RAM_23.5
		orl	C, RAM_24.5
		jc	code_17BD
		lcall	code_E8CF
		jb	RAM_25.6, code_1809
		jnb	RAM_2D.5, code_1809
		mov	DPTR, #0FA94h
		movx	A, @DPTR
		jnb	ACC.0, code_1809 ; Accumulator
		mov	DPTR, #0FAACh
		movx	A, @DPTR
		inc	A
		cjne	A, #7, code_17F0

code_17F0:
		jc	code_17F4
		mov	A, #7

code_17F4:				; CODE XREF: IE0_0:code_17F0j
		mov	B, A		; B-Register
		movx	@DPTR, A
		mov	DPTR, #7856h	; Коэффициент Д.К.GBC при переходе от ХХ к нагрузке. | Коэффициент коррекции - Hомер цикла
		mov	A, B		; B-Register
		movc	A, @A+DPTR
		mov	DPTR, #0F949h
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F989h
		movx	@DPTR, A
		ljmp	code_1847
; ---------------------------------------------------------------------------

code_1809:				; CODE XREF: IE0_0+EFBj IE0_0+EFEj ...
		clr	A
		mov	DPTR, #0FAACh
		movx	@DPTR, A
		mov	DPTR, #0F98Ch
		movx	A, @DPTR
		clr	C
		subb	A, R2
		lcall	ABS_ACC
		cjne	A, #2, code_181A

code_181A:
		jc	code_1827
		mov	DPTR, #5F71h	; К.Д.К. GBC на	оборотах выше 5010 |
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F949h
		movx	@DPTR, A
		sjmp	code_1847
; ---------------------------------------------------------------------------

code_1827:				; CODE XREF: IE0_0:code_181Aj
		mov	DPTR, #5F72h	; Число	циклов динамической коррекции |
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F989h
		movx	A, @DPTR
		inc	A
		cjne	A, B, code_1836	; B-Register

code_1836:
		jc	code_1843
		mov	DPTR, #6074h	; Коэффициент динамической коррекции GBC |
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F949h
		movx	@DPTR, A
		sjmp	code_1847
; ---------------------------------------------------------------------------

code_1843:				; CODE XREF: IE0_0:code_1836j
		mov	DPTR, #0F989h
		movx	@DPTR, A

code_1847:				; CODE XREF: IE0_0+EEFj IE0_0+F26j ...
		mov	DPTR, #0F808h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #6063h	; Максимальный расход воздуха для диагностики ДМРВ | кг/час
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		jz	code_1862
		clr	C
		subb	A, B		; B-Register
		cpl	C
		mov	RAM_24.6, C
		sjmp	code_1864
; ---------------------------------------------------------------------------

code_1862:				; CODE XREF: IE0_0+F78j
		clr	RAM_24.6

code_1864:				; CODE XREF: IE0_0+F80j
		mov	C, RAM_23.6
		orl	C, RAM_24.6
		jnc	code_18C5
		mov	C, RAM_23.5
		orl	C, RAM_24.5
		jc	code_18A5
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		mov	R3, A
		mov	DPTR, #726Dh	; Цикловое наполнение при аварии ДМРВ |	Цикловое наполнение, мг/цикл - Обороты коленвала, об/мин - Положение дросселя,%
		mov	R2, RPM_RT
		lcall	GET_3D_VALUE
		mov	B, A		; B-Register
		mov	DPTR, #63ACh	; Коррекция предельного	GBC | Коэффициент коррекции - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		jnb	RAM_2B.1, code_189F
		mov	DPTR, #8F98h	; Коррекция аварийного ЦH на ХХ	| Коэффициент коррекции	- Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		lcall	DIV_R0R1_4
		ljmp	code_19BF
; ---------------------------------------------------------------------------

code_189F:				; CODE XREF: IE0_0+FABj
		lcall	DIV_R0R1_8
		ljmp	code_19BF
; ---------------------------------------------------------------------------

code_18A5:				; CODE XREF: IE0_0+F8Ej
		mov	DPTR, #60DFh	; GB при одновременном отказе ДМРВ и ДПДЗ | кг/час
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #63ACh	; Коррекция предельного	GBC | Коэффициент коррекции - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		lcall	DIV_R0R1_8
		lcall	DIV_R0R1_8
		mov	DPTR, #0F808h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A

code_18C5:				; CODE XREF: IE0_0+F88j
		mov	A, R1
		anl	A, #0FEh
		jz	code_18CE
		mov	A, #0FFh
		sjmp	code_18D2
; ---------------------------------------------------------------------------

code_18CE:				; CODE XREF: IE0_0+FE8j
		mov	A, R1
		rrc	A
		mov	A, R0
		rrc	A

code_18D2:				; CODE XREF: IE0_0+FECj
		mov	DPTR, #0FF48h
		movx	@DPTR, A
		mov	DPTR, #0F808h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		clr	EAL		; Interrupt Enable Register 0
		mov	A, RAM_38
		mov	B, RAM_39	; B-Register
		setb	EAL		; Interrupt Enable Register 0
		mov	MD0, A		
		mov	MD4, R0		
		mov	MD1, B		
		mov	MD5, R1		
		nop
		nop
		nop
		nop
		mov	R0, MD0		
		mov	R1, MD1		
		mov	R2, MD2		
		mov	R3, MD3		
		mov	MD0, R0		
		mov	MD1, R1		
		mov	MD2, R2		
		mov	MD3, R3		
		mov	MD4, #0E8h ; 'ш' 
		mov	MD5, #3		
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
		mov	DPTR, #0F945h
		movx	A, @DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		lcall	MUL_R0R1_2
		mov	DPTR, #6073h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		mov	DPTR, #6072h	; Максимальное GBC | мг./цикл
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		lcall	MIN_R1R0_R3R2
		mov	DPTR, #0F864h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		
		jb	RAM_29.3, code_1959
		ljmp	code_19A2
; ---------------------------------------------------------------------------

code_1959:				; CODE XREF: IE0_0+106Bj
		mov	DPTR, #0F82Ch
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		mov	DPTR, #60D3h	; Время	действия послепускового	К.Д.К. GBC | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9D4h
		movx	A, @DPTR
		cjne	A, B, code_1973	; B-Register

code_1973:
		jnc	code_197C
		mov	DPTR, #5F68h	; Коэффициент динамической коррекции GBC после пуска |
		clr	A
		movc	A, @A+DPTR
		sjmp	code_198A
; ---------------------------------------------------------------------------

code_197C:				; CODE XREF: IE0_0:code_1973j
		jb	RAM_2B.1, code_1985
		mov	DPTR, #0F949h
		movx	A, @DPTR
		sjmp	code_198A
; ---------------------------------------------------------------------------

code_1985:				; CODE XREF: IE0_0:code_197Cj
		mov	DPTR, #60E4h	; Коэффициент динамической коррекции GBC для ХХ	|
		clr	A
		movc	A, @A+DPTR

code_198A:				; CODE XREF: IE0_0+109Aj IE0_0+10A3j
		mov	B, A		; B-Register
		lcall	MUL_ABSR0R1_B
		mov	DPTR, #0F882h
		movx	A, @DPTR
		add	A, B		; B-Register
		mov	DPTR, #0F882h
		movx	@DPTR, A
		clr	A
		addc	A, R0
		mov	R0, A
		clr	A
		addc	A, R1
		mov	R1, A
		lcall	ADD_R0R1_R2R3

code_19A2:				; CODE XREF: IE0_0+1064j IE0_0+1077j
		mov	DPTR, #0F82Ch
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		
code_19BF:		
		mov	DPTR, #0F82Eh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------		
		mov	DPTR, #6064h	; Минимум для квантования GBC |	мг./цикл
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	DPTR, #6065h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		clr	A
		jc	code_19F2
		mov	DPTR, #6066h	; Шаг квантования GBC |	мг./цикл
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	DIV_R0R1_8
		lcall	MUL_R0R1_B
		mov	A, R1
		jnz	code_19F0
		mov	A, R0
		cjne	A, #0F0h, code_19EE ; 'Ё'

code_19EE:
		jc	code_19F2

code_19F0:				; CODE XREF: IE0_0+1108j
		mov	A, #0F0h ; 'Ё'

code_19F2:				; CODE XREF: IE0_0+10F8j
					; IE0_0:code_19EEj
		mov	R2, A
		mov	DPTR, #0F9BCh
		movx	A, @DPTR
		clr	C
		subb	A, R2
		lcall	ABS_ACC
		mov	DPTR, #0F9BDh
		movx	@DPTR, A
		mov	A, R2
		mov	DPTR, #0F9BCh
		movx	@DPTR, A
		anl	A, #0FEh
		mov	B, A		; B-Register
		rr	A
		mov	DPTR, #0F936h
		movx	@DPTR, A
		mov	A, B		; B-Register
		mov	DPTR, #6BC8h	; Динамическая коррекция GTC по	GBC | Коэффициент коррекции - Цикловое наполнение, мг/цикл
		movc	A, @A+DPTR
		mov	R0, A
		mov	A, B		; B-Register
		inc	A
		movc	A, @A+DPTR
		mov	R1, A
		
		mov	DPTR, #0F9A5h
		movx	A, @DPTR
		jz	code_1A3F
		
		mov	DPTR, #0F9BAh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A

code_19FF:
		clr	A
		mov	DPTR, #0F83Eh
		movx	@DPTR, A
		mov	DPTR, #0F83Dh
		movx	@DPTR, A
		mov	DPTR, #0F840h
		movx	@DPTR, A
		mov	DPTR, #0F83Fh
		movx	@DPTR, A
		clr	RAM_27.0
		ljmp	code_1BD6
; ---------------------------------------------------------------------------

code_1A3F:				; CODE XREF: IE0_0+113Ej
		mov	DPTR, #8F4Ah	; Коэффициент пленки по	температуре | Коэффициент коррекции - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	R4, A
		mov	DPTR, #8FE6h	; Коэффициент пленки по	температуре 2 |	Коэффициент коррекции -	Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	R5, A
		mov	DPTR, #0F9B8h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F89Dh
		movx	A, @DPTR
		inc	A
		jz	code_1A5E
		movx	@DPTR, A

code_1A5E:				; CODE XREF: IE0_0+117Bj
		mov	DPTR, #0F9BDh
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #5FAAh	; Cтационарность по GBC	для запрета расчетов пленки |
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_1A6C	; B-Register

code_1A6C:
		jc	code_1A79
		mov	R0, #0
		mov	R1, #0
		mov	C, RAM_2C.0
		jnc	code_1A97
		ljmp	code_1B1A
; ---------------------------------------------------------------------------

code_1A79:				; CODE XREF: IE0_0:code_1A6Cj
		mov	DPTR, #0F9BAh
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		mov	A, R0
		orl	A, R1
		jnz	code_1A90
		mov	C, RAM_2C.0
		jnc	code_1A97
		ljmp	code_1B1A
; ---------------------------------------------------------------------------

code_1A90:				; CODE XREF: IE0_0+11A7j
		mov	RAM_2C.0, C
		jnc	code_1A97
		ljmp	code_1B1A
; ---------------------------------------------------------------------------

code_1A97:				; CODE XREF: IE0_0+1194j IE0_0+11ABj ...
		mov	DPTR, #0F9A1h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F9B8h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #0F9BAh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		jnb	RAM_27.0, code_1AB9
		mov	B, R5		; B-Register
		sjmp	code_1ABB
; ---------------------------------------------------------------------------

code_1AB9:				; CODE XREF: IE0_0+11D2j
		mov	B, R4		; B-Register

code_1ABB:				; CODE XREF: IE0_0+11D7j
		mov	A, #0FFh
		clr	C
		subb	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #0F83Fh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		jnb	RAM_27.0, code_1AEF
		lcall	code_AD70
		lcall	MUL_R0R1_B
		mov	DPTR, #0F9A1h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		jnc	code_1AE4
		clr	RAM_27.0

code_1AE4:				; CODE XREF: IE0_0+1200j
		lcall	code_AD70
		mov	A, R0
		orl	A, R1
		jnz	code_1AED
		clr	RAM_27.0

code_1AED:				; CODE XREF: IE0_0+1209j
		sjmp	code_1B04
; ---------------------------------------------------------------------------

code_1AEF:				; CODE XREF: IE0_0+11EBj
		lcall	MUL_R0R1_B
		mov	DPTR, #0F9A1h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	ADD_R0R1_R2R3
		jnc	code_1B04
		mov	R1, #0FFh
		mov	R0, #0FFh

code_1B04:				; CODE XREF: IE0_0:code_1AEDj
					; IE0_0+121Ej
		mov	DPTR, #0F83Fh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		jnb	RAM_27.0, code_1B15
		mov	B, R5		; B-Register
		ljmp	code_1B96
; ---------------------------------------------------------------------------

code_1B15:				; CODE XREF: IE0_0+122Dj
		mov	B, R4		; B-Register
		ljmp	code_1B96
; ---------------------------------------------------------------------------

code_1B1A:				; CODE XREF: IE0_0+1196j IE0_0+11ADj ...
		lcall	code_AD70
		mov	DPTR, #0F9A1h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F9B8h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #0F9BAh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		jnb	RAM_27.0, code_1B3F
		mov	B, R5		; B-Register
		sjmp	code_1B41
; ---------------------------------------------------------------------------

code_1B3F:				; CODE XREF: IE0_0+1258j
		mov	B, R4		; B-Register

code_1B41:				; CODE XREF: IE0_0+125Dj
		mov	A, #0FFh
		clr	C
		subb	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #0F83Fh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		jnb	RAM_27.0, code_1B71
		lcall	code_AD70
		lcall	MUL_R0R1_B
		mov	DPTR, #0F9A1h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	ADD_R0R1_R2R3
		jnc	code_1B6C
		mov	R1, #0
		mov	R0, #0

code_1B6C:				; CODE XREF: IE0_0+1286j
		lcall	code_AD70
		sjmp	code_1B84
; ---------------------------------------------------------------------------

code_1B71:				; CODE XREF: IE0_0+1271j
		lcall	MUL_R0R1_B
		mov	DPTR, #0F9A1h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		jnc	code_1B84
		setb	RAM_27.0

code_1B84:				; CODE XREF: IE0_0+128Fj IE0_0+12A0j
		mov	DPTR, #0F83Fh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		jnb	RAM_27.0, code_1B94
		mov	B, R5		; B-Register
		sjmp	code_1B96
; ---------------------------------------------------------------------------

code_1B94:				; CODE XREF: IE0_0+12ADj
		mov	B, R4		; B-Register

code_1B96:				; CODE XREF: IE0_0+1232j IE0_0+1237j ...
		jnb	RAM_27.0, code_1BAA
		lcall	code_AD70
		lcall	MUL_R0R1_B
		mov	DPTR, #0F83Dh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		sjmp	code_1BB6
; ---------------------------------------------------------------------------

code_1BAA:				; CODE XREF: IE0_0:code_1B96j
		lcall	MUL_R0R1_B
		mov	DPTR, #0F83Dh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A

code_1BB6:				; CODE XREF: IE0_0+12C8j
		mov	DPTR, #0F83Fh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	A, R0
		orl	A, R1
		jz	code_1BCD
		mov	C, RAM_27.0
		mov	A, R1
		rrc	A
		mov	R1, A
		mov	C, ACC.0	; Accumulator
		mov	A, R0
		rrc	A
		mov	R0, A

code_1BCD:				; CODE XREF: IE0_0+12E1j
		mov	DPTR, #0F9A3h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A

code_1BD6:				; CODE XREF: IE0_0+E54j IE0_0+115Cj
		jb	RAM_28.5, code_1BDC
		jnb	RAM_2A.3, code_1BDF

code_1BDC:				; CODE XREF: IE0_0:code_1BD6j
		ljmp	code_1D75
; ---------------------------------------------------------------------------

code_1BDF:	
		mov	DPTR, #5F02h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.5, code_1C00	; флаг БЦН по давлению
; -------
		mov	DPTR, #0F98Ch
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		movc	A, @A+DPTR
		mov	R3, A		
		mov	R2, RPM_RT
		
		; Базовое цикловое наполнение |	Цикловое наполнение, мг/цикл - Обороты коленвала, об/мин - Положение дросселя,%
		GET_3D_RAM_WITH_INTERPOLATION 75EFh, CAPTURE_GBC_MODE
		sjmp	code_1C04
		
; -------		
code_1C00:
		mov	DPTR, #0F89Ah	; PRESS_RT
		movx	A, @DPTR
		mov	R3, A
		mov	R2, RPM_RT
		mov	DPTR, #99A7h	; БЦН по давлению
		lcall	GET_3D_VALUE
		
; -------
code_1C04:
		mov	R2, A
		
		mov	DPTR, #0F8B8h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F98Ch
		movx	A, @DPTR
		clr	C
		subb	A, B
		jc	code_1C05
		ljmp	code_1CB9
; ---------------------------------------------------------------------------

code_1C05:
		jb	RAM_28.5, code_1C41
		cpl	A
		add	A, #1
		mov	B, A		; B-Register
		mov	DPTR, #5F74h	; Зона нечувствительности по дросселю |	%
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_1C15	; B-Register

code_1C15:
		jnc	code_1C3C
		mov	B, R2		; B-Register
		mov	DPTR, #0F8ABh
		movx	A, @DPTR
		xch	A, B		; B-Register
		mov	DPTR, #0F8ABh
		movx	@DPTR, A
		xch	A, B		; B-Register
		clr	C
		subb	A, B		; B-Register
		jz	code_1C41
		jc	code_1C41
		mov	B, A		; B-Register
		mov	DPTR, #5F73h	; Экстраполирующий коэффициент пересчета GBC для обеднения |
		clr	A
		movc	A, @A+DPTR
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		lcall	DIV_R0R1_4
		sjmp	code_1C54
; ---------------------------------------------------------------------------

code_1C3C:				; CODE XREF: IE0_0:code_1C15j
		mov	A, R2
		mov	DPTR, #0F8ABh
		movx	@DPTR, A

code_1C41:				; CODE XREF: IE0_0:code_1C05j
					; IE0_0+1348j ...
		mov	DPTR, #0F98Dh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #5F75h	; Коэффициент уменьшения GTCDL 1 при обеднении |
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B

code_1C54:				; CODE XREF: IE0_0+135Aj
		mov	DPTR, #0F98Fh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F98Dh
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		jc	code_1C76
		mov	DPTR, #0F98Fh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		sjmp	code_1C89
; ---------------------------------------------------------------------------

code_1C76:				; CODE XREF: IE0_0+1389j
		mov	DPTR, #0F98Dh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #5F76h	; Коэффициент уменьшения GTCDL 2 при обеднении |
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B

code_1C89:				; CODE XREF: IE0_0+1394j
		mov	DPTR, #0F98Dh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F97Bh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #0F99Fh
		movx	A, @DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	DPTR, #0F97Bh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F97Dh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		ljmp	code_1D96
; ---------------------------------------------------------------------------

code_1CB9:				; CODE XREF: IE0_0+1322j
		jb	RAM_28.5, code_1CF5
		mov	B, A		; B-Register
		mov	DPTR, #6054h	; Зона нечувствительности по дросселю |	%
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_1CC6	; B-Register

code_1CC6:
		jnc	code_1CF0
		mov	B, R2		; B-Register
		mov	DPTR, #0F8ABh
		movx	A, @DPTR
		xch	A, B		; B-Register
		mov	DPTR, #0F8ABh
		movx	@DPTR, A
		clr	C
		subb	A, B		; B-Register
		jz	code_1CF5
		jc	code_1CF5
		mov	B, A		; B-Register
		mov	DPTR, #0F87Eh
		movx	@DPTR, A
		
		; Экстраполирующий коэффициент пересчета GBC для обогащения | Коэффициент коррекции - Температура, град.С
		GET_RAM_BY_INDEX 8393h, TWAT_RT, CAPTURE_EXTR_GBC_MODE
		
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		lcall	DIV_R0R1_2
		sjmp	code_1D10
; ---------------------------------------------------------------------------

code_1CF0:				; CODE XREF: IE0_0:code_1CC6j
		mov	A, R2
		mov	DPTR, #0F8ABh
		movx	@DPTR, A

code_1CF5:				; CODE XREF: IE0_0:code_1CB9j
					; IE0_0+13F7j ...
		mov	DPTR, #0F944h
		movx	A, @DPTR
		jb	ACC.0, code_1D4E ; Accumulator
		mov	DPTR, #0F97Bh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #0F99Fh
		movx	A, @DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		sjmp	code_1D45
; ---------------------------------------------------------------------------

code_1D10:				; CODE XREF: IE0_0+140Ej
		mov	DPTR, #0F97Dh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F97Bh
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		jc	code_1D32
		mov	DPTR, #0F97Dh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		sjmp	code_1D45
; ---------------------------------------------------------------------------

code_1D32:				; CODE XREF: IE0_0+1445j
		mov	DPTR, #0F97Bh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #5F6Ch	; Коэффициент уменьшения GTCDR 2 при обогащении	|
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B

code_1D45:				; CODE XREF: IE0_0+142Ej IE0_0+1450j
		mov	DPTR, #0F97Bh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A

code_1D4E:				; CODE XREF: IE0_0+1419j
		mov	DPTR, #0F98Dh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #5F76h	; Коэффициент уменьшения GTCDL 2 при обеднении |
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	DPTR, #0F98Dh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F98Fh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		;sjmp	code_1D96
; ---------------------------------------------------------------------------

code_1D96:
		jnb	Options.0, END_CALC_ADD_FIELD
		lcall	CALC_DAD_ADD_FIELD
		sjmp	END_CALC_ADD_FIELD

code_1D75:
		clr	A
		mov	DPTR, #0F97Bh
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		mov	DPTR, #0F98Dh
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		
		clr	A
		mov	DPTR, #0F981h
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		
		mov	DPTR, #0F991h
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A		

; ---------------------------------------------------------------------------
END_CALC_ADD_FIELD:

		mov	DPTR, #0F97Bh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		mov     DPTR, #0F981h
		movx    A, @DPTR
		mov     R2, A
		inc     DPL
		movx    A, @DPTR
		mov     R3, A
		
		lcall   ADD_R0R1_R2R3
		
		mov	DPTR, #0F991h	; Суммарное доп. топливо
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------

		mov	DPTR, #0F98Ch	; [x] Положение ДПДЗ, %
		movx	A, @DPTR
		mov	DPTR, #0F8B8h	; [x] Предыдущее положение ДПДЗ, %
		movx	@DPTR, A

; ----------------------------------------------------------------------------
; Квантование GBC
; ----------------------------------------------------------------------------
		
		mov	DPTR, #0F82Eh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #6064h	; Минимум для квантования GBC |	мг./цикл
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	DPTR, #6065h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		clr	A
		jc	code_1DD1
		mov	DPTR, #6066h	; Шаг квантования GBC |	мг./цикл
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		lcall	DIV_R0R1_8
		lcall	MUL_R0R1_B
		mov	A, R1
		jnz	code_1DCF
		mov	A, R0
		cjne	A, #0F0h, code_1DCD

code_1DCD:
		jc	code_1DD1

code_1DCF:
		mov	A, #0F0h

code_1DD1:

		mov	GBC_RT,	A
		add	A, #4
		swap	A
		rl	A
		anl	A, #1Fh
		mov	GBC_RT_32, A
		mov	A, GBC_RT
		add	A, #8
		anl	A, #0F0h
		mov	B, A
		mov	A, RPM_RT
		add	A, #8
		anl	A, #0F0h
		swap	A
		xch	A, B		; B-Register
		add	A, B		; B-Register
		mov	RPM_GBC_3D_RT, A
		mov	DPTR, #0F82Eh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		jb	RAM_2A.6, code_1DFF
		ljmp	code_2423
; ---------------------------------------------------------------------------

code_1DFF:				; CODE XREF: IE0_0+1519j
		jb	RAM_2A.5, code_1E05
		ljmp	code_1F56
; ---------------------------------------------------------------------------

code_1E05:				; CODE XREF: IE0_0:code_1DFFj
		mov	DPTR, #0F89Eh
		movx	A, @DPTR
		inc	A
		jz	code_1E0D
		movx	@DPTR, A

code_1E0D:				; CODE XREF: IE0_0+152Aj
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #710Bh	; Малая	цикловая подача	| Цикловая подача топлива, мг/цикл - Температура, град.С
		lcall	GET_2D_INTERPOLATION
		mov	R0, #0
		mov	R1, A
		mov	DPTR, #8A99h	; Обороты полного выхода из режима пуска | Обороты, об/мин - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, #4		; B-Register
		div	AB
		mov	B, A		; B-Register
		mov	DPTR, #7132h	; Коррекция по RPM | Коэффициент коррекции - Обороты коленвала,	об/мин
		mov	A, B		; B-Register
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		add	A, #8
		anl	A, #0F0h
		swap	A
		mov	DPTR, #7A77h	; Коррекция по дросселю	| Коэффициент коррекции	- Положение дросселя, %
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	DPTR, #8C00h	; Коррекция по температуре ОЖ |	Коэффициент коррекции -	Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B

		mov	DPTR, #0F89Bh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #710Bh	; Малая	цикловая подача	| Цикловая подача топлива, мг/цикл - Температура, град.С
		lcall	GET_2D_INTERPOLATION
		mov	R0, #0
		mov	R1, A
		mov	DPTR, #0F8AFh
		movx	A, @DPTR
		mov	DPTR, #7132h	; Коррекция по RPM | Коэффициент коррекции - Обороты коленвала,	об/мин
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		add	A, #8
		anl	A, #0F0h
		swap	A
		mov	DPTR, #7A77h	; Коррекция по дросселю	| Коэффициент коррекции	- Положение дросселя, %
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	DPTR, #0F89Eh
		movx	A, @DPTR
		cjne	A, #3Fh, code_1EAD ; '?'

code_1EAD:
		jc	code_1EB1
		mov	A, #3Fh	; '?'

code_1EB1:				; CODE XREF: IE0_0:code_1EADj
		mov	DPTR, #8A59h	; Коррекция по времени прокрутки | Коэффициент коррекции - Hомер цикла
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		
; ---------------------------------------------------------------------------		
		jnb	RAM_2A.1, code_1F3B
		mov	DPTR, #6059h	; Пусковой период | тактов
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F829h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jc	code_1EE1
		clr	A
		mov	DPTR, #0F829h
		movx	@DPTR, A

code_1EE1:				; CODE XREF: IE0_0+15FAj
		mov	DPTR, #6058h	; Число	тактов с большей подачей | тактов
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F829h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		dec	A
		clr	C
		subb	A, B		; B-Register
		jnc	code_1F3B
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #7179h	; Большая цикловая подача | Цикловая подача топлива, мг/цикл - Температура, град.С
		lcall	GET_2D_INTERPOLATION
		mov	R0, #0
		mov	R1, A
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		add	A, #8
		anl	A, #0F0h
		swap	A
		mov	DPTR, #7A77h	; Коррекция по дросселю	| Коэффициент коррекции	- Положение дросселя, %
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	DPTR, #0F89Eh
		movx	A, @DPTR
		cjne	A, #3Fh, code_1F22 ; '?'

code_1F22:
		jc	code_1F26
		mov	A, #3Fh	; '?'

code_1F26:				; CODE XREF: IE0_0:code_1F22j
		mov	DPTR, #8A59h	; Коррекция по времени прокрутки | Коэффициент коррекции - Hомер цикла
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
	
; ---------------------------------------------------------------------------	
code_1F3B:
	
		mov	DPTR, #0F837h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0FF53h
		movx	A, @DPTR
		mov	C, ACC.0
		cpl	C
		anl	C, Options.7
		anl	C, Hardware.5
		jc	code_1F53
		setb	RAM_2A.0

code_1F53:
		ljmp	code_20C5

; ---------------------------------------------------------------------------
; Блокировка впрыска
; ---------------------------------------------------------------------------

code_1F56:
		mov	DPTR, #0F9A6h
		movx	A, @DPTR
		clr	C
		subb	A, RPM
		jc	code_1F7D
		
		;Блокировка топлива по давлению
		jnb	Options.0, no_dad_fuel_cutoff

		mov	DPTR, #0F897h		; фильтрованное давление (ст. байт)
		movx	A, @DPTR
		mov	B, A

		mov	DPTR, #5F8Ch
		clr	A
		movc	A, @A+DPTR
		
		clr	C
		subb	A, B
		jc	code_1F7D
		
no_dad_fuel_cutoff:
		mov	DPTR, #0F9B7h
		movx	A, @DPTR
		clr	C
		subb	A, RPM
		jc	code_1F96
		mov	RAM_69,	A
		cjne	A, #7, code_1F6D

code_1F6D:
		jnc	code_1F77
		mov	DPTR, #5F16h
		movc	A, @A+DPTR
		mov	LAUNCH_UOZ_OFFSET, A
		sjmp	code_1F7A

code_1F77:
		mov	LAUNCH_UOZ_OFFSET, #0

code_1F7A:
		jnb	RAM_2B.3, code_1FA4

code_1F7D:
		mov	R0, #0
		mov	R1, #0
		mov	DPTR, #0F987h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0FF51h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		mov	DPTR, #0FA9Bh
		movx	A, @DPTR
		orl	A, #1
		movx	@DPTR, A
		
		ljmp	code_217F
; -------

code_1F96:
		mov	RAM_69,	#0
		clr	A
		mov	DPTR, #5F16h
		movc	A, @A+DPTR
		mov	LAUNCH_UOZ_OFFSET, A
		setb	RAM_2B.3
		sjmp	code_1F7D
; ---------------------------------------------------------------------------

code_1FA4:				; CODE XREF: IE0_0:code_1F7Aj
		mov	A, ALF_2
		add	A, #80h	; 'А'
		mov	B, A		; B-Register
		clr	A
		addc	A, #0
		mov	MD0, #0		
		mov	MD1, R0		
		mov	MD2, R1		
		mov	MD3, #0		
		mov	MD4, B		
		mov	MD5, A		
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
		
		mov	DPTR, #0F97Fh
		movx	A, @DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		lcall	MUL_R0R1_2
		mov	DPTR, #0F837h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		
		mov	DPTR, #0F89Bh
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		jnc	code_1FFA
		mov	DPTR, #0F837h
		mov	A, R2
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R3
		movx	@DPTR, A

code_1FFA:				; CODE XREF: IE0_0+170Fj
		mov	DPTR, #0F837h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A	
		
		mov	DPTR, #0FAA3h
		jb	RAM_27.0, code_2003
		mov	DPTR, #0FAA4h

code_2003:				; CODE XREF: IE0_0+171Dj
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F836h
		movx	@DPTR, A
		mov	DPTR, #0F83Dh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		jnb	RAM_27.0, code_204A
		lcall	MUL_R0R1_B
		lcall	code_ADA2
		lcall	MUL_R0R1_2
		mov	RAM_B, RAM_9
		mov	RAM_A, RAM_8
		mov	DPTR, #0F83Bh	; INJ_1
		mov	A, R2
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R3
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F839h
		movx	@DPTR, A
		mov	DPTR, #0F83Ah
		movx	@DPTR, A
		mov	DPTR, #0F837h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		lcall	SUB_R0R1_R2R3
		jnc	code_2048
		clr	A
		mov	R0, A
		mov	R1, A

code_2048:				; CODE XREF: IE0_0+1763j
		sjmp	code_2071
; ---------------------------------------------------------------------------

code_204A:				; CODE XREF: IE0_0+1733j
		lcall	MUL_R0R1_B
		lcall	code_ADA2
		lcall	MUL_R0R1_2
		mov	DPTR, #0F839h	; INJ_2
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F83Bh
		movx	@DPTR, A
		mov	DPTR, #0F83Ch
		movx	@DPTR, A
		mov	DPTR, #0F837h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		lcall	ADD_R0R1_R2R3

code_2071:				

		mov	DPTR, #0F97Bh	; Доп. топливо по дросселю - обогащение
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		lcall	ADD_R0R1_R2R3
		
		mov	DPTR, #0F981h	; Доп. топливо по давлению
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		lcall	ADD_R0R1_R2R3
		
		mov	DPTR, #0F98Dh	; Доп. топливо по дросселю - обеднение
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		
		jnc	code_2090
		clr	A
		mov	R0, A
		mov	R1, A
		sjmp	code_20AF
; ---------------------------------------------------------------------------

code_2090:
		jb	RAM_2B.3, code_20AF
		mov	DPTR, #0F8B1h
		movx	A, @DPTR
		jz	code_20AF
		dec	A
		movx	@DPTR, A
		mov	DPTR, #7CD7h	; Добавка топлива на первых 4 тактах | Добавка % - Цикловое наполнение,	мг/цикл
		mov	A, GBC_RT_32
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	RAM_A, RAM_8
		mov	RAM_B, RAM_9
		lcall	MUL_R0R1_B
		lcall	ADD_R0R1_R2R3

code_20AF:				; CODE XREF: IE0_0+17AEj
					; IE0_0:code_2090j ...
		mov	A, R0
		orl	A, R1
		jnz	code_20B0
		ljmp	code_216C
		
code_20B0:
		mov		C, Hardware.5
		jb		Options.7, code_20B1
		anl		C, RAM_2A.7
code_20B1:
		jc		code_20BD
		setb	RAM_2A.0
		sjmp	code_20C5

code_20BD:				; CODE XREF: IE0_0+17D3j
		mov	DPTR, #0FF53h
		movx	A, @DPTR
		mov	C, ACC.0	; Accumulator
		mov	RAM_2A.0, C

code_20C5:				; CODE XREF: IE0_0:code_1F53j
					; IE0_0+17D8j
		
	
		jnb	RAM_2A.0, code_20CB
		lcall	DIV_R0R1_2

code_20CB:				; CODE XREF: IE0_0:code_20C5j
		mov	RAM_A, RAM_8
		mov	RAM_B, RAM_9
		mov	B, RAM_6F	; B-Register
		cpl	B.7		; B-Register
		lcall	MUL_R0R1_B
		mov	A, RAM_6F
		jnb	ACC.7, code_20E7 ; Accumulator
		lcall	ADD_R0R1_R2R3
		jnc	code_20E7
		mov	R0, #0FFh
		mov	R1, #0FFh

code_20E7:				; CODE XREF: IE0_0+17FBj IE0_0+1801j
		mov	RAM_A, RAM_8
		mov	RAM_B, RAM_9
		mov	B, RAM_4F	; B-Register
		cpl	B.7		; B-Register
		lcall	MUL_R0R1_B
		mov	A, RAM_4F
		jnb	ACC.7, code_2103 ; Accumulator
		lcall	ADD_R0R1_R2R3
		jnc	code_2103
		mov	R0, #0FFh
		mov	R1, #0FFh

code_2103:				; CODE XREF: IE0_0+1817j IE0_0+181Dj
		CALC_INJ_STAT
		mov	DPTR, #0FF51h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	RAM_E, RAM_8
		mov	RAM_F, RAM_9
		mov	R2, RPM_RT
		mov	R3, GBC_RT
		mov	DPTR, #0A071h	; Расчетное разряжение в ресивере | Точка разряжения - Обороты коленвала, об/мин - Цикловое наполнение,мг/цикл
		lcall	GET_3D_VALUE
		mov	RAM_A, A
		mov	DPTR, #0FAB1h
		movx	@DPTR, A
		anl	A, #0F8h
		rr	A
		rr	A
		rr	A
		mov	DPTR, #0FAB2h
		movx	@DPTR, A
		mov	DPTR, #0A051h	; Коэффициент коррекции	времени	впрыска	| Коэффициент коррекции	- Точка	разряжения
		lcall	GET_2D_VALUE
		mov	DPTR, #0FAB3h
		movx	@DPTR, A
		mov	B, A		; B-Register
		mov	RAM_8, RAM_E
		mov	RAM_9, RAM_F
		lcall	MUL_R0R1_B
		mov	DPTR, #0F987h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	A, R0
		orl	A, R1
		jz	code_217F
		mov	R2, RAM_50
		mov	R3, #0
		lcall	ADD_R0R1_R2R3
		jnb	RAM_2A.0, code_216C
		mov	DPTR, #60D9h	; Добавка при работе в попарно-паралельном режиме | мсек.
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	R3, #0
		lcall	ADD_R0R1_R2R3

code_216C:				; CODE XREF: IE0_0:code_20BAj
					; IE0_0+187Ej
		setb	C
		mov	DPTR, #5FA8h	; Минимальное время впрыска | мсек.
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		subb	A, R0
		mov	A, #1
		movc	A, @A+DPTR
		mov	R3, A
		subb	A, R1
		jc	code_217F
		mov	A, R2
		mov	R0, A
		mov	A, R3
		mov	R1, A

code_217F:				
		mov	DPTR, #5F03h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.2, code_2185	; откл. форсунок	
		mov	R0, #0
		mov	R1, #0

code_2185:
		mov	DPTR, #0F841h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		
		
		mov	B, #10h		; B-Register
		lcall	MUL_R0R1_B
		mov	MD0, B		
		mov	MD1, R0		
		mov	MD2, R1		
		mov	MD3, #0		
		mov	MD4, #0Ch	
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
		
		mov	A, R0
		orl	A, R1
		jnz	code_21B7
		ljmp	code_224F
; ---------------------------------------------------------------------------

code_21B7:				; CODE XREF: IE0_0+18D2j
		mov	A, RAM_41
		mov	C, RAM_2A.0
		mov	ACC.2, C	; Accumulator
		mov	DPTR, #0A558h	; Последовательность работы форсунок
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		jnb	B.0, code_21E6	; B-Register
		mov	A, RAM_7C
		jb	ACC.2, code_21E6 ; Accumulator
		anl	CMEN, #0FEh	; Compare Enable Register (RMAP=0)
		clr	EAL		; Interrupt Enable Register 0
		clr	P4.0		; Port 4 (PDIR=0)
		mov	CCL1, A		; Compare/Capture Register 1, Low Byte
		setb	EAL		; Interrupt Enable Register 0
		mov	A, CCL1		; Compare/Capture Register 1, Low Byte
		add	A, R0
		mov	R2, A
		mov	A, CCH1		; Compare/Capture Register 1, High Byte
		addc	A, R1
		mov	CMH0, A		; Compare Register 0, High Byte	(RMAP=0)
		mov	CML0, R2	; Compare Register 0, Low Byte (RMAP=0)
		orl	CMEN, #1	; Compare Enable Register (RMAP=0)
		setb	P4.0		; Port 4 (PDIR=0)

code_21E6:				; CODE XREF: IE0_0+18E3j IE0_0+18E8j
		jnb	B.1, code_2209	; B-Register
		mov	A, RAM_7C
		jb	ACC.1, code_2209 ; Accumulator
		anl	CMEN, #0FDh	; Compare Enable Register (RMAP=0)
		clr	EAL		; Interrupt Enable Register 0
		clr	P4.1		; Port 4 (PDIR=0)
		mov	CCL1, A		; Compare/Capture Register 1, Low Byte
		setb	EAL		; Interrupt Enable Register 0
		mov	A, CCL1		; Compare/Capture Register 1, Low Byte
		add	A, R0
		mov	R2, A
		mov	A, CCH1		; Compare/Capture Register 1, High Byte
		addc	A, R1
		mov	CMH1, A		; Compare Register 1, High Byte	(RMAP=0)
		mov	CML1, R2	; Compare Register 1, Low Byte (RMAP=0)
		orl	CMEN, #2	; Compare Enable Register (RMAP=0)
		setb	P4.1		; Port 4 (PDIR=0)

code_2209:				; CODE XREF: IE0_0:code_21E6j
					; IE0_0+190Bj
		jnb	B.2, code_222C	; B-Register
		mov	A, RAM_7C
		jb	ACC.0, code_222C ; Accumulator
		anl	CMEN, #0FBh	; Compare Enable Register (RMAP=0)
		clr	EAL		; Interrupt Enable Register 0
		clr	P4.2		; Port 4 (PDIR=0)
		mov	CCL1, A		; Compare/Capture Register 1, Low Byte
		setb	EAL		; Interrupt Enable Register 0
		mov	A, CCL1		; Compare/Capture Register 1, Low Byte
		add	A, R0
		mov	R2, A
		mov	A, CCH1		; Compare/Capture Register 1, High Byte
		addc	A, R1
		mov	CMH2, A		; Compare Register 2, High Byte	(RMAP=0)
		mov	CML2, R2	; Compare Register 2, Low Byte (RMAP=0)
		orl	CMEN, #4	; Compare Enable Register (RMAP=0)
		setb	P4.2		; Port 4 (PDIR=0)

code_222C:

		jnb	B.3, code_224F
		mov	A, RAM_7C
		jb	ACC.3, code_224F
		anl	CMEN, #0F7h
		clr	EAL
		clr	P4.3
		mov	CCL1, A
		setb	EAL
		mov	A, CCL1
		add	A, R0
		mov	R2, A
		mov	A, CCH1	
		addc	A, R1
		mov	CMH3, A	
		mov	CML3, R2
		orl	CMEN, #8
		setb	P4.3

; ---------------------------------------------------------------------------
; Сигнал расхода топлива
; ---------------------------------------------------------------------------
code_224F:

		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.0, code_22D0	; Моментный РХХ

		mov	DPTR, #0FF51h		; Чистое время впрыска (без коррекции по форсункам) (0xFF52|0xFF51)
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		mov	DPTR, #60D4h		; Цикловая добавка времени впрыска для иммитатора | мсек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, R0
		clr	C
		subb	A, B
		mov	R2, A
		mov	A, R1
		subb	A, #0
		mov	R3, A
		jnc	code_226E
		mov	R2, #0
		mov	R3, #0

code_226E:
		mov	DPTR, #0F939h		; Сумма времени впрыска для сигнала РТ
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		lcall	ADD_R0R1_R2R3
		
		mov	DPTR, #0F939h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		jnb	RAM_2A.0, code_2295
		mov	R3, #6
		mov	R2, #50h
		sjmp	code_22A1


code_2295:
		mov	DPTR, #60FEh		; Вес 1	импульса ДРТ в еденицах времени впрыска | мсек.
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	DPTR, #60FFh
		clr	A
		movc	A, @A+DPTR
		mov	R3, A

code_22A1:
		lcall	SUB_R0R1_R2R3
		
		jc	code_22D0
		
		mov	DPTR, #0F939h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		anl	CLRMSK,	#0FDh
		
		clr	EAL
		setb	P5.1
		mov	CCL1, A
		setb	EAL
		
		mov	A, CCL1
		add	A, #94h
		mov	R2, A
		mov	A, CCH1	
		addc	A, #0
		
		mov	COMCLRH, A
		mov	COMCLRL, R2
		
		orl	CLRMSK,	#2

; ---------------------------------------------------------------------------
code_22D0:	

		jb	RAM_2A.3, code_22EF
		mov	DPTR, #0F82Eh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #0F8F5h
		movx	A, @DPTR
		add	A, R0
		movx	@DPTR, A
		inc	DPL
		movx	A, @DPTR
		addc	A, R1
		movx	@DPTR, A
		inc	DPL
		movx	A, @DPTR
		addc	A, #0
		jc	code_22EF
		movx	@DPTR, A

code_22EF:

		jnb	Options.6, code_22FE
		jnb	RAM_28.5, code_2301
		clr	A
		mov	DPTR, #0F993h
		movx	@DPTR, A
		mov	DPTR, #0F994h
		movx	@DPTR, A

code_22FE:
		ljmp	code_2423
; ---------------------------------------------------------------------------

code_2301:
		mov	DPTR, #0F97Bh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		mov     DPTR, #0F981h
		movx    A, @DPTR
		mov     R2, A
		inc     DPL
		movx    A, @DPTR
		mov     R3, A
		lcall   ADD_R0R1_R2R3

		mov	A, R0
		orl	A, R1
		jnz	code_2321
		clr	A
		mov	DPTR, #0F993h
		movx	@DPTR, A
		mov	DPTR, #0F994h
		movx	@DPTR, A
		mov	DPTR, #0F87Fh
		movx	A, @DPTR
		anl	A, #0FEh
		movx	@DPTR, A
		ljmp	code_2423
; ---------------------------------------------------------------------------

code_2321:
		mov	DPTR, #0F87Fh
		movx	A, @DPTR
		orl	A, #1
		movx	@DPTR, A
		jnb	RAM_2A.0, code_232E
		lcall	DIV_R0R1_2

code_232E:
		mov	RAM_A, RAM_8
		mov	RAM_B, RAM_9
		mov	B, RAM_6F	; B-Register
		cpl	B.7		; B-Register
		lcall	MUL_R0R1_B
		mov	A, RAM_6F
		jnb	ACC.7, code_234A ; Accumulator
		lcall	ADD_R0R1_R2R3
		jnc	code_234A
		mov	R0, #0FFh
		mov	R1, #0FFh

code_234A:
		CALC_INJ_STAT
		mov	R2, RAM_50
		mov	R3, #0
		lcall	ADD_R0R1_R2R3
		mov	DPTR, #0F993h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	B, #10h		; B-Register
		lcall	MUL_R0R1_B
		mov	MD0, B		
		mov	MD1, R0		
		mov	MD2, R1		
		mov	MD3, #0		
		mov	MD4, #0Ch	
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

code_238C:				; CODE XREF: IE0_0+1A3Ej
		mov	A, R0
		orl	A, R1
		jnz	code_2393
		ljmp	code_2423
; ---------------------------------------------------------------------------

code_2393:				; CODE XREF: IE0_0+1AAEj
		mov	A, RAM_7C
		anl	A, #1
		jnz	code_23B7
		jnb	P4.2, code_23B7	; Port 4 (PDIR=0)
		anl	CMEN, #0FBh	; Compare Enable Register (RMAP=0)
		clr	EAL		; Interrupt Enable Register 0
		clr	P4.2		; Port 4 (PDIR=0)
		mov	CCL1, A		; Compare/Capture Register 1, Low Byte
		setb	EAL		; Interrupt Enable Register 0
		mov	A, CCL1		; Compare/Capture Register 1, Low Byte
		add	A, R0
		mov	R2, A
		mov	A, CCH1		; Compare/Capture Register 1, High Byte
		addc	A, R1
		mov	CMH2, A		; Compare Register 2, High Byte	(RMAP=0)
		mov	CML2, R2	; Compare Register 2, Low Byte (RMAP=0)
		orl	CMEN, #4	; Compare Enable Register (RMAP=0)
		setb	P4.2		; Port 4 (PDIR=0)

code_23B7:				; CODE XREF: IE0_0+1AB7j IE0_0+1AB9j
		mov	A, RAM_7C
		anl	A, #2
		jnz	code_23DB
		jnb	P4.1, code_23DB	; Port 4 (PDIR=0)
		anl	CMEN, #0FDh	; Compare Enable Register (RMAP=0)
		clr	EAL		; Interrupt Enable Register 0
		clr	P4.1		; Port 4 (PDIR=0)
		mov	CCL1, A		; Compare/Capture Register 1, Low Byte
		setb	EAL		; Interrupt Enable Register 0
		mov	A, CCL1		; Compare/Capture Register 1, Low Byte
		add	A, R0
		mov	R2, A
		mov	A, CCH1		; Compare/Capture Register 1, High Byte
		addc	A, R1
		mov	CMH1, A		; Compare Register 1, High Byte	(RMAP=0)
		mov	CML1, R2	; Compare Register 1, Low Byte (RMAP=0)
		orl	CMEN, #2	; Compare Enable Register (RMAP=0)
		setb	P4.1		; Port 4 (PDIR=0)

code_23DB:				; CODE XREF: IE0_0+1ADBj IE0_0+1ADDj
		mov	A, RAM_7C
		anl	A, #4
		jnz	code_23FF
		jnb	P4.0, code_23FF	; Port 4 (PDIR=0)
		anl	CMEN, #0FEh	; Compare Enable Register (RMAP=0)
		clr	EAL		; Interrupt Enable Register 0
		clr	P4.0		; Port 4 (PDIR=0)
		mov	CCL1, A		; Compare/Capture Register 1, Low Byte
		setb	EAL		; Interrupt Enable Register 0
		mov	A, CCL1		; Compare/Capture Register 1, Low Byte
		add	A, R0
		mov	R2, A
		mov	A, CCH1		; Compare/Capture Register 1, High Byte
		addc	A, R1
		mov	CMH0, A		; Compare Register 0, High Byte	(RMAP=0)
		mov	CML0, R2	; Compare Register 0, Low Byte (RMAP=0)
		orl	CMEN, #1	; Compare Enable Register (RMAP=0)
		setb	P4.0		; Port 4 (PDIR=0)

code_23FF:				; CODE XREF: IE0_0+1AFFj IE0_0+1B01j
		mov	A, RAM_7C
		anl	A, #8
		jnz	code_2423
		jnb	P4.3, code_2423	; Port 4 (PDIR=0)
		anl	CMEN, #0F7h	; Compare Enable Register (RMAP=0)
		clr	EAL		; Interrupt Enable Register 0
		clr	P4.3		; Port 4 (PDIR=0)
		mov	CCL1, A		; Compare/Capture Register 1, Low Byte
		setb	EAL		; Interrupt Enable Register 0
		mov	A, CCL1		; Compare/Capture Register 1, Low Byte
		add	A, R0
		mov	R2, A
		mov	A, CCH1		; Compare/Capture Register 1, High Byte
		addc	A, R1
		mov	CMH3, A		; Compare Register 3, High Byte	(RMAP=0)
		mov	CML3, R2	; Compare Register 3, Low Byte (RMAP=0)
		orl	CMEN, #8	; Compare Enable Register (RMAP=0)
		setb	P4.3		; Port 4 (PDIR=0)

code_2423:				; CODE XREF: IE0_0+151Cj
					; IE0_0:code_22FEj ...
		clr	A
		mov	DPTR, #0F944h
		movx	@DPTR, A
		mov	A, RAM_43
		jnz	code_246B
		mov	DPTR, #0F93Eh
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	C, ACC.0	; Accumulator
		mov	DPTR, #0FA71h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	A, R0
		addc	A, #0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		jnc	code_244B
		mov	R0, #0FFh
		mov	R1, #0FFh

code_244B:				; CODE XREF: IE0_0+1B65j
		mov	DPTR, #0FA71h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #5FD8h
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	DPTR, #5FD9h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		mov	A, B		; B-Register
		mov	ACC.1, C	; Accumulator
		mov	DPTR, #0F93Eh
		movx	@DPTR, A

code_246B:				; CODE XREF: IE0_0+1B4Aj
		mov	DPTR, #0F899h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A

code_2471:				; CODE XREF: IE0_0+D74j
		setb	RAM_28.4
		mov	DPSEL, #0	; Data Pointer Select Register
		pop	DPH		; Data Pointer,	High Byte
		pop	DPL		; Data Pointer,	Low Byte
		pop	DPSEL		; Data Pointer Select Register
		pop	B		; B-Register
		pop	ACC		; Accumulator
		pop	PSW		; Program Status Word
		reti
; End of function IE0_0







; ==========================================================================
; START	OF FUNCTION CHUNK FOR RESET_0
; ==========================================================================

code_2483:

		clr	EAL
		mov	A, IP0
		jnb	ACC.6, code_2496
		ljmp	code_25D2
; ---------------------------------------------------------------------------

code_2496:
		mov	IP0, #0	
		mov	WDTREL,	#80h
		setb	WDT
		setb	SWDT
		mov	SYSCON,	#0
		mov	SP, #SP_VALUE
		mov	PSW, #0
		mov	P1, #0FFh
		mov	P3, #0FFh
		mov	P4, #0FFh
		mov	P5, #0BFh
		mov	P6, #0FFh
		mov	P9, #0A8h
		
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.2, code_2507
		mov	A, #5Fh
		mov	DPTR, #0F9A7h
		movx	@DPTR, A
		mov	A, #6Fh
		mov	DPTR, #0F9A8h
		movx	@DPTR, A
		sjmp	code_2508
		
code_2507:		
		mov	A, #5Fh
		mov	DPTR, #0F9A7h
		movx	@DPTR, A
		mov	A, #4Fh
		mov	DPTR, #0F9A8h
		movx	@DPTR, A
		

code_2508:
		clr	A
		mov	DPTR, #0F999h
		movx	@DPTR, A
		
		lcall	SET_OUT_PIN_STATE
		
		clr	A
		mov	RAM_22,	A
		mov	RAM_23,	A
		mov	RAM_24,	A
		mov	RAM_25,	A
		mov	DPTR, #0F9BEh
		movx	@DPTR, A

		clr	P5.1
		
		clr	A
		mov	DPTR, #0F9C2h
		movx	@DPTR, A
; -------		
		mov	DPTR, #0F8C2h
		movx	A, @DPTR
		xrl	A, #55h
		jz	code_2548
		mov	R0, #0ABh
		mov	A, @R0
		cjne	A, #0A5h, code_2539
		sjmp	code_2548

code_2539:
		mov	DPTR, #0F9C2h		; Флаги ошибок 5
		movx	A, @DPTR
		orl	A, #2
		movx	@DPTR, A

code_2548:

		lcall	DELAY
		lcall	DELAY
		
		clr	A
		mov	@R0, A
; -------		

; ---------------------------------------------------------------------------

code_25AB:

		lcall	SET_START_FW_VARIANT
		
code_25D2:

		mov	WDTREL,	#0E2h
		setb	WDT
		setb	SWDT
		clr	EAL
		mov	SP, #SP_VALUE
		mov	SYSCON,	#0
		mov	PSW, #0
		mov	CCEN, #0
		mov	CMEN, #0
		mov	CC4EN, #0
		
		anl	RAM_2D,	#1Fh
		
; -------  0x0 .. 0x2C = 0		
		mov	R0, #2Ch

code_25F2:
		mov	@R0, #0
		djnz	R0, code_25F2
		
; -------  0x2E .. 0xFF = 0		
		mov	R0, #2Eh

code_25F8:
		mov	@R0, #0
		inc	R0
		mov	A, R0
		jnz	code_25F8
; -------		
		orl	IP1, #80h
		mov	P0, #0FFh
		orl	IP1, #80h
		mov	P1, #1Ch
		orl	IP1, #80h
		mov	P2, #0
		orl	IP1, #80h
		mov	P3, #39h
		orl	IP1, #80h
		mov	P4, #0
		orl	IP1, #80h
		mov	P5, #20h
		orl	IP1, #80h
		mov	P6, #0D0h
		orl	IP1, #80h
		mov	P9, #0
		orl	SYSCON,	#40h
		clr	A
		mov	ADCON0,	A
		mov	ADCON1,	A
		mov	ADDATL,	A
		mov	ADDATH,	A
		mov	ARCON, A
		mov	CCL1, A
		mov	CCH1, A
		mov	CCL2, A
		mov	CCH2, A
		mov	CCL3, A
		mov	CCH3, A
		mov	CCL4, A
		mov	CCH4, A
		mov	CMEN, A
		mov	CML0, A
		mov	CMH0, A
		mov	CML1, A
		mov	CMH1, A
		mov	CML2, A
		mov	CMH2, A
		mov	CML3, A
		mov	CMH3, A
		mov	CML4, A
		mov	CMH4, A
		mov	CML5, A
		mov	CMH5, A
		mov	CML6, A
		mov	CMH6, A
		mov	CML7, A
		mov	CMH7, A
		mov	CRCL, A
		mov	CRCH, A
		mov	PCON, A
		mov	S0BUF, A
		mov	S1BUF, A
		mov	S0CON, A
		mov	TCON, A
		mov	TL0, A
		mov	TH0, A
		mov	TL1, A
		mov	TH1, A
		mov	TL2, A
		mov	TH2, A
		mov	PRSC, #0D5h
		mov	TMOD, #15h
		setb	TCON.2
		setb	TCON.0
		mov	T2CON, #85h
		mov	IEN3, #0
		mov	CTCON, #0C3h
		mov	CT1CON,	#43h
		mov	CTRELH,	#0
		mov	CTRELL,	#0
		orl	SYSCON,	#10h
		mov	CTRELH,	#0FEh
		mov	CTRELL,	#0Ch
		anl	SYSCON,	#0EFh
		mov	CMSEL, #0
		mov	CCEN, #4Ch
		mov	CC4EN, #0
		clr	IEN0.2
		clr	IEN1.1
		
		mov	A, IP0
		anl	A, #40h
		jz	code_26CD
		mov	DPTR, #0F9B0h
		movx	A, @DPTR
		xrl	A, #55h
		jz	code_26CD
		setb	RAM_22.5

code_26CD:

		mov	IP1, #2Ch
		mov	IP0, #34h
		
		lcall	INIT_S0
		
; ---------------------------------------------------------------------------		
		mov	DPTR, #0F8C2h	; [X] Флаг =0x55 перед стартом цикла 20мс и =0 при выключении зажигания
		movx	A, @DPTR
		cjne	A, #55h, code_26E0
		ljmp	code_2741


code_26E0:
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		jb	ACC.1, code_2720
		
		mov	R0, #1
		mov	R1, #0
		mov	DPTR, #0FD00h

code_26EE:
		clr	C
		movx	A, @DPTR
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		inc	DPTR
		mov	A, DPH
		cjne	A, #0FFh, code_26EE
		
		mov	R2, #40h
		mov	DPTR, #0F4D2h

code_2701:
		clr	C
		movx	A, @DPTR
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		inc	DPTR
		djnz	R2, code_2701
		
		mov	DPTR, #0F8FEh
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		mov	A, R0
		orl	A, R1
		jz	code_2720
		setb	RAM_22.6
		sjmp	code_2722

code_2720:

		clr	RAM_22.6

code_2722:
		mov	B, #34h
		mov	DPTR, #0F900h
		clr	A

code_2729:
		movx	@DPTR, A
		inc	DPTR
		djnz	B, code_2729
		mov	DPTR, #0F800h

code_2731:
		clr	A
		movx	@DPTR, A
		inc	DPTR
		mov	A, DPL
		jnz	code_2731
		clr	A
		mov	DPTR, #0F997h
		movx	@DPTR, A
		mov	DPTR, #0F4B8h
		movx	@DPTR, A

; ---------------------------------------------------------------------------
code_2741:
		lcall	FLAGS_INIT

; ---------------------------------------------------------------------------
		clr	A
		mov	DPTR, #0F965h
		movx	@DPTR, A
		mov	DPTR, #0F985h
		movx	@DPTR, A
		mov	DPTR, #0F986h
		movx	@DPTR, A
		mov	DPTR, #0F98Bh
		movx	@DPTR, A
		
		mov	DPTR, #60E6h	; Начальное минимальное	время между циклами детонации |	сек.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F953h
		movx	@DPTR, A
		
		mov	DPTR, #609Dh	; Начальный период восстановления УОЗ |	сек.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F954h
		movx	@DPTR, A
		
		mov	DPTR, #5F50h	; Начальный порог детонации |
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F943h
		movx	@DPTR, A
		
		mov	DPTR, #5F53h	; Начальная фаза начала	измерения детонации | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F946h
		movx	@DPTR, A
		
		mov	DPTR, #5F54h	; Начальная фаза окончания измерения детонации | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F947h
		movx	@DPTR, A
		
		mov	DPTR, #0F955h
		mov	A, #5
		movx	@DPTR, A
		inc	DPTR
		movx	@DPTR, A
		inc	DPTR
		movx	@DPTR, A
		inc	DPTR
		movx	@DPTR, A
		
		;mov	DPTR, #0F9C2h
		;movx	A, @DPTR
		;mov	C, RAM_22.6
		;orl	C, ACC.1
		;anl	C, /RAM_22.5
		
		mov	A, #8
		mov	DPTR, #0F82Bh	; Постоянная времени интегратора
		movx	@DPTR, A
		
		mov	DPTR, #5F51h	; Начальный средний уровень шума двигателя | уровень
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F934h
		movx	@DPTR, A
		mov	DPTR, #0F966h
		movx	@DPTR, A
		mov	DPTR, #0F968h
		movx	@DPTR, A
		mov	DPTR, #0F96Ah
		movx	@DPTR, A
		mov	DPTR, #0F96Ch
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F935h
		movx	@DPTR, A
		mov	DPTR, #0F967h
		movx	@DPTR, A
		mov	DPTR, #0F969h
		movx	@DPTR, A
		mov	DPTR, #0F96Bh
		movx	@DPTR, A
		mov	DPTR, #0F96Dh
		movx	@DPTR, A
		mov	DPTR, #0F93Dh
		movx	@DPTR, A		
		
		mov	DPTR, #0F934h	; Общий уровень шума
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #60E7h	; Начальный относительный порог детонации
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		lcall	MUL_R0R1_B
		mov	A, R1
		jz	code_27DF
		mov	R0, #0FFh
		mov	R1, #0Fh
		
		sjmp	code_27E9

code_27DF:
		mov	RAM_1, R0
		mov	R0, B
		lcall	DIV_R0R1_8
		lcall	DIV_R0R1_2

code_27E9:
		mov	DPTR, #0FA92h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		mov	DPTR, #0F9D1h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		jb	RAM_28.7, code_27EA
		ajmp	code_27EB
		
code_27EA:		
		HIP9011_INIT
		
; -------------------------------------------------------------------------		

code_27EB:
		setb	RAM_2C.2

		clr	A
		mov	RAM_67,	A
		mov	RAM_66,	A
		mov	DPTR, #0F828h
		movx	@DPTR, A
		mov	DPTR, #0F9B0h
		movx	@DPTR, A
		mov	DPTR, #0F9C3h
		movx	@DPTR, A
		mov	DPTR, #0F9CEh
		movx	@DPTR, A
		mov	DPTR, #0F9CFh
		movx	@DPTR, A
		mov	DPTR, #0F9D0h
		movx	@DPTR, A
		mov	DPTR, #0F9C4h
		movx	@DPTR, A
		mov	DPTR, #0F9C5h
		movx	@DPTR, A
		mov	DPTR, #0F9C6h
		movx	@DPTR, A
		mov	DPTR, #0F9C7h
		movx	@DPTR, A
		mov	DPTR, #0F9C8h
		movx	@DPTR, A
		mov	DPTR, #0F9C9h
		movx	@DPTR, A
		mov	DPTR, #0F4C9h
		movx	@DPTR, A
		mov	DPTR, #0FA8Ch
		movx	@DPTR, A
		mov	DPTR, #0F95Bh
		movx	@DPTR, A
		mov	DPTR, #0F95Ch
		movx	@DPTR, A
		mov	DPTR, #0FA8Dh
		movx	@DPTR, A
		mov	DPTR, #0F99Dh
		movx	@DPTR, A
		mov	DPTR, #0F99Eh
		movx	@DPTR, A
		mov	DPTR, #0F97Ah
		movx	@DPTR, A
		mov	DPTR, #0F936h
		movx	@DPTR, A
		mov	DPTR, #0F944h
		movx	@DPTR, A
		mov	DPTR, #0FA94h
		movx	@DPTR, A
		mov	DPTR, #0FA96h
		movx	@DPTR, A
		mov	DPTR, #0F9A0h
		movx	@DPTR, A
		mov	DPTR, #0FA97h
		movx	@DPTR, A
		mov	DPTR, #0F93Ch
		movx	@DPTR, A
		mov	DPTR, #0F94Ch
		movx	@DPTR, A
		mov	DPTR, #0F976h
		movx	@DPTR, A
		mov	DPTR, #0FF46h
		movx	@DPTR, A
		mov	DPTR, #0F9A0h
		movx	@DPTR, A
		mov	DPTR, #0FAA5h
		movx	@DPTR, A
		mov	DPTR, #0FAA6h
		movx	@DPTR, A
		mov	DPTR, #0FF57h
		movx	@DPTR, A
		mov	DPTR, #0FF3Dh
		movx	@DPTR, A
		
		mov	DPTR, #0F9D7h
		movx	@DPTR, A
		
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		setb	ACC.6		; Accumulator
		movx	@DPTR, A
		mov	A, #0FFh
		mov	RAM_5A,	A
		mov	DPTR, #0F9CAh
		movx	@DPTR, A
		mov	DPTR, #0F9CBh
		movx	@DPTR, A
		mov	DPTR, #0FA81h
		movx	@DPTR, A
		mov	DPTR, #6061h	; Фаза впрыска на пуске	| гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0FF47h
		movx	@DPTR, A
		mov	DPTR, #5FF8h
		clr	A
		movc	A, @A+DPTR
		mov	RAM_3C,	A
		mov	RAM_3E,	A
		mov	DPTR, #5FF9h
		clr	A
		movc	A, @A+DPTR
		mov	RAM_3D,	A
		mov	RAM_3F,	A
		mov	DPTR, #5F71h	; К.Д.К. GBC на	оборотах выше 5010 |
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F949h
		movx	@DPTR, A
		mov	DPTR, #608Dh    ; Начальная задержка отключения топливоподачи, сек.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0FF3Eh
		movx	@DPTR, A
		mov	DPTR, #5F86h	; Ожидаемая температура	ОГ в точке росы	| град.С
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F893h
		movx	@DPTR, A
		mov	DPTR, #0F895h
		movx	@DPTR, A
		
		clr	A
		
		mov	DPTR, #0FA9Bh	; [0] =1 - была отсечка топливом или зажиганием
		movx	@DPTR, A
		mov	DPTR, #0F891h	; Текущее значение процента сигнала открытия моментного РХХ
		movx	@DPTR, A
		
		mov	DPTR, #0F896h	; Фильтрованное давление
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		
		mov	DPTR, #0F88Fh
		movx	@DPTR, A
		
		mov	DPTR, #0F97Bh	; Доп. топливо по дросселю
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		
		mov	DPTR, #0F981h	; Доп. топливо по давлению
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A
		
		mov	DPTR, #0F991h	; Суммарное доп. топливо
		movx	@DPTR, A
		inc	DPL
		movx	@DPTR, A		
		
		mov	DPTR, #0F98Dh
		movx	@DPTR, A
		mov	DPTR, #0F98Eh
		movx	@DPTR, A
		mov	DPTR, #0F98Fh
		movx	@DPTR, A
		mov	DPTR, #0F990h
		movx	@DPTR, A
		mov	DPTR, #0F993h
		movx	@DPTR, A
		mov	DPTR, #0F994h
		movx	@DPTR, A
		mov	DPTR, #0F98Ch
		movx	@DPTR, A
		mov	DPTR, #0F99Bh
		movx	@DPTR, A
		mov	DPTR, #0F99Ch
		movx	@DPTR, A
		mov	DPTR, #0F9A3h
		movx	@DPTR, A
		mov	DPTR, #0F9A4h
		movx	@DPTR, A
		mov	DPTR, #0F9A1h
		movx	@DPTR, A
		mov	DPTR, #0F9A2h
		movx	@DPTR, A
		mov	DPTR, #0F9C0h
		movx	@DPTR, A
		mov	DPTR, #0F9D3h
		movx	@DPTR, A
		mov	DPTR, #0F936h
		movx	@DPTR, A
		mov	DPTR, #0F9D4h
		movx	@DPTR, A
		mov	DPTR, #0F94Ah
		movx	@DPTR, A
		mov	DPTR, #0F94Bh
		movx	@DPTR, A
		mov	DPTR, #0FF3Fh
		movx	@DPTR, A		
		mov	DPTR, #0FF40h
		movx	@DPTR, A		
		mov	DPTR, #0FF49h
		movx	@DPTR, A
		mov	DPTR, #0FF4Ah
		movx	@DPTR, A
		mov	DPTR, #0FF4Bh
		movx	@DPTR, A
		mov	DPTR, #0FF4Ch
		movx	@DPTR, A
		mov	DPTR, #0FA0Bh
		movx	@DPTR, A
		mov	DPTR, #0FA1Fh
		movx	@DPTR, A
		mov	DPTR, #0F8CFh
		movx	@DPTR, A
		mov	DPTR, #0FA79h
		movx	@DPTR, A
		mov	DPTR, #0FA7Ah
		movx	@DPTR, A
		mov	DPTR, #0FA7Bh
		movx	@DPTR, A
		mov	DPTR, #0FA7Ch
		movx	@DPTR, A
		mov	DPTR, #0FA7Dh
		movx	@DPTR, A
		mov	DPTR, #0FA7Eh
		movx	@DPTR, A
		mov	DPTR, #0FA7Fh
		movx	@DPTR, A
		mov	DPTR, #0FA80h
		movx	@DPTR, A
		mov	DPTR, #0FA78h
		movx	@DPTR, A
		mov	DPTR, #0FA87h
		movx	@DPTR, A
		mov	DPTR, #0FA88h
		movx	@DPTR, A
		mov	DPTR, #0FA89h
		movx	@DPTR, A
		mov	DPTR, #0FA8Ah
		movx	@DPTR, A
		mov	DPTR, #0FA82h
		movx	@DPTR, A
		mov	DPTR, #0FA83h
		movx	@DPTR, A
		mov	DPTR, #0FA84h
		movx	@DPTR, A
		mov	DPTR, #0FA85h
		movx	@DPTR, A
		mov	DPTR, #0FA86h
		movx	@DPTR, A
		mov	DPTR, #0FAA1h
		movx	@DPTR, A
		mov	DPTR, #0FA10h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA11h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA12h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA13h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA14h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA15h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA16h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA17h
		movx	@DPTR, A
		mov	DPTR, #0FA0Eh
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0FA71h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA72h
		movx	@DPTR, A
		inc		DPL
		;mov	DPTR, #0FA73h
		movx	@DPTR, A
		mov	DPTR, #0FA75h
		movx	@DPTR, A
		mov	DPTR, #0F93Eh
		movx	@DPTR, A

		mov	A, #0FFh
		mov	DPTR, #0F835h
		movx	@DPTR, A
		mov	DPTR, #6067h	; Начальное положение ДПДЗ | В
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F8B2h
		movx	@DPTR, A
		mov	DPTR, #0F827h
		movx	@DPTR, A
		mov	RAM_6E,	#0
		mov	DPTR, #60A4h	; Начальное значение коррекции времени впрыска |
		clr	A
		movc	A, @A+DPTR
		mov	RAM_6F,	A
		setb	RAM_2E.0
		clr	A
		mov	DPTR, #0F806h
		movx	@DPTR, A
		
		mov	DPTR, #0F9D7h
		movx	@DPTR, A
		
		mov	DPTR, #RAM_CAPTURE_MODE
		movx	@DPTR, A
		
		mov	DPTR, #0F9B6h
		movx	@DPTR, A
		
		setb	RAM_2B.0
		setb	RAM_2A.3
		setb	RAM_2A.4
		
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		mov	C, RAM_22.5
		orl	C, /ACC.1
		orl	C, /RAM_22.6
		jc	code_2A42
		setb	RAM_2C.2
		clr	A
		mov	DPTR, #0F9BFh
		movx	@DPTR, A

code_2A42:
		setb	RAM_2A.1
		clr	RAM_2B.7
		
		lcall	code_ACED
		
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		mov	C, RAM_22.5
		orl	C, ACC.1
		orl	C, RAM_22.6
		jnc	code_2A62
		lcall	CLR_ADAPT_FUEL
		
		mov	DPTR, #0F97Fh
		movx	@DPTR, A

code_2A62:
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		mov	C, RAM_22.5
		orl	C, ACC.1
		orl	C, RAM_22.6
		jc	code_2A8D
		mov	DPTR, #60DEh
		clr	A
		movc	A, @A+DPTR
		jb	ACC.0, code_2A9C

code_2A8D:
		mov	B, #40h
		mov	DPTR, #0F4D2h
		clr	A

code_2A94:
		movx	@DPTR, A
		inc	DPTR
		djnz	B, code_2A94
		lcall	code_DAD4

code_2A9C:
		lcall	code_B345
		clr	A
		mov	DPTR, #0F4D8h
		movx	@DPTR, A
		mov	DPTR, #0F518h
		movx	@DPTR, A
		
		mov	DPTR, #0F4D6h
		movx	A, @DPTR
		mov	C, ACC.7	; Accumulator
		clr	A
		mov	ACC.0, C	; Accumulator
		mov	DPTR, #0FF53h
		movx	@DPTR, A
		mov	B, #4		; B-Register
		lcall	READ_ADC
		mov	DPTR, #0F80Bh
		movx	@DPTR, A
		mov	R1, A
		swap	A
		rl	A
		anl	A, #0E0h
		mov	R3, A
		mov	A, R1
		rr	A
		rr	A
		rr	A
		anl	A, #1Fh
		mov	R2, A
		mov	DPTR, #6104h	; Тарировка ДТОЖ | Температура,	град.С - Напряжение АЦП	ДТОЖ
		lcall	GET_2D_INTERPOLATION
		clr	C
		subb	A, #14h
		jnc	code_2AE8
		mov	A, #0

code_2AE8:				; CODE XREF: RESET_0-BEFEj
		mov	TWAT, A
		mov	DPTR, #0F99Bh
		movx	@DPTR, A
		mov	DPTR, #0F9C7h
		movx	@DPTR, A
		mov	DPTR, #609Ch	; Коэффициент квантования ДТОЖ |
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, TWAT
		mul	AB
		add	A, #40h	; '@'
		jnc	code_2B02
		inc	B		; B-Register

code_2B02:				; CODE XREF: RESET_0-BEE4j
		jnb	B.7, code_2B09	; B-Register
		mov	A, #0F0h ; 'Ё'
		sjmp	code_2B15
; ---------------------------------------------------------------------------

code_2B09:				; CODE XREF: RESET_0:code_2B02j
		mov	C, ACC.7	; Accumulator
		mov	A, B		; B-Register
		rlc	A
		cjne	A, #0F0h, code_2B11 ; 'Ё'

code_2B11:
		jc	code_2B15
		mov	A, #0F0h ; 'Ё'

code_2B15:				; CODE XREF: RESET_0-BEDBj
					; RESET_0:code_2B11j
		mov	DPTR, #0FF4Dh
		movx	@DPTR, A
		swap	A
		anl	A, #0Fh
		mov	DPTR, #0FF4Eh
		movx	@DPTR, A
		mov	A, TWAT
		add	A, #3
		mov	B, #5		; B-Register
		div	AB
		cjne	A, #24h, code_2B2B ; '$'

code_2B2B:
		jc	code_2B2F
		mov	A, #24h	; '$'

code_2B2F:				; CODE XREF: RESET_0:code_2B2Bj
		mov	TWAT_RT, A
		mov	A, TWAT
		mov	B, #5		; B-Register
		div	AB
		cjne	A, #24h, code_2B3A ; '$'

code_2B3A:
		jc	code_2B3E
		mov	A, #24h	; '$'

code_2B3E:				; CODE XREF: RESET_0:code_2B3Aj
		mov	DPTR, #0F887h
		movx	@DPTR, A
		mov	A, B		; B-Register
		mov	B, #33h	; '3'   ; B-Register
		mul	AB
		mov	DPTR, #0F888h
		movx	@DPTR, A
		lcall	code_ED6D
		mov	A, #3
		mov	DPTR, #0F8B0h
		movx	@DPTR, A
		mov	B, #1		; B-Register
		lcall	READ_ADC
		mov	B, A		; B-Register
		mov	DPTR, #0F827h
		movx	A, @DPTR
		xch	A, B		; B-Register
		clr	C
		subb	A, B		; B-Register
		jc	code_2B81
		mov	B, A		; B-Register
		mov	DPTR, #6068h	; Коэффициент тарировки	ДПДЗ | %/В
		clr	A
		movc	A, @A+DPTR
		mul	AB
		mov	R0, B		; B-Register
		mov	DPTR, #606Ah	; Максимальное положение дросселя | %
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, B		; B-Register
		jnc	code_2B83
		add	A, B		; B-Register
		mov	R0, A
		sjmp	code_2B83
; ---------------------------------------------------------------------------

code_2B81:				; CODE XREF: RESET_0-BE7Cj
		mov	R0, #0

code_2B83:				; CODE XREF: RESET_0-BE68j
					; RESET_0-BE63j
		mov	A, R0
		mov	THR_CODE, A
		mov	DPTR, #0F98Ch
		movx	@DPTR, A
		mov	DPTR, #0F8B8h
		movx	@DPTR, A
		mov	B, #0		; B-Register
		lcall	READ_ADC
		mov	DPTR, #0F80Dh
		movx	@DPTR, A
		mov	DPTR, #0F951h
		movx	@DPTR, A
		mov	R1, A
		clr	A
		mov	DPTR, #0F950h
		movx	@DPTR, A
		mov	DPTR, #60BAh	; Минимальное напряжение бортовой сети | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		cjne	A, B, code_2BAD	; B-Register

code_2BAD:
		jc	code_2BC0
		mov	DPTR, #60BBh	; Максимальное напряжение бортовой сети	| В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		cjne	A, B, code_2BBA	; B-Register

code_2BBA:
		jnc	code_2BC0
		mov	RAM_4B,	R1
		sjmp	code_2BC7
; ---------------------------------------------------------------------------

code_2BC0:				; CODE XREF: RESET_0:code_2BADj
					; RESET_0:code_2BBAj
		mov	DPTR, #60BFh	; Напряжение 1 бортовой	сети при ошибке	| В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_4B,	A

code_2BC7:				; CODE XREF: RESET_0-BE24j
		mov	DPTR, #60BCh	; Смещение при квантовании напряжения |	В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, RAM_4B
		clr	C
		subb	A, B		; B-Register
		jnc	code_2BD6
		clr	A

code_2BD6:				; CODE XREF: RESET_0-BE0Fj
		mov	B, A		; B-Register
		mov	DPTR, #60BDh	; Коэффициент квантования напряжения | В
		clr	A
		movc	A, @A+DPTR
		mul	AB
		jnb	B.7, code_2BE5	; B-Register
		mov	A, #0FFh
		sjmp	code_2BE9
; ---------------------------------------------------------------------------

code_2BE5:				; CODE XREF: RESET_0-BE04j
		rlc	A
		mov	A, B		; B-Register
		rlc	A

code_2BE9:				; CODE XREF: RESET_0-BDFFj
		mov	DPTR, #0F978h
		movx	@DPTR, A
		mov	DPTR, #71D8h	; Динамическая производительность форсунки | Добавочное	время впрыска -	Бортовое напряжение
		lcall	GET_DEC_2D_MAP_VALUE_I44
		mov	RAM_50,	A
		clr	A
		mov	DPTR, #0F9B1h
		movx	@DPTR, A
		mov	DPTR, #0F9B2h
		movx	@DPTR, A
		mov	DPTR, #0F9B5h
		movx	@DPTR, A
		mov	A, #3
		mov	DPTR, #0F9B3h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #2Eh	; '.'
		movx	@DPTR, A
		
		jb	Options.0, code_2C2D
		
		mov	B, #3		; B-Register
		lcall	READ_ADC
		mov	R0, A
		clr	C
		subb	A, #28h
		jc	code_2C2D
		mov	A, R0
		clr	C
		subb	A, #3Ch
		jnc	code_2C2D
		mov	A, R0
		mov	DPTR, #0F9B1h
		movx	@DPTR, A
		mov	DPTR, #5FA6h	; Смещение напр. ДМРВ для диагностики ДПКВ | В
		clr	A
		movc	A, @A+DPTR
		add	A, R0
		mov	DPTR, #0F9B2h
		movx	@DPTR, A

code_2C2D:				; CODE XREF: RESET_0-BDCCj
					; RESET_0-BDC6j
		mov	DPTR, #8F71h	; Блокировка расчетов пленки после пуска | Время блокировки, сек. - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	DPTR, #0F9A5h
		movx	@DPTR, A
		mov	DPTR, #87E4h	; Состав смеси на ХХ | Отношение воздух/топливо	- Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	ALF_1, A
		mov	ALF_2, A
		jnb	Hardware.1, code_2C5C
		setb	RAM_2B.6
		mov	DPTR, #60D1h	; Температура холодной продувки	| град.С
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, TWAT
		mov	DPTR, #60CEh	; Время	холодной продувки | сек.
		jnc	code_2C56
		mov	DPTR, #60CFh	; Время	горячей	продувки | сек.

code_2C56:				; CODE XREF: RESET_0-BD91j
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F868h
		movx	@DPTR, A

code_2C5C:				; CODE XREF: RESET_0-BDA1j
		orl	P6, #20h	; Port 6 (PDIR=0)
		mov	RAM_46,	#14h
		clr	RAM_29.0
		mov	TL1, #0CBh ; 'T' ; Timer 1, Low Byte
		mov	TH1, #0FAh ; '·' ; Timer 1, High Byte
		setb	TR1		; Timer	Control	Register
		setb	WDT		; Interrupt Enable Register 0
		setb	SWDT		; Interrupt Enable Register 1
		setb	IEN0.0		; Interrupt Enable Register 0
		setb	IEN0.3		; Interrupt Enable Register 0
		setb	IEN0.2		; Interrupt Enable Register 0

; ---------------------------------------------------------------------------

		mov	DPTR, #0F8C2h
		movx	A, @DPTR
		xrl	A, #55h
		jz	code_2C96

code_2C87:
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		mov	C, RAM_22.6
		orl	C, ACC.1
		jnc	code_2C96
		
		lcall	SET_START_PSM
		
		sjmp	code_2CAA


code_2C96:

		mov	A, TWAT
		mov	DPTR, #0F80Ah
		movx	@DPTR, A
		mov	DPTR, #6AA1h	; Положение РХХ при пуске | Шаги РХХ - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	USSM, A
		
		mov	DPTR, #0F9C1h	; Сохраненое положение РХХ
		movx	A, @DPTR
		mov	PSM, A

code_2CAA:
		mov	A, USSM
		mov	R0, A
		mov	R1, #0
		lcall	MUL_R1R0_16
		mov	DPTR, #0F845h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
; ---------------------------------------------------------------------------
; Моментный РХХ
		
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.0, code_2CA0
		
		lcall	CALC_ETM_OPEN_RATIO
		
		mov	DPTR, #0F8A2h	; Длительность импульса открытия моментного РХХ
		mov	A, #20h		
		movx	@DPTR, A
		mov	COMSETL, A
		inc	DPTR
		mov	A, #3
		movx	@DPTR, A
		mov	COMSETH, A
		
		inc	DPTR
		mov	A, #21h		
		movx	@DPTR, A
		inc	DPTR
		clr	A
		movx	@DPTR, A
		
		clr	P5.1
		clr	P5.2
		
		mov	CC4EN, #80h	; Compare mode 2 selected, but only interrupt generation (ICR, ICS); no output signals at P5
		orl	IEN2, #10h	; Разрешение прерывания COMSET
		
		sjmp	code_2CAF
; ---------------------------------------------------------------------------
; Сигнал РТ на P5.1

code_2CA0:
		mov	CC4EN, #98h	; Compare Mode 2 selected at P5; Additional outputs of CC4 at P5.0 to P5.1; CC4 Compare / Capture disabled
		
; ---------------------------------------------------------------------------		
code_2CAF:
		mov	A, #55h
		mov	DPTR, #0F8C2h
		movx	@DPTR, A
		
		lcall	code_B090
		
		mov	DPTR, #605Ch	; Обороты блокировки впрыска | об./мин
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F9A6h
		movx	@DPTR, A
		mov	DPTR, #0F9B7h
		movx	@DPTR, A
		mov	RAM_68,	#0FFh
		mov	RAM_69,	#0FFh
		mov	RAM_4A,	#0
		
		; HSP
		mov	DPTR, #0F8D0h
		mov	A, #0A5h
		movx	@DPTR, A
		inc	DPL
		mov	A, #5
		movx	@DPTR, A

		setb	EX6
		setb	EAL





; ***************************************************************************
; Цикл 20 мс 
; ***************************************************************************


code_2CDE:				
		
		jnb	RAM_29.0, code_2CDE
		clr	RAM_29.0
		
		setb	WDT
		setb	SWDT
		
		mov	C, RAM_2B.1
		mov	RAM_2C.1, C
		mov	C, RAM_2B.5
		mov	RAM_2C.3, C
		
		lcall	FLAGS_INIT

; ---------------------------------------------------------------------------
; Launch
; ---------------------------------------------------------------------------
		jnb	Options.4, code_2D0E
		jb	RAM_25.6, code_2D0E
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #6075h		; Скорость входа в режим Launch, км/час
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_2D06

code_2D06:
		jc	code_2D18
		clr	A
		mov	RAM_4A,	A
		sjmp	code_2D23

code_2D0E:

		clr	A
		mov	RAM_4A,	A

code_2D0F:
		mov	DPTR, #0F9A6h
		movx	A, @DPTR
		sjmp	code_2D34

code_2D18:
		mov	A, RAM_4A
		inc	A
		jz	code_2D0F
		dec	A
		jnz	code_2D1E
		inc	RAM_4A

code_2D1E:
		rr	A
		rr	A
		rr	A
		anl	A, #1Fh

code_2D23:
		mov	B, A
		
		; Обороты блокировки впрыска на	лаунче | Обороты, об/мин - Время с начала движения
		GET_RAM_BY_INDEX 7AA7h, B, CAPTURE_LAUNCH_CUTOFF_MODE
		
		mov	B, A		
		mov	DPTR, #0F9A6h
		movx	A, @DPTR
		cjne	A, B, code_2D30	

code_2D30:
		jc	code_2D34
		mov	A, B		

code_2D34:				
					
		mov	DPTR, #0F9B7h
		movx	@DPTR, A
		
; --- ДАД ---------------------------------------------------------------

		jnb	Options.0, code_2D53

		mov	DPTR, #5F02h
		clr	A
		movc	A, @A+DPTR

		mov	C, ACC.1
		anl	C, /ACC.2
		jc	code_2D53
		
		jnb	RAM_2B.0, code_2D50
		
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		
		mov	B, #3h
		jnb	ACC.4, code_2D35
		mov	B, #5h
code_2D35:
		lcall	READ_ADC
		mov	DPTR, #0F80Ch
		movx	@DPTR, A

code_2D48:				
		clr	RAM_28.4
		lcall	CALC_DAD_ENGINE_STOP
		;lcall	CALC_DAD_GBC
		jb	RAM_28.4, code_2D48

code_2D50:				
		lcall	DIAG_DAD
; ---------------------------------------------------------------------------

code_2D53:

		mov	R0, #93h ; 'У'
		mov	A, @R0
		mov	DPTR, #0F93Ch
		movx	@DPTR, A
		mov	DPTR, #65D3h	; Фаза начала измерения	детонации | Положение КВ, град.	- Обороты коленвала, об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	DPTR, #0F946h
		movx	@DPTR, A
		mov	DPTR, #65F3h	; Фаза окончания измерения детонации | Положение КВ, град. - Обороты коленвала,	об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	DPTR, #0F947h
		movx	@DPTR, A
		mov	DPTR, #0F946h
		movx	A, @DPTR
		cjne	A, #1Eh, code_2D75

code_2D75:
		jc	code_2D79
		mov	A, #1Dh

code_2D79:
		movx	@DPTR, A
		clr	C
		subb	A, #0Bh
		jnc	code_2D81
		add	A, #1Eh

code_2D81:
		mov	R0, A
		mov	DPTR, #0F947h
		movx	A, @DPTR
		cjne	A, #1Eh, code_2D89

code_2D89:
		jc	code_2D8D
		mov	A, #1Dh

code_2D8D:
		movx	@DPTR, A
		clr	C
		subb	A, #0Bh
		jnc	code_2D95
		add	A, #1Eh

code_2D95:
		mov	R2, A
		clr	EAL
		mov	RAM_72,	R2
		mov	RAM_4C,	R0
		setb	EAL
		mov	DPTR, #6088h	; Температура разрешения динамической коррекции
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_2DA6

code_2DA6:
		jc	code_2DAB
		clr	A
		sjmp	code_2DD2
; ---------------------------------------------------------------------------

code_2DAB:	
		mov	DPTR, #0F97Bh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #0F981h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		call	ADD_R0R1_R2R3
		
		mov     DPTR, #9034h
		mov     A, RPM_RT_32
		movc    A, @A+DPTR
		mov     B, A

		lcall	MUL_R0R1_B
		mov	A, R1
		jz	code_2DC3
		mov	R0, #0FFh

code_2DC3:
		mov	DPTR, #5FABh	; Максимальное смещение	УОЗ по Д.К. | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, R0
		cjne	A, B, code_2DCE

code_2DCE:
		jc	code_2DD2
		mov	A, B

code_2DD2:

		mov	DPTR, #0F938h
		movx	@DPTR, A
		jbc	RAM_26.5, code_2E29
		mov	A, RAM_5A
		inc	A
		jz	code_2DE4
		mov	RAM_5A,	A
		mov	DPTR, #0FA95h
		movx	@DPTR, A

code_2DE4:
		jb	RAM_2B.0, code_2E52
		mov	A, RAM_5A
		cjne	A, #16h, code_2DEC

code_2DEC:
		jc	code_2E52
		setb	RAM_2B.0
		clr	RAM_26.1
		clr	RAM_26.7
		clr	A
		mov	RPM_XX,	A
		mov	RPM_1, A
		mov	RPM, A
		mov	RPM_RT,	A
		mov	RPM_RT_32, A
		mov	RAM_38,	A
		mov	RAM_39,	A
		mov	DPTR, #0F873h
		movx	@DPTR, A
		mov	DPTR, #0F89Eh
		movx	@DPTR, A
		mov	DPTR, #0F94Ch
		movx	@DPTR, A
		mov	DPTR, #0F94Ah
		movx	@DPTR, A
		mov	DPTR, #0F94Bh
		movx	@DPTR, A
		mov	DPTR, #0FF49h
		movx	@DPTR, A
		mov	DPTR, #0FF4Ah
		movx	@DPTR, A
		anl	CMEN, #0Fh
		orl	P4, #0F0h
		orl	CMEN, #0F0h
		ljmp	code_2FCD
; ---------------------------------------------------------------------------

code_2E29:
		jnb	RAM_2B.0, code_2E4F
		mov	A, RAM_5A
		cjne	A, #0Bh, code_2E31

code_2E31:
		jnc	code_2E4F
		mov	DPTR, #0F873h
		movx	A, @DPTR
		inc	A
		jz	code_2E3B
		movx	@DPTR, A

code_2E3B:
		mov	DPTR, #606Fh	; Время	задержки синхронизации | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F873h
		movx	A, @DPTR
		cjne	A, B, code_2E49

code_2E49:
		jc	code_2E4F
		setb	RAM_26.1
		clr	RAM_2B.0

code_2E4F:

		mov	RAM_5A,	#0

code_2E52:

		clr	EAL
		mov	R2, RAM_1C
		mov	R3, RAM_1D
		setb	EAL
		mov	A, R2
		orl	A, R3
		jnz	code_2E61
		ljmp	code_2FCD
; ---------------------------------------------------------------------------

code_2E61:
		clr	RAM_28.4
		mov	MD0, #30h
		mov	MD1, #82h
		mov	MD2, #0
		mov	MD3, #0
		mov	MD4, R2
		mov	MD5, R3
		nop
		nop
		nop
		nop
		nop
		nop
		mov	R0, MD0		
		mov	R1, MD1		
		mov	R2, MD2		
		mov	R3, MD3		
		mov	A, MD4		
		mov	A, MD5		
		jb	RAM_28.4, code_2E52
		mov	A, R2
		orl	A, R3
		jz	code_2E90
		mov	R0, #0FFh
		mov	R1, #0FFh

code_2E90:				; CODE XREF: RESET_0-BB58j
		mov	DPTR, #0FF49h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		jbc	RAM_28.6, code_2E9F
		ljmp	code_2FCD
; ---------------------------------------------------------------------------

code_2E9F:				; CODE XREF: RESET_0-BB49j
					; RESET_0-BB10j
		clr	EAL		; Interrupt Enable Register 0
		mov	R2, RAM_38
		mov	R3, RAM_39
		setb	EAL		; Interrupt Enable Register 0
		mov	A, R2
		orl	A, R3
		jnz	code_2EAE
		ljmp	code_2FCD
; ---------------------------------------------------------------------------

code_2EAE:				; CODE XREF: RESET_0-BB39j
		clr	RAM_28.4
		mov	MD0, #40h ; '@' 
		mov	MD1, #42h ; 'B' 
		mov	MD2, #0Fh	
		mov	MD3, #0		
		mov	MD4, R2		
		mov	MD5, R3		
		nop
		nop
		nop
		nop
		nop
		nop
		mov	R0, MD0		
		mov	R1, MD1		
		mov	R2, MD2		
		mov	R3, MD3		
		mov	A, MD4		
		mov	A, MD5		
		jb	RAM_28.4, code_2E9F
		mov	A, R2
		orl	A, R3
		jz	code_2EDD
		mov	R0, #0FFh
		mov	R1, #0FFh

code_2EDD:				; CODE XREF: RESET_0-BB0Bj
		mov	DPTR, #0F94Ah
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #0F94Ah
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		lcall	SUB_R0R1_R2R3
		jc	code_2F02
		mov	A, R1
		jz	code_2EFA

code_2EF7:				; CODE XREF: RESET_0:code_2F02j
		clr	A
		sjmp	code_2F0B
; ---------------------------------------------------------------------------

code_2EFA:				; CODE XREF: RESET_0-BAEDj
		mov	A, R0
		jnb	ACC.7, code_2F0B ; Accumulator
		mov	A, #7Fh	; ''
		sjmp	code_2F0B
; ---------------------------------------------------------------------------

code_2F02:				; CODE XREF: RESET_0-BAF0j
		cjne	R1, #0FFh, code_2EF7
		mov	A, R0
		jb	ACC.7, code_2F0B ; Accumulator
		mov	A, #80h	; 'А'

code_2F0B:				; CODE XREF: RESET_0-BAEAj
					; RESET_0-BAE7j ...
		mov		B, A            ; B-Register
		mov		DPTR, #0F94Ch
		movx	A, @DPTR
		xch		A, B            ; B-Register
		mov		DPTR, #0F94Ch
		movx	@DPTR, A
		clr		C
		subb	A, B            ; B-Register
		mov		DPTR, #0FF5Fh
		movx	@DPTR, A
		mov		R0, A

		; mov	DPTR, #0F94Ch
		; movx	@DPTR, A
		; mov	C, ACC.7	; Accumulator
		; mov	DPTR, #0FF45h
		; movx	A, @DPTR
		; rlc	A
		; mov	DPTR, #0FF45h
		; movx	@DPTR, A
		
		jnb		RAM_2B.1, CALC_DI_UOZ ; Признак ХХ
		mov		DPTR, #60A5h    ; Отклонение оборотов для блокировки интегратора | об/мин.
		clr		A
		movc	A, @A+DPTR
		mov		B, A            ; B-Register
		mov		A, DELTA_RPM_XX
		lcall	ABS_ACC
		clr		C
		subb	A, B            ; B-Register
		jnc		CALC_DI_UOZ
		clr		A
		sjmp	SAVE_DI_UOZ

CALC_DI_UOZ:
		mov		A, R0
		mov		DPTR, #0A5ABh   ; Интегральное смещение УОЗ 2 | Добавка УОЗ - Интегральная ошибка оборотов
		jnb		ACC.7, CALC_DI_UOZ_1 ; Accumulator
		cpl		A
		inc		A
		mov		DPTR, #0A5A0h   ; Интегральное смещение УОЗ 1 | Добавка УОЗ - Интегральная ошибка оборотов

CALC_DI_UOZ_1:
		cjne	A, #0Ah, CALC_DI_UOZ_2

CALC_DI_UOZ_2:
		jc		CALC_DI_UOZ_3
		mov		A, #0Ah

CALC_DI_UOZ_3:
		movc	A, @A+DPTR

SAVE_DI_UOZ:
		mov		DPTR, #0FF60h
		movx	@DPTR, A

		mov	DPTR, #0F94Ah
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	A, R0
		add	A, #1
		mov	B, A		; B-Register
		mov	A, R1
		addc	A, #0
		jc	code_2F30
		rrc	A
		jz	code_2F35

code_2F30:				; CODE XREF: RESET_0-BAB7j
		mov	RPM_XX,	#0FFh
		sjmp	code_2F3A
; ---------------------------------------------------------------------------

code_2F35:				; CODE XREF: RESET_0-BAB4j
		mov	A, B		; B-Register
		rrc	A
		mov	RPM_XX,	A

code_2F3A:				; CODE XREF: RESET_0-BAAFj
		mov	A, R0
		add	A, #4
		mov	B, A		; B-Register
		mov	A, R1
		addc	A, #0
		jc	code_2F55
		rrc	A
		xch	A, B		; B-Register
		rrc	A
		xch	A, B		; B-Register
		clr	C
		rrc	A
		xch	A, B		; B-Register
		rrc	A
		xch	A, B		; B-Register
		clr	C
		rrc	A
		jz	code_2F59

code_2F55:				; CODE XREF: RESET_0-BAA0j
		mov	A, #0FFh
		sjmp	code_2F5C
; ---------------------------------------------------------------------------

code_2F59:				; CODE XREF: RESET_0-BA8Fj
		mov	A, B		; B-Register
		rrc	A

code_2F5C:				; CODE XREF: RESET_0-BA8Bj
		mov	B, A		; B-Register
		subb	A, RPM
		jnc	code_2F63
		clr	A

code_2F63:				; CODE XREF: RESET_0-BA82j
		mov	DPTR, #0FA74h
		movx	@DPTR, A
		mov	RPM, B		; B-Register
		mov	A, RPM
		cjne	A, #1Fh, code_2F6F

code_2F6F:
		jc	code_2F73
		mov	A, #1Fh

code_2F73:				; CODE XREF: RESET_0:code_2F6Fj
		mov	DPTR, #0F8AFh
		movx	@DPTR, A
		mov	A, R0
		add	A, #3
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		jc	code_2F9F

code_2F81:				; CODE XREF: RESET_0-BA49j
		clr	RAM_28.4
		mov	MD0, R0		
		mov	MD1, R1		
		mov	MD4, #6		
		mov	MD5, #0		
		nop
		nop
		nop
		nop
		mov	R2, MD0		
		mov	R3, MD1		
		mov	A, MD4		
		mov	A, MD5		
		jb	RAM_28.4, code_2F81
		mov	A, R3
		jz	code_2FA4

code_2F9F:				; CODE XREF: RESET_0-BA63j
		mov	RPM_1, #0FFh
		sjmp	code_2FA6
; ---------------------------------------------------------------------------

code_2FA4:				; CODE XREF: RESET_0-BA45j
		mov	RPM_1, R2

code_2FA6:
		mov	DPTR, #613Ch	; Квантование оборотов | Точка квантования - Обороты двигателя
		mov	A, RPM
		movc	A, @A+DPTR
		mov	RPM_RT,	A
		
		add	A, #4
		swap	A
		rl	A
		anl	A, #1Fh
		mov	RPM_RT_32, A
		
		mov	A, RPM_RT
		add	A, #8
		anl	A, #0F0h
		swap	A
		mov	B, A
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		add	A, #8
		anl	A, #0F0h
		add	A, B
		mov	RPM_THR_3D_RT, A

code_2FCD:

		jnb	RAM_2B.0, code_2FD3
		ljmp	code_3026
; ---------------------------------------------------------------------------

code_2FD3:				; CODE XREF: RESET_0:code_2FCDj
		mov	DPTR, #0F95Bh
		movx	A, @DPTR
		jnb	RAM_29.1, code_2FDE
		inc	A
		jz	code_2FDE
		movx	@DPTR, A

code_2FDE:				; CODE XREF: RESET_0-BA0Bj
					; RESET_0-BA07j
		mov	B, A		; B-Register
		mov	DPTR, #9CC7h	; Максимальное время работы стартера | Время, сек. - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		cjne	A, B, code_2FE9	; B-Register

code_2FE9:
		jnc	code_2FF5
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.6		; Accumulator
		movx	@DPTR, A
		ljmp	code_3026
; ---------------------------------------------------------------------------

code_2FF5:				; CODE XREF: RESET_0:code_2FE9j
		mov	B, RPM_XX	; B-Register
		mov	DPTR, #9CEEh	; Обороты отключения стартера |	Обороты, об/мин	- Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		cjne	A, B, code_3001	; B-Register

code_3001:
		jc	code_300A
		clr	A
		mov	DPTR, #0F95Ch
		movx	@DPTR, A
		sjmp	code_3026
; ---------------------------------------------------------------------------

code_300A:
		mov	DPTR, #0F95Ch
		movx	A, @DPTR
		inc	A
		jz	code_3012
		movx	@DPTR, A

code_3012:
		mov	B, A
		mov	DPTR, #9D15h	; Время	работы стартера	после порога откл...  |	Время, сек. - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		cjne	A, B, code_301D

code_301D:
		jnc	code_3026
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.6
		movx	@DPTR, A

code_3026:

		mov	A, RPM_THR_3D_RT
		mov	DPTR, #7AC7h	; Номер	зоны по	оборотам/дросселю | Зона - Обороты коленвала, об/мин - Положение дросселя,%
		movc	A, @A+DPTR
		mov	C, ACC.4
		anl	C, /RAM_2C.2
		;mov	RAM_26.7, C
		mov	ACC.4, C
		mov	DPTR, #0F933h
		movx	@DPTR, A
		anl	A, #0Fh
		dec	DPL
		;mov	DPTR, #0F932h
		movx	@DPTR, A
		mov	C, RAM_23.5
		orl	C, RAM_24.5
		jnc	code_304E
		mov	R3, GBC_RT
		mov	R2, RPM_RT
		mov	DPTR, #6813h	; Поправка ЦH при аварии ДПДЗ |	Коэффициент коррекции -	Обороты	коленвала, об/мин - Цикловое наполнение,мг/цикл
		lcall	GET_3D_VALUE
		sjmp	code_305D
; ---------------------------------------------------------------------------

code_304E:
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		mov	R3, A
		mov	R2, RPM_RT
		
		mov	DPTR, #5F02h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.3, code_3050
		
		mov	DPTR, #7CF7h	; ПЦН 32х16
		lcall	GET_3D_VALUE_32x16
		
		sjmp	code_305D
		
code_3050:
		; Поправка циклового наполнения по дросселю	| Коэффициент коррекции	- Обороты коленвала, об/мин - Положение	дросселя,%
		GET_3D_RAM_WITH_INTERPOLATION 7CF7h, CAPTURE_KGBC_MODE

code_305D:
		mov	DPTR, #0F945h	; ПЦН
		movx	@DPTR, A
		
		mov	DPTR, #0FAA2h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		mov	B, A
		mov	R2, RPM_RT
		mov	DPTR, #0F87Dh
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #852Fh	; Динамическая коррекция GTC по	оборотам и ТОЖ 1 | Коэффициент коррекции - Обороты коленвала, об/мин - Температура ОЖ, градусов
		jb	B.0, code_307B
		mov	DPTR, #736Dh	; Динамическая коррекция GTC по	оборотам и ТОЖ 2 | Коэффициент коррекции - Обороты коленвала, об/мин - Температура ОЖ, градусов
code_307B:
		lcall	GET_3D_VALUE
		mov	B, A
		mov	DPTR, #0F89Dh
		movx	A, @DPTR
		mov	R1, A
		mov	R0, #0
		mov	A, B
		lcall	code_AD03
		mov	R2, A
		mov	DPTR, #0FAA2h
		movx	A, @DPTR
		mov	DPTR, #0FAA3h
		jb	ACC.0, code_309B
		mov	DPTR, #0FAA4h

code_309B:
		mov	A, R2
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------		
		
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR

		mov	RAM_6A, RPM_THR_3D_RT
		jnb	ACC.5, code_309C
		
		mov	DPTR, #0F88Dh		; РТ обороты/давление
		movx	A, @DPTR
		mov	RAM_6A, A
		
code_309C:		
		

; удаление ДПВ
; ******************************************************************************************************
	
		mov	B, #4
		lcall	READ_ADC
		mov	DPTR, #0F80Bh
		movx	@DPTR, A
		mov	DPTR, #0F813h
		lcall	code_AF6E
		mov	B, #8		; B-Register
		lcall	READ_ADC
		mov	DPTR, #0F80Eh
		movx	@DPTR, A
		mov	DPTR, #0F819h
		lcall	code_AF6E
		mov	B, #0		; B-Register
		lcall	READ_ADC
		mov	DPTR, #0F80Dh
		movx	@DPTR, A
		mov	R0, A
		mov	DPTR, #60CAh	; Напряжение отключения	питания	| В
		clr	A
		movc	A, @A+DPTR
		cjne	A, RAM_0, code_3761

code_3761:
		jc	code_3781
		jb	RAM_29.4, code_379B
		mov	DPTR, #5FF1h	; Задержка отключения питания |	c
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0FA8Dh
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_3776	; B-Register

code_3776:
		jc	code_379B
		setb	RAM_29.4
		clr	A
		mov	DPTR, #0F87Ch
		movx	@DPTR, A
		sjmp	code_379B
; ---------------------------------------------------------------------------

code_3781:				; CODE XREF: RESET_0:code_3761j
		jnb	RAM_29.4, code_3794
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		setb	ACC.6		; Accumulator
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F95Bh
		movx	@DPTR, A
		mov	DPTR, #0F95Ch
		movx	@DPTR, A

code_3794:				; CODE XREF: RESET_0:code_3781j
		clr	RAM_29.4
		clr	A
		mov	DPTR, #0FA8Dh
		movx	@DPTR, A

code_379B:				; CODE XREF: RESET_0-B27Fj
					; RESET_0:code_3776j ...
		mov	DPTR, #5F6Eh	; Коэффициент динамической коррекции UACC |
		clr	A
		movc	A, @A+DPTR
		cpl	A
		inc	A
		mov	B, A		; B-Register
		mov	DPTR, #0F950h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		lcall	MUL_R0R1_B
		mov	DPTR, #5F6Eh	; Коэффициент динамической коррекции UACC |
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F80Dh
		movx	A, @DPTR
		mul	AB
		mov	R2, A
		mov	R3, B		; B-Register
		lcall	ADD_R0R1_R2R3
		mov	DPTR, #0F950h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #60BAh	; Минимальное напряжение бортовой сети | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		cjne	A, B, code_37D6	; B-Register

code_37D6:
		jc	code_37F2
		mov	DPTR, #60BBh	; Максимальное напряжение бортовой сети	| В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		cjne	A, B, code_37E3	; B-Register

code_37E3:
		jnc	code_3815
		clr	RAM_23.0
		clr	RAM_24.0
		clr	A
		mov	DPTR, #0F9C3h
		movx	@DPTR, A
		mov	RAM_4B,	R1
		sjmp	code_3851
; ---------------------------------------------------------------------------

code_37F2:				; CODE XREF: RESET_0:code_37D6j
		jb	RAM_29.4, code_3833
		jb	RAM_23.0, code_3833
		mov	DPTR, #5FAFh	; Период диагностики уровня борт. напряжения | циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9C3h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_3808	; B-Register

code_3808:
		jc	code_3833
		setb	RAM_23.0
		clr	RAM_24.0
		clr	A
		mov	DPTR, #0F9C3h
		movx	@DPTR, A
		sjmp	code_3833
; ---------------------------------------------------------------------------

code_3815:				; CODE XREF: RESET_0:code_37E3j
		jb	RAM_24.0, code_3833
		mov	DPTR, #5FAFh	; Период диагностики уровня борт. напряжения | циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9C3h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_3828	; B-Register

code_3828:
		jc	code_3833
		clr	RAM_23.0
		setb	RAM_24.0
		clr	A
		mov	DPTR, #0F9C3h
		movx	@DPTR, A

code_3833:				; CODE XREF: RESET_0:code_37F2j
					; RESET_0-B1EDj ...
		mov	DPTR, #60BEh	; Граничные обороты выбора напряжения при ошибке | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, RPM
		cjne	A, B, code_383F	; B-Register

code_383F:
		jnc	code_384A
		mov	DPTR, #60BFh	; Напряжение 1 бортовой	сети при ошибке	| В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_4B,	A
		sjmp	code_3851
; ---------------------------------------------------------------------------

code_384A:				; CODE XREF: RESET_0:code_383Fj
		mov	DPTR, #60C0h	; Напряжение 2 бортовой	сети при ошибке	| В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_4B,	A

code_3851:				; CODE XREF: RESET_0-B1F2j
					; RESET_0-B19Aj
		mov	DPTR, #60BCh	; Смещение при квантовании напряжения |	В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, RAM_4B
		clr	C
		subb	A, B		; B-Register
		jnc	code_3860
		clr	A

code_3860:				; CODE XREF: RESET_0-B185j
		mov	B, A		; B-Register
		mov	DPTR, #60BDh	; Коэффициент квантования напряжения | В
		clr	A
		movc	A, @A+DPTR
		mul	AB
		jnb	B.7, code_386F	; B-Register
		mov	A, #0FFh
		sjmp	code_3873
; ---------------------------------------------------------------------------

code_386F:				; CODE XREF: RESET_0-B17Aj
		rlc	A
		mov	A, B		; B-Register
		rlc	A

code_3873:				; CODE XREF: RESET_0-B175j
		mov	DPTR, #0F978h
		movx	@DPTR, A
		mov	DPTR, #71D8h	; Динамическая производительность форсунки | Добавочное	время впрыска -	Бортовое напряжение
		lcall	GET_DEC_2D_MAP_VALUE_I44
		mov	RAM_50,	A
		mov	DPTR, #0F850h
		movx	@DPTR, A
		mov	B, #1		; B-Register
		lcall	READ_ADC
		mov	DPTR, #0F8A9h
		movx	@DPTR, A
		mov	DPTR, #0F81Dh
		lcall	code_AF6E
		mov	DPTR, #0F812h
		movx	A, @DPTR
		jnz	code_38A5
		mov	A, B		; B-Register
		mov	DPTR, #0F825h
		movx	@DPTR, A
		mov	DPTR, #0F826h
		movx	@DPTR, A
		sjmp	code_38C5
; ---------------------------------------------------------------------------

code_38A5:				; CODE XREF: RESET_0-B14Bj
		mov	DPTR, #0F825h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jc	code_38B6
		mov	A, B		; B-Register
		mov	DPTR, #0F825h
		movx	@DPTR, A
		sjmp	code_38C5
; ---------------------------------------------------------------------------

code_38B6:				; CODE XREF: RESET_0-B136j
		mov	DPTR, #0F826h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jnc	code_38C5
		mov	A, B		; B-Register
		mov	DPTR, #0F826h
		movx	@DPTR, A

code_38C5:

		mov	DPTR, #0F812h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, #20h, code_38D2
		clr	A
		movx	@DPTR, A
		sjmp	code_38D5
; ---------------------------------------------------------------------------

code_38D2:				; CODE XREF: RESET_0-B117j
		ljmp	code_3B2A
; ---------------------------------------------------------------------------

code_38D5:				; CODE XREF: RESET_0-B112j
		mov	A, DEV_FLAGS
		anl	A, #80h
		jz	code_38DE
		ljmp	code_3989
; ---------------------------------------------------------------------------

code_38DE:				; CODE XREF: RESET_0-B109j
		mov	DPTR, #0F813h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		lcall	code_AD94
		mov	A, R0
		add	A, #80h	; 'А'
		mov	A, R1
		addc	A, #0
		mov	R1, A
		mov	DPTR, #60B5h	; Задержка контроля температуры	двигателя после	пуска |	сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F873h
		movx	A, @DPTR
		cjne	A, B, code_38FF	; B-Register

code_38FF:
		jc	code_391B
		mov	DPTR, #60B1h	; Мин. напряжение АЦП ДТОЖ для диагностики | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		cjne	A, B, code_390C	; B-Register

code_390C:
		jc	code_396E
		mov	DPTR, #60B2h	; Макс.	напряжение АЦП ДТОЖ для	диагностики | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		cjne	A, B, code_3919	; B-Register

code_3919:
		jnc	code_3974

code_391B:				; CODE XREF: RESET_0:code_38FFj
		mov	A, R1
		swap	A
		rl	A
		anl	A, #0E0h
		mov	R3, A
		mov	A, R1
		rr	A
		rr	A
		rr	A
		anl	A, #1Fh
		mov	R2, A
		mov	DPTR, #6104h	; Тарировка ДТОЖ | Температура,	град.С - Напряжение АЦП	ДТОЖ
		lcall	GET_2D_INTERPOLATION
		clr	C
		subb	A, #14h
		jnc	code_3935
		mov	A, #0

code_3935:				; CODE XREF: RESET_0-B0B1j
		mov	TWAT, A
		mov	DPTR, #0F9C8h
		movx	@DPTR, A
		clr	RAM_23.3
		clr	RAM_24.3
		mov	B, A		; B-Register
		mov	DPTR, #0F9C9h
		movx	A, @DPTR
		jnz	code_3989
		mov	DPTR, #5FB6h
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_394F	; B-Register

code_394F:
		jnc	code_3989
		mov	DPTR, #0F9C7h
		movx	A, @DPTR
		xch	A, B		; B-Register
		clr	C
		subb	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #5FB5h
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_3964	; B-Register

code_3964:
		jnc	code_3989
		mov	A, #1
		mov	DPTR, #0F9C9h
		movx	@DPTR, A
		sjmp	code_3989
; ---------------------------------------------------------------------------

code_396E:				; CODE XREF: RESET_0:code_390Cj
		setb	RAM_23.3
		clr	RAM_24.3
		sjmp	code_3978
; ---------------------------------------------------------------------------

code_3974:				; CODE XREF: RESET_0:code_3919j
		clr	RAM_23.3
		setb	RAM_24.3

code_3978:				; CODE XREF: RESET_0-B070j
		mov	DPTR, #0F8ACh
		movx	A, @DPTR
		anl	A, #0F0h
		swap	A
		mov	B, A		; B-Register
		mov	DPTR, #7EF7h	; Расчетная температура	при аварии ДТОЖ	| Температура, град.С -	Время работы двигателя,	сек.
		mov	A, B		; B-Register
		movc	A, @A+DPTR
		mov	TWAT, A

code_3989:				; CODE XREF: RESET_0-B107j
					; RESET_0-B09Dj ...
		mov	A, TWAT
		add	A, #2
		mov	B, #5		; B-Register
		div	AB
		cjne	A, #24h, code_3994 ; '$'

code_3994:
		jc	code_3998
		mov	A, #24h	; '$'

code_3998:				; CODE XREF: RESET_0:code_3994j
		mov	TWAT_RT, A
		mov	DPTR, #609Ch	; Коэффициент квантования ДТОЖ |
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, TWAT
		mul	AB
		add	A, #40h	; '@'
		jnc	code_39AA
		inc	B		; B-Register

code_39AA:				; CODE XREF: RESET_0-B03Cj
		jnb	B.7, code_39B1	; B-Register
		mov	A, #0F0h ; 'Ё'
		sjmp	code_39BD
; ---------------------------------------------------------------------------

code_39B1:				; CODE XREF: RESET_0:code_39AAj
		mov	C, ACC.7	; Accumulator
		mov	A, B		; B-Register
		rlc	A
		cjne	A, #0F0h, code_39B9 ; 'Ё'

code_39B9:
		jc	code_39BD
		mov	A, #0F0h ; 'Ё'

code_39BD:				; CODE XREF: RESET_0-B033j
					; RESET_0:code_39B9j
		mov	DPTR, #0F87Dh
		movx	@DPTR, A
		swap	A
		anl	A, #0Fh
		mov	DPTR, #0F880h
		movx	@DPTR, A
		mov	A, TWAT
		mov	B, #5		; B-Register
		div	AB
		cjne	A, #24h, code_39D1 ; '$'

code_39D1:
		jc	code_39D5
		mov	A, #24h	; '$'

code_39D5:				; CODE XREF: RESET_0:code_39D1j
		mov	DPTR, #0F887h
		movx	@DPTR, A
		mov	A, B		; B-Register
		mov	B, #33h	; '3'   ; B-Register
		mul	AB
		mov	DPTR, #0F888h
		movx	@DPTR, A
		lcall	code_ED6D
		mov	A, #3
		mov	DPTR, #0F8B0h
		movx	@DPTR, A
; ---------------------------------------------------------------------------		

		mov     DPTR, #9694h   ; Номер точки настройки фильтра от оборотов
                mov     A, RPM_RT_32
                movc    A, @A+DPTR
                mov     DPTR, #0F82Ah
                movx    @DPTR, A
	
; ---------------------------------------------------------------------------		
		jb	Hardware.4, code_39D6
		jmp	code_3A66

code_39D6:
		mov	DPTR, #0F819h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		lcall	code_AD94
		mov	DPTR, #60B8h	; Задержка контроля температуры	воздуха	после пуска | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8ACh
		movx	A, @DPTR
		cjne	A, B, code_3A09	; B-Register

code_3A09:
		jc	code_3A25
		mov	DPTR, #60B6h	; Мин. напряжение АЦП ДТВ для диагностики | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		cjne	A, B, code_3A16	; B-Register

code_3A16:
		jc	code_3A36
		mov	DPTR, #60B7h	; Макс.	напряжение АЦП ДТВ для диагностики | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		cjne	A, B, code_3A23	; B-Register

code_3A23:
		jnc	code_3A3C

code_3A25:				; CODE XREF: RESET_0:code_3A09j
		mov	A, R1
		mov	DPTR, #6126h	; Тарировка ДТВ	| Температура, град.С -	Напряжение АЦП ДТВ
		lcall	code_AF7B
		mov	DPTR, #0F93Bh
		movx	@DPTR, A
		clr	RAM_23.2
		clr	RAM_24.2
		sjmp	code_3A49
; ---------------------------------------------------------------------------

code_3A36:				; CODE XREF: RESET_0:code_3A16j
		setb	RAM_23.2
		clr	RAM_24.2
		sjmp	code_3A40
; ---------------------------------------------------------------------------

code_3A3C:				; CODE XREF: RESET_0:code_3A23j
		clr	RAM_23.2
		setb	RAM_24.2

code_3A40:				; CODE XREF: RESET_0-AFA8j
		mov	DPTR, #60B9h	; Расчетная температура	при аварии ДТВ | град.С
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F93Bh
		movx	@DPTR, A

code_3A49:				; CODE XREF: RESET_0-AFAEj
		mov	DPTR, #0F93Bh
		movx	A, @DPTR
		mov	B, #5		; B-Register
		div	AB
		cjne	A, #24h, code_3A54 ; '$'

code_3A54:
		jc	code_3A58
		mov	A, #24h	; '$'

code_3A58:				; CODE XREF: RESET_0:code_3A54j
		mov	DPTR, #0F931h
		movx	@DPTR, A
		mov		R2, A
		mov	A, B		; B-Register
		mov	B, #33h	; '3'   ; B-Register
		mul	AB
		mov	DPTR, #0F8F1h
		movx	@DPTR, A
		mov		R3, A
		
		mov		DPTR, #8508h
		lcall	GET_2D_INTERPOLATION
		mov		DPTR, #0F8AAh
		movx	@DPTR, A

code_3A66:				; CODE XREF: RESET_0-AFF6j
		mov	DPTR, #0F825h
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F826h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #6069h	; Ширина полосы	адаптации ДПДЗ | В
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, B		; B-Register
		jc	code_3AA8
		mov	DPTR, #0F81Dh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		lcall	code_AD94
		mov	A, R0
		add	A, #80h	; 'А'
		mov	A, R1
		addc	A, #0
		mov	R1, A
		mov	DPTR, #0F8B2h
		movx	A, @DPTR
		clr	C
		subb	A, R1
		jc	code_3AA8
		jz	code_3AA8
		mov	A, R1
		inc	A
		mov	DPTR, #0F827h
		movx	@DPTR, A
		mov	DPTR, #0F8B2h
		movx	@DPTR, A
		sjmp	code_3AC8
; ---------------------------------------------------------------------------

code_3AA8:				; CODE XREF: RESET_0-AF65j
					; RESET_0-AF4Aj ...
		jnb	Options.1, code_3AC8
		mov	DPTR, #0F805h
		movx	A, @DPTR
		jnz	code_3AC8
		mov	DPTR, #6067h	; Начальное положение ДПДЗ | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8B2h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jnc	code_3AC8
		add	A, B		; B-Register
		inc	A
		mov	DPTR, #0F8B2h
		movx	@DPTR, A

code_3AC8:				; CODE XREF: RESET_0-AF3Cj
					; RESET_0:code_3AA8j ...
		mov	DPTR, #606Bh	; Минимальное напряжение ДПДЗ |	В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		clr	C
		subb	A, B		; B-Register
		jc	code_3AF1
		mov	DPTR, #606Ch	; Максимальное напряжение ДПДЗ | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		clr	C
		subb	A, B		; B-Register
		jnc	code_3B0C
		clr	RAM_23.5
		clr	RAM_24.5
		clr	A
		mov	DPTR, #0F995h
		movx	@DPTR, A
		mov	DPTR, #0F996h
		movx	@DPTR, A
		sjmp	code_3B25
; ---------------------------------------------------------------------------

code_3AF1:				; CODE XREF: RESET_0-AF0Fj
		mov	DPTR, #0F995h
		movx	A, @DPTR
		inc	A
		jz	code_3AF9
		movx	@DPTR, A

code_3AF9:				; CODE XREF: RESET_0-AEECj
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #5FF2h	; Период для диагностики ДПДЗ |	циклов
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_3B04	; B-Register

code_3B04:
		jnc	code_3B25
		setb	RAM_23.5
		clr	RAM_24.5
		sjmp	code_3B25


code_3B0C:				; CODE XREF: RESET_0-AF02j
		mov	DPTR, #0F996h
		movx	A, @DPTR
		inc	A
		jz	code_3B14
		movx	@DPTR, A

code_3B14:				; CODE XREF: RESET_0-AED1j
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #5FF2h	; Период для диагностики ДПДЗ |	циклов
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_3B1F	; B-Register

code_3B1F:
		jnc	code_3B25
		clr	RAM_23.5
		setb	RAM_24.5

code_3B25:				; CODE XREF: RESET_0-AEF3j
					; RESET_0:code_3B04j ...
		lcall	code_B967
		setb	RAM_29.3
		
; --- конец 1 раз в 32 цикла ------------------------------------------------


code_3B2A:
		jb	Options.0, code_3B9A
		jnb	RAM_2A.3, code_3B9A
		jb	RAM_26.6, code_3B9A
		jb	RAM_22.6, code_3B9A
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		jb	ACC.1, code_3B9A ; Accumulator
		mov	DPTR, #0F4E0h
		movx	A, @DPTR
		jnz	code_3B9A
		mov	DPTR, #0F4E8h
		movx	A, @DPTR
		jnz	code_3B9A
		mov	DPTR, #0F9B1h
		movx	A, @DPTR
		jz	code_3B9A
		mov	DPTR, #0F9B3h
		movx	A, @DPTR
		mov	R2, A
		inc	DPTR
		movx	A, @DPTR
		mov	R1, A
		mov	B, #3		; B-Register
		lcall	READ_ADC
		mov	R3, A
		mov	DPTR, #0F9B1h
		movx	A, @DPTR
		xch	A, R3
		lcall	code_B6AB
		mov	R3, A
		mov	DPTR, #0F9B1h
		movx	@DPTR, A
		mov	A, R2
		mov	DPTR, #0F9B3h
		movx	@DPTR, A
		inc	DPTR
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F9B2h
		movx	A, @DPTR
		clr	C
		subb	A, R3
		jnc	code_3B9A
		mov	DPTR, #0F9B5h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		mov	R3, A
		mov	DPTR, #5FA7h	; Период для диагностики ДПКВ |	сек.
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, R3
		jnc	code_3B9F
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		mov	C, P1.3		; Port 1 (PDIR=0)
		jc	code_3B97
		setb	ACC.3		; Accumulator
		sjmp	code_3B99
; ---------------------------------------------------------------------------

code_3B97:				; CODE XREF: RESET_0-AE51j
		setb	ACC.2		; Accumulator

code_3B99:				; CODE XREF: RESET_0-AE4Dj
		movx	@DPTR, A

code_3B9A:				; CODE XREF: RESET_0:code_3B2Aj
					; RESET_0-AEB5j ...
		clr	A
		mov	DPTR, #0F9B5h
		movx	@DPTR, A
; --- EGT -------------------------------------------------------------------

code_3B9F:
		mov     DPTR, #5F00h
		clr     A
		movc    A, @A+DPTR
		jnb     ACC.5, code_3B9F5
		
		mov     B, #59h
		lcall   READ_ADC
		mov     DPTR, #98A7h	; Тарировка ДТОГ
		movc    A, @A+DPTR
		mov     DPTR, #0FF3Fh
		movx    @DPTR, A		

; --- ШДК -------------------------------------------------------------------

code_3B9F5:
		mov     DPTR, #5F00h
		clr     A
		movc    A, @A+DPTR
		jnb     ACC.3, code_3BAA
		
		mov     B, #56h
		mov     DPTR, #5F03h
		clr     A
		movc    A, @A+DPTR
		jnb     ACC.0, code_3BA0
		mov     B, #52h
		
code_3BA0:
		lcall   READ_ADC
		mov     DPTR, #62ACh	; Тарировка ШДК
		movc    A, @A+DPTR
		mov     DPTR, #0FF40h
		movx    @DPTR, A
		
		ljmp	code_3D9A

; ---------------------------------------------------------------------------
code_3BAA:

		mov	B, #2		; B-Register
		lcall	code_E7C6
		mov	DPTR, #0FAA8h
		movx	@DPTR, A
		mov	B, A		; B-Register
		mov	DPTR, #0F811h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		mov	B, #80h	; 'А'   ; B-Register
		jc	code_3BC4
		mul	AB
		add	A, #80h	; 'А'
		mov	A, B		; B-Register
		addc	A, #0
		cpl	A
		inc	A
		mov	B, A		; B-Register
		sjmp	code_3BCF
; ---------------------------------------------------------------------------

code_3BC4:				; CODE XREF: RESET_0-AE2Dj
		cpl	A
		inc	A
		mul	AB
		add	A, #80h	; 'А'
		mov	A, B		; B-Register
		addc	A, #0
		mov	B, A		; B-Register

code_3BCF:				; CODE XREF: RESET_0-AE20j
		mov	DPTR, #0F811h
		movx	A, @DPTR
		add	A, B		; B-Register
		mov	R0, A
		mov	DPTR, #0F811h
		movx	@DPTR, A
		mov	B, #4		; B-Register
		mul	AB
		mov	DPTR, #0F964h
		movx	@DPTR, A
		jb	RAM_29.7, code_3BF8
		mov	DPTR, #5FE7h	; Напряжение переключения Lean-Rich 2 |	В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		jb	RAM_2C.7, code_3C09
		mov	DPTR, #5FE8h	; Напряжение переключения Rich-Lean 2 |	В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		sjmp	code_3C09
; ---------------------------------------------------------------------------

code_3BF8:				; CODE XREF: RESET_0-AE00j
		mov	DPTR, #609Eh	; Напряжение переключения Rich-Lean | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		jb	RAM_2C.7, code_3C09
		mov	DPTR, #609Fh	; Напряжение переключения Lean-Rich | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register

code_3C09:				; CODE XREF: RESET_0-ADF6j
					; RESET_0-ADECj ...
		mov	A, R0
		clr	C
		subb	A, B		; B-Register
		cpl	C
		mov	RAM_2C.7, C
		
; ---------------------------------------------------------------------------		
		
		jb	Hardware.0, code_3C16
		ljmp	code_3D83
; ---------------------------------------------------------------------------

code_3C16:				; CODE XREF: RESET_0-ADD2j
		jb	RAM_2B.3, code_3C6A
		mov	DPTR, #60D5h	; Мин. напряжение АЦП ДК для диагностики | В
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, R0
		jc	code_3C6A
		jb	RAM_23.4, code_3C67
		jnb	RAM_29.1, code_3C67
		mov	DPTR, #0F810h
		movx	A, @DPTR
		jb	ACC.2, code_3C32 ; Accumulator
		jnb	ACC.1, code_3C49 ; Accumulator

code_3C32:				; CODE XREF: RESET_0-ADB6j
		jnb	RAM_2B.4, code_3C6A
		mov	DPTR, #0F8C3h
		movx	A, @DPTR
		mov	B, A		; B-Register
		inc	A
		movx	@DPTR, A
		mov	DPTR, #5F90h	; Время	для фиксации ошибки ДК | сек.
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_3C45	; B-Register

code_3C45:
		jnc	code_3C67
		sjmp	code_3C5E
; ---------------------------------------------------------------------------

code_3C49:				; CODE XREF: RESET_0-ADB3j
		jnb	RAM_2A.6, code_3C67
		mov	DPTR, #0F8C3h
		movx	A, @DPTR
		mov	B, A		; B-Register
		inc	A
		movx	@DPTR, A
		mov	DPTR, #5FA1h	; Период диагн.	ошибки низкого уровня ДК | циклов
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_3C5C	; B-Register

code_3C5C:
		jnc	code_3C67

code_3C5E:				; CODE XREF: RESET_0-AD9Bj
		setb	RAM_23.4
		mov	DPTR, #0F810h
		movx	A, @DPTR
		anl	A, #0FEh
		movx	@DPTR, A

code_3C67:				; CODE XREF: RESET_0-ADC0j
					; RESET_0-ADBDj ...
		ljmp	code_3D83
; ---------------------------------------------------------------------------

code_3C6A:				; CODE XREF: RESET_0:code_3C16j
					; RESET_0-ADC2j ...
		mov	DPTR, #60D6h	; Макс.	напряжение АЦП ДК для диагностики | В
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, R0
		jnc	code_3CBB
		jb	RAM_24.4, code_3CB8
		jnb	RAM_29.1, code_3CB8
		mov	DPTR, #0F810h
		movx	A, @DPTR
		jb	ACC.2, code_3C83 ; Accumulator
		jnb	ACC.1, code_3C9A ; Accumulator

code_3C83:				; CODE XREF: RESET_0-AD65j
		jnb	RAM_2B.4, code_3CBB
		mov	DPTR, #0F8C3h
		movx	A, @DPTR
		mov	B, A		; B-Register
		inc	A
		movx	@DPTR, A
		mov	DPTR, #5F90h	; Время	для фиксации ошибки ДК | сек.
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_3C96	; B-Register

code_3C96:
		jnc	code_3CB8
		sjmp	code_3CAF
; ---------------------------------------------------------------------------

code_3C9A:				; CODE XREF: RESET_0-AD62j
		jnb	RAM_2A.6, code_3CB8
		mov	DPTR, #0F8C3h
		movx	A, @DPTR
		mov	B, A		; B-Register
		inc	A
		movx	@DPTR, A
		mov	DPTR, #5FA2h	; Период диагн.	ошибки высокого	уровня ДК | циклов
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_3CAD	; B-Register

code_3CAD:
		jnc	code_3CB8

code_3CAF:				; CODE XREF: RESET_0-AD4Aj
		setb	RAM_24.4
		mov	DPTR, #0F810h
		movx	A, @DPTR
		anl	A, #0FEh
		movx	@DPTR, A

code_3CB8:				; CODE XREF: RESET_0-AD6Fj
					; RESET_0-AD6Cj ...
		ljmp	code_3D83
; ---------------------------------------------------------------------------

code_3CBB:				; CODE XREF: RESET_0-AD71j
					; RESET_0:code_3C83j
		clr	RAM_23.4
		clr	RAM_24.4
		clr	A
		mov	DPTR, #0F8C3h
		movx	@DPTR, A
		mov	DPTR, #0F810h
		movx	A, @DPTR
		jb	ACC.2, code_3CEA ; Accumulator
		jnb	ACC.1, code_3CEA ; Accumulator
		jnb	RAM_29.1, code_3CEA
		mov	DPTR, #5F92h	; Максимальное время работы подогревателя до готовности	| сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8C5h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_3CE1	; B-Register

code_3CE1:
		jc	code_3CEA
		mov	DPTR, #0F810h
		movx	A, @DPTR
		orl	A, #4
		movx	@DPTR, A

code_3CEA:				; CODE XREF: RESET_0-AD1Aj
					; RESET_0-AD17j ...
		jnb	RAM_2A.3, code_3CF9
		clr	A
		mov	DPTR, #0F810h
		movx	@DPTR, A
		mov	DPTR, #0F8C5h
		movx	@DPTR, A
		ljmp	code_3D9A
; ---------------------------------------------------------------------------

code_3CF9:				; CODE XREF: RESET_0:code_3CEAj
		mov	DPTR, #5F81h	; Минимальное напряжение готовности | В
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, R0
		mov	B.0, C		; B-Register
		mov	DPTR, #5F82h	; Максимальное напряжение готовности | В
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, R0
		orl	C, /B.0		; B-Register
		cpl	C
		jnc	code_3D1A
		mov	DPTR, #0F810h
		movx	A, @DPTR
		clr	ACC.7		; Accumulator
		movx	@DPTR, A
		jb	ACC.0, code_3D53 ; Accumulator
		sjmp	code_3D45
; ---------------------------------------------------------------------------

code_3D1A:				; CODE XREF: RESET_0-ACD6j
		mov	DPTR, #0F810h
		movx	A, @DPTR
		setb	ACC.7		; Accumulator
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F8C4h
		movx	@DPTR, A
		mov	DPTR, #5F83h	; Задержка готовности |	сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F803h
		movx	A, @DPTR
		inc	A
		jz	code_3D35
		movx	@DPTR, A

code_3D35:				; CODE XREF: RESET_0-ACB0j
		cjne	A, B, code_3D38	; B-Register

code_3D38:
		jc	code_3D83
		clr	RAM_25.3
		mov	DPTR, #0F810h
		movx	A, @DPTR
		orl	A, #1
		movx	@DPTR, A
		sjmp	code_3D83
; ---------------------------------------------------------------------------

code_3D45:				; CODE XREF: RESET_0-ACCAj
					; RESET_0-AC66j
		clr	A
		mov	DPTR, #0F803h
		movx	@DPTR, A
		mov	DPTR, #0F810h
		movx	A, @DPTR
		anl	A, #0FEh
		movx	@DPTR, A
		sjmp	code_3D83
; ---------------------------------------------------------------------------

code_3D53:				; CODE XREF: RESET_0-ACCDj
		mov	DPTR, #0F810h
		movx	A, @DPTR
		jnb	ACC.2, code_3D7E ; Accumulator
		jnb	RAM_2B.4, code_3D7E
		jb	RAM_2C.2, code_3D7E
		jnb	RAM_29.7, code_3D7E
		jnb	RAM_29.1, code_3D83
		mov	DPTR, #5F91h	; Макс.	время неакт. ДК	- диаг.	нагревателя | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8C4h
		movx	A, @DPTR
		inc	A
		jz	code_3D75
		movx	@DPTR, A

code_3D75:				; CODE XREF: RESET_0-AC70j
		cjne	A, B, code_3D78	; B-Register

code_3D78:
		jc	code_3D83
		setb	RAM_25.3
		sjmp	code_3D45


code_3D7E:				; CODE XREF: RESET_0-AC8Bj
					; RESET_0-AC88j ...
		clr	A
		mov	DPTR, #0F8C4h
		movx	@DPTR, A

code_3D83:				; CODE XREF: RESET_0-ADCFj
					; RESET_0:code_3C67j ...
		jb	RAM_2C.2, code_3D9A
		mov	DPTR, #5F96h	; Температура разрешения обучения | град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_3D8E

code_3D8E:
		mov	DPTR, #0F810h
		movx	A, @DPTR
		anl	C, ACC.2	; Accumulator
		anl	C, /ACC.0	; Accumulator
		jnc	code_3D9A
		setb	RAM_25.3

; ---------------------------------------------------------------------------

code_3D9A:				
			
		mov	C, RAM_23.5
		orl	C, RAM_24.5
		jc	code_3E01
		mov	DPTR, #0F8A9h
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #606Bh	; Минимальное напряжение ДПДЗ |	В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		clr	C
		subb	A, B		; B-Register
		jc	code_3E0E
		mov	DPTR, #606Ch	; Максимальное напряжение ДПДЗ | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		clr	C
		subb	A, B		; B-Register
		jnc	code_3E0E
		mov	DPTR, #0F827h
		movx	A, @DPTR
		xch	A, R1
		clr	C
		subb	A, R1
		jc	code_3DE1
		mov	B, A		; B-Register
		mov	DPTR, #6068h	; Коэффициент тарировки	ДПДЗ | %/В
		clr	A
		movc	A, @A+DPTR
		mul	AB
		mov	R0, B		; B-Register
		mov	DPTR, #606Ah	; Максимальное положение дросселя | %
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, B		; B-Register
		jnc	code_3DE3
		add	A, B		; B-Register
		mov	R0, A
		sjmp	code_3DE3
; ---------------------------------------------------------------------------

code_3DE1:				; CODE XREF: RESET_0-AC1Cj
		mov	R0, #0

code_3DE3:				; CODE XREF: RESET_0-AC08j
					; RESET_0-AC03j
		mov	DPTR, #606Dh	; Скорость изменения положения дросселя	| %/сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F824h
		movx	A, @DPTR
		clr	C
		subb	A, R0
		lcall	ABS_ACC
		clr	C
		subb	A, B		; B-Register
		jnc	code_3DFA
		mov	THR_CODE, R0

code_3DFA:				; CODE XREF: RESET_0-ABECj
		mov	A, R0
		mov	DPTR, #0F824h
		movx	@DPTR, A
		sjmp	code_3E22
; ---------------------------------------------------------------------------

code_3E01:				; CODE XREF: RESET_0-AC44j
		mov	DPTR, #6067h	; Начальное положение ДПДЗ | В
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F827h
		movx	@DPTR, A
		mov	DPTR, #0F8B2h
		movx	@DPTR, A

code_3E0E:				; CODE XREF: RESET_0-AC32j
					; RESET_0-AC25j
		jb	RAM_2A.4, code_3E1F
		mov	DPTR, #9D3Ch	; Иммитатор ДПДЗ при аварии | Положение	дросселя % - Обороты коленвала,	об/мин - Цикловое наполнение,мг/цикл
		mov	R2, RPM_RT
		mov	R3, GBC_RT
		lcall	GET_3D_VALUE
		mov	THR_CODE, A
		sjmp	code_3E22
; ---------------------------------------------------------------------------

code_3E1F:				; CODE XREF: RESET_0:code_3E0Ej
		mov	THR_CODE, #0

; ---------------------------------------------------------------------------
code_3E22:

		clr	RAM_29.1
		clr	RAM_29.2
		mov	DPTR, #0F898h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		mov	DPTR, #0F804h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, #32h, code_411A ; '2'
		clr	A
		movx	@DPTR, A
		jnb	RAM_29.7, code_40D0
		lcall	code_B6C7

code_40D0:				; CODE XREF: RESET_0-A918j
		setb	RAM_29.1
		jb	RAM_2B.0, code_40DD
		mov	DPTR, #0F8ACh
		movx	A, @DPTR
		inc	A
		jz	code_40DD
		movx	@DPTR, A

code_40DD:				; CODE XREF: RESET_0-A910j
					; RESET_0-A908j
		mov	DPTR, #0F965h
		movx	A, @DPTR
		inc	A
		jz	code_40E5
		movx	@DPTR, A

code_40E5:				; CODE XREF: RESET_0-A900j
		jnb	RAM_2D.6, code_410B
		mov	DPTR, #5F88h	; Шаг уменьшения уставки оборотов при кондиционировании	| об/мин
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F84Fh
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jnc	code_40F9
		clr	A

code_40F9:				; CODE XREF: RESET_0-A8ECj
		mov	B, A		; B-Register
		mov	DPTR, #5F58h	; Минимальное смещение оборотов	при кондиционировании |	об/мин
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_4103	; B-Register

code_4103:
		jnc	code_4107
		mov	A, B		; B-Register

code_4107:				; CODE XREF: RESET_0:code_4103j
		mov	DPTR, #0F84Fh
		movx	@DPTR, A

code_410B:				; CODE XREF: RESET_0:code_40E5j
		mov	DPTR, #0F805h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, #3Ch, code_411A ; '<'
		clr	A
		movx	@DPTR, A
		setb	RAM_29.2
		clr	RAM_22.5
		
; --- конец 1 раз в сек -----------------------------------------------------		

code_411A:				; CODE XREF: RESET_0-A91Dj
					; RESET_0-A8D1j
		jnb	RAM_29.1, code_4125
		mov	DPTR, #0F807h
		movx	A, @DPTR
		inc	A
		jz	code_4125
		movx	@DPTR, A

code_4125:				; CODE XREF: RESET_0:code_411Aj
					; RESET_0-A8C0j
		jnb	RAM_29.1, code_4133
		jb	RAM_2A.3, code_4133
		mov	DPTR, #0F9D4h
		movx	A, @DPTR
		inc	A
		jz	code_4133
		movx	@DPTR, A

; ---------------------------------------------------------------------------

code_4133:

		jb	RAM_29.5, code_418F
		jb	RAM_29.4, code_4143
		clr	A
		mov	DPTR, #0F87Ch
		movx	@DPTR, A
		clr	RAM_29.5
		ljmp	code_42E0


code_4143:
		mov	DPTR, #60AAh	; Время	анализа	состояния ключа	зажигания | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F87Ch
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		clr	C
		subb	A, B
		jc	code_4178

		lcall	ENG_STOP

		clr	A
		mov	DPTR, #0F87Ch
		movx	@DPTR, A
		setb	RAM_29.5
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.4
		movx	@DPTR, A
		lcall	SET_OUT_PIN_STATE
		lcall	code_AC0E
		anl	P6, #0DFh

code_4178:

		mov	DPTR, #60CAh	; Напряжение отключения	питания	| В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_0, A
		mov	B, #0
		lcall	READ_ADC
		cjne	A, RAM_0, code_4188

code_4188:
		jc	code_418C
		sjmp	code_41D5
; ---------------------------------------------------------------------------

code_418C:
		ljmp	code_42E0
; ---------------------------------------------------------------------------

code_418F:
		jb	RAM_29.4, code_4194
		sjmp	code_4178
; ---------------------------------------------------------------------------

code_4194:
		mov	DPTR, #60C9h	; Время	задержки отключения питания | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F87Ch
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		clr	C
		subb	A, B
		jc	code_4178

; ---------------------------------------------------------------------------

code_41D5:

		clr	EAL
		mov	DPTR, #0F9D4h
		movx	A, @DPTR
		jz	code_41E9
		mov	DPTR, #0F9BFh
		movx	A, @DPTR
		mov	C, RAM_29.7
		mov	ACC.0, C
		mov	DPTR, #0F9BFh
		movx	@DPTR, A

code_41E9:
		mov	WDTREL,	#80h
		setb	WDT
		setb	SWDT
		lcall	code_B345
		mov	R0, #1
		mov	R1, #0
		mov	DPTR, #0FD00h

code_41FA:
		clr	C
		movx	A, @DPTR
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		inc	DPTR
		mov	A, DPH
		cjne	A, #0FFh, code_41FA
		mov	R2, #40h
		mov	DPTR, #0F4D2h

code_420D:
		clr	C
		movx	A, @DPTR
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		inc	DPTR
		djnz	R2, code_420D
		mov	DPTR, #0F8FEh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #60CAh	; Напряжение отключения	питания	| В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_0, A
		mov	B, #0
		lcall	READ_ADC
		cjne	A, RAM_0, code_4231

code_4231:
		jc	code_4236
		ljmp	code_2483
; ---------------------------------------------------------------------------

code_4236:
		mov	CCEN, #0
		mov	CC4EN, #0
		mov	SYSCON,	#0
		
		clr	A
		mov	DPTR, #0F804h
		movx	@DPTR, A
		mov	DPTR, #0F87Ch
		movx	@DPTR, A

code_4283:

		mov	R3, #69h
		mov	R4, #0

code_4287:				; CODE XREF: RESET_0:code_4287j
					; RESET_0-A759j
		djnz	R4, code_4287
		djnz	R3, code_4287
		setb	WDT		; Interrupt Enable Register 0
		setb	SWDT		; Interrupt Enable Register 1
		mov	DPTR, #60CAh	; Напряжение отключения	питания	| В
		clr	A
		movc	A, @A+DPTR
		mov	RAM_0, A
		mov	B, #0		; B-Register
		lcall	READ_ADC
		cjne	A, RAM_0, code_429F

code_429F:
		jc	code_42A4
		ljmp	code_2483
; ---------------------------------------------------------------------------

code_42A4:				; CODE XREF: RESET_0:code_429Fj
		mov	DPTR, #0F804h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, #32h, code_4283 ; '2'
		clr	A
		movx	@DPTR, A
		mov	DPTR, #0A2B1h	; Время	контроля напряжения | Время, сек - Температура,	град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F87Ch
		movx	A, @DPTR
		inc	A
		jz	code_42BF
		movx	@DPTR, A

code_42BF:				; CODE XREF: RESET_0-A726j
		clr	C
		subb	A, B		; B-Register
		jc	code_4283
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		clr	ACC.6		; Accumulator
		movx	@DPTR, A
		lcall	SET_OUT_PIN_STATE
		clr	A
		mov	DPTR, #0F8C2h
		movx	@DPTR, A
		mov	R0, #0ABh ; 'л'
		mov	@R0, #0A5h ; 'е'
		orl	P9, #1		; Port 9 (PDIR=0)

code_42DA:				; CODE XREF: RESET_0-A704j
		setb	WDT		; Interrupt Enable Register 0
		setb	SWDT		; Interrupt Enable Register 1
		sjmp	code_42DA
; ---------------------------------------------------------------------------

code_42E0:				; CODE XREF: RESET_0-A8A2j
					; RESET_0:code_418Cj ...
		; mov	DPTR, #0F887h
		; movx	A, @DPTR
		; mov		R2, A
		; mov	DPTR, #0F888h
		; movx	A, @DPTR
		; mov		R3, A
		
		; ; Коррекция УОЗ	по температуре ОЖ | Поправка УОЗ, гр.п.к.в. - Температура, град.С
		; GET_2D_RAM_WITH_INTERPOLATION 6EC8h, CAPTURE_KTWATUOZ_MODE
		
		GET_RAM_BY_INDEX 6EC8h, TWAT_RT, CAPTURE_KTWATUOZ_MODE
		
		jnb		Hardware.4, code_42E2
		push	ACC
		; mov	B, A		; B-Register
		; mov	DPTR, #0F931h
		; movx	A, @DPTR
		; mov		R2, A
		; mov	DPTR, #0F8F1h
		; movx	A, @DPTR
		; mov		R3, A
		
		; ; Коррекция УОЗ	по температуре воздуха | Поправка УОЗ, гр.п.к.в. - Температура,	град.С
		; GET_2D_RAM_WITH_INTERPOLATION 84BAh, CAPTURE_KTAIRUOZ_MODE
		
		mov		DPTR, #0F931h
		movx	A, @DPTR
		mov	B, A		; B-Register

		GET_RAM_BY_INDEX 84BAh, B, CAPTURE_KTAIRUOZ_MODE
		
		pop		B
		
		add	A, B		; B-Register
code_42E2:
		mov	DPTR, #0F802h
		movx	@DPTR, A
		jb	RAM_29.5, code_4369
		jb	RAM_2A.6, code_4363
		jnb	RAM_2B.0, code_4360
		mov	A, RAM_7C
		anl	A, #0Fh
		anl	CMEN, #0F0h	; Compare Enable Register (RMAP=0)
		jnz	code_4315
		orl	P4, #0Fh	; Port 4 (PDIR=0)

code_4315:				; CODE XREF: RESET_0-A6D2j
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		clr	ACC.4		; Accumulator
		movx	@DPTR, A
		clr	RAM_29.6
		mov	DPTR, #0F810h
		movx	A, @DPTR
		anl	A, #0FDh
		movx	@DPTR, A
		mov	A, RAM_79
		anl	A, #8
		jz	code_4331
		mov	C, RAM_2E.3
		jnc	code_4349
		sjmp	code_4353
; ---------------------------------------------------------------------------

code_4331:				; CODE XREF: RESET_0-A6B9j
		mov	DPTR, #606Eh	; Время	работы бензонасоса до пуска | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F828h
		movx	A, @DPTR
		jnb	RAM_29.1, code_4343
		inc	A
		jnz	code_4343
		dec	A

code_4343:				; CODE XREF: RESET_0-A6A6j
					; RESET_0-A6A2j
		movx	@DPTR, A
		clr	C
		subb	A, B		; B-Register
		jc	code_4353

code_4349:				; CODE XREF: RESET_0-A6B5j
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.3		; Accumulator
		movx	@DPTR, A
		ljmp	code_43FE
; ---------------------------------------------------------------------------

code_4353:
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		setb	ACC.3
		movx	@DPTR, A

		ljmp	code_43FE
; ---------------------------------------------------------------------------

code_4360:				; CODE XREF: RESET_0-A6DCj
		ljmp	code_443F
; ---------------------------------------------------------------------------

code_4363:				; CODE XREF: RESET_0-A6DFj
		jb	RAM_2B.0, code_4369
		ljmp	code_4536
; ---------------------------------------------------------------------------

code_4369:				; CODE XREF: RESET_0-A6E2j
					; RESET_0:code_4363j
		clr	RAM_2A.6
		clr	RAM_26.1
		anl	P9, #0BFh	; Port 9 (PDIR=0)
		setb	RAM_2A.3
		setb	RAM_2A.4
		setb	RAM_2A.1
		mov	DPTR, #605Ch	; Обороты блокировки впрыска | об./мин
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F9A6h
		movx	@DPTR, A
		mov	DPTR, #0F9B7h
		movx	@DPTR, A
		mov	RAM_68,	#0FFh
		mov	RAM_69,	#0FFh
		mov	RAM_4A,	#0
		clr	A
		mov	DPTR, #0F810h
		movx	@DPTR, A
		mov	DPTR, #0F8C5h
		movx	@DPTR, A
		mov	A, DEV_FLAGS
		anl	A, #2
		jnz	code_43A4
		mov	DPTR, #6061h	; Фаза впрыска на пуске	| гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0FF47h
		movx	@DPTR, A

code_43A4:				; CODE XREF: RESET_0-A649j
		mov	DPTR, #6070h	; Цилиндровое GBC на пуске | мг./цикл
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F82Ch
		movx	@DPTR, A
		mov	DPTR, #6071h
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F82Dh
		movx	@DPTR, A
		jb	RAM_29.4, code_43C1
		mov	DPTR, #6AA1h	; Положение РХХ	при пуске | Шаги РХХ - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	USSM, A

code_43C1:				; CODE XREF: RESET_0-A62Cj
		clr	A
		mov	DPTR, #0F84Ah
		movx	@DPTR, A
		mov	DPTR, #0F89Eh
		movx	@DPTR, A
		mov	RPM_XX,	A
		mov	DPTR, #0F841h
		movx	@DPTR, A
		mov	DPTR, #0F842h
		movx	@DPTR, A
		mov	DPTR, #0F837h
		movx	@DPTR, A
		mov	DPTR, #0F838h
		movx	@DPTR, A
		mov	DPTR, #0F89Bh
		movx	@DPTR, A
		mov	DPTR, #0F89Ch
		movx	@DPTR, A
		mov	DPTR, #0F82Eh
		movx	@DPTR, A
		mov	DPTR, #0F82Fh
		movx	@DPTR, A
		mov	DPTR, #0F808h
		movx	@DPTR, A
		mov	DPTR, #0F809h
		movx	@DPTR, A
		mov	DPTR, #0F89Dh
		movx	@DPTR, A
		lcall	code_ACD9
		lcall	code_ACED

code_43FE:				; CODE XREF: RESET_0-A692j
					; RESET_0:code_435Dj
		mov	A, TWAT
		mov	DPTR, #0F80Ah
		movx	@DPTR, A
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_4418
		mov	DPTR, #0F8AFh
		movx	A, @DPTR
		mov	DPTR, #71A0h	; УОЗ на пуске | УОЗ, гр.п.к.в.	- Обороты коленвала, об/мин
		movc	A, @A+DPTR
		mov	UOZXX_1, A

code_4418:				; CODE XREF: RESET_0-A5DAj
		mov	R0, #80h ; 'А'
		mov	RAM_14,	@R0
		inc	R0
		mov	RAM_15,	@R0
		inc	R0
		mov	RAM_16,	@R0
		inc	R0
		mov	RAM_17,	@R0
		inc	R0
		mov	RAM_10,	@R0
		inc	R0
		mov	RAM_11,	@R0
		inc	R0
		mov	RAM_12,	@R0
		inc	R0
		mov	RAM_13,	@R0
		mov	LAUNCH_UOZ_OFFSET, #0
		
		mov		DPTR, #8FBFh    ; время действия поправки ALF после пуска (прогрев)
		mov		A, TWAT_RT
		movc	A, @A+DPTR
		mov		DPTR, #0F890h
		movx	@DPTR, A

		ljmp	code_4FBB
; ---------------------------------------------------------------------------

code_4437:				; CODE XREF: RESET_0-A57Fj
					; RESET_0-A546j
		clr	A
		mov	DPTR, #0F872h
		movx	@DPTR, A

code_443C:				; CODE XREF: RESET_0-A581j
		ljmp	code_4527
; ---------------------------------------------------------------------------

code_443F:
		mov	A, RAM_79
		anl	A, #8
		setb	C
		jz	code_4453
		mov	C, RAM_2E.3
		jc	code_4453
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.3
		movx	@DPTR, A
		sjmp	code_445D
; ---------------------------------------------------------------------------

code_4453:
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		setb	ACC.3
		movx	@DPTR, A

code_445D:	
		mov	DPTR, #5F03h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.2, code_443C	; откл. форсунок
					
		mov	DPTR, #0F872h
		movx	A, @DPTR
		jnz	code_443C
		jb	RAM_23.0, code_4437
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #7152h	; Асинхронная цикловая подача |	Цикловая подача	топлива, мг/цикл - Температура,	град.С
		lcall	GET_2D_INTERPOLATION
		mov	B, A		; B-Register
		mov	DPTR, #0F997h
		movx	A, @DPTR
		jnb	ACC.0, code_4486 ; Accumulator
		mov	DPTR, #8C4Eh	; Коррекция GTCA по ТОЖ	| Коэффициент коррекции	- Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mul	AB

code_4486:				; CODE XREF: RESET_0-A566j
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		add	A, #8
		anl	A, #0F0h
		swap	A
		mov	DPTR, #7A77h	; Коррекция по дросселю	| Коэффициент коррекции	- Положение дросселя, %
		movc	A, @A+DPTR
		mul	AB
		mov	A, B		; B-Register
		mov	DPTR, #0F872h
		movx	@DPTR, A
		jz	code_4437
		mov	R1, A
		mov	R0, #0
		mov	R3, A
		mov	R2, #0
		mov	B, RAM_6F	; B-Register
		cpl	B.7		; B-Register
		lcall	MUL_R0R1_B
		mov	A, RAM_6F
		jnb	ACC.7, code_44BA ; Accumulator
		lcall	ADD_R0R1_R2R3
		jnc	code_44BA
		mov	R0, #0FFh
		mov	R1, #0FFh

code_44BA:				; CODE XREF: RESET_0-A534j
					; RESET_0-A52Ej
		CALC_INJ_STAT
		mov	R2, RAM_50
		mov	R3, #0
		lcall	ADD_R0R1_R2R3
		mov	B, #10h		; B-Register
		lcall	MUL_R0R1_B

code_44D1:				; CODE XREF: RESET_0-A4EDj
		clr	RAM_28.4
		mov	MD0, B		
		mov	MD1, R0		
		mov	MD2, R1		
		mov	MD3, #0		
		mov	MD4, #0Ch	
		mov	MD5, #0		
		nop
		nop
		nop
		nop
		nop
		nop
		mov	R2, MD0		
		mov	R3, MD1		
		mov	A, MD2		
		mov	A, MD3		
		mov	A, MD4		
		mov	A, MD5		
		jb	RAM_28.4, code_44D1
		anl	CMEN, #0F0h	; Compare Enable Register (RMAP=0)
		clr	EAL		; Interrupt Enable Register 0
		mov	A, RAM_7C
		anl	A, #0Fh
		jnz	code_4506
		anl	P4, #0F0h	; Port 4 (PDIR=0)

code_4506:				; CODE XREF: RESET_0-A4E1j
		mov	CCL1, A		; Compare/Capture Register 1, Low Byte
		setb	EAL		; Interrupt Enable Register 0
		mov	A, CCL1		; Compare/Capture Register 1, Low Byte
		add	A, R2
		mov	R2, A
		mov	A, CCH1		; Compare/Capture Register 1, High Byte
		addc	A, R3
		mov	CMH0, A		; Compare Register 0, High Byte	(RMAP=0)
		mov	CMH1, A		; Compare Register 1, High Byte	(RMAP=0)
		mov	CMH2, A		; Compare Register 2, High Byte	(RMAP=0)
		mov	CMH3, A		; Compare Register 3, High Byte	(RMAP=0)
		mov	CML0, R2	; Compare Register 0, Low Byte (RMAP=0)
		mov	CML1, R2	; Compare Register 1, Low Byte (RMAP=0)
		mov	CML2, R2	; Compare Register 2, Low Byte (RMAP=0)
		mov	CML3, R2	; Compare Register 3, Low Byte (RMAP=0)
		orl	CMEN, #0Fh	; Compare Enable Register (RMAP=0)
		orl	P4, #0Fh	; Port 4 (PDIR=0)

code_4527:				; CODE XREF: RESET_0:code_443Cj
		jb	Options.2, code_4531
		mov	DPTR, #0F997h
		movx	A, @DPTR
		setb	ACC.0		; Accumulator
		movx	@DPTR, A

code_4531:				; CODE XREF: RESET_0:code_4527j
		clr	A
		mov	DPTR, #0F829h
		movx	@DPTR, A

code_4536:				; CODE XREF: RESET_0-A67Cj
		jnb	RAM_2A.3, code_4563
		mov	DPTR, #8A99h	; Обороты полного выхода из режима пуска | Обороты, об/мин - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, RPM_XX
		clr	C
		subb	A, B		; B-Register
		jnc	code_455F
		mov	DPTR, #605Ah	; Обороты начала выхода	из режима пуска	| об/мин
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, RPM_XX
		clr	C
		subb	A, B		; B-Register
		mov	RAM_2A.1, C
		jc	code_4571
		clr	A
		mov	DPTR, #0F872h
		movx	@DPTR, A
		sjmp	code_4571
; ---------------------------------------------------------------------------

code_455F:				; CODE XREF: RESET_0-A49Cj
		clr	RAM_2A.3
		clr	RAM_2A.1

code_4563:				; CODE XREF: RESET_0:code_4536j
		jnb	RAM_29.1, code_456E
		mov	DPTR, #0F9A5h
		movx	A, @DPTR
		jz	code_456E
		dec	A
		movx	@DPTR, A

code_456E:				; CODE XREF: RESET_0:code_4563j
					; RESET_0-A478j
		ljmp	code_45B1
; ---------------------------------------------------------------------------

code_4571:				; CODE XREF: RESET_0-A48Cj
					; RESET_0-A485j
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_4585
		mov	DPTR, #0F8AFh
		movx	A, @DPTR
		mov	DPTR, #71A0h	; УОЗ на пуске | УОЗ, гр.п.к.в.	- Обороты коленвала, об/мин
		movc	A, @A+DPTR
		mov	UOZXX_1, A

code_4585:				; CODE XREF: RESET_0-A46Dj
		mov	A, DEV_FLAGS
		anl	A, #20h
		jnz	code_4593
		mov	DPTR, #6AA1h	; Положение РХХ	при пуске | Шаги РХХ - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	USSM, A

code_4593:				; CODE XREF: RESET_0-A459j
		lcall	code_ACD9
		lcall	code_ACED
		mov	DPTR, #0F872h
		movx	A, @DPTR
		jz	code_45AA
		mov	A, P4		; Port 4 (PDIR=0)
		cpl	A
		anl	A, #0Fh
		jnz	code_45AE
		mov	DPTR, #0F872h
		movx	@DPTR, A

code_45AA:				; CODE XREF: RESET_0-A445j
		setb	RAM_2A.5
		setb	RAM_2A.6

code_45AE:				; CODE XREF: RESET_0-A43Ej
		ljmp	code_4F2C
; ---------------------------------------------------------------------------

code_45B1:				; CODE XREF: RESET_0:code_456Ej
		mov	DPTR, #63D3h	; Зона детонации
		mov	A, RPM_THR_3D_RT
		movc	A, @A+DPTR
		mov	C, RAM_2B.5
		anl	C, ACC.1	; Accumulator
		orl	C, ACC.0	; Accumulator
		mov	RAM_2B.5, C
		jnb	RAM_2B.1, code_45D4
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #87E4h	; Состав смеси на ХХ | Отношение воздух/топливо	- Температура, град.С
		lcall	GET_2D_INTERPOLATION
		sjmp	code_45D7
; ---------------------------------------------------------------------------

code_45D4:				; CODE XREF: RESET_0-A423j
		lcall	CALC_ALF

code_45D7:				; CODE XREF: RESET_0-A410j
		mov	ALF_1, A
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_45E2
		lcall	code_E954

code_45E2:				; CODE XREF: RESET_0-A405j
		mov	A, DEV_FLAGS
		anl	A, #2
		jnz	code_45F2
		
		; Фаза впрыска | Фаза, гр.п.к.в. - Обороты коленвала, об/мин - Цикловое	наполнение,мг/цикл
		GET_RAM_BY_INDEX 64D3h, RPM_GBC_3D_RT, CAPTURE_FAZA_MODE

		mov	DPTR, #0FF47h
		movx	@DPTR, A

; ---------------------------------------------------------------------------
code_45F2:
		mov	R2, RPM_RT
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		mov	R3, A
		mov	DPTR, #9BC7h	; Коррекция порога детонации / коррекция коэф. пересчета | Коэффициент - Обороты коленвала, об/мин - Положение дросселя,%
		lcall	GET_3D_VALUE
		mov	R2, A
		
		jb	RAM_28.7, code_4600
		
		mov	DPTR, #7BC7h	; Коэффициент пересчета в уровень детонации
		mov	A, RPM_1
		anl	A, #0FEh
		mov	B, A
		movc	A, @A+DPTR
		mov	R0, A
		mov	A, B
		inc	A
		movc	A, @A+DPTR
		mov	R1, A
		
		mov	B, R2
		
		lcall	MUL_R0R1_2
		lcall	MUL_R0R1_B
		
		mov	DPTR, #0F8BAh	; Скорректированный коэффициент пересчета в уровень детонации
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		mov	R2, #80h
; -------		
code_4600:
		mov	DPTR, #0F934h	; Общий уровень шума
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		mov	DPTR, #8F2Ah	; Относительный порог детонации
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	B, A
		
		lcall	MUL_R0R1_B
		
		mov	A, R1
		jz	code_4640
		mov	R0, #0FFh
		mov	R1, #0Fh
		sjmp	code_464B
code_4640:
		mov	RAM_1, RAM_0
		mov	R0, B
		lcall	DIV_R0R1_8
		lcall	DIV_R0R1_2
code_464B:
		mov	B, R2
		
		lcall	MUL_R0R1_2
		lcall	MUL_R0R1_B		

		mov	DPTR, #0FA92h		; Общий порог детонации
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		
		lcall	DIV_R0R1_2
		mov	DPTR, #0F9D1h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
; -------
		mov	DPTR, #7F07h	; Порог	детонации |  - Обороты коленвала, об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	DPTR, #0F943h
		movx	@DPTR, A
; -------
		mov	DPTR, #7F27h	; Минимальное время между циклами детонации | сек. - Обороты коленвала,	об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	DPTR, #0F953h
		movx	@DPTR, A
		
		mov	DPTR, #7F47h	; Период восстановления	УОЗ | сек. - Обороты коленвала,	об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	DPTR, #0F954h
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------		
		mov	A, #80h
		jnb	Hardware.4, code_46B8
		mov	R2, RPM_RT
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		mov	R3, A
		mov	DPTR, #8C75h	; Множитель коррекции по ТВОЗД | Коэффициент коррекции - Обороты коленвала, об/мин - Положение дросселя,%
		lcall	GET_3D_VALUE
		mov	R4, A
		mov	DPTR, #0F931h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F8F1h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #900Dh	; Коэффициент весовой коррекции	по ТВОЗД | Коэффициент коррекции - Температура воздуха,	град.С
		lcall	GET_2D_INTERPOLATION
		clr	C
		subb	A, #80h
		jnc	code_46AF
		cpl	A
		inc	A
		mov	B, R4
		mul	AB
		mov	A, #80h
		clr	C
		subb	A, B
		sjmp	code_46B8
; ---------------------------------------------------------------------------

code_46AF:
		mov	B, R4
		mul	AB
		add	A, #80h
		mov	A, B
		addc	A, #80h

code_46B8:
		mov	DPTR, #0F8F0h
		movx	@DPTR, A
		
		mov	DPTR, #0F87Dh
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0FF4Dh
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #6713h	; Коэффициент весовой коррекции	от ТОЖ | Коэффициент коррекции - Текущая ТОЖ, град - ТОЖ при пуске,град
		lcall	GET_3D_VALUE
		mov	DPTR, #0FF4Fh
		movx	@DPTR, A
		mov	R2, RPM_RT
		mov	R3, GBC_RT
		mov	DPTR, #8193h	; Весовая коррекция топливоподачи | Коэффициент	коррекции - Обороты коленвала, об/мин -	Положение дросселя,%
		lcall	GET_3D_VALUE
		mov	R4, A
		mov	DPTR, #0FF4Fh
		movx	A, @DPTR
		clr	C
		subb	A, #80h	; 'А'
		jnc	code_46F0
		cpl	A
		inc	A
		mov	B, R4		; B-Register
		mul	AB
		mov	A, #80h	; 'А'
		clr	C
		subb	A, B		; B-Register
		sjmp	code_46F9
; ---------------------------------------------------------------------------

code_46F0:				; CODE XREF: RESET_0-A300j
		mov	B, R4		; B-Register
		mul	AB
		add	A, #80h	; 'А'
		mov	A, B		; B-Register
		addc	A, #80h	; 'А'

code_46F9:				; CODE XREF: RESET_0-A2F4j
		mov	B, A		; B-Register
		mov	DPTR, #0F8F0h
		movx	A, @DPTR
		mul	AB
		add	A, #40h	; '@'
		jnc	code_4706
		inc	B		; B-Register

code_4706:				; CODE XREF: RESET_0-A2E0j
		jnb	B.7, code_470D	; B-Register
		mov	A, #0FFh
		sjmp	code_4712
; ---------------------------------------------------------------------------

code_470D:				; CODE XREF: RESET_0:code_4706j
		mov	C, ACC.7	; Accumulator
		mov	A, B		; B-Register
		rlc	A

code_4712:				; CODE XREF: RESET_0-A2D7j
		mov	DPTR, #0F97Fh
		movx	@DPTR, A
		mov	C, RAM_23.6
		orl	C, RAM_24.6
		orl	C, RAM_23.5
		orl	C, RAM_24.5
		jc	code_4720
		jmp code_4830
code_4720:
		lcall	code_E984
		mov	A, DEV_FLAGS
		anl	A, #20h
		jnz	code_4731
		mov	DPTR, #6F0Fh	; Положение РХХ	при отказе ДПДЗ	| Положение РХХ	- Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	USSM, A

code_4731:				; CODE XREF: RESET_0-A2BBj
		jnb	RAM_2A.4, code_4745
		mov	DPTR, #8A99h	; Обороты полного выхода из режима пуска | Обороты, об/мин - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, RPM_XX
		clr	C
		subb	A, B		; B-Register
		jc	code_4745
		clr	RAM_2A.4

code_4745:				; CODE XREF: RESET_0:code_4731j
					; RESET_0-A2A1j
		mov	DPTR, #8AC0h	; Положение закрытого дросселя,	таблица	| Положение дросселя,% -
		jnb	RAM_2B.1, code_475D
		mov	DPTR, #8AE0h	; Положение открытого дросселя,	таблица	| Положение дросселя,% -
code_475D:
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, THR_CODE
		clr	C
		subb	A, B		; B-Register
		jc	code_476F
		ljmp	code_4822
; ---------------------------------------------------------------------------

code_476F:				; CODE XREF: RESET_0-A28Dj
					; RESET_0-A278j
		setb	RAM_2B.1
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_478A

		GET_UOZ_XX

code_478A:				; CODE XREF: RESET_0-A26Dj
		; Желаемые обороты ХХ |	Обороты, об/мин	- Температура, град.С
		GET_RAM_BY_INDEX 6F56h, TWAT_RT, CAPTURE_RPM_XX_MODE
		
		mov	DPTR, #0F849h
		movx	@DPTR, A
		clr	C
		subb	A, RPM_XX
		jc	code_47A0
		jnb	ACC.7, code_47A5 ; Accumulator
		mov	A, #7Fh	; ''
		sjmp	code_47A5
; ---------------------------------------------------------------------------

code_47A0:				; CODE XREF: RESET_0-A24Bj
		jb	ACC.7, code_47A5 ; Accumulator
		mov	A, #80h	; 'А'

code_47A5:				; CODE XREF: RESET_0-A249j
					; RESET_0-A244j ...
		mov	DELTA_RPM_XX, A
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_4803
		
		call CALC_DUOZ_REGXX
		
		add	A, UOZXX_2		; B-Register
		mov	UOZXX_1, A

code_4803:				; CODE XREF: RESET_0-A237j
		mov	DPTR, #60E9h	; Граница включения подачи топлива | об./мин
		jb	RAM_2B.3, code_4814
		mov	DPTR, #60EAh	; Граница отключения подачи топлива | об./мин

code_4814:				; CODE XREF: RESET_0-A1D8j
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, RPM_1
		cjne	A, B, code_4819	; B-Register

code_4819:
		cpl	C
		mov	RAM_2B.3, C
		jnb	RAM_2B.3, code_4824
		ljmp	code_4FBB
; ---------------------------------------------------------------------------

code_4822:				; CODE XREF: RESET_0-A28Bj
					; RESET_0-A276j
		clr	RAM_2B.1

code_4824:				; CODE XREF: RESET_0-A1C6j
		mov	C, RAM_23.5
		orl	C, RAM_24.5
		jnc	code_482D
		ljmp	code_4E1C
; ---------------------------------------------------------------------------

code_482D:				; CODE XREF: RESET_0-A1BAj
		ljmp	code_4EC3
; ---------------------------------------------------------------------------

code_4830:				; CODE XREF: RESET_0:code_475Aj
		jb	RAM_2A.3, code_4878
		jb	RAM_29.7, code_4878
		mov	DPTR, #0F80Ah
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #5F7Eh	; Верхний порог	температуры ОЖ для точки росы |	град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_4844	; B-Register

code_4844:
		jnc	code_484A
		setb	RAM_29.7
		sjmp	code_4878
; ---------------------------------------------------------------------------

code_484A:				; CODE XREF: RESET_0:code_4844j
		mov	DPTR, #5F7Dh	; Нижний порог температуры ОЖ для точки	росы | град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_4852	; B-Register

code_4852:
		jnc	code_4862
		mov	DPTR, #0F9BFh
		movx	A, @DPTR
		jnb	ACC.0, code_4862 ; Accumulator
		mov	DPTR, #5F7Fh	; Порог	1 суммарной массы воздуха для точки росы | кг.
		clr	A
		movc	A, @A+DPTR
		sjmp	code_4867
; ---------------------------------------------------------------------------

code_4862:				; CODE XREF: RESET_0:code_4852j
					; RESET_0-A18Aj
		mov	DPTR, #5F80h	; Порог	2 суммарной массы воздуха для точки росы | кг.
		clr	A
		movc	A, @A+DPTR

code_4867:				; CODE XREF: RESET_0-A182j
		mov	DPTR, #0F8F2h
		movx	@DPTR, A
		mov	B, A		; B-Register
		mov	DPTR, #0F8F7h
		movx	A, @DPTR
		cjne	A, B, code_4874	; B-Register

code_4874:
		jc	code_4878
		setb	RAM_29.7

code_4878:				; CODE XREF: RESET_0:code_4830j
					; RESET_0-A1AFj ...
		jnb	Hardware.0, code_48AE
		jb	RAM_2B.0, code_48AE
		mov	DPTR, #5F89h	; Напряжение отключения	нагрузок при отказе РР | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F80Dh
		movx	A, @DPTR
		cjne	A, B, code_488C	; B-Register

code_488C:
		jnc	code_48AE
		mov	DPTR, #5F8Ah	; Температура ОЖ для разрешения	отключения нагревателя | град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_4896

code_4896:
		jnc	code_48AE
		jb	RAM_29.7, code_489E
		ljmp	code_48D7
; ---------------------------------------------------------------------------

code_489E:				; CODE XREF: RESET_0-A14Aj
		mov	DPTR, #5F87h	; Температура ОГ для отключения	нагревателя | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F895h
		movx	A, @DPTR
		cjne	A, B, code_48AC	; B-Register

code_48AC:
		jc	code_48C1

code_48AE:				; CODE XREF: RESET_0:code_4878j
					; RESET_0-A167j ...
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		clr	ACC.4		; Accumulator
		movx	@DPTR, A
		clr	RAM_29.6
		mov	DPTR, #0F810h
		movx	A, @DPTR
		anl	A, #0FDh
		movx	@DPTR, A
		ljmp	code_494A
; ---------------------------------------------------------------------------

code_48C1:				; CODE XREF: RESET_0:code_48ACj
					; RESET_0-A101j ...
		jb	RAM_22.3, code_48CB
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		setb	ACC.4		; Accumulator
		movx	@DPTR, A

code_48CB:				; CODE XREF: RESET_0:code_48C1j
		setb	RAM_29.6
		mov	DPTR, #0F810h
		movx	A, @DPTR
		orl	A, #2
		movx	@DPTR, A
		ljmp	code_494A
; ---------------------------------------------------------------------------

code_48D7:				; CODE XREF: RESET_0-A147j
		mov	DPTR, #0F810h
		movx	A, @DPTR
		jb	ACC.0, code_48E3 ; Accumulator
		jb	RAM_25.3, code_48E3
		sjmp	code_48C1
; ---------------------------------------------------------------------------

code_48E3:				; CODE XREF: RESET_0-A107j
					; RESET_0-A104j
		mov	DPTR, #0F978h
		movx	A, @DPTR
		mov	B, A		; B-Register
		swap	A
		anl	A, #0Fh
		mov	R2, A
		mov	A, B		; B-Register
		anl	A, #0Fh
		swap	A
		mov	R3, A
		mov	DPTR, #7F8Eh	; Время	паузы нагревателя | Время,сек. - Бортовое напряжение
		lcall	GET_2D_INTERPOLATION
		mov	B, A		; B-Register
		mov	DPTR, #0F963h
		movx	@DPTR, A
		jz	code_48C1
		jnb	RAM_29.6, code_4928
		mov	DPTR, #0F8F3h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		mov	B, A		; B-Register
		mov	DPTR, #5F93h	; Время	включения нагревателя |	сек.
		clr	A
		movc	A, @A+DPTR
		xch	A, B		; B-Register
		cjne	A, B, code_4916	; B-Register

code_4916:
		jc	code_494A
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		clr	ACC.4		; Accumulator
		movx	@DPTR, A
		clr	RAM_29.6
		clr	A
		mov	DPTR, #0F8F4h
		movx	@DPTR, A
		sjmp	code_494A
; ---------------------------------------------------------------------------

code_4928:				; CODE XREF: RESET_0-A0E1j
		mov	DPTR, #0F8F4h
		movx	A, @DPTR
		inc	A
		jz	code_4930
		movx	@DPTR, A

code_4930:				; CODE XREF: RESET_0-A0B5j
		mov	DPTR, #0F8F4h
		movx	A, @DPTR
		cjne	A, B, code_4937	; B-Register

code_4937:
		jc	code_494A
		jb	RAM_22.3, code_4943
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		setb	ACC.4		; Accumulator
		movx	@DPTR, A

code_4943:				; CODE XREF: RESET_0-A0A9j
		setb	RAM_29.6
		clr	A
		mov	DPTR, #0F8F3h
		movx	@DPTR, A

code_494A:				; CODE XREF: RESET_0-A124j
					; RESET_0-A10Ej ...
		mov	A, DEV_FLAGS
		anl	A, #40h
		jnz	code_4980
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		
		; Желаемые обороты ХХ |	Обороты, об/мин	- Температура, град.С
		GET_2D_RAM_WITH_INTERPOLATION 6F56h, CAPTURE_RPM_XX_MODE

		mov	B, A		; B-Register
		mov	DPTR, #0F84Fh
		movx	A, @DPTR
		add	A, B		; B-Register
		jnc	code_496E
		mov	A, #0FFh
		sjmp	code_4984
; ---------------------------------------------------------------------------

code_496E:				; CODE XREF: RESET_0-A07Aj
		mov	B, A		; B-Register
		mov	DPTR, #0F9D4h
		movx	A, @DPTR
		mov	DPTR, #9094h	; Смещение оборотов ХХ по времени | Обороты, об/мин - Время работы двигателя, сек.
		movc	A, @A+DPTR
		add	A, B		; B-Register
		jnc	code_4984
		mov	A, #0FFh
		sjmp	code_4984
; ---------------------------------------------------------------------------

code_4980:				; CODE XREF: RESET_0-A094j
		mov	DPTR, #0F849h
		movx	A, @DPTR

code_4984:				; CODE XREF: RESET_0-A076j
					; RESET_0-A068j ...
		mov	B, A		; B-Register
		mov	R0, B		; B-Register
		jb	RAM_2D.6, code_4992
		mov	DPTR, #6086h	; Коэффициент 1	переходного режима |
		clr	A
		movc	A, @A+DPTR
		sjmp	code_4997
; ---------------------------------------------------------------------------

code_4992:				; CODE XREF: RESET_0-A05Aj
		mov	DPTR, #5F57h	; Коэффициент 1	переходного режима КОHДИЦ. |
		clr	A
		movc	A, @A+DPTR

code_4997:				; CODE XREF: RESET_0-A052j
		mul	AB
		mov	A, R0
		add	A, B		; B-Register
		jnc	code_499F
		mov	A, #0FFh

code_499F:				; CODE XREF: RESET_0-A047j
		mov	DPTR, #0F847h
		movx	@DPTR, A
		mov	B, A		; B-Register
		mov	DPTR, #6087h	; Коэффициент 2	переходного режима |
		clr	A
		movc	A, @A+DPTR
		mul	AB
		mov	DPTR, #0F847h
		movx	A, @DPTR
		add	A, B		; B-Register
		jnc	code_49B5
		mov	A, #0FFh

code_49B5:				; CODE XREF: RESET_0-A031j
		mov	DPTR, #0F848h
		movx	@DPTR, A
		mov	B, #0		; B-Register
		mov	A, DEV_FLAGS
		anl	A, #40h
		jnz	code_49D3
		jnb	Options.4, code_49CB
		jb	RAM_25.6, code_49CB
		jnb	RAM_2D.5, code_49D3

code_49CB:				; CODE XREF: RESET_0-A020j
					; RESET_0-A01Dj
		mov	DPTR, #756Dh	; Смещение оборотов ХХ в движении | Обороты, об/мин - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A		; B-Register

code_49D3:				; CODE XREF: RESET_0-A022j
					; RESET_0-A01Aj
		mov	A, R0
		add	A, B		; B-Register
		jnc	code_49DD
		jb	B.7, code_49DD	; B-Register
		mov	A, #0FFh

code_49DD:				; CODE XREF: RESET_0-A00Cj
					; RESET_0-A00Aj
		mov	DPTR, #0F849h
		movx	@DPTR, A
		
		GET_UOZ_XX
		
		jnb	RAM_2B.1, code_4A26
		mov	DPTR, #8AE0h	; Положение открытого дросселя,	таблица	| Положение дросселя,% -
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, THR_CODE
		clr	C
		subb	A, B		; B-Register
		jc	code_4A10
		mov	A, #1
		mov	DPTR, #0F97Ah
		movx	@DPTR, A
		ljmp	code_4A7B
; ---------------------------------------------------------------------------

code_4A10:				; CODE XREF: RESET_0-9FDDj
		jb	RAM_2C.2, code_4A20
		mov	DPTR, #0F848h
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	A, RPM_XX
		clr	C
		subb	A, B		; B-Register
		jnc	code_4A23

code_4A20:				; CODE XREF: RESET_0:code_4A10j
		ljmp	code_4B76
; ---------------------------------------------------------------------------

code_4A23:				; CODE XREF: RESET_0-9FC4j
		ljmp	code_4B85
; ---------------------------------------------------------------------------

code_4A26:				; CODE XREF: RESET_0-9FEDj
		mov	A, RAM_6B
		jz	code_4A56
		mov	DPTR, #8AE0h	; Положение открытого дросселя,	таблица	| Положение дросселя,% -
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, THR_CODE
		clr	C
		subb	A, B		; B-Register
		jnc	code_4A7B
		mov	DPTR, #0F847h
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	A, RPM_XX
		clr	C
		subb	A, B		; B-Register
		jnc	code_4A49

code_4A46:				; CODE XREF: RESET_0:code_4A68j
					; RESET_0-9F6Cj
		ljmp	code_4B24
; ---------------------------------------------------------------------------

code_4A49:				; CODE XREF: RESET_0-9F9Ej
		mov	A, RAM_6B
		clr	C
		subb	A, #2
		jnc	code_4A53
		ljmp	code_4B8D
; ---------------------------------------------------------------------------

code_4A53:				; CODE XREF: RESET_0-9F94j
		ljmp	code_4C33
; ---------------------------------------------------------------------------

code_4A56:				; CODE XREF: RESET_0-9FBAj
		mov	DPTR, #8AC0h	; Положение закрытого дросселя,	таблица	| Положение дросселя,% -
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, THR_CODE
		clr	C
		subb	A, B		; B-Register
		jc	code_4A68
		ljmp	code_4AC7
; ---------------------------------------------------------------------------

code_4A68:				; CODE XREF: RESET_0-9F7Fj
		jb	RAM_2C.2, code_4A46
		mov	DPTR, #0F848h
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	A, RPM_XX
		clr	C
		subb	A, B		; B-Register
		jc	code_4A46
		ljmp	code_4B85
; ---------------------------------------------------------------------------

code_4A7B:				; CODE XREF: RESET_0-9FD5j
					; RESET_0-9FABj
		mov	A, RAM_6B
		inc	A
		mov	DPTR, #0F97Ah
		movx	@DPTR, A
		mov	DPTR, #0FA94h
		movx	A, @DPTR
		setb	ACC.0		; Accumulator
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0FA96h
		movx	@DPTR, A
		mov	DPTR, #0FF46h
		movx	@DPTR, A
		clr	RAM_2B.1
		mov	RAM_6B,	#0
		clr	RAM_25.7
		clr	A
		mov	DPTR, #0F986h
		movx	@DPTR, A
		mov	DPTR, #0F97Ah
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #9054h	; GTCDR	при переходе от	ХХ к рабочим режимам | Коэффициент добавки - Состояние отсечки ПХХ
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #8796h	; Коэффициент коррекции	GTCDR при переходе от TWAT | Коэффициент коррекции - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		lcall	DIV_R0R1_8
		mov	DPTR, #0F97Bh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F944h
		movx	A, @DPTR
		setb	ACC.0		; Accumulator
		movx	@DPTR, A

code_4AC7:				; CODE XREF: RESET_0-9F7Dj
		mov	DPTR, #0FA94h
		movx	A, @DPTR
		jb	ACC.0, code_4AD5 ; Accumulator
		mov	DPTR, #5F6Bh	; Коэффициент уменьшения GTCDR 1 при обогащении	|
		clr	A
		movc	A, @A+DPTR
		sjmp	code_4ADF
; ---------------------------------------------------------------------------

code_4AD5:				; CODE XREF: RESET_0-9F17j
		mov	DPTR, #0F97Ah
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #9074h	; Коэффициент уменьшения GTC 1 при выходе из ХХ	| мг/цикл - Состояние отсечки ПХХ
		movc	A, @A+DPTR

code_4ADF:				; CODE XREF: RESET_0-9F0Fj
		mov	DPTR, #0F99Fh
		movx	@DPTR, A
		mov	DPTR, #0FA94h
		movx	A, @DPTR
		jb	ACC.0, code_4AF1 ; Accumulator
		clr	A
		mov	DPTR, #0FA96h
		movx	@DPTR, A
		sjmp	code_4B0C
; ---------------------------------------------------------------------------

code_4AF1:				; CODE XREF: RESET_0-9EFBj
		mov	DPTR, #0FA96h
		movx	A, @DPTR
		inc	A
		jz	code_4AF9
		movx	@DPTR, A

code_4AF9:				; CODE XREF: RESET_0-9EECj
		mov	B, A		; B-Register
		mov	DPTR, #5FF6h	; Время	перехода с ХХ на рабочие режимы	| cек.
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_4B03	; B-Register

code_4B03:
		jnc	code_4B0C
		mov	DPTR, #0FA94h
		movx	A, @DPTR
		setb	ACC.1		; Accumulator
		movx	@DPTR, A

code_4B0C:				; CODE XREF: RESET_0-9EF3j
					; RESET_0:code_4B03j
		mov	DPTR, #60D8h	; Время	3 прогрева | сек
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9D4h
		movx	A, @DPTR
		cjne	A, B, code_4B1A	; B-Register

code_4B1A:
		jc	code_4B1E
		clr	RAM_2C.2

code_4B1E:
		;lcall	CALC_USSM
		ljmp	code_4CFA
; ---------------------------------------------------------------------------

code_4B24:				; CODE XREF: RESET_0:code_4A46j
		mov	RAM_6B,	#0
		setb	RAM_2B.1
		jbc	RAM_2A.4, code_4B61
		mov	DPTR, #0F849h
		movx	A, @DPTR
		mov	B, A
		mov	A, RPM_XX
		mov	DPTR, #0F84Ah
		movx	@DPTR, A
		clr	C
		subb	A, B
		jnc	code_4B47
		mov	DPTR, #0F849h
		movx	A, @DPTR
		mov	DPTR, #0F84Ah
		movx	@DPTR, A
		sjmp	code_4B76
; ---------------------------------------------------------------------------

code_4B47:
		jnb	RAM_2C.2, code_4B76
		mov	DPTR, #0F847h
		movx	A, @DPTR
		mov	B, A
		mov	A, RPM_XX
		cjne	A, B, code_4B55

code_4B55:
		jc	code_4B76
		mov	DPTR, #0F847h
		movx	A, @DPTR
		mov	DPTR, #0F84Ah
		movx	@DPTR, A
		sjmp	code_4B76
; ---------------------------------------------------------------------------

code_4B61:
		mov	DPTR, #608Fh	; Смещение оборотов ХХ после пуска | об/мин
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F849h
		movx	A, @DPTR
		add	A, B
		jnc	code_4B72
		mov	A, #0FFh

code_4B72:
		mov	DPTR, #0F84Ah
		movx	@DPTR, A

code_4B76:

					
		lcall	CLR_VARS_IDLE_to_OPER
		lcall	REG_IDLE
		
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.0, code_4B77		
		
		lcall	ADAPT_SSM

code_4B77:
		ljmp	code_4D09
; ---------------------------------------------------------------------------

code_4B85:

		mov	RAM_6B,	#1
		clr	RAM_2B.1
		mov	RAM_6C,	#0
		
		mov	DPTR, #6F36h   ; задержка отключения топливоподачи
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	DPTR, #0FF3Eh
		movx	@DPTR, A


code_4B8D:
		lcall	CLR_VARS_IDLE_to_OPER
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_4BBE
		mov	DPTR, #0F844h
		movx	A, @DPTR
		add	A, #80h	; 'А'
		mov	B, A		; B-Register
		mov	A, UOZXX_2
		add	A, #80h	; 'А'
		cjne	A, B, code_4BAA	; B-Register
		mov	UOZXX_1, UOZXX_2
		sjmp	code_4BBE
; ---------------------------------------------------------------------------

code_4BAA:				; CODE XREF: RESET_0-9E40j
		jnc	code_4BB6
		mov	A, B		; B-Register
		dec	A
		clr	C
		subb	A, #80h	; 'А'
		mov	UOZXX_1, A
		sjmp	code_4BBE
; ---------------------------------------------------------------------------

code_4BB6:				; CODE XREF: RESET_0:code_4BAAj
		mov	A, B		; B-Register
		inc	A
		clr	C
		subb	A, #80h	; 'А'
		mov	UOZXX_1, A

code_4BBE:

		jb	Hardware.6, code_4C15
		mov	DPTR, #608Ah	; Температура разрешения отключения топлива | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, TWAT
		clr	C
		subb	A, B		; B-Register
		jc	code_4C15
		mov	DPTR, #5F77h	; Температура ОГ запрета отключения топлива | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F894h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jc	code_4BF1
		mov	DPTR, #6050h	; Скорость автомобиля для запрета отключения топлива | км/ч.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jc	code_4BF1
		sjmp	code_4C15
; ---------------------------------------------------------------------------

code_4BF1:

		mov	DPTR, #60EAh	; Граница отключения подачи топлива | об./мин
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, RPM_1
		clr	C
		subb	A, B
		jnc	code_4C1B
		jnb	Options.4, code_4C1B
		jb	RAM_25.6, code_4C1B
		mov	DPTR, #607Bh	; Скорость разрешения отключения топлива | км/час
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jnc	code_4C1B

code_4C15:

		;lcall	CALC_USSM
		ljmp	code_4CFA
; ---------------------------------------------------------------------------

code_4C1B:

		mov	DPTR, #0FF3Eh		; Задержка отключения топлива
		movx	A, @DPTR
		mov	B, A
		
		inc	RAM_6C
		mov	A, RAM_6C
		clr	C
		subb	A, B
		jc	code_4C15
		
		mov	RAM_6B,	#2
		clr	RAM_2B.1
		mov	RAM_6C,	#0

; ---------------------------------------------------------------------------
; продолжение ПХХ с уже откл. топливом

code_4C33:
		lcall	DEC_USSM

code_4C41:
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_4C4A
		mov	UOZXX_1, UOZXX_2

code_4C4A:
		mov	A, RAM_6B
		cjne	A, #2, code_4C51
		sjmp	code_4C54

code_4C51:
		cjne	A, #4, code_4C66

code_4C54:
		mov	DPTR, #608Eh	; Задержка коррекции УОЗ при отключении	топливоподачи |	сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		inc	RAM_6C
		mov	A, RAM_6C
		clr	C
		subb	A, B
		jc	code_4C74
		inc	RAM_6B

code_4C66:
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_4C74
		mov	DPTR, #6FC4h	; УОЗ при отключении подачи топлива | УОЗ, град.п.к.в -	Обороты	коленвала, об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	UOZXX_1, A

code_4C74:

		jnb	Options.4, code_4CD7
		jb	RAM_25.6, code_4CD7
		mov	A, RAM_6B
		cjne	A, #2, code_4C81
		sjmp	code_4C84
; ---------------------------------------------------------------------------

code_4C81:
		cjne	A, #3, code_4CAD

code_4C84:
		mov	DPTR, #607Bh	; Скорость разрешения отключения топлива | км/час
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		clr	C
		subb	A, B
		jnc	code_4CD7
		mov	DPTR, #60E9h	; Граница включения подачи топлива | об./мин
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, RPM_1
		clr	C
		subb	A, B
		jnc	code_4CD7
		mov	A, RAM_6B
		add	A, #2
		mov	RAM_6B,	A
		;lcall	CALC_USSM
		sjmp	code_4CFA
; ---------------------------------------------------------------------------

code_4CAD:
		mov	DPTR, #607Bh	; Скорость разрешения отключения топлива | км/час
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		clr	C
		subb	A, B
		jnc	code_4CD0
		mov	DPTR, #60EAh	; Граница отключения подачи топлива | об./мин
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, RPM_1
		clr	C
		subb	A, B
		jnc	code_4CD0
		;lcall	CALC_USSM
		sjmp	code_4CFA
; ---------------------------------------------------------------------------

code_4CD0:

		mov	A, RAM_6B
		clr	C
		subb	A, #2
		mov	RAM_6B,	A

code_4CD7:

		clr	RAM_2B.4
		lcall	CLR_VARS_IDLE_to_OPER
		lcall	code_B027
		setb	RAM_2B.3
		clr	RAM_2A.5
		setb	RAM_2A.6
		mov	DPTR, #0FF53h
		movx	A, @DPTR
		mov	C, RAM_22.4
		mov	ACC.0, C
		movx	@DPTR, A
		lcall	code_ACD9
		mov	A, #4
		mov	DPTR, #0F8B1h
		movx	@DPTR, A
		ljmp	code_4FBB
; ---------------------------------------------------------------------------

code_4CFA:

		lcall	CALC_USSM
		
; ---------------------------------------------------------------------------
; Адсорбер
; ---------------------------------------------------------------------------

code_4D09:

		jnb	Hardware.1, code_4D7D
		mov	A, RAM_7B
		anl	A, #4
		jnz	code_4D7D
		mov	DPTR, #60D1h	; Температура холодной продувки	| град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, TWAT
		clr	C
		subb	A, B
		jc	code_4D7D
		jnb	RAM_29.2, code_4D2A
		mov	DPTR, #0F868h
		movx	A, @DPTR
		jz	code_4D2A
		dec	A
		mov	DPTR, #0F868h
		movx	@DPTR, A

code_4D2A:

		mov	DPTR, #0F868h
		movx	A, @DPTR
		jnb	Hardware.0, code_4D34
		jb	RAM_2B.7, code_4D7D

code_4D34:
		jnb	RAM_2B.6, code_4D6E
		jnz	code_4D56
		mov	A, RAM_7B
		anl	A, #4
		jnz	code_4D47
		clr		A
		mov	DPTR, #0F806h
		movx	@DPTR, A

code_4D47:
		mov	DPTR, #60D0h	; Время	между продувками | сек.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F868h
		movx	@DPTR, A
		clr	RAM_2B.6
		clr	RAM_2B.4
		sjmp	code_4D7D
; ---------------------------------------------------------------------------

code_4D56:
		mov	A, RAM_7B
		anl	A, #4
		jnz	code_4D6C
		mov	DPTR, #746Dh	; Степень продувки | Степень продувки -	Обороты	коленвала, об/мин - Цикловое наполнение,мг/цикл
		mov	R2, RPM_RT
		mov	R3, GBC_RT
		lcall	GET_3D_VALUE
		mov	DPTR, #0F806h
		movx	@DPTR, A

code_4D6C:				; CODE XREF: RESET_0-9C88j
		sjmp	code_4D7D
; ---------------------------------------------------------------------------

code_4D6E:
		jnz	code_4D7D
		mov	DPTR, #60CFh	; Время	горячей	продувки | сек.
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F868h
		movx	@DPTR, A
		clr	RAM_2B.4
		setb	RAM_2B.6

code_4D7D:

		mov	C, RAM_23.6
		orl	C, RAM_24.6
		orl	C, RAM_23.5
		orl	C, RAM_24.5
		jnc	code_4D95
		mov	A, RAM_7B
		anl	A, #4
		jnz	code_4D95
		clr		A
		mov	DPTR, #0F806h
		movx	@DPTR, A


; ---------------------------------------------------------------------------

code_4D95:
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.3, code_4E16
		
		jnb	Hardware.0, code_4E16 ; 0 - ДК

code_4D9B:				
		mov	DPTR, #60A3h	; Температура включения	регулирования |	град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, TWAT
		clr	C
		subb	A, B		; B-Register
		jc	code_4E16
		mov	DPTR, #5FA5h	; Порог	температуры для	отключения регулирования | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, TWAT
		clr	C
		subb	A, B		; B-Register
		jnc	code_4E16
		mov	DPTR, #60A0h	; Температура изменения	времени	прогрева | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F80Ah
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jnc	code_4DD0
		mov	DPTR, #60A1h	; Время	прогрева при низкой температуре	| сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		sjmp	code_4DD7
; ---------------------------------------------------------------------------

code_4DD0:				; CODE XREF: RESET_0-9C1Dj
		mov	DPTR, #60A2h	; Время	прогрева при высокой температуре | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register

code_4DD7:				; CODE XREF: RESET_0-9C14j
		mov	DPTR, #0F807h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jc	code_4E16
		mov	DPTR, #0F810h
		movx	A, @DPTR
		jnb	ACC.0, code_4E16 ; Accumulator
		mov	DPTR, #63D3h	; Зона регулирования | Зона - Обороты коленвала, об/мин	- Цикловое наполнение,мг/цикл
		mov	A, RPM_GBC_3D_RT
		movc	A, @A+DPTR
		jnb	ACC.2, code_4E16 ; Accumulator
		mov	C, RAM_23.4
		orl	C, RAM_24.4
		orl	C, RAM_25.4
		orl	C, RAM_25.5
		orl	C, RAM_25.3
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		orl	C, ACC.7	; Accumulator
		orl	C, /RAM_29.7
		jc	code_4E16
		jb	RAM_2B.1, code_4E10
		lcall	code_E924
		jb	RAM_2B.2, code_4E22
		
code_4E10:
		mov	ALF_1, #80h ; 'А'
		lcall	NBL_LEARN
		ljmp	code_4EC3
; ---------------------------------------------------------------------------

code_4E16:				; CODE XREF: RESET_0:code_4D98j
					; RESET_0-9C04j ...
		jb	RAM_2B.1, code_4E1C ; признак ХХ
		lcall	code_E924

code_4E1C:				; CODE XREF: RESET_0-A1B8j
					; RESET_0-9BD5j ...
		jnb	RAM_2B.1, code_4E22
		ljmp	code_4EC1
; ---------------------------------------------------------------------------

code_4E22:				; CODE XREF: RESET_0:code_4E1Cj
		mov	DPTR, #607Dh	; Начальная температура	прогретого двигателя | град.С
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #6A53h	; Базовый состав смеси | Отношение воздух/топливо - Температура, град.С
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, ALF_1
		clr	C
		subb	A, B		; B-Register
		jnc	code_4E35
		clr	A

code_4E35:				; CODE XREF: RESET_0-9BB0j
		mov	R1, A
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #6A7Ah	; Коррекция базового состава смеси | Коэффициент коррекции - Температура, град.С
		lcall	GET_2D_INTERPOLATION
		mov	B, R1		; B-Register
		mul	AB
		mov	R1, B		; B-Register
		mov	DPTR, #0F887h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F888h
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #6A53h	; Базовый состав смеси | Отношение воздух/топливо - Температура, град.С
		lcall	GET_2D_INTERPOLATION
		add	A, R1
		mov	ALF_1, A
		jb	RAM_2B.5, code_4E64
		clr	A
		sjmp	code_4E8D
; ---------------------------------------------------------------------------

code_4E64:				; CODE XREF: RESET_0-9B84j
		mov	R0, #0ACh ; 'м'
		mov	A, @R0
		mov	B, A		; B-Register
		inc	R0
		mov	A, @R0
		cjne	A, B, code_4E6E	; B-Register

code_4E6E:
		jc	code_4E72
		mov	B, A		; B-Register

code_4E72:				; CODE XREF: RESET_0:code_4E6Ej
		inc	R0
		mov	A, @R0
		cjne	A, B, code_4E77	; B-Register

code_4E77:
		jc	code_4E7B
		mov	B, A		; B-Register

code_4E7B:				; CODE XREF: RESET_0:code_4E77j
		inc	R0
		mov	A, @R0
		cjne	A, B, code_4E80	; B-Register

code_4E80:
		jc	code_4E84
		mov	B, A		; B-Register

code_4E84:				; CODE XREF: RESET_0:code_4E80j
		mov	A, B		; B-Register
		cjne	A, #1Fh, code_4E89

code_4E89:
		jc	code_4E8D
		mov	A, #1Fh

code_4E8D:				; CODE XREF: RESET_0-9B80j
					; RESET_0:code_4E89j
		mov	DPTR, #0FF50h
		movx	@DPTR, A
		mov	DPTR, #0A318h	; Обогащение при детонации | Добавка к ALF - Уровень детонации
		movc	A, @A+DPTR
		mov	B, A		
		mov	A, ALF_1
		clr	C
		subb	A, B		
		jc	code_4EBE
		mov	ALF_1, A
		mov	DPTR, #5F8Eh	; Температура ОГ для защиты нейтрализатора | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		
		mov	DPTR, #0F895h
		movx	A, @DPTR
		cjne	A, B, code_4EAE	

code_4EAE:
		jc	code_4EC1
		mov	DPTR, #5F8Fh	; Коррекция состава смеси для защиты нейтрализатора |
		clr	A
		movc	A, @A+DPTR
		mov	B, A	
		mov	A, ALF_1
		clr	C
		subb	A, B	
		jnc	code_4EBF

code_4EBE:	
		clr	A

code_4EBF:	
		mov	ALF_1, A

code_4EC1:
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.3, code_4EC3
					
		clr	RAM_2B.4


; ---------------------------------------------------------------------------
code_4EC3:
		clr	RAM_2C.5
	
		jnb	Hardware.3, code_4EEB
		jnb	RAM_2B.5, code_4EEB
		mov	C, RAM_23.6
		orl	C, RAM_24.6
		jc	code_4EEB
		
		mov	DPTR, #5F70h		; Температура включения контроля детонации | град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_4ED7
code_4ED7:
		jnc	code_4EEB
		
		mov	DPTR, #0F933h
		movx	A, @DPTR
		jnb	ACC.5, code_4EE5	; зона запрета обучения по детонации
		
		lcall	KNOCK_CORR_UOZ
		
		sjmp	code_4EE8

code_4EE5:
		lcall	KNOCK_CORR_UOZ_AND_LEARN

code_4EE8:

; ------- индикация детонации

		mov	DPTR, #0F4C9h
		movx	A, @DPTR

		jnb	RAM_2C.5, code_4EEA

		setb	ACC.5
		setb	ACC.6
		movx	@DPTR, A
; -------

code_4EEA:
		mov	DPTR, #0F9B6h

		jnz	code_4EEA1

		movx	@DPTR, A
		sjmp	code_4EEA2
		
code_4EEA1:
		movx	A, @DPTR
		mov	C, ACC.0
		orl	C, RAM_2C.5
		mov	RAM_2C.5, C
		mov	ACC.0, C
		movx	@DPTR, A

code_4EEA2:
		lcall	DIAG_DD


; ---------------------------------------------------------------------------

code_4EEB:

		lcall	code_AFFC
		clr	RAM_2B.3
		clr	RAM_2A.5
		setb	RAM_2A.6
		mov	DPTR, #782Fh	; Ограничение состава смеси по температуре | Отношение воздух/топливо -	Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A
		clr	C
		subb	A, ALF_1
		jnc	code_4F04
		mov	ALF_1, B

code_4F04:
		mov	DPTR, #0F890h
		movx	A, @DPTR
		jnz	code_4F05
		setb	RAM_2A.7
		sjmp	code_4FA7

code_4F05:
		jnb	RAM_29.1, code_4F06
		dec	A
		movx	@DPTR, A

code_4F06:
		mov	DPTR, #60D2h
		clr	A
		movc	A, @A+DPTR
		xch	A, ALF_1
		clr	C
		subb	A, ALF_1
		jnc	code_4F07
		clr	A
code_4F07:
		mov	ALF_1, A

code_4FA7:
		mov	DPTR, #0F89Bh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #8A32h	; Коэффициент уменьшения GTC после пуска | мг/цикл - Время, сек
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	B, A
		mov	A, R0
		clr	C
		subb	A, B
		mov	R0, A
		mov	A, R1
		subb	A, #0
		mov	R1, A
		jnc	code_4F23
		clr	A
		mov	R0, A
		mov	R1, A

code_4F23:
		mov	DPTR, #0F89Bh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A

code_4F2C:
		mov	A, DEV_FLAGS
		anl	A, #1
		jnz	code_4F38
		lcall	code_AFC2
		mov	ALF_2, ALF_1

; ---------------------------------------------------------------------------
code_4F38:
		jb	RAM_23.5, code_4F86
		jb	RAM_24.5, code_4F86
		jb	RAM_23.6, code_4F86
		jb	RAM_24.6, code_4F86
		jb	RAM_23.4, code_4F86
		jb	RAM_24.4, code_4F86
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		jb	ACC.7, code_4F86

		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.3, code_4F40
		lcall	WBL_LEARN
		sjmp	code_4F50

code_4F40:
		jb	RAM_25.3, code_4F86
		jb	RAM_25.4, code_4F86
		jb	RAM_25.5, code_4F86
		jnb	Hardware.0, code_4F86
		
code_4F50:		
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		mov	R3, A
		
		mov	R2, RPM_RT
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.5, code_4F51		
		
		mov	DPTR, #0F89Ah	; РТ давление
		movx	A, @DPTR
		mov	R2, A
		
code_4F51:		
		mov	DPTR, #0FD00h
		lcall	GET_3D_RAM_VALUE
		
		jnb	RAM_2B.4, code_4F88
		mov	B, A		
		mov	A, RAM_6E
		jb	ACC.7, code_4F7E 
		add	A, B	
		jnc	code_4F88
		mov	A, #0F0h 
		sjmp	code_4F8F


code_4F7E:
		add	A, B
		jc	code_4F88
		mov	A, #0Fh
		sjmp	code_4F8F


code_4F86:
	
		mov	A, #80h	; 'А'

code_4F88:

		mov	R0, #0Fh
		mov	R1, #0F0h ; 'Ё'
		lcall	code_AD03

code_4F8F:	
		
		mov	B, A
		mov	A, DEV_FLAGS
		anl	A, #10h
		jnz	code_4F9A
		mov	RAM_6F,	B

; ---------------------------------------------------------------------------
code_4F9A:
		jb	RAM_2B.1, code_4FA3
		mov	A, RAM_6B
		jnz	code_4FA3
		sjmp	code_4FB8


code_4FA3:

		mov	R2, RPM_RT
		mov	R3, GBC_RT
		; Начальная коррекция времени впрыска ХХ | Коэффициент коррекции - Обороты коленвала, об/мин - Цикловое	наполнение,мг/цикл
		GET_3D_RAM_WITH_INTERPOLATION 8E2Ah, CAPTURE_TINJ_MODE
		
		mov	R0, #0Fh
		mov	R1, #0F0h ; 'Ё'
		lcall	code_AD03
		mov	RAM_4F,	A
		sjmp	code_4FBB

code_4FB8:
		mov	RAM_4F,	#80h
		
; ---------------------------------------------------------------------------


code_4FBB:

		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.0, code_4FC0	; Моментный РХХ

		lcall	CALC_ETM_OPEN_RATIO
		lcall	CALC_ETM_PWM_PARAM

code_4FC0:
		lcall	BOOST_CONTROL
		
		mov	A, DEV_FLAGS
		jb	ACC.2, code_4FCF
		jnb	ACC.3, code_4FCF
		mov	DPTR, #0F88Fh
		movx	A, @DPTR
		add	A, UOZXX_1
		mov	UOZXX_1, A

code_4FCF:

		mov	A, UOZXX_1
		jnb	ACC.7, code_4FD5
		clr	A

code_4FD5:
		mov	DPTR, #0FAADh
		movx	@DPTR, A
		mov	DPTR, #0F938h
		movx	A, @DPTR
		mov	B, A
		mov	A, UOZXX_1
		add	A, #0Ah
		clr	C
		subb	A, B
		jnc	code_4FEA
		clr	C
		clr	A

code_4FEA:
		subb	A, #0Ah
		mov	UOZXX_1, A
		lcall	code_B73C
		jnb	RAM_29.3, code_5041
		jb	RAM_2B.1, code_5041
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_5041
		mov	DPTR, #5FA4h	; Период скорости изменения УОЗ	|
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F886h
		movx	A, @DPTR
		inc	A
		jz	code_500F
		mov	DPTR, #0F886h
		movx	@DPTR, A

code_500F:
		cjne	A, B, code_5012

code_5012:
		jnc	code_5019
		mov	B, #0
		sjmp	code_5025
; ---------------------------------------------------------------------------

code_5019:
		clr	A
		mov	DPTR, #0F886h
		movx	@DPTR, A
		mov	DPTR, #6080h	; Макс.	скорость изменения УОЗ | град./сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register

code_5025:				; CODE XREF: RESET_0-99CBj
		mov	A, UOZXX_1
		add	A, #80h	; 'А'
		mov	R0, A
		mov	DPTR, #0F844h
		movx	A, @DPTR
		add	A, #80h	; 'А'
		clr	C
		subb	A, R0
		jnc	code_5041
		movx	A, @DPTR
		add	A, #80h	; 'А'
		add	A, B		; B-Register
		clr	C
		subb	A, R0
		jnc	code_5041
		add	A, UOZXX_1
		mov	UOZXX_1, A

code_5041:				; CODE XREF: RESET_0-99F1j
					; RESET_0-99EEj ...
		mov	A, UOZXX_1
		mov	DPTR, #0F844h
		movx	@DPTR, A
		mov	B, A		; B-Register
		jb	ACC.7, code_5060 ; Accumulator
		mov	DPTR, #0F9A0h
		movx	A, @DPTR
		jb	ACC.7, code_505C ; Accumulator
		add	A, B		; B-Register
		jnb	ACC.7, code_505A ; Accumulator
		mov	A, #7Fh	; ''

code_505A:				; CODE XREF: RESET_0-998Dj
		sjmp	code_5072
; ---------------------------------------------------------------------------

code_505C:				; CODE XREF: RESET_0-9992j
		add	A, B		; B-Register
		sjmp	code_5072
; ---------------------------------------------------------------------------

code_5060:				; CODE XREF: RESET_0-9999j
		mov	DPTR, #0F9A0h
		movx	A, @DPTR
		jnb	ACC.7, code_5070 ; Accumulator
		add	A, B		; B-Register
		jb	ACC.7, code_506E ; Accumulator
		mov	A, #80h	; 'А'

code_506E:				; CODE XREF: RESET_0-9979j
		sjmp	code_5072
; ---------------------------------------------------------------------------

code_5070:				; CODE XREF: RESET_0-997Ej
		add	A, B		; B-Register

code_5072:				; CODE XREF: RESET_0:code_505Aj
					; RESET_0-9984j ...
		mov	R2, A
		mov	DPTR, #607Eh	; Минимальный реализуемый УОЗ |	гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	R0, A
		mov	DPTR, #0FAADh
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #5F8Bh	; Максимальное опережение динамической корекции	| гр.п.кв.
		clr	A
		movc	A, @A+DPTR
		add	A, B		; B-Register
		mov	R1, A
		mov	A, R2
		lcall	code_AD14
		mov	R0, A
		mov	DPTR, #0F8C1h
		movx	@DPTR, A
		mov	DPTR, #0FAAAh
		movx	A, @DPTR
		mov	R4, A
		mov	DPTR, #60D7h	; Условие 2-го ограничения по температуре | град.
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_509D

code_509D:
		mov	A, R4
		mov	ACC.0, C	; Accumulator
		mov	R4, A
		mov	DPTR, #60E8h	; Условие 2-го ограничения по оборотам ХХ | об/мин
		clr	A
		movc	A, @A+DPTR
		cjne	A, RPM_XX, code_50A9

code_50A9:
		cpl	C
		mov	A, R4
		mov	ACC.1, C	; Accumulator
		mov	R4, A
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #60F8h	; Условие 2-го ограничения по скорости | км/ч.
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_50BC	; B-Register

code_50BC:
		cpl	C
		mov	A, R4
		mov	ACC.2, C
		mov	C, RAM_25.6
		cpl	C
		mov	ACC.3, C
		mov	C, RAM_2B.1
		cpl	C
		mov	ACC.4, C
		mov	C, RAM_2A.3
		cpl	C
		mov	ACC.5, C
		mov	R4, A
		anl	A, #3Fh
		cjne	A, #3Fh, code_50D8 ; '?'

code_50D8:
		cpl	C
		mov	ACC.7, C
		mov	DPTR, #0FAAAh
		movx	@DPTR, A
		jnc	code_50E8
		mov	DPTR, #60F9h	; Максимальный реализуемый УОЗ номер 2 | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		sjmp	code_50F9
; ---------------------------------------------------------------------------

code_50E8:
		mov	DPTR, #607Fh	; Максимальный реализуемый УОЗ номер 1 | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0FAABh
		movx	A, @DPTR
		cjne	A, B, code_50F6

code_50F6:
		jnc	code_50F9
		inc	A

code_50F9:

		mov	DPTR, #0FAABh
		movx	@DPTR, A
		mov	R1, A
		mov	DPTR, #607Eh	; Минимальный реализуемый УОЗ |	гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	R0, A
		mov	DPTR, #0F8C1h
		movx	A, @DPTR
		lcall	code_AD14
		mov	UOZXX_1, A
		mov	DPTR, #0F8C1h
		movx	@DPTR, A
		
		
; ---------------------------------------------------------------------------
; Расчет фазы впрыска
; ---------------------------------------------------------------------------
		
		mov	A, RAM_3D
		cjne	A, #4, code_511A

code_511A:
		jnc	code_5123
		mov	A, RAM_3C
		cjne	A, #1Eh, code_5121

code_5121:
		jc	code_5126

code_5123:
		ljmp	code_25D2
; ---------------------------------------------------------------------------

code_5126:
		mov	A, RAM_3C
		cjne	A, RAM_3E, code_51A8
		mov	DPTR, #605Fh	; Минимальная фаза впрыска | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	R0, A
		mov	DPTR, #6060h	; Максимальная фаза впрыска | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mov	R1, A
		mov	B, RPM_1
		mov	DPTR, #605Eh	; Коррекция задержки фазы при 10240 об/мин | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mul	AB
		mov	DPTR, #0FF47h
		movx	A, @DPTR
		add	A, #3Ch
		clr	C
		subb	A, B
		jnc	code_514D
		add	A, #78h	; 'x'

code_514D:
		clr	C
		subb	A, #0Bh
		jnc	code_5154
		add	A, #78h	; 'x'

code_5154:
		lcall	code_AD03
		mov	R0, A
		mov	DPTR, #0F959h
		movx	@DPTR, A
		mov	A, RAM_3D
		cpl	ACC.1
		mov	B, #1Eh
		mul	AB
		add	A, RAM_3C
		mov	R1, A
		mov	DPTR, #0F95Ah
		movx	@DPTR, A
		clr	C
		subb	A, RAM_0
		jz	code_51A8
		jc	code_5186
		cjne	A, #3Ch, code_5175

code_5175:
		jc	code_5182
		mov	A, R1
		inc	A
		cjne	A, #78h, code_517C

code_517C:
		jc	code_5180
		subb	A, #78h

code_5180:
		sjmp	code_5199
; ---------------------------------------------------------------------------

code_5182:
		mov	A, R1
		dec	A
		sjmp	code_5199
; ---------------------------------------------------------------------------

code_5186:
		cpl	A
		inc	A
		cjne	A, #3Ch, code_518B

code_518B:
		jc	code_5197
		mov	A, R1
		clr	C
		subb	A, #1
		jnc	code_5195
		add	A, #78h

code_5195:
		sjmp	code_5199

code_5197:
		mov	A, R1
		inc	A

code_5199:

		mov	B, #1Eh
		div	AB
		cpl	ACC.1
		clr	EAL
		mov	RAM_3E,	B
		mov	RAM_3F,	A
		setb	EAL



; ---------------------------------------------------------------------------
; Расчет углов начала накопления и зажигания
; ---------------------------------------------------------------------------

code_51A8:

		mov	DPTR, #0F9A0h
		movx	A, @DPTR
		mov	DPTR, #0FAA6h
		movx	@DPTR, A
		mov	DPTR, #0F978h
		movx	A, @DPTR
		mov	R2, RPM_RT
		mov	R3, A
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #9194h	; Время накопления для попарно-параллельного режима | Время накопления,	мс. - Обороты коленвала, об/мин	- Бортовое напряжение
		jb	ACC.1, code_51C5 
		mov	DPTR, #8B00h	; Время накопления | Время накопления, мс. - Обороты коленвала,об/мин - Бортовое напряжение

code_51C5:
		lcall	GET_3D_VALUE
		mov	DPTR, #0F84Dh
		movx	@DPTR, A
		mov	B, #15h
		mul	AB
		mov	R0, A
		mov	R1, B
		lcall	DIV_R0R1_2
		mov	RAM_44,	R0
		mov	RAM_45,	R1
		mov	DPTR, #0FF58h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		mov	B, RPM_1
		mov	DPTR, #605Dh	; Коррекция задержки УОЗ при 10240 об/мин | гр.п.к.в.
		clr	A
		movc	A, @A+DPTR
		mul	AB
		mov	A, B
		add	A, UOZXX_1
		mov	R2, A
		mov	DPTR, #0F84Dh
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F94Ah
		jnb	RAM_2A.3, code_5200
		mov	DPTR, #0FF49h

code_5200:
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		lcall	MUL_R0R1_B
		mov	A, R1
		jz	code_520E
		mov	R0, #0FFh

code_520E:
		mov	A, R0
		mov	B, #7Bh
		mul	AB
		mov	A, B
		clr	C
		mov	R0, #0Eh
		jb	Options.5, code_520F
		mov	R0, #6
		cjne	A, #0Eh, code_520F
		
code_520F:
		mov	RAM_27.5, C
		mov	R1, #0AEh
		lcall	code_AD03
		mov	B, #6
		div	AB
		mov	DPTR, #0F800h
		movx	@DPTR, A
		
		cjne	A, #7, code_5272
code_5272:
		jc	code_5276
		mov	A, #7
code_5276:
		mov	RAM_7D, A

		mov	A, B
		rl	A
		mov	DPTR, #0F801h
		movx	@DPTR, A
		mov	R0, #80h

code_5234:
		mov	R3, #2Fh
		mov	A, R0
		clr	C
		subb	A, #80h
		jnb	ACC.2, code_523F
		mov	R3, #11h

code_523F:
		rr	A
		rr	A
		mov	R1, #0ACh
		add	A, R1
		mov	R1, A
		mov	A, @R1
		mov	B, A
		mov	DPTR, #0FAA6h
		movx	A, @DPTR
		clr	C
		subb	A, B
		jc	code_5256
		mov	B, #0
		sjmp	code_525A
; ---------------------------------------------------------------------------

code_5256:
		cpl	A
		inc	A
		mov	B, A

code_525A:
		mov	A, B
		mov	DPTR, #0FAA7h
		movx	@DPTR, A
		mov	A, #90h
		clr	C
		subb	A, R2
		jnb	RAM_2B.5, code_5269
		add	A, B

code_5269:
		clr	C
		subb	A, #84h
		jnc	code_5279
		mov	B, A
		mov	A, R3
		add	A, #27h
		mov	R3, A
		mov	A, B
		clr	C
		subb	A, #4

code_5279:
		mov	B, #0Ch
		div	AB
		add	A, R3
		cjne	A, #3Ch, code_5281

code_5281:
		jc	code_5285
		subb	A, #3Ch

code_5285:
		mov	R3, A
		mov	R4, A
		mov	R1, B
		mov	DPTR, #0F801h
		movx	A, @DPTR
		mov	B, A
		mov	A, R1
		clr	C
		subb	A, B
		jnc	code_5298
		add	A, #0Ch
		dec	R4

code_5298:
		mov	DPTR, #5ED0h
		movc	A, @A+DPTR
		mov	B, A
		mov	A, R1
		movc	A, @A+DPTR
		mov	R1, A
		mov	DPTR, #0F800h
		movx	A, @DPTR
		xch	A, R4
		clr	C
		subb	A, R4
		jnc	code_52B1
		add	A, #3Ch
		sjmp	code_52B8
; ---------------------------------------------------------------------------

code_52B1:
		cjne	A, #3Ch, code_52B4

code_52B4:
		jc	code_52B8
		subb	A, #3Ch

code_52B8:
	
		clr	EAL
		mov	@R0, A
		inc	R0
		mov	@R0, B
		inc	R0
		mov	@R0, RAM_3
		inc	R0
		mov	@R0, RAM_1
		setb	EAL
		inc	R0
		cjne	R0, #90h, code_52CC
		sjmp	code_52CF
; ---------------------------------------------------------------------------

code_52CC:
		ljmp	code_5234


; ---------------------------------------------------------------------------
; Вентилятор кондиционера
; ---------------------------------------------------------------------------

code_52CF:
		mov	C, RAM_2D.6
		mov	DPTR, #5EF9h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.4, code_539B
		jc	code_5361
		jnb	RAM_2D.7, code_5354
		mov	DPTR, #71C4h
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		sjmp	code_535B

code_5354:
		mov	DPTR, #71C5h
		clr	A
		movc	A, @A+DPTR
		mov	B, A

code_535B:
		mov	A, TWAT
		cjne	A, B, code_5360

code_5360:
		cpl	C

code_5361:
		jnb	RAM_2B.1, code_5399
		jb	RAM_2D.7, code_5399
		jnc	code_5399
		mov	DPTR, #71C6h
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0FF3Dh
		movx	A, @DPTR
		jnz	code_5391
		mov	DPTR, #71C7h
		clr	A
		movc	A, @A+DPTR
		add	A, USSM
		mov	USSM,	A
		mov	R0, A
		mov	R1, #0
		lcall	MUL_R0R1_16
		mov	DPTR, #0F845h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL
		mov	A, R1
		movx	@DPTR, A
		lcall	CLR_ADAPT_SSM
		clr	A

code_5391:
		inc	A
		cjne	A, B, code_5396

code_5396:
		cpl	C
		jnc	code_539A

code_5399:

		clr	A

code_539A:
		mov	DPTR, #0FF3Dh
		movx	@DPTR, A
		mov	RAM_2D.7, C
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		mov	ACC.7, C
		movx	@DPTR, A
		clr	C
		
		
; ---------------------------------------------------------------------------
; Вентилятор
; ---------------------------------------------------------------------------
		
code_539B:
		mov	A, RAM_79
		anl	A, #2
		jz	code_53B4
		mov	C, RAM_2E.1
		sjmp	code_5333
; ---------------------------------------------------------------------------

code_53B4:
		orl	C, RAM_23.3
		orl	C, RAM_24.3
		jc	code_52FA
		jnb	RAM_28.1, code_52ED
		mov	DPTR, #60C7h	; Температура выключения вентилятора | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		sjmp	code_52F4
; ---------------------------------------------------------------------------

code_52ED:				; CODE XREF: RESET_0-9701j
		mov	DPTR, #60C8h	; Температура включения	вентилятора | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register

code_52F4:				; CODE XREF: RESET_0-96F7j
		mov	A, TWAT
		cjne	A, B, code_52F9	; B-Register

code_52F9:
		cpl	C

code_52FA:				; CODE XREF: RESET_0-9703j
		jnb	RAM_2B.1, code_5332
		jb	RAM_28.1, code_5332
		jnc	code_5332
		mov	DPTR, #60EEh	; Задержка включения вентилятора | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8BFh
		movx	A, @DPTR
		jnz	code_532B
		mov	DPTR, #60EDh	; Смещение РХХ при включения вентилятора | шаг.
		clr	A
		movc	A, @A+DPTR
		add	A, USSM
		mov	USSM, A
		mov	R0, A
		mov	R1, #0
		lcall	code_ADA2
		mov	DPTR, #0F845h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		lcall	CLR_ADAPT_SSM
		clr	A

code_532B:				; CODE XREF: RESET_0-96D5j
		inc	A
		cjne	A, B, code_532F	; B-Register

code_532F:
		cpl	C
		jnc	code_5333

code_5332:				; CODE XREF: RESET_0:code_52FAj
					; RESET_0-96E5j ...
		clr	A

code_5333:				; CODE XREF: RESET_0-970Bj
					; RESET_0-96B2j
		mov	DPTR, #0F8BFh
		movx	@DPTR, A
		mov	RAM_28.1, C
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		mov	ACC.7, C	; Accumulator
		movx	@DPTR, A
		
; ---------------------------------------------------------------------------
; Кондиционер
; ---------------------------------------------------------------------------
		mov	A, RAM_79
		anl	A, #4
		jz	code_5350
		mov	C, RAM_2E.2
		jnc	code_5392
		ljmp	code_541E
; ---------------------------------------------------------------------------

code_5350:				
		mov	DPTR, #5F89h	; Напряжение отключения нагрузок при отказе РР | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		
		mov	DPTR, #0F80Dh
		movx	A, @DPTR
		cjne	A, B, code_535E	

code_535E:
		jnc	code_5392
		
		jb	RAM_2D.6, code_536C
		mov	DPTR, #5FBAh	; Температура запрета включения кондиционера | град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A	
		sjmp	code_5373
; ---------------------------------------------------------------------------

code_536C:				
		mov	DPTR, #5FBBh	; Температура принудительного отключения кондиционера |	град.С
		clr	A
		movc	A, @A+DPTR
		mov	B, A	

code_5373:			
		mov	A, TWAT
		cjne	A, B, code_5378	

code_5378:
		jnc	code_53D6

		mov	DPTR, #5F03h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.0, code_5379

		setb	C
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.3, code_5380
code_5379:		
		mov	B, #6		
		lcall	READ_ADC
		mov	C, ACC.7
		cpl	C
		
code_5380:		
		mov	DPTR, #0F86Fh
		movx	A, @DPTR
		rlc	A
		movx	@DPTR, A
		jz	code_5394
		cpl	A
		jz	code_53D6
		mov	C, RAM_2D.6
		jc	code_5394

code_5392:				; CODE XREF: RESET_0-9697j
		sjmp	code_53D6
; ---------------------------------------------------------------------------

code_5394:				; CODE XREF: RESET_0-9659j
					; RESET_0-9652j
		mov	DPTR, #5F60h	; Задержка включения после пуска двигателя | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9D4h
		movx	A, @DPTR
		cjne	A, B, code_53A2	; B-Register

code_53A2:
		jc	code_53D6
		mov	C, RAM_2D.6
		jc	code_53B1
		mov	DPTR, #5F5Dh	; Граница включения по дросселю	| %
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		sjmp	code_53B8
; ---------------------------------------------------------------------------

code_53B1:				; CODE XREF: RESET_0-963Cj
		mov	DPTR, #5F5Eh	; Граница отключения по	дросселю | %
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register

code_53B8:				; CODE XREF: RESET_0-9633j
		mov	A, THR_CODE
		cjne	A, B, code_53BD	; B-Register

code_53BD:
		jc	code_541E
		mov	DPTR, #5F61h	; Задержка отключения кондиционера | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F870h
		movx	A, @DPTR
		cjne	A, B, code_53CD	; B-Register

code_53CD:
		jnc	code_53D6
		inc	A
		mov	DPTR, #0F870h
		movx	@DPTR, A
		sjmp	code_542E
; ---------------------------------------------------------------------------

code_53D6:				; CODE XREF: RESET_0:code_535Ej
					; RESET_0:code_5378j ...
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		mov	C, ACC.5	; Accumulator
		orl	C, RAM_2D.6
		jnc	code_541C
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.5		; Accumulator
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F871h
		movx	@DPTR, A
		mov	DPTR, #0F84Fh
		movx	@DPTR, A
		mov	DPTR, #5FE5h	; Скорость принудительного отключения кондиционера | км/ч.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		cjne	A, B, code_53FE	; B-Register

code_53FE:
		jnc	code_5415
		jnb	RAM_29.1, code_541C
		mov	DPTR, #5FE4h	; Максимальное время непрерывной работы	кондиционера | минут
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0FA8Ch
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_5413	; B-Register

code_5413:
		jc	code_541C

code_5415:				; CODE XREF: RESET_0:code_53FEj
		clr	RAM_2D.6
		clr	A
		mov	DPTR, #0FA8Ch
		movx	@DPTR, A

code_541C:				; CODE XREF: RESET_0-9604j
					; RESET_0-95E2j ...
		sjmp	code_5492
; ---------------------------------------------------------------------------

code_541E:				; CODE XREF: RESET_0-9695j
					; RESET_0:code_53BDj
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		jb	ACC.5, code_5492 ; Accumulator
		clr	A
		mov	DPTR, #0F870h
		movx	@DPTR, A
		mov	DPTR, #0FA8Ch
		movx	@DPTR, A

code_542E:				; CODE XREF: RESET_0-960Ej
		jnb	RAM_2B.1, code_5471
		mov	DPTR, #5F5Fh	; Задержка адаптации ХХ	при вкл	кондиционера | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F871h
		movx	A, @DPTR
		jnz	code_5467
		mov	DPTR, #5F5Ch	; Смещение РХХ при включении кондиционера | шаг.
		clr	A
		movc	A, @A+DPTR
		add	A, USSM
		mov	USSM, A
		mov	DPTR, #5F5Bh	; Температура включения	дополнительного	смещения РХХ | град.С
		clr	A
		movc	A, @A+DPTR
		cjne	A, TWAT, code_544F

code_544F:
		jnc	code_545A
		mov	DPTR, #5F5Ah	; Дополнительное смещение РХХ |	шаг.
		clr	A
		movc	A, @A+DPTR
		add	A, USSM
		mov	USSM, A

code_545A:				; CODE XREF: RESET_0:code_544Fj
		mov	DPTR, #5F59h	; Начальное смещение оборотов при включении кондиционера | об/мин
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F84Fh
		movx	@DPTR, A
		lcall	CLR_ADAPT_SSM
		clr	A

code_5467:				; CODE XREF: RESET_0-95A6j
		inc	A
		mov	DPTR, #0F871h
		movx	@DPTR, A
		cjne	A, B, code_546F	; B-Register

code_546F:
		jc	code_5492

code_5471:
		jb	RAM_2B.1, code_5484
		mov	DPTR, #5FE3h	; Скорость возобновления кондиционирования | км/ч.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		cjne	A, B, code_5482	; B-Register

code_5482:
		jc	code_5492

code_5484:
		clr	A
		mov	DPTR, #0F871h
		movx	@DPTR, A
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		setb	ACC.5		; Accumulator
		movx	@DPTR, A
		setb	RAM_2D.6
; ---------------------------------------------------------------------------



code_5492:

		mov	DPTR, #60E0h	; Обороты отключения контроля детонации	| об/мин
		clr	A
		movc	A, @A+DPTR
		cjne	A, RPM_1, code_549A

code_549A:
		mov	RAM_28.5, C
		mov	DPTR, #605Ah	; Обороты начала выхода	из режима пуска	| об/мин
		clr	A
		movc	A, @A+DPTR
		cjne	A, RPM_XX, code_54A4

code_54A4:
		jnc	code_54BB
		mov	C, RAM_25.2
		mov	DPTR, #0F98Bh
		movx	A, @DPTR
		addc	A, #0
		cjne	A, #0Ah, code_54B1

code_54B1:
		jc	code_54B7
		setb	RAM_22.0
		sjmp	code_54BB
; ---------------------------------------------------------------------------

code_54B7:				; CODE XREF: RESET_0:code_54B1j
		mov	DPTR, #0F98Bh
		movx	@DPTR, A

code_54BB:				; CODE XREF: RESET_0:code_54A4j
					; RESET_0-952Dj
		mov	RAM_5B,	RAM_22
		mov	DPTR, #5FA0h	; Порог	запрета	диагностики датчика фаз	| об/мин.
		clr	A
		movc	A, @A+DPTR
		cjne	A, RPM_XX, code_54C6

code_54C6:
		jc	code_54CB
		anl	RAM_5B,	#0EFh

code_54CB:				; CODE XREF: RESET_0:code_54C6j
		jnb	RAM_2A.3, code_54D1
		anl	RAM_5B,	#0EFh

code_54D1:				; CODE XREF: RESET_0:code_54CBj
		mov	DPTR, #60DAh
		clr	A
		movc	A, @A+DPTR
		anl	RAM_5B,	A
		mov	DPTR, #60DBh
		clr	A
		movc	A, @A+DPTR
		anl	RAM_23,	A
		mov	DPTR, #60DCh
		clr	A
		movc	A, @A+DPTR
		anl	RAM_24,	A
		mov	DPTR, #60DDh
		clr	A
		movc	A, @A+DPTR
		anl	RAM_25,	A
		mov	DPTR, #5FADh
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		anl	A, B		; B-Register
		movx	@DPTR, A
		jnb	RAM_29.2, code_5507
		mov	A, #0FEh ; '¦'
		anl	RAM_22,	A
		clr	A
		mov	DPTR, #0F98Bh
		movx	@DPTR, A
		
		
		
; ---------------------------------------------------------------------------
; Расход топлива
; ---------------------------------------------------------------------------

code_5507:

		clr	RAM_28.4
		mov	DPTR, #0F82Eh
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	B, RPM		; B-Register
		lcall	MUL_R0R1_B
		mov	A, ALF_2
		add	A, #80h	; 'А'
		mov	R2, A
		clr	A
		addc	A, #0
		mov	MD0, B		
		mov	MD1, R0		
		mov	MD2, R1		
		mov	MD3, #0		
		mov	MD4, R2		
		mov	MD5, A		
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
		jb	RAM_28.4, code_5507
		mov	B, RAM_6F	; B-Register
		mov	R2, RAM_0
		mov	R3, RAM_1
		cpl	B.7		; B-Register
		lcall	MUL_R0R1_B
		mov	A, RAM_6F
		jnb	ACC.7, code_5557 ; Accumulator
		lcall	ADD_R0R1_R2R3

code_5557:				; CODE XREF: RESET_0-9491j
		mov	B, #0E9h ; 'щ'  ; B-Register
		lcall	MUL_R0R1_B
		mov	R4, B		; B-Register
		jnb	RAM_2B.3, code_5568
		mov	R0, #0
		mov	R1, #0
		mov	R4, #0

code_5568:				; CODE XREF: RESET_0-9483j
		mov	DPTR, #0F862h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		mov	B, A		; B-Register
		jz	code_55AC

code_5579:				; CODE XREF: RESET_0-943Dj
		clr	RAM_28.4
		mov	DPTR, #0F862h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	MD0, R4		
		mov	MD1, R0		
		mov	MD2, R1		
		mov	MD3, #0		
		mov	MD4, B		
		mov	MD5, #0		
		nop
		nop
		nop
		nop
		nop
		nop
		mov	R0, MD0		
		mov	R1, MD1		
		mov	R2, MD2		
		mov	R3, MD3		
		mov	A, MD4		
		mov	A, MD5		
		jb	RAM_28.4, code_5579
		mov	A, R2
		orl	A, R3
		jz	code_55B0

code_55AC:				; CODE XREF: RESET_0-946Bj
		mov	R0, #0FFh
		mov	R1, #0FFh

code_55B0:				; CODE XREF: RESET_0-9438j
		mov	DPTR, #0F874h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		
		
; ---------------------------------------------------------------------------
; Скорость
; ---------------------------------------------------------------------------
		
		mov	DPTR, #5F63h	; Число	импульсов у ДСА	| имп.
		clr	A
		movc	A, @A+DPTR
		mov	R1, A
		clr	C
		rrc	A
		mov	R0, A
		mov	A, R1
		mov	B, #3
		div	AB
		mov	B, A
		mov	DPTR, #0F8ADh
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_55D8
		mov	R0, #0C0h
		clr	A
		xch	A, @R0
		sjmp	code_55ED
; ---------------------------------------------------------------------------

code_55D8:
		cjne	A, RAM_0, code_55E1
		mov	R0, #0C1h
		clr	A
		xch	A, @R0
		sjmp	code_55ED
; ---------------------------------------------------------------------------

code_55E1:
		cjne	A, RAM_1, code_5617
		clr	A
		mov	DPTR, #0F8ADh
		movx	@DPTR, A
		mov	R0, #0C2h
		clr	A
		xch	A, @R0

code_55ED:

		mov	DPTR, #0F8AEh
		movx	@DPTR, A
		mov	R2, A
		add	A, #2
		mov	B, #4
		div	AB
		cjne	A, #0Fh, code_55FB

code_55FB:
		jc	code_55FF
		mov	A, #0Fh

code_55FF:
		mov	DPTR, #0F948h
		movx	@DPTR, A
		mov	B, R2
		mov	DPTR, #60F0h	; Нижний порог скорости	признака движения | км/час
		clr	A
		movc	A, @A+DPTR
		jb	RAM_2D.5, code_5612
		mov	DPTR, #60F1h	; Верхний порог	скорости признака движения | км/час
		clr	A
		movc	A, @A+DPTR

code_5612:
		clr	C
		subb	A, B
		mov	RAM_2D.5, C

code_5617:
		jnb	Options.4, code_565E
		lcall	CALC_SPEED_RPM_INDEX
		
		
; ---------------------------------------------------------------------------
; Диагностика ДСА
; ---------------------------------------------------------------------------
		
		jnb	RAM_2D.5, code_5624
		clr	RAM_25.6
		sjmp	code_563F
; ---------------------------------------------------------------------------

code_5624:
		jb	RAM_25.6, code_565E
		mov	DPTR, #60F2h		; Номер	режимной точки по RPM для диагностики ДСA |
		clr	A
		movc	A, @A+DPTR
		swap	A
		cjne	A, RPM_RT, code_5630

code_5630:
		jc	code_5634
		sjmp	code_563F
; ---------------------------------------------------------------------------

code_5634:
		mov	DPTR, #60F3h		; Номер	режимной точки по GBC для диагностики ДСA |
		clr	A
		movc	A, @A+DPTR
		swap	A
		cjne	A, GBC_RT, code_563D

code_563D:
		jc	code_5646

code_563F:

		clr	A
		mov	DPTR, #0F8C0h
		movx	@DPTR, A
		sjmp	code_565E
; ---------------------------------------------------------------------------

code_5646:
		jnb	RAM_29.1, code_565E
		mov	DPTR, #60F4h		; Время для диагностики ДСA | сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F8C0h
		movx	A, @DPTR
		inc	A
		mov	DPTR, #0F8C0h
		movx	@DPTR, A
		cjne	A, B, code_565E
		setb	RAM_25.6



; ---------------------------------------------------------------------------
; Обучение по ДК
; ---------------------------------------------------------------------------


code_565E:	
		jnb	RAM_28.5, code_5664
		ljmp	code_56E8

code_5664:
		jb	RAM_2B.7, code_566A
		ljmp	code_56E8


code_566A:
		mov	DPTR, #0F889h
		movx	A, @DPTR
		mov	R0, A
		anl	A, #0Fh
		mov	B, A
		mov	DPTR, #0F88Eh
		movx	A, @DPTR
		mov	R1, A
		anl	A, #0Fh
		clr	C
		subb	A, B
		lcall	ABS_ACC
		mov	B, A
		mov	A, R0
		anl	A, #0F0h
		swap	A
		mov	R0, A
		mov	A, R1
		anl	A, #0F0h
		swap	A
		clr	C
		subb	A, R0
		lcall	ABS_ACC
		clr	C
		subb	A, B
		jnc	code_5696
		clr	A

code_5696:
		add	A, B
		mov	B, A
		mov	DPTR, #60A7h	; Градиент таблицы обучения |
		clr	A
		movc	A, @A+DPTR
		mul	AB
		mov	B, A
		mov	DPTR, #0F88Ch
		movx	A, @DPTR
		clr	C
		subb	A, B
		jnc	code_56AD
		mov	A, #0

code_56AD:
		mov	R0, A
		mov	DPTR, #0F88Ch
		movx	A, @DPTR
		add	A, B
		jnc	code_56B8
		mov	A, #0FFh

code_56B8:
		mov	R1, A
		mov	DPTR, #0F889h
		movx	A, @DPTR
		mov	DPTR, #0FD00h
		mov	DPL, A
		movx	A, @DPTR
		mov	R2, A
		lcall	code_AD03
		mov	R0, #40h
		mov	R1, #0C0h
		lcall	code_AD03
		movx	@DPTR, A
		mov	B, A
		mov	R0, DPL
		
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.3, code_56DE
			
		mov	A, R0		
		cjne	A, RAM_6A, code_56DE
		mov	A, R2
		clr	C
		subb	A, B	
		add	A, RAM_6E
		mov	RAM_6E,	A

code_56DE:			
		mov	DPTR, #0F889h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		jnz	code_56E8
		clr	RAM_2B.7
; ---------------------------------------------------------------------------


code_56E8:

		mov	C, RAM_29.4
		orl	C, RAM_29.5
		jnc	code_56F7
		ljmp	code_58F5
		
; ---------------------------------------------------------------------------
; Диагностика РХХ, форсунок, БН, ВСО, нагревателя ДК, КПА
; ---------------------------------------------------------------------------

code_56F7:
		jnb	RAM_29.1, code_5700
		
		lcall	READ_DIAG_DA10
		
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jb	ACC.0, code_56F8		
		
		lcall	DIAG_SSM
		
code_56F8:		
		lcall	DIAG_DEVICE

code_5700:
		mov	DPTR, #60DAh
		clr	A
		movc	A, @A+DPTR
		anl	A, RAM_5B
		mov	B, A		; B-Register
		mov	DPTR, #0F4CAh
		movx	A, @DPTR
		orl	A, B		; B-Register
		movx	@DPTR, A
		mov	DPTR, #60DBh
		clr	A
		movc	A, @A+DPTR
		anl	A, RAM_23
		mov	B, A		; B-Register
		mov	DPTR, #0F4CBh
		movx	A, @DPTR
		orl	A, B		; B-Register
		movx	@DPTR, A
		mov	DPTR, #60DCh
		clr	A
		movc	A, @A+DPTR
		anl	A, RAM_24
		mov	B, A		; B-Register
		mov	DPTR, #0F4CCh
		movx	A, @DPTR
		orl	A, B		; B-Register
		movx	@DPTR, A
		mov	DPTR, #60DDh
		clr	A
		movc	A, @A+DPTR
		anl	A, RAM_25
		mov	B, A		; B-Register
		mov	DPTR, #0F4CDh
		movx	A, @DPTR
		orl	A, B		; B-Register
		movx	@DPTR, A
		mov	DPTR, #5FADh
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		anl	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #0F4CEh
		movx	A, @DPTR
		orl	A, B		; B-Register
		movx	@DPTR, A
		mov	DPTR, #5FB0h
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		anl	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #0F4CFh
		movx	A, @DPTR
		orl	A, B		; B-Register
		movx	@DPTR, A
		mov	DPTR, #5FB1h
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		anl	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #0F4D0h
		movx	A, @DPTR
		orl	A, B		; B-Register
		movx	@DPTR, A
		mov	DPTR, #5FB2h
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F9C6h
		movx	A, @DPTR
		anl	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #0F4D1h
		movx	A, @DPTR
		orl	A, B		; B-Register
		movx	@DPTR, A
		
		
; ---------------------------------------------------------------------------
; Обработка ошибок
; ---------------------------------------------------------------------------		
		
		jnb	RAM_29.1, code_581A
		mov	DPSEL, #2	; Data Pointer Select Register
		mov	DPTR, #0F4C9h	; используется 0F4CAh
		mov	DPSEL, #3	; Data Pointer Select Register
		mov	DPTR, #0F512h
		mov	DPSEL, #4	; Data Pointer Select Register
		mov	DPTR, #0CA87h
		mov	R2, #0
		mov	DPSEL, #0	; Data Pointer Select Register
		mov	DPTR, #0F4D2h

code_57B7:				; CODE XREF: RESET_0-91CAj
		mov	A, R2
		cjne	A, #40h, code_57BD ; '@'
		sjmp	code_581A
; ---------------------------------------------------------------------------

code_57BD:				; CODE XREF: RESET_0-922Aj
		anl	A, #7
		jnz	code_57CD
		mov	DPSEL, #2	; Data Pointer Select Register
		inc	DPTR
		movx	A, @DPTR
		mov	B, A		; B-Register
		clr	A
		movx	@DPTR, A
		mov	DPSEL, #0	; Data Pointer Select Register

code_57CD:				; CODE XREF: RESET_0-9223j
		mov	A, B		; B-Register
		rrc	A
		mov	B, A		; B-Register
		movx	A, @DPTR
		jc	code_57E3
		jb	ACC.7, code_57FD ; Accumulator
		jz	code_580B
		inc	A
		cjne	A, #14h, code_57DE

code_57DE:
		jc	code_57EC
		clr	A
		sjmp	code_57EC
; ---------------------------------------------------------------------------

code_57E3:				; CODE XREF: RESET_0-920Fj
		jz	code_57EA
		mov	A, #0FFh
		movx	@DPTR, A
		sjmp	code_57EF
; ---------------------------------------------------------------------------

code_57EA:				; CODE XREF: RESET_0:code_57E3j
		mov	A, #1

code_57EC:				; CODE XREF: RESET_0:code_57DEj
					; RESET_0-9201j
		movx	@DPTR, A
		sjmp	code_580B
; ---------------------------------------------------------------------------

code_57EF:				; CODE XREF: RESET_0-91FAj
		mov	DPSEL, #4	; Data Pointer Select Register
		clr	A
		movc	A, @A+DPTR
		mov	DPSEL, #3	; Data Pointer Select Register
		movx	@DPTR, A
		mov	DPSEL, #0	; Data Pointer Select Register
		sjmp	code_580B
; ---------------------------------------------------------------------------

code_57FD:				; CODE XREF: RESET_0-920Dj
		mov	DPSEL, #4	; Data Pointer Select Register
		clr	A
		movc	A, @A+DPTR
		anl	A, #0BFh
		mov	DPSEL, #3	; Data Pointer Select Register
		movx	@DPTR, A
		mov	DPSEL, #0	; Data Pointer Select Register

code_580B:				; CODE XREF: RESET_0-920Aj
					; RESET_0-91F5j ...
		inc	R2
		inc	DPTR
		mov	DPSEL, #3	; Data Pointer Select Register
		inc	DPTR
		mov	DPSEL, #4	; Data Pointer Select Register
		inc	DPTR
		mov	DPSEL, #0	; Data Pointer Select Register
		sjmp	code_57B7
; ---------------------------------------------------------------------------

code_581A:				; CODE XREF: RESET_0-9248j
					; RESET_0-9227j
		jb	Options.3, code_587E
		jnb	RAM_29.1, code_587E
		mov	DPTR, #5FB4h
		clr	A
		movc	A, @A+DPTR
		mov	R4, A
		mov	DPTR, #5FB3h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #2	; Data Pointer Select Register
		mov	DPTR, #0F512h
		mov	DPSEL, #3	; Data Pointer Select Register
		mov	DPTR, #0F552h
		pop	DPSEL		; Data Pointer Select Register
		clr	A
		mov	R2, A
		mov	DPTR, #0F4D2h

code_5841:				; CODE XREF: RESET_0-9166j
		mov	A, R2
		cjne	A, #40h, code_5847 ; '@'
		sjmp	code_587E
; ---------------------------------------------------------------------------

code_5847:				; CODE XREF: RESET_0-91A0j
		movx	A, @DPTR
		jnb	ACC.7, code_586D ; Accumulator
		push	ACC		; Accumulator
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #3	; Data Pointer Select Register
		mov	A, R4
		movx	@DPTR, A
		pop	DPSEL		; Data Pointer Select Register
		pop	ACC		; Accumulator
		jnb	RAM_29.2, code_586D
		dec	A
		mov	B, R3		; B-Register
		cjne	A, B, code_586D	; B-Register
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #2	; Data Pointer Select Register
		movx	A, @DPTR
		anl	A, #7Fh
		movx	@DPTR, A
		pop	DPSEL		; Data Pointer Select Register
		clr	A

code_586D:				; CODE XREF: RESET_0-919Aj
					; RESET_0-918Aj ...
		movx	@DPTR, A
		inc	R2
		inc	DPTR
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #2	; Data Pointer Select Register
		inc	DPTR
		mov	DPSEL, #3	; Data Pointer Select Register
		inc	DPTR
		pop	DPSEL		; Data Pointer Select Register
		sjmp	code_5841

code_587E:

		lcall	CLR_ERROR_STATUS
		lcall	GET_ERROR_CODE
		
		
; ---------------------------------------------------------------------------
; Управление лампой CE
; ---------------------------------------------------------------------------

		mov	A, RAM_79
		anl	A, #1
		jnz	code_58EC
		
		jb	RAM_29.5, code_58F5
		
		setb	C
		jnb	RAM_2A.6, code_58E5
		
		mov	DPTR, #5FE1h	; Время до гашения лампы CE при вкл зажигания | cек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F807h
		movx	A, @DPTR
		cjne	A, B, code_589F

code_589F:
		jc	code_58EC
		
		clr	RAM_2E.0
		
; ------- индикация детонации

		mov	DPTR, #0F4C9h
		movx	A, @DPTR
		jz	code_58A10

		dec	A
		movx	@DPTR, A
		mov	B, A

		mov	DPTR, #5EF5h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.0, code_58A10		; Индикация детонации лампой СЕ

		mov	C, B.4
		mov	RAM_2E.0, C
		sjmp	code_58EC
		
; -------
code_58A10:
		lcall	FIND_ERROR
		jnc	code_58E9
		
		setb	RAM_2E.0
		sjmp	code_58EC
; -------

code_58E5:
		clr	RAM_2E.0
		sjmp	code_58EE
; -------

code_58E9:
		lcall	CE_LAMP_FUNC

code_58EC:
		mov	C, RAM_2E.0

code_58EE:
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		mov	ACC.4, C
		movx	@DPTR, A

; ---------------------------------------------------------------------------
; Обработка сообщений, формирование ответа
; ---------------------------------------------------------------------------

code_58F5:
		jnb	RAM_2F.3, code_59A5
		jb	RAM_2F.4, code_5992
		lcall	CHK_MSG
		lcall	PROC_MSG
		sjmp	code_59A5

code_5992:
		lcall	SEND_RPL

		clr	A
		mov	DPTR, #0F4B9h
		movx	@DPTR, A

; ---------------------------------------------------------------------------
code_59A5:
		jnb	RAM_2F.1, code_5A2B
		
		mov	R0, #91h
		mov	ACC, @R0

; ---------------------------------------------------------------------------
; переключение на высокоскоростной протокол
; ---------------------------------------------------------------------------

		jnb	ACC.7, code_59B0
		
		clr	ACC.7
		mov	@R0, A
		setb	RAM_26.7

; ---------------------------------------------------------------------------
; ECU Reset
; ---------------------------------------------------------------------------

code_59B0:
		jnb	ACC.5, code_5A2B
		jnb	RAM_2A.6, code_59D5
		mov	DPTR, #6082h	; Максимальное положение РХХ | шаг
		clr	A
		movc	A, @A+DPTR
		mov	USSM, A
		mov	WDTREL,	#80h

code_59C2:
		setb	WDT
		setb	SWDT
		mov	A, PSM
		xrl	A, USSM
		jnz	code_59C2
		mov	A, PSM
		mov	DPTR, #0F9C1h
		movx	@DPTR, A
		lcall	ENG_STOP

code_59D5:
		clr	EAL

		mov	A, #55h	; 'U'
		mov	DPTR, #0F9B0h
		movx	@DPTR, A
		
		mov	R0, #1
		mov	R1, #0
		mov	DPTR, #0FD00h

code_59FB:
		clr	C
		movx	A, @DPTR
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		inc	DPTR
		mov	A, DPH	
		cjne	A, #0FFh, code_59FB
		mov	R2, #40h
		mov	DPTR, #0F4D2h

code_5A0E:
		clr	C
		movx	A, @DPTR
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		inc	DPTR
		djnz	R2, code_5A0E
		
		mov	DPTR, #0F8FEh
		mov	A, R0
		movx	@DPTR, A
		inc	DPL	
		mov	A, R1
		movx	@DPTR, A
		
		mov	WDTREL,	#7Fh 
		setb	WDT	
		setb	SWDT	

code_5A29:
		sjmp	code_5A29
; ---------------------------------------------------------------------------



code_5A2B:

		mov	A, P1	
		mov	DPTR, #0F8B3h
		movx	@DPTR, A
		mov	A, P4	
		mov	DPTR, #0F8B4h
		movx	@DPTR, A
		mov	A, P8	
		mov	DPTR, #0F8B5h
		movx	@DPTR, A
		mov	A, P5	
		mov	DPTR, #0F8B6h
		movx	@DPTR, A
		mov	A, P6		
		mov	DPTR, #0F8B7h
		movx	@DPTR, A
; ---------------------------------------------------------------------------		
		
		lcall	SET_OUT_PIN_STATE
; ---------------------------------------------------------------------------		

		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		anl	A, #0FEh
		jnb	RAM_29.0, code_5DF2
		orl	A, #1
code_5DF2:
		movx	@DPTR, A


		lcall	OUT_PIN_PROCESS
		lcall	SET_FW_VARIANT
		
		ljmp	code_2CDE
		
; END OF FUNCTION CHUNK	FOR RESET_0
; ---------------------------------------------------------------------------



$INCLUDE(j7es_out_pin.asm)
$INCLUDE(j7es_hip9011_f.asm)
$INCLUDE (j7es_lambda_wb.asm)
$INCLUDE(j7es_etm.asm)


$INCLUDE (j7es_data_area.asm)

$INCLUDE (j7es_lambda_nb.asm)
$INCLUDE (j7es_idling.asm)

$INCLUDE (j7es_map_f.asm)




; =============== S U B	R O U T	I N E =======================================

READ_ADC:

		clr	RAM_28.3

code_A5A2:
		mov	ADCON1,	B
		mov	ADDATL,	#0

code_A5A8:
		jb	ADCON0.4, code_A5A8
		
		mov	A, ADDATH
		jbc	RAM_28.3, code_A5A2
		
		ret
		
; End of function READ_ADC

; =============== S U B	R O U T	I N E =======================================


CLR_ADAPT_FUEL:

		mov	DPTR, #0FD00h
		mov	R0, #0
		mov	A, #80h

code_A815:
		movx	@DPTR, A
		inc	DPTR
		djnz	R0, code_A815
		ret
		
; End of function code_A80E

; =============== S U B	R O U T	I N E =======================================


code_ACD9:

		clr	A
		mov	DPTR, #0F83Eh
		movx	@DPTR, A
		mov	DPTR, #0F83Dh
		movx	@DPTR, A
		mov	DPTR, #0F840h
		movx	@DPTR, A
		mov	DPTR, #0F83Fh
		movx	@DPTR, A
		clr	RAM_27.0
		ret
; End of function code_ACD9


; =============== S U B	R O U T	I N E =======================================


code_ACED:				; CODE XREF: RESET_0-BF9Cp
					; RESET_0-A5E7p ...
		clr	RAM_2B.4
		clr	RAM_2B.5
		clr	RAM_2B.1
		mov	RAM_6B,	#0
		mov	DPTR, #87E4h	; Состав смеси на ХХ | Отношение воздух/топливо	- Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mov	ALF_1, A
		mov	DPTR, #0F833h
		movx	@DPTR, A
		ret
; End of function code_ACED


; =============== S U B	R O U T	I N E =======================================

CHK_A_in_R0_R1:
code_AD03:				; CODE XREF: RESET_0-BF70p
					; RESET_0-B959p ...
		clr	C
		subb	A, R0
		jnc	code_AD09
		mov	A, R0
		ret
; ---------------------------------------------------------------------------

code_AD09:				; CODE XREF: code_AD03+2j
		add	A, R0
		clr	C
		subb	A, R1
		jc	code_AD11
		mov	A, R1
		setb	C
		ret
; ---------------------------------------------------------------------------

code_AD11:				; CODE XREF: code_AD03+9j
		add	A, R1
		clr	C
		ret
; End of function code_AD03


; =============== S U B	R O U T	I N E =======================================

TestMinMaxNeg:
code_AD14:				; CODE XREF: RESET_0-A1EAp
					; RESET_0-995Ap ...
		clr	C
		jnb	ACC.7, code_AD20 ; Accumulator
		subb	A, R0
		jnc	code_AD1D
		mov	A, R0
		ret
; ---------------------------------------------------------------------------

code_AD1D:				; CODE XREF: code_AD14+5j
		add	A, R0
		setb	C
		ret
; ---------------------------------------------------------------------------

code_AD20:				; CODE XREF: code_AD14+1j
		subb	A, R1
		jc	code_AD26
		mov	A, R1
		setb	C
		ret
; ---------------------------------------------------------------------------

code_AD26:				; CODE XREF: code_AD14+Dj
		add	A, R1
		clr	C
		ret
; End of function code_AD14


; =============== S U B	R O U T	I N E =======================================


MIN_R1R0_R3R2:
		clr	C
		mov	A, R2
		subb	A, R0
		mov	A, R3
		subb	A, R1
		jnc	code_AD34
		mov	A, R2
		mov	R0, A
		mov	A, R3
		mov	R1, A

code_AD34:
		ret
; End of function MIN_R1R0_R3R2


; =============== S U B	R O U T	I N E =======================================


MAX_R1R0_R3R2:

		clr	C
		mov	A, R2
		subb	A, R0
		mov	A, R3
		subb	A, R1
		jc	code_AD40
		mov	A, R2
		mov	R0, A
		mov	A, R3
		mov	R1, A

code_AD40:
		ret
; End of function MAX_R1R0_R3R2


; =============== S U B	R O U T	I N E =======================================


MUL_R0R1_B:
MUL_R1R0_B:
		mov	A, B
		xch	A, R1
		mul	AB
		xch	A, R0
		xch	A, B
		xch	A, R1
		mul	AB
		xch	A, B
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		ret
; End of function MUL_R0R1_B


; =============== S U B	R O U T	I N E =======================================


MUL_ABSR0R1_B:				; CODE XREF: IE0_0+A9p	IE0_0+10Dp ...
		mov	A, B		; B-Register
		xch	A, R1
		jb	ACC.7, code_AD5F ; Accumulator
		mul	AB
		xch	A, R0
		xch	A, B		; B-Register
		sjmp	code_AD65
; ---------------------------------------------------------------------------

code_AD5F:				; CODE XREF: MUL_ABSR0R1_B+3j
		mul	AB
		xch	A, R0
		xch	A, B		; B-Register
		clr	C
		subb	A, R1

code_AD65:				; CODE XREF: MUL_ABSR0R1_B+Aj
		xch	A, R1
		mul	AB
		xch	A, B		; B-Register
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, #0
		mov	R1, A
		ret
; End of function MUL_ABSR0R1_B


; =============== S U B	R O U T	I N E =======================================


code_AD70:				; CODE XREF: IE0_0:code_10E6p
					; IE0_0+903p ...
		clr	C
		clr	A
		subb	A, R0
		mov	R0, A
		clr	A
		subb	A, R1
		mov	R1, A
		ret
; End of function code_AD70


; =============== S U B	R O U T	I N E =======================================

MUL_R0R1_2:				; CODE XREF: IE0_0+7ACp IE0_0+1046p ...
		mov	A, R0
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, R1
		jc	code_AD81
		mov	R1, A
		ret
; ---------------------------------------------------------------------------

code_AD81:				; CODE XREF: MUL_R0R1_2+5j code_AD86+7j ...
		mov	R0, #0FFh
		mov	R1, #0FFh
		ret
; End of function MUL_R0R1_2


; =============== S U B	R O U T	I N E =======================================

MUL_R0R1_4:
code_AD86:				; CODE XREF: IE0_0+21p	IE0_0+58Ap ...
		mov	A, R0
		mov	R0, #2
		clr	C

code_AD8A:				; CODE XREF: code_AD86+Aj
		rlc	A
		xch	A, R1
		rlc	A
		jc	code_AD81
		xch	A, R1
		djnz	R0, code_AD8A
		mov	R0, A
		ret
; End of function code_AD86


; =============== S U B	R O U T	I N E =======================================

MUL_R0R1_8:
code_AD94:				; CODE XREF: RESET_0-B0FBp
					; RESET_0-AFEAp ...
		mov	A, R0
		mov	R0, #3
		clr	C

code_AD98:				; CODE XREF: code_AD94+Aj
		rlc	A
		xch	A, R1
		rlc	A
		jc	code_AD81
		xch	A, R1
		djnz	R0, code_AD98
		mov	R0, A
		ret
; End of function code_AD94


; =============== S U B	R O U T	I N E =======================================

MUL_R1R0_16:
MUL_R0R1_16:
code_ADA2:				; CODE XREF: IE0_0+1739p IE0_0+176Dp ...
		mov	A, R1
		anl	A, #0F0h
		jnz	code_AD81
		mov	A, R0
		anl	A, #0F0h
		orl	A, R1
		swap	A
		mov	R1, A
		mov	A, R0
		anl	A, #0Fh
		swap	A
		mov	R0, A
		ret
; End of function code_ADA2


; =============== S U B	R O U T	I N E =======================================


DIV_R0R1_2:				; CODE XREF: IE0_0+151p IE0_0+54Ep ...
		clr	C
		mov	A, R1
		rrc	A
		mov	R1, A
		mov	A, R0
		rrc	A
		mov	R0, A
		ret
; End of function DIV_R0R1_2


; =============== S U B	R O U T	I N E =======================================


DIV_R0R1_4:
		mov	A, R1
		mov	R1, #2
		sjmp	code_ADBE

DIV_R0R1_64:

		mov	A, R1
		mov	R1, #6
		sjmp	code_ADBE

DIV_R0R1_32:

		mov	A, R1
		mov	R1, #5
		sjmp	code_ADBE

DIV_R0R1_8:

		mov	A, R1
		mov	R1, #3

code_ADBE:
		clr	C
		rrc	A
		xch	A, R0
		rrc	A
		xch	A, R0
		djnz	R1, code_ADBE
		mov	R1, A
		ret
; End of function DIV_R0R1


; =============== S U B	R O U T	I N E =======================================


ADD_R0R1_R2R3:
ADD_R1R0_R3R2:

		mov	A, R0
		add	A, R2
		mov	R0, A
		mov	A, R1
		addc	A, R3
		mov	R1, A
		ret
; End of function ADD_R0R1_R2R3


; =============== S U B	R O U T	I N E =======================================


SUB_R0R1_R2R3:
SUB_R1R0_R3R2:
		clr	C
		mov	A, R0
		subb	A, R2
		mov	R0, A
		mov	A, R1
		subb	A, R3
		mov	R1, A
		ret
; End of function SUB_R0R1_R2R3


; =============== S U B	R O U T	I N E =======================================


code_ADE2:

		mov	A, R0
		jb	ACC.7, code_ADE9 ; Accumulator
		mov	R1, #0
		ret
; ---------------------------------------------------------------------------

code_ADE9:				; CODE XREF: code_ADE2+1j
		mov	R1, #0FFh
		ret
; End of function code_ADE2


; =============== S U B	R O U T	I N E =======================================


code_ADEC:				; CODE XREF: RESET_0-A1FDp
					; REG_SSM+130p
		mov	A, R1
		jb	ACC.7, code_ADF9 ; Accumulator
		jnz	code_ADF6
		mov	A, R0
		jnb	ACC.7, code_AE02 ; Accumulator

code_ADF6:				; CODE XREF: code_ADEC+4j
		mov	A, #7Fh	; ''
		ret
; ---------------------------------------------------------------------------

code_ADF9:				; CODE XREF: code_ADEC+1j
		cpl	A
		jnz	code_AE00
		mov	A, R0
		jb	ACC.7, code_AE02 ; Accumulator

code_AE00:				; CODE XREF: code_ADEC+Ej
		mov	A, #80h	; 'А'

code_AE02:				; CODE XREF: code_ADEC+7j
					; code_ADEC+11j
		ret
; End of function code_ADEC


; =============== S U B	R O U T	I N E =======================================


ABS_ACC:				; CODE XREF: IE0_0+F34p IE0_0+1119p ...
		jnb	ACC.7, code_AE08 ; Accumulator
		cpl	A
		inc	A

code_AE08:				; CODE XREF: ABS_ACCj
		ret
; End of function ABS_ACC


; =============== S U B	R O U T	I N E =======================================


code_AE09:				; CODE XREF: RESET_0-B7E5p
					; RESET_0-B781p ...
		mov	A, R1
		jnb	ACC.7, code_AE17 ; Accumulator
		mov	A, R0
		cpl	A
		add	A, #1
		mov	R0, A
		mov	A, R1
		cpl	A
		addc	A, #0
		mov	R1, A

code_AE17:				; CODE XREF: code_AE09+1j
		ret
; End of function code_AE09

; =============== S U B	R O U T	I N E =======================================


GET_2D_VALUE:				; CODE XREF: IE0_0+1858p RESET_0-8DE6p ...
		mov	A, R2
		swap	A
		rl	A
		anl	A, #1Fh
		mov	R3, A
		mov	A, R2
		swap	A
		rl	A
		anl	A, #0E0h
		mov	R2, A
		jnz	code_AE5A
		mov	A, R3
		movc	A, @A+DPTR
		ret
; ---------------------------------------------------------------------------

code_AE5A:				; CODE XREF: GET_2D_VALUE+Cj
		mov	B, R2		; B-Register
		mov	A, R3
		inc	A
		movc	A, @A+DPTR
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		mov	A, R2
		cpl	A
		inc	A
		mov	B, A		; B-Register
		mov	A, R3
		movc	A, @A+DPTR
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B		; B-Register
		ret
; End of function GET_2D_VALUE


; =============== S U B	R O U T	I N E =======================================


GET_3D_VALUE:				; CODE XREF: IE0_0+D97p IE0_0+F9Cp ...
		mov	A, R3
		anl	A, #0F0h
		mov	B, A		; B-Register
		mov	A, R2
		anl	A, #0F0h
		swap	A
		add	A, B		; B-Register
		mov	R4, A
		mov	A, R2
		anl	A, #0Fh
		mov	R2, A
		mov	A, R3
		anl	A, #0Fh
		mov	R3, A
		orl	A, R2
		jnz	code_AE8B
		mov	A, R4
		movc	A, @A+DPTR
		ret
; ---------------------------------------------------------------------------

code_AE8B:				; CODE XREF: GET_3D_VALUE+15j
		mov	A, R2
		mov	B, R3		; B-Register
		mul	AB
		mov	B, A		; B-Register
		mov	A, R4
		add	A, #11h
		movc	A, @A+DPTR
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		mov	A, #10h
		clr	C
		subb	A, R2
		mov	B, R3		; B-Register
		mul	AB
		mov	B, A		; B-Register
		mov	A, R4
		add	A, #10h
		movc	A, @A+DPTR
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B
		mov	R1, A
		mov	A, #10h
		clr	C
		subb	A, R3
		mov	R3, A
		mov	B, R2
		mul	AB
		mov	B, A
		mov	A, R4
		inc	A
		movc	A, @A+DPTR
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B
		mov	R1, A
		mov	A, #10h
		clr	C
		subb	A, R2
		mov	B, R3
		mul	AB
		mov	B, A
		mov	A, R4
		movc	A, @A+DPTR
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B
		ret
; End of function GET_3D_VALUE


; =============== S U B	R O U T	I N E =======================================

GET_2D_MAP_VALUE_I44:

		mov     B, A
		swap    A
		anl     A, #0Fh
		mov     R2, A
		mov     A, B
		anl     A, #0Fh
		swap    A
		mov     R3, A

		jmp	GET_2D_INTERPOLATION

; =============== S U B	R O U T	I N E =======================================


code_AED3:
		mov	B, #5
		div	AB
		cjne	A, #24h, code_AEDA

code_AEDA:
		jc	code_AEDE
		mov	A, #24h	; '$'

code_AEDE:
		mov	R2, A
		mov	A, B
		mov	B, #33h
		mul	AB
		mov	R3, A
; End of function code_AED3


; =============== S U B	R O U T	I N E =======================================

GET_2D_INTERPOLATION:
		mov	A, R2
		movc	A, @A+DPTR
		xch	A, R2
		inc	A
		movc	A, @A+DPTR
		clr	C
		subb	A, R2
		jc	code_AEF8
		mov	B, R3		; B-Register
		mul	AB
		add	A, #80h	; 'А'
		mov	A, B		; B-Register
		addc	A, R2
		ret
; ---------------------------------------------------------------------------

code_AEF8:				; CODE XREF: GET_2D_INTERPOLATION+7j
		cpl	A
		inc	A
		mov	B, R3		; B-Register
		mul	AB
		clr	C
		mov	A, R2
		subb	A, B		; B-Register
		ret
; End of function GET_2D_INTERPOLATION


; =============== S U B	R O U T	I N E =======================================


GET_3D_RAM_VALUE:				; CODE XREF: RESET_0-9A79p
		mov	A, R3
		anl	A, #0F0h
		mov	B, A		; B-Register
		mov	A, R2
		anl	A, #0F0h
		swap	A
		add	A, B		; B-Register
		mov	R4, A
		mov	A, R2
		anl	A, #0Fh
		mov	R2, A
		mov	A, R3
		anl	A, #0Fh
		mov	R3, A
		orl	A, R2
		jnz	code_AF1E
		mov	A, R4
		mov	DPL, A		; Data Pointer,	Low Byte
		movx	A, @DPTR
		ret
; ---------------------------------------------------------------------------

code_AF1E:				; CODE XREF: code_AF02+15j
		mov	A, R2
		mov	B, R3		; B-Register
		mul	AB
		mov	B, A		; B-Register
		mov	A, R4
		add	A, #11h
		mov	DPL, A		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		mov	A, #10h
		clr	C
		subb	A, R2
		mov	B, R3		; B-Register
		mul	AB
		mov	B, A		; B-Register
		mov	A, R4
		add	A, #10h
		mov	DPL, A		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B		; B-Register
		mov	R1, A
		mov	A, #10h
		clr	C
		subb	A, R3
		mov	R3, A
		mov	B, R2		; B-Register
		mul	AB
		mov	B, A		; B-Register
		mov	A, R4
		inc	A
		mov	DPL, A		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B		; B-Register
		mov	R1, A
		mov	A, #10h
		clr	C
		subb	A, R2
		mov	B, R3		; B-Register
		mul	AB
		mov	B, A		; B-Register
		mov	A, R4
		mov	DPL, A		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mul	AB
		add	A, R0
		mov	R0, A
		mov	A, R1
		addc	A, B		; B-Register
		ret
; End of function code_AF02


; =============== S U B	R O U T	I N E =======================================


code_AF6E:				; CODE XREF: RESET_0-B2A7p
					; RESET_0-B297p ...
		mov	B, A		; B-Register
		movx	A, @DPTR
		add	A, B		; B-Register
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		addc	A, #0
		movx	@DPTR, A
		ret
; End of function code_AF6E


; =============== S U B	R O U T	I N E =======================================


code_AF7B:				; CODE XREF: RESET_0-AFB9p
		mov	R1, A
		swap	A
		anl	A, #0Fh
		mov	B, A		; B-Register
		movc	A, @A+DPTR
		mov	R0, A
		mov	A, B		; B-Register
		inc	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R0
		clr	C
		subb	A, B		; B-Register
		mov	B, A		; B-Register
		mov	A, R1
		anl	A, #0Fh
		swap	A
		mul	AB
		mov	A, R0
		clr	C
		subb	A, B		; B-Register
		clr	C
		subb	A, #14h
		jnc	code_AF9F
		mov	A, #0

code_AF9F:				; CODE XREF: code_AF7B+20j
		ret
; End of function code_AF7B


; =============== S U B	R O U T	I N E =======================================

; ---------------------------------------------------------------------------
; Проводит вычисление убывающей функции по 2D таблице по адресу DPTR с линейной интерполяцией
; параметры: A - индекс и смещение (по 4 бита)
; возращает A
; ---------------------------------------------------------------------------


GET_DEC_2D_MAP_VALUE_I44:

		mov	R1, A
		swap	A
		anl	A, #0Fh
		mov	B, A
		movc	A, @A+DPTR
		mov	R0, A
		mov	A, B
		inc	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, R0
		clr	C
		subb	A, B
		mov	B, A
		mov	A, R1
		anl	A, #0Fh
		swap	A
		mul	AB
		mov	A, R0
		clr	C
		subb	A, B
		jnc	code_AFC1
		mov	A, #0

code_AFC1:
		ret
; End of function GET_DEC_2D_MAP_VALUE_I44


; =============== S U B	R O U T	I N E =======================================


code_AFC2:				; CODE XREF: RESET_0-9AB0p
		mov	DPTR, #0F833h
		movx	A, @DPTR
		mov	B, A		; B-Register
		clr	C
		subb	A, ALF_1
		jz	code_AFF4
		jnc	code_AFDD
		mov	DPTR, #6077h	; Макс.	скорость обеднения смеси | 1/сек.
		clr	A
		movc	A, @A+DPTR
		add	A, B		; B-Register
		cjne	A, ALF_1, code_AFD9

code_AFD9:
		jnc	code_AFF5
		sjmp	code_AFEE
; ---------------------------------------------------------------------------

code_AFDD:				; CODE XREF: code_AFC2+Bj
		mov	DPTR, #6078h	; Макс.	скорость обогащения смеси | 1/сек.
		clr	A
		movc	A, @A+DPTR
		xch	A, B		; B-Register
		subb	A, B		; B-Register
		jnc	code_AFE9
		clr	A

code_AFE9:				; CODE XREF: code_AFC2+24j
		cjne	A, ALF_1, code_AFEC

code_AFEC:
		jc	code_AFF5

code_AFEE:				; CODE XREF: code_AFC2+19j
		mov	DPTR, #0F833h
		movx	@DPTR, A
		mov	ALF_1, A

code_AFF4:				; CODE XREF: code_AFC2+9j
		ret
; ---------------------------------------------------------------------------

code_AFF5:				; CODE XREF: code_AFC2:code_AFD9j
					; code_AFC2:code_AFECj
		mov	DPTR, #0F833h
		mov	A, ALF_1
		movx	@DPTR, A
		ret
; End of function code_AFC2


; =============== S U B	R O U T	I N E =======================================


code_AFFC:				; CODE XREF: RESET_0:code_4EEBp
		jnb	RAM_29.3, code_B00C
		mov	DPTR, #0F835h
		movx	A, @DPTR
		clr	C
		subb	A, ALF_1
		jnc	code_B00C
		add	A, ALF_1
		mov	ALF_1, A

code_B00C:				; CODE XREF: code_AFFCj code_AFFC+Aj
		mov	DPTR, #607Ah	; Скорость изменения коррекции состава смеси | 1/сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F834h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B026	; B-Register
		clr	A
		movx	@DPTR, A
		mov	DPTR, #0F835h
		movx	A, @DPTR
		inc	A
		jz	code_B026
		movx	@DPTR, A

code_B026:				; CODE XREF: code_AFFC+1Dj
					; code_AFFC+27j
		ret
; End of function code_AFFC


; =============== S U B	R O U T	I N E =======================================


code_B027:				; CODE XREF: RESET_0-9D06p
		mov	DPTR, #87E4h	; Состав смеси на ХХ | Отношение воздух/топливо	- Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		nop
		nop
		nop
		mov	B, A		; B-Register
		mov	DPTR, #0F835h
		movx	A, @DPTR
		clr	C
		subb	A, B		; B-Register
		jc	code_B03E
		mov	A, B		; B-Register
		movx	@DPTR, A

code_B03E:				; CODE XREF: code_B027+12j
		mov	DPTR, #607Ah	; Скорость изменения коррекции состава смеси | 1/сек.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPTR, #0F834h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B08F	; B-Register
		clr	A
		movx	@DPTR, A
		mov	DPTR, #607Dh	; Начальная температура	прогретого двигателя | град.С
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #6A53h	; Базовый состав смеси | Отношение воздух/топливо - Температура, град.С
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, #80h	; 'А'
		clr	C
		subb	A, B		; B-Register
		jnc	code_B063
		clr	A

code_B063:				; CODE XREF: code_B027+39j
		mov	B, A		; B-Register
		mov	DPTR, #6A7Ah	; Коррекция базового состава смеси | Коэффициент коррекции - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		mul	AB
		mov	DPTR, #6A53h	; Базовый состав смеси | Отношение воздух/топливо - Температура, град.С
		mov	A, TWAT_RT
		movc	A, @A+DPTR
		add	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #6079h	; Коррекция состава смеси при возобновлении топливоподачи |
		clr	A
		movc	A, @A+DPTR
		xch	A, B		; B-Register
		clr	C
		subb	A, B		; B-Register
		mov	B, A		; B-Register
		mov	DPTR, #0F835h
		movx	A, @DPTR
		dec	A
		clr	C
		subb	A, B		; B-Register
		jc	code_B08F
		add	A, B		; B-Register
		movx	@DPTR, A

code_B08F:				; CODE XREF: code_B027+24j
					; code_B027+63j
		ret
; End of function code_B027


; =============== S U B	R O U T	I N E =======================================


code_B090:				; CODE XREF: RESET_0-BD21p
		clr	P5.4		; Port 5 (PDIR=0)
		anl	P9, #7Fh	; Port 9 (PDIR=0)
		orl	P9, #80h	; Port 9 (PDIR=0)
		anl	P9, #7Fh	; Port 9 (PDIR=0)
		orl	P9, #80h	; Port 9 (PDIR=0)
		ret
; End of function code_B090


; =============== S U B	R O U T	I N E =======================================


code_B09F:				; CODE XREF: code_B0AD+5p code_B0AD+Dp ...
		mov	R3, #8

code_B0A1:				; CODE XREF: code_B09F+Bj
		setb	P5.4		; Port 5 (PDIR=0)
		mov	C, P5.5		; Port 5 (PDIR=0)
		rlc	A
		mov	P5.3, C		; Port 5 (PDIR=0)
		clr	P5.4		; Port 5 (PDIR=0)
		djnz	R3, code_B0A1
		ret
; End of function code_B09F


; =============== S U B	R O U T	I N E =======================================


READ_DIAG_DA10:				; CODE XREF: code_B0DCp
		anl	P9, #7Fh	; Port 9 (PDIR=0)
		mov	A, #0
		lcall	code_B09F
		mov	DPTR, #0F9CBh
		movx	@DPTR, A
		clr	A
		lcall	code_B09F
		mov	DPTR, #0F9CAh
		movx	@DPTR, A
		orl	P9, #80h	; Port 9 (PDIR=0)
		anl	P9, #7Fh	; Port 9 (PDIR=0)
		mov	A, #0Fh
		lcall	code_B09F
		mov	DPTR, #0F9CCh
		movx	@DPTR, A
		clr	A
		lcall	code_B09F
		mov	DPTR, #0F9CDh
		movx	@DPTR, A
		orl	P9, #80h	; Port 9 (PDIR=0)
		ret
; End of function READ_DIAG_DA10


; =============== S U B	R O U T	I N E =======================================


DIAG_SSM:
		
		mov	DPTR, #5FEEh	; Порог	напр. для запрета диагн. РХХ | В
		clr	A
		movc	A, @A+DPTR
		cjne	A, RAM_4B, code_B0E7

code_B0E7:
		jnc	code_B119
		jnb	RAM_2A.6, code_B119
		mov	A, P6
		mov	C, ACC.7
		anl	C, ACC.6
		jc	code_B119
		clr	EAL
		mov	C, RAM_27.7
		setb	EAL
		jnc	code_B125
		clr	RAM_27.7
		mov	DPTR, #5FB7h	; Период диагностики РХХ | циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F9CEh
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B10E

code_B10E:
		jc	code_B125
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		orl	A, #10h
		movx	@DPTR, A
		sjmp	code_B125

code_B119:

		clr	A
		mov	DPTR, #0F9CEh
		movx	@DPTR, A
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		anl	A, #0EFh
		movx	@DPTR, A

code_B125:

		ret
; End of function DIAG_SSM


; =============== S U B	R O U T	I N E =======================================


DIAG_DEVICE:
		clr	A
		mov	DPTR, #0F9C4h
		movx	@DPTR, A
		mov	DPTR, #0F9C5h
		movx	@DPTR, A
		mov	DPTR, #0F9C6h
		movx	A, @DPTR
		anl	A, #0F0h
		movx	@DPTR, A
		mov	DPTR, #0F9CAh
		movx	A, @DPTR
		mov	R4, A
		xrl	A, #0FFh
		jnz	code_B142
		ljmp	code_B1E6
; ---------------------------------------------------------------------------

code_B142:
		mov	A, R4
		anl	A, #30h
		mov	R3, A
		xrl	A, #30h
		jz	code_B16B
		mov	A, R3
		jnz	code_B156
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		orl	A, #10h
		movx	@DPTR, A
		sjmp	code_B16B
; ---------------------------------------------------------------------------

code_B156:
		mov	A, R3
		xrl	A, #10h
		jnz	code_B164
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		orl	A, #1
		movx	@DPTR, A
		sjmp	code_B16B
; ---------------------------------------------------------------------------

code_B164:
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		orl	A, #1
		movx	@DPTR, A

code_B16B:

		mov	A, R4
		anl	A, #0Ch
		mov	R3, A
		xrl	A, #0Ch
		jz	code_B194
		mov	A, R3
		jnz	code_B17F
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		orl	A, #20h
		movx	@DPTR, A
		sjmp	code_B194
; ---------------------------------------------------------------------------

code_B17F:
		mov	A, R3
		xrl	A, #4
		jnz	code_B18D
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		orl	A, #2
		movx	@DPTR, A
		sjmp	code_B194
; ---------------------------------------------------------------------------

code_B18D:
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		orl	A, #2
		movx	@DPTR, A

code_B194:

		mov	A, R4
		anl	A, #3
		mov	R3, A
		xrl	A, #3
		jz	code_B1BD
		mov	A, R3
		jnz	code_B1A8
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		orl	A, #40h
		movx	@DPTR, A
		sjmp	code_B1BD
; ---------------------------------------------------------------------------

code_B1A8:
		mov	A, R3
		xrl	A, #1
		jnz	code_B1B6
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		orl	A, #4
		movx	@DPTR, A
		sjmp	code_B1BD
; ---------------------------------------------------------------------------

code_B1B6:
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		orl	A, #4
		movx	@DPTR, A

code_B1BD:

		mov	A, R4
		anl	A, #0C0h
		mov	R3, A
		xrl	A, #0C0h
		jz	code_B1E6
		mov	A, R3
		jnz	code_B1D1
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		orl	A, #80h
		movx	@DPTR, A
		sjmp	code_B1E6
; ---------------------------------------------------------------------------

code_B1D1:
		mov	A, R3
		xrl	A, #40h
		jnz	code_B1DF
		mov	DPTR, #0F9C4h
		movx	A, @DPTR
		orl	A, #8
		movx	@DPTR, A
		sjmp	code_B1E6
; ---------------------------------------------------------------------------

code_B1DF:
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		orl	A, #8
		movx	@DPTR, A

code_B1E6:

		mov	DPTR, #0F9CDh
		movx	A, @DPTR
		mov	R4, A
		anl	A, #30h
		mov	R3, A
		xrl	A, #30h
		jz	code_B21A
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		orl	A, #10h
		movx	@DPTR, A
		mov	A, R3
		jnz	code_B205
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		orl	A, #40h
		movx	@DPTR, A
		sjmp	code_B21A
; ---------------------------------------------------------------------------

code_B205:
		mov	A, R3
		xrl	A, #10h
		jnz	code_B213
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		orl	A, #20h
		movx	@DPTR, A
		sjmp	code_B21A
; ---------------------------------------------------------------------------

code_B213:
		mov	DPTR, #0F9C5h
		movx	A, @DPTR
		orl	A, #80h
		movx	@DPTR, A

code_B21A:

		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.2, code_B21B
		mov		DPTR, #0F9CBh
		movx	A, @DPTR
		anl		A, #0Ch
		mov		R3, A
		xrl		A, #0Ch
		sjmp	code_B21C

code_B21B:
		mov	A, R4
		anl	A, #0C0h
		mov	R3, A
		xrl	A, #0C0h

code_B21C:
		jz	code_B27B
		mov	A, R3
		jnz	code_B240
		mov	DPTR, #5FB8h	; Период диагностики реле бензонасоса |	циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F9CFh
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B235

code_B235:
		jc	code_B280
		mov	DPTR, #0F9C6h
		movx	A, @DPTR
		orl	A, #4
		movx	@DPTR, A
		sjmp	code_B280
; ---------------------------------------------------------------------------

code_B240:
		mov	DPTR, #5F00h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.2, code_B242
		mov	A, R3
		xrl	A, #8

		
code_B241:
		mov	A, R3
		xrl	A, #20h

code_B242:
		jnz	code_B260
		mov	DPTR, #5FB8h	; Период диагностики реле бензонасоса |	циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F9CFh
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B255

code_B255:
		jc	code_B280
		mov	DPTR, #0F9C6h
		movx	A, @DPTR
		orl	A, #8
		movx	@DPTR, A
		sjmp	code_B280
; ---------------------------------------------------------------------------

code_B260:
		mov	DPTR, #5FB8h	; Период диагностики реле бензонасоса |	циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F9CFh
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B270

code_B270:
		jc	code_B280
		mov	DPTR, #0F9C6h
		movx	A, @DPTR
		orl	A, #2
		movx	@DPTR, A
		sjmp	code_B280
; ---------------------------------------------------------------------------

code_B27B:
		clr	A
		mov	DPTR, #0F9CFh
		movx	@DPTR, A

code_B280:

		mov	DPTR, #0F9CCh
		movx	A, @DPTR
		mov	R4, A
		anl	A, #0C0h
		mov	R3, A
		xrl	A, #0C0h
		jz	code_B2A7
		mov	DPTR, #5FB9h	; Период диагн.	реле вентилятора охлаждения | циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F9D0h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B29C

code_B29C:
		jc	code_B2AC
		mov	DPTR, #0F9C6h
		movx	A, @DPTR
		orl	A, #1
		movx	@DPTR, A
		sjmp	code_B2AC
; ---------------------------------------------------------------------------

code_B2A7:
		clr	A
		mov	DPTR, #0F9D0h
		movx	@DPTR, A

code_B2AC:

		mov	DPTR, #0F9CBh
		movx	A, @DPTR
		anl	A, #3
		xrl	A, #3
		jz	code_B2CC
		mov	DPTR, #5F99h	; Период диагностики нагревателя ДК | циклов
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #0F9C0h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		cjne	A, B, code_B2C6

code_B2C6:
		jc	code_B2D3
		setb	RAM_22.3
		sjmp	code_B2D3
; ---------------------------------------------------------------------------

code_B2CC:
		clr	RAM_22.3
		clr	A
		mov	DPTR, #0F9C0h
		movx	@DPTR, A

code_B2D3:

		ret
; End of function DIAG_DEVICE


; =============== S U B	R O U T	I N E =======================================


ENG_STOP:

		lcall	code_B334
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.3
		movx	@DPTR, A
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		clr	ACC.6
		movx	@DPTR, A
		clr		A
		mov	DPTR, #0F806h
		movx	@DPTR, A
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		clr	ACC.4
		movx	@DPTR, A
		mov	RPM_XX,	#0
		mov	RPM_1, #0
		mov	RPM, #0
		mov	RPM_RT,	#0
		mov	RPM_RT_32, #0
		clr	RAM_26.7
		ret
; End of function code_B2D4


; =============== S U B	R O U T	I N E =======================================


code_B304:				; CODE XREF: code_AC0E+9Ep
					; code_D098+2Ap ...
		clr	RAM_29.6
		clr	RAM_29.5
		setb	RAM_2C.2
		mov	DPTR, #0F810h
		movx	A, @DPTR
		anl	A, #0FCh
		movx	@DPTR, A
		mov	DPTR, #0F9A8h
		movx	A, @DPTR
		clr	ACC.4		; Accumulator
		movx	@DPTR, A
		clr	A
		mov	DPTR, #0F95Bh
		movx	@DPTR, A
		mov	DPTR, #0F95Ch
		movx	@DPTR, A
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		setb	ACC.3		; Accumulator
		movx	@DPTR, A
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		setb	ACC.6		; Accumulator
		movx	@DPTR, A
		setb	RAM_26.1
		setb	EX6		; Interrupt Enable Register 1
		ret
; End of function code_B304


; =============== S U B	R O U T	I N E =======================================


code_B334:
		clr	EX6		; Interrupt Enable Register 1
		clr	RAM_26.1
		anl	CMEN, #0F0h	; Compare Enable Register (RMAP=0)
		anl	CMEN, #0Fh	; Compare Enable Register (RMAP=0)
		orl	P4, #0FFh	; Port 4 (PDIR=0)
		mov	RAM_7C,	#0
		ret
; End of function code_B334


; =============== S U B	R O U T	I N E =======================================


code_B345:				; CODE XREF: RESET_0:code_2A9Cp
					; RESET_0-A7F2p
		mov	R2, #40h ; '@'
		mov	DPTR, #0F4D2h

code_B34A:				; CODE XREF: code_B345+Cj
		movx	A, @DPTR
		jb	ACC.7, code_B350 ; Accumulator
		clr	A
		movx	@DPTR, A

code_B350:				; CODE XREF: code_B345+6j
		inc	DPTR
		djnz	R2, code_B34A
		ret
; End of function code_B345

; =============== S U B	R O U T	I N E =======================================


KNOCK_CORR_UOZ_AND_LEARN:
		jb	RAM_2C.3, code_B41F
		mov	RAM_3A,	#0
		mov	B, #4
		mov	DPTR, #0F86Bh
		clr	A

code_B40F:
		movx	@DPTR, A
		inc	DPTR
		djnz	B, code_B40F
		mov	B, #4
		mov	R0, #0ACh

code_B419:
		mov	@R0, #0
		inc	R0
		djnz	B, code_B419

code_B41F:
		mov	C, RAM_23.7
		orl	C, RAM_24.7
		orl	C, RAM_25.0
		jnc	code_B444

code_B427:
		mov	DPTR, #60B4h	; Ограничение смещения УОЗ при ошибках уровня шума | град.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	DPTR, #71E8h	; Максимальное смещение	УОЗ при	детонации | УОЗ, гр.п.к.в. - Обороты коленвала,	об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		cjne	A, B, code_B437

code_B437:
		jc	code_B43B
		mov	A, B

code_B43B:
		mov	R1, #4
		mov	R0, #0ACh ; 'м'

code_B43F:
		mov	@R0, A
		inc	R0
		djnz	R1, code_B43F
		ret
; ---------------------------------------------------------------------------

code_B444:
		mov	R1, #0
		clr	RAM_2C.5
		mov	DPTR, #0F932h
		movx	A, @DPTR
		mov	RAM_3B,	A

code_B44E:
		mov	DPTR, #0F900h
		mov	A, #0Ch
		mov	B, R1
		mul	AB
		add	A, RAM_3B
		add	A, DPL
		mov	DPL, A
		movx	A, @DPTR
		mov	R4, A
		
		mov	A, #0ACh
		add	A, R1
		mov	R0, A
		mov	A, @R0
		mov	R3, A
		
		mov	DPTR, #5EE0h
		mov	A, R1
		movc	A, @A+DPTR
		mov	B, A
		mov	R2, A
		
		clr	EAL
		mov	A, RAM_71
		anl	B, A
		xrl	A, B
		mov	RAM_71,	A
		setb	EAL

		mov	A, B
		jnz	code_B4A6
		
		mov	DPTR, #0F954h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F86Bh
		mov	A, DPL
		add	A, R1
		mov	DPL, A
		movx	A, @DPTR
		clr	C
		subb	A, B
		jnc	code_B496
		add	A, B
		inc	A
		movx	@DPTR, A
		sjmp	code_B4D6
; ---------------------------------------------------------------------------

code_B496:
		clr	A
		movx	@DPTR, A
		mov	A, R3
		jz	code_B49C
		dec	R3

code_B49C:
		mov	A, R4
		jz	code_B4A0
		dec	R4

code_B4A0:
		mov	A, R2
		cpl	A
		anl	RAM_3A,	A
		sjmp	code_B4D6
; ---------------------------------------------------------------------------

code_B4A6:
		setb	RAM_2C.5
		mov	A, RAM_3A
		anl	A, R2
		jz	code_B4C9
		mov	DPTR, #0F953h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F86Bh
		mov	A, DPL
		add	A, R1
		mov	DPL, A
		movx	A, @DPTR
		clr	C
		subb	A, B
		jnc	code_B4C9
		inc	R3
		inc	R3
		inc	R3
		inc	R3
		inc	R4
		inc	R4
		inc	R4
		inc	R4

code_B4C9:

		mov	DPTR, #0F86Bh
		mov	A, DPL
		add	A, R1
		mov	DPL, A
		clr	A
		movx	@DPTR, A
		mov	A, R2
		orl	RAM_3A,	A

code_B4D6:

		mov	A, R4
		cjne	A, RAM_3, code_B4DA

code_B4DA:
		jc	code_B4DF
		mov	R3, A
		sjmp	code_B4F0
; ---------------------------------------------------------------------------

code_B4DF:
		mov	DPTR, #0F955h
		mov	A, DPL
		add	A, R1
		mov	DPL, A
		movx	A, @DPTR
		dec	A
		movx	@DPTR, A
		jnz	code_B4F0
		dec	R3
		mov	A, #5
		movx	@DPTR, A

code_B4F0:

		mov	DPTR, #71E8h	; Максимальное смещение	УОЗ при	детонации | УОЗ, гр.п.к.в. - Обороты коленвала,	об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	B, A
		mov	A, R4
		cjne	A, B, code_B4FC

code_B4FC:
		jc	code_B500
		mov	R4, B

code_B500:
		mov	A, R3
		cjne	A, B, code_B504

code_B504:
		jc	code_B508
		mov	R3, B

code_B508:
		mov	DPTR, #0F900h
		mov	A, #0Ch
		mov	B, R1
		mul	AB
		add	A, RAM_3B
		add	A, DPL
		mov	DPL, A
		mov	A, R4
		movx	@DPTR, A
		mov	A, #0ACh ; 'м'
		add	A, R1
		mov	R0, A
		mov	A, R3
		mov	@R0, A
		inc	R1
		cjne	R1, #4,	code_B523
		ret
; ---------------------------------------------------------------------------

code_B523:
		ljmp	code_B44E
		
; End of function KNOCK_CORR_UOZ_AND_LEARN


; =============== S U B	R O U T	I N E =======================================


KNOCK_CORR_UOZ:
		jb	RAM_2C.3, code_B543
		
		mov	RAM_3A,	#0
		
		mov	B, #4
		mov	DPTR, #0F86Bh
		clr	A
code_B533:
		movx	@DPTR, A
		inc	DPTR
		djnz	B, code_B533
		
		mov	B, #4
		mov	R0, #0ACh
code_B53D:
		mov	@R0, #0
		inc	R0
		djnz	B, code_B53D

code_B543:
		mov	C, RAM_23.7
		orl	C, RAM_24.7
		orl	C, RAM_25.0
		jnc	code_B54E
		ljmp	code_B427
; ---------------------------------------------------------------------------

code_B54E:
		mov	R1, #0
		clr	RAM_2C.5

code_B552:
		mov	A, #0ACh
		add	A, R1
		mov	R0, A
		mov	A, @R0
		mov	R3, A
		
		mov	DPTR, #5EE0h
		mov	A, R1
		movc	A, @A+DPTR
		mov	B, A
		mov	R2, A
		
		clr	EAL
		mov	A, RAM_71
		anl	B, A
		xrl	A, B
		mov	RAM_71,	A
		setb	EAL
		
		mov	A, B
		jnz	code_B596
; -------		
		mov	DPTR, #0F954h	; Период восстановления УОЗ
		movx	A, @DPTR
		mov	B, A
		
		mov	DPTR, #0F86Bh	; счетчики времени с момента предыдущего обнаружения детонации по цилиндрам
		mov	A, DPL
		add	A, R1
		mov	DPL, A
		movx	A, @DPTR
		
		clr	C
		subb	A, B
		jnc	code_B58A
		add	A, B
		inc	A
		movx	@DPTR, A
		sjmp	code_B5C2

code_B58A:
		clr	A
		movx	@DPTR, A
		
		mov	A, R3
		jz	code_B590
		dec	R3

code_B590:
		mov	A, R2
		cpl	A
		anl	RAM_3A,	A
		sjmp	code_B5C2
; -------

code_B596:
		setb	RAM_2C.5
		mov	A, RAM_3A
		anl	A, R2
		jz	code_B5B5
		mov	DPTR, #0F953h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F86Bh
		mov	A, DPL
		add	A, R1
		mov	DPL, A
		movx	A, @DPTR
		clr	C
		subb	A, B
		jnc	code_B5B5
		inc	R3
		inc	R3
		inc	R3
		inc	R3

code_B5B5:
	
		mov	DPTR, #0F86Bh
		mov	A, DPL
		add	A, R1
		mov	DPL, A
		clr	A
		movx	@DPTR, A
		mov	A, R2
		orl	RAM_3A,	A

code_B5C2:

		mov	DPTR, #71E8h	; Максимальное смещение УОЗ при детонации | УОЗ, гр.п.к.в. - Обороты коленвала, об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	B, A
		mov	A, R3
		cjne	A, B, code_B5CE

code_B5CE:
		jc	code_B5D2
		mov	R3, B

code_B5D2:
		mov	A, #0ACh
		add	A, R1
		mov	R0, A
		mov	A, R3
		mov	@R0, A
		inc	R1
		cjne	R1, #4,	code_B5DD
		ret
; ---------------------------------------------------------------------------

code_B5DD:
		ljmp	code_B552
		
; End of function KNOCK_CORR_UOZ


; =============== S U B	R O U T	I N E =======================================


DIAG_DD_NOISE_ERROR:
		
		jnb	RAM_28.7, code_B5F2	; HIP9011

		mov	DPTR, #0F82Bh		; Постоянная времени интегратора
		movx	A, @DPTR
		mov	R2, A
		
		cjne	A, #1, code_B5F0
code_B5F0:	jc	code_B610

		cjne	A, #10h, code_B608

code_B5F2:
		mov	DPTR, #0F934h		; Общий уровень шума
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		jb	RAM_24.7, code_B5FA
		
		mov	DPTR, #5F78h		; Порог	детектора ошибки высокого уровня шума двигателя
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	DPTR, #5F79h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		sjmp	code_B606
; -------

code_B5FA:
		mov	DPTR, #5F7Ah		; Порог сброса ошибки высокого уровня шума
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	DPTR, #5F79h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A

code_B606:
		clr	C
		lcall	SUB_R0R1_R2R3
		cpl	C
		mov	RAM_24.7, C
		
		orl	C, RAM_28.7
		jnc	code_B610
		
code_B608:		
		ret
; ---------------------------------------------------------------------------

code_B610:
		mov	DPTR, #0F934h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL
		movx	A, @DPTR
		mov	R1, A
		
		jb	RAM_23.7, code_B62A
		
		mov	DPTR, #5F64h		; Порог	детектора ошибки низкого уровня шума двигателя |
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	DPTR, #5F65h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		sjmp	code_B638
; -------

code_B62A:
		mov	DPTR, #5F66h		; Порог	сброса ошибки низкого уровня шума |
		clr	A
		movc	A, @A+DPTR
		mov	R2, A
		mov	DPTR, #5F67h
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		sjmp	code_B638

code_B638:
		clr	C
		lcall	SUB_R0R1_R2R3
		mov	RAM_23.7, C
		
		ret
; End of function DIAG_DD_NOISE_ERROR


; =============== S U B	R O U T	I N E =======================================


DIAG_DD:	
		mov	DPTR, #0F967h
		movx	A, @DPTR
		jnz	code_B69B
		mov	DPTR, #0F969h
		movx	A, @DPTR
		jnz	code_B69B
		mov	DPTR, #0F96Bh
		movx	A, @DPTR
		jnz	code_B69B
		mov	DPTR, #0F96Dh
		movx	A, @DPTR
		jnz	code_B69B
		mov	DPTR, #0F966h
		movx	A, @DPTR
		mov	B, A
		inc	DPTR
		inc	DPTR
		movx	A, @DPTR
		add	A, B
		rrc	A
		mov	B, A
		inc	DPTR
		inc	DPTR
		movx	A, @DPTR
		rrc	A
		anl	A, #7Fh
		addc	A, B
		rrc	A
		mov	B, A
		inc	DPTR
		inc	DPTR
		movx	A, @DPTR
		rrc	A
		rrc	A
		anl	A, #3Fh
		addc	A, B
		mov	B, A
		mov	DPTR, #0F980h
		movx	@DPTR, A
		mov	DPTR, #77EFh	; Минимальный общий уровень шума для диагн. | Уровень -	Обороты	коленвала, об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		cjne	A, B, code_B688

code_B688:
		jc	code_B69B
		mov	DPTR, #0F985h
		movx	A, @DPTR
		inc	A
		jz	code_B697
		mov	DPTR, #0F985h
		movx	@DPTR, A
		sjmp	code_B6AA
; ---------------------------------------------------------------------------

code_B697:
		setb	RAM_25.0
		sjmp	code_B6AA
; ---------------------------------------------------------------------------

code_B69B:
		mov	DPTR, #0F985h
		movx	A, @DPTR
		jz	code_B6A8
		dec	A
		mov	DPTR, #0F985h
		movx	@DPTR, A
		sjmp	code_B6AA
; ---------------------------------------------------------------------------

code_B6A8:
		clr	RAM_25.0

code_B6AA:

		ret
; End of function DIAG_DD


; =============== S U B	R O U T	I N E =======================================


code_B6AB:				; CODE XREF: RESET_0-AE7Fp
		add	A, R1
		xch	A, R2
		addc	A, #0
		clr	C
		xch	A, R2
		subb	A, R3
		mov	R1, A
		mov	A, R2
		subb	A, #0
		mov	R2, A
		mov	A, R1
		add	A, #8
		mov	R3, A
		mov	A, R2
		addc	A, #0
		anl	A, #0Fh
		swap	A
		xch	A, R3
		anl	A, #0F0h
		swap	A
		add	A, R3
		ret
; End of function code_B6AB


; =============== S U B	R O U T	I N E =======================================


code_B6C7:				; CODE XREF: RESET_0-A915p
		mov	DPTR, #0F808h
		movx	A, @DPTR
		mov	R0, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R1, A
		mov	DPTR, #5F84h	; Коэффициент квантования МРВ на 32 |
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	A, R1
		jnz	code_B6E3
		mov	A, R0
		cjne	A, #0F0h, code_B6E1 ; 'Ё'

code_B6E1:
		jc	code_B6E5

code_B6E3:				; CODE XREF: code_B6C7+14j
		mov	A, #0F0h ; 'Ё'

code_B6E5:				; CODE XREF: code_B6C7:code_B6E1j
		mov	DPTR, #0F879h
		movx	@DPTR, A
		add	A, #4
		swap	A
		rl	A
		anl	A, #1Fh
		mov	DPTR, #0F87Ah
		movx	@DPTR, A
		mov	B, A		; B-Register
		jnb	RAM_2B.3, code_B6FF
		mov	DPTR, #5F85h	; Ожидаемая температура	ОГ в режиме отсечки топлива | град.С
		clr	A
		movc	A, @A+DPTR
		sjmp	code_B703
; ---------------------------------------------------------------------------

code_B6FF:				; CODE XREF: code_B6C7+2Ej
		mov	DPTR, #862Fh	; Ожидаемая температура	ОГ в рабочих режимах | Температура ОГ, град.С -	Массовый расход	воздуха, кг/час
		movc	A, @A+DPTR

code_B703:				; CODE XREF: code_B6C7+36j
		mov	R1, A
		mov	A, B		; B-Register
		mov	DPTR, #864Fh	; Постоянная времени выпускной трубы | Постоянная времени - Массовый расход воздуха, кг/час
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	R0, #0
		mov	DPTR, #0F892h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		mov	DPTR, #0F894h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	SUB_R0R1_R2R3
		lcall	MUL_ABSR0R1_B
		mov	DPTR, #0F894h
		movx	A, @DPTR
		mov	R2, A
		inc	DPL		; Data Pointer,	Low Byte
		movx	A, @DPTR
		mov	R3, A
		lcall	ADD_R0R1_R2R3
		mov	DPTR, #0F894h
		mov	A, R0
		movx	@DPTR, A
		inc	DPL		; Data Pointer,	Low Byte
		mov	A, R1
		movx	@DPTR, A
		ret
; End of function code_B6C7


; =============== S U B	R O U T	I N E =======================================


code_B73C:				; CODE XREF: RESET_0-99F4p
		mov	DPTR, #0F952h
		movx	A, @DPTR
		jz	code_B749
		mov	DPTR, #0FA94h
		movx	A, @DPTR
		jb	ACC.0, code_B74F ; Accumulator

code_B749:				; CODE XREF: code_B73C+4j
		clr	A
		mov	DPTR, #0F9A0h
		movx	@DPTR, A
		ret
; ---------------------------------------------------------------------------

code_B74F:				; CODE XREF: code_B73C+Aj
		jb	ACC.1, code_B7C3 ; Accumulator
		mov	A, DEV_FLAGS
		anl	A, #4
		jz	code_B759
		ret
; ---------------------------------------------------------------------------

code_B759:				; CODE XREF: code_B73C+1Aj
		mov	DPTR, #0F94Ch
		movx	A, @DPTR
		mov	R0, A
		jnb	ACC.7, code_B7B1 ; Accumulator
		mov	DPTR, #0FF46h
		movx	A, @DPTR
		mov	B, A		; B-Register
		mov	DPTR, #5FFEh	; Число	циклов Д.К. УОЗ	на торможении. |
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_B76F	; B-Register

code_B76F:
		jnc	code_B774
		ljmp	code_B7C3
; ---------------------------------------------------------------------------

code_B774:				; CODE XREF: code_B73C:code_B76Fj
		mov	DPTR, #5FF3h	; Стационарность по оборотам | об/мин.c.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R0
		cpl	A
		inc	A
		mov	R0, A
		clr	C
		subb	A, B		; B-Register
		jnc	code_B786
		mov	R0, #0

code_B786:				; CODE XREF: code_B73C+46j
		mov	A, R0
		mov	B, #8		; B-Register
		mul	AB
		mov	R0, A
		mov	R1, B		; B-Register
		mov	DPTR, #60C4h	; Коэффициент динамической коррекции торможения. | гр.1000rpm.с.
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		lcall	MUL_R0R1_B
		mov	A, R1
		jnz	code_B79E
		mov	A, R0
		sjmp	code_B7A0
; ---------------------------------------------------------------------------

code_B79E:				; CODE XREF: code_B73C+5Dj
		mov	A, #0FFh

code_B7A0:				; CODE XREF: code_B73C+60j
		mov	B, A		; B-Register
		mov	DPTR, #60ACh	; Максимальное опережение по Д.К.УОЗ на	торможении. | гр.п.к.в
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_B7AA	; B-Register

code_B7AA:
		jc	code_B7AE
		mov	A, B		; B-Register

code_B7AE:				; CODE XREF: code_B73C:code_B7AAj
		ljmp	code_B812
; ---------------------------------------------------------------------------

code_B7B1:				; CODE XREF: code_B73C+22j
		mov	DPTR, #0FF46h
		movx	A, @DPTR
		inc	A
		movx	@DPTR, A
		mov	B, A		; B-Register
		mov	DPTR, #5FFDh	; Число	циклов Д.К. УОЗ	на разгоне. |
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_B7C1	; B-Register

code_B7C1:
		jnc	code_B7D5

code_B7C3:
	
		clr	A
		mov	DPTR, #0F9A0h
		movx	@DPTR, A
		mov	DPTR, #0FA94h
		movx	A, @DPTR
		clr	ACC.0
		clr	ACC.1
		mov	DPTR, #0FA94h
		movx	@DPTR, A
		ret
; ---------------------------------------------------------------------------

code_B7D5:
		mov	DPTR, #5FF3h	; Стационарность по оборотам | об/мин.c.
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		mov	A, R0
		clr	C
		subb	A, B
		jnc	code_B7E4
		mov	R0, #0

code_B7E4:
		mov	A, R0
		mov	B, #8
		mul	AB
		mov	R0, A
		mov	R1, B
		
		mov	DPTR, #0F952h	; Индекс по скорости/оборотам
		movx	A, @DPTR
		mov	DPTR, #7594h	; Коэффициент динамической коррекции разгона
		movc	A, @A+DPTR
		mov	B, A
		
		lcall	MUL_R0R1_B
		mov	A, R1
		jnz	code_B7FC
		mov	A, R0
		sjmp	code_B7FE
; ---------------------------------------------------------------------------

code_B7FC:
		mov	A, #0FFh

code_B7FE:
		mov	B, A
		mov	DPTR, #5FF4h	; Максимальное запаздывание по Д.К.УОЗ на разгоне. | гр.п.к.в
		clr	A
		movc	A, @A+DPTR
		cjne	A, B, code_B808

code_B808:
		jc	code_B80C
		sjmp	code_B80E
; ---------------------------------------------------------------------------

code_B80C:
		mov	B, A

code_B80E:
		mov	A, B
		cpl	A
		inc	A

code_B812:
		mov	DPTR, #0F9A0h
		movx	@DPTR, A
		ret
; End of function code_B73C


; =============== S U B	R O U T	I N E =======================================


CALC_SPEED_RPM_INDEX:

		mov	DPTR, #0F94Ah
		movx	A, @DPTR
		mov	R2, A
		inc	DPL
		movx	A, @DPTR
		mov	R3, A
		mov	DPTR, #0F8AEh
		movx	A, @DPTR
		clr	RAM_28.4
		mov	MD0, #0
		mov	MD1, A
		mov	MD4, R2
		mov	MD5, R3	
		nop
		nop
		nop
		nop
		mov	R0, MD0	
		mov	R1, MD1	
		mov	A, MD4
		mov	A, MD5
		jb	RAM_28.4, CALC_SPEED_RPM_INDEX
		lcall	DIV_R0R1_2
		mov	A, R1
		jz	code_B847
		clr	A
		sjmp	code_B859
; ---------------------------------------------------------------------------

code_B847:
		mov	A, R0
		cjne	A, #1Fh, code_B84B

code_B84B:
		jc	code_B84F
		mov	A, #1Fh

code_B84F:
		mov	DPTR, #0FA98h
		movx	@DPTR, A
		anl	A, #1Fh
		mov	DPTR, #9E3Ch	; Индекс по скорости/оборотам |	Индекс - Отношение SPEED/RPM (/1000)
		movc	A, @A+DPTR

code_B859:
		mov	DPTR, #0F952h
		movx	@DPTR, A
		ret
; End of function CALC_SPEED_RPM_INDEX

; =============== S U B	R O U T	I N E =======================================


code_B967:
		clr	A
		mov	DPTR, #0F813h
		mov	R1, #10h

code_B96D:
		movx	@DPTR, A
		inc	DPL
		djnz	R1, code_B96D
		ret
; End of function code_B967


; =============== S U B	R O U T	I N E =======================================


CLR_VARS_IDLE_to_OPER:

		clr	RAM_2B.5
		clr	A
		mov	DPTR, #0F97Bh
		movx	@DPTR, A
		mov	DPTR, #0F97Ah
		movx	@DPTR, A
		mov	DPTR, #0FA94h
		movx	@DPTR, A
		mov	DPTR, #0FA96h
		movx	@DPTR, A
		ret
; End of function CLR_VARS_IDLE_to_OPER


; =============== S U B	R O U T	I N E =======================================


ICMP0_ICMP7_0:
		push	ACC
		push	PSW
		push	B
		mov	A, IRCON1
		nop
		nop
		nop
		jnb	ACC.4, code_B9B4
		anl	IRCON1,	#0EFh
		jb	P4.4, code_B9B4
		mov	A, CML4
		add	A, RAM_44
		mov	B, A
		mov	A, CMH4
		addc	A, RAM_45
		anl	CMEN, #0EFh
		mov	CMH4, A
		mov	CML4, B
		orl	CMEN, #10h
		setb	P4.4
		sjmp	code_BA18
; ---------------------------------------------------------------------------

code_B9B4:

		jnb	ACC.5, code_B9D6
		anl	IRCON1,	#0DFh
		jb	P4.5, code_B9D6
		mov	A, CML5
		add	A, RAM_44
		mov	B, A
		mov	A, CMH5
		addc	A, RAM_45
		anl	CMEN, #0DFh
		mov	CMH5, A
		mov	CML5, B
		orl	CMEN, #20h
		setb	P4.5
		sjmp	code_BA18
; ---------------------------------------------------------------------------

code_B9D6:

		jnb	ACC.6, code_B9F8
		anl	IRCON1,	#0BFh
		jb	P4.6, code_B9F8
		mov	A, CML6
		add	A, RAM_44
		mov	B, A
		mov	A, CMH6
		addc	A, RAM_45
		anl	CMEN, #0BFh
		mov	CMH6, A
		mov	CML6, B
		orl	CMEN, #40h
		setb	P4.6
		sjmp	code_BA18
; ---------------------------------------------------------------------------

code_B9F8:

		jnb	ACC.7, code_BA18
		anl	IRCON1,	#7Fh
		jb	P4.7, code_BA18
		mov	A, CML7
		add	A, RAM_44
		mov	B, A
		mov	A, CMH7
		addc	A, RAM_45
		anl	CMEN, #7Fh
		mov	CMH7, A
		mov	CML7, B
		orl	CMEN, #80h
		setb	P4.7

code_BA18:

		anl	IRCON1,	#0F0h
		pop	B
		pop	PSW
		pop	ACC
		reti
		
; End of function ICMP0_ICMP7_0


; =============== S U B	R O U T	I N E =======================================


IE1_0:
		jb	P4.4, code_BA2D
		anl	CMEN, #0EFh
		setb	P4.4
		orl	CMEN, #10h

code_BA2D:
		jb	P4.5, code_BA38
		anl	CMEN, #0DFh
		setb	P4.5
		orl	CMEN, #20h

code_BA38:
		jb	P4.6, code_BA43
		anl	CMEN, #0BFh
		setb	P4.6
		orl	CMEN, #40h

code_BA43:
		jb	P4.7, code_BA4E
		anl	CMEN, #7Fh
		setb	P4.7
		orl	CMEN, #80h

code_BA4E:
		reti
		
; End of function IE1_0


; ---------------------------------------------------------------------------
; OLT_DIAG_REQUEST
; ---------------------------------------------------------------------------

		INIT_DB_ZERO	%0BAC0h - $
		; 2-х байтные переменные XRAM
		dw 0F99Ch, 0F869h, 0F876h, 0F981h, 0F9D5h, 0F934h, 0
		INIT_DB_ZERO	%0BAD0h - $
		; 1 байтные из RAM
		db TWAT_RT, RPM_RT, RPM_THR_3D_RT, RAM_2A, DELTA_RPM_XX, RAM_6B
		db RAM_2D, LAUNCH_UOZ_OFFSET, GBC_RT, KNOCK_LO, KNOCK_HI, 0
		INIT_DB_ZERO	%0BADDh - $
		; 1 байтные их XRAM
		dw 0F89Ah, 0F99Ah, 0F979h, 0FAA7h, 0F9B7h, 0F97Fh, 0F8C0h, 0F945h, 0F8B9h, 0F802h, 0FF40h, 0FF3Fh, 0F84Ah
		dw 0F847h, 0F848h, 0FAB3h, 0FAB0h, 0FF5Fh, 0FF60h, 0FF3Eh, 0F9A7h, 0F9A8h, 0F9D7h, 0F806h, 0FF47h, 0F938h, 0F82Bh, 0
		;dw 0F885h, 0F860h, 0F85Bh, 0F85Fh, 0F85Eh, 0FA9Bh, 0F883h, 0	; отладка ШП-регулирования
		
		INIT_DB_ZERO	%0BB1Eh - $
		; 1 байтные из RAM
		db 2Bh,	2Ch, 93h, 5Bh, 23h, 24h, 25h, 5Fh, 49h,	61h, 4Ch, 52h, 55h, 53h, 38h, 39h
		db 64h,	65h, 6Fh, 4Dh, 62h, 0ACh, 0ADh,	0AEh, 0AFh, 74h, 0
		; 1 байтные их XRAM
		dw 0F80Ch, 0F80Dh, 0F84Dh, 0F8A9h, 0F80Bh, 0F80Eh, 0F811h, 0F810h, 0F88Fh, 0F8AEh, 0F849h, 0F93Bh, 0F5FFh, 0
		; 2-х байтные переменные XRAM
		dw 0F97Bh, 0F98Dh, 0F841h, 0F808h, 0F82Eh, 0F862h, 0
		
		
		db 2Ch,	49h, 61h, 52h, 38h, 39h, 62h, 0
		dw 0F8AEh, 0F885h, 0F5FFh, 0
		dw 0F841h, 0F808h, 0F82Eh, 0
		db 20h,	21h, 2Bh, 2Ch, 5Bh, 23h, 24h, 25h, 49h,	61h, 52h
		db 55h,	53h, 64h, 65h, 6Fh, 0
		dw 0F844h, 0F8AEh, 0F978h, 0F849h, 0F964h, 0F810h, 0
		dw 0F841h, 0F808h, 0F82Eh, 0F862h, 0F874h, 0F8F8h, 0F93Bh, 0
		db 20h,	21h, 2Bh, 2Ch, 49h, 61h, 52h, 55h, 53h,	65h, 6Fh, 0
		dw 0F844h, 0F8AEh, 0F978h, 0F810h, 0
		dw 0F841h, 0F808h, 0F82Eh, 0F862h, 0F874h, 0F93Bh, 0
		db 74h,	0
		dw 0F80Bh, 0F80Ch, 0F80Dh, 0F964h, 0F8A9h, 0F8B3h, 0F8B6h, 0F8B7h, 0F8B5h, 0F80Eh, 0
		
		dw 0FA41h, 0FA42h, 0FA63h, 0FA64h, 0FA65h, 0FA66h, 0FA67h, 0FA68h, 0FA69h, 0FA6Ah, 0FA6Bh, 0FA6Ch, 0FA6Dh, 0FA6Eh, 0FA6Fh, 0FA70h; все от ДПВ
		dw 0F8C6h, 0F8C7h, 0F8C8h, 0F8C9h, 0F8CAh, 0F8CBh, 0F8CCh, 0F8CDh, 0F93Dh, 0

; ---------------------------------------------------------------------------
		INIT_DB_ZERO	%0BE52h - $
		db 80h,	0F1h, 10h, 61h,	5Ah, 80h, 0, 92h, 0F1h,	10h, 5Ah
		db 91h,	32h, 31h, 31h, 32h, 34h, 2Dh, 31h, 34h,	31h, 31h
		db 30h,	32h, 30h, 2Dh, 33h, 32h, 90h, 0, 8Ch, 0F1h, 10h
		db 5Ah,	92h, 4Eh, 4Fh, 54h, 53h, 55h, 50h, 50h,	4Fh, 52h
		db 54h,	0A7h, 0, 8Ch, 0F1h, 10h, 5Ah, 94h, 31h,	34h, 31h
		db 31h,	30h, 31h, 30h, 2Dh, 33h, 32h, 65h, 0, 91h, 0F1h
		db 10h,	5Ah, 97h, 53h, 41h, 4Dh, 41h, 52h, 41h,	2Dh, 31h
		db 2Eh,	36h, 4Ch, 2Ch, 31h, 36h, 56h, 2Fh, 0, 8Ch, 0F1h
		db 10h,	5Ah, 99h, 31h, 35h, 2Dh, 30h, 32h, 2Dh,	32h, 30h
		db 30h,	35h, 69h, 0, 8Ah, 0F1h,	10h, 5Ah, 9Ah, 49h, 32h
		db 30h,	35h, 44h, 4Dh, 35h, 33h, 58h, 0
		
		; 0xBEC8
		
		INIT_DB_ZERO	55
		
		;db 0A9h, 56h, 44h, 0EDh, 0EDh, 56h, 1Bh, 0, 12h, 0A9h, 0A9h, 56h, 0F6h
		;db 0A9h, 0F6h, 1Bh, 1Bh, 0BBh, 0A0h, 12h, 44h, 0A0h, 0BBh	; 23
		;db 0EDh, 4Dh, 0A0h, 0F6h, 5Fh, 0, 5Fh, 5Fh, 0E4h, 44h
		;db 0A9h, 9, 0FFh, 0F6h,	0BBh, 0A9h, 12h, 0FFh, 56h, 56h
		;db 0A9h, 9, 44h, 0E4h, 56h, 0F6h 				; 49
		;db 5Fh, 0BBh, 0A0h, 0A9h, 12h, 44h				; 55
		
		db 0FFh, 9, 0F6h, 0A0h, 12h, 56h, 9, 9, 0EDh		; 0xBEFF
		db 6Ah,	95h, 87h, 2Eh, 2Eh, 95h, 0D8h, 0C3h, 0D1h, 6Ah
		db 6Ah,	95h, 35h, 6Ah, 35h, 0D8h, 0D8h,	78h, 63h, 0D1h
		db 87h,	63h, 78h, 2Eh, 8Eh, 63h, 35h, 9Ch, 0C3h, 9Ch, 9Ch
		db 27h,	87h, 6Ah, 0CAh,	3Ch, 35h, 78h, 6Ah, 0D1h, 3Ch
		db 95h,	95h, 6Ah, 0CAh,	87h, 27h, 95h, 35h, 9Ch, 78h, 63h
		db 6Ah,	0D1h, 87h, 3Ch,	0CAh, 35h, 63h,	0D1h, 95h, 0CAh
		db 0CAh, 2Eh, 56h, 0A9h, 0BBh, 12h, 12h, 0A9h, 0E4h, 0FFh
		db 0EDh, 56h, 56h, 0A9h, 9, 56h, 9, 0E4h, 0E4h,	44h, 5Fh
		db 0EDh, 0BBh, 5Fh, 44h, 12h, 0B2h, 5Fh, 9, 0A0h, 0FFh
		db 0A0h, 0A0h, 1Bh, 0BBh, 56h, 0F6h, 0,	9, 44h,	56h, 0EDh
		db 0, 0A9h, 0A9h, 56h, 0F6h, 0BBh, 1Bh,	0A9h, 9, 0A0h
		db 44h,	5Fh, 56h, 0EDh,	0BBh, 0, 0F6h, 9, 5Fh, 0EDh, 0A9h
		db 0F6h, 0F6h, 12h, 95h, 6Ah, 78h, 0D1h, 0D1h, 6Ah, 27h
		db 3Ch,	2Eh, 95h, 95h, 6Ah, 0CAh, 95h, 0CAh, 27h, 27h
		db 87h,	9Ch, 2Eh, 78h, 9Ch, 87h, 0D1h, 71h, 9Ch, 0CAh
		db 63h,	3Ch, 63h, 63h, 0D8h, 78h, 95h, 35h, 0C3h, 0CAh
		db 87h,	95h, 2Eh, 0C3h,	6Ah, 6Ah, 95h, 35h, 78h, 0D8h
		db 6Ah,	0CAh, 63h, 87h,	9Ch, 95h, 2Eh, 78h, 0C3h, 35h
		db 0CAh, 9Ch, 2Eh, 6Ah,	35h, 35h, 0D1h,	41h, 76h, 74h
		db 6Fh,	56h, 41h, 5Ah, 0, 56h, 11h, 19h, 10h, 5Ah, 0A5h

; =============== S U B	R O U T	I N E =======================================

INIT_S0:

		mov	S0CON, #40h
		mov	PCON, #80h
		mov	ADCON0,	#0C0h
		mov	R0, #0A8h
		mov	@R0, #0D0h
		mov	S0RELL,	#0D0h
		mov	S0RELH,	#3

		lcall	INIT_RSV_BUF
		lcall	INIT_TRT_BUF
		mov	R0, #93h
		mov	@R0, #0

		setb	RAM_2F.0
		setb	REN0
		setb	ES0

		ret
; End of function code_C1B9


; =============== S U B	R O U T	I N E =======================================


INIT_RSV_BUF:

		clr	A
		mov	RAM_7E,	A
		push	DPSEL
		mov	DPSEL, #6
		mov	DPTR, #0F700h
		pop	DPSEL
		ret
; End of function code_C225


; =============== S U B	R O U T	I N E =======================================


INIT_TRT_BUF:				; CODE XREF: code_C1B9+21p
					; PROC_MSG_ERR+22p ...
		clr	A
		mov	RAM_51,	A
		mov	R0, #92h ; 'Т'
		mov	@R0, A
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		pop	DPSEL		; Data Pointer Select Register
		ret
; End of function INIT_TRT_BUF


; =============== S U B	R O U T	I N E =======================================


START_RPL:				; CODE XREF: code_CE6A+42p
					; code_DBB8+Ep	...
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		pop	DPSEL		; Data Pointer Select Register
		clr	RAM_2F.3
		clr	RAM_2F.0
		clr	RAM_2F.4
		mov	RAM_78,	#0
		setb	TI0		; Serial Channel 0 Control Register
		ret
; End of function code_C244


; =============== S U B	R O U T	I N E =======================================

; ---------------------------------------------------------------------------
; Записывает в буфер передачи значения XRAM по адресу в R3|R4 
; до достижения значения 0
; ---------------------------------------------------------------------------

SET_RPL_XRAM:

		mov	DPH, R3
		mov	DPL, R4

SET_RPL_XRAM_:
code_C25E:
		movx	A, @DPTR
		jz	code_C26F
		push	DPSEL
		mov	DPSEL, #7
		movx	@DPTR, A
		inc	DPTR
		inc	RAM_51
		pop	DPSEL
		inc	DPTR
		sjmp	code_C25E

code_C26F:
		ret
		
; End of function SET_RPL_XRAM


; =============== S U B	R O U T	I N E =======================================


; ---------------------------------------------------------------------------
; Записывает в буфер передачи значения ПЗУ по адресу в R3|R4 
; до достижения значения 0
; ---------------------------------------------------------------------------

SET_RPL_ROM:

		mov	DPH, R3
		mov	DPL, R4

SET_RPL_ROM_:
code_C274:
		clr	A
		movc	A, @A+DPTR
		jz	code_C286
		push	DPSEL
		mov	DPSEL, #7
		movx	@DPTR, A
		inc	DPTR
		inc	RAM_51
		pop	DPSEL
		inc	DPTR
		sjmp	code_C274
; ---------------------------------------------------------------------------

code_C286:
		ret
; End of function SET_RPL_ROM


; =============== S U B	R O U T	I N E =======================================


COPY_XRAM:

		mov	DPSEL, #3
		movx	A, @DPTR
		inc	DPTR
		mov	DPSEL, #4
		movx	@DPTR, A
		inc	DPTR
		djnz	R2, COPY_XRAM
		ret
; End of function COPY_XRAM


; =============== S U B	R O U T	I N E =======================================


; ---------------------------------------------------------------------------
; Записывает в буфер передачи R2 значений ПЗУ по адресу в R3|R4
; ---------------------------------------------------------------------------

SET_RPL_ROM_R2:

		mov	DPH, R3
		mov	DPL, R4

SET_RPL_ROM_R2_:
code_C298:
		clr	A
		movc	A, @A+DPTR
		inc	DPTR
		push	DPSEL
		mov	DPSEL, #7
		movx	@DPTR, A
		inc	DPTR
		inc	RAM_51
		pop	DPSEL
		djnz	R2, code_C298
		ret
; End of function SET_RPL_ROM_R2


; =============== S U B	R O U T	I N E =======================================

; ---------------------------------------------------------------------------
; Записывает в буфер передачи значения переменных, расположенных в доп. памяти,
; список адресов которых расположен в ПЗУ по адресу в R3|R4 с 0 на конце
; ---------------------------------------------------------------------------

SET_RPL_RAM_PTR:

		mov	DPH, R3
		mov	DPL, R4

SET_RPL_RAM_PTR_:
code_C2AD:
		clr	A
		movc	A, @A+DPTR
		jz	code_C2C1
		mov	R0, A
		mov	A, @R0
		inc	DPTR
		push	DPSEL
		mov	DPSEL, #7
		movx	@DPTR, A
		inc	DPTR
		inc	RAM_51
		pop	DPSEL
		sjmp	code_C2AD
; ---------------------------------------------------------------------------

code_C2C1:
		ret
; End of function SET_RPL_RAM_PTR


; =============== S U B	R O U T	I N E =======================================


; ---------------------------------------------------------------------------
; Записывает в буфер передачи значения 2х-байтных переменных, расположенных в XRAM,
; список адресов (по 2 байта ст/мл) которых находится в ПЗУ по адресу в R3|R4 с 0 на конце
; ---------------------------------------------------------------------------

SET_RPL_XRAM_W_PTR:

		mov	DPH, R3
		mov	DPL, R4

SET_RPL_XRAM_W_PTR_:
code_C2C6:
		mov	R3, #2
		clr	A
		movc	A, @A+DPTR
		jz	code_C2EC
		mov	R4, A
		inc	DPTR
		clr	A
		movc	A, @A+DPTR
		inc	DPTR
		push	DPSEL
		mov	DPSEL, #3
		mov	DPH, R4
		mov	DPL, A

code_C2DA:
		movx	A, @DPTR
		inc	DPTR
		mov	DPSEL, #7
		movx	@DPTR, A
		inc	DPTR
		inc	RAM_51
		mov	DPSEL, #3
		djnz	R3, code_C2DA
		pop	DPSEL
		sjmp	code_C2C6
; ---------------------------------------------------------------------------

code_C2EC:
		ret
; End of function SET_RPL_XRAM_W_PTR


; =============== S U B	R O U T	I N E =======================================


; ---------------------------------------------------------------------------
; Записывает в буфер передачи значения переменных, расположенных в XRAM,
; список адресов (по 2 байта ст/мл) которых находится в ПЗУ по адресу в R3|R4 с 0 на конце
; ---------------------------------------------------------------------------

SET_RPL_XRAM_PTR:

		mov	DPH, R3
		mov	DPL, R4

SET_RPL_XRAM_PTR_:
code_C2F1:
		clr	A
		movc	A, @A+DPTR
		jz	code_C310
		mov	R4, A
		inc	DPTR
		clr	A
		movc	A, @A+DPTR
		inc	DPTR
		push	DPSEL
		mov	DPSEL, #3
		mov	DPH, R4
		mov	DPL, A
		movx	A, @DPTR
		inc	DPTR
		mov	DPSEL, #7
		movx	@DPTR, A
		inc	DPTR
		inc	RAM_51
		pop	DPSEL
		sjmp	code_C2F1
; ---------------------------------------------------------------------------

code_C310:
		ret
; End of function SET_RPL_XRAM_PTR

; =============== S U B	R O U T	I N E =======================================

DELAY:
code_C50D:				; CODE XREF: RESET_0:code_2548p
					; RESET_0-C497p ...
		mov	R3, #34h ; '4'
		mov	R4, #0FFh

code_C511:				; CODE XREF: code_C50D:code_C511j
					; code_C50D+6j
		djnz	R4, code_C511
		djnz	R3, code_C511
		ret
; End of function code_C50D


; =============== S U B	R O U T	I N E =======================================


FIND_ERROR:
		mov	DPTR, #0F512h
		mov	R2, #40h ; '@'

code_C51B:
		movx	A, @DPTR
		jb	ACC.7, code_C525
		inc	DPTR
		djnz	R2, code_C51B
		clr	C
		sjmp	code_C526
; ---------------------------------------------------------------------------

code_C525:
		setb	C

code_C526:
		ret
; End of function FIND_ERROR


; =============== S U B	R O U T	I N E =======================================


GET_ERROR_CODE:
		clr	A
		mov	R0, #93h ; 'У'
		mov	@R0, A
		mov	R1, A
		mov	DPTR, #0F512h
		mov	R2, #40h ; '@'
		mov	DPSEL, #3	; Data Pointer Select Register
		mov	DPTR, #0CA07h
		mov	DPSEL, #4	; Data Pointer Select Register
		mov	DPTR, #0F400h
		movx	@DPTR, A
		mov	DPSEL, #0	; Data Pointer Select Register

code_C541:				; CODE XREF: code_C527+53j
		movx	A, @DPTR
		anl	A, #0F0h
		mov	R4, A
		jz	code_C578
		mov	DPSEL, #3	; Data Pointer Select Register
		mov	DPTR, #0CA07h
		mov	A, R1
		mov	B, #2		; B-Register
		mul	AB
		add	A, DPL		; Data Pointer,	Low Byte
		mov	DPL, A		; Data Pointer,	Low Byte
		clr	A
		addc	A, DPH		; Data Pointer,	High Byte
		mov	DPH, A		; Data Pointer,	High Byte
		clr	A
		movc	A, @A+DPTR
		mov	R3, A
		mov	A, #1
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	DPSEL, #4	; Data Pointer Select Register
		mov	A, R3
		movx	@DPTR, A
		inc	DPTR
		mov	A, B		; B-Register
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		clr	A
		movx	@DPTR, A
		mov	DPSEL, #0	; Data Pointer Select Register
		mov	R0, #93h ; 'У'
		inc	@R0

code_C578:				; CODE XREF: code_C527+1Ej
		inc	DPTR
		inc	R1
		djnz	R2, code_C541
		ret
; End of function code_C527


; =============== S U B	R O U T	I N E =======================================


CLR_ERROR_STATUS:
		mov	DPTR, #0F9C9h
		movx	A, @DPTR
		jz	code_C5B4
		jb	ACC.7, code_C5B4 ; Accumulator
		mov	DPSEL, #3	; Data Pointer Select Register
		mov	DPTR, #0F512h
		mov	R2, #40h ; '@'
		mov	DPSEL, #0	; Data Pointer Select Register
		mov	DPTR, #0F552h

code_C594:				; CODE XREF: code_C57D+2Ej
		movx	A, @DPTR
		jz	code_C5A3
		dec	A
		movx	@DPTR, A
		jnz	code_C5A3
		clr	A
		mov	DPSEL, #3	; Data Pointer Select Register
		movx	@DPTR, A
		mov	DPSEL, #0	; Data Pointer Select Register

code_C5A3:				; CODE XREF: code_C57D+18j
					; code_C57D+1Cj
		inc	DPTR
		mov	DPSEL, #3	; Data Pointer Select Register
		inc	DPTR
		mov	DPSEL, #0	; Data Pointer Select Register
		djnz	R2, code_C594
		mov	DPTR, #0F9C9h
		movx	A, @DPTR
		orl	A, #80h
		movx	@DPTR, A

code_C5B4:				; CODE XREF: code_C57D+4j code_C57D+6j
		ret
; End of function code_C57D

; ---------------------------------------------------------------------------
		INIT_DB_ZERO	%0CA07h - $
		db    3			; коды ошибок
		db  35h	; 5
		db  16h
		db  10h
		db  16h
		db    3
		db    1
		db  35h	; 5
		db    3
		db  40h	; @
		db  16h
		db  12h
		db    6
		db    3
		db    6
		db    1
		db    5
		db  62h	; b
		db  11h
		db  71h	; q
		db    1
		db  12h
		db    1
		db  17h
		db    1
		db  31h	; 1
		db    1
		db  22h	; "
		db    1
		db    2
		db    3
		db  27h	; '
		db    5
		db  63h	; c
		db  11h
		db  72h	; r
		db    1
		db  13h
		db    1
		db  18h
		db    1
		db  32h	; 2
		db    1
		db  23h	; #
		db    1
		db    3
		db    3
		db  28h	; (
		db    3
		db  25h	; %
		db  16h
		db    0
		db  39h	; 9
		db  99h	; Щ
		db    1
		db  34h	; 4
		db    1
		db  72h	; r
		db    1
		db  71h	; q
		db    5
		db    1
		db    5
		db    5
		db  16h
		db  11h
		db  16h
		db    2
		db    3
		db  37h	; 7
		db    3
		db  38h	; 8
		db  15h
		db  14h
		db  15h
		db  13h
		db  15h
		db    9
		db    3
		db    0
		db    2
		db    1
		db    2
		db    2
		db    2
		db    3
		db    2
		db    4
		db    2
		db  61h	; a
		db    2
		db  64h	; d
		db    2
		db  67h	; g
		db    2
		db  70h	; p
		db    2
		db  62h	; b
		db    2
		db  65h	; e
		db    2
		db  68h	; h
		db    2
		db  71h	; q
		db    4
		db  43h	; C
		db  14h
		db  26h	; &
		db  14h
		db  25h	; %
		db  14h
		db  10h
		db    4
		db  80h	; А
		db  15h
		db  41h	; A
		db  15h
		db    1
		db  15h
		db    2
		db    3
		db    1
		db    3
		db    3
		db    3
		db    4
		db    3
		db    2			; конец - коды ошибок
		db 0E0h	; р		; статусы ошибок
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db  60h	; `
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db  60h	; `
		db 0E0h	; р
		db  60h	; `		
		db  60h	; `
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db  60h	; `
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р
		db 0E0h	; р

; ---------------------------------------------------------------------------
; Скоростной протокол
; ---------------------------------------------------------------------------

HSP_RI0_TI0

; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------

RI0_TI0_0:
		jb	RI0, code_D480
		jmp	RI0_TI0_TR
		
; ---------------------------------------------------------------------------
; прием	

code_D480:
		clr	RI0
		
		jb	RAM_26.7, HSP_RI0_TI0_0
		
		push	PSW
		push	ACC
		push	B
		push	DPSEL
		
		clr	A
		mov	RAM_78,	A
		
		mov	A, RAM_7E
		jnz	code_D482
		clr	RAM_2F.1
		orl	IEN3, #8

code_D482:
		xrl	A, #80h
		jz	code_D4DD
		mov	DPSEL, #6
		mov	A, S0BUF
		movx	@DPTR, A
		inc	DPTR
		inc	RAM_7E
		jb	RAM_2F.2, code_D4D6
		mov	A, RAM_7E
		cjne	A, #2, code_D497

code_D497:
		jc	code_D511
		push	DPH
		push	DPL
		mov	DPTR, #0F700h
		movx	A, @DPTR
		mov	B, A
		anl	A, #3Fh
		jnz	code_D4C3
		jb	B.7, code_D4B2
		mov	DPTR, #0F701h
		movx	A, @DPTR
		add	A, #3
		sjmp	code_D4BF
; ---------------------------------------------------------------------------

code_D4B2:
		mov	A, RAM_7E
		cjne	A, #4, code_D4B7

code_D4B7:
		jc	code_D4D0
		mov	DPTR, #0F703h
		movx	A, @DPTR
		add	A, #5

code_D4BF:
		setb	RAM_2F.7
		sjmp	code_D4CC
; ---------------------------------------------------------------------------

code_D4C3:
		clr	RAM_2F.7
		add	A, #2
		jnb	B.7, code_D4CC
		add	A, #2

code_D4CC:

		mov	RAM_73,	A
		setb	RAM_2F.2

code_D4D0:
		pop	DPL
		pop	DPH
		sjmp	code_D511
; ---------------------------------------------------------------------------

code_D4D6:
		mov	A, RAM_7E
		cjne	A, RAM_73, code_D4DB

code_D4DB:
		jc	code_D511

code_D4DD:
		clr	REN0
		anl	IEN3, #0F7h
		clr	RAM_2F.2
		mov	RAM_78,	#0
		setb	RAM_2F.3
		sjmp	code_D511
; ---------------------------------------------------------------------------


code_D4EB:
RI0_TI0_TR:
		jnb	TI0, code_D519

; ---------------------------------------------------------------------------
; передача

		clr	TI0
		
		jb	RAM_2F.0, code_D519
		
		push	PSW
		push	ACC
		push	B
		push	DPSEL
		
		mov	A, RAM_51
		jz	code_D50A
		
		mov	DPSEL, #7
		movx	A, @DPTR
		mov	S0BUF, A
		inc	DPTR
		dec	RAM_51
		sjmp	code_D511

code_D50A:
		setb	RAM_2F.0
		mov	RAM_78,	#0
		setb	RAM_2F.1

code_D511:

		pop	DPSEL
		pop	B
		pop	ACC
		pop	PSW

code_D519:

		reti
; End of function RI0_TI0_0


; =============== S U B	R O U T	I N E =======================================


CHK_MSG:
		mov	DPTR, #0F701h
		movx	A, @DPTR
		xrl	A, #10h
		jz	code_D527
		clr	A
		orl	A, #1
		sjmp	code_D558
; ---------------------------------------------------------------------------

code_D527:
		mov	DPTR, #0F700h
		movx	A, @DPTR
		anl	A, #0C0h
		xrl	A, #80h
		jz	code_D536
		clr	A
		orl	A, #2
		sjmp	code_D558
; ---------------------------------------------------------------------------

code_D536:
		mov	R0, #73h
		mov	A, RAM_7E
		setb	C
		subb	A, @R0
		jc	code_D543
		clr	A
		orl	A, #4
		sjmp	code_D558
; ---------------------------------------------------------------------------

code_D543:
		mov	R4, #0
		mov	A, @R0
		dec	A
		mov	R3, A
		mov	DPTR, #0F700h

code_D54B:
		movx	A, @DPTR
		add	A, R4
		mov	R4, A
		inc	DPTR
		djnz	R3, code_D54B
		movx	A, @DPTR
		xrl	A, R4
		jz	code_D558
		clr	A
		orl	A, #8

code_D558:

		mov	R0, #91h
		mov	@R0, A
		ret
; End of function CHK_MSG


; =============== S U B	R O U T	I N E =======================================


PROC_MSG:
		mov	DPTR, #0F702h
		movx	A, @DPTR
		mov	R0, #0A9h
		mov	@R0, A
		jnb	RAM_2F.7, code_D56F
		mov	DPTR, #0F704h
		movx	A, @DPTR
		mov	R0, #0AAh
		mov	@R0, A
		sjmp	code_D576
; ---------------------------------------------------------------------------

code_D56F:
		mov	DPTR, #0F703h
		movx	A, @DPTR
		mov	R0, #0AAh
		mov	@R0, A

code_D576:
		mov	R0, #91h
		mov	A, @R0
		jz	code_D580
		lcall	PROC_MSG_ERR
		sjmp	code_D583
; ---------------------------------------------------------------------------

code_D580:
		lcall	FMT_RPL

code_D583:
		ret
; End of function PROC_MSG


; =============== S U B	R O U T	I N E =======================================


PROC_MSG_ERR:				; CODE XREF: code_D55C+1Fp
		mov	R0, #91h ; 'С'
		mov	ACC, @R0	; Accumulator
		jnb	ACC.0, code_D58D ; Accumulator
		sjmp	code_D5D7
; ---------------------------------------------------------------------------

code_D58D:				; CODE XREF: PROC_MSG_ERR+4j
		jnb	ACC.1, code_D592 ; Accumulator
		sjmp	code_D5D7
; ---------------------------------------------------------------------------

code_D592:				; CODE XREF: PROC_MSG_ERR:code_D58Dj
		jnb	ACC.2, code_D599 ; Accumulator
		mov	R3, #31h ; '1'
		sjmp	code_D59B
; ---------------------------------------------------------------------------

code_D599:				; CODE XREF: PROC_MSG_ERR:code_D592j
		mov	R3, #77h ; 'w'

code_D59B:
		jnb	RAM_2F.5, code_D5D7
		lcall	INIT_TRT_BUF
		mov	DPTR, #0F600h
		mov	A, #83h	; 'Г'
		movx	@DPTR, A
		mov	R4, A
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		inc	DPTR
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		inc	DPTR
		mov	A, #7Fh	; ''
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		mov	R0, #0AAh ; 'к'
		mov	A, @R0
		inc	DPTR
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		mov	A, R3
		inc	DPTR
		movx	@DPTR, A
		add	A, R4
		inc	DPTR
		movx	@DPTR, A
		mov	RAM_51,	#7
		setb	RAM_2F.4
		sjmp	code_D5DA
; ---------------------------------------------------------------------------

code_D5D7:				; CODE XREF: PROC_MSG_ERR+7j PROC_MSG_ERR+Cj ...
		lcall	CLR_MSG

code_D5DA:				; CODE XREF: PROC_MSG_ERR+1Dj
					; PROC_MSG_ERR+51j
		ret
; End of function PROC_MSG_ERR


; =============== S U B	R O U T	I N E =======================================


CLR_MSG:				; CODE XREF: code_D04C+33p
					; PROC_MSG_ERR:code_D5D7p	...
		anl	IEN3, #0F7h	; Interrupt Enable Register 3
		clr	RAM_2F.3
		lcall	INIT_RSV_BUF
		mov	R0, #91h ; 'С'
		mov	@R0, #0
		setb	REN0		; Serial Channel 0 Control Register
		ret
; End of function CLR_MSG


; =============== S U B	R O U T	I N E =======================================


FMT_RPL:

; FUNCTION CHUNK AT E3E5 SIZE 0000000E BYTES

		mov	R0, #0AAh
		mov	A, @R0
		mov	R4, A
		xrl	A, #21h
		jnz	code_D5F8
		lcall	FMT_RPL_RDBLI
		ljmp	code_D696
; ---------------------------------------------------------------------------

code_D5F8:
		mov	A, R4
		xrl	A, #18h
		jnz	code_D603
		lcall	code_D7BA
		ljmp	code_D696
; ---------------------------------------------------------------------------

code_D603:
		mov	A, R4
		xrl	A, #30h
		jnz	code_D60E
		lcall	FMT_RPL_IOCBLI
		ljmp	code_D696
; ---------------------------------------------------------------------------

code_D60E:
		mov	A, R4
		xrl	A, #14h
		jnz	code_D618
		lcall	code_D76F
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D618:
		mov	A, R4
		xrl	A, #3Eh
		jnz	code_D622
		lcall	code_D9BA
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D622:
		mov	A, R4
		xrl	A, #1Ah
		jnz	code_D62C
		lcall	FMT_RPL_REI
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D62C:
		mov	A, R4
		xrl	A, #23h
		jnz	code_D636
		lcall	code_E3F3
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D636:
		mov	A, R4
		xrl	A, #3Bh
		jnz	code_D640
		lcall	FMT_RPL_WDBLI
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D640:
		mov	A, R4
		xrl	A, #10h
		jnz	code_D64A
		lcall	code_D6D2
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D64A:
		mov	A, R4
		xrl	A, #20h
		jnz	code_D654
		lcall	code_D728
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D654:
		mov	A, R4
		xrl	A, #82h
		jnz	code_D65E
		lcall	code_D6AE
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D65E:
		mov	A, R4
		xrl	A, #81h
		jnz	code_D668
		lcall	code_D697
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D668:
		mov	A, R4
		xrl	A, #11h
		jnz	code_D672
		lcall	code_D750
		sjmp	code_D696
; ---------------------------------------------------------------------------

code_D672:
		ljmp	FMT_RPL_NEW_IDS
; ---------------------------------------------------------------------------

code_D696:

		ret
; End of function code_D5EA


; =============== S U B	R O U T	I N E =======================================


code_D697:
		jb	RAM_2F.5, code_D6AA
		setb	RAM_2F.5
		lcall	INIT_TRT_BUF
		mov	R3, #80h
		mov	R4, #56h
		lcall	SET_RPL_ROM
		setb	RAM_2F.4
		sjmp	code_D6AD
; ---------------------------------------------------------------------------

code_D6AA:
		lcall	CLR_MSG

code_D6AD:
		ret
; End of function code_D697


; =============== S U B	R O U T	I N E =======================================


code_D6AE:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D6C8
		clr	A
		mov	RAM_79,	A
		mov	DEV_FLAGS, A
		mov	RAM_7B,	A
		mov	RAM_7C,	A
		mov	R3, #80h
		mov	R4, #5Eh
		lcall	SET_RPL_ROM
		clr	RAM_2F.5
		sjmp	code_D6CF
; ---------------------------------------------------------------------------

code_D6C8:
		mov	R3, #80h
		mov	R4, #8Dh
		lcall	SET_RPL_ROM

code_D6CF:
		setb	RAM_2F.4
		ret
; End of function code_D6AE


; =============== S U B	R O U T	I N E =======================================


code_D6D2:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D71E
		jb	RAM_2F.6, code_D71E
		jnb	RAM_2F.7, code_D6E9
		mov	DPTR, #0F706h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F705h
		movx	A, @DPTR
		sjmp	code_D6F2
; ---------------------------------------------------------------------------

code_D6E9:
		mov	DPTR, #0F705h
		movx	A, @DPTR
		mov	R2, A
		mov	DPTR, #0F704h
		movx	A, @DPTR

code_D6F2:
		xrl	A, #81h
		jnz	code_D715
		setb	RAM_2F.6
		mov	R3, #80h
		mov	R4, #64h
		lcall	SET_RPL_ROM
		mov	A, R2
		xrl	A, #26h
		jnz	code_D70A
		mov	R0, #0A8h
		mov	@R0, #0F3h
		sjmp	code_D725
; ---------------------------------------------------------------------------

code_D70A:
		mov	A, R2
		xrl	A, #39h
		jnz	code_D725
		mov	R0, #0A8h 
		mov	@R0, #0F7h
		sjmp	code_D725
; ---------------------------------------------------------------------------

code_D715:
		mov	R3, #80h
		mov	R4, #0EDh
		lcall	SET_RPL_ROM
		sjmp	code_D725
; ---------------------------------------------------------------------------

code_D71E:
		mov	R3, #80h
		mov	R4, #95h
		lcall	SET_RPL_ROM

code_D725:

		setb	RAM_2F.4
		ret
; End of function code_D6D2


; =============== S U B	R O U T	I N E =======================================


code_D728:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D746
		clr	RAM_2F.6
		clr	A
		mov	RAM_79,	A
		mov	DEV_FLAGS, A
		mov	RAM_7B,	A
		mov	RAM_7C,	A
		mov	R3, #80h
		mov	R4, #6Bh
		lcall	SET_RPL_ROM
		mov	R0, #0A8h
		mov	@R0, #0D0h
		sjmp	code_D74D
; ---------------------------------------------------------------------------

code_D746:
		mov	R3, #80h
		mov	R4, #9Dh
		lcall	SET_RPL_ROM

code_D74D:
		setb	RAM_2F.4
		ret
; End of function code_D728


; =============== S U B	R O U T	I N E =======================================


code_D750:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D765
		mov	R3, #80h
		mov	R4, #77h
		lcall	SET_RPL_ROM
		mov	R0, #91h
		mov	A, @R0
		orl	A, #20h
		mov	@R0, A
		sjmp	code_D76C
; ---------------------------------------------------------------------------

code_D765:
		mov	R3, #80h
		mov	R4, #0A5h
		lcall	SET_RPL_ROM

code_D76C:
		setb	RAM_2F.4
		ret
; End of function code_D750


; =============== S U B	R O U T	I N E =======================================


code_D76F:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D7B0
		setb	RAM_2F.6
		jnb	RAM_2F.7, code_D780
		mov	DPTR, #0F705h
		movx	A, @DPTR
		sjmp	code_D784
; ---------------------------------------------------------------------------

code_D780:
		mov	DPTR, #0F704h
		movx	A, @DPTR

code_D784:
		jz	code_D78B
		inc	A
		jz	code_D799
		sjmp	code_D7A7
; ---------------------------------------------------------------------------

code_D78B:
		lcall	code_DA23
		mov	R3, #80h
		mov	R4, #7Dh
		mov	R2, #7
		lcall	SET_RPL_ROM_R2
		sjmp	code_D7B7
; ---------------------------------------------------------------------------

code_D799:
		lcall	code_DA23
		mov	R3, #80h
		mov	R4, #85h
		mov	R2, #7
		lcall	SET_RPL_ROM_R2
		sjmp	code_D7B7
; ---------------------------------------------------------------------------

code_D7A7:
		mov	R3, #80h
		mov	R4, #0F5h
		lcall	SET_RPL_ROM
		sjmp	code_D7B7
; ---------------------------------------------------------------------------

code_D7B0:
		mov	R3, #80h
		mov	R4, #0ADh
		lcall	SET_RPL_ROM

code_D7B7:
	
		setb	RAM_2F.4
		ret
; End of function code_D76F


; =============== S U B	R O U T	I N E =======================================


code_D7BA:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D7F2
		setb	RAM_2F.6
		jnb	RAM_2F.7, code_D7D1
		mov	DPTR, #0F706h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F705h
		movx	A, @DPTR
		sjmp	code_D7DB
; ---------------------------------------------------------------------------

code_D7D1:
		mov	DPTR, #0F705h
		movx	A, @DPTR
		mov	B, A
		mov	DPTR, #0F704h
		movx	A, @DPTR

code_D7DB:
		jnz	code_D7E9
		mov	A, B
		jz	code_D7E4
		inc	A
		jnz	code_D7E9

code_D7E4:
		lcall	code_DBE3
		sjmp	code_D7F9
; ---------------------------------------------------------------------------

code_D7E9:

		mov	R3, #81h
		mov	R4, #5
		lcall	SET_RPL_ROM
		sjmp	code_D7F9
; ---------------------------------------------------------------------------

code_D7F2:
		mov	R3, #80h
		mov	R4, #0B5h
		lcall	SET_RPL_ROM

code_D7F9:

		setb	RAM_2F.4
		ret
; End of function code_D7BA


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_REI:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D809
		setb	RAM_2F.6
		lcall	FMT_RPL_REI_
		sjmp	code_D810
; ---------------------------------------------------------------------------

code_D809:
		mov	R3, #80h
		mov	R4, #0BDh
		lcall	SET_RPL_ROM

code_D810:
		setb	RAM_2F.4
		ret
; End of function code_D7FC


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_RDBLI:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D887
		setb	RAM_2F.6
		jnb	RAM_2F.7, code_D824
		mov	DPTR, #0F705h
		movx	A, @DPTR
		sjmp	code_D828
; ---------------------------------------------------------------------------

code_D824:
		mov	DPTR, #0F704h
		movx	A, @DPTR

code_D828:
		mov	R4, A
		xrl	A, #1
		jnz	code_D832
		lcall	FMT_RPL_RLI_ASS
		sjmp	code_D88E
; ---------------------------------------------------------------------------

code_D832:
		mov	A, R4
		xrl	A, #2
		jnz	code_D83C
		lcall	FMT_RPL_RLI_EOL
		sjmp	code_D88E
; ---------------------------------------------------------------------------

code_D83C:
		mov	A, R4
		xrl	A, #3
		jnz	code_D846
		lcall	code_DCF8
		sjmp	code_D88E
; ---------------------------------------------------------------------------

code_D846:
		mov	A, R4
		xrl	A, #4
		jnz	code_D850
		lcall	code_DD3C
		sjmp	code_D88E
; ---------------------------------------------------------------------------

code_D850:
		mov	A, R4
		xrl	A, #0A1h
		jnz	code_D864
		lcall	FMT_RPL_RLI_BSN
		sjmp	code_D88E
; ---------------------------------------------------------------------------

code_D864:
		mov	A, R4
		xrl	A, #0A2h
		jnz	code_D86E
		lcall	FMT_RPL_RLI_ESN
		sjmp	code_D88E
; ---------------------------------------------------------------------------

code_D86E:
		mov	A, R4
		xrl	A, #0A3h
		jnz	code_D878
		lcall	FMT_RPL_RLI_MD
		sjmp	code_D88E
; ---------------------------------------------------------------------------

code_D878:
		lcall	FMT_RPL_RDBLI_NEW_PARAM
		sjmp	code_D88E
; ---------------------------------------------------------------------------

code_D887:
		mov	R3, #80h
		mov	R4, #0C5h
		lcall	SET_RPL_ROM

code_D88E:

		mov	DPTR, #0F9B6h	; .0 - флаг детонации для диагностики
		clr	A
		movx	@DPTR, A

		setb	RAM_2F.4
		ret
; End of function code_D813


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_IOCBLI:
		lcall	INIT_TRT_BUF
		
		jb	RAM_2F.5, code_D89D

		ljmp	code_D953
; ---------------------------------------------------------------------------

code_D89D:
		setb	RAM_2F.6
		jnb	RAM_2F.7, code_D8AC
		mov	DPTR, #0F706h
		movx	A, @DPTR
		mov	R3, A
		dec	DPL
		movx	A, @DPTR
		sjmp	code_D8B4
; ---------------------------------------------------------------------------

code_D8AC:
		mov	DPTR, #0F705h
		movx	A, @DPTR
		mov	R3, A
		dec	DPL
		movx	A, @DPTR

code_D8B4:
		mov	R4, A
		jz	code_D8C0
		cjne	A, #5, code_D8BC
		sjmp	code_D8CC
; ---------------------------------------------------------------------------

code_D8BC:
		jnc	code_D8CC
		sjmp	code_D8C3
; ---------------------------------------------------------------------------

code_D8C0:
		ljmp	code_D953
; ---------------------------------------------------------------------------

code_D8C3:
		lcall	code_DFAC
		lcall	code_E28C
		ljmp	code_D95A
; ---------------------------------------------------------------------------

code_D8CC:

		mov	A, R4
		xrl	A, #5
		jnz	code_D8E0
		jnb	RAM_2A.6, code_D8D7
		ljmp	code_D953
; ---------------------------------------------------------------------------

code_D8D7:
		lcall	code_E0D4
		lcall	code_E28C
		ljmp	code_D95A
; ---------------------------------------------------------------------------

code_D8E0:
		mov	A, R4
		xrl	A, #6
		jnz	code_D8F0
		jb	RAM_2A.6, code_D953
		lcall	code_E12C
		lcall	code_E28C
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D8F0:
		mov	A, R4
		xrl	A, #9
		jnz	code_D900
		jb	RAM_2A.6, code_D953
		lcall	code_E249
		lcall	code_E28C
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D900:
		mov	A, R4
		xrl	A, #0Ah
		jnz	code_D90D
		lcall	code_E20A
		lcall	code_E28C
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D90D:
		mov	A, R4
		xrl	A, #0Bh
		jnz	code_D91A
		lcall	code_E1C7
		lcall	code_E28C
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D91A:
		mov	A, R4
		xrl	A, #0Ch
		jnz	code_D927
		lcall	code_E184
		lcall	code_E28C
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D927:
		mov	A, R4
		xrl	A, #41h
		jnz	code_D934
		lcall	code_E2D3
		lcall	code_E33B
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D934:
		mov	A, R4
		xrl	A, #42h
		jnz	code_D941
		lcall	code_E306
		lcall	code_E33B
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D941:
		mov	A, R4
		xrl	A, #0Dh
		jnz	code_D94E
		lcall	code_E38F
		lcall	code_E28C
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D94E:
		lcall	PROC_MSG_IOLI_NEW_CODES
		sjmp	code_D95A
; ---------------------------------------------------------------------------

code_D953:

		mov	R3, #80h
		mov	R4, #0D5h
		lcall	SET_RPL_ROM

code_D95A:

		setb	RAM_2F.4
		ret
; End of function code_D891


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_WDBLI:
		lcall	INIT_TRT_BUF
		jnb	RAM_2F.5, code_D9B0
		setb	RAM_2F.6
		jb	RAM_2A.6, code_D9B0
		jnb	RAM_2F.7, code_D971
		mov	DPTR, #0F705h
		movx	A, @DPTR
		sjmp	code_D975
; ---------------------------------------------------------------------------

code_D971:
		mov	DPTR, #0F704h
		movx	A, @DPTR

code_D975:
		mov	R3, #81h
		mov	R4, #1Dh
		lcall	SET_RPL_ROM
		sjmp	code_D9B7
; ---------------------------------------------------------------------------

code_D9B0:
		mov	R3, #80h 
		mov	R4, #0DDh
		lcall	SET_RPL_ROM

code_D9B7:

		setb	RAM_2F.4
		ret
; End of function code_D95D


; =============== S U B	R O U T	I N E =======================================


code_D9BA:
		jnb	RAM_2F.5, code_D9DB
		setb	RAM_2F.6
		jnb	RAM_2F.7, code_D9C8
		mov	DPTR, #0F705h
		movx	A, @DPTR
		sjmp	code_D9CC
; ---------------------------------------------------------------------------

code_D9C8:
		mov	DPTR, #0F704h
		movx	A, @DPTR

code_D9CC:
		lcall	INIT_TRT_BUF
		mov	R3, #80h
		mov	R4, #71h
		mov	R2, #5
		lcall	SET_RPL_ROM_R2
		setb	RAM_2F.4
		ret
; ---------------------------------------------------------------------------

code_D9DB:
		lcall	INIT_TRT_BUF
		mov	R3, #80h
		mov	R4, #0E5h
		lcall	SET_RPL_ROM
		setb	RAM_2F.4
		ret
; End of function code_D9BA


; =============== S U B	R O U T	I N E =======================================


code_D9E8:
		lcall	INIT_TRT_BUF
		mov	DPTR, #0F600h
		mov	A, #83h	
		movx	@DPTR, A
		mov	R4, A
		mov	R0, #0A9h 
		mov	A, @R0
		inc	DPTR
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		inc	DPTR
		mov	A, #7Fh	
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		mov	R0, #0AAh 
		mov	A, @R0
		inc	DPTR
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		inc	DPTR
		mov	A, #11h
		movx	@DPTR, A
		add	A, R4
		inc	DPTR
		movx	@DPTR, A
		mov	RAM_51,	#7
		setb	RAM_2F.4

		ret
; End of function code_D9E8


; =============== S U B	R O U T	I N E =======================================


code_DA23:

		setb	RAM_2E.0
		mov	R0, #93h 
		clr	A
		mov	@R0, A
		mov	RAM_22,	A
		mov	RAM_23,	A
		mov	RAM_24,	A
		mov	RAM_5B,	A
		mov	RAM_25,	A
		mov	RAM_7C,	A
		mov	DPTR, #0F810h
		movx	@DPTR, A
		mov	DPTR, #0F8C5h
		movx	@DPTR, A
		mov	DPTR, #0F8C4h
		movx	@DPTR, A
		mov	DPTR, #0F8C3h
		movx	@DPTR, A
		mov	DPTR, #0F803h
		movx	@DPTR, A
		mov	DPTR, #0F9C2h
		movx	A, @DPTR
		jnb	ACC.7, code_DAA5
		clr	A
		mov	DPTR, #0F8CCh
		movx	@DPTR, A
		mov	DPTR, #0F8CDh
		movx	@DPTR, A
		mov	DPTR, #0F8CAh
		movx	@DPTR, A
		mov	DPTR, #0F8CBh
		movx	@DPTR, A
		mov	DPTR, #0F8C8h
		movx	@DPTR, A
		mov	DPTR, #0F8C9h
		movx	@DPTR, A
		mov	DPTR, #0F8C6h
		movx	@DPTR, A
		mov	DPTR, #0F8C7h
		movx	@DPTR, A
		mov	DPTR, #0FA79h
		movx	@DPTR, A
		mov	DPTR, #0FA7Ah
		movx	@DPTR, A
		mov	DPTR, #0FA7Bh
		movx	@DPTR, A
		mov	DPTR, #0FA7Ch
		movx	@DPTR, A
		mov	DPTR, #0FA7Dh
		movx	@DPTR, A
		mov	DPTR, #0FA7Eh
		movx	@DPTR, A
		mov	DPTR, #0FA7Fh
		movx	@DPTR, A
		mov	DPTR, #0FA80h
		movx	@DPTR, A
		mov	DPTR, #0FA78h
		movx	@DPTR, A
		mov	DPTR, #0FA87h
		movx	@DPTR, A
		mov	DPTR, #0FA88h
		movx	@DPTR, A
		mov	DPTR, #0FA89h
		movx	@DPTR, A
		mov	DPTR, #0FA8Ah
		movx	@DPTR, A

code_DAA5:
		clr	A
		mov	DPTR, #0F9C2h
		movx	@DPTR, A
		mov	DPTR, #0F9C4h
		movx	@DPTR, A
		mov	DPTR, #0F9C5h
		movx	@DPTR, A
		mov	DPTR, #0F9C6h
		movx	@DPTR, A
		mov	DPTR, #0FA82h
		movx	@DPTR, A
		mov	DPTR, #0FAA1h
		movx	@DPTR, A
		mov	R2, #8
		mov	DPTR, #0F4CAh

code_DAC3:	
		movx	@DPTR, A
		inc	DPTR
		djnz	R2, code_DAC3
		lcall	code_DAD4
		mov	R2, #40h ; '@'
		mov	DPTR, #0F4D2h

code_DACF:	
		movx	@DPTR, A
		inc	DPTR
		djnz	R2, code_DACF
		ret
; End of function code_DA23


; =============== S U B	R O U T	I N E =======================================


code_DAD4:				; CODE XREF: RESET_0-BF49p
					; code_DA23+A4p
		mov	R2, #40h ; '@'
		mov	DPSEL, #2	; Data Pointer Select Register
		mov	DPTR, #0F552h
		mov	DPSEL, #0	; Data Pointer Select Register
		mov	DPTR, #0F512h

code_DAE2:				; CODE XREF: code_DAD4+18j
		movx	@DPTR, A
		inc	DPTR
		mov	DPSEL, #2	; Data Pointer Select Register
		movx	@DPTR, A
		inc	DPTR
		mov	DPSEL, #0	; Data Pointer Select Register
		djnz	R2, code_DAE2
		ret
; End of function code_DAD4


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_REI_:	
		jnb	RAM_2F.7, code_DAF8
		mov	DPTR, #0F705h
		movx	A, @DPTR
		sjmp	code_DAFC
; ---------------------------------------------------------------------------

code_DAF8:
		mov	DPTR, #0F704h
		movx	A, @DPTR

code_DAFC:
		mov	R4, A
		xrl	A, #80h
		jnz	code_DB46
		mov	R3, #0BEh ; '-'
		mov	R4, #52h ; 'R'
		lcall	SET_RPL_ROM
		mov	DPTR, #0BEC8h	; VIN
		lcall	SET_RPL_ROM_
		mov	R3, #80h ; 'А'
		mov	R4, #0
		lcall	SET_RPL_ROM
		mov	R3, #80h ; 'А'
		mov	R4, #11h
		lcall	SET_RPL_ROM
		mov	R3, #80h ; 'А'
		mov	R4, #1Ch
		lcall	SET_RPL_ROM
		mov	R3, #80h ; 'А'
		mov	R4, #27h ; '''
		lcall	SET_RPL_ROM
		mov	DPTR, #0BEDCh	; repairShopCode
		lcall	SET_RPL_ROM_
		mov	R3, #80h ; 'А'
		mov	R4, #37h ; '7'
		lcall	SET_RPL_ROM
		mov	R3, #80h ; 'А'
		mov	R4, #42h ; 'B'
		lcall	SET_RPL_ROM
		lcall	CALC_TRT_BUF_CS
		ljmp	code_DBB7
; ---------------------------------------------------------------------------

code_DB46:
		mov	A, R4
		xrl	A, #90h
		jnz	code_DB51
		lcall	FMT_RPL_REI_VIN
		ljmp	code_DBB7
; ---------------------------------------------------------------------------

code_DB51:
		mov	A, R4
		xrl	A, #91h
		jnz	code_DB60
		mov	R3, #0BEh
		mov	R4, #59h
		lcall	SET_RPL_ROM
		ljmp	code_DBB7
; ---------------------------------------------------------------------------

code_DB60:
		mov	A, R4
		xrl	A, #92h
		jnz	code_DB6E
		mov	R3, #0BEh
		mov	R4, #70h
		lcall	SET_RPL_ROM
		sjmp	code_DBB7
; ---------------------------------------------------------------------------

code_DB6E:
		mov	A, R4
		xrl	A, #94h
		jnz	code_DB7C
		mov	R3, #0BEh
		mov	R4, #81h
		lcall	SET_RPL_ROM
		sjmp	code_DBB7
; ---------------------------------------------------------------------------

code_DB7C:
		mov	A, R4
		xrl	A, #97h
		jnz	code_DB8A
		mov	R3, #0BEh
		mov	R4, #92h
		lcall	SET_RPL_ROM
		sjmp	code_DBB7
; ---------------------------------------------------------------------------

code_DB8A:
		mov	A, R4
		xrl	A, #98h
		jnz	code_DB94
		lcall	FMT_RPL_REI_RSC
		sjmp	code_DBB7
; ---------------------------------------------------------------------------

code_DB94:
		mov	A, R4
		xrl	A, #99h
		jnz	code_DBA2
		mov	R3, #0BEh
		mov	R4, #0A8h
		lcall	SET_RPL_ROM
		sjmp	code_DBB7
; ---------------------------------------------------------------------------

code_DBA2:
		mov	A, R4
		xrl	A, #9Ah
		jnz	code_DBB0
		mov	R3, #0BEh
		mov	R4, #0B9h
		lcall	SET_RPL_ROM
		sjmp	code_DBB7
; ---------------------------------------------------------------------------

code_DBB0:
		mov	R3, #80h
		mov	R4, #0FDh
		lcall	SET_RPL_ROM

code_DBB7:

		ret
; End of function code_DAEF


; =============== S U B	R O U T	I N E =======================================


SEND_RPL:
		mov	A, RAM_78
		clr	C
		subb	A, #8
		jc	code_DBD1
		mov	A, RAM_78
		clr	C
		subb	A, #33h
		jnc	code_DBCE
		lcall	START_RPL
		lcall	INIT_RSV_BUF
		sjmp	code_DBD1
; ---------------------------------------------------------------------------

code_DBCE:
		lcall	code_DC28

code_DBD1:

		ret
; End of function SEND_RPL


; =============== S U B	R O U T	I N E =======================================


CALC_TRT_BUF_CS:				; CODE XREF: code_CEBD+31p
					; code_CEFE+44p ...
		mov	R4, #0
		mov	R3, RAM_51
		mov	DPTR, #0F600h

code_DBD9:				; CODE XREF: CALC_TRT_BUF_CS+Bj
		movx	A, @DPTR
		add	A, R4
		mov	R4, A
		inc	DPTR
		djnz	R3, code_DBD9
		movx	@DPTR, A
		inc	RAM_51
		ret
; End of function CALC_TRT_BUF_CS


; =============== S U B	R O U T	I N E =======================================


code_DBE3:				; CODE XREF: code_D7BA:code_D7E4p
		mov	R0, #93h ; 'У'
		mov	A, @R0
		mov	R3, A
		mov	B, #3		; B-Register
		mul	AB
		mov	R2, A
		add	A, #2
		orl	A, #80h
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		movx	@DPTR, A
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		inc	DPTR
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #58h	; 'X'
		movx	@DPTR, A
		mov	A, R3
		inc	DPTR
		movx	@DPTR, A
		mov	RAM_51,	#5
		jz	code_DC22
		mov	A, R2
		add	A, #5
		mov	RAM_51,	A
		mov	DPSEL, #4	; Data Pointer Select Register
		mov	DPTR, #0F605h
		mov	DPSEL, #3	; Data Pointer Select Register
		mov	DPTR, #0F400h
		lcall	COPY_XRAM

code_DC22:				; CODE XREF: code_DBE3+29j
		pop	DPSEL		; Data Pointer Select Register
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DBE3


; =============== S U B	R O U T	I N E =======================================


code_DC28:				; CODE XREF: code_DBB8:code_DBCEp
		jnb	RAM_2F.5, code_DC61
		lcall	INIT_TRT_BUF
		mov	DPTR, #0F600h
		mov	A, #83h	; 'Г'
		movx	@DPTR, A
		mov	R4, A
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		inc	DPTR
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		inc	DPTR
		mov	A, #7Fh	; ''
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		mov	R0, #0AAh ; 'к'
		mov	A, @R0
		inc	DPTR
		movx	@DPTR, A
		add	A, R4
		mov	R4, A
		inc	DPTR
		mov	A, #21h	; '!'
		movx	@DPTR, A
		add	A, R4
		inc	DPTR
		movx	@DPTR, A
		mov	RAM_51,	#7
		setb	RAM_2F.4
		lcall	START_RPL
		lcall	INIT_RSV_BUF

code_DC61:				; CODE XREF: code_DC28j
		ret
; End of function code_DC28


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_RLI_ASS:
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		mov	A, #80h	; 'А'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		inc	DPTR
		mov	A, #61h	; 'a'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#6
		pop	DPSEL
		mov	R3, #0BBh ; '¬'
		mov	R4, #7Bh ; '{'
		lcall	SET_RPL_RAM_PTR
		mov	R3, #0BBh ; '¬'
		mov	R4, #8Ch ; 'М'
		lcall	SET_RPL_XRAM_PTR
		mov	R3, #0BBh ; '¬'
		mov	R4, #9Ah ; 'Ъ'
		lcall	SET_RPL_XRAM_W_PTR
		mov	A, RAM_51
		clr	C
		subb	A, #4
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F603h
		movx	@DPTR, A
		pop	DPSEL
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DC62


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_RLI_EOL:
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		mov	A, #80h	; 'А'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		inc	DPTR
		mov	A, #61h	; 'a'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#6
		pop	DPSEL
		mov	R3, #0BBh
		mov	R4, #0AAh
		lcall	SET_RPL_RAM_PTR
		mov	R3, #0BBh
		mov	R4, #0B6h
		lcall	SET_RPL_XRAM_PTR
		mov	R3, #0BBh
		mov	R4, #0C0h
		lcall	SET_RPL_XRAM_W_PTR
		mov	A, RAM_51
		clr	C
		subb	A, #4
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F603h
		movx	@DPTR, A
		pop	DPSEL
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DCAD


; =============== S U B	R O U T	I N E =======================================


code_DCF8:				; CODE XREF: code_D813+2Ep
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		mov	A, #80h	; 'А'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		inc	DPTR
		mov	A, #61h	; 'a'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#6
		pop	DPSEL		; Data Pointer Select Register
		mov	R3, #0BBh ; '¬'
		mov	R4, #0CEh ; '+'
		lcall	SET_RPL_RAM_PTR
		mov	R3, #0BBh ; '¬'
		mov	R4, #0D0h ; '¦'
		lcall	SET_RPL_XRAM_PTR
		mov	A, RAM_51
		clr	C
		subb	A, #4
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F603h
		movx	@DPTR, A
		pop	DPSEL		; Data Pointer Select Register
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DCF8


; =============== S U B	R O U T	I N E =======================================


code_DD3C:				; CODE XREF: code_D813+38p
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		mov	A, #80h	; 'А'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		inc	DPTR
		mov	A, #61h	; 'a'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#6
		pop	DPSEL		; Data Pointer Select Register
		mov	R3, #0BBh ; '¬'
		mov	R4, #0E6h ; 'ц'
		lcall	SET_RPL_XRAM_PTR
		mov	A, RAM_51
		clr	C
		subb	A, #4
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F603h
		movx	@DPTR, A
		pop	DPSEL		; Data Pointer Select Register
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DD3C

; =============== S U B	R O U T	I N E =======================================


FMT_RPL_RLI_BSN:
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		mov	A, #89h
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #61h
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#5
		pop	DPSEL
		mov	DPTR, #0BEE4h
		lcall	SET_RPL_ROM_
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DDE3


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_RLI_ESN:
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		mov	A, #89h
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #61h
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#5
		pop	DPSEL
		mov	DPTR, #0BEECh
		lcall	SET_RPL_ROM_
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DE0F


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_RLI_MD:
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		mov	A, #8Ch
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #61h
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#5
		pop	DPSEL
		mov	DPTR, #0BEF4h
		lcall	SET_RPL_ROM_
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DE3B


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_REI_VIN:
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		mov	A, #95h	; 'Х'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #5Ah	; 'Z'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#5
		pop	DPSEL
		mov	DPTR, #0BEC8h
		lcall	SET_RPL_ROM_
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DE67


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_REI_RSC:
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		mov	A, #89h
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #5Ah	
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#5
		pop	DPSEL
		mov	DPTR, #0BEDCh
		lcall	SET_RPL_ROM_
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DE93


; =============== S U B	R O U T	I N E =======================================


code_DEBF:				; CODE XREF: code_DEE4+24p
					; code_DF0C+24p ...
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		mov	A, #82h	; 'В'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #7Bh	; '{'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#5
		pop	DPSEL		; Data Pointer Select Register
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_DEBF

; =============== S U B	R O U T	I N E =======================================


code_DFAC:
		mov	A, R3
		xrl	A, #0
		jnz	code_DFB9
		anl	RAM_79,	#0F7h
		anl	RAM_7C,	#0F0h
		sjmp	code_DFBE
; ---------------------------------------------------------------------------

code_DFB9:
		mov	A, R3
		xrl	A, #1
		jnz	code_DFE9

code_DFBE:
		mov	R2, #1
		setb	C
		mov	A, R4
		xrl	A, #1
		jnz	code_DFCA
		anl	C, P4.2
		sjmp	code_DFE3
; ---------------------------------------------------------------------------

code_DFCA:
		mov	A, R4
		xrl	A, #2
		jnz	code_DFD3
		anl	C, P4.1
		sjmp	code_DFE3
; ---------------------------------------------------------------------------

code_DFD3:
		mov	A, R4
		xrl	A, #3
		jnz	code_DFDC
		anl	C, P4.0
		sjmp	code_DFE3
; ---------------------------------------------------------------------------

code_DFDC:
		mov	A, R4
		xrl	A, #4
		jnz	code_DFEC
		anl	C, P4.3

code_DFE3:

		jnc	code_E057
		mov	R2, #0
		sjmp	code_E057
; ---------------------------------------------------------------------------

code_DFE9:
		mov	A, R3
		xrl	A, #6

code_DFEC:

		jz	code_DFF1
		ljmp	code_E0C7
; ---------------------------------------------------------------------------

code_DFF1:
		mov	A, RAM_7C
		anl	A, #0Fh
		jz	code_E001
		mov	A, RAM_2E
		anl	A, #0F0h
		jnz	code_E04B
		mov	R2, #1
		sjmp	code_E057
; ---------------------------------------------------------------------------

code_E001:
		jb	RAM_2A.6, code_E009
		orl	RAM_79,	#8
		clr	RAM_2E.3

code_E009:
		mov	A, R4
		xrl	A, #1
		jnz	code_E016
		orl	RAM_7C,	#1
		anl	CMEN, #0FBh
		sjmp	code_E03B
; ---------------------------------------------------------------------------

code_E016:
		mov	A, R4
		xrl	A, #2
		jnz	code_E023
		orl	RAM_7C,	#2
		anl	CMEN, #0FDh
		sjmp	code_E03B
; ---------------------------------------------------------------------------

code_E023:
		mov	A, R4
		xrl	A, #3
		jnz	code_E030
		orl	RAM_7C,	#4
		anl	CMEN, #0FEh
		sjmp	code_E03B
; ---------------------------------------------------------------------------

code_E030:
		mov	A, R4
		xrl	A, #4
		jnz	code_DFEC
		orl	RAM_7C,	#8
		anl	CMEN, #0F7h

code_E03B:

		jnb	RAM_2F.7, code_E044
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E048
; ---------------------------------------------------------------------------

code_E044:
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E048:
		mov	R2, A
		sjmp	code_E059
; ---------------------------------------------------------------------------

code_E04B:

		mov	R2, #0
		mov	DPTR, #0F95Eh
		clr	A
		movx	@DPTR, A
		mov	DPTR, #0F95Fh
		inc	A
		movx	@DPTR, A

code_E057:

		sjmp	code_E0D3
; ---------------------------------------------------------------------------

code_E059:
		mov	A, R4
		xrl	A, #1
		jnz	code_E070
		mov	A, R2
		jnz	code_E067
		setb	P4.2
		setb	RAM_2E.4
		sjmp	code_E04B
; ---------------------------------------------------------------------------

code_E067:
		jb	RAM_2A.6, code_E0CB
		clr	RAM_2E.4
		mov	R2, #1
		sjmp	code_E0B3
; ---------------------------------------------------------------------------

code_E070:
		mov	A, R4
		xrl	A, #2
		jnz	code_E087
		mov	A, R2
		jnz	code_E07E
		setb	P4.1
		setb	RAM_2E.5
		sjmp	code_E04B
; ---------------------------------------------------------------------------

code_E07E:
		jb	RAM_2A.6, code_E0CB
		clr		RAM_2E.5
		mov	R2, #1
		sjmp	code_E0B3
; ---------------------------------------------------------------------------

code_E087:
		mov	A, R4
		xrl	A, #3
		jnz	code_E09E
		mov	A, R2
		jnz	code_E095
		setb	P4.0
		setb	RAM_2E.6
		sjmp	code_E04B
; ---------------------------------------------------------------------------

code_E095:
		jb	RAM_2A.6, code_E0CB
		clr	RAM_2E.6
		mov	R2, #1
		sjmp	code_E0B3
; ---------------------------------------------------------------------------

code_E09E:
		mov	A, R4
		xrl	A, #4
		jnz	code_E0C7
		mov	A, R2
		jnz	code_E0AC
		setb	P4.3
		setb	RAM_2E.7
		sjmp	code_E04B
; ---------------------------------------------------------------------------

code_E0AC:
		jb	RAM_2A.6, code_E0CB
		mov	R2, #1
		clr	RAM_2E.7

code_E0B3:

		mov	DPTR, #0F95Fh
		mov	A, #63h
		movx	@DPTR, A
		mov	DPTR, #0F95Eh
		mov	A, #9
		movx	@DPTR, A
		mov	DPTR, #0F95Dh
		mov	A, #5
		movx	@DPTR, A
		sjmp	code_E0D3
; ---------------------------------------------------------------------------

code_E0C7:

		mov	R2, #12h
		sjmp	code_E0D3
; ---------------------------------------------------------------------------

code_E0CB:

		anl	RAM_79,	#0F7h
		anl	RAM_7C,	#0F0h
		mov	R2, #31h

code_E0D3:

		ret
; End of function code_DFAC


; =============== S U B	R O U T	I N E =======================================


code_E0D4:
		mov	A, R3
		xrl	A, #0
		jnz	code_E0DE
		anl	RAM_7C,	#0EFh
		sjmp	code_E0E3
; ---------------------------------------------------------------------------

code_E0DE:
		mov	A, R3
		xrl	A, #1
		jnz	code_E0EE

code_E0E3:				; CODE XREF: code_E0D4+8j
		mov	R2, #1
		setb	C
		anl	C, P4.4		; Port 4 (PDIR=0)
		jnc	code_E12B
		mov	R2, #0
		sjmp	code_E12B
; ---------------------------------------------------------------------------

code_E0EE:				; CODE XREF: code_E0D4+Dj
		mov	A, R3
		xrl	A, #6
		jnz	code_E129
		anl	RAM_7C,	#0DFh
		orl	RAM_7C,	#10h
		jnb	RAM_2F.7, code_E102
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E106
; ---------------------------------------------------------------------------

code_E102:				; CODE XREF: code_E0D4+25j
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E106:				; CODE XREF: code_E0D4+2Cj
		setb	P4.4		; Port 4 (PDIR=0)
		setb	P4.7		; Port 4 (PDIR=0)
		jnz	code_E113
		mov	R2, #0
		anl	RAM_7C,	#0EFh
		sjmp	code_E12B
; ---------------------------------------------------------------------------

code_E113:				; CODE XREF: code_E0D4+36j
		mov	R2, #1
		mov	DPTR, #0F960h
		mov	A, #9
		movx	@DPTR, A
		mov	DPTR, #0F961h
		mov	A, #8
		movx	@DPTR, A
		mov	DPTR, #0F962h
		mov	A, #14h
		movx	@DPTR, A
		sjmp	code_E12B
; ---------------------------------------------------------------------------

code_E129:				; CODE XREF: code_E0D4+1Dj
		mov	R2, #12h

code_E12B:				; CODE XREF: code_E0D4+14j
					; code_E0D4+18j ...
		ret
; End of function code_E0D4


; =============== S U B	R O U T	I N E =======================================


code_E12C:
		mov	A, R3
		xrl	A, #0
		jnz	code_E136
		anl	RAM_7C,	#0DFh
		sjmp	code_E13B
; ---------------------------------------------------------------------------

code_E136:
		mov	A, R3
		xrl	A, #1
		jnz	code_E146

code_E13B:
		mov	R2, #1
		setb	C
		anl	C, P4.6
		jnc	code_E183
		mov	R2, #0
		sjmp	code_E183
; ---------------------------------------------------------------------------

code_E146:
		mov	A, R3
		xrl	A, #6
		jnz	code_E181
		anl	RAM_7C,	#0EFh
		orl	RAM_7C,	#20h
		jnb	RAM_2F.7, code_E15A
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E15E
; ---------------------------------------------------------------------------

code_E15A:
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E15E:
		setb	P4.6
		setb	P4.5
		jnz	code_E16B
		mov	R2, #0
		anl	RAM_7C,	#0DFh
		sjmp	code_E183
; ---------------------------------------------------------------------------

code_E16B:
		mov	R2, #1
		mov	DPTR, #0F960h
		mov	A, #9
		movx	@DPTR, A
		mov	DPTR, #0F961h
		mov	A, #8
		movx	@DPTR, A
		mov	DPTR, #0F962h
		mov	A, #14h
		movx	@DPTR, A
		sjmp	code_E183
; ---------------------------------------------------------------------------

code_E181:
		mov	R2, #12h

code_E183:

		ret
; End of function code_E12C


; =============== S U B	R O U T	I N E =======================================


code_E184:
		mov	A, R3
		xrl	A, #0
		jnz	code_E18E
		anl	RAM_79,	#0FEh
		sjmp	code_E193
; ---------------------------------------------------------------------------

code_E18E:
		mov	A, R3
		xrl	A, #1
		jnz	code_E1A1

code_E193:				; CODE XREF: code_E184+8j
		mov	R2, #1
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		mov	C, ACC.4	; Accumulator
		jc	code_E1C6
		mov	R2, #0
		sjmp	code_E1C6
; ---------------------------------------------------------------------------

code_E1A1:				; CODE XREF: code_E184+Dj
		mov	A, R3
		xrl	A, #6
		jnz	code_E1C4
		orl	RAM_79,	#1
		jnb	RAM_2F.7, code_E1B2
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E1B6
; ---------------------------------------------------------------------------

code_E1B2:				; CODE XREF: code_E184+25j
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E1B6:				; CODE XREF: code_E184+2Cj
		jnz	code_E1BE
		clr	RAM_2E.0
		mov	R2, #0
		sjmp	code_E1C6
; ---------------------------------------------------------------------------

code_E1BE:				; CODE XREF: code_E184:code_E1B6j
		setb	RAM_2E.0
		mov	R2, #1
		sjmp	code_E1C6
; ---------------------------------------------------------------------------

code_E1C4:				; CODE XREF: code_E184+20j
		mov	R2, #12h

code_E1C6:				; CODE XREF: code_E184+17j
					; code_E184+1Bj ...
		ret
; End of function code_E184


; =============== S U B	R O U T	I N E =======================================


code_E1C7:
		mov	A, R3
		xrl	A, #0
		jnz	code_E1D1
		anl	RAM_79,	#0FBh
		sjmp	code_E1D6
; ---------------------------------------------------------------------------

code_E1D1:
		mov	A, R3
		xrl	A, #1
		jnz	code_E1E4

code_E1D6:
		mov	R2, #1
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		mov	C, ACC.5
		jc	code_E209
		mov	R2, #0
		sjmp	code_E209
; ---------------------------------------------------------------------------

code_E1E4:
		mov	A, R3
		xrl	A, #6
		jnz	code_E207
		orl	RAM_79,	#4
		jnb	RAM_2F.7, code_E1F5
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E1F9
; ---------------------------------------------------------------------------

code_E1F5:
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E1F9:
		jnz	code_E201
		clr	RAM_2E.2
		mov	R2, #0
		sjmp	code_E209
; ---------------------------------------------------------------------------

code_E201:
		setb	RAM_2E.2
		mov	R2, #1
		sjmp	code_E209
; ---------------------------------------------------------------------------

code_E207:
		mov	R2, #12h

code_E209:

		ret
; End of function code_E1C7


; =============== S U B	R O U T	I N E =======================================


code_E20A:
		mov	A, R3
		xrl	A, #0
		jnz	code_E214
		anl	RAM_79,	#0FDh
		sjmp	code_E219
; ---------------------------------------------------------------------------

code_E214:
		mov	A, R3
		xrl	A, #1
		jnz	code_E223

code_E219:
		mov	R2, #0
		mov	C, RAM_28.1
		jnc	code_E248
		mov	R2, #1
		sjmp	code_E248
; ---------------------------------------------------------------------------

code_E223:
		mov	A, R3
		xrl	A, #6
		jnz	code_E246
		orl	RAM_79,	#2
		jnb	RAM_2F.7, code_E234
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E238
; ---------------------------------------------------------------------------

code_E234:
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E238:
		jnz	code_E240
		clr	RAM_2E.1
		mov	R2, #0
		sjmp	code_E248
; ---------------------------------------------------------------------------

code_E240:
		setb	RAM_2E.1
		mov	R2, #1
		sjmp	code_E248
; ---------------------------------------------------------------------------

code_E246:
		mov	R2, #12h

code_E248:

		ret
; End of function code_E20A


; =============== S U B	R O U T	I N E =======================================


code_E249:
		mov	A, R3
		xrl	A, #0
		jnz	code_E253
		anl	RAM_79,	#0F7h
		sjmp	code_E258
; ---------------------------------------------------------------------------

code_E253:
		mov	A, R3
		xrl	A, #1
		jnz	code_E266

code_E258:
		mov	R2, #1
		mov	DPTR, #0F9A7h
		movx	A, @DPTR
		mov	C, ACC.3
		jc	code_E28B
		mov	R2, #0
		sjmp	code_E28B
; ---------------------------------------------------------------------------

code_E266:
		mov	A, R3
		xrl	A, #6
		jnz	code_E289
		orl	RAM_79,	#8
		jnb	RAM_2F.7, code_E277
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E27B
; ---------------------------------------------------------------------------

code_E277:
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E27B:	
		jnz	code_E283
		clr	RAM_2E.3
		mov	R2, #0
		sjmp	code_E28B
; ---------------------------------------------------------------------------

code_E283:
		setb	RAM_2E.3
		mov	R2, #1
		sjmp	code_E28B
; ---------------------------------------------------------------------------

code_E289:
		mov	R2, #12h

code_E28B:

		ret
; End of function code_E249


; =============== S U B	R O U T	I N E =======================================


code_E28C:

		mov	A, R2
		xrl	A, #12h
		jnz	code_E29A
		mov	R3, #81h
		mov	R4, #25h
		lcall	SET_RPL_ROM
		sjmp	code_E2D2
; ---------------------------------------------------------------------------

code_E29A:
		mov	A, R2
		xrl	A, #31h
		jnz	code_E2A8
		mov	R3, #81h
		mov	R4, #35h
		lcall	SET_RPL_ROM
		sjmp	code_E2D2
; ---------------------------------------------------------------------------

code_E2A8:
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		mov	A, #84h	
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #70h	
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	A, R3
		movx	@DPTR, A
		inc	DPTR
		mov	A, R2
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#7
		pop	DPSEL	
		lcall	CALC_TRT_BUF_CS

code_E2D2:

		ret
; End of function code_E28C


; =============== S U B	R O U T	I N E =======================================


code_E2D3:
		mov	A, R3
		xrl	A, #0
		jnz	code_E2DF
		anl	DEV_FLAGS, #0DFh
		mov	R2, #0
		sjmp	code_E305
; ---------------------------------------------------------------------------

code_E2DF:
		mov	A, R3
		xrl	A, #1
		jnz	code_E2E8
		mov	R2, #0
		sjmp	code_E305
; ---------------------------------------------------------------------------

code_E2E8:
		mov	A, R3
		xrl	A, #7
		jnz	code_E303
		orl	DEV_FLAGS, #20h
		jnb	RAM_2F.7, code_E2F9
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E2FD
; ---------------------------------------------------------------------------

code_E2F9:
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E2FD:
		mov	USSM, A
		mov	R2, #0
		sjmp	code_E305
; ---------------------------------------------------------------------------

code_E303:
		mov	R2, #12h

code_E305:				; CODE XREF: code_E2D3+Aj
					; code_E2D3+13j ...
		ret
; End of function code_E2D3


; =============== S U B	R O U T	I N E =======================================


code_E306:
		mov	A, R3
		xrl	A, #0
		jnz	code_E312
		anl	DEV_FLAGS, #0BFh
		mov	R2, #0
		sjmp	code_E33A
; ---------------------------------------------------------------------------

code_E312:				; CODE XREF: code_E306+3j
		mov	A, R3
		xrl	A, #1
		jnz	code_E31B
		mov	R2, #0
		sjmp	code_E33A
; ---------------------------------------------------------------------------

code_E31B:				; CODE XREF: code_E306+Fj
		mov	A, R3
		xrl	A, #7
		jnz	code_E338
		orl	DEV_FLAGS, #40h
		jnb	RAM_2F.7, code_E32C
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E330
; ---------------------------------------------------------------------------

code_E32C:				; CODE XREF: code_E306+1Dj
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E330:				; CODE XREF: code_E306+24j
		mov	DPTR, #0F849h
		movx	@DPTR, A
		mov	R2, #0
		sjmp	code_E33A
; ---------------------------------------------------------------------------

code_E338:				; CODE XREF: code_E306+18j
		mov	R2, #12h

code_E33A:				; CODE XREF: code_E306+Aj
					; code_E306+13j ...
		ret
; End of function code_E306


; =============== S U B	R O U T	I N E =======================================


code_E33B:

		mov	A, R2
		xrl	A, #12h
		jnz	code_E349
		mov	R3, #81h ; 'Б'
		mov	R4, #25h ; '%'
		lcall	SET_RPL_ROM
		sjmp	code_E38E
; ---------------------------------------------------------------------------

code_E349:				; CODE XREF: code_E33B+3j
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		mov	A, #87h	; 'З'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #70h	; 'p'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	A, R3
		movx	@DPTR, A
		inc	DPTR
		mov	A, USSM
		movx	@DPTR, A
		inc	DPTR
		mov	A, PSM
		movx	@DPTR, A
		inc	DPTR
		mov	A, RPM_XX
		cjne	A, #0FFh, code_E377
		mov	A, RPM

code_E377:				; CODE XREF: code_E33B+37j
		movx	@DPTR, A
		inc	DPTR
		pop	DPSEL		; Data Pointer Select Register
		mov	DPTR, #0F849h
		movx	A, @DPTR
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		movx	@DPTR, A
		inc	DPTR
		pop	DPSEL		; Data Pointer Select Register
		mov	RAM_51,	#0Ah
		lcall	CALC_TRT_BUF_CS

code_E38E:				; CODE XREF: code_E33B+Cj
		ret
; End of function code_E33B


; =============== S U B	R O U T	I N E =======================================


code_E38F:
		mov	A, R3
		xrl	A, #0
		jnz	code_E399
		anl	RAM_7B,	#0FBh
		sjmp	code_E39E
; ---------------------------------------------------------------------------

code_E399:
		mov	A, R3
		xrl	A, #1
		jnz	code_E3AA

code_E39E:
		mov	R2, #0
		mov	DPTR, #0F806h
		movx	A, @DPTR
		jz	code_E3DB
		mov	R2, #1
		sjmp	code_E3DB
; ---------------------------------------------------------------------------

code_E3AA:
		mov	A, R3
		xrl	A, #6
		jnz	code_E3D9
		orl	RAM_7B,	#4
		jnb	RAM_2F.7, code_E3BB
		mov	DPTR, #0F707h
		movx	A, @DPTR
		sjmp	code_E3BF
; ---------------------------------------------------------------------------

code_E3BB:
		mov	DPTR, #0F706h
		movx	A, @DPTR

code_E3BF:
		jnz	code_E3CD
		clr		A
		mov	DPTR, #0F806h
		movx	@DPTR, A
		mov	R2, #0
		sjmp	code_E3DB
; ---------------------------------------------------------------------------

code_E3CD:
		mov	A, #40h
		mov	DPTR, #0F806h
		movx	@DPTR, A
		mov	R2, #1
		sjmp	code_E3DB
; ---------------------------------------------------------------------------

code_E3D9:
		mov	R2, #12h

code_E3DB:

		ret
; End of function code_E38F


; =============== S U B	R O U T	I N E =======================================


code_E3DC:
		mov	R0, #0A8h
		mov	@R0, #0D0h
		mov	S0RELL,	@R0
		ljmp	INIT_RSV_BUF
; End of function code_E3DC

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR FMT_RPL

FMT_RPL_NEW_IDS:
		mov	A, R4
		xrl	A, #3Dh
		jnz	code_E3EF
		lcall	FMT_RPL_WMBA
		sjmp	code_E3F2
; ---------------------------------------------------------------------------

code_E3EF:
		lcall	code_D9E8

code_E3F2:
		ret
; END OF FUNCTION CHUNK	FOR code_D5EA

; =============== S U B	R O U T	I N E =======================================


code_E3F3:
		lcall	INIT_TRT_BUF
		jb	RAM_2F.5, code_E3FC
		ljmp	code_E470
; ---------------------------------------------------------------------------

code_E3FC:
		setb	RAM_2F.6
		mov	DPTR, #0F704h
		jnb	RAM_2F.7, code_E405
		inc	DPTR

code_E405:
		movx	A, @DPTR
		jnz	code_E466
		inc	DPTR
		movx	A, @DPTR
		mov	R3, A
		inc	DPTR
		movx	A, @DPTR
		mov	R4, A
		inc	DPTR
		movx	A, @DPTR
		jz	code_E45C
		cjne	A, #78h, code_E415

code_E415:
		jnc	code_E45C
		mov	R2, A
		mov	A, #80h
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, R2
		inc	A
		movx	@DPTR, A
		inc	DPTR
		mov	A, #63h
		movx	@DPTR, A
		mov	A, R2
		add	A, #5
		mov	RAM_51,	A
		mov	DPSEL, #4
		mov	DPTR, #0F605h
		mov	DPSEL, #3
		mov	DPH, R3
		mov	DPL, R4
		cjne	R3, #0F3h, code_E449

code_E449:
		jnc	code_E451
		lcall	COPY_DALLAS_HASH_RAM
		jmp	code_E454
; ---------------------------------------------------------------------------

code_E451:
		lcall	COPY_XRAM

code_E454:
		pop	DPSEL
		lcall	CALC_TRT_BUF_CS
		jmp	code_E477
; ---------------------------------------------------------------------------

code_E45C:

		mov	R3, #81h 
		mov	R4, #4Dh
		lcall	SET_RPL_ROM
		jmp	code_E477
; ---------------------------------------------------------------------------

code_E466:
		mov	R3, #81h
		mov	R4, #45h
		lcall	SET_RPL_ROM
		jmp	code_E477
; ---------------------------------------------------------------------------

code_E470:
		mov	R3, #81h 
		mov	R4, #3Dh 
		lcall	SET_RPL_ROM

code_E477:

		setb	RAM_2F.4
		ret
; End of function code_E3F3


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_WMBA:
		lcall	INIT_TRT_BUF
		jb	RAM_2F.5, code_E483
		ljmp	code_E4FC
; ---------------------------------------------------------------------------

code_E483:
		setb	RAM_2F.6
		mov	DPTR, #0F704h
		jnb	RAM_2F.7, code_E48C
		inc	DPTR

code_E48C:
		movx	A, @DPTR
		jnz	code_E4F2
		inc	DPTR
		movx	A, @DPTR
		mov	R3, A
		inc	DPTR
		movx	A, @DPTR
		mov	R4, A
		inc	DPTR
		movx	A, @DPTR
		jz	code_E4E8
		cjne	A, #70h, code_E49C

code_E49C:
		jnc	code_E4E8
		mov	R2, A
		mov	A, R4
		add	A, R2
		mov	A, R3
		addc	A, #0
		jc	code_E4E8
		inc	DPTR
		mov	R0, DPH
		mov	R1, DPL
		push	DPSEL
		mov	DPSEL, #4
		mov	DPH, R3
		mov	DPL, R4
		mov	DPSEL, #3
		mov	DPH, R0
		mov	DPL, R1	
		cjne	R3, #0F4h, code_E49D
code_E49D:
		jnc	code_E49E
		lcall	COPY_DALLAS_HASH_RAM
		jmp	code_E49F
code_E49E:
		lcall	COPY_XRAM
code_E49F:
		mov	A, #84h
		mov	DPSEL, #7
		mov	DPTR, #0F600h
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #7Dh
		movx	@DPTR, A
		inc	DPTR
		clr	A
		movx	@DPTR, A
		inc	DPTR
		mov	A, R3
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		pop	DPSEL
		mov	RAM_51,	#7
		lcall	CALC_TRT_BUF_CS
		ljmp	code_E503
; ---------------------------------------------------------------------------

code_E4E8:

		mov	R3, #81h
		mov	R4, #65h
		lcall	SET_RPL_ROM
		ljmp	code_E503
; ---------------------------------------------------------------------------

code_E4F2:
		mov	R3, #81h
		mov	R4, #5Dh
		lcall	SET_RPL_ROM
		ljmp	code_E503
; ---------------------------------------------------------------------------

code_E4FC:
		mov	R3, #81h
		mov	R4, #55h
		lcall	SET_RPL_ROM

code_E503:

		setb	RAM_2F.4
		ret
; End of function code_E47A


; =============== S U B	R O U T	I N E =======================================


COPY_DALLAS_HASH_RAM:				; CODE XREF: code_E3F3+58p
					; code_E47A+41p
		mov	B, #0		; B-Register
		mov	DPSEL, #0	; Data Pointer Select Register
		mov	DPTR, #0F6F8h

code_E50F:				; CODE XREF: code_E506+2Cj
		mov	A, #3
		mul	AB
		add	A, #0A5h ; 'е'
		mov	B, A		; B-Register
		mov	DPSEL, #0	; Data Pointer Select Register
		movx	A, @DPTR
		add	A, B		; B-Register
		mov	B, A		; B-Register
		inc	DPTR
		mov	A, DPL		; Data Pointer,	Low Byte
		jnz	code_E526
		mov	DPTR, #0F6F8h

code_E526:				; CODE XREF: code_E506+1Bj
		mov	DPSEL, #3	; Data Pointer Select Register
		movx	A, @DPTR
		inc	DPTR
		xrl	A, B		; B-Register
		mov	DPSEL, #4	; Data Pointer Select Register
		movx	@DPTR, A
		inc	DPTR
		djnz	R2, code_E50F
		ret
; End of function code_E506


; =============== S U B	R O U T	I N E =======================================


code_E535:				; CODE XREF: code_E558+5p
					; code_E558+24p ...
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		mov	A, #80h	; 'А'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		inc	DPTR
		mov	A, #61h	; 'a'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#6
		pop	DPSEL		; Data Pointer Select Register
		ret
; End of function code_E535


; =============== S U B	R O U T	I N E =======================================


FMT_RPL_RDBLI_NEW_PARAM:
		mov	A, R4
		xrl	A, #0Fh
		jnz	code_E577
		call	code_E535
		mov	R3, #0BBh ; '¬'
		mov	R4, #1Eh
		call	SET_RPL_RAM_PTR
		mov	R3, #0BBh ; '¬'
		mov	R4, #39h ; '9'
		call	SET_RPL_XRAM_PTR
		mov	R3, #0BBh ; '¬'
		mov	R4, #55h ; 'U'
		call	SET_RPL_XRAM_W_PTR
		jmp	code_E5CB
; ---------------------------------------------------------------------------

code_E577:
		mov	A, R4
		xrl	A, #0Eh
		jnz	code_E596
		call	code_E535
		mov	R3, #0BBh ; '¬'
		mov	R4, #63h ; 'c'
		call	SET_RPL_RAM_PTR
		mov	R3, #0BBh ; '¬'
		mov	R4, #6Bh ; 'k'
		call	SET_RPL_XRAM_PTR
		mov	R3, #0BBh ; '¬'
		mov	R4, #73h ; 's'
		call	SET_RPL_XRAM_W_PTR
		jmp	code_E5CB
; ---------------------------------------------------------------------------
; j7es diag request
code_E596:
		mov	A, R4
		xrl	A, #0Dh
		jnz	code_E5C3
		call	code_E535
		mov	R3, #0BBh
		mov	R4, #1Eh
		call	SET_RPL_RAM_PTR
		mov	R3, #0BBh
		mov	R4, #39h
		call	SET_RPL_XRAM_PTR
		mov	R3, #0BBh
		mov	R4, #55h
		call	SET_RPL_XRAM_W_PTR
		
		mov	R3, #0BAh
		mov	R4, #0DDh
		call	SET_RPL_XRAM_PTR
		
		mov	R3, #0BAh
		mov	R4, #0D0h
		call	SET_RPL_RAM_PTR
		
		mov	R3, #0BAh
		mov	R4, #0C0h
		call	SET_RPL_XRAM_W_PTR
		jmp	code_E5CB
; ---------------------------------------------------------------------------

code_E5C3:
		mov	R3, #81h
		mov	R4, #0Dh
		call	SET_RPL_ROM
		ret
; ---------------------------------------------------------------------------

code_E5CB:

		mov	A, RAM_51
		clr	C
		subb	A, #4
		push	DPSEL
		mov	DPSEL, #7
		mov	DPTR, #0F603h
		movx	@DPTR, A
		pop	DPSEL
		call	CALC_TRT_BUF_CS
		ret
; End of function code_E558


; =============== S U B	R O U T	I N E =======================================


PROC_MSG_IOLI_NEW_CODES:
		mov	A, R4
		xrl	A, #0Fh
		jnz	code_E5EC
		lcall	SwithToRAM
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E5EC:
		mov	A, R4
		xrl	A, #49h
		jnz	code_E5F9
		lcall	code_E688
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E5F9:
		mov	A, R4
		xrl	A, #4Ah
		jnz	code_E606
		lcall	code_E6B5
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E606:
		mov	A, R4
		xrl	A, #4Bh
		jnz	code_E613
		lcall	code_E6E2
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E613:
		mov	A, R4
		xrl	A, #4Ch
		jnz	code_E620
		lcall	code_E714
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E620:
		mov	A, R4
		xrl	A, #4Dh
		jnz	code_E62D
		lcall	code_E741
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E62D:
		mov	A, R4
		xrl	A, #4Eh
		jnz	code_E63A
		lcall	code_E76E
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E63A:
		mov	A, R4
		xrl	A, #71h
		jnz	code_E640
		lcall	PROC_MSG_IOLI_SRMCM	; set RAM capture mode
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E640:
		mov	A, R4
		xrl	A, #72h
		jnz	code_E647
		lcall	PROC_MSG_IOLI_HSP	; high speed protocol
		jc	code_E647
		ljmp	code_E64F
; ---------------------------------------------------------------------------

code_E647:

		mov	R3, #81h
		mov	R4, #25h
		lcall	SET_RPL_ROM
		ret
; ---------------------------------------------------------------------------

code_E64F:

		lcall	code_E79B
		ret
; End of function code_E5DF


; =============== S U B	R O U T	I N E =======================================


SwithToRAM:
		mov	A, R3
		jnz	code_E65B
		setb	P3.2	
		jmp	code_E660
; ---------------------------------------------------------------------------

code_E65B:
		mov	A, R3
		xrl	A, #1
		jnz	code_E66B

code_E660:
		clr	A
		mov	C, P3.2	
		cpl	C
		mov	ACC.0, C
		mov	R2, A
		clr	C
		jmp	code_E687
; ---------------------------------------------------------------------------

code_E66B:
		mov	A, R3
		xrl	A, #6
		jnz	code_E686
		mov	DPTR, #0F706h
		jnb	RAM_2F.7, code_E677
		inc	DPTR

code_E677:
		movx	A, @DPTR
		jz	code_E67C
		mov	A, #1

code_E67C:
		mov	C, ACC.0
		cpl	C
		mov	P3.2, C	
		mov	R2, A
		clr	C
		jmp	code_E687
; ---------------------------------------------------------------------------

code_E686:
		setb	C

code_E687:
	
		ret
; End of function code_E653


; =============== S U B	R O U T	I N E =======================================


code_E688:
		mov	A, R3
		jnz	code_E691
		anl	DEV_FLAGS, #0FEh
		jmp	code_E696
; ---------------------------------------------------------------------------

code_E691:
		mov	A, R3
		xrl	A, #1
		jnz	code_E69C

code_E696:
		mov	R2, ALF_2
		clr	C
		jmp	code_E6B4
; ---------------------------------------------------------------------------

code_E69C:
		mov	A, R3
		xrl	A, #7
		jnz	code_E6B3
		mov	DPTR, #0F706h
		jnb	RAM_2F.7, code_E6A8
		inc	DPTR

code_E6A8:
		movx	A, @DPTR
		orl	DEV_FLAGS, #1
		mov	ALF_2, A
		mov	R2, A
		clr	C
		jmp	code_E6B4
; ---------------------------------------------------------------------------

code_E6B3:
		setb	C

code_E6B4:

		ret
; End of function code_E688


; =============== S U B	R O U T	I N E =======================================


code_E6B5:
		mov	A, R3
		jnz	code_E6BE
		anl	DEV_FLAGS, #0FBh
		jmp	code_E6C3
; ---------------------------------------------------------------------------

code_E6BE:
		mov	A, R3
		xrl	A, #1
		jnz	code_E6C9

code_E6C3:				; CODE XREF: code_E6B5+6j
		mov	R2, UOZXX_1
		clr	C
		jmp	code_E6E1
; ---------------------------------------------------------------------------

code_E6C9:				; CODE XREF: code_E6B5+Cj
		mov	A, R3
		xrl	A, #7
		jnz	code_E6E0
		mov	DPTR, #0F706h
		jnb	RAM_2F.7, code_E6D5
		inc	DPTR

code_E6D5:				; CODE XREF: code_E6B5+1Cj
		movx	A, @DPTR
		orl	DEV_FLAGS, #4
		mov	UOZXX_1, A
		mov	R2, A
		clr	C
		jmp	code_E6E1
; ---------------------------------------------------------------------------

code_E6E0:				; CODE XREF: code_E6B5+17j
		setb	C

code_E6E1:				; CODE XREF: code_E6B5+11j
					; code_E6B5+28j
		ret
; End of function code_E6B5


; =============== S U B	R O U T	I N E =======================================


code_E6E2:
		mov	A, R3
		jnz	code_E6EB
		anl	DEV_FLAGS, #0F7h
		jmp	code_E6F0
; ---------------------------------------------------------------------------

code_E6EB:				; CODE XREF: code_E6E2+1j
		mov	A, R3
		xrl	A, #1
		jnz	code_E6F9

code_E6F0:				; CODE XREF: code_E6E2+6j
		mov	DPTR, #0F88Fh
		movx	A, @DPTR
		mov	R2, A
		clr	C
		jmp	code_E713
; ---------------------------------------------------------------------------

code_E6F9:				; CODE XREF: code_E6E2+Cj
		mov	A, R3
		xrl	A, #7
		jnz	code_E712
		mov	DPTR, #0F706h
		jnb	RAM_2F.7, code_E705
		inc	DPTR

code_E705:				; CODE XREF: code_E6E2+1Fj
		movx	A, @DPTR
		orl	DEV_FLAGS, #8
		mov	DPTR, #0F88Fh
		movx	@DPTR, A
		mov	R2, A
		clr	C
		jmp	code_E713
; ---------------------------------------------------------------------------

code_E712:				; CODE XREF: code_E6E2+1Aj
		setb	C

code_E713:				; CODE XREF: code_E6E2+14j
					; code_E6E2+2Dj
		ret
; End of function code_E6E2


; =============== S U B	R O U T	I N E =======================================


code_E714:
		mov	A, R3
		jnz	code_E71D
		anl	DEV_FLAGS, #0FDh
		jmp	code_E722
; ---------------------------------------------------------------------------

code_E71D:				; CODE XREF: code_E714+1j
		mov	A, R3
		xrl	A, #1
		jnz	code_E728

code_E722:				; CODE XREF: code_E714+6j
		mov		DPTR, #0FF47h
		movx	A, @DPTR
		mov	R2, A
		clr	C
		jmp	code_E740
; ---------------------------------------------------------------------------

code_E728:				; CODE XREF: code_E714+Cj
		mov	A, R3
		xrl	A, #7
		jnz	code_E73F
		mov	DPTR, #0F706h
		jnb	RAM_2F.7, code_E734
		inc	DPTR

code_E734:				; CODE XREF: code_E714+1Cj
		movx	A, @DPTR
		orl	DEV_FLAGS, #2
		mov		DPTR, #0FF47h
		movx	@DPTR, A
		mov	R2, A
		clr	C
		jmp	code_E740
; ---------------------------------------------------------------------------

code_E73F:				; CODE XREF: code_E714+17j
		setb	C

code_E740:				; CODE XREF: code_E714+11j
					; code_E714+28j
		ret
; End of function code_E714


; =============== S U B	R O U T	I N E =======================================


code_E741:
		mov	A, R3
		jnz	code_E74A
		anl	DEV_FLAGS, #0EFh
		jmp	code_E74F
; ---------------------------------------------------------------------------

code_E74A:				; CODE XREF: code_E741+1j
		mov	A, R3
		xrl	A, #1
		jnz	code_E755

code_E74F:				; CODE XREF: code_E741+6j
		mov	R2, RAM_6F
		clr	C
		jmp	code_E76D
; ---------------------------------------------------------------------------

code_E755:				; CODE XREF: code_E741+Cj
		mov	A, R3
		xrl	A, #7
		jnz	code_E76C
		mov	DPTR, #0F706h
		jnb	RAM_2F.7, code_E761
		inc	DPTR

code_E761:				; CODE XREF: code_E741+1Cj
		movx	A, @DPTR
		orl	DEV_FLAGS, #10h
		mov	RAM_6F,	A
		mov	R2, A
		clr	C
		jmp	code_E76D
; ---------------------------------------------------------------------------

code_E76C:				; CODE XREF: code_E741+17j
		setb	C

code_E76D:				; CODE XREF: code_E741+11j
					; code_E741+28j
		ret
; End of function code_E741


; =============== S U B	R O U T	I N E =======================================


code_E76E:
		mov	A, R3
		jnz	code_E777
		anl	DEV_FLAGS, #7Fh
		jmp	code_E77C
; ---------------------------------------------------------------------------

code_E777:				; CODE XREF: code_E76E+1j
		mov	A, R3
		xrl	A, #1
		jnz	code_E782

code_E77C:				; CODE XREF: code_E76E+6j
		mov	R2, TWAT
		clr	C
		jmp	code_E79A
; ---------------------------------------------------------------------------

code_E782:				; CODE XREF: code_E76E+Cj
		mov	A, R3
		xrl	A, #7
		jnz	code_E799
		mov	DPTR, #0F706h
		jnb	RAM_2F.7, code_E78E
		inc	DPTR

code_E78E:				; CODE XREF: code_E76E+1Cj
		movx	A, @DPTR
		orl	DEV_FLAGS, #80h
		mov	TWAT, A
		mov	R2, A
		clr	C
		jmp	code_E79A
; ---------------------------------------------------------------------------

code_E799:				; CODE XREF: code_E76E+17j
		setb	C

code_E79A:				; CODE XREF: code_E76E+11j
					; code_E76E+28j
		ret
; End of function code_E76E


; =============== S U B	R O U T	I N E =======================================


code_E79B:
		push	DPSEL		; Data Pointer Select Register
		mov	DPSEL, #7	; Data Pointer Select Register
		mov	DPTR, #0F600h
		mov	A, #84h	; 'Д'
		movx	@DPTR, A
		inc	DPTR
		mov	R0, #0A9h ; 'й'
		mov	A, @R0
		movx	@DPTR, A
		inc	DPTR
		mov	A, #10h
		movx	@DPTR, A
		inc	DPTR
		mov	A, #70h	; 'p'
		movx	@DPTR, A
		inc	DPTR
		mov	A, R4
		movx	@DPTR, A
		inc	DPTR
		mov	A, R3
		movx	@DPTR, A
		inc	DPTR
		mov	A, R2
		movx	@DPTR, A
		inc	DPTR
		mov	RAM_51,	#7
		pop	DPSEL		; Data Pointer Select Register
		lcall	CALC_TRT_BUF_CS
		ret
; End of function code_E79B


; =============== S U B	R O U T	I N E =======================================


code_E7C6:
		clr	RAM_28.3

code_E7C8:
		mov	ADCON1,	#2
		mov	ADDATL,	#0

code_E7CE:	
		jb	BSY, code_E7CE 
		mov	A, ADDATH
		mov	B, ADDATL
		jbc	RAM_28.3, code_E7C8
		push	ACC
		mov	C, B.7
		rlc	A
		mov	C, B.6
		rlc	A
		mov	DPTR, #0F5FFh
		movx	@DPTR, A
		pop	ACC
		ret
		
		;mov	B, #2
		;ljmp	READ_ADC

; End of function code_E7C6


; =============== S U B	R O U T	I N E =======================================


TestDS2401:				; CODE XREF: code_E8B3p
		orl	IP1, #80h	; Interrupt Priority Register 1
		anl	P9, #0F7h	; Port 9 (PDIR=0)
		nop
		anl	P9, #0F7h	; Port 9 (PDIR=0)
		push	ACC		; Accumulator
		mov	A, #7Eh	; '~'

code_E7F7:				; CODE XREF: code_E7E9:code_E7F7j
		djnz	ACC, code_E7F7	; Accumulator

code_E7FA:				; CODE XREF: code_E7E9:code_E7FAj
		djnz	ACC, code_E7FA	; Accumulator

code_E7FD:				; CODE XREF: code_E7E9:code_E7FDj
		djnz	ACC, code_E7FD	; Accumulator
		pop	ACC		; Accumulator
		orl	P9, #8		; Port 9 (PDIR=0)
		orl	IP1, #80h	; Interrupt Priority Register 1
		orl	P9, #8		; Port 9 (PDIR=0)
		nop
		mov	B, #16h		; B-Register

code_E80F:				; CODE XREF: code_E7E9+30j
		mov	A, P9		; Port 9 (PDIR=0)
		mov	C, ACC.3	; Accumulator
		dec	B		; B-Register
		mov	A, B		; B-Register
		jz	code_E837
		jc	code_E80F
		mov	B, #5Bh	; '['   ; B-Register

code_E81E:				; CODE XREF: code_E7E9+3Fj
		mov	A, P9		; Port 9 (PDIR=0)
		mov	C, ACC.3	; Accumulator
		dec	B		; B-Register
		mov	A, B		; B-Register
		jz	code_E836
		jnc	code_E81E
		push	ACC		; Accumulator
		mov	A, #3Eh	; '>'

code_E82E:				; CODE XREF: code_E7E9:code_E82Ej
		djnz	ACC, code_E82E	; Accumulator

code_E831:				; CODE XREF: code_E7E9:code_E831j
		djnz	ACC, code_E831	; Accumulator
		pop	ACC		; Accumulator

code_E836:				; CODE XREF: code_E7E9+3Dj
		cpl	C

code_E837:				; CODE XREF: code_E7E9+2Ej
		ret
; End of function code_E7E9


; =============== S U B	R O U T	I N E =======================================


SendDS2401Cmd:				; CODE XREF: code_E8B3+Bp
		mov	B, #8		; B-Register
		orl	IP1, #80h	; Interrupt Priority Register 1
		anl	P9, #0F7h	; Port 9 (PDIR=0)
		nop

code_E842:				; CODE XREF: code_E838+29j
		nop
		nop
		anl	P9, #0F7h	; Port 9 (PDIR=0)
		rrc	A
		nop
		nop
		jnc	code_E852
		orl	P9, #8		; Port 9 (PDIR=0)
		sjmp	code_E855
; ---------------------------------------------------------------------------

code_E852:				; CODE XREF: code_E838+12j
		anl	P9, #0F7h	; Port 9 (PDIR=0)

code_E855:				; CODE XREF: code_E838+17j
		push	ACC		; Accumulator
		mov	A, #4Eh	; 'N'

code_E859:				; CODE XREF: code_E838:code_E859j
		djnz	ACC, code_E859	; Accumulator
		pop	ACC		; Accumulator
		orl	P9, #8		; Port 9 (PDIR=0)
		djnz	B, code_E842	; B-Register
		orl	IP1, #80h	; Interrupt Priority Register 1
		orl	P9, #8		; Port 9 (PDIR=0)
		nop
		ret
; End of function code_E838


; =============== S U B	R O U T	I N E =======================================


ReadByteDS2401:				; CODE XREF: code_E8B3:code_E8C1p
		mov	B, #8		; B-Register
		mov	C, EAL	; Interrupt Enable Register 0
		mov	PSW.1, C	; Program Status Word

code_E873:				; CODE XREF: code_E86C+43j
		orl	IP1, #80h	; Interrupt Priority Register 1
		anl	P9, #0F7h	; Port 9 (PDIR=0)
		nop
		clr	EAL		; Interrupt Enable Register 0
		anl	P9, #0F7h	; Port 9 (PDIR=0)
		orl	IP1, #80h	; Interrupt Priority Register 1
		orl	P9, #8		; Port 9 (PDIR=0)
		nop
		orl	P9, #8		; Port 9 (PDIR=0)
		push	ACC		; Accumulator
		mov	A, P9		; Port 9 (PDIR=0)
		mov	C, ACC.3	; Accumulator
		pop	ACC		; Accumulator
		rrc	A
		mov	C, PSW.1	; Program Status Word
		mov	EAL,	C	; Interrupt Enable Register 0
		mov	C, ACC.7	; Accumulator
		xch	A, R1
		jnc	code_E89D
		xrl	A, #1

code_E89D:				; CODE XREF: code_E86C+2Dj
		clr	C
		jnb	ACC.0, code_E8A4 ; Accumulator
		xrl	A, #18h
		setb	C

code_E8A4:				; CODE XREF: code_E86C+32j
		rrc	A
		xch	A, R1
		push	ACC		; Accumulator
		mov	A, #4Eh	; 'N'

code_E8AA:				; CODE XREF: code_E86C:code_E8AAj
		djnz	ACC, code_E8AA	; Accumulator
		pop	ACC		; Accumulator
		djnz	B, code_E873	; B-Register
		ret
; End of function code_E86C


; =============== S U B	R O U T	I N E =======================================


ReadDS2401:				; CODE XREF: RESET_0+48p
		lcall	TestDS2401
		jc	code_E8CD
		mov	R1, #0
		mov	R2, #8
		push	DPL
		push	DPH
		mov	DPTR, #5F03h
		clr	A
		movc	A, @A+DPTR
		mov	B, #0Fh
		jnb	ACC.5, OLD_READ_CMD
		mov	B, #33h

OLD_READ_CMD:
		mov	A, B
		pop	DPH
		pop	DPL
		lcall	SendDS2401Cmd

code_E8C1:				; CODE XREF: code_E8B3+13j
		lcall	ReadByteDS2401
		movx	@DPTR, A
		inc	DPTR
		djnz	R2, code_E8C1
		mov	A, R1
		jnz	code_E8CD
		clr	C
		ret
; ---------------------------------------------------------------------------

code_E8CD:				; CODE XREF: code_E8B3+3j
					; code_E8B3+16j
		setb	C
		ret
; End of function code_E8B3


; =============== S U B	R O U T	I N E =======================================


code_E8CF:				; CODE XREF: IE0_0+D83p IE0_0+EF8p
		mov	DPTR, #0F98Ch
		movx	A, @DPTR
		mov	R2, A
		mov	B, #1		; B-Register
		lcall	READ_ADC
		mov	R1, A
		setb	RAM_28.3
		mov	DPTR, #606Bh	; Минимальное напряжение ДПДЗ |	В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		clr	C
		subb	A, B		; B-Register
		jc	code_E923
		mov	DPTR, #606Ch	; Максимальное напряжение ДПДЗ | В
		clr	A
		movc	A, @A+DPTR
		mov	B, A		; B-Register
		mov	A, R1
		clr	C
		subb	A, B		; B-Register
		jnc	code_E923
		mov	B, R1		; B-Register
		mov	DPTR, #0F827h
		movx	A, @DPTR
		xch	A, B		; B-Register
		clr	C
		subb	A, B		; B-Register
		jnc	code_E905
		clr	A

code_E905:				; CODE XREF: code_E8CF+33j
		mov	B, A		; B-Register
		mov	DPTR, #6068h	; Коэффициент тарировки	ДПДЗ | %/В
		clr	A
		movc	A, @A+DPTR
		mul	AB
		mov	A, B		; B-Register
		mov	DPTR, #0F98Ch
		movx	@DPTR, A
		mov	DPTR, #606Ah	; Максимальное положение дросселя | %
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, B		; B-Register
		jnc	code_E923
		add	A, B		; B-Register
		mov	DPTR, #0F98Ch
		movx	@DPTR, A

code_E923:				; CODE XREF: code_E8CF+19j
					; code_E8CF+26j ...
		ret
; End of function code_E8CF


; =============== S U B	R O U T	I N E =======================================


code_E924:				; CODE XREF: RESET_0-9BD8p
					; RESET_0-9BC9p
		mov	DPTR, #6EEFh	; Зона регулирования по	дросселю | Положение дросселя, % - Обороты, об/мин
		mov	A, RPM_RT_32
		movc	A, @A+DPTR
		mov	B, THR_CODE
		clr	C
		subb	A, B
		mov	RAM_2B.2, C
		ret
; End of function code_E924


; =============== S U B	R O U T	I N E =======================================


CALC_ALF:
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.1, code_E946
		
		mov	DPTR, #0F89Ah
		movx	A, @DPTR
		mov	R3, A
		mov	R2, RPM_RT
		
		; Состав смеси от оборотов и давления |	Отношение воздух/топливо - Обороты коленвала, об/мин - Абсолютное давление, кПа*10
		GET_3D_RAM_WITH_INTERPOLATION 83BAh, CAPTURE_AFR_DAD_MODE
		
		; mov	DPTR, #83BAh	; Состав смеси от оборотов и давления |	Отношение воздух/топливо - Обороты коленвала, об/мин - Абсолютное давление, кПа*10
		; lcall	GET_3D_VALUE
		ret

code_E946:
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		mov	R3, A
		mov	R2, RPM_RT
		
		; Состав смеси от оборотов и дросселя |	Отношение воздух/топливо - Обороты коленвала, об/мин - Положение дросселя,%
		GET_3D_RAM_WITH_INTERPOLATION 6953h, CAPTURE_AFR_MODE
		ret
; End of function code_E931

; =============== S U B	R O U T	I N E =======================================


code_E954:
		mov	DPTR, #5F01h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.1, code_E969
		mov	DPTR, #0F89Ah
		movx	A, @DPTR
		mov	R3, A
		mov	R2, RPM_RT
		
		; УОЗ от давления | УОЗ, гр.п.к.в. - Обороты коленвала,	об/мин - Абсолютное давление, кПа*10
		GET_3D_RAM_WITH_INTERPOLATION 6AC8h, CAPTURE_UOZ_DAD_MODE
		 
		;mov	DPTR, #6AC8h	; УОЗ от давления | УОЗ, гр.п.к.в. - Обороты коленвала,	об/мин - Абсолютное давление, кПа*10
		;lcall	GET_3D_VALUE
		sjmp	code_E971

code_E969:
		mov	DPTR, #7208h	; Таблица квантования ДПДЗ | Нормализованный код АЦП - Положение дросселя,%
		mov	A, THR_CODE
		movc	A, @A+DPTR
		mov	R3, A
		mov	R2, RPM_RT
		
		; УОЗ от дросселя | УОЗ, гр.п.к.в. - Обороты коленвала,	об/мин - Положение дросселя,%
		GET_3D_RAM_WITH_INTERPOLATION 6DC8h, CAPTURE_UOZ_MODE

code_E971:
		mov	B, A
		jb	RAM_2B.2, tcorr_uoz
		mov	A, RAM_6B
		jnz	no_corr_uoz

tcorr_uoz:
		mov	DPTR, #0F802h
		movx	A, @DPTR
		xch	A, B
		clr	C
		subb	A, B
		mov	B, A

no_corr_uoz:
		mov	UOZXX_1, B
		ret
; End of function code_E954


; =============== S U B	R O U T	I N E =======================================


code_E984:
		mov	DPTR, #5FFFh	; Состав смеси в аварийном режиме |
		clr	A
		movc	A, @A+DPTR
		mov	ALF_1, A
		jb	RAM_2B.1, code_E9A8
		mov	A, DEV_FLAGS
		anl	A, #4
		jnz	code_E9A8
		mov	DPTR, #7877h	; УОЗ при аварии ДПДЗ или ДМРВ | УОЗ, гр.п.к.в.	- Обороты коленвала, об/мин - Цикловое наполнение,мг/цикл
		mov	R2, RPM_RT
		mov	R3, GBC_RT
		lcall	GET_3D_VALUE
		mov	B, A
		mov	DPTR, #0F802h
		movx	A, @DPTR
		xch	A, B
		clr	C
		subb	A, B
		mov	UOZXX_1, A

code_E9A8:
		ret
; End of function code_E984


; =============== S U B	R O U T	I N E =======================================
RESET_0:				; CODE XREF: RESETj
		clr	EAL		; Interrupt Enable Register 0
		mov	SP, #SP_VALUE	; Stack	Pointer
		mov	SYSCON, #0      ; System Control Register
		setb	P3.2            ; Port 3 (PDIR=0)
		mov	DPTR, #6
		mov	A, #55h ; 'U'
		movx	@DPTR, A
		movx	A, @DPTR
		cjne	A, #55h, NO_OLT ; 'U'
		inc	DPTR
		mov	A, #0AAh ; 'ъ'
		movx	@DPTR, A
		movx	A, @DPTR
		cjne	A, #0AAh, NO_OLT ; 'ъ'
OLT:
		mov	A, IP0		; Interrupt Priority Register 0
		jb	ACC.6, NO_OLT ; Accumulator
		orl	P6, #1		; Port 6 (PDIR=0)
		orl	IP1, #80h	; Interrupt Priority Register 1
		mov	P3, #39h ; '9'  ; Port 3 (PDIR=0)
		orl	IP1, #80h	; Interrupt Priority Register 1
		mov	P6, #0D0h ; '¦' ; Port 6 (PDIR=0)

code_EA02:				; CODE XREF: RESET_0+3Cj
		mov	DPTR, #0

code_EA05:				; CODE XREF: RESET_0+31j
		clr	A
		movc	A, @A+DPTR
		movx	@DPTR, A
		mov	A, DPL		; Data Pointer,	Low Byte
		jnz	code_EA10
		setb	WDT		; Interrupt Enable Register 0
		setb	SWDT		; Interrupt Enable Register 1

code_EA10:				; CODE XREF: RESET_0+28j
		inc	DPTR
		mov	A, DPH		; Data Pointer,	High Byte
		cjne	A, #0F4h, code_EA05 ; 'Ї'
		mov	A, P6		; Port 6 (PDIR=0)
		jnb	ACC.0, code_EA20 ; Accumulator
		anl	P6, #0FEh	; Port 6 (PDIR=0)
		sjmp	code_EA02

code_EA20:				; CODE XREF: RESET_0+36j
		orl	P6, #1		; Port 6 (PDIR=0)
NO_OLT:
		setb	WDT		; Interrupt Enable Register 0
		setb	SWDT		; Interrupt Enable Register 1
		mov	DPTR, #5F03h
		clr	A
		movc	A, @A+DPTR
		jnb	ACC.6, READ_DALLAS_SN
		mov	DPSEL, 1
		mov	DPTR, #0F6F8h
		mov	DPSEL, 0
		mov	DPTR, #0F3F8h
		mov	B, #8
		
COPY_DALLAS_SN:
		clr	A
		movc	A, @A+DPTR
		inc	DPL
		mov	DPSEL, 1
		movx	@DPTR, A
		inc	DPL
		mov	DPSEL, 0
		djnz	B, COPY_DALLAS_SN
		sjmp	code_EA3F

READ_DALLAS_SN:
		mov	DPTR, #0F6F8h
		lcall	ReadDS2401
		setb	WDT
		setb	SWDT
		jnc	code_EA3F
		mov	DPTR, #0F6F8h
		clr	A
		mov	B, #8

code_EA3A:
		movx	@DPTR, A
		inc	DPTR
		djnz	B, code_EA3A

code_EA3F:
		ljmp	code_2483
; End of function RESET_0


; =============== S U B	R O U T	I N E =======================================


code_EA81:

		mov	R3, #8

code_EA83:
		rlc	A
		mov	P5.3, C
		setb	P5.4
		clr	P5.4
		djnz	R3, code_EA83
		ret
; End of function code_EA81


; =============== S U B	R O U T	I N E =======================================


CE_LAMP_FUNC:
		mov	DPTR, #0F878h
		movx	A, @DPTR
		mov	B, A
		
		mov	DPTR, #5EF6h	; Дельта индикации отсечки лампой CE | об./мин
		clr	A
		movc	A, @A+DPTR
		jb	ACC.7, code_EABB
		
		mov	R0, A
		
		mov	DPTR, #5EF7h	; Дельта гашения лампы CE | об./мин
		clr	A
		movc	A, @A+DPTR
		jb	ACC.7, code_EABB
		
		mov	R1, A
		
		mov	DPTR, #0F9A6h
		movx	A, @DPTR
		
		clr	C
		subb	A, R0
		mov	R2, A
		clr	C
		subb	A, RPM
		jc	code_EAEA
		
		mov	A, R2
		clr	C
		subb	A, R1
		clr	C
		subb	A, RPM
		anl	C, B.7
		jc	code_EAEA

code_EABB:

		clr	B.7
; ---------------------------------------------------------------------------

		mov	DPTR, #5EF8h	; Температура перегретого двигателя | град.С
		clr	A
		movc	A, @A+DPTR
		clr	C
		subb	A, TWAT
		jc	code_EACD
		
		mov	B, #0
		sjmp	code_EAED

code_EACD:
		mov	A, B
		anl	A, #3Fh
		jz	code_EAD9
		dec	B
		mov	C, B.6		; ???
		;setb	C
		sjmp	code_EAED
; ---------------------------------------------------------------------------

code_EAD9:
		jb	B.6, code_EAE3
		mov	B, #68h
		setb	C
		sjmp	code_EAED
; ---------------------------------------------------------------------------

code_EAE3:
		mov	B, #20h
		clr	C
		sjmp	code_EAED
; ---------------------------------------------------------------------------

code_EAEA:

		mov	B, #80h

code_EAED:

		mov	A, B
		mov	DPTR, #0F878h
		movx	@DPTR, A
		mov	RAM_2E.0, C
		ret
		
; End of function CE_LAMP_FUNC


$INCLUDE(j7es_table_gbc.asm)
$INCLUDE(j7es_dad.asm)
$INCLUDE(j7es_boost_control.asm)
$INCLUDE(j7es_ram_capture_f.asm)
$INCLUDE(j7es_funcs.asm)
$INCLUDE(j7es_hsp_f.asm)
; ---------------------------------------------------------------------------
		INIT_DB_ZERO %0F3F8h - $
		db 0, 0, 0, 0, 0, 0, 0,	0 ; Серийный номер DS2401 (8 байт)

		INIT_DB_ZERO	%0FFFFh - $ + 1
	
		
		end ;RESET
