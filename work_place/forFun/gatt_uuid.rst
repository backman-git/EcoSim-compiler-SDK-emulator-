                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:10:06 2015
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
      0010BF                         83 _GATT_FindUUIDRec_PARM_2:
      0010BF                         84 	.ds 1
      0010C0                         85 _GATT_FindUUIDRec_pUUID_1_185:
      0010C0                         86 	.ds 3
      0010C3                         87 _GATT_FindUUIDRec_pRec_1_186:
      0010C3                         88 	.ds 3
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
      0040CF                        134 _GATT_FindUUIDRec:
                           000007   135 	ar7 = 0x07
                           000006   136 	ar6 = 0x06
                           000005   137 	ar5 = 0x05
                           000004   138 	ar4 = 0x04
                           000003   139 	ar3 = 0x03
                           000002   140 	ar2 = 0x02
                           000001   141 	ar1 = 0x01
                           000000   142 	ar0 = 0x00
      0040CF AF F0            [24]  143 	mov	r7,b
      0040D1 AE 83            [24]  144 	mov	r6,dph
      0040D3 E5 82            [12]  145 	mov	a,dpl
      0040D5 90 10 C0         [24]  146 	mov	dptr,#_GATT_FindUUIDRec_pUUID_1_185
      0040D8 F0               [24]  147 	movx	@dptr,a
      0040D9 EE               [12]  148 	mov	a,r6
      0040DA A3               [24]  149 	inc	dptr
      0040DB F0               [24]  150 	movx	@dptr,a
      0040DC EF               [12]  151 	mov	a,r7
      0040DD A3               [24]  152 	inc	dptr
      0040DE F0               [24]  153 	movx	@dptr,a
                                    154 ;	../fake_ble_stack/ble/host/gatt_uuid.c:263: const uint8 *pRec = NULL;
      0040DF 90 10 C3         [24]  155 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0040E2 74 00            [12]  156 	mov	a,#0x00
      0040E4 F0               [24]  157 	movx	@dptr,a
      0040E5 A3               [24]  158 	inc	dptr
      0040E6 F0               [24]  159 	movx	@dptr,a
      0040E7 A3               [24]  160 	inc	dptr
      0040E8 F0               [24]  161 	movx	@dptr,a
                                    162 ;	../fake_ble_stack/ble/host/gatt_uuid.c:265: if ( len == ATT_BT_UUID_SIZE )
      0040E9 90 10 BF         [24]  163 	mov	dptr,#_GATT_FindUUIDRec_PARM_2
      0040EC E0               [24]  164 	movx	a,@dptr
      0040ED FF               [12]  165 	mov	r7,a
      0040EE BF 02 02         [24]  166 	cjne	r7,#0x02,00195$
      0040F1 80 03            [24]  167 	sjmp	00196$
      0040F3                        168 00195$:
      0040F3 02 43 4E         [24]  169 	ljmp	00126$
      0040F6                        170 00196$:
                                    171 ;	../fake_ble_stack/ble/host/gatt_uuid.c:268: uint16 uuid = BUILD_UINT16( pUUID[0], pUUID[1] );
      0040F6 90 10 C0         [24]  172 	mov	dptr,#_GATT_FindUUIDRec_pUUID_1_185
      0040F9 E0               [24]  173 	movx	a,@dptr
      0040FA FD               [12]  174 	mov	r5,a
      0040FB A3               [24]  175 	inc	dptr
      0040FC E0               [24]  176 	movx	a,@dptr
      0040FD FE               [12]  177 	mov	r6,a
      0040FE A3               [24]  178 	inc	dptr
      0040FF E0               [24]  179 	movx	a,@dptr
      004100 FF               [12]  180 	mov	r7,a
      004101 8D 82            [24]  181 	mov	dpl,r5
      004103 8E 83            [24]  182 	mov	dph,r6
      004105 8F F0            [24]  183 	mov	b,r7
      004107 12 5B 6D         [24]  184 	lcall	__gptrget
      00410A FC               [12]  185 	mov	r4,a
      00410B 7B 00            [12]  186 	mov	r3,#0x00
      00410D 0D               [12]  187 	inc	r5
      00410E BD 00 01         [24]  188 	cjne	r5,#0x00,00197$
      004111 0E               [12]  189 	inc	r6
      004112                        190 00197$:
      004112 8D 82            [24]  191 	mov	dpl,r5
      004114 8E 83            [24]  192 	mov	dph,r6
      004116 8F F0            [24]  193 	mov	b,r7
      004118 12 5B 6D         [24]  194 	lcall	__gptrget
      00411B FD               [12]  195 	mov	r5,a
      00411C 7F 00            [12]  196 	mov	r7,#0x00
      00411E 8D 07            [24]  197 	mov	ar7,r5
      004120 7D 00            [12]  198 	mov	r5,#0x00
      004122 ED               [12]  199 	mov	a,r5
      004123 2C               [12]  200 	add	a,r4
      004124 FC               [12]  201 	mov	r4,a
      004125 EF               [12]  202 	mov	a,r7
      004126 3B               [12]  203 	addc	a,r3
      004127 FB               [12]  204 	mov	r3,a
                                    205 ;	../fake_ble_stack/ble/host/gatt_uuid.c:269: switch ( uuid )
      004128 8C 06            [24]  206 	mov	ar6,r4
      00412A 8B 07            [24]  207 	mov	ar7,r3
      00412C BC 00 06         [24]  208 	cjne	r4,#0x00,00198$
      00412F BB 18 03         [24]  209 	cjne	r3,#0x18,00198$
      004132 02 41 EC         [24]  210 	ljmp	00101$
      004135                        211 00198$:
      004135 BE 01 06         [24]  212 	cjne	r6,#0x01,00199$
      004138 BF 18 03         [24]  213 	cjne	r7,#0x18,00199$
      00413B 02 41 FD         [24]  214 	ljmp	00102$
      00413E                        215 00199$:
      00413E BE 00 06         [24]  216 	cjne	r6,#0x00,00200$
      004141 BF 28 03         [24]  217 	cjne	r7,#0x28,00200$
      004144 02 42 0E         [24]  218 	ljmp	00103$
      004147                        219 00200$:
      004147 BE 01 06         [24]  220 	cjne	r6,#0x01,00201$
      00414A BF 28 03         [24]  221 	cjne	r7,#0x28,00201$
      00414D 02 42 1F         [24]  222 	ljmp	00104$
      004150                        223 00201$:
      004150 BE 02 06         [24]  224 	cjne	r6,#0x02,00202$
      004153 BF 28 03         [24]  225 	cjne	r7,#0x28,00202$
      004156 02 42 30         [24]  226 	ljmp	00105$
      004159                        227 00202$:
      004159 BE 03 06         [24]  228 	cjne	r6,#0x03,00203$
      00415C BF 28 03         [24]  229 	cjne	r7,#0x28,00203$
      00415F 02 42 41         [24]  230 	ljmp	00106$
      004162                        231 00203$:
      004162 BE 00 06         [24]  232 	cjne	r6,#0x00,00204$
      004165 BF 29 03         [24]  233 	cjne	r7,#0x29,00204$
      004168 02 42 52         [24]  234 	ljmp	00107$
      00416B                        235 00204$:
      00416B BE 01 06         [24]  236 	cjne	r6,#0x01,00205$
      00416E BF 29 03         [24]  237 	cjne	r7,#0x29,00205$
      004171 02 42 63         [24]  238 	ljmp	00108$
      004174                        239 00205$:
      004174 BE 02 06         [24]  240 	cjne	r6,#0x02,00206$
      004177 BF 29 03         [24]  241 	cjne	r7,#0x29,00206$
      00417A 02 42 74         [24]  242 	ljmp	00109$
      00417D                        243 00206$:
      00417D BE 03 06         [24]  244 	cjne	r6,#0x03,00207$
      004180 BF 29 03         [24]  245 	cjne	r7,#0x29,00207$
      004183 02 42 85         [24]  246 	ljmp	00110$
      004186                        247 00207$:
      004186 BE 04 06         [24]  248 	cjne	r6,#0x04,00208$
      004189 BF 29 03         [24]  249 	cjne	r7,#0x29,00208$
      00418C 02 42 96         [24]  250 	ljmp	00111$
      00418F                        251 00208$:
      00418F BE 05 06         [24]  252 	cjne	r6,#0x05,00209$
      004192 BF 29 03         [24]  253 	cjne	r7,#0x29,00209$
      004195 02 42 A7         [24]  254 	ljmp	00112$
      004198                        255 00209$:
      004198 BE 06 06         [24]  256 	cjne	r6,#0x06,00210$
      00419B BF 29 03         [24]  257 	cjne	r7,#0x29,00210$
      00419E 02 42 B8         [24]  258 	ljmp	00113$
      0041A1                        259 00210$:
      0041A1 BE 07 06         [24]  260 	cjne	r6,#0x07,00211$
      0041A4 BF 29 03         [24]  261 	cjne	r7,#0x29,00211$
      0041A7 02 42 C9         [24]  262 	ljmp	00114$
      0041AA                        263 00211$:
      0041AA BE 08 06         [24]  264 	cjne	r6,#0x08,00212$
      0041AD BF 29 03         [24]  265 	cjne	r7,#0x29,00212$
      0041B0 02 42 DA         [24]  266 	ljmp	00115$
      0041B3                        267 00212$:
      0041B3 BE 00 06         [24]  268 	cjne	r6,#0x00,00213$
      0041B6 BF 2A 03         [24]  269 	cjne	r7,#0x2A,00213$
      0041B9 02 42 EB         [24]  270 	ljmp	00116$
      0041BC                        271 00213$:
      0041BC BE 01 06         [24]  272 	cjne	r6,#0x01,00214$
      0041BF BF 2A 03         [24]  273 	cjne	r7,#0x2A,00214$
      0041C2 02 42 FC         [24]  274 	ljmp	00117$
      0041C5                        275 00214$:
      0041C5 BE 02 06         [24]  276 	cjne	r6,#0x02,00215$
      0041C8 BF 2A 03         [24]  277 	cjne	r7,#0x2A,00215$
      0041CB 02 43 1E         [24]  278 	ljmp	00119$
      0041CE                        279 00215$:
      0041CE BE 03 06         [24]  280 	cjne	r6,#0x03,00216$
      0041D1 BF 2A 03         [24]  281 	cjne	r7,#0x2A,00216$
      0041D4 02 43 0D         [24]  282 	ljmp	00118$
      0041D7                        283 00216$:
      0041D7 BE 04 06         [24]  284 	cjne	r6,#0x04,00217$
      0041DA BF 2A 03         [24]  285 	cjne	r7,#0x2A,00217$
      0041DD 02 43 2F         [24]  286 	ljmp	00120$
      0041E0                        287 00217$:
      0041E0 BE 05 06         [24]  288 	cjne	r6,#0x05,00218$
      0041E3 BF 2A 03         [24]  289 	cjne	r7,#0x2A,00218$
      0041E6 02 43 40         [24]  290 	ljmp	00121$
      0041E9                        291 00218$:
      0041E9 02 43 4E         [24]  292 	ljmp	00126$
                                    293 ;	../fake_ble_stack/ble/host/gatt_uuid.c:273: case GAP_SERVICE_UUID:
      0041EC                        294 00101$:
                                    295 ;	../fake_ble_stack/ble/host/gatt_uuid.c:274: pRec = gapServiceUUID;
      0041EC 90 10 C3         [24]  296 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0041EF 74 9A            [12]  297 	mov	a,#_gapServiceUUID
      0041F1 F0               [24]  298 	movx	@dptr,a
      0041F2 74 5B            [12]  299 	mov	a,#(_gapServiceUUID >> 8)
      0041F4 A3               [24]  300 	inc	dptr
      0041F5 F0               [24]  301 	movx	@dptr,a
      0041F6 74 80            [12]  302 	mov	a,#0x80
      0041F8 A3               [24]  303 	inc	dptr
      0041F9 F0               [24]  304 	movx	@dptr,a
                                    305 ;	../fake_ble_stack/ble/host/gatt_uuid.c:275: break;
      0041FA 02 43 4E         [24]  306 	ljmp	00126$
                                    307 ;	../fake_ble_stack/ble/host/gatt_uuid.c:277: case GATT_SERVICE_UUID:
      0041FD                        308 00102$:
                                    309 ;	../fake_ble_stack/ble/host/gatt_uuid.c:278: pRec = gattServiceUUID;
      0041FD 90 10 C3         [24]  310 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004200 74 9C            [12]  311 	mov	a,#_gattServiceUUID
      004202 F0               [24]  312 	movx	@dptr,a
      004203 74 5B            [12]  313 	mov	a,#(_gattServiceUUID >> 8)
      004205 A3               [24]  314 	inc	dptr
      004206 F0               [24]  315 	movx	@dptr,a
      004207 74 80            [12]  316 	mov	a,#0x80
      004209 A3               [24]  317 	inc	dptr
      00420A F0               [24]  318 	movx	@dptr,a
                                    319 ;	../fake_ble_stack/ble/host/gatt_uuid.c:279: break;
      00420B 02 43 4E         [24]  320 	ljmp	00126$
                                    321 ;	../fake_ble_stack/ble/host/gatt_uuid.c:283: case GATT_PRIMARY_SERVICE_UUID:
      00420E                        322 00103$:
                                    323 ;	../fake_ble_stack/ble/host/gatt_uuid.c:284: pRec = primaryServiceUUID;
      00420E 90 10 C3         [24]  324 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004211 74 A2            [12]  325 	mov	a,#_primaryServiceUUID
      004213 F0               [24]  326 	movx	@dptr,a
      004214 74 5B            [12]  327 	mov	a,#(_primaryServiceUUID >> 8)
      004216 A3               [24]  328 	inc	dptr
      004217 F0               [24]  329 	movx	@dptr,a
      004218 74 80            [12]  330 	mov	a,#0x80
      00421A A3               [24]  331 	inc	dptr
      00421B F0               [24]  332 	movx	@dptr,a
                                    333 ;	../fake_ble_stack/ble/host/gatt_uuid.c:285: break;
      00421C 02 43 4E         [24]  334 	ljmp	00126$
                                    335 ;	../fake_ble_stack/ble/host/gatt_uuid.c:287: case GATT_SECONDARY_SERVICE_UUID:
      00421F                        336 00104$:
                                    337 ;	../fake_ble_stack/ble/host/gatt_uuid.c:288: pRec = secondaryServiceUUID;
      00421F 90 10 C3         [24]  338 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004222 74 A4            [12]  339 	mov	a,#_secondaryServiceUUID
      004224 F0               [24]  340 	movx	@dptr,a
      004225 74 5B            [12]  341 	mov	a,#(_secondaryServiceUUID >> 8)
      004227 A3               [24]  342 	inc	dptr
      004228 F0               [24]  343 	movx	@dptr,a
      004229 74 80            [12]  344 	mov	a,#0x80
      00422B A3               [24]  345 	inc	dptr
      00422C F0               [24]  346 	movx	@dptr,a
                                    347 ;	../fake_ble_stack/ble/host/gatt_uuid.c:289: break;
      00422D 02 43 4E         [24]  348 	ljmp	00126$
                                    349 ;	../fake_ble_stack/ble/host/gatt_uuid.c:291: case GATT_INCLUDE_UUID:
      004230                        350 00105$:
                                    351 ;	../fake_ble_stack/ble/host/gatt_uuid.c:292: pRec = includeUUID;
      004230 90 10 C3         [24]  352 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004233 74 A6            [12]  353 	mov	a,#_includeUUID
      004235 F0               [24]  354 	movx	@dptr,a
      004236 74 5B            [12]  355 	mov	a,#(_includeUUID >> 8)
      004238 A3               [24]  356 	inc	dptr
      004239 F0               [24]  357 	movx	@dptr,a
      00423A 74 80            [12]  358 	mov	a,#0x80
      00423C A3               [24]  359 	inc	dptr
      00423D F0               [24]  360 	movx	@dptr,a
                                    361 ;	../fake_ble_stack/ble/host/gatt_uuid.c:293: break;
      00423E 02 43 4E         [24]  362 	ljmp	00126$
                                    363 ;	../fake_ble_stack/ble/host/gatt_uuid.c:295: case GATT_CHARACTER_UUID:
      004241                        364 00106$:
                                    365 ;	../fake_ble_stack/ble/host/gatt_uuid.c:296: pRec = characterUUID;
      004241 90 10 C3         [24]  366 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004244 74 A8            [12]  367 	mov	a,#_characterUUID
      004246 F0               [24]  368 	movx	@dptr,a
      004247 74 5B            [12]  369 	mov	a,#(_characterUUID >> 8)
      004249 A3               [24]  370 	inc	dptr
      00424A F0               [24]  371 	movx	@dptr,a
      00424B 74 80            [12]  372 	mov	a,#0x80
      00424D A3               [24]  373 	inc	dptr
      00424E F0               [24]  374 	movx	@dptr,a
                                    375 ;	../fake_ble_stack/ble/host/gatt_uuid.c:297: break;
      00424F 02 43 4E         [24]  376 	ljmp	00126$
                                    377 ;	../fake_ble_stack/ble/host/gatt_uuid.c:301: case GATT_CHAR_EXT_PROPS_UUID:
      004252                        378 00107$:
                                    379 ;	../fake_ble_stack/ble/host/gatt_uuid.c:302: pRec = charExtPropsUUID;
      004252 90 10 C3         [24]  380 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004255 74 AA            [12]  381 	mov	a,#_charExtPropsUUID
      004257 F0               [24]  382 	movx	@dptr,a
      004258 74 5B            [12]  383 	mov	a,#(_charExtPropsUUID >> 8)
      00425A A3               [24]  384 	inc	dptr
      00425B F0               [24]  385 	movx	@dptr,a
      00425C 74 80            [12]  386 	mov	a,#0x80
      00425E A3               [24]  387 	inc	dptr
      00425F F0               [24]  388 	movx	@dptr,a
                                    389 ;	../fake_ble_stack/ble/host/gatt_uuid.c:303: break;
      004260 02 43 4E         [24]  390 	ljmp	00126$
                                    391 ;	../fake_ble_stack/ble/host/gatt_uuid.c:305: case GATT_CHAR_USER_DESC_UUID:
      004263                        392 00108$:
                                    393 ;	../fake_ble_stack/ble/host/gatt_uuid.c:306: pRec = charUserDescUUID;
      004263 90 10 C3         [24]  394 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004266 74 AC            [12]  395 	mov	a,#_charUserDescUUID
      004268 F0               [24]  396 	movx	@dptr,a
      004269 74 5B            [12]  397 	mov	a,#(_charUserDescUUID >> 8)
      00426B A3               [24]  398 	inc	dptr
      00426C F0               [24]  399 	movx	@dptr,a
      00426D 74 80            [12]  400 	mov	a,#0x80
      00426F A3               [24]  401 	inc	dptr
      004270 F0               [24]  402 	movx	@dptr,a
                                    403 ;	../fake_ble_stack/ble/host/gatt_uuid.c:307: break;
      004271 02 43 4E         [24]  404 	ljmp	00126$
                                    405 ;	../fake_ble_stack/ble/host/gatt_uuid.c:309: case GATT_CLIENT_CHAR_CFG_UUID:
      004274                        406 00109$:
                                    407 ;	../fake_ble_stack/ble/host/gatt_uuid.c:310: pRec = clientCharCfgUUID;
      004274 90 10 C3         [24]  408 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004277 74 AE            [12]  409 	mov	a,#_clientCharCfgUUID
      004279 F0               [24]  410 	movx	@dptr,a
      00427A 74 5B            [12]  411 	mov	a,#(_clientCharCfgUUID >> 8)
      00427C A3               [24]  412 	inc	dptr
      00427D F0               [24]  413 	movx	@dptr,a
      00427E 74 80            [12]  414 	mov	a,#0x80
      004280 A3               [24]  415 	inc	dptr
      004281 F0               [24]  416 	movx	@dptr,a
                                    417 ;	../fake_ble_stack/ble/host/gatt_uuid.c:311: break;
      004282 02 43 4E         [24]  418 	ljmp	00126$
                                    419 ;	../fake_ble_stack/ble/host/gatt_uuid.c:313: case GATT_SERV_CHAR_CFG_UUID:
      004285                        420 00110$:
                                    421 ;	../fake_ble_stack/ble/host/gatt_uuid.c:314: pRec = servCharCfgUUID;
      004285 90 10 C3         [24]  422 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004288 74 B0            [12]  423 	mov	a,#_servCharCfgUUID
      00428A F0               [24]  424 	movx	@dptr,a
      00428B 74 5B            [12]  425 	mov	a,#(_servCharCfgUUID >> 8)
      00428D A3               [24]  426 	inc	dptr
      00428E F0               [24]  427 	movx	@dptr,a
      00428F 74 80            [12]  428 	mov	a,#0x80
      004291 A3               [24]  429 	inc	dptr
      004292 F0               [24]  430 	movx	@dptr,a
                                    431 ;	../fake_ble_stack/ble/host/gatt_uuid.c:315: break;
      004293 02 43 4E         [24]  432 	ljmp	00126$
                                    433 ;	../fake_ble_stack/ble/host/gatt_uuid.c:317: case GATT_CHAR_FORMAT_UUID:
      004296                        434 00111$:
                                    435 ;	../fake_ble_stack/ble/host/gatt_uuid.c:318: pRec = charFormatUUID;
      004296 90 10 C3         [24]  436 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004299 74 B2            [12]  437 	mov	a,#_charFormatUUID
      00429B F0               [24]  438 	movx	@dptr,a
      00429C 74 5B            [12]  439 	mov	a,#(_charFormatUUID >> 8)
      00429E A3               [24]  440 	inc	dptr
      00429F F0               [24]  441 	movx	@dptr,a
      0042A0 74 80            [12]  442 	mov	a,#0x80
      0042A2 A3               [24]  443 	inc	dptr
      0042A3 F0               [24]  444 	movx	@dptr,a
                                    445 ;	../fake_ble_stack/ble/host/gatt_uuid.c:319: break;
      0042A4 02 43 4E         [24]  446 	ljmp	00126$
                                    447 ;	../fake_ble_stack/ble/host/gatt_uuid.c:321: case GATT_CHAR_AGG_FORMAT_UUID:
      0042A7                        448 00112$:
                                    449 ;	../fake_ble_stack/ble/host/gatt_uuid.c:322: pRec = charAggFormatUUID;
      0042A7 90 10 C3         [24]  450 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042AA 74 B4            [12]  451 	mov	a,#_charAggFormatUUID
      0042AC F0               [24]  452 	movx	@dptr,a
      0042AD 74 5B            [12]  453 	mov	a,#(_charAggFormatUUID >> 8)
      0042AF A3               [24]  454 	inc	dptr
      0042B0 F0               [24]  455 	movx	@dptr,a
      0042B1 74 80            [12]  456 	mov	a,#0x80
      0042B3 A3               [24]  457 	inc	dptr
      0042B4 F0               [24]  458 	movx	@dptr,a
                                    459 ;	../fake_ble_stack/ble/host/gatt_uuid.c:323: break;
      0042B5 02 43 4E         [24]  460 	ljmp	00126$
                                    461 ;	../fake_ble_stack/ble/host/gatt_uuid.c:325: case GATT_VALID_RANGE_UUID:
      0042B8                        462 00113$:
                                    463 ;	../fake_ble_stack/ble/host/gatt_uuid.c:326: pRec = validRangeUUID;
      0042B8 90 10 C3         [24]  464 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042BB 74 C8            [12]  465 	mov	a,#_validRangeUUID
      0042BD F0               [24]  466 	movx	@dptr,a
      0042BE 74 5B            [12]  467 	mov	a,#(_validRangeUUID >> 8)
      0042C0 A3               [24]  468 	inc	dptr
      0042C1 F0               [24]  469 	movx	@dptr,a
      0042C2 74 80            [12]  470 	mov	a,#0x80
      0042C4 A3               [24]  471 	inc	dptr
      0042C5 F0               [24]  472 	movx	@dptr,a
                                    473 ;	../fake_ble_stack/ble/host/gatt_uuid.c:327: break;
      0042C6 02 43 4E         [24]  474 	ljmp	00126$
                                    475 ;	../fake_ble_stack/ble/host/gatt_uuid.c:329: case GATT_EXT_REPORT_REF_UUID:
      0042C9                        476 00114$:
                                    477 ;	../fake_ble_stack/ble/host/gatt_uuid.c:330: pRec = extReportRefUUID;
      0042C9 90 10 C3         [24]  478 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042CC 74 CA            [12]  479 	mov	a,#_extReportRefUUID
      0042CE F0               [24]  480 	movx	@dptr,a
      0042CF 74 5B            [12]  481 	mov	a,#(_extReportRefUUID >> 8)
      0042D1 A3               [24]  482 	inc	dptr
      0042D2 F0               [24]  483 	movx	@dptr,a
      0042D3 74 80            [12]  484 	mov	a,#0x80
      0042D5 A3               [24]  485 	inc	dptr
      0042D6 F0               [24]  486 	movx	@dptr,a
                                    487 ;	../fake_ble_stack/ble/host/gatt_uuid.c:331: break;
      0042D7 02 43 4E         [24]  488 	ljmp	00126$
                                    489 ;	../fake_ble_stack/ble/host/gatt_uuid.c:333: case GATT_REPORT_REF_UUID:
      0042DA                        490 00115$:
                                    491 ;	../fake_ble_stack/ble/host/gatt_uuid.c:334: pRec = reportRefUUID;
      0042DA 90 10 C3         [24]  492 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042DD 74 CC            [12]  493 	mov	a,#_reportRefUUID
      0042DF F0               [24]  494 	movx	@dptr,a
      0042E0 74 5B            [12]  495 	mov	a,#(_reportRefUUID >> 8)
      0042E2 A3               [24]  496 	inc	dptr
      0042E3 F0               [24]  497 	movx	@dptr,a
      0042E4 74 80            [12]  498 	mov	a,#0x80
      0042E6 A3               [24]  499 	inc	dptr
      0042E7 F0               [24]  500 	movx	@dptr,a
                                    501 ;	../fake_ble_stack/ble/host/gatt_uuid.c:335: break;
      0042E8 02 43 4E         [24]  502 	ljmp	00126$
                                    503 ;	../fake_ble_stack/ble/host/gatt_uuid.c:339: case DEVICE_NAME_UUID:
      0042EB                        504 00116$:
                                    505 ;	../fake_ble_stack/ble/host/gatt_uuid.c:340: pRec = deviceNameUUID;
      0042EB 90 10 C3         [24]  506 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042EE 74 B6            [12]  507 	mov	a,#_deviceNameUUID
      0042F0 F0               [24]  508 	movx	@dptr,a
      0042F1 74 5B            [12]  509 	mov	a,#(_deviceNameUUID >> 8)
      0042F3 A3               [24]  510 	inc	dptr
      0042F4 F0               [24]  511 	movx	@dptr,a
      0042F5 74 80            [12]  512 	mov	a,#0x80
      0042F7 A3               [24]  513 	inc	dptr
      0042F8 F0               [24]  514 	movx	@dptr,a
                                    515 ;	../fake_ble_stack/ble/host/gatt_uuid.c:341: break;
      0042F9 02 43 4E         [24]  516 	ljmp	00126$
                                    517 ;	../fake_ble_stack/ble/host/gatt_uuid.c:343: case APPEARANCE_UUID:
      0042FC                        518 00117$:
                                    519 ;	../fake_ble_stack/ble/host/gatt_uuid.c:344: pRec = appearanceUUID;
      0042FC 90 10 C3         [24]  520 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      0042FF 74 B8            [12]  521 	mov	a,#_appearanceUUID
      004301 F0               [24]  522 	movx	@dptr,a
      004302 74 5B            [12]  523 	mov	a,#(_appearanceUUID >> 8)
      004304 A3               [24]  524 	inc	dptr
      004305 F0               [24]  525 	movx	@dptr,a
      004306 74 80            [12]  526 	mov	a,#0x80
      004308 A3               [24]  527 	inc	dptr
      004309 F0               [24]  528 	movx	@dptr,a
                                    529 ;	../fake_ble_stack/ble/host/gatt_uuid.c:345: break;
      00430A 02 43 4E         [24]  530 	ljmp	00126$
                                    531 ;	../fake_ble_stack/ble/host/gatt_uuid.c:347: case RECONNECT_ADDR_UUID:
      00430D                        532 00118$:
                                    533 ;	../fake_ble_stack/ble/host/gatt_uuid.c:348: pRec = reconnectAddrUUID;
      00430D 90 10 C3         [24]  534 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004310 74 BC            [12]  535 	mov	a,#_reconnectAddrUUID
      004312 F0               [24]  536 	movx	@dptr,a
      004313 74 5B            [12]  537 	mov	a,#(_reconnectAddrUUID >> 8)
      004315 A3               [24]  538 	inc	dptr
      004316 F0               [24]  539 	movx	@dptr,a
      004317 74 80            [12]  540 	mov	a,#0x80
      004319 A3               [24]  541 	inc	dptr
      00431A F0               [24]  542 	movx	@dptr,a
                                    543 ;	../fake_ble_stack/ble/host/gatt_uuid.c:349: break;
      00431B 02 43 4E         [24]  544 	ljmp	00126$
                                    545 ;	../fake_ble_stack/ble/host/gatt_uuid.c:351: case PERI_PRIVACY_FLAG_UUID:
      00431E                        546 00119$:
                                    547 ;	../fake_ble_stack/ble/host/gatt_uuid.c:352: pRec = periPrivacyFlagUUID;
      00431E 90 10 C3         [24]  548 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004321 74 BA            [12]  549 	mov	a,#_periPrivacyFlagUUID
      004323 F0               [24]  550 	movx	@dptr,a
      004324 74 5B            [12]  551 	mov	a,#(_periPrivacyFlagUUID >> 8)
      004326 A3               [24]  552 	inc	dptr
      004327 F0               [24]  553 	movx	@dptr,a
      004328 74 80            [12]  554 	mov	a,#0x80
      00432A A3               [24]  555 	inc	dptr
      00432B F0               [24]  556 	movx	@dptr,a
                                    557 ;	../fake_ble_stack/ble/host/gatt_uuid.c:353: break;
      00432C 02 43 4E         [24]  558 	ljmp	00126$
                                    559 ;	../fake_ble_stack/ble/host/gatt_uuid.c:355: case PERI_CONN_PARAM_UUID:
      00432F                        560 00120$:
                                    561 ;	../fake_ble_stack/ble/host/gatt_uuid.c:356: pRec = periConnParamUUID;
      00432F 90 10 C3         [24]  562 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004332 74 BE            [12]  563 	mov	a,#_periConnParamUUID
      004334 F0               [24]  564 	movx	@dptr,a
      004335 74 5B            [12]  565 	mov	a,#(_periConnParamUUID >> 8)
      004337 A3               [24]  566 	inc	dptr
      004338 F0               [24]  567 	movx	@dptr,a
      004339 74 80            [12]  568 	mov	a,#0x80
      00433B A3               [24]  569 	inc	dptr
      00433C F0               [24]  570 	movx	@dptr,a
                                    571 ;	../fake_ble_stack/ble/host/gatt_uuid.c:357: break;
      00433D 02 43 4E         [24]  572 	ljmp	00126$
                                    573 ;	../fake_ble_stack/ble/host/gatt_uuid.c:359: case SERVICE_CHANGED_UUID:
      004340                        574 00121$:
                                    575 ;	../fake_ble_stack/ble/host/gatt_uuid.c:360: pRec = serviceChangedUUID;
      004340 90 10 C3         [24]  576 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004343 74 C0            [12]  577 	mov	a,#_serviceChangedUUID
      004345 F0               [24]  578 	movx	@dptr,a
      004346 74 5B            [12]  579 	mov	a,#(_serviceChangedUUID >> 8)
      004348 A3               [24]  580 	inc	dptr
      004349 F0               [24]  581 	movx	@dptr,a
      00434A 74 80            [12]  582 	mov	a,#0x80
      00434C A3               [24]  583 	inc	dptr
      00434D F0               [24]  584 	movx	@dptr,a
                                    585 ;	../fake_ble_stack/ble/host/gatt_uuid.c:371: else if ( len == ATT_UUID_SIZE )
      00434E                        586 00126$:
                                    587 ;	../fake_ble_stack/ble/host/gatt_uuid.c:376: return ( pRec );
      00434E 90 10 C3         [24]  588 	mov	dptr,#_GATT_FindUUIDRec_pRec_1_186
      004351 E0               [24]  589 	movx	a,@dptr
      004352 FD               [12]  590 	mov	r5,a
      004353 A3               [24]  591 	inc	dptr
      004354 E0               [24]  592 	movx	a,@dptr
      004355 FE               [12]  593 	mov	r6,a
      004356 A3               [24]  594 	inc	dptr
      004357 E0               [24]  595 	movx	a,@dptr
      004358 FF               [12]  596 	mov	r7,a
      004359 8D 82            [24]  597 	mov	dpl,r5
      00435B 8E 83            [24]  598 	mov	dph,r6
      00435D 8F F0            [24]  599 	mov	b,r7
      00435F                        600 00127$:
      00435F 22               [24]  601 	ret
                                    602 	.area CSEG    (CODE)
                                    603 	.area CONST   (CODE)
      005B9A                        604 _gapServiceUUID:
      005B9A 00                     605 	.db #0x00	; 0
      005B9B 18                     606 	.db #0x18	; 24
      005B9C                        607 _gattServiceUUID:
      005B9C 01                     608 	.db #0x01	; 1
      005B9D 18                     609 	.db #0x18	; 24
      005B9E                        610 _manufactServiceUUID:
      005B9E 05                     611 	.db #0x05	; 5
      005B9F A0                     612 	.db #0xA0	; 160
      005BA0                        613 _addressServiceUUID:
      005BA0 06                     614 	.db #0x06	; 6
      005BA1 A0                     615 	.db #0xA0	; 160
      005BA2                        616 _primaryServiceUUID:
      005BA2 00                     617 	.db #0x00	; 0
      005BA3 28                     618 	.db #0x28	; 40
      005BA4                        619 _secondaryServiceUUID:
      005BA4 01                     620 	.db #0x01	; 1
      005BA5 28                     621 	.db #0x28	; 40
      005BA6                        622 _includeUUID:
      005BA6 02                     623 	.db #0x02	; 2
      005BA7 28                     624 	.db #0x28	; 40
      005BA8                        625 _characterUUID:
      005BA8 03                     626 	.db #0x03	; 3
      005BA9 28                     627 	.db #0x28	; 40
      005BAA                        628 _charExtPropsUUID:
      005BAA 00                     629 	.db #0x00	; 0
      005BAB 29                     630 	.db #0x29	; 41
      005BAC                        631 _charUserDescUUID:
      005BAC 01                     632 	.db #0x01	; 1
      005BAD 29                     633 	.db #0x29	; 41
      005BAE                        634 _clientCharCfgUUID:
      005BAE 02                     635 	.db #0x02	; 2
      005BAF 29                     636 	.db #0x29	; 41
      005BB0                        637 _servCharCfgUUID:
      005BB0 03                     638 	.db #0x03	; 3
      005BB1 29                     639 	.db #0x29	; 41
      005BB2                        640 _charFormatUUID:
      005BB2 04                     641 	.db #0x04	; 4
      005BB3 29                     642 	.db #0x29	; 41
      005BB4                        643 _charAggFormatUUID:
      005BB4 05                     644 	.db #0x05	; 5
      005BB5 29                     645 	.db #0x29	; 41
      005BB6                        646 _deviceNameUUID:
      005BB6 00                     647 	.db #0x00	; 0
      005BB7 2A                     648 	.db #0x2A	; 42
      005BB8                        649 _appearanceUUID:
      005BB8 01                     650 	.db #0x01	; 1
      005BB9 2A                     651 	.db #0x2A	; 42
      005BBA                        652 _periPrivacyFlagUUID:
      005BBA 02                     653 	.db #0x02	; 2
      005BBB 2A                     654 	.db #0x2A	; 42
      005BBC                        655 _reconnectAddrUUID:
      005BBC 03                     656 	.db #0x03	; 3
      005BBD 2A                     657 	.db #0x2A	; 42
      005BBE                        658 _periConnParamUUID:
      005BBE 04                     659 	.db #0x04	; 4
      005BBF 2A                     660 	.db #0x2A	; 42
      005BC0                        661 _serviceChangedUUID:
      005BC0 05                     662 	.db #0x05	; 5
      005BC1 2A                     663 	.db #0x2A	; 42
      005BC2                        664 _manuNameUUID:
      005BC2 08                     665 	.db #0x08	; 8
      005BC3 B0                     666 	.db #0xB0	; 176
      005BC4                        667 _serialNumUUID:
      005BC4 09                     668 	.db #0x09	; 9
      005BC5 B0                     669 	.db #0xB0	; 176
      005BC6                        670 _manuAddrUUID:
      005BC6 0A                     671 	.db #0x0A	; 10
      005BC7 B0                     672 	.db #0xB0	; 176
      005BC8                        673 _validRangeUUID:
      005BC8 06                     674 	.db #0x06	; 6
      005BC9 29                     675 	.db #0x29	; 41
      005BCA                        676 _extReportRefUUID:
      005BCA 07                     677 	.db #0x07	; 7
      005BCB 29                     678 	.db #0x29	; 41
      005BCC                        679 _reportRefUUID:
      005BCC 08                     680 	.db #0x08	; 8
      005BCD 29                     681 	.db #0x29	; 41
                                    682 	.area CABS    (ABS,CODE)
