;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Mon Jun 29 17:16:57 2015
;--------------------------------------------------------
	.module gattservapp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _osal_set_event
	.globl _osal_start_timerEx
	.globl _MusicCtl
	.globl _FlashLed
	.globl _ServNL
	.globl _ServNH
	.globl _BleFeedback
	.globl _BleOpr
	.globl _GATTServApp_RegisterService_PARM_3
	.globl _GATTServApp_RegisterService_PARM_2
	.globl _GATTServApp_Init
	.globl _GATTServApp_ProcessEvent
	.globl _GATTServApp_RegisterService
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_BleOpr	=	0x00aa
_BleFeedback	=	0x008e
_ServNH	=	0x00b0
_ServNL	=	0x00b7
_FlashLed	=	0x00c0
_MusicCtl	=	0x00c2
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
_performPeriodicTask_sloc0_1_0:
	.ds 2
_performPeriodicTask_sloc1_1_0:
	.ds 2
_performPeriodicTask_sloc2_1_0:
	.ds 2
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
_ServicesTable	=	0x0000
_ServiceN:
	.ds 2
_connHandle	=	0x0065
_uuidAddr	=	0x0067
_pLen	=	0x0071
_offset	=	0x0072
_pValue	=	0x0074
_TaskID:
	.ds 1
_GATTServApp_Init_taskId_1_218:
	.ds 1
_performPeriodicTask_ptr_1_225:
	.ds 2
_performPeriodicTask_pAttr_1_225:
	.ds 3
_performPeriodicTask_i_1_225:
	.ds 1
_performPeriodicTask_j_1_225:
	.ds 1
_performPeriodicTask_found_1_225:
	.ds 1
_GATTServApp_RegisterService_PARM_2:
	.ds 2
_GATTServApp_RegisterService_PARM_3:
	.ds 3
_GATTServApp_RegisterService_pAttrs_1_235:
	.ds 3
_GATTServApp_RegisterService_idx_1_236:
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
;	../fake_ble_stack/ble/include/gattservapp.c:32: static int ServiceN=0;
	mov	dptr,#_ServiceN
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
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
;Allocation info for local variables in function 'GATTServApp_Init'
;------------------------------------------------------------
;taskId                    Allocated with name '_GATTServApp_Init_taskId_1_218'
;------------------------------------------------------------
;	../fake_ble_stack/ble/include/gattservapp.c:78: void GATTServApp_Init( uint8 taskId ){
;	-----------------------------------------
;	 function GATTServApp_Init
;	-----------------------------------------
_GATTServApp_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_GATTServApp_Init_taskId_1_218
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:81: TaskID=taskId;
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_TaskID
	mov	a,r7
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:85: ServiceN=0;
	mov	dptr,#_ServiceN
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:88: osal_set_event( TaskID, periodic_event );
	mov	dptr,#_osal_set_event_PARM_2
	inc	a
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_set_event
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GATTServApp_ProcessEvent'
;------------------------------------------------------------
;events                    Allocated to stack - _bp -4
;taskId                    Allocated to registers 
;------------------------------------------------------------
;	../fake_ble_stack/ble/include/gattservapp.c:97: uint16 GATTServApp_ProcessEvent( uint8 taskId, uint16 events )__reentrant{
;	-----------------------------------------
;	 function GATTServApp_ProcessEvent
;	-----------------------------------------
_GATTServApp_ProcessEvent:
	push	_bp
	mov	_bp,sp
;	../fake_ble_stack/ble/include/gattservapp.c:100: if( events & periodic_event ){
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jb	acc.0,00110$
	ljmp	00104$
00110$:
;	../fake_ble_stack/ble/include/gattservapp.c:109: __endasm;
	clr c
;	../fake_ble_stack/ble/include/gattservapp.c:111: osal_start_timerEx( TaskID, periodic_event, PERIODIC_EVT_PERIOD );
	mov	dptr,#_TaskID
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_start_timerEx_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_start_timerEx_PARM_3
	mov	a,#0x64
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_start_timerEx
;	../fake_ble_stack/ble/include/gattservapp.c:116: performPeriodicTask();
	lcall	_performPeriodicTask
;	../fake_ble_stack/ble/include/gattservapp.c:123: return( events ^ periodic_event);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x01
	xrl	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	ljmp	00105$
00104$:
;	../fake_ble_stack/ble/include/gattservapp.c:128: return 0;
	mov	dpl,#0x00
	mov	dph,#0x00
00105$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'performPeriodicTask'
;------------------------------------------------------------
;sloc0                     Allocated with name '_performPeriodicTask_sloc0_1_0'
;sloc1                     Allocated with name '_performPeriodicTask_sloc1_1_0'
;sloc2                     Allocated with name '_performPeriodicTask_sloc2_1_0'
;TlbPtr                    Allocated with name '_performPeriodicTask_TlbPtr_1_225'
;ptr                       Allocated with name '_performPeriodicTask_ptr_1_225'
;pAttr                     Allocated with name '_performPeriodicTask_pAttr_1_225'
;sIdx                      Allocated with name '_performPeriodicTask_sIdx_1_225'
;i                         Allocated with name '_performPeriodicTask_i_1_225'
;j                         Allocated with name '_performPeriodicTask_j_1_225'
;found                     Allocated with name '_performPeriodicTask_found_1_225'
;------------------------------------------------------------
;	../fake_ble_stack/ble/include/gattservapp.c:135: static void performPeriodicTask( void ){
;	-----------------------------------------
;	 function performPeriodicTask
;	-----------------------------------------
_performPeriodicTask:
;	../fake_ble_stack/ble/include/gattservapp.c:139: __code uint16* ptr=uuidAddr;
	mov	dptr,#_uuidAddr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_performPeriodicTask_ptr_1_225
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:143: uint8 i=0;
	mov	dptr,#_performPeriodicTask_i_1_225
	mov	a,#0x00
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:145: bool found=false;
	mov	dptr,#_performPeriodicTask_found_1_225
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:154: switch(BleFeedback){
	mov	r7,_BleFeedback
	cjne	r7,#0x03,00193$
	ljmp	00101$
00193$:
	cjne	r7,#0x04,00194$
	ljmp	00146$
00194$:
	cjne	r7,#0x05,00195$
	ljmp	00153$
00195$:
	ljmp	00136$
;	../fake_ble_stack/ble/include/gattservapp.c:157: case 0x03:
00101$:
;	../fake_ble_stack/ble/include/gattservapp.c:160: BleFeedback=0x00;
	mov	_BleFeedback,#0x00
;	../fake_ble_stack/ble/include/gattservapp.c:161: BleOpr=0x00;
	mov	_BleOpr,#0x00
;	../fake_ble_stack/ble/include/gattservapp.c:165: break;
	ljmp	00136$
;	../fake_ble_stack/ble/include/gattservapp.c:168: case 0x04:
00146$:
	mov	dptr,#_performPeriodicTask_ptr_1_225
	movx	a,@dptr
	mov	_performPeriodicTask_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_performPeriodicTask_sloc0_1_0 + 1),a
	mov	dptr,#_performPeriodicTask_i_1_225
	movx	a,@dptr
	mov	r5,a
00129$:
;	../fake_ble_stack/ble/include/gattservapp.c:179: for(;i<ServiceN; i++){
	mov	dptr,#_ServiceN
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar1,r5
	mov	r2,#0x00
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00196$
	ljmp	00110$
00196$:
;	../fake_ble_stack/ble/include/gattservapp.c:180: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
	mov	dptr,#_performPeriodicTask_j_1_225
	mov	a,#0x00
	movx	@dptr,a
	mov	a,r5
	mov	b,#0x06
	mul	ab
	mov	r3,a
	mov	r4,b
	movx	a,@dptr
	mov	r2,a
00126$:
;	../fake_ble_stack/ble/include/gattservapp.c:183: pAttr = &((ServicesTable[i].service)[j]);
	push	ar5
	mov	dpl,r3
	mov	a,#(_ServicesTable >> 8)
	add	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	mov	b,#0x0A
	mul	ab
	add	a,r0
	mov	r0,a
	mov	a,r1
	addc	a,b
	mov	r1,a
	mov	dptr,#_performPeriodicTask_pAttr_1_225
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:199: if(   *(uint16*)(pAttr->type).uuid == *ptr ){
	inc	r0
	cjne	r0,#0x00,00197$
	inc	r1
00197$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,_performPeriodicTask_sloc0_1_0
	mov	dph,(_performPeriodicTask_sloc0_1_0 + 1)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r0
	cjne	a,ar5,00198$
	mov	a,r1
	cjne	a,ar7,00198$
	sjmp	00199$
00198$:
	pop	ar5
	ljmp	00104$
00199$:
	pop	ar5
;	../fake_ble_stack/ble/include/gattservapp.c:210: found=true;	
	push	ar5
	mov	dptr,#_performPeriodicTask_found_1_225
	mov	a,#0x01
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:211: ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
	mov	ar6,r3
	mov	a,#(_ServicesTable >> 8)
	add	a,r4
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_offset
	movx	a,@dptr
	mov	_performPeriodicTask_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_performPeriodicTask_sloc1_1_0 + 1),a
	mov	dptr,#_connHandle
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	mov	a,#0x34
	push	acc
	push	_performPeriodicTask_sloc1_1_0
	push	(_performPeriodicTask_sloc1_1_0 + 1)
	mov	a,#_pLen
	push	acc
	mov	a,#(_pLen >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#_pValue
	push	acc
	mov	a,#(_pValue >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	mov	dptr,#_performPeriodicTask_pAttr_1_225
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	lcall	00200$
	ljmp	00201$
00200$:
	push	ar1
	push	ar6
	mov	dpl,r5
	mov	dph,r7
	ret
00201$:
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	../fake_ble_stack/ble/include/gattservapp.c:293: }
	pop	ar5
;	../fake_ble_stack/ble/include/gattservapp.c:211: ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
00104$:
;	../fake_ble_stack/ble/include/gattservapp.c:214: if(found==true)
	mov	dptr,#_performPeriodicTask_found_1_225
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00202$
	ljmp	00107$
00202$:
;	../fake_ble_stack/ble/include/gattservapp.c:180: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
	inc	r2
	cjne	r2,#0x04,00203$
00203$:
	jnc	00204$
	ljmp	00126$
00204$:
00107$:
;	../fake_ble_stack/ble/include/gattservapp.c:219: if(found==true)
	mov	dptr,#_performPeriodicTask_found_1_225
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00205$
	ljmp	00110$
00205$:
;	../fake_ble_stack/ble/include/gattservapp.c:179: for(;i<ServiceN; i++){
	inc	r5
	ljmp	00129$
00110$:
;	../fake_ble_stack/ble/include/gattservapp.c:226: if(found==true){
	mov	dptr,#_performPeriodicTask_found_1_225
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00206$
	sjmp	00207$
00206$:
	ljmp	00136$
00207$:
;	../fake_ble_stack/ble/include/gattservapp.c:227: BleOpr=0x04;
	mov	_BleOpr,#0x04
;	../fake_ble_stack/ble/include/gattservapp.c:240: break;
	ljmp	00136$
;	../fake_ble_stack/ble/include/gattservapp.c:243: case 5:
00153$:
	mov	dptr,#_performPeriodicTask_ptr_1_225
	movx	a,@dptr
	mov	_performPeriodicTask_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_performPeriodicTask_sloc1_1_0 + 1),a
	mov	dptr,#_performPeriodicTask_i_1_225
	movx	a,@dptr
	mov	r5,a
00134$:
;	../fake_ble_stack/ble/include/gattservapp.c:247: for(;i<ServiceN; i++){
	mov	dptr,#_ServiceN
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar1,r5
	mov	r2,#0x00
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00208$
	ljmp	00121$
00208$:
;	../fake_ble_stack/ble/include/gattservapp.c:248: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
	mov	dptr,#_performPeriodicTask_j_1_225
	mov	a,#0x00
	movx	@dptr,a
	mov	a,r5
	mov	b,#0x06
	mul	ab
	mov	r3,a
	mov	r4,b
	movx	a,@dptr
	mov	r2,a
00131$:
;	../fake_ble_stack/ble/include/gattservapp.c:251: pAttr = &((ServicesTable[i].service)[j]);
	push	ar5
	mov	dpl,r3
	mov	a,#(_ServicesTable >> 8)
	add	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	mov	b,#0x0A
	mul	ab
	add	a,r0
	mov	r0,a
	mov	a,r1
	addc	a,b
	mov	r1,a
	mov	dptr,#_performPeriodicTask_pAttr_1_225
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:253: if(   *(uint16*)(pAttr->type).uuid == *ptr ){
	inc	r0
	cjne	r0,#0x00,00209$
	inc	r1
00209$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,_performPeriodicTask_sloc1_1_0
	mov	dph,(_performPeriodicTask_sloc1_1_0 + 1)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r0
	cjne	a,ar5,00210$
	mov	a,r1
	cjne	a,ar7,00210$
	sjmp	00211$
00210$:
	pop	ar5
	ljmp	00115$
00211$:
	pop	ar5
;	../fake_ble_stack/ble/include/gattservapp.c:256: found=true;	
	push	ar5
	mov	dptr,#_performPeriodicTask_found_1_225
	mov	a,#0x01
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:259: ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);
	mov	ar6,r3
	mov	a,#(_ServicesTable >> 8)
	add	a,r4
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r1
	mov	r1,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_offset
	movx	a,@dptr
	mov	_performPeriodicTask_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_performPeriodicTask_sloc2_1_0 + 1),a
	mov	dptr,#_pLen
	movx	a,@dptr
	mov	_performPeriodicTask_sloc0_1_0,a
	mov	dptr,#_connHandle
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	_performPeriodicTask_sloc2_1_0
	push	(_performPeriodicTask_sloc2_1_0 + 1)
	push	_performPeriodicTask_sloc0_1_0
	mov	a,#_pValue
	push	acc
	mov	a,#(_pValue >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	mov	dptr,#_performPeriodicTask_pAttr_1_225
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	lcall	00212$
	ljmp	00213$
00212$:
	push	ar1
	push	ar6
	mov	dpl,r5
	mov	dph,r7
	ret
00213$:
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	../fake_ble_stack/ble/include/gattservapp.c:293: }
	pop	ar5
;	../fake_ble_stack/ble/include/gattservapp.c:259: ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);
00115$:
;	../fake_ble_stack/ble/include/gattservapp.c:263: if(found==true)
	mov	dptr,#_performPeriodicTask_found_1_225
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00214$
	ljmp	00118$
00214$:
;	../fake_ble_stack/ble/include/gattservapp.c:248: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
	inc	r2
	cjne	r2,#0x04,00215$
00215$:
	jnc	00216$
	ljmp	00131$
00216$:
00118$:
;	../fake_ble_stack/ble/include/gattservapp.c:268: if(found==true)
	mov	dptr,#_performPeriodicTask_found_1_225
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00217$
	ljmp	00121$
00217$:
;	../fake_ble_stack/ble/include/gattservapp.c:247: for(;i<ServiceN; i++){
	inc	r5
	ljmp	00134$
00121$:
;	../fake_ble_stack/ble/include/gattservapp.c:275: if(found==true){
	mov	dptr,#_performPeriodicTask_found_1_225
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00218$
	sjmp	00219$
00218$:
	ljmp	00136$
00219$:
;	../fake_ble_stack/ble/include/gattservapp.c:276: BleOpr=0x05;
	mov	_BleOpr,#0x05
;	../fake_ble_stack/ble/include/gattservapp.c:293: }
00136$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GATTServApp_RegisterService'
;------------------------------------------------------------
;numAttrs                  Allocated with name '_GATTServApp_RegisterService_PARM_2'
;pServiceCBs               Allocated with name '_GATTServApp_RegisterService_PARM_3'
;pAttrs                    Allocated with name '_GATTServApp_RegisterService_pAttrs_1_235'
;idx                       Allocated with name '_GATTServApp_RegisterService_idx_1_236'
;------------------------------------------------------------
;	../fake_ble_stack/ble/include/gattservapp.c:317: bStatus_t GATTServApp_RegisterService( gattAttribute_t *pAttrs, uint16 numAttrs,CONST gattServiceCBs_t *pServiceCBs ){
;	-----------------------------------------
;	 function GATTServApp_RegisterService
;	-----------------------------------------
_GATTServApp_RegisterService:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_GATTServApp_RegisterService_pAttrs_1_235
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:319: int idx=ServiceN;
	mov	dptr,#_ServiceN
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_GATTServApp_RegisterService_idx_1_236
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:321: if(ServiceN == maxServiceN )
	cjne	r6,#0x0A,00108$
	cjne	r7,#0x00,00108$
	sjmp	00109$
00108$:
	ljmp	00102$
00109$:
;	../fake_ble_stack/ble/include/gattservapp.c:322: return false;
	mov	dpl,#0x00
	ljmp	00103$
00102$:
;	../fake_ble_stack/ble/include/gattservapp.c:329: ServicesTable[idx].service=pAttrs;
	mov	dptr,#_GATTServApp_RegisterService_idx_1_236
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	mov	dph,#0x00
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	ar4,r6
	mov	a,#(_ServicesTable >> 8)
	add	a,r7
	mov	r5,a
	mov	dptr,#_GATTServApp_RegisterService_pAttrs_1_235
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:330: ServicesTable[idx].CBs=pServiceCBs;
	mov	a,#(_ServicesTable >> 8)
	add	a,r7
	mov	r7,a
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	mov	a,#0x00
	addc	a,r7
	mov	r7,a
	mov	dptr,#_GATTServApp_RegisterService_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:336: BleOpr=0x03;
	mov	_BleOpr,#0x03
;	../fake_ble_stack/ble/include/gattservapp.c:337: ServNH= (ServiceN>>8);
	mov	dptr,#_ServiceN
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_ServNH,r7
;	../fake_ble_stack/ble/include/gattservapp.c:338: ServNL=ServiceN;
	mov	_ServNL,r6
;	../fake_ble_stack/ble/include/gattservapp.c:341: ServiceN++;
	mov	dptr,#_ServiceN
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	mov	a,#0x00
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/include/gattservapp.c:343: return true;
	mov	dpl,#0x01
00103$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
