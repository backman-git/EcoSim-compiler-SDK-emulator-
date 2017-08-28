;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Fri Jul 17 12:02:40 2015
;--------------------------------------------------------
	.module epl_acc_lis331dl
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _accRead_PARM_3
	.globl _accRead_PARM_2
	.globl _accInit
	.globl _accRead
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
_flag	=	0x0289
_ACCx	=	0x0290
_ACCy	=	0x0291
_ACCz	=	0x0292
_accRead_PARM_2:
	.ds 3
_accRead_PARM_3:
	.ds 3
_accRead_pXVal_1_12:
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
;Allocation info for local variables in function 'accInit'
;------------------------------------------------------------
;	../ACC/epl_acc_lis331dl.c:16: void accInit(void){
;	-----------------------------------------
;	 function accInit
;	-----------------------------------------
_accInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../ACC/epl_acc_lis331dl.c:19: flag=0xba;
	mov	dptr,#_flag
	mov	a,#0xBA
	movx	@dptr,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'accRead'
;------------------------------------------------------------
;pYVal                     Allocated with name '_accRead_PARM_2'
;pZVal                     Allocated with name '_accRead_PARM_3'
;pXVal                     Allocated with name '_accRead_pXVal_1_12'
;------------------------------------------------------------
;	../ACC/epl_acc_lis331dl.c:25: void accRead(int8 *pXVal, int8 *pYVal, int8 *pZVal){
;	-----------------------------------------
;	 function accRead
;	-----------------------------------------
_accRead:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_accRead_pXVal_1_12
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../ACC/epl_acc_lis331dl.c:29: *pXVal=ACCx;
	mov	dptr,#_accRead_pXVal_1_12
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ACCx
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../ACC/epl_acc_lis331dl.c:30: *pYVal=ACCy;
	mov	dptr,#_accRead_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ACCy
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../ACC/epl_acc_lis331dl.c:31: *pZVal=ACCz;
	mov	dptr,#_accRead_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ACCz
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
