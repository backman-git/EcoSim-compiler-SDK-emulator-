                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
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
      0011D0                         82 _ServiceN:
      0011D0                         83 	.ds 2
                           000065    84 _connHandle	=	0x0065
                           000067    85 _uuidAddr	=	0x0067
                           000071    86 _pLen	=	0x0071
                           000072    87 _offset	=	0x0072
                           000074    88 _pValue	=	0x0074
      0011D2                         89 _TaskID:
      0011D2                         90 	.ds 1
      0011D3                         91 _GATTServApp_Init_taskId_1_218:
      0011D3                         92 	.ds 1
      0011D4                         93 _performPeriodicTask_ptr_1_225:
      0011D4                         94 	.ds 2
      0011D6                         95 _performPeriodicTask_pAttr_1_225:
      0011D6                         96 	.ds 3
      0011D9                         97 _performPeriodicTask_i_1_225:
      0011D9                         98 	.ds 1
      0011DA                         99 _performPeriodicTask_j_1_225:
      0011DA                        100 	.ds 1
      0011DB                        101 _performPeriodicTask_found_1_225:
      0011DB                        102 	.ds 1
      0011DC                        103 _GATTServApp_RegisterService_PARM_2:
      0011DC                        104 	.ds 2
      0011DE                        105 _GATTServApp_RegisterService_PARM_3:
      0011DE                        106 	.ds 3
      0011E1                        107 _GATTServApp_RegisterService_pAttrs_1_237:
      0011E1                        108 	.ds 3
      0011E4                        109 _GATTServApp_RegisterService_idx_1_238:
      0011E4                        110 	.ds 2
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
      0003A3 90 11 D0         [24]  136 	mov	dptr,#_ServiceN
      0003A6 74 00            [12]  137 	mov	a,#0x00
      0003A8 F0               [24]  138 	movx	@dptr,a
      0003A9 A3               [24]  139 	inc	dptr
      0003AA F0               [24]  140 	movx	@dptr,a
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
      004DD3                        159 _GATTServApp_Init:
                           000007   160 	ar7 = 0x07
                           000006   161 	ar6 = 0x06
                           000005   162 	ar5 = 0x05
                           000004   163 	ar4 = 0x04
                           000003   164 	ar3 = 0x03
                           000002   165 	ar2 = 0x02
                           000001   166 	ar1 = 0x01
                           000000   167 	ar0 = 0x00
      004DD3 E5 82            [12]  168 	mov	a,dpl
      004DD5 90 11 D3         [24]  169 	mov	dptr,#_GATTServApp_Init_taskId_1_218
      004DD8 F0               [24]  170 	movx	@dptr,a
                                    171 ;	../fake_ble_stack/ble/include/gattservapp.c:81: TaskID=taskId;
      004DD9 E0               [24]  172 	movx	a,@dptr
      004DDA FF               [12]  173 	mov	r7,a
      004DDB 90 11 D2         [24]  174 	mov	dptr,#_TaskID
      004DDE EF               [12]  175 	mov	a,r7
      004DDF F0               [24]  176 	movx	@dptr,a
                                    177 ;	../fake_ble_stack/ble/include/gattservapp.c:85: ServiceN=0;
      004DE0 90 11 D0         [24]  178 	mov	dptr,#_ServiceN
      004DE3 74 00            [12]  179 	mov	a,#0x00
      004DE5 F0               [24]  180 	movx	@dptr,a
      004DE6 A3               [24]  181 	inc	dptr
      004DE7 F0               [24]  182 	movx	@dptr,a
                                    183 ;	../fake_ble_stack/ble/include/gattservapp.c:88: osal_set_event( TaskID, periodic_event );
      004DE8 90 03 C6         [24]  184 	mov	dptr,#_osal_set_event_PARM_2
      004DEB 04               [12]  185 	inc	a
      004DEC F0               [24]  186 	movx	@dptr,a
      004DED 74 00            [12]  187 	mov	a,#0x00
      004DEF A3               [24]  188 	inc	dptr
      004DF0 F0               [24]  189 	movx	@dptr,a
      004DF1 8F 82            [24]  190 	mov	dpl,r7
      004DF3 12 19 84         [24]  191 	lcall	_osal_set_event
      004DF6                        192 00101$:
      004DF6 22               [24]  193 	ret
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
      004DF7                        204 _GATTServApp_ProcessEvent:
      004DF7 C0 1D            [24]  205 	push	_bp
      004DF9 85 81 1D         [24]  206 	mov	_bp,sp
                                    207 ;	../fake_ble_stack/ble/include/gattservapp.c:100: if( events & periodic_event ){
      004DFC E5 1D            [12]  208 	mov	a,_bp
      004DFE 24 FC            [12]  209 	add	a,#0xfc
      004E00 F8               [12]  210 	mov	r0,a
      004E01 E6               [12]  211 	mov	a,@r0
      004E02 20 E0 03         [24]  212 	jb	acc.0,00110$
      004E05 02 4E 41         [24]  213 	ljmp	00104$
      004E08                        214 00110$:
                                    215 ;	../fake_ble_stack/ble/include/gattservapp.c:109: __endasm;
      004E08 C3               [12]  216 	clr c
                                    217 ;	../fake_ble_stack/ble/include/gattservapp.c:111: osal_start_timerEx( TaskID, periodic_event, PERIODIC_EVT_PERIOD );
      004E09 90 11 D2         [24]  218 	mov	dptr,#_TaskID
      004E0C E0               [24]  219 	movx	a,@dptr
      004E0D FF               [12]  220 	mov	r7,a
      004E0E 90 10 38         [24]  221 	mov	dptr,#_osal_start_timerEx_PARM_2
      004E11 74 01            [12]  222 	mov	a,#0x01
      004E13 F0               [24]  223 	movx	@dptr,a
      004E14 74 00            [12]  224 	mov	a,#0x00
      004E16 A3               [24]  225 	inc	dptr
      004E17 F0               [24]  226 	movx	@dptr,a
      004E18 90 10 3A         [24]  227 	mov	dptr,#_osal_start_timerEx_PARM_3
      004E1B 74 64            [12]  228 	mov	a,#0x64
      004E1D F0               [24]  229 	movx	@dptr,a
      004E1E 74 00            [12]  230 	mov	a,#0x00
      004E20 A3               [24]  231 	inc	dptr
      004E21 F0               [24]  232 	movx	@dptr,a
      004E22 A3               [24]  233 	inc	dptr
      004E23 F0               [24]  234 	movx	@dptr,a
      004E24 A3               [24]  235 	inc	dptr
      004E25 F0               [24]  236 	movx	@dptr,a
      004E26 8F 82            [24]  237 	mov	dpl,r7
      004E28 12 27 00         [24]  238 	lcall	_osal_start_timerEx
                                    239 ;	../fake_ble_stack/ble/include/gattservapp.c:116: performPeriodicTask();
      004E2B 12 4E 4A         [24]  240 	lcall	_performPeriodicTask
                                    241 ;	../fake_ble_stack/ble/include/gattservapp.c:123: return( events ^ periodic_event);
      004E2E E5 1D            [12]  242 	mov	a,_bp
      004E30 24 FC            [12]  243 	add	a,#0xfc
      004E32 F8               [12]  244 	mov	r0,a
      004E33 74 01            [12]  245 	mov	a,#0x01
      004E35 66               [12]  246 	xrl	a,@r0
      004E36 FE               [12]  247 	mov	r6,a
      004E37 08               [12]  248 	inc	r0
      004E38 86 07            [24]  249 	mov	ar7,@r0
      004E3A 8E 82            [24]  250 	mov	dpl,r6
      004E3C 8F 83            [24]  251 	mov	dph,r7
      004E3E 02 4E 47         [24]  252 	ljmp	00105$
      004E41                        253 00104$:
                                    254 ;	../fake_ble_stack/ble/include/gattservapp.c:128: return 0;
      004E41 75 82 00         [24]  255 	mov	dpl,#0x00
      004E44 75 83 00         [24]  256 	mov	dph,#0x00
      004E47                        257 00105$:
      004E47 D0 1D            [24]  258 	pop	_bp
      004E49 22               [24]  259 	ret
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
      004E4A                        278 _performPeriodicTask:
                                    279 ;	../fake_ble_stack/ble/include/gattservapp.c:139: __code uint16* ptr=uuidAddr;
      004E4A 90 00 67         [24]  280 	mov	dptr,#_uuidAddr
      004E4D E0               [24]  281 	movx	a,@dptr
      004E4E FC               [12]  282 	mov	r4,a
      004E4F A3               [24]  283 	inc	dptr
      004E50 E0               [24]  284 	movx	a,@dptr
      004E51 FD               [12]  285 	mov	r5,a
      004E52 A3               [24]  286 	inc	dptr
      004E53 E0               [24]  287 	movx	a,@dptr
      004E54 FE               [12]  288 	mov	r6,a
      004E55 A3               [24]  289 	inc	dptr
      004E56 E0               [24]  290 	movx	a,@dptr
      004E57 FF               [12]  291 	mov	r7,a
      004E58 90 11 D4         [24]  292 	mov	dptr,#_performPeriodicTask_ptr_1_225
      004E5B EC               [12]  293 	mov	a,r4
      004E5C F0               [24]  294 	movx	@dptr,a
      004E5D ED               [12]  295 	mov	a,r5
      004E5E A3               [24]  296 	inc	dptr
      004E5F F0               [24]  297 	movx	@dptr,a
                                    298 ;	../fake_ble_stack/ble/include/gattservapp.c:143: uint8 i=0;
      004E60 90 11 D9         [24]  299 	mov	dptr,#_performPeriodicTask_i_1_225
      004E63 74 00            [12]  300 	mov	a,#0x00
      004E65 F0               [24]  301 	movx	@dptr,a
                                    302 ;	../fake_ble_stack/ble/include/gattservapp.c:145: bool found=false;
      004E66 90 11 DB         [24]  303 	mov	dptr,#_performPeriodicTask_found_1_225
      004E69 F0               [24]  304 	movx	@dptr,a
                                    305 ;	../fake_ble_stack/ble/include/gattservapp.c:154: switch(BleFeedback){
      004E6A AF 8E            [24]  306 	mov	r7,_BleFeedback
      004E6C BF 03 03         [24]  307 	cjne	r7,#0x03,00193$
      004E6F 02 4E 81         [24]  308 	ljmp	00101$
      004E72                        309 00193$:
      004E72 BF 04 03         [24]  310 	cjne	r7,#0x04,00194$
      004E75 02 4E 8A         [24]  311 	ljmp	00146$
      004E78                        312 00194$:
      004E78 BF 05 03         [24]  313 	cjne	r7,#0x05,00195$
      004E7B 02 50 05         [24]  314 	ljmp	00153$
      004E7E                        315 00195$:
      004E7E 02 51 7D         [24]  316 	ljmp	00136$
                                    317 ;	../fake_ble_stack/ble/include/gattservapp.c:157: case 0x03:
      004E81                        318 00101$:
                                    319 ;	../fake_ble_stack/ble/include/gattservapp.c:160: BleFeedback=0x00;
      004E81 75 8E 00         [24]  320 	mov	_BleFeedback,#0x00
                                    321 ;	../fake_ble_stack/ble/include/gattservapp.c:161: BleOpr=0x00;
      004E84 75 AA 00         [24]  322 	mov	_BleOpr,#0x00
                                    323 ;	../fake_ble_stack/ble/include/gattservapp.c:165: break;
      004E87 02 51 7D         [24]  324 	ljmp	00136$
                                    325 ;	../fake_ble_stack/ble/include/gattservapp.c:168: case 0x04:
      004E8A                        326 00146$:
      004E8A 90 11 D4         [24]  327 	mov	dptr,#_performPeriodicTask_ptr_1_225
      004E8D E0               [24]  328 	movx	a,@dptr
      004E8E F5 17            [12]  329 	mov	_performPeriodicTask_sloc0_1_0,a
      004E90 A3               [24]  330 	inc	dptr
      004E91 E0               [24]  331 	movx	a,@dptr
      004E92 F5 18            [12]  332 	mov	(_performPeriodicTask_sloc0_1_0 + 1),a
      004E94 90 11 D9         [24]  333 	mov	dptr,#_performPeriodicTask_i_1_225
      004E97 E0               [24]  334 	movx	a,@dptr
      004E98 FD               [12]  335 	mov	r5,a
      004E99                        336 00129$:
                                    337 ;	../fake_ble_stack/ble/include/gattservapp.c:179: for(;i<ServiceN; i++){
      004E99 90 11 D0         [24]  338 	mov	dptr,#_ServiceN
      004E9C E0               [24]  339 	movx	a,@dptr
      004E9D FB               [12]  340 	mov	r3,a
      004E9E A3               [24]  341 	inc	dptr
      004E9F E0               [24]  342 	movx	a,@dptr
      004EA0 FC               [12]  343 	mov	r4,a
      004EA1 8D 01            [24]  344 	mov	ar1,r5
      004EA3 7A 00            [12]  345 	mov	r2,#0x00
      004EA5 C3               [12]  346 	clr	c
      004EA6 E9               [12]  347 	mov	a,r1
      004EA7 9B               [12]  348 	subb	a,r3
      004EA8 EA               [12]  349 	mov	a,r2
      004EA9 64 80            [12]  350 	xrl	a,#0x80
      004EAB 8C F0            [24]  351 	mov	b,r4
      004EAD 63 F0 80         [24]  352 	xrl	b,#0x80
      004EB0 95 F0            [12]  353 	subb	a,b
      004EB2 40 03            [24]  354 	jc	00196$
      004EB4 02 4F F2         [24]  355 	ljmp	00110$
      004EB7                        356 00196$:
                                    357 ;	../fake_ble_stack/ble/include/gattservapp.c:180: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      004EB7 90 11 DA         [24]  358 	mov	dptr,#_performPeriodicTask_j_1_225
      004EBA 74 00            [12]  359 	mov	a,#0x00
      004EBC F0               [24]  360 	movx	@dptr,a
      004EBD ED               [12]  361 	mov	a,r5
      004EBE 75 F0 06         [24]  362 	mov	b,#0x06
      004EC1 A4               [48]  363 	mul	ab
      004EC2 FB               [12]  364 	mov	r3,a
      004EC3 AC F0            [24]  365 	mov	r4,b
      004EC5 E0               [24]  366 	movx	a,@dptr
      004EC6 FA               [12]  367 	mov	r2,a
      004EC7                        368 00126$:
                                    369 ;	../fake_ble_stack/ble/include/gattservapp.c:183: pAttr = &((ServicesTable[i].service)[j]);
      004EC7 C0 05            [24]  370 	push	ar5
      004EC9 8B 82            [24]  371 	mov	dpl,r3
      004ECB 74 00            [12]  372 	mov	a,#(_ServicesTable >> 8)
      004ECD 2C               [12]  373 	add	a,r4
      004ECE F5 83            [12]  374 	mov	dph,a
      004ED0 E0               [24]  375 	movx	a,@dptr
      004ED1 F8               [12]  376 	mov	r0,a
      004ED2 A3               [24]  377 	inc	dptr
      004ED3 E0               [24]  378 	movx	a,@dptr
      004ED4 F9               [12]  379 	mov	r1,a
      004ED5 A3               [24]  380 	inc	dptr
      004ED6 E0               [24]  381 	movx	a,@dptr
      004ED7 FD               [12]  382 	mov	r5,a
      004ED8 EA               [12]  383 	mov	a,r2
      004ED9 75 F0 0A         [24]  384 	mov	b,#0x0A
      004EDC A4               [48]  385 	mul	ab
      004EDD 28               [12]  386 	add	a,r0
      004EDE F8               [12]  387 	mov	r0,a
      004EDF E9               [12]  388 	mov	a,r1
      004EE0 35 F0            [12]  389 	addc	a,b
      004EE2 F9               [12]  390 	mov	r1,a
      004EE3 90 11 D6         [24]  391 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      004EE6 E8               [12]  392 	mov	a,r0
      004EE7 F0               [24]  393 	movx	@dptr,a
      004EE8 E9               [12]  394 	mov	a,r1
      004EE9 A3               [24]  395 	inc	dptr
      004EEA F0               [24]  396 	movx	@dptr,a
      004EEB ED               [12]  397 	mov	a,r5
      004EEC A3               [24]  398 	inc	dptr
      004EED F0               [24]  399 	movx	@dptr,a
                                    400 ;	../fake_ble_stack/ble/include/gattservapp.c:199: if(   *(uint16*)(pAttr->type).uuid == *ptr ){
      004EEE 08               [12]  401 	inc	r0
      004EEF B8 00 01         [24]  402 	cjne	r0,#0x00,00197$
      004EF2 09               [12]  403 	inc	r1
      004EF3                        404 00197$:
      004EF3 88 82            [24]  405 	mov	dpl,r0
      004EF5 89 83            [24]  406 	mov	dph,r1
      004EF7 8D F0            [24]  407 	mov	b,r5
      004EF9 12 5D 60         [24]  408 	lcall	__gptrget
      004EFC F8               [12]  409 	mov	r0,a
      004EFD A3               [24]  410 	inc	dptr
      004EFE 12 5D 60         [24]  411 	lcall	__gptrget
      004F01 F9               [12]  412 	mov	r1,a
      004F02 A3               [24]  413 	inc	dptr
      004F03 12 5D 60         [24]  414 	lcall	__gptrget
      004F06 FD               [12]  415 	mov	r5,a
      004F07 88 82            [24]  416 	mov	dpl,r0
      004F09 89 83            [24]  417 	mov	dph,r1
      004F0B 8D F0            [24]  418 	mov	b,r5
      004F0D 12 5D 60         [24]  419 	lcall	__gptrget
      004F10 F8               [12]  420 	mov	r0,a
      004F11 A3               [24]  421 	inc	dptr
      004F12 12 5D 60         [24]  422 	lcall	__gptrget
      004F15 F9               [12]  423 	mov	r1,a
      004F16 85 17 82         [24]  424 	mov	dpl,_performPeriodicTask_sloc0_1_0
      004F19 85 18 83         [24]  425 	mov	dph,(_performPeriodicTask_sloc0_1_0 + 1)
      004F1C E4               [12]  426 	clr	a
      004F1D 93               [24]  427 	movc	a,@a+dptr
      004F1E FD               [12]  428 	mov	r5,a
      004F1F A3               [24]  429 	inc	dptr
      004F20 E4               [12]  430 	clr	a
      004F21 93               [24]  431 	movc	a,@a+dptr
      004F22 FF               [12]  432 	mov	r7,a
      004F23 E8               [12]  433 	mov	a,r0
      004F24 B5 05 06         [24]  434 	cjne	a,ar5,00198$
      004F27 E9               [12]  435 	mov	a,r1
      004F28 B5 07 02         [24]  436 	cjne	a,ar7,00198$
      004F2B 80 05            [24]  437 	sjmp	00199$
      004F2D                        438 00198$:
      004F2D D0 05            [24]  439 	pop	ar5
      004F2F 02 4F CF         [24]  440 	ljmp	00104$
      004F32                        441 00199$:
      004F32 D0 05            [24]  442 	pop	ar5
                                    443 ;	../fake_ble_stack/ble/include/gattservapp.c:210: found=true;	
      004F34 C0 05            [24]  444 	push	ar5
      004F36 90 11 DB         [24]  445 	mov	dptr,#_performPeriodicTask_found_1_225
      004F39 74 01            [12]  446 	mov	a,#0x01
      004F3B F0               [24]  447 	movx	@dptr,a
                                    448 ;	../fake_ble_stack/ble/include/gattservapp.c:211: ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
      004F3C 8B 06            [24]  449 	mov	ar6,r3
      004F3E 74 00            [12]  450 	mov	a,#(_ServicesTable >> 8)
      004F40 2C               [12]  451 	add	a,r4
      004F41 FF               [12]  452 	mov	r7,a
      004F42 8E 82            [24]  453 	mov	dpl,r6
      004F44 8F 83            [24]  454 	mov	dph,r7
      004F46 A3               [24]  455 	inc	dptr
      004F47 A3               [24]  456 	inc	dptr
      004F48 A3               [24]  457 	inc	dptr
      004F49 E0               [24]  458 	movx	a,@dptr
      004F4A F9               [12]  459 	mov	r1,a
      004F4B A3               [24]  460 	inc	dptr
      004F4C E0               [24]  461 	movx	a,@dptr
      004F4D FE               [12]  462 	mov	r6,a
      004F4E A3               [24]  463 	inc	dptr
      004F4F E0               [24]  464 	movx	a,@dptr
      004F50 FF               [12]  465 	mov	r7,a
      004F51 89 82            [24]  466 	mov	dpl,r1
      004F53 8E 83            [24]  467 	mov	dph,r6
      004F55 8F F0            [24]  468 	mov	b,r7
      004F57 12 5D 60         [24]  469 	lcall	__gptrget
      004F5A F9               [12]  470 	mov	r1,a
      004F5B A3               [24]  471 	inc	dptr
      004F5C 12 5D 60         [24]  472 	lcall	__gptrget
      004F5F FE               [12]  473 	mov	r6,a
      004F60 90 00 72         [24]  474 	mov	dptr,#_offset
      004F63 E0               [24]  475 	movx	a,@dptr
      004F64 F5 19            [12]  476 	mov	_performPeriodicTask_sloc1_1_0,a
      004F66 A3               [24]  477 	inc	dptr
      004F67 E0               [24]  478 	movx	a,@dptr
      004F68 F5 1A            [12]  479 	mov	(_performPeriodicTask_sloc1_1_0 + 1),a
      004F6A 90 00 65         [24]  480 	mov	dptr,#_connHandle
      004F6D E0               [24]  481 	movx	a,@dptr
      004F6E FD               [12]  482 	mov	r5,a
      004F6F A3               [24]  483 	inc	dptr
      004F70 E0               [24]  484 	movx	a,@dptr
      004F71 FF               [12]  485 	mov	r7,a
      004F72 C0 06            [24]  486 	push	ar6
      004F74 C0 05            [24]  487 	push	ar5
      004F76 C0 04            [24]  488 	push	ar4
      004F78 C0 03            [24]  489 	push	ar3
      004F7A C0 02            [24]  490 	push	ar2
      004F7C C0 01            [24]  491 	push	ar1
      004F7E 74 34            [12]  492 	mov	a,#0x34
      004F80 C0 E0            [24]  493 	push	acc
      004F82 C0 19            [24]  494 	push	_performPeriodicTask_sloc1_1_0
      004F84 C0 1A            [24]  495 	push	(_performPeriodicTask_sloc1_1_0 + 1)
      004F86 74 71            [12]  496 	mov	a,#_pLen
      004F88 C0 E0            [24]  497 	push	acc
      004F8A 74 00            [12]  498 	mov	a,#(_pLen >> 8)
      004F8C C0 E0            [24]  499 	push	acc
      004F8E 74 00            [12]  500 	mov	a,#0x00
      004F90 C0 E0            [24]  501 	push	acc
      004F92 74 74            [12]  502 	mov	a,#_pValue
      004F94 C0 E0            [24]  503 	push	acc
      004F96 74 00            [12]  504 	mov	a,#(_pValue >> 8)
      004F98 C0 E0            [24]  505 	push	acc
      004F9A 74 00            [12]  506 	mov	a,#0x00
      004F9C C0 E0            [24]  507 	push	acc
      004F9E 90 11 D6         [24]  508 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      004FA1 E0               [24]  509 	movx	a,@dptr
      004FA2 C0 E0            [24]  510 	push	acc
      004FA4 A3               [24]  511 	inc	dptr
      004FA5 E0               [24]  512 	movx	a,@dptr
      004FA6 C0 E0            [24]  513 	push	acc
      004FA8 A3               [24]  514 	inc	dptr
      004FA9 E0               [24]  515 	movx	a,@dptr
      004FAA C0 E0            [24]  516 	push	acc
      004FAC 12 4F B2         [24]  517 	lcall	00200$
      004FAF 02 4F BB         [24]  518 	ljmp	00201$
      004FB2                        519 00200$:
      004FB2 C0 01            [24]  520 	push	ar1
      004FB4 C0 06            [24]  521 	push	ar6
      004FB6 8D 82            [24]  522 	mov	dpl,r5
      004FB8 8F 83            [24]  523 	mov	dph,r7
      004FBA 22               [24]  524 	ret
      004FBB                        525 00201$:
      004FBB E5 81            [12]  526 	mov	a,sp
      004FBD 24 F4            [12]  527 	add	a,#0xf4
      004FBF F5 81            [12]  528 	mov	sp,a
      004FC1 D0 01            [24]  529 	pop	ar1
      004FC3 D0 02            [24]  530 	pop	ar2
      004FC5 D0 03            [24]  531 	pop	ar3
      004FC7 D0 04            [24]  532 	pop	ar4
      004FC9 D0 05            [24]  533 	pop	ar5
      004FCB D0 06            [24]  534 	pop	ar6
                                    535 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      004FCD D0 05            [24]  536 	pop	ar5
                                    537 ;	../fake_ble_stack/ble/include/gattservapp.c:211: ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
      004FCF                        538 00104$:
                                    539 ;	../fake_ble_stack/ble/include/gattservapp.c:214: if(found==true)
      004FCF 90 11 DB         [24]  540 	mov	dptr,#_performPeriodicTask_found_1_225
      004FD2 E0               [24]  541 	movx	a,@dptr
      004FD3 FF               [12]  542 	mov	r7,a
      004FD4 BF 01 03         [24]  543 	cjne	r7,#0x01,00202$
      004FD7 02 4F E3         [24]  544 	ljmp	00107$
      004FDA                        545 00202$:
                                    546 ;	../fake_ble_stack/ble/include/gattservapp.c:180: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      004FDA 0A               [12]  547 	inc	r2
      004FDB BA 04 00         [24]  548 	cjne	r2,#0x04,00203$
      004FDE                        549 00203$:
      004FDE 50 03            [24]  550 	jnc	00204$
      004FE0 02 4E C7         [24]  551 	ljmp	00126$
      004FE3                        552 00204$:
      004FE3                        553 00107$:
                                    554 ;	../fake_ble_stack/ble/include/gattservapp.c:219: if(found==true)
      004FE3 90 11 DB         [24]  555 	mov	dptr,#_performPeriodicTask_found_1_225
      004FE6 E0               [24]  556 	movx	a,@dptr
      004FE7 FF               [12]  557 	mov	r7,a
      004FE8 BF 01 03         [24]  558 	cjne	r7,#0x01,00205$
      004FEB 02 4F F2         [24]  559 	ljmp	00110$
      004FEE                        560 00205$:
                                    561 ;	../fake_ble_stack/ble/include/gattservapp.c:179: for(;i<ServiceN; i++){
      004FEE 0D               [12]  562 	inc	r5
      004FEF 02 4E 99         [24]  563 	ljmp	00129$
      004FF2                        564 00110$:
                                    565 ;	../fake_ble_stack/ble/include/gattservapp.c:226: if(found==true){
      004FF2 90 11 DB         [24]  566 	mov	dptr,#_performPeriodicTask_found_1_225
      004FF5 E0               [24]  567 	movx	a,@dptr
      004FF6 FF               [12]  568 	mov	r7,a
      004FF7 BF 01 02         [24]  569 	cjne	r7,#0x01,00206$
      004FFA 80 03            [24]  570 	sjmp	00207$
      004FFC                        571 00206$:
      004FFC 02 51 7D         [24]  572 	ljmp	00136$
      004FFF                        573 00207$:
                                    574 ;	../fake_ble_stack/ble/include/gattservapp.c:227: BleOpr=0x04;
      004FFF 75 AA 04         [24]  575 	mov	_BleOpr,#0x04
                                    576 ;	../fake_ble_stack/ble/include/gattservapp.c:240: break;
      005002 02 51 7D         [24]  577 	ljmp	00136$
                                    578 ;	../fake_ble_stack/ble/include/gattservapp.c:243: case 5:
      005005                        579 00153$:
      005005 90 11 D4         [24]  580 	mov	dptr,#_performPeriodicTask_ptr_1_225
      005008 E0               [24]  581 	movx	a,@dptr
      005009 F5 19            [12]  582 	mov	_performPeriodicTask_sloc1_1_0,a
      00500B A3               [24]  583 	inc	dptr
      00500C E0               [24]  584 	movx	a,@dptr
      00500D F5 1A            [12]  585 	mov	(_performPeriodicTask_sloc1_1_0 + 1),a
      00500F 90 11 D9         [24]  586 	mov	dptr,#_performPeriodicTask_i_1_225
      005012 E0               [24]  587 	movx	a,@dptr
      005013 FD               [12]  588 	mov	r5,a
      005014                        589 00134$:
                                    590 ;	../fake_ble_stack/ble/include/gattservapp.c:247: for(;i<ServiceN; i++){
      005014 90 11 D0         [24]  591 	mov	dptr,#_ServiceN
      005017 E0               [24]  592 	movx	a,@dptr
      005018 FB               [12]  593 	mov	r3,a
      005019 A3               [24]  594 	inc	dptr
      00501A E0               [24]  595 	movx	a,@dptr
      00501B FC               [12]  596 	mov	r4,a
      00501C 8D 01            [24]  597 	mov	ar1,r5
      00501E 7A 00            [12]  598 	mov	r2,#0x00
      005020 C3               [12]  599 	clr	c
      005021 E9               [12]  600 	mov	a,r1
      005022 9B               [12]  601 	subb	a,r3
      005023 EA               [12]  602 	mov	a,r2
      005024 64 80            [12]  603 	xrl	a,#0x80
      005026 8C F0            [24]  604 	mov	b,r4
      005028 63 F0 80         [24]  605 	xrl	b,#0x80
      00502B 95 F0            [12]  606 	subb	a,b
      00502D 40 03            [24]  607 	jc	00208$
      00502F 02 51 6D         [24]  608 	ljmp	00121$
      005032                        609 00208$:
                                    610 ;	../fake_ble_stack/ble/include/gattservapp.c:248: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      005032 90 11 DA         [24]  611 	mov	dptr,#_performPeriodicTask_j_1_225
      005035 74 00            [12]  612 	mov	a,#0x00
      005037 F0               [24]  613 	movx	@dptr,a
      005038 ED               [12]  614 	mov	a,r5
      005039 75 F0 06         [24]  615 	mov	b,#0x06
      00503C A4               [48]  616 	mul	ab
      00503D FB               [12]  617 	mov	r3,a
      00503E AC F0            [24]  618 	mov	r4,b
      005040 E0               [24]  619 	movx	a,@dptr
      005041 FA               [12]  620 	mov	r2,a
      005042                        621 00131$:
                                    622 ;	../fake_ble_stack/ble/include/gattservapp.c:251: pAttr = &((ServicesTable[i].service)[j]);
      005042 C0 05            [24]  623 	push	ar5
      005044 8B 82            [24]  624 	mov	dpl,r3
      005046 74 00            [12]  625 	mov	a,#(_ServicesTable >> 8)
      005048 2C               [12]  626 	add	a,r4
      005049 F5 83            [12]  627 	mov	dph,a
      00504B E0               [24]  628 	movx	a,@dptr
      00504C F8               [12]  629 	mov	r0,a
      00504D A3               [24]  630 	inc	dptr
      00504E E0               [24]  631 	movx	a,@dptr
      00504F F9               [12]  632 	mov	r1,a
      005050 A3               [24]  633 	inc	dptr
      005051 E0               [24]  634 	movx	a,@dptr
      005052 FD               [12]  635 	mov	r5,a
      005053 EA               [12]  636 	mov	a,r2
      005054 75 F0 0A         [24]  637 	mov	b,#0x0A
      005057 A4               [48]  638 	mul	ab
      005058 28               [12]  639 	add	a,r0
      005059 F8               [12]  640 	mov	r0,a
      00505A E9               [12]  641 	mov	a,r1
      00505B 35 F0            [12]  642 	addc	a,b
      00505D F9               [12]  643 	mov	r1,a
      00505E 90 11 D6         [24]  644 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      005061 E8               [12]  645 	mov	a,r0
      005062 F0               [24]  646 	movx	@dptr,a
      005063 E9               [12]  647 	mov	a,r1
      005064 A3               [24]  648 	inc	dptr
      005065 F0               [24]  649 	movx	@dptr,a
      005066 ED               [12]  650 	mov	a,r5
      005067 A3               [24]  651 	inc	dptr
      005068 F0               [24]  652 	movx	@dptr,a
                                    653 ;	../fake_ble_stack/ble/include/gattservapp.c:253: if(   *(uint16*)(pAttr->type).uuid == *ptr ){
      005069 08               [12]  654 	inc	r0
      00506A B8 00 01         [24]  655 	cjne	r0,#0x00,00209$
      00506D 09               [12]  656 	inc	r1
      00506E                        657 00209$:
      00506E 88 82            [24]  658 	mov	dpl,r0
      005070 89 83            [24]  659 	mov	dph,r1
      005072 8D F0            [24]  660 	mov	b,r5
      005074 12 5D 60         [24]  661 	lcall	__gptrget
      005077 F8               [12]  662 	mov	r0,a
      005078 A3               [24]  663 	inc	dptr
      005079 12 5D 60         [24]  664 	lcall	__gptrget
      00507C F9               [12]  665 	mov	r1,a
      00507D A3               [24]  666 	inc	dptr
      00507E 12 5D 60         [24]  667 	lcall	__gptrget
      005081 FD               [12]  668 	mov	r5,a
      005082 88 82            [24]  669 	mov	dpl,r0
      005084 89 83            [24]  670 	mov	dph,r1
      005086 8D F0            [24]  671 	mov	b,r5
      005088 12 5D 60         [24]  672 	lcall	__gptrget
      00508B F8               [12]  673 	mov	r0,a
      00508C A3               [24]  674 	inc	dptr
      00508D 12 5D 60         [24]  675 	lcall	__gptrget
      005090 F9               [12]  676 	mov	r1,a
      005091 85 19 82         [24]  677 	mov	dpl,_performPeriodicTask_sloc1_1_0
      005094 85 1A 83         [24]  678 	mov	dph,(_performPeriodicTask_sloc1_1_0 + 1)
      005097 E4               [12]  679 	clr	a
      005098 93               [24]  680 	movc	a,@a+dptr
      005099 FD               [12]  681 	mov	r5,a
      00509A A3               [24]  682 	inc	dptr
      00509B E4               [12]  683 	clr	a
      00509C 93               [24]  684 	movc	a,@a+dptr
      00509D FF               [12]  685 	mov	r7,a
      00509E E8               [12]  686 	mov	a,r0
      00509F B5 05 06         [24]  687 	cjne	a,ar5,00210$
      0050A2 E9               [12]  688 	mov	a,r1
      0050A3 B5 07 02         [24]  689 	cjne	a,ar7,00210$
      0050A6 80 05            [24]  690 	sjmp	00211$
      0050A8                        691 00210$:
      0050A8 D0 05            [24]  692 	pop	ar5
      0050AA 02 51 4A         [24]  693 	ljmp	00115$
      0050AD                        694 00211$:
      0050AD D0 05            [24]  695 	pop	ar5
                                    696 ;	../fake_ble_stack/ble/include/gattservapp.c:256: found=true;	
      0050AF C0 05            [24]  697 	push	ar5
      0050B1 90 11 DB         [24]  698 	mov	dptr,#_performPeriodicTask_found_1_225
      0050B4 74 01            [12]  699 	mov	a,#0x01
      0050B6 F0               [24]  700 	movx	@dptr,a
                                    701 ;	../fake_ble_stack/ble/include/gattservapp.c:259: ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);
      0050B7 8B 06            [24]  702 	mov	ar6,r3
      0050B9 74 00            [12]  703 	mov	a,#(_ServicesTable >> 8)
      0050BB 2C               [12]  704 	add	a,r4
      0050BC FF               [12]  705 	mov	r7,a
      0050BD 8E 82            [24]  706 	mov	dpl,r6
      0050BF 8F 83            [24]  707 	mov	dph,r7
      0050C1 A3               [24]  708 	inc	dptr
      0050C2 A3               [24]  709 	inc	dptr
      0050C3 A3               [24]  710 	inc	dptr
      0050C4 E0               [24]  711 	movx	a,@dptr
      0050C5 F9               [12]  712 	mov	r1,a
      0050C6 A3               [24]  713 	inc	dptr
      0050C7 E0               [24]  714 	movx	a,@dptr
      0050C8 FE               [12]  715 	mov	r6,a
      0050C9 A3               [24]  716 	inc	dptr
      0050CA E0               [24]  717 	movx	a,@dptr
      0050CB FF               [12]  718 	mov	r7,a
      0050CC 74 02            [12]  719 	mov	a,#0x02
      0050CE 29               [12]  720 	add	a,r1
      0050CF F9               [12]  721 	mov	r1,a
      0050D0 74 00            [12]  722 	mov	a,#0x00
      0050D2 3E               [12]  723 	addc	a,r6
      0050D3 FE               [12]  724 	mov	r6,a
      0050D4 89 82            [24]  725 	mov	dpl,r1
      0050D6 8E 83            [24]  726 	mov	dph,r6
      0050D8 8F F0            [24]  727 	mov	b,r7
      0050DA 12 5D 60         [24]  728 	lcall	__gptrget
      0050DD F9               [12]  729 	mov	r1,a
      0050DE A3               [24]  730 	inc	dptr
      0050DF 12 5D 60         [24]  731 	lcall	__gptrget
      0050E2 FE               [12]  732 	mov	r6,a
      0050E3 90 00 72         [24]  733 	mov	dptr,#_offset
      0050E6 E0               [24]  734 	movx	a,@dptr
      0050E7 F5 1B            [12]  735 	mov	_performPeriodicTask_sloc2_1_0,a
      0050E9 A3               [24]  736 	inc	dptr
      0050EA E0               [24]  737 	movx	a,@dptr
      0050EB F5 1C            [12]  738 	mov	(_performPeriodicTask_sloc2_1_0 + 1),a
      0050ED 90 00 71         [24]  739 	mov	dptr,#_pLen
      0050F0 E0               [24]  740 	movx	a,@dptr
      0050F1 F5 17            [12]  741 	mov	_performPeriodicTask_sloc0_1_0,a
      0050F3 90 00 65         [24]  742 	mov	dptr,#_connHandle
      0050F6 E0               [24]  743 	movx	a,@dptr
      0050F7 FD               [12]  744 	mov	r5,a
      0050F8 A3               [24]  745 	inc	dptr
      0050F9 E0               [24]  746 	movx	a,@dptr
      0050FA FF               [12]  747 	mov	r7,a
      0050FB C0 06            [24]  748 	push	ar6
      0050FD C0 05            [24]  749 	push	ar5
      0050FF C0 04            [24]  750 	push	ar4
      005101 C0 03            [24]  751 	push	ar3
      005103 C0 02            [24]  752 	push	ar2
      005105 C0 01            [24]  753 	push	ar1
      005107 C0 1B            [24]  754 	push	_performPeriodicTask_sloc2_1_0
      005109 C0 1C            [24]  755 	push	(_performPeriodicTask_sloc2_1_0 + 1)
      00510B C0 17            [24]  756 	push	_performPeriodicTask_sloc0_1_0
      00510D 74 74            [12]  757 	mov	a,#_pValue
      00510F C0 E0            [24]  758 	push	acc
      005111 74 00            [12]  759 	mov	a,#(_pValue >> 8)
      005113 C0 E0            [24]  760 	push	acc
      005115 74 00            [12]  761 	mov	a,#0x00
      005117 C0 E0            [24]  762 	push	acc
      005119 90 11 D6         [24]  763 	mov	dptr,#_performPeriodicTask_pAttr_1_225
      00511C E0               [24]  764 	movx	a,@dptr
      00511D C0 E0            [24]  765 	push	acc
      00511F A3               [24]  766 	inc	dptr
      005120 E0               [24]  767 	movx	a,@dptr
      005121 C0 E0            [24]  768 	push	acc
      005123 A3               [24]  769 	inc	dptr
      005124 E0               [24]  770 	movx	a,@dptr
      005125 C0 E0            [24]  771 	push	acc
      005127 12 51 2D         [24]  772 	lcall	00212$
      00512A 02 51 36         [24]  773 	ljmp	00213$
      00512D                        774 00212$:
      00512D C0 01            [24]  775 	push	ar1
      00512F C0 06            [24]  776 	push	ar6
      005131 8D 82            [24]  777 	mov	dpl,r5
      005133 8F 83            [24]  778 	mov	dph,r7
      005135 22               [24]  779 	ret
      005136                        780 00213$:
      005136 E5 81            [12]  781 	mov	a,sp
      005138 24 F7            [12]  782 	add	a,#0xf7
      00513A F5 81            [12]  783 	mov	sp,a
      00513C D0 01            [24]  784 	pop	ar1
      00513E D0 02            [24]  785 	pop	ar2
      005140 D0 03            [24]  786 	pop	ar3
      005142 D0 04            [24]  787 	pop	ar4
      005144 D0 05            [24]  788 	pop	ar5
      005146 D0 06            [24]  789 	pop	ar6
                                    790 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      005148 D0 05            [24]  791 	pop	ar5
                                    792 ;	../fake_ble_stack/ble/include/gattservapp.c:259: ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);
      00514A                        793 00115$:
                                    794 ;	../fake_ble_stack/ble/include/gattservapp.c:263: if(found==true)
      00514A 90 11 DB         [24]  795 	mov	dptr,#_performPeriodicTask_found_1_225
      00514D E0               [24]  796 	movx	a,@dptr
      00514E FF               [12]  797 	mov	r7,a
      00514F BF 01 03         [24]  798 	cjne	r7,#0x01,00214$
      005152 02 51 5E         [24]  799 	ljmp	00118$
      005155                        800 00214$:
                                    801 ;	../fake_ble_stack/ble/include/gattservapp.c:248: for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
      005155 0A               [12]  802 	inc	r2
      005156 BA 04 00         [24]  803 	cjne	r2,#0x04,00215$
      005159                        804 00215$:
      005159 50 03            [24]  805 	jnc	00216$
      00515B 02 50 42         [24]  806 	ljmp	00131$
      00515E                        807 00216$:
      00515E                        808 00118$:
                                    809 ;	../fake_ble_stack/ble/include/gattservapp.c:268: if(found==true)
      00515E 90 11 DB         [24]  810 	mov	dptr,#_performPeriodicTask_found_1_225
      005161 E0               [24]  811 	movx	a,@dptr
      005162 FF               [12]  812 	mov	r7,a
      005163 BF 01 03         [24]  813 	cjne	r7,#0x01,00217$
      005166 02 51 6D         [24]  814 	ljmp	00121$
      005169                        815 00217$:
                                    816 ;	../fake_ble_stack/ble/include/gattservapp.c:247: for(;i<ServiceN; i++){
      005169 0D               [12]  817 	inc	r5
      00516A 02 50 14         [24]  818 	ljmp	00134$
      00516D                        819 00121$:
                                    820 ;	../fake_ble_stack/ble/include/gattservapp.c:275: if(found==true){
      00516D 90 11 DB         [24]  821 	mov	dptr,#_performPeriodicTask_found_1_225
      005170 E0               [24]  822 	movx	a,@dptr
      005171 FF               [12]  823 	mov	r7,a
      005172 BF 01 02         [24]  824 	cjne	r7,#0x01,00218$
      005175 80 03            [24]  825 	sjmp	00219$
      005177                        826 00218$:
      005177 02 51 7D         [24]  827 	ljmp	00136$
      00517A                        828 00219$:
                                    829 ;	../fake_ble_stack/ble/include/gattservapp.c:276: BleOpr=0x05;
      00517A 75 AA 05         [24]  830 	mov	_BleOpr,#0x05
                                    831 ;	../fake_ble_stack/ble/include/gattservapp.c:293: }
      00517D                        832 00136$:
      00517D 22               [24]  833 	ret
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'GATTServApp_AddService'
                                    836 ;------------------------------------------------------------
                                    837 ;services                  Allocated with name '_GATTServApp_AddService_services_1_235'
                                    838 ;------------------------------------------------------------
                                    839 ;	../fake_ble_stack/ble/include/gattservapp.c:310: bStatus_t GATTServApp_AddService( uint32 services ){
                                    840 ;	-----------------------------------------
                                    841 ;	 function GATTServApp_AddService
                                    842 ;	-----------------------------------------
      00517E                        843 _GATTServApp_AddService:
                                    844 ;	../fake_ble_stack/ble/include/gattservapp.c:314: }
      00517E                        845 00101$:
      00517E 22               [24]  846 	ret
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
      00517F                        859 _GATTServApp_RegisterService:
      00517F AF F0            [24]  860 	mov	r7,b
      005181 AE 83            [24]  861 	mov	r6,dph
      005183 E5 82            [12]  862 	mov	a,dpl
      005185 90 11 E1         [24]  863 	mov	dptr,#_GATTServApp_RegisterService_pAttrs_1_237
      005188 F0               [24]  864 	movx	@dptr,a
      005189 EE               [12]  865 	mov	a,r6
      00518A A3               [24]  866 	inc	dptr
      00518B F0               [24]  867 	movx	@dptr,a
      00518C EF               [12]  868 	mov	a,r7
      00518D A3               [24]  869 	inc	dptr
      00518E F0               [24]  870 	movx	@dptr,a
                                    871 ;	../fake_ble_stack/ble/include/gattservapp.c:323: int idx=ServiceN;
      00518F 90 11 D0         [24]  872 	mov	dptr,#_ServiceN
      005192 E0               [24]  873 	movx	a,@dptr
      005193 FE               [12]  874 	mov	r6,a
      005194 A3               [24]  875 	inc	dptr
      005195 E0               [24]  876 	movx	a,@dptr
      005196 FF               [12]  877 	mov	r7,a
      005197 90 11 E4         [24]  878 	mov	dptr,#_GATTServApp_RegisterService_idx_1_238
      00519A EE               [12]  879 	mov	a,r6
      00519B F0               [24]  880 	movx	@dptr,a
      00519C EF               [12]  881 	mov	a,r7
      00519D A3               [24]  882 	inc	dptr
      00519E F0               [24]  883 	movx	@dptr,a
                                    884 ;	../fake_ble_stack/ble/include/gattservapp.c:325: if(ServiceN == maxServiceN )
      00519F BE 0A 05         [24]  885 	cjne	r6,#0x0A,00108$
      0051A2 BF 00 02         [24]  886 	cjne	r7,#0x00,00108$
      0051A5 80 03            [24]  887 	sjmp	00109$
      0051A7                        888 00108$:
      0051A7 02 51 B0         [24]  889 	ljmp	00102$
      0051AA                        890 00109$:
                                    891 ;	../fake_ble_stack/ble/include/gattservapp.c:326: return false;
      0051AA 75 82 00         [24]  892 	mov	dpl,#0x00
      0051AD 02 52 2B         [24]  893 	ljmp	00103$
      0051B0                        894 00102$:
                                    895 ;	../fake_ble_stack/ble/include/gattservapp.c:333: ServicesTable[idx].service=pAttrs;
      0051B0 90 11 E4         [24]  896 	mov	dptr,#_GATTServApp_RegisterService_idx_1_238
      0051B3 E0               [24]  897 	movx	a,@dptr
      0051B4 FE               [12]  898 	mov	r6,a
      0051B5 A3               [24]  899 	inc	dptr
      0051B6 E0               [24]  900 	movx	a,@dptr
      0051B7 FF               [12]  901 	mov	r7,a
      0051B8 90 12 5E         [24]  902 	mov	dptr,#__mulint_PARM_2
      0051BB EE               [12]  903 	mov	a,r6
      0051BC F0               [24]  904 	movx	@dptr,a
      0051BD EF               [12]  905 	mov	a,r7
      0051BE A3               [24]  906 	inc	dptr
      0051BF F0               [24]  907 	movx	@dptr,a
      0051C0 75 82 06         [24]  908 	mov	dpl,#0x06
      0051C3 75 83 00         [24]  909 	mov	dph,#0x00
      0051C6 12 5C 0F         [24]  910 	lcall	__mulint
      0051C9 AE 82            [24]  911 	mov	r6,dpl
      0051CB AF 83            [24]  912 	mov	r7,dph
      0051CD 8E 04            [24]  913 	mov	ar4,r6
      0051CF 74 00            [12]  914 	mov	a,#(_ServicesTable >> 8)
      0051D1 2F               [12]  915 	add	a,r7
      0051D2 FD               [12]  916 	mov	r5,a
      0051D3 90 11 E1         [24]  917 	mov	dptr,#_GATTServApp_RegisterService_pAttrs_1_237
      0051D6 E0               [24]  918 	movx	a,@dptr
      0051D7 F9               [12]  919 	mov	r1,a
      0051D8 A3               [24]  920 	inc	dptr
      0051D9 E0               [24]  921 	movx	a,@dptr
      0051DA FA               [12]  922 	mov	r2,a
      0051DB A3               [24]  923 	inc	dptr
      0051DC E0               [24]  924 	movx	a,@dptr
      0051DD FB               [12]  925 	mov	r3,a
      0051DE 8C 82            [24]  926 	mov	dpl,r4
      0051E0 8D 83            [24]  927 	mov	dph,r5
      0051E2 E9               [12]  928 	mov	a,r1
      0051E3 F0               [24]  929 	movx	@dptr,a
      0051E4 EA               [12]  930 	mov	a,r2
      0051E5 A3               [24]  931 	inc	dptr
      0051E6 F0               [24]  932 	movx	@dptr,a
      0051E7 EB               [12]  933 	mov	a,r3
      0051E8 A3               [24]  934 	inc	dptr
      0051E9 F0               [24]  935 	movx	@dptr,a
                                    936 ;	../fake_ble_stack/ble/include/gattservapp.c:334: ServicesTable[idx].CBs=pServiceCBs;
      0051EA 74 00            [12]  937 	mov	a,#(_ServicesTable >> 8)
      0051EC 2F               [12]  938 	add	a,r7
      0051ED FF               [12]  939 	mov	r7,a
      0051EE 74 03            [12]  940 	mov	a,#0x03
      0051F0 2E               [12]  941 	add	a,r6
      0051F1 FE               [12]  942 	mov	r6,a
      0051F2 74 00            [12]  943 	mov	a,#0x00
      0051F4 3F               [12]  944 	addc	a,r7
      0051F5 FF               [12]  945 	mov	r7,a
      0051F6 90 11 DE         [24]  946 	mov	dptr,#_GATTServApp_RegisterService_PARM_3
      0051F9 E0               [24]  947 	movx	a,@dptr
      0051FA FB               [12]  948 	mov	r3,a
      0051FB A3               [24]  949 	inc	dptr
      0051FC E0               [24]  950 	movx	a,@dptr
      0051FD FC               [12]  951 	mov	r4,a
      0051FE A3               [24]  952 	inc	dptr
      0051FF E0               [24]  953 	movx	a,@dptr
      005200 FD               [12]  954 	mov	r5,a
      005201 8E 82            [24]  955 	mov	dpl,r6
      005203 8F 83            [24]  956 	mov	dph,r7
      005205 EB               [12]  957 	mov	a,r3
      005206 F0               [24]  958 	movx	@dptr,a
      005207 EC               [12]  959 	mov	a,r4
      005208 A3               [24]  960 	inc	dptr
      005209 F0               [24]  961 	movx	@dptr,a
      00520A ED               [12]  962 	mov	a,r5
      00520B A3               [24]  963 	inc	dptr
      00520C F0               [24]  964 	movx	@dptr,a
                                    965 ;	../fake_ble_stack/ble/include/gattservapp.c:340: BleOpr=0x03;
      00520D 75 AA 03         [24]  966 	mov	_BleOpr,#0x03
                                    967 ;	../fake_ble_stack/ble/include/gattservapp.c:341: ServNH= (ServiceN>>8);
      005210 90 11 D0         [24]  968 	mov	dptr,#_ServiceN
      005213 E0               [24]  969 	movx	a,@dptr
      005214 FE               [12]  970 	mov	r6,a
      005215 A3               [24]  971 	inc	dptr
      005216 E0               [24]  972 	movx	a,@dptr
      005217 FF               [12]  973 	mov	r7,a
      005218 8F B0            [24]  974 	mov	_ServNH,r7
                                    975 ;	../fake_ble_stack/ble/include/gattservapp.c:342: ServNL=ServiceN;
      00521A 8E B7            [24]  976 	mov	_ServNL,r6
                                    977 ;	../fake_ble_stack/ble/include/gattservapp.c:345: ServiceN++;
      00521C 90 11 D0         [24]  978 	mov	dptr,#_ServiceN
      00521F 74 01            [12]  979 	mov	a,#0x01
      005221 2E               [12]  980 	add	a,r6
      005222 F0               [24]  981 	movx	@dptr,a
      005223 74 00            [12]  982 	mov	a,#0x00
      005225 3F               [12]  983 	addc	a,r7
      005226 A3               [24]  984 	inc	dptr
      005227 F0               [24]  985 	movx	@dptr,a
                                    986 ;	../fake_ble_stack/ble/include/gattservapp.c:347: return true;
      005228 75 82 01         [24]  987 	mov	dpl,#0x01
      00522B                        988 00103$:
      00522B 22               [24]  989 	ret
                                    990 	.area CSEG    (CODE)
                                    991 	.area CONST   (CODE)
                                    992 	.area CABS    (ABS,CODE)
