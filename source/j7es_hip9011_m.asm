; -------------------------------------------------------------------------
READ_CURRENT_KNOCK_ADC MACRO

	cjne	A, #6, exit_rck
	setb	RAM_28.3
	mov	ADCON1, #7
	mov	ADDATL, #0

loop_rck:

	jb	ADCON0.4, loop_rck
	
	mov	A, ADDATH
	subb	A, BASE_KNOCK		; Естественный шум
	jnc	save_ck
	clr	A

save_ck:

	mov	KNOCK_LO, A
	mov	KNOCK_HI, #0
	
	mov	A, R7
	
exit_rck:

ENDM

; -------------------------------------------------------------------------
HIP9011_INIT MACRO

		mov	DPTR, #5F9Ch	; Начальный номер точки настройки фильтра
		clr	A
		movc	A, @A+DPTR
		mov	DPTR, #0F82Ah
		movx	@DPTR, A

		clr	P1.5
		mov	A, #41h		; Prescaler/SO terminal status
		nop
		nop
		nop
		mov	B, A
		HIP9011_SPI_PROG_AND_SLEEP
		
		clr	P1.5
		mov	DPTR, #5F9Ch	; Начальный номер точки настройки фильтра
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		HIP9011_SPI_PROG_AND_SLEEP
		
		clr	P1.5
		mov	DPTR, #5F9Fh	; Test/Channel Select Control
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		HIP9011_SPI_PROG_AND_SLEEP
		
		clr	P1.5
		mov	DPTR, #5F9Dh	; Начальная точка переключения аттенюатора
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		HIP9011_SPI_PROG_AND_SLEEP
		
		clr	P1.5
		mov	DPTR, #5F9Eh	; Integrator Time Constant
		clr	A
		movc	A, @A+DPTR
		setb	ACC.2
		mov	B, A
		HIP9011_SPI_PROG
		lcall	HIP9011_SPI_SLEEP
		setb	P1.5
				
		
		mov	ADCON1,	#7
		mov	ADDATL,	#0

HIP_I_1:
		jb	ADCON0.4, HIP_I_1
		
		mov	A, ADDATH
		cjne	A, #7, HIP_I_2
HIP_I_2:
		jc	HIP_I_3
		mov	A, #7

HIP_I_3:
		mov	BASE_KNOCK, A
		
		lcall	HIP9011_SPI_SLEEP
		
		clr	P1.5
		mov	DPTR, #5F9Eh
		clr	A
		movc	A, @A+DPTR
		mov	B, A
		HIP9011_SPI_PROG
		lcall	HIP9011_SPI_SLEEP
		setb	P1.5
		lcall	HIP9011_SPI_SLEEP
		clr	P1.5
ENDM

; -------------------------------------------------------------------------
HIP9011_SPI_PROG MACRO
		
		lcall	HIP9011_SPI_SEND_CMD_2
		
		;clr	P1.7
		;lcall	HIP9011_SPI_SEND_CMD
		;setb	P1.7
ENDM

; -------------------------------------------------------------------------
HIP9011_SPI_PROG_AND_SLEEP MACRO

		HIP9011_SPI_PROG
		lcall	HIP9011_SPI_SLEEP
		setb	P1.5
		lcall	HIP9011_SPI_SLEEP
		
ENDM