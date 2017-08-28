                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:57 2015
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
      0010C3                         87 _gapRole_TaskID:
      0010C3                         88 	.ds 1
      0010C4                         89 _gapRole_state:
      0010C4                         90 	.ds 1
      0010C5                         91 _gapRole_profileRole:
      0010C5                         92 	.ds 1
      0010C6                         93 _gapRole_IRK:
      0010C6                         94 	.ds 16
      0010D6                         95 _gapRole_SRK:
      0010D6                         96 	.ds 16
      0010E6                         97 _gapRole_signCounter:
      0010E6                         98 	.ds 4
      0010EA                         99 _gapRole_bdAddr:
      0010EA                        100 	.ds 6
      0010F0                        101 _gapRole_AdvEnabled:
      0010F0                        102 	.ds 1
      0010F1                        103 _gapRole_AdvertOffTime:
      0010F1                        104 	.ds 2
      0010F3                        105 _gapRole_AdvertDataLen:
      0010F3                        106 	.ds 1
      0010F4                        107 _gapRole_AdvertData:
      0010F4                        108 	.ds 31
      001113                        109 _gapRole_ScanRspDataLen:
      001113                        110 	.ds 1
      001114                        111 _gapRole_ScanRspData:
      001114                        112 	.ds 31
      001133                        113 _gapRole_AdvEventType:
      001133                        114 	.ds 1
      001134                        115 _gapRole_AdvDirectType:
      001134                        116 	.ds 1
      001135                        117 _gapRole_AdvDirectAddr:
      001135                        118 	.ds 6
      00113B                        119 _gapRole_AdvChanMap:
      00113B                        120 	.ds 1
      00113C                        121 _gapRole_AdvFilterPolicy:
      00113C                        122 	.ds 1
      00113D                        123 _gapRole_RSSIReadRate:
      00113D                        124 	.ds 2
      00113F                        125 _pGapRoles_AppCGs:
      00113F                        126 	.ds 3
      001142                        127 _gapRole_ConnectedDevAddr:
      001142                        128 	.ds 6
      001148                        129 _gapRole_ParamUpdateEnable:
      001148                        130 	.ds 1
      001149                        131 _gapRole_MinConnInterval:
      001149                        132 	.ds 2
      00114B                        133 _gapRole_MaxConnInterval:
      00114B                        134 	.ds 2
      00114D                        135 _gapRole_SlaveLatency:
      00114D                        136 	.ds 2
      00114F                        137 _gapRole_TimeoutMultiplier:
      00114F                        138 	.ds 2
      001151                        139 _gapRole_ConnInterval:
      001151                        140 	.ds 2
      001153                        141 _gapRole_ConnSlaveLatency:
      001153                        142 	.ds 2
      001155                        143 _gapRole_ConnTimeout:
      001155                        144 	.ds 2
      001157                        145 _ParamUpdateNoSuccessOption:
      001157                        146 	.ds 1
      001158                        147 _GAPRole_SetParameter_PARM_2:
      001158                        148 	.ds 1
      001159                        149 _GAPRole_SetParameter_PARM_3:
      001159                        150 	.ds 3
      00115C                        151 _GAPRole_SetParameter_param_1_249:
      00115C                        152 	.ds 2
      00115E                        153 _GAPRole_SetParameter_ret_1_250:
      00115E                        154 	.ds 1
      00115F                        155 _GAPRole_SetParameter_oldAdvEnabled_3_252:
      00115F                        156 	.ds 1
      001160                        157 _GAPRole_GetParameter_PARM_2:
      001160                        158 	.ds 3
      001163                        159 _GAPRole_GetParameter_param_1_258:
      001163                        160 	.ds 2
      001165                        161 _GAPRole_GetParameter_ret_1_259:
      001165                        162 	.ds 1
      001166                        163 _GAPRole_StartDevice_pAppCallbacks_1_263:
      001166                        164 	.ds 3
      001169                        165 _GAPRole_Init_task_id_1_268:
      001169                        166 	.ds 1
      00116A                        167 _GAP_MakeDiscoverable_PARM_2:
      00116A                        168 	.ds 3
      00116D                        169 _GAP_UpdateAdvertisingData_PARM_2:
      00116D                        170 	.ds 1
      00116E                        171 _GAP_UpdateAdvertisingData_PARM_3:
      00116E                        172 	.ds 1
      00116F                        173 _GAP_UpdateAdvertisingData_PARM_4:
      00116F                        174 	.ds 3
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
      0000E8 90 10 F0         [24]  200 	mov	dptr,#_gapRole_AdvEnabled
      0000EB 74 01            [12]  201 	mov	a,#0x01
      0000ED F0               [24]  202 	movx	@dptr,a
                                    203 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:149: static uint16 gapRole_AdvertOffTime = DEFAULT_ADVERT_OFF_TIME;
      0000EE 90 10 F1         [24]  204 	mov	dptr,#_gapRole_AdvertOffTime
      0000F1 74 B8            [12]  205 	mov	a,#0xB8
      0000F3 F0               [24]  206 	movx	@dptr,a
      0000F4 74 0B            [12]  207 	mov	a,#0x0B
      0000F6 A3               [24]  208 	inc	dptr
      0000F7 F0               [24]  209 	movx	@dptr,a
                                    210 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:150: static uint8  gapRole_AdvertDataLen = 3;
      0000F8 90 10 F3         [24]  211 	mov	dptr,#_gapRole_AdvertDataLen
      0000FB 74 03            [12]  212 	mov	a,#0x03
      0000FD F0               [24]  213 	movx	@dptr,a
                                    214 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:151: static uint8  gapRole_AdvertData[B_MAX_ADV_LEN] =
      0000FE 90 10 F4         [24]  215 	mov	dptr,#_gapRole_AdvertData
      000101 14               [12]  216 	dec	a
      000102 F0               [24]  217 	movx	@dptr,a
      000103 90 10 F5         [24]  218 	mov	dptr,#(_gapRole_AdvertData + 0x0001)
      000106 14               [12]  219 	dec	a
      000107 F0               [24]  220 	movx	@dptr,a
      000108 90 10 F6         [24]  221 	mov	dptr,#(_gapRole_AdvertData + 0x0002)
      00010B 74 06            [12]  222 	mov	a,#0x06
      00010D F0               [24]  223 	movx	@dptr,a
      00010E 90 10 F7         [24]  224 	mov	dptr,#(_gapRole_AdvertData + 0x0003)
      000111 74 00            [12]  225 	mov	a,#0x00
      000113 F0               [24]  226 	movx	@dptr,a
      000114 90 10 F8         [24]  227 	mov	dptr,#(_gapRole_AdvertData + 0x0004)
      000117 F0               [24]  228 	movx	@dptr,a
      000118 90 10 F9         [24]  229 	mov	dptr,#(_gapRole_AdvertData + 0x0005)
      00011B F0               [24]  230 	movx	@dptr,a
      00011C 90 10 FA         [24]  231 	mov	dptr,#(_gapRole_AdvertData + 0x0006)
      00011F F0               [24]  232 	movx	@dptr,a
      000120 90 10 FB         [24]  233 	mov	dptr,#(_gapRole_AdvertData + 0x0007)
      000123 F0               [24]  234 	movx	@dptr,a
      000124 90 10 FC         [24]  235 	mov	dptr,#(_gapRole_AdvertData + 0x0008)
      000127 F0               [24]  236 	movx	@dptr,a
      000128 90 10 FD         [24]  237 	mov	dptr,#(_gapRole_AdvertData + 0x0009)
      00012B F0               [24]  238 	movx	@dptr,a
      00012C 90 10 FE         [24]  239 	mov	dptr,#(_gapRole_AdvertData + 0x000a)
      00012F F0               [24]  240 	movx	@dptr,a
      000130 90 10 FF         [24]  241 	mov	dptr,#(_gapRole_AdvertData + 0x000b)
      000133 F0               [24]  242 	movx	@dptr,a
      000134 90 11 00         [24]  243 	mov	dptr,#(_gapRole_AdvertData + 0x000c)
      000137 F0               [24]  244 	movx	@dptr,a
      000138 90 11 01         [24]  245 	mov	dptr,#(_gapRole_AdvertData + 0x000d)
      00013B F0               [24]  246 	movx	@dptr,a
      00013C 90 11 02         [24]  247 	mov	dptr,#(_gapRole_AdvertData + 0x000e)
      00013F F0               [24]  248 	movx	@dptr,a
      000140 90 11 03         [24]  249 	mov	dptr,#(_gapRole_AdvertData + 0x000f)
      000143 F0               [24]  250 	movx	@dptr,a
      000144 90 11 04         [24]  251 	mov	dptr,#(_gapRole_AdvertData + 0x0010)
      000147 F0               [24]  252 	movx	@dptr,a
      000148 90 11 05         [24]  253 	mov	dptr,#(_gapRole_AdvertData + 0x0011)
      00014B F0               [24]  254 	movx	@dptr,a
      00014C 90 11 06         [24]  255 	mov	dptr,#(_gapRole_AdvertData + 0x0012)
      00014F F0               [24]  256 	movx	@dptr,a
      000150 90 11 07         [24]  257 	mov	dptr,#(_gapRole_AdvertData + 0x0013)
      000153 F0               [24]  258 	movx	@dptr,a
      000154 90 11 08         [24]  259 	mov	dptr,#(_gapRole_AdvertData + 0x0014)
      000157 F0               [24]  260 	movx	@dptr,a
      000158 90 11 09         [24]  261 	mov	dptr,#(_gapRole_AdvertData + 0x0015)
      00015B F0               [24]  262 	movx	@dptr,a
      00015C 90 11 0A         [24]  263 	mov	dptr,#(_gapRole_AdvertData + 0x0016)
      00015F F0               [24]  264 	movx	@dptr,a
      000160 90 11 0B         [24]  265 	mov	dptr,#(_gapRole_AdvertData + 0x0017)
      000163 F0               [24]  266 	movx	@dptr,a
      000164 90 11 0C         [24]  267 	mov	dptr,#(_gapRole_AdvertData + 0x0018)
      000167 F0               [24]  268 	movx	@dptr,a
      000168 90 11 0D         [24]  269 	mov	dptr,#(_gapRole_AdvertData + 0x0019)
      00016B F0               [24]  270 	movx	@dptr,a
      00016C 90 11 0E         [24]  271 	mov	dptr,#(_gapRole_AdvertData + 0x001a)
      00016F F0               [24]  272 	movx	@dptr,a
      000170 90 11 0F         [24]  273 	mov	dptr,#(_gapRole_AdvertData + 0x001b)
      000173 F0               [24]  274 	movx	@dptr,a
      000174 90 11 10         [24]  275 	mov	dptr,#(_gapRole_AdvertData + 0x001c)
      000177 F0               [24]  276 	movx	@dptr,a
      000178 90 11 11         [24]  277 	mov	dptr,#(_gapRole_AdvertData + 0x001d)
      00017B F0               [24]  278 	movx	@dptr,a
      00017C 90 11 12         [24]  279 	mov	dptr,#(_gapRole_AdvertData + 0x001e)
      00017F F0               [24]  280 	movx	@dptr,a
                                    281 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:159: static uint8  gapRole_ScanRspDataLen = 0;
      000180 90 11 13         [24]  282 	mov	dptr,#_gapRole_ScanRspDataLen
      000183 F0               [24]  283 	movx	@dptr,a
                                    284 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:160: static uint8  gapRole_ScanRspData[B_MAX_ADV_LEN] = {0};
      000184 90 11 14         [24]  285 	mov	dptr,#_gapRole_ScanRspData
      000187 F0               [24]  286 	movx	@dptr,a
                                    287 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:163: static uint8  gapRole_AdvDirectAddr[B_ADDR_LEN] = {0};
      000188 90 11 35         [24]  288 	mov	dptr,#_gapRole_AdvDirectAddr
      00018B F0               [24]  289 	movx	@dptr,a
                                    290 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:168: static uint16 gapRole_RSSIReadRate = 0;
      00018C 90 11 3D         [24]  291 	mov	dptr,#_gapRole_RSSIReadRate
      00018F F0               [24]  292 	movx	@dptr,a
      000190 A3               [24]  293 	inc	dptr
      000191 F0               [24]  294 	movx	@dptr,a
                                    295 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:170: static gapRolesCBs_t *pGapRoles_AppCGs = NULL;
      000192 90 11 3F         [24]  296 	mov	dptr,#_pGapRoles_AppCGs
      000195 F0               [24]  297 	movx	@dptr,a
      000196 A3               [24]  298 	inc	dptr
      000197 F0               [24]  299 	movx	@dptr,a
      000198 A3               [24]  300 	inc	dptr
      000199 F0               [24]  301 	movx	@dptr,a
                                    302 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:171: static uint8  gapRole_ConnectedDevAddr[B_ADDR_LEN] = {0};
      00019A 90 11 42         [24]  303 	mov	dptr,#_gapRole_ConnectedDevAddr
      00019D F0               [24]  304 	movx	@dptr,a
                                    305 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:173: static uint8  gapRole_ParamUpdateEnable = FALSE;
      00019E 90 11 48         [24]  306 	mov	dptr,#_gapRole_ParamUpdateEnable
      0001A1 F0               [24]  307 	movx	@dptr,a
                                    308 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:174: static uint16 gapRole_MinConnInterval = DEFAULT_MIN_CONN_INTERVAL;
      0001A2 90 11 49         [24]  309 	mov	dptr,#_gapRole_MinConnInterval
      0001A5 74 06            [12]  310 	mov	a,#0x06
      0001A7 F0               [24]  311 	movx	@dptr,a
      0001A8 74 00            [12]  312 	mov	a,#0x00
      0001AA A3               [24]  313 	inc	dptr
      0001AB F0               [24]  314 	movx	@dptr,a
                                    315 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:175: static uint16 gapRole_MaxConnInterval = DEFAULT_MAX_CONN_INTERVAL;
      0001AC 90 11 4B         [24]  316 	mov	dptr,#_gapRole_MaxConnInterval
      0001AF 74 80            [12]  317 	mov	a,#0x80
      0001B1 F0               [24]  318 	movx	@dptr,a
      0001B2 74 0C            [12]  319 	mov	a,#0x0C
      0001B4 A3               [24]  320 	inc	dptr
      0001B5 F0               [24]  321 	movx	@dptr,a
                                    322 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:176: static uint16 gapRole_SlaveLatency = MIN_SLAVE_LATENCY;
      0001B6 90 11 4D         [24]  323 	mov	dptr,#_gapRole_SlaveLatency
      0001B9 74 00            [12]  324 	mov	a,#0x00
      0001BB F0               [24]  325 	movx	@dptr,a
      0001BC A3               [24]  326 	inc	dptr
      0001BD F0               [24]  327 	movx	@dptr,a
                                    328 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:177: static uint16 gapRole_TimeoutMultiplier = DEFAULT_TIMEOUT_MULTIPLIER;
      0001BE 90 11 4F         [24]  329 	mov	dptr,#_gapRole_TimeoutMultiplier
      0001C1 74 E8            [12]  330 	mov	a,#0xE8
      0001C3 F0               [24]  331 	movx	@dptr,a
      0001C4 74 03            [12]  332 	mov	a,#0x03
      0001C6 A3               [24]  333 	inc	dptr
      0001C7 F0               [24]  334 	movx	@dptr,a
                                    335 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:179: static uint16 gapRole_ConnInterval = 0;
      0001C8 90 11 51         [24]  336 	mov	dptr,#_gapRole_ConnInterval
      0001CB 74 00            [12]  337 	mov	a,#0x00
      0001CD F0               [24]  338 	movx	@dptr,a
      0001CE A3               [24]  339 	inc	dptr
      0001CF F0               [24]  340 	movx	@dptr,a
                                    341 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:180: static uint16 gapRole_ConnSlaveLatency = 0;
      0001D0 90 11 53         [24]  342 	mov	dptr,#_gapRole_ConnSlaveLatency
      0001D3 F0               [24]  343 	movx	@dptr,a
      0001D4 A3               [24]  344 	inc	dptr
      0001D5 F0               [24]  345 	movx	@dptr,a
                                    346 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:181: static uint16 gapRole_ConnTimeout = 0;
      0001D6 90 11 55         [24]  347 	mov	dptr,#_gapRole_ConnTimeout
      0001D9 F0               [24]  348 	movx	@dptr,a
      0001DA A3               [24]  349 	inc	dptr
      0001DB F0               [24]  350 	movx	@dptr,a
                                    351 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:183: static uint8 ParamUpdateNoSuccessOption = GAPROLE_NO_ACTION;
      0001DC 90 11 57         [24]  352 	mov	dptr,#_ParamUpdateNoSuccessOption
      0001DF F0               [24]  353 	movx	@dptr,a
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
      0042FA                        376 _GAPRole_SetParameter:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
      0042FA AF 83            [24]  385 	mov	r7,dph
      0042FC E5 82            [12]  386 	mov	a,dpl
      0042FE 90 11 5C         [24]  387 	mov	dptr,#_GAPRole_SetParameter_param_1_249
      004301 F0               [24]  388 	movx	@dptr,a
      004302 EF               [12]  389 	mov	a,r7
      004303 A3               [24]  390 	inc	dptr
      004304 F0               [24]  391 	movx	@dptr,a
                                    392 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:216: bStatus_t ret = SUCCESS;
      004305 90 11 5E         [24]  393 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      004308 74 00            [12]  394 	mov	a,#0x00
      00430A F0               [24]  395 	movx	@dptr,a
                                    396 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:217: switch ( param )
      00430B 90 11 5C         [24]  397 	mov	dptr,#_GAPRole_SetParameter_param_1_249
      00430E E0               [24]  398 	movx	a,@dptr
      00430F FE               [12]  399 	mov	r6,a
      004310 A3               [24]  400 	inc	dptr
      004311 E0               [24]  401 	movx	a,@dptr
      004312 FF               [12]  402 	mov	r7,a
      004313 BE 05 05         [24]  403 	cjne	r6,#0x05,00149$
      004316 BF 03 02         [24]  404 	cjne	r7,#0x03,00149$
      004319 80 03            [24]  405 	sjmp	00150$
      00431B                        406 00149$:
      00431B 02 43 D8         [24]  407 	ljmp	00118$
      00431E                        408 00150$:
                                    409 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:258: if ( len == sizeof( uint8 ) )
      00431E 90 11 58         [24]  410 	mov	dptr,#_GAPRole_SetParameter_PARM_2
      004321 E0               [24]  411 	movx	a,@dptr
      004322 FF               [12]  412 	mov	r7,a
      004323 BF 01 02         [24]  413 	cjne	r7,#0x01,00151$
      004326 80 03            [24]  414 	sjmp	00152$
      004328                        415 00151$:
      004328 02 43 CF         [24]  416 	ljmp	00116$
      00432B                        417 00152$:
                                    418 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:260: uint8 oldAdvEnabled = gapRole_AdvEnabled;
      00432B 90 10 F0         [24]  419 	mov	dptr,#_gapRole_AdvEnabled
      00432E E0               [24]  420 	movx	a,@dptr
      00432F FF               [12]  421 	mov	r7,a
      004330 90 11 5F         [24]  422 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      004333 EF               [12]  423 	mov	a,r7
      004334 F0               [24]  424 	movx	@dptr,a
                                    425 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:261: gapRole_AdvEnabled = *((uint8*)pValue);
      004335 90 11 59         [24]  426 	mov	dptr,#_GAPRole_SetParameter_PARM_3
      004338 E0               [24]  427 	movx	a,@dptr
      004339 FD               [12]  428 	mov	r5,a
      00433A A3               [24]  429 	inc	dptr
      00433B E0               [24]  430 	movx	a,@dptr
      00433C FE               [12]  431 	mov	r6,a
      00433D A3               [24]  432 	inc	dptr
      00433E E0               [24]  433 	movx	a,@dptr
      00433F FF               [12]  434 	mov	r7,a
      004340 8D 82            [24]  435 	mov	dpl,r5
      004342 8E 83            [24]  436 	mov	dph,r6
      004344 8F F0            [24]  437 	mov	b,r7
      004346 12 5B 16         [24]  438 	lcall	__gptrget
      004349 FD               [12]  439 	mov	r5,a
      00434A 90 10 F0         [24]  440 	mov	dptr,#_gapRole_AdvEnabled
      00434D ED               [12]  441 	mov	a,r5
      00434E F0               [24]  442 	movx	@dptr,a
                                    443 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:263: if ( (oldAdvEnabled) && (gapRole_AdvEnabled == FALSE) )
      00434F 90 11 5F         [24]  444 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      004352 E0               [24]  445 	movx	a,@dptr
      004353 FF               [12]  446 	mov	r7,a
      004354 EF               [12]  447 	mov	a,r7
      004355 70 03            [24]  448 	jnz	00153$
      004357 02 43 7F         [24]  449 	ljmp	00112$
      00435A                        450 00153$:
      00435A 90 10 F0         [24]  451 	mov	dptr,#_gapRole_AdvEnabled
      00435D E0               [24]  452 	movx	a,@dptr
      00435E FF               [12]  453 	mov	r7,a
      00435F EF               [12]  454 	mov	a,r7
      004360 60 03            [24]  455 	jz	00154$
      004362 02 43 7F         [24]  456 	ljmp	00112$
      004365                        457 00154$:
                                    458 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:266: if ( gapRole_state == GAPROLE_ADVERTISING )
      004365 90 10 C4         [24]  459 	mov	dptr,#_gapRole_state
      004368 E0               [24]  460 	movx	a,@dptr
      004369 FF               [12]  461 	mov	r7,a
      00436A BF 02 02         [24]  462 	cjne	r7,#0x02,00155$
      00436D 80 03            [24]  463 	sjmp	00156$
      00436F                        464 00155$:
      00436F 02 43 DE         [24]  465 	ljmp	00119$
      004372                        466 00156$:
                                    467 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:268: VOID GAP_EndDiscoverable( gapRole_TaskID );
      004372 90 10 C3         [24]  468 	mov	dptr,#_gapRole_TaskID
      004375 E0               [24]  469 	movx	a,@dptr
      004376 FF               [12]  470 	mov	r7,a
      004377 8F 82            [24]  471 	mov	dpl,r7
      004379 12 4A FA         [24]  472 	lcall	_GAP_EndDiscoverable
      00437C 02 43 DE         [24]  473 	ljmp	00119$
      00437F                        474 00112$:
                                    475 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:271: else if ( (oldAdvEnabled == FALSE) && (gapRole_AdvEnabled) )
      00437F 90 11 5F         [24]  476 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      004382 E0               [24]  477 	movx	a,@dptr
      004383 FF               [12]  478 	mov	r7,a
      004384 EF               [12]  479 	mov	a,r7
      004385 60 03            [24]  480 	jz	00157$
      004387 02 43 DE         [24]  481 	ljmp	00119$
      00438A                        482 00157$:
      00438A 90 10 F0         [24]  483 	mov	dptr,#_gapRole_AdvEnabled
      00438D E0               [24]  484 	movx	a,@dptr
      00438E FF               [12]  485 	mov	r7,a
      00438F EF               [12]  486 	mov	a,r7
      004390 70 03            [24]  487 	jnz	00158$
      004392 02 43 DE         [24]  488 	ljmp	00119$
      004395                        489 00158$:
                                    490 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:274: if ( (gapRole_state == GAPROLE_STARTED)
      004395 90 10 C4         [24]  491 	mov	dptr,#_gapRole_state
      004398 E0               [24]  492 	movx	a,@dptr
      004399 FF               [12]  493 	mov	r7,a
      00439A BF 01 03         [24]  494 	cjne	r7,#0x01,00159$
      00439D 02 43 B8         [24]  495 	ljmp	00104$
      0043A0                        496 00159$:
                                    497 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:275: || (gapRole_state == GAPROLE_WAITING)
      0043A0 90 10 C4         [24]  498 	mov	dptr,#_gapRole_state
      0043A3 E0               [24]  499 	movx	a,@dptr
      0043A4 FF               [12]  500 	mov	r7,a
      0043A5 BF 03 03         [24]  501 	cjne	r7,#0x03,00160$
      0043A8 02 43 B8         [24]  502 	ljmp	00104$
      0043AB                        503 00160$:
                                    504 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:276: || (gapRole_state == GAPROLE_WAITING_AFTER_TIMEOUT) )
      0043AB 90 10 C4         [24]  505 	mov	dptr,#_gapRole_state
      0043AE E0               [24]  506 	movx	a,@dptr
      0043AF FF               [12]  507 	mov	r7,a
      0043B0 BF 04 02         [24]  508 	cjne	r7,#0x04,00161$
      0043B3 80 03            [24]  509 	sjmp	00162$
      0043B5                        510 00161$:
      0043B5 02 43 DE         [24]  511 	ljmp	00119$
      0043B8                        512 00162$:
      0043B8                        513 00104$:
                                    514 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:278: VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
      0043B8 90 10 C3         [24]  515 	mov	dptr,#_gapRole_TaskID
      0043BB E0               [24]  516 	movx	a,@dptr
      0043BC FF               [12]  517 	mov	r7,a
      0043BD 90 03 C6         [24]  518 	mov	dptr,#_osal_set_event_PARM_2
      0043C0 74 01            [12]  519 	mov	a,#0x01
      0043C2 F0               [24]  520 	movx	@dptr,a
      0043C3 74 00            [12]  521 	mov	a,#0x00
      0043C5 A3               [24]  522 	inc	dptr
      0043C6 F0               [24]  523 	movx	@dptr,a
      0043C7 8F 82            [24]  524 	mov	dpl,r7
      0043C9 12 19 62         [24]  525 	lcall	_osal_set_event
      0043CC 02 43 DE         [24]  526 	ljmp	00119$
      0043CF                        527 00116$:
                                    528 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:284: ret = bleInvalidRange;
      0043CF 90 11 5E         [24]  529 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      0043D2 74 18            [12]  530 	mov	a,#0x18
      0043D4 F0               [24]  531 	movx	@dptr,a
                                    532 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:286: break;
      0043D5 02 43 DE         [24]  533 	ljmp	00119$
                                    534 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:490: default:
      0043D8                        535 00118$:
                                    536 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:492: ret = INVALIDPARAMETER;
      0043D8 90 11 5E         [24]  537 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      0043DB 74 02            [12]  538 	mov	a,#0x02
      0043DD F0               [24]  539 	movx	@dptr,a
                                    540 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:495: }
      0043DE                        541 00119$:
                                    542 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:497: return ( ret );
      0043DE 90 11 5E         [24]  543 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      0043E1 E0               [24]  544 	movx	a,@dptr
      0043E2 FF               [12]  545 	mov	r7,a
      0043E3 8F 82            [24]  546 	mov	dpl,r7
      0043E5                        547 00120$:
      0043E5 22               [24]  548 	ret
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
      0043E6                        560 _GAPRole_GetParameter:
      0043E6 AF 83            [24]  561 	mov	r7,dph
      0043E8 E5 82            [12]  562 	mov	a,dpl
      0043EA 90 11 63         [24]  563 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      0043ED F0               [24]  564 	movx	@dptr,a
      0043EE EF               [12]  565 	mov	a,r7
      0043EF A3               [24]  566 	inc	dptr
      0043F0 F0               [24]  567 	movx	@dptr,a
                                    568 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:507: bStatus_t ret = SUCCESS;
      0043F1 90 11 65         [24]  569 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      0043F4 74 00            [12]  570 	mov	a,#0x00
      0043F6 F0               [24]  571 	movx	@dptr,a
                                    572 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:508: switch ( param )
      0043F7 90 11 63         [24]  573 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      0043FA E0               [24]  574 	movx	a,@dptr
      0043FB FE               [12]  575 	mov	r6,a
      0043FC A3               [24]  576 	inc	dptr
      0043FD E0               [24]  577 	movx	a,@dptr
      0043FE FF               [12]  578 	mov	r7,a
      0043FF C3               [12]  579 	clr	c
      004400 EF               [12]  580 	mov	a,r7
      004401 94 03            [12]  581 	subb	a,#0x03
      004403 50 03            [24]  582 	jnc	00142$
      004405 02 47 FE         [24]  583 	ljmp	00126$
      004408                        584 00142$:
      004408 C3               [12]  585 	clr	c
      004409 74 18            [12]  586 	mov	a,#0x18
      00440B 9E               [12]  587 	subb	a,r6
      00440C 74 03            [12]  588 	mov	a,#0x03
      00440E 9F               [12]  589 	subb	a,r7
      00440F 50 03            [24]  590 	jnc	00143$
      004411 02 47 FE         [24]  591 	ljmp	00126$
      004414                        592 00143$:
      004414 EE               [12]  593 	mov	a,r6
      004415 24 0A            [12]  594 	add	a,#(00144$-3-.)
      004417 83               [24]  595 	movc	a,@a+pc
      004418 F5 82            [12]  596 	mov	dpl,a
      00441A EE               [12]  597 	mov	a,r6
      00441B 24 1D            [12]  598 	add	a,#(00145$-3-.)
      00441D 83               [24]  599 	movc	a,@a+pc
      00441E F5 83            [12]  600 	mov	dph,a
      004420 E4               [12]  601 	clr	a
      004421 73               [24]  602 	jmp	@a+dptr
      004422                        603 00144$:
      004422 54                     604 	.db	00101$
      004423 71                     605 	.db	00102$
      004424 A0                     606 	.db	00103$
      004425 CF                     607 	.db	00104$
      004426 04                     608 	.db	00105$
      004427 33                     609 	.db	00106$
      004428 50                     610 	.db	00107$
      004429 75                     611 	.db	00108$
      00442A A9                     612 	.db	00109$
      00442B DD                     613 	.db	00110$
      00442C FA                     614 	.db	00111$
      00442D 17                     615 	.db	00112$
      00442E 46                     616 	.db	00113$
      00442F 63                     617 	.db	00114$
      004430 80                     618 	.db	00115$
      004431 83                     619 	.db	00116$
      004432 A8                     620 	.db	00117$
      004433 CC                     621 	.db	00118$
      004434 F1                     622 	.db	00119$
      004435 16                     623 	.db	00120$
      004436 3B                     624 	.db	00121$
      004437 60                     625 	.db	00122$
      004438 8F                     626 	.db	00123$
      004439 B4                     627 	.db	00124$
      00443A D9                     628 	.db	00125$
      00443B                        629 00145$:
      00443B 44                     630 	.db	00101$>>8
      00443C 44                     631 	.db	00102$>>8
      00443D 44                     632 	.db	00103$>>8
      00443E 44                     633 	.db	00104$>>8
      00443F 45                     634 	.db	00105$>>8
      004440 45                     635 	.db	00106$>>8
      004441 45                     636 	.db	00107$>>8
      004442 45                     637 	.db	00108$>>8
      004443 45                     638 	.db	00109$>>8
      004444 45                     639 	.db	00110$>>8
      004445 45                     640 	.db	00111$>>8
      004446 46                     641 	.db	00112$>>8
      004447 46                     642 	.db	00113$>>8
      004448 46                     643 	.db	00114$>>8
      004449 46                     644 	.db	00115$>>8
      00444A 46                     645 	.db	00116$>>8
      00444B 46                     646 	.db	00117$>>8
      00444C 46                     647 	.db	00118$>>8
      00444D 46                     648 	.db	00119$>>8
      00444E 47                     649 	.db	00120$>>8
      00444F 47                     650 	.db	00121$>>8
      004450 47                     651 	.db	00122$>>8
      004451 47                     652 	.db	00123$>>8
      004452 47                     653 	.db	00124$>>8
      004453 47                     654 	.db	00125$>>8
                                    655 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:510: case GAPROLE_PROFILEROLE:
      004454                        656 00101$:
                                    657 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:511: *((uint8*)pValue) = gapRole_profileRole;
      004454 90 11 60         [24]  658 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004457 E0               [24]  659 	movx	a,@dptr
      004458 FD               [12]  660 	mov	r5,a
      004459 A3               [24]  661 	inc	dptr
      00445A E0               [24]  662 	movx	a,@dptr
      00445B FE               [12]  663 	mov	r6,a
      00445C A3               [24]  664 	inc	dptr
      00445D E0               [24]  665 	movx	a,@dptr
      00445E FF               [12]  666 	mov	r7,a
      00445F 90 10 C5         [24]  667 	mov	dptr,#_gapRole_profileRole
      004462 E0               [24]  668 	movx	a,@dptr
      004463 FC               [12]  669 	mov	r4,a
      004464 8D 82            [24]  670 	mov	dpl,r5
      004466 8E 83            [24]  671 	mov	dph,r6
      004468 8F F0            [24]  672 	mov	b,r7
      00446A EC               [12]  673 	mov	a,r4
      00446B 12 59 AA         [24]  674 	lcall	__gptrput
                                    675 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:512: break;
      00446E 02 48 18         [24]  676 	ljmp	00130$
                                    677 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:514: case GAPROLE_IRK:
      004471                        678 00102$:
                                    679 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:515: VOID osal_memcpy( pValue, gapRole_IRK, KEYLEN ) ;
      004471 90 11 60         [24]  680 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004474 E0               [24]  681 	movx	a,@dptr
      004475 FD               [12]  682 	mov	r5,a
      004476 A3               [24]  683 	inc	dptr
      004477 E0               [24]  684 	movx	a,@dptr
      004478 FE               [12]  685 	mov	r6,a
      004479 A3               [24]  686 	inc	dptr
      00447A E0               [24]  687 	movx	a,@dptr
      00447B FF               [12]  688 	mov	r7,a
      00447C 90 03 07         [24]  689 	mov	dptr,#_osal_memcpy_PARM_2
      00447F 74 C6            [12]  690 	mov	a,#_gapRole_IRK
      004481 F0               [24]  691 	movx	@dptr,a
      004482 74 10            [12]  692 	mov	a,#(_gapRole_IRK >> 8)
      004484 A3               [24]  693 	inc	dptr
      004485 F0               [24]  694 	movx	@dptr,a
      004486 74 00            [12]  695 	mov	a,#0x00
      004488 A3               [24]  696 	inc	dptr
      004489 F0               [24]  697 	movx	@dptr,a
      00448A 90 03 0A         [24]  698 	mov	dptr,#_osal_memcpy_PARM_3
      00448D 74 10            [12]  699 	mov	a,#0x10
      00448F F0               [24]  700 	movx	@dptr,a
      004490 74 00            [12]  701 	mov	a,#0x00
      004492 A3               [24]  702 	inc	dptr
      004493 F0               [24]  703 	movx	@dptr,a
      004494 8D 82            [24]  704 	mov	dpl,r5
      004496 8E 83            [24]  705 	mov	dph,r6
      004498 8F F0            [24]  706 	mov	b,r7
      00449A 12 04 00         [24]  707 	lcall	_osal_memcpy
                                    708 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:516: break;
      00449D 02 48 18         [24]  709 	ljmp	00130$
                                    710 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:518: case GAPROLE_SRK:
      0044A0                        711 00103$:
                                    712 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:519: VOID osal_memcpy( pValue, gapRole_SRK, KEYLEN ) ;
      0044A0 90 11 60         [24]  713 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0044A3 E0               [24]  714 	movx	a,@dptr
      0044A4 FD               [12]  715 	mov	r5,a
      0044A5 A3               [24]  716 	inc	dptr
      0044A6 E0               [24]  717 	movx	a,@dptr
      0044A7 FE               [12]  718 	mov	r6,a
      0044A8 A3               [24]  719 	inc	dptr
      0044A9 E0               [24]  720 	movx	a,@dptr
      0044AA FF               [12]  721 	mov	r7,a
      0044AB 90 03 07         [24]  722 	mov	dptr,#_osal_memcpy_PARM_2
      0044AE 74 D6            [12]  723 	mov	a,#_gapRole_SRK
      0044B0 F0               [24]  724 	movx	@dptr,a
      0044B1 74 10            [12]  725 	mov	a,#(_gapRole_SRK >> 8)
      0044B3 A3               [24]  726 	inc	dptr
      0044B4 F0               [24]  727 	movx	@dptr,a
      0044B5 74 00            [12]  728 	mov	a,#0x00
      0044B7 A3               [24]  729 	inc	dptr
      0044B8 F0               [24]  730 	movx	@dptr,a
      0044B9 90 03 0A         [24]  731 	mov	dptr,#_osal_memcpy_PARM_3
      0044BC 74 10            [12]  732 	mov	a,#0x10
      0044BE F0               [24]  733 	movx	@dptr,a
      0044BF 74 00            [12]  734 	mov	a,#0x00
      0044C1 A3               [24]  735 	inc	dptr
      0044C2 F0               [24]  736 	movx	@dptr,a
      0044C3 8D 82            [24]  737 	mov	dpl,r5
      0044C5 8E 83            [24]  738 	mov	dph,r6
      0044C7 8F F0            [24]  739 	mov	b,r7
      0044C9 12 04 00         [24]  740 	lcall	_osal_memcpy
                                    741 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:520: break;
      0044CC 02 48 18         [24]  742 	ljmp	00130$
                                    743 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:522: case GAPROLE_SIGNCOUNTER:
      0044CF                        744 00104$:
                                    745 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:523: *((uint32*)pValue) = gapRole_signCounter;
      0044CF 90 11 60         [24]  746 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0044D2 E0               [24]  747 	movx	a,@dptr
      0044D3 FD               [12]  748 	mov	r5,a
      0044D4 A3               [24]  749 	inc	dptr
      0044D5 E0               [24]  750 	movx	a,@dptr
      0044D6 FE               [12]  751 	mov	r6,a
      0044D7 A3               [24]  752 	inc	dptr
      0044D8 E0               [24]  753 	movx	a,@dptr
      0044D9 FF               [12]  754 	mov	r7,a
      0044DA 90 10 E6         [24]  755 	mov	dptr,#_gapRole_signCounter
      0044DD E0               [24]  756 	movx	a,@dptr
      0044DE F9               [12]  757 	mov	r1,a
      0044DF A3               [24]  758 	inc	dptr
      0044E0 E0               [24]  759 	movx	a,@dptr
      0044E1 FA               [12]  760 	mov	r2,a
      0044E2 A3               [24]  761 	inc	dptr
      0044E3 E0               [24]  762 	movx	a,@dptr
      0044E4 FB               [12]  763 	mov	r3,a
      0044E5 A3               [24]  764 	inc	dptr
      0044E6 E0               [24]  765 	movx	a,@dptr
      0044E7 FC               [12]  766 	mov	r4,a
      0044E8 8D 82            [24]  767 	mov	dpl,r5
      0044EA 8E 83            [24]  768 	mov	dph,r6
      0044EC 8F F0            [24]  769 	mov	b,r7
      0044EE E9               [12]  770 	mov	a,r1
      0044EF 12 59 AA         [24]  771 	lcall	__gptrput
      0044F2 A3               [24]  772 	inc	dptr
      0044F3 EA               [12]  773 	mov	a,r2
      0044F4 12 59 AA         [24]  774 	lcall	__gptrput
      0044F7 A3               [24]  775 	inc	dptr
      0044F8 EB               [12]  776 	mov	a,r3
      0044F9 12 59 AA         [24]  777 	lcall	__gptrput
      0044FC A3               [24]  778 	inc	dptr
      0044FD EC               [12]  779 	mov	a,r4
      0044FE 12 59 AA         [24]  780 	lcall	__gptrput
                                    781 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:524: break;
      004501 02 48 18         [24]  782 	ljmp	00130$
                                    783 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:526: case GAPROLE_BD_ADDR:
      004504                        784 00105$:
                                    785 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:527: VOID osal_memcpy( pValue, gapRole_bdAddr, B_ADDR_LEN ) ;
      004504 90 11 60         [24]  786 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004507 E0               [24]  787 	movx	a,@dptr
      004508 FD               [12]  788 	mov	r5,a
      004509 A3               [24]  789 	inc	dptr
      00450A E0               [24]  790 	movx	a,@dptr
      00450B FE               [12]  791 	mov	r6,a
      00450C A3               [24]  792 	inc	dptr
      00450D E0               [24]  793 	movx	a,@dptr
      00450E FF               [12]  794 	mov	r7,a
      00450F 90 03 07         [24]  795 	mov	dptr,#_osal_memcpy_PARM_2
      004512 74 EA            [12]  796 	mov	a,#_gapRole_bdAddr
      004514 F0               [24]  797 	movx	@dptr,a
      004515 74 10            [12]  798 	mov	a,#(_gapRole_bdAddr >> 8)
      004517 A3               [24]  799 	inc	dptr
      004518 F0               [24]  800 	movx	@dptr,a
      004519 74 00            [12]  801 	mov	a,#0x00
      00451B A3               [24]  802 	inc	dptr
      00451C F0               [24]  803 	movx	@dptr,a
      00451D 90 03 0A         [24]  804 	mov	dptr,#_osal_memcpy_PARM_3
      004520 74 06            [12]  805 	mov	a,#0x06
      004522 F0               [24]  806 	movx	@dptr,a
      004523 74 00            [12]  807 	mov	a,#0x00
      004525 A3               [24]  808 	inc	dptr
      004526 F0               [24]  809 	movx	@dptr,a
      004527 8D 82            [24]  810 	mov	dpl,r5
      004529 8E 83            [24]  811 	mov	dph,r6
      00452B 8F F0            [24]  812 	mov	b,r7
      00452D 12 04 00         [24]  813 	lcall	_osal_memcpy
                                    814 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:528: break;
      004530 02 48 18         [24]  815 	ljmp	00130$
                                    816 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:530: case GAPROLE_ADVERT_ENABLED:
      004533                        817 00106$:
                                    818 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:531: *((uint8*)pValue) = gapRole_AdvEnabled;
      004533 90 11 60         [24]  819 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004536 E0               [24]  820 	movx	a,@dptr
      004537 FD               [12]  821 	mov	r5,a
      004538 A3               [24]  822 	inc	dptr
      004539 E0               [24]  823 	movx	a,@dptr
      00453A FE               [12]  824 	mov	r6,a
      00453B A3               [24]  825 	inc	dptr
      00453C E0               [24]  826 	movx	a,@dptr
      00453D FF               [12]  827 	mov	r7,a
      00453E 90 10 F0         [24]  828 	mov	dptr,#_gapRole_AdvEnabled
      004541 E0               [24]  829 	movx	a,@dptr
      004542 FC               [12]  830 	mov	r4,a
      004543 8D 82            [24]  831 	mov	dpl,r5
      004545 8E 83            [24]  832 	mov	dph,r6
      004547 8F F0            [24]  833 	mov	b,r7
      004549 EC               [12]  834 	mov	a,r4
      00454A 12 59 AA         [24]  835 	lcall	__gptrput
                                    836 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:532: break;
      00454D 02 48 18         [24]  837 	ljmp	00130$
                                    838 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:534: case GAPROLE_ADVERT_OFF_TIME:
      004550                        839 00107$:
                                    840 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:535: *((uint16*)pValue) = gapRole_AdvertOffTime;
      004550 90 11 60         [24]  841 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004553 E0               [24]  842 	movx	a,@dptr
      004554 FD               [12]  843 	mov	r5,a
      004555 A3               [24]  844 	inc	dptr
      004556 E0               [24]  845 	movx	a,@dptr
      004557 FE               [12]  846 	mov	r6,a
      004558 A3               [24]  847 	inc	dptr
      004559 E0               [24]  848 	movx	a,@dptr
      00455A FF               [12]  849 	mov	r7,a
      00455B 90 10 F1         [24]  850 	mov	dptr,#_gapRole_AdvertOffTime
      00455E E0               [24]  851 	movx	a,@dptr
      00455F FB               [12]  852 	mov	r3,a
      004560 A3               [24]  853 	inc	dptr
      004561 E0               [24]  854 	movx	a,@dptr
      004562 FC               [12]  855 	mov	r4,a
      004563 8D 82            [24]  856 	mov	dpl,r5
      004565 8E 83            [24]  857 	mov	dph,r6
      004567 8F F0            [24]  858 	mov	b,r7
      004569 EB               [12]  859 	mov	a,r3
      00456A 12 59 AA         [24]  860 	lcall	__gptrput
      00456D A3               [24]  861 	inc	dptr
      00456E EC               [12]  862 	mov	a,r4
      00456F 12 59 AA         [24]  863 	lcall	__gptrput
                                    864 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:536: break;
      004572 02 48 18         [24]  865 	ljmp	00130$
                                    866 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:538: case GAPROLE_ADVERT_DATA:
      004575                        867 00108$:
                                    868 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:539: VOID osal_memcpy( pValue , gapRole_AdvertData, gapRole_AdvertDataLen );
      004575 90 11 60         [24]  869 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004578 E0               [24]  870 	movx	a,@dptr
      004579 FD               [12]  871 	mov	r5,a
      00457A A3               [24]  872 	inc	dptr
      00457B E0               [24]  873 	movx	a,@dptr
      00457C FE               [12]  874 	mov	r6,a
      00457D A3               [24]  875 	inc	dptr
      00457E E0               [24]  876 	movx	a,@dptr
      00457F FF               [12]  877 	mov	r7,a
      004580 90 10 F3         [24]  878 	mov	dptr,#_gapRole_AdvertDataLen
      004583 E0               [24]  879 	movx	a,@dptr
      004584 FC               [12]  880 	mov	r4,a
      004585 7B 00            [12]  881 	mov	r3,#0x00
      004587 90 03 07         [24]  882 	mov	dptr,#_osal_memcpy_PARM_2
      00458A 74 F4            [12]  883 	mov	a,#_gapRole_AdvertData
      00458C F0               [24]  884 	movx	@dptr,a
      00458D 74 10            [12]  885 	mov	a,#(_gapRole_AdvertData >> 8)
      00458F A3               [24]  886 	inc	dptr
      004590 F0               [24]  887 	movx	@dptr,a
      004591 74 00            [12]  888 	mov	a,#0x00
      004593 A3               [24]  889 	inc	dptr
      004594 F0               [24]  890 	movx	@dptr,a
      004595 90 03 0A         [24]  891 	mov	dptr,#_osal_memcpy_PARM_3
      004598 EC               [12]  892 	mov	a,r4
      004599 F0               [24]  893 	movx	@dptr,a
      00459A EB               [12]  894 	mov	a,r3
      00459B A3               [24]  895 	inc	dptr
      00459C F0               [24]  896 	movx	@dptr,a
      00459D 8D 82            [24]  897 	mov	dpl,r5
      00459F 8E 83            [24]  898 	mov	dph,r6
      0045A1 8F F0            [24]  899 	mov	b,r7
      0045A3 12 04 00         [24]  900 	lcall	_osal_memcpy
                                    901 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:540: break;
      0045A6 02 48 18         [24]  902 	ljmp	00130$
                                    903 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:542: case GAPROLE_SCAN_RSP_DATA:
      0045A9                        904 00109$:
                                    905 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:543: VOID osal_memcpy( pValue, gapRole_ScanRspData, gapRole_ScanRspDataLen ) ;
      0045A9 90 11 60         [24]  906 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0045AC E0               [24]  907 	movx	a,@dptr
      0045AD FD               [12]  908 	mov	r5,a
      0045AE A3               [24]  909 	inc	dptr
      0045AF E0               [24]  910 	movx	a,@dptr
      0045B0 FE               [12]  911 	mov	r6,a
      0045B1 A3               [24]  912 	inc	dptr
      0045B2 E0               [24]  913 	movx	a,@dptr
      0045B3 FF               [12]  914 	mov	r7,a
      0045B4 90 11 13         [24]  915 	mov	dptr,#_gapRole_ScanRspDataLen
      0045B7 E0               [24]  916 	movx	a,@dptr
      0045B8 FC               [12]  917 	mov	r4,a
      0045B9 7B 00            [12]  918 	mov	r3,#0x00
      0045BB 90 03 07         [24]  919 	mov	dptr,#_osal_memcpy_PARM_2
      0045BE 74 14            [12]  920 	mov	a,#_gapRole_ScanRspData
      0045C0 F0               [24]  921 	movx	@dptr,a
      0045C1 74 11            [12]  922 	mov	a,#(_gapRole_ScanRspData >> 8)
      0045C3 A3               [24]  923 	inc	dptr
      0045C4 F0               [24]  924 	movx	@dptr,a
      0045C5 74 00            [12]  925 	mov	a,#0x00
      0045C7 A3               [24]  926 	inc	dptr
      0045C8 F0               [24]  927 	movx	@dptr,a
      0045C9 90 03 0A         [24]  928 	mov	dptr,#_osal_memcpy_PARM_3
      0045CC EC               [12]  929 	mov	a,r4
      0045CD F0               [24]  930 	movx	@dptr,a
      0045CE EB               [12]  931 	mov	a,r3
      0045CF A3               [24]  932 	inc	dptr
      0045D0 F0               [24]  933 	movx	@dptr,a
      0045D1 8D 82            [24]  934 	mov	dpl,r5
      0045D3 8E 83            [24]  935 	mov	dph,r6
      0045D5 8F F0            [24]  936 	mov	b,r7
      0045D7 12 04 00         [24]  937 	lcall	_osal_memcpy
                                    938 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:544: break;
      0045DA 02 48 18         [24]  939 	ljmp	00130$
                                    940 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:546: case GAPROLE_ADV_EVENT_TYPE:
      0045DD                        941 00110$:
                                    942 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:547: *((uint8*)pValue) = gapRole_AdvEventType;
      0045DD 90 11 60         [24]  943 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0045E0 E0               [24]  944 	movx	a,@dptr
      0045E1 FD               [12]  945 	mov	r5,a
      0045E2 A3               [24]  946 	inc	dptr
      0045E3 E0               [24]  947 	movx	a,@dptr
      0045E4 FE               [12]  948 	mov	r6,a
      0045E5 A3               [24]  949 	inc	dptr
      0045E6 E0               [24]  950 	movx	a,@dptr
      0045E7 FF               [12]  951 	mov	r7,a
      0045E8 90 11 33         [24]  952 	mov	dptr,#_gapRole_AdvEventType
      0045EB E0               [24]  953 	movx	a,@dptr
      0045EC FC               [12]  954 	mov	r4,a
      0045ED 8D 82            [24]  955 	mov	dpl,r5
      0045EF 8E 83            [24]  956 	mov	dph,r6
      0045F1 8F F0            [24]  957 	mov	b,r7
      0045F3 EC               [12]  958 	mov	a,r4
      0045F4 12 59 AA         [24]  959 	lcall	__gptrput
                                    960 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:548: break;
      0045F7 02 48 18         [24]  961 	ljmp	00130$
                                    962 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:550: case GAPROLE_ADV_DIRECT_TYPE:
      0045FA                        963 00111$:
                                    964 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:551: *((uint8*)pValue) = gapRole_AdvDirectType;
      0045FA 90 11 60         [24]  965 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0045FD E0               [24]  966 	movx	a,@dptr
      0045FE FD               [12]  967 	mov	r5,a
      0045FF A3               [24]  968 	inc	dptr
      004600 E0               [24]  969 	movx	a,@dptr
      004601 FE               [12]  970 	mov	r6,a
      004602 A3               [24]  971 	inc	dptr
      004603 E0               [24]  972 	movx	a,@dptr
      004604 FF               [12]  973 	mov	r7,a
      004605 90 11 34         [24]  974 	mov	dptr,#_gapRole_AdvDirectType
      004608 E0               [24]  975 	movx	a,@dptr
      004609 FC               [12]  976 	mov	r4,a
      00460A 8D 82            [24]  977 	mov	dpl,r5
      00460C 8E 83            [24]  978 	mov	dph,r6
      00460E 8F F0            [24]  979 	mov	b,r7
      004610 EC               [12]  980 	mov	a,r4
      004611 12 59 AA         [24]  981 	lcall	__gptrput
                                    982 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:552: break;
      004614 02 48 18         [24]  983 	ljmp	00130$
                                    984 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:554: case GAPROLE_ADV_DIRECT_ADDR:
      004617                        985 00112$:
                                    986 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:555: VOID osal_memcpy( pValue, gapRole_AdvDirectAddr, B_ADDR_LEN ) ;
      004617 90 11 60         [24]  987 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00461A E0               [24]  988 	movx	a,@dptr
      00461B FD               [12]  989 	mov	r5,a
      00461C A3               [24]  990 	inc	dptr
      00461D E0               [24]  991 	movx	a,@dptr
      00461E FE               [12]  992 	mov	r6,a
      00461F A3               [24]  993 	inc	dptr
      004620 E0               [24]  994 	movx	a,@dptr
      004621 FF               [12]  995 	mov	r7,a
      004622 90 03 07         [24]  996 	mov	dptr,#_osal_memcpy_PARM_2
      004625 74 35            [12]  997 	mov	a,#_gapRole_AdvDirectAddr
      004627 F0               [24]  998 	movx	@dptr,a
      004628 74 11            [12]  999 	mov	a,#(_gapRole_AdvDirectAddr >> 8)
      00462A A3               [24] 1000 	inc	dptr
      00462B F0               [24] 1001 	movx	@dptr,a
      00462C 74 00            [12] 1002 	mov	a,#0x00
      00462E A3               [24] 1003 	inc	dptr
      00462F F0               [24] 1004 	movx	@dptr,a
      004630 90 03 0A         [24] 1005 	mov	dptr,#_osal_memcpy_PARM_3
      004633 74 06            [12] 1006 	mov	a,#0x06
      004635 F0               [24] 1007 	movx	@dptr,a
      004636 74 00            [12] 1008 	mov	a,#0x00
      004638 A3               [24] 1009 	inc	dptr
      004639 F0               [24] 1010 	movx	@dptr,a
      00463A 8D 82            [24] 1011 	mov	dpl,r5
      00463C 8E 83            [24] 1012 	mov	dph,r6
      00463E 8F F0            [24] 1013 	mov	b,r7
      004640 12 04 00         [24] 1014 	lcall	_osal_memcpy
                                   1015 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:556: break;
      004643 02 48 18         [24] 1016 	ljmp	00130$
                                   1017 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:558: case GAPROLE_ADV_CHANNEL_MAP:
      004646                       1018 00113$:
                                   1019 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:559: *((uint8*)pValue) = gapRole_AdvChanMap;
      004646 90 11 60         [24] 1020 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004649 E0               [24] 1021 	movx	a,@dptr
      00464A FD               [12] 1022 	mov	r5,a
      00464B A3               [24] 1023 	inc	dptr
      00464C E0               [24] 1024 	movx	a,@dptr
      00464D FE               [12] 1025 	mov	r6,a
      00464E A3               [24] 1026 	inc	dptr
      00464F E0               [24] 1027 	movx	a,@dptr
      004650 FF               [12] 1028 	mov	r7,a
      004651 90 11 3B         [24] 1029 	mov	dptr,#_gapRole_AdvChanMap
      004654 E0               [24] 1030 	movx	a,@dptr
      004655 FC               [12] 1031 	mov	r4,a
      004656 8D 82            [24] 1032 	mov	dpl,r5
      004658 8E 83            [24] 1033 	mov	dph,r6
      00465A 8F F0            [24] 1034 	mov	b,r7
      00465C EC               [12] 1035 	mov	a,r4
      00465D 12 59 AA         [24] 1036 	lcall	__gptrput
                                   1037 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:560: break;
      004660 02 48 18         [24] 1038 	ljmp	00130$
                                   1039 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:562: case GAPROLE_ADV_FILTER_POLICY:
      004663                       1040 00114$:
                                   1041 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:563: *((uint8*)pValue) = gapRole_AdvFilterPolicy;
      004663 90 11 60         [24] 1042 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004666 E0               [24] 1043 	movx	a,@dptr
      004667 FD               [12] 1044 	mov	r5,a
      004668 A3               [24] 1045 	inc	dptr
      004669 E0               [24] 1046 	movx	a,@dptr
      00466A FE               [12] 1047 	mov	r6,a
      00466B A3               [24] 1048 	inc	dptr
      00466C E0               [24] 1049 	movx	a,@dptr
      00466D FF               [12] 1050 	mov	r7,a
      00466E 90 11 3C         [24] 1051 	mov	dptr,#_gapRole_AdvFilterPolicy
      004671 E0               [24] 1052 	movx	a,@dptr
      004672 FC               [12] 1053 	mov	r4,a
      004673 8D 82            [24] 1054 	mov	dpl,r5
      004675 8E 83            [24] 1055 	mov	dph,r6
      004677 8F F0            [24] 1056 	mov	b,r7
      004679 EC               [12] 1057 	mov	a,r4
      00467A 12 59 AA         [24] 1058 	lcall	__gptrput
                                   1059 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:564: break;
      00467D 02 48 18         [24] 1060 	ljmp	00130$
                                   1061 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:566: case GAPROLE_CONNHANDLE:
      004680                       1062 00115$:
                                   1063 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:569: break;
      004680 02 48 18         [24] 1064 	ljmp	00130$
                                   1065 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:571: case GAPROLE_RSSI_READ_RATE:
      004683                       1066 00116$:
                                   1067 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:572: *((uint16*)pValue) = gapRole_RSSIReadRate;
      004683 90 11 60         [24] 1068 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004686 E0               [24] 1069 	movx	a,@dptr
      004687 FD               [12] 1070 	mov	r5,a
      004688 A3               [24] 1071 	inc	dptr
      004689 E0               [24] 1072 	movx	a,@dptr
      00468A FE               [12] 1073 	mov	r6,a
      00468B A3               [24] 1074 	inc	dptr
      00468C E0               [24] 1075 	movx	a,@dptr
      00468D FF               [12] 1076 	mov	r7,a
      00468E 90 11 3D         [24] 1077 	mov	dptr,#_gapRole_RSSIReadRate
      004691 E0               [24] 1078 	movx	a,@dptr
      004692 FB               [12] 1079 	mov	r3,a
      004693 A3               [24] 1080 	inc	dptr
      004694 E0               [24] 1081 	movx	a,@dptr
      004695 FC               [12] 1082 	mov	r4,a
      004696 8D 82            [24] 1083 	mov	dpl,r5
      004698 8E 83            [24] 1084 	mov	dph,r6
      00469A 8F F0            [24] 1085 	mov	b,r7
      00469C EB               [12] 1086 	mov	a,r3
      00469D 12 59 AA         [24] 1087 	lcall	__gptrput
      0046A0 A3               [24] 1088 	inc	dptr
      0046A1 EC               [12] 1089 	mov	a,r4
      0046A2 12 59 AA         [24] 1090 	lcall	__gptrput
                                   1091 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:573: break;
      0046A5 02 48 18         [24] 1092 	ljmp	00130$
                                   1093 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:575: case GAPROLE_PARAM_UPDATE_ENABLE:
      0046A8                       1094 00117$:
                                   1095 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:576: *((uint16*)pValue) = gapRole_ParamUpdateEnable;
      0046A8 90 11 60         [24] 1096 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0046AB E0               [24] 1097 	movx	a,@dptr
      0046AC FD               [12] 1098 	mov	r5,a
      0046AD A3               [24] 1099 	inc	dptr
      0046AE E0               [24] 1100 	movx	a,@dptr
      0046AF FE               [12] 1101 	mov	r6,a
      0046B0 A3               [24] 1102 	inc	dptr
      0046B1 E0               [24] 1103 	movx	a,@dptr
      0046B2 FF               [12] 1104 	mov	r7,a
      0046B3 90 11 48         [24] 1105 	mov	dptr,#_gapRole_ParamUpdateEnable
      0046B6 E0               [24] 1106 	movx	a,@dptr
      0046B7 FC               [12] 1107 	mov	r4,a
      0046B8 7B 00            [12] 1108 	mov	r3,#0x00
      0046BA 8D 82            [24] 1109 	mov	dpl,r5
      0046BC 8E 83            [24] 1110 	mov	dph,r6
      0046BE 8F F0            [24] 1111 	mov	b,r7
      0046C0 EC               [12] 1112 	mov	a,r4
      0046C1 12 59 AA         [24] 1113 	lcall	__gptrput
      0046C4 A3               [24] 1114 	inc	dptr
      0046C5 EB               [12] 1115 	mov	a,r3
      0046C6 12 59 AA         [24] 1116 	lcall	__gptrput
                                   1117 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:577: break;
      0046C9 02 48 18         [24] 1118 	ljmp	00130$
                                   1119 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:579: case GAPROLE_MIN_CONN_INTERVAL:
      0046CC                       1120 00118$:
                                   1121 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:580: *((uint16*)pValue) = gapRole_MinConnInterval;
      0046CC 90 11 60         [24] 1122 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0046CF E0               [24] 1123 	movx	a,@dptr
      0046D0 FD               [12] 1124 	mov	r5,a
      0046D1 A3               [24] 1125 	inc	dptr
      0046D2 E0               [24] 1126 	movx	a,@dptr
      0046D3 FE               [12] 1127 	mov	r6,a
      0046D4 A3               [24] 1128 	inc	dptr
      0046D5 E0               [24] 1129 	movx	a,@dptr
      0046D6 FF               [12] 1130 	mov	r7,a
      0046D7 90 11 49         [24] 1131 	mov	dptr,#_gapRole_MinConnInterval
      0046DA E0               [24] 1132 	movx	a,@dptr
      0046DB FB               [12] 1133 	mov	r3,a
      0046DC A3               [24] 1134 	inc	dptr
      0046DD E0               [24] 1135 	movx	a,@dptr
      0046DE FC               [12] 1136 	mov	r4,a
      0046DF 8D 82            [24] 1137 	mov	dpl,r5
      0046E1 8E 83            [24] 1138 	mov	dph,r6
      0046E3 8F F0            [24] 1139 	mov	b,r7
      0046E5 EB               [12] 1140 	mov	a,r3
      0046E6 12 59 AA         [24] 1141 	lcall	__gptrput
      0046E9 A3               [24] 1142 	inc	dptr
      0046EA EC               [12] 1143 	mov	a,r4
      0046EB 12 59 AA         [24] 1144 	lcall	__gptrput
                                   1145 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:581: break;
      0046EE 02 48 18         [24] 1146 	ljmp	00130$
                                   1147 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:583: case GAPROLE_MAX_CONN_INTERVAL:
      0046F1                       1148 00119$:
                                   1149 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:584: *((uint16*)pValue) = gapRole_MaxConnInterval;
      0046F1 90 11 60         [24] 1150 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0046F4 E0               [24] 1151 	movx	a,@dptr
      0046F5 FD               [12] 1152 	mov	r5,a
      0046F6 A3               [24] 1153 	inc	dptr
      0046F7 E0               [24] 1154 	movx	a,@dptr
      0046F8 FE               [12] 1155 	mov	r6,a
      0046F9 A3               [24] 1156 	inc	dptr
      0046FA E0               [24] 1157 	movx	a,@dptr
      0046FB FF               [12] 1158 	mov	r7,a
      0046FC 90 11 4B         [24] 1159 	mov	dptr,#_gapRole_MaxConnInterval
      0046FF E0               [24] 1160 	movx	a,@dptr
      004700 FB               [12] 1161 	mov	r3,a
      004701 A3               [24] 1162 	inc	dptr
      004702 E0               [24] 1163 	movx	a,@dptr
      004703 FC               [12] 1164 	mov	r4,a
      004704 8D 82            [24] 1165 	mov	dpl,r5
      004706 8E 83            [24] 1166 	mov	dph,r6
      004708 8F F0            [24] 1167 	mov	b,r7
      00470A EB               [12] 1168 	mov	a,r3
      00470B 12 59 AA         [24] 1169 	lcall	__gptrput
      00470E A3               [24] 1170 	inc	dptr
      00470F EC               [12] 1171 	mov	a,r4
      004710 12 59 AA         [24] 1172 	lcall	__gptrput
                                   1173 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:585: break;
      004713 02 48 18         [24] 1174 	ljmp	00130$
                                   1175 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:587: case GAPROLE_SLAVE_LATENCY:
      004716                       1176 00120$:
                                   1177 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:588: *((uint16*)pValue) = gapRole_SlaveLatency;
      004716 90 11 60         [24] 1178 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004719 E0               [24] 1179 	movx	a,@dptr
      00471A FD               [12] 1180 	mov	r5,a
      00471B A3               [24] 1181 	inc	dptr
      00471C E0               [24] 1182 	movx	a,@dptr
      00471D FE               [12] 1183 	mov	r6,a
      00471E A3               [24] 1184 	inc	dptr
      00471F E0               [24] 1185 	movx	a,@dptr
      004720 FF               [12] 1186 	mov	r7,a
      004721 90 11 4D         [24] 1187 	mov	dptr,#_gapRole_SlaveLatency
      004724 E0               [24] 1188 	movx	a,@dptr
      004725 FB               [12] 1189 	mov	r3,a
      004726 A3               [24] 1190 	inc	dptr
      004727 E0               [24] 1191 	movx	a,@dptr
      004728 FC               [12] 1192 	mov	r4,a
      004729 8D 82            [24] 1193 	mov	dpl,r5
      00472B 8E 83            [24] 1194 	mov	dph,r6
      00472D 8F F0            [24] 1195 	mov	b,r7
      00472F EB               [12] 1196 	mov	a,r3
      004730 12 59 AA         [24] 1197 	lcall	__gptrput
      004733 A3               [24] 1198 	inc	dptr
      004734 EC               [12] 1199 	mov	a,r4
      004735 12 59 AA         [24] 1200 	lcall	__gptrput
                                   1201 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:589: break;
      004738 02 48 18         [24] 1202 	ljmp	00130$
                                   1203 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:591: case GAPROLE_TIMEOUT_MULTIPLIER:
      00473B                       1204 00121$:
                                   1205 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:592: *((uint16*)pValue) = gapRole_TimeoutMultiplier;
      00473B 90 11 60         [24] 1206 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00473E E0               [24] 1207 	movx	a,@dptr
      00473F FD               [12] 1208 	mov	r5,a
      004740 A3               [24] 1209 	inc	dptr
      004741 E0               [24] 1210 	movx	a,@dptr
      004742 FE               [12] 1211 	mov	r6,a
      004743 A3               [24] 1212 	inc	dptr
      004744 E0               [24] 1213 	movx	a,@dptr
      004745 FF               [12] 1214 	mov	r7,a
      004746 90 11 4F         [24] 1215 	mov	dptr,#_gapRole_TimeoutMultiplier
      004749 E0               [24] 1216 	movx	a,@dptr
      00474A FB               [12] 1217 	mov	r3,a
      00474B A3               [24] 1218 	inc	dptr
      00474C E0               [24] 1219 	movx	a,@dptr
      00474D FC               [12] 1220 	mov	r4,a
      00474E 8D 82            [24] 1221 	mov	dpl,r5
      004750 8E 83            [24] 1222 	mov	dph,r6
      004752 8F F0            [24] 1223 	mov	b,r7
      004754 EB               [12] 1224 	mov	a,r3
      004755 12 59 AA         [24] 1225 	lcall	__gptrput
      004758 A3               [24] 1226 	inc	dptr
      004759 EC               [12] 1227 	mov	a,r4
      00475A 12 59 AA         [24] 1228 	lcall	__gptrput
                                   1229 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:593: break;
      00475D 02 48 18         [24] 1230 	ljmp	00130$
                                   1231 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:595: case GAPROLE_CONN_BD_ADDR:
      004760                       1232 00122$:
                                   1233 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:596: VOID osal_memcpy( pValue, gapRole_ConnectedDevAddr, B_ADDR_LEN ) ;
      004760 90 11 60         [24] 1234 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004763 E0               [24] 1235 	movx	a,@dptr
      004764 FD               [12] 1236 	mov	r5,a
      004765 A3               [24] 1237 	inc	dptr
      004766 E0               [24] 1238 	movx	a,@dptr
      004767 FE               [12] 1239 	mov	r6,a
      004768 A3               [24] 1240 	inc	dptr
      004769 E0               [24] 1241 	movx	a,@dptr
      00476A FF               [12] 1242 	mov	r7,a
      00476B 90 03 07         [24] 1243 	mov	dptr,#_osal_memcpy_PARM_2
      00476E 74 42            [12] 1244 	mov	a,#_gapRole_ConnectedDevAddr
      004770 F0               [24] 1245 	movx	@dptr,a
      004771 74 11            [12] 1246 	mov	a,#(_gapRole_ConnectedDevAddr >> 8)
      004773 A3               [24] 1247 	inc	dptr
      004774 F0               [24] 1248 	movx	@dptr,a
      004775 74 00            [12] 1249 	mov	a,#0x00
      004777 A3               [24] 1250 	inc	dptr
      004778 F0               [24] 1251 	movx	@dptr,a
      004779 90 03 0A         [24] 1252 	mov	dptr,#_osal_memcpy_PARM_3
      00477C 74 06            [12] 1253 	mov	a,#0x06
      00477E F0               [24] 1254 	movx	@dptr,a
      00477F 74 00            [12] 1255 	mov	a,#0x00
      004781 A3               [24] 1256 	inc	dptr
      004782 F0               [24] 1257 	movx	@dptr,a
      004783 8D 82            [24] 1258 	mov	dpl,r5
      004785 8E 83            [24] 1259 	mov	dph,r6
      004787 8F F0            [24] 1260 	mov	b,r7
      004789 12 04 00         [24] 1261 	lcall	_osal_memcpy
                                   1262 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:597: break;
      00478C 02 48 18         [24] 1263 	ljmp	00130$
                                   1264 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:599: case GAPROLE_CONN_INTERVAL:
      00478F                       1265 00123$:
                                   1266 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:600: *((uint16*)pValue) = gapRole_ConnInterval;
      00478F 90 11 60         [24] 1267 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004792 E0               [24] 1268 	movx	a,@dptr
      004793 FD               [12] 1269 	mov	r5,a
      004794 A3               [24] 1270 	inc	dptr
      004795 E0               [24] 1271 	movx	a,@dptr
      004796 FE               [12] 1272 	mov	r6,a
      004797 A3               [24] 1273 	inc	dptr
      004798 E0               [24] 1274 	movx	a,@dptr
      004799 FF               [12] 1275 	mov	r7,a
      00479A 90 11 51         [24] 1276 	mov	dptr,#_gapRole_ConnInterval
      00479D E0               [24] 1277 	movx	a,@dptr
      00479E FB               [12] 1278 	mov	r3,a
      00479F A3               [24] 1279 	inc	dptr
      0047A0 E0               [24] 1280 	movx	a,@dptr
      0047A1 FC               [12] 1281 	mov	r4,a
      0047A2 8D 82            [24] 1282 	mov	dpl,r5
      0047A4 8E 83            [24] 1283 	mov	dph,r6
      0047A6 8F F0            [24] 1284 	mov	b,r7
      0047A8 EB               [12] 1285 	mov	a,r3
      0047A9 12 59 AA         [24] 1286 	lcall	__gptrput
      0047AC A3               [24] 1287 	inc	dptr
      0047AD EC               [12] 1288 	mov	a,r4
      0047AE 12 59 AA         [24] 1289 	lcall	__gptrput
                                   1290 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:601: break;
      0047B1 02 48 18         [24] 1291 	ljmp	00130$
                                   1292 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:603: case GAPROLE_CONN_LATENCY:
      0047B4                       1293 00124$:
                                   1294 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:604: *((uint16*)pValue) = gapRole_ConnSlaveLatency;
      0047B4 90 11 60         [24] 1295 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0047B7 E0               [24] 1296 	movx	a,@dptr
      0047B8 FD               [12] 1297 	mov	r5,a
      0047B9 A3               [24] 1298 	inc	dptr
      0047BA E0               [24] 1299 	movx	a,@dptr
      0047BB FE               [12] 1300 	mov	r6,a
      0047BC A3               [24] 1301 	inc	dptr
      0047BD E0               [24] 1302 	movx	a,@dptr
      0047BE FF               [12] 1303 	mov	r7,a
      0047BF 90 11 53         [24] 1304 	mov	dptr,#_gapRole_ConnSlaveLatency
      0047C2 E0               [24] 1305 	movx	a,@dptr
      0047C3 FB               [12] 1306 	mov	r3,a
      0047C4 A3               [24] 1307 	inc	dptr
      0047C5 E0               [24] 1308 	movx	a,@dptr
      0047C6 FC               [12] 1309 	mov	r4,a
      0047C7 8D 82            [24] 1310 	mov	dpl,r5
      0047C9 8E 83            [24] 1311 	mov	dph,r6
      0047CB 8F F0            [24] 1312 	mov	b,r7
      0047CD EB               [12] 1313 	mov	a,r3
      0047CE 12 59 AA         [24] 1314 	lcall	__gptrput
      0047D1 A3               [24] 1315 	inc	dptr
      0047D2 EC               [12] 1316 	mov	a,r4
      0047D3 12 59 AA         [24] 1317 	lcall	__gptrput
                                   1318 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:605: break;
      0047D6 02 48 18         [24] 1319 	ljmp	00130$
                                   1320 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:607: case GAPROLE_CONN_TIMEOUT:
      0047D9                       1321 00125$:
                                   1322 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:608: *((uint16*)pValue) = gapRole_ConnTimeout;
      0047D9 90 11 60         [24] 1323 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0047DC E0               [24] 1324 	movx	a,@dptr
      0047DD FD               [12] 1325 	mov	r5,a
      0047DE A3               [24] 1326 	inc	dptr
      0047DF E0               [24] 1327 	movx	a,@dptr
      0047E0 FE               [12] 1328 	mov	r6,a
      0047E1 A3               [24] 1329 	inc	dptr
      0047E2 E0               [24] 1330 	movx	a,@dptr
      0047E3 FF               [12] 1331 	mov	r7,a
      0047E4 90 11 55         [24] 1332 	mov	dptr,#_gapRole_ConnTimeout
      0047E7 E0               [24] 1333 	movx	a,@dptr
      0047E8 FB               [12] 1334 	mov	r3,a
      0047E9 A3               [24] 1335 	inc	dptr
      0047EA E0               [24] 1336 	movx	a,@dptr
      0047EB FC               [12] 1337 	mov	r4,a
      0047EC 8D 82            [24] 1338 	mov	dpl,r5
      0047EE 8E 83            [24] 1339 	mov	dph,r6
      0047F0 8F F0            [24] 1340 	mov	b,r7
      0047F2 EB               [12] 1341 	mov	a,r3
      0047F3 12 59 AA         [24] 1342 	lcall	__gptrput
      0047F6 A3               [24] 1343 	inc	dptr
      0047F7 EC               [12] 1344 	mov	a,r4
      0047F8 12 59 AA         [24] 1345 	lcall	__gptrput
                                   1346 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:609: break;
      0047FB 02 48 18         [24] 1347 	ljmp	00130$
                                   1348 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:611: default:
      0047FE                       1349 00126$:
                                   1350 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:613: if ( param < TGAP_PARAMID_MAX )
      0047FE 90 11 63         [24] 1351 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      004801 E0               [24] 1352 	movx	a,@dptr
      004802 FE               [12] 1353 	mov	r6,a
      004803 A3               [24] 1354 	inc	dptr
      004804 E0               [24] 1355 	movx	a,@dptr
      004805 FF               [12] 1356 	mov	r7,a
      004806 C3               [12] 1357 	clr	c
      004807 EE               [12] 1358 	mov	a,r6
      004808 94 24            [12] 1359 	subb	a,#0x24
      00480A EF               [12] 1360 	mov	a,r7
      00480B 94 00            [12] 1361 	subb	a,#0x00
      00480D 50 03            [24] 1362 	jnc	00146$
      00480F 02 48 18         [24] 1363 	ljmp	00130$
      004812                       1364 00146$:
                                   1365 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:619: ret = INVALIDPARAMETER;
      004812 90 11 65         [24] 1366 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      004815 74 02            [12] 1367 	mov	a,#0x02
      004817 F0               [24] 1368 	movx	@dptr,a
                                   1369 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:622: }
      004818                       1370 00130$:
                                   1371 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:624: return ( ret );
      004818 90 11 65         [24] 1372 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      00481B E0               [24] 1373 	movx	a,@dptr
      00481C FF               [12] 1374 	mov	r7,a
      00481D 8F 82            [24] 1375 	mov	dpl,r7
      00481F                       1376 00131$:
      00481F 22               [24] 1377 	ret
                                   1378 ;------------------------------------------------------------
                                   1379 ;Allocation info for local variables in function 'GAPRole_StartDevice'
                                   1380 ;------------------------------------------------------------
                                   1381 ;pAppCallbacks             Allocated with name '_GAPRole_StartDevice_pAppCallbacks_1_263'
                                   1382 ;------------------------------------------------------------
                                   1383 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:632: bStatus_t GAPRole_StartDevice( gapRolesCBs_t *pAppCallbacks )
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function GAPRole_StartDevice
                                   1386 ;	-----------------------------------------
      004820                       1387 _GAPRole_StartDevice:
      004820 AF F0            [24] 1388 	mov	r7,b
      004822 AE 83            [24] 1389 	mov	r6,dph
      004824 E5 82            [12] 1390 	mov	a,dpl
      004826 90 11 66         [24] 1391 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      004829 F0               [24] 1392 	movx	@dptr,a
      00482A EE               [12] 1393 	mov	a,r6
      00482B A3               [24] 1394 	inc	dptr
      00482C F0               [24] 1395 	movx	@dptr,a
      00482D EF               [12] 1396 	mov	a,r7
      00482E A3               [24] 1397 	inc	dptr
      00482F F0               [24] 1398 	movx	@dptr,a
                                   1399 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:636: if ( gapRole_state == GAPROLE_INIT )
      004830 90 10 C4         [24] 1400 	mov	dptr,#_gapRole_state
      004833 E0               [24] 1401 	movx	a,@dptr
      004834 FF               [12] 1402 	mov	r7,a
      004835 EF               [12] 1403 	mov	a,r7
      004836 60 03            [24] 1404 	jz	00114$
      004838 02 48 6C         [24] 1405 	ljmp	00104$
      00483B                       1406 00114$:
                                   1407 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:639: if ( pAppCallbacks )
      00483B 90 11 66         [24] 1408 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      00483E E0               [24] 1409 	movx	a,@dptr
      00483F FD               [12] 1410 	mov	r5,a
      004840 A3               [24] 1411 	inc	dptr
      004841 E0               [24] 1412 	movx	a,@dptr
      004842 FE               [12] 1413 	mov	r6,a
      004843 A3               [24] 1414 	inc	dptr
      004844 E0               [24] 1415 	movx	a,@dptr
      004845 FF               [12] 1416 	mov	r7,a
      004846 ED               [12] 1417 	mov	a,r5
      004847 4E               [12] 1418 	orl	a,r6
      004848 70 03            [24] 1419 	jnz	00115$
      00484A 02 48 63         [24] 1420 	ljmp	00102$
      00484D                       1421 00115$:
                                   1422 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:641: pGapRoles_AppCGs = pAppCallbacks;
      00484D 90 11 66         [24] 1423 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      004850 E0               [24] 1424 	movx	a,@dptr
      004851 FD               [12] 1425 	mov	r5,a
      004852 A3               [24] 1426 	inc	dptr
      004853 E0               [24] 1427 	movx	a,@dptr
      004854 FE               [12] 1428 	mov	r6,a
      004855 A3               [24] 1429 	inc	dptr
      004856 E0               [24] 1430 	movx	a,@dptr
      004857 FF               [12] 1431 	mov	r7,a
      004858 90 11 3F         [24] 1432 	mov	dptr,#_pGapRoles_AppCGs
      00485B ED               [12] 1433 	mov	a,r5
      00485C F0               [24] 1434 	movx	@dptr,a
      00485D EE               [12] 1435 	mov	a,r6
      00485E A3               [24] 1436 	inc	dptr
      00485F F0               [24] 1437 	movx	@dptr,a
      004860 EF               [12] 1438 	mov	a,r7
      004861 A3               [24] 1439 	inc	dptr
      004862 F0               [24] 1440 	movx	@dptr,a
      004863                       1441 00102$:
                                   1442 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:645: gapRole_SetupGAP();
      004863 12 4A E2         [24] 1443 	lcall	_gapRole_SetupGAP
                                   1444 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:647: return ( SUCCESS );
      004866 75 82 00         [24] 1445 	mov	dpl,#0x00
      004869 02 48 6F         [24] 1446 	ljmp	00106$
      00486C                       1447 00104$:
                                   1448 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:651: return ( bleAlreadyInRequestedMode );
      00486C 75 82 11         [24] 1449 	mov	dpl,#0x11
      00486F                       1450 00106$:
      00486F 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'GAPRole_Init'
                                   1454 ;------------------------------------------------------------
                                   1455 ;task_id                   Allocated with name '_GAPRole_Init_task_id_1_268'
                                   1456 ;------------------------------------------------------------
                                   1457 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:683: void GAPRole_Init( uint8 task_id )
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function GAPRole_Init
                                   1460 ;	-----------------------------------------
      004870                       1461 _GAPRole_Init:
      004870 E5 82            [12] 1462 	mov	a,dpl
      004872 90 11 69         [24] 1463 	mov	dptr,#_GAPRole_Init_task_id_1_268
      004875 F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:685: gapRole_TaskID = task_id;
      004876 E0               [24] 1466 	movx	a,@dptr
      004877 FF               [12] 1467 	mov	r7,a
      004878 90 10 C3         [24] 1468 	mov	dptr,#_gapRole_TaskID
      00487B EF               [12] 1469 	mov	a,r7
      00487C F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:687: gapRole_state = GAPROLE_INIT;
      00487D 90 10 C4         [24] 1472 	mov	dptr,#_gapRole_state
      004880 74 00            [12] 1473 	mov	a,#0x00
      004882 F0               [24] 1474 	movx	@dptr,a
                                   1475 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:693: gapRole_profileRole = GAP_PROFILE_PERIPHERAL;
      004883 90 10 C5         [24] 1476 	mov	dptr,#_gapRole_profileRole
      004886 74 04            [12] 1477 	mov	a,#0x04
      004888 F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:694: VOID osal_memset( gapRole_IRK, 0, KEYLEN );
      004889 90 03 39         [24] 1480 	mov	dptr,#_osal_memset_PARM_2
      00488C 74 00            [12] 1481 	mov	a,#0x00
      00488E F0               [24] 1482 	movx	@dptr,a
      00488F 90 03 3A         [24] 1483 	mov	dptr,#_osal_memset_PARM_3
      004892 74 10            [12] 1484 	mov	a,#0x10
      004894 F0               [24] 1485 	movx	@dptr,a
      004895 74 00            [12] 1486 	mov	a,#0x00
      004897 A3               [24] 1487 	inc	dptr
      004898 F0               [24] 1488 	movx	@dptr,a
      004899 75 82 C6         [24] 1489 	mov	dpl,#_gapRole_IRK
      00489C 75 83 10         [24] 1490 	mov	dph,#(_gapRole_IRK >> 8)
      00489F 75 F0 00         [24] 1491 	mov	b,#0x00
      0048A2 12 06 8D         [24] 1492 	lcall	_osal_memset
                                   1493 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:695: VOID osal_memset( gapRole_SRK, 0, KEYLEN );
      0048A5 90 03 39         [24] 1494 	mov	dptr,#_osal_memset_PARM_2
      0048A8 74 00            [12] 1495 	mov	a,#0x00
      0048AA F0               [24] 1496 	movx	@dptr,a
      0048AB 90 03 3A         [24] 1497 	mov	dptr,#_osal_memset_PARM_3
      0048AE 74 10            [12] 1498 	mov	a,#0x10
      0048B0 F0               [24] 1499 	movx	@dptr,a
      0048B1 74 00            [12] 1500 	mov	a,#0x00
      0048B3 A3               [24] 1501 	inc	dptr
      0048B4 F0               [24] 1502 	movx	@dptr,a
      0048B5 75 82 D6         [24] 1503 	mov	dpl,#_gapRole_SRK
      0048B8 75 83 10         [24] 1504 	mov	dph,#(_gapRole_SRK >> 8)
      0048BB 75 F0 00         [24] 1505 	mov	b,#0x00
      0048BE 12 06 8D         [24] 1506 	lcall	_osal_memset
                                   1507 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:696: gapRole_signCounter = 0;
      0048C1 90 10 E6         [24] 1508 	mov	dptr,#_gapRole_signCounter
      0048C4 74 00            [12] 1509 	mov	a,#0x00
      0048C6 F0               [24] 1510 	movx	@dptr,a
      0048C7 A3               [24] 1511 	inc	dptr
      0048C8 F0               [24] 1512 	movx	@dptr,a
      0048C9 A3               [24] 1513 	inc	dptr
      0048CA F0               [24] 1514 	movx	@dptr,a
      0048CB A3               [24] 1515 	inc	dptr
      0048CC F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:697: gapRole_AdvEventType = GAP_ADTYPE_ADV_IND;
      0048CD 90 11 33         [24] 1518 	mov	dptr,#_gapRole_AdvEventType
      0048D0 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:698: gapRole_AdvDirectType = ADDRTYPE_PUBLIC;
      0048D1 90 11 34         [24] 1521 	mov	dptr,#_gapRole_AdvDirectType
      0048D4 F0               [24] 1522 	movx	@dptr,a
                                   1523 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:699: gapRole_AdvChanMap = GAP_ADVCHAN_ALL;
      0048D5 90 11 3B         [24] 1524 	mov	dptr,#_gapRole_AdvChanMap
      0048D8 74 07            [12] 1525 	mov	a,#0x07
      0048DA F0               [24] 1526 	movx	@dptr,a
                                   1527 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:700: gapRole_AdvFilterPolicy = GAP_FILTER_POLICY_ALL;
      0048DB 90 11 3C         [24] 1528 	mov	dptr,#_gapRole_AdvFilterPolicy
      0048DE 74 00            [12] 1529 	mov	a,#0x00
      0048E0 F0               [24] 1530 	movx	@dptr,a
      0048E1                       1531 00101$:
      0048E1 22               [24] 1532 	ret
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
      0048E2                       1544 _GAPRole_ProcessEvent:
      0048E2 C0 1D            [24] 1545 	push	_bp
      0048E4 85 81 1D         [24] 1546 	mov	_bp,sp
      0048E7 E5 81            [12] 1547 	mov	a,sp
      0048E9 24 0A            [12] 1548 	add	a,#0x0A
      0048EB F5 81            [12] 1549 	mov	sp,a
                                   1550 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:716: if ( events & START_ADVERTISING_EVT )
      0048ED E5 1D            [12] 1551 	mov	a,_bp
      0048EF 24 FC            [12] 1552 	add	a,#0xfc
      0048F1 F8               [12] 1553 	mov	r0,a
      0048F2 E6               [12] 1554 	mov	a,@r0
      0048F3 20 E0 03         [24] 1555 	jb	acc.0,00138$
      0048F6 02 49 FC         [24] 1556 	ljmp	00109$
      0048F9                       1557 00138$:
                                   1558 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:718: if ( gapRole_AdvEnabled )
      0048F9 90 10 F0         [24] 1559 	mov	dptr,#_gapRole_AdvEnabled
      0048FC E0               [24] 1560 	movx	a,@dptr
      0048FD FF               [12] 1561 	mov	r7,a
      0048FE EF               [12] 1562 	mov	a,r7
      0048FF 70 03            [24] 1563 	jnz	00139$
      004901 02 49 E9         [24] 1564 	ljmp	00107$
      004904                       1565 00139$:
                                   1566 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:723: params.eventType = gapRole_AdvEventType;
      004904 A9 1D            [24] 1567 	mov	r1,_bp
      004906 09               [12] 1568 	inc	r1
      004907 90 11 33         [24] 1569 	mov	dptr,#_gapRole_AdvEventType
      00490A E0               [24] 1570 	movx	a,@dptr
      00490B FF               [12] 1571 	mov	r7,a
      00490C A7 07            [24] 1572 	mov	@r1,ar7
                                   1573 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:724: params.initiatorAddrType = gapRole_AdvDirectType;
      00490E AF 1D            [24] 1574 	mov	r7,_bp
      004910 0F               [12] 1575 	inc	r7
      004911 EF               [12] 1576 	mov	a,r7
      004912 04               [12] 1577 	inc	a
      004913 F9               [12] 1578 	mov	r1,a
      004914 90 11 34         [24] 1579 	mov	dptr,#_gapRole_AdvDirectType
      004917 E0               [24] 1580 	movx	a,@dptr
      004918 FE               [12] 1581 	mov	r6,a
      004919 A7 06            [24] 1582 	mov	@r1,ar6
                                   1583 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:725: VOID osal_memcpy( params.initiatorAddr, gapRole_AdvDirectAddr, B_ADDR_LEN );
      00491B 74 02            [12] 1584 	mov	a,#0x02
      00491D 2F               [12] 1585 	add	a,r7
      00491E FE               [12] 1586 	mov	r6,a
      00491F 7D 00            [12] 1587 	mov	r5,#0x00
      004921 7C 40            [12] 1588 	mov	r4,#0x40
      004923 90 03 07         [24] 1589 	mov	dptr,#_osal_memcpy_PARM_2
      004926 74 35            [12] 1590 	mov	a,#_gapRole_AdvDirectAddr
      004928 F0               [24] 1591 	movx	@dptr,a
      004929 74 11            [12] 1592 	mov	a,#(_gapRole_AdvDirectAddr >> 8)
      00492B A3               [24] 1593 	inc	dptr
      00492C F0               [24] 1594 	movx	@dptr,a
      00492D 74 00            [12] 1595 	mov	a,#0x00
      00492F A3               [24] 1596 	inc	dptr
      004930 F0               [24] 1597 	movx	@dptr,a
      004931 90 03 0A         [24] 1598 	mov	dptr,#_osal_memcpy_PARM_3
      004934 74 06            [12] 1599 	mov	a,#0x06
      004936 F0               [24] 1600 	movx	@dptr,a
      004937 74 00            [12] 1601 	mov	a,#0x00
      004939 A3               [24] 1602 	inc	dptr
      00493A F0               [24] 1603 	movx	@dptr,a
      00493B 8E 82            [24] 1604 	mov	dpl,r6
      00493D 8D 83            [24] 1605 	mov	dph,r5
      00493F 8C F0            [24] 1606 	mov	b,r4
      004941 C0 07            [24] 1607 	push	ar7
      004943 12 04 00         [24] 1608 	lcall	_osal_memcpy
      004946 D0 07            [24] 1609 	pop	ar7
                                   1610 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:726: params.channelMap = gapRole_AdvChanMap;
      004948 74 08            [12] 1611 	mov	a,#0x08
      00494A 2F               [12] 1612 	add	a,r7
      00494B F9               [12] 1613 	mov	r1,a
      00494C 90 11 3B         [24] 1614 	mov	dptr,#_gapRole_AdvChanMap
      00494F E0               [24] 1615 	movx	a,@dptr
      004950 FE               [12] 1616 	mov	r6,a
      004951 A7 06            [24] 1617 	mov	@r1,ar6
                                   1618 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:727: params.filterPolicy = gapRole_AdvFilterPolicy;
      004953 74 09            [12] 1619 	mov	a,#0x09
      004955 2F               [12] 1620 	add	a,r7
      004956 F9               [12] 1621 	mov	r1,a
      004957 90 11 3C         [24] 1622 	mov	dptr,#_gapRole_AdvFilterPolicy
      00495A E0               [24] 1623 	movx	a,@dptr
      00495B FE               [12] 1624 	mov	r6,a
      00495C A7 06            [24] 1625 	mov	@r1,ar6
                                   1626 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:729: if ( GAP_MakeDiscoverable( gapRole_TaskID, &params ) != SUCCESS )
      00495E 90 10 C3         [24] 1627 	mov	dptr,#_gapRole_TaskID
      004961 E0               [24] 1628 	movx	a,@dptr
      004962 FE               [12] 1629 	mov	r6,a
      004963 90 11 6A         [24] 1630 	mov	dptr,#_GAP_MakeDiscoverable_PARM_2
      004966 EF               [12] 1631 	mov	a,r7
      004967 F0               [24] 1632 	movx	@dptr,a
      004968 74 00            [12] 1633 	mov	a,#0x00
      00496A A3               [24] 1634 	inc	dptr
      00496B F0               [24] 1635 	movx	@dptr,a
      00496C 74 40            [12] 1636 	mov	a,#0x40
      00496E A3               [24] 1637 	inc	dptr
      00496F F0               [24] 1638 	movx	@dptr,a
      004970 8E 82            [24] 1639 	mov	dpl,r6
      004972 12 4A FE         [24] 1640 	lcall	_GAP_MakeDiscoverable
      004975 E5 82            [12] 1641 	mov	a,dpl
      004977 70 03            [24] 1642 	jnz	00140$
      004979 02 49 E9         [24] 1643 	ljmp	00107$
      00497C                       1644 00140$:
                                   1645 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:731: gapRole_state = GAPROLE_ERROR;
      00497C 90 10 C4         [24] 1646 	mov	dptr,#_gapRole_state
      00497F 74 06            [12] 1647 	mov	a,#0x06
      004981 F0               [24] 1648 	movx	@dptr,a
                                   1649 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:732: if ( pGapRoles_AppCGs && pGapRoles_AppCGs->pfnStateChange )
      004982 90 11 3F         [24] 1650 	mov	dptr,#_pGapRoles_AppCGs
      004985 E0               [24] 1651 	movx	a,@dptr
      004986 FD               [12] 1652 	mov	r5,a
      004987 A3               [24] 1653 	inc	dptr
      004988 E0               [24] 1654 	movx	a,@dptr
      004989 FE               [12] 1655 	mov	r6,a
      00498A A3               [24] 1656 	inc	dptr
      00498B E0               [24] 1657 	movx	a,@dptr
      00498C FF               [12] 1658 	mov	r7,a
      00498D ED               [12] 1659 	mov	a,r5
      00498E 4E               [12] 1660 	orl	a,r6
      00498F 70 03            [24] 1661 	jnz	00141$
      004991 02 49 E9         [24] 1662 	ljmp	00107$
      004994                       1663 00141$:
      004994 90 11 3F         [24] 1664 	mov	dptr,#_pGapRoles_AppCGs
      004997 E0               [24] 1665 	movx	a,@dptr
      004998 FD               [12] 1666 	mov	r5,a
      004999 A3               [24] 1667 	inc	dptr
      00499A E0               [24] 1668 	movx	a,@dptr
      00499B FE               [12] 1669 	mov	r6,a
      00499C A3               [24] 1670 	inc	dptr
      00499D E0               [24] 1671 	movx	a,@dptr
      00499E FF               [12] 1672 	mov	r7,a
      00499F 8D 82            [24] 1673 	mov	dpl,r5
      0049A1 8E 83            [24] 1674 	mov	dph,r6
      0049A3 8F F0            [24] 1675 	mov	b,r7
      0049A5 12 5B 16         [24] 1676 	lcall	__gptrget
      0049A8 FD               [12] 1677 	mov	r5,a
      0049A9 A3               [24] 1678 	inc	dptr
      0049AA 12 5B 16         [24] 1679 	lcall	__gptrget
      0049AD FE               [12] 1680 	mov	r6,a
      0049AE ED               [12] 1681 	mov	a,r5
      0049AF 4E               [12] 1682 	orl	a,r6
      0049B0 70 03            [24] 1683 	jnz	00142$
      0049B2 02 49 E9         [24] 1684 	ljmp	00107$
      0049B5                       1685 00142$:
                                   1686 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:734: pGapRoles_AppCGs->pfnStateChange( gapRole_state );
      0049B5 90 11 3F         [24] 1687 	mov	dptr,#_pGapRoles_AppCGs
      0049B8 E0               [24] 1688 	movx	a,@dptr
      0049B9 FD               [12] 1689 	mov	r5,a
      0049BA A3               [24] 1690 	inc	dptr
      0049BB E0               [24] 1691 	movx	a,@dptr
      0049BC FE               [12] 1692 	mov	r6,a
      0049BD A3               [24] 1693 	inc	dptr
      0049BE E0               [24] 1694 	movx	a,@dptr
      0049BF FF               [12] 1695 	mov	r7,a
      0049C0 8D 82            [24] 1696 	mov	dpl,r5
      0049C2 8E 83            [24] 1697 	mov	dph,r6
      0049C4 8F F0            [24] 1698 	mov	b,r7
      0049C6 12 5B 16         [24] 1699 	lcall	__gptrget
      0049C9 FD               [12] 1700 	mov	r5,a
      0049CA A3               [24] 1701 	inc	dptr
      0049CB 12 5B 16         [24] 1702 	lcall	__gptrget
      0049CE FE               [12] 1703 	mov	r6,a
      0049CF 90 10 C4         [24] 1704 	mov	dptr,#_gapRole_state
      0049D2 E0               [24] 1705 	movx	a,@dptr
      0049D3 FF               [12] 1706 	mov	r7,a
      0049D4 C0 06            [24] 1707 	push	ar6
      0049D6 C0 05            [24] 1708 	push	ar5
      0049D8 12 49 DE         [24] 1709 	lcall	00143$
      0049DB 02 49 E5         [24] 1710 	ljmp	00144$
      0049DE                       1711 00143$:
      0049DE C0 05            [24] 1712 	push	ar5
      0049E0 C0 06            [24] 1713 	push	ar6
      0049E2 8F 82            [24] 1714 	mov	dpl,r7
      0049E4 22               [24] 1715 	ret
      0049E5                       1716 00144$:
      0049E5 D0 05            [24] 1717 	pop	ar5
      0049E7 D0 06            [24] 1718 	pop	ar6
      0049E9                       1719 00107$:
                                   1720 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:738: return ( events ^ START_ADVERTISING_EVT );
      0049E9 E5 1D            [12] 1721 	mov	a,_bp
      0049EB 24 FC            [12] 1722 	add	a,#0xfc
      0049ED F8               [12] 1723 	mov	r0,a
      0049EE 74 01            [12] 1724 	mov	a,#0x01
      0049F0 66               [12] 1725 	xrl	a,@r0
      0049F1 FE               [12] 1726 	mov	r6,a
      0049F2 08               [12] 1727 	inc	r0
      0049F3 86 07            [24] 1728 	mov	ar7,@r0
      0049F5 8E 82            [24] 1729 	mov	dpl,r6
      0049F7 8F 83            [24] 1730 	mov	dph,r7
      0049F9 02 4A 5B         [24] 1731 	ljmp	00115$
      0049FC                       1732 00109$:
                                   1733 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:776: if(events & CHECK_BLE_STACK){
      0049FC E5 1D            [12] 1734 	mov	a,_bp
      0049FE 24 FC            [12] 1735 	add	a,#0xfc
      004A00 F8               [12] 1736 	mov	r0,a
      004A01 E6               [12] 1737 	mov	a,@r0
      004A02 20 E3 03         [24] 1738 	jb	acc.3,00145$
      004A05 02 4A 55         [24] 1739 	ljmp	00114$
      004A08                       1740 00145$:
                                   1741 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:779: if(CHECK_TIME && BleChecker() == false){
      004A08 12 4A 61         [24] 1742 	lcall	_BleChecker
      004A0B E5 82            [12] 1743 	mov	a,dpl
      004A0D 60 03            [24] 1744 	jz	00146$
      004A0F 02 4A 42         [24] 1745 	ljmp	00111$
      004A12                       1746 00146$:
                                   1747 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:782: uartWriteString("GAP ble ckecker====\r\n");
      004A12 75 82 77         [24] 1748 	mov	dpl,#___str_0
      004A15 75 83 5B         [24] 1749 	mov	dph,#(___str_0 >> 8)
      004A18 75 F0 80         [24] 1750 	mov	b,#0x80
      004A1B 12 3C B2         [24] 1751 	lcall	_uartWriteString
                                   1752 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:784: osal_start_timerEx( gapRole_TaskID, CHECK_BLE_STACK, CHECK_TIME );
      004A1E 90 10 C3         [24] 1753 	mov	dptr,#_gapRole_TaskID
      004A21 E0               [24] 1754 	movx	a,@dptr
      004A22 FF               [12] 1755 	mov	r7,a
      004A23 90 10 38         [24] 1756 	mov	dptr,#_osal_start_timerEx_PARM_2
      004A26 74 08            [12] 1757 	mov	a,#0x08
      004A28 F0               [24] 1758 	movx	@dptr,a
      004A29 74 00            [12] 1759 	mov	a,#0x00
      004A2B A3               [24] 1760 	inc	dptr
      004A2C F0               [24] 1761 	movx	@dptr,a
      004A2D 90 10 3A         [24] 1762 	mov	dptr,#_osal_start_timerEx_PARM_3
      004A30 74 2C            [12] 1763 	mov	a,#0x2C
      004A32 F0               [24] 1764 	movx	@dptr,a
      004A33 74 01            [12] 1765 	mov	a,#0x01
      004A35 A3               [24] 1766 	inc	dptr
      004A36 F0               [24] 1767 	movx	@dptr,a
      004A37 74 00            [12] 1768 	mov	a,#0x00
      004A39 A3               [24] 1769 	inc	dptr
      004A3A F0               [24] 1770 	movx	@dptr,a
      004A3B A3               [24] 1771 	inc	dptr
      004A3C F0               [24] 1772 	movx	@dptr,a
      004A3D 8F 82            [24] 1773 	mov	dpl,r7
      004A3F 12 26 DE         [24] 1774 	lcall	_osal_start_timerEx
      004A42                       1775 00111$:
                                   1776 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:793: return ( events ^ CHECK_BLE_STACK );    
      004A42 E5 1D            [12] 1777 	mov	a,_bp
      004A44 24 FC            [12] 1778 	add	a,#0xfc
      004A46 F8               [12] 1779 	mov	r0,a
      004A47 74 08            [12] 1780 	mov	a,#0x08
      004A49 66               [12] 1781 	xrl	a,@r0
      004A4A FE               [12] 1782 	mov	r6,a
      004A4B 08               [12] 1783 	inc	r0
      004A4C 86 07            [24] 1784 	mov	ar7,@r0
      004A4E 8E 82            [24] 1785 	mov	dpl,r6
      004A50 8F 83            [24] 1786 	mov	dph,r7
      004A52 02 4A 5B         [24] 1787 	ljmp	00115$
      004A55                       1788 00114$:
                                   1789 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:803: return 0;
      004A55 75 82 00         [24] 1790 	mov	dpl,#0x00
      004A58 75 83 00         [24] 1791 	mov	dph,#0x00
      004A5B                       1792 00115$:
      004A5B 85 1D 81         [24] 1793 	mov	sp,_bp
      004A5E D0 1D            [24] 1794 	pop	_bp
      004A60 22               [24] 1795 	ret
                                   1796 ;------------------------------------------------------------
                                   1797 ;Allocation info for local variables in function 'BleChecker'
                                   1798 ;------------------------------------------------------------
                                   1799 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1111: static bool BleChecker(void){
                                   1800 ;	-----------------------------------------
                                   1801 ;	 function BleChecker
                                   1802 ;	-----------------------------------------
      004A61                       1803 _BleChecker:
                                   1804 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1115: switch(BleFeedback){
      004A61 AF 8E            [24] 1805 	mov	r7,_BleFeedback
      004A63 BF 01 03         [24] 1806 	cjne	r7,#0x01,00113$
      004A66 02 4A 72         [24] 1807 	ljmp	00101$
      004A69                       1808 00113$:
      004A69 BF 02 03         [24] 1809 	cjne	r7,#0x02,00114$
      004A6C 02 4A 95         [24] 1810 	ljmp	00102$
      004A6F                       1811 00114$:
      004A6F 02 4A A4         [24] 1812 	ljmp	00103$
                                   1813 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1118: case BleStart:
      004A72                       1814 00101$:
                                   1815 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1120: gapRole_state = GAPROLE_STARTED;
      004A72 90 10 C4         [24] 1816 	mov	dptr,#_gapRole_state
      004A75 74 01            [12] 1817 	mov	a,#0x01
      004A77 F0               [24] 1818 	movx	@dptr,a
                                   1819 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1121: osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
      004A78 90 10 C3         [24] 1820 	mov	dptr,#_gapRole_TaskID
      004A7B E0               [24] 1821 	movx	a,@dptr
      004A7C FF               [12] 1822 	mov	r7,a
      004A7D 90 03 C6         [24] 1823 	mov	dptr,#_osal_set_event_PARM_2
      004A80 74 01            [12] 1824 	mov	a,#0x01
      004A82 F0               [24] 1825 	movx	@dptr,a
      004A83 74 00            [12] 1826 	mov	a,#0x00
      004A85 A3               [24] 1827 	inc	dptr
      004A86 F0               [24] 1828 	movx	@dptr,a
      004A87 8F 82            [24] 1829 	mov	dpl,r7
      004A89 12 19 62         [24] 1830 	lcall	_osal_set_event
                                   1831 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1122: BleOpr=BleOptClean;
      004A8C 75 AA 00         [24] 1832 	mov	_BleOpr,#0x00
                                   1833 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1123: BleFeedback=BleOptClean;
      004A8F 75 8E 00         [24] 1834 	mov	_BleFeedback,#0x00
                                   1835 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1125: break;
      004A92 02 4A AA         [24] 1836 	ljmp	00104$
                                   1837 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1127: case BleAdv:
      004A95                       1838 00102$:
                                   1839 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1129: gapRole_state = GAPROLE_ADVERTISING;
      004A95 90 10 C4         [24] 1840 	mov	dptr,#_gapRole_state
      004A98 74 02            [12] 1841 	mov	a,#0x02
      004A9A F0               [24] 1842 	movx	@dptr,a
                                   1843 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1130: BleOpr=BleOptClean;
      004A9B 75 AA 00         [24] 1844 	mov	_BleOpr,#0x00
                                   1845 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1131: BleFeedback=BleOptClean;
      004A9E 75 8E 00         [24] 1846 	mov	_BleFeedback,#0x00
                                   1847 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1133: break ;
      004AA1 02 4A AA         [24] 1848 	ljmp	00104$
                                   1849 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1136: default:
      004AA4                       1850 00103$:
                                   1851 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1138: return false;
      004AA4 75 82 00         [24] 1852 	mov	dpl,#0x00
      004AA7 02 4A E1         [24] 1853 	ljmp	00105$
                                   1854 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1147: }
      004AAA                       1855 00104$:
                                   1856 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1157: pGapRoles_AppCGs->pfnStateChange( gapRole_state );
      004AAA 90 11 3F         [24] 1857 	mov	dptr,#_pGapRoles_AppCGs
      004AAD E0               [24] 1858 	movx	a,@dptr
      004AAE FD               [12] 1859 	mov	r5,a
      004AAF A3               [24] 1860 	inc	dptr
      004AB0 E0               [24] 1861 	movx	a,@dptr
      004AB1 FE               [12] 1862 	mov	r6,a
      004AB2 A3               [24] 1863 	inc	dptr
      004AB3 E0               [24] 1864 	movx	a,@dptr
      004AB4 FF               [12] 1865 	mov	r7,a
      004AB5 8D 82            [24] 1866 	mov	dpl,r5
      004AB7 8E 83            [24] 1867 	mov	dph,r6
      004AB9 8F F0            [24] 1868 	mov	b,r7
      004ABB 12 5B 16         [24] 1869 	lcall	__gptrget
      004ABE FD               [12] 1870 	mov	r5,a
      004ABF A3               [24] 1871 	inc	dptr
      004AC0 12 5B 16         [24] 1872 	lcall	__gptrget
      004AC3 FE               [12] 1873 	mov	r6,a
      004AC4 90 10 C4         [24] 1874 	mov	dptr,#_gapRole_state
      004AC7 E0               [24] 1875 	movx	a,@dptr
      004AC8 FF               [12] 1876 	mov	r7,a
      004AC9 C0 06            [24] 1877 	push	ar6
      004ACB C0 05            [24] 1878 	push	ar5
      004ACD 12 4A D3         [24] 1879 	lcall	00115$
      004AD0 02 4A DA         [24] 1880 	ljmp	00116$
      004AD3                       1881 00115$:
      004AD3 C0 05            [24] 1882 	push	ar5
      004AD5 C0 06            [24] 1883 	push	ar6
      004AD7 8F 82            [24] 1884 	mov	dpl,r7
      004AD9 22               [24] 1885 	ret
      004ADA                       1886 00116$:
      004ADA D0 05            [24] 1887 	pop	ar5
      004ADC D0 06            [24] 1888 	pop	ar6
                                   1889 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1158: return true;
      004ADE 75 82 01         [24] 1890 	mov	dpl,#0x01
      004AE1                       1891 00105$:
      004AE1 22               [24] 1892 	ret
                                   1893 ;------------------------------------------------------------
                                   1894 ;Allocation info for local variables in function 'gapRole_SetupGAP'
                                   1895 ;------------------------------------------------------------
                                   1896 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1177: static void gapRole_SetupGAP( void )
                                   1897 ;	-----------------------------------------
                                   1898 ;	 function gapRole_SetupGAP
                                   1899 ;	-----------------------------------------
      004AE2                       1900 _gapRole_SetupGAP:
                                   1901 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1180: BleOpr = BleStart;
      004AE2 75 AA 01         [24] 1902 	mov	_BleOpr,#0x01
                                   1903 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1182: osal_set_event( gapRole_TaskID, CHECK_BLE_STACK);
      004AE5 90 10 C3         [24] 1904 	mov	dptr,#_gapRole_TaskID
      004AE8 E0               [24] 1905 	movx	a,@dptr
      004AE9 FF               [12] 1906 	mov	r7,a
      004AEA 90 03 C6         [24] 1907 	mov	dptr,#_osal_set_event_PARM_2
      004AED 74 08            [12] 1908 	mov	a,#0x08
      004AEF F0               [24] 1909 	movx	@dptr,a
      004AF0 74 00            [12] 1910 	mov	a,#0x00
      004AF2 A3               [24] 1911 	inc	dptr
      004AF3 F0               [24] 1912 	movx	@dptr,a
      004AF4 8F 82            [24] 1913 	mov	dpl,r7
      004AF6 12 19 62         [24] 1914 	lcall	_osal_set_event
      004AF9                       1915 00101$:
      004AF9 22               [24] 1916 	ret
                                   1917 ;------------------------------------------------------------
                                   1918 ;Allocation info for local variables in function 'GAP_EndDiscoverable'
                                   1919 ;------------------------------------------------------------
                                   1920 ;taskID                    Allocated with name '_GAP_EndDiscoverable_taskID_1_283'
                                   1921 ;------------------------------------------------------------
                                   1922 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1193: Status_t GAP_EndDiscoverable( uint8 taskID ){
                                   1923 ;	-----------------------------------------
                                   1924 ;	 function GAP_EndDiscoverable
                                   1925 ;	-----------------------------------------
      004AFA                       1926 _GAP_EndDiscoverable:
                                   1927 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1196: return SUCCESS;
      004AFA 75 82 00         [24] 1928 	mov	dpl,#0x00
      004AFD                       1929 00101$:
      004AFD 22               [24] 1930 	ret
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
      004AFE                       1941 _GAP_MakeDiscoverable:
                                   1942 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1206: BleOpr = BleAdv;
      004AFE 75 AA 02         [24] 1943 	mov	_BleOpr,#0x02
                                   1944 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1208: osal_set_event( gapRole_TaskID, CHECK_BLE_STACK);  
      004B01 90 10 C3         [24] 1945 	mov	dptr,#_gapRole_TaskID
      004B04 E0               [24] 1946 	movx	a,@dptr
      004B05 FF               [12] 1947 	mov	r7,a
      004B06 90 03 C6         [24] 1948 	mov	dptr,#_osal_set_event_PARM_2
      004B09 74 08            [12] 1949 	mov	a,#0x08
      004B0B F0               [24] 1950 	movx	@dptr,a
      004B0C 74 00            [12] 1951 	mov	a,#0x00
      004B0E A3               [24] 1952 	inc	dptr
      004B0F F0               [24] 1953 	movx	@dptr,a
      004B10 8F 82            [24] 1954 	mov	dpl,r7
      004B12 12 19 62         [24] 1955 	lcall	_osal_set_event
                                   1956 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1214: return SUCCESS;
      004B15 75 82 00         [24] 1957 	mov	dpl,#0x00
      004B18                       1958 00101$:
      004B18 22               [24] 1959 	ret
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
      004B19                       1972 _GAP_UpdateAdvertisingData:
                                   1973 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1220: return SUCCESS;
      004B19 75 82 00         [24] 1974 	mov	dpl,#0x00
      004B1C                       1975 00101$:
      004B1C 22               [24] 1976 	ret
                                   1977 	.area CSEG    (CODE)
                                   1978 	.area CONST   (CODE)
      005B77                       1979 ___str_0:
      005B77 47 41 50 20 62 6C 65  1980 	.ascii "GAP ble ckecker===="
             20 63 6B 65 63 6B 65
             72 3D 3D 3D 3D
      005B8A 0D                    1981 	.db 0x0D
      005B8B 0A                    1982 	.db 0x0A
      005B8C 00                    1983 	.db 0x00
                                   1984 	.area CABS    (ABS,CODE)
