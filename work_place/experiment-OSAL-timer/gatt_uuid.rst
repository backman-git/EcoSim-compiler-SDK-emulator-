                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:57 2015
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
      0010BC                         83 _GATT_FindUUIDRec_PARM_2:
      0010BC                         84 	.ds 1
      0010BD                         85 _GATT_FindUUIDRec_pUUID_1_185:
      0010BD                         86 	.ds 3
      0010C0                         87 _GATT_FindUUIDRec_pRec_1_186:
      0010C0                         88 	.ds 3
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
      004069                        134 _GATT_FindUUIDRec:
                           000007   135 	ar7 = 0x07
                           000006   136 	ar6 = 0x06
                           000005   137 	ar5 = 0x05
                           000004   138 	ar4 = 0x04
                           000003   139 	ar3 = 0x03
                           000002   140 	ar2 = 0x02
                           000001   141 	ar1 = 0x01
                           000000   142 	ar0 = 0x00
      004069 AF F0            [24]  143 	mov	r7,b
      00406B AE 83            [24]  144 	mov	r6,dph
      00406D E5 82            [12]  145 	mov	a,dpl
      00406F 90 10 BD         [24]  146 	mov	dptr,#_GATT_FindUUIDRec_pUUID_1_185
      004072 F0               [24]  147 	movx	@dptr,a
      004073 EE               [12]  148 	mov	a,r6
      004074 A3               [24]  149 	inc	dptr
      004075 F0               [24]  150 	movx	@dptr,a
      004076 EF               [12]  151 	mov	a,r7
      004077 A3               [24]  152 	inc	dptr
      004078 F0               [24]  153 	movx	@dptr,a
                                    154 ;	../fake_ble_stack/ble/host/gatt_uuid.c:263: const uint8 *pRec = NULL;
      004079 90 10 C0         [24]  155 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      00407C 74 00            [12]  156 	mov	a,#0x00
      00407E F0               [24]  157 	movx	@dptr,a
      00407F A3               [24]  158 	inc	dptr
      004080 F0               [24]  159 	movx	@dptr,a
      004081 A3               [24]  160 	inc	dptr
      004082 F0               [24]  161 	movx	@dptr,a
                                    162 ;	../fake_ble_stack/ble/host/gatt_uuid.c:265: if ( len == ATT_BT_UUID_SIZE )
      004083 90 10 BC         [24]  163 	mov	dptr,#_GATT_FindUUIDRec_PARM_2
      004086 E0               [24]  164 	movx	a,@dptr
      004087 FF               [12]  165 	mov	r7,a
      004088 BF 02 02         [24]  166 	cjne	r7,#0x02,00195$
      00408B 80 03            [24]  167 	sjmp	00196$
      00408D                        168 00195$:
      00408D 02 42 E8         [24]  169 	ljmp	00126$
      004090                        170 00196$:
                                    171 ;	../fake_ble_stack/ble/host/gatt_uuid.c:268: uint16 uuid = BUILD_UINT16( pUUID[0], pUUID[1] );
      004090 90 10 BD         [24]  172 	mov	dptr,#_GATT_FindUUIDRec_pUUID_1_185
      004093 E0               [24]  173 	movx	a,@dptr
      004094 FD               [12]  174 	mov	r5,a
      004095 A3               [24]  175 	inc	dptr
      004096 E0               [24]  176 	movx	a,@dptr
      004097 FE               [12]  177 	mov	r6,a
      004098 A3               [24]  178 	inc	dptr
      004099 E0               [24]  179 	movx	a,@dptr
      00409A FF               [12]  180 	mov	r7,a
      00409B 8D 82            [24]  181 	mov	dpl,r5
      00409D 8E 83            [24]  182 	mov	dph,r6
      00409F 8F F0            [24]  183 	mov	b,r7
      0040A1 12 5B 16         [24]  184 	lcall	__gptrget
      0040A4 FC               [12]  185 	mov	r4,a
      0040A5 7B 00            [12]  186 	mov	r3,#0x00
      0040A7 0D               [12]  187 	inc	r5
      0040A8 BD 00 01         [24]  188 	cjne	r5,#0x00,00197$
      0040AB 0E               [12]  189 	inc	r6
      0040AC                        190 00197$:
      0040AC 8D 82            [24]  191 	mov	dpl,r5
      0040AE 8E 83            [24]  192 	mov	dph,r6
      0040B0 8F F0            [24]  193 	mov	b,r7
      0040B2 12 5B 16         [24]  194 	lcall	__gptrget
      0040B5 FD               [12]  195 	mov	r5,a
      0040B6 7F 00            [12]  196 	mov	r7,#0x00
      0040B8 8D 07            [24]  197 	mov	ar7,r5
      0040BA 7D 00            [12]  198 	mov	r5,#0x00
      0040BC ED               [12]  199 	mov	a,r5
      0040BD 2C               [12]  200 	add	a,r4
      0040BE FC               [12]  201 	mov	r4,a
      0040BF EF               [12]  202 	mov	a,r7
      0040C0 3B               [12]  203 	addc	a,r3
      0040C1 FB               [12]  204 	mov	r3,a
                                    205 ;	../fake_ble_stack/ble/host/gatt_uuid.c:269: switch ( uuid )
      0040C2 8C 06            [24]  206 	mov	ar6,r4
      0040C4 8B 07            [24]  207 	mov	ar7,r3
      0040C6 BC 00 06         [24]  208 	cjne	r4,#0x00,00198$
      0040C9 BB 18 03         [24]  209 	cjne	r3,#0x18,00198$
      0040CC 02 41 86         [24]  210 	ljmp	00101$
      0040CF                        211 00198$:
      0040CF BE 01 06         [24]  212 	cjne	r6,#0x01,00199$
      0040D2 BF 18 03         [24]  213 	cjne	r7,#0x18,00199$
      0040D5 02 41 97         [24]  214 	ljmp	00102$
      0040D8                        215 00199$:
      0040D8 BE 00 06         [24]  216 	cjne	r6,#0x00,00200$
      0040DB BF 28 03         [24]  217 	cjne	r7,#0x28,00200$
      0040DE 02 41 A8         [24]  218 	ljmp	00103$
      0040E1                        219 00200$:
      0040E1 BE 01 06         [24]  220 	cjne	r6,#0x01,00201$
      0040E4 BF 28 03         [24]  221 	cjne	r7,#0x28,00201$
      0040E7 02 41 B9         [24]  222 	ljmp	00104$
      0040EA                        223 00201$:
      0040EA BE 02 06         [24]  224 	cjne	r6,#0x02,00202$
      0040ED BF 28 03         [24]  225 	cjne	r7,#0x28,00202$
      0040F0 02 41 CA         [24]  226 	ljmp	00105$
      0040F3                        227 00202$:
      0040F3 BE 03 06         [24]  228 	cjne	r6,#0x03,00203$
      0040F6 BF 28 03         [24]  229 	cjne	r7,#0x28,00203$
      0040F9 02 41 DB         [24]  230 	ljmp	00106$
      0040FC                        231 00203$:
      0040FC BE 00 06         [24]  232 	cjne	r6,#0x00,00204$
      0040FF BF 29 03         [24]  233 	cjne	r7,#0x29,00204$
      004102 02 41 EC         [24]  234 	ljmp	00107$
      004105                        235 00204$:
      004105 BE 01 06         [24]  236 	cjne	r6,#0x01,00205$
      004108 BF 29 03         [24]  237 	cjne	r7,#0x29,00205$
      00410B 02 41 FD         [24]  238 	ljmp	00108$
      00410E                        239 00205$:
      00410E BE 02 06         [24]  240 	cjne	r6,#0x02,00206$
      004111 BF 29 03         [24]  241 	cjne	r7,#0x29,00206$
      004114 02 42 0E         [24]  242 	ljmp	00109$
      004117                        243 00206$:
      004117 BE 03 06         [24]  244 	cjne	r6,#0x03,00207$
      00411A BF 29 03         [24]  245 	cjne	r7,#0x29,00207$
      00411D 02 42 1F         [24]  246 	ljmp	00110$
      004120                        247 00207$:
      004120 BE 04 06         [24]  248 	cjne	r6,#0x04,00208$
      004123 BF 29 03         [24]  249 	cjne	r7,#0x29,00208$
      004126 02 42 30         [24]  250 	ljmp	00111$
      004129                        251 00208$:
      004129 BE 05 06         [24]  252 	cjne	r6,#0x05,00209$
      00412C BF 29 03         [24]  253 	cjne	r7,#0x29,00209$
      00412F 02 42 41         [24]  254 	ljmp	00112$
      004132                        255 00209$:
      004132 BE 06 06         [24]  256 	cjne	r6,#0x06,00210$
      004135 BF 29 03         [24]  257 	cjne	r7,#0x29,00210$
      004138 02 42 52         [24]  258 	ljmp	00113$
      00413B                        259 00210$:
      00413B BE 07 06         [24]  260 	cjne	r6,#0x07,00211$
      00413E BF 29 03         [24]  261 	cjne	r7,#0x29,00211$
      004141 02 42 63         [24]  262 	ljmp	00114$
      004144                        263 00211$:
      004144 BE 08 06         [24]  264 	cjne	r6,#0x08,00212$
      004147 BF 29 03         [24]  265 	cjne	r7,#0x29,00212$
      00414A 02 42 74         [24]  266 	ljmp	00115$
      00414D                        267 00212$:
      00414D BE 00 06         [24]  268 	cjne	r6,#0x00,00213$
      004150 BF 2A 03         [24]  269 	cjne	r7,#0x2A,00213$
      004153 02 42 85         [24]  270 	ljmp	00116$
      004156                        271 00213$:
      004156 BE 01 06         [24]  272 	cjne	r6,#0x01,00214$
      004159 BF 2A 03         [24]  273 	cjne	r7,#0x2A,00214$
      00415C 02 42 96         [24]  274 	ljmp	00117$
      00415F                        275 00214$:
      00415F BE 02 06         [24]  276 	cjne	r6,#0x02,00215$
      004162 BF 2A 03         [24]  277 	cjne	r7,#0x2A,00215$
      004165 02 42 B8         [24]  278 	ljmp	00119$
      004168                        279 00215$:
      004168 BE 03 06         [24]  280 	cjne	r6,#0x03,00216$
      00416B BF 2A 03         [24]  281 	cjne	r7,#0x2A,00216$
      00416E 02 42 A7         [24]  282 	ljmp	00118$
      004171                        283 00216$:
      004171 BE 04 06         [24]  284 	cjne	r6,#0x04,00217$
      004174 BF 2A 03         [24]  285 	cjne	r7,#0x2A,00217$
      004177 02 42 C9         [24]  286 	ljmp	00120$
      00417A                        287 00217$:
      00417A BE 05 06         [24]  288 	cjne	r6,#0x05,00218$
      00417D BF 2A 03         [24]  289 	cjne	r7,#0x2A,00218$
      004180 02 42 DA         [24]  290 	ljmp	00121$
      004183                        291 00218$:
      004183 02 42 E8         [24]  292 	ljmp	00126$
                                    293 ;	../fake_ble_stack/ble/host/gatt_uuid.c:273: case GAP_SERVICE_UUID:
      004186                        294 00101$:
                                    295 ;	../fake_ble_stack/ble/host/gatt_uuid.c:274: pRec = gapServiceUUID;
      004186 90 10 C0         [24]  296 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004189 74 43            [12]  297 	mov	a,#_gapServiceUUID
      00418B F0               [24]  298 	movx	@dptr,a
      00418C 74 5B            [12]  299 	mov	a,#(_gapServiceUUID >> 8)
      00418E A3               [24]  300 	inc	dptr
      00418F F0               [24]  301 	movx	@dptr,a
      004190 74 80            [12]  302 	mov	a,#0x80
      004192 A3               [24]  303 	inc	dptr
      004193 F0               [24]  304 	movx	@dptr,a
                                    305 ;	../fake_ble_stack/ble/host/gatt_uuid.c:275: break;
      004194 02 42 E8         [24]  306 	ljmp	00126$
                                    307 ;	../fake_ble_stack/ble/host/gatt_uuid.c:277: case GATT_SERVICE_UUID:
      004197                        308 00102$:
                                    309 ;	../fake_ble_stack/ble/host/gatt_uuid.c:278: pRec = gattServiceUUID;
      004197 90 10 C0         [24]  310 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      00419A 74 45            [12]  311 	mov	a,#_gattServiceUUID
      00419C F0               [24]  312 	movx	@dptr,a
      00419D 74 5B            [12]  313 	mov	a,#(_gattServiceUUID >> 8)
      00419F A3               [24]  314 	inc	dptr
      0041A0 F0               [24]  315 	movx	@dptr,a
      0041A1 74 80            [12]  316 	mov	a,#0x80
      0041A3 A3               [24]  317 	inc	dptr
      0041A4 F0               [24]  318 	movx	@dptr,a
                                    319 ;	../fake_ble_stack/ble/host/gatt_uuid.c:279: break;
      0041A5 02 42 E8         [24]  320 	ljmp	00126$
                                    321 ;	../fake_ble_stack/ble/host/gatt_uuid.c:283: case GATT_PRIMARY_SERVICE_UUID:
      0041A8                        322 00103$:
                                    323 ;	../fake_ble_stack/ble/host/gatt_uuid.c:284: pRec = primaryServiceUUID;
      0041A8 90 10 C0         [24]  324 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0041AB 74 4B            [12]  325 	mov	a,#_primaryServiceUUID
      0041AD F0               [24]  326 	movx	@dptr,a
      0041AE 74 5B            [12]  327 	mov	a,#(_primaryServiceUUID >> 8)
      0041B0 A3               [24]  328 	inc	dptr
      0041B1 F0               [24]  329 	movx	@dptr,a
      0041B2 74 80            [12]  330 	mov	a,#0x80
      0041B4 A3               [24]  331 	inc	dptr
      0041B5 F0               [24]  332 	movx	@dptr,a
                                    333 ;	../fake_ble_stack/ble/host/gatt_uuid.c:285: break;
      0041B6 02 42 E8         [24]  334 	ljmp	00126$
                                    335 ;	../fake_ble_stack/ble/host/gatt_uuid.c:287: case GATT_SECONDARY_SERVICE_UUID:
      0041B9                        336 00104$:
                                    337 ;	../fake_ble_stack/ble/host/gatt_uuid.c:288: pRec = secondaryServiceUUID;
      0041B9 90 10 C0         [24]  338 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0041BC 74 4D            [12]  339 	mov	a,#_secondaryServiceUUID
      0041BE F0               [24]  340 	movx	@dptr,a
      0041BF 74 5B            [12]  341 	mov	a,#(_secondaryServiceUUID >> 8)
      0041C1 A3               [24]  342 	inc	dptr
      0041C2 F0               [24]  343 	movx	@dptr,a
      0041C3 74 80            [12]  344 	mov	a,#0x80
      0041C5 A3               [24]  345 	inc	dptr
      0041C6 F0               [24]  346 	movx	@dptr,a
                                    347 ;	../fake_ble_stack/ble/host/gatt_uuid.c:289: break;
      0041C7 02 42 E8         [24]  348 	ljmp	00126$
                                    349 ;	../fake_ble_stack/ble/host/gatt_uuid.c:291: case GATT_INCLUDE_UUID:
      0041CA                        350 00105$:
                                    351 ;	../fake_ble_stack/ble/host/gatt_uuid.c:292: pRec = includeUUID;
      0041CA 90 10 C0         [24]  352 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0041CD 74 4F            [12]  353 	mov	a,#_includeUUID
      0041CF F0               [24]  354 	movx	@dptr,a
      0041D0 74 5B            [12]  355 	mov	a,#(_includeUUID >> 8)
      0041D2 A3               [24]  356 	inc	dptr
      0041D3 F0               [24]  357 	movx	@dptr,a
      0041D4 74 80            [12]  358 	mov	a,#0x80
      0041D6 A3               [24]  359 	inc	dptr
      0041D7 F0               [24]  360 	movx	@dptr,a
                                    361 ;	../fake_ble_stack/ble/host/gatt_uuid.c:293: break;
      0041D8 02 42 E8         [24]  362 	ljmp	00126$
                                    363 ;	../fake_ble_stack/ble/host/gatt_uuid.c:295: case GATT_CHARACTER_UUID:
      0041DB                        364 00106$:
                                    365 ;	../fake_ble_stack/ble/host/gatt_uuid.c:296: pRec = characterUUID;
      0041DB 90 10 C0         [24]  366 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0041DE 74 51            [12]  367 	mov	a,#_characterUUID
      0041E0 F0               [24]  368 	movx	@dptr,a
      0041E1 74 5B            [12]  369 	mov	a,#(_characterUUID >> 8)
      0041E3 A3               [24]  370 	inc	dptr
      0041E4 F0               [24]  371 	movx	@dptr,a
      0041E5 74 80            [12]  372 	mov	a,#0x80
      0041E7 A3               [24]  373 	inc	dptr
      0041E8 F0               [24]  374 	movx	@dptr,a
                                    375 ;	../fake_ble_stack/ble/host/gatt_uuid.c:297: break;
      0041E9 02 42 E8         [24]  376 	ljmp	00126$
                                    377 ;	../fake_ble_stack/ble/host/gatt_uuid.c:301: case GATT_CHAR_EXT_PROPS_UUID:
      0041EC                        378 00107$:
                                    379 ;	../fake_ble_stack/ble/host/gatt_uuid.c:302: pRec = charExtPropsUUID;
      0041EC 90 10 C0         [24]  380 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0041EF 74 53            [12]  381 	mov	a,#_charExtPropsUUID
      0041F1 F0               [24]  382 	movx	@dptr,a
      0041F2 74 5B            [12]  383 	mov	a,#(_charExtPropsUUID >> 8)
      0041F4 A3               [24]  384 	inc	dptr
      0041F5 F0               [24]  385 	movx	@dptr,a
      0041F6 74 80            [12]  386 	mov	a,#0x80
      0041F8 A3               [24]  387 	inc	dptr
      0041F9 F0               [24]  388 	movx	@dptr,a
                                    389 ;	../fake_ble_stack/ble/host/gatt_uuid.c:303: break;
      0041FA 02 42 E8         [24]  390 	ljmp	00126$
                                    391 ;	../fake_ble_stack/ble/host/gatt_uuid.c:305: case GATT_CHAR_USER_DESC_UUID:
      0041FD                        392 00108$:
                                    393 ;	../fake_ble_stack/ble/host/gatt_uuid.c:306: pRec = charUserDescUUID;
      0041FD 90 10 C0         [24]  394 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004200 74 55            [12]  395 	mov	a,#_charUserDescUUID
      004202 F0               [24]  396 	movx	@dptr,a
      004203 74 5B            [12]  397 	mov	a,#(_charUserDescUUID >> 8)
      004205 A3               [24]  398 	inc	dptr
      004206 F0               [24]  399 	movx	@dptr,a
      004207 74 80            [12]  400 	mov	a,#0x80
      004209 A3               [24]  401 	inc	dptr
      00420A F0               [24]  402 	movx	@dptr,a
                                    403 ;	../fake_ble_stack/ble/host/gatt_uuid.c:307: break;
      00420B 02 42 E8         [24]  404 	ljmp	00126$
                                    405 ;	../fake_ble_stack/ble/host/gatt_uuid.c:309: case GATT_CLIENT_CHAR_CFG_UUID:
      00420E                        406 00109$:
                                    407 ;	../fake_ble_stack/ble/host/gatt_uuid.c:310: pRec = clientCharCfgUUID;
      00420E 90 10 C0         [24]  408 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004211 74 57            [12]  409 	mov	a,#_clientCharCfgUUID
      004213 F0               [24]  410 	movx	@dptr,a
      004214 74 5B            [12]  411 	mov	a,#(_clientCharCfgUUID >> 8)
      004216 A3               [24]  412 	inc	dptr
      004217 F0               [24]  413 	movx	@dptr,a
      004218 74 80            [12]  414 	mov	a,#0x80
      00421A A3               [24]  415 	inc	dptr
      00421B F0               [24]  416 	movx	@dptr,a
                                    417 ;	../fake_ble_stack/ble/host/gatt_uuid.c:311: break;
      00421C 02 42 E8         [24]  418 	ljmp	00126$
                                    419 ;	../fake_ble_stack/ble/host/gatt_uuid.c:313: case GATT_SERV_CHAR_CFG_UUID:
      00421F                        420 00110$:
                                    421 ;	../fake_ble_stack/ble/host/gatt_uuid.c:314: pRec = servCharCfgUUID;
      00421F 90 10 C0         [24]  422 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004222 74 59            [12]  423 	mov	a,#_servCharCfgUUID
      004224 F0               [24]  424 	movx	@dptr,a
      004225 74 5B            [12]  425 	mov	a,#(_servCharCfgUUID >> 8)
      004227 A3               [24]  426 	inc	dptr
      004228 F0               [24]  427 	movx	@dptr,a
      004229 74 80            [12]  428 	mov	a,#0x80
      00422B A3               [24]  429 	inc	dptr
      00422C F0               [24]  430 	movx	@dptr,a
                                    431 ;	../fake_ble_stack/ble/host/gatt_uuid.c:315: break;
      00422D 02 42 E8         [24]  432 	ljmp	00126$
                                    433 ;	../fake_ble_stack/ble/host/gatt_uuid.c:317: case GATT_CHAR_FORMAT_UUID:
      004230                        434 00111$:
                                    435 ;	../fake_ble_stack/ble/host/gatt_uuid.c:318: pRec = charFormatUUID;
      004230 90 10 C0         [24]  436 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004233 74 5B            [12]  437 	mov	a,#_charFormatUUID
      004235 F0               [24]  438 	movx	@dptr,a
      004236 74 5B            [12]  439 	mov	a,#(_charFormatUUID >> 8)
      004238 A3               [24]  440 	inc	dptr
      004239 F0               [24]  441 	movx	@dptr,a
      00423A 74 80            [12]  442 	mov	a,#0x80
      00423C A3               [24]  443 	inc	dptr
      00423D F0               [24]  444 	movx	@dptr,a
                                    445 ;	../fake_ble_stack/ble/host/gatt_uuid.c:319: break;
      00423E 02 42 E8         [24]  446 	ljmp	00126$
                                    447 ;	../fake_ble_stack/ble/host/gatt_uuid.c:321: case GATT_CHAR_AGG_FORMAT_UUID:
      004241                        448 00112$:
                                    449 ;	../fake_ble_stack/ble/host/gatt_uuid.c:322: pRec = charAggFormatUUID;
      004241 90 10 C0         [24]  450 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004244 74 5D            [12]  451 	mov	a,#_charAggFormatUUID
      004246 F0               [24]  452 	movx	@dptr,a
      004247 74 5B            [12]  453 	mov	a,#(_charAggFormatUUID >> 8)
      004249 A3               [24]  454 	inc	dptr
      00424A F0               [24]  455 	movx	@dptr,a
      00424B 74 80            [12]  456 	mov	a,#0x80
      00424D A3               [24]  457 	inc	dptr
      00424E F0               [24]  458 	movx	@dptr,a
                                    459 ;	../fake_ble_stack/ble/host/gatt_uuid.c:323: break;
      00424F 02 42 E8         [24]  460 	ljmp	00126$
                                    461 ;	../fake_ble_stack/ble/host/gatt_uuid.c:325: case GATT_VALID_RANGE_UUID:
      004252                        462 00113$:
                                    463 ;	../fake_ble_stack/ble/host/gatt_uuid.c:326: pRec = validRangeUUID;
      004252 90 10 C0         [24]  464 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004255 74 71            [12]  465 	mov	a,#_validRangeUUID
      004257 F0               [24]  466 	movx	@dptr,a
      004258 74 5B            [12]  467 	mov	a,#(_validRangeUUID >> 8)
      00425A A3               [24]  468 	inc	dptr
      00425B F0               [24]  469 	movx	@dptr,a
      00425C 74 80            [12]  470 	mov	a,#0x80
      00425E A3               [24]  471 	inc	dptr
      00425F F0               [24]  472 	movx	@dptr,a
                                    473 ;	../fake_ble_stack/ble/host/gatt_uuid.c:327: break;
      004260 02 42 E8         [24]  474 	ljmp	00126$
                                    475 ;	../fake_ble_stack/ble/host/gatt_uuid.c:329: case GATT_EXT_REPORT_REF_UUID:
      004263                        476 00114$:
                                    477 ;	../fake_ble_stack/ble/host/gatt_uuid.c:330: pRec = extReportRefUUID;
      004263 90 10 C0         [24]  478 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004266 74 73            [12]  479 	mov	a,#_extReportRefUUID
      004268 F0               [24]  480 	movx	@dptr,a
      004269 74 5B            [12]  481 	mov	a,#(_extReportRefUUID >> 8)
      00426B A3               [24]  482 	inc	dptr
      00426C F0               [24]  483 	movx	@dptr,a
      00426D 74 80            [12]  484 	mov	a,#0x80
      00426F A3               [24]  485 	inc	dptr
      004270 F0               [24]  486 	movx	@dptr,a
                                    487 ;	../fake_ble_stack/ble/host/gatt_uuid.c:331: break;
      004271 02 42 E8         [24]  488 	ljmp	00126$
                                    489 ;	../fake_ble_stack/ble/host/gatt_uuid.c:333: case GATT_REPORT_REF_UUID:
      004274                        490 00115$:
                                    491 ;	../fake_ble_stack/ble/host/gatt_uuid.c:334: pRec = reportRefUUID;
      004274 90 10 C0         [24]  492 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004277 74 75            [12]  493 	mov	a,#_reportRefUUID
      004279 F0               [24]  494 	movx	@dptr,a
      00427A 74 5B            [12]  495 	mov	a,#(_reportRefUUID >> 8)
      00427C A3               [24]  496 	inc	dptr
      00427D F0               [24]  497 	movx	@dptr,a
      00427E 74 80            [12]  498 	mov	a,#0x80
      004280 A3               [24]  499 	inc	dptr
      004281 F0               [24]  500 	movx	@dptr,a
                                    501 ;	../fake_ble_stack/ble/host/gatt_uuid.c:335: break;
      004282 02 42 E8         [24]  502 	ljmp	00126$
                                    503 ;	../fake_ble_stack/ble/host/gatt_uuid.c:339: case DEVICE_NAME_UUID:
      004285                        504 00116$:
                                    505 ;	../fake_ble_stack/ble/host/gatt_uuid.c:340: pRec = deviceNameUUID;
      004285 90 10 C0         [24]  506 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004288 74 5F            [12]  507 	mov	a,#_deviceNameUUID
      00428A F0               [24]  508 	movx	@dptr,a
      00428B 74 5B            [12]  509 	mov	a,#(_deviceNameUUID >> 8)
      00428D A3               [24]  510 	inc	dptr
      00428E F0               [24]  511 	movx	@dptr,a
      00428F 74 80            [12]  512 	mov	a,#0x80
      004291 A3               [24]  513 	inc	dptr
      004292 F0               [24]  514 	movx	@dptr,a
                                    515 ;	../fake_ble_stack/ble/host/gatt_uuid.c:341: break;
      004293 02 42 E8         [24]  516 	ljmp	00126$
                                    517 ;	../fake_ble_stack/ble/host/gatt_uuid.c:343: case APPEARANCE_UUID:
      004296                        518 00117$:
                                    519 ;	../fake_ble_stack/ble/host/gatt_uuid.c:344: pRec = appearanceUUID;
      004296 90 10 C0         [24]  520 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004299 74 61            [12]  521 	mov	a,#_appearanceUUID
      00429B F0               [24]  522 	movx	@dptr,a
      00429C 74 5B            [12]  523 	mov	a,#(_appearanceUUID >> 8)
      00429E A3               [24]  524 	inc	dptr
      00429F F0               [24]  525 	movx	@dptr,a
      0042A0 74 80            [12]  526 	mov	a,#0x80
      0042A2 A3               [24]  527 	inc	dptr
      0042A3 F0               [24]  528 	movx	@dptr,a
                                    529 ;	../fake_ble_stack/ble/host/gatt_uuid.c:345: break;
      0042A4 02 42 E8         [24]  530 	ljmp	00126$
                                    531 ;	../fake_ble_stack/ble/host/gatt_uuid.c:347: case RECONNECT_ADDR_UUID:
      0042A7                        532 00118$:
                                    533 ;	../fake_ble_stack/ble/host/gatt_uuid.c:348: pRec = reconnectAddrUUID;
      0042A7 90 10 C0         [24]  534 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042AA 74 65            [12]  535 	mov	a,#_reconnectAddrUUID
      0042AC F0               [24]  536 	movx	@dptr,a
      0042AD 74 5B            [12]  537 	mov	a,#(_reconnectAddrUUID >> 8)
      0042AF A3               [24]  538 	inc	dptr
      0042B0 F0               [24]  539 	movx	@dptr,a
      0042B1 74 80            [12]  540 	mov	a,#0x80
      0042B3 A3               [24]  541 	inc	dptr
      0042B4 F0               [24]  542 	movx	@dptr,a
                                    543 ;	../fake_ble_stack/ble/host/gatt_uuid.c:349: break;
      0042B5 02 42 E8         [24]  544 	ljmp	00126$
                                    545 ;	../fake_ble_stack/ble/host/gatt_uuid.c:351: case PERI_PRIVACY_FLAG_UUID:
      0042B8                        546 00119$:
                                    547 ;	../fake_ble_stack/ble/host/gatt_uuid.c:352: pRec = periPrivacyFlagUUID;
      0042B8 90 10 C0         [24]  548 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042BB 74 63            [12]  549 	mov	a,#_periPrivacyFlagUUID
      0042BD F0               [24]  550 	movx	@dptr,a
      0042BE 74 5B            [12]  551 	mov	a,#(_periPrivacyFlagUUID >> 8)
      0042C0 A3               [24]  552 	inc	dptr
      0042C1 F0               [24]  553 	movx	@dptr,a
      0042C2 74 80            [12]  554 	mov	a,#0x80
      0042C4 A3               [24]  555 	inc	dptr
      0042C5 F0               [24]  556 	movx	@dptr,a
                                    557 ;	../fake_ble_stack/ble/host/gatt_uuid.c:353: break;
      0042C6 02 42 E8         [24]  558 	ljmp	00126$
                                    559 ;	../fake_ble_stack/ble/host/gatt_uuid.c:355: case PERI_CONN_PARAM_UUID:
      0042C9                        560 00120$:
                                    561 ;	../fake_ble_stack/ble/host/gatt_uuid.c:356: pRec = periConnParamUUID;
      0042C9 90 10 C0         [24]  562 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042CC 74 67            [12]  563 	mov	a,#_periConnParamUUID
      0042CE F0               [24]  564 	movx	@dptr,a
      0042CF 74 5B            [12]  565 	mov	a,#(_periConnParamUUID >> 8)
      0042D1 A3               [24]  566 	inc	dptr
      0042D2 F0               [24]  567 	movx	@dptr,a
      0042D3 74 80            [12]  568 	mov	a,#0x80
      0042D5 A3               [24]  569 	inc	dptr
      0042D6 F0               [24]  570 	movx	@dptr,a
                                    571 ;	../fake_ble_stack/ble/host/gatt_uuid.c:357: break;
      0042D7 02 42 E8         [24]  572 	ljmp	00126$
                                    573 ;	../fake_ble_stack/ble/host/gatt_uuid.c:359: case SERVICE_CHANGED_UUID:
      0042DA                        574 00121$:
                                    575 ;	../fake_ble_stack/ble/host/gatt_uuid.c:360: pRec = serviceChangedUUID;
      0042DA 90 10 C0         [24]  576 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042DD 74 69            [12]  577 	mov	a,#_serviceChangedUUID
      0042DF F0               [24]  578 	movx	@dptr,a
      0042E0 74 5B            [12]  579 	mov	a,#(_serviceChangedUUID >> 8)
      0042E2 A3               [24]  580 	inc	dptr
      0042E3 F0               [24]  581 	movx	@dptr,a
      0042E4 74 80            [12]  582 	mov	a,#0x80
      0042E6 A3               [24]  583 	inc	dptr
      0042E7 F0               [24]  584 	movx	@dptr,a
                                    585 ;	../fake_ble_stack/ble/host/gatt_uuid.c:371: else if ( len == ATT_UUID_SIZE )
      0042E8                        586 00126$:
                                    587 ;	../fake_ble_stack/ble/host/gatt_uuid.c:376: return ( pRec );
      0042E8 90 10 C0         [24]  588 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042EB E0               [24]  589 	movx	a,@dptr
      0042EC FD               [12]  590 	mov	r5,a
      0042ED A3               [24]  591 	inc	dptr
      0042EE E0               [24]  592 	movx	a,@dptr
      0042EF FE               [12]  593 	mov	r6,a
      0042F0 A3               [24]  594 	inc	dptr
      0042F1 E0               [24]  595 	movx	a,@dptr
      0042F2 FF               [12]  596 	mov	r7,a
      0042F3 8D 82            [24]  597 	mov	dpl,r5
      0042F5 8E 83            [24]  598 	mov	dph,r6
      0042F7 8F F0            [24]  599 	mov	b,r7
      0042F9                        600 00127$:
      0042F9 22               [24]  601 	ret
                                    602 	.area CSEG    (CODE)
                                    603 	.area CONST   (CODE)
      005B43                        604 _gapServiceUUID:
      005B43 00                     605 	.db #0x00	; 0
      005B44 18                     606 	.db #0x18	; 24
      005B45                        607 _gattServiceUUID:
      005B45 01                     608 	.db #0x01	; 1
      005B46 18                     609 	.db #0x18	; 24
      005B47                        610 _manufactServiceUUID:
      005B47 05                     611 	.db #0x05	; 5
      005B48 A0                     612 	.db #0xA0	; 160
      005B49                        613 _addressServiceUUID:
      005B49 06                     614 	.db #0x06	; 6
      005B4A A0                     615 	.db #0xA0	; 160
      005B4B                        616 _primaryServiceUUID:
      005B4B 00                     617 	.db #0x00	; 0
      005B4C 28                     618 	.db #0x28	; 40
      005B4D                        619 _secondaryServiceUUID:
      005B4D 01                     620 	.db #0x01	; 1
      005B4E 28                     621 	.db #0x28	; 40
      005B4F                        622 _includeUUID:
      005B4F 02                     623 	.db #0x02	; 2
      005B50 28                     624 	.db #0x28	; 40
      005B51                        625 _characterUUID:
      005B51 03                     626 	.db #0x03	; 3
      005B52 28                     627 	.db #0x28	; 40
      005B53                        628 _charExtPropsUUID:
      005B53 00                     629 	.db #0x00	; 0
      005B54 29                     630 	.db #0x29	; 41
      005B55                        631 _charUserDescUUID:
      005B55 01                     632 	.db #0x01	; 1
      005B56 29                     633 	.db #0x29	; 41
      005B57                        634 _clientCharCfgUUID:
      005B57 02                     635 	.db #0x02	; 2
      005B58 29                     636 	.db #0x29	; 41
      005B59                        637 _servCharCfgUUID:
      005B59 03                     638 	.db #0x03	; 3
      005B5A 29                     639 	.db #0x29	; 41
      005B5B                        640 _charFormatUUID:
      005B5B 04                     641 	.db #0x04	; 4
      005B5C 29                     642 	.db #0x29	; 41
      005B5D                        643 _charAggFormatUUID:
      005B5D 05                     644 	.db #0x05	; 5
      005B5E 29                     645 	.db #0x29	; 41
      005B5F                        646 _deviceNameUUID:
      005B5F 00                     647 	.db #0x00	; 0
      005B60 2A                     648 	.db #0x2A	; 42
      005B61                        649 _appearanceUUID:
      005B61 01                     650 	.db #0x01	; 1
      005B62 2A                     651 	.db #0x2A	; 42
      005B63                        652 _periPrivacyFlagUUID:
      005B63 02                     653 	.db #0x02	; 2
      005B64 2A                     654 	.db #0x2A	; 42
      005B65                        655 _reconnectAddrUUID:
      005B65 03                     656 	.db #0x03	; 3
      005B66 2A                     657 	.db #0x2A	; 42
      005B67                        658 _periConnParamUUID:
      005B67 04                     659 	.db #0x04	; 4
      005B68 2A                     660 	.db #0x2A	; 42
      005B69                        661 _serviceChangedUUID:
      005B69 05                     662 	.db #0x05	; 5
      005B6A 2A                     663 	.db #0x2A	; 42
      005B6B                        664 _manuNameUUID:
      005B6B 08                     665 	.db #0x08	; 8
      005B6C B0                     666 	.db #0xB0	; 176
      005B6D                        667 _serialNumUUID:
      005B6D 09                     668 	.db #0x09	; 9
      005B6E B0                     669 	.db #0xB0	; 176
      005B6F                        670 _manuAddrUUID:
      005B6F 0A                     671 	.db #0x0A	; 10
      005B70 B0                     672 	.db #0xB0	; 176
      005B71                        673 _validRangeUUID:
      005B71 06                     674 	.db #0x06	; 6
      005B72 29                     675 	.db #0x29	; 41
      005B73                        676 _extReportRefUUID:
      005B73 07                     677 	.db #0x07	; 7
      005B74 29                     678 	.db #0x29	; 41
      005B75                        679 _reportRefUUID:
      005B75 08                     680 	.db #0x08	; 8
      005B76 29                     681 	.db #0x29	; 41
                                    682 	.area CABS    (ABS,CODE)
