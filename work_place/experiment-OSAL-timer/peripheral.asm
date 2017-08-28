;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Mon Jun 29 17:16:57 2015
;--------------------------------------------------------
	.module peripheral
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uartWriteString
	.globl _osal_memset
	.globl _osal_memcpy
	.globl _osal_set_event
	.globl _osal_start_timerEx
	.globl _MusicCtl
	.globl _FlashLed
	.globl _ServNL
	.globl _ServNH
	.globl _BleFeedback
	.globl _BleOpr
	.globl _GAP_UpdateAdvertisingData_PARM_4
	.globl _GAP_UpdateAdvertisingData_PARM_3
	.globl _GAP_UpdateAdvertisingData_PARM_2
	.globl _GAP_MakeDiscoverable_PARM_2
	.globl _GAPRole_GetParameter_PARM_2
	.globl _GAPRole_SetParameter_PARM_3
	.globl _GAPRole_SetParameter_PARM_2
	.globl _GAPRole_SetParameter
	.globl _GAPRole_GetParameter
	.globl _GAPRole_StartDevice
	.globl _GAPRole_Init
	.globl _GAPRole_ProcessEvent
	.globl _GAP_EndDiscoverable
	.globl _GAP_MakeDiscoverable
	.globl _GAP_UpdateAdvertisingData
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
_gapRole_TaskID:
	.ds 1
_gapRole_state:
	.ds 1
_gapRole_profileRole:
	.ds 1
_gapRole_IRK:
	.ds 16
_gapRole_SRK:
	.ds 16
_gapRole_signCounter:
	.ds 4
_gapRole_bdAddr:
	.ds 6
_gapRole_AdvEnabled:
	.ds 1
_gapRole_AdvertOffTime:
	.ds 2
_gapRole_AdvertDataLen:
	.ds 1
_gapRole_AdvertData:
	.ds 31
_gapRole_ScanRspDataLen:
	.ds 1
_gapRole_ScanRspData:
	.ds 31
_gapRole_AdvEventType:
	.ds 1
_gapRole_AdvDirectType:
	.ds 1
_gapRole_AdvDirectAddr:
	.ds 6
_gapRole_AdvChanMap:
	.ds 1
_gapRole_AdvFilterPolicy:
	.ds 1
_gapRole_RSSIReadRate:
	.ds 2
_pGapRoles_AppCGs:
	.ds 3
_gapRole_ConnectedDevAddr:
	.ds 6
_gapRole_ParamUpdateEnable:
	.ds 1
_gapRole_MinConnInterval:
	.ds 2
_gapRole_MaxConnInterval:
	.ds 2
_gapRole_SlaveLatency:
	.ds 2
_gapRole_TimeoutMultiplier:
	.ds 2
_gapRole_ConnInterval:
	.ds 2
_gapRole_ConnSlaveLatency:
	.ds 2
_gapRole_ConnTimeout:
	.ds 2
_ParamUpdateNoSuccessOption:
	.ds 1
_GAPRole_SetParameter_PARM_2:
	.ds 1
_GAPRole_SetParameter_PARM_3:
	.ds 3
_GAPRole_SetParameter_param_1_249:
	.ds 2
_GAPRole_SetParameter_ret_1_250:
	.ds 1
_GAPRole_SetParameter_oldAdvEnabled_3_252:
	.ds 1
_GAPRole_GetParameter_PARM_2:
	.ds 3
_GAPRole_GetParameter_param_1_258:
	.ds 2
_GAPRole_GetParameter_ret_1_259:
	.ds 1
_GAPRole_StartDevice_pAppCallbacks_1_263:
	.ds 3
_GAPRole_Init_task_id_1_268:
	.ds 1
_GAP_MakeDiscoverable_PARM_2:
	.ds 3
_GAP_UpdateAdvertisingData_PARM_2:
	.ds 1
_GAP_UpdateAdvertisingData_PARM_3:
	.ds 1
_GAP_UpdateAdvertisingData_PARM_4:
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
;	../fake_ble_stack/Profiles/Roles/peripheral.c:148: static uint8  gapRole_AdvEnabled = TRUE;
	mov	dptr,#_gapRole_AdvEnabled
	mov	a,#0x01
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:149: static uint16 gapRole_AdvertOffTime = DEFAULT_ADVERT_OFF_TIME;
	mov	dptr,#_gapRole_AdvertOffTime
	mov	a,#0xB8
	movx	@dptr,a
	mov	a,#0x0B
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:150: static uint8  gapRole_AdvertDataLen = 3;
	mov	dptr,#_gapRole_AdvertDataLen
	mov	a,#0x03
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:151: static uint8  gapRole_AdvertData[B_MAX_ADV_LEN] =
	mov	dptr,#_gapRole_AdvertData
	dec	a
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0001)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0002)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0003)
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0010)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0014)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0018)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x001c)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_gapRole_AdvertData + 0x001e)
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:159: static uint8  gapRole_ScanRspDataLen = 0;
	mov	dptr,#_gapRole_ScanRspDataLen
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:160: static uint8  gapRole_ScanRspData[B_MAX_ADV_LEN] = {0};
	mov	dptr,#_gapRole_ScanRspData
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:163: static uint8  gapRole_AdvDirectAddr[B_ADDR_LEN] = {0};
	mov	dptr,#_gapRole_AdvDirectAddr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:168: static uint16 gapRole_RSSIReadRate = 0;
	mov	dptr,#_gapRole_RSSIReadRate
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:170: static gapRolesCBs_t *pGapRoles_AppCGs = NULL;
	mov	dptr,#_pGapRoles_AppCGs
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:171: static uint8  gapRole_ConnectedDevAddr[B_ADDR_LEN] = {0};
	mov	dptr,#_gapRole_ConnectedDevAddr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:173: static uint8  gapRole_ParamUpdateEnable = FALSE;
	mov	dptr,#_gapRole_ParamUpdateEnable
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:174: static uint16 gapRole_MinConnInterval = DEFAULT_MIN_CONN_INTERVAL;
	mov	dptr,#_gapRole_MinConnInterval
	mov	a,#0x06
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:175: static uint16 gapRole_MaxConnInterval = DEFAULT_MAX_CONN_INTERVAL;
	mov	dptr,#_gapRole_MaxConnInterval
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0x0C
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:176: static uint16 gapRole_SlaveLatency = MIN_SLAVE_LATENCY;
	mov	dptr,#_gapRole_SlaveLatency
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:177: static uint16 gapRole_TimeoutMultiplier = DEFAULT_TIMEOUT_MULTIPLIER;
	mov	dptr,#_gapRole_TimeoutMultiplier
	mov	a,#0xE8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:179: static uint16 gapRole_ConnInterval = 0;
	mov	dptr,#_gapRole_ConnInterval
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:180: static uint16 gapRole_ConnSlaveLatency = 0;
	mov	dptr,#_gapRole_ConnSlaveLatency
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:181: static uint16 gapRole_ConnTimeout = 0;
	mov	dptr,#_gapRole_ConnTimeout
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:183: static uint8 ParamUpdateNoSuccessOption = GAPROLE_NO_ACTION;
	mov	dptr,#_ParamUpdateNoSuccessOption
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
;Allocation info for local variables in function 'GAPRole_SetParameter'
;------------------------------------------------------------
;len                       Allocated with name '_GAPRole_SetParameter_PARM_2'
;pValue                    Allocated with name '_GAPRole_SetParameter_PARM_3'
;param                     Allocated with name '_GAPRole_SetParameter_param_1_249'
;ret                       Allocated with name '_GAPRole_SetParameter_ret_1_250'
;oldAdvEnabled             Allocated with name '_GAPRole_SetParameter_oldAdvEnabled_3_252'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:214: bStatus_t GAPRole_SetParameter( uint16 param, uint8 len, void *pValue )
;	-----------------------------------------
;	 function GAPRole_SetParameter
;	-----------------------------------------
_GAPRole_SetParameter:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_GAPRole_SetParameter_param_1_249
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:216: bStatus_t ret = SUCCESS;
	mov	dptr,#_GAPRole_SetParameter_ret_1_250
	mov	a,#0x00
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:217: switch ( param )
	mov	dptr,#_GAPRole_SetParameter_param_1_249
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x05,00149$
	cjne	r7,#0x03,00149$
	sjmp	00150$
00149$:
	ljmp	00118$
00150$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:258: if ( len == sizeof( uint8 ) )
	mov	dptr,#_GAPRole_SetParameter_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00151$
	sjmp	00152$
00151$:
	ljmp	00116$
00152$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:260: uint8 oldAdvEnabled = gapRole_AdvEnabled;
	mov	dptr,#_gapRole_AdvEnabled
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
	mov	a,r7
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:261: gapRole_AdvEnabled = *((uint8*)pValue);
	mov	dptr,#_GAPRole_SetParameter_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_gapRole_AdvEnabled
	mov	a,r5
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:263: if ( (oldAdvEnabled) && (gapRole_AdvEnabled == FALSE) )
	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	jnz	00153$
	ljmp	00112$
00153$:
	mov	dptr,#_gapRole_AdvEnabled
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	jz	00154$
	ljmp	00112$
00154$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:266: if ( gapRole_state == GAPROLE_ADVERTISING )
	mov	dptr,#_gapRole_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00155$
	sjmp	00156$
00155$:
	ljmp	00119$
00156$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:268: VOID GAP_EndDiscoverable( gapRole_TaskID );
	mov	dptr,#_gapRole_TaskID
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r7
	lcall	_GAP_EndDiscoverable
	ljmp	00119$
00112$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:271: else if ( (oldAdvEnabled == FALSE) && (gapRole_AdvEnabled) )
	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	jz	00157$
	ljmp	00119$
00157$:
	mov	dptr,#_gapRole_AdvEnabled
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	jnz	00158$
	ljmp	00119$
00158$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:274: if ( (gapRole_state == GAPROLE_STARTED)
	mov	dptr,#_gapRole_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00159$
	ljmp	00104$
00159$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:275: || (gapRole_state == GAPROLE_WAITING)
	mov	dptr,#_gapRole_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00160$
	ljmp	00104$
00160$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:276: || (gapRole_state == GAPROLE_WAITING_AFTER_TIMEOUT) )
	mov	dptr,#_gapRole_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00161$
	sjmp	00162$
00161$:
	ljmp	00119$
00162$:
00104$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:278: VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
	mov	dptr,#_gapRole_TaskID
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_set_event_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_set_event
	ljmp	00119$
00116$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:284: ret = bleInvalidRange;
	mov	dptr,#_GAPRole_SetParameter_ret_1_250
	mov	a,#0x18
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:286: break;
	ljmp	00119$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:490: default:
00118$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:492: ret = INVALIDPARAMETER;
	mov	dptr,#_GAPRole_SetParameter_ret_1_250
	mov	a,#0x02
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:495: }
00119$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:497: return ( ret );
	mov	dptr,#_GAPRole_SetParameter_ret_1_250
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r7
00120$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAPRole_GetParameter'
;------------------------------------------------------------
;pValue                    Allocated with name '_GAPRole_GetParameter_PARM_2'
;param                     Allocated with name '_GAPRole_GetParameter_param_1_258'
;ret                       Allocated with name '_GAPRole_GetParameter_ret_1_259'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:505: bStatus_t GAPRole_GetParameter( uint16 param, void *pValue )
;	-----------------------------------------
;	 function GAPRole_GetParameter
;	-----------------------------------------
_GAPRole_GetParameter:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_GAPRole_GetParameter_param_1_258
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:507: bStatus_t ret = SUCCESS;
	mov	dptr,#_GAPRole_GetParameter_ret_1_259
	mov	a,#0x00
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:508: switch ( param )
	mov	dptr,#_GAPRole_GetParameter_param_1_258
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r7
	subb	a,#0x03
	jnc	00142$
	ljmp	00126$
00142$:
	clr	c
	mov	a,#0x18
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00143$
	ljmp	00126$
00143$:
	mov	a,r6
	add	a,#(00144$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00145$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00144$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00117$
	.db	00118$
	.db	00119$
	.db	00120$
	.db	00121$
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00125$
00145$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00118$>>8
	.db	00119$>>8
	.db	00120$>>8
	.db	00121$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
;	../fake_ble_stack/Profiles/Roles/peripheral.c:510: case GAPROLE_PROFILEROLE:
00101$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:511: *((uint8*)pValue) = gapRole_profileRole;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_profileRole
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:512: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:514: case GAPROLE_IRK:
00102$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:515: VOID osal_memcpy( pValue, gapRole_IRK, KEYLEN ) ;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,#_gapRole_IRK
	movx	@dptr,a
	mov	a,#(_gapRole_IRK >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memcpy
;	../fake_ble_stack/Profiles/Roles/peripheral.c:516: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:518: case GAPROLE_SRK:
00103$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:519: VOID osal_memcpy( pValue, gapRole_SRK, KEYLEN ) ;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,#_gapRole_SRK
	movx	@dptr,a
	mov	a,#(_gapRole_SRK >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memcpy
;	../fake_ble_stack/Profiles/Roles/peripheral.c:520: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:522: case GAPROLE_SIGNCOUNTER:
00104$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:523: *((uint32*)pValue) = gapRole_signCounter;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_signCounter
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:524: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:526: case GAPROLE_BD_ADDR:
00105$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:527: VOID osal_memcpy( pValue, gapRole_bdAddr, B_ADDR_LEN ) ;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,#_gapRole_bdAddr
	movx	@dptr,a
	mov	a,#(_gapRole_bdAddr >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memcpy
;	../fake_ble_stack/Profiles/Roles/peripheral.c:528: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:530: case GAPROLE_ADVERT_ENABLED:
00106$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:531: *((uint8*)pValue) = gapRole_AdvEnabled;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_AdvEnabled
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:532: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:534: case GAPROLE_ADVERT_OFF_TIME:
00107$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:535: *((uint16*)pValue) = gapRole_AdvertOffTime;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_AdvertOffTime
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:536: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:538: case GAPROLE_ADVERT_DATA:
00108$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:539: VOID osal_memcpy( pValue , gapRole_AdvertData, gapRole_AdvertDataLen );
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_AdvertDataLen
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,#_gapRole_AdvertData
	movx	@dptr,a
	mov	a,#(_gapRole_AdvertData >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memcpy
;	../fake_ble_stack/Profiles/Roles/peripheral.c:540: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:542: case GAPROLE_SCAN_RSP_DATA:
00109$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:543: VOID osal_memcpy( pValue, gapRole_ScanRspData, gapRole_ScanRspDataLen ) ;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_ScanRspDataLen
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,#_gapRole_ScanRspData
	movx	@dptr,a
	mov	a,#(_gapRole_ScanRspData >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memcpy
;	../fake_ble_stack/Profiles/Roles/peripheral.c:544: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:546: case GAPROLE_ADV_EVENT_TYPE:
00110$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:547: *((uint8*)pValue) = gapRole_AdvEventType;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_AdvEventType
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:548: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:550: case GAPROLE_ADV_DIRECT_TYPE:
00111$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:551: *((uint8*)pValue) = gapRole_AdvDirectType;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_AdvDirectType
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:552: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:554: case GAPROLE_ADV_DIRECT_ADDR:
00112$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:555: VOID osal_memcpy( pValue, gapRole_AdvDirectAddr, B_ADDR_LEN ) ;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,#_gapRole_AdvDirectAddr
	movx	@dptr,a
	mov	a,#(_gapRole_AdvDirectAddr >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memcpy
;	../fake_ble_stack/Profiles/Roles/peripheral.c:556: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:558: case GAPROLE_ADV_CHANNEL_MAP:
00113$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:559: *((uint8*)pValue) = gapRole_AdvChanMap;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_AdvChanMap
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:560: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:562: case GAPROLE_ADV_FILTER_POLICY:
00114$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:563: *((uint8*)pValue) = gapRole_AdvFilterPolicy;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_AdvFilterPolicy
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:564: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:566: case GAPROLE_CONNHANDLE:
00115$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:569: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:571: case GAPROLE_RSSI_READ_RATE:
00116$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:572: *((uint16*)pValue) = gapRole_RSSIReadRate;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_RSSIReadRate
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:573: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:575: case GAPROLE_PARAM_UPDATE_ENABLE:
00117$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:576: *((uint16*)pValue) = gapRole_ParamUpdateEnable;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_ParamUpdateEnable
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:577: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:579: case GAPROLE_MIN_CONN_INTERVAL:
00118$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:580: *((uint16*)pValue) = gapRole_MinConnInterval;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_MinConnInterval
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:581: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:583: case GAPROLE_MAX_CONN_INTERVAL:
00119$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:584: *((uint16*)pValue) = gapRole_MaxConnInterval;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_MaxConnInterval
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:585: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:587: case GAPROLE_SLAVE_LATENCY:
00120$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:588: *((uint16*)pValue) = gapRole_SlaveLatency;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_SlaveLatency
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:589: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:591: case GAPROLE_TIMEOUT_MULTIPLIER:
00121$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:592: *((uint16*)pValue) = gapRole_TimeoutMultiplier;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_TimeoutMultiplier
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:593: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:595: case GAPROLE_CONN_BD_ADDR:
00122$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:596: VOID osal_memcpy( pValue, gapRole_ConnectedDevAddr, B_ADDR_LEN ) ;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,#_gapRole_ConnectedDevAddr
	movx	@dptr,a
	mov	a,#(_gapRole_ConnectedDevAddr >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memcpy
;	../fake_ble_stack/Profiles/Roles/peripheral.c:597: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:599: case GAPROLE_CONN_INTERVAL:
00123$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:600: *((uint16*)pValue) = gapRole_ConnInterval;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_ConnInterval
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:601: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:603: case GAPROLE_CONN_LATENCY:
00124$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:604: *((uint16*)pValue) = gapRole_ConnSlaveLatency;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_ConnSlaveLatency
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:605: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:607: case GAPROLE_CONN_TIMEOUT:
00125$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:608: *((uint16*)pValue) = gapRole_ConnTimeout;
	mov	dptr,#_GAPRole_GetParameter_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_ConnTimeout
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../fake_ble_stack/Profiles/Roles/peripheral.c:609: break;
	ljmp	00130$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:611: default:
00126$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:613: if ( param < TGAP_PARAMID_MAX )
	mov	dptr,#_GAPRole_GetParameter_param_1_258
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x24
	mov	a,r7
	subb	a,#0x00
	jnc	00146$
	ljmp	00130$
00146$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:619: ret = INVALIDPARAMETER;
	mov	dptr,#_GAPRole_GetParameter_ret_1_259
	mov	a,#0x02
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:622: }
00130$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:624: return ( ret );
	mov	dptr,#_GAPRole_GetParameter_ret_1_259
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r7
00131$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAPRole_StartDevice'
;------------------------------------------------------------
;pAppCallbacks             Allocated with name '_GAPRole_StartDevice_pAppCallbacks_1_263'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:632: bStatus_t GAPRole_StartDevice( gapRolesCBs_t *pAppCallbacks )
;	-----------------------------------------
;	 function GAPRole_StartDevice
;	-----------------------------------------
_GAPRole_StartDevice:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:636: if ( gapRole_state == GAPROLE_INIT )
	mov	dptr,#_gapRole_state
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	jz	00114$
	ljmp	00104$
00114$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:639: if ( pAppCallbacks )
	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00115$
	ljmp	00102$
00115$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:641: pGapRoles_AppCGs = pAppCallbacks;
	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pGapRoles_AppCGs
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:645: gapRole_SetupGAP();
	lcall	_gapRole_SetupGAP
;	../fake_ble_stack/Profiles/Roles/peripheral.c:647: return ( SUCCESS );
	mov	dpl,#0x00
	ljmp	00106$
00104$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:651: return ( bleAlreadyInRequestedMode );
	mov	dpl,#0x11
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAPRole_Init'
;------------------------------------------------------------
;task_id                   Allocated with name '_GAPRole_Init_task_id_1_268'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:683: void GAPRole_Init( uint8 task_id )
;	-----------------------------------------
;	 function GAPRole_Init
;	-----------------------------------------
_GAPRole_Init:
	mov	a,dpl
	mov	dptr,#_GAPRole_Init_task_id_1_268
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:685: gapRole_TaskID = task_id;
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gapRole_TaskID
	mov	a,r7
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:687: gapRole_state = GAPROLE_INIT;
	mov	dptr,#_gapRole_state
	mov	a,#0x00
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:693: gapRole_profileRole = GAP_PROFILE_PERIPHERAL;
	mov	dptr,#_gapRole_profileRole
	mov	a,#0x04
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:694: VOID osal_memset( gapRole_IRK, 0, KEYLEN );
	mov	dptr,#_osal_memset_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#_osal_memset_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,#_gapRole_IRK
	mov	dph,#(_gapRole_IRK >> 8)
	mov	b,#0x00
	lcall	_osal_memset
;	../fake_ble_stack/Profiles/Roles/peripheral.c:695: VOID osal_memset( gapRole_SRK, 0, KEYLEN );
	mov	dptr,#_osal_memset_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#_osal_memset_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,#_gapRole_SRK
	mov	dph,#(_gapRole_SRK >> 8)
	mov	b,#0x00
	lcall	_osal_memset
;	../fake_ble_stack/Profiles/Roles/peripheral.c:696: gapRole_signCounter = 0;
	mov	dptr,#_gapRole_signCounter
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:697: gapRole_AdvEventType = GAP_ADTYPE_ADV_IND;
	mov	dptr,#_gapRole_AdvEventType
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:698: gapRole_AdvDirectType = ADDRTYPE_PUBLIC;
	mov	dptr,#_gapRole_AdvDirectType
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:699: gapRole_AdvChanMap = GAP_ADVCHAN_ALL;
	mov	dptr,#_gapRole_AdvChanMap
	mov	a,#0x07
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:700: gapRole_AdvFilterPolicy = GAP_FILTER_POLICY_ALL;
	mov	dptr,#_gapRole_AdvFilterPolicy
	mov	a,#0x00
	movx	@dptr,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAPRole_ProcessEvent'
;------------------------------------------------------------
;events                    Allocated to stack - _bp -4
;task_id                   Allocated to registers 
;params                    Allocated to stack - _bp +1
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:710: uint16 GAPRole_ProcessEvent( uint8 task_id, uint16 events )__reentrant
;	-----------------------------------------
;	 function GAPRole_ProcessEvent
;	-----------------------------------------
_GAPRole_ProcessEvent:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x0A
	mov	sp,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:716: if ( events & START_ADVERTISING_EVT )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jb	acc.0,00138$
	ljmp	00109$
00138$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:718: if ( gapRole_AdvEnabled )
	mov	dptr,#_gapRole_AdvEnabled
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	jnz	00139$
	ljmp	00107$
00139$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:723: params.eventType = gapRole_AdvEventType;
	mov	r1,_bp
	inc	r1
	mov	dptr,#_gapRole_AdvEventType
	movx	a,@dptr
	mov	r7,a
	mov	@r1,ar7
;	../fake_ble_stack/Profiles/Roles/peripheral.c:724: params.initiatorAddrType = gapRole_AdvDirectType;
	mov	r7,_bp
	inc	r7
	mov	a,r7
	inc	a
	mov	r1,a
	mov	dptr,#_gapRole_AdvDirectType
	movx	a,@dptr
	mov	r6,a
	mov	@r1,ar6
;	../fake_ble_stack/Profiles/Roles/peripheral.c:725: VOID osal_memcpy( params.initiatorAddr, gapRole_AdvDirectAddr, B_ADDR_LEN );
	mov	a,#0x02
	add	a,r7
	mov	r6,a
	mov	r5,#0x00
	mov	r4,#0x40
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,#_gapRole_AdvDirectAddr
	movx	@dptr,a
	mov	a,#(_gapRole_AdvDirectAddr >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	push	ar7
	lcall	_osal_memcpy
	pop	ar7
;	../fake_ble_stack/Profiles/Roles/peripheral.c:726: params.channelMap = gapRole_AdvChanMap;
	mov	a,#0x08
	add	a,r7
	mov	r1,a
	mov	dptr,#_gapRole_AdvChanMap
	movx	a,@dptr
	mov	r6,a
	mov	@r1,ar6
;	../fake_ble_stack/Profiles/Roles/peripheral.c:727: params.filterPolicy = gapRole_AdvFilterPolicy;
	mov	a,#0x09
	add	a,r7
	mov	r1,a
	mov	dptr,#_gapRole_AdvFilterPolicy
	movx	a,@dptr
	mov	r6,a
	mov	@r1,ar6
;	../fake_ble_stack/Profiles/Roles/peripheral.c:729: if ( GAP_MakeDiscoverable( gapRole_TaskID, &params ) != SUCCESS )
	mov	dptr,#_gapRole_TaskID
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_GAP_MakeDiscoverable_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	lcall	_GAP_MakeDiscoverable
	mov	a,dpl
	jnz	00140$
	ljmp	00107$
00140$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:731: gapRole_state = GAPROLE_ERROR;
	mov	dptr,#_gapRole_state
	mov	a,#0x06
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:732: if ( pGapRoles_AppCGs && pGapRoles_AppCGs->pfnStateChange )
	mov	dptr,#_pGapRoles_AppCGs
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00141$
	ljmp	00107$
00141$:
	mov	dptr,#_pGapRoles_AppCGs
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r5
	orl	a,r6
	jnz	00142$
	ljmp	00107$
00142$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:734: pGapRoles_AppCGs->pfnStateChange( gapRole_state );
	mov	dptr,#_pGapRoles_AppCGs
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_gapRole_state
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar5
	lcall	00143$
	ljmp	00144$
00143$:
	push	ar5
	push	ar6
	mov	dpl,r7
	ret
00144$:
	pop	ar5
	pop	ar6
00107$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:738: return ( events ^ START_ADVERTISING_EVT );
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
	ljmp	00115$
00109$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:776: if(events & CHECK_BLE_STACK){
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jb	acc.3,00145$
	ljmp	00114$
00145$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:779: if(CHECK_TIME && BleChecker() == false){
	lcall	_BleChecker
	mov	a,dpl
	jz	00146$
	ljmp	00111$
00146$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:782: uartWriteString("GAP ble ckecker====\r\n");
	mov	dpl,#___str_0
	mov	dph,#(___str_0 >> 8)
	mov	b,#0x80
	lcall	_uartWriteString
;	../fake_ble_stack/Profiles/Roles/peripheral.c:784: osal_start_timerEx( gapRole_TaskID, CHECK_BLE_STACK, CHECK_TIME );
	mov	dptr,#_gapRole_TaskID
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_start_timerEx_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_start_timerEx_PARM_3
	mov	a,#0x2C
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_start_timerEx
00111$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:793: return ( events ^ CHECK_BLE_STACK );    
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x08
	xrl	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	ljmp	00115$
00114$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:803: return 0;
	mov	dpl,#0x00
	mov	dph,#0x00
00115$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BleChecker'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1111: static bool BleChecker(void){
;	-----------------------------------------
;	 function BleChecker
;	-----------------------------------------
_BleChecker:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1115: switch(BleFeedback){
	mov	r7,_BleFeedback
	cjne	r7,#0x01,00113$
	ljmp	00101$
00113$:
	cjne	r7,#0x02,00114$
	ljmp	00102$
00114$:
	ljmp	00103$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1118: case BleStart:
00101$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1120: gapRole_state = GAPROLE_STARTED;
	mov	dptr,#_gapRole_state
	mov	a,#0x01
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1121: osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
	mov	dptr,#_gapRole_TaskID
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_set_event_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_set_event
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1122: BleOpr=BleOptClean;
	mov	_BleOpr,#0x00
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1123: BleFeedback=BleOptClean;
	mov	_BleFeedback,#0x00
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1125: break;
	ljmp	00104$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1127: case BleAdv:
00102$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1129: gapRole_state = GAPROLE_ADVERTISING;
	mov	dptr,#_gapRole_state
	mov	a,#0x02
	movx	@dptr,a
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1130: BleOpr=BleOptClean;
	mov	_BleOpr,#0x00
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1131: BleFeedback=BleOptClean;
	mov	_BleFeedback,#0x00
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1133: break ;
	ljmp	00104$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1136: default:
00103$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1138: return false;
	mov	dpl,#0x00
	ljmp	00105$
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1147: }
00104$:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1157: pGapRoles_AppCGs->pfnStateChange( gapRole_state );
	mov	dptr,#_pGapRoles_AppCGs
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_gapRole_state
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar5
	lcall	00115$
	ljmp	00116$
00115$:
	push	ar5
	push	ar6
	mov	dpl,r7
	ret
00116$:
	pop	ar5
	pop	ar6
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1158: return true;
	mov	dpl,#0x01
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gapRole_SetupGAP'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1177: static void gapRole_SetupGAP( void )
;	-----------------------------------------
;	 function gapRole_SetupGAP
;	-----------------------------------------
_gapRole_SetupGAP:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1180: BleOpr = BleStart;
	mov	_BleOpr,#0x01
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1182: osal_set_event( gapRole_TaskID, CHECK_BLE_STACK);
	mov	dptr,#_gapRole_TaskID
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_set_event_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_set_event
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAP_EndDiscoverable'
;------------------------------------------------------------
;taskID                    Allocated with name '_GAP_EndDiscoverable_taskID_1_283'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1193: Status_t GAP_EndDiscoverable( uint8 taskID ){
;	-----------------------------------------
;	 function GAP_EndDiscoverable
;	-----------------------------------------
_GAP_EndDiscoverable:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1196: return SUCCESS;
	mov	dpl,#0x00
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAP_MakeDiscoverable'
;------------------------------------------------------------
;pParams                   Allocated with name '_GAP_MakeDiscoverable_PARM_2'
;taskID                    Allocated with name '_GAP_MakeDiscoverable_taskID_1_285'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1204: bStatus_t GAP_MakeDiscoverable( uint8 taskID, gapAdvertisingParams_t *pParams ){
;	-----------------------------------------
;	 function GAP_MakeDiscoverable
;	-----------------------------------------
_GAP_MakeDiscoverable:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1206: BleOpr = BleAdv;
	mov	_BleOpr,#0x02
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1208: osal_set_event( gapRole_TaskID, CHECK_BLE_STACK);  
	mov	dptr,#_gapRole_TaskID
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_set_event_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_set_event
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1214: return SUCCESS;
	mov	dpl,#0x00
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GAP_UpdateAdvertisingData'
;------------------------------------------------------------
;adType                    Allocated with name '_GAP_UpdateAdvertisingData_PARM_2'
;dataLen                   Allocated with name '_GAP_UpdateAdvertisingData_PARM_3'
;pAdvertData               Allocated with name '_GAP_UpdateAdvertisingData_PARM_4'
;taskID                    Allocated with name '_GAP_UpdateAdvertisingData_taskID_1_287'
;------------------------------------------------------------
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1216: bStatus_t GAP_UpdateAdvertisingData( uint8 taskID, uint8 adType,
;	-----------------------------------------
;	 function GAP_UpdateAdvertisingData
;	-----------------------------------------
_GAP_UpdateAdvertisingData:
;	../fake_ble_stack/Profiles/Roles/peripheral.c:1220: return SUCCESS;
	mov	dpl,#0x00
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "GAP ble ckecker===="
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area CABS    (ABS,CODE)
