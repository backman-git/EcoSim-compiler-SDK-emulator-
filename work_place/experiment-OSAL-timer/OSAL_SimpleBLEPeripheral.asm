;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Mon Jun 29 17:16:57 2015
;--------------------------------------------------------
	.module OSAL_SimpleBLEPeripheral
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tasksCnt
	.globl _tasksArr
	.globl _Task1_Init
	.globl _SimpleBLEPeripheral_Init
	.globl _GAPRole_Init
	.globl _GATTServApp_Init
	.globl _osal_memset
	.globl _osal_mem_alloc
	.globl _tasksEvents
	.globl _osalInitTasks
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
_tasksEvents::
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
;Allocation info for local variables in function 'osalInitTasks'
;------------------------------------------------------------
;taskID                    Allocated with name '_osalInitTasks_taskID_1_227'
;------------------------------------------------------------
;	./Source/OSAL_SimpleBLEPeripheral.c:139: void osalInitTasks( void )
;	-----------------------------------------
;	 function osalInitTasks
;	-----------------------------------------
_osalInitTasks:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./Source/OSAL_SimpleBLEPeripheral.c:143: tasksEvents = (uint16 *)osal_mem_alloc( sizeof( uint16 ) * tasksCnt);
	mov	dptr,#_tasksCnt
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r7
	mov	b,#0x02
	mul	ab
	mov	r7,a
	mov	r6,b
	mov	dpl,r7
	mov	dph,r6
	lcall	_osal_mem_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_tasksEvents
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./Source/OSAL_SimpleBLEPeripheral.c:144: osal_memset( tasksEvents, 0, (sizeof( uint16 ) * tasksCnt));
	mov	dptr,#_tasksCnt
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r4
	mov	b,#0x02
	mul	ab
	mov	r4,a
	mov	r3,b
	mov	dptr,#_osal_memset_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#_osal_memset_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memset
;	./Source/OSAL_SimpleBLEPeripheral.c:146: GAPRole_Init( taskID++ );
	mov	dpl,#0x00
	lcall	_GAPRole_Init
;	./Source/OSAL_SimpleBLEPeripheral.c:147: GATTServApp_Init( taskID++ );
	mov	dpl,#0x01
	lcall	_GATTServApp_Init
;	./Source/OSAL_SimpleBLEPeripheral.c:148: SimpleBLEPeripheral_Init(taskID++);
	mov	dpl,#0x02
	lcall	_SimpleBLEPeripheral_Init
;	./Source/OSAL_SimpleBLEPeripheral.c:149: Task1_Init(taskID++);
	mov	dpl,#0x03
	lcall	_Task1_Init
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_tasksArr:
	.byte _GAPRole_ProcessEvent,(_GAPRole_ProcessEvent >> 8)
	.byte _GATTServApp_ProcessEvent,(_GATTServApp_ProcessEvent >> 8)
	.byte _SimpleBLEPeripheral_ProcessEvent,(_SimpleBLEPeripheral_ProcessEvent >> 8)
	.byte _Task1_ProcessEvent,(_Task1_ProcessEvent >> 8)
	.byte _Task2_ProcessEvent,(_Task2_ProcessEvent >> 8)
_tasksCnt:
	.db #0x05	; 5
	.area CABS    (ABS,CODE)
