SP_VALUE			equ		0C3h			; �����⥫� �� �⥪

;���ᠭ�� ������ ����⠭�

;�����
PART_FLAGS_ADDR			equ		5F00h			; �������⥫�� 䫠�� ��������樨
SOFT_FLAGS_ADDR			equ		5F01h			; �������⥫�� 䫠�� ��������樨

	;���
DAD_SLOPE_ADDR			equ		6098h			; ������ ��� +
DAD_OFFSET_ADDR			equ		609Ah			; ���饭�� ��� +
DAD_MIN_ADDR			equ		5EF2h			; ������ ����⮢���� ��� +
DAD_RANGE_ADDR			equ		5EF4h			; �������� ����⮢���� ��� +
DAD_KGBC_ADDR			equ		9294h			; ���ࠢ�� 横������ ���������� �� ���ᥫ� ��� ��� +
DAD_ADC_MIN			equ		5EF0h			; �������쭮� ����殮��� ��� �������⨪� ��� +
DAD_ADC_MAX			equ		5EF1h			; ���ᨬ��쭮� ����殮��� ��� �������⨪� ��� +
DAD_FILTER_XX_ADDR		equ		5F09h			; �����樥�� 䨫��� GBC ��� ��� �� +
DAD_FILTER_ADDR			equ		5F08h			; �����樥�� 䨫��� GBC ��� ��� ࠡ�祣� ०��� + 
DAD_ADC_ERR_COUNT		equ		0F99Eh			; ���-�� 横��� �������⨪� ��� �� ���⠢����� �訡�� (20)

DAD_VALUE_LO			equ		47h			; �������� lo
DAD_VALUE_HI			equ		48h			; �������� hi
TINJ_BASE_CORR			equ		4Fh			; ��砫쭠� ���४�� �६��� ����᪠
PRESSURE			equ		0F89Ah			; ���祭�� �������� �� ���
DAD_EMUL_ADDR			equ		0A1B1h			; ������ �������� �� �⪠�� ��� +

FCHARGE_ADDR			equ		6613h			; �����樥�� ������ �롮� ⥬������� ���鸞 +
FCHARGE_TWAT_CONVERT_ADDR 	equ		84E1h			; ������ ��� ��� ������ ����鸞 +
FCHARGE_TWAT			equ		0F87Bh			; �����⠭��� ��� ��� ������ ����鸞
TCHARGE				equ		0F99Bh			; ⥬������ ���鸞
TCHARGE_FIN			equ		0F99Ah			; ����鸞 ��᫥ ��� ���४権
TCHARGE_FCORR			equ		0F979h			; �����樥�� ���४樨 ����鸞
FCHARGE_FCORR_ADDR		equ		8C27h			; ���४������ �㭪�� ��� ����鸞 +
CYL_VOLUME_ADDR			equ		60ADh			; 樫���஢� ��ꥬ �����⥫� +
FCHARGE_GBC_VALUE_ADDR		equ		0F99Ch			; GBC ���⠭��� �� �������� � ����鸞

;����稩 ०�� 

;���

UOZ_BASE_ADDR			equ		6DC8h			; ������ ���
UOZ_PRESSURE_ADDR		equ		6AC8h			; ��� �� ��������
DUOZ				equ		0FAA7h			; ���४�� ��� �� ��⮭�樨

;���⠢ ᬥ�

ALF_BASE_ADDR			equ		6953h			; ������ ��⠢ ᬥ�
ALF_PRESSURE_ADDR		equ		83BAh			; ���⠢ ᬥ� �� ��������
ALF_XX_ADDR			equ		87E4h
		
;���㫨஢���� �� ��

LAMBDA_THR_LINE_ADDR		equ		6EEFh		; ���� ॣ㫨஢���� �� �� (��魮�⭮� ०��)

;���稪� � ��堭����

THR_MAP_ADDR			equ		7208h		; ������ ����⮢���� ���� X - ��������� ���ᥫ�,% F - ��ଠ��������� ��� ���_
THR_CURRENT			equ		0F98Ch		; ����饥 ��������� ���ᥫ�
SPARK_TIME_CALIBR_ADDR		equ		9194h		; �६� ���������� ��� ����� ��������� � ����୮-��ࠫ���쭮� ०���
SPD_IMP_COUNT_ADDR		equ		5F63h		; ��᫮ �����ᮢ ���


FUEL_CUTOFF_RPM			equ		0F9A6h		; ������ �����஢�� ����᪠
CE_FUNC_STATE			equ		0F878h		; ���. �㭪樨 ����� CE
CE_RPM1_ADDR			equ		5EF6h		; ����� ������樨 ���窨 ������ CE
CE_RPM2_ADDR			equ		5EF7h		; ����� ��襭�� ����� CE
CE_TWAT_ERROR_ADDR		equ		5EF8h		; ���祭�� ��ॣ�⮣� �����⥫�

TAIR_VALUE			equ		0F93Bh		; ��������� ������


;===========================  ���� =============================
LAUNCH_SPEED_ADDR		equ		6075h		; ᪮���� �室� � ०�� ����
FUEL_LAUNCH_CUTOFF_RPM_ADDR	equ		7AA7h		;������ �����஢�� ����᪠ ��	���� X - �६� � ��砫� �������� F - ������,	��/���
FUEL_LAUNCH_CUTOFF_RPM		equ		0F9B7h		;������ �����஢�� ����᪠ ��	����
