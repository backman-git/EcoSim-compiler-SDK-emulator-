;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Fri Jul 17 12:02:41 2015
;--------------------------------------------------------
	.module gapbondmgr
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GAPBondMgr_ProcessEvent
	.globl _GAPBondMgr_Init
	.globl _GAPBondMgr_SetParameter
	.globl _GAPBondMgr_ProcessEvent_PARM_2
	.globl _GAPBondMgr_SetParameter_PARM_3
	.globl _GAPBondMgr_SetParameter_PARM_2
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
_GAPBondMgr_SetParameter_PARM_2:
	.ds 1
_GAPBondMgr_SetParameter_PARM_3:
	.ds 3
_GAPBondMgr_ProcessEvent_PARM_2:
	.ds 2
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
;Allocation info for local variables in function 'GAPBondMgr_SetParameter'
;------------------------------------------------------------
;len                       Allocated with name '_GAPBondMgr_SetParameter_PARM_2'
;pValue                    Allocated with name '_GAPBondMgr_SetParameter_PARM_3'
;param                     Allocated with name '_GAPBondMgr_SetParameter_param_1_1'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/gapbondmgr.c:4: bStatus_t GAPBondMgr_SetParameter( uint16 param, uint8 len, void *pValue ){;}
;	-----------------------------------------
;	 function GAPBondMgr_SetParameter
;	-----------------------------------------
_GAPBondMgr_SetParameter:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAPBondMgr_Init'
;------------------------------------------------------------
;task_id                   Allocated with name '_GAPBondMgr_Init_task_id_1_3'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/gapbondmgr.c:6: void GAPBondMgr_Init( uint8 task_id ){;}
;	-----------------------------------------
;	 function GAPBondMgr_Init
;	-----------------------------------------
_GAPBondMgr_Init:
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAPBondMgr_ProcessEvent'
;------------------------------------------------------------
;events                    Allocated with name '_GAPBondMgr_ProcessEvent_PARM_2'
;task_id                   Allocated with name '_GAPBondMgr_ProcessEvent_task_id_1_5'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/gapbondmgr.c:9: uint16 GAPBondMgr_ProcessEvent( uint8 task_id, uint16 events ){;}
;	-----------------------------------------
;	 function GAPBondMgr_ProcessEvent
;	-----------------------------------------
_GAPBondMgr_ProcessEvent:
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
