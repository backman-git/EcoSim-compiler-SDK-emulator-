                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:40 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module peripheral
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _uartWriteString
                                     13 	.globl _osal_memset
                                     14 	.globl _osal_memcpy
                                     15 	.globl _osal_set_event
                                     16 	.globl _osal_start_timerEx
                                     17 	.globl _MusicCtl
                                     18 	.globl _FlashLed
                                     19 	.globl _ServNL
                                     20 	.globl _ServNH
                                     21 	.globl _BleFeedback
                                     22 	.globl _BleOpr
                                     23 	.globl _GAP_UpdateAdvertisingData_PARM_4
                                     24 	.globl _GAP_UpdateAdvertisingData_PARM_3
                                     25 	.globl _GAP_UpdateAdvertisingData_PARM_2
                                     26 	.globl _GAP_MakeDiscoverable_PARM_2
                                     27 	.globl _GAPRole_GetParameter_PARM_2
                                     28 	.globl _GAPRole_SetParameter_PARM_3
                                     29 	.globl _GAPRole_SetParameter_PARM_2
                                     30 	.globl _GAPRole_SetParameter
                                     31 	.globl _GAPRole_GetParameter
                                     32 	.globl _GAPRole_StartDevice
                                     33 	.globl _GAPRole_Init
                                     34 	.globl _GAPRole_ProcessEvent
                                     35 	.globl _GAP_EndDiscoverable
                                     36 	.globl _GAP_MakeDiscoverable
                                     37 	.globl _GAP_UpdateAdvertisingData
                                     38 ;--------------------------------------------------------
                                     39 ; special function registers
                                     40 ;--------------------------------------------------------
                                     41 	.area RSEG    (ABS,DATA)
      000000                         42 	.org 0x0000
                           0000AA    43 _BleOpr	=	0x00aa
                           00008E    44 _BleFeedback	=	0x008e
                           0000B0    45 _ServNH	=	0x00b0
                           0000B7    46 _ServNL	=	0x00b7
                           0000C0    47 _FlashLed	=	0x00c0
                           0000C2    48 _MusicCtl	=	0x00c2
                                     49 ;--------------------------------------------------------
                                     50 ; special function bits
                                     51 ;--------------------------------------------------------
                                     52 	.area RSEG    (ABS,DATA)
      000000                         53 	.org 0x0000
                                     54 ;--------------------------------------------------------
                                     55 ; overlayable register banks
                                     56 ;--------------------------------------------------------
                                     57 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         58 	.ds 8
                                     59 ;--------------------------------------------------------
                                     60 ; internal ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area DSEG    (DATA)
                                     63 ;--------------------------------------------------------
                                     64 ; overlayable items in internal ram 
                                     65 ;--------------------------------------------------------
                                     66 ;--------------------------------------------------------
                                     67 ; indirectly addressable internal ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area ISEG    (DATA)
                                     70 ;--------------------------------------------------------
                                     71 ; absolute internal ram data
                                     72 ;--------------------------------------------------------
                                     73 	.area IABS    (ABS,DATA)
                                     74 	.area IABS    (ABS,DATA)
                                     75 ;--------------------------------------------------------
                                     76 ; bit data
                                     77 ;--------------------------------------------------------
                                     78 	.area BSEG    (BIT)
                                     79 ;--------------------------------------------------------
                                     80 ; paged external ram data
                                     81 ;--------------------------------------------------------
                                     82 	.area PSEG    (PAG,XDATA)
                                     83 ;--------------------------------------------------------
                                     84 ; external ram data
                                     85 ;--------------------------------------------------------
                                     86 	.area XSEG    (XDATA)
      0010B9                         87 _gapRole_TaskID:
      0010B9                         88 	.ds 1
      0010BA                         89 _gapRole_state:
      0010BA                         90 	.ds 1
      0010BB                         91 _gapRole_profileRole:
      0010BB                         92 	.ds 1
      0010BC                         93 _gapRole_IRK:
      0010BC                         94 	.ds 16
      0010CC                         95 _gapRole_SRK:
      0010CC                         96 	.ds 16
      0010DC                         97 _gapRole_signCounter:
      0010DC                         98 	.ds 4
      0010E0                         99 _gapRole_bdAddr:
      0010E0                        100 	.ds 6
      0010E6                        101 _gapRole_AdvEnabled:
      0010E6                        102 	.ds 1
      0010E7                        103 _gapRole_AdvertOffTime:
      0010E7                        104 	.ds 2
      0010E9                        105 _gapRole_AdvertDataLen:
      0010E9                        106 	.ds 1
      0010EA                        107 _gapRole_AdvertData:
      0010EA                        108 	.ds 31
      001109                        109 _gapRole_ScanRspDataLen:
      001109                        110 	.ds 1
      00110A                        111 _gapRole_ScanRspData:
      00110A                        112 	.ds 31
      001129                        113 _gapRole_AdvEventType:
      001129                        114 	.ds 1
      00112A                        115 _gapRole_AdvDirectType:
      00112A                        116 	.ds 1
      00112B                        117 _gapRole_AdvDirectAddr:
      00112B                        118 	.ds 6
      001131                        119 _gapRole_AdvChanMap:
      001131                        120 	.ds 1
      001132                        121 _gapRole_AdvFilterPolicy:
      001132                        122 	.ds 1
      001133                        123 _gapRole_RSSIReadRate:
      001133                        124 	.ds 2
      001135                        125 _pGapRoles_AppCGs:
      001135                        126 	.ds 3
      001138                        127 _gapRole_ConnectedDevAddr:
      001138                        128 	.ds 6
      00113E                        129 _gapRole_ParamUpdateEnable:
      00113E                        130 	.ds 1
      00113F                        131 _gapRole_MinConnInterval:
      00113F                        132 	.ds 2
      001141                        133 _gapRole_MaxConnInterval:
      001141                        134 	.ds 2
      001143                        135 _gapRole_SlaveLatency:
      001143                        136 	.ds 2
      001145                        137 _gapRole_TimeoutMultiplier:
      001145                        138 	.ds 2
      001147                        139 _gapRole_ConnInterval:
      001147                        140 	.ds 2
      001149                        141 _gapRole_ConnSlaveLatency:
      001149                        142 	.ds 2
      00114B                        143 _gapRole_ConnTimeout:
      00114B                        144 	.ds 2
      00114D                        145 _ParamUpdateNoSuccessOption:
      00114D                        146 	.ds 1
      00114E                        147 _GAPRole_SetParameter_PARM_2:
      00114E                        148 	.ds 1
      00114F                        149 _GAPRole_SetParameter_PARM_3:
      00114F                        150 	.ds 3
      001152                        151 _GAPRole_SetParameter_param_1_249:
      001152                        152 	.ds 2
      001154                        153 _GAPRole_SetParameter_ret_1_250:
      001154                        154 	.ds 1
      001155                        155 _GAPRole_SetParameter_oldAdvEnabled_3_252:
      001155                        156 	.ds 1
      001156                        157 _GAPRole_GetParameter_PARM_2:
      001156                        158 	.ds 3
      001159                        159 _GAPRole_GetParameter_param_1_258:
      001159                        160 	.ds 2
      00115B                        161 _GAPRole_GetParameter_ret_1_259:
      00115B                        162 	.ds 1
      00115C                        163 _GAPRole_StartDevice_pAppCallbacks_1_263:
      00115C                        164 	.ds 3
      00115F                        165 _GAPRole_Init_task_id_1_268:
      00115F                        166 	.ds 1
      001160                        167 _GAP_MakeDiscoverable_PARM_2:
      001160                        168 	.ds 3
      001163                        169 _GAP_UpdateAdvertisingData_PARM_2:
      001163                        170 	.ds 1
      001164                        171 _GAP_UpdateAdvertisingData_PARM_3:
      001164                        172 	.ds 1
      001165                        173 _GAP_UpdateAdvertisingData_PARM_4:
      001165                        174 	.ds 3
                                    175 ;--------------------------------------------------------
                                    176 ; absolute external ram data
                                    177 ;--------------------------------------------------------
                                    178 	.area XABS    (ABS,XDATA)
                                    179 ;--------------------------------------------------------
                                    180 ; external initialized ram data
                                    181 ;--------------------------------------------------------
                                    182 	.area HOME    (CODE)
                                    183 	.area GSINIT0 (CODE)
                                    184 	.area GSINIT1 (CODE)
                                    185 	.area GSINIT2 (CODE)
                                    186 	.area GSINIT3 (CODE)
                                    187 	.area GSINIT4 (CODE)
                                    188 	.area GSINIT5 (CODE)
                                    189 	.area GSINIT  (CODE)
                                    190 	.area GSFINAL (CODE)
                                    191 	.area CSEG    (CODE)
                                    192 ;--------------------------------------------------------
                                    193 ; global & static initialisations
                                    194 ;--------------------------------------------------------
                                    195 	.area HOME    (CODE)
                                    196 	.area GSINIT  (CODE)
                                    197 	.area GSFINAL (CODE)
                                    198 	.area GSINIT  (CODE)
                                    199 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:148: static uint8  gapRole_AdvEnabled = TRUE;
      0000DC 90 10 E6         [24]  200 	mov	dptr,#_gapRole_AdvEnabled
      0000DF 74 01            [12]  201 	mov	a,#0x01
      0000E1 F0               [24]  202 	movx	@dptr,a
                                    203 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:149: static uint16 gapRole_AdvertOffTime = DEFAULT_ADVERT_OFF_TIME;
      0000E2 90 10 E7         [24]  204 	mov	dptr,#_gapRole_AdvertOffTime
      0000E5 74 B8            [12]  205 	mov	a,#0xB8
      0000E7 F0               [24]  206 	movx	@dptr,a
      0000E8 74 0B            [12]  207 	mov	a,#0x0B
      0000EA A3               [24]  208 	inc	dptr
      0000EB F0               [24]  209 	movx	@dptr,a
                                    210 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:150: static uint8  gapRole_AdvertDataLen = 3;
      0000EC 90 10 E9         [24]  211 	mov	dptr,#_gapRole_AdvertDataLen
      0000EF 74 03            [12]  212 	mov	a,#0x03
      0000F1 F0               [24]  213 	movx	@dptr,a
                                    214 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:151: static uint8  gapRole_AdvertData[B_MAX_ADV_LEN] =
      0000F2 90 10 EA         [24]  215 	mov	dptr,#_gapRole_AdvertData
      0000F5 14               [12]  216 	dec	a
      0000F6 F0               [24]  217 	movx	@dptr,a
      0000F7 90 10 EB         [24]  218 	mov	dptr,#(_gapRole_AdvertData + 0x0001)
      0000FA 14               [12]  219 	dec	a
      0000FB F0               [24]  220 	movx	@dptr,a
      0000FC 90 10 EC         [24]  221 	mov	dptr,#(_gapRole_AdvertData + 0x0002)
      0000FF 74 06            [12]  222 	mov	a,#0x06
      000101 F0               [24]  223 	movx	@dptr,a
      000102 90 10 ED         [24]  224 	mov	dptr,#(_gapRole_AdvertData + 0x0003)
      000105 74 00            [12]  225 	mov	a,#0x00
      000107 F0               [24]  226 	movx	@dptr,a
      000108 90 10 EE         [24]  227 	mov	dptr,#(_gapRole_AdvertData + 0x0004)
      00010B F0               [24]  228 	movx	@dptr,a
      00010C 90 10 EF         [24]  229 	mov	dptr,#(_gapRole_AdvertData + 0x0005)
      00010F F0               [24]  230 	movx	@dptr,a
      000110 90 10 F0         [24]  231 	mov	dptr,#(_gapRole_AdvertData + 0x0006)
      000113 F0               [24]  232 	movx	@dptr,a
      000114 90 10 F1         [24]  233 	mov	dptr,#(_gapRole_AdvertData + 0x0007)
      000117 F0               [24]  234 	movx	@dptr,a
      000118 90 10 F2         [24]  235 	mov	dptr,#(_gapRole_AdvertData + 0x0008)
      00011B F0               [24]  236 	movx	@dptr,a
      00011C 90 10 F3         [24]  237 	mov	dptr,#(_gapRole_AdvertData + 0x0009)
      00011F F0               [24]  238 	movx	@dptr,a
      000120 90 10 F4         [24]  239 	mov	dptr,#(_gapRole_AdvertData + 0x000a)
      000123 F0               [24]  240 	movx	@dptr,a
      000124 90 10 F5         [24]  241 	mov	dptr,#(_gapRole_AdvertData + 0x000b)
      000127 F0               [24]  242 	movx	@dptr,a
      000128 90 10 F6         [24]  243 	mov	dptr,#(_gapRole_AdvertData + 0x000c)
      00012B F0               [24]  244 	movx	@dptr,a
      00012C 90 10 F7         [24]  245 	mov	dptr,#(_gapRole_AdvertData + 0x000d)
      00012F F0               [24]  246 	movx	@dptr,a
      000130 90 10 F8         [24]  247 	mov	dptr,#(_gapRole_AdvertData + 0x000e)
      000133 F0               [24]  248 	movx	@dptr,a
      000134 90 10 F9         [24]  249 	mov	dptr,#(_gapRole_AdvertData + 0x000f)
      000137 F0               [24]  250 	movx	@dptr,a
      000138 90 10 FA         [24]  251 	mov	dptr,#(_gapRole_AdvertData + 0x0010)
      00013B F0               [24]  252 	movx	@dptr,a
      00013C 90 10 FB         [24]  253 	mov	dptr,#(_gapRole_AdvertData + 0x0011)
      00013F F0               [24]  254 	movx	@dptr,a
      000140 90 10 FC         [24]  255 	mov	dptr,#(_gapRole_AdvertData + 0x0012)
      000143 F0               [24]  256 	movx	@dptr,a
      000144 90 10 FD         [24]  257 	mov	dptr,#(_gapRole_AdvertData + 0x0013)
      000147 F0               [24]  258 	movx	@dptr,a
      000148 90 10 FE         [24]  259 	mov	dptr,#(_gapRole_AdvertData + 0x0014)
      00014B F0               [24]  260 	movx	@dptr,a
      00014C 90 10 FF         [24]  261 	mov	dptr,#(_gapRole_AdvertData + 0x0015)
      00014F F0               [24]  262 	movx	@dptr,a
      000150 90 11 00         [24]  263 	mov	dptr,#(_gapRole_AdvertData + 0x0016)
      000153 F0               [24]  264 	movx	@dptr,a
      000154 90 11 01         [24]  265 	mov	dptr,#(_gapRole_AdvertData + 0x0017)
      000157 F0               [24]  266 	movx	@dptr,a
      000158 90 11 02         [24]  267 	mov	dptr,#(_gapRole_AdvertData + 0x0018)
      00015B F0               [24]  268 	movx	@dptr,a
      00015C 90 11 03         [24]  269 	mov	dptr,#(_gapRole_AdvertData + 0x0019)
      00015F F0               [24]  270 	movx	@dptr,a
      000160 90 11 04         [24]  271 	mov	dptr,#(_gapRole_AdvertData + 0x001a)
      000163 F0               [24]  272 	movx	@dptr,a
      000164 90 11 05         [24]  273 	mov	dptr,#(_gapRole_AdvertData + 0x001b)
      000167 F0               [24]  274 	movx	@dptr,a
      000168 90 11 06         [24]  275 	mov	dptr,#(_gapRole_AdvertData + 0x001c)
      00016B F0               [24]  276 	movx	@dptr,a
      00016C 90 11 07         [24]  277 	mov	dptr,#(_gapRole_AdvertData + 0x001d)
      00016F F0               [24]  278 	movx	@dptr,a
      000170 90 11 08         [24]  279 	mov	dptr,#(_gapRole_AdvertData + 0x001e)
      000173 F0               [24]  280 	movx	@dptr,a
                                    281 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:159: static uint8  gapRole_ScanRspDataLen = 0;
      000174 90 11 09         [24]  282 	mov	dptr,#_gapRole_ScanRspDataLen
      000177 F0               [24]  283 	movx	@dptr,a
                                    284 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:160: static uint8  gapRole_ScanRspData[B_MAX_ADV_LEN] = {0};
      000178 90 11 0A         [24]  285 	mov	dptr,#_gapRole_ScanRspData
      00017B F0               [24]  286 	movx	@dptr,a
                                    287 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:163: static uint8  gapRole_AdvDirectAddr[B_ADDR_LEN] = {0};
      00017C 90 11 2B         [24]  288 	mov	dptr,#_gapRole_AdvDirectAddr
      00017F F0               [24]  289 	movx	@dptr,a
                                    290 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:168: static uint16 gapRole_RSSIReadRate = 0;
      000180 90 11 33         [24]  291 	mov	dptr,#_gapRole_RSSIReadRate
      000183 F0               [24]  292 	movx	@dptr,a
      000184 A3               [24]  293 	inc	dptr
      000185 F0               [24]  294 	movx	@dptr,a
                                    295 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:170: static gapRolesCBs_t *pGapRoles_AppCGs = NULL;
      000186 90 11 35         [24]  296 	mov	dptr,#_pGapRoles_AppCGs
      000189 F0               [24]  297 	movx	@dptr,a
      00018A A3               [24]  298 	inc	dptr
      00018B F0               [24]  299 	movx	@dptr,a
      00018C A3               [24]  300 	inc	dptr
      00018D F0               [24]  301 	movx	@dptr,a
                                    302 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:171: static uint8  gapRole_ConnectedDevAddr[B_ADDR_LEN] = {0};
      00018E 90 11 38         [24]  303 	mov	dptr,#_gapRole_ConnectedDevAddr
      000191 F0               [24]  304 	movx	@dptr,a
                                    305 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:173: static uint8  gapRole_ParamUpdateEnable = FALSE;
      000192 90 11 3E         [24]  306 	mov	dptr,#_gapRole_ParamUpdateEnable
      000195 F0               [24]  307 	movx	@dptr,a
                                    308 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:174: static uint16 gapRole_MinConnInterval = DEFAULT_MIN_CONN_INTERVAL;
      000196 90 11 3F         [24]  309 	mov	dptr,#_gapRole_MinConnInterval
      000199 74 06            [12]  310 	mov	a,#0x06
      00019B F0               [24]  311 	movx	@dptr,a
      00019C 74 00            [12]  312 	mov	a,#0x00
      00019E A3               [24]  313 	inc	dptr
      00019F F0               [24]  314 	movx	@dptr,a
                                    315 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:175: static uint16 gapRole_MaxConnInterval = DEFAULT_MAX_CONN_INTERVAL;
      0001A0 90 11 41         [24]  316 	mov	dptr,#_gapRole_MaxConnInterval
      0001A3 74 80            [12]  317 	mov	a,#0x80
      0001A5 F0               [24]  318 	movx	@dptr,a
      0001A6 74 0C            [12]  319 	mov	a,#0x0C
      0001A8 A3               [24]  320 	inc	dptr
      0001A9 F0               [24]  321 	movx	@dptr,a
                                    322 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:176: static uint16 gapRole_SlaveLatency = MIN_SLAVE_LATENCY;
      0001AA 90 11 43         [24]  323 	mov	dptr,#_gapRole_SlaveLatency
      0001AD 74 00            [12]  324 	mov	a,#0x00
      0001AF F0               [24]  325 	movx	@dptr,a
      0001B0 A3               [24]  326 	inc	dptr
      0001B1 F0               [24]  327 	movx	@dptr,a
                                    328 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:177: static uint16 gapRole_TimeoutMultiplier = DEFAULT_TIMEOUT_MULTIPLIER;
      0001B2 90 11 45         [24]  329 	mov	dptr,#_gapRole_TimeoutMultiplier
      0001B5 74 E8            [12]  330 	mov	a,#0xE8
      0001B7 F0               [24]  331 	movx	@dptr,a
      0001B8 74 03            [12]  332 	mov	a,#0x03
      0001BA A3               [24]  333 	inc	dptr
      0001BB F0               [24]  334 	movx	@dptr,a
                                    335 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:179: static uint16 gapRole_ConnInterval = 0;
      0001BC 90 11 47         [24]  336 	mov	dptr,#_gapRole_ConnInterval
      0001BF 74 00            [12]  337 	mov	a,#0x00
      0001C1 F0               [24]  338 	movx	@dptr,a
      0001C2 A3               [24]  339 	inc	dptr
      0001C3 F0               [24]  340 	movx	@dptr,a
                                    341 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:180: static uint16 gapRole_ConnSlaveLatency = 0;
      0001C4 90 11 49         [24]  342 	mov	dptr,#_gapRole_ConnSlaveLatency
      0001C7 F0               [24]  343 	movx	@dptr,a
      0001C8 A3               [24]  344 	inc	dptr
      0001C9 F0               [24]  345 	movx	@dptr,a
                                    346 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:181: static uint16 gapRole_ConnTimeout = 0;
      0001CA 90 11 4B         [24]  347 	mov	dptr,#_gapRole_ConnTimeout
      0001CD F0               [24]  348 	movx	@dptr,a
      0001CE A3               [24]  349 	inc	dptr
      0001CF F0               [24]  350 	movx	@dptr,a
                                    351 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:183: static uint8 ParamUpdateNoSuccessOption = GAPROLE_NO_ACTION;
      0001D0 90 11 4D         [24]  352 	mov	dptr,#_ParamUpdateNoSuccessOption
      0001D3 F0               [24]  353 	movx	@dptr,a
                                    354 ;--------------------------------------------------------
                                    355 ; Home
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
                                    358 	.area HOME    (CODE)
                                    359 ;--------------------------------------------------------
                                    360 ; code
                                    361 ;--------------------------------------------------------
                                    362 	.area CSEG    (CODE)
                                    363 ;------------------------------------------------------------
                                    364 ;Allocation info for local variables in function 'GAPRole_SetParameter'
                                    365 ;------------------------------------------------------------
                                    366 ;len                       Allocated with name '_GAPRole_SetParameter_PARM_2'
                                    367 ;pValue                    Allocated with name '_GAPRole_SetParameter_PARM_3'
                                    368 ;param                     Allocated with name '_GAPRole_SetParameter_param_1_249'
                                    369 ;ret                       Allocated with name '_GAPRole_SetParameter_ret_1_250'
                                    370 ;oldAdvEnabled             Allocated with name '_GAPRole_SetParameter_oldAdvEnabled_3_252'
                                    371 ;------------------------------------------------------------
                                    372 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:214: bStatus_t GAPRole_SetParameter( uint16 param, uint8 len, void *pValue )
                                    373 ;	-----------------------------------------
                                    374 ;	 function GAPRole_SetParameter
                                    375 ;	-----------------------------------------
      004131                        376 _GAPRole_SetParameter:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
      004131 AF 83            [24]  385 	mov	r7,dph
      004133 E5 82            [12]  386 	mov	a,dpl
      004135 90 11 52         [24]  387 	mov	dptr,#_GAPRole_SetParameter_param_1_249
      004138 F0               [24]  388 	movx	@dptr,a
      004139 EF               [12]  389 	mov	a,r7
      00413A A3               [24]  390 	inc	dptr
      00413B F0               [24]  391 	movx	@dptr,a
                                    392 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:216: bStatus_t ret = SUCCESS;
      00413C 90 11 54         [24]  393 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      00413F 74 00            [12]  394 	mov	a,#0x00
      004141 F0               [24]  395 	movx	@dptr,a
                                    396 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:217: switch ( param )
      004142 90 11 52         [24]  397 	mov	dptr,#_GAPRole_SetParameter_param_1_249
      004145 E0               [24]  398 	movx	a,@dptr
      004146 FE               [12]  399 	mov	r6,a
      004147 A3               [24]  400 	inc	dptr
      004148 E0               [24]  401 	movx	a,@dptr
      004149 FF               [12]  402 	mov	r7,a
      00414A BE 05 05         [24]  403 	cjne	r6,#0x05,00149$
      00414D BF 03 02         [24]  404 	cjne	r7,#0x03,00149$
      004150 80 03            [24]  405 	sjmp	00150$
      004152                        406 00149$:
      004152 02 42 0F         [24]  407 	ljmp	00118$
      004155                        408 00150$:
                                    409 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:258: if ( len == sizeof( uint8 ) )
      004155 90 11 4E         [24]  410 	mov	dptr,#_GAPRole_SetParameter_PARM_2
      004158 E0               [24]  411 	movx	a,@dptr
      004159 FF               [12]  412 	mov	r7,a
      00415A BF 01 02         [24]  413 	cjne	r7,#0x01,00151$
      00415D 80 03            [24]  414 	sjmp	00152$
      00415F                        415 00151$:
      00415F 02 42 06         [24]  416 	ljmp	00116$
      004162                        417 00152$:
                                    418 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:260: uint8 oldAdvEnabled = gapRole_AdvEnabled;
      004162 90 10 E6         [24]  419 	mov	dptr,#_gapRole_AdvEnabled
      004165 E0               [24]  420 	movx	a,@dptr
      004166 FF               [12]  421 	mov	r7,a
      004167 90 11 55         [24]  422 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      00416A EF               [12]  423 	mov	a,r7
      00416B F0               [24]  424 	movx	@dptr,a
                                    425 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:261: gapRole_AdvEnabled = *((uint8*)pValue);
      00416C 90 11 4F         [24]  426 	mov	dptr,#_GAPRole_SetParameter_PARM_3
      00416F E0               [24]  427 	movx	a,@dptr
      004170 FD               [12]  428 	mov	r5,a
      004171 A3               [24]  429 	inc	dptr
      004172 E0               [24]  430 	movx	a,@dptr
      004173 FE               [12]  431 	mov	r6,a
      004174 A3               [24]  432 	inc	dptr
      004175 E0               [24]  433 	movx	a,@dptr
      004176 FF               [12]  434 	mov	r7,a
      004177 8D 82            [24]  435 	mov	dpl,r5
      004179 8E 83            [24]  436 	mov	dph,r6
      00417B 8F F0            [24]  437 	mov	b,r7
      00417D 12 5D 60         [24]  438 	lcall	__gptrget
      004180 FD               [12]  439 	mov	r5,a
      004181 90 10 E6         [24]  440 	mov	dptr,#_gapRole_AdvEnabled
      004184 ED               [12]  441 	mov	a,r5
      004185 F0               [24]  442 	movx	@dptr,a
                                    443 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:263: if ( (oldAdvEnabled) && (gapRole_AdvEnabled == FALSE) )
      004186 90 11 55         [24]  444 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      004189 E0               [24]  445 	movx	a,@dptr
      00418A FF               [12]  446 	mov	r7,a
      00418B EF               [12]  447 	mov	a,r7
      00418C 70 03            [24]  448 	jnz	00153$
      00418E 02 41 B6         [24]  449 	ljmp	00112$
      004191                        450 00153$:
      004191 90 10 E6         [24]  451 	mov	dptr,#_gapRole_AdvEnabled
      004194 E0               [24]  452 	movx	a,@dptr
      004195 FF               [12]  453 	mov	r7,a
      004196 EF               [12]  454 	mov	a,r7
      004197 60 03            [24]  455 	jz	00154$
      004199 02 41 B6         [24]  456 	ljmp	00112$
      00419C                        457 00154$:
                                    458 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:266: if ( gapRole_state == GAPROLE_ADVERTISING )
      00419C 90 10 BA         [24]  459 	mov	dptr,#_gapRole_state
      00419F E0               [24]  460 	movx	a,@dptr
      0041A0 FF               [12]  461 	mov	r7,a
      0041A1 BF 02 02         [24]  462 	cjne	r7,#0x02,00155$
      0041A4 80 03            [24]  463 	sjmp	00156$
      0041A6                        464 00155$:
      0041A6 02 42 15         [24]  465 	ljmp	00119$
      0041A9                        466 00156$:
                                    467 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:268: VOID GAP_EndDiscoverable( gapRole_TaskID );
      0041A9 90 10 B9         [24]  468 	mov	dptr,#_gapRole_TaskID
      0041AC E0               [24]  469 	movx	a,@dptr
      0041AD FF               [12]  470 	mov	r7,a
      0041AE 8F 82            [24]  471 	mov	dpl,r7
      0041B0 12 49 31         [24]  472 	lcall	_GAP_EndDiscoverable
      0041B3 02 42 15         [24]  473 	ljmp	00119$
      0041B6                        474 00112$:
                                    475 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:271: else if ( (oldAdvEnabled == FALSE) && (gapRole_AdvEnabled) )
      0041B6 90 11 55         [24]  476 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      0041B9 E0               [24]  477 	movx	a,@dptr
      0041BA FF               [12]  478 	mov	r7,a
      0041BB EF               [12]  479 	mov	a,r7
      0041BC 60 03            [24]  480 	jz	00157$
      0041BE 02 42 15         [24]  481 	ljmp	00119$
      0041C1                        482 00157$:
      0041C1 90 10 E6         [24]  483 	mov	dptr,#_gapRole_AdvEnabled
      0041C4 E0               [24]  484 	movx	a,@dptr
      0041C5 FF               [12]  485 	mov	r7,a
      0041C6 EF               [12]  486 	mov	a,r7
      0041C7 70 03            [24]  487 	jnz	00158$
      0041C9 02 42 15         [24]  488 	ljmp	00119$
      0041CC                        489 00158$:
                                    490 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:274: if ( (gapRole_state == GAPROLE_STARTED)
      0041CC 90 10 BA         [24]  491 	mov	dptr,#_gapRole_state
      0041CF E0               [24]  492 	movx	a,@dptr
      0041D0 FF               [12]  493 	mov	r7,a
      0041D1 BF 01 03         [24]  494 	cjne	r7,#0x01,00159$
      0041D4 02 41 EF         [24]  495 	ljmp	00104$
      0041D7                        496 00159$:
                                    497 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:275: || (gapRole_state == GAPROLE_WAITING)
      0041D7 90 10 BA         [24]  498 	mov	dptr,#_gapRole_state
      0041DA E0               [24]  499 	movx	a,@dptr
      0041DB FF               [12]  500 	mov	r7,a
      0041DC BF 03 03         [24]  501 	cjne	r7,#0x03,00160$
      0041DF 02 41 EF         [24]  502 	ljmp	00104$
      0041E2                        503 00160$:
                                    504 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:276: || (gapRole_state == GAPROLE_WAITING_AFTER_TIMEOUT) )
      0041E2 90 10 BA         [24]  505 	mov	dptr,#_gapRole_state
      0041E5 E0               [24]  506 	movx	a,@dptr
      0041E6 FF               [12]  507 	mov	r7,a
      0041E7 BF 04 02         [24]  508 	cjne	r7,#0x04,00161$
      0041EA 80 03            [24]  509 	sjmp	00162$
      0041EC                        510 00161$:
      0041EC 02 42 15         [24]  511 	ljmp	00119$
      0041EF                        512 00162$:
      0041EF                        513 00104$:
                                    514 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:278: VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
      0041EF 90 10 B9         [24]  515 	mov	dptr,#_gapRole_TaskID
      0041F2 E0               [24]  516 	movx	a,@dptr
      0041F3 FF               [12]  517 	mov	r7,a
      0041F4 90 03 C6         [24]  518 	mov	dptr,#_osal_set_event_PARM_2
      0041F7 74 01            [12]  519 	mov	a,#0x01
      0041F9 F0               [24]  520 	movx	@dptr,a
      0041FA 74 00            [12]  521 	mov	a,#0x00
      0041FC A3               [24]  522 	inc	dptr
      0041FD F0               [24]  523 	movx	@dptr,a
      0041FE 8F 82            [24]  524 	mov	dpl,r7
      004200 12 19 84         [24]  525 	lcall	_osal_set_event
      004203 02 42 15         [24]  526 	ljmp	00119$
      004206                        527 00116$:
                                    528 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:284: ret = bleInvalidRange;
      004206 90 11 54         [24]  529 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      004209 74 18            [12]  530 	mov	a,#0x18
      00420B F0               [24]  531 	movx	@dptr,a
                                    532 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:286: break;
      00420C 02 42 15         [24]  533 	ljmp	00119$
                                    534 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:490: default:
      00420F                        535 00118$:
                                    536 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:492: ret = INVALIDPARAMETER;
      00420F 90 11 54         [24]  537 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      004212 74 02            [12]  538 	mov	a,#0x02
      004214 F0               [24]  539 	movx	@dptr,a
                                    540 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:495: }
      004215                        541 00119$:
                                    542 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:497: return ( ret );
      004215 90 11 54         [24]  543 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      004218 E0               [24]  544 	movx	a,@dptr
      004219 FF               [12]  545 	mov	r7,a
      00421A 8F 82            [24]  546 	mov	dpl,r7
      00421C                        547 00120$:
      00421C 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'GAPRole_GetParameter'
                                    551 ;------------------------------------------------------------
                                    552 ;pValue                    Allocated with name '_GAPRole_GetParameter_PARM_2'
                                    553 ;param                     Allocated with name '_GAPRole_GetParameter_param_1_258'
                                    554 ;ret                       Allocated with name '_GAPRole_GetParameter_ret_1_259'
                                    555 ;------------------------------------------------------------
                                    556 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:505: bStatus_t GAPRole_GetParameter( uint16 param, void *pValue )
                                    557 ;	-----------------------------------------
                                    558 ;	 function GAPRole_GetParameter
                                    559 ;	-----------------------------------------
      00421D                        560 _GAPRole_GetParameter:
      00421D AF 83            [24]  561 	mov	r7,dph
      00421F E5 82            [12]  562 	mov	a,dpl
      004221 90 11 59         [24]  563 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      004224 F0               [24]  564 	movx	@dptr,a
      004225 EF               [12]  565 	mov	a,r7
      004226 A3               [24]  566 	inc	dptr
      004227 F0               [24]  567 	movx	@dptr,a
                                    568 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:507: bStatus_t ret = SUCCESS;
      004228 90 11 5B         [24]  569 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      00422B 74 00            [12]  570 	mov	a,#0x00
      00422D F0               [24]  571 	movx	@dptr,a
                                    572 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:508: switch ( param )
      00422E 90 11 59         [24]  573 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      004231 E0               [24]  574 	movx	a,@dptr
      004232 FE               [12]  575 	mov	r6,a
      004233 A3               [24]  576 	inc	dptr
      004234 E0               [24]  577 	movx	a,@dptr
      004235 FF               [12]  578 	mov	r7,a
      004236 C3               [12]  579 	clr	c
      004237 EF               [12]  580 	mov	a,r7
      004238 94 03            [12]  581 	subb	a,#0x03
      00423A 50 03            [24]  582 	jnc	00142$
      00423C 02 46 35         [24]  583 	ljmp	00126$
      00423F                        584 00142$:
      00423F C3               [12]  585 	clr	c
      004240 74 18            [12]  586 	mov	a,#0x18
      004242 9E               [12]  587 	subb	a,r6
      004243 74 03            [12]  588 	mov	a,#0x03
      004245 9F               [12]  589 	subb	a,r7
      004246 50 03            [24]  590 	jnc	00143$
      004248 02 46 35         [24]  591 	ljmp	00126$
      00424B                        592 00143$:
      00424B EE               [12]  593 	mov	a,r6
      00424C 24 0A            [12]  594 	add	a,#(00144$-3-.)
      00424E 83               [24]  595 	movc	a,@a+pc
      00424F F5 82            [12]  596 	mov	dpl,a
      004251 EE               [12]  597 	mov	a,r6
      004252 24 1D            [12]  598 	add	a,#(00145$-3-.)
      004254 83               [24]  599 	movc	a,@a+pc
      004255 F5 83            [12]  600 	mov	dph,a
      004257 E4               [12]  601 	clr	a
      004258 73               [24]  602 	jmp	@a+dptr
      004259                        603 00144$:
      004259 8B                     604 	.db	00101$
      00425A A8                     605 	.db	00102$
      00425B D7                     606 	.db	00103$
      00425C 06                     607 	.db	00104$
      00425D 3B                     608 	.db	00105$
      00425E 6A                     609 	.db	00106$
      00425F 87                     610 	.db	00107$
      004260 AC                     611 	.db	00108$
      004261 E0                     612 	.db	00109$
      004262 14                     613 	.db	00110$
      004263 31                     614 	.db	00111$
      004264 4E                     615 	.db	00112$
      004265 7D                     616 	.db	00113$
      004266 9A                     617 	.db	00114$
      004267 B7                     618 	.db	00115$
      004268 BA                     619 	.db	00116$
      004269 DF                     620 	.db	00117$
      00426A 03                     621 	.db	00118$
      00426B 28                     622 	.db	00119$
      00426C 4D                     623 	.db	00120$
      00426D 72                     624 	.db	00121$
      00426E 97                     625 	.db	00122$
      00426F C6                     626 	.db	00123$
      004270 EB                     627 	.db	00124$
      004271 10                     628 	.db	00125$
      004272                        629 00145$:
      004272 42                     630 	.db	00101$>>8
      004273 42                     631 	.db	00102$>>8
      004274 42                     632 	.db	00103$>>8
      004275 43                     633 	.db	00104$>>8
      004276 43                     634 	.db	00105$>>8
      004277 43                     635 	.db	00106$>>8
      004278 43                     636 	.db	00107$>>8
      004279 43                     637 	.db	00108$>>8
      00427A 43                     638 	.db	00109$>>8
      00427B 44                     639 	.db	00110$>>8
      00427C 44                     640 	.db	00111$>>8
      00427D 44                     641 	.db	00112$>>8
      00427E 44                     642 	.db	00113$>>8
      00427F 44                     643 	.db	00114$>>8
      004280 44                     644 	.db	00115$>>8
      004281 44                     645 	.db	00116$>>8
      004282 44                     646 	.db	00117$>>8
      004283 45                     647 	.db	00118$>>8
      004284 45                     648 	.db	00119$>>8
      004285 45                     649 	.db	00120$>>8
      004286 45                     650 	.db	00121$>>8
      004287 45                     651 	.db	00122$>>8
      004288 45                     652 	.db	00123$>>8
      004289 45                     653 	.db	00124$>>8
      00428A 46                     654 	.db	00125$>>8
                                    655 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:510: case GAPROLE_PROFILEROLE:
      00428B                        656 00101$:
                                    657 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:511: *((uint8*)pValue) = gapRole_profileRole;
      00428B 90 11 56         [24]  658 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00428E E0               [24]  659 	movx	a,@dptr
      00428F FD               [12]  660 	mov	r5,a
      004290 A3               [24]  661 	inc	dptr
      004291 E0               [24]  662 	movx	a,@dptr
      004292 FE               [12]  663 	mov	r6,a
      004293 A3               [24]  664 	inc	dptr
      004294 E0               [24]  665 	movx	a,@dptr
      004295 FF               [12]  666 	mov	r7,a
      004296 90 10 BB         [24]  667 	mov	dptr,#_gapRole_profileRole
      004299 E0               [24]  668 	movx	a,@dptr
      00429A FC               [12]  669 	mov	r4,a
      00429B 8D 82            [24]  670 	mov	dpl,r5
      00429D 8E 83            [24]  671 	mov	dph,r6
      00429F 8F F0            [24]  672 	mov	b,r7
      0042A1 EC               [12]  673 	mov	a,r4
      0042A2 12 5B F4         [24]  674 	lcall	__gptrput
                                    675 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:512: break;
      0042A5 02 46 4F         [24]  676 	ljmp	00130$
                                    677 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:514: case GAPROLE_IRK:
      0042A8                        678 00102$:
                                    679 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:515: VOID osal_memcpy( pValue, gapRole_IRK, KEYLEN ) ;
      0042A8 90 11 56         [24]  680 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0042AB E0               [24]  681 	movx	a,@dptr
      0042AC FD               [12]  682 	mov	r5,a
      0042AD A3               [24]  683 	inc	dptr
      0042AE E0               [24]  684 	movx	a,@dptr
      0042AF FE               [12]  685 	mov	r6,a
      0042B0 A3               [24]  686 	inc	dptr
      0042B1 E0               [24]  687 	movx	a,@dptr
      0042B2 FF               [12]  688 	mov	r7,a
      0042B3 90 03 07         [24]  689 	mov	dptr,#_osal_memcpy_PARM_2
      0042B6 74 BC            [12]  690 	mov	a,#_gapRole_IRK
      0042B8 F0               [24]  691 	movx	@dptr,a
      0042B9 74 10            [12]  692 	mov	a,#(_gapRole_IRK >> 8)
      0042BB A3               [24]  693 	inc	dptr
      0042BC F0               [24]  694 	movx	@dptr,a
      0042BD 74 00            [12]  695 	mov	a,#0x00
      0042BF A3               [24]  696 	inc	dptr
      0042C0 F0               [24]  697 	movx	@dptr,a
      0042C1 90 03 0A         [24]  698 	mov	dptr,#_osal_memcpy_PARM_3
      0042C4 74 10            [12]  699 	mov	a,#0x10
      0042C6 F0               [24]  700 	movx	@dptr,a
      0042C7 74 00            [12]  701 	mov	a,#0x00
      0042C9 A3               [24]  702 	inc	dptr
      0042CA F0               [24]  703 	movx	@dptr,a
      0042CB 8D 82            [24]  704 	mov	dpl,r5
      0042CD 8E 83            [24]  705 	mov	dph,r6
      0042CF 8F F0            [24]  706 	mov	b,r7
      0042D1 12 04 22         [24]  707 	lcall	_osal_memcpy
                                    708 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:516: break;
      0042D4 02 46 4F         [24]  709 	ljmp	00130$
                                    710 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:518: case GAPROLE_SRK:
      0042D7                        711 00103$:
                                    712 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:519: VOID osal_memcpy( pValue, gapRole_SRK, KEYLEN ) ;
      0042D7 90 11 56         [24]  713 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0042DA E0               [24]  714 	movx	a,@dptr
      0042DB FD               [12]  715 	mov	r5,a
      0042DC A3               [24]  716 	inc	dptr
      0042DD E0               [24]  717 	movx	a,@dptr
      0042DE FE               [12]  718 	mov	r6,a
      0042DF A3               [24]  719 	inc	dptr
      0042E0 E0               [24]  720 	movx	a,@dptr
      0042E1 FF               [12]  721 	mov	r7,a
      0042E2 90 03 07         [24]  722 	mov	dptr,#_osal_memcpy_PARM_2
      0042E5 74 CC            [12]  723 	mov	a,#_gapRole_SRK
      0042E7 F0               [24]  724 	movx	@dptr,a
      0042E8 74 10            [12]  725 	mov	a,#(_gapRole_SRK >> 8)
      0042EA A3               [24]  726 	inc	dptr
      0042EB F0               [24]  727 	movx	@dptr,a
      0042EC 74 00            [12]  728 	mov	a,#0x00
      0042EE A3               [24]  729 	inc	dptr
      0042EF F0               [24]  730 	movx	@dptr,a
      0042F0 90 03 0A         [24]  731 	mov	dptr,#_osal_memcpy_PARM_3
      0042F3 74 10            [12]  732 	mov	a,#0x10
      0042F5 F0               [24]  733 	movx	@dptr,a
      0042F6 74 00            [12]  734 	mov	a,#0x00
      0042F8 A3               [24]  735 	inc	dptr
      0042F9 F0               [24]  736 	movx	@dptr,a
      0042FA 8D 82            [24]  737 	mov	dpl,r5
      0042FC 8E 83            [24]  738 	mov	dph,r6
      0042FE 8F F0            [24]  739 	mov	b,r7
      004300 12 04 22         [24]  740 	lcall	_osal_memcpy
                                    741 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:520: break;
      004303 02 46 4F         [24]  742 	ljmp	00130$
                                    743 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:522: case GAPROLE_SIGNCOUNTER:
      004306                        744 00104$:
                                    745 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:523: *((uint32*)pValue) = gapRole_signCounter;
      004306 90 11 56         [24]  746 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004309 E0               [24]  747 	movx	a,@dptr
      00430A FD               [12]  748 	mov	r5,a
      00430B A3               [24]  749 	inc	dptr
      00430C E0               [24]  750 	movx	a,@dptr
      00430D FE               [12]  751 	mov	r6,a
      00430E A3               [24]  752 	inc	dptr
      00430F E0               [24]  753 	movx	a,@dptr
      004310 FF               [12]  754 	mov	r7,a
      004311 90 10 DC         [24]  755 	mov	dptr,#_gapRole_signCounter
      004314 E0               [24]  756 	movx	a,@dptr
      004315 F9               [12]  757 	mov	r1,a
      004316 A3               [24]  758 	inc	dptr
      004317 E0               [24]  759 	movx	a,@dptr
      004318 FA               [12]  760 	mov	r2,a
      004319 A3               [24]  761 	inc	dptr
      00431A E0               [24]  762 	movx	a,@dptr
      00431B FB               [12]  763 	mov	r3,a
      00431C A3               [24]  764 	inc	dptr
      00431D E0               [24]  765 	movx	a,@dptr
      00431E FC               [12]  766 	mov	r4,a
      00431F 8D 82            [24]  767 	mov	dpl,r5
      004321 8E 83            [24]  768 	mov	dph,r6
      004323 8F F0            [24]  769 	mov	b,r7
      004325 E9               [12]  770 	mov	a,r1
      004326 12 5B F4         [24]  771 	lcall	__gptrput
      004329 A3               [24]  772 	inc	dptr
      00432A EA               [12]  773 	mov	a,r2
      00432B 12 5B F4         [24]  774 	lcall	__gptrput
      00432E A3               [24]  775 	inc	dptr
      00432F EB               [12]  776 	mov	a,r3
      004330 12 5B F4         [24]  777 	lcall	__gptrput
      004333 A3               [24]  778 	inc	dptr
      004334 EC               [12]  779 	mov	a,r4
      004335 12 5B F4         [24]  780 	lcall	__gptrput
                                    781 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:524: break;
      004338 02 46 4F         [24]  782 	ljmp	00130$
                                    783 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:526: case GAPROLE_BD_ADDR:
      00433B                        784 00105$:
                                    785 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:527: VOID osal_memcpy( pValue, gapRole_bdAddr, B_ADDR_LEN ) ;
      00433B 90 11 56         [24]  786 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00433E E0               [24]  787 	movx	a,@dptr
      00433F FD               [12]  788 	mov	r5,a
      004340 A3               [24]  789 	inc	dptr
      004341 E0               [24]  790 	movx	a,@dptr
      004342 FE               [12]  791 	mov	r6,a
      004343 A3               [24]  792 	inc	dptr
      004344 E0               [24]  793 	movx	a,@dptr
      004345 FF               [12]  794 	mov	r7,a
      004346 90 03 07         [24]  795 	mov	dptr,#_osal_memcpy_PARM_2
      004349 74 E0            [12]  796 	mov	a,#_gapRole_bdAddr
      00434B F0               [24]  797 	movx	@dptr,a
      00434C 74 10            [12]  798 	mov	a,#(_gapRole_bdAddr >> 8)
      00434E A3               [24]  799 	inc	dptr
      00434F F0               [24]  800 	movx	@dptr,a
      004350 74 00            [12]  801 	mov	a,#0x00
      004352 A3               [24]  802 	inc	dptr
      004353 F0               [24]  803 	movx	@dptr,a
      004354 90 03 0A         [24]  804 	mov	dptr,#_osal_memcpy_PARM_3
      004357 74 06            [12]  805 	mov	a,#0x06
      004359 F0               [24]  806 	movx	@dptr,a
      00435A 74 00            [12]  807 	mov	a,#0x00
      00435C A3               [24]  808 	inc	dptr
      00435D F0               [24]  809 	movx	@dptr,a
      00435E 8D 82            [24]  810 	mov	dpl,r5
      004360 8E 83            [24]  811 	mov	dph,r6
      004362 8F F0            [24]  812 	mov	b,r7
      004364 12 04 22         [24]  813 	lcall	_osal_memcpy
                                    814 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:528: break;
      004367 02 46 4F         [24]  815 	ljmp	00130$
                                    816 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:530: case GAPROLE_ADVERT_ENABLED:
      00436A                        817 00106$:
                                    818 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:531: *((uint8*)pValue) = gapRole_AdvEnabled;
      00436A 90 11 56         [24]  819 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00436D E0               [24]  820 	movx	a,@dptr
      00436E FD               [12]  821 	mov	r5,a
      00436F A3               [24]  822 	inc	dptr
      004370 E0               [24]  823 	movx	a,@dptr
      004371 FE               [12]  824 	mov	r6,a
      004372 A3               [24]  825 	inc	dptr
      004373 E0               [24]  826 	movx	a,@dptr
      004374 FF               [12]  827 	mov	r7,a
      004375 90 10 E6         [24]  828 	mov	dptr,#_gapRole_AdvEnabled
      004378 E0               [24]  829 	movx	a,@dptr
      004379 FC               [12]  830 	mov	r4,a
      00437A 8D 82            [24]  831 	mov	dpl,r5
      00437C 8E 83            [24]  832 	mov	dph,r6
      00437E 8F F0            [24]  833 	mov	b,r7
      004380 EC               [12]  834 	mov	a,r4
      004381 12 5B F4         [24]  835 	lcall	__gptrput
                                    836 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:532: break;
      004384 02 46 4F         [24]  837 	ljmp	00130$
                                    838 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:534: case GAPROLE_ADVERT_OFF_TIME:
      004387                        839 00107$:
                                    840 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:535: *((uint16*)pValue) = gapRole_AdvertOffTime;
      004387 90 11 56         [24]  841 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00438A E0               [24]  842 	movx	a,@dptr
      00438B FD               [12]  843 	mov	r5,a
      00438C A3               [24]  844 	inc	dptr
      00438D E0               [24]  845 	movx	a,@dptr
      00438E FE               [12]  846 	mov	r6,a
      00438F A3               [24]  847 	inc	dptr
      004390 E0               [24]  848 	movx	a,@dptr
      004391 FF               [12]  849 	mov	r7,a
      004392 90 10 E7         [24]  850 	mov	dptr,#_gapRole_AdvertOffTime
      004395 E0               [24]  851 	movx	a,@dptr
      004396 FB               [12]  852 	mov	r3,a
      004397 A3               [24]  853 	inc	dptr
      004398 E0               [24]  854 	movx	a,@dptr
      004399 FC               [12]  855 	mov	r4,a
      00439A 8D 82            [24]  856 	mov	dpl,r5
      00439C 8E 83            [24]  857 	mov	dph,r6
      00439E 8F F0            [24]  858 	mov	b,r7
      0043A0 EB               [12]  859 	mov	a,r3
      0043A1 12 5B F4         [24]  860 	lcall	__gptrput
      0043A4 A3               [24]  861 	inc	dptr
      0043A5 EC               [12]  862 	mov	a,r4
      0043A6 12 5B F4         [24]  863 	lcall	__gptrput
                                    864 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:536: break;
      0043A9 02 46 4F         [24]  865 	ljmp	00130$
                                    866 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:538: case GAPROLE_ADVERT_DATA:
      0043AC                        867 00108$:
                                    868 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:539: VOID osal_memcpy( pValue , gapRole_AdvertData, gapRole_AdvertDataLen );
      0043AC 90 11 56         [24]  869 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0043AF E0               [24]  870 	movx	a,@dptr
      0043B0 FD               [12]  871 	mov	r5,a
      0043B1 A3               [24]  872 	inc	dptr
      0043B2 E0               [24]  873 	movx	a,@dptr
      0043B3 FE               [12]  874 	mov	r6,a
      0043B4 A3               [24]  875 	inc	dptr
      0043B5 E0               [24]  876 	movx	a,@dptr
      0043B6 FF               [12]  877 	mov	r7,a
      0043B7 90 10 E9         [24]  878 	mov	dptr,#_gapRole_AdvertDataLen
      0043BA E0               [24]  879 	movx	a,@dptr
      0043BB FC               [12]  880 	mov	r4,a
      0043BC 7B 00            [12]  881 	mov	r3,#0x00
      0043BE 90 03 07         [24]  882 	mov	dptr,#_osal_memcpy_PARM_2
      0043C1 74 EA            [12]  883 	mov	a,#_gapRole_AdvertData
      0043C3 F0               [24]  884 	movx	@dptr,a
      0043C4 74 10            [12]  885 	mov	a,#(_gapRole_AdvertData >> 8)
      0043C6 A3               [24]  886 	inc	dptr
      0043C7 F0               [24]  887 	movx	@dptr,a
      0043C8 74 00            [12]  888 	mov	a,#0x00
      0043CA A3               [24]  889 	inc	dptr
      0043CB F0               [24]  890 	movx	@dptr,a
      0043CC 90 03 0A         [24]  891 	mov	dptr,#_osal_memcpy_PARM_3
      0043CF EC               [12]  892 	mov	a,r4
      0043D0 F0               [24]  893 	movx	@dptr,a
      0043D1 EB               [12]  894 	mov	a,r3
      0043D2 A3               [24]  895 	inc	dptr
      0043D3 F0               [24]  896 	movx	@dptr,a
      0043D4 8D 82            [24]  897 	mov	dpl,r5
      0043D6 8E 83            [24]  898 	mov	dph,r6
      0043D8 8F F0            [24]  899 	mov	b,r7
      0043DA 12 04 22         [24]  900 	lcall	_osal_memcpy
                                    901 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:540: break;
      0043DD 02 46 4F         [24]  902 	ljmp	00130$
                                    903 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:542: case GAPROLE_SCAN_RSP_DATA:
      0043E0                        904 00109$:
                                    905 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:543: VOID osal_memcpy( pValue, gapRole_ScanRspData, gapRole_ScanRspDataLen ) ;
      0043E0 90 11 56         [24]  906 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0043E3 E0               [24]  907 	movx	a,@dptr
      0043E4 FD               [12]  908 	mov	r5,a
      0043E5 A3               [24]  909 	inc	dptr
      0043E6 E0               [24]  910 	movx	a,@dptr
      0043E7 FE               [12]  911 	mov	r6,a
      0043E8 A3               [24]  912 	inc	dptr
      0043E9 E0               [24]  913 	movx	a,@dptr
      0043EA FF               [12]  914 	mov	r7,a
      0043EB 90 11 09         [24]  915 	mov	dptr,#_gapRole_ScanRspDataLen
      0043EE E0               [24]  916 	movx	a,@dptr
      0043EF FC               [12]  917 	mov	r4,a
      0043F0 7B 00            [12]  918 	mov	r3,#0x00
      0043F2 90 03 07         [24]  919 	mov	dptr,#_osal_memcpy_PARM_2
      0043F5 74 0A            [12]  920 	mov	a,#_gapRole_ScanRspData
      0043F7 F0               [24]  921 	movx	@dptr,a
      0043F8 74 11            [12]  922 	mov	a,#(_gapRole_ScanRspData >> 8)
      0043FA A3               [24]  923 	inc	dptr
      0043FB F0               [24]  924 	movx	@dptr,a
      0043FC 74 00            [12]  925 	mov	a,#0x00
      0043FE A3               [24]  926 	inc	dptr
      0043FF F0               [24]  927 	movx	@dptr,a
      004400 90 03 0A         [24]  928 	mov	dptr,#_osal_memcpy_PARM_3
      004403 EC               [12]  929 	mov	a,r4
      004404 F0               [24]  930 	movx	@dptr,a
      004405 EB               [12]  931 	mov	a,r3
      004406 A3               [24]  932 	inc	dptr
      004407 F0               [24]  933 	movx	@dptr,a
      004408 8D 82            [24]  934 	mov	dpl,r5
      00440A 8E 83            [24]  935 	mov	dph,r6
      00440C 8F F0            [24]  936 	mov	b,r7
      00440E 12 04 22         [24]  937 	lcall	_osal_memcpy
                                    938 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:544: break;
      004411 02 46 4F         [24]  939 	ljmp	00130$
                                    940 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:546: case GAPROLE_ADV_EVENT_TYPE:
      004414                        941 00110$:
                                    942 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:547: *((uint8*)pValue) = gapRole_AdvEventType;
      004414 90 11 56         [24]  943 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004417 E0               [24]  944 	movx	a,@dptr
      004418 FD               [12]  945 	mov	r5,a
      004419 A3               [24]  946 	inc	dptr
      00441A E0               [24]  947 	movx	a,@dptr
      00441B FE               [12]  948 	mov	r6,a
      00441C A3               [24]  949 	inc	dptr
      00441D E0               [24]  950 	movx	a,@dptr
      00441E FF               [12]  951 	mov	r7,a
      00441F 90 11 29         [24]  952 	mov	dptr,#_gapRole_AdvEventType
      004422 E0               [24]  953 	movx	a,@dptr
      004423 FC               [12]  954 	mov	r4,a
      004424 8D 82            [24]  955 	mov	dpl,r5
      004426 8E 83            [24]  956 	mov	dph,r6
      004428 8F F0            [24]  957 	mov	b,r7
      00442A EC               [12]  958 	mov	a,r4
      00442B 12 5B F4         [24]  959 	lcall	__gptrput
                                    960 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:548: break;
      00442E 02 46 4F         [24]  961 	ljmp	00130$
                                    962 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:550: case GAPROLE_ADV_DIRECT_TYPE:
      004431                        963 00111$:
                                    964 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:551: *((uint8*)pValue) = gapRole_AdvDirectType;
      004431 90 11 56         [24]  965 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004434 E0               [24]  966 	movx	a,@dptr
      004435 FD               [12]  967 	mov	r5,a
      004436 A3               [24]  968 	inc	dptr
      004437 E0               [24]  969 	movx	a,@dptr
      004438 FE               [12]  970 	mov	r6,a
      004439 A3               [24]  971 	inc	dptr
      00443A E0               [24]  972 	movx	a,@dptr
      00443B FF               [12]  973 	mov	r7,a
      00443C 90 11 2A         [24]  974 	mov	dptr,#_gapRole_AdvDirectType
      00443F E0               [24]  975 	movx	a,@dptr
      004440 FC               [12]  976 	mov	r4,a
      004441 8D 82            [24]  977 	mov	dpl,r5
      004443 8E 83            [24]  978 	mov	dph,r6
      004445 8F F0            [24]  979 	mov	b,r7
      004447 EC               [12]  980 	mov	a,r4
      004448 12 5B F4         [24]  981 	lcall	__gptrput
                                    982 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:552: break;
      00444B 02 46 4F         [24]  983 	ljmp	00130$
                                    984 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:554: case GAPROLE_ADV_DIRECT_ADDR:
      00444E                        985 00112$:
                                    986 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:555: VOID osal_memcpy( pValue, gapRole_AdvDirectAddr, B_ADDR_LEN ) ;
      00444E 90 11 56         [24]  987 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004451 E0               [24]  988 	movx	a,@dptr
      004452 FD               [12]  989 	mov	r5,a
      004453 A3               [24]  990 	inc	dptr
      004454 E0               [24]  991 	movx	a,@dptr
      004455 FE               [12]  992 	mov	r6,a
      004456 A3               [24]  993 	inc	dptr
      004457 E0               [24]  994 	movx	a,@dptr
      004458 FF               [12]  995 	mov	r7,a
      004459 90 03 07         [24]  996 	mov	dptr,#_osal_memcpy_PARM_2
      00445C 74 2B            [12]  997 	mov	a,#_gapRole_AdvDirectAddr
      00445E F0               [24]  998 	movx	@dptr,a
      00445F 74 11            [12]  999 	mov	a,#(_gapRole_AdvDirectAddr >> 8)
      004461 A3               [24] 1000 	inc	dptr
      004462 F0               [24] 1001 	movx	@dptr,a
      004463 74 00            [12] 1002 	mov	a,#0x00
      004465 A3               [24] 1003 	inc	dptr
      004466 F0               [24] 1004 	movx	@dptr,a
      004467 90 03 0A         [24] 1005 	mov	dptr,#_osal_memcpy_PARM_3
      00446A 74 06            [12] 1006 	mov	a,#0x06
      00446C F0               [24] 1007 	movx	@dptr,a
      00446D 74 00            [12] 1008 	mov	a,#0x00
      00446F A3               [24] 1009 	inc	dptr
      004470 F0               [24] 1010 	movx	@dptr,a
      004471 8D 82            [24] 1011 	mov	dpl,r5
      004473 8E 83            [24] 1012 	mov	dph,r6
      004475 8F F0            [24] 1013 	mov	b,r7
      004477 12 04 22         [24] 1014 	lcall	_osal_memcpy
                                   1015 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:556: break;
      00447A 02 46 4F         [24] 1016 	ljmp	00130$
                                   1017 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:558: case GAPROLE_ADV_CHANNEL_MAP:
      00447D                       1018 00113$:
                                   1019 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:559: *((uint8*)pValue) = gapRole_AdvChanMap;
      00447D 90 11 56         [24] 1020 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004480 E0               [24] 1021 	movx	a,@dptr
      004481 FD               [12] 1022 	mov	r5,a
      004482 A3               [24] 1023 	inc	dptr
      004483 E0               [24] 1024 	movx	a,@dptr
      004484 FE               [12] 1025 	mov	r6,a
      004485 A3               [24] 1026 	inc	dptr
      004486 E0               [24] 1027 	movx	a,@dptr
      004487 FF               [12] 1028 	mov	r7,a
      004488 90 11 31         [24] 1029 	mov	dptr,#_gapRole_AdvChanMap
      00448B E0               [24] 1030 	movx	a,@dptr
      00448C FC               [12] 1031 	mov	r4,a
      00448D 8D 82            [24] 1032 	mov	dpl,r5
      00448F 8E 83            [24] 1033 	mov	dph,r6
      004491 8F F0            [24] 1034 	mov	b,r7
      004493 EC               [12] 1035 	mov	a,r4
      004494 12 5B F4         [24] 1036 	lcall	__gptrput
                                   1037 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:560: break;
      004497 02 46 4F         [24] 1038 	ljmp	00130$
                                   1039 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:562: case GAPROLE_ADV_FILTER_POLICY:
      00449A                       1040 00114$:
                                   1041 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:563: *((uint8*)pValue) = gapRole_AdvFilterPolicy;
      00449A 90 11 56         [24] 1042 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00449D E0               [24] 1043 	movx	a,@dptr
      00449E FD               [12] 1044 	mov	r5,a
      00449F A3               [24] 1045 	inc	dptr
      0044A0 E0               [24] 1046 	movx	a,@dptr
      0044A1 FE               [12] 1047 	mov	r6,a
      0044A2 A3               [24] 1048 	inc	dptr
      0044A3 E0               [24] 1049 	movx	a,@dptr
      0044A4 FF               [12] 1050 	mov	r7,a
      0044A5 90 11 32         [24] 1051 	mov	dptr,#_gapRole_AdvFilterPolicy
      0044A8 E0               [24] 1052 	movx	a,@dptr
      0044A9 FC               [12] 1053 	mov	r4,a
      0044AA 8D 82            [24] 1054 	mov	dpl,r5
      0044AC 8E 83            [24] 1055 	mov	dph,r6
      0044AE 8F F0            [24] 1056 	mov	b,r7
      0044B0 EC               [12] 1057 	mov	a,r4
      0044B1 12 5B F4         [24] 1058 	lcall	__gptrput
                                   1059 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:564: break;
      0044B4 02 46 4F         [24] 1060 	ljmp	00130$
                                   1061 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:566: case GAPROLE_CONNHANDLE:
      0044B7                       1062 00115$:
                                   1063 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:569: break;
      0044B7 02 46 4F         [24] 1064 	ljmp	00130$
                                   1065 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:571: case GAPROLE_RSSI_READ_RATE:
      0044BA                       1066 00116$:
                                   1067 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:572: *((uint16*)pValue) = gapRole_RSSIReadRate;
      0044BA 90 11 56         [24] 1068 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0044BD E0               [24] 1069 	movx	a,@dptr
      0044BE FD               [12] 1070 	mov	r5,a
      0044BF A3               [24] 1071 	inc	dptr
      0044C0 E0               [24] 1072 	movx	a,@dptr
      0044C1 FE               [12] 1073 	mov	r6,a
      0044C2 A3               [24] 1074 	inc	dptr
      0044C3 E0               [24] 1075 	movx	a,@dptr
      0044C4 FF               [12] 1076 	mov	r7,a
      0044C5 90 11 33         [24] 1077 	mov	dptr,#_gapRole_RSSIReadRate
      0044C8 E0               [24] 1078 	movx	a,@dptr
      0044C9 FB               [12] 1079 	mov	r3,a
      0044CA A3               [24] 1080 	inc	dptr
      0044CB E0               [24] 1081 	movx	a,@dptr
      0044CC FC               [12] 1082 	mov	r4,a
      0044CD 8D 82            [24] 1083 	mov	dpl,r5
      0044CF 8E 83            [24] 1084 	mov	dph,r6
      0044D1 8F F0            [24] 1085 	mov	b,r7
      0044D3 EB               [12] 1086 	mov	a,r3
      0044D4 12 5B F4         [24] 1087 	lcall	__gptrput
      0044D7 A3               [24] 1088 	inc	dptr
      0044D8 EC               [12] 1089 	mov	a,r4
      0044D9 12 5B F4         [24] 1090 	lcall	__gptrput
                                   1091 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:573: break;
      0044DC 02 46 4F         [24] 1092 	ljmp	00130$
                                   1093 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:575: case GAPROLE_PARAM_UPDATE_ENABLE:
      0044DF                       1094 00117$:
                                   1095 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:576: *((uint16*)pValue) = gapRole_ParamUpdateEnable;
      0044DF 90 11 56         [24] 1096 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0044E2 E0               [24] 1097 	movx	a,@dptr
      0044E3 FD               [12] 1098 	mov	r5,a
      0044E4 A3               [24] 1099 	inc	dptr
      0044E5 E0               [24] 1100 	movx	a,@dptr
      0044E6 FE               [12] 1101 	mov	r6,a
      0044E7 A3               [24] 1102 	inc	dptr
      0044E8 E0               [24] 1103 	movx	a,@dptr
      0044E9 FF               [12] 1104 	mov	r7,a
      0044EA 90 11 3E         [24] 1105 	mov	dptr,#_gapRole_ParamUpdateEnable
      0044ED E0               [24] 1106 	movx	a,@dptr
      0044EE FC               [12] 1107 	mov	r4,a
      0044EF 7B 00            [12] 1108 	mov	r3,#0x00
      0044F1 8D 82            [24] 1109 	mov	dpl,r5
      0044F3 8E 83            [24] 1110 	mov	dph,r6
      0044F5 8F F0            [24] 1111 	mov	b,r7
      0044F7 EC               [12] 1112 	mov	a,r4
      0044F8 12 5B F4         [24] 1113 	lcall	__gptrput
      0044FB A3               [24] 1114 	inc	dptr
      0044FC EB               [12] 1115 	mov	a,r3
      0044FD 12 5B F4         [24] 1116 	lcall	__gptrput
                                   1117 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:577: break;
      004500 02 46 4F         [24] 1118 	ljmp	00130$
                                   1119 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:579: case GAPROLE_MIN_CONN_INTERVAL:
      004503                       1120 00118$:
                                   1121 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:580: *((uint16*)pValue) = gapRole_MinConnInterval;
      004503 90 11 56         [24] 1122 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004506 E0               [24] 1123 	movx	a,@dptr
      004507 FD               [12] 1124 	mov	r5,a
      004508 A3               [24] 1125 	inc	dptr
      004509 E0               [24] 1126 	movx	a,@dptr
      00450A FE               [12] 1127 	mov	r6,a
      00450B A3               [24] 1128 	inc	dptr
      00450C E0               [24] 1129 	movx	a,@dptr
      00450D FF               [12] 1130 	mov	r7,a
      00450E 90 11 3F         [24] 1131 	mov	dptr,#_gapRole_MinConnInterval
      004511 E0               [24] 1132 	movx	a,@dptr
      004512 FB               [12] 1133 	mov	r3,a
      004513 A3               [24] 1134 	inc	dptr
      004514 E0               [24] 1135 	movx	a,@dptr
      004515 FC               [12] 1136 	mov	r4,a
      004516 8D 82            [24] 1137 	mov	dpl,r5
      004518 8E 83            [24] 1138 	mov	dph,r6
      00451A 8F F0            [24] 1139 	mov	b,r7
      00451C EB               [12] 1140 	mov	a,r3
      00451D 12 5B F4         [24] 1141 	lcall	__gptrput
      004520 A3               [24] 1142 	inc	dptr
      004521 EC               [12] 1143 	mov	a,r4
      004522 12 5B F4         [24] 1144 	lcall	__gptrput
                                   1145 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:581: break;
      004525 02 46 4F         [24] 1146 	ljmp	00130$
                                   1147 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:583: case GAPROLE_MAX_CONN_INTERVAL:
      004528                       1148 00119$:
                                   1149 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:584: *((uint16*)pValue) = gapRole_MaxConnInterval;
      004528 90 11 56         [24] 1150 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00452B E0               [24] 1151 	movx	a,@dptr
      00452C FD               [12] 1152 	mov	r5,a
      00452D A3               [24] 1153 	inc	dptr
      00452E E0               [24] 1154 	movx	a,@dptr
      00452F FE               [12] 1155 	mov	r6,a
      004530 A3               [24] 1156 	inc	dptr
      004531 E0               [24] 1157 	movx	a,@dptr
      004532 FF               [12] 1158 	mov	r7,a
      004533 90 11 41         [24] 1159 	mov	dptr,#_gapRole_MaxConnInterval
      004536 E0               [24] 1160 	movx	a,@dptr
      004537 FB               [12] 1161 	mov	r3,a
      004538 A3               [24] 1162 	inc	dptr
      004539 E0               [24] 1163 	movx	a,@dptr
      00453A FC               [12] 1164 	mov	r4,a
      00453B 8D 82            [24] 1165 	mov	dpl,r5
      00453D 8E 83            [24] 1166 	mov	dph,r6
      00453F 8F F0            [24] 1167 	mov	b,r7
      004541 EB               [12] 1168 	mov	a,r3
      004542 12 5B F4         [24] 1169 	lcall	__gptrput
      004545 A3               [24] 1170 	inc	dptr
      004546 EC               [12] 1171 	mov	a,r4
      004547 12 5B F4         [24] 1172 	lcall	__gptrput
                                   1173 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:585: break;
      00454A 02 46 4F         [24] 1174 	ljmp	00130$
                                   1175 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:587: case GAPROLE_SLAVE_LATENCY:
      00454D                       1176 00120$:
                                   1177 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:588: *((uint16*)pValue) = gapRole_SlaveLatency;
      00454D 90 11 56         [24] 1178 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004550 E0               [24] 1179 	movx	a,@dptr
      004551 FD               [12] 1180 	mov	r5,a
      004552 A3               [24] 1181 	inc	dptr
      004553 E0               [24] 1182 	movx	a,@dptr
      004554 FE               [12] 1183 	mov	r6,a
      004555 A3               [24] 1184 	inc	dptr
      004556 E0               [24] 1185 	movx	a,@dptr
      004557 FF               [12] 1186 	mov	r7,a
      004558 90 11 43         [24] 1187 	mov	dptr,#_gapRole_SlaveLatency
      00455B E0               [24] 1188 	movx	a,@dptr
      00455C FB               [12] 1189 	mov	r3,a
      00455D A3               [24] 1190 	inc	dptr
      00455E E0               [24] 1191 	movx	a,@dptr
      00455F FC               [12] 1192 	mov	r4,a
      004560 8D 82            [24] 1193 	mov	dpl,r5
      004562 8E 83            [24] 1194 	mov	dph,r6
      004564 8F F0            [24] 1195 	mov	b,r7
      004566 EB               [12] 1196 	mov	a,r3
      004567 12 5B F4         [24] 1197 	lcall	__gptrput
      00456A A3               [24] 1198 	inc	dptr
      00456B EC               [12] 1199 	mov	a,r4
      00456C 12 5B F4         [24] 1200 	lcall	__gptrput
                                   1201 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:589: break;
      00456F 02 46 4F         [24] 1202 	ljmp	00130$
                                   1203 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:591: case GAPROLE_TIMEOUT_MULTIPLIER:
      004572                       1204 00121$:
                                   1205 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:592: *((uint16*)pValue) = gapRole_TimeoutMultiplier;
      004572 90 11 56         [24] 1206 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004575 E0               [24] 1207 	movx	a,@dptr
      004576 FD               [12] 1208 	mov	r5,a
      004577 A3               [24] 1209 	inc	dptr
      004578 E0               [24] 1210 	movx	a,@dptr
      004579 FE               [12] 1211 	mov	r6,a
      00457A A3               [24] 1212 	inc	dptr
      00457B E0               [24] 1213 	movx	a,@dptr
      00457C FF               [12] 1214 	mov	r7,a
      00457D 90 11 45         [24] 1215 	mov	dptr,#_gapRole_TimeoutMultiplier
      004580 E0               [24] 1216 	movx	a,@dptr
      004581 FB               [12] 1217 	mov	r3,a
      004582 A3               [24] 1218 	inc	dptr
      004583 E0               [24] 1219 	movx	a,@dptr
      004584 FC               [12] 1220 	mov	r4,a
      004585 8D 82            [24] 1221 	mov	dpl,r5
      004587 8E 83            [24] 1222 	mov	dph,r6
      004589 8F F0            [24] 1223 	mov	b,r7
      00458B EB               [12] 1224 	mov	a,r3
      00458C 12 5B F4         [24] 1225 	lcall	__gptrput
      00458F A3               [24] 1226 	inc	dptr
      004590 EC               [12] 1227 	mov	a,r4
      004591 12 5B F4         [24] 1228 	lcall	__gptrput
                                   1229 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:593: break;
      004594 02 46 4F         [24] 1230 	ljmp	00130$
                                   1231 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:595: case GAPROLE_CONN_BD_ADDR:
      004597                       1232 00122$:
                                   1233 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:596: VOID osal_memcpy( pValue, gapRole_ConnectedDevAddr, B_ADDR_LEN ) ;
      004597 90 11 56         [24] 1234 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00459A E0               [24] 1235 	movx	a,@dptr
      00459B FD               [12] 1236 	mov	r5,a
      00459C A3               [24] 1237 	inc	dptr
      00459D E0               [24] 1238 	movx	a,@dptr
      00459E FE               [12] 1239 	mov	r6,a
      00459F A3               [24] 1240 	inc	dptr
      0045A0 E0               [24] 1241 	movx	a,@dptr
      0045A1 FF               [12] 1242 	mov	r7,a
      0045A2 90 03 07         [24] 1243 	mov	dptr,#_osal_memcpy_PARM_2
      0045A5 74 38            [12] 1244 	mov	a,#_gapRole_ConnectedDevAddr
      0045A7 F0               [24] 1245 	movx	@dptr,a
      0045A8 74 11            [12] 1246 	mov	a,#(_gapRole_ConnectedDevAddr >> 8)
      0045AA A3               [24] 1247 	inc	dptr
      0045AB F0               [24] 1248 	movx	@dptr,a
      0045AC 74 00            [12] 1249 	mov	a,#0x00
      0045AE A3               [24] 1250 	inc	dptr
      0045AF F0               [24] 1251 	movx	@dptr,a
      0045B0 90 03 0A         [24] 1252 	mov	dptr,#_osal_memcpy_PARM_3
      0045B3 74 06            [12] 1253 	mov	a,#0x06
      0045B5 F0               [24] 1254 	movx	@dptr,a
      0045B6 74 00            [12] 1255 	mov	a,#0x00
      0045B8 A3               [24] 1256 	inc	dptr
      0045B9 F0               [24] 1257 	movx	@dptr,a
      0045BA 8D 82            [24] 1258 	mov	dpl,r5
      0045BC 8E 83            [24] 1259 	mov	dph,r6
      0045BE 8F F0            [24] 1260 	mov	b,r7
      0045C0 12 04 22         [24] 1261 	lcall	_osal_memcpy
                                   1262 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:597: break;
      0045C3 02 46 4F         [24] 1263 	ljmp	00130$
                                   1264 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:599: case GAPROLE_CONN_INTERVAL:
      0045C6                       1265 00123$:
                                   1266 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:600: *((uint16*)pValue) = gapRole_ConnInterval;
      0045C6 90 11 56         [24] 1267 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0045C9 E0               [24] 1268 	movx	a,@dptr
      0045CA FD               [12] 1269 	mov	r5,a
      0045CB A3               [24] 1270 	inc	dptr
      0045CC E0               [24] 1271 	movx	a,@dptr
      0045CD FE               [12] 1272 	mov	r6,a
      0045CE A3               [24] 1273 	inc	dptr
      0045CF E0               [24] 1274 	movx	a,@dptr
      0045D0 FF               [12] 1275 	mov	r7,a
      0045D1 90 11 47         [24] 1276 	mov	dptr,#_gapRole_ConnInterval
      0045D4 E0               [24] 1277 	movx	a,@dptr
      0045D5 FB               [12] 1278 	mov	r3,a
      0045D6 A3               [24] 1279 	inc	dptr
      0045D7 E0               [24] 1280 	movx	a,@dptr
      0045D8 FC               [12] 1281 	mov	r4,a
      0045D9 8D 82            [24] 1282 	mov	dpl,r5
      0045DB 8E 83            [24] 1283 	mov	dph,r6
      0045DD 8F F0            [24] 1284 	mov	b,r7
      0045DF EB               [12] 1285 	mov	a,r3
      0045E0 12 5B F4         [24] 1286 	lcall	__gptrput
      0045E3 A3               [24] 1287 	inc	dptr
      0045E4 EC               [12] 1288 	mov	a,r4
      0045E5 12 5B F4         [24] 1289 	lcall	__gptrput
                                   1290 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:601: break;
      0045E8 02 46 4F         [24] 1291 	ljmp	00130$
                                   1292 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:603: case GAPROLE_CONN_LATENCY:
      0045EB                       1293 00124$:
                                   1294 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:604: *((uint16*)pValue) = gapRole_ConnSlaveLatency;
      0045EB 90 11 56         [24] 1295 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0045EE E0               [24] 1296 	movx	a,@dptr
      0045EF FD               [12] 1297 	mov	r5,a
      0045F0 A3               [24] 1298 	inc	dptr
      0045F1 E0               [24] 1299 	movx	a,@dptr
      0045F2 FE               [12] 1300 	mov	r6,a
      0045F3 A3               [24] 1301 	inc	dptr
      0045F4 E0               [24] 1302 	movx	a,@dptr
      0045F5 FF               [12] 1303 	mov	r7,a
      0045F6 90 11 49         [24] 1304 	mov	dptr,#_gapRole_ConnSlaveLatency
      0045F9 E0               [24] 1305 	movx	a,@dptr
      0045FA FB               [12] 1306 	mov	r3,a
      0045FB A3               [24] 1307 	inc	dptr
      0045FC E0               [24] 1308 	movx	a,@dptr
      0045FD FC               [12] 1309 	mov	r4,a
      0045FE 8D 82            [24] 1310 	mov	dpl,r5
      004600 8E 83            [24] 1311 	mov	dph,r6
      004602 8F F0            [24] 1312 	mov	b,r7
      004604 EB               [12] 1313 	mov	a,r3
      004605 12 5B F4         [24] 1314 	lcall	__gptrput
      004608 A3               [24] 1315 	inc	dptr
      004609 EC               [12] 1316 	mov	a,r4
      00460A 12 5B F4         [24] 1317 	lcall	__gptrput
                                   1318 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:605: break;
      00460D 02 46 4F         [24] 1319 	ljmp	00130$
                                   1320 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:607: case GAPROLE_CONN_TIMEOUT:
      004610                       1321 00125$:
                                   1322 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:608: *((uint16*)pValue) = gapRole_ConnTimeout;
      004610 90 11 56         [24] 1323 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004613 E0               [24] 1324 	movx	a,@dptr
      004614 FD               [12] 1325 	mov	r5,a
      004615 A3               [24] 1326 	inc	dptr
      004616 E0               [24] 1327 	movx	a,@dptr
      004617 FE               [12] 1328 	mov	r6,a
      004618 A3               [24] 1329 	inc	dptr
      004619 E0               [24] 1330 	movx	a,@dptr
      00461A FF               [12] 1331 	mov	r7,a
      00461B 90 11 4B         [24] 1332 	mov	dptr,#_gapRole_ConnTimeout
      00461E E0               [24] 1333 	movx	a,@dptr
      00461F FB               [12] 1334 	mov	r3,a
      004620 A3               [24] 1335 	inc	dptr
      004621 E0               [24] 1336 	movx	a,@dptr
      004622 FC               [12] 1337 	mov	r4,a
      004623 8D 82            [24] 1338 	mov	dpl,r5
      004625 8E 83            [24] 1339 	mov	dph,r6
      004627 8F F0            [24] 1340 	mov	b,r7
      004629 EB               [12] 1341 	mov	a,r3
      00462A 12 5B F4         [24] 1342 	lcall	__gptrput
      00462D A3               [24] 1343 	inc	dptr
      00462E EC               [12] 1344 	mov	a,r4
      00462F 12 5B F4         [24] 1345 	lcall	__gptrput
                                   1346 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:609: break;
      004632 02 46 4F         [24] 1347 	ljmp	00130$
                                   1348 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:611: default:
      004635                       1349 00126$:
                                   1350 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:613: if ( param < TGAP_PARAMID_MAX )
      004635 90 11 59         [24] 1351 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      004638 E0               [24] 1352 	movx	a,@dptr
      004639 FE               [12] 1353 	mov	r6,a
      00463A A3               [24] 1354 	inc	dptr
      00463B E0               [24] 1355 	movx	a,@dptr
      00463C FF               [12] 1356 	mov	r7,a
      00463D C3               [12] 1357 	clr	c
      00463E EE               [12] 1358 	mov	a,r6
      00463F 94 24            [12] 1359 	subb	a,#0x24
      004641 EF               [12] 1360 	mov	a,r7
      004642 94 00            [12] 1361 	subb	a,#0x00
      004644 50 03            [24] 1362 	jnc	00146$
      004646 02 46 4F         [24] 1363 	ljmp	00130$
      004649                       1364 00146$:
                                   1365 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:619: ret = INVALIDPARAMETER;
      004649 90 11 5B         [24] 1366 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      00464C 74 02            [12] 1367 	mov	a,#0x02
      00464E F0               [24] 1368 	movx	@dptr,a
                                   1369 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:622: }
      00464F                       1370 00130$:
                                   1371 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:624: return ( ret );
      00464F 90 11 5B         [24] 1372 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      004652 E0               [24] 1373 	movx	a,@dptr
      004653 FF               [12] 1374 	mov	r7,a
      004654 8F 82            [24] 1375 	mov	dpl,r7
      004656                       1376 00131$:
      004656 22               [24] 1377 	ret
                                   1378 ;------------------------------------------------------------
                                   1379 ;Allocation info for local variables in function 'GAPRole_StartDevice'
                                   1380 ;------------------------------------------------------------
                                   1381 ;pAppCallbacks             Allocated with name '_GAPRole_StartDevice_pAppCallbacks_1_263'
                                   1382 ;------------------------------------------------------------
                                   1383 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:632: bStatus_t GAPRole_StartDevice( gapRolesCBs_t *pAppCallbacks )
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function GAPRole_StartDevice
                                   1386 ;	-----------------------------------------
      004657                       1387 _GAPRole_StartDevice:
      004657 AF F0            [24] 1388 	mov	r7,b
      004659 AE 83            [24] 1389 	mov	r6,dph
      00465B E5 82            [12] 1390 	mov	a,dpl
      00465D 90 11 5C         [24] 1391 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      004660 F0               [24] 1392 	movx	@dptr,a
      004661 EE               [12] 1393 	mov	a,r6
      004662 A3               [24] 1394 	inc	dptr
      004663 F0               [24] 1395 	movx	@dptr,a
      004664 EF               [12] 1396 	mov	a,r7
      004665 A3               [24] 1397 	inc	dptr
      004666 F0               [24] 1398 	movx	@dptr,a
                                   1399 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:636: if ( gapRole_state == GAPROLE_INIT )
      004667 90 10 BA         [24] 1400 	mov	dptr,#_gapRole_state
      00466A E0               [24] 1401 	movx	a,@dptr
      00466B FF               [12] 1402 	mov	r7,a
      00466C EF               [12] 1403 	mov	a,r7
      00466D 60 03            [24] 1404 	jz	00114$
      00466F 02 46 A3         [24] 1405 	ljmp	00104$
      004672                       1406 00114$:
                                   1407 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:639: if ( pAppCallbacks )
      004672 90 11 5C         [24] 1408 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      004675 E0               [24] 1409 	movx	a,@dptr
      004676 FD               [12] 1410 	mov	r5,a
      004677 A3               [24] 1411 	inc	dptr
      004678 E0               [24] 1412 	movx	a,@dptr
      004679 FE               [12] 1413 	mov	r6,a
      00467A A3               [24] 1414 	inc	dptr
      00467B E0               [24] 1415 	movx	a,@dptr
      00467C FF               [12] 1416 	mov	r7,a
      00467D ED               [12] 1417 	mov	a,r5
      00467E 4E               [12] 1418 	orl	a,r6
      00467F 70 03            [24] 1419 	jnz	00115$
      004681 02 46 9A         [24] 1420 	ljmp	00102$
      004684                       1421 00115$:
                                   1422 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:641: pGapRoles_AppCGs = pAppCallbacks;
      004684 90 11 5C         [24] 1423 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      004687 E0               [24] 1424 	movx	a,@dptr
      004688 FD               [12] 1425 	mov	r5,a
      004689 A3               [24] 1426 	inc	dptr
      00468A E0               [24] 1427 	movx	a,@dptr
      00468B FE               [12] 1428 	mov	r6,a
      00468C A3               [24] 1429 	inc	dptr
      00468D E0               [24] 1430 	movx	a,@dptr
      00468E FF               [12] 1431 	mov	r7,a
      00468F 90 11 35         [24] 1432 	mov	dptr,#_pGapRoles_AppCGs
      004692 ED               [12] 1433 	mov	a,r5
      004693 F0               [24] 1434 	movx	@dptr,a
      004694 EE               [12] 1435 	mov	a,r6
      004695 A3               [24] 1436 	inc	dptr
      004696 F0               [24] 1437 	movx	@dptr,a
      004697 EF               [12] 1438 	mov	a,r7
      004698 A3               [24] 1439 	inc	dptr
      004699 F0               [24] 1440 	movx	@dptr,a
      00469A                       1441 00102$:
                                   1442 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:645: gapRole_SetupGAP();
      00469A 12 49 19         [24] 1443 	lcall	_gapRole_SetupGAP
                                   1444 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:647: return ( SUCCESS );
      00469D 75 82 00         [24] 1445 	mov	dpl,#0x00
      0046A0 02 46 A6         [24] 1446 	ljmp	00106$
      0046A3                       1447 00104$:
                                   1448 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:651: return ( bleAlreadyInRequestedMode );
      0046A3 75 82 11         [24] 1449 	mov	dpl,#0x11
      0046A6                       1450 00106$:
      0046A6 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'GAPRole_Init'
                                   1454 ;------------------------------------------------------------
                                   1455 ;task_id                   Allocated with name '_GAPRole_Init_task_id_1_268'
                                   1456 ;------------------------------------------------------------
                                   1457 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:683: void GAPRole_Init( uint8 task_id )
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function GAPRole_Init
                                   1460 ;	-----------------------------------------
      0046A7                       1461 _GAPRole_Init:
      0046A7 E5 82            [12] 1462 	mov	a,dpl
      0046A9 90 11 5F         [24] 1463 	mov	dptr,#_GAPRole_Init_task_id_1_268
      0046AC F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:685: gapRole_TaskID = task_id;
      0046AD E0               [24] 1466 	movx	a,@dptr
      0046AE FF               [12] 1467 	mov	r7,a
      0046AF 90 10 B9         [24] 1468 	mov	dptr,#_gapRole_TaskID
      0046B2 EF               [12] 1469 	mov	a,r7
      0046B3 F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:687: gapRole_state = GAPROLE_INIT;
      0046B4 90 10 BA         [24] 1472 	mov	dptr,#_gapRole_state
      0046B7 74 00            [12] 1473 	mov	a,#0x00
      0046B9 F0               [24] 1474 	movx	@dptr,a
                                   1475 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:693: gapRole_profileRole = GAP_PROFILE_PERIPHERAL;
      0046BA 90 10 BB         [24] 1476 	mov	dptr,#_gapRole_profileRole
      0046BD 74 04            [12] 1477 	mov	a,#0x04
      0046BF F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:694: VOID osal_memset( gapRole_IRK, 0, KEYLEN );
      0046C0 90 03 39         [24] 1480 	mov	dptr,#_osal_memset_PARM_2
      0046C3 74 00            [12] 1481 	mov	a,#0x00
      0046C5 F0               [24] 1482 	movx	@dptr,a
      0046C6 90 03 3A         [24] 1483 	mov	dptr,#_osal_memset_PARM_3
      0046C9 74 10            [12] 1484 	mov	a,#0x10
      0046CB F0               [24] 1485 	movx	@dptr,a
      0046CC 74 00            [12] 1486 	mov	a,#0x00
      0046CE A3               [24] 1487 	inc	dptr
      0046CF F0               [24] 1488 	movx	@dptr,a
      0046D0 75 82 BC         [24] 1489 	mov	dpl,#_gapRole_IRK
      0046D3 75 83 10         [24] 1490 	mov	dph,#(_gapRole_IRK >> 8)
      0046D6 75 F0 00         [24] 1491 	mov	b,#0x00
      0046D9 12 06 AF         [24] 1492 	lcall	_osal_memset
                                   1493 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:695: VOID osal_memset( gapRole_SRK, 0, KEYLEN );
      0046DC 90 03 39         [24] 1494 	mov	dptr,#_osal_memset_PARM_2
      0046DF 74 00            [12] 1495 	mov	a,#0x00
      0046E1 F0               [24] 1496 	movx	@dptr,a
      0046E2 90 03 3A         [24] 1497 	mov	dptr,#_osal_memset_PARM_3
      0046E5 74 10            [12] 1498 	mov	a,#0x10
      0046E7 F0               [24] 1499 	movx	@dptr,a
      0046E8 74 00            [12] 1500 	mov	a,#0x00
      0046EA A3               [24] 1501 	inc	dptr
      0046EB F0               [24] 1502 	movx	@dptr,a
      0046EC 75 82 CC         [24] 1503 	mov	dpl,#_gapRole_SRK
      0046EF 75 83 10         [24] 1504 	mov	dph,#(_gapRole_SRK >> 8)
      0046F2 75 F0 00         [24] 1505 	mov	b,#0x00
      0046F5 12 06 AF         [24] 1506 	lcall	_osal_memset
                                   1507 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:696: gapRole_signCounter = 0;
      0046F8 90 10 DC         [24] 1508 	mov	dptr,#_gapRole_signCounter
      0046FB 74 00            [12] 1509 	mov	a,#0x00
      0046FD F0               [24] 1510 	movx	@dptr,a
      0046FE A3               [24] 1511 	inc	dptr
      0046FF F0               [24] 1512 	movx	@dptr,a
      004700 A3               [24] 1513 	inc	dptr
      004701 F0               [24] 1514 	movx	@dptr,a
      004702 A3               [24] 1515 	inc	dptr
      004703 F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:697: gapRole_AdvEventType = GAP_ADTYPE_ADV_IND;
      004704 90 11 29         [24] 1518 	mov	dptr,#_gapRole_AdvEventType
      004707 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:698: gapRole_AdvDirectType = ADDRTYPE_PUBLIC;
      004708 90 11 2A         [24] 1521 	mov	dptr,#_gapRole_AdvDirectType
      00470B F0               [24] 1522 	movx	@dptr,a
                                   1523 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:699: gapRole_AdvChanMap = GAP_ADVCHAN_ALL;
      00470C 90 11 31         [24] 1524 	mov	dptr,#_gapRole_AdvChanMap
      00470F 74 07            [12] 1525 	mov	a,#0x07
      004711 F0               [24] 1526 	movx	@dptr,a
                                   1527 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:700: gapRole_AdvFilterPolicy = GAP_FILTER_POLICY_ALL;
      004712 90 11 32         [24] 1528 	mov	dptr,#_gapRole_AdvFilterPolicy
      004715 74 00            [12] 1529 	mov	a,#0x00
      004717 F0               [24] 1530 	movx	@dptr,a
      004718                       1531 00101$:
      004718 22               [24] 1532 	ret
                                   1533 ;------------------------------------------------------------
                                   1534 ;Allocation info for local variables in function 'GAPRole_ProcessEvent'
                                   1535 ;------------------------------------------------------------
                                   1536 ;events                    Allocated to stack - _bp -4
                                   1537 ;task_id                   Allocated to registers 
                                   1538 ;params                    Allocated to stack - _bp +1
                                   1539 ;------------------------------------------------------------
                                   1540 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:710: uint16 GAPRole_ProcessEvent( uint8 task_id, uint16 events )__reentrant
                                   1541 ;	-----------------------------------------
                                   1542 ;	 function GAPRole_ProcessEvent
                                   1543 ;	-----------------------------------------
      004719                       1544 _GAPRole_ProcessEvent:
      004719 C0 1D            [24] 1545 	push	_bp
      00471B 85 81 1D         [24] 1546 	mov	_bp,sp
      00471E E5 81            [12] 1547 	mov	a,sp
      004720 24 0A            [12] 1548 	add	a,#0x0A
      004722 F5 81            [12] 1549 	mov	sp,a
                                   1550 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:716: if ( events & START_ADVERTISING_EVT )
      004724 E5 1D            [12] 1551 	mov	a,_bp
      004726 24 FC            [12] 1552 	add	a,#0xfc
      004728 F8               [12] 1553 	mov	r0,a
      004729 E6               [12] 1554 	mov	a,@r0
      00472A 20 E0 03         [24] 1555 	jb	acc.0,00138$
      00472D 02 48 33         [24] 1556 	ljmp	00109$
      004730                       1557 00138$:
                                   1558 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:718: if ( gapRole_AdvEnabled )
      004730 90 10 E6         [24] 1559 	mov	dptr,#_gapRole_AdvEnabled
      004733 E0               [24] 1560 	movx	a,@dptr
      004734 FF               [12] 1561 	mov	r7,a
      004735 EF               [12] 1562 	mov	a,r7
      004736 70 03            [24] 1563 	jnz	00139$
      004738 02 48 20         [24] 1564 	ljmp	00107$
      00473B                       1565 00139$:
                                   1566 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:723: params.eventType = gapRole_AdvEventType;
      00473B A9 1D            [24] 1567 	mov	r1,_bp
      00473D 09               [12] 1568 	inc	r1
      00473E 90 11 29         [24] 1569 	mov	dptr,#_gapRole_AdvEventType
      004741 E0               [24] 1570 	movx	a,@dptr
      004742 FF               [12] 1571 	mov	r7,a
      004743 A7 07            [24] 1572 	mov	@r1,ar7
                                   1573 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:724: params.initiatorAddrType = gapRole_AdvDirectType;
      004745 AF 1D            [24] 1574 	mov	r7,_bp
      004747 0F               [12] 1575 	inc	r7
      004748 EF               [12] 1576 	mov	a,r7
      004749 04               [12] 1577 	inc	a
      00474A F9               [12] 1578 	mov	r1,a
      00474B 90 11 2A         [24] 1579 	mov	dptr,#_gapRole_AdvDirectType
      00474E E0               [24] 1580 	movx	a,@dptr
      00474F FE               [12] 1581 	mov	r6,a
      004750 A7 06            [24] 1582 	mov	@r1,ar6
                                   1583 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:725: VOID osal_memcpy( params.initiatorAddr, gapRole_AdvDirectAddr, B_ADDR_LEN );
      004752 74 02            [12] 1584 	mov	a,#0x02
      004754 2F               [12] 1585 	add	a,r7
      004755 FE               [12] 1586 	mov	r6,a
      004756 7D 00            [12] 1587 	mov	r5,#0x00
      004758 7C 40            [12] 1588 	mov	r4,#0x40
      00475A 90 03 07         [24] 1589 	mov	dptr,#_osal_memcpy_PARM_2
      00475D 74 2B            [12] 1590 	mov	a,#_gapRole_AdvDirectAddr
      00475F F0               [24] 1591 	movx	@dptr,a
      004760 74 11            [12] 1592 	mov	a,#(_gapRole_AdvDirectAddr >> 8)
      004762 A3               [24] 1593 	inc	dptr
      004763 F0               [24] 1594 	movx	@dptr,a
      004764 74 00            [12] 1595 	mov	a,#0x00
      004766 A3               [24] 1596 	inc	dptr
      004767 F0               [24] 1597 	movx	@dptr,a
      004768 90 03 0A         [24] 1598 	mov	dptr,#_osal_memcpy_PARM_3
      00476B 74 06            [12] 1599 	mov	a,#0x06
      00476D F0               [24] 1600 	movx	@dptr,a
      00476E 74 00            [12] 1601 	mov	a,#0x00
      004770 A3               [24] 1602 	inc	dptr
      004771 F0               [24] 1603 	movx	@dptr,a
      004772 8E 82            [24] 1604 	mov	dpl,r6
      004774 8D 83            [24] 1605 	mov	dph,r5
      004776 8C F0            [24] 1606 	mov	b,r4
      004778 C0 07            [24] 1607 	push	ar7
      00477A 12 04 22         [24] 1608 	lcall	_osal_memcpy
      00477D D0 07            [24] 1609 	pop	ar7
                                   1610 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:726: params.channelMap = gapRole_AdvChanMap;
      00477F 74 08            [12] 1611 	mov	a,#0x08
      004781 2F               [12] 1612 	add	a,r7
      004782 F9               [12] 1613 	mov	r1,a
      004783 90 11 31         [24] 1614 	mov	dptr,#_gapRole_AdvChanMap
      004786 E0               [24] 1615 	movx	a,@dptr
      004787 FE               [12] 1616 	mov	r6,a
      004788 A7 06            [24] 1617 	mov	@r1,ar6
                                   1618 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:727: params.filterPolicy = gapRole_AdvFilterPolicy;
      00478A 74 09            [12] 1619 	mov	a,#0x09
      00478C 2F               [12] 1620 	add	a,r7
      00478D F9               [12] 1621 	mov	r1,a
      00478E 90 11 32         [24] 1622 	mov	dptr,#_gapRole_AdvFilterPolicy
      004791 E0               [24] 1623 	movx	a,@dptr
      004792 FE               [12] 1624 	mov	r6,a
      004793 A7 06            [24] 1625 	mov	@r1,ar6
                                   1626 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:729: if ( GAP_MakeDiscoverable( gapRole_TaskID, &params ) != SUCCESS )
      004795 90 10 B9         [24] 1627 	mov	dptr,#_gapRole_TaskID
      004798 E0               [24] 1628 	movx	a,@dptr
      004799 FE               [12] 1629 	mov	r6,a
      00479A 90 11 60         [24] 1630 	mov	dptr,#_GAP_MakeDiscoverable_PARM_2
      00479D EF               [12] 1631 	mov	a,r7
      00479E F0               [24] 1632 	movx	@dptr,a
      00479F 74 00            [12] 1633 	mov	a,#0x00
      0047A1 A3               [24] 1634 	inc	dptr
      0047A2 F0               [24] 1635 	movx	@dptr,a
      0047A3 74 40            [12] 1636 	mov	a,#0x40
      0047A5 A3               [24] 1637 	inc	dptr
      0047A6 F0               [24] 1638 	movx	@dptr,a
      0047A7 8E 82            [24] 1639 	mov	dpl,r6
      0047A9 12 49 35         [24] 1640 	lcall	_GAP_MakeDiscoverable
      0047AC E5 82            [12] 1641 	mov	a,dpl
      0047AE 70 03            [24] 1642 	jnz	00140$
      0047B0 02 48 20         [24] 1643 	ljmp	00107$
      0047B3                       1644 00140$:
                                   1645 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:731: gapRole_state = GAPROLE_ERROR;
      0047B3 90 10 BA         [24] 1646 	mov	dptr,#_gapRole_state
      0047B6 74 06            [12] 1647 	mov	a,#0x06
      0047B8 F0               [24] 1648 	movx	@dptr,a
                                   1649 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:732: if ( pGapRoles_AppCGs && pGapRoles_AppCGs->pfnStateChange )
      0047B9 90 11 35         [24] 1650 	mov	dptr,#_pGapRoles_AppCGs
      0047BC E0               [24] 1651 	movx	a,@dptr
      0047BD FD               [12] 1652 	mov	r5,a
      0047BE A3               [24] 1653 	inc	dptr
      0047BF E0               [24] 1654 	movx	a,@dptr
      0047C0 FE               [12] 1655 	mov	r6,a
      0047C1 A3               [24] 1656 	inc	dptr
      0047C2 E0               [24] 1657 	movx	a,@dptr
      0047C3 FF               [12] 1658 	mov	r7,a
      0047C4 ED               [12] 1659 	mov	a,r5
      0047C5 4E               [12] 1660 	orl	a,r6
      0047C6 70 03            [24] 1661 	jnz	00141$
      0047C8 02 48 20         [24] 1662 	ljmp	00107$
      0047CB                       1663 00141$:
      0047CB 90 11 35         [24] 1664 	mov	dptr,#_pGapRoles_AppCGs
      0047CE E0               [24] 1665 	movx	a,@dptr
      0047CF FD               [12] 1666 	mov	r5,a
      0047D0 A3               [24] 1667 	inc	dptr
      0047D1 E0               [24] 1668 	movx	a,@dptr
      0047D2 FE               [12] 1669 	mov	r6,a
      0047D3 A3               [24] 1670 	inc	dptr
      0047D4 E0               [24] 1671 	movx	a,@dptr
      0047D5 FF               [12] 1672 	mov	r7,a
      0047D6 8D 82            [24] 1673 	mov	dpl,r5
      0047D8 8E 83            [24] 1674 	mov	dph,r6
      0047DA 8F F0            [24] 1675 	mov	b,r7
      0047DC 12 5D 60         [24] 1676 	lcall	__gptrget
      0047DF FD               [12] 1677 	mov	r5,a
      0047E0 A3               [24] 1678 	inc	dptr
      0047E1 12 5D 60         [24] 1679 	lcall	__gptrget
      0047E4 FE               [12] 1680 	mov	r6,a
      0047E5 ED               [12] 1681 	mov	a,r5
      0047E6 4E               [12] 1682 	orl	a,r6
      0047E7 70 03            [24] 1683 	jnz	00142$
      0047E9 02 48 20         [24] 1684 	ljmp	00107$
      0047EC                       1685 00142$:
                                   1686 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:734: pGapRoles_AppCGs->pfnStateChange( gapRole_state );
      0047EC 90 11 35         [24] 1687 	mov	dptr,#_pGapRoles_AppCGs
      0047EF E0               [24] 1688 	movx	a,@dptr
      0047F0 FD               [12] 1689 	mov	r5,a
      0047F1 A3               [24] 1690 	inc	dptr
      0047F2 E0               [24] 1691 	movx	a,@dptr
      0047F3 FE               [12] 1692 	mov	r6,a
      0047F4 A3               [24] 1693 	inc	dptr
      0047F5 E0               [24] 1694 	movx	a,@dptr
      0047F6 FF               [12] 1695 	mov	r7,a
      0047F7 8D 82            [24] 1696 	mov	dpl,r5
      0047F9 8E 83            [24] 1697 	mov	dph,r6
      0047FB 8F F0            [24] 1698 	mov	b,r7
      0047FD 12 5D 60         [24] 1699 	lcall	__gptrget
      004800 FD               [12] 1700 	mov	r5,a
      004801 A3               [24] 1701 	inc	dptr
      004802 12 5D 60         [24] 1702 	lcall	__gptrget
      004805 FE               [12] 1703 	mov	r6,a
      004806 90 10 BA         [24] 1704 	mov	dptr,#_gapRole_state
      004809 E0               [24] 1705 	movx	a,@dptr
      00480A FF               [12] 1706 	mov	r7,a
      00480B C0 06            [24] 1707 	push	ar6
      00480D C0 05            [24] 1708 	push	ar5
      00480F 12 48 15         [24] 1709 	lcall	00143$
      004812 02 48 1C         [24] 1710 	ljmp	00144$
      004815                       1711 00143$:
      004815 C0 05            [24] 1712 	push	ar5
      004817 C0 06            [24] 1713 	push	ar6
      004819 8F 82            [24] 1714 	mov	dpl,r7
      00481B 22               [24] 1715 	ret
      00481C                       1716 00144$:
      00481C D0 05            [24] 1717 	pop	ar5
      00481E D0 06            [24] 1718 	pop	ar6
      004820                       1719 00107$:
                                   1720 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:738: return ( events ^ START_ADVERTISING_EVT );
      004820 E5 1D            [12] 1721 	mov	a,_bp
      004822 24 FC            [12] 1722 	add	a,#0xfc
      004824 F8               [12] 1723 	mov	r0,a
      004825 74 01            [12] 1724 	mov	a,#0x01
      004827 66               [12] 1725 	xrl	a,@r0
      004828 FE               [12] 1726 	mov	r6,a
      004829 08               [12] 1727 	inc	r0
      00482A 86 07            [24] 1728 	mov	ar7,@r0
      00482C 8E 82            [24] 1729 	mov	dpl,r6
      00482E 8F 83            [24] 1730 	mov	dph,r7
      004830 02 48 92         [24] 1731 	ljmp	00115$
      004833                       1732 00109$:
                                   1733 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:776: if(events & CHECK_BLE_STACK){
      004833 E5 1D            [12] 1734 	mov	a,_bp
      004835 24 FC            [12] 1735 	add	a,#0xfc
      004837 F8               [12] 1736 	mov	r0,a
      004838 E6               [12] 1737 	mov	a,@r0
      004839 20 E3 03         [24] 1738 	jb	acc.3,00145$
      00483C 02 48 8C         [24] 1739 	ljmp	00114$
      00483F                       1740 00145$:
                                   1741 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:779: if(CHECK_TIME && BleChecker() == false){
      00483F 12 48 98         [24] 1742 	lcall	_BleChecker
      004842 E5 82            [12] 1743 	mov	a,dpl
      004844 60 03            [24] 1744 	jz	00146$
      004846 02 48 79         [24] 1745 	ljmp	00111$
      004849                       1746 00146$:
                                   1747 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:782: uartWriteString("GAP ble ckecker====\r\n");
      004849 75 82 BF         [24] 1748 	mov	dpl,#___str_0
      00484C 75 83 5D         [24] 1749 	mov	dph,#(___str_0 >> 8)
      00484F 75 F0 80         [24] 1750 	mov	b,#0x80
      004852 12 3C D4         [24] 1751 	lcall	_uartWriteString
                                   1752 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:784: osal_start_timerEx( gapRole_TaskID, CHECK_BLE_STACK, CHECK_TIME );
      004855 90 10 B9         [24] 1753 	mov	dptr,#_gapRole_TaskID
      004858 E0               [24] 1754 	movx	a,@dptr
      004859 FF               [12] 1755 	mov	r7,a
      00485A 90 10 38         [24] 1756 	mov	dptr,#_osal_start_timerEx_PARM_2
      00485D 74 08            [12] 1757 	mov	a,#0x08
      00485F F0               [24] 1758 	movx	@dptr,a
      004860 74 00            [12] 1759 	mov	a,#0x00
      004862 A3               [24] 1760 	inc	dptr
      004863 F0               [24] 1761 	movx	@dptr,a
      004864 90 10 3A         [24] 1762 	mov	dptr,#_osal_start_timerEx_PARM_3
      004867 74 2C            [12] 1763 	mov	a,#0x2C
      004869 F0               [24] 1764 	movx	@dptr,a
      00486A 74 01            [12] 1765 	mov	a,#0x01
      00486C A3               [24] 1766 	inc	dptr
      00486D F0               [24] 1767 	movx	@dptr,a
      00486E 74 00            [12] 1768 	mov	a,#0x00
      004870 A3               [24] 1769 	inc	dptr
      004871 F0               [24] 1770 	movx	@dptr,a
      004872 A3               [24] 1771 	inc	dptr
      004873 F0               [24] 1772 	movx	@dptr,a
      004874 8F 82            [24] 1773 	mov	dpl,r7
      004876 12 27 00         [24] 1774 	lcall	_osal_start_timerEx
      004879                       1775 00111$:
                                   1776 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:793: return ( events ^ CHECK_BLE_STACK );    
      004879 E5 1D            [12] 1777 	mov	a,_bp
      00487B 24 FC            [12] 1778 	add	a,#0xfc
      00487D F8               [12] 1779 	mov	r0,a
      00487E 74 08            [12] 1780 	mov	a,#0x08
      004880 66               [12] 1781 	xrl	a,@r0
      004881 FE               [12] 1782 	mov	r6,a
      004882 08               [12] 1783 	inc	r0
      004883 86 07            [24] 1784 	mov	ar7,@r0
      004885 8E 82            [24] 1785 	mov	dpl,r6
      004887 8F 83            [24] 1786 	mov	dph,r7
      004889 02 48 92         [24] 1787 	ljmp	00115$
      00488C                       1788 00114$:
                                   1789 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:803: return 0;
      00488C 75 82 00         [24] 1790 	mov	dpl,#0x00
      00488F 75 83 00         [24] 1791 	mov	dph,#0x00
      004892                       1792 00115$:
      004892 85 1D 81         [24] 1793 	mov	sp,_bp
      004895 D0 1D            [24] 1794 	pop	_bp
      004897 22               [24] 1795 	ret
                                   1796 ;------------------------------------------------------------
                                   1797 ;Allocation info for local variables in function 'BleChecker'
                                   1798 ;------------------------------------------------------------
                                   1799 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1111: static bool BleChecker(void){
                                   1800 ;	-----------------------------------------
                                   1801 ;	 function BleChecker
                                   1802 ;	-----------------------------------------
      004898                       1803 _BleChecker:
                                   1804 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1115: switch(BleFeedback){
      004898 AF 8E            [24] 1805 	mov	r7,_BleFeedback
      00489A BF 01 03         [24] 1806 	cjne	r7,#0x01,00113$
      00489D 02 48 A9         [24] 1807 	ljmp	00101$
      0048A0                       1808 00113$:
      0048A0 BF 02 03         [24] 1809 	cjne	r7,#0x02,00114$
      0048A3 02 48 CC         [24] 1810 	ljmp	00102$
      0048A6                       1811 00114$:
      0048A6 02 48 DB         [24] 1812 	ljmp	00103$
                                   1813 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1118: case BleStart:
      0048A9                       1814 00101$:
                                   1815 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1120: gapRole_state = GAPROLE_STARTED;
      0048A9 90 10 BA         [24] 1816 	mov	dptr,#_gapRole_state
      0048AC 74 01            [12] 1817 	mov	a,#0x01
      0048AE F0               [24] 1818 	movx	@dptr,a
                                   1819 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1121: osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
      0048AF 90 10 B9         [24] 1820 	mov	dptr,#_gapRole_TaskID
      0048B2 E0               [24] 1821 	movx	a,@dptr
      0048B3 FF               [12] 1822 	mov	r7,a
      0048B4 90 03 C6         [24] 1823 	mov	dptr,#_osal_set_event_PARM_2
      0048B7 74 01            [12] 1824 	mov	a,#0x01
      0048B9 F0               [24] 1825 	movx	@dptr,a
      0048BA 74 00            [12] 1826 	mov	a,#0x00
      0048BC A3               [24] 1827 	inc	dptr
      0048BD F0               [24] 1828 	movx	@dptr,a
      0048BE 8F 82            [24] 1829 	mov	dpl,r7
      0048C0 12 19 84         [24] 1830 	lcall	_osal_set_event
                                   1831 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1122: BleOpr=BleOptClean;
      0048C3 75 AA 00         [24] 1832 	mov	_BleOpr,#0x00
                                   1833 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1123: BleFeedback=BleOptClean;
      0048C6 75 8E 00         [24] 1834 	mov	_BleFeedback,#0x00
                                   1835 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1125: break;
      0048C9 02 48 E1         [24] 1836 	ljmp	00104$
                                   1837 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1127: case BleAdv:
      0048CC                       1838 00102$:
                                   1839 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1129: gapRole_state = GAPROLE_ADVERTISING;
      0048CC 90 10 BA         [24] 1840 	mov	dptr,#_gapRole_state
      0048CF 74 02            [12] 1841 	mov	a,#0x02
      0048D1 F0               [24] 1842 	movx	@dptr,a
                                   1843 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1130: BleOpr=BleOptClean;
      0048D2 75 AA 00         [24] 1844 	mov	_BleOpr,#0x00
                                   1845 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1131: BleFeedback=BleOptClean;
      0048D5 75 8E 00         [24] 1846 	mov	_BleFeedback,#0x00
                                   1847 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1133: break ;
      0048D8 02 48 E1         [24] 1848 	ljmp	00104$
                                   1849 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1136: default:
      0048DB                       1850 00103$:
                                   1851 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1138: return false;
      0048DB 75 82 00         [24] 1852 	mov	dpl,#0x00
      0048DE 02 49 18         [24] 1853 	ljmp	00105$
                                   1854 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1147: }
      0048E1                       1855 00104$:
                                   1856 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1157: pGapRoles_AppCGs->pfnStateChange( gapRole_state );
      0048E1 90 11 35         [24] 1857 	mov	dptr,#_pGapRoles_AppCGs
      0048E4 E0               [24] 1858 	movx	a,@dptr
      0048E5 FD               [12] 1859 	mov	r5,a
      0048E6 A3               [24] 1860 	inc	dptr
      0048E7 E0               [24] 1861 	movx	a,@dptr
      0048E8 FE               [12] 1862 	mov	r6,a
      0048E9 A3               [24] 1863 	inc	dptr
      0048EA E0               [24] 1864 	movx	a,@dptr
      0048EB FF               [12] 1865 	mov	r7,a
      0048EC 8D 82            [24] 1866 	mov	dpl,r5
      0048EE 8E 83            [24] 1867 	mov	dph,r6
      0048F0 8F F0            [24] 1868 	mov	b,r7
      0048F2 12 5D 60         [24] 1869 	lcall	__gptrget
      0048F5 FD               [12] 1870 	mov	r5,a
      0048F6 A3               [24] 1871 	inc	dptr
      0048F7 12 5D 60         [24] 1872 	lcall	__gptrget
      0048FA FE               [12] 1873 	mov	r6,a
      0048FB 90 10 BA         [24] 1874 	mov	dptr,#_gapRole_state
      0048FE E0               [24] 1875 	movx	a,@dptr
      0048FF FF               [12] 1876 	mov	r7,a
      004900 C0 06            [24] 1877 	push	ar6
      004902 C0 05            [24] 1878 	push	ar5
      004904 12 49 0A         [24] 1879 	lcall	00115$
      004907 02 49 11         [24] 1880 	ljmp	00116$
      00490A                       1881 00115$:
      00490A C0 05            [24] 1882 	push	ar5
      00490C C0 06            [24] 1883 	push	ar6
      00490E 8F 82            [24] 1884 	mov	dpl,r7
      004910 22               [24] 1885 	ret
      004911                       1886 00116$:
      004911 D0 05            [24] 1887 	pop	ar5
      004913 D0 06            [24] 1888 	pop	ar6
                                   1889 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1158: return true;
      004915 75 82 01         [24] 1890 	mov	dpl,#0x01
      004918                       1891 00105$:
      004918 22               [24] 1892 	ret
                                   1893 ;------------------------------------------------------------
                                   1894 ;Allocation info for local variables in function 'gapRole_SetupGAP'
                                   1895 ;------------------------------------------------------------
                                   1896 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1177: static void gapRole_SetupGAP( void )
                                   1897 ;	-----------------------------------------
                                   1898 ;	 function gapRole_SetupGAP
                                   1899 ;	-----------------------------------------
      004919                       1900 _gapRole_SetupGAP:
                                   1901 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1180: BleOpr = BleStart;
      004919 75 AA 01         [24] 1902 	mov	_BleOpr,#0x01
                                   1903 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1182: osal_set_event( gapRole_TaskID, CHECK_BLE_STACK);
      00491C 90 10 B9         [24] 1904 	mov	dptr,#_gapRole_TaskID
      00491F E0               [24] 1905 	movx	a,@dptr
      004920 FF               [12] 1906 	mov	r7,a
      004921 90 03 C6         [24] 1907 	mov	dptr,#_osal_set_event_PARM_2
      004924 74 08            [12] 1908 	mov	a,#0x08
      004926 F0               [24] 1909 	movx	@dptr,a
      004927 74 00            [12] 1910 	mov	a,#0x00
      004929 A3               [24] 1911 	inc	dptr
      00492A F0               [24] 1912 	movx	@dptr,a
      00492B 8F 82            [24] 1913 	mov	dpl,r7
      00492D 12 19 84         [24] 1914 	lcall	_osal_set_event
      004930                       1915 00101$:
      004930 22               [24] 1916 	ret
                                   1917 ;------------------------------------------------------------
                                   1918 ;Allocation info for local variables in function 'GAP_EndDiscoverable'
                                   1919 ;------------------------------------------------------------
                                   1920 ;taskID                    Allocated with name '_GAP_EndDiscoverable_taskID_1_283'
                                   1921 ;------------------------------------------------------------
                                   1922 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1193: Status_t GAP_EndDiscoverable( uint8 taskID ){
                                   1923 ;	-----------------------------------------
                                   1924 ;	 function GAP_EndDiscoverable
                                   1925 ;	-----------------------------------------
      004931                       1926 _GAP_EndDiscoverable:
                                   1927 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1196: return SUCCESS;
      004931 75 82 00         [24] 1928 	mov	dpl,#0x00
      004934                       1929 00101$:
      004934 22               [24] 1930 	ret
                                   1931 ;------------------------------------------------------------
                                   1932 ;Allocation info for local variables in function 'GAP_MakeDiscoverable'
                                   1933 ;------------------------------------------------------------
                                   1934 ;pParams                   Allocated with name '_GAP_MakeDiscoverable_PARM_2'
                                   1935 ;taskID                    Allocated with name '_GAP_MakeDiscoverable_taskID_1_285'
                                   1936 ;------------------------------------------------------------
                                   1937 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1204: bStatus_t GAP_MakeDiscoverable( uint8 taskID, gapAdvertisingParams_t *pParams ){
                                   1938 ;	-----------------------------------------
                                   1939 ;	 function GAP_MakeDiscoverable
                                   1940 ;	-----------------------------------------
      004935                       1941 _GAP_MakeDiscoverable:
                                   1942 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1206: BleOpr = BleAdv;
      004935 75 AA 02         [24] 1943 	mov	_BleOpr,#0x02
                                   1944 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1208: osal_set_event( gapRole_TaskID, CHECK_BLE_STACK);  
      004938 90 10 B9         [24] 1945 	mov	dptr,#_gapRole_TaskID
      00493B E0               [24] 1946 	movx	a,@dptr
      00493C FF               [12] 1947 	mov	r7,a
      00493D 90 03 C6         [24] 1948 	mov	dptr,#_osal_set_event_PARM_2
      004940 74 08            [12] 1949 	mov	a,#0x08
      004942 F0               [24] 1950 	movx	@dptr,a
      004943 74 00            [12] 1951 	mov	a,#0x00
      004945 A3               [24] 1952 	inc	dptr
      004946 F0               [24] 1953 	movx	@dptr,a
      004947 8F 82            [24] 1954 	mov	dpl,r7
      004949 12 19 84         [24] 1955 	lcall	_osal_set_event
                                   1956 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1214: return SUCCESS;
      00494C 75 82 00         [24] 1957 	mov	dpl,#0x00
      00494F                       1958 00101$:
      00494F 22               [24] 1959 	ret
                                   1960 ;------------------------------------------------------------
                                   1961 ;Allocation info for local variables in function 'GAP_UpdateAdvertisingData'
                                   1962 ;------------------------------------------------------------
                                   1963 ;adType                    Allocated with name '_GAP_UpdateAdvertisingData_PARM_2'
                                   1964 ;dataLen                   Allocated with name '_GAP_UpdateAdvertisingData_PARM_3'
                                   1965 ;pAdvertData               Allocated with name '_GAP_UpdateAdvertisingData_PARM_4'
                                   1966 ;taskID                    Allocated with name '_GAP_UpdateAdvertisingData_taskID_1_287'
                                   1967 ;------------------------------------------------------------
                                   1968 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1216: bStatus_t GAP_UpdateAdvertisingData( uint8 taskID, uint8 adType,
                                   1969 ;	-----------------------------------------
                                   1970 ;	 function GAP_UpdateAdvertisingData
                                   1971 ;	-----------------------------------------
      004950                       1972 _GAP_UpdateAdvertisingData:
                                   1973 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1220: return SUCCESS;
      004950 75 82 00         [24] 1974 	mov	dpl,#0x00
      004953                       1975 00101$:
      004953 22               [24] 1976 	ret
                                   1977 	.area CSEG    (CODE)
                                   1978 	.area CONST   (CODE)
      005DBF                       1979 ___str_0:
      005DBF 47 41 50 20 62 6C 65  1980 	.ascii "GAP ble ckecker===="
             20 63 6B 65 63 6B 65
             72 3D 3D 3D 3D
      005DD2 0D                    1981 	.db 0x0D
      005DD3 0A                    1982 	.db 0x0A
      005DD4 00                    1983 	.db 0x00
                                   1984 	.area CABS    (ABS,CODE)
