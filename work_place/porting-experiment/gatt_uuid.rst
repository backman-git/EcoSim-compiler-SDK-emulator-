                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module gatt_uuid
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _reportRefUUID
                                     13 	.globl _extReportRefUUID
                                     14 	.globl _validRangeUUID
                                     15 	.globl _manuAddrUUID
                                     16 	.globl _serialNumUUID
                                     17 	.globl _manuNameUUID
                                     18 	.globl _serviceChangedUUID
                                     19 	.globl _periConnParamUUID
                                     20 	.globl _reconnectAddrUUID
                                     21 	.globl _periPrivacyFlagUUID
                                     22 	.globl _appearanceUUID
                                     23 	.globl _deviceNameUUID
                                     24 	.globl _charAggFormatUUID
                                     25 	.globl _charFormatUUID
                                     26 	.globl _servCharCfgUUID
                                     27 	.globl _clientCharCfgUUID
                                     28 	.globl _charUserDescUUID
                                     29 	.globl _charExtPropsUUID
                                     30 	.globl _characterUUID
                                     31 	.globl _includeUUID
                                     32 	.globl _secondaryServiceUUID
                                     33 	.globl _primaryServiceUUID
                                     34 	.globl _addressServiceUUID
                                     35 	.globl _manufactServiceUUID
                                     36 	.globl _gattServiceUUID
                                     37 	.globl _gapServiceUUID
                                     38 	.globl _GATT_FindUUIDRec_PARM_2
                                     39 	.globl _GATT_FindUUIDRec
                                     40 ;--------------------------------------------------------
                                     41 ; special function registers
                                     42 ;--------------------------------------------------------
                                     43 	.area RSEG    (ABS,DATA)
      000000                         44 	.org 0x0000
                                     45 ;--------------------------------------------------------
                                     46 ; special function bits
                                     47 ;--------------------------------------------------------
                                     48 	.area RSEG    (ABS,DATA)
      000000                         49 	.org 0x0000
                                     50 ;--------------------------------------------------------
                                     51 ; overlayable register banks
                                     52 ;--------------------------------------------------------
                                     53 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         54 	.ds 8
                                     55 ;--------------------------------------------------------
                                     56 ; internal ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area DSEG    (DATA)
                                     59 ;--------------------------------------------------------
                                     60 ; overlayable items in internal ram 
                                     61 ;--------------------------------------------------------
                                     62 ;--------------------------------------------------------
                                     63 ; indirectly addressable internal ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area ISEG    (DATA)
                                     66 ;--------------------------------------------------------
                                     67 ; absolute internal ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area IABS    (ABS,DATA)
                                     70 	.area IABS    (ABS,DATA)
                                     71 ;--------------------------------------------------------
                                     72 ; bit data
                                     73 ;--------------------------------------------------------
                                     74 	.area BSEG    (BIT)
                                     75 ;--------------------------------------------------------
                                     76 ; paged external ram data
                                     77 ;--------------------------------------------------------
                                     78 	.area PSEG    (PAG,XDATA)
                                     79 ;--------------------------------------------------------
                                     80 ; external ram data
                                     81 ;--------------------------------------------------------
                                     82 	.area XSEG    (XDATA)
      0010B2                         83 _GATT_FindUUIDRec_PARM_2:
      0010B2                         84 	.ds 1
      0010B3                         85 _GATT_FindUUIDRec_pUUID_1_185:
      0010B3                         86 	.ds 3
      0010B6                         87 _GATT_FindUUIDRec_pRec_1_186:
      0010B6                         88 	.ds 3
                                     89 ;--------------------------------------------------------
                                     90 ; absolute external ram data
                                     91 ;--------------------------------------------------------
                                     92 	.area XABS    (ABS,XDATA)
                                     93 ;--------------------------------------------------------
                                     94 ; external initialized ram data
                                     95 ;--------------------------------------------------------
                                     96 	.area HOME    (CODE)
                                     97 	.area GSINIT0 (CODE)
                                     98 	.area GSINIT1 (CODE)
                                     99 	.area GSINIT2 (CODE)
                                    100 	.area GSINIT3 (CODE)
                                    101 	.area GSINIT4 (CODE)
                                    102 	.area GSINIT5 (CODE)
                                    103 	.area GSINIT  (CODE)
                                    104 	.area GSFINAL (CODE)
                                    105 	.area CSEG    (CODE)
                                    106 ;--------------------------------------------------------
                                    107 ; global & static initialisations
                                    108 ;--------------------------------------------------------
                                    109 	.area HOME    (CODE)
                                    110 	.area GSINIT  (CODE)
                                    111 	.area GSFINAL (CODE)
                                    112 	.area GSINIT  (CODE)
                                    113 ;--------------------------------------------------------
                                    114 ; Home
                                    115 ;--------------------------------------------------------
                                    116 	.area HOME    (CODE)
                                    117 	.area HOME    (CODE)
                                    118 ;--------------------------------------------------------
                                    119 ; code
                                    120 ;--------------------------------------------------------
                                    121 	.area CSEG    (CODE)
                                    122 ;------------------------------------------------------------
                                    123 ;Allocation info for local variables in function 'GATT_FindUUIDRec'
                                    124 ;------------------------------------------------------------
                                    125 ;len                       Allocated with name '_GATT_FindUUIDRec_PARM_2'
                                    126 ;pUUID                     Allocated with name '_GATT_FindUUIDRec_pUUID_1_185'
                                    127 ;pRec                      Allocated with name '_GATT_FindUUIDRec_pRec_1_186'
                                    128 ;uuid                      Allocated with name '_GATT_FindUUIDRec_uuid_2_187'
                                    129 ;------------------------------------------------------------
                                    130 ;	../fake_ble_stack/ble/host/gatt_uuid.c:261: const uint8 *GATT_FindUUIDRec( uint8 *pUUID, uint8 len )
                                    131 ;	-----------------------------------------
                                    132 ;	 function GATT_FindUUIDRec
                                    133 ;	-----------------------------------------
      003EA0                        134 _GATT_FindUUIDRec:
                           000007   135 	ar7 = 0x07
                           000006   136 	ar6 = 0x06
                           000005   137 	ar5 = 0x05
                           000004   138 	ar4 = 0x04
                           000003   139 	ar3 = 0x03
                           000002   140 	ar2 = 0x02
                           000001   141 	ar1 = 0x01
                           000000   142 	ar0 = 0x00
      003EA0 AF F0            [24]  143 	mov	r7,b
      003EA2 AE 83            [24]  144 	mov	r6,dph
      003EA4 E5 82            [12]  145 	mov	a,dpl
      003EA6 90 10 B3         [24]  146 	mov	dptr,#_GATT_FindUUIDRec_pUUID_1_185
      003EA9 F0               [24]  147 	movx	@dptr,a
      003EAA EE               [12]  148 	mov	a,r6
      003EAB A3               [24]  149 	inc	dptr
      003EAC F0               [24]  150 	movx	@dptr,a
      003EAD EF               [12]  151 	mov	a,r7
      003EAE A3               [24]  152 	inc	dptr
      003EAF F0               [24]  153 	movx	@dptr,a
                                    154 ;	../fake_ble_stack/ble/host/gatt_uuid.c:263: const uint8 *pRec = NULL;
      003EB0 90 10 B6         [24]  155 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      003EB3 74 00            [12]  156 	mov	a,#0x00
      003EB5 F0               [24]  157 	movx	@dptr,a
      003EB6 A3               [24]  158 	inc	dptr
      003EB7 F0               [24]  159 	movx	@dptr,a
      003EB8 A3               [24]  160 	inc	dptr
      003EB9 F0               [24]  161 	movx	@dptr,a
                                    162 ;	../fake_ble_stack/ble/host/gatt_uuid.c:265: if ( len == ATT_BT_UUID_SIZE )
      003EBA 90 10 B2         [24]  163 	mov	dptr,#_GATT_FindUUIDRec_PARM_2
      003EBD E0               [24]  164 	movx	a,@dptr
      003EBE FF               [12]  165 	mov	r7,a
      003EBF BF 02 02         [24]  166 	cjne	r7,#0x02,00195$
      003EC2 80 03            [24]  167 	sjmp	00196$
      003EC4                        168 00195$:
      003EC4 02 41 1F         [24]  169 	ljmp	00126$
      003EC7                        170 00196$:
                                    171 ;	../fake_ble_stack/ble/host/gatt_uuid.c:268: uint16 uuid = BUILD_UINT16( pUUID[0], pUUID[1] );
      003EC7 90 10 B3         [24]  172 	mov	dptr,#_GATT_FindUUIDRec_pUUID_1_185
      003ECA E0               [24]  173 	movx	a,@dptr
      003ECB FD               [12]  174 	mov	r5,a
      003ECC A3               [24]  175 	inc	dptr
      003ECD E0               [24]  176 	movx	a,@dptr
      003ECE FE               [12]  177 	mov	r6,a
      003ECF A3               [24]  178 	inc	dptr
      003ED0 E0               [24]  179 	movx	a,@dptr
      003ED1 FF               [12]  180 	mov	r7,a
      003ED2 8D 82            [24]  181 	mov	dpl,r5
      003ED4 8E 83            [24]  182 	mov	dph,r6
      003ED6 8F F0            [24]  183 	mov	b,r7
      003ED8 12 5D 60         [24]  184 	lcall	__gptrget
      003EDB FC               [12]  185 	mov	r4,a
      003EDC 7B 00            [12]  186 	mov	r3,#0x00
      003EDE 0D               [12]  187 	inc	r5
      003EDF BD 00 01         [24]  188 	cjne	r5,#0x00,00197$
      003EE2 0E               [12]  189 	inc	r6
      003EE3                        190 00197$:
      003EE3 8D 82            [24]  191 	mov	dpl,r5
      003EE5 8E 83            [24]  192 	mov	dph,r6
      003EE7 8F F0            [24]  193 	mov	b,r7
      003EE9 12 5D 60         [24]  194 	lcall	__gptrget
      003EEC FD               [12]  195 	mov	r5,a
      003EED 7F 00            [12]  196 	mov	r7,#0x00
      003EEF 8D 07            [24]  197 	mov	ar7,r5
      003EF1 7D 00            [12]  198 	mov	r5,#0x00
      003EF3 ED               [12]  199 	mov	a,r5
      003EF4 2C               [12]  200 	add	a,r4
      003EF5 FC               [12]  201 	mov	r4,a
      003EF6 EF               [12]  202 	mov	a,r7
      003EF7 3B               [12]  203 	addc	a,r3
      003EF8 FB               [12]  204 	mov	r3,a
                                    205 ;	../fake_ble_stack/ble/host/gatt_uuid.c:269: switch ( uuid )
      003EF9 8C 06            [24]  206 	mov	ar6,r4
      003EFB 8B 07            [24]  207 	mov	ar7,r3
      003EFD BC 00 06         [24]  208 	cjne	r4,#0x00,00198$
      003F00 BB 18 03         [24]  209 	cjne	r3,#0x18,00198$
      003F03 02 3F BD         [24]  210 	ljmp	00101$
      003F06                        211 00198$:
      003F06 BE 01 06         [24]  212 	cjne	r6,#0x01,00199$
      003F09 BF 18 03         [24]  213 	cjne	r7,#0x18,00199$
      003F0C 02 3F CE         [24]  214 	ljmp	00102$
      003F0F                        215 00199$:
      003F0F BE 00 06         [24]  216 	cjne	r6,#0x00,00200$
      003F12 BF 28 03         [24]  217 	cjne	r7,#0x28,00200$
      003F15 02 3F DF         [24]  218 	ljmp	00103$
      003F18                        219 00200$:
      003F18 BE 01 06         [24]  220 	cjne	r6,#0x01,00201$
      003F1B BF 28 03         [24]  221 	cjne	r7,#0x28,00201$
      003F1E 02 3F F0         [24]  222 	ljmp	00104$
      003F21                        223 00201$:
      003F21 BE 02 06         [24]  224 	cjne	r6,#0x02,00202$
      003F24 BF 28 03         [24]  225 	cjne	r7,#0x28,00202$
      003F27 02 40 01         [24]  226 	ljmp	00105$
      003F2A                        227 00202$:
      003F2A BE 03 06         [24]  228 	cjne	r6,#0x03,00203$
      003F2D BF 28 03         [24]  229 	cjne	r7,#0x28,00203$
      003F30 02 40 12         [24]  230 	ljmp	00106$
      003F33                        231 00203$:
      003F33 BE 00 06         [24]  232 	cjne	r6,#0x00,00204$
      003F36 BF 29 03         [24]  233 	cjne	r7,#0x29,00204$
      003F39 02 40 23         [24]  234 	ljmp	00107$
      003F3C                        235 00204$:
      003F3C BE 01 06         [24]  236 	cjne	r6,#0x01,00205$
      003F3F BF 29 03         [24]  237 	cjne	r7,#0x29,00205$
      003F42 02 40 34         [24]  238 	ljmp	00108$
      003F45                        239 00205$:
      003F45 BE 02 06         [24]  240 	cjne	r6,#0x02,00206$
      003F48 BF 29 03         [24]  241 	cjne	r7,#0x29,00206$
      003F4B 02 40 45         [24]  242 	ljmp	00109$
      003F4E                        243 00206$:
      003F4E BE 03 06         [24]  244 	cjne	r6,#0x03,00207$
      003F51 BF 29 03         [24]  245 	cjne	r7,#0x29,00207$
      003F54 02 40 56         [24]  246 	ljmp	00110$
      003F57                        247 00207$:
      003F57 BE 04 06         [24]  248 	cjne	r6,#0x04,00208$
      003F5A BF 29 03         [24]  249 	cjne	r7,#0x29,00208$
      003F5D 02 40 67         [24]  250 	ljmp	00111$
      003F60                        251 00208$:
      003F60 BE 05 06         [24]  252 	cjne	r6,#0x05,00209$
      003F63 BF 29 03         [24]  253 	cjne	r7,#0x29,00209$
      003F66 02 40 78         [24]  254 	ljmp	00112$
      003F69                        255 00209$:
      003F69 BE 06 06         [24]  256 	cjne	r6,#0x06,00210$
      003F6C BF 29 03         [24]  257 	cjne	r7,#0x29,00210$
      003F6F 02 40 89         [24]  258 	ljmp	00113$
      003F72                        259 00210$:
      003F72 BE 07 06         [24]  260 	cjne	r6,#0x07,00211$
      003F75 BF 29 03         [24]  261 	cjne	r7,#0x29,00211$
      003F78 02 40 9A         [24]  262 	ljmp	00114$
      003F7B                        263 00211$:
      003F7B BE 08 06         [24]  264 	cjne	r6,#0x08,00212$
      003F7E BF 29 03         [24]  265 	cjne	r7,#0x29,00212$
      003F81 02 40 AB         [24]  266 	ljmp	00115$
      003F84                        267 00212$:
      003F84 BE 00 06         [24]  268 	cjne	r6,#0x00,00213$
      003F87 BF 2A 03         [24]  269 	cjne	r7,#0x2A,00213$
      003F8A 02 40 BC         [24]  270 	ljmp	00116$
      003F8D                        271 00213$:
      003F8D BE 01 06         [24]  272 	cjne	r6,#0x01,00214$
      003F90 BF 2A 03         [24]  273 	cjne	r7,#0x2A,00214$
      003F93 02 40 CD         [24]  274 	ljmp	00117$
      003F96                        275 00214$:
      003F96 BE 02 06         [24]  276 	cjne	r6,#0x02,00215$
      003F99 BF 2A 03         [24]  277 	cjne	r7,#0x2A,00215$
      003F9C 02 40 EF         [24]  278 	ljmp	00119$
      003F9F                        279 00215$:
      003F9F BE 03 06         [24]  280 	cjne	r6,#0x03,00216$
      003FA2 BF 2A 03         [24]  281 	cjne	r7,#0x2A,00216$
      003FA5 02 40 DE         [24]  282 	ljmp	00118$
      003FA8                        283 00216$:
      003FA8 BE 04 06         [24]  284 	cjne	r6,#0x04,00217$
      003FAB BF 2A 03         [24]  285 	cjne	r7,#0x2A,00217$
      003FAE 02 41 00         [24]  286 	ljmp	00120$
      003FB1                        287 00217$:
      003FB1 BE 05 06         [24]  288 	cjne	r6,#0x05,00218$
      003FB4 BF 2A 03         [24]  289 	cjne	r7,#0x2A,00218$
      003FB7 02 41 11         [24]  290 	ljmp	00121$
      003FBA                        291 00218$:
      003FBA 02 41 1F         [24]  292 	ljmp	00126$
                                    293 ;	../fake_ble_stack/ble/host/gatt_uuid.c:273: case GAP_SERVICE_UUID:
      003FBD                        294 00101$:
                                    295 ;	../fake_ble_stack/ble/host/gatt_uuid.c:274: pRec = gapServiceUUID;
      003FBD 90 10 B6         [24]  296 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      003FC0 74 8B            [12]  297 	mov	a,#_gapServiceUUID
      003FC2 F0               [24]  298 	movx	@dptr,a
      003FC3 74 5D            [12]  299 	mov	a,#(_gapServiceUUID >> 8)
      003FC5 A3               [24]  300 	inc	dptr
      003FC6 F0               [24]  301 	movx	@dptr,a
      003FC7 74 80            [12]  302 	mov	a,#0x80
      003FC9 A3               [24]  303 	inc	dptr
      003FCA F0               [24]  304 	movx	@dptr,a
                                    305 ;	../fake_ble_stack/ble/host/gatt_uuid.c:275: break;
      003FCB 02 41 1F         [24]  306 	ljmp	00126$
                                    307 ;	../fake_ble_stack/ble/host/gatt_uuid.c:277: case GATT_SERVICE_UUID:
      003FCE                        308 00102$:
                                    309 ;	../fake_ble_stack/ble/host/gatt_uuid.c:278: pRec = gattServiceUUID;
      003FCE 90 10 B6         [24]  310 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      003FD1 74 8D            [12]  311 	mov	a,#_gattServiceUUID
      003FD3 F0               [24]  312 	movx	@dptr,a
      003FD4 74 5D            [12]  313 	mov	a,#(_gattServiceUUID >> 8)
      003FD6 A3               [24]  314 	inc	dptr
      003FD7 F0               [24]  315 	movx	@dptr,a
      003FD8 74 80            [12]  316 	mov	a,#0x80
      003FDA A3               [24]  317 	inc	dptr
      003FDB F0               [24]  318 	movx	@dptr,a
                                    319 ;	../fake_ble_stack/ble/host/gatt_uuid.c:279: break;
      003FDC 02 41 1F         [24]  320 	ljmp	00126$
                                    321 ;	../fake_ble_stack/ble/host/gatt_uuid.c:283: case GATT_PRIMARY_SERVICE_UUID:
      003FDF                        322 00103$:
                                    323 ;	../fake_ble_stack/ble/host/gatt_uuid.c:284: pRec = primaryServiceUUID;
      003FDF 90 10 B6         [24]  324 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      003FE2 74 93            [12]  325 	mov	a,#_primaryServiceUUID
      003FE4 F0               [24]  326 	movx	@dptr,a
      003FE5 74 5D            [12]  327 	mov	a,#(_primaryServiceUUID >> 8)
      003FE7 A3               [24]  328 	inc	dptr
      003FE8 F0               [24]  329 	movx	@dptr,a
      003FE9 74 80            [12]  330 	mov	a,#0x80
      003FEB A3               [24]  331 	inc	dptr
      003FEC F0               [24]  332 	movx	@dptr,a
                                    333 ;	../fake_ble_stack/ble/host/gatt_uuid.c:285: break;
      003FED 02 41 1F         [24]  334 	ljmp	00126$
                                    335 ;	../fake_ble_stack/ble/host/gatt_uuid.c:287: case GATT_SECONDARY_SERVICE_UUID:
      003FF0                        336 00104$:
                                    337 ;	../fake_ble_stack/ble/host/gatt_uuid.c:288: pRec = secondaryServiceUUID;
      003FF0 90 10 B6         [24]  338 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      003FF3 74 95            [12]  339 	mov	a,#_secondaryServiceUUID
      003FF5 F0               [24]  340 	movx	@dptr,a
      003FF6 74 5D            [12]  341 	mov	a,#(_secondaryServiceUUID >> 8)
      003FF8 A3               [24]  342 	inc	dptr
      003FF9 F0               [24]  343 	movx	@dptr,a
      003FFA 74 80            [12]  344 	mov	a,#0x80
      003FFC A3               [24]  345 	inc	dptr
      003FFD F0               [24]  346 	movx	@dptr,a
                                    347 ;	../fake_ble_stack/ble/host/gatt_uuid.c:289: break;
      003FFE 02 41 1F         [24]  348 	ljmp	00126$
                                    349 ;	../fake_ble_stack/ble/host/gatt_uuid.c:291: case GATT_INCLUDE_UUID:
      004001                        350 00105$:
                                    351 ;	../fake_ble_stack/ble/host/gatt_uuid.c:292: pRec = includeUUID;
      004001 90 10 B6         [24]  352 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004004 74 97            [12]  353 	mov	a,#_includeUUID
      004006 F0               [24]  354 	movx	@dptr,a
      004007 74 5D            [12]  355 	mov	a,#(_includeUUID >> 8)
      004009 A3               [24]  356 	inc	dptr
      00400A F0               [24]  357 	movx	@dptr,a
      00400B 74 80            [12]  358 	mov	a,#0x80
      00400D A3               [24]  359 	inc	dptr
      00400E F0               [24]  360 	movx	@dptr,a
                                    361 ;	../fake_ble_stack/ble/host/gatt_uuid.c:293: break;
      00400F 02 41 1F         [24]  362 	ljmp	00126$
                                    363 ;	../fake_ble_stack/ble/host/gatt_uuid.c:295: case GATT_CHARACTER_UUID:
      004012                        364 00106$:
                                    365 ;	../fake_ble_stack/ble/host/gatt_uuid.c:296: pRec = characterUUID;
      004012 90 10 B6         [24]  366 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004015 74 99            [12]  367 	mov	a,#_characterUUID
      004017 F0               [24]  368 	movx	@dptr,a
      004018 74 5D            [12]  369 	mov	a,#(_characterUUID >> 8)
      00401A A3               [24]  370 	inc	dptr
      00401B F0               [24]  371 	movx	@dptr,a
      00401C 74 80            [12]  372 	mov	a,#0x80
      00401E A3               [24]  373 	inc	dptr
      00401F F0               [24]  374 	movx	@dptr,a
                                    375 ;	../fake_ble_stack/ble/host/gatt_uuid.c:297: break;
      004020 02 41 1F         [24]  376 	ljmp	00126$
                                    377 ;	../fake_ble_stack/ble/host/gatt_uuid.c:301: case GATT_CHAR_EXT_PROPS_UUID:
      004023                        378 00107$:
                                    379 ;	../fake_ble_stack/ble/host/gatt_uuid.c:302: pRec = charExtPropsUUID;
      004023 90 10 B6         [24]  380 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004026 74 9B            [12]  381 	mov	a,#_charExtPropsUUID
      004028 F0               [24]  382 	movx	@dptr,a
      004029 74 5D            [12]  383 	mov	a,#(_charExtPropsUUID >> 8)
      00402B A3               [24]  384 	inc	dptr
      00402C F0               [24]  385 	movx	@dptr,a
      00402D 74 80            [12]  386 	mov	a,#0x80
      00402F A3               [24]  387 	inc	dptr
      004030 F0               [24]  388 	movx	@dptr,a
                                    389 ;	../fake_ble_stack/ble/host/gatt_uuid.c:303: break;
      004031 02 41 1F         [24]  390 	ljmp	00126$
                                    391 ;	../fake_ble_stack/ble/host/gatt_uuid.c:305: case GATT_CHAR_USER_DESC_UUID:
      004034                        392 00108$:
                                    393 ;	../fake_ble_stack/ble/host/gatt_uuid.c:306: pRec = charUserDescUUID;
      004034 90 10 B6         [24]  394 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004037 74 9D            [12]  395 	mov	a,#_charUserDescUUID
      004039 F0               [24]  396 	movx	@dptr,a
      00403A 74 5D            [12]  397 	mov	a,#(_charUserDescUUID >> 8)
      00403C A3               [24]  398 	inc	dptr
      00403D F0               [24]  399 	movx	@dptr,a
      00403E 74 80            [12]  400 	mov	a,#0x80
      004040 A3               [24]  401 	inc	dptr
      004041 F0               [24]  402 	movx	@dptr,a
                                    403 ;	../fake_ble_stack/ble/host/gatt_uuid.c:307: break;
      004042 02 41 1F         [24]  404 	ljmp	00126$
                                    405 ;	../fake_ble_stack/ble/host/gatt_uuid.c:309: case GATT_CLIENT_CHAR_CFG_UUID:
      004045                        406 00109$:
                                    407 ;	../fake_ble_stack/ble/host/gatt_uuid.c:310: pRec = clientCharCfgUUID;
      004045 90 10 B6         [24]  408 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004048 74 9F            [12]  409 	mov	a,#_clientCharCfgUUID
      00404A F0               [24]  410 	movx	@dptr,a
      00404B 74 5D            [12]  411 	mov	a,#(_clientCharCfgUUID >> 8)
      00404D A3               [24]  412 	inc	dptr
      00404E F0               [24]  413 	movx	@dptr,a
      00404F 74 80            [12]  414 	mov	a,#0x80
      004051 A3               [24]  415 	inc	dptr
      004052 F0               [24]  416 	movx	@dptr,a
                                    417 ;	../fake_ble_stack/ble/host/gatt_uuid.c:311: break;
      004053 02 41 1F         [24]  418 	ljmp	00126$
                                    419 ;	../fake_ble_stack/ble/host/gatt_uuid.c:313: case GATT_SERV_CHAR_CFG_UUID:
      004056                        420 00110$:
                                    421 ;	../fake_ble_stack/ble/host/gatt_uuid.c:314: pRec = servCharCfgUUID;
      004056 90 10 B6         [24]  422 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004059 74 A1            [12]  423 	mov	a,#_servCharCfgUUID
      00405B F0               [24]  424 	movx	@dptr,a
      00405C 74 5D            [12]  425 	mov	a,#(_servCharCfgUUID >> 8)
      00405E A3               [24]  426 	inc	dptr
      00405F F0               [24]  427 	movx	@dptr,a
      004060 74 80            [12]  428 	mov	a,#0x80
      004062 A3               [24]  429 	inc	dptr
      004063 F0               [24]  430 	movx	@dptr,a
                                    431 ;	../fake_ble_stack/ble/host/gatt_uuid.c:315: break;
      004064 02 41 1F         [24]  432 	ljmp	00126$
                                    433 ;	../fake_ble_stack/ble/host/gatt_uuid.c:317: case GATT_CHAR_FORMAT_UUID:
      004067                        434 00111$:
                                    435 ;	../fake_ble_stack/ble/host/gatt_uuid.c:318: pRec = charFormatUUID;
      004067 90 10 B6         [24]  436 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      00406A 74 A3            [12]  437 	mov	a,#_charFormatUUID
      00406C F0               [24]  438 	movx	@dptr,a
      00406D 74 5D            [12]  439 	mov	a,#(_charFormatUUID >> 8)
      00406F A3               [24]  440 	inc	dptr
      004070 F0               [24]  441 	movx	@dptr,a
      004071 74 80            [12]  442 	mov	a,#0x80
      004073 A3               [24]  443 	inc	dptr
      004074 F0               [24]  444 	movx	@dptr,a
                                    445 ;	../fake_ble_stack/ble/host/gatt_uuid.c:319: break;
      004075 02 41 1F         [24]  446 	ljmp	00126$
                                    447 ;	../fake_ble_stack/ble/host/gatt_uuid.c:321: case GATT_CHAR_AGG_FORMAT_UUID:
      004078                        448 00112$:
                                    449 ;	../fake_ble_stack/ble/host/gatt_uuid.c:322: pRec = charAggFormatUUID;
      004078 90 10 B6         [24]  450 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      00407B 74 A5            [12]  451 	mov	a,#_charAggFormatUUID
      00407D F0               [24]  452 	movx	@dptr,a
      00407E 74 5D            [12]  453 	mov	a,#(_charAggFormatUUID >> 8)
      004080 A3               [24]  454 	inc	dptr
      004081 F0               [24]  455 	movx	@dptr,a
      004082 74 80            [12]  456 	mov	a,#0x80
      004084 A3               [24]  457 	inc	dptr
      004085 F0               [24]  458 	movx	@dptr,a
                                    459 ;	../fake_ble_stack/ble/host/gatt_uuid.c:323: break;
      004086 02 41 1F         [24]  460 	ljmp	00126$
                                    461 ;	../fake_ble_stack/ble/host/gatt_uuid.c:325: case GATT_VALID_RANGE_UUID:
      004089                        462 00113$:
                                    463 ;	../fake_ble_stack/ble/host/gatt_uuid.c:326: pRec = validRangeUUID;
      004089 90 10 B6         [24]  464 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      00408C 74 B9            [12]  465 	mov	a,#_validRangeUUID
      00408E F0               [24]  466 	movx	@dptr,a
      00408F 74 5D            [12]  467 	mov	a,#(_validRangeUUID >> 8)
      004091 A3               [24]  468 	inc	dptr
      004092 F0               [24]  469 	movx	@dptr,a
      004093 74 80            [12]  470 	mov	a,#0x80
      004095 A3               [24]  471 	inc	dptr
      004096 F0               [24]  472 	movx	@dptr,a
                                    473 ;	../fake_ble_stack/ble/host/gatt_uuid.c:327: break;
      004097 02 41 1F         [24]  474 	ljmp	00126$
                                    475 ;	../fake_ble_stack/ble/host/gatt_uuid.c:329: case GATT_EXT_REPORT_REF_UUID:
      00409A                        476 00114$:
                                    477 ;	../fake_ble_stack/ble/host/gatt_uuid.c:330: pRec = extReportRefUUID;
      00409A 90 10 B6         [24]  478 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      00409D 74 BB            [12]  479 	mov	a,#_extReportRefUUID
      00409F F0               [24]  480 	movx	@dptr,a
      0040A0 74 5D            [12]  481 	mov	a,#(_extReportRefUUID >> 8)
      0040A2 A3               [24]  482 	inc	dptr
      0040A3 F0               [24]  483 	movx	@dptr,a
      0040A4 74 80            [12]  484 	mov	a,#0x80
      0040A6 A3               [24]  485 	inc	dptr
      0040A7 F0               [24]  486 	movx	@dptr,a
                                    487 ;	../fake_ble_stack/ble/host/gatt_uuid.c:331: break;
      0040A8 02 41 1F         [24]  488 	ljmp	00126$
                                    489 ;	../fake_ble_stack/ble/host/gatt_uuid.c:333: case GATT_REPORT_REF_UUID:
      0040AB                        490 00115$:
                                    491 ;	../fake_ble_stack/ble/host/gatt_uuid.c:334: pRec = reportRefUUID;
      0040AB 90 10 B6         [24]  492 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0040AE 74 BD            [12]  493 	mov	a,#_reportRefUUID
      0040B0 F0               [24]  494 	movx	@dptr,a
      0040B1 74 5D            [12]  495 	mov	a,#(_reportRefUUID >> 8)
      0040B3 A3               [24]  496 	inc	dptr
      0040B4 F0               [24]  497 	movx	@dptr,a
      0040B5 74 80            [12]  498 	mov	a,#0x80
      0040B7 A3               [24]  499 	inc	dptr
      0040B8 F0               [24]  500 	movx	@dptr,a
                                    501 ;	../fake_ble_stack/ble/host/gatt_uuid.c:335: break;
      0040B9 02 41 1F         [24]  502 	ljmp	00126$
                                    503 ;	../fake_ble_stack/ble/host/gatt_uuid.c:339: case DEVICE_NAME_UUID:
      0040BC                        504 00116$:
                                    505 ;	../fake_ble_stack/ble/host/gatt_uuid.c:340: pRec = deviceNameUUID;
      0040BC 90 10 B6         [24]  506 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0040BF 74 A7            [12]  507 	mov	a,#_deviceNameUUID
      0040C1 F0               [24]  508 	movx	@dptr,a
      0040C2 74 5D            [12]  509 	mov	a,#(_deviceNameUUID >> 8)
      0040C4 A3               [24]  510 	inc	dptr
      0040C5 F0               [24]  511 	movx	@dptr,a
      0040C6 74 80            [12]  512 	mov	a,#0x80
      0040C8 A3               [24]  513 	inc	dptr
      0040C9 F0               [24]  514 	movx	@dptr,a
                                    515 ;	../fake_ble_stack/ble/host/gatt_uuid.c:341: break;
      0040CA 02 41 1F         [24]  516 	ljmp	00126$
                                    517 ;	../fake_ble_stack/ble/host/gatt_uuid.c:343: case APPEARANCE_UUID:
      0040CD                        518 00117$:
                                    519 ;	../fake_ble_stack/ble/host/gatt_uuid.c:344: pRec = appearanceUUID;
      0040CD 90 10 B6         [24]  520 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0040D0 74 A9            [12]  521 	mov	a,#_appearanceUUID
      0040D2 F0               [24]  522 	movx	@dptr,a
      0040D3 74 5D            [12]  523 	mov	a,#(_appearanceUUID >> 8)
      0040D5 A3               [24]  524 	inc	dptr
      0040D6 F0               [24]  525 	movx	@dptr,a
      0040D7 74 80            [12]  526 	mov	a,#0x80
      0040D9 A3               [24]  527 	inc	dptr
      0040DA F0               [24]  528 	movx	@dptr,a
                                    529 ;	../fake_ble_stack/ble/host/gatt_uuid.c:345: break;
      0040DB 02 41 1F         [24]  530 	ljmp	00126$
                                    531 ;	../fake_ble_stack/ble/host/gatt_uuid.c:347: case RECONNECT_ADDR_UUID:
      0040DE                        532 00118$:
                                    533 ;	../fake_ble_stack/ble/host/gatt_uuid.c:348: pRec = reconnectAddrUUID;
      0040DE 90 10 B6         [24]  534 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0040E1 74 AD            [12]  535 	mov	a,#_reconnectAddrUUID
      0040E3 F0               [24]  536 	movx	@dptr,a
      0040E4 74 5D            [12]  537 	mov	a,#(_reconnectAddrUUID >> 8)
      0040E6 A3               [24]  538 	inc	dptr
      0040E7 F0               [24]  539 	movx	@dptr,a
      0040E8 74 80            [12]  540 	mov	a,#0x80
      0040EA A3               [24]  541 	inc	dptr
      0040EB F0               [24]  542 	movx	@dptr,a
                                    543 ;	../fake_ble_stack/ble/host/gatt_uuid.c:349: break;
      0040EC 02 41 1F         [24]  544 	ljmp	00126$
                                    545 ;	../fake_ble_stack/ble/host/gatt_uuid.c:351: case PERI_PRIVACY_FLAG_UUID:
      0040EF                        546 00119$:
                                    547 ;	../fake_ble_stack/ble/host/gatt_uuid.c:352: pRec = periPrivacyFlagUUID;
      0040EF 90 10 B6         [24]  548 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0040F2 74 AB            [12]  549 	mov	a,#_periPrivacyFlagUUID
      0040F4 F0               [24]  550 	movx	@dptr,a
      0040F5 74 5D            [12]  551 	mov	a,#(_periPrivacyFlagUUID >> 8)
      0040F7 A3               [24]  552 	inc	dptr
      0040F8 F0               [24]  553 	movx	@dptr,a
      0040F9 74 80            [12]  554 	mov	a,#0x80
      0040FB A3               [24]  555 	inc	dptr
      0040FC F0               [24]  556 	movx	@dptr,a
                                    557 ;	../fake_ble_stack/ble/host/gatt_uuid.c:353: break;
      0040FD 02 41 1F         [24]  558 	ljmp	00126$
                                    559 ;	../fake_ble_stack/ble/host/gatt_uuid.c:355: case PERI_CONN_PARAM_UUID:
      004100                        560 00120$:
                                    561 ;	../fake_ble_stack/ble/host/gatt_uuid.c:356: pRec = periConnParamUUID;
      004100 90 10 B6         [24]  562 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004103 74 AF            [12]  563 	mov	a,#_periConnParamUUID
      004105 F0               [24]  564 	movx	@dptr,a
      004106 74 5D            [12]  565 	mov	a,#(_periConnParamUUID >> 8)
      004108 A3               [24]  566 	inc	dptr
      004109 F0               [24]  567 	movx	@dptr,a
      00410A 74 80            [12]  568 	mov	a,#0x80
      00410C A3               [24]  569 	inc	dptr
      00410D F0               [24]  570 	movx	@dptr,a
                                    571 ;	../fake_ble_stack/ble/host/gatt_uuid.c:357: break;
      00410E 02 41 1F         [24]  572 	ljmp	00126$
                                    573 ;	../fake_ble_stack/ble/host/gatt_uuid.c:359: case SERVICE_CHANGED_UUID:
      004111                        574 00121$:
                                    575 ;	../fake_ble_stack/ble/host/gatt_uuid.c:360: pRec = serviceChangedUUID;
      004111 90 10 B6         [24]  576 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004114 74 B1            [12]  577 	mov	a,#_serviceChangedUUID
      004116 F0               [24]  578 	movx	@dptr,a
      004117 74 5D            [12]  579 	mov	a,#(_serviceChangedUUID >> 8)
      004119 A3               [24]  580 	inc	dptr
      00411A F0               [24]  581 	movx	@dptr,a
      00411B 74 80            [12]  582 	mov	a,#0x80
      00411D A3               [24]  583 	inc	dptr
      00411E F0               [24]  584 	movx	@dptr,a
                                    585 ;	../fake_ble_stack/ble/host/gatt_uuid.c:371: else if ( len == ATT_UUID_SIZE )
      00411F                        586 00126$:
                                    587 ;	../fake_ble_stack/ble/host/gatt_uuid.c:376: return ( pRec );
      00411F 90 10 B6         [24]  588 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004122 E0               [24]  589 	movx	a,@dptr
      004123 FD               [12]  590 	mov	r5,a
      004124 A3               [24]  591 	inc	dptr
      004125 E0               [24]  592 	movx	a,@dptr
      004126 FE               [12]  593 	mov	r6,a
      004127 A3               [24]  594 	inc	dptr
      004128 E0               [24]  595 	movx	a,@dptr
      004129 FF               [12]  596 	mov	r7,a
      00412A 8D 82            [24]  597 	mov	dpl,r5
      00412C 8E 83            [24]  598 	mov	dph,r6
      00412E 8F F0            [24]  599 	mov	b,r7
      004130                        600 00127$:
      004130 22               [24]  601 	ret
                                    602 	.area CSEG    (CODE)
                                    603 	.area CONST   (CODE)
      005D8B                        604 _gapServiceUUID:
      005D8B 00                     605 	.db #0x00	; 0
      005D8C 18                     606 	.db #0x18	; 24
      005D8D                        607 _gattServiceUUID:
      005D8D 01                     608 	.db #0x01	; 1
      005D8E 18                     609 	.db #0x18	; 24
      005D8F                        610 _manufactServiceUUID:
      005D8F 05                     611 	.db #0x05	; 5
      005D90 A0                     612 	.db #0xA0	; 160
      005D91                        613 _addressServiceUUID:
      005D91 06                     614 	.db #0x06	; 6
      005D92 A0                     615 	.db #0xA0	; 160
      005D93                        616 _primaryServiceUUID:
      005D93 00                     617 	.db #0x00	; 0
      005D94 28                     618 	.db #0x28	; 40
      005D95                        619 _secondaryServiceUUID:
      005D95 01                     620 	.db #0x01	; 1
      005D96 28                     621 	.db #0x28	; 40
      005D97                        622 _includeUUID:
      005D97 02                     623 	.db #0x02	; 2
      005D98 28                     624 	.db #0x28	; 40
      005D99                        625 _characterUUID:
      005D99 03                     626 	.db #0x03	; 3
      005D9A 28                     627 	.db #0x28	; 40
      005D9B                        628 _charExtPropsUUID:
      005D9B 00                     629 	.db #0x00	; 0
      005D9C 29                     630 	.db #0x29	; 41
      005D9D                        631 _charUserDescUUID:
      005D9D 01                     632 	.db #0x01	; 1
      005D9E 29                     633 	.db #0x29	; 41
      005D9F                        634 _clientCharCfgUUID:
      005D9F 02                     635 	.db #0x02	; 2
      005DA0 29                     636 	.db #0x29	; 41
      005DA1                        637 _servCharCfgUUID:
      005DA1 03                     638 	.db #0x03	; 3
      005DA2 29                     639 	.db #0x29	; 41
      005DA3                        640 _charFormatUUID:
      005DA3 04                     641 	.db #0x04	; 4
      005DA4 29                     642 	.db #0x29	; 41
      005DA5                        643 _charAggFormatUUID:
      005DA5 05                     644 	.db #0x05	; 5
      005DA6 29                     645 	.db #0x29	; 41
      005DA7                        646 _deviceNameUUID:
      005DA7 00                     647 	.db #0x00	; 0
      005DA8 2A                     648 	.db #0x2A	; 42
      005DA9                        649 _appearanceUUID:
      005DA9 01                     650 	.db #0x01	; 1
      005DAA 2A                     651 	.db #0x2A	; 42
      005DAB                        652 _periPrivacyFlagUUID:
      005DAB 02                     653 	.db #0x02	; 2
      005DAC 2A                     654 	.db #0x2A	; 42
      005DAD                        655 _reconnectAddrUUID:
      005DAD 03                     656 	.db #0x03	; 3
      005DAE 2A                     657 	.db #0x2A	; 42
      005DAF                        658 _periConnParamUUID:
      005DAF 04                     659 	.db #0x04	; 4
      005DB0 2A                     660 	.db #0x2A	; 42
      005DB1                        661 _serviceChangedUUID:
      005DB1 05                     662 	.db #0x05	; 5
      005DB2 2A                     663 	.db #0x2A	; 42
      005DB3                        664 _manuNameUUID:
      005DB3 08                     665 	.db #0x08	; 8
      005DB4 B0                     666 	.db #0xB0	; 176
      005DB5                        667 _serialNumUUID:
      005DB5 09                     668 	.db #0x09	; 9
      005DB6 B0                     669 	.db #0xB0	; 176
      005DB7                        670 _manuAddrUUID:
      005DB7 0A                     671 	.db #0x0A	; 10
      005DB8 B0                     672 	.db #0xB0	; 176
      005DB9                        673 _validRangeUUID:
      005DB9 06                     674 	.db #0x06	; 6
      005DBA 29                     675 	.db #0x29	; 41
      005DBB                        676 _extReportRefUUID:
      005DBB 07                     677 	.db #0x07	; 7
      005DBC 29                     678 	.db #0x29	; 41
      005DBD                        679 _reportRefUUID:
      005DBD 08                     680 	.db #0x08	; 8
      005DBE 29                     681 	.db #0x29	; 41
                                    682 	.area CABS    (ABS,CODE)
