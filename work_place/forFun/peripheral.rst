                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:10:05 2015
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
      0010C6                         87 _gapRole_TaskID:
      0010C6                         88 	.ds 1
      0010C7                         89 _gapRole_state:
      0010C7                         90 	.ds 1
      0010C8                         91 _gapRole_profileRole:
      0010C8                         92 	.ds 1
      0010C9                         93 _gapRole_IRK:
      0010C9                         94 	.ds 16
      0010D9                         95 _gapRole_SRK:
      0010D9                         96 	.ds 16
      0010E9                         97 _gapRole_signCounter:
      0010E9                         98 	.ds 4
      0010ED                         99 _gapRole_bdAddr:
      0010ED                        100 	.ds 6
      0010F3                        101 _gapRole_AdvEnabled:
      0010F3                        102 	.ds 1
      0010F4                        103 _gapRole_AdvertOffTime:
      0010F4                        104 	.ds 2
      0010F6                        105 _gapRole_AdvertDataLen:
      0010F6                        106 	.ds 1
      0010F7                        107 _gapRole_AdvertData:
      0010F7                        108 	.ds 31
      001116                        109 _gapRole_ScanRspDataLen:
      001116                        110 	.ds 1
      001117                        111 _gapRole_ScanRspData:
      001117                        112 	.ds 31
      001136                        113 _gapRole_AdvEventType:
      001136                        114 	.ds 1
      001137                        115 _gapRole_AdvDirectType:
      001137                        116 	.ds 1
      001138                        117 _gapRole_AdvDirectAddr:
      001138                        118 	.ds 6
      00113E                        119 _gapRole_AdvChanMap:
      00113E                        120 	.ds 1
      00113F                        121 _gapRole_AdvFilterPolicy:
      00113F                        122 	.ds 1
      001140                        123 _gapRole_RSSIReadRate:
      001140                        124 	.ds 2
      001142                        125 _pGapRoles_AppCGs:
      001142                        126 	.ds 3
      001145                        127 _gapRole_ConnectedDevAddr:
      001145                        128 	.ds 6
      00114B                        129 _gapRole_ParamUpdateEnable:
      00114B                        130 	.ds 1
      00114C                        131 _gapRole_MinConnInterval:
      00114C                        132 	.ds 2
      00114E                        133 _gapRole_MaxConnInterval:
      00114E                        134 	.ds 2
      001150                        135 _gapRole_SlaveLatency:
      001150                        136 	.ds 2
      001152                        137 _gapRole_TimeoutMultiplier:
      001152                        138 	.ds 2
      001154                        139 _gapRole_ConnInterval:
      001154                        140 	.ds 2
      001156                        141 _gapRole_ConnSlaveLatency:
      001156                        142 	.ds 2
      001158                        143 _gapRole_ConnTimeout:
      001158                        144 	.ds 2
      00115A                        145 _ParamUpdateNoSuccessOption:
      00115A                        146 	.ds 1
      00115B                        147 _GAPRole_SetParameter_PARM_2:
      00115B                        148 	.ds 1
      00115C                        149 _GAPRole_SetParameter_PARM_3:
      00115C                        150 	.ds 3
      00115F                        151 _GAPRole_SetParameter_param_1_249:
      00115F                        152 	.ds 2
      001161                        153 _GAPRole_SetParameter_ret_1_250:
      001161                        154 	.ds 1
      001162                        155 _GAPRole_SetParameter_oldAdvEnabled_3_252:
      001162                        156 	.ds 1
      001163                        157 _GAPRole_GetParameter_PARM_2:
      001163                        158 	.ds 3
      001166                        159 _GAPRole_GetParameter_param_1_258:
      001166                        160 	.ds 2
      001168                        161 _GAPRole_GetParameter_ret_1_259:
      001168                        162 	.ds 1
      001169                        163 _GAPRole_StartDevice_pAppCallbacks_1_263:
      001169                        164 	.ds 3
      00116C                        165 _GAPRole_Init_task_id_1_268:
      00116C                        166 	.ds 1
      00116D                        167 _GAP_MakeDiscoverable_PARM_2:
      00116D                        168 	.ds 3
      001170                        169 _GAP_UpdateAdvertisingData_PARM_2:
      001170                        170 	.ds 1
      001171                        171 _GAP_UpdateAdvertisingData_PARM_3:
      001171                        172 	.ds 1
      001172                        173 _GAP_UpdateAdvertisingData_PARM_4:
      001172                        174 	.ds 3
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
      0000E8 90 10 F3         [24]  200 	mov	dptr,#_gapRole_AdvEnabled
      0000EB 74 01            [12]  201 	mov	a,#0x01
      0000ED F0               [24]  202 	movx	@dptr,a
                                    203 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:149: static uint16 gapRole_AdvertOffTime = DEFAULT_ADVERT_OFF_TIME;
      0000EE 90 10 F4         [24]  204 	mov	dptr,#_gapRole_AdvertOffTime
      0000F1 74 B8            [12]  205 	mov	a,#0xB8
      0000F3 F0               [24]  206 	movx	@dptr,a
      0000F4 74 0B            [12]  207 	mov	a,#0x0B
      0000F6 A3               [24]  208 	inc	dptr
      0000F7 F0               [24]  209 	movx	@dptr,a
                                    210 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:150: static uint8  gapRole_AdvertDataLen = 3;
      0000F8 90 10 F6         [24]  211 	mov	dptr,#_gapRole_AdvertDataLen
      0000FB 74 03            [12]  212 	mov	a,#0x03
      0000FD F0               [24]  213 	movx	@dptr,a
                                    214 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:151: static uint8  gapRole_AdvertData[B_MAX_ADV_LEN] =
      0000FE 90 10 F7         [24]  215 	mov	dptr,#_gapRole_AdvertData
      000101 14               [12]  216 	dec	a
      000102 F0               [24]  217 	movx	@dptr,a
      000103 90 10 F8         [24]  218 	mov	dptr,#(_gapRole_AdvertData + 0x0001)
      000106 14               [12]  219 	dec	a
      000107 F0               [24]  220 	movx	@dptr,a
      000108 90 10 F9         [24]  221 	mov	dptr,#(_gapRole_AdvertData + 0x0002)
      00010B 74 06            [12]  222 	mov	a,#0x06
      00010D F0               [24]  223 	movx	@dptr,a
      00010E 90 10 FA         [24]  224 	mov	dptr,#(_gapRole_AdvertData + 0x0003)
      000111 74 00            [12]  225 	mov	a,#0x00
      000113 F0               [24]  226 	movx	@dptr,a
      000114 90 10 FB         [24]  227 	mov	dptr,#(_gapRole_AdvertData + 0x0004)
      000117 F0               [24]  228 	movx	@dptr,a
      000118 90 10 FC         [24]  229 	mov	dptr,#(_gapRole_AdvertData + 0x0005)
      00011B F0               [24]  230 	movx	@dptr,a
      00011C 90 10 FD         [24]  231 	mov	dptr,#(_gapRole_AdvertData + 0x0006)
      00011F F0               [24]  232 	movx	@dptr,a
      000120 90 10 FE         [24]  233 	mov	dptr,#(_gapRole_AdvertData + 0x0007)
      000123 F0               [24]  234 	movx	@dptr,a
      000124 90 10 FF         [24]  235 	mov	dptr,#(_gapRole_AdvertData + 0x0008)
      000127 F0               [24]  236 	movx	@dptr,a
      000128 90 11 00         [24]  237 	mov	dptr,#(_gapRole_AdvertData + 0x0009)
      00012B F0               [24]  238 	movx	@dptr,a
      00012C 90 11 01         [24]  239 	mov	dptr,#(_gapRole_AdvertData + 0x000a)
      00012F F0               [24]  240 	movx	@dptr,a
      000130 90 11 02         [24]  241 	mov	dptr,#(_gapRole_AdvertData + 0x000b)
      000133 F0               [24]  242 	movx	@dptr,a
      000134 90 11 03         [24]  243 	mov	dptr,#(_gapRole_AdvertData + 0x000c)
      000137 F0               [24]  244 	movx	@dptr,a
      000138 90 11 04         [24]  245 	mov	dptr,#(_gapRole_AdvertData + 0x000d)
      00013B F0               [24]  246 	movx	@dptr,a
      00013C 90 11 05         [24]  247 	mov	dptr,#(_gapRole_AdvertData + 0x000e)
      00013F F0               [24]  248 	movx	@dptr,a
      000140 90 11 06         [24]  249 	mov	dptr,#(_gapRole_AdvertData + 0x000f)
      000143 F0               [24]  250 	movx	@dptr,a
      000144 90 11 07         [24]  251 	mov	dptr,#(_gapRole_AdvertData + 0x0010)
      000147 F0               [24]  252 	movx	@dptr,a
      000148 90 11 08         [24]  253 	mov	dptr,#(_gapRole_AdvertData + 0x0011)
      00014B F0               [24]  254 	movx	@dptr,a
      00014C 90 11 09         [24]  255 	mov	dptr,#(_gapRole_AdvertData + 0x0012)
      00014F F0               [24]  256 	movx	@dptr,a
      000150 90 11 0A         [24]  257 	mov	dptr,#(_gapRole_AdvertData + 0x0013)
      000153 F0               [24]  258 	movx	@dptr,a
      000154 90 11 0B         [24]  259 	mov	dptr,#(_gapRole_AdvertData + 0x0014)
      000157 F0               [24]  260 	movx	@dptr,a
      000158 90 11 0C         [24]  261 	mov	dptr,#(_gapRole_AdvertData + 0x0015)
      00015B F0               [24]  262 	movx	@dptr,a
      00015C 90 11 0D         [24]  263 	mov	dptr,#(_gapRole_AdvertData + 0x0016)
      00015F F0               [24]  264 	movx	@dptr,a
      000160 90 11 0E         [24]  265 	mov	dptr,#(_gapRole_AdvertData + 0x0017)
      000163 F0               [24]  266 	movx	@dptr,a
      000164 90 11 0F         [24]  267 	mov	dptr,#(_gapRole_AdvertData + 0x0018)
      000167 F0               [24]  268 	movx	@dptr,a
      000168 90 11 10         [24]  269 	mov	dptr,#(_gapRole_AdvertData + 0x0019)
      00016B F0               [24]  270 	movx	@dptr,a
      00016C 90 11 11         [24]  271 	mov	dptr,#(_gapRole_AdvertData + 0x001a)
      00016F F0               [24]  272 	movx	@dptr,a
      000170 90 11 12         [24]  273 	mov	dptr,#(_gapRole_AdvertData + 0x001b)
      000173 F0               [24]  274 	movx	@dptr,a
      000174 90 11 13         [24]  275 	mov	dptr,#(_gapRole_AdvertData + 0x001c)
      000177 F0               [24]  276 	movx	@dptr,a
      000178 90 11 14         [24]  277 	mov	dptr,#(_gapRole_AdvertData + 0x001d)
      00017B F0               [24]  278 	movx	@dptr,a
      00017C 90 11 15         [24]  279 	mov	dptr,#(_gapRole_AdvertData + 0x001e)
      00017F F0               [24]  280 	movx	@dptr,a
                                    281 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:159: static uint8  gapRole_ScanRspDataLen = 0;
      000180 90 11 16         [24]  282 	mov	dptr,#_gapRole_ScanRspDataLen
      000183 F0               [24]  283 	movx	@dptr,a
                                    284 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:160: static uint8  gapRole_ScanRspData[B_MAX_ADV_LEN] = {0};
      000184 90 11 17         [24]  285 	mov	dptr,#_gapRole_ScanRspData
      000187 F0               [24]  286 	movx	@dptr,a
                                    287 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:163: static uint8  gapRole_AdvDirectAddr[B_ADDR_LEN] = {0};
      000188 90 11 38         [24]  288 	mov	dptr,#_gapRole_AdvDirectAddr
      00018B F0               [24]  289 	movx	@dptr,a
                                    290 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:168: static uint16 gapRole_RSSIReadRate = 0;
      00018C 90 11 40         [24]  291 	mov	dptr,#_gapRole_RSSIReadRate
      00018F F0               [24]  292 	movx	@dptr,a
      000190 A3               [24]  293 	inc	dptr
      000191 F0               [24]  294 	movx	@dptr,a
                                    295 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:170: static gapRolesCBs_t *pGapRoles_AppCGs = NULL;
      000192 90 11 42         [24]  296 	mov	dptr,#_pGapRoles_AppCGs
      000195 F0               [24]  297 	movx	@dptr,a
      000196 A3               [24]  298 	inc	dptr
      000197 F0               [24]  299 	movx	@dptr,a
      000198 A3               [24]  300 	inc	dptr
      000199 F0               [24]  301 	movx	@dptr,a
                                    302 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:171: static uint8  gapRole_ConnectedDevAddr[B_ADDR_LEN] = {0};
      00019A 90 11 45         [24]  303 	mov	dptr,#_gapRole_ConnectedDevAddr
      00019D F0               [24]  304 	movx	@dptr,a
                                    305 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:173: static uint8  gapRole_ParamUpdateEnable = FALSE;
      00019E 90 11 4B         [24]  306 	mov	dptr,#_gapRole_ParamUpdateEnable
      0001A1 F0               [24]  307 	movx	@dptr,a
                                    308 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:174: static uint16 gapRole_MinConnInterval = DEFAULT_MIN_CONN_INTERVAL;
      0001A2 90 11 4C         [24]  309 	mov	dptr,#_gapRole_MinConnInterval
      0001A5 74 06            [12]  310 	mov	a,#0x06
      0001A7 F0               [24]  311 	movx	@dptr,a
      0001A8 74 00            [12]  312 	mov	a,#0x00
      0001AA A3               [24]  313 	inc	dptr
      0001AB F0               [24]  314 	movx	@dptr,a
                                    315 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:175: static uint16 gapRole_MaxConnInterval = DEFAULT_MAX_CONN_INTERVAL;
      0001AC 90 11 4E         [24]  316 	mov	dptr,#_gapRole_MaxConnInterval
      0001AF 74 80            [12]  317 	mov	a,#0x80
      0001B1 F0               [24]  318 	movx	@dptr,a
      0001B2 74 0C            [12]  319 	mov	a,#0x0C
      0001B4 A3               [24]  320 	inc	dptr
      0001B5 F0               [24]  321 	movx	@dptr,a
                                    322 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:176: static uint16 gapRole_SlaveLatency = MIN_SLAVE_LATENCY;
      0001B6 90 11 50         [24]  323 	mov	dptr,#_gapRole_SlaveLatency
      0001B9 74 00            [12]  324 	mov	a,#0x00
      0001BB F0               [24]  325 	movx	@dptr,a
      0001BC A3               [24]  326 	inc	dptr
      0001BD F0               [24]  327 	movx	@dptr,a
                                    328 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:177: static uint16 gapRole_TimeoutMultiplier = DEFAULT_TIMEOUT_MULTIPLIER;
      0001BE 90 11 52         [24]  329 	mov	dptr,#_gapRole_TimeoutMultiplier
      0001C1 74 E8            [12]  330 	mov	a,#0xE8
      0001C3 F0               [24]  331 	movx	@dptr,a
      0001C4 74 03            [12]  332 	mov	a,#0x03
      0001C6 A3               [24]  333 	inc	dptr
      0001C7 F0               [24]  334 	movx	@dptr,a
                                    335 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:179: static uint16 gapRole_ConnInterval = 0;
      0001C8 90 11 54         [24]  336 	mov	dptr,#_gapRole_ConnInterval
      0001CB 74 00            [12]  337 	mov	a,#0x00
      0001CD F0               [24]  338 	movx	@dptr,a
      0001CE A3               [24]  339 	inc	dptr
      0001CF F0               [24]  340 	movx	@dptr,a
                                    341 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:180: static uint16 gapRole_ConnSlaveLatency = 0;
      0001D0 90 11 56         [24]  342 	mov	dptr,#_gapRole_ConnSlaveLatency
      0001D3 F0               [24]  343 	movx	@dptr,a
      0001D4 A3               [24]  344 	inc	dptr
      0001D5 F0               [24]  345 	movx	@dptr,a
                                    346 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:181: static uint16 gapRole_ConnTimeout = 0;
      0001D6 90 11 58         [24]  347 	mov	dptr,#_gapRole_ConnTimeout
      0001D9 F0               [24]  348 	movx	@dptr,a
      0001DA A3               [24]  349 	inc	dptr
      0001DB F0               [24]  350 	movx	@dptr,a
                                    351 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:183: static uint8 ParamUpdateNoSuccessOption = GAPROLE_NO_ACTION;
      0001DC 90 11 5A         [24]  352 	mov	dptr,#_ParamUpdateNoSuccessOption
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
      004360                        376 _GAPRole_SetParameter:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
      004360 AF 83            [24]  385 	mov	r7,dph
      004362 E5 82            [12]  386 	mov	a,dpl
      004364 90 11 5F         [24]  387 	mov	dptr,#_GAPRole_SetParameter_param_1_249
      004367 F0               [24]  388 	movx	@dptr,a
      004368 EF               [12]  389 	mov	a,r7
      004369 A3               [24]  390 	inc	dptr
      00436A F0               [24]  391 	movx	@dptr,a
                                    392 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:216: bStatus_t ret = SUCCESS;
      00436B 90 11 61         [24]  393 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      00436E 74 00            [12]  394 	mov	a,#0x00
      004370 F0               [24]  395 	movx	@dptr,a
                                    396 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:217: switch ( param )
      004371 90 11 5F         [24]  397 	mov	dptr,#_GAPRole_SetParameter_param_1_249
      004374 E0               [24]  398 	movx	a,@dptr
      004375 FE               [12]  399 	mov	r6,a
      004376 A3               [24]  400 	inc	dptr
      004377 E0               [24]  401 	movx	a,@dptr
      004378 FF               [12]  402 	mov	r7,a
      004379 BE 05 05         [24]  403 	cjne	r6,#0x05,00149$
      00437C BF 03 02         [24]  404 	cjne	r7,#0x03,00149$
      00437F 80 03            [24]  405 	sjmp	00150$
      004381                        406 00149$:
      004381 02 44 3E         [24]  407 	ljmp	00118$
      004384                        408 00150$:
                                    409 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:258: if ( len == sizeof( uint8 ) )
      004384 90 11 5B         [24]  410 	mov	dptr,#_GAPRole_SetParameter_PARM_2
      004387 E0               [24]  411 	movx	a,@dptr
      004388 FF               [12]  412 	mov	r7,a
      004389 BF 01 02         [24]  413 	cjne	r7,#0x01,00151$
      00438C 80 03            [24]  414 	sjmp	00152$
      00438E                        415 00151$:
      00438E 02 44 35         [24]  416 	ljmp	00116$
      004391                        417 00152$:
                                    418 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:260: uint8 oldAdvEnabled = gapRole_AdvEnabled;
      004391 90 10 F3         [24]  419 	mov	dptr,#_gapRole_AdvEnabled
      004394 E0               [24]  420 	movx	a,@dptr
      004395 FF               [12]  421 	mov	r7,a
      004396 90 11 62         [24]  422 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      004399 EF               [12]  423 	mov	a,r7
      00439A F0               [24]  424 	movx	@dptr,a
                                    425 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:261: gapRole_AdvEnabled = *((uint8*)pValue);
      00439B 90 11 5C         [24]  426 	mov	dptr,#_GAPRole_SetParameter_PARM_3
      00439E E0               [24]  427 	movx	a,@dptr
      00439F FD               [12]  428 	mov	r5,a
      0043A0 A3               [24]  429 	inc	dptr
      0043A1 E0               [24]  430 	movx	a,@dptr
      0043A2 FE               [12]  431 	mov	r6,a
      0043A3 A3               [24]  432 	inc	dptr
      0043A4 E0               [24]  433 	movx	a,@dptr
      0043A5 FF               [12]  434 	mov	r7,a
      0043A6 8D 82            [24]  435 	mov	dpl,r5
      0043A8 8E 83            [24]  436 	mov	dph,r6
      0043AA 8F F0            [24]  437 	mov	b,r7
      0043AC 12 5B 6D         [24]  438 	lcall	__gptrget
      0043AF FD               [12]  439 	mov	r5,a
      0043B0 90 10 F3         [24]  440 	mov	dptr,#_gapRole_AdvEnabled
      0043B3 ED               [12]  441 	mov	a,r5
      0043B4 F0               [24]  442 	movx	@dptr,a
                                    443 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:263: if ( (oldAdvEnabled) && (gapRole_AdvEnabled == FALSE) )
      0043B5 90 11 62         [24]  444 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      0043B8 E0               [24]  445 	movx	a,@dptr
      0043B9 FF               [12]  446 	mov	r7,a
      0043BA EF               [12]  447 	mov	a,r7
      0043BB 70 03            [24]  448 	jnz	00153$
      0043BD 02 43 E5         [24]  449 	ljmp	00112$
      0043C0                        450 00153$:
      0043C0 90 10 F3         [24]  451 	mov	dptr,#_gapRole_AdvEnabled
      0043C3 E0               [24]  452 	movx	a,@dptr
      0043C4 FF               [12]  453 	mov	r7,a
      0043C5 EF               [12]  454 	mov	a,r7
      0043C6 60 03            [24]  455 	jz	00154$
      0043C8 02 43 E5         [24]  456 	ljmp	00112$
      0043CB                        457 00154$:
                                    458 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:266: if ( gapRole_state == GAPROLE_ADVERTISING )
      0043CB 90 10 C7         [24]  459 	mov	dptr,#_gapRole_state
      0043CE E0               [24]  460 	movx	a,@dptr
      0043CF FF               [12]  461 	mov	r7,a
      0043D0 BF 02 02         [24]  462 	cjne	r7,#0x02,00155$
      0043D3 80 03            [24]  463 	sjmp	00156$
      0043D5                        464 00155$:
      0043D5 02 44 44         [24]  465 	ljmp	00119$
      0043D8                        466 00156$:
                                    467 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:268: VOID GAP_EndDiscoverable( gapRole_TaskID );
      0043D8 90 10 C6         [24]  468 	mov	dptr,#_gapRole_TaskID
      0043DB E0               [24]  469 	movx	a,@dptr
      0043DC FF               [12]  470 	mov	r7,a
      0043DD 8F 82            [24]  471 	mov	dpl,r7
      0043DF 12 4B 60         [24]  472 	lcall	_GAP_EndDiscoverable
      0043E2 02 44 44         [24]  473 	ljmp	00119$
      0043E5                        474 00112$:
                                    475 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:271: else if ( (oldAdvEnabled == FALSE) && (gapRole_AdvEnabled) )
      0043E5 90 11 62         [24]  476 	mov	dptr,#_GAPRole_SetParameter_oldAdvEnabled_3_252
      0043E8 E0               [24]  477 	movx	a,@dptr
      0043E9 FF               [12]  478 	mov	r7,a
      0043EA EF               [12]  479 	mov	a,r7
      0043EB 60 03            [24]  480 	jz	00157$
      0043ED 02 44 44         [24]  481 	ljmp	00119$
      0043F0                        482 00157$:
      0043F0 90 10 F3         [24]  483 	mov	dptr,#_gapRole_AdvEnabled
      0043F3 E0               [24]  484 	movx	a,@dptr
      0043F4 FF               [12]  485 	mov	r7,a
      0043F5 EF               [12]  486 	mov	a,r7
      0043F6 70 03            [24]  487 	jnz	00158$
      0043F8 02 44 44         [24]  488 	ljmp	00119$
      0043FB                        489 00158$:
                                    490 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:274: if ( (gapRole_state == GAPROLE_STARTED)
      0043FB 90 10 C7         [24]  491 	mov	dptr,#_gapRole_state
      0043FE E0               [24]  492 	movx	a,@dptr
      0043FF FF               [12]  493 	mov	r7,a
      004400 BF 01 03         [24]  494 	cjne	r7,#0x01,00159$
      004403 02 44 1E         [24]  495 	ljmp	00104$
      004406                        496 00159$:
                                    497 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:275: || (gapRole_state == GAPROLE_WAITING)
      004406 90 10 C7         [24]  498 	mov	dptr,#_gapRole_state
      004409 E0               [24]  499 	movx	a,@dptr
      00440A FF               [12]  500 	mov	r7,a
      00440B BF 03 03         [24]  501 	cjne	r7,#0x03,00160$
      00440E 02 44 1E         [24]  502 	ljmp	00104$
      004411                        503 00160$:
                                    504 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:276: || (gapRole_state == GAPROLE_WAITING_AFTER_TIMEOUT) )
      004411 90 10 C7         [24]  505 	mov	dptr,#_gapRole_state
      004414 E0               [24]  506 	movx	a,@dptr
      004415 FF               [12]  507 	mov	r7,a
      004416 BF 04 02         [24]  508 	cjne	r7,#0x04,00161$
      004419 80 03            [24]  509 	sjmp	00162$
      00441B                        510 00161$:
      00441B 02 44 44         [24]  511 	ljmp	00119$
      00441E                        512 00162$:
      00441E                        513 00104$:
                                    514 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:278: VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
      00441E 90 10 C6         [24]  515 	mov	dptr,#_gapRole_TaskID
      004421 E0               [24]  516 	movx	a,@dptr
      004422 FF               [12]  517 	mov	r7,a
      004423 90 03 CB         [24]  518 	mov	dptr,#_osal_set_event_PARM_2
      004426 74 01            [12]  519 	mov	a,#0x01
      004428 F0               [24]  520 	movx	@dptr,a
      004429 74 00            [12]  521 	mov	a,#0x00
      00442B A3               [24]  522 	inc	dptr
      00442C F0               [24]  523 	movx	@dptr,a
      00442D 8F 82            [24]  524 	mov	dpl,r7
      00442F 12 19 D8         [24]  525 	lcall	_osal_set_event
      004432 02 44 44         [24]  526 	ljmp	00119$
      004435                        527 00116$:
                                    528 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:284: ret = bleInvalidRange;
      004435 90 11 61         [24]  529 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      004438 74 18            [12]  530 	mov	a,#0x18
      00443A F0               [24]  531 	movx	@dptr,a
                                    532 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:286: break;
      00443B 02 44 44         [24]  533 	ljmp	00119$
                                    534 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:490: default:
      00443E                        535 00118$:
                                    536 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:492: ret = INVALIDPARAMETER;
      00443E 90 11 61         [24]  537 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      004441 74 02            [12]  538 	mov	a,#0x02
      004443 F0               [24]  539 	movx	@dptr,a
                                    540 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:495: }
      004444                        541 00119$:
                                    542 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:497: return ( ret );
      004444 90 11 61         [24]  543 	mov	dptr,#_GAPRole_SetParameter_ret_1_250
      004447 E0               [24]  544 	movx	a,@dptr
      004448 FF               [12]  545 	mov	r7,a
      004449 8F 82            [24]  546 	mov	dpl,r7
      00444B                        547 00120$:
      00444B 22               [24]  548 	ret
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
      00444C                        560 _GAPRole_GetParameter:
      00444C AF 83            [24]  561 	mov	r7,dph
      00444E E5 82            [12]  562 	mov	a,dpl
      004450 90 11 66         [24]  563 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      004453 F0               [24]  564 	movx	@dptr,a
      004454 EF               [12]  565 	mov	a,r7
      004455 A3               [24]  566 	inc	dptr
      004456 F0               [24]  567 	movx	@dptr,a
                                    568 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:507: bStatus_t ret = SUCCESS;
      004457 90 11 68         [24]  569 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      00445A 74 00            [12]  570 	mov	a,#0x00
      00445C F0               [24]  571 	movx	@dptr,a
                                    572 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:508: switch ( param )
      00445D 90 11 66         [24]  573 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      004460 E0               [24]  574 	movx	a,@dptr
      004461 FE               [12]  575 	mov	r6,a
      004462 A3               [24]  576 	inc	dptr
      004463 E0               [24]  577 	movx	a,@dptr
      004464 FF               [12]  578 	mov	r7,a
      004465 C3               [12]  579 	clr	c
      004466 EF               [12]  580 	mov	a,r7
      004467 94 03            [12]  581 	subb	a,#0x03
      004469 50 03            [24]  582 	jnc	00142$
      00446B 02 48 64         [24]  583 	ljmp	00126$
      00446E                        584 00142$:
      00446E C3               [12]  585 	clr	c
      00446F 74 18            [12]  586 	mov	a,#0x18
      004471 9E               [12]  587 	subb	a,r6
      004472 74 03            [12]  588 	mov	a,#0x03
      004474 9F               [12]  589 	subb	a,r7
      004475 50 03            [24]  590 	jnc	00143$
      004477 02 48 64         [24]  591 	ljmp	00126$
      00447A                        592 00143$:
      00447A EE               [12]  593 	mov	a,r6
      00447B 24 0A            [12]  594 	add	a,#(00144$-3-.)
      00447D 83               [24]  595 	movc	a,@a+pc
      00447E F5 82            [12]  596 	mov	dpl,a
      004480 EE               [12]  597 	mov	a,r6
      004481 24 1D            [12]  598 	add	a,#(00145$-3-.)
      004483 83               [24]  599 	movc	a,@a+pc
      004484 F5 83            [12]  600 	mov	dph,a
      004486 E4               [12]  601 	clr	a
      004487 73               [24]  602 	jmp	@a+dptr
      004488                        603 00144$:
      004488 BA                     604 	.db	00101$
      004489 D7                     605 	.db	00102$
      00448A 06                     606 	.db	00103$
      00448B 35                     607 	.db	00104$
      00448C 6A                     608 	.db	00105$
      00448D 99                     609 	.db	00106$
      00448E B6                     610 	.db	00107$
      00448F DB                     611 	.db	00108$
      004490 0F                     612 	.db	00109$
      004491 43                     613 	.db	00110$
      004492 60                     614 	.db	00111$
      004493 7D                     615 	.db	00112$
      004494 AC                     616 	.db	00113$
      004495 C9                     617 	.db	00114$
      004496 E6                     618 	.db	00115$
      004497 E9                     619 	.db	00116$
      004498 0E                     620 	.db	00117$
      004499 32                     621 	.db	00118$
      00449A 57                     622 	.db	00119$
      00449B 7C                     623 	.db	00120$
      00449C A1                     624 	.db	00121$
      00449D C6                     625 	.db	00122$
      00449E F5                     626 	.db	00123$
      00449F 1A                     627 	.db	00124$
      0044A0 3F                     628 	.db	00125$
      0044A1                        629 00145$:
      0044A1 44                     630 	.db	00101$>>8
      0044A2 44                     631 	.db	00102$>>8
      0044A3 45                     632 	.db	00103$>>8
      0044A4 45                     633 	.db	00104$>>8
      0044A5 45                     634 	.db	00105$>>8
      0044A6 45                     635 	.db	00106$>>8
      0044A7 45                     636 	.db	00107$>>8
      0044A8 45                     637 	.db	00108$>>8
      0044A9 46                     638 	.db	00109$>>8
      0044AA 46                     639 	.db	00110$>>8
      0044AB 46                     640 	.db	00111$>>8
      0044AC 46                     641 	.db	00112$>>8
      0044AD 46                     642 	.db	00113$>>8
      0044AE 46                     643 	.db	00114$>>8
      0044AF 46                     644 	.db	00115$>>8
      0044B0 46                     645 	.db	00116$>>8
      0044B1 47                     646 	.db	00117$>>8
      0044B2 47                     647 	.db	00118$>>8
      0044B3 47                     648 	.db	00119$>>8
      0044B4 47                     649 	.db	00120$>>8
      0044B5 47                     650 	.db	00121$>>8
      0044B6 47                     651 	.db	00122$>>8
      0044B7 47                     652 	.db	00123$>>8
      0044B8 48                     653 	.db	00124$>>8
      0044B9 48                     654 	.db	00125$>>8
                                    655 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:510: case GAPROLE_PROFILEROLE:
      0044BA                        656 00101$:
                                    657 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:511: *((uint8*)pValue) = gapRole_profileRole;
      0044BA 90 11 63         [24]  658 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0044BD E0               [24]  659 	movx	a,@dptr
      0044BE FD               [12]  660 	mov	r5,a
      0044BF A3               [24]  661 	inc	dptr
      0044C0 E0               [24]  662 	movx	a,@dptr
      0044C1 FE               [12]  663 	mov	r6,a
      0044C2 A3               [24]  664 	inc	dptr
      0044C3 E0               [24]  665 	movx	a,@dptr
      0044C4 FF               [12]  666 	mov	r7,a
      0044C5 90 10 C8         [24]  667 	mov	dptr,#_gapRole_profileRole
      0044C8 E0               [24]  668 	movx	a,@dptr
      0044C9 FC               [12]  669 	mov	r4,a
      0044CA 8D 82            [24]  670 	mov	dpl,r5
      0044CC 8E 83            [24]  671 	mov	dph,r6
      0044CE 8F F0            [24]  672 	mov	b,r7
      0044D0 EC               [12]  673 	mov	a,r4
      0044D1 12 5A 01         [24]  674 	lcall	__gptrput
                                    675 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:512: break;
      0044D4 02 48 7E         [24]  676 	ljmp	00130$
                                    677 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:514: case GAPROLE_IRK:
      0044D7                        678 00102$:
                                    679 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:515: VOID osal_memcpy( pValue, gapRole_IRK, KEYLEN ) ;
      0044D7 90 11 63         [24]  680 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0044DA E0               [24]  681 	movx	a,@dptr
      0044DB FD               [12]  682 	mov	r5,a
      0044DC A3               [24]  683 	inc	dptr
      0044DD E0               [24]  684 	movx	a,@dptr
      0044DE FE               [12]  685 	mov	r6,a
      0044DF A3               [24]  686 	inc	dptr
      0044E0 E0               [24]  687 	movx	a,@dptr
      0044E1 FF               [12]  688 	mov	r7,a
      0044E2 90 03 0C         [24]  689 	mov	dptr,#_osal_memcpy_PARM_2
      0044E5 74 C9            [12]  690 	mov	a,#_gapRole_IRK
      0044E7 F0               [24]  691 	movx	@dptr,a
      0044E8 74 10            [12]  692 	mov	a,#(_gapRole_IRK >> 8)
      0044EA A3               [24]  693 	inc	dptr
      0044EB F0               [24]  694 	movx	@dptr,a
      0044EC 74 00            [12]  695 	mov	a,#0x00
      0044EE A3               [24]  696 	inc	dptr
      0044EF F0               [24]  697 	movx	@dptr,a
      0044F0 90 03 0F         [24]  698 	mov	dptr,#_osal_memcpy_PARM_3
      0044F3 74 10            [12]  699 	mov	a,#0x10
      0044F5 F0               [24]  700 	movx	@dptr,a
      0044F6 74 00            [12]  701 	mov	a,#0x00
      0044F8 A3               [24]  702 	inc	dptr
      0044F9 F0               [24]  703 	movx	@dptr,a
      0044FA 8D 82            [24]  704 	mov	dpl,r5
      0044FC 8E 83            [24]  705 	mov	dph,r6
      0044FE 8F F0            [24]  706 	mov	b,r7
      004500 12 04 76         [24]  707 	lcall	_osal_memcpy
                                    708 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:516: break;
      004503 02 48 7E         [24]  709 	ljmp	00130$
                                    710 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:518: case GAPROLE_SRK:
      004506                        711 00103$:
                                    712 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:519: VOID osal_memcpy( pValue, gapRole_SRK, KEYLEN ) ;
      004506 90 11 63         [24]  713 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004509 E0               [24]  714 	movx	a,@dptr
      00450A FD               [12]  715 	mov	r5,a
      00450B A3               [24]  716 	inc	dptr
      00450C E0               [24]  717 	movx	a,@dptr
      00450D FE               [12]  718 	mov	r6,a
      00450E A3               [24]  719 	inc	dptr
      00450F E0               [24]  720 	movx	a,@dptr
      004510 FF               [12]  721 	mov	r7,a
      004511 90 03 0C         [24]  722 	mov	dptr,#_osal_memcpy_PARM_2
      004514 74 D9            [12]  723 	mov	a,#_gapRole_SRK
      004516 F0               [24]  724 	movx	@dptr,a
      004517 74 10            [12]  725 	mov	a,#(_gapRole_SRK >> 8)
      004519 A3               [24]  726 	inc	dptr
      00451A F0               [24]  727 	movx	@dptr,a
      00451B 74 00            [12]  728 	mov	a,#0x00
      00451D A3               [24]  729 	inc	dptr
      00451E F0               [24]  730 	movx	@dptr,a
      00451F 90 03 0F         [24]  731 	mov	dptr,#_osal_memcpy_PARM_3
      004522 74 10            [12]  732 	mov	a,#0x10
      004524 F0               [24]  733 	movx	@dptr,a
      004525 74 00            [12]  734 	mov	a,#0x00
      004527 A3               [24]  735 	inc	dptr
      004528 F0               [24]  736 	movx	@dptr,a
      004529 8D 82            [24]  737 	mov	dpl,r5
      00452B 8E 83            [24]  738 	mov	dph,r6
      00452D 8F F0            [24]  739 	mov	b,r7
      00452F 12 04 76         [24]  740 	lcall	_osal_memcpy
                                    741 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:520: break;
      004532 02 48 7E         [24]  742 	ljmp	00130$
                                    743 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:522: case GAPROLE_SIGNCOUNTER:
      004535                        744 00104$:
                                    745 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:523: *((uint32*)pValue) = gapRole_signCounter;
      004535 90 11 63         [24]  746 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004538 E0               [24]  747 	movx	a,@dptr
      004539 FD               [12]  748 	mov	r5,a
      00453A A3               [24]  749 	inc	dptr
      00453B E0               [24]  750 	movx	a,@dptr
      00453C FE               [12]  751 	mov	r6,a
      00453D A3               [24]  752 	inc	dptr
      00453E E0               [24]  753 	movx	a,@dptr
      00453F FF               [12]  754 	mov	r7,a
      004540 90 10 E9         [24]  755 	mov	dptr,#_gapRole_signCounter
      004543 E0               [24]  756 	movx	a,@dptr
      004544 F9               [12]  757 	mov	r1,a
      004545 A3               [24]  758 	inc	dptr
      004546 E0               [24]  759 	movx	a,@dptr
      004547 FA               [12]  760 	mov	r2,a
      004548 A3               [24]  761 	inc	dptr
      004549 E0               [24]  762 	movx	a,@dptr
      00454A FB               [12]  763 	mov	r3,a
      00454B A3               [24]  764 	inc	dptr
      00454C E0               [24]  765 	movx	a,@dptr
      00454D FC               [12]  766 	mov	r4,a
      00454E 8D 82            [24]  767 	mov	dpl,r5
      004550 8E 83            [24]  768 	mov	dph,r6
      004552 8F F0            [24]  769 	mov	b,r7
      004554 E9               [12]  770 	mov	a,r1
      004555 12 5A 01         [24]  771 	lcall	__gptrput
      004558 A3               [24]  772 	inc	dptr
      004559 EA               [12]  773 	mov	a,r2
      00455A 12 5A 01         [24]  774 	lcall	__gptrput
      00455D A3               [24]  775 	inc	dptr
      00455E EB               [12]  776 	mov	a,r3
      00455F 12 5A 01         [24]  777 	lcall	__gptrput
      004562 A3               [24]  778 	inc	dptr
      004563 EC               [12]  779 	mov	a,r4
      004564 12 5A 01         [24]  780 	lcall	__gptrput
                                    781 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:524: break;
      004567 02 48 7E         [24]  782 	ljmp	00130$
                                    783 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:526: case GAPROLE_BD_ADDR:
      00456A                        784 00105$:
                                    785 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:527: VOID osal_memcpy( pValue, gapRole_bdAddr, B_ADDR_LEN ) ;
      00456A 90 11 63         [24]  786 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00456D E0               [24]  787 	movx	a,@dptr
      00456E FD               [12]  788 	mov	r5,a
      00456F A3               [24]  789 	inc	dptr
      004570 E0               [24]  790 	movx	a,@dptr
      004571 FE               [12]  791 	mov	r6,a
      004572 A3               [24]  792 	inc	dptr
      004573 E0               [24]  793 	movx	a,@dptr
      004574 FF               [12]  794 	mov	r7,a
      004575 90 03 0C         [24]  795 	mov	dptr,#_osal_memcpy_PARM_2
      004578 74 ED            [12]  796 	mov	a,#_gapRole_bdAddr
      00457A F0               [24]  797 	movx	@dptr,a
      00457B 74 10            [12]  798 	mov	a,#(_gapRole_bdAddr >> 8)
      00457D A3               [24]  799 	inc	dptr
      00457E F0               [24]  800 	movx	@dptr,a
      00457F 74 00            [12]  801 	mov	a,#0x00
      004581 A3               [24]  802 	inc	dptr
      004582 F0               [24]  803 	movx	@dptr,a
      004583 90 03 0F         [24]  804 	mov	dptr,#_osal_memcpy_PARM_3
      004586 74 06            [12]  805 	mov	a,#0x06
      004588 F0               [24]  806 	movx	@dptr,a
      004589 74 00            [12]  807 	mov	a,#0x00
      00458B A3               [24]  808 	inc	dptr
      00458C F0               [24]  809 	movx	@dptr,a
      00458D 8D 82            [24]  810 	mov	dpl,r5
      00458F 8E 83            [24]  811 	mov	dph,r6
      004591 8F F0            [24]  812 	mov	b,r7
      004593 12 04 76         [24]  813 	lcall	_osal_memcpy
                                    814 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:528: break;
      004596 02 48 7E         [24]  815 	ljmp	00130$
                                    816 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:530: case GAPROLE_ADVERT_ENABLED:
      004599                        817 00106$:
                                    818 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:531: *((uint8*)pValue) = gapRole_AdvEnabled;
      004599 90 11 63         [24]  819 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00459C E0               [24]  820 	movx	a,@dptr
      00459D FD               [12]  821 	mov	r5,a
      00459E A3               [24]  822 	inc	dptr
      00459F E0               [24]  823 	movx	a,@dptr
      0045A0 FE               [12]  824 	mov	r6,a
      0045A1 A3               [24]  825 	inc	dptr
      0045A2 E0               [24]  826 	movx	a,@dptr
      0045A3 FF               [12]  827 	mov	r7,a
      0045A4 90 10 F3         [24]  828 	mov	dptr,#_gapRole_AdvEnabled
      0045A7 E0               [24]  829 	movx	a,@dptr
      0045A8 FC               [12]  830 	mov	r4,a
      0045A9 8D 82            [24]  831 	mov	dpl,r5
      0045AB 8E 83            [24]  832 	mov	dph,r6
      0045AD 8F F0            [24]  833 	mov	b,r7
      0045AF EC               [12]  834 	mov	a,r4
      0045B0 12 5A 01         [24]  835 	lcall	__gptrput
                                    836 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:532: break;
      0045B3 02 48 7E         [24]  837 	ljmp	00130$
                                    838 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:534: case GAPROLE_ADVERT_OFF_TIME:
      0045B6                        839 00107$:
                                    840 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:535: *((uint16*)pValue) = gapRole_AdvertOffTime;
      0045B6 90 11 63         [24]  841 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0045B9 E0               [24]  842 	movx	a,@dptr
      0045BA FD               [12]  843 	mov	r5,a
      0045BB A3               [24]  844 	inc	dptr
      0045BC E0               [24]  845 	movx	a,@dptr
      0045BD FE               [12]  846 	mov	r6,a
      0045BE A3               [24]  847 	inc	dptr
      0045BF E0               [24]  848 	movx	a,@dptr
      0045C0 FF               [12]  849 	mov	r7,a
      0045C1 90 10 F4         [24]  850 	mov	dptr,#_gapRole_AdvertOffTime
      0045C4 E0               [24]  851 	movx	a,@dptr
      0045C5 FB               [12]  852 	mov	r3,a
      0045C6 A3               [24]  853 	inc	dptr
      0045C7 E0               [24]  854 	movx	a,@dptr
      0045C8 FC               [12]  855 	mov	r4,a
      0045C9 8D 82            [24]  856 	mov	dpl,r5
      0045CB 8E 83            [24]  857 	mov	dph,r6
      0045CD 8F F0            [24]  858 	mov	b,r7
      0045CF EB               [12]  859 	mov	a,r3
      0045D0 12 5A 01         [24]  860 	lcall	__gptrput
      0045D3 A3               [24]  861 	inc	dptr
      0045D4 EC               [12]  862 	mov	a,r4
      0045D5 12 5A 01         [24]  863 	lcall	__gptrput
                                    864 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:536: break;
      0045D8 02 48 7E         [24]  865 	ljmp	00130$
                                    866 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:538: case GAPROLE_ADVERT_DATA:
      0045DB                        867 00108$:
                                    868 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:539: VOID osal_memcpy( pValue , gapRole_AdvertData, gapRole_AdvertDataLen );
      0045DB 90 11 63         [24]  869 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0045DE E0               [24]  870 	movx	a,@dptr
      0045DF FD               [12]  871 	mov	r5,a
      0045E0 A3               [24]  872 	inc	dptr
      0045E1 E0               [24]  873 	movx	a,@dptr
      0045E2 FE               [12]  874 	mov	r6,a
      0045E3 A3               [24]  875 	inc	dptr
      0045E4 E0               [24]  876 	movx	a,@dptr
      0045E5 FF               [12]  877 	mov	r7,a
      0045E6 90 10 F6         [24]  878 	mov	dptr,#_gapRole_AdvertDataLen
      0045E9 E0               [24]  879 	movx	a,@dptr
      0045EA FC               [12]  880 	mov	r4,a
      0045EB 7B 00            [12]  881 	mov	r3,#0x00
      0045ED 90 03 0C         [24]  882 	mov	dptr,#_osal_memcpy_PARM_2
      0045F0 74 F7            [12]  883 	mov	a,#_gapRole_AdvertData
      0045F2 F0               [24]  884 	movx	@dptr,a
      0045F3 74 10            [12]  885 	mov	a,#(_gapRole_AdvertData >> 8)
      0045F5 A3               [24]  886 	inc	dptr
      0045F6 F0               [24]  887 	movx	@dptr,a
      0045F7 74 00            [12]  888 	mov	a,#0x00
      0045F9 A3               [24]  889 	inc	dptr
      0045FA F0               [24]  890 	movx	@dptr,a
      0045FB 90 03 0F         [24]  891 	mov	dptr,#_osal_memcpy_PARM_3
      0045FE EC               [12]  892 	mov	a,r4
      0045FF F0               [24]  893 	movx	@dptr,a
      004600 EB               [12]  894 	mov	a,r3
      004601 A3               [24]  895 	inc	dptr
      004602 F0               [24]  896 	movx	@dptr,a
      004603 8D 82            [24]  897 	mov	dpl,r5
      004605 8E 83            [24]  898 	mov	dph,r6
      004607 8F F0            [24]  899 	mov	b,r7
      004609 12 04 76         [24]  900 	lcall	_osal_memcpy
                                    901 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:540: break;
      00460C 02 48 7E         [24]  902 	ljmp	00130$
                                    903 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:542: case GAPROLE_SCAN_RSP_DATA:
      00460F                        904 00109$:
                                    905 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:543: VOID osal_memcpy( pValue, gapRole_ScanRspData, gapRole_ScanRspDataLen ) ;
      00460F 90 11 63         [24]  906 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004612 E0               [24]  907 	movx	a,@dptr
      004613 FD               [12]  908 	mov	r5,a
      004614 A3               [24]  909 	inc	dptr
      004615 E0               [24]  910 	movx	a,@dptr
      004616 FE               [12]  911 	mov	r6,a
      004617 A3               [24]  912 	inc	dptr
      004618 E0               [24]  913 	movx	a,@dptr
      004619 FF               [12]  914 	mov	r7,a
      00461A 90 11 16         [24]  915 	mov	dptr,#_gapRole_ScanRspDataLen
      00461D E0               [24]  916 	movx	a,@dptr
      00461E FC               [12]  917 	mov	r4,a
      00461F 7B 00            [12]  918 	mov	r3,#0x00
      004621 90 03 0C         [24]  919 	mov	dptr,#_osal_memcpy_PARM_2
      004624 74 17            [12]  920 	mov	a,#_gapRole_ScanRspData
      004626 F0               [24]  921 	movx	@dptr,a
      004627 74 11            [12]  922 	mov	a,#(_gapRole_ScanRspData >> 8)
      004629 A3               [24]  923 	inc	dptr
      00462A F0               [24]  924 	movx	@dptr,a
      00462B 74 00            [12]  925 	mov	a,#0x00
      00462D A3               [24]  926 	inc	dptr
      00462E F0               [24]  927 	movx	@dptr,a
      00462F 90 03 0F         [24]  928 	mov	dptr,#_osal_memcpy_PARM_3
      004632 EC               [12]  929 	mov	a,r4
      004633 F0               [24]  930 	movx	@dptr,a
      004634 EB               [12]  931 	mov	a,r3
      004635 A3               [24]  932 	inc	dptr
      004636 F0               [24]  933 	movx	@dptr,a
      004637 8D 82            [24]  934 	mov	dpl,r5
      004639 8E 83            [24]  935 	mov	dph,r6
      00463B 8F F0            [24]  936 	mov	b,r7
      00463D 12 04 76         [24]  937 	lcall	_osal_memcpy
                                    938 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:544: break;
      004640 02 48 7E         [24]  939 	ljmp	00130$
                                    940 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:546: case GAPROLE_ADV_EVENT_TYPE:
      004643                        941 00110$:
                                    942 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:547: *((uint8*)pValue) = gapRole_AdvEventType;
      004643 90 11 63         [24]  943 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004646 E0               [24]  944 	movx	a,@dptr
      004647 FD               [12]  945 	mov	r5,a
      004648 A3               [24]  946 	inc	dptr
      004649 E0               [24]  947 	movx	a,@dptr
      00464A FE               [12]  948 	mov	r6,a
      00464B A3               [24]  949 	inc	dptr
      00464C E0               [24]  950 	movx	a,@dptr
      00464D FF               [12]  951 	mov	r7,a
      00464E 90 11 36         [24]  952 	mov	dptr,#_gapRole_AdvEventType
      004651 E0               [24]  953 	movx	a,@dptr
      004652 FC               [12]  954 	mov	r4,a
      004653 8D 82            [24]  955 	mov	dpl,r5
      004655 8E 83            [24]  956 	mov	dph,r6
      004657 8F F0            [24]  957 	mov	b,r7
      004659 EC               [12]  958 	mov	a,r4
      00465A 12 5A 01         [24]  959 	lcall	__gptrput
                                    960 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:548: break;
      00465D 02 48 7E         [24]  961 	ljmp	00130$
                                    962 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:550: case GAPROLE_ADV_DIRECT_TYPE:
      004660                        963 00111$:
                                    964 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:551: *((uint8*)pValue) = gapRole_AdvDirectType;
      004660 90 11 63         [24]  965 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004663 E0               [24]  966 	movx	a,@dptr
      004664 FD               [12]  967 	mov	r5,a
      004665 A3               [24]  968 	inc	dptr
      004666 E0               [24]  969 	movx	a,@dptr
      004667 FE               [12]  970 	mov	r6,a
      004668 A3               [24]  971 	inc	dptr
      004669 E0               [24]  972 	movx	a,@dptr
      00466A FF               [12]  973 	mov	r7,a
      00466B 90 11 37         [24]  974 	mov	dptr,#_gapRole_AdvDirectType
      00466E E0               [24]  975 	movx	a,@dptr
      00466F FC               [12]  976 	mov	r4,a
      004670 8D 82            [24]  977 	mov	dpl,r5
      004672 8E 83            [24]  978 	mov	dph,r6
      004674 8F F0            [24]  979 	mov	b,r7
      004676 EC               [12]  980 	mov	a,r4
      004677 12 5A 01         [24]  981 	lcall	__gptrput
                                    982 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:552: break;
      00467A 02 48 7E         [24]  983 	ljmp	00130$
                                    984 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:554: case GAPROLE_ADV_DIRECT_ADDR:
      00467D                        985 00112$:
                                    986 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:555: VOID osal_memcpy( pValue, gapRole_AdvDirectAddr, B_ADDR_LEN ) ;
      00467D 90 11 63         [24]  987 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004680 E0               [24]  988 	movx	a,@dptr
      004681 FD               [12]  989 	mov	r5,a
      004682 A3               [24]  990 	inc	dptr
      004683 E0               [24]  991 	movx	a,@dptr
      004684 FE               [12]  992 	mov	r6,a
      004685 A3               [24]  993 	inc	dptr
      004686 E0               [24]  994 	movx	a,@dptr
      004687 FF               [12]  995 	mov	r7,a
      004688 90 03 0C         [24]  996 	mov	dptr,#_osal_memcpy_PARM_2
      00468B 74 38            [12]  997 	mov	a,#_gapRole_AdvDirectAddr
      00468D F0               [24]  998 	movx	@dptr,a
      00468E 74 11            [12]  999 	mov	a,#(_gapRole_AdvDirectAddr >> 8)
      004690 A3               [24] 1000 	inc	dptr
      004691 F0               [24] 1001 	movx	@dptr,a
      004692 74 00            [12] 1002 	mov	a,#0x00
      004694 A3               [24] 1003 	inc	dptr
      004695 F0               [24] 1004 	movx	@dptr,a
      004696 90 03 0F         [24] 1005 	mov	dptr,#_osal_memcpy_PARM_3
      004699 74 06            [12] 1006 	mov	a,#0x06
      00469B F0               [24] 1007 	movx	@dptr,a
      00469C 74 00            [12] 1008 	mov	a,#0x00
      00469E A3               [24] 1009 	inc	dptr
      00469F F0               [24] 1010 	movx	@dptr,a
      0046A0 8D 82            [24] 1011 	mov	dpl,r5
      0046A2 8E 83            [24] 1012 	mov	dph,r6
      0046A4 8F F0            [24] 1013 	mov	b,r7
      0046A6 12 04 76         [24] 1014 	lcall	_osal_memcpy
                                   1015 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:556: break;
      0046A9 02 48 7E         [24] 1016 	ljmp	00130$
                                   1017 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:558: case GAPROLE_ADV_CHANNEL_MAP:
      0046AC                       1018 00113$:
                                   1019 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:559: *((uint8*)pValue) = gapRole_AdvChanMap;
      0046AC 90 11 63         [24] 1020 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0046AF E0               [24] 1021 	movx	a,@dptr
      0046B0 FD               [12] 1022 	mov	r5,a
      0046B1 A3               [24] 1023 	inc	dptr
      0046B2 E0               [24] 1024 	movx	a,@dptr
      0046B3 FE               [12] 1025 	mov	r6,a
      0046B4 A3               [24] 1026 	inc	dptr
      0046B5 E0               [24] 1027 	movx	a,@dptr
      0046B6 FF               [12] 1028 	mov	r7,a
      0046B7 90 11 3E         [24] 1029 	mov	dptr,#_gapRole_AdvChanMap
      0046BA E0               [24] 1030 	movx	a,@dptr
      0046BB FC               [12] 1031 	mov	r4,a
      0046BC 8D 82            [24] 1032 	mov	dpl,r5
      0046BE 8E 83            [24] 1033 	mov	dph,r6
      0046C0 8F F0            [24] 1034 	mov	b,r7
      0046C2 EC               [12] 1035 	mov	a,r4
      0046C3 12 5A 01         [24] 1036 	lcall	__gptrput
                                   1037 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:560: break;
      0046C6 02 48 7E         [24] 1038 	ljmp	00130$
                                   1039 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:562: case GAPROLE_ADV_FILTER_POLICY:
      0046C9                       1040 00114$:
                                   1041 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:563: *((uint8*)pValue) = gapRole_AdvFilterPolicy;
      0046C9 90 11 63         [24] 1042 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0046CC E0               [24] 1043 	movx	a,@dptr
      0046CD FD               [12] 1044 	mov	r5,a
      0046CE A3               [24] 1045 	inc	dptr
      0046CF E0               [24] 1046 	movx	a,@dptr
      0046D0 FE               [12] 1047 	mov	r6,a
      0046D1 A3               [24] 1048 	inc	dptr
      0046D2 E0               [24] 1049 	movx	a,@dptr
      0046D3 FF               [12] 1050 	mov	r7,a
      0046D4 90 11 3F         [24] 1051 	mov	dptr,#_gapRole_AdvFilterPolicy
      0046D7 E0               [24] 1052 	movx	a,@dptr
      0046D8 FC               [12] 1053 	mov	r4,a
      0046D9 8D 82            [24] 1054 	mov	dpl,r5
      0046DB 8E 83            [24] 1055 	mov	dph,r6
      0046DD 8F F0            [24] 1056 	mov	b,r7
      0046DF EC               [12] 1057 	mov	a,r4
      0046E0 12 5A 01         [24] 1058 	lcall	__gptrput
                                   1059 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:564: break;
      0046E3 02 48 7E         [24] 1060 	ljmp	00130$
                                   1061 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:566: case GAPROLE_CONNHANDLE:
      0046E6                       1062 00115$:
                                   1063 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:569: break;
      0046E6 02 48 7E         [24] 1064 	ljmp	00130$
                                   1065 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:571: case GAPROLE_RSSI_READ_RATE:
      0046E9                       1066 00116$:
                                   1067 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:572: *((uint16*)pValue) = gapRole_RSSIReadRate;
      0046E9 90 11 63         [24] 1068 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0046EC E0               [24] 1069 	movx	a,@dptr
      0046ED FD               [12] 1070 	mov	r5,a
      0046EE A3               [24] 1071 	inc	dptr
      0046EF E0               [24] 1072 	movx	a,@dptr
      0046F0 FE               [12] 1073 	mov	r6,a
      0046F1 A3               [24] 1074 	inc	dptr
      0046F2 E0               [24] 1075 	movx	a,@dptr
      0046F3 FF               [12] 1076 	mov	r7,a
      0046F4 90 11 40         [24] 1077 	mov	dptr,#_gapRole_RSSIReadRate
      0046F7 E0               [24] 1078 	movx	a,@dptr
      0046F8 FB               [12] 1079 	mov	r3,a
      0046F9 A3               [24] 1080 	inc	dptr
      0046FA E0               [24] 1081 	movx	a,@dptr
      0046FB FC               [12] 1082 	mov	r4,a
      0046FC 8D 82            [24] 1083 	mov	dpl,r5
      0046FE 8E 83            [24] 1084 	mov	dph,r6
      004700 8F F0            [24] 1085 	mov	b,r7
      004702 EB               [12] 1086 	mov	a,r3
      004703 12 5A 01         [24] 1087 	lcall	__gptrput
      004706 A3               [24] 1088 	inc	dptr
      004707 EC               [12] 1089 	mov	a,r4
      004708 12 5A 01         [24] 1090 	lcall	__gptrput
                                   1091 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:573: break;
      00470B 02 48 7E         [24] 1092 	ljmp	00130$
                                   1093 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:575: case GAPROLE_PARAM_UPDATE_ENABLE:
      00470E                       1094 00117$:
                                   1095 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:576: *((uint16*)pValue) = gapRole_ParamUpdateEnable;
      00470E 90 11 63         [24] 1096 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004711 E0               [24] 1097 	movx	a,@dptr
      004712 FD               [12] 1098 	mov	r5,a
      004713 A3               [24] 1099 	inc	dptr
      004714 E0               [24] 1100 	movx	a,@dptr
      004715 FE               [12] 1101 	mov	r6,a
      004716 A3               [24] 1102 	inc	dptr
      004717 E0               [24] 1103 	movx	a,@dptr
      004718 FF               [12] 1104 	mov	r7,a
      004719 90 11 4B         [24] 1105 	mov	dptr,#_gapRole_ParamUpdateEnable
      00471C E0               [24] 1106 	movx	a,@dptr
      00471D FC               [12] 1107 	mov	r4,a
      00471E 7B 00            [12] 1108 	mov	r3,#0x00
      004720 8D 82            [24] 1109 	mov	dpl,r5
      004722 8E 83            [24] 1110 	mov	dph,r6
      004724 8F F0            [24] 1111 	mov	b,r7
      004726 EC               [12] 1112 	mov	a,r4
      004727 12 5A 01         [24] 1113 	lcall	__gptrput
      00472A A3               [24] 1114 	inc	dptr
      00472B EB               [12] 1115 	mov	a,r3
      00472C 12 5A 01         [24] 1116 	lcall	__gptrput
                                   1117 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:577: break;
      00472F 02 48 7E         [24] 1118 	ljmp	00130$
                                   1119 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:579: case GAPROLE_MIN_CONN_INTERVAL:
      004732                       1120 00118$:
                                   1121 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:580: *((uint16*)pValue) = gapRole_MinConnInterval;
      004732 90 11 63         [24] 1122 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004735 E0               [24] 1123 	movx	a,@dptr
      004736 FD               [12] 1124 	mov	r5,a
      004737 A3               [24] 1125 	inc	dptr
      004738 E0               [24] 1126 	movx	a,@dptr
      004739 FE               [12] 1127 	mov	r6,a
      00473A A3               [24] 1128 	inc	dptr
      00473B E0               [24] 1129 	movx	a,@dptr
      00473C FF               [12] 1130 	mov	r7,a
      00473D 90 11 4C         [24] 1131 	mov	dptr,#_gapRole_MinConnInterval
      004740 E0               [24] 1132 	movx	a,@dptr
      004741 FB               [12] 1133 	mov	r3,a
      004742 A3               [24] 1134 	inc	dptr
      004743 E0               [24] 1135 	movx	a,@dptr
      004744 FC               [12] 1136 	mov	r4,a
      004745 8D 82            [24] 1137 	mov	dpl,r5
      004747 8E 83            [24] 1138 	mov	dph,r6
      004749 8F F0            [24] 1139 	mov	b,r7
      00474B EB               [12] 1140 	mov	a,r3
      00474C 12 5A 01         [24] 1141 	lcall	__gptrput
      00474F A3               [24] 1142 	inc	dptr
      004750 EC               [12] 1143 	mov	a,r4
      004751 12 5A 01         [24] 1144 	lcall	__gptrput
                                   1145 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:581: break;
      004754 02 48 7E         [24] 1146 	ljmp	00130$
                                   1147 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:583: case GAPROLE_MAX_CONN_INTERVAL:
      004757                       1148 00119$:
                                   1149 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:584: *((uint16*)pValue) = gapRole_MaxConnInterval;
      004757 90 11 63         [24] 1150 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00475A E0               [24] 1151 	movx	a,@dptr
      00475B FD               [12] 1152 	mov	r5,a
      00475C A3               [24] 1153 	inc	dptr
      00475D E0               [24] 1154 	movx	a,@dptr
      00475E FE               [12] 1155 	mov	r6,a
      00475F A3               [24] 1156 	inc	dptr
      004760 E0               [24] 1157 	movx	a,@dptr
      004761 FF               [12] 1158 	mov	r7,a
      004762 90 11 4E         [24] 1159 	mov	dptr,#_gapRole_MaxConnInterval
      004765 E0               [24] 1160 	movx	a,@dptr
      004766 FB               [12] 1161 	mov	r3,a
      004767 A3               [24] 1162 	inc	dptr
      004768 E0               [24] 1163 	movx	a,@dptr
      004769 FC               [12] 1164 	mov	r4,a
      00476A 8D 82            [24] 1165 	mov	dpl,r5
      00476C 8E 83            [24] 1166 	mov	dph,r6
      00476E 8F F0            [24] 1167 	mov	b,r7
      004770 EB               [12] 1168 	mov	a,r3
      004771 12 5A 01         [24] 1169 	lcall	__gptrput
      004774 A3               [24] 1170 	inc	dptr
      004775 EC               [12] 1171 	mov	a,r4
      004776 12 5A 01         [24] 1172 	lcall	__gptrput
                                   1173 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:585: break;
      004779 02 48 7E         [24] 1174 	ljmp	00130$
                                   1175 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:587: case GAPROLE_SLAVE_LATENCY:
      00477C                       1176 00120$:
                                   1177 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:588: *((uint16*)pValue) = gapRole_SlaveLatency;
      00477C 90 11 63         [24] 1178 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00477F E0               [24] 1179 	movx	a,@dptr
      004780 FD               [12] 1180 	mov	r5,a
      004781 A3               [24] 1181 	inc	dptr
      004782 E0               [24] 1182 	movx	a,@dptr
      004783 FE               [12] 1183 	mov	r6,a
      004784 A3               [24] 1184 	inc	dptr
      004785 E0               [24] 1185 	movx	a,@dptr
      004786 FF               [12] 1186 	mov	r7,a
      004787 90 11 50         [24] 1187 	mov	dptr,#_gapRole_SlaveLatency
      00478A E0               [24] 1188 	movx	a,@dptr
      00478B FB               [12] 1189 	mov	r3,a
      00478C A3               [24] 1190 	inc	dptr
      00478D E0               [24] 1191 	movx	a,@dptr
      00478E FC               [12] 1192 	mov	r4,a
      00478F 8D 82            [24] 1193 	mov	dpl,r5
      004791 8E 83            [24] 1194 	mov	dph,r6
      004793 8F F0            [24] 1195 	mov	b,r7
      004795 EB               [12] 1196 	mov	a,r3
      004796 12 5A 01         [24] 1197 	lcall	__gptrput
      004799 A3               [24] 1198 	inc	dptr
      00479A EC               [12] 1199 	mov	a,r4
      00479B 12 5A 01         [24] 1200 	lcall	__gptrput
                                   1201 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:589: break;
      00479E 02 48 7E         [24] 1202 	ljmp	00130$
                                   1203 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:591: case GAPROLE_TIMEOUT_MULTIPLIER:
      0047A1                       1204 00121$:
                                   1205 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:592: *((uint16*)pValue) = gapRole_TimeoutMultiplier;
      0047A1 90 11 63         [24] 1206 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0047A4 E0               [24] 1207 	movx	a,@dptr
      0047A5 FD               [12] 1208 	mov	r5,a
      0047A6 A3               [24] 1209 	inc	dptr
      0047A7 E0               [24] 1210 	movx	a,@dptr
      0047A8 FE               [12] 1211 	mov	r6,a
      0047A9 A3               [24] 1212 	inc	dptr
      0047AA E0               [24] 1213 	movx	a,@dptr
      0047AB FF               [12] 1214 	mov	r7,a
      0047AC 90 11 52         [24] 1215 	mov	dptr,#_gapRole_TimeoutMultiplier
      0047AF E0               [24] 1216 	movx	a,@dptr
      0047B0 FB               [12] 1217 	mov	r3,a
      0047B1 A3               [24] 1218 	inc	dptr
      0047B2 E0               [24] 1219 	movx	a,@dptr
      0047B3 FC               [12] 1220 	mov	r4,a
      0047B4 8D 82            [24] 1221 	mov	dpl,r5
      0047B6 8E 83            [24] 1222 	mov	dph,r6
      0047B8 8F F0            [24] 1223 	mov	b,r7
      0047BA EB               [12] 1224 	mov	a,r3
      0047BB 12 5A 01         [24] 1225 	lcall	__gptrput
      0047BE A3               [24] 1226 	inc	dptr
      0047BF EC               [12] 1227 	mov	a,r4
      0047C0 12 5A 01         [24] 1228 	lcall	__gptrput
                                   1229 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:593: break;
      0047C3 02 48 7E         [24] 1230 	ljmp	00130$
                                   1231 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:595: case GAPROLE_CONN_BD_ADDR:
      0047C6                       1232 00122$:
                                   1233 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:596: VOID osal_memcpy( pValue, gapRole_ConnectedDevAddr, B_ADDR_LEN ) ;
      0047C6 90 11 63         [24] 1234 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0047C9 E0               [24] 1235 	movx	a,@dptr
      0047CA FD               [12] 1236 	mov	r5,a
      0047CB A3               [24] 1237 	inc	dptr
      0047CC E0               [24] 1238 	movx	a,@dptr
      0047CD FE               [12] 1239 	mov	r6,a
      0047CE A3               [24] 1240 	inc	dptr
      0047CF E0               [24] 1241 	movx	a,@dptr
      0047D0 FF               [12] 1242 	mov	r7,a
      0047D1 90 03 0C         [24] 1243 	mov	dptr,#_osal_memcpy_PARM_2
      0047D4 74 45            [12] 1244 	mov	a,#_gapRole_ConnectedDevAddr
      0047D6 F0               [24] 1245 	movx	@dptr,a
      0047D7 74 11            [12] 1246 	mov	a,#(_gapRole_ConnectedDevAddr >> 8)
      0047D9 A3               [24] 1247 	inc	dptr
      0047DA F0               [24] 1248 	movx	@dptr,a
      0047DB 74 00            [12] 1249 	mov	a,#0x00
      0047DD A3               [24] 1250 	inc	dptr
      0047DE F0               [24] 1251 	movx	@dptr,a
      0047DF 90 03 0F         [24] 1252 	mov	dptr,#_osal_memcpy_PARM_3
      0047E2 74 06            [12] 1253 	mov	a,#0x06
      0047E4 F0               [24] 1254 	movx	@dptr,a
      0047E5 74 00            [12] 1255 	mov	a,#0x00
      0047E7 A3               [24] 1256 	inc	dptr
      0047E8 F0               [24] 1257 	movx	@dptr,a
      0047E9 8D 82            [24] 1258 	mov	dpl,r5
      0047EB 8E 83            [24] 1259 	mov	dph,r6
      0047ED 8F F0            [24] 1260 	mov	b,r7
      0047EF 12 04 76         [24] 1261 	lcall	_osal_memcpy
                                   1262 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:597: break;
      0047F2 02 48 7E         [24] 1263 	ljmp	00130$
                                   1264 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:599: case GAPROLE_CONN_INTERVAL:
      0047F5                       1265 00123$:
                                   1266 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:600: *((uint16*)pValue) = gapRole_ConnInterval;
      0047F5 90 11 63         [24] 1267 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      0047F8 E0               [24] 1268 	movx	a,@dptr
      0047F9 FD               [12] 1269 	mov	r5,a
      0047FA A3               [24] 1270 	inc	dptr
      0047FB E0               [24] 1271 	movx	a,@dptr
      0047FC FE               [12] 1272 	mov	r6,a
      0047FD A3               [24] 1273 	inc	dptr
      0047FE E0               [24] 1274 	movx	a,@dptr
      0047FF FF               [12] 1275 	mov	r7,a
      004800 90 11 54         [24] 1276 	mov	dptr,#_gapRole_ConnInterval
      004803 E0               [24] 1277 	movx	a,@dptr
      004804 FB               [12] 1278 	mov	r3,a
      004805 A3               [24] 1279 	inc	dptr
      004806 E0               [24] 1280 	movx	a,@dptr
      004807 FC               [12] 1281 	mov	r4,a
      004808 8D 82            [24] 1282 	mov	dpl,r5
      00480A 8E 83            [24] 1283 	mov	dph,r6
      00480C 8F F0            [24] 1284 	mov	b,r7
      00480E EB               [12] 1285 	mov	a,r3
      00480F 12 5A 01         [24] 1286 	lcall	__gptrput
      004812 A3               [24] 1287 	inc	dptr
      004813 EC               [12] 1288 	mov	a,r4
      004814 12 5A 01         [24] 1289 	lcall	__gptrput
                                   1290 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:601: break;
      004817 02 48 7E         [24] 1291 	ljmp	00130$
                                   1292 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:603: case GAPROLE_CONN_LATENCY:
      00481A                       1293 00124$:
                                   1294 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:604: *((uint16*)pValue) = gapRole_ConnSlaveLatency;
      00481A 90 11 63         [24] 1295 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      00481D E0               [24] 1296 	movx	a,@dptr
      00481E FD               [12] 1297 	mov	r5,a
      00481F A3               [24] 1298 	inc	dptr
      004820 E0               [24] 1299 	movx	a,@dptr
      004821 FE               [12] 1300 	mov	r6,a
      004822 A3               [24] 1301 	inc	dptr
      004823 E0               [24] 1302 	movx	a,@dptr
      004824 FF               [12] 1303 	mov	r7,a
      004825 90 11 56         [24] 1304 	mov	dptr,#_gapRole_ConnSlaveLatency
      004828 E0               [24] 1305 	movx	a,@dptr
      004829 FB               [12] 1306 	mov	r3,a
      00482A A3               [24] 1307 	inc	dptr
      00482B E0               [24] 1308 	movx	a,@dptr
      00482C FC               [12] 1309 	mov	r4,a
      00482D 8D 82            [24] 1310 	mov	dpl,r5
      00482F 8E 83            [24] 1311 	mov	dph,r6
      004831 8F F0            [24] 1312 	mov	b,r7
      004833 EB               [12] 1313 	mov	a,r3
      004834 12 5A 01         [24] 1314 	lcall	__gptrput
      004837 A3               [24] 1315 	inc	dptr
      004838 EC               [12] 1316 	mov	a,r4
      004839 12 5A 01         [24] 1317 	lcall	__gptrput
                                   1318 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:605: break;
      00483C 02 48 7E         [24] 1319 	ljmp	00130$
                                   1320 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:607: case GAPROLE_CONN_TIMEOUT:
      00483F                       1321 00125$:
                                   1322 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:608: *((uint16*)pValue) = gapRole_ConnTimeout;
      00483F 90 11 63         [24] 1323 	mov	dptr,#_GAPRole_GetParameter_PARM_2
      004842 E0               [24] 1324 	movx	a,@dptr
      004843 FD               [12] 1325 	mov	r5,a
      004844 A3               [24] 1326 	inc	dptr
      004845 E0               [24] 1327 	movx	a,@dptr
      004846 FE               [12] 1328 	mov	r6,a
      004847 A3               [24] 1329 	inc	dptr
      004848 E0               [24] 1330 	movx	a,@dptr
      004849 FF               [12] 1331 	mov	r7,a
      00484A 90 11 58         [24] 1332 	mov	dptr,#_gapRole_ConnTimeout
      00484D E0               [24] 1333 	movx	a,@dptr
      00484E FB               [12] 1334 	mov	r3,a
      00484F A3               [24] 1335 	inc	dptr
      004850 E0               [24] 1336 	movx	a,@dptr
      004851 FC               [12] 1337 	mov	r4,a
      004852 8D 82            [24] 1338 	mov	dpl,r5
      004854 8E 83            [24] 1339 	mov	dph,r6
      004856 8F F0            [24] 1340 	mov	b,r7
      004858 EB               [12] 1341 	mov	a,r3
      004859 12 5A 01         [24] 1342 	lcall	__gptrput
      00485C A3               [24] 1343 	inc	dptr
      00485D EC               [12] 1344 	mov	a,r4
      00485E 12 5A 01         [24] 1345 	lcall	__gptrput
                                   1346 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:609: break;
      004861 02 48 7E         [24] 1347 	ljmp	00130$
                                   1348 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:611: default:
      004864                       1349 00126$:
                                   1350 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:613: if ( param < TGAP_PARAMID_MAX )
      004864 90 11 66         [24] 1351 	mov	dptr,#_GAPRole_GetParameter_param_1_258
      004867 E0               [24] 1352 	movx	a,@dptr
      004868 FE               [12] 1353 	mov	r6,a
      004869 A3               [24] 1354 	inc	dptr
      00486A E0               [24] 1355 	movx	a,@dptr
      00486B FF               [12] 1356 	mov	r7,a
      00486C C3               [12] 1357 	clr	c
      00486D EE               [12] 1358 	mov	a,r6
      00486E 94 24            [12] 1359 	subb	a,#0x24
      004870 EF               [12] 1360 	mov	a,r7
      004871 94 00            [12] 1361 	subb	a,#0x00
      004873 50 03            [24] 1362 	jnc	00146$
      004875 02 48 7E         [24] 1363 	ljmp	00130$
      004878                       1364 00146$:
                                   1365 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:619: ret = INVALIDPARAMETER;
      004878 90 11 68         [24] 1366 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      00487B 74 02            [12] 1367 	mov	a,#0x02
      00487D F0               [24] 1368 	movx	@dptr,a
                                   1369 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:622: }
      00487E                       1370 00130$:
                                   1371 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:624: return ( ret );
      00487E 90 11 68         [24] 1372 	mov	dptr,#_GAPRole_GetParameter_ret_1_259
      004881 E0               [24] 1373 	movx	a,@dptr
      004882 FF               [12] 1374 	mov	r7,a
      004883 8F 82            [24] 1375 	mov	dpl,r7
      004885                       1376 00131$:
      004885 22               [24] 1377 	ret
                                   1378 ;------------------------------------------------------------
                                   1379 ;Allocation info for local variables in function 'GAPRole_StartDevice'
                                   1380 ;------------------------------------------------------------
                                   1381 ;pAppCallbacks             Allocated with name '_GAPRole_StartDevice_pAppCallbacks_1_263'
                                   1382 ;------------------------------------------------------------
                                   1383 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:632: bStatus_t GAPRole_StartDevice( gapRolesCBs_t *pAppCallbacks )
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function GAPRole_StartDevice
                                   1386 ;	-----------------------------------------
      004886                       1387 _GAPRole_StartDevice:
      004886 AF F0            [24] 1388 	mov	r7,b
      004888 AE 83            [24] 1389 	mov	r6,dph
      00488A E5 82            [12] 1390 	mov	a,dpl
      00488C 90 11 69         [24] 1391 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      00488F F0               [24] 1392 	movx	@dptr,a
      004890 EE               [12] 1393 	mov	a,r6
      004891 A3               [24] 1394 	inc	dptr
      004892 F0               [24] 1395 	movx	@dptr,a
      004893 EF               [12] 1396 	mov	a,r7
      004894 A3               [24] 1397 	inc	dptr
      004895 F0               [24] 1398 	movx	@dptr,a
                                   1399 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:636: if ( gapRole_state == GAPROLE_INIT )
      004896 90 10 C7         [24] 1400 	mov	dptr,#_gapRole_state
      004899 E0               [24] 1401 	movx	a,@dptr
      00489A FF               [12] 1402 	mov	r7,a
      00489B EF               [12] 1403 	mov	a,r7
      00489C 60 03            [24] 1404 	jz	00114$
      00489E 02 48 D2         [24] 1405 	ljmp	00104$
      0048A1                       1406 00114$:
                                   1407 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:639: if ( pAppCallbacks )
      0048A1 90 11 69         [24] 1408 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      0048A4 E0               [24] 1409 	movx	a,@dptr
      0048A5 FD               [12] 1410 	mov	r5,a
      0048A6 A3               [24] 1411 	inc	dptr
      0048A7 E0               [24] 1412 	movx	a,@dptr
      0048A8 FE               [12] 1413 	mov	r6,a
      0048A9 A3               [24] 1414 	inc	dptr
      0048AA E0               [24] 1415 	movx	a,@dptr
      0048AB FF               [12] 1416 	mov	r7,a
      0048AC ED               [12] 1417 	mov	a,r5
      0048AD 4E               [12] 1418 	orl	a,r6
      0048AE 70 03            [24] 1419 	jnz	00115$
      0048B0 02 48 C9         [24] 1420 	ljmp	00102$
      0048B3                       1421 00115$:
                                   1422 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:641: pGapRoles_AppCGs = pAppCallbacks;
      0048B3 90 11 69         [24] 1423 	mov	dptr,#_GAPRole_StartDevice_pAppCallbacks_1_263
      0048B6 E0               [24] 1424 	movx	a,@dptr
      0048B7 FD               [12] 1425 	mov	r5,a
      0048B8 A3               [24] 1426 	inc	dptr
      0048B9 E0               [24] 1427 	movx	a,@dptr
      0048BA FE               [12] 1428 	mov	r6,a
      0048BB A3               [24] 1429 	inc	dptr
      0048BC E0               [24] 1430 	movx	a,@dptr
      0048BD FF               [12] 1431 	mov	r7,a
      0048BE 90 11 42         [24] 1432 	mov	dptr,#_pGapRoles_AppCGs
      0048C1 ED               [12] 1433 	mov	a,r5
      0048C2 F0               [24] 1434 	movx	@dptr,a
      0048C3 EE               [12] 1435 	mov	a,r6
      0048C4 A3               [24] 1436 	inc	dptr
      0048C5 F0               [24] 1437 	movx	@dptr,a
      0048C6 EF               [12] 1438 	mov	a,r7
      0048C7 A3               [24] 1439 	inc	dptr
      0048C8 F0               [24] 1440 	movx	@dptr,a
      0048C9                       1441 00102$:
                                   1442 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:645: gapRole_SetupGAP();
      0048C9 12 4B 48         [24] 1443 	lcall	_gapRole_SetupGAP
                                   1444 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:647: return ( SUCCESS );
      0048CC 75 82 00         [24] 1445 	mov	dpl,#0x00
      0048CF 02 48 D5         [24] 1446 	ljmp	00106$
      0048D2                       1447 00104$:
                                   1448 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:651: return ( bleAlreadyInRequestedMode );
      0048D2 75 82 11         [24] 1449 	mov	dpl,#0x11
      0048D5                       1450 00106$:
      0048D5 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'GAPRole_Init'
                                   1454 ;------------------------------------------------------------
                                   1455 ;task_id                   Allocated with name '_GAPRole_Init_task_id_1_268'
                                   1456 ;------------------------------------------------------------
                                   1457 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:683: void GAPRole_Init( uint8 task_id )
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function GAPRole_Init
                                   1460 ;	-----------------------------------------
      0048D6                       1461 _GAPRole_Init:
      0048D6 E5 82            [12] 1462 	mov	a,dpl
      0048D8 90 11 6C         [24] 1463 	mov	dptr,#_GAPRole_Init_task_id_1_268
      0048DB F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:685: gapRole_TaskID = task_id;
      0048DC E0               [24] 1466 	movx	a,@dptr
      0048DD FF               [12] 1467 	mov	r7,a
      0048DE 90 10 C6         [24] 1468 	mov	dptr,#_gapRole_TaskID
      0048E1 EF               [12] 1469 	mov	a,r7
      0048E2 F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:687: gapRole_state = GAPROLE_INIT;
      0048E3 90 10 C7         [24] 1472 	mov	dptr,#_gapRole_state
      0048E6 74 00            [12] 1473 	mov	a,#0x00
      0048E8 F0               [24] 1474 	movx	@dptr,a
                                   1475 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:693: gapRole_profileRole = GAP_PROFILE_PERIPHERAL;
      0048E9 90 10 C8         [24] 1476 	mov	dptr,#_gapRole_profileRole
      0048EC 74 04            [12] 1477 	mov	a,#0x04
      0048EE F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:694: VOID osal_memset( gapRole_IRK, 0, KEYLEN );
      0048EF 90 03 3E         [24] 1480 	mov	dptr,#_osal_memset_PARM_2
      0048F2 74 00            [12] 1481 	mov	a,#0x00
      0048F4 F0               [24] 1482 	movx	@dptr,a
      0048F5 90 03 3F         [24] 1483 	mov	dptr,#_osal_memset_PARM_3
      0048F8 74 10            [12] 1484 	mov	a,#0x10
      0048FA F0               [24] 1485 	movx	@dptr,a
      0048FB 74 00            [12] 1486 	mov	a,#0x00
      0048FD A3               [24] 1487 	inc	dptr
      0048FE F0               [24] 1488 	movx	@dptr,a
      0048FF 75 82 C9         [24] 1489 	mov	dpl,#_gapRole_IRK
      004902 75 83 10         [24] 1490 	mov	dph,#(_gapRole_IRK >> 8)
      004905 75 F0 00         [24] 1491 	mov	b,#0x00
      004908 12 07 03         [24] 1492 	lcall	_osal_memset
                                   1493 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:695: VOID osal_memset( gapRole_SRK, 0, KEYLEN );
      00490B 90 03 3E         [24] 1494 	mov	dptr,#_osal_memset_PARM_2
      00490E 74 00            [12] 1495 	mov	a,#0x00
      004910 F0               [24] 1496 	movx	@dptr,a
      004911 90 03 3F         [24] 1497 	mov	dptr,#_osal_memset_PARM_3
      004914 74 10            [12] 1498 	mov	a,#0x10
      004916 F0               [24] 1499 	movx	@dptr,a
      004917 74 00            [12] 1500 	mov	a,#0x00
      004919 A3               [24] 1501 	inc	dptr
      00491A F0               [24] 1502 	movx	@dptr,a
      00491B 75 82 D9         [24] 1503 	mov	dpl,#_gapRole_SRK
      00491E 75 83 10         [24] 1504 	mov	dph,#(_gapRole_SRK >> 8)
      004921 75 F0 00         [24] 1505 	mov	b,#0x00
      004924 12 07 03         [24] 1506 	lcall	_osal_memset
                                   1507 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:696: gapRole_signCounter = 0;
      004927 90 10 E9         [24] 1508 	mov	dptr,#_gapRole_signCounter
      00492A 74 00            [12] 1509 	mov	a,#0x00
      00492C F0               [24] 1510 	movx	@dptr,a
      00492D A3               [24] 1511 	inc	dptr
      00492E F0               [24] 1512 	movx	@dptr,a
      00492F A3               [24] 1513 	inc	dptr
      004930 F0               [24] 1514 	movx	@dptr,a
      004931 A3               [24] 1515 	inc	dptr
      004932 F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:697: gapRole_AdvEventType = GAP_ADTYPE_ADV_IND;
      004933 90 11 36         [24] 1518 	mov	dptr,#_gapRole_AdvEventType
      004936 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:698: gapRole_AdvDirectType = ADDRTYPE_PUBLIC;
      004937 90 11 37         [24] 1521 	mov	dptr,#_gapRole_AdvDirectType
      00493A F0               [24] 1522 	movx	@dptr,a
                                   1523 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:699: gapRole_AdvChanMap = GAP_ADVCHAN_ALL;
      00493B 90 11 3E         [24] 1524 	mov	dptr,#_gapRole_AdvChanMap
      00493E 74 07            [12] 1525 	mov	a,#0x07
      004940 F0               [24] 1526 	movx	@dptr,a
                                   1527 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:700: gapRole_AdvFilterPolicy = GAP_FILTER_POLICY_ALL;
      004941 90 11 3F         [24] 1528 	mov	dptr,#_gapRole_AdvFilterPolicy
      004944 74 00            [12] 1529 	mov	a,#0x00
      004946 F0               [24] 1530 	movx	@dptr,a
      004947                       1531 00101$:
      004947 22               [24] 1532 	ret
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
      004948                       1544 _GAPRole_ProcessEvent:
      004948 C0 1D            [24] 1545 	push	_bp
      00494A 85 81 1D         [24] 1546 	mov	_bp,sp
      00494D E5 81            [12] 1547 	mov	a,sp
      00494F 24 0A            [12] 1548 	add	a,#0x0A
      004951 F5 81            [12] 1549 	mov	sp,a
                                   1550 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:716: if ( events & START_ADVERTISING_EVT )
      004953 E5 1D            [12] 1551 	mov	a,_bp
      004955 24 FC            [12] 1552 	add	a,#0xfc
      004957 F8               [12] 1553 	mov	r0,a
      004958 E6               [12] 1554 	mov	a,@r0
      004959 20 E0 03         [24] 1555 	jb	acc.0,00138$
      00495C 02 4A 62         [24] 1556 	ljmp	00109$
      00495F                       1557 00138$:
                                   1558 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:718: if ( gapRole_AdvEnabled )
      00495F 90 10 F3         [24] 1559 	mov	dptr,#_gapRole_AdvEnabled
      004962 E0               [24] 1560 	movx	a,@dptr
      004963 FF               [12] 1561 	mov	r7,a
      004964 EF               [12] 1562 	mov	a,r7
      004965 70 03            [24] 1563 	jnz	00139$
      004967 02 4A 4F         [24] 1564 	ljmp	00107$
      00496A                       1565 00139$:
                                   1566 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:723: params.eventType = gapRole_AdvEventType;
      00496A A9 1D            [24] 1567 	mov	r1,_bp
      00496C 09               [12] 1568 	inc	r1
      00496D 90 11 36         [24] 1569 	mov	dptr,#_gapRole_AdvEventType
      004970 E0               [24] 1570 	movx	a,@dptr
      004971 FF               [12] 1571 	mov	r7,a
      004972 A7 07            [24] 1572 	mov	@r1,ar7
                                   1573 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:724: params.initiatorAddrType = gapRole_AdvDirectType;
      004974 AF 1D            [24] 1574 	mov	r7,_bp
      004976 0F               [12] 1575 	inc	r7
      004977 EF               [12] 1576 	mov	a,r7
      004978 04               [12] 1577 	inc	a
      004979 F9               [12] 1578 	mov	r1,a
      00497A 90 11 37         [24] 1579 	mov	dptr,#_gapRole_AdvDirectType
      00497D E0               [24] 1580 	movx	a,@dptr
      00497E FE               [12] 1581 	mov	r6,a
      00497F A7 06            [24] 1582 	mov	@r1,ar6
                                   1583 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:725: VOID osal_memcpy( params.initiatorAddr, gapRole_AdvDirectAddr, B_ADDR_LEN );
      004981 74 02            [12] 1584 	mov	a,#0x02
      004983 2F               [12] 1585 	add	a,r7
      004984 FE               [12] 1586 	mov	r6,a
      004985 7D 00            [12] 1587 	mov	r5,#0x00
      004987 7C 40            [12] 1588 	mov	r4,#0x40
      004989 90 03 0C         [24] 1589 	mov	dptr,#_osal_memcpy_PARM_2
      00498C 74 38            [12] 1590 	mov	a,#_gapRole_AdvDirectAddr
      00498E F0               [24] 1591 	movx	@dptr,a
      00498F 74 11            [12] 1592 	mov	a,#(_gapRole_AdvDirectAddr >> 8)
      004991 A3               [24] 1593 	inc	dptr
      004992 F0               [24] 1594 	movx	@dptr,a
      004993 74 00            [12] 1595 	mov	a,#0x00
      004995 A3               [24] 1596 	inc	dptr
      004996 F0               [24] 1597 	movx	@dptr,a
      004997 90 03 0F         [24] 1598 	mov	dptr,#_osal_memcpy_PARM_3
      00499A 74 06            [12] 1599 	mov	a,#0x06
      00499C F0               [24] 1600 	movx	@dptr,a
      00499D 74 00            [12] 1601 	mov	a,#0x00
      00499F A3               [24] 1602 	inc	dptr
      0049A0 F0               [24] 1603 	movx	@dptr,a
      0049A1 8E 82            [24] 1604 	mov	dpl,r6
      0049A3 8D 83            [24] 1605 	mov	dph,r5
      0049A5 8C F0            [24] 1606 	mov	b,r4
      0049A7 C0 07            [24] 1607 	push	ar7
      0049A9 12 04 76         [24] 1608 	lcall	_osal_memcpy
      0049AC D0 07            [24] 1609 	pop	ar7
                                   1610 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:726: params.channelMap = gapRole_AdvChanMap;
      0049AE 74 08            [12] 1611 	mov	a,#0x08
      0049B0 2F               [12] 1612 	add	a,r7
      0049B1 F9               [12] 1613 	mov	r1,a
      0049B2 90 11 3E         [24] 1614 	mov	dptr,#_gapRole_AdvChanMap
      0049B5 E0               [24] 1615 	movx	a,@dptr
      0049B6 FE               [12] 1616 	mov	r6,a
      0049B7 A7 06            [24] 1617 	mov	@r1,ar6
                                   1618 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:727: params.filterPolicy = gapRole_AdvFilterPolicy;
      0049B9 74 09            [12] 1619 	mov	a,#0x09
      0049BB 2F               [12] 1620 	add	a,r7
      0049BC F9               [12] 1621 	mov	r1,a
      0049BD 90 11 3F         [24] 1622 	mov	dptr,#_gapRole_AdvFilterPolicy
      0049C0 E0               [24] 1623 	movx	a,@dptr
      0049C1 FE               [12] 1624 	mov	r6,a
      0049C2 A7 06            [24] 1625 	mov	@r1,ar6
                                   1626 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:729: if ( GAP_MakeDiscoverable( gapRole_TaskID, &params ) != SUCCESS )
      0049C4 90 10 C6         [24] 1627 	mov	dptr,#_gapRole_TaskID
      0049C7 E0               [24] 1628 	movx	a,@dptr
      0049C8 FE               [12] 1629 	mov	r6,a
      0049C9 90 11 6D         [24] 1630 	mov	dptr,#_GAP_MakeDiscoverable_PARM_2
      0049CC EF               [12] 1631 	mov	a,r7
      0049CD F0               [24] 1632 	movx	@dptr,a
      0049CE 74 00            [12] 1633 	mov	a,#0x00
      0049D0 A3               [24] 1634 	inc	dptr
      0049D1 F0               [24] 1635 	movx	@dptr,a
      0049D2 74 40            [12] 1636 	mov	a,#0x40
      0049D4 A3               [24] 1637 	inc	dptr
      0049D5 F0               [24] 1638 	movx	@dptr,a
      0049D6 8E 82            [24] 1639 	mov	dpl,r6
      0049D8 12 4B 64         [24] 1640 	lcall	_GAP_MakeDiscoverable
      0049DB E5 82            [12] 1641 	mov	a,dpl
      0049DD 70 03            [24] 1642 	jnz	00140$
      0049DF 02 4A 4F         [24] 1643 	ljmp	00107$
      0049E2                       1644 00140$:
                                   1645 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:731: gapRole_state = GAPROLE_ERROR;
      0049E2 90 10 C7         [24] 1646 	mov	dptr,#_gapRole_state
      0049E5 74 06            [12] 1647 	mov	a,#0x06
      0049E7 F0               [24] 1648 	movx	@dptr,a
                                   1649 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:732: if ( pGapRoles_AppCGs && pGapRoles_AppCGs->pfnStateChange )
      0049E8 90 11 42         [24] 1650 	mov	dptr,#_pGapRoles_AppCGs
      0049EB E0               [24] 1651 	movx	a,@dptr
      0049EC FD               [12] 1652 	mov	r5,a
      0049ED A3               [24] 1653 	inc	dptr
      0049EE E0               [24] 1654 	movx	a,@dptr
      0049EF FE               [12] 1655 	mov	r6,a
      0049F0 A3               [24] 1656 	inc	dptr
      0049F1 E0               [24] 1657 	movx	a,@dptr
      0049F2 FF               [12] 1658 	mov	r7,a
      0049F3 ED               [12] 1659 	mov	a,r5
      0049F4 4E               [12] 1660 	orl	a,r6
      0049F5 70 03            [24] 1661 	jnz	00141$
      0049F7 02 4A 4F         [24] 1662 	ljmp	00107$
      0049FA                       1663 00141$:
      0049FA 90 11 42         [24] 1664 	mov	dptr,#_pGapRoles_AppCGs
      0049FD E0               [24] 1665 	movx	a,@dptr
      0049FE FD               [12] 1666 	mov	r5,a
      0049FF A3               [24] 1667 	inc	dptr
      004A00 E0               [24] 1668 	movx	a,@dptr
      004A01 FE               [12] 1669 	mov	r6,a
      004A02 A3               [24] 1670 	inc	dptr
      004A03 E0               [24] 1671 	movx	a,@dptr
      004A04 FF               [12] 1672 	mov	r7,a
      004A05 8D 82            [24] 1673 	mov	dpl,r5
      004A07 8E 83            [24] 1674 	mov	dph,r6
      004A09 8F F0            [24] 1675 	mov	b,r7
      004A0B 12 5B 6D         [24] 1676 	lcall	__gptrget
      004A0E FD               [12] 1677 	mov	r5,a
      004A0F A3               [24] 1678 	inc	dptr
      004A10 12 5B 6D         [24] 1679 	lcall	__gptrget
      004A13 FE               [12] 1680 	mov	r6,a
      004A14 ED               [12] 1681 	mov	a,r5
      004A15 4E               [12] 1682 	orl	a,r6
      004A16 70 03            [24] 1683 	jnz	00142$
      004A18 02 4A 4F         [24] 1684 	ljmp	00107$
      004A1B                       1685 00142$:
                                   1686 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:734: pGapRoles_AppCGs->pfnStateChange( gapRole_state );
      004A1B 90 11 42         [24] 1687 	mov	dptr,#_pGapRoles_AppCGs
      004A1E E0               [24] 1688 	movx	a,@dptr
      004A1F FD               [12] 1689 	mov	r5,a
      004A20 A3               [24] 1690 	inc	dptr
      004A21 E0               [24] 1691 	movx	a,@dptr
      004A22 FE               [12] 1692 	mov	r6,a
      004A23 A3               [24] 1693 	inc	dptr
      004A24 E0               [24] 1694 	movx	a,@dptr
      004A25 FF               [12] 1695 	mov	r7,a
      004A26 8D 82            [24] 1696 	mov	dpl,r5
      004A28 8E 83            [24] 1697 	mov	dph,r6
      004A2A 8F F0            [24] 1698 	mov	b,r7
      004A2C 12 5B 6D         [24] 1699 	lcall	__gptrget
      004A2F FD               [12] 1700 	mov	r5,a
      004A30 A3               [24] 1701 	inc	dptr
      004A31 12 5B 6D         [24] 1702 	lcall	__gptrget
      004A34 FE               [12] 1703 	mov	r6,a
      004A35 90 10 C7         [24] 1704 	mov	dptr,#_gapRole_state
      004A38 E0               [24] 1705 	movx	a,@dptr
      004A39 FF               [12] 1706 	mov	r7,a
      004A3A C0 06            [24] 1707 	push	ar6
      004A3C C0 05            [24] 1708 	push	ar5
      004A3E 12 4A 44         [24] 1709 	lcall	00143$
      004A41 02 4A 4B         [24] 1710 	ljmp	00144$
      004A44                       1711 00143$:
      004A44 C0 05            [24] 1712 	push	ar5
      004A46 C0 06            [24] 1713 	push	ar6
      004A48 8F 82            [24] 1714 	mov	dpl,r7
      004A4A 22               [24] 1715 	ret
      004A4B                       1716 00144$:
      004A4B D0 05            [24] 1717 	pop	ar5
      004A4D D0 06            [24] 1718 	pop	ar6
      004A4F                       1719 00107$:
                                   1720 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:738: return ( events ^ START_ADVERTISING_EVT );
      004A4F E5 1D            [12] 1721 	mov	a,_bp
      004A51 24 FC            [12] 1722 	add	a,#0xfc
      004A53 F8               [12] 1723 	mov	r0,a
      004A54 74 01            [12] 1724 	mov	a,#0x01
      004A56 66               [12] 1725 	xrl	a,@r0
      004A57 FE               [12] 1726 	mov	r6,a
      004A58 08               [12] 1727 	inc	r0
      004A59 86 07            [24] 1728 	mov	ar7,@r0
      004A5B 8E 82            [24] 1729 	mov	dpl,r6
      004A5D 8F 83            [24] 1730 	mov	dph,r7
      004A5F 02 4A C1         [24] 1731 	ljmp	00115$
      004A62                       1732 00109$:
                                   1733 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:776: if(events & CHECK_BLE_STACK){
      004A62 E5 1D            [12] 1734 	mov	a,_bp
      004A64 24 FC            [12] 1735 	add	a,#0xfc
      004A66 F8               [12] 1736 	mov	r0,a
      004A67 E6               [12] 1737 	mov	a,@r0
      004A68 20 E3 03         [24] 1738 	jb	acc.3,00145$
      004A6B 02 4A BB         [24] 1739 	ljmp	00114$
      004A6E                       1740 00145$:
                                   1741 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:779: if(CHECK_TIME && BleChecker() == false){
      004A6E 12 4A C7         [24] 1742 	lcall	_BleChecker
      004A71 E5 82            [12] 1743 	mov	a,dpl
      004A73 60 03            [24] 1744 	jz	00146$
      004A75 02 4A A8         [24] 1745 	ljmp	00111$
      004A78                       1746 00146$:
                                   1747 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:782: uartWriteString("GAP ble ckecker====\r\n");
      004A78 75 82 CE         [24] 1748 	mov	dpl,#___str_0
      004A7B 75 83 5B         [24] 1749 	mov	dph,#(___str_0 >> 8)
      004A7E 75 F0 80         [24] 1750 	mov	b,#0x80
      004A81 12 3D 28         [24] 1751 	lcall	_uartWriteString
                                   1752 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:784: osal_start_timerEx( gapRole_TaskID, CHECK_BLE_STACK, CHECK_TIME );
      004A84 90 10 C6         [24] 1753 	mov	dptr,#_gapRole_TaskID
      004A87 E0               [24] 1754 	movx	a,@dptr
      004A88 FF               [12] 1755 	mov	r7,a
      004A89 90 10 3D         [24] 1756 	mov	dptr,#_osal_start_timerEx_PARM_2
      004A8C 74 08            [12] 1757 	mov	a,#0x08
      004A8E F0               [24] 1758 	movx	@dptr,a
      004A8F 74 00            [12] 1759 	mov	a,#0x00
      004A91 A3               [24] 1760 	inc	dptr
      004A92 F0               [24] 1761 	movx	@dptr,a
      004A93 90 10 3F         [24] 1762 	mov	dptr,#_osal_start_timerEx_PARM_3
      004A96 74 2C            [12] 1763 	mov	a,#0x2C
      004A98 F0               [24] 1764 	movx	@dptr,a
      004A99 74 01            [12] 1765 	mov	a,#0x01
      004A9B A3               [24] 1766 	inc	dptr
      004A9C F0               [24] 1767 	movx	@dptr,a
      004A9D 74 00            [12] 1768 	mov	a,#0x00
      004A9F A3               [24] 1769 	inc	dptr
      004AA0 F0               [24] 1770 	movx	@dptr,a
      004AA1 A3               [24] 1771 	inc	dptr
      004AA2 F0               [24] 1772 	movx	@dptr,a
      004AA3 8F 82            [24] 1773 	mov	dpl,r7
      004AA5 12 27 54         [24] 1774 	lcall	_osal_start_timerEx
      004AA8                       1775 00111$:
                                   1776 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:793: return ( events ^ CHECK_BLE_STACK );    
      004AA8 E5 1D            [12] 1777 	mov	a,_bp
      004AAA 24 FC            [12] 1778 	add	a,#0xfc
      004AAC F8               [12] 1779 	mov	r0,a
      004AAD 74 08            [12] 1780 	mov	a,#0x08
      004AAF 66               [12] 1781 	xrl	a,@r0
      004AB0 FE               [12] 1782 	mov	r6,a
      004AB1 08               [12] 1783 	inc	r0
      004AB2 86 07            [24] 1784 	mov	ar7,@r0
      004AB4 8E 82            [24] 1785 	mov	dpl,r6
      004AB6 8F 83            [24] 1786 	mov	dph,r7
      004AB8 02 4A C1         [24] 1787 	ljmp	00115$
      004ABB                       1788 00114$:
                                   1789 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:803: return 0;
      004ABB 75 82 00         [24] 1790 	mov	dpl,#0x00
      004ABE 75 83 00         [24] 1791 	mov	dph,#0x00
      004AC1                       1792 00115$:
      004AC1 85 1D 81         [24] 1793 	mov	sp,_bp
      004AC4 D0 1D            [24] 1794 	pop	_bp
      004AC6 22               [24] 1795 	ret
                                   1796 ;------------------------------------------------------------
                                   1797 ;Allocation info for local variables in function 'BleChecker'
                                   1798 ;------------------------------------------------------------
                                   1799 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1111: static bool BleChecker(void){
                                   1800 ;	-----------------------------------------
                                   1801 ;	 function BleChecker
                                   1802 ;	-----------------------------------------
      004AC7                       1803 _BleChecker:
                                   1804 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1115: switch(BleFeedback){
      004AC7 AF 8E            [24] 1805 	mov	r7,_BleFeedback
      004AC9 BF 01 03         [24] 1806 	cjne	r7,#0x01,00113$
      004ACC 02 4A D8         [24] 1807 	ljmp	00101$
      004ACF                       1808 00113$:
      004ACF BF 02 03         [24] 1809 	cjne	r7,#0x02,00114$
      004AD2 02 4A FB         [24] 1810 	ljmp	00102$
      004AD5                       1811 00114$:
      004AD5 02 4B 0A         [24] 1812 	ljmp	00103$
                                   1813 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1118: case BleStart:
      004AD8                       1814 00101$:
                                   1815 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1120: gapRole_state = GAPROLE_STARTED;
      004AD8 90 10 C7         [24] 1816 	mov	dptr,#_gapRole_state
      004ADB 74 01            [12] 1817 	mov	a,#0x01
      004ADD F0               [24] 1818 	movx	@dptr,a
                                   1819 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1121: osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
      004ADE 90 10 C6         [24] 1820 	mov	dptr,#_gapRole_TaskID
      004AE1 E0               [24] 1821 	movx	a,@dptr
      004AE2 FF               [12] 1822 	mov	r7,a
      004AE3 90 03 CB         [24] 1823 	mov	dptr,#_osal_set_event_PARM_2
      004AE6 74 01            [12] 1824 	mov	a,#0x01
      004AE8 F0               [24] 1825 	movx	@dptr,a
      004AE9 74 00            [12] 1826 	mov	a,#0x00
      004AEB A3               [24] 1827 	inc	dptr
      004AEC F0               [24] 1828 	movx	@dptr,a
      004AED 8F 82            [24] 1829 	mov	dpl,r7
      004AEF 12 19 D8         [24] 1830 	lcall	_osal_set_event
                                   1831 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1122: BleOpr=BleOptClean;
      004AF2 75 AA 00         [24] 1832 	mov	_BleOpr,#0x00
                                   1833 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1123: BleFeedback=BleOptClean;
      004AF5 75 8E 00         [24] 1834 	mov	_BleFeedback,#0x00
                                   1835 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1125: break;
      004AF8 02 4B 10         [24] 1836 	ljmp	00104$
                                   1837 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1127: case BleAdv:
      004AFB                       1838 00102$:
                                   1839 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1129: gapRole_state = GAPROLE_ADVERTISING;
      004AFB 90 10 C7         [24] 1840 	mov	dptr,#_gapRole_state
      004AFE 74 02            [12] 1841 	mov	a,#0x02
      004B00 F0               [24] 1842 	movx	@dptr,a
                                   1843 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1130: BleOpr=BleOptClean;
      004B01 75 AA 00         [24] 1844 	mov	_BleOpr,#0x00
                                   1845 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1131: BleFeedback=BleOptClean;
      004B04 75 8E 00         [24] 1846 	mov	_BleFeedback,#0x00
                                   1847 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1133: break ;
      004B07 02 4B 10         [24] 1848 	ljmp	00104$
                                   1849 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1136: default:
      004B0A                       1850 00103$:
                                   1851 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1138: return false;
      004B0A 75 82 00         [24] 1852 	mov	dpl,#0x00
      004B0D 02 4B 47         [24] 1853 	ljmp	00105$
                                   1854 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1147: }
      004B10                       1855 00104$:
                                   1856 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1157: pGapRoles_AppCGs->pfnStateChange( gapRole_state );
      004B10 90 11 42         [24] 1857 	mov	dptr,#_pGapRoles_AppCGs
      004B13 E0               [24] 1858 	movx	a,@dptr
      004B14 FD               [12] 1859 	mov	r5,a
      004B15 A3               [24] 1860 	inc	dptr
      004B16 E0               [24] 1861 	movx	a,@dptr
      004B17 FE               [12] 1862 	mov	r6,a
      004B18 A3               [24] 1863 	inc	dptr
      004B19 E0               [24] 1864 	movx	a,@dptr
      004B1A FF               [12] 1865 	mov	r7,a
      004B1B 8D 82            [24] 1866 	mov	dpl,r5
      004B1D 8E 83            [24] 1867 	mov	dph,r6
      004B1F 8F F0            [24] 1868 	mov	b,r7
      004B21 12 5B 6D         [24] 1869 	lcall	__gptrget
      004B24 FD               [12] 1870 	mov	r5,a
      004B25 A3               [24] 1871 	inc	dptr
      004B26 12 5B 6D         [24] 1872 	lcall	__gptrget
      004B29 FE               [12] 1873 	mov	r6,a
      004B2A 90 10 C7         [24] 1874 	mov	dptr,#_gapRole_state
      004B2D E0               [24] 1875 	movx	a,@dptr
      004B2E FF               [12] 1876 	mov	r7,a
      004B2F C0 06            [24] 1877 	push	ar6
      004B31 C0 05            [24] 1878 	push	ar5
      004B33 12 4B 39         [24] 1879 	lcall	00115$
      004B36 02 4B 40         [24] 1880 	ljmp	00116$
      004B39                       1881 00115$:
      004B39 C0 05            [24] 1882 	push	ar5
      004B3B C0 06            [24] 1883 	push	ar6
      004B3D 8F 82            [24] 1884 	mov	dpl,r7
      004B3F 22               [24] 1885 	ret
      004B40                       1886 00116$:
      004B40 D0 05            [24] 1887 	pop	ar5
      004B42 D0 06            [24] 1888 	pop	ar6
                                   1889 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1158: return true;
      004B44 75 82 01         [24] 1890 	mov	dpl,#0x01
      004B47                       1891 00105$:
      004B47 22               [24] 1892 	ret
                                   1893 ;------------------------------------------------------------
                                   1894 ;Allocation info for local variables in function 'gapRole_SetupGAP'
                                   1895 ;------------------------------------------------------------
                                   1896 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1177: static void gapRole_SetupGAP( void )
                                   1897 ;	-----------------------------------------
                                   1898 ;	 function gapRole_SetupGAP
                                   1899 ;	-----------------------------------------
      004B48                       1900 _gapRole_SetupGAP:
                                   1901 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1180: BleOpr = BleStart;
      004B48 75 AA 01         [24] 1902 	mov	_BleOpr,#0x01
                                   1903 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1182: osal_set_event( gapRole_TaskID, CHECK_BLE_STACK);
      004B4B 90 10 C6         [24] 1904 	mov	dptr,#_gapRole_TaskID
      004B4E E0               [24] 1905 	movx	a,@dptr
      004B4F FF               [12] 1906 	mov	r7,a
      004B50 90 03 CB         [24] 1907 	mov	dptr,#_osal_set_event_PARM_2
      004B53 74 08            [12] 1908 	mov	a,#0x08
      004B55 F0               [24] 1909 	movx	@dptr,a
      004B56 74 00            [12] 1910 	mov	a,#0x00
      004B58 A3               [24] 1911 	inc	dptr
      004B59 F0               [24] 1912 	movx	@dptr,a
      004B5A 8F 82            [24] 1913 	mov	dpl,r7
      004B5C 12 19 D8         [24] 1914 	lcall	_osal_set_event
      004B5F                       1915 00101$:
      004B5F 22               [24] 1916 	ret
                                   1917 ;------------------------------------------------------------
                                   1918 ;Allocation info for local variables in function 'GAP_EndDiscoverable'
                                   1919 ;------------------------------------------------------------
                                   1920 ;taskID                    Allocated with name '_GAP_EndDiscoverable_taskID_1_283'
                                   1921 ;------------------------------------------------------------
                                   1922 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1193: Status_t GAP_EndDiscoverable( uint8 taskID ){
                                   1923 ;	-----------------------------------------
                                   1924 ;	 function GAP_EndDiscoverable
                                   1925 ;	-----------------------------------------
      004B60                       1926 _GAP_EndDiscoverable:
                                   1927 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1196: return SUCCESS;
      004B60 75 82 00         [24] 1928 	mov	dpl,#0x00
      004B63                       1929 00101$:
      004B63 22               [24] 1930 	ret
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
      004B64                       1941 _GAP_MakeDiscoverable:
                                   1942 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1206: BleOpr = BleAdv;
      004B64 75 AA 02         [24] 1943 	mov	_BleOpr,#0x02
                                   1944 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1208: osal_set_event( gapRole_TaskID, CHECK_BLE_STACK);  
      004B67 90 10 C6         [24] 1945 	mov	dptr,#_gapRole_TaskID
      004B6A E0               [24] 1946 	movx	a,@dptr
      004B6B FF               [12] 1947 	mov	r7,a
      004B6C 90 03 CB         [24] 1948 	mov	dptr,#_osal_set_event_PARM_2
      004B6F 74 08            [12] 1949 	mov	a,#0x08
      004B71 F0               [24] 1950 	movx	@dptr,a
      004B72 74 00            [12] 1951 	mov	a,#0x00
      004B74 A3               [24] 1952 	inc	dptr
      004B75 F0               [24] 1953 	movx	@dptr,a
      004B76 8F 82            [24] 1954 	mov	dpl,r7
      004B78 12 19 D8         [24] 1955 	lcall	_osal_set_event
                                   1956 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1214: return SUCCESS;
      004B7B 75 82 00         [24] 1957 	mov	dpl,#0x00
      004B7E                       1958 00101$:
      004B7E 22               [24] 1959 	ret
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
      004B7F                       1972 _GAP_UpdateAdvertisingData:
                                   1973 ;	../fake_ble_stack/Profiles/Roles/peripheral.c:1220: return SUCCESS;
      004B7F 75 82 00         [24] 1974 	mov	dpl,#0x00
      004B82                       1975 00101$:
      004B82 22               [24] 1976 	ret
                                   1977 	.area CSEG    (CODE)
                                   1978 	.area CONST   (CODE)
      005BCE                       1979 ___str_0:
      005BCE 47 41 50 20 62 6C 65  1980 	.ascii "GAP ble ckecker===="
             20 63 6B 65 63 6B 65
             72 3D 3D 3D 3D
      005BE1 0D                    1981 	.db 0x0D
      005BE2 0A                    1982 	.db 0x0A
      005BE3 00                    1983 	.db 0x00
                                   1984 	.area CABS    (ABS,CODE)
