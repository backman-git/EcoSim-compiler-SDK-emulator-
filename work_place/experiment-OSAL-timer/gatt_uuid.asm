;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Mon Jun 29 17:16:57 2015
;--------------------------------------------------------
	.module gatt_uuid
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _reportRefUUID
	.globl _extReportRefUUID
	.globl _validRangeUUID
	.globl _manuAddrUUID
	.globl _serialNumUUID
	.globl _manuNameUUID
	.globl _serviceChangedUUID
	.globl _periConnParamUUID
	.globl _reconnectAddrUUID
	.globl _periPrivacyFlagUUID
	.globl _appearanceUUID
	.globl _deviceNameUUID
	.globl _charAggFormatUUID
	.globl _charFormatUUID
	.globl _servCharCfgUUID
	.globl _clientCharCfgUUID
	.globl _charUserDescUUID
	.globl _charExtPropsUUID
	.globl _characterUUID
	.globl _includeUUID
	.globl _secondaryServiceUUID
	.globl _primaryServiceUUID
	.globl _addressServiceUUID
	.globl _manufactServiceUUID
	.globl _gattServiceUUID
	.globl _gapServiceUUID
	.globl _GATT_FindUUIDRec_PARM_2
	.globl _GATT_FindUUIDRec
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
_GATT_FindUUIDRec_PARM_2:
	.ds 1
_GATT_FindUUIDRec_pUUID_1_185:
	.ds 3
_GATT_FindUUIDRec_pRec_1_186:
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
;Allocation info for local variables in function 'GATT_FindUUIDRec'
;------------------------------------------------------------
;len                       Allocated with name '_GATT_FindUUIDRec_PARM_2'
;pUUID                     Allocated with name '_GATT_FindUUIDRec_pUUID_1_185'
;pRec                      Allocated with name '_GATT_FindUUIDRec_pRec_1_186'
;uuid                      Allocated with name '_GATT_FindUUIDRec_uuid_2_187'
;------------------------------------------------------------
;	../fake_ble_stack/ble/host/gatt_uuid.c:261: const uint8 *GATT_FindUUIDRec( uint8 *pUUID, uint8 len )
;	-----------------------------------------
;	 function GATT_FindUUIDRec
;	-----------------------------------------
_GATT_FindUUIDRec:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_GATT_FindUUIDRec_pUUID_1_185
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:263: const uint8 *pRec = NULL;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:265: if ( len == ATT_BT_UUID_SIZE )
	mov	dptr,#_GATT_FindUUIDRec_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00195$
	sjmp	00196$
00195$:
	ljmp	00126$
00196$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:268: uint16 uuid = BUILD_UINT16( pUUID[0], pUUID[1] );
	mov	dptr,#_GATT_FindUUIDRec_pUUID_1_185
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
	mov	r4,a
	mov	r3,#0x00
	inc	r5
	cjne	r5,#0x00,00197$
	inc	r6
00197$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	ar7,r5
	mov	r5,#0x00
	mov	a,r5
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:269: switch ( uuid )
	mov	ar6,r4
	mov	ar7,r3
	cjne	r4,#0x00,00198$
	cjne	r3,#0x18,00198$
	ljmp	00101$
00198$:
	cjne	r6,#0x01,00199$
	cjne	r7,#0x18,00199$
	ljmp	00102$
00199$:
	cjne	r6,#0x00,00200$
	cjne	r7,#0x28,00200$
	ljmp	00103$
00200$:
	cjne	r6,#0x01,00201$
	cjne	r7,#0x28,00201$
	ljmp	00104$
00201$:
	cjne	r6,#0x02,00202$
	cjne	r7,#0x28,00202$
	ljmp	00105$
00202$:
	cjne	r6,#0x03,00203$
	cjne	r7,#0x28,00203$
	ljmp	00106$
00203$:
	cjne	r6,#0x00,00204$
	cjne	r7,#0x29,00204$
	ljmp	00107$
00204$:
	cjne	r6,#0x01,00205$
	cjne	r7,#0x29,00205$
	ljmp	00108$
00205$:
	cjne	r6,#0x02,00206$
	cjne	r7,#0x29,00206$
	ljmp	00109$
00206$:
	cjne	r6,#0x03,00207$
	cjne	r7,#0x29,00207$
	ljmp	00110$
00207$:
	cjne	r6,#0x04,00208$
	cjne	r7,#0x29,00208$
	ljmp	00111$
00208$:
	cjne	r6,#0x05,00209$
	cjne	r7,#0x29,00209$
	ljmp	00112$
00209$:
	cjne	r6,#0x06,00210$
	cjne	r7,#0x29,00210$
	ljmp	00113$
00210$:
	cjne	r6,#0x07,00211$
	cjne	r7,#0x29,00211$
	ljmp	00114$
00211$:
	cjne	r6,#0x08,00212$
	cjne	r7,#0x29,00212$
	ljmp	00115$
00212$:
	cjne	r6,#0x00,00213$
	cjne	r7,#0x2A,00213$
	ljmp	00116$
00213$:
	cjne	r6,#0x01,00214$
	cjne	r7,#0x2A,00214$
	ljmp	00117$
00214$:
	cjne	r6,#0x02,00215$
	cjne	r7,#0x2A,00215$
	ljmp	00119$
00215$:
	cjne	r6,#0x03,00216$
	cjne	r7,#0x2A,00216$
	ljmp	00118$
00216$:
	cjne	r6,#0x04,00217$
	cjne	r7,#0x2A,00217$
	ljmp	00120$
00217$:
	cjne	r6,#0x05,00218$
	cjne	r7,#0x2A,00218$
	ljmp	00121$
00218$:
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:273: case GAP_SERVICE_UUID:
00101$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:274: pRec = gapServiceUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_gapServiceUUID
	movx	@dptr,a
	mov	a,#(_gapServiceUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:275: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:277: case GATT_SERVICE_UUID:
00102$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:278: pRec = gattServiceUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_gattServiceUUID
	movx	@dptr,a
	mov	a,#(_gattServiceUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:279: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:283: case GATT_PRIMARY_SERVICE_UUID:
00103$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:284: pRec = primaryServiceUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_primaryServiceUUID
	movx	@dptr,a
	mov	a,#(_primaryServiceUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:285: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:287: case GATT_SECONDARY_SERVICE_UUID:
00104$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:288: pRec = secondaryServiceUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_secondaryServiceUUID
	movx	@dptr,a
	mov	a,#(_secondaryServiceUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:289: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:291: case GATT_INCLUDE_UUID:
00105$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:292: pRec = includeUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_includeUUID
	movx	@dptr,a
	mov	a,#(_includeUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:293: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:295: case GATT_CHARACTER_UUID:
00106$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:296: pRec = characterUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_characterUUID
	movx	@dptr,a
	mov	a,#(_characterUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:297: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:301: case GATT_CHAR_EXT_PROPS_UUID:
00107$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:302: pRec = charExtPropsUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_charExtPropsUUID
	movx	@dptr,a
	mov	a,#(_charExtPropsUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:303: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:305: case GATT_CHAR_USER_DESC_UUID:
00108$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:306: pRec = charUserDescUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_charUserDescUUID
	movx	@dptr,a
	mov	a,#(_charUserDescUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:307: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:309: case GATT_CLIENT_CHAR_CFG_UUID:
00109$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:310: pRec = clientCharCfgUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_clientCharCfgUUID
	movx	@dptr,a
	mov	a,#(_clientCharCfgUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:311: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:313: case GATT_SERV_CHAR_CFG_UUID:
00110$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:314: pRec = servCharCfgUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_servCharCfgUUID
	movx	@dptr,a
	mov	a,#(_servCharCfgUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:315: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:317: case GATT_CHAR_FORMAT_UUID:
00111$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:318: pRec = charFormatUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_charFormatUUID
	movx	@dptr,a
	mov	a,#(_charFormatUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:319: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:321: case GATT_CHAR_AGG_FORMAT_UUID:
00112$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:322: pRec = charAggFormatUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_charAggFormatUUID
	movx	@dptr,a
	mov	a,#(_charAggFormatUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:323: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:325: case GATT_VALID_RANGE_UUID:
00113$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:326: pRec = validRangeUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_validRangeUUID
	movx	@dptr,a
	mov	a,#(_validRangeUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:327: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:329: case GATT_EXT_REPORT_REF_UUID:
00114$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:330: pRec = extReportRefUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_extReportRefUUID
	movx	@dptr,a
	mov	a,#(_extReportRefUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:331: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:333: case GATT_REPORT_REF_UUID:
00115$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:334: pRec = reportRefUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_reportRefUUID
	movx	@dptr,a
	mov	a,#(_reportRefUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:335: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:339: case DEVICE_NAME_UUID:
00116$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:340: pRec = deviceNameUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_deviceNameUUID
	movx	@dptr,a
	mov	a,#(_deviceNameUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:341: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:343: case APPEARANCE_UUID:
00117$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:344: pRec = appearanceUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_appearanceUUID
	movx	@dptr,a
	mov	a,#(_appearanceUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:345: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:347: case RECONNECT_ADDR_UUID:
00118$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:348: pRec = reconnectAddrUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_reconnectAddrUUID
	movx	@dptr,a
	mov	a,#(_reconnectAddrUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:349: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:351: case PERI_PRIVACY_FLAG_UUID:
00119$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:352: pRec = periPrivacyFlagUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_periPrivacyFlagUUID
	movx	@dptr,a
	mov	a,#(_periPrivacyFlagUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:353: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:355: case PERI_CONN_PARAM_UUID:
00120$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:356: pRec = periConnParamUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_periConnParamUUID
	movx	@dptr,a
	mov	a,#(_periConnParamUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:357: break;
	ljmp	00126$
;	../fake_ble_stack/ble/host/gatt_uuid.c:359: case SERVICE_CHANGED_UUID:
00121$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:360: pRec = serviceChangedUUID;
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
	mov	a,#_serviceChangedUUID
	movx	@dptr,a
	mov	a,#(_serviceChangedUUID >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	../fake_ble_stack/ble/host/gatt_uuid.c:371: else if ( len == ATT_UUID_SIZE )
00126$:
;	../fake_ble_stack/ble/host/gatt_uuid.c:376: return ( pRec );
	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
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
00127$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_gapServiceUUID:
	.db #0x00	; 0
	.db #0x18	; 24
_gattServiceUUID:
	.db #0x01	; 1
	.db #0x18	; 24
_manufactServiceUUID:
	.db #0x05	; 5
	.db #0xA0	; 160
_addressServiceUUID:
	.db #0x06	; 6
	.db #0xA0	; 160
_primaryServiceUUID:
	.db #0x00	; 0
	.db #0x28	; 40
_secondaryServiceUUID:
	.db #0x01	; 1
	.db #0x28	; 40
_includeUUID:
	.db #0x02	; 2
	.db #0x28	; 40
_characterUUID:
	.db #0x03	; 3
	.db #0x28	; 40
_charExtPropsUUID:
	.db #0x00	; 0
	.db #0x29	; 41
_charUserDescUUID:
	.db #0x01	; 1
	.db #0x29	; 41
_clientCharCfgUUID:
	.db #0x02	; 2
	.db #0x29	; 41
_servCharCfgUUID:
	.db #0x03	; 3
	.db #0x29	; 41
_charFormatUUID:
	.db #0x04	; 4
	.db #0x29	; 41
_charAggFormatUUID:
	.db #0x05	; 5
	.db #0x29	; 41
_deviceNameUUID:
	.db #0x00	; 0
	.db #0x2A	; 42
_appearanceUUID:
	.db #0x01	; 1
	.db #0x2A	; 42
_periPrivacyFlagUUID:
	.db #0x02	; 2
	.db #0x2A	; 42
_reconnectAddrUUID:
	.db #0x03	; 3
	.db #0x2A	; 42
_periConnParamUUID:
	.db #0x04	; 4
	.db #0x2A	; 42
_serviceChangedUUID:
	.db #0x05	; 5
	.db #0x2A	; 42
_manuNameUUID:
	.db #0x08	; 8
	.db #0xB0	; 176
_serialNumUUID:
	.db #0x09	; 9
	.db #0xB0	; 176
_manuAddrUUID:
	.db #0x0A	; 10
	.db #0xB0	; 176
_validRangeUUID:
	.db #0x06	; 6
	.db #0x29	; 41
_extReportRefUUID:
	.db #0x07	; 7
	.db #0x29	; 41
_reportRefUUID:
	.db #0x08	; 8
	.db #0x29	; 41
	.area CABS    (ABS,CODE)
