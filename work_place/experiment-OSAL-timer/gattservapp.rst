                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:57 2015
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
                                     24 	.globl _GATTServApp_RegisterService
                                     25 ;--------------------------------------------------------
                                     26 ; special function registers
                                     27 ;--------------------------------------------------------
                                     28 	.area RSEG    (ABS,DATA)
      000000                         29 	.org 0x0000
                           0000AA    30 _BleOpr	=	0x00aa
                           00008E    31 _BleFeedback	=	0x008e
                           0000B0    32 _ServNH	=	0x00b0
                           0000B7    33 _ServNL	=	0x00b7
                           0000C0    34 _FlashLed	=	0x00c0
                           0000C2    35 _MusicCtl	=	0x00c2
                                     36 ;--------------------------------------------------------
                                     37 ; special function bits
                                     38 ;--------------------------------------------------------
                                     39 	.area RSEG    (ABS,DATA)
      000000                         40 	.org 0x0000
                                     41 ;--------------------------------------------------------
                                     42 ; overlayable register banks
                                     43 ;--------------------------------------------------------
                                     44 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         45 	.ds 8
                                     46 ;--------------------------------------------------------
                                     47 ; internal ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DSEG    (DATA)
      000017                         50 _performPeriodicTask_sloc0_1_0:
      000017                         51 	.ds 2
      000019                         52 _performPeriodicTask_sloc1_1_0:
      000019                         53 	.ds 2
      00001B                         54 _performPeriodicTask_sloc2_1_0:
      00001B                         55 	.ds 2
                                     56 ;--------------------------------------------------------
                                     57 ; overlayable items in internal ram 
                                     58 ;--------------------------------------------------------
                                     59 ;--------------------------------------------------------
                                     60 ; indirectly addressable internal ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area ISEG    (DATA)
                                     63 ;--------------------------------------------------------
                                     64 ; absolute internal ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area IABS    (ABS,DATA)
                                     67 	.area IABS    (ABS,DATA)
                                     68 ;--------------------------------------------------------
                                     69 ; bit data
                                     70 ;--------------------------------------------------------
                                     71 	.area BSEG    (BIT)
                                     72 ;--------------------------------------------------------
                                     73 ; paged external ram data
                                     74 ;--------------------------------------------------------
                                     75 	.area PSEG    (PAG,XDATA)
                                     76 ;--------------------------------------------------------
                                     77 ; external ram data
                                     78 ;--------------------------------------------------------
                                     79 	.area XSEG    (XDATA)
                           000000    80 _ServicesTable	=	0x0000
      0011CF                         81 _ServiceN:
      0011CF                         82 	.ds 2
                           000065    83 _connHandle	=	0x0065
                           000067    84 _uuidAddr	=	0x0067
                           000071    85 _pLen	=	0x0071
                           000072    86 _offset	=	0x0072
                           000074    87 _pValue	=	0x0074
      0011D1                         88 _TaskID:
      0011D1                         89 	.ds 1
      0011D2                         90 _GATTServApp_Init_taskId_1_218:
      0011D2                         91 	.ds 1
      0011D3                         92 _performPeriodicTask_ptr_1_225:
      0011D3                         93 	.ds 2
      0011D5                         94 _performPeriodicTask_pAttr_1_225:
      0011D5                         95 	.ds 3
      0011D8                         96 _performPeriodicTask_i_1_225:
      0011D8                         97 	.ds 1
      0011D9                         98 _performPeriodicTask_j_1_225:
      0011D9                         99 	.ds 1
      0011DA                        100 _performPeriodicTask_found_1_225:
      0011DA                        101 	.ds 1
      0011DB                        102 _GATTServApp_RegisterService_PARM_2:
      0011DB                        103 	.ds 2
      0011DD                        104 _GATTServApp_RegisterService_PARM_3:
      0011DD                        105 	.ds 3
      0011E0                        106 _GATTServApp_RegisterService_pAttrs_1_235:
      0011E0                        107 	.ds 3
      0011E3                        108 _GATTServApp_RegisterService_idx_1_236:
      0011E3                        109 	.ds 2
                                    110 ;--------------------------------------------------------
                                    111 ; absolute external ram data
                                    112 ;--------------------------------------------------------
                                    113 	.area XABS    (ABS,XDATA)
                                    114 ;--------------------------------------------------------
                                    115 ; external initialized ram data
                                    116 ;--------------------------------------------------------
                                    117 	.area HOME    (CODE)
                                    118 	.area GSINIT0 (CODE)
                                    119 	.area GSINIT1 (CODE)
                                    120 	.area GSINIT2 (CODE)
                                    121 	.area GSINIT3 (CODE)
                                    122 	.area GSINIT4 (CODE)
                                    123 	.area GSINIT5 (CODE)
                                    124 	.area GSINIT  (CODE)
                                    125 	.area GSFINAL (CODE)
                                    126 	.area CSEG    (CODE)
                                    127 ;--------------------------------------------------------
                                    128 ; global & static initialisations
                                    129 ;--------------------------------------------------------
                                    130 	.area HOME    (CODE)
                                    131 	.area GSINIT  (CODE)
                                    132 	.area GSFINAL (CODE)
                                    133 	.area GSINIT  (CODE)
                                    134 ;	../fake_ble_stack/ble/include/gattservapp.c:32: static int ServiceN=0;
      0003AF 90 11 CF         [24]  135 	mov	dptr,#_ServiceN
      0003B2 74 00            [12]  136 	mov	a,#0x00
      0003B4 F0               [24]  137 	movx	@dptr,a
      0003B5 A3               [24]  138 	inc	dptr
      0003B6 F0               [24]  139 	movx	@dptr,a
                                    140 ;--------------------------------------------------------
                                    141 ; Home
                                    142 ;--------------------------------------------------------
                                    143 	.area HOME    (CODE)
                                    144 	.area HOME    (CODE)
                                    145 ;--------------------------------------------------------
                                    146 ; code
                                    147 ;--------------------------------------------------------
                                    148 	.area CSEG    (CODE)
                                    149 ;------------------------------------------------------------
                                    150 ;Allocation info for local variables in function 'GATTServApp_Init'
                                    151 ;------------------------------------------------------------
                                    152 ;taskId                    Allocated with name '_GATTServApp_Init_taskId_1_218'
                                    153 ;------------------------------------------------------------
                                    154 ;	../fake_ble_stack/ble/include/gattservapp.c:78: void GATTServApp_Init( uint8 taskId ){
                                    155 ;	-----------------------------------------
                                    156 ;	 function GATTServApp_Init
                                    157 ;	-----------------------------------------
      004EFE                        158 _GATTServApp_Init:
                           000007   159 	ar7 = 0x07
                           000006   160 	ar6 = 0x06
                           000005   161 	ar5 = 0x05
                           000004   162 	ar4 = 0x04
                           000003   163 	ar3 = 0x03
                           000002   164 	ar2 = 0x02
                           000001   165 	ar1 = 0x01
                           000000   166 	ar0 = 0x00
      004EFE E5 82            [12]  167 	mov	a,dpl
      004F00 90 11 D2         [24]  168 	mov	dptr,#_GATTServApp_Init_taskId_1_218
      004F03 F0               [24]  169 	movx	@dptr,a
                                    170 ;	../fake_ble_stack/ble/include/gattservapp.c:81: TaskID=taskId;
      004F04 E0               [24]  171 	movx	a,@dptr
      004F05 FF               [12]  172 	mov	r7,a
      004F06 90 11 D1         [24]  173 	mov	dptr,#_TaskID
      004F09 EF               [12]  174 	mov	a,r7
      004F0A F0               [24]  175 	movx	@dptr,a
                                    176 ;	../fake_ble_stack/ble/include/gattservapp.c:85: ServiceN=0;
      004F0B 90 11 CF         [24]  177 	mov	dptr,#_ServiceN
      004F0E 74 00            [12]  178 	mov	a,#0x00
      004F10 F0               [24]  179 	movx	@dptr,a
      004F11 A3               [24]  180 	inc	dptr
      004F12 F0               [24]  181 	movx	@dptr,a
                                    182 ;	../fake_ble_stack/ble/include/gattservapp.c:88: osal_set_event( TaskID, periodic_event );
      004F13 90 03 C6         [24]  183 	mov	dptr,#_osal_set_event_PARM_2
      004F16 04               [12]  184 	inc	a
      004F17 F0               [24]  185 	movx	@dptr,a
      004F18 74 00            [12]  186 	mov	a,#0x00
      004F1A A3               [24]  187 	inc	dptr
      004F1B F0               [24]  188 	movx	@dptr,a
      004F1C 8F 82            [24]  189 	mov	dpl,r7
      004F1E 12 19 62         [24]  190 	lcall	_osal_set_event
      004F21                        191 00101$:
      004F21 22               [24]  192 	ret
                                    193 ;------------------------------------------------------------
                                    194 ;Allocation info for local variables in function 'GATTServApp_ProcessEvent'
                                    195 ;------------------------------------------------------------
                                    196 ;events                    Allocated to stack - _bp -4
                                    197 ;taskId                    Allocated to registers 
                                    198 ;------------------------------------------------------------
                                    199 ;	../fake_ble_stack/ble/include/gattservapp.c:97: uint16 GATTServApp_ProcessEvent( uint8 taskId, uint16 events )__reentrant{
                                    200 ;	-----------------------------------------
                                    201 ;	 function GATTServApp_ProcessEvent
                                    202 ;	-----------------------------------------
      004F22                        203 _GATTServApp_ProcessEvent:
      004F22 C0 1D            [24]  204 	push	_bp
      004F24 85 81 1D         [24]  205 	mov	_bp,sp
                                    206 ;	../fake_ble_stack/ble/include/gattservapp.c:100: if( events & periodic_event ){
      004F27 E5 1D            [12]  207 	mov	a,_bp
      004F29 24 FC            [12]  208 	add	a,#0xfc
      004F2B F8               [12]  209 	mov	r0,a
      004F2C E6               [12]  210 	mov	a,@r0
      004F2D 20 E0 03         [24]  211 	jb	acc.0,00110$
      004F30 02 4F 6C         [24]  212 	ljmp	00104$
      004F33                        213 00110$:
                                    214 ;	../fake_ble_stack/ble/include/gattservapp.c:109: __endasm;
      004F33 C3               [12]  215 	clr c
                                    216 ;	../fake_ble_stack/ble/include/gattservapp.c:111: osal_start_timerEx( TaskID, periodic_event, PERIODIC_EVT_PERIOD );
      004F34 90 11 D1         [24]  217 	mov	dptr,#_TaskID
      004F37 E0               [24]  218 	movx	a,@dptr
      004F38 FF               [12]  219 	mov	r7,a
      004F39 90 10 38         [24]  220 	mov	dptr,#_osal_start_timerEx_PARM_2
      004F3C 74 01            [12]  221 	mov	a,#0x01
      004F3E F0               [24]  222 	movx	@dptr,a
      004F3F 74 00            [12]  223 	mov	a,#0x00
      004F41 A3               [24]  224 	inc	dptr
      004F42 F0               [24]  225 	movx	@dptr,a
      004F43 90 10 3A         [24]  226 	mov	dptr,#_osal_start_timerEx_PARM_3
      004F46 74 64            [12]  227 	mov	a,#0x64
      004F48 F0               [24]  228 	movx	@dptr,a
      004F49 74 00            [12]  229 	mov	a,#0x00
      004F4B A3               [24]  230 	inc	dptr
      004F4C F0               [24]  231 	movx	@dptr,a
      004F4D A3               [24]  232 	inc	dptr
      004F4E F0               [24]  233 	movx	@dptr,a
      004F4F A3               [24]  234 	inc	dptr
      004F50 F0               [24]  235 	movx	@dptr,a
      004F51 8F 82            [24]  236 	mov	dpl,r7
      004F53 12 26 DE         [24]  237 	lcall	_osal_start_timerEx
                                    238 ;	../fake_ble_stack/ble/include/gattservapp.c:116: performPeriodicTask();
      004F56 12 4F 75         [24]  239 	lcall	_performPeriodicTask
                                    240 ;	../fake_ble_stack/ble/include/gattservapp.c:123: return( events ^ periodic_event);
      004F59 E5 1D            [12]  241 	mov	a,_bp
      004F5B 24 FC            [12]  242 	add	a,#0xfc
      004F5D F8               [12]  243 	mov	r0,a
      004F5E 74 01            [12]  244 	mov	a,#0x01
      004F60 66               [12]  245 	xrl	a,@r0
      004F61 FE               [12]  246 	mov	r6,a
      004F62 08               [12]  247 	inc	r0
      004F63 86 07            [24]  248 	mov	ar7,@r0
      004F65 8E 82            [24]  249 	mov	dpl,r6
      004F67 8F 83            [24]  250 	mov	dph,r7
      004F69 02 4F 72         [24]  251 	ljmp	00105$
      004F6C                        252 00104$:
                                    253 ;	../fake_ble_stack/ble/include/gattservapp.c:128: return 0;
      004F6C 75 82 00         [24]  254 	mov	dpl,#0x00
      004F6F 75 83 00         [24]  255 	mov	dph,#0x00
      004F72                        256 00105$:
      004F72 D0 1D            [24]  257 	pop	_bp
      004F74 22               [24]  258 	ret
                                    259 ;------------------------------------------------------------
                                    260 ;Allocation info for local variables in function 'performPeriodicTask'
                                    261 ;------------------------------------------------------------
                                    262 ;sloc0                     Allocated with name '_performPeriodicTask_sloc0_1_0'
                                    263 ;sloc1                     Allocated with name '_performPeriodicTask_sloc1_1_0'
                                    264 ;sloc2                     Allocated with name '_performPeriodicTask_sloc2_1_0'
                                    265 ;TlbPtr                    Allocated with name '_performPeriodicTask_TlbPtr_1_225'
                                    266 ;ptr                       Allocated with name '_performPeriodicTask_ptr_1_225'
                                    267 ;pAttr                     Allocated with name '_performPeriodicTask_pAttr_1_225'
                                    268 ;sIdx                      Allocated with name '_performPeriodicTask_sIdx_1_225'
                                    269 ;i                         Allocated with name '_performPeriodicTask_i_1_225'
                                    270 ;j                         Allocated with name '_performPeriodicTask_j_1_225'
                                    271 ;found                     Allocated with name '_performPeriodicTask_found_1_225'
                                    272 ;------------------------------------------------------------
                                    273 ;	../fake_ble_stack/ble/include/gattservapp.c:135: static void performPeriodicTask( void ){
                                    274 ;	-----------------------------------------
                                    275 ;	 function performPeriodicTask
                                    276 ;	-----------------------------------------
      004F75                        277 _performPeriodicTask:
                                    278 ;	../fake_ble_stack/ble/include/gattservapp.c:139: __code uint16* ptr=uuidAddr;
      004F75 90 00 67         [24]  279 	mov	dptr,#_uuidAddr
      004F78 E0               [24]  280 	movx	a,@dptr
      004F79 FC               [12]  281 	mov	r4,a
      004F7A A3               [24]  282 	inc	dptr
      004F7B E0               [24]  283 	movx	a,@dptr
      004F7C FD               [12]  284 	mov	r5,a
      004F7D A3               [24]  285 	inc	dptr
      004F7E E0               [24]  286 	movx	a,@dptr
      004F7F FE               [12]  287 	mov	r6,a
      004F80 A3               [24]  288 	inc	dptr
      004F81 E0               [24]  289 	movx	a,@dptr
      004F82 FF               [12]  290 	mov	r7,a
      004F83 90 11 D3         [24]  291 	mov	dptr,#_performPeriodicTask_ptr_1_225
      004F86 EC               [12]  292 	mov	a,r4
      004F87 F0               [24]  293 	movx	@dptr,a
      004F88 ED               [12]  294 	mov	a,r5
      004F89 A3               [24]  295 	inc	dptr
      004F8A F0               [24]  296 	movx	@dptr,a
                                    297 ;	../fake_ble_stack/ble/include/gattservapp.c:143: uint8 i=0;
      004F8B 90 11 D8         [24]  298 	mov	dptr,#_performPeriodicTask_i_1_225
      004F8E 74 00            [12]  299 	mov	a,#0x00
      004F90 F0               [24]  300 	movx	@dptr,a
                                    301 ;	../fake_ble_stack/ble/include/gattservapp.c:145: bool found=false;
      004F91 90 11 DA         [24]  302 	mov	dptr,#_performPeriodicTask_found_1_225
      004F94 F0               [24]  303 	movx	@dptr,a
                                    304 ;	../fake_ble_stack/ble/include/gattservapp.c:154: switch(BleFeedback){
      004F95 AF 8E            [24]  305 	mov	r7,_BleFeedback
      004F97 BF 03 03         [24]  306 	cjne	r7,#0x03,00193$
      004F9A 02 4F AC         [24]  307 	ljmp	00101$
      004F9D                        308 00193$:
      004F9D BF 04 03         [24]  309 	cjne	r7,#0x04,00194$
      004FA0 02 4F B5         [24]  310 	ljmp	00146$
      004FA3                        311 00194$:
      004FA3 BF 05 03         [24]  312 	cjne	r7,#0x05,00195$
      004FA6 02 51 30         [24]  313 	ljmp	00153$
      004FA9                        314 00195$:
      004FA9 02 52 A8         [24]  315 	ljmp	00136$
                                    316 ;	../fake_ble_stack/ble/include/gattservapp.c:157: case 0x03:
      004FAC                        317 00101$:
                                    318 ;	../fake_ble_stack/ble/include/gattservapp.c:160: BleFeedback=0x00;
      004FAC 75 8E 00         [24]  319 	mov	_BleFeedback,#0x00
                                    320 ;	../fake_ble_stack/ble/include/gattservapp.c:161: BleOpr=0x00;
      004FAF 75 AA 00         [24]  321 	mov	_BleOpr,#0x00
                                    322 ;	../fake_ble_stack/ble/include/gattservapp.c:165: break;
      004FB2 02 52 A8         [24]  323 	ljmp	00136$
                                    324 ;	../fake_ble_stack/ble/include/gattservapp.c:168: case 0x04:
      004FB5                        325 00146$:
      004FB5 90 11 D3         [24]  326 	mov	dptr,#_performPeriodicTask_ptr_1_225
      004FB8 E0               [24]  327 	movx	a,@dptr
      004FB9 F5 17            [12]  328 	mov	_performPeriodicTask_sloc0_1_0,a
      004FBB A3               [24]  329 	inc	dptr
      004FBC E0               [24]  330 	movx	a,@dptr
      004FBD F5 18            [12]  331 	mov	(_performPeriodicTask_sloc0_1_0 + 1),a
      004FBF 90 11 D8         [24]  332 	mov	dptr,#_performPeriodicTask_i_1_225
      004FC2 E0               [24]  333 	movx	a,@dptr
      004FC3 FD               [12]  334 	mov	r5,a
      004FC4                        335 00129$:
                                    336 ;	../fake_ble_stack/ble/include/gattservapp.c:179: for(;i<ServiceN; i++){
      004FC4 90 11 CF         [24]  337 	mov	dptr,#_ServiceN
      004FC7 E0               [24]  338 	movx	a,@dptr
      004FC8 FB               [12]  339 	mov	r3,a
      004FC9 A3               [24]  340 	inc	dptr
      004FCA E0               [24]  341 	movx	a,@dptr
      004FCB FC               [12]  342 	mov	r4,a
      004FCC 8D 01            [24]  343 	mov	ar1,r5
      004FCE 7A 00            [12]  344 	mov	r2,#0x00
      004FD0 C3               [12]  345 	clr	c
      004FD1 E9               [12]  346 	mov	a,r1
      004FD2 9B               [12]  347 	subb	a,r3
      004FD3 EA               [12]  348 	mov	a,r2
      004FD4 64 80            [12]  349 	xrl	a,#0x80
      004FD6 8C F0            [24]  350 	mov	b,r4
      004FD8 63 F0 80         [24]  351 	xrl	b,#0x80
      004FDB 95 F0            [12]  352 	subb	a,b
      004FDD 40 03            [24]  353 	jc	00196$
      004FDF 02 51 1D         [24]  354 	ljmp	00110$
      004FE2                        355 00196$:
                                    356 ;	../fake_ble_stack/ble/include/gattservapp.c:180: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      004FE2 90 11 D9         [24]  357 	mov	dptr,#_performPeriodicTask_j_1_225
      004FE5 74 00            [12]  358 	mov	a,#0x00
      004FE7 F0               [24]  359 	movx	@dptr,a
      004FE8 ED               [12]  360 	mov	a,r5
      004FE9 75 F0 06         [24]  361 	mov	b,#0x06
      004FEC A4               [48]  362 	mul	ab
      004FED FB               [12]  363 	mov	r3,a
      004FEE AC F0            [24]  364 	mov	r4,b
      004FF0 E0               [24]  365 	movx	a,@dptr
      004FF1 FA               [12]  366 	mov	r2,a
      004FF2                        367 00126$:
                                    368 ;	../fake_ble_stack/ble/include/gattservapp.c:183: pAttr = &((ServicesTable[i].service)[j]);
      004FF2 C0 05            [24]  369 	push	ar5
      004FF4 8B 82            [24]  370 	mov	dpl,r3
      004FF6 74 00            [12]  371 	mov	a,#(_ServicesTable >> 8)
      004FF8 2C               [12]  372 	add	a,r4
      004FF9 F5 83            [12]  373 	mov	dph,a
      004FFB E0               [24]  374 	movx	a,@dptr
      004FFC F8               [12]  375 	mov	r0,a
      004FFD A3               [24]  376 	inc	dptr
      004FFE E0               [24]  377 	movx	a,@dptr
      004FFF F9               [12]  378 	mov	r1,a
      005000 A3               [24]  379 	inc	dptr
      005001 E0               [24]  380 	movx	a,@dptr
      005002 FD               [12]  381 	mov	r5,a
      005003 EA               [12]  382 	mov	a,r2
      005004 75 F0 0A         [24]  383 	mov	b,#0x0A
      005007 A4               [48]  384 	mul	ab
      005008 28               [12]  385 	add	a,r0
      005009 F8               [12]  386 	mov	r0,a
      00500A E9               [12]  387 	mov	a,r1
      00500B 35 F0            [12]  388 	addc	a,b
      00500D F9               [12]  389 	mov	r1,a
      00500E 90 11 D5         [24]  390 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      005011 E8               [12]  391 	mov	a,r0
      005012 F0               [24]  392 	movx	@dptr,a
      005013 E9               [12]  393 	mov	a,r1
      005014 A3               [24]  394 	inc	dptr
      005015 F0               [24]  395 	movx	@dptr,a
      005016 ED               [12]  396 	mov	a,r5
      005017 A3               [24]  397 	inc	dptr
      005018 F0               [24]  398 	movx	@dptr,a
                                    399 ;	../fake_ble_stack/ble/include/gattservapp.c:199: if(   *(uint16*)(pAttr->type).uuid == *ptr ){
      005019 08               [12]  400 	inc	r0
      00501A B8 00 01         [24]  401 	cjne	r0,#0x00,00197$
      00501D 09               [12]  402 	inc	r1
      00501E                        403 00197$:
      00501E 88 82            [24]  404 	mov	dpl,r0
      005020 89 83            [24]  405 	mov	dph,r1
      005022 8D F0            [24]  406 	mov	b,r5
      005024 12 5B 16         [24]  407 	lcall	__gptrget
      005027 F8               [12]  408 	mov	r0,a
      005028 A3               [24]  409 	inc	dptr
      005029 12 5B 16         [24]  410 	lcall	__gptrget
      00502C F9               [12]  411 	mov	r1,a
      00502D A3               [24]  412 	inc	dptr
      00502E 12 5B 16         [24]  413 	lcall	__gptrget
      005031 FD               [12]  414 	mov	r5,a
      005032 88 82            [24]  415 	mov	dpl,r0
      005034 89 83            [24]  416 	mov	dph,r1
      005036 8D F0            [24]  417 	mov	b,r5
      005038 12 5B 16         [24]  418 	lcall	__gptrget
      00503B F8               [12]  419 	mov	r0,a
      00503C A3               [24]  420 	inc	dptr
      00503D 12 5B 16         [24]  421 	lcall	__gptrget
      005040 F9               [12]  422 	mov	r1,a
      005041 85 17 82         [24]  423 	mov	dpl,_performPeriodicTask_sloc0_1_0
      005044 85 18 83         [24]  424 	mov	dph,(_performPeriodicTask_sloc0_1_0 + 1)
      005047 E4               [12]  425 	clr	a
      005048 93               [24]  426 	movc	a,@a+dptr
      005049 FD               [12]  427 	mov	r5,a
      00504A A3               [24]  428 	inc	dptr
      00504B E4               [12]  429 	clr	a
      00504C 93               [24]  430 	movc	a,@a+dptr
      00504D FF               [12]  431 	mov	r7,a
      00504E E8               [12]  432 	mov	a,r0
      00504F B5 05 06         [24]  433 	cjne	a,ar5,00198$
      005052 E9               [12]  434 	mov	a,r1
      005053 B5 07 02         [24]  435 	cjne	a,ar7,00198$
      005056 80 05            [24]  436 	sjmp	00199$
      005058                        437 00198$:
      005058 D0 05            [24]  438 	pop	ar5
      00505A 02 50 FA         [24]  439 	ljmp	00104$
      00505D                        440 00199$:
      00505D D0 05            [24]  441 	pop	ar5
                                    442 ;	../fake_ble_stack/ble/include/gattservapp.c:210: found=true;	
      00505F C0 05            [24]  443 	push	ar5
      005061 90 11 DA         [24]  444 	mov	dptr,#_performPeriodicTask_found_1_225
      005064 74 01            [12]  445 	mov	a,#0x01
      005066 F0               [24]  446 	movx	@dptr,a
                                    447 ;	../fake_ble_stack/ble/include/gattservapp.c:211: ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
      005067 8B 06            [24]  448 	mov	ar6,r3
      005069 74 00            [12]  449 	mov	a,#(_ServicesTable >> 8)
      00506B 2C               [12]  450 	add	a,r4
      00506C FF               [12]  451 	mov	r7,a
      00506D 8E 82            [24]  452 	mov	dpl,r6
      00506F 8F 83            [24]  453 	mov	dph,r7
      005071 A3               [24]  454 	inc	dptr
      005072 A3               [24]  455 	inc	dptr
      005073 A3               [24]  456 	inc	dptr
      005074 E0               [24]  457 	movx	a,@dptr
      005075 F9               [12]  458 	mov	r1,a
      005076 A3               [24]  459 	inc	dptr
      005077 E0               [24]  460 	movx	a,@dptr
      005078 FE               [12]  461 	mov	r6,a
      005079 A3               [24]  462 	inc	dptr
      00507A E0               [24]  463 	movx	a,@dptr
      00507B FF               [12]  464 	mov	r7,a
      00507C 89 82            [24]  465 	mov	dpl,r1
      00507E 8E 83            [24]  466 	mov	dph,r6
      005080 8F F0            [24]  467 	mov	b,r7
      005082 12 5B 16         [24]  468 	lcall	__gptrget
      005085 F9               [12]  469 	mov	r1,a
      005086 A3               [24]  470 	inc	dptr
      005087 12 5B 16         [24]  471 	lcall	__gptrget
      00508A FE               [12]  472 	mov	r6,a
      00508B 90 00 72         [24]  473 	mov	dptr,#_offset
      00508E E0               [24]  474 	movx	a,@dptr
      00508F F5 19            [12]  475 	mov	_performPeriodicTask_sloc1_1_0,a
      005091 A3               [24]  476 	inc	dptr
      005092 E0               [24]  477 	movx	a,@dptr
      005093 F5 1A            [12]  478 	mov	(_performPeriodicTask_sloc1_1_0 + 1),a
      005095 90 00 65         [24]  479 	mov	dptr,#_connHandle
      005098 E0               [24]  480 	movx	a,@dptr
      005099 FD               [12]  481 	mov	r5,a
      00509A A3               [24]  482 	inc	dptr
      00509B E0               [24]  483 	movx	a,@dptr
      00509C FF               [12]  484 	mov	r7,a
      00509D C0 06            [24]  485 	push	ar6
      00509F C0 05            [24]  486 	push	ar5
      0050A1 C0 04            [24]  487 	push	ar4
      0050A3 C0 03            [24]  488 	push	ar3
      0050A5 C0 02            [24]  489 	push	ar2
      0050A7 C0 01            [24]  490 	push	ar1
      0050A9 74 34            [12]  491 	mov	a,#0x34
      0050AB C0 E0            [24]  492 	push	acc
      0050AD C0 19            [24]  493 	push	_performPeriodicTask_sloc1_1_0
      0050AF C0 1A            [24]  494 	push	(_performPeriodicTask_sloc1_1_0 + 1)
      0050B1 74 71            [12]  495 	mov	a,#_pLen
      0050B3 C0 E0            [24]  496 	push	acc
      0050B5 74 00            [12]  497 	mov	a,#(_pLen >> 8)
      0050B7 C0 E0            [24]  498 	push	acc
      0050B9 74 00            [12]  499 	mov	a,#0x00
      0050BB C0 E0            [24]  500 	push	acc
      0050BD 74 74            [12]  501 	mov	a,#_pValue
      0050BF C0 E0            [24]  502 	push	acc
      0050C1 74 00            [12]  503 	mov	a,#(_pValue >> 8)
      0050C3 C0 E0            [24]  504 	push	acc
      0050C5 74 00            [12]  505 	mov	a,#0x00
      0050C7 C0 E0            [24]  506 	push	acc
      0050C9 90 11 D5         [24]  507 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      0050CC E0               [24]  508 	movx	a,@dptr
      0050CD C0 E0            [24]  509 	push	acc
      0050CF A3               [24]  510 	inc	dptr
      0050D0 E0               [24]  511 	movx	a,@dptr
      0050D1 C0 E0            [24]  512 	push	acc
      0050D3 A3               [24]  513 	inc	dptr
      0050D4 E0               [24]  514 	movx	a,@dptr
      0050D5 C0 E0            [24]  515 	push	acc
      0050D7 12 50 DD         [24]  516 	lcall	00200$
      0050DA 02 50 E6         [24]  517 	ljmp	00201$
      0050DD                        518 00200$:
      0050DD C0 01            [24]  519 	push	ar1
      0050DF C0 06            [24]  520 	push	ar6
      0050E1 8D 82            [24]  521 	mov	dpl,r5
      0050E3 8F 83            [24]  522 	mov	dph,r7
      0050E5 22               [24]  523 	ret
      0050E6                        524 00201$:
      0050E6 E5 81            [12]  525 	mov	a,sp
      0050E8 24 F4            [12]  526 	add	a,#0xf4
      0050EA F5 81            [12]  527 	mov	sp,a
      0050EC D0 01            [24]  528 	pop	ar1
      0050EE D0 02            [24]  529 	pop	ar2
      0050F0 D0 03            [24]  530 	pop	ar3
      0050F2 D0 04            [24]  531 	pop	ar4
      0050F4 D0 05            [24]  532 	pop	ar5
      0050F6 D0 06            [24]  533 	pop	ar6
                                    534 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      0050F8 D0 05            [24]  535 	pop	ar5
                                    536 ;	../fake_ble_stack/ble/include/gattservapp.c:211: ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
      0050FA                        537 00104$:
                                    538 ;	../fake_ble_stack/ble/include/gattservapp.c:214: if(found==true)
      0050FA 90 11 DA         [24]  539 	mov	dptr,#_performPeriodicTask_found_1_225
      0050FD E0               [24]  540 	movx	a,@dptr
      0050FE FF               [12]  541 	mov	r7,a
      0050FF BF 01 03         [24]  542 	cjne	r7,#0x01,00202$
      005102 02 51 0E         [24]  543 	ljmp	00107$
      005105                        544 00202$:
                                    545 ;	../fake_ble_stack/ble/include/gattservapp.c:180: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      005105 0A               [12]  546 	inc	r2
      005106 BA 04 00         [24]  547 	cjne	r2,#0x04,00203$
      005109                        548 00203$:
      005109 50 03            [24]  549 	jnc	00204$
      00510B 02 4F F2         [24]  550 	ljmp	00126$
      00510E                        551 00204$:
      00510E                        552 00107$:
                                    553 ;	../fake_ble_stack/ble/include/gattservapp.c:219: if(found==true)
      00510E 90 11 DA         [24]  554 	mov	dptr,#_performPeriodicTask_found_1_225
      005111 E0               [24]  555 	movx	a,@dptr
      005112 FF               [12]  556 	mov	r7,a
      005113 BF 01 03         [24]  557 	cjne	r7,#0x01,00205$
      005116 02 51 1D         [24]  558 	ljmp	00110$
      005119                        559 00205$:
                                    560 ;	../fake_ble_stack/ble/include/gattservapp.c:179: for(;i<ServiceN; i++){
      005119 0D               [12]  561 	inc	r5
      00511A 02 4F C4         [24]  562 	ljmp	00129$
      00511D                        563 00110$:
                                    564 ;	../fake_ble_stack/ble/include/gattservapp.c:226: if(found==true){
      00511D 90 11 DA         [24]  565 	mov	dptr,#_performPeriodicTask_found_1_225
      005120 E0               [24]  566 	movx	a,@dptr
      005121 FF               [12]  567 	mov	r7,a
      005122 BF 01 02         [24]  568 	cjne	r7,#0x01,00206$
      005125 80 03            [24]  569 	sjmp	00207$
      005127                        570 00206$:
      005127 02 52 A8         [24]  571 	ljmp	00136$
      00512A                        572 00207$:
                                    573 ;	../fake_ble_stack/ble/include/gattservapp.c:227: BleOpr=0x04;
      00512A 75 AA 04         [24]  574 	mov	_BleOpr,#0x04
                                    575 ;	../fake_ble_stack/ble/include/gattservapp.c:240: break;
      00512D 02 52 A8         [24]  576 	ljmp	00136$
                                    577 ;	../fake_ble_stack/ble/include/gattservapp.c:243: case 5:
      005130                        578 00153$:
      005130 90 11 D3         [24]  579 	mov	dptr,#_performPeriodicTask_ptr_1_225
      005133 E0               [24]  580 	movx	a,@dptr
      005134 F5 19            [12]  581 	mov	_performPeriodicTask_sloc1_1_0,a
      005136 A3               [24]  582 	inc	dptr
      005137 E0               [24]  583 	movx	a,@dptr
      005138 F5 1A            [12]  584 	mov	(_performPeriodicTask_sloc1_1_0 + 1),a
      00513A 90 11 D8         [24]  585 	mov	dptr,#_performPeriodicTask_i_1_225
      00513D E0               [24]  586 	movx	a,@dptr
      00513E FD               [12]  587 	mov	r5,a
      00513F                        588 00134$:
                                    589 ;	../fake_ble_stack/ble/include/gattservapp.c:247: for(;i<ServiceN; i++){
      00513F 90 11 CF         [24]  590 	mov	dptr,#_ServiceN
      005142 E0               [24]  591 	movx	a,@dptr
      005143 FB               [12]  592 	mov	r3,a
      005144 A3               [24]  593 	inc	dptr
      005145 E0               [24]  594 	movx	a,@dptr
      005146 FC               [12]  595 	mov	r4,a
      005147 8D 01            [24]  596 	mov	ar1,r5
      005149 7A 00            [12]  597 	mov	r2,#0x00
      00514B C3               [12]  598 	clr	c
      00514C E9               [12]  599 	mov	a,r1
      00514D 9B               [12]  600 	subb	a,r3
      00514E EA               [12]  601 	mov	a,r2
      00514F 64 80            [12]  602 	xrl	a,#0x80
      005151 8C F0            [24]  603 	mov	b,r4
      005153 63 F0 80         [24]  604 	xrl	b,#0x80
      005156 95 F0            [12]  605 	subb	a,b
      005158 40 03            [24]  606 	jc	00208$
      00515A 02 52 98         [24]  607 	ljmp	00121$
      00515D                        608 00208$:
                                    609 ;	../fake_ble_stack/ble/include/gattservapp.c:248: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      00515D 90 11 D9         [24]  610 	mov	dptr,#_performPeriodicTask_j_1_225
      005160 74 00            [12]  611 	mov	a,#0x00
      005162 F0               [24]  612 	movx	@dptr,a
      005163 ED               [12]  613 	mov	a,r5
      005164 75 F0 06         [24]  614 	mov	b,#0x06
      005167 A4               [48]  615 	mul	ab
      005168 FB               [12]  616 	mov	r3,a
      005169 AC F0            [24]  617 	mov	r4,b
      00516B E0               [24]  618 	movx	a,@dptr
      00516C FA               [12]  619 	mov	r2,a
      00516D                        620 00131$:
                                    621 ;	../fake_ble_stack/ble/include/gattservapp.c:251: pAttr = &((ServicesTable[i].service)[j]);
      00516D C0 05            [24]  622 	push	ar5
      00516F 8B 82            [24]  623 	mov	dpl,r3
      005171 74 00            [12]  624 	mov	a,#(_ServicesTable >> 8)
      005173 2C               [12]  625 	add	a,r4
      005174 F5 83            [12]  626 	mov	dph,a
      005176 E0               [24]  627 	movx	a,@dptr
      005177 F8               [12]  628 	mov	r0,a
      005178 A3               [24]  629 	inc	dptr
      005179 E0               [24]  630 	movx	a,@dptr
      00517A F9               [12]  631 	mov	r1,a
      00517B A3               [24]  632 	inc	dptr
      00517C E0               [24]  633 	movx	a,@dptr
      00517D FD               [12]  634 	mov	r5,a
      00517E EA               [12]  635 	mov	a,r2
      00517F 75 F0 0A         [24]  636 	mov	b,#0x0A
      005182 A4               [48]  637 	mul	ab
      005183 28               [12]  638 	add	a,r0
      005184 F8               [12]  639 	mov	r0,a
      005185 E9               [12]  640 	mov	a,r1
      005186 35 F0            [12]  641 	addc	a,b
      005188 F9               [12]  642 	mov	r1,a
      005189 90 11 D5         [24]  643 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      00518C E8               [12]  644 	mov	a,r0
      00518D F0               [24]  645 	movx	@dptr,a
      00518E E9               [12]  646 	mov	a,r1
      00518F A3               [24]  647 	inc	dptr
      005190 F0               [24]  648 	movx	@dptr,a
      005191 ED               [12]  649 	mov	a,r5
      005192 A3               [24]  650 	inc	dptr
      005193 F0               [24]  651 	movx	@dptr,a
                                    652 ;	../fake_ble_stack/ble/include/gattservapp.c:253: if(   *(uint16*)(pAttr->type).uuid == *ptr ){
      005194 08               [12]  653 	inc	r0
      005195 B8 00 01         [24]  654 	cjne	r0,#0x00,00209$
      005198 09               [12]  655 	inc	r1
      005199                        656 00209$:
      005199 88 82            [24]  657 	mov	dpl,r0
      00519B 89 83            [24]  658 	mov	dph,r1
      00519D 8D F0            [24]  659 	mov	b,r5
      00519F 12 5B 16         [24]  660 	lcall	__gptrget
      0051A2 F8               [12]  661 	mov	r0,a
      0051A3 A3               [24]  662 	inc	dptr
      0051A4 12 5B 16         [24]  663 	lcall	__gptrget
      0051A7 F9               [12]  664 	mov	r1,a
      0051A8 A3               [24]  665 	inc	dptr
      0051A9 12 5B 16         [24]  666 	lcall	__gptrget
      0051AC FD               [12]  667 	mov	r5,a
      0051AD 88 82            [24]  668 	mov	dpl,r0
      0051AF 89 83            [24]  669 	mov	dph,r1
      0051B1 8D F0            [24]  670 	mov	b,r5
      0051B3 12 5B 16         [24]  671 	lcall	__gptrget
      0051B6 F8               [12]  672 	mov	r0,a
      0051B7 A3               [24]  673 	inc	dptr
      0051B8 12 5B 16         [24]  674 	lcall	__gptrget
      0051BB F9               [12]  675 	mov	r1,a
      0051BC 85 19 82         [24]  676 	mov	dpl,_performPeriodicTask_sloc1_1_0
      0051BF 85 1A 83         [24]  677 	mov	dph,(_performPeriodicTask_sloc1_1_0 + 1)
      0051C2 E4               [12]  678 	clr	a
      0051C3 93               [24]  679 	movc	a,@a+dptr
      0051C4 FD               [12]  680 	mov	r5,a
      0051C5 A3               [24]  681 	inc	dptr
      0051C6 E4               [12]  682 	clr	a
      0051C7 93               [24]  683 	movc	a,@a+dptr
      0051C8 FF               [12]  684 	mov	r7,a
      0051C9 E8               [12]  685 	mov	a,r0
      0051CA B5 05 06         [24]  686 	cjne	a,ar5,00210$
      0051CD E9               [12]  687 	mov	a,r1
      0051CE B5 07 02         [24]  688 	cjne	a,ar7,00210$
      0051D1 80 05            [24]  689 	sjmp	00211$
      0051D3                        690 00210$:
      0051D3 D0 05            [24]  691 	pop	ar5
      0051D5 02 52 75         [24]  692 	ljmp	00115$
      0051D8                        693 00211$:
      0051D8 D0 05            [24]  694 	pop	ar5
                                    695 ;	../fake_ble_stack/ble/include/gattservapp.c:256: found=true;	
      0051DA C0 05            [24]  696 	push	ar5
      0051DC 90 11 DA         [24]  697 	mov	dptr,#_performPeriodicTask_found_1_225
      0051DF 74 01            [12]  698 	mov	a,#0x01
      0051E1 F0               [24]  699 	movx	@dptr,a
                                    700 ;	../fake_ble_stack/ble/include/gattservapp.c:259: ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);
      0051E2 8B 06            [24]  701 	mov	ar6,r3
      0051E4 74 00            [12]  702 	mov	a,#(_ServicesTable >> 8)
      0051E6 2C               [12]  703 	add	a,r4
      0051E7 FF               [12]  704 	mov	r7,a
      0051E8 8E 82            [24]  705 	mov	dpl,r6
      0051EA 8F 83            [24]  706 	mov	dph,r7
      0051EC A3               [24]  707 	inc	dptr
      0051ED A3               [24]  708 	inc	dptr
      0051EE A3               [24]  709 	inc	dptr
      0051EF E0               [24]  710 	movx	a,@dptr
      0051F0 F9               [12]  711 	mov	r1,a
      0051F1 A3               [24]  712 	inc	dptr
      0051F2 E0               [24]  713 	movx	a,@dptr
      0051F3 FE               [12]  714 	mov	r6,a
      0051F4 A3               [24]  715 	inc	dptr
      0051F5 E0               [24]  716 	movx	a,@dptr
      0051F6 FF               [12]  717 	mov	r7,a
      0051F7 74 02            [12]  718 	mov	a,#0x02
      0051F9 29               [12]  719 	add	a,r1
      0051FA F9               [12]  720 	mov	r1,a
      0051FB 74 00            [12]  721 	mov	a,#0x00
      0051FD 3E               [12]  722 	addc	a,r6
      0051FE FE               [12]  723 	mov	r6,a
      0051FF 89 82            [24]  724 	mov	dpl,r1
      005201 8E 83            [24]  725 	mov	dph,r6
      005203 8F F0            [24]  726 	mov	b,r7
      005205 12 5B 16         [24]  727 	lcall	__gptrget
      005208 F9               [12]  728 	mov	r1,a
      005209 A3               [24]  729 	inc	dptr
      00520A 12 5B 16         [24]  730 	lcall	__gptrget
      00520D FE               [12]  731 	mov	r6,a
      00520E 90 00 72         [24]  732 	mov	dptr,#_offset
      005211 E0               [24]  733 	movx	a,@dptr
      005212 F5 1B            [12]  734 	mov	_performPeriodicTask_sloc2_1_0,a
      005214 A3               [24]  735 	inc	dptr
      005215 E0               [24]  736 	movx	a,@dptr
      005216 F5 1C            [12]  737 	mov	(_performPeriodicTask_sloc2_1_0 + 1),a
      005218 90 00 71         [24]  738 	mov	dptr,#_pLen
      00521B E0               [24]  739 	movx	a,@dptr
      00521C F5 17            [12]  740 	mov	_performPeriodicTask_sloc0_1_0,a
      00521E 90 00 65         [24]  741 	mov	dptr,#_connHandle
      005221 E0               [24]  742 	movx	a,@dptr
      005222 FD               [12]  743 	mov	r5,a
      005223 A3               [24]  744 	inc	dptr
      005224 E0               [24]  745 	movx	a,@dptr
      005225 FF               [12]  746 	mov	r7,a
      005226 C0 06            [24]  747 	push	ar6
      005228 C0 05            [24]  748 	push	ar5
      00522A C0 04            [24]  749 	push	ar4
      00522C C0 03            [24]  750 	push	ar3
      00522E C0 02            [24]  751 	push	ar2
      005230 C0 01            [24]  752 	push	ar1
      005232 C0 1B            [24]  753 	push	_performPeriodicTask_sloc2_1_0
      005234 C0 1C            [24]  754 	push	(_performPeriodicTask_sloc2_1_0 + 1)
      005236 C0 17            [24]  755 	push	_performPeriodicTask_sloc0_1_0
      005238 74 74            [12]  756 	mov	a,#_pValue
      00523A C0 E0            [24]  757 	push	acc
      00523C 74 00            [12]  758 	mov	a,#(_pValue >> 8)
      00523E C0 E0            [24]  759 	push	acc
      005240 74 00            [12]  760 	mov	a,#0x00
      005242 C0 E0            [24]  761 	push	acc
      005244 90 11 D5         [24]  762 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      005247 E0               [24]  763 	movx	a,@dptr
      005248 C0 E0            [24]  764 	push	acc
      00524A A3               [24]  765 	inc	dptr
      00524B E0               [24]  766 	movx	a,@dptr
      00524C C0 E0            [24]  767 	push	acc
      00524E A3               [24]  768 	inc	dptr
      00524F E0               [24]  769 	movx	a,@dptr
      005250 C0 E0            [24]  770 	push	acc
      005252 12 52 58         [24]  771 	lcall	00212$
      005255 02 52 61         [24]  772 	ljmp	00213$
      005258                        773 00212$:
      005258 C0 01            [24]  774 	push	ar1
      00525A C0 06            [24]  775 	push	ar6
      00525C 8D 82            [24]  776 	mov	dpl,r5
      00525E 8F 83            [24]  777 	mov	dph,r7
      005260 22               [24]  778 	ret
      005261                        779 00213$:
      005261 E5 81            [12]  780 	mov	a,sp
      005263 24 F7            [12]  781 	add	a,#0xf7
      005265 F5 81            [12]  782 	mov	sp,a
      005267 D0 01            [24]  783 	pop	ar1
      005269 D0 02            [24]  784 	pop	ar2
      00526B D0 03            [24]  785 	pop	ar3
      00526D D0 04            [24]  786 	pop	ar4
      00526F D0 05            [24]  787 	pop	ar5
      005271 D0 06            [24]  788 	pop	ar6
                                    789 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      005273 D0 05            [24]  790 	pop	ar5
                                    791 ;	../fake_ble_stack/ble/include/gattservapp.c:259: ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);
      005275                        792 00115$:
                                    793 ;	../fake_ble_stack/ble/include/gattservapp.c:263: if(found==true)
      005275 90 11 DA         [24]  794 	mov	dptr,#_performPeriodicTask_found_1_225
      005278 E0               [24]  795 	movx	a,@dptr
      005279 FF               [12]  796 	mov	r7,a
      00527A BF 01 03         [24]  797 	cjne	r7,#0x01,00214$
      00527D 02 52 89         [24]  798 	ljmp	00118$
      005280                        799 00214$:
                                    800 ;	../fake_ble_stack/ble/include/gattservapp.c:248: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      005280 0A               [12]  801 	inc	r2
      005281 BA 04 00         [24]  802 	cjne	r2,#0x04,00215$
      005284                        803 00215$:
      005284 50 03            [24]  804 	jnc	00216$
      005286 02 51 6D         [24]  805 	ljmp	00131$
      005289                        806 00216$:
      005289                        807 00118$:
                                    808 ;	../fake_ble_stack/ble/include/gattservapp.c:268: if(found==true)
      005289 90 11 DA         [24]  809 	mov	dptr,#_performPeriodicTask_found_1_225
      00528C E0               [24]  810 	movx	a,@dptr
      00528D FF               [12]  811 	mov	r7,a
      00528E BF 01 03         [24]  812 	cjne	r7,#0x01,00217$
      005291 02 52 98         [24]  813 	ljmp	00121$
      005294                        814 00217$:
                                    815 ;	../fake_ble_stack/ble/include/gattservapp.c:247: for(;i<ServiceN; i++){
      005294 0D               [12]  816 	inc	r5
      005295 02 51 3F         [24]  817 	ljmp	00134$
      005298                        818 00121$:
                                    819 ;	../fake_ble_stack/ble/include/gattservapp.c:275: if(found==true){
      005298 90 11 DA         [24]  820 	mov	dptr,#_performPeriodicTask_found_1_225
      00529B E0               [24]  821 	movx	a,@dptr
      00529C FF               [12]  822 	mov	r7,a
      00529D BF 01 02         [24]  823 	cjne	r7,#0x01,00218$
      0052A0 80 03            [24]  824 	sjmp	00219$
      0052A2                        825 00218$:
      0052A2 02 52 A8         [24]  826 	ljmp	00136$
      0052A5                        827 00219$:
                                    828 ;	../fake_ble_stack/ble/include/gattservapp.c:276: BleOpr=0x05;
      0052A5 75 AA 05         [24]  829 	mov	_BleOpr,#0x05
                                    830 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      0052A8                        831 00136$:
      0052A8 22               [24]  832 	ret
                                    833 ;------------------------------------------------------------
                                    834 ;Allocation info for local variables in function 'GATTServApp_RegisterService'
                                    835 ;------------------------------------------------------------
                                    836 ;numAttrs                  Allocated with name '_GATTServApp_RegisterService_PARM_2'
                                    837 ;pServiceCBs               Allocated with name '_GATTServApp_RegisterService_PARM_3'
                                    838 ;pAttrs                    Allocated with name '_GATTServApp_RegisterService_pAttrs_1_235'
                                    839 ;idx                       Allocated with name '_GATTServApp_RegisterService_idx_1_236'
                                    840 ;------------------------------------------------------------
                                    841 ;	../fake_ble_stack/ble/include/gattservapp.c:317: bStatus_t GATTServApp_RegisterService( gattAttribute_t *pAttrs, uint16 numAttrs,CONST gattServiceCBs_t *pServiceCBs ){
                                    842 ;	-----------------------------------------
                                    843 ;	 function GATTServApp_RegisterService
                                    844 ;	-----------------------------------------
      0052A9                        845 _GATTServApp_RegisterService:
      0052A9 AF F0            [24]  846 	mov	r7,b
      0052AB AE 83            [24]  847 	mov	r6,dph
      0052AD E5 82            [12]  848 	mov	a,dpl
      0052AF 90 11 E0         [24]  849 	mov	dptr,#_GATTServApp_RegisterService_pAttrs_1_235
      0052B2 F0               [24]  850 	movx	@dptr,a
      0052B3 EE               [12]  851 	mov	a,r6
      0052B4 A3               [24]  852 	inc	dptr
      0052B5 F0               [24]  853 	movx	@dptr,a
      0052B6 EF               [12]  854 	mov	a,r7
      0052B7 A3               [24]  855 	inc	dptr
      0052B8 F0               [24]  856 	movx	@dptr,a
                                    857 ;	../fake_ble_stack/ble/include/gattservapp.c:319: int idx=ServiceN;
      0052B9 90 11 CF         [24]  858 	mov	dptr,#_ServiceN
      0052BC E0               [24]  859 	movx	a,@dptr
      0052BD FE               [12]  860 	mov	r6,a
      0052BE A3               [24]  861 	inc	dptr
      0052BF E0               [24]  862 	movx	a,@dptr
      0052C0 FF               [12]  863 	mov	r7,a
      0052C1 90 11 E3         [24]  864 	mov	dptr,#_GATTServApp_RegisterService_idx_1_236
      0052C4 EE               [12]  865 	mov	a,r6
      0052C5 F0               [24]  866 	movx	@dptr,a
      0052C6 EF               [12]  867 	mov	a,r7
      0052C7 A3               [24]  868 	inc	dptr
      0052C8 F0               [24]  869 	movx	@dptr,a
                                    870 ;	../fake_ble_stack/ble/include/gattservapp.c:321: if(ServiceN == maxServiceN )
      0052C9 BE 0A 05         [24]  871 	cjne	r6,#0x0A,00108$
      0052CC BF 00 02         [24]  872 	cjne	r7,#0x00,00108$
      0052CF 80 03            [24]  873 	sjmp	00109$
      0052D1                        874 00108$:
      0052D1 02 52 DA         [24]  875 	ljmp	00102$
      0052D4                        876 00109$:
                                    877 ;	../fake_ble_stack/ble/include/gattservapp.c:322: return false;
      0052D4 75 82 00         [24]  878 	mov	dpl,#0x00
      0052D7 02 53 55         [24]  879 	ljmp	00103$
      0052DA                        880 00102$:
                                    881 ;	../fake_ble_stack/ble/include/gattservapp.c:329: ServicesTable[idx].service=pAttrs;
      0052DA 90 11 E3         [24]  882 	mov	dptr,#_GATTServApp_RegisterService_idx_1_236
      0052DD E0               [24]  883 	movx	a,@dptr
      0052DE FE               [12]  884 	mov	r6,a
      0052DF A3               [24]  885 	inc	dptr
      0052E0 E0               [24]  886 	movx	a,@dptr
      0052E1 FF               [12]  887 	mov	r7,a
      0052E2 90 12 26         [24]  888 	mov	dptr,#__mulint_PARM_2
      0052E5 EE               [12]  889 	mov	a,r6
      0052E6 F0               [24]  890 	movx	@dptr,a
      0052E7 EF               [12]  891 	mov	a,r7
      0052E8 A3               [24]  892 	inc	dptr
      0052E9 F0               [24]  893 	movx	@dptr,a
      0052EA 75 82 06         [24]  894 	mov	dpl,#0x06
      0052ED 75 83 00         [24]  895 	mov	dph,#0x00
      0052F0 12 59 C5         [24]  896 	lcall	__mulint
      0052F3 AE 82            [24]  897 	mov	r6,dpl
      0052F5 AF 83            [24]  898 	mov	r7,dph
      0052F7 8E 04            [24]  899 	mov	ar4,r6
      0052F9 74 00            [12]  900 	mov	a,#(_ServicesTable >> 8)
      0052FB 2F               [12]  901 	add	a,r7
      0052FC FD               [12]  902 	mov	r5,a
      0052FD 90 11 E0         [24]  903 	mov	dptr,#_GATTServApp_RegisterService_pAttrs_1_235
      005300 E0               [24]  904 	movx	a,@dptr
      005301 F9               [12]  905 	mov	r1,a
      005302 A3               [24]  906 	inc	dptr
      005303 E0               [24]  907 	movx	a,@dptr
      005304 FA               [12]  908 	mov	r2,a
      005305 A3               [24]  909 	inc	dptr
      005306 E0               [24]  910 	movx	a,@dptr
      005307 FB               [12]  911 	mov	r3,a
      005308 8C 82            [24]  912 	mov	dpl,r4
      00530A 8D 83            [24]  913 	mov	dph,r5
      00530C E9               [12]  914 	mov	a,r1
      00530D F0               [24]  915 	movx	@dptr,a
      00530E EA               [12]  916 	mov	a,r2
      00530F A3               [24]  917 	inc	dptr
      005310 F0               [24]  918 	movx	@dptr,a
      005311 EB               [12]  919 	mov	a,r3
      005312 A3               [24]  920 	inc	dptr
      005313 F0               [24]  921 	movx	@dptr,a
                                    922 ;	../fake_ble_stack/ble/include/gattservapp.c:330: ServicesTable[idx].CBs=pServiceCBs;
      005314 74 00            [12]  923 	mov	a,#(_ServicesTable >> 8)
      005316 2F               [12]  924 	add	a,r7
      005317 FF               [12]  925 	mov	r7,a
      005318 74 03            [12]  926 	mov	a,#0x03
      00531A 2E               [12]  927 	add	a,r6
      00531B FE               [12]  928 	mov	r6,a
      00531C 74 00            [12]  929 	mov	a,#0x00
      00531E 3F               [12]  930 	addc	a,r7
      00531F FF               [12]  931 	mov	r7,a
      005320 90 11 DD         [24]  932 	mov	dptr,#_GATTServApp_RegisterService_PARM_3
      005323 E0               [24]  933 	movx	a,@dptr
      005324 FB               [12]  934 	mov	r3,a
      005325 A3               [24]  935 	inc	dptr
      005326 E0               [24]  936 	movx	a,@dptr
      005327 FC               [12]  937 	mov	r4,a
      005328 A3               [24]  938 	inc	dptr
      005329 E0               [24]  939 	movx	a,@dptr
      00532A FD               [12]  940 	mov	r5,a
      00532B 8E 82            [24]  941 	mov	dpl,r6
      00532D 8F 83            [24]  942 	mov	dph,r7
      00532F EB               [12]  943 	mov	a,r3
      005330 F0               [24]  944 	movx	@dptr,a
      005331 EC               [12]  945 	mov	a,r4
      005332 A3               [24]  946 	inc	dptr
      005333 F0               [24]  947 	movx	@dptr,a
      005334 ED               [12]  948 	mov	a,r5
      005335 A3               [24]  949 	inc	dptr
      005336 F0               [24]  950 	movx	@dptr,a
                                    951 ;	../fake_ble_stack/ble/include/gattservapp.c:336: BleOpr=0x03;
      005337 75 AA 03         [24]  952 	mov	_BleOpr,#0x03
                                    953 ;	../fake_ble_stack/ble/include/gattservapp.c:337: ServNH= (ServiceN>>8);
      00533A 90 11 CF         [24]  954 	mov	dptr,#_ServiceN
      00533D E0               [24]  955 	movx	a,@dptr
      00533E FE               [12]  956 	mov	r6,a
      00533F A3               [24]  957 	inc	dptr
      005340 E0               [24]  958 	movx	a,@dptr
      005341 FF               [12]  959 	mov	r7,a
      005342 8F B0            [24]  960 	mov	_ServNH,r7
                                    961 ;	../fake_ble_stack/ble/include/gattservapp.c:338: ServNL=ServiceN;
      005344 8E B7            [24]  962 	mov	_ServNL,r6
                                    963 ;	../fake_ble_stack/ble/include/gattservapp.c:341: ServiceN++;
      005346 90 11 CF         [24]  964 	mov	dptr,#_ServiceN
      005349 74 01            [12]  965 	mov	a,#0x01
      00534B 2E               [12]  966 	add	a,r6
      00534C F0               [24]  967 	movx	@dptr,a
      00534D 74 00            [12]  968 	mov	a,#0x00
      00534F 3F               [12]  969 	addc	a,r7
      005350 A3               [24]  970 	inc	dptr
      005351 F0               [24]  971 	movx	@dptr,a
                                    972 ;	../fake_ble_stack/ble/include/gattservapp.c:343: return true;
      005352 75 82 01         [24]  973 	mov	dpl,#0x01
      005355                        974 00103$:
      005355 22               [24]  975 	ret
                                    976 	.area CSEG    (CODE)
                                    977 	.area CONST   (CODE)
                                    978 	.area CABS    (ABS,CODE)
