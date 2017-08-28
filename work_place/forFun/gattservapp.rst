                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Sun Jul  5 09:25:28 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module gattservapp
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _osal_set_event
                                     13 	.globl _osal_start_timerEx
                                     14 	.globl _MusicCtl
                                     15 	.globl _FlashLed
                                     16 	.globl _ServNL
                                     17 	.globl _ServNH
                                     18 	.globl _BleFeedback
                                     19 	.globl _BleOpr
                                     20 	.globl _GATTServApp_RegisterService_PARM_3
                                     21 	.globl _GATTServApp_RegisterService_PARM_2
                                     22 	.globl _GATTServApp_Init
                                     23 	.globl _GATTServApp_ProcessEvent
                                     24 	.globl _GATTServApp_AddService
                                     25 	.globl _GATTServApp_RegisterService
                                     26 ;--------------------------------------------------------
                                     27 ; special function registers
                                     28 ;--------------------------------------------------------
                                     29 	.area RSEG    (ABS,DATA)
      000000                         30 	.org 0x0000
                           0000AA    31 _BleOpr	=	0x00aa
                           00008E    32 _BleFeedback	=	0x008e
                           0000B0    33 _ServNH	=	0x00b0
                           0000B7    34 _ServNL	=	0x00b7
                           0000C0    35 _FlashLed	=	0x00c0
                           0000C2    36 _MusicCtl	=	0x00c2
                                     37 ;--------------------------------------------------------
                                     38 ; special function bits
                                     39 ;--------------------------------------------------------
                                     40 	.area RSEG    (ABS,DATA)
      000000                         41 	.org 0x0000
                                     42 ;--------------------------------------------------------
                                     43 ; overlayable register banks
                                     44 ;--------------------------------------------------------
                                     45 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         46 	.ds 8
                                     47 ;--------------------------------------------------------
                                     48 ; internal ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area DSEG    (DATA)
      000017                         51 _performPeriodicTask_sloc0_1_0:
      000017                         52 	.ds 2
      000019                         53 _performPeriodicTask_sloc1_1_0:
      000019                         54 	.ds 2
      00001B                         55 _performPeriodicTask_sloc2_1_0:
      00001B                         56 	.ds 2
                                     57 ;--------------------------------------------------------
                                     58 ; overlayable items in internal ram 
                                     59 ;--------------------------------------------------------
                                     60 ;--------------------------------------------------------
                                     61 ; indirectly addressable internal ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area ISEG    (DATA)
                                     64 ;--------------------------------------------------------
                                     65 ; absolute internal ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area IABS    (ABS,DATA)
                                     68 	.area IABS    (ABS,DATA)
                                     69 ;--------------------------------------------------------
                                     70 ; bit data
                                     71 ;--------------------------------------------------------
                                     72 	.area BSEG    (BIT)
                                     73 ;--------------------------------------------------------
                                     74 ; paged external ram data
                                     75 ;--------------------------------------------------------
                                     76 	.area PSEG    (PAG,XDATA)
                                     77 ;--------------------------------------------------------
                                     78 ; external ram data
                                     79 ;--------------------------------------------------------
                                     80 	.area XSEG    (XDATA)
                           000000    81 _ServicesTable	=	0x0000
      0011DD                         82 _ServiceN:
      0011DD                         83 	.ds 2
                           000065    84 _connHandle	=	0x0065
                           000067    85 _uuidAddr	=	0x0067
                           000071    86 _pLen	=	0x0071
                           000072    87 _offset	=	0x0072
                           000074    88 _pValue	=	0x0074
      0011DF                         89 _TaskID:
      0011DF                         90 	.ds 1
      0011E0                         91 _GATTServApp_Init_taskId_1_218:
      0011E0                         92 	.ds 1
      0011E1                         93 _performPeriodicTask_ptr_1_225:
      0011E1                         94 	.ds 2
      0011E3                         95 _performPeriodicTask_pAttr_1_225:
      0011E3                         96 	.ds 3
      0011E6                         97 _performPeriodicTask_i_1_225:
      0011E6                         98 	.ds 1
      0011E7                         99 _performPeriodicTask_j_1_225:
      0011E7                        100 	.ds 1
      0011E8                        101 _performPeriodicTask_found_1_225:
      0011E8                        102 	.ds 1
      0011E9                        103 _GATTServApp_RegisterService_PARM_2:
      0011E9                        104 	.ds 2
      0011EB                        105 _GATTServApp_RegisterService_PARM_3:
      0011EB                        106 	.ds 3
      0011EE                        107 _GATTServApp_RegisterService_pAttrs_1_237:
      0011EE                        108 	.ds 3
      0011F1                        109 _GATTServApp_RegisterService_idx_1_238:
      0011F1                        110 	.ds 2
                                    111 ;--------------------------------------------------------
                                    112 ; absolute external ram data
                                    113 ;--------------------------------------------------------
                                    114 	.area XABS    (ABS,XDATA)
                                    115 ;--------------------------------------------------------
                                    116 ; external initialized ram data
                                    117 ;--------------------------------------------------------
                                    118 	.area HOME    (CODE)
                                    119 	.area GSINIT0 (CODE)
                                    120 	.area GSINIT1 (CODE)
                                    121 	.area GSINIT2 (CODE)
                                    122 	.area GSINIT3 (CODE)
                                    123 	.area GSINIT4 (CODE)
                                    124 	.area GSINIT5 (CODE)
                                    125 	.area GSINIT  (CODE)
                                    126 	.area GSFINAL (CODE)
                                    127 	.area CSEG    (CODE)
                                    128 ;--------------------------------------------------------
                                    129 ; global & static initialisations
                                    130 ;--------------------------------------------------------
                                    131 	.area HOME    (CODE)
                                    132 	.area GSINIT  (CODE)
                                    133 	.area GSFINAL (CODE)
                                    134 	.area GSINIT  (CODE)
                                    135 ;	../fake_ble_stack/ble/include/gattservapp.c:32: static int ServiceN=0;
      0003AF 90 11 DD         [24]  136 	mov	dptr,#_ServiceN
      0003B2 74 00            [12]  137 	mov	a,#0x00
      0003B4 F0               [24]  138 	movx	@dptr,a
      0003B5 A3               [24]  139 	inc	dptr
      0003B6 F0               [24]  140 	movx	@dptr,a
                                    141 ;--------------------------------------------------------
                                    142 ; Home
                                    143 ;--------------------------------------------------------
                                    144 	.area HOME    (CODE)
                                    145 	.area HOME    (CODE)
                                    146 ;--------------------------------------------------------
                                    147 ; code
                                    148 ;--------------------------------------------------------
                                    149 	.area CSEG    (CODE)
                                    150 ;------------------------------------------------------------
                                    151 ;Allocation info for local variables in function 'GATTServApp_Init'
                                    152 ;------------------------------------------------------------
                                    153 ;taskId                    Allocated with name '_GATTServApp_Init_taskId_1_218'
                                    154 ;------------------------------------------------------------
                                    155 ;	../fake_ble_stack/ble/include/gattservapp.c:78: void GATTServApp_Init( uint8 taskId ){
                                    156 ;	-----------------------------------------
                                    157 ;	 function GATTServApp_Init
                                    158 ;	-----------------------------------------
      005002                        159 _GATTServApp_Init:
                           000007   160 	ar7 = 0x07
                           000006   161 	ar6 = 0x06
                           000005   162 	ar5 = 0x05
                           000004   163 	ar4 = 0x04
                           000003   164 	ar3 = 0x03
                           000002   165 	ar2 = 0x02
                           000001   166 	ar1 = 0x01
                           000000   167 	ar0 = 0x00
      005002 E5 82            [12]  168 	mov	a,dpl
      005004 90 11 E0         [24]  169 	mov	dptr,#_GATTServApp_Init_taskId_1_218
      005007 F0               [24]  170 	movx	@dptr,a
                                    171 ;	../fake_ble_stack/ble/include/gattservapp.c:81: TaskID=taskId;
      005008 E0               [24]  172 	movx	a,@dptr
      005009 FF               [12]  173 	mov	r7,a
      00500A 90 11 DF         [24]  174 	mov	dptr,#_TaskID
      00500D EF               [12]  175 	mov	a,r7
      00500E F0               [24]  176 	movx	@dptr,a
                                    177 ;	../fake_ble_stack/ble/include/gattservapp.c:85: ServiceN=0;
      00500F 90 11 DD         [24]  178 	mov	dptr,#_ServiceN
      005012 74 00            [12]  179 	mov	a,#0x00
      005014 F0               [24]  180 	movx	@dptr,a
      005015 A3               [24]  181 	inc	dptr
      005016 F0               [24]  182 	movx	@dptr,a
                                    183 ;	../fake_ble_stack/ble/include/gattservapp.c:88: osal_set_event( TaskID, periodic_event );
      005017 90 03 CB         [24]  184 	mov	dptr,#_osal_set_event_PARM_2
      00501A 04               [12]  185 	inc	a
      00501B F0               [24]  186 	movx	@dptr,a
      00501C 74 00            [12]  187 	mov	a,#0x00
      00501E A3               [24]  188 	inc	dptr
      00501F F0               [24]  189 	movx	@dptr,a
      005020 8F 82            [24]  190 	mov	dpl,r7
      005022 12 19 D8         [24]  191 	lcall	_osal_set_event
      005025                        192 00101$:
      005025 22               [24]  193 	ret
                                    194 ;------------------------------------------------------------
                                    195 ;Allocation info for local variables in function 'GATTServApp_ProcessEvent'
                                    196 ;------------------------------------------------------------
                                    197 ;events                    Allocated to stack - _bp -4
                                    198 ;taskId                    Allocated to registers 
                                    199 ;------------------------------------------------------------
                                    200 ;	../fake_ble_stack/ble/include/gattservapp.c:97: uint16 GATTServApp_ProcessEvent( uint8 taskId, uint16 events )__reentrant{
                                    201 ;	-----------------------------------------
                                    202 ;	 function GATTServApp_ProcessEvent
                                    203 ;	-----------------------------------------
      005026                        204 _GATTServApp_ProcessEvent:
      005026 C0 1D            [24]  205 	push	_bp
      005028 85 81 1D         [24]  206 	mov	_bp,sp
                                    207 ;	../fake_ble_stack/ble/include/gattservapp.c:100: if( events & periodic_event ){
      00502B E5 1D            [12]  208 	mov	a,_bp
      00502D 24 FC            [12]  209 	add	a,#0xfc
      00502F F8               [12]  210 	mov	r0,a
      005030 E6               [12]  211 	mov	a,@r0
      005031 20 E0 03         [24]  212 	jb	acc.0,00110$
      005034 02 50 70         [24]  213 	ljmp	00104$
      005037                        214 00110$:
                                    215 ;	../fake_ble_stack/ble/include/gattservapp.c:109: __endasm;
      005037 C3               [12]  216 	clr c
                                    217 ;	../fake_ble_stack/ble/include/gattservapp.c:111: osal_start_timerEx( TaskID, periodic_event, PERIODIC_EVT_PERIOD );
      005038 90 11 DF         [24]  218 	mov	dptr,#_TaskID
      00503B E0               [24]  219 	movx	a,@dptr
      00503C FF               [12]  220 	mov	r7,a
      00503D 90 10 3D         [24]  221 	mov	dptr,#_osal_start_timerEx_PARM_2
      005040 74 01            [12]  222 	mov	a,#0x01
      005042 F0               [24]  223 	movx	@dptr,a
      005043 74 00            [12]  224 	mov	a,#0x00
      005045 A3               [24]  225 	inc	dptr
      005046 F0               [24]  226 	movx	@dptr,a
      005047 90 10 3F         [24]  227 	mov	dptr,#_osal_start_timerEx_PARM_3
      00504A 74 64            [12]  228 	mov	a,#0x64
      00504C F0               [24]  229 	movx	@dptr,a
      00504D 74 00            [12]  230 	mov	a,#0x00
      00504F A3               [24]  231 	inc	dptr
      005050 F0               [24]  232 	movx	@dptr,a
      005051 A3               [24]  233 	inc	dptr
      005052 F0               [24]  234 	movx	@dptr,a
      005053 A3               [24]  235 	inc	dptr
      005054 F0               [24]  236 	movx	@dptr,a
      005055 8F 82            [24]  237 	mov	dpl,r7
      005057 12 27 54         [24]  238 	lcall	_osal_start_timerEx
                                    239 ;	../fake_ble_stack/ble/include/gattservapp.c:116: performPeriodicTask();
      00505A 12 50 79         [24]  240 	lcall	_performPeriodicTask
                                    241 ;	../fake_ble_stack/ble/include/gattservapp.c:123: return( events ^ periodic_event);
      00505D E5 1D            [12]  242 	mov	a,_bp
      00505F 24 FC            [12]  243 	add	a,#0xfc
      005061 F8               [12]  244 	mov	r0,a
      005062 74 01            [12]  245 	mov	a,#0x01
      005064 66               [12]  246 	xrl	a,@r0
      005065 FE               [12]  247 	mov	r6,a
      005066 08               [12]  248 	inc	r0
      005067 86 07            [24]  249 	mov	ar7,@r0
      005069 8E 82            [24]  250 	mov	dpl,r6
      00506B 8F 83            [24]  251 	mov	dph,r7
      00506D 02 50 76         [24]  252 	ljmp	00105$
      005070                        253 00104$:
                                    254 ;	../fake_ble_stack/ble/include/gattservapp.c:128: return 0;
      005070 75 82 00         [24]  255 	mov	dpl,#0x00
      005073 75 83 00         [24]  256 	mov	dph,#0x00
      005076                        257 00105$:
      005076 D0 1D            [24]  258 	pop	_bp
      005078 22               [24]  259 	ret
                                    260 ;------------------------------------------------------------
                                    261 ;Allocation info for local variables in function 'performPeriodicTask'
                                    262 ;------------------------------------------------------------
                                    263 ;sloc0                     Allocated with name '_performPeriodicTask_sloc0_1_0'
                                    264 ;sloc1                     Allocated with name '_performPeriodicTask_sloc1_1_0'
                                    265 ;sloc2                     Allocated with name '_performPeriodicTask_sloc2_1_0'
                                    266 ;TlbPtr                    Allocated with name '_performPeriodicTask_TlbPtr_1_225'
                                    267 ;ptr                       Allocated with name '_performPeriodicTask_ptr_1_225'
                                    268 ;pAttr                     Allocated with name '_performPeriodicTask_pAttr_1_225'
                                    269 ;sIdx                      Allocated with name '_performPeriodicTask_sIdx_1_225'
                                    270 ;i                         Allocated with name '_performPeriodicTask_i_1_225'
                                    271 ;j                         Allocated with name '_performPeriodicTask_j_1_225'
                                    272 ;found                     Allocated with name '_performPeriodicTask_found_1_225'
                                    273 ;------------------------------------------------------------
                                    274 ;	../fake_ble_stack/ble/include/gattservapp.c:135: static void performPeriodicTask( void ){
                                    275 ;	-----------------------------------------
                                    276 ;	 function performPeriodicTask
                                    277 ;	-----------------------------------------
      005079                        278 _performPeriodicTask:
                                    279 ;	../fake_ble_stack/ble/include/gattservapp.c:139: __code uint16* ptr=uuidAddr;
      005079 90 00 67         [24]  280 	mov	dptr,#_uuidAddr
      00507C E0               [24]  281 	movx	a,@dptr
      00507D FC               [12]  282 	mov	r4,a
      00507E A3               [24]  283 	inc	dptr
      00507F E0               [24]  284 	movx	a,@dptr
      005080 FD               [12]  285 	mov	r5,a
      005081 A3               [24]  286 	inc	dptr
      005082 E0               [24]  287 	movx	a,@dptr
      005083 FE               [12]  288 	mov	r6,a
      005084 A3               [24]  289 	inc	dptr
      005085 E0               [24]  290 	movx	a,@dptr
      005086 FF               [12]  291 	mov	r7,a
      005087 90 11 E1         [24]  292 	mov	dptr,#_performPeriodicTask_ptr_1_225
      00508A EC               [12]  293 	mov	a,r4
      00508B F0               [24]  294 	movx	@dptr,a
      00508C ED               [12]  295 	mov	a,r5
      00508D A3               [24]  296 	inc	dptr
      00508E F0               [24]  297 	movx	@dptr,a
                                    298 ;	../fake_ble_stack/ble/include/gattservapp.c:143: uint8 i=0;
      00508F 90 11 E6         [24]  299 	mov	dptr,#_performPeriodicTask_i_1_225
      005092 74 00            [12]  300 	mov	a,#0x00
      005094 F0               [24]  301 	movx	@dptr,a
                                    302 ;	../fake_ble_stack/ble/include/gattservapp.c:145: bool found=false;
      005095 90 11 E8         [24]  303 	mov	dptr,#_performPeriodicTask_found_1_225
      005098 F0               [24]  304 	movx	@dptr,a
                                    305 ;	../fake_ble_stack/ble/include/gattservapp.c:154: switch(BleFeedback){
      005099 AF 8E            [24]  306 	mov	r7,_BleFeedback
      00509B BF 03 03         [24]  307 	cjne	r7,#0x03,00193$
      00509E 02 50 B0         [24]  308 	ljmp	00101$
      0050A1                        309 00193$:
      0050A1 BF 04 03         [24]  310 	cjne	r7,#0x04,00194$
      0050A4 02 50 B9         [24]  311 	ljmp	00146$
      0050A7                        312 00194$:
      0050A7 BF 05 03         [24]  313 	cjne	r7,#0x05,00195$
      0050AA 02 52 34         [24]  314 	ljmp	00153$
      0050AD                        315 00195$:
      0050AD 02 53 AC         [24]  316 	ljmp	00136$
                                    317 ;	../fake_ble_stack/ble/include/gattservapp.c:157: case 0x03:
      0050B0                        318 00101$:
                                    319 ;	../fake_ble_stack/ble/include/gattservapp.c:160: BleFeedback=0x00;
      0050B0 75 8E 00         [24]  320 	mov	_BleFeedback,#0x00
                                    321 ;	../fake_ble_stack/ble/include/gattservapp.c:161: BleOpr=0x00;
      0050B3 75 AA 00         [24]  322 	mov	_BleOpr,#0x00
                                    323 ;	../fake_ble_stack/ble/include/gattservapp.c:165: break;
      0050B6 02 53 AC         [24]  324 	ljmp	00136$
                                    325 ;	../fake_ble_stack/ble/include/gattservapp.c:168: case 0x04:
      0050B9                        326 00146$:
      0050B9 90 11 E1         [24]  327 	mov	dptr,#_performPeriodicTask_ptr_1_225
      0050BC E0               [24]  328 	movx	a,@dptr
      0050BD F5 17            [12]  329 	mov	_performPeriodicTask_sloc0_1_0,a
      0050BF A3               [24]  330 	inc	dptr
      0050C0 E0               [24]  331 	movx	a,@dptr
      0050C1 F5 18            [12]  332 	mov	(_performPeriodicTask_sloc0_1_0 + 1),a
      0050C3 90 11 E6         [24]  333 	mov	dptr,#_performPeriodicTask_i_1_225
      0050C6 E0               [24]  334 	movx	a,@dptr
      0050C7 FD               [12]  335 	mov	r5,a
      0050C8                        336 00129$:
                                    337 ;	../fake_ble_stack/ble/include/gattservapp.c:179: for(;i<ServiceN; i++){
      0050C8 90 11 DD         [24]  338 	mov	dptr,#_ServiceN
      0050CB E0               [24]  339 	movx	a,@dptr
      0050CC FB               [12]  340 	mov	r3,a
      0050CD A3               [24]  341 	inc	dptr
      0050CE E0               [24]  342 	movx	a,@dptr
      0050CF FC               [12]  343 	mov	r4,a
      0050D0 8D 01            [24]  344 	mov	ar1,r5
      0050D2 7A 00            [12]  345 	mov	r2,#0x00
      0050D4 C3               [12]  346 	clr	c
      0050D5 E9               [12]  347 	mov	a,r1
      0050D6 9B               [12]  348 	subb	a,r3
      0050D7 EA               [12]  349 	mov	a,r2
      0050D8 64 80            [12]  350 	xrl	a,#0x80
      0050DA 8C F0            [24]  351 	mov	b,r4
      0050DC 63 F0 80         [24]  352 	xrl	b,#0x80
      0050DF 95 F0            [12]  353 	subb	a,b
      0050E1 40 03            [24]  354 	jc	00196$
      0050E3 02 52 21         [24]  355 	ljmp	00110$
      0050E6                        356 00196$:
                                    357 ;	../fake_ble_stack/ble/include/gattservapp.c:180: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      0050E6 90 11 E7         [24]  358 	mov	dptr,#_performPeriodicTask_j_1_225
      0050E9 74 00            [12]  359 	mov	a,#0x00
      0050EB F0               [24]  360 	movx	@dptr,a
      0050EC ED               [12]  361 	mov	a,r5
      0050ED 75 F0 06         [24]  362 	mov	b,#0x06
      0050F0 A4               [48]  363 	mul	ab
      0050F1 FB               [12]  364 	mov	r3,a
      0050F2 AC F0            [24]  365 	mov	r4,b
      0050F4 E0               [24]  366 	movx	a,@dptr
      0050F5 FA               [12]  367 	mov	r2,a
      0050F6                        368 00126$:
                                    369 ;	../fake_ble_stack/ble/include/gattservapp.c:183: pAttr = &((ServicesTable[i].service)[j]);
      0050F6 C0 05            [24]  370 	push	ar5
      0050F8 8B 82            [24]  371 	mov	dpl,r3
      0050FA 74 00            [12]  372 	mov	a,#(_ServicesTable >> 8)
      0050FC 2C               [12]  373 	add	a,r4
      0050FD F5 83            [12]  374 	mov	dph,a
      0050FF E0               [24]  375 	movx	a,@dptr
      005100 F8               [12]  376 	mov	r0,a
      005101 A3               [24]  377 	inc	dptr
      005102 E0               [24]  378 	movx	a,@dptr
      005103 F9               [12]  379 	mov	r1,a
      005104 A3               [24]  380 	inc	dptr
      005105 E0               [24]  381 	movx	a,@dptr
      005106 FD               [12]  382 	mov	r5,a
      005107 EA               [12]  383 	mov	a,r2
      005108 75 F0 0A         [24]  384 	mov	b,#0x0A
      00510B A4               [48]  385 	mul	ab
      00510C 28               [12]  386 	add	a,r0
      00510D F8               [12]  387 	mov	r0,a
      00510E E9               [12]  388 	mov	a,r1
      00510F 35 F0            [12]  389 	addc	a,b
      005111 F9               [12]  390 	mov	r1,a
      005112 90 11 E3         [24]  391 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      005115 E8               [12]  392 	mov	a,r0
      005116 F0               [24]  393 	movx	@dptr,a
      005117 E9               [12]  394 	mov	a,r1
      005118 A3               [24]  395 	inc	dptr
      005119 F0               [24]  396 	movx	@dptr,a
      00511A ED               [12]  397 	mov	a,r5
      00511B A3               [24]  398 	inc	dptr
      00511C F0               [24]  399 	movx	@dptr,a
                                    400 ;	../fake_ble_stack/ble/include/gattservapp.c:199: if(   *(uint16*)(pAttr->type).uuid == *ptr ){
      00511D 08               [12]  401 	inc	r0
      00511E B8 00 01         [24]  402 	cjne	r0,#0x00,00197$
      005121 09               [12]  403 	inc	r1
      005122                        404 00197$:
      005122 88 82            [24]  405 	mov	dpl,r0
      005124 89 83            [24]  406 	mov	dph,r1
      005126 8D F0            [24]  407 	mov	b,r5
      005128 12 5B 6D         [24]  408 	lcall	__gptrget
      00512B F8               [12]  409 	mov	r0,a
      00512C A3               [24]  410 	inc	dptr
      00512D 12 5B 6D         [24]  411 	lcall	__gptrget
      005130 F9               [12]  412 	mov	r1,a
      005131 A3               [24]  413 	inc	dptr
      005132 12 5B 6D         [24]  414 	lcall	__gptrget
      005135 FD               [12]  415 	mov	r5,a
      005136 88 82            [24]  416 	mov	dpl,r0
      005138 89 83            [24]  417 	mov	dph,r1
      00513A 8D F0            [24]  418 	mov	b,r5
      00513C 12 5B 6D         [24]  419 	lcall	__gptrget
      00513F F8               [12]  420 	mov	r0,a
      005140 A3               [24]  421 	inc	dptr
      005141 12 5B 6D         [24]  422 	lcall	__gptrget
      005144 F9               [12]  423 	mov	r1,a
      005145 85 17 82         [24]  424 	mov	dpl,_performPeriodicTask_sloc0_1_0
      005148 85 18 83         [24]  425 	mov	dph,(_performPeriodicTask_sloc0_1_0 + 1)
      00514B E4               [12]  426 	clr	a
      00514C 93               [24]  427 	movc	a,@a+dptr
      00514D FD               [12]  428 	mov	r5,a
      00514E A3               [24]  429 	inc	dptr
      00514F E4               [12]  430 	clr	a
      005150 93               [24]  431 	movc	a,@a+dptr
      005151 FF               [12]  432 	mov	r7,a
      005152 E8               [12]  433 	mov	a,r0
      005153 B5 05 06         [24]  434 	cjne	a,ar5,00198$
      005156 E9               [12]  435 	mov	a,r1
      005157 B5 07 02         [24]  436 	cjne	a,ar7,00198$
      00515A 80 05            [24]  437 	sjmp	00199$
      00515C                        438 00198$:
      00515C D0 05            [24]  439 	pop	ar5
      00515E 02 51 FE         [24]  440 	ljmp	00104$
      005161                        441 00199$:
      005161 D0 05            [24]  442 	pop	ar5
                                    443 ;	../fake_ble_stack/ble/include/gattservapp.c:210: found=true;	
      005163 C0 05            [24]  444 	push	ar5
      005165 90 11 E8         [24]  445 	mov	dptr,#_performPeriodicTask_found_1_225
      005168 74 01            [12]  446 	mov	a,#0x01
      00516A F0               [24]  447 	movx	@dptr,a
                                    448 ;	../fake_ble_stack/ble/include/gattservapp.c:211: ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
      00516B 8B 06            [24]  449 	mov	ar6,r3
      00516D 74 00            [12]  450 	mov	a,#(_ServicesTable >> 8)
      00516F 2C               [12]  451 	add	a,r4
      005170 FF               [12]  452 	mov	r7,a
      005171 8E 82            [24]  453 	mov	dpl,r6
      005173 8F 83            [24]  454 	mov	dph,r7
      005175 A3               [24]  455 	inc	dptr
      005176 A3               [24]  456 	inc	dptr
      005177 A3               [24]  457 	inc	dptr
      005178 E0               [24]  458 	movx	a,@dptr
      005179 F9               [12]  459 	mov	r1,a
      00517A A3               [24]  460 	inc	dptr
      00517B E0               [24]  461 	movx	a,@dptr
      00517C FE               [12]  462 	mov	r6,a
      00517D A3               [24]  463 	inc	dptr
      00517E E0               [24]  464 	movx	a,@dptr
      00517F FF               [12]  465 	mov	r7,a
      005180 89 82            [24]  466 	mov	dpl,r1
      005182 8E 83            [24]  467 	mov	dph,r6
      005184 8F F0            [24]  468 	mov	b,r7
      005186 12 5B 6D         [24]  469 	lcall	__gptrget
      005189 F9               [12]  470 	mov	r1,a
      00518A A3               [24]  471 	inc	dptr
      00518B 12 5B 6D         [24]  472 	lcall	__gptrget
      00518E FE               [12]  473 	mov	r6,a
      00518F 90 00 72         [24]  474 	mov	dptr,#_offset
      005192 E0               [24]  475 	movx	a,@dptr
      005193 F5 19            [12]  476 	mov	_performPeriodicTask_sloc1_1_0,a
      005195 A3               [24]  477 	inc	dptr
      005196 E0               [24]  478 	movx	a,@dptr
      005197 F5 1A            [12]  479 	mov	(_performPeriodicTask_sloc1_1_0 + 1),a
      005199 90 00 65         [24]  480 	mov	dptr,#_connHandle
      00519C E0               [24]  481 	movx	a,@dptr
      00519D FD               [12]  482 	mov	r5,a
      00519E A3               [24]  483 	inc	dptr
      00519F E0               [24]  484 	movx	a,@dptr
      0051A0 FF               [12]  485 	mov	r7,a
      0051A1 C0 06            [24]  486 	push	ar6
      0051A3 C0 05            [24]  487 	push	ar5
      0051A5 C0 04            [24]  488 	push	ar4
      0051A7 C0 03            [24]  489 	push	ar3
      0051A9 C0 02            [24]  490 	push	ar2
      0051AB C0 01            [24]  491 	push	ar1
      0051AD 74 34            [12]  492 	mov	a,#0x34
      0051AF C0 E0            [24]  493 	push	acc
      0051B1 C0 19            [24]  494 	push	_performPeriodicTask_sloc1_1_0
      0051B3 C0 1A            [24]  495 	push	(_performPeriodicTask_sloc1_1_0 + 1)
      0051B5 74 71            [12]  496 	mov	a,#_pLen
      0051B7 C0 E0            [24]  497 	push	acc
      0051B9 74 00            [12]  498 	mov	a,#(_pLen >> 8)
      0051BB C0 E0            [24]  499 	push	acc
      0051BD 74 00            [12]  500 	mov	a,#0x00
      0051BF C0 E0            [24]  501 	push	acc
      0051C1 74 74            [12]  502 	mov	a,#_pValue
      0051C3 C0 E0            [24]  503 	push	acc
      0051C5 74 00            [12]  504 	mov	a,#(_pValue >> 8)
      0051C7 C0 E0            [24]  505 	push	acc
      0051C9 74 00            [12]  506 	mov	a,#0x00
      0051CB C0 E0            [24]  507 	push	acc
      0051CD 90 11 E3         [24]  508 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      0051D0 E0               [24]  509 	movx	a,@dptr
      0051D1 C0 E0            [24]  510 	push	acc
      0051D3 A3               [24]  511 	inc	dptr
      0051D4 E0               [24]  512 	movx	a,@dptr
      0051D5 C0 E0            [24]  513 	push	acc
      0051D7 A3               [24]  514 	inc	dptr
      0051D8 E0               [24]  515 	movx	a,@dptr
      0051D9 C0 E0            [24]  516 	push	acc
      0051DB 12 51 E1         [24]  517 	lcall	00200$
      0051DE 02 51 EA         [24]  518 	ljmp	00201$
      0051E1                        519 00200$:
      0051E1 C0 01            [24]  520 	push	ar1
      0051E3 C0 06            [24]  521 	push	ar6
      0051E5 8D 82            [24]  522 	mov	dpl,r5
      0051E7 8F 83            [24]  523 	mov	dph,r7
      0051E9 22               [24]  524 	ret
      0051EA                        525 00201$:
      0051EA E5 81            [12]  526 	mov	a,sp
      0051EC 24 F4            [12]  527 	add	a,#0xf4
      0051EE F5 81            [12]  528 	mov	sp,a
      0051F0 D0 01            [24]  529 	pop	ar1
      0051F2 D0 02            [24]  530 	pop	ar2
      0051F4 D0 03            [24]  531 	pop	ar3
      0051F6 D0 04            [24]  532 	pop	ar4
      0051F8 D0 05            [24]  533 	pop	ar5
      0051FA D0 06            [24]  534 	pop	ar6
                                    535 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      0051FC D0 05            [24]  536 	pop	ar5
                                    537 ;	../fake_ble_stack/ble/include/gattservapp.c:211: ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
      0051FE                        538 00104$:
                                    539 ;	../fake_ble_stack/ble/include/gattservapp.c:214: if(found==true)
      0051FE 90 11 E8         [24]  540 	mov	dptr,#_performPeriodicTask_found_1_225
      005201 E0               [24]  541 	movx	a,@dptr
      005202 FF               [12]  542 	mov	r7,a
      005203 BF 01 03         [24]  543 	cjne	r7,#0x01,00202$
      005206 02 52 12         [24]  544 	ljmp	00107$
      005209                        545 00202$:
                                    546 ;	../fake_ble_stack/ble/include/gattservapp.c:180: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      005209 0A               [12]  547 	inc	r2
      00520A BA 04 00         [24]  548 	cjne	r2,#0x04,00203$
      00520D                        549 00203$:
      00520D 50 03            [24]  550 	jnc	00204$
      00520F 02 50 F6         [24]  551 	ljmp	00126$
      005212                        552 00204$:
      005212                        553 00107$:
                                    554 ;	../fake_ble_stack/ble/include/gattservapp.c:219: if(found==true)
      005212 90 11 E8         [24]  555 	mov	dptr,#_performPeriodicTask_found_1_225
      005215 E0               [24]  556 	movx	a,@dptr
      005216 FF               [12]  557 	mov	r7,a
      005217 BF 01 03         [24]  558 	cjne	r7,#0x01,00205$
      00521A 02 52 21         [24]  559 	ljmp	00110$
      00521D                        560 00205$:
                                    561 ;	../fake_ble_stack/ble/include/gattservapp.c:179: for(;i<ServiceN; i++){
      00521D 0D               [12]  562 	inc	r5
      00521E 02 50 C8         [24]  563 	ljmp	00129$
      005221                        564 00110$:
                                    565 ;	../fake_ble_stack/ble/include/gattservapp.c:226: if(found==true){
      005221 90 11 E8         [24]  566 	mov	dptr,#_performPeriodicTask_found_1_225
      005224 E0               [24]  567 	movx	a,@dptr
      005225 FF               [12]  568 	mov	r7,a
      005226 BF 01 02         [24]  569 	cjne	r7,#0x01,00206$
      005229 80 03            [24]  570 	sjmp	00207$
      00522B                        571 00206$:
      00522B 02 53 AC         [24]  572 	ljmp	00136$
      00522E                        573 00207$:
                                    574 ;	../fake_ble_stack/ble/include/gattservapp.c:227: BleOpr=0x04;
      00522E 75 AA 04         [24]  575 	mov	_BleOpr,#0x04
                                    576 ;	../fake_ble_stack/ble/include/gattservapp.c:240: break;
      005231 02 53 AC         [24]  577 	ljmp	00136$
                                    578 ;	../fake_ble_stack/ble/include/gattservapp.c:243: case 5:
      005234                        579 00153$:
      005234 90 11 E1         [24]  580 	mov	dptr,#_performPeriodicTask_ptr_1_225
      005237 E0               [24]  581 	movx	a,@dptr
      005238 F5 19            [12]  582 	mov	_performPeriodicTask_sloc1_1_0,a
      00523A A3               [24]  583 	inc	dptr
      00523B E0               [24]  584 	movx	a,@dptr
      00523C F5 1A            [12]  585 	mov	(_performPeriodicTask_sloc1_1_0 + 1),a
      00523E 90 11 E6         [24]  586 	mov	dptr,#_performPeriodicTask_i_1_225
      005241 E0               [24]  587 	movx	a,@dptr
      005242 FD               [12]  588 	mov	r5,a
      005243                        589 00134$:
                                    590 ;	../fake_ble_stack/ble/include/gattservapp.c:247: for(;i<ServiceN; i++){
      005243 90 11 DD         [24]  591 	mov	dptr,#_ServiceN
      005246 E0               [24]  592 	movx	a,@dptr
      005247 FB               [12]  593 	mov	r3,a
      005248 A3               [24]  594 	inc	dptr
      005249 E0               [24]  595 	movx	a,@dptr
      00524A FC               [12]  596 	mov	r4,a
      00524B 8D 01            [24]  597 	mov	ar1,r5
      00524D 7A 00            [12]  598 	mov	r2,#0x00
      00524F C3               [12]  599 	clr	c
      005250 E9               [12]  600 	mov	a,r1
      005251 9B               [12]  601 	subb	a,r3
      005252 EA               [12]  602 	mov	a,r2
      005253 64 80            [12]  603 	xrl	a,#0x80
      005255 8C F0            [24]  604 	mov	b,r4
      005257 63 F0 80         [24]  605 	xrl	b,#0x80
      00525A 95 F0            [12]  606 	subb	a,b
      00525C 40 03            [24]  607 	jc	00208$
      00525E 02 53 9C         [24]  608 	ljmp	00121$
      005261                        609 00208$:
                                    610 ;	../fake_ble_stack/ble/include/gattservapp.c:248: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      005261 90 11 E7         [24]  611 	mov	dptr,#_performPeriodicTask_j_1_225
      005264 74 00            [12]  612 	mov	a,#0x00
      005266 F0               [24]  613 	movx	@dptr,a
      005267 ED               [12]  614 	mov	a,r5
      005268 75 F0 06         [24]  615 	mov	b,#0x06
      00526B A4               [48]  616 	mul	ab
      00526C FB               [12]  617 	mov	r3,a
      00526D AC F0            [24]  618 	mov	r4,b
      00526F E0               [24]  619 	movx	a,@dptr
      005270 FA               [12]  620 	mov	r2,a
      005271                        621 00131$:
                                    622 ;	../fake_ble_stack/ble/include/gattservapp.c:251: pAttr = &((ServicesTable[i].service)[j]);
      005271 C0 05            [24]  623 	push	ar5
      005273 8B 82            [24]  624 	mov	dpl,r3
      005275 74 00            [12]  625 	mov	a,#(_ServicesTable >> 8)
      005277 2C               [12]  626 	add	a,r4
      005278 F5 83            [12]  627 	mov	dph,a
      00527A E0               [24]  628 	movx	a,@dptr
      00527B F8               [12]  629 	mov	r0,a
      00527C A3               [24]  630 	inc	dptr
      00527D E0               [24]  631 	movx	a,@dptr
      00527E F9               [12]  632 	mov	r1,a
      00527F A3               [24]  633 	inc	dptr
      005280 E0               [24]  634 	movx	a,@dptr
      005281 FD               [12]  635 	mov	r5,a
      005282 EA               [12]  636 	mov	a,r2
      005283 75 F0 0A         [24]  637 	mov	b,#0x0A
      005286 A4               [48]  638 	mul	ab
      005287 28               [12]  639 	add	a,r0
      005288 F8               [12]  640 	mov	r0,a
      005289 E9               [12]  641 	mov	a,r1
      00528A 35 F0            [12]  642 	addc	a,b
      00528C F9               [12]  643 	mov	r1,a
      00528D 90 11 E3         [24]  644 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      005290 E8               [12]  645 	mov	a,r0
      005291 F0               [24]  646 	movx	@dptr,a
      005292 E9               [12]  647 	mov	a,r1
      005293 A3               [24]  648 	inc	dptr
      005294 F0               [24]  649 	movx	@dptr,a
      005295 ED               [12]  650 	mov	a,r5
      005296 A3               [24]  651 	inc	dptr
      005297 F0               [24]  652 	movx	@dptr,a
                                    653 ;	../fake_ble_stack/ble/include/gattservapp.c:253: if(   *(uint16*)(pAttr->type).uuid == *ptr ){
      005298 08               [12]  654 	inc	r0
      005299 B8 00 01         [24]  655 	cjne	r0,#0x00,00209$
      00529C 09               [12]  656 	inc	r1
      00529D                        657 00209$:
      00529D 88 82            [24]  658 	mov	dpl,r0
      00529F 89 83            [24]  659 	mov	dph,r1
      0052A1 8D F0            [24]  660 	mov	b,r5
      0052A3 12 5B 6D         [24]  661 	lcall	__gptrget
      0052A6 F8               [12]  662 	mov	r0,a
      0052A7 A3               [24]  663 	inc	dptr
      0052A8 12 5B 6D         [24]  664 	lcall	__gptrget
      0052AB F9               [12]  665 	mov	r1,a
      0052AC A3               [24]  666 	inc	dptr
      0052AD 12 5B 6D         [24]  667 	lcall	__gptrget
      0052B0 FD               [12]  668 	mov	r5,a
      0052B1 88 82            [24]  669 	mov	dpl,r0
      0052B3 89 83            [24]  670 	mov	dph,r1
      0052B5 8D F0            [24]  671 	mov	b,r5
      0052B7 12 5B 6D         [24]  672 	lcall	__gptrget
      0052BA F8               [12]  673 	mov	r0,a
      0052BB A3               [24]  674 	inc	dptr
      0052BC 12 5B 6D         [24]  675 	lcall	__gptrget
      0052BF F9               [12]  676 	mov	r1,a
      0052C0 85 19 82         [24]  677 	mov	dpl,_performPeriodicTask_sloc1_1_0
      0052C3 85 1A 83         [24]  678 	mov	dph,(_performPeriodicTask_sloc1_1_0 + 1)
      0052C6 E4               [12]  679 	clr	a
      0052C7 93               [24]  680 	movc	a,@a+dptr
      0052C8 FD               [12]  681 	mov	r5,a
      0052C9 A3               [24]  682 	inc	dptr
      0052CA E4               [12]  683 	clr	a
      0052CB 93               [24]  684 	movc	a,@a+dptr
      0052CC FF               [12]  685 	mov	r7,a
      0052CD E8               [12]  686 	mov	a,r0
      0052CE B5 05 06         [24]  687 	cjne	a,ar5,00210$
      0052D1 E9               [12]  688 	mov	a,r1
      0052D2 B5 07 02         [24]  689 	cjne	a,ar7,00210$
      0052D5 80 05            [24]  690 	sjmp	00211$
      0052D7                        691 00210$:
      0052D7 D0 05            [24]  692 	pop	ar5
      0052D9 02 53 79         [24]  693 	ljmp	00115$
      0052DC                        694 00211$:
      0052DC D0 05            [24]  695 	pop	ar5
                                    696 ;	../fake_ble_stack/ble/include/gattservapp.c:256: found=true;	
      0052DE C0 05            [24]  697 	push	ar5
      0052E0 90 11 E8         [24]  698 	mov	dptr,#_performPeriodicTask_found_1_225
      0052E3 74 01            [12]  699 	mov	a,#0x01
      0052E5 F0               [24]  700 	movx	@dptr,a
                                    701 ;	../fake_ble_stack/ble/include/gattservapp.c:259: ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);
      0052E6 8B 06            [24]  702 	mov	ar6,r3
      0052E8 74 00            [12]  703 	mov	a,#(_ServicesTable >> 8)
      0052EA 2C               [12]  704 	add	a,r4
      0052EB FF               [12]  705 	mov	r7,a
      0052EC 8E 82            [24]  706 	mov	dpl,r6
      0052EE 8F 83            [24]  707 	mov	dph,r7
      0052F0 A3               [24]  708 	inc	dptr
      0052F1 A3               [24]  709 	inc	dptr
      0052F2 A3               [24]  710 	inc	dptr
      0052F3 E0               [24]  711 	movx	a,@dptr
      0052F4 F9               [12]  712 	mov	r1,a
      0052F5 A3               [24]  713 	inc	dptr
      0052F6 E0               [24]  714 	movx	a,@dptr
      0052F7 FE               [12]  715 	mov	r6,a
      0052F8 A3               [24]  716 	inc	dptr
      0052F9 E0               [24]  717 	movx	a,@dptr
      0052FA FF               [12]  718 	mov	r7,a
      0052FB 74 02            [12]  719 	mov	a,#0x02
      0052FD 29               [12]  720 	add	a,r1
      0052FE F9               [12]  721 	mov	r1,a
      0052FF 74 00            [12]  722 	mov	a,#0x00
      005301 3E               [12]  723 	addc	a,r6
      005302 FE               [12]  724 	mov	r6,a
      005303 89 82            [24]  725 	mov	dpl,r1
      005305 8E 83            [24]  726 	mov	dph,r6
      005307 8F F0            [24]  727 	mov	b,r7
      005309 12 5B 6D         [24]  728 	lcall	__gptrget
      00530C F9               [12]  729 	mov	r1,a
      00530D A3               [24]  730 	inc	dptr
      00530E 12 5B 6D         [24]  731 	lcall	__gptrget
      005311 FE               [12]  732 	mov	r6,a
      005312 90 00 72         [24]  733 	mov	dptr,#_offset
      005315 E0               [24]  734 	movx	a,@dptr
      005316 F5 1B            [12]  735 	mov	_performPeriodicTask_sloc2_1_0,a
      005318 A3               [24]  736 	inc	dptr
      005319 E0               [24]  737 	movx	a,@dptr
      00531A F5 1C            [12]  738 	mov	(_performPeriodicTask_sloc2_1_0 + 1),a
      00531C 90 00 71         [24]  739 	mov	dptr,#_pLen
      00531F E0               [24]  740 	movx	a,@dptr
      005320 F5 17            [12]  741 	mov	_performPeriodicTask_sloc0_1_0,a
      005322 90 00 65         [24]  742 	mov	dptr,#_connHandle
      005325 E0               [24]  743 	movx	a,@dptr
      005326 FD               [12]  744 	mov	r5,a
      005327 A3               [24]  745 	inc	dptr
      005328 E0               [24]  746 	movx	a,@dptr
      005329 FF               [12]  747 	mov	r7,a
      00532A C0 06            [24]  748 	push	ar6
      00532C C0 05            [24]  749 	push	ar5
      00532E C0 04            [24]  750 	push	ar4
      005330 C0 03            [24]  751 	push	ar3
      005332 C0 02            [24]  752 	push	ar2
      005334 C0 01            [24]  753 	push	ar1
      005336 C0 1B            [24]  754 	push	_performPeriodicTask_sloc2_1_0
      005338 C0 1C            [24]  755 	push	(_performPeriodicTask_sloc2_1_0 + 1)
      00533A C0 17            [24]  756 	push	_performPeriodicTask_sloc0_1_0
      00533C 74 74            [12]  757 	mov	a,#_pValue
      00533E C0 E0            [24]  758 	push	acc
      005340 74 00            [12]  759 	mov	a,#(_pValue >> 8)
      005342 C0 E0            [24]  760 	push	acc
      005344 74 00            [12]  761 	mov	a,#0x00
      005346 C0 E0            [24]  762 	push	acc
      005348 90 11 E3         [24]  763 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      00534B E0               [24]  764 	movx	a,@dptr
      00534C C0 E0            [24]  765 	push	acc
      00534E A3               [24]  766 	inc	dptr
      00534F E0               [24]  767 	movx	a,@dptr
      005350 C0 E0            [24]  768 	push	acc
      005352 A3               [24]  769 	inc	dptr
      005353 E0               [24]  770 	movx	a,@dptr
      005354 C0 E0            [24]  771 	push	acc
      005356 12 53 5C         [24]  772 	lcall	00212$
      005359 02 53 65         [24]  773 	ljmp	00213$
      00535C                        774 00212$:
      00535C C0 01            [24]  775 	push	ar1
      00535E C0 06            [24]  776 	push	ar6
      005360 8D 82            [24]  777 	mov	dpl,r5
      005362 8F 83            [24]  778 	mov	dph,r7
      005364 22               [24]  779 	ret
      005365                        780 00213$:
      005365 E5 81            [12]  781 	mov	a,sp
      005367 24 F7            [12]  782 	add	a,#0xf7
      005369 F5 81            [12]  783 	mov	sp,a
      00536B D0 01            [24]  784 	pop	ar1
      00536D D0 02            [24]  785 	pop	ar2
      00536F D0 03            [24]  786 	pop	ar3
      005371 D0 04            [24]  787 	pop	ar4
      005373 D0 05            [24]  788 	pop	ar5
      005375 D0 06            [24]  789 	pop	ar6
                                    790 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      005377 D0 05            [24]  791 	pop	ar5
                                    792 ;	../fake_ble_stack/ble/include/gattservapp.c:259: ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);
      005379                        793 00115$:
                                    794 ;	../fake_ble_stack/ble/include/gattservapp.c:263: if(found==true)
      005379 90 11 E8         [24]  795 	mov	dptr,#_performPeriodicTask_found_1_225
      00537C E0               [24]  796 	movx	a,@dptr
      00537D FF               [12]  797 	mov	r7,a
      00537E BF 01 03         [24]  798 	cjne	r7,#0x01,00214$
      005381 02 53 8D         [24]  799 	ljmp	00118$
      005384                        800 00214$:
                                    801 ;	../fake_ble_stack/ble/include/gattservapp.c:248: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      005384 0A               [12]  802 	inc	r2
      005385 BA 04 00         [24]  803 	cjne	r2,#0x04,00215$
      005388                        804 00215$:
      005388 50 03            [24]  805 	jnc	00216$
      00538A 02 52 71         [24]  806 	ljmp	00131$
      00538D                        807 00216$:
      00538D                        808 00118$:
                                    809 ;	../fake_ble_stack/ble/include/gattservapp.c:268: if(found==true)
      00538D 90 11 E8         [24]  810 	mov	dptr,#_performPeriodicTask_found_1_225
      005390 E0               [24]  811 	movx	a,@dptr
      005391 FF               [12]  812 	mov	r7,a
      005392 BF 01 03         [24]  813 	cjne	r7,#0x01,00217$
      005395 02 53 9C         [24]  814 	ljmp	00121$
      005398                        815 00217$:
                                    816 ;	../fake_ble_stack/ble/include/gattservapp.c:247: for(;i<ServiceN; i++){
      005398 0D               [12]  817 	inc	r5
      005399 02 52 43         [24]  818 	ljmp	00134$
      00539C                        819 00121$:
                                    820 ;	../fake_ble_stack/ble/include/gattservapp.c:275: if(found==true){
      00539C 90 11 E8         [24]  821 	mov	dptr,#_performPeriodicTask_found_1_225
      00539F E0               [24]  822 	movx	a,@dptr
      0053A0 FF               [12]  823 	mov	r7,a
      0053A1 BF 01 02         [24]  824 	cjne	r7,#0x01,00218$
      0053A4 80 03            [24]  825 	sjmp	00219$
      0053A6                        826 00218$:
      0053A6 02 53 AC         [24]  827 	ljmp	00136$
      0053A9                        828 00219$:
                                    829 ;	../fake_ble_stack/ble/include/gattservapp.c:276: BleOpr=0x05;
      0053A9 75 AA 05         [24]  830 	mov	_BleOpr,#0x05
                                    831 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      0053AC                        832 00136$:
      0053AC 22               [24]  833 	ret
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'GATTServApp_AddService'
                                    836 ;------------------------------------------------------------
                                    837 ;services                  Allocated with name '_GATTServApp_AddService_services_1_235'
                                    838 ;------------------------------------------------------------
                                    839 ;	../fake_ble_stack/ble/include/gattservapp.c:310: bStatus_t GATTServApp_AddService( uint32 services ){
                                    840 ;	-----------------------------------------
                                    841 ;	 function GATTServApp_AddService
                                    842 ;	-----------------------------------------
      0053AD                        843 _GATTServApp_AddService:
                                    844 ;	../fake_ble_stack/ble/include/gattservapp.c:314: }
      0053AD                        845 00101$:
      0053AD 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'GATTServApp_RegisterService'
                                    849 ;------------------------------------------------------------
                                    850 ;numAttrs                  Allocated with name '_GATTServApp_RegisterService_PARM_2'
                                    851 ;pServiceCBs               Allocated with name '_GATTServApp_RegisterService_PARM_3'
                                    852 ;pAttrs                    Allocated with name '_GATTServApp_RegisterService_pAttrs_1_237'
                                    853 ;idx                       Allocated with name '_GATTServApp_RegisterService_idx_1_238'
                                    854 ;------------------------------------------------------------
                                    855 ;	../fake_ble_stack/ble/include/gattservapp.c:321: bStatus_t GATTServApp_RegisterService( gattAttribute_t *pAttrs, uint16 numAttrs,CONST gattServiceCBs_t *pServiceCBs ){
                                    856 ;	-----------------------------------------
                                    857 ;	 function GATTServApp_RegisterService
                                    858 ;	-----------------------------------------
      0053AE                        859 _GATTServApp_RegisterService:
      0053AE AF F0            [24]  860 	mov	r7,b
      0053B0 AE 83            [24]  861 	mov	r6,dph
      0053B2 E5 82            [12]  862 	mov	a,dpl
      0053B4 90 11 EE         [24]  863 	mov	dptr,#_GATTServApp_RegisterService_pAttrs_1_237
      0053B7 F0               [24]  864 	movx	@dptr,a
      0053B8 EE               [12]  865 	mov	a,r6
      0053B9 A3               [24]  866 	inc	dptr
      0053BA F0               [24]  867 	movx	@dptr,a
      0053BB EF               [12]  868 	mov	a,r7
      0053BC A3               [24]  869 	inc	dptr
      0053BD F0               [24]  870 	movx	@dptr,a
                                    871 ;	../fake_ble_stack/ble/include/gattservapp.c:323: int idx=ServiceN;
      0053BE 90 11 DD         [24]  872 	mov	dptr,#_ServiceN
      0053C1 E0               [24]  873 	movx	a,@dptr
      0053C2 FE               [12]  874 	mov	r6,a
      0053C3 A3               [24]  875 	inc	dptr
      0053C4 E0               [24]  876 	movx	a,@dptr
      0053C5 FF               [12]  877 	mov	r7,a
      0053C6 90 11 F1         [24]  878 	mov	dptr,#_GATTServApp_RegisterService_idx_1_238
      0053C9 EE               [12]  879 	mov	a,r6
      0053CA F0               [24]  880 	movx	@dptr,a
      0053CB EF               [12]  881 	mov	a,r7
      0053CC A3               [24]  882 	inc	dptr
      0053CD F0               [24]  883 	movx	@dptr,a
                                    884 ;	../fake_ble_stack/ble/include/gattservapp.c:325: if(ServiceN == maxServiceN )
      0053CE BE 0A 05         [24]  885 	cjne	r6,#0x0A,00108$
      0053D1 BF 00 02         [24]  886 	cjne	r7,#0x00,00108$
      0053D4 80 03            [24]  887 	sjmp	00109$
      0053D6                        888 00108$:
      0053D6 02 53 DF         [24]  889 	ljmp	00102$
      0053D9                        890 00109$:
                                    891 ;	../fake_ble_stack/ble/include/gattservapp.c:326: return false;
      0053D9 75 82 00         [24]  892 	mov	dpl,#0x00
      0053DC 02 54 5A         [24]  893 	ljmp	00103$
      0053DF                        894 00102$:
                                    895 ;	../fake_ble_stack/ble/include/gattservapp.c:333: ServicesTable[idx].service=pAttrs;
      0053DF 90 11 F1         [24]  896 	mov	dptr,#_GATTServApp_RegisterService_idx_1_238
      0053E2 E0               [24]  897 	movx	a,@dptr
      0053E3 FE               [12]  898 	mov	r6,a
      0053E4 A3               [24]  899 	inc	dptr
      0053E5 E0               [24]  900 	movx	a,@dptr
      0053E6 FF               [12]  901 	mov	r7,a
      0053E7 90 12 2B         [24]  902 	mov	dptr,#__mulint_PARM_2
      0053EA EE               [12]  903 	mov	a,r6
      0053EB F0               [24]  904 	movx	@dptr,a
      0053EC EF               [12]  905 	mov	a,r7
      0053ED A3               [24]  906 	inc	dptr
      0053EE F0               [24]  907 	movx	@dptr,a
      0053EF 75 82 06         [24]  908 	mov	dpl,#0x06
      0053F2 75 83 00         [24]  909 	mov	dph,#0x00
      0053F5 12 5A 1C         [24]  910 	lcall	__mulint
      0053F8 AE 82            [24]  911 	mov	r6,dpl
      0053FA AF 83            [24]  912 	mov	r7,dph
      0053FC 8E 04            [24]  913 	mov	ar4,r6
      0053FE 74 00            [12]  914 	mov	a,#(_ServicesTable >> 8)
      005400 2F               [12]  915 	add	a,r7
      005401 FD               [12]  916 	mov	r5,a
      005402 90 11 EE         [24]  917 	mov	dptr,#_GATTServApp_RegisterService_pAttrs_1_237
      005405 E0               [24]  918 	movx	a,@dptr
      005406 F9               [12]  919 	mov	r1,a
      005407 A3               [24]  920 	inc	dptr
      005408 E0               [24]  921 	movx	a,@dptr
      005409 FA               [12]  922 	mov	r2,a
      00540A A3               [24]  923 	inc	dptr
      00540B E0               [24]  924 	movx	a,@dptr
      00540C FB               [12]  925 	mov	r3,a
      00540D 8C 82            [24]  926 	mov	dpl,r4
      00540F 8D 83            [24]  927 	mov	dph,r5
      005411 E9               [12]  928 	mov	a,r1
      005412 F0               [24]  929 	movx	@dptr,a
      005413 EA               [12]  930 	mov	a,r2
      005414 A3               [24]  931 	inc	dptr
      005415 F0               [24]  932 	movx	@dptr,a
      005416 EB               [12]  933 	mov	a,r3
      005417 A3               [24]  934 	inc	dptr
      005418 F0               [24]  935 	movx	@dptr,a
                                    936 ;	../fake_ble_stack/ble/include/gattservapp.c:334: ServicesTable[idx].CBs=pServiceCBs;
      005419 74 00            [12]  937 	mov	a,#(_ServicesTable >> 8)
      00541B 2F               [12]  938 	add	a,r7
      00541C FF               [12]  939 	mov	r7,a
      00541D 74 03            [12]  940 	mov	a,#0x03
      00541F 2E               [12]  941 	add	a,r6
      005420 FE               [12]  942 	mov	r6,a
      005421 74 00            [12]  943 	mov	a,#0x00
      005423 3F               [12]  944 	addc	a,r7
      005424 FF               [12]  945 	mov	r7,a
      005425 90 11 EB         [24]  946 	mov	dptr,#_GATTServApp_RegisterService_PARM_3
      005428 E0               [24]  947 	movx	a,@dptr
      005429 FB               [12]  948 	mov	r3,a
      00542A A3               [24]  949 	inc	dptr
      00542B E0               [24]  950 	movx	a,@dptr
      00542C FC               [12]  951 	mov	r4,a
      00542D A3               [24]  952 	inc	dptr
      00542E E0               [24]  953 	movx	a,@dptr
      00542F FD               [12]  954 	mov	r5,a
      005430 8E 82            [24]  955 	mov	dpl,r6
      005432 8F 83            [24]  956 	mov	dph,r7
      005434 EB               [12]  957 	mov	a,r3
      005435 F0               [24]  958 	movx	@dptr,a
      005436 EC               [12]  959 	mov	a,r4
      005437 A3               [24]  960 	inc	dptr
      005438 F0               [24]  961 	movx	@dptr,a
      005439 ED               [12]  962 	mov	a,r5
      00543A A3               [24]  963 	inc	dptr
      00543B F0               [24]  964 	movx	@dptr,a
                                    965 ;	../fake_ble_stack/ble/include/gattservapp.c:340: BleOpr=0x03;
      00543C 75 AA 03         [24]  966 	mov	_BleOpr,#0x03
                                    967 ;	../fake_ble_stack/ble/include/gattservapp.c:341: ServNH= (ServiceN>>8);
      00543F 90 11 DD         [24]  968 	mov	dptr,#_ServiceN
      005442 E0               [24]  969 	movx	a,@dptr
      005443 FE               [12]  970 	mov	r6,a
      005444 A3               [24]  971 	inc	dptr
      005445 E0               [24]  972 	movx	a,@dptr
      005446 FF               [12]  973 	mov	r7,a
      005447 8F B0            [24]  974 	mov	_ServNH,r7
                                    975 ;	../fake_ble_stack/ble/include/gattservapp.c:342: ServNL=ServiceN;
      005449 8E B7            [24]  976 	mov	_ServNL,r6
                                    977 ;	../fake_ble_stack/ble/include/gattservapp.c:345: ServiceN++;
      00544B 90 11 DD         [24]  978 	mov	dptr,#_ServiceN
      00544E 74 01            [12]  979 	mov	a,#0x01
      005450 2E               [12]  980 	add	a,r6
      005451 F0               [24]  981 	movx	@dptr,a
      005452 74 00            [12]  982 	mov	a,#0x00
      005454 3F               [12]  983 	addc	a,r7
      005455 A3               [24]  984 	inc	dptr
      005456 F0               [24]  985 	movx	@dptr,a
                                    986 ;	../fake_ble_stack/ble/include/gattservapp.c:347: return true;
      005457 75 82 01         [24]  987 	mov	dpl,#0x01
      00545A                        988 00103$:
      00545A 22               [24]  989 	ret
                                    990 	.area CSEG    (CODE)
                                    991 	.area CONST   (CODE)
                                    992 	.area CABS    (ABS,CODE)
