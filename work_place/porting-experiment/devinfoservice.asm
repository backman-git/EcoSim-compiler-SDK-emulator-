;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Fri Jul 17 12:02:41 2015
;--------------------------------------------------------
	.module devinfoservice
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DevInfo_AddService
	.globl _DevInfo_SetParameter
	.globl _DevInfo_SetParameter_PARM_3
	.globl _DevInfo_SetParameter_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_DevInfo_SetParameter_PARM_2:
	.ds 2
_DevInfo_SetParameter_PARM_3:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'DevInfo_SetParameter'
;------------------------------------------------------------
;b                         Allocated with name '_DevInfo_SetParameter_PARM_2'
;id                        Allocated with name '_DevInfo_SetParameter_PARM_3'
;a                         Allocated with name '_DevInfo_SetParameter_a_1_1'
;------------------------------------------------------------
;	../EcoSim-head/devinfoservice.c:3: void DevInfo_SetParameter(int a,int b,uint8* id){
;	-----------------------------------------
;	 function DevInfo_SetParameter
;	-----------------------------------------
_DevInfo_SetParameter:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../EcoSim-head/devinfoservice.c:7: }
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DevInfo_AddService'
;------------------------------------------------------------
;	../EcoSim-head/devinfoservice.c:9: void DevInfo_AddService(void){
;	-----------------------------------------
;	 function DevInfo_AddService
;	-----------------------------------------
_DevInfo_AddService:
;	../EcoSim-head/devinfoservice.c:14: }
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
