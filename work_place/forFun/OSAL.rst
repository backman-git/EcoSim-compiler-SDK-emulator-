                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:10:04 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module OSAL
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl __itoa
                                     13 	.globl _osalTimeUpdate
                                     14 	.globl _osalInitTasks
                                     15 	.globl _osalTimerInit
                                     16 	.globl _osal_mem_free
                                     17 	.globl _osal_mem_alloc
                                     18 	.globl _osal_mem_init
                                     19 	.globl _strlen
                                     20 	.globl _memset
                                     21 	.globl _strcat
                                     22 	.globl _strcpy
                                     23 	.globl _MODE
                                     24 	.globl _RE
                                     25 	.globl _SLAVE
                                     26 	.globl _FE
                                     27 	.globl _ERR
                                     28 	.globl _RX_BYTE
                                     29 	.globl _TX_BYTE
                                     30 	.globl _ACTIVE
                                     31 	.globl _B_7
                                     32 	.globl _B_6
                                     33 	.globl _B_5
                                     34 	.globl _B_4
                                     35 	.globl _B_3
                                     36 	.globl _B_2
                                     37 	.globl _B_1
                                     38 	.globl _B_0
                                     39 	.globl _WDTIF
                                     40 	.globl _P1IF
                                     41 	.globl _UTX1IF
                                     42 	.globl _UTX0IF
                                     43 	.globl _P2IF
                                     44 	.globl _ACC_7
                                     45 	.globl _ACC_6
                                     46 	.globl _ACC_5
                                     47 	.globl _ACC_4
                                     48 	.globl _ACC_3
                                     49 	.globl _ACC_2
                                     50 	.globl _ACC_1
                                     51 	.globl _ACC_0
                                     52 	.globl _OVFIM
                                     53 	.globl _T4CH1IF
                                     54 	.globl _T4CH0IF
                                     55 	.globl _T4OVFIF
                                     56 	.globl _T3CH1IF
                                     57 	.globl _T3CH0IF
                                     58 	.globl _T3OVFIF
                                     59 	.globl _CY
                                     60 	.globl _AC
                                     61 	.globl _F0
                                     62 	.globl _RS1
                                     63 	.globl _RS0
                                     64 	.globl _OV
                                     65 	.globl _F1
                                     66 	.globl _P
                                     67 	.globl _STIF
                                     68 	.globl _P0IF
                                     69 	.globl _T4IF
                                     70 	.globl _T3IF
                                     71 	.globl _T2IF
                                     72 	.globl _T1IF
                                     73 	.globl _DMAIF
                                     74 	.globl _P0IE
                                     75 	.globl _T4IE
                                     76 	.globl _T3IE
                                     77 	.globl _T2IE
                                     78 	.globl _T1IE
                                     79 	.globl _DMAIE
                                     80 	.globl _EA
                                     81 	.globl _STIE
                                     82 	.globl _ENCIE
                                     83 	.globl _URX1IE
                                     84 	.globl _URX0IE
                                     85 	.globl _ADCIE
                                     86 	.globl _RFERRIE
                                     87 	.globl _P2_7
                                     88 	.globl _P2_6
                                     89 	.globl _P2_5
                                     90 	.globl _P2_4
                                     91 	.globl _P2_3
                                     92 	.globl _P2_2
                                     93 	.globl _P2_1
                                     94 	.globl _P2_0
                                     95 	.globl _ENCIF_1
                                     96 	.globl _ENCIF_0
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _URX1IF
                                    106 	.globl _ADCIF
                                    107 	.globl _URX0IF
                                    108 	.globl _IT1
                                    109 	.globl _RFERRIF
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _P2DIR
                                    120 	.globl _P1DIR
                                    121 	.globl _P0DIR
                                    122 	.globl _U1GCR
                                    123 	.globl _U1UCR
                                    124 	.globl _U1BAUD
                                    125 	.globl _U1DBUF
                                    126 	.globl _U1CSR
                                    127 	.globl _P2INP
                                    128 	.globl _P1INP
                                    129 	.globl _P2SEL
                                    130 	.globl _P1SEL
                                    131 	.globl _P0SEL
                                    132 	.globl _APCFG
                                    133 	.globl _PERCFG
                                    134 	.globl _B
                                    135 	.globl _T4CC1
                                    136 	.globl _T4CCTL1
                                    137 	.globl _T4CC0
                                    138 	.globl _T4CCTL0
                                    139 	.globl _T4CTL
                                    140 	.globl _T4CNT
                                    141 	.globl _RFIRQF0
                                    142 	.globl _IRCON2
                                    143 	.globl _T1CCTL2
                                    144 	.globl _T1CCTL1
                                    145 	.globl _T1CCTL0
                                    146 	.globl _T1CTL
                                    147 	.globl _T1CNTH
                                    148 	.globl _T1CNTL
                                    149 	.globl _RFST
                                    150 	.globl _ACC
                                    151 	.globl _T1CC2H
                                    152 	.globl _T1CC2L
                                    153 	.globl _T1CC1H
                                    154 	.globl _T1CC1L
                                    155 	.globl _T1CC0H
                                    156 	.globl _T1CC0L
                                    157 	.globl _RFD
                                    158 	.globl _TIMIF
                                    159 	.globl _DMAREQ
                                    160 	.globl _DMAARM
                                    161 	.globl _DMA0CFGH
                                    162 	.globl _DMA0CFGL
                                    163 	.globl _DMA1CFGH
                                    164 	.globl _DMA1CFGL
                                    165 	.globl _DMAIRQ
                                    166 	.globl _PSW
                                    167 	.globl _T3CC1
                                    168 	.globl _T3CCTL1
                                    169 	.globl _T3CC0
                                    170 	.globl _T3CCTL0
                                    171 	.globl _T3CTL
                                    172 	.globl _T3CNT
                                    173 	.globl _WDCTL
                                    174 	.globl _MEMCTR
                                    175 	.globl _CLKCONCMD
                                    176 	.globl _U0GCR
                                    177 	.globl _U0UCR
                                    178 	.globl _T2MSEL
                                    179 	.globl _U0BAUD
                                    180 	.globl _U0DBUF
                                    181 	.globl _IRCON
                                    182 	.globl _RFERRF
                                    183 	.globl _SLEEPCMD
                                    184 	.globl _RNDH
                                    185 	.globl _RNDL
                                    186 	.globl _ADCH
                                    187 	.globl _ADCL
                                    188 	.globl _IP1
                                    189 	.globl _IEN1
                                    190 	.globl _ADCCON3
                                    191 	.globl _ADCCON2
                                    192 	.globl _ADCCON1
                                    193 	.globl _ENCCS
                                    194 	.globl _ENCDO
                                    195 	.globl _ENCDI
                                    196 	.globl _T1STAT
                                    197 	.globl _PMUX
                                    198 	.globl _STLOAD
                                    199 	.globl _P2IEN
                                    200 	.globl _P0IEN
                                    201 	.globl _IP0
                                    202 	.globl _IEN0
                                    203 	.globl _T2IRQM
                                    204 	.globl _T2MOVF2
                                    205 	.globl _T2MOVF1
                                    206 	.globl _T2MOVF0
                                    207 	.globl _T2M1
                                    208 	.globl _T2M0
                                    209 	.globl _T2IRQF
                                    210 	.globl _P2
                                    211 	.globl _FMAP
                                    212 	.globl _PSBANK
                                    213 	.globl _CLKCONSTA
                                    214 	.globl _SLEEPSTA
                                    215 	.globl _T2EVTCFG
                                    216 	.globl _S1CON
                                    217 	.globl _IEN2
                                    218 	.globl _S0CON
                                    219 	.globl _ST2
                                    220 	.globl _ST1
                                    221 	.globl _ST0
                                    222 	.globl _T2CTRL
                                    223 	.globl __XPAGE
                                    224 	.globl _MPAGE
                                    225 	.globl _DPS
                                    226 	.globl _RFIRQF1
                                    227 	.globl _P1
                                    228 	.globl _P0INP
                                    229 	.globl _P1IEN
                                    230 	.globl _PICTL
                                    231 	.globl _P2IFG
                                    232 	.globl _P1IFG
                                    233 	.globl _P0IFG
                                    234 	.globl _TCON
                                    235 	.globl _PCON
                                    236 	.globl _U0CSR
                                    237 	.globl _DPH1
                                    238 	.globl _DPL1
                                    239 	.globl _DPH0
                                    240 	.globl _DPL0
                                    241 	.globl _SP
                                    242 	.globl _P0
                                    243 	.globl _osal_isbufset_PARM_3
                                    244 	.globl _osal_isbufset_PARM_2
                                    245 	.globl _osal_buffer_uint24_PARM_2
                                    246 	.globl _osal_buffer_uint32_PARM_2
                                    247 	.globl _osal_isr_register_PARM_2
                                    248 	.globl _osal_clear_event_PARM_2
                                    249 	.globl _osal_set_event_PARM_2
                                    250 	.globl _osal_msg_enqueue_max_PARM_3
                                    251 	.globl _osal_msg_enqueue_max_PARM_2
                                    252 	.globl _osal_msg_extract_PARM_3
                                    253 	.globl _osal_msg_extract_PARM_2
                                    254 	.globl _osal_msg_push_PARM_2
                                    255 	.globl _osal_msg_enqueue_PARM_2
                                    256 	.globl _osal_msg_find_PARM_2
                                    257 	.globl _osal_msg_push_front_PARM_2
                                    258 	.globl _osal_msg_send_PARM_2
                                    259 	.globl __ltoa_PARM_3
                                    260 	.globl __ltoa_PARM_2
                                    261 	.globl _osal_build_uint32_PARM_2
                                    262 	.globl _osal_memset_PARM_3
                                    263 	.globl _osal_memset_PARM_2
                                    264 	.globl _osal_memcmp_PARM_3
                                    265 	.globl _osal_memcmp_PARM_2
                                    266 	.globl _osal_memdup_PARM_2
                                    267 	.globl _osal_revmemcpy_PARM_3
                                    268 	.globl _osal_revmemcpy_PARM_2
                                    269 	.globl _osal_memcpy_PARM_3
                                    270 	.globl _osal_memcpy_PARM_2
                                    271 	.globl _osal_qHead
                                    272 	.globl _TXFILTCFG
                                    273 	.globl _RFC_OBS_CTRL2
                                    274 	.globl _RFC_OBS_CTRL1
                                    275 	.globl _RFC_OBS_CTRL0
                                    276 	.globl _CSPT
                                    277 	.globl _CSPZ
                                    278 	.globl _CSPY
                                    279 	.globl _CSPX
                                    280 	.globl _CSPSTAT
                                    281 	.globl _CSPCTRL
                                    282 	.globl _CSPPROG23
                                    283 	.globl _CSPPROG22
                                    284 	.globl _CSPPROG21
                                    285 	.globl _CSPPROG20
                                    286 	.globl _CSPPROG19
                                    287 	.globl _CSPPROG18
                                    288 	.globl _CSPPROG17
                                    289 	.globl _CSPPROG16
                                    290 	.globl _CSPPROG15
                                    291 	.globl _CSPPROG14
                                    292 	.globl _CSPPROG13
                                    293 	.globl _CSPPROG12
                                    294 	.globl _CSPPROG11
                                    295 	.globl _CSPPROG10
                                    296 	.globl _CSPPROG9
                                    297 	.globl _CSPPROG8
                                    298 	.globl _CSPPROG7
                                    299 	.globl _CSPPROG6
                                    300 	.globl _CSPPROG5
                                    301 	.globl _CSPPROG4
                                    302 	.globl _CSPPROG3
                                    303 	.globl _CSPPROG2
                                    304 	.globl _CSPPROG1
                                    305 	.globl _CSPPROG0
                                    306 	.globl _PTEST1
                                    307 	.globl _PTEST0
                                    308 	.globl _ATEST
                                    309 	.globl _DACTEST2
                                    310 	.globl _DACTEST1
                                    311 	.globl _DACTEST0
                                    312 	.globl _MDMTEST1
                                    313 	.globl _MDMTEST0
                                    314 	.globl _ADCTEST2
                                    315 	.globl _ADCTEST1
                                    316 	.globl _ADCTEST0
                                    317 	.globl _AGCCTRL3
                                    318 	.globl _AGCCTRL2
                                    319 	.globl _AGCCTRL1
                                    320 	.globl _AGCCTRL0
                                    321 	.globl _FSCAL3
                                    322 	.globl _FSCAL2
                                    323 	.globl _FSCAL1
                                    324 	.globl _FSCTRL
                                    325 	.globl _RXCTRL
                                    326 	.globl _FREQEST
                                    327 	.globl _MDMCTRL1
                                    328 	.globl _MDMCTRL0
                                    329 	.globl _RFRND
                                    330 	.globl _OPAMPMC
                                    331 	.globl _RFERRM
                                    332 	.globl _RFIRQM1
                                    333 	.globl _RFIRQM0
                                    334 	.globl _TXLAST_PTR
                                    335 	.globl _TXFIRST_PTR
                                    336 	.globl _RXP1_PTR
                                    337 	.globl _RXLAST_PTR
                                    338 	.globl _RXFIRST_PTR
                                    339 	.globl _TXFIFOCNT
                                    340 	.globl _RXFIFOCNT
                                    341 	.globl _RXFIRST
                                    342 	.globl _RSSISTAT
                                    343 	.globl _RSSI
                                    344 	.globl _CCACTRL1
                                    345 	.globl _CCACTRL0
                                    346 	.globl _FSMCTRL
                                    347 	.globl _FIFOPCTRL
                                    348 	.globl _FSMSTAT1
                                    349 	.globl _FSMSTAT0
                                    350 	.globl _TXCTRL
                                    351 	.globl _TXPOWER
                                    352 	.globl _FREQCTRL
                                    353 	.globl _FREQTUNE
                                    354 	.globl _RXMASKCLR
                                    355 	.globl _RXMASKSET
                                    356 	.globl _RXENABLE
                                    357 	.globl _FRMCTRL1
                                    358 	.globl _FRMCTRL0
                                    359 	.globl _SRCEXTEN2
                                    360 	.globl _SRCEXTEN1
                                    361 	.globl _SRCEXTEN0
                                    362 	.globl _SRCSHORTEN2
                                    363 	.globl _SRCSHORTEN1
                                    364 	.globl _SRCSHORTEN0
                                    365 	.globl _SRCMATCH
                                    366 	.globl _FRMFILT1
                                    367 	.globl _FRMFILT0
                                    368 	.globl _IEEE_ADDR
                                    369 	.globl _PANIDL
                                    370 	.globl _PANIDH
                                    371 	.globl _SHORTADDRL
                                    372 	.globl _SHORTADDRH
                                    373 	.globl _USBF5
                                    374 	.globl _USBF4
                                    375 	.globl _USBF3
                                    376 	.globl _USBF2
                                    377 	.globl _USBF1
                                    378 	.globl _USBF0
                                    379 	.globl _USBCNTH
                                    380 	.globl _USBCNTL
                                    381 	.globl _USBCNT0
                                    382 	.globl _USBCSOH
                                    383 	.globl _USBCSOL
                                    384 	.globl _USBMAXO
                                    385 	.globl _USBCSIH
                                    386 	.globl _USBCSIL
                                    387 	.globl _USBCS0
                                    388 	.globl _USBMAXI
                                    389 	.globl _USBCTRL
                                    390 	.globl _USBINDEX
                                    391 	.globl _USBFRMH
                                    392 	.globl _USBFRML
                                    393 	.globl _USBCIE
                                    394 	.globl _USBOIE
                                    395 	.globl _USBIIE
                                    396 	.globl _USBCIF
                                    397 	.globl _USBOIF
                                    398 	.globl _USBIIF
                                    399 	.globl _USBPOW
                                    400 	.globl _USBADDR
                                    401 	.globl _CMPCTL
                                    402 	.globl _OPAMPS
                                    403 	.globl _OPAMPC
                                    404 	.globl _STCV2
                                    405 	.globl _STCV1
                                    406 	.globl _STCV0
                                    407 	.globl _STCS
                                    408 	.globl _STCC
                                    409 	.globl _T1CC4H
                                    410 	.globl _T1CC4L
                                    411 	.globl _T1CC3H
                                    412 	.globl _T1CC3L
                                    413 	.globl _X_T1CC2H
                                    414 	.globl _X_T1CC2L
                                    415 	.globl _X_T1CC1H
                                    416 	.globl _X_T1CC1L
                                    417 	.globl _X_T1CC0H
                                    418 	.globl _X_T1CC0L
                                    419 	.globl _T1CCTL4
                                    420 	.globl _T1CCTL3
                                    421 	.globl _X_T1CCTL2
                                    422 	.globl _X_T1CCTL1
                                    423 	.globl _X_T1CCTL0
                                    424 	.globl _CLD
                                    425 	.globl _IRCTL
                                    426 	.globl _CHIPINFO1
                                    427 	.globl _CHIPINFO0
                                    428 	.globl _FWDATA
                                    429 	.globl _FADDRH
                                    430 	.globl _FADDRL
                                    431 	.globl _FCTL
                                    432 	.globl _IVCTRL
                                    433 	.globl _BATTMON
                                    434 	.globl _SRCRC
                                    435 	.globl _DBGDATA
                                    436 	.globl _TESTREG0
                                    437 	.globl _CHIPID
                                    438 	.globl _CHVER
                                    439 	.globl _OBSSEL5
                                    440 	.globl _OBSSEL4
                                    441 	.globl _OBSSEL3
                                    442 	.globl _OBSSEL2
                                    443 	.globl _OBSSEL1
                                    444 	.globl _OBSSEL0
                                    445 	.globl _I2CIO
                                    446 	.globl _I2CWC
                                    447 	.globl _I2CADDR
                                    448 	.globl _I2CDATA
                                    449 	.globl _I2CSTAT
                                    450 	.globl _I2CCFG
                                    451 	.globl _osal_strlen
                                    452 	.globl _osal_memcpy
                                    453 	.globl _osal_revmemcpy
                                    454 	.globl _osal_memdup
                                    455 	.globl _osal_memcmp
                                    456 	.globl _osal_memset
                                    457 	.globl _osal_build_uint16
                                    458 	.globl _osal_build_uint32
                                    459 	.globl __ltoa
                                    460 	.globl _osal_rand
                                    461 	.globl _osal_msg_allocate
                                    462 	.globl _osal_msg_deallocate
                                    463 	.globl _osal_msg_send
                                    464 	.globl _osal_msg_push_front
                                    465 	.globl _osal_msg_receive
                                    466 	.globl _osal_msg_find
                                    467 	.globl _osal_msg_enqueue
                                    468 	.globl _osal_msg_dequeue
                                    469 	.globl _osal_msg_push
                                    470 	.globl _osal_msg_extract
                                    471 	.globl _osal_msg_enqueue_max
                                    472 	.globl _osal_set_event
                                    473 	.globl _osal_clear_event
                                    474 	.globl _osal_isr_register
                                    475 	.globl _osal_int_enable
                                    476 	.globl _osal_int_disable
                                    477 	.globl _osal_init_system
                                    478 	.globl _osal_start_system
                                    479 	.globl _osal_run_system
                                    480 	.globl _osal_buffer_uint32
                                    481 	.globl _osal_buffer_uint24
                                    482 	.globl _osal_isbufset
                                    483 	.globl _osal_self
                                    484 ;--------------------------------------------------------
                                    485 ; special function registers
                                    486 ;--------------------------------------------------------
                                    487 	.area RSEG    (ABS,DATA)
      000000                        488 	.org 0x0000
                           000080   489 _P0	=	0x0080
                           000081   490 _SP	=	0x0081
                           000082   491 _DPL0	=	0x0082
                           000083   492 _DPH0	=	0x0083
                           000084   493 _DPL1	=	0x0084
                           000085   494 _DPH1	=	0x0085
                           000086   495 _U0CSR	=	0x0086
                           000087   496 _PCON	=	0x0087
                           000088   497 _TCON	=	0x0088
                           000089   498 _P0IFG	=	0x0089
                           00008A   499 _P1IFG	=	0x008a
                           00008B   500 _P2IFG	=	0x008b
                           00008C   501 _PICTL	=	0x008c
                           00008D   502 _P1IEN	=	0x008d
                           00008F   503 _P0INP	=	0x008f
                           000090   504 _P1	=	0x0090
                           000091   505 _RFIRQF1	=	0x0091
                           000092   506 _DPS	=	0x0092
                           000093   507 _MPAGE	=	0x0093
                           000093   508 __XPAGE	=	0x0093
                           000094   509 _T2CTRL	=	0x0094
                           000095   510 _ST0	=	0x0095
                           000096   511 _ST1	=	0x0096
                           000097   512 _ST2	=	0x0097
                           000098   513 _S0CON	=	0x0098
                           00009A   514 _IEN2	=	0x009a
                           00009B   515 _S1CON	=	0x009b
                           00009C   516 _T2EVTCFG	=	0x009c
                           00009D   517 _SLEEPSTA	=	0x009d
                           00009E   518 _CLKCONSTA	=	0x009e
                           00009F   519 _PSBANK	=	0x009f
                           00009F   520 _FMAP	=	0x009f
                           0000A0   521 _P2	=	0x00a0
                           0000A1   522 _T2IRQF	=	0x00a1
                           0000A2   523 _T2M0	=	0x00a2
                           0000A3   524 _T2M1	=	0x00a3
                           0000A4   525 _T2MOVF0	=	0x00a4
                           0000A5   526 _T2MOVF1	=	0x00a5
                           0000A6   527 _T2MOVF2	=	0x00a6
                           0000A7   528 _T2IRQM	=	0x00a7
                           0000A8   529 _IEN0	=	0x00a8
                           0000A9   530 _IP0	=	0x00a9
                           0000AB   531 _P0IEN	=	0x00ab
                           0000AC   532 _P2IEN	=	0x00ac
                           0000AD   533 _STLOAD	=	0x00ad
                           0000AE   534 _PMUX	=	0x00ae
                           0000AF   535 _T1STAT	=	0x00af
                           0000B1   536 _ENCDI	=	0x00b1
                           0000B2   537 _ENCDO	=	0x00b2
                           0000B3   538 _ENCCS	=	0x00b3
                           0000B4   539 _ADCCON1	=	0x00b4
                           0000B5   540 _ADCCON2	=	0x00b5
                           0000B6   541 _ADCCON3	=	0x00b6
                           0000B8   542 _IEN1	=	0x00b8
                           0000B9   543 _IP1	=	0x00b9
                           0000BA   544 _ADCL	=	0x00ba
                           0000BB   545 _ADCH	=	0x00bb
                           0000BC   546 _RNDL	=	0x00bc
                           0000BD   547 _RNDH	=	0x00bd
                           0000BE   548 _SLEEPCMD	=	0x00be
                           0000BF   549 _RFERRF	=	0x00bf
                           0000C0   550 _IRCON	=	0x00c0
                           0000C1   551 _U0DBUF	=	0x00c1
                           0000C2   552 _U0BAUD	=	0x00c2
                           0000C3   553 _T2MSEL	=	0x00c3
                           0000C4   554 _U0UCR	=	0x00c4
                           0000C5   555 _U0GCR	=	0x00c5
                           0000C6   556 _CLKCONCMD	=	0x00c6
                           0000C7   557 _MEMCTR	=	0x00c7
                           0000C9   558 _WDCTL	=	0x00c9
                           0000CA   559 _T3CNT	=	0x00ca
                           0000CB   560 _T3CTL	=	0x00cb
                           0000CC   561 _T3CCTL0	=	0x00cc
                           0000CD   562 _T3CC0	=	0x00cd
                           0000CE   563 _T3CCTL1	=	0x00ce
                           0000CF   564 _T3CC1	=	0x00cf
                           0000D0   565 _PSW	=	0x00d0
                           0000D1   566 _DMAIRQ	=	0x00d1
                           0000D2   567 _DMA1CFGL	=	0x00d2
                           0000D3   568 _DMA1CFGH	=	0x00d3
                           0000D4   569 _DMA0CFGL	=	0x00d4
                           0000D5   570 _DMA0CFGH	=	0x00d5
                           0000D6   571 _DMAARM	=	0x00d6
                           0000D7   572 _DMAREQ	=	0x00d7
                           0000D8   573 _TIMIF	=	0x00d8
                           0000D9   574 _RFD	=	0x00d9
                           0000DA   575 _T1CC0L	=	0x00da
                           0000DB   576 _T1CC0H	=	0x00db
                           0000DC   577 _T1CC1L	=	0x00dc
                           0000DD   578 _T1CC1H	=	0x00dd
                           0000DE   579 _T1CC2L	=	0x00de
                           0000DF   580 _T1CC2H	=	0x00df
                           0000E0   581 _ACC	=	0x00e0
                           0000E1   582 _RFST	=	0x00e1
                           0000E2   583 _T1CNTL	=	0x00e2
                           0000E3   584 _T1CNTH	=	0x00e3
                           0000E4   585 _T1CTL	=	0x00e4
                           0000E5   586 _T1CCTL0	=	0x00e5
                           0000E6   587 _T1CCTL1	=	0x00e6
                           0000E7   588 _T1CCTL2	=	0x00e7
                           0000E8   589 _IRCON2	=	0x00e8
                           0000E9   590 _RFIRQF0	=	0x00e9
                           0000EA   591 _T4CNT	=	0x00ea
                           0000EB   592 _T4CTL	=	0x00eb
                           0000EC   593 _T4CCTL0	=	0x00ec
                           0000ED   594 _T4CC0	=	0x00ed
                           0000EE   595 _T4CCTL1	=	0x00ee
                           0000EF   596 _T4CC1	=	0x00ef
                           0000F0   597 _B	=	0x00f0
                           0000F1   598 _PERCFG	=	0x00f1
                           0000F2   599 _APCFG	=	0x00f2
                           0000F3   600 _P0SEL	=	0x00f3
                           0000F4   601 _P1SEL	=	0x00f4
                           0000F5   602 _P2SEL	=	0x00f5
                           0000F6   603 _P1INP	=	0x00f6
                           0000F7   604 _P2INP	=	0x00f7
                           0000F8   605 _U1CSR	=	0x00f8
                           0000F9   606 _U1DBUF	=	0x00f9
                           0000FA   607 _U1BAUD	=	0x00fa
                           0000FB   608 _U1UCR	=	0x00fb
                           0000FC   609 _U1GCR	=	0x00fc
                           0000FD   610 _P0DIR	=	0x00fd
                           0000FE   611 _P1DIR	=	0x00fe
                           0000FF   612 _P2DIR	=	0x00ff
                                    613 ;--------------------------------------------------------
                                    614 ; special function bits
                                    615 ;--------------------------------------------------------
                                    616 	.area RSEG    (ABS,DATA)
      000000                        617 	.org 0x0000
                           000080   618 _P0_0	=	0x0080
                           000081   619 _P0_1	=	0x0081
                           000082   620 _P0_2	=	0x0082
                           000083   621 _P0_3	=	0x0083
                           000084   622 _P0_4	=	0x0084
                           000085   623 _P0_5	=	0x0085
                           000086   624 _P0_6	=	0x0086
                           000087   625 _P0_7	=	0x0087
                           000088   626 _IT0	=	0x0088
                           000089   627 _RFERRIF	=	0x0089
                           00008A   628 _IT1	=	0x008a
                           00008B   629 _URX0IF	=	0x008b
                           00008D   630 _ADCIF	=	0x008d
                           00008F   631 _URX1IF	=	0x008f
                           000090   632 _P1_0	=	0x0090
                           000091   633 _P1_1	=	0x0091
                           000092   634 _P1_2	=	0x0092
                           000093   635 _P1_3	=	0x0093
                           000094   636 _P1_4	=	0x0094
                           000095   637 _P1_5	=	0x0095
                           000096   638 _P1_6	=	0x0096
                           000097   639 _P1_7	=	0x0097
                           000098   640 _ENCIF_0	=	0x0098
                           000099   641 _ENCIF_1	=	0x0099
                           0000A0   642 _P2_0	=	0x00a0
                           0000A1   643 _P2_1	=	0x00a1
                           0000A2   644 _P2_2	=	0x00a2
                           0000A3   645 _P2_3	=	0x00a3
                           0000A4   646 _P2_4	=	0x00a4
                           0000A5   647 _P2_5	=	0x00a5
                           0000A6   648 _P2_6	=	0x00a6
                           0000A7   649 _P2_7	=	0x00a7
                           0000A8   650 _RFERRIE	=	0x00a8
                           0000A9   651 _ADCIE	=	0x00a9
                           0000AA   652 _URX0IE	=	0x00aa
                           0000AB   653 _URX1IE	=	0x00ab
                           0000AC   654 _ENCIE	=	0x00ac
                           0000AD   655 _STIE	=	0x00ad
                           0000AF   656 _EA	=	0x00af
                           0000B8   657 _DMAIE	=	0x00b8
                           0000B9   658 _T1IE	=	0x00b9
                           0000BA   659 _T2IE	=	0x00ba
                           0000BB   660 _T3IE	=	0x00bb
                           0000BC   661 _T4IE	=	0x00bc
                           0000BD   662 _P0IE	=	0x00bd
                           0000C0   663 _DMAIF	=	0x00c0
                           0000C1   664 _T1IF	=	0x00c1
                           0000C2   665 _T2IF	=	0x00c2
                           0000C3   666 _T3IF	=	0x00c3
                           0000C4   667 _T4IF	=	0x00c4
                           0000C5   668 _P0IF	=	0x00c5
                           0000C7   669 _STIF	=	0x00c7
                           0000D0   670 _P	=	0x00d0
                           0000D1   671 _F1	=	0x00d1
                           0000D2   672 _OV	=	0x00d2
                           0000D3   673 _RS0	=	0x00d3
                           0000D4   674 _RS1	=	0x00d4
                           0000D5   675 _F0	=	0x00d5
                           0000D6   676 _AC	=	0x00d6
                           0000D7   677 _CY	=	0x00d7
                           0000D8   678 _T3OVFIF	=	0x00d8
                           0000D9   679 _T3CH0IF	=	0x00d9
                           0000DA   680 _T3CH1IF	=	0x00da
                           0000DB   681 _T4OVFIF	=	0x00db
                           0000DC   682 _T4CH0IF	=	0x00dc
                           0000DD   683 _T4CH1IF	=	0x00dd
                           0000DE   684 _OVFIM	=	0x00de
                           0000E0   685 _ACC_0	=	0x00e0
                           0000E1   686 _ACC_1	=	0x00e1
                           0000E2   687 _ACC_2	=	0x00e2
                           0000E3   688 _ACC_3	=	0x00e3
                           0000E4   689 _ACC_4	=	0x00e4
                           0000E5   690 _ACC_5	=	0x00e5
                           0000E6   691 _ACC_6	=	0x00e6
                           0000E7   692 _ACC_7	=	0x00e7
                           0000E8   693 _P2IF	=	0x00e8
                           0000E9   694 _UTX0IF	=	0x00e9
                           0000EA   695 _UTX1IF	=	0x00ea
                           0000EB   696 _P1IF	=	0x00eb
                           0000EC   697 _WDTIF	=	0x00ec
                           0000F0   698 _B_0	=	0x00f0
                           0000F1   699 _B_1	=	0x00f1
                           0000F2   700 _B_2	=	0x00f2
                           0000F3   701 _B_3	=	0x00f3
                           0000F4   702 _B_4	=	0x00f4
                           0000F5   703 _B_5	=	0x00f5
                           0000F6   704 _B_6	=	0x00f6
                           0000F7   705 _B_7	=	0x00f7
                           0000F8   706 _ACTIVE	=	0x00f8
                           0000F9   707 _TX_BYTE	=	0x00f9
                           0000FA   708 _RX_BYTE	=	0x00fa
                           0000FB   709 _ERR	=	0x00fb
                           0000FC   710 _FE	=	0x00fc
                           0000FD   711 _SLAVE	=	0x00fd
                           0000FE   712 _RE	=	0x00fe
                           0000FF   713 _MODE	=	0x00ff
                                    714 ;--------------------------------------------------------
                                    715 ; overlayable register banks
                                    716 ;--------------------------------------------------------
                                    717 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        718 	.ds 8
                                    719 ;--------------------------------------------------------
                                    720 ; internal ram data
                                    721 ;--------------------------------------------------------
                                    722 	.area DSEG    (DATA)
                                    723 ;--------------------------------------------------------
                                    724 ; overlayable items in internal ram 
                                    725 ;--------------------------------------------------------
                                    726 	.area	OSEG    (OVR,DATA)
      00003A                        727 _osal_memcpy_sloc0_1_0:
      00003A                        728 	.ds 2
                                    729 	.area	OSEG    (OVR,DATA)
      00003A                        730 _osal_revmemcpy_sloc0_1_0:
      00003A                        731 	.ds 2
                                    732 	.area	OSEG    (OVR,DATA)
      00003A                        733 _osal_memcmp_sloc0_1_0:
      00003A                        734 	.ds 2
                                    735 	.area	OSEG    (OVR,DATA)
      00003A                        736 _osal_build_uint32_sloc0_1_0:
      00003A                        737 	.ds 4
                                    738 	.area	OSEG    (OVR,DATA)
      00003A                        739 _osal_msg_dequeue_sloc0_1_0:
      00003A                        740 	.ds 3
                                    741 	.area	OSEG    (OVR,DATA)
      00003A                        742 _osal_msg_push_sloc0_1_0:
      00003A                        743 	.ds 1
      00003B                        744 _osal_msg_push_sloc1_1_0:
      00003B                        745 	.ds 3
      00003E                        746 _osal_msg_push_sloc2_1_0:
      00003E                        747 	.ds 3
                                    748 	.area	OSEG    (OVR,DATA)
      00003A                        749 _osal_buffer_uint32_sloc0_1_0:
      00003A                        750 	.ds 3
                                    751 	.area	OSEG    (OVR,DATA)
      00003A                        752 _osal_buffer_uint24_sloc0_1_0:
      00003A                        753 	.ds 3
                                    754 ;--------------------------------------------------------
                                    755 ; indirectly addressable internal ram data
                                    756 ;--------------------------------------------------------
                                    757 	.area ISEG    (DATA)
                                    758 ;--------------------------------------------------------
                                    759 ; absolute internal ram data
                                    760 ;--------------------------------------------------------
                                    761 	.area IABS    (ABS,DATA)
                                    762 	.area IABS    (ABS,DATA)
                                    763 ;--------------------------------------------------------
                                    764 ; bit data
                                    765 ;--------------------------------------------------------
                                    766 	.area BSEG    (BIT)
                                    767 ;--------------------------------------------------------
                                    768 ; paged external ram data
                                    769 ;--------------------------------------------------------
                                    770 	.area PSEG    (PAG,XDATA)
                                    771 ;--------------------------------------------------------
                                    772 ; external ram data
                                    773 ;--------------------------------------------------------
                                    774 	.area XSEG    (XDATA)
                           006230   775 _I2CCFG	=	0x6230
                           006231   776 _I2CSTAT	=	0x6231
                           006232   777 _I2CDATA	=	0x6232
                           006233   778 _I2CADDR	=	0x6233
                           006234   779 _I2CWC	=	0x6234
                           006235   780 _I2CIO	=	0x6235
                           006243   781 _OBSSEL0	=	0x6243
                           006244   782 _OBSSEL1	=	0x6244
                           006245   783 _OBSSEL2	=	0x6245
                           006246   784 _OBSSEL3	=	0x6246
                           006247   785 _OBSSEL4	=	0x6247
                           006248   786 _OBSSEL5	=	0x6248
                           006249   787 _CHVER	=	0x6249
                           00624A   788 _CHIPID	=	0x624a
                           00624B   789 _TESTREG0	=	0x624b
                           006260   790 _DBGDATA	=	0x6260
                           006262   791 _SRCRC	=	0x6262
                           006264   792 _BATTMON	=	0x6264
                           006265   793 _IVCTRL	=	0x6265
                           006270   794 _FCTL	=	0x6270
                           006271   795 _FADDRL	=	0x6271
                           006272   796 _FADDRH	=	0x6272
                           006273   797 _FWDATA	=	0x6273
                           006276   798 _CHIPINFO0	=	0x6276
                           006277   799 _CHIPINFO1	=	0x6277
                           006281   800 _IRCTL	=	0x6281
                           006290   801 _CLD	=	0x6290
                           0062A0   802 _X_T1CCTL0	=	0x62a0
                           0062A1   803 _X_T1CCTL1	=	0x62a1
                           0062A2   804 _X_T1CCTL2	=	0x62a2
                           0062A3   805 _T1CCTL3	=	0x62a3
                           0062A4   806 _T1CCTL4	=	0x62a4
                           0062A6   807 _X_T1CC0L	=	0x62a6
                           0062A7   808 _X_T1CC0H	=	0x62a7
                           0062A8   809 _X_T1CC1L	=	0x62a8
                           0062A9   810 _X_T1CC1H	=	0x62a9
                           0062AA   811 _X_T1CC2L	=	0x62aa
                           0062AB   812 _X_T1CC2H	=	0x62ab
                           0062AC   813 _T1CC3L	=	0x62ac
                           0062AD   814 _T1CC3H	=	0x62ad
                           0062AE   815 _T1CC4L	=	0x62ae
                           0062AF   816 _T1CC4H	=	0x62af
                           0062B0   817 _STCC	=	0x62b0
                           0062B1   818 _STCS	=	0x62b1
                           0062B2   819 _STCV0	=	0x62b2
                           0062B3   820 _STCV1	=	0x62b3
                           0062B4   821 _STCV2	=	0x62b4
                           0062C0   822 _OPAMPC	=	0x62c0
                           0062C1   823 _OPAMPS	=	0x62c1
                           0062D0   824 _CMPCTL	=	0x62d0
                           006200   825 _USBADDR	=	0x6200
                           006201   826 _USBPOW	=	0x6201
                           006202   827 _USBIIF	=	0x6202
                           006204   828 _USBOIF	=	0x6204
                           006206   829 _USBCIF	=	0x6206
                           006207   830 _USBIIE	=	0x6207
                           006209   831 _USBOIE	=	0x6209
                           00620B   832 _USBCIE	=	0x620b
                           00620C   833 _USBFRML	=	0x620c
                           00620D   834 _USBFRMH	=	0x620d
                           00620E   835 _USBINDEX	=	0x620e
                           00620F   836 _USBCTRL	=	0x620f
                           006210   837 _USBMAXI	=	0x6210
                           006211   838 _USBCS0	=	0x6211
                           006211   839 _USBCSIL	=	0x6211
                           006212   840 _USBCSIH	=	0x6212
                           006213   841 _USBMAXO	=	0x6213
                           006214   842 _USBCSOL	=	0x6214
                           006215   843 _USBCSOH	=	0x6215
                           006216   844 _USBCNT0	=	0x6216
                           006216   845 _USBCNTL	=	0x6216
                           006217   846 _USBCNTH	=	0x6217
                           006220   847 _USBF0	=	0x6220
                           006222   848 _USBF1	=	0x6222
                           006224   849 _USBF2	=	0x6224
                           006226   850 _USBF3	=	0x6226
                           006228   851 _USBF4	=	0x6228
                           00622A   852 _USBF5	=	0x622a
                           006174   853 _SHORTADDRH	=	0x6174
                           006175   854 _SHORTADDRL	=	0x6175
                           006172   855 _PANIDH	=	0x6172
                           006173   856 _PANIDL	=	0x6173
                           00616A   857 _IEEE_ADDR	=	0x616a
                           006180   858 _FRMFILT0	=	0x6180
                           006181   859 _FRMFILT1	=	0x6181
                           006182   860 _SRCMATCH	=	0x6182
                           006183   861 _SRCSHORTEN0	=	0x6183
                           006184   862 _SRCSHORTEN1	=	0x6184
                           006185   863 _SRCSHORTEN2	=	0x6185
                           006186   864 _SRCEXTEN0	=	0x6186
                           006187   865 _SRCEXTEN1	=	0x6187
                           006188   866 _SRCEXTEN2	=	0x6188
                           006189   867 _FRMCTRL0	=	0x6189
                           00618A   868 _FRMCTRL1	=	0x618a
                           00618B   869 _RXENABLE	=	0x618b
                           00618C   870 _RXMASKSET	=	0x618c
                           00618D   871 _RXMASKCLR	=	0x618d
                           00618E   872 _FREQTUNE	=	0x618e
                           00618F   873 _FREQCTRL	=	0x618f
                           006190   874 _TXPOWER	=	0x6190
                           006191   875 _TXCTRL	=	0x6191
                           006192   876 _FSMSTAT0	=	0x6192
                           006193   877 _FSMSTAT1	=	0x6193
                           006194   878 _FIFOPCTRL	=	0x6194
                           006195   879 _FSMCTRL	=	0x6195
                           006196   880 _CCACTRL0	=	0x6196
                           006197   881 _CCACTRL1	=	0x6197
                           006198   882 _RSSI	=	0x6198
                           006199   883 _RSSISTAT	=	0x6199
                           00619A   884 _RXFIRST	=	0x619a
                           00619B   885 _RXFIFOCNT	=	0x619b
                           00619C   886 _TXFIFOCNT	=	0x619c
                           00619D   887 _RXFIRST_PTR	=	0x619d
                           00619E   888 _RXLAST_PTR	=	0x619e
                           00619F   889 _RXP1_PTR	=	0x619f
                           0061A1   890 _TXFIRST_PTR	=	0x61a1
                           0061A2   891 _TXLAST_PTR	=	0x61a2
                           0061A3   892 _RFIRQM0	=	0x61a3
                           0061A4   893 _RFIRQM1	=	0x61a4
                           0061A5   894 _RFERRM	=	0x61a5
                           0061A6   895 _OPAMPMC	=	0x61a6
                           0061A7   896 _RFRND	=	0x61a7
                           0061A8   897 _MDMCTRL0	=	0x61a8
                           0061A9   898 _MDMCTRL1	=	0x61a9
                           0061AA   899 _FREQEST	=	0x61aa
                           0061AB   900 _RXCTRL	=	0x61ab
                           0061AC   901 _FSCTRL	=	0x61ac
                           0061AE   902 _FSCAL1	=	0x61ae
                           0061AF   903 _FSCAL2	=	0x61af
                           0061B0   904 _FSCAL3	=	0x61b0
                           0061B1   905 _AGCCTRL0	=	0x61b1
                           0061B2   906 _AGCCTRL1	=	0x61b2
                           0061B3   907 _AGCCTRL2	=	0x61b3
                           0061B4   908 _AGCCTRL3	=	0x61b4
                           0061B5   909 _ADCTEST0	=	0x61b5
                           0061B6   910 _ADCTEST1	=	0x61b6
                           0061B7   911 _ADCTEST2	=	0x61b7
                           0061B8   912 _MDMTEST0	=	0x61b8
                           0061B9   913 _MDMTEST1	=	0x61b9
                           0061BA   914 _DACTEST0	=	0x61ba
                           0061BB   915 _DACTEST1	=	0x61bb
                           0061BC   916 _DACTEST2	=	0x61bc
                           0061BD   917 _ATEST	=	0x61bd
                           0061BE   918 _PTEST0	=	0x61be
                           0061BF   919 _PTEST1	=	0x61bf
                           0061C0   920 _CSPPROG0	=	0x61c0
                           0061C1   921 _CSPPROG1	=	0x61c1
                           0061C2   922 _CSPPROG2	=	0x61c2
                           0061C3   923 _CSPPROG3	=	0x61c3
                           0061C4   924 _CSPPROG4	=	0x61c4
                           0061C5   925 _CSPPROG5	=	0x61c5
                           0061C6   926 _CSPPROG6	=	0x61c6
                           0061C7   927 _CSPPROG7	=	0x61c7
                           0061C8   928 _CSPPROG8	=	0x61c8
                           0061C9   929 _CSPPROG9	=	0x61c9
                           0061CA   930 _CSPPROG10	=	0x61ca
                           0061CB   931 _CSPPROG11	=	0x61cb
                           0061CC   932 _CSPPROG12	=	0x61cc
                           0061CD   933 _CSPPROG13	=	0x61cd
                           0061CE   934 _CSPPROG14	=	0x61ce
                           0061CF   935 _CSPPROG15	=	0x61cf
                           0061D0   936 _CSPPROG16	=	0x61d0
                           0061D1   937 _CSPPROG17	=	0x61d1
                           0061D2   938 _CSPPROG18	=	0x61d2
                           0061D3   939 _CSPPROG19	=	0x61d3
                           0061D4   940 _CSPPROG20	=	0x61d4
                           0061D5   941 _CSPPROG21	=	0x61d5
                           0061D6   942 _CSPPROG22	=	0x61d6
                           0061D7   943 _CSPPROG23	=	0x61d7
                           0061E0   944 _CSPCTRL	=	0x61e0
                           0061E1   945 _CSPSTAT	=	0x61e1
                           0061E2   946 _CSPX	=	0x61e2
                           0061E3   947 _CSPY	=	0x61e3
                           0061E4   948 _CSPZ	=	0x61e4
                           0061E5   949 _CSPT	=	0x61e5
                           0061EB   950 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   951 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   952 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   953 _TXFILTCFG	=	0x61fa
      000305                        954 _osal_qHead::
      000305                        955 	.ds 3
      000308                        956 _activeTaskID:
      000308                        957 	.ds 1
      000309                        958 _osal_strlen_pString_1_111:
      000309                        959 	.ds 3
      00030C                        960 _osal_memcpy_PARM_2:
      00030C                        961 	.ds 3
      00030F                        962 _osal_memcpy_PARM_3:
      00030F                        963 	.ds 2
      000311                        964 _osal_memcpy_dst_1_113:
      000311                        965 	.ds 3
      000314                        966 _osal_memcpy_pDst_1_114:
      000314                        967 	.ds 3
      000317                        968 _osal_memcpy_pSrc_1_114:
      000317                        969 	.ds 3
      00031A                        970 _osal_revmemcpy_PARM_2:
      00031A                        971 	.ds 3
      00031D                        972 _osal_revmemcpy_PARM_3:
      00031D                        973 	.ds 2
      00031F                        974 _osal_revmemcpy_dst_1_115:
      00031F                        975 	.ds 3
      000322                        976 _osal_revmemcpy_pDst_1_116:
      000322                        977 	.ds 3
      000325                        978 _osal_revmemcpy_pSrc_1_116:
      000325                        979 	.ds 3
      000328                        980 _osal_memdup_PARM_2:
      000328                        981 	.ds 2
      00032A                        982 _osal_memdup_src_1_117:
      00032A                        983 	.ds 3
      00032D                        984 _osal_memdup_pDst_1_118:
      00032D                        985 	.ds 3
      000330                        986 _osal_memcmp_PARM_2:
      000330                        987 	.ds 3
      000333                        988 _osal_memcmp_PARM_3:
      000333                        989 	.ds 2
      000335                        990 _osal_memcmp_src1_1_120:
      000335                        991 	.ds 3
      000338                        992 _osal_memcmp_pSrc1_1_121:
      000338                        993 	.ds 3
      00033B                        994 _osal_memcmp_pSrc2_1_121:
      00033B                        995 	.ds 3
      00033E                        996 _osal_memset_PARM_2:
      00033E                        997 	.ds 1
      00033F                        998 _osal_memset_PARM_3:
      00033F                        999 	.ds 2
      000341                       1000 _osal_memset_dest_1_123:
      000341                       1001 	.ds 3
      000344                       1002 _osal_build_uint16_swapped_1_125:
      000344                       1003 	.ds 3
      000347                       1004 _osal_build_uint32_PARM_2:
      000347                       1005 	.ds 1
      000348                       1006 _osal_build_uint32_swapped_1_127:
      000348                       1007 	.ds 3
      00034B                       1008 __ltoa_PARM_2:
      00034B                       1009 	.ds 3
      00034E                       1010 __ltoa_PARM_3:
      00034E                       1011 	.ds 1
      00034F                       1012 __ltoa_l_1_129:
      00034F                       1013 	.ds 4
      000353                       1014 __ltoa_tmp1_1_130:
      000353                       1015 	.ds 10
      00035D                       1016 __ltoa_tmp2_1_130:
      00035D                       1017 	.ds 10
      000367                       1018 __ltoa_tmp3_1_130:
      000367                       1019 	.ds 10
      000371                       1020 __ltoa_num1_1_130:
      000371                       1021 	.ds 2
      000373                       1022 __ltoa_num2_1_130:
      000373                       1023 	.ds 2
      000375                       1024 __ltoa_num3_1_130:
      000375                       1025 	.ds 2
      000377                       1026 __ltoa_i_1_130:
      000377                       1027 	.ds 1
      000378                       1028 _osal_msg_allocate_len_1_138:
      000378                       1029 	.ds 2
      00037A                       1030 _osal_msg_allocate_hdr_1_139:
      00037A                       1031 	.ds 3
      00037D                       1032 _osal_msg_deallocate_msg_ptr_1_141:
      00037D                       1033 	.ds 3
      000380                       1034 _osal_msg_send_PARM_2:
      000380                       1035 	.ds 3
      000383                       1036 _osal_msg_send_destination_task_1_143:
      000383                       1037 	.ds 1
      000384                       1038 _osal_msg_push_front_PARM_2:
      000384                       1039 	.ds 3
      000387                       1040 _osal_msg_push_front_destination_task_1_145:
      000387                       1041 	.ds 1
      000388                       1042 _osal_msg_enqueue_push_PARM_2:
      000388                       1043 	.ds 3
      00038B                       1044 _osal_msg_enqueue_push_PARM_3:
      00038B                       1045 	.ds 1
      00038C                       1046 _osal_msg_enqueue_push_destination_task_1_147:
      00038C                       1047 	.ds 1
      00038D                       1048 _osal_msg_receive_task_id_1_154:
      00038D                       1049 	.ds 1
      00038E                       1050 _osal_msg_receive_listHdr_1_155:
      00038E                       1051 	.ds 3
      000391                       1052 _osal_msg_receive_prevHdr_1_155:
      000391                       1053 	.ds 3
      000394                       1054 _osal_msg_receive_foundHdr_1_155:
      000394                       1055 	.ds 3
      000397                       1056 _osal_msg_receive_intState_1_155:
      000397                       1057 	.ds 1
      000398                       1058 _osal_msg_find_PARM_2:
      000398                       1059 	.ds 1
      000399                       1060 _osal_msg_find_task_id_1_167:
      000399                       1061 	.ds 1
      00039A                       1062 _osal_msg_find_pHdr_1_168:
      00039A                       1063 	.ds 3
      00039D                       1064 _osal_msg_find_intState_1_168:
      00039D                       1065 	.ds 1
      00039E                       1066 _osal_msg_enqueue_PARM_2:
      00039E                       1067 	.ds 3
      0003A1                       1068 _osal_msg_enqueue_q_ptr_1_174:
      0003A1                       1069 	.ds 3
      0003A4                       1070 _osal_msg_enqueue_list_1_175:
      0003A4                       1071 	.ds 3
      0003A7                       1072 _osal_msg_enqueue_intState_1_175:
      0003A7                       1073 	.ds 1
      0003A8                       1074 _osal_msg_dequeue_q_ptr_1_181:
      0003A8                       1075 	.ds 3
      0003AB                       1076 _osal_msg_dequeue_msg_ptr_1_182:
      0003AB                       1077 	.ds 3
      0003AE                       1078 _osal_msg_dequeue_intState_1_182:
      0003AE                       1079 	.ds 1
      0003AF                       1080 _osal_msg_push_PARM_2:
      0003AF                       1081 	.ds 3
      0003B2                       1082 _osal_msg_push_q_ptr_1_187:
      0003B2                       1083 	.ds 3
      0003B5                       1084 _osal_msg_extract_PARM_2:
      0003B5                       1085 	.ds 3
      0003B8                       1086 _osal_msg_extract_PARM_3:
      0003B8                       1087 	.ds 3
      0003BB                       1088 _osal_msg_extract_q_ptr_1_192:
      0003BB                       1089 	.ds 3
      0003BE                       1090 _osal_msg_extract_intState_1_193:
      0003BE                       1091 	.ds 1
      0003BF                       1092 _osal_msg_enqueue_max_PARM_2:
      0003BF                       1093 	.ds 3
      0003C2                       1094 _osal_msg_enqueue_max_PARM_3:
      0003C2                       1095 	.ds 1
      0003C3                       1096 _osal_msg_enqueue_max_q_ptr_1_199:
      0003C3                       1097 	.ds 3
      0003C6                       1098 _osal_msg_enqueue_max_list_1_200:
      0003C6                       1099 	.ds 3
      0003C9                       1100 _osal_msg_enqueue_max_ret_1_200:
      0003C9                       1101 	.ds 1
      0003CA                       1102 _osal_msg_enqueue_max_intState_1_200:
      0003CA                       1103 	.ds 1
      0003CB                       1104 _osal_set_event_PARM_2:
      0003CB                       1105 	.ds 2
      0003CD                       1106 _osal_set_event_task_id_1_208:
      0003CD                       1107 	.ds 1
      0003CE                       1108 _osal_clear_event_PARM_2:
      0003CE                       1109 	.ds 2
      0003D0                       1110 _osal_clear_event_task_id_1_212:
      0003D0                       1111 	.ds 1
      0003D1                       1112 _osal_isr_register_PARM_2:
      0003D1                       1113 	.ds 2
      0003D3                       1114 _osal_int_enable_interrupt_id_1_222:
      0003D3                       1115 	.ds 1
      0003D4                       1116 _osal_int_disable_interrupt_id_1_227:
      0003D4                       1117 	.ds 1
      0003D5                       1118 _osal_run_system_idx_1_238:
      0003D5                       1119 	.ds 1
      0003D6                       1120 _osal_run_system_events_2_241:
      0003D6                       1121 	.ds 2
      0003D8                       1122 _osal_buffer_uint32_PARM_2:
      0003D8                       1123 	.ds 4
      0003DC                       1124 _osal_buffer_uint32_buf_1_242:
      0003DC                       1125 	.ds 3
      0003DF                       1126 _osal_buffer_uint24_PARM_2:
      0003DF                       1127 	.ds 4
      0003E3                       1128 _osal_buffer_uint24_buf_1_244:
      0003E3                       1129 	.ds 3
      0003E6                       1130 _osal_isbufset_PARM_2:
      0003E6                       1131 	.ds 1
      0003E7                       1132 _osal_isbufset_PARM_3:
      0003E7                       1133 	.ds 1
      0003E8                       1134 _osal_isbufset_buf_1_246:
      0003E8                       1135 	.ds 3
      0003EB                       1136 _osal_isbufset_x_1_247:
      0003EB                       1137 	.ds 1
                                   1138 ;--------------------------------------------------------
                                   1139 ; absolute external ram data
                                   1140 ;--------------------------------------------------------
                                   1141 	.area XABS    (ABS,XDATA)
                                   1142 ;--------------------------------------------------------
                                   1143 ; external initialized ram data
                                   1144 ;--------------------------------------------------------
                                   1145 	.area HOME    (CODE)
                                   1146 	.area GSINIT0 (CODE)
                                   1147 	.area GSINIT1 (CODE)
                                   1148 	.area GSINIT2 (CODE)
                                   1149 	.area GSINIT3 (CODE)
                                   1150 	.area GSINIT4 (CODE)
                                   1151 	.area GSINIT5 (CODE)
                                   1152 	.area GSINIT  (CODE)
                                   1153 	.area GSFINAL (CODE)
                                   1154 	.area CSEG    (CODE)
                                   1155 ;--------------------------------------------------------
                                   1156 ; global & static initialisations
                                   1157 ;--------------------------------------------------------
                                   1158 	.area HOME    (CODE)
                                   1159 	.area GSINIT  (CODE)
                                   1160 	.area GSFINAL (CODE)
                                   1161 	.area GSINIT  (CODE)
                                   1162 ;	../osal/common/OSAL.c:102: static uint8 activeTaskID = TASK_NO_TASK;
      000047 90 03 08         [24] 1163 	mov	dptr,#_activeTaskID
      00004A 74 FF            [12] 1164 	mov	a,#0xFF
      00004C F0               [24] 1165 	movx	@dptr,a
                                   1166 ;--------------------------------------------------------
                                   1167 ; Home
                                   1168 ;--------------------------------------------------------
                                   1169 	.area HOME    (CODE)
                                   1170 	.area HOME    (CODE)
                                   1171 ;--------------------------------------------------------
                                   1172 ; code
                                   1173 ;--------------------------------------------------------
                                   1174 	.area CSEG    (CODE)
                                   1175 ;------------------------------------------------------------
                                   1176 ;Allocation info for local variables in function 'osal_strlen'
                                   1177 ;------------------------------------------------------------
                                   1178 ;pString                   Allocated with name '_osal_strlen_pString_1_111'
                                   1179 ;------------------------------------------------------------
                                   1180 ;	../osal/common/OSAL.c:133: int osal_strlen( char *pString )
                                   1181 ;	-----------------------------------------
                                   1182 ;	 function osal_strlen
                                   1183 ;	-----------------------------------------
      000449                       1184 _osal_strlen:
                           000007  1185 	ar7 = 0x07
                           000006  1186 	ar6 = 0x06
                           000005  1187 	ar5 = 0x05
                           000004  1188 	ar4 = 0x04
                           000003  1189 	ar3 = 0x03
                           000002  1190 	ar2 = 0x02
                           000001  1191 	ar1 = 0x01
                           000000  1192 	ar0 = 0x00
      000449 AF F0            [24] 1193 	mov	r7,b
      00044B AE 83            [24] 1194 	mov	r6,dph
      00044D E5 82            [12] 1195 	mov	a,dpl
      00044F 90 03 09         [24] 1196 	mov	dptr,#_osal_strlen_pString_1_111
      000452 F0               [24] 1197 	movx	@dptr,a
      000453 EE               [12] 1198 	mov	a,r6
      000454 A3               [24] 1199 	inc	dptr
      000455 F0               [24] 1200 	movx	@dptr,a
      000456 EF               [12] 1201 	mov	a,r7
      000457 A3               [24] 1202 	inc	dptr
      000458 F0               [24] 1203 	movx	@dptr,a
                                   1204 ;	../osal/common/OSAL.c:135: return (int)( strlen( pString ) );
      000459 90 03 09         [24] 1205 	mov	dptr,#_osal_strlen_pString_1_111
      00045C E0               [24] 1206 	movx	a,@dptr
      00045D FD               [12] 1207 	mov	r5,a
      00045E A3               [24] 1208 	inc	dptr
      00045F E0               [24] 1209 	movx	a,@dptr
      000460 FE               [12] 1210 	mov	r6,a
      000461 A3               [24] 1211 	inc	dptr
      000462 E0               [24] 1212 	movx	a,@dptr
      000463 FF               [12] 1213 	mov	r7,a
      000464 8D 82            [24] 1214 	mov	dpl,r5
      000466 8E 83            [24] 1215 	mov	dph,r6
      000468 8F F0            [24] 1216 	mov	b,r7
      00046A 12 5B 55         [24] 1217 	lcall	_strlen
      00046D AE 82            [24] 1218 	mov	r6,dpl
      00046F AF 83            [24] 1219 	mov	r7,dph
      000471 8E 82            [24] 1220 	mov	dpl,r6
      000473 8F 83            [24] 1221 	mov	dph,r7
      000475                       1222 00101$:
      000475 22               [24] 1223 	ret
                                   1224 ;------------------------------------------------------------
                                   1225 ;Allocation info for local variables in function 'osal_memcpy'
                                   1226 ;------------------------------------------------------------
                                   1227 ;src                       Allocated with name '_osal_memcpy_PARM_2'
                                   1228 ;len                       Allocated with name '_osal_memcpy_PARM_3'
                                   1229 ;dst                       Allocated with name '_osal_memcpy_dst_1_113'
                                   1230 ;pDst                      Allocated with name '_osal_memcpy_pDst_1_114'
                                   1231 ;pSrc                      Allocated with name '_osal_memcpy_pSrc_1_114'
                                   1232 ;sloc0                     Allocated with name '_osal_memcpy_sloc0_1_0'
                                   1233 ;------------------------------------------------------------
                                   1234 ;	../osal/common/OSAL.c:155: void *osal_memcpy( void *dst, const void GENERIC *src, unsigned int len )
                                   1235 ;	-----------------------------------------
                                   1236 ;	 function osal_memcpy
                                   1237 ;	-----------------------------------------
      000476                       1238 _osal_memcpy:
      000476 AF F0            [24] 1239 	mov	r7,b
      000478 AE 83            [24] 1240 	mov	r6,dph
      00047A E5 82            [12] 1241 	mov	a,dpl
      00047C 90 03 11         [24] 1242 	mov	dptr,#_osal_memcpy_dst_1_113
      00047F F0               [24] 1243 	movx	@dptr,a
      000480 EE               [12] 1244 	mov	a,r6
      000481 A3               [24] 1245 	inc	dptr
      000482 F0               [24] 1246 	movx	@dptr,a
      000483 EF               [12] 1247 	mov	a,r7
      000484 A3               [24] 1248 	inc	dptr
      000485 F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	../osal/common/OSAL.c:160: pSrc = src;
      000486 90 03 0C         [24] 1251 	mov	dptr,#_osal_memcpy_PARM_2
      000489 E0               [24] 1252 	movx	a,@dptr
      00048A FD               [12] 1253 	mov	r5,a
      00048B A3               [24] 1254 	inc	dptr
      00048C E0               [24] 1255 	movx	a,@dptr
      00048D FE               [12] 1256 	mov	r6,a
      00048E A3               [24] 1257 	inc	dptr
      00048F E0               [24] 1258 	movx	a,@dptr
      000490 FF               [12] 1259 	mov	r7,a
      000491 90 03 17         [24] 1260 	mov	dptr,#_osal_memcpy_pSrc_1_114
      000494 ED               [12] 1261 	mov	a,r5
      000495 F0               [24] 1262 	movx	@dptr,a
      000496 EE               [12] 1263 	mov	a,r6
      000497 A3               [24] 1264 	inc	dptr
      000498 F0               [24] 1265 	movx	@dptr,a
      000499 EF               [12] 1266 	mov	a,r7
      00049A A3               [24] 1267 	inc	dptr
      00049B F0               [24] 1268 	movx	@dptr,a
                                   1269 ;	../osal/common/OSAL.c:161: pDst = dst;
      00049C 90 03 11         [24] 1270 	mov	dptr,#_osal_memcpy_dst_1_113
      00049F E0               [24] 1271 	movx	a,@dptr
      0004A0 FD               [12] 1272 	mov	r5,a
      0004A1 A3               [24] 1273 	inc	dptr
      0004A2 E0               [24] 1274 	movx	a,@dptr
      0004A3 FE               [12] 1275 	mov	r6,a
      0004A4 A3               [24] 1276 	inc	dptr
      0004A5 E0               [24] 1277 	movx	a,@dptr
      0004A6 FF               [12] 1278 	mov	r7,a
      0004A7 90 03 14         [24] 1279 	mov	dptr,#_osal_memcpy_pDst_1_114
      0004AA ED               [12] 1280 	mov	a,r5
      0004AB F0               [24] 1281 	movx	@dptr,a
      0004AC EE               [12] 1282 	mov	a,r6
      0004AD A3               [24] 1283 	inc	dptr
      0004AE F0               [24] 1284 	movx	@dptr,a
      0004AF EF               [12] 1285 	mov	a,r7
      0004B0 A3               [24] 1286 	inc	dptr
      0004B1 F0               [24] 1287 	movx	@dptr,a
                                   1288 ;	../osal/common/OSAL.c:163: while ( len-- )
      0004B2 90 03 17         [24] 1289 	mov	dptr,#_osal_memcpy_pSrc_1_114
      0004B5 E0               [24] 1290 	movx	a,@dptr
      0004B6 FD               [12] 1291 	mov	r5,a
      0004B7 A3               [24] 1292 	inc	dptr
      0004B8 E0               [24] 1293 	movx	a,@dptr
      0004B9 FE               [12] 1294 	mov	r6,a
      0004BA A3               [24] 1295 	inc	dptr
      0004BB E0               [24] 1296 	movx	a,@dptr
      0004BC FF               [12] 1297 	mov	r7,a
      0004BD 90 03 14         [24] 1298 	mov	dptr,#_osal_memcpy_pDst_1_114
      0004C0 E0               [24] 1299 	movx	a,@dptr
      0004C1 FA               [12] 1300 	mov	r2,a
      0004C2 A3               [24] 1301 	inc	dptr
      0004C3 E0               [24] 1302 	movx	a,@dptr
      0004C4 FB               [12] 1303 	mov	r3,a
      0004C5 A3               [24] 1304 	inc	dptr
      0004C6 E0               [24] 1305 	movx	a,@dptr
      0004C7 FC               [12] 1306 	mov	r4,a
      0004C8 90 03 0F         [24] 1307 	mov	dptr,#_osal_memcpy_PARM_3
      0004CB E0               [24] 1308 	movx	a,@dptr
      0004CC F5 3A            [12] 1309 	mov	_osal_memcpy_sloc0_1_0,a
      0004CE A3               [24] 1310 	inc	dptr
      0004CF E0               [24] 1311 	movx	a,@dptr
      0004D0 F5 3B            [12] 1312 	mov	(_osal_memcpy_sloc0_1_0 + 1),a
      0004D2                       1313 00101$:
      0004D2 A8 3A            [24] 1314 	mov	r0,_osal_memcpy_sloc0_1_0
      0004D4 A9 3B            [24] 1315 	mov	r1,(_osal_memcpy_sloc0_1_0 + 1)
      0004D6 15 3A            [12] 1316 	dec	_osal_memcpy_sloc0_1_0
      0004D8 74 FF            [12] 1317 	mov	a,#0xFF
      0004DA B5 3A 02         [24] 1318 	cjne	a,_osal_memcpy_sloc0_1_0,00113$
      0004DD 15 3B            [12] 1319 	dec	(_osal_memcpy_sloc0_1_0 + 1)
      0004DF                       1320 00113$:
      0004DF E8               [12] 1321 	mov	a,r0
      0004E0 49               [12] 1322 	orl	a,r1
      0004E1 70 03            [24] 1323 	jnz	00114$
      0004E3 02 05 07         [24] 1324 	ljmp	00108$
      0004E6                       1325 00114$:
                                   1326 ;	../osal/common/OSAL.c:164: *pDst++ = *pSrc++;
      0004E6 8D 82            [24] 1327 	mov	dpl,r5
      0004E8 8E 83            [24] 1328 	mov	dph,r6
      0004EA 8F F0            [24] 1329 	mov	b,r7
      0004EC 12 5B 6D         [24] 1330 	lcall	__gptrget
      0004EF F9               [12] 1331 	mov	r1,a
      0004F0 A3               [24] 1332 	inc	dptr
      0004F1 AD 82            [24] 1333 	mov	r5,dpl
      0004F3 AE 83            [24] 1334 	mov	r6,dph
      0004F5 8A 82            [24] 1335 	mov	dpl,r2
      0004F7 8B 83            [24] 1336 	mov	dph,r3
      0004F9 8C F0            [24] 1337 	mov	b,r4
      0004FB E9               [12] 1338 	mov	a,r1
      0004FC 12 5A 01         [24] 1339 	lcall	__gptrput
      0004FF A3               [24] 1340 	inc	dptr
      000500 AA 82            [24] 1341 	mov	r2,dpl
      000502 AB 83            [24] 1342 	mov	r3,dph
      000504 02 04 D2         [24] 1343 	ljmp	00101$
      000507                       1344 00108$:
      000507 90 03 14         [24] 1345 	mov	dptr,#_osal_memcpy_pDst_1_114
      00050A EA               [12] 1346 	mov	a,r2
      00050B F0               [24] 1347 	movx	@dptr,a
      00050C EB               [12] 1348 	mov	a,r3
      00050D A3               [24] 1349 	inc	dptr
      00050E F0               [24] 1350 	movx	@dptr,a
      00050F EC               [12] 1351 	mov	a,r4
      000510 A3               [24] 1352 	inc	dptr
      000511 F0               [24] 1353 	movx	@dptr,a
                                   1354 ;	../osal/common/OSAL.c:166: return ( pDst );
      000512 90 03 14         [24] 1355 	mov	dptr,#_osal_memcpy_pDst_1_114
      000515 E0               [24] 1356 	movx	a,@dptr
      000516 FD               [12] 1357 	mov	r5,a
      000517 A3               [24] 1358 	inc	dptr
      000518 E0               [24] 1359 	movx	a,@dptr
      000519 FE               [12] 1360 	mov	r6,a
      00051A A3               [24] 1361 	inc	dptr
      00051B E0               [24] 1362 	movx	a,@dptr
      00051C FF               [12] 1363 	mov	r7,a
      00051D 8D 82            [24] 1364 	mov	dpl,r5
      00051F 8E 83            [24] 1365 	mov	dph,r6
      000521 8F F0            [24] 1366 	mov	b,r7
      000523                       1367 00104$:
      000523 22               [24] 1368 	ret
                                   1369 ;------------------------------------------------------------
                                   1370 ;Allocation info for local variables in function 'osal_revmemcpy'
                                   1371 ;------------------------------------------------------------
                                   1372 ;src                       Allocated with name '_osal_revmemcpy_PARM_2'
                                   1373 ;len                       Allocated with name '_osal_revmemcpy_PARM_3'
                                   1374 ;dst                       Allocated with name '_osal_revmemcpy_dst_1_115'
                                   1375 ;pDst                      Allocated with name '_osal_revmemcpy_pDst_1_116'
                                   1376 ;pSrc                      Allocated with name '_osal_revmemcpy_pSrc_1_116'
                                   1377 ;sloc0                     Allocated with name '_osal_revmemcpy_sloc0_1_0'
                                   1378 ;------------------------------------------------------------
                                   1379 ;	../osal/common/OSAL.c:186: void *osal_revmemcpy( void *dst, const void GENERIC *src, unsigned int len )
                                   1380 ;	-----------------------------------------
                                   1381 ;	 function osal_revmemcpy
                                   1382 ;	-----------------------------------------
      000524                       1383 _osal_revmemcpy:
      000524 AF F0            [24] 1384 	mov	r7,b
      000526 AE 83            [24] 1385 	mov	r6,dph
      000528 E5 82            [12] 1386 	mov	a,dpl
      00052A 90 03 1F         [24] 1387 	mov	dptr,#_osal_revmemcpy_dst_1_115
      00052D F0               [24] 1388 	movx	@dptr,a
      00052E EE               [12] 1389 	mov	a,r6
      00052F A3               [24] 1390 	inc	dptr
      000530 F0               [24] 1391 	movx	@dptr,a
      000531 EF               [12] 1392 	mov	a,r7
      000532 A3               [24] 1393 	inc	dptr
      000533 F0               [24] 1394 	movx	@dptr,a
                                   1395 ;	../osal/common/OSAL.c:191: pSrc = src;
      000534 90 03 1A         [24] 1396 	mov	dptr,#_osal_revmemcpy_PARM_2
      000537 E0               [24] 1397 	movx	a,@dptr
      000538 FD               [12] 1398 	mov	r5,a
      000539 A3               [24] 1399 	inc	dptr
      00053A E0               [24] 1400 	movx	a,@dptr
      00053B FE               [12] 1401 	mov	r6,a
      00053C A3               [24] 1402 	inc	dptr
      00053D E0               [24] 1403 	movx	a,@dptr
      00053E FF               [12] 1404 	mov	r7,a
                                   1405 ;	../osal/common/OSAL.c:192: pSrc += (len-1);
      00053F 90 03 1D         [24] 1406 	mov	dptr,#_osal_revmemcpy_PARM_3
      000542 E0               [24] 1407 	movx	a,@dptr
      000543 FB               [12] 1408 	mov	r3,a
      000544 A3               [24] 1409 	inc	dptr
      000545 E0               [24] 1410 	movx	a,@dptr
      000546 FC               [12] 1411 	mov	r4,a
      000547 1B               [12] 1412 	dec	r3
      000548 BB FF 01         [24] 1413 	cjne	r3,#0xFF,00113$
      00054B 1C               [12] 1414 	dec	r4
      00054C                       1415 00113$:
      00054C 90 03 25         [24] 1416 	mov	dptr,#_osal_revmemcpy_pSrc_1_116
      00054F EB               [12] 1417 	mov	a,r3
      000550 2D               [12] 1418 	add	a,r5
      000551 F0               [24] 1419 	movx	@dptr,a
      000552 EC               [12] 1420 	mov	a,r4
      000553 3E               [12] 1421 	addc	a,r6
      000554 A3               [24] 1422 	inc	dptr
      000555 F0               [24] 1423 	movx	@dptr,a
      000556 EF               [12] 1424 	mov	a,r7
      000557 A3               [24] 1425 	inc	dptr
      000558 F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	../osal/common/OSAL.c:193: pDst = dst;
      000559 90 03 1F         [24] 1428 	mov	dptr,#_osal_revmemcpy_dst_1_115
      00055C E0               [24] 1429 	movx	a,@dptr
      00055D FD               [12] 1430 	mov	r5,a
      00055E A3               [24] 1431 	inc	dptr
      00055F E0               [24] 1432 	movx	a,@dptr
      000560 FE               [12] 1433 	mov	r6,a
      000561 A3               [24] 1434 	inc	dptr
      000562 E0               [24] 1435 	movx	a,@dptr
      000563 FF               [12] 1436 	mov	r7,a
      000564 90 03 22         [24] 1437 	mov	dptr,#_osal_revmemcpy_pDst_1_116
      000567 ED               [12] 1438 	mov	a,r5
      000568 F0               [24] 1439 	movx	@dptr,a
      000569 EE               [12] 1440 	mov	a,r6
      00056A A3               [24] 1441 	inc	dptr
      00056B F0               [24] 1442 	movx	@dptr,a
      00056C EF               [12] 1443 	mov	a,r7
      00056D A3               [24] 1444 	inc	dptr
      00056E F0               [24] 1445 	movx	@dptr,a
                                   1446 ;	../osal/common/OSAL.c:195: while ( len-- )
      00056F 90 03 25         [24] 1447 	mov	dptr,#_osal_revmemcpy_pSrc_1_116
      000572 E0               [24] 1448 	movx	a,@dptr
      000573 FD               [12] 1449 	mov	r5,a
      000574 A3               [24] 1450 	inc	dptr
      000575 E0               [24] 1451 	movx	a,@dptr
      000576 FE               [12] 1452 	mov	r6,a
      000577 A3               [24] 1453 	inc	dptr
      000578 E0               [24] 1454 	movx	a,@dptr
      000579 FF               [12] 1455 	mov	r7,a
      00057A 90 03 22         [24] 1456 	mov	dptr,#_osal_revmemcpy_pDst_1_116
      00057D E0               [24] 1457 	movx	a,@dptr
      00057E FA               [12] 1458 	mov	r2,a
      00057F A3               [24] 1459 	inc	dptr
      000580 E0               [24] 1460 	movx	a,@dptr
      000581 FB               [12] 1461 	mov	r3,a
      000582 A3               [24] 1462 	inc	dptr
      000583 E0               [24] 1463 	movx	a,@dptr
      000584 FC               [12] 1464 	mov	r4,a
      000585 90 03 1D         [24] 1465 	mov	dptr,#_osal_revmemcpy_PARM_3
      000588 E0               [24] 1466 	movx	a,@dptr
      000589 F5 3A            [12] 1467 	mov	_osal_revmemcpy_sloc0_1_0,a
      00058B A3               [24] 1468 	inc	dptr
      00058C E0               [24] 1469 	movx	a,@dptr
      00058D F5 3B            [12] 1470 	mov	(_osal_revmemcpy_sloc0_1_0 + 1),a
      00058F                       1471 00101$:
      00058F A8 3A            [24] 1472 	mov	r0,_osal_revmemcpy_sloc0_1_0
      000591 A9 3B            [24] 1473 	mov	r1,(_osal_revmemcpy_sloc0_1_0 + 1)
      000593 15 3A            [12] 1474 	dec	_osal_revmemcpy_sloc0_1_0
      000595 74 FF            [12] 1475 	mov	a,#0xFF
      000597 B5 3A 02         [24] 1476 	cjne	a,_osal_revmemcpy_sloc0_1_0,00114$
      00059A 15 3B            [12] 1477 	dec	(_osal_revmemcpy_sloc0_1_0 + 1)
      00059C                       1478 00114$:
      00059C E8               [12] 1479 	mov	a,r0
      00059D 49               [12] 1480 	orl	a,r1
      00059E 70 03            [24] 1481 	jnz	00115$
      0005A0 02 05 C4         [24] 1482 	ljmp	00108$
      0005A3                       1483 00115$:
                                   1484 ;	../osal/common/OSAL.c:196: *pDst++ = *pSrc--;
      0005A3 8D 82            [24] 1485 	mov	dpl,r5
      0005A5 8E 83            [24] 1486 	mov	dph,r6
      0005A7 8F F0            [24] 1487 	mov	b,r7
      0005A9 12 5B 6D         [24] 1488 	lcall	__gptrget
      0005AC F9               [12] 1489 	mov	r1,a
      0005AD 1D               [12] 1490 	dec	r5
      0005AE BD FF 01         [24] 1491 	cjne	r5,#0xFF,00116$
      0005B1 1E               [12] 1492 	dec	r6
      0005B2                       1493 00116$:
      0005B2 8A 82            [24] 1494 	mov	dpl,r2
      0005B4 8B 83            [24] 1495 	mov	dph,r3
      0005B6 8C F0            [24] 1496 	mov	b,r4
      0005B8 E9               [12] 1497 	mov	a,r1
      0005B9 12 5A 01         [24] 1498 	lcall	__gptrput
      0005BC A3               [24] 1499 	inc	dptr
      0005BD AA 82            [24] 1500 	mov	r2,dpl
      0005BF AB 83            [24] 1501 	mov	r3,dph
      0005C1 02 05 8F         [24] 1502 	ljmp	00101$
      0005C4                       1503 00108$:
      0005C4 90 03 22         [24] 1504 	mov	dptr,#_osal_revmemcpy_pDst_1_116
      0005C7 EA               [12] 1505 	mov	a,r2
      0005C8 F0               [24] 1506 	movx	@dptr,a
      0005C9 EB               [12] 1507 	mov	a,r3
      0005CA A3               [24] 1508 	inc	dptr
      0005CB F0               [24] 1509 	movx	@dptr,a
      0005CC EC               [12] 1510 	mov	a,r4
      0005CD A3               [24] 1511 	inc	dptr
      0005CE F0               [24] 1512 	movx	@dptr,a
                                   1513 ;	../osal/common/OSAL.c:198: return ( pDst );
      0005CF 90 03 22         [24] 1514 	mov	dptr,#_osal_revmemcpy_pDst_1_116
      0005D2 E0               [24] 1515 	movx	a,@dptr
      0005D3 FD               [12] 1516 	mov	r5,a
      0005D4 A3               [24] 1517 	inc	dptr
      0005D5 E0               [24] 1518 	movx	a,@dptr
      0005D6 FE               [12] 1519 	mov	r6,a
      0005D7 A3               [24] 1520 	inc	dptr
      0005D8 E0               [24] 1521 	movx	a,@dptr
      0005D9 FF               [12] 1522 	mov	r7,a
      0005DA 8D 82            [24] 1523 	mov	dpl,r5
      0005DC 8E 83            [24] 1524 	mov	dph,r6
      0005DE 8F F0            [24] 1525 	mov	b,r7
      0005E0                       1526 00104$:
      0005E0 22               [24] 1527 	ret
                                   1528 ;------------------------------------------------------------
                                   1529 ;Allocation info for local variables in function 'osal_memdup'
                                   1530 ;------------------------------------------------------------
                                   1531 ;len                       Allocated with name '_osal_memdup_PARM_2'
                                   1532 ;src                       Allocated with name '_osal_memdup_src_1_117'
                                   1533 ;pDst                      Allocated with name '_osal_memdup_pDst_1_118'
                                   1534 ;------------------------------------------------------------
                                   1535 ;	../osal/common/OSAL.c:213: void *osal_memdup( const void GENERIC *src, unsigned int len )
                                   1536 ;	-----------------------------------------
                                   1537 ;	 function osal_memdup
                                   1538 ;	-----------------------------------------
      0005E1                       1539 _osal_memdup:
      0005E1 AF F0            [24] 1540 	mov	r7,b
      0005E3 AE 83            [24] 1541 	mov	r6,dph
      0005E5 E5 82            [12] 1542 	mov	a,dpl
      0005E7 90 03 2A         [24] 1543 	mov	dptr,#_osal_memdup_src_1_117
      0005EA F0               [24] 1544 	movx	@dptr,a
      0005EB EE               [12] 1545 	mov	a,r6
      0005EC A3               [24] 1546 	inc	dptr
      0005ED F0               [24] 1547 	movx	@dptr,a
      0005EE EF               [12] 1548 	mov	a,r7
      0005EF A3               [24] 1549 	inc	dptr
      0005F0 F0               [24] 1550 	movx	@dptr,a
                                   1551 ;	../osal/common/OSAL.c:217: pDst = osal_mem_alloc( len );
      0005F1 90 03 28         [24] 1552 	mov	dptr,#_osal_memdup_PARM_2
      0005F4 E0               [24] 1553 	movx	a,@dptr
      0005F5 FE               [12] 1554 	mov	r6,a
      0005F6 A3               [24] 1555 	inc	dptr
      0005F7 E0               [24] 1556 	movx	a,@dptr
      0005F8 FF               [12] 1557 	mov	r7,a
      0005F9 8E 82            [24] 1558 	mov	dpl,r6
      0005FB 8F 83            [24] 1559 	mov	dph,r7
      0005FD 12 20 2A         [24] 1560 	lcall	_osal_mem_alloc
      000600 AD 82            [24] 1561 	mov	r5,dpl
      000602 AE 83            [24] 1562 	mov	r6,dph
      000604 AF F0            [24] 1563 	mov	r7,b
      000606 90 03 2D         [24] 1564 	mov	dptr,#_osal_memdup_pDst_1_118
      000609 ED               [12] 1565 	mov	a,r5
      00060A F0               [24] 1566 	movx	@dptr,a
      00060B EE               [12] 1567 	mov	a,r6
      00060C A3               [24] 1568 	inc	dptr
      00060D F0               [24] 1569 	movx	@dptr,a
      00060E EF               [12] 1570 	mov	a,r7
      00060F A3               [24] 1571 	inc	dptr
      000610 F0               [24] 1572 	movx	@dptr,a
                                   1573 ;	../osal/common/OSAL.c:218: if ( pDst )
      000611 ED               [12] 1574 	mov	a,r5
      000612 4E               [12] 1575 	orl	a,r6
      000613 70 03            [24] 1576 	jnz	00108$
      000615 02 06 52         [24] 1577 	ljmp	00102$
      000618                       1578 00108$:
                                   1579 ;	../osal/common/OSAL.c:220: VOID osal_memcpy( pDst, src, len );
      000618 90 03 2D         [24] 1580 	mov	dptr,#_osal_memdup_pDst_1_118
      00061B E0               [24] 1581 	movx	a,@dptr
      00061C FD               [12] 1582 	mov	r5,a
      00061D A3               [24] 1583 	inc	dptr
      00061E E0               [24] 1584 	movx	a,@dptr
      00061F FE               [12] 1585 	mov	r6,a
      000620 A3               [24] 1586 	inc	dptr
      000621 E0               [24] 1587 	movx	a,@dptr
      000622 FF               [12] 1588 	mov	r7,a
      000623 90 03 2A         [24] 1589 	mov	dptr,#_osal_memdup_src_1_117
      000626 E0               [24] 1590 	movx	a,@dptr
      000627 FA               [12] 1591 	mov	r2,a
      000628 A3               [24] 1592 	inc	dptr
      000629 E0               [24] 1593 	movx	a,@dptr
      00062A FB               [12] 1594 	mov	r3,a
      00062B A3               [24] 1595 	inc	dptr
      00062C E0               [24] 1596 	movx	a,@dptr
      00062D FC               [12] 1597 	mov	r4,a
      00062E 90 03 28         [24] 1598 	mov	dptr,#_osal_memdup_PARM_2
      000631 E0               [24] 1599 	movx	a,@dptr
      000632 F8               [12] 1600 	mov	r0,a
      000633 A3               [24] 1601 	inc	dptr
      000634 E0               [24] 1602 	movx	a,@dptr
      000635 F9               [12] 1603 	mov	r1,a
      000636 90 03 0C         [24] 1604 	mov	dptr,#_osal_memcpy_PARM_2
      000639 EA               [12] 1605 	mov	a,r2
      00063A F0               [24] 1606 	movx	@dptr,a
      00063B EB               [12] 1607 	mov	a,r3
      00063C A3               [24] 1608 	inc	dptr
      00063D F0               [24] 1609 	movx	@dptr,a
      00063E EC               [12] 1610 	mov	a,r4
      00063F A3               [24] 1611 	inc	dptr
      000640 F0               [24] 1612 	movx	@dptr,a
      000641 90 03 0F         [24] 1613 	mov	dptr,#_osal_memcpy_PARM_3
      000644 E8               [12] 1614 	mov	a,r0
      000645 F0               [24] 1615 	movx	@dptr,a
      000646 E9               [12] 1616 	mov	a,r1
      000647 A3               [24] 1617 	inc	dptr
      000648 F0               [24] 1618 	movx	@dptr,a
      000649 8D 82            [24] 1619 	mov	dpl,r5
      00064B 8E 83            [24] 1620 	mov	dph,r6
      00064D 8F F0            [24] 1621 	mov	b,r7
      00064F 12 04 76         [24] 1622 	lcall	_osal_memcpy
      000652                       1623 00102$:
                                   1624 ;	../osal/common/OSAL.c:223: return ( (void *)pDst );
      000652 90 03 2D         [24] 1625 	mov	dptr,#_osal_memdup_pDst_1_118
      000655 E0               [24] 1626 	movx	a,@dptr
      000656 FD               [12] 1627 	mov	r5,a
      000657 A3               [24] 1628 	inc	dptr
      000658 E0               [24] 1629 	movx	a,@dptr
      000659 FE               [12] 1630 	mov	r6,a
      00065A A3               [24] 1631 	inc	dptr
      00065B E0               [24] 1632 	movx	a,@dptr
      00065C FF               [12] 1633 	mov	r7,a
      00065D 8D 82            [24] 1634 	mov	dpl,r5
      00065F 8E 83            [24] 1635 	mov	dph,r6
      000661 8F F0            [24] 1636 	mov	b,r7
      000663                       1637 00103$:
      000663 22               [24] 1638 	ret
                                   1639 ;------------------------------------------------------------
                                   1640 ;Allocation info for local variables in function 'osal_memcmp'
                                   1641 ;------------------------------------------------------------
                                   1642 ;src2                      Allocated with name '_osal_memcmp_PARM_2'
                                   1643 ;len                       Allocated with name '_osal_memcmp_PARM_3'
                                   1644 ;src1                      Allocated with name '_osal_memcmp_src1_1_120'
                                   1645 ;pSrc1                     Allocated with name '_osal_memcmp_pSrc1_1_121'
                                   1646 ;pSrc2                     Allocated with name '_osal_memcmp_pSrc2_1_121'
                                   1647 ;sloc0                     Allocated with name '_osal_memcmp_sloc0_1_0'
                                   1648 ;------------------------------------------------------------
                                   1649 ;	../osal/common/OSAL.c:239: uint8 osal_memcmp( const void GENERIC *src1, const void GENERIC *src2, unsigned int len )
                                   1650 ;	-----------------------------------------
                                   1651 ;	 function osal_memcmp
                                   1652 ;	-----------------------------------------
      000664                       1653 _osal_memcmp:
      000664 AF F0            [24] 1654 	mov	r7,b
      000666 AE 83            [24] 1655 	mov	r6,dph
      000668 E5 82            [12] 1656 	mov	a,dpl
      00066A 90 03 35         [24] 1657 	mov	dptr,#_osal_memcmp_src1_1_120
      00066D F0               [24] 1658 	movx	@dptr,a
      00066E EE               [12] 1659 	mov	a,r6
      00066F A3               [24] 1660 	inc	dptr
      000670 F0               [24] 1661 	movx	@dptr,a
      000671 EF               [12] 1662 	mov	a,r7
      000672 A3               [24] 1663 	inc	dptr
      000673 F0               [24] 1664 	movx	@dptr,a
                                   1665 ;	../osal/common/OSAL.c:244: pSrc1 = src1;
      000674 90 03 35         [24] 1666 	mov	dptr,#_osal_memcmp_src1_1_120
      000677 E0               [24] 1667 	movx	a,@dptr
      000678 FD               [12] 1668 	mov	r5,a
      000679 A3               [24] 1669 	inc	dptr
      00067A E0               [24] 1670 	movx	a,@dptr
      00067B FE               [12] 1671 	mov	r6,a
      00067C A3               [24] 1672 	inc	dptr
      00067D E0               [24] 1673 	movx	a,@dptr
      00067E FF               [12] 1674 	mov	r7,a
      00067F 90 03 38         [24] 1675 	mov	dptr,#_osal_memcmp_pSrc1_1_121
      000682 ED               [12] 1676 	mov	a,r5
      000683 F0               [24] 1677 	movx	@dptr,a
      000684 EE               [12] 1678 	mov	a,r6
      000685 A3               [24] 1679 	inc	dptr
      000686 F0               [24] 1680 	movx	@dptr,a
      000687 EF               [12] 1681 	mov	a,r7
      000688 A3               [24] 1682 	inc	dptr
      000689 F0               [24] 1683 	movx	@dptr,a
                                   1684 ;	../osal/common/OSAL.c:245: pSrc2 = src2;
      00068A 90 03 30         [24] 1685 	mov	dptr,#_osal_memcmp_PARM_2
      00068D E0               [24] 1686 	movx	a,@dptr
      00068E FD               [12] 1687 	mov	r5,a
      00068F A3               [24] 1688 	inc	dptr
      000690 E0               [24] 1689 	movx	a,@dptr
      000691 FE               [12] 1690 	mov	r6,a
      000692 A3               [24] 1691 	inc	dptr
      000693 E0               [24] 1692 	movx	a,@dptr
      000694 FF               [12] 1693 	mov	r7,a
      000695 90 03 3B         [24] 1694 	mov	dptr,#_osal_memcmp_pSrc2_1_121
      000698 ED               [12] 1695 	mov	a,r5
      000699 F0               [24] 1696 	movx	@dptr,a
      00069A EE               [12] 1697 	mov	a,r6
      00069B A3               [24] 1698 	inc	dptr
      00069C F0               [24] 1699 	movx	@dptr,a
      00069D EF               [12] 1700 	mov	a,r7
      00069E A3               [24] 1701 	inc	dptr
      00069F F0               [24] 1702 	movx	@dptr,a
                                   1703 ;	../osal/common/OSAL.c:247: while ( len-- )
      0006A0 90 03 38         [24] 1704 	mov	dptr,#_osal_memcmp_pSrc1_1_121
      0006A3 E0               [24] 1705 	movx	a,@dptr
      0006A4 FD               [12] 1706 	mov	r5,a
      0006A5 A3               [24] 1707 	inc	dptr
      0006A6 E0               [24] 1708 	movx	a,@dptr
      0006A7 FE               [12] 1709 	mov	r6,a
      0006A8 A3               [24] 1710 	inc	dptr
      0006A9 E0               [24] 1711 	movx	a,@dptr
      0006AA FF               [12] 1712 	mov	r7,a
      0006AB 90 03 3B         [24] 1713 	mov	dptr,#_osal_memcmp_pSrc2_1_121
      0006AE E0               [24] 1714 	movx	a,@dptr
      0006AF FA               [12] 1715 	mov	r2,a
      0006B0 A3               [24] 1716 	inc	dptr
      0006B1 E0               [24] 1717 	movx	a,@dptr
      0006B2 FB               [12] 1718 	mov	r3,a
      0006B3 A3               [24] 1719 	inc	dptr
      0006B4 E0               [24] 1720 	movx	a,@dptr
      0006B5 FC               [12] 1721 	mov	r4,a
      0006B6 90 03 33         [24] 1722 	mov	dptr,#_osal_memcmp_PARM_3
      0006B9 E0               [24] 1723 	movx	a,@dptr
      0006BA F5 3A            [12] 1724 	mov	_osal_memcmp_sloc0_1_0,a
      0006BC A3               [24] 1725 	inc	dptr
      0006BD E0               [24] 1726 	movx	a,@dptr
      0006BE F5 3B            [12] 1727 	mov	(_osal_memcmp_sloc0_1_0 + 1),a
      0006C0                       1728 00103$:
      0006C0 A8 3A            [24] 1729 	mov	r0,_osal_memcmp_sloc0_1_0
      0006C2 A9 3B            [24] 1730 	mov	r1,(_osal_memcmp_sloc0_1_0 + 1)
      0006C4 15 3A            [12] 1731 	dec	_osal_memcmp_sloc0_1_0
      0006C6 74 FF            [12] 1732 	mov	a,#0xFF
      0006C8 B5 3A 02         [24] 1733 	cjne	a,_osal_memcmp_sloc0_1_0,00117$
      0006CB 15 3B            [12] 1734 	dec	(_osal_memcmp_sloc0_1_0 + 1)
      0006CD                       1735 00117$:
      0006CD E8               [12] 1736 	mov	a,r0
      0006CE 49               [12] 1737 	orl	a,r1
      0006CF 70 03            [24] 1738 	jnz	00118$
      0006D1 02 06 FF         [24] 1739 	ljmp	00105$
      0006D4                       1740 00118$:
                                   1741 ;	../osal/common/OSAL.c:249: if( *pSrc1++ != *pSrc2++ )
      0006D4 8D 82            [24] 1742 	mov	dpl,r5
      0006D6 8E 83            [24] 1743 	mov	dph,r6
      0006D8 8F F0            [24] 1744 	mov	b,r7
      0006DA 12 5B 6D         [24] 1745 	lcall	__gptrget
      0006DD F9               [12] 1746 	mov	r1,a
      0006DE A3               [24] 1747 	inc	dptr
      0006DF AD 82            [24] 1748 	mov	r5,dpl
      0006E1 AE 83            [24] 1749 	mov	r6,dph
      0006E3 8A 82            [24] 1750 	mov	dpl,r2
      0006E5 8B 83            [24] 1751 	mov	dph,r3
      0006E7 8C F0            [24] 1752 	mov	b,r4
      0006E9 12 5B 6D         [24] 1753 	lcall	__gptrget
      0006EC F8               [12] 1754 	mov	r0,a
      0006ED A3               [24] 1755 	inc	dptr
      0006EE AA 82            [24] 1756 	mov	r2,dpl
      0006F0 AB 83            [24] 1757 	mov	r3,dph
      0006F2 E9               [12] 1758 	mov	a,r1
      0006F3 B5 00 03         [24] 1759 	cjne	a,ar0,00119$
      0006F6 02 06 C0         [24] 1760 	ljmp	00103$
      0006F9                       1761 00119$:
                                   1762 ;	../osal/common/OSAL.c:250: return FALSE;
      0006F9 75 82 00         [24] 1763 	mov	dpl,#0x00
      0006FC 02 07 02         [24] 1764 	ljmp	00106$
      0006FF                       1765 00105$:
                                   1766 ;	../osal/common/OSAL.c:252: return TRUE;
      0006FF 75 82 01         [24] 1767 	mov	dpl,#0x01
      000702                       1768 00106$:
      000702 22               [24] 1769 	ret
                                   1770 ;------------------------------------------------------------
                                   1771 ;Allocation info for local variables in function 'osal_memset'
                                   1772 ;------------------------------------------------------------
                                   1773 ;value                     Allocated with name '_osal_memset_PARM_2'
                                   1774 ;len                       Allocated with name '_osal_memset_PARM_3'
                                   1775 ;dest                      Allocated with name '_osal_memset_dest_1_123'
                                   1776 ;------------------------------------------------------------
                                   1777 ;	../osal/common/OSAL.c:269: void *osal_memset( void *dest, uint8 value, int len )
                                   1778 ;	-----------------------------------------
                                   1779 ;	 function osal_memset
                                   1780 ;	-----------------------------------------
      000703                       1781 _osal_memset:
      000703 AF F0            [24] 1782 	mov	r7,b
      000705 AE 83            [24] 1783 	mov	r6,dph
      000707 E5 82            [12] 1784 	mov	a,dpl
      000709 90 03 41         [24] 1785 	mov	dptr,#_osal_memset_dest_1_123
      00070C F0               [24] 1786 	movx	@dptr,a
      00070D EE               [12] 1787 	mov	a,r6
      00070E A3               [24] 1788 	inc	dptr
      00070F F0               [24] 1789 	movx	@dptr,a
      000710 EF               [12] 1790 	mov	a,r7
      000711 A3               [24] 1791 	inc	dptr
      000712 F0               [24] 1792 	movx	@dptr,a
                                   1793 ;	../osal/common/OSAL.c:271: return memset( dest, value, len );
      000713 90 03 41         [24] 1794 	mov	dptr,#_osal_memset_dest_1_123
      000716 E0               [24] 1795 	movx	a,@dptr
      000717 FD               [12] 1796 	mov	r5,a
      000718 A3               [24] 1797 	inc	dptr
      000719 E0               [24] 1798 	movx	a,@dptr
      00071A FE               [12] 1799 	mov	r6,a
      00071B A3               [24] 1800 	inc	dptr
      00071C E0               [24] 1801 	movx	a,@dptr
      00071D FF               [12] 1802 	mov	r7,a
      00071E 90 03 3E         [24] 1803 	mov	dptr,#_osal_memset_PARM_2
      000721 E0               [24] 1804 	movx	a,@dptr
      000722 FC               [12] 1805 	mov	r4,a
      000723 90 03 3F         [24] 1806 	mov	dptr,#_osal_memset_PARM_3
      000726 E0               [24] 1807 	movx	a,@dptr
      000727 FA               [12] 1808 	mov	r2,a
      000728 A3               [24] 1809 	inc	dptr
      000729 E0               [24] 1810 	movx	a,@dptr
      00072A FB               [12] 1811 	mov	r3,a
      00072B 90 12 14         [24] 1812 	mov	dptr,#_memset_PARM_2
      00072E EC               [12] 1813 	mov	a,r4
      00072F F0               [24] 1814 	movx	@dptr,a
      000730 90 12 15         [24] 1815 	mov	dptr,#_memset_PARM_3
      000733 EA               [12] 1816 	mov	a,r2
      000734 F0               [24] 1817 	movx	@dptr,a
      000735 EB               [12] 1818 	mov	a,r3
      000736 A3               [24] 1819 	inc	dptr
      000737 F0               [24] 1820 	movx	@dptr,a
      000738 8D 82            [24] 1821 	mov	dpl,r5
      00073A 8E 83            [24] 1822 	mov	dph,r6
      00073C 8F F0            [24] 1823 	mov	b,r7
      00073E 12 57 9A         [24] 1824 	lcall	_memset
      000741 AD 82            [24] 1825 	mov	r5,dpl
      000743 AE 83            [24] 1826 	mov	r6,dph
      000745 AF F0            [24] 1827 	mov	r7,b
      000747 8D 82            [24] 1828 	mov	dpl,r5
      000749 8E 83            [24] 1829 	mov	dph,r6
      00074B 8F F0            [24] 1830 	mov	b,r7
      00074D                       1831 00101$:
      00074D 22               [24] 1832 	ret
                                   1833 ;------------------------------------------------------------
                                   1834 ;Allocation info for local variables in function 'osal_build_uint16'
                                   1835 ;------------------------------------------------------------
                                   1836 ;swapped                   Allocated with name '_osal_build_uint16_swapped_1_125'
                                   1837 ;------------------------------------------------------------
                                   1838 ;	../osal/common/OSAL.c:285: uint16 osal_build_uint16( uint8 *swapped )
                                   1839 ;	-----------------------------------------
                                   1840 ;	 function osal_build_uint16
                                   1841 ;	-----------------------------------------
      00074E                       1842 _osal_build_uint16:
      00074E AF F0            [24] 1843 	mov	r7,b
      000750 AE 83            [24] 1844 	mov	r6,dph
      000752 E5 82            [12] 1845 	mov	a,dpl
      000754 90 03 44         [24] 1846 	mov	dptr,#_osal_build_uint16_swapped_1_125
      000757 F0               [24] 1847 	movx	@dptr,a
      000758 EE               [12] 1848 	mov	a,r6
      000759 A3               [24] 1849 	inc	dptr
      00075A F0               [24] 1850 	movx	@dptr,a
      00075B EF               [12] 1851 	mov	a,r7
      00075C A3               [24] 1852 	inc	dptr
      00075D F0               [24] 1853 	movx	@dptr,a
                                   1854 ;	../osal/common/OSAL.c:287: return ( BUILD_UINT16( swapped[0], swapped[1] ) );
      00075E 90 03 44         [24] 1855 	mov	dptr,#_osal_build_uint16_swapped_1_125
      000761 E0               [24] 1856 	movx	a,@dptr
      000762 FD               [12] 1857 	mov	r5,a
      000763 A3               [24] 1858 	inc	dptr
      000764 E0               [24] 1859 	movx	a,@dptr
      000765 FE               [12] 1860 	mov	r6,a
      000766 A3               [24] 1861 	inc	dptr
      000767 E0               [24] 1862 	movx	a,@dptr
      000768 FF               [12] 1863 	mov	r7,a
      000769 8D 82            [24] 1864 	mov	dpl,r5
      00076B 8E 83            [24] 1865 	mov	dph,r6
      00076D 8F F0            [24] 1866 	mov	b,r7
      00076F 12 5B 6D         [24] 1867 	lcall	__gptrget
      000772 FC               [12] 1868 	mov	r4,a
      000773 7B 00            [12] 1869 	mov	r3,#0x00
      000775 0D               [12] 1870 	inc	r5
      000776 BD 00 01         [24] 1871 	cjne	r5,#0x00,00103$
      000779 0E               [12] 1872 	inc	r6
      00077A                       1873 00103$:
      00077A 8D 82            [24] 1874 	mov	dpl,r5
      00077C 8E 83            [24] 1875 	mov	dph,r6
      00077E 8F F0            [24] 1876 	mov	b,r7
      000780 12 5B 6D         [24] 1877 	lcall	__gptrget
      000783 FD               [12] 1878 	mov	r5,a
      000784 7F 00            [12] 1879 	mov	r7,#0x00
      000786 8D 07            [24] 1880 	mov	ar7,r5
      000788 7D 00            [12] 1881 	mov	r5,#0x00
      00078A ED               [12] 1882 	mov	a,r5
      00078B 2C               [12] 1883 	add	a,r4
      00078C FC               [12] 1884 	mov	r4,a
      00078D EF               [12] 1885 	mov	a,r7
      00078E 3B               [12] 1886 	addc	a,r3
      00078F FB               [12] 1887 	mov	r3,a
      000790 8C 82            [24] 1888 	mov	dpl,r4
      000792 8B 83            [24] 1889 	mov	dph,r3
      000794                       1890 00101$:
      000794 22               [24] 1891 	ret
                                   1892 ;------------------------------------------------------------
                                   1893 ;Allocation info for local variables in function 'osal_build_uint32'
                                   1894 ;------------------------------------------------------------
                                   1895 ;len                       Allocated with name '_osal_build_uint32_PARM_2'
                                   1896 ;swapped                   Allocated with name '_osal_build_uint32_swapped_1_127'
                                   1897 ;sloc0                     Allocated with name '_osal_build_uint32_sloc0_1_0'
                                   1898 ;------------------------------------------------------------
                                   1899 ;	../osal/common/OSAL.c:302: uint32 osal_build_uint32( uint8 *swapped, uint8 len )
                                   1900 ;	-----------------------------------------
                                   1901 ;	 function osal_build_uint32
                                   1902 ;	-----------------------------------------
      000795                       1903 _osal_build_uint32:
      000795 AF F0            [24] 1904 	mov	r7,b
      000797 AE 83            [24] 1905 	mov	r6,dph
      000799 E5 82            [12] 1906 	mov	a,dpl
      00079B 90 03 48         [24] 1907 	mov	dptr,#_osal_build_uint32_swapped_1_127
      00079E F0               [24] 1908 	movx	@dptr,a
      00079F EE               [12] 1909 	mov	a,r6
      0007A0 A3               [24] 1910 	inc	dptr
      0007A1 F0               [24] 1911 	movx	@dptr,a
      0007A2 EF               [12] 1912 	mov	a,r7
      0007A3 A3               [24] 1913 	inc	dptr
      0007A4 F0               [24] 1914 	movx	@dptr,a
                                   1915 ;	../osal/common/OSAL.c:304: if ( len == 2 )
      0007A5 90 03 47         [24] 1916 	mov	dptr,#_osal_build_uint32_PARM_2
      0007A8 E0               [24] 1917 	movx	a,@dptr
      0007A9 FF               [12] 1918 	mov	r7,a
      0007AA BF 02 02         [24] 1919 	cjne	r7,#0x02,00121$
      0007AD 80 03            [24] 1920 	sjmp	00122$
      0007AF                       1921 00121$:
      0007AF 02 08 04         [24] 1922 	ljmp	00108$
      0007B2                       1923 00122$:
                                   1924 ;	../osal/common/OSAL.c:305: return ( BUILD_UINT32( swapped[0], swapped[1], 0L, 0L ) );
      0007B2 90 03 48         [24] 1925 	mov	dptr,#_osal_build_uint32_swapped_1_127
      0007B5 E0               [24] 1926 	movx	a,@dptr
      0007B6 FD               [12] 1927 	mov	r5,a
      0007B7 A3               [24] 1928 	inc	dptr
      0007B8 E0               [24] 1929 	movx	a,@dptr
      0007B9 FE               [12] 1930 	mov	r6,a
      0007BA A3               [24] 1931 	inc	dptr
      0007BB E0               [24] 1932 	movx	a,@dptr
      0007BC FF               [12] 1933 	mov	r7,a
      0007BD 8D 82            [24] 1934 	mov	dpl,r5
      0007BF 8E 83            [24] 1935 	mov	dph,r6
      0007C1 8F F0            [24] 1936 	mov	b,r7
      0007C3 12 5B 6D         [24] 1937 	lcall	__gptrget
      0007C6 FC               [12] 1938 	mov	r4,a
      0007C7 8C 01            [24] 1939 	mov	ar1,r4
      0007C9 7A 00            [12] 1940 	mov	r2,#0x00
      0007CB 7B 00            [12] 1941 	mov	r3,#0x00
      0007CD 7C 00            [12] 1942 	mov	r4,#0x00
      0007CF 0D               [12] 1943 	inc	r5
      0007D0 BD 00 01         [24] 1944 	cjne	r5,#0x00,00123$
      0007D3 0E               [12] 1945 	inc	r6
      0007D4                       1946 00123$:
      0007D4 8D 82            [24] 1947 	mov	dpl,r5
      0007D6 8E 83            [24] 1948 	mov	dph,r6
      0007D8 8F F0            [24] 1949 	mov	b,r7
      0007DA 12 5B 6D         [24] 1950 	lcall	__gptrget
      0007DD FD               [12] 1951 	mov	r5,a
      0007DE 8D 00            [24] 1952 	mov	ar0,r5
      0007E0 7D 00            [12] 1953 	mov	r5,#0x00
      0007E2 7E 00            [12] 1954 	mov	r6,#0x00
      0007E4 7F 00            [12] 1955 	mov	r7,#0x00
      0007E6 8E 07            [24] 1956 	mov	ar7,r6
      0007E8 8D 06            [24] 1957 	mov	ar6,r5
      0007EA 88 05            [24] 1958 	mov	ar5,r0
      0007EC 78 00            [12] 1959 	mov	r0,#0x00
      0007EE E8               [12] 1960 	mov	a,r0
      0007EF 29               [12] 1961 	add	a,r1
      0007F0 F9               [12] 1962 	mov	r1,a
      0007F1 ED               [12] 1963 	mov	a,r5
      0007F2 3A               [12] 1964 	addc	a,r2
      0007F3 FA               [12] 1965 	mov	r2,a
      0007F4 EE               [12] 1966 	mov	a,r6
      0007F5 3B               [12] 1967 	addc	a,r3
      0007F6 FB               [12] 1968 	mov	r3,a
      0007F7 EF               [12] 1969 	mov	a,r7
      0007F8 3C               [12] 1970 	addc	a,r4
      0007F9 FC               [12] 1971 	mov	r4,a
      0007FA 89 82            [24] 1972 	mov	dpl,r1
      0007FC 8A 83            [24] 1973 	mov	dph,r2
      0007FE 8B F0            [24] 1974 	mov	b,r3
      000800 EC               [12] 1975 	mov	a,r4
      000801 02 09 8A         [24] 1976 	ljmp	00110$
      000804                       1977 00108$:
                                   1978 ;	../osal/common/OSAL.c:306: else if ( len == 3 )
      000804 90 03 47         [24] 1979 	mov	dptr,#_osal_build_uint32_PARM_2
      000807 E0               [24] 1980 	movx	a,@dptr
      000808 FF               [12] 1981 	mov	r7,a
      000809 BF 03 02         [24] 1982 	cjne	r7,#0x03,00124$
      00080C 80 03            [24] 1983 	sjmp	00125$
      00080E                       1984 00124$:
      00080E 02 08 9B         [24] 1985 	ljmp	00105$
      000811                       1986 00125$:
                                   1987 ;	../osal/common/OSAL.c:307: return ( BUILD_UINT32( swapped[0], swapped[1], swapped[2], 0L ) );
      000811 90 03 48         [24] 1988 	mov	dptr,#_osal_build_uint32_swapped_1_127
      000814 E0               [24] 1989 	movx	a,@dptr
      000815 FD               [12] 1990 	mov	r5,a
      000816 A3               [24] 1991 	inc	dptr
      000817 E0               [24] 1992 	movx	a,@dptr
      000818 FE               [12] 1993 	mov	r6,a
      000819 A3               [24] 1994 	inc	dptr
      00081A E0               [24] 1995 	movx	a,@dptr
      00081B FF               [12] 1996 	mov	r7,a
      00081C 8D 82            [24] 1997 	mov	dpl,r5
      00081E 8E 83            [24] 1998 	mov	dph,r6
      000820 8F F0            [24] 1999 	mov	b,r7
      000822 12 5B 6D         [24] 2000 	lcall	__gptrget
      000825 FC               [12] 2001 	mov	r4,a
      000826 8C 3A            [24] 2002 	mov	_osal_build_uint32_sloc0_1_0,r4
      000828 75 3B 00         [24] 2003 	mov	(_osal_build_uint32_sloc0_1_0 + 1),#0x00
      00082B 75 3C 00         [24] 2004 	mov	(_osal_build_uint32_sloc0_1_0 + 2),#0x00
      00082E 75 3D 00         [24] 2005 	mov	(_osal_build_uint32_sloc0_1_0 + 3),#0x00
      000831 74 01            [12] 2006 	mov	a,#0x01
      000833 2D               [12] 2007 	add	a,r5
      000834 F8               [12] 2008 	mov	r0,a
      000835 74 00            [12] 2009 	mov	a,#0x00
      000837 3E               [12] 2010 	addc	a,r6
      000838 FB               [12] 2011 	mov	r3,a
      000839 8F 04            [24] 2012 	mov	ar4,r7
      00083B 88 82            [24] 2013 	mov	dpl,r0
      00083D 8B 83            [24] 2014 	mov	dph,r3
      00083F 8C F0            [24] 2015 	mov	b,r4
      000841 12 5B 6D         [24] 2016 	lcall	__gptrget
      000844 F8               [12] 2017 	mov	r0,a
      000845 7C 00            [12] 2018 	mov	r4,#0x00
      000847 7B 00            [12] 2019 	mov	r3,#0x00
      000849 7A 00            [12] 2020 	mov	r2,#0x00
      00084B 8B 02            [24] 2021 	mov	ar2,r3
      00084D 8C 03            [24] 2022 	mov	ar3,r4
      00084F 88 04            [24] 2023 	mov	ar4,r0
      000851 78 00            [12] 2024 	mov	r0,#0x00
      000853 E8               [12] 2025 	mov	a,r0
      000854 25 3A            [12] 2026 	add	a,_osal_build_uint32_sloc0_1_0
      000856 F8               [12] 2027 	mov	r0,a
      000857 EC               [12] 2028 	mov	a,r4
      000858 35 3B            [12] 2029 	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
      00085A FC               [12] 2030 	mov	r4,a
      00085B EB               [12] 2031 	mov	a,r3
      00085C 35 3C            [12] 2032 	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
      00085E FB               [12] 2033 	mov	r3,a
      00085F EA               [12] 2034 	mov	a,r2
      000860 35 3D            [12] 2035 	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
      000862 FA               [12] 2036 	mov	r2,a
      000863 74 02            [12] 2037 	mov	a,#0x02
      000865 2D               [12] 2038 	add	a,r5
      000866 FD               [12] 2039 	mov	r5,a
      000867 74 00            [12] 2040 	mov	a,#0x00
      000869 3E               [12] 2041 	addc	a,r6
      00086A FE               [12] 2042 	mov	r6,a
      00086B 8D 82            [24] 2043 	mov	dpl,r5
      00086D 8E 83            [24] 2044 	mov	dph,r6
      00086F 8F F0            [24] 2045 	mov	b,r7
      000871 12 5B 6D         [24] 2046 	lcall	__gptrget
      000874 FD               [12] 2047 	mov	r5,a
      000875 8D 01            [24] 2048 	mov	ar1,r5
      000877 7D 00            [12] 2049 	mov	r5,#0x00
      000879 7E 00            [12] 2050 	mov	r6,#0x00
      00087B 7F 00            [12] 2051 	mov	r7,#0x00
      00087D 8D 07            [24] 2052 	mov	ar7,r5
      00087F 89 06            [24] 2053 	mov	ar6,r1
      000881 7D 00            [12] 2054 	mov	r5,#0x00
      000883 79 00            [12] 2055 	mov	r1,#0x00
      000885 E9               [12] 2056 	mov	a,r1
      000886 28               [12] 2057 	add	a,r0
      000887 F8               [12] 2058 	mov	r0,a
      000888 ED               [12] 2059 	mov	a,r5
      000889 3C               [12] 2060 	addc	a,r4
      00088A FC               [12] 2061 	mov	r4,a
      00088B EE               [12] 2062 	mov	a,r6
      00088C 3B               [12] 2063 	addc	a,r3
      00088D FB               [12] 2064 	mov	r3,a
      00088E EF               [12] 2065 	mov	a,r7
      00088F 3A               [12] 2066 	addc	a,r2
      000890 FA               [12] 2067 	mov	r2,a
      000891 88 82            [24] 2068 	mov	dpl,r0
      000893 8C 83            [24] 2069 	mov	dph,r4
      000895 8B F0            [24] 2070 	mov	b,r3
      000897 EA               [12] 2071 	mov	a,r2
      000898 02 09 8A         [24] 2072 	ljmp	00110$
      00089B                       2073 00105$:
                                   2074 ;	../osal/common/OSAL.c:308: else if ( len == 4 )
      00089B 90 03 47         [24] 2075 	mov	dptr,#_osal_build_uint32_PARM_2
      00089E E0               [24] 2076 	movx	a,@dptr
      00089F FF               [12] 2077 	mov	r7,a
      0008A0 BF 04 02         [24] 2078 	cjne	r7,#0x04,00126$
      0008A3 80 03            [24] 2079 	sjmp	00127$
      0008A5                       2080 00126$:
      0008A5 02 09 68         [24] 2081 	ljmp	00102$
      0008A8                       2082 00127$:
                                   2083 ;	../osal/common/OSAL.c:309: return ( BUILD_UINT32( swapped[0], swapped[1], swapped[2], swapped[3] ) );
      0008A8 90 03 48         [24] 2084 	mov	dptr,#_osal_build_uint32_swapped_1_127
      0008AB E0               [24] 2085 	movx	a,@dptr
      0008AC FD               [12] 2086 	mov	r5,a
      0008AD A3               [24] 2087 	inc	dptr
      0008AE E0               [24] 2088 	movx	a,@dptr
      0008AF FE               [12] 2089 	mov	r6,a
      0008B0 A3               [24] 2090 	inc	dptr
      0008B1 E0               [24] 2091 	movx	a,@dptr
      0008B2 FF               [12] 2092 	mov	r7,a
      0008B3 8D 82            [24] 2093 	mov	dpl,r5
      0008B5 8E 83            [24] 2094 	mov	dph,r6
      0008B7 8F F0            [24] 2095 	mov	b,r7
      0008B9 12 5B 6D         [24] 2096 	lcall	__gptrget
      0008BC FC               [12] 2097 	mov	r4,a
      0008BD 8C 3A            [24] 2098 	mov	_osal_build_uint32_sloc0_1_0,r4
      0008BF 75 3B 00         [24] 2099 	mov	(_osal_build_uint32_sloc0_1_0 + 1),#0x00
      0008C2 75 3C 00         [24] 2100 	mov	(_osal_build_uint32_sloc0_1_0 + 2),#0x00
      0008C5 75 3D 00         [24] 2101 	mov	(_osal_build_uint32_sloc0_1_0 + 3),#0x00
      0008C8 74 01            [12] 2102 	mov	a,#0x01
      0008CA 2D               [12] 2103 	add	a,r5
      0008CB F8               [12] 2104 	mov	r0,a
      0008CC 74 00            [12] 2105 	mov	a,#0x00
      0008CE 3E               [12] 2106 	addc	a,r6
      0008CF FB               [12] 2107 	mov	r3,a
      0008D0 8F 04            [24] 2108 	mov	ar4,r7
      0008D2 88 82            [24] 2109 	mov	dpl,r0
      0008D4 8B 83            [24] 2110 	mov	dph,r3
      0008D6 8C F0            [24] 2111 	mov	b,r4
      0008D8 12 5B 6D         [24] 2112 	lcall	__gptrget
      0008DB F8               [12] 2113 	mov	r0,a
      0008DC 7C 00            [12] 2114 	mov	r4,#0x00
      0008DE 7B 00            [12] 2115 	mov	r3,#0x00
      0008E0 7A 00            [12] 2116 	mov	r2,#0x00
      0008E2 8B 02            [24] 2117 	mov	ar2,r3
      0008E4 8C 03            [24] 2118 	mov	ar3,r4
      0008E6 88 04            [24] 2119 	mov	ar4,r0
      0008E8 78 00            [12] 2120 	mov	r0,#0x00
      0008EA E8               [12] 2121 	mov	a,r0
      0008EB 25 3A            [12] 2122 	add	a,_osal_build_uint32_sloc0_1_0
      0008ED F5 3A            [12] 2123 	mov	_osal_build_uint32_sloc0_1_0,a
      0008EF EC               [12] 2124 	mov	a,r4
      0008F0 35 3B            [12] 2125 	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
      0008F2 F5 3B            [12] 2126 	mov	(_osal_build_uint32_sloc0_1_0 + 1),a
      0008F4 EB               [12] 2127 	mov	a,r3
      0008F5 35 3C            [12] 2128 	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
      0008F7 F5 3C            [12] 2129 	mov	(_osal_build_uint32_sloc0_1_0 + 2),a
      0008F9 EA               [12] 2130 	mov	a,r2
      0008FA 35 3D            [12] 2131 	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
      0008FC F5 3D            [12] 2132 	mov	(_osal_build_uint32_sloc0_1_0 + 3),a
      0008FE 74 02            [12] 2133 	mov	a,#0x02
      000900 2D               [12] 2134 	add	a,r5
      000901 F9               [12] 2135 	mov	r1,a
      000902 74 00            [12] 2136 	mov	a,#0x00
      000904 3E               [12] 2137 	addc	a,r6
      000905 FB               [12] 2138 	mov	r3,a
      000906 8F 04            [24] 2139 	mov	ar4,r7
      000908 89 82            [24] 2140 	mov	dpl,r1
      00090A 8B 83            [24] 2141 	mov	dph,r3
      00090C 8C F0            [24] 2142 	mov	b,r4
      00090E 12 5B 6D         [24] 2143 	lcall	__gptrget
      000911 F9               [12] 2144 	mov	r1,a
      000912 7C 00            [12] 2145 	mov	r4,#0x00
      000914 7B 00            [12] 2146 	mov	r3,#0x00
      000916 7A 00            [12] 2147 	mov	r2,#0x00
      000918 8C 02            [24] 2148 	mov	ar2,r4
      00091A 89 03            [24] 2149 	mov	ar3,r1
      00091C 7C 00            [12] 2150 	mov	r4,#0x00
      00091E 79 00            [12] 2151 	mov	r1,#0x00
      000920 E9               [12] 2152 	mov	a,r1
      000921 25 3A            [12] 2153 	add	a,_osal_build_uint32_sloc0_1_0
      000923 F9               [12] 2154 	mov	r1,a
      000924 EC               [12] 2155 	mov	a,r4
      000925 35 3B            [12] 2156 	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
      000927 FC               [12] 2157 	mov	r4,a
      000928 EB               [12] 2158 	mov	a,r3
      000929 35 3C            [12] 2159 	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
      00092B FB               [12] 2160 	mov	r3,a
      00092C EA               [12] 2161 	mov	a,r2
      00092D 35 3D            [12] 2162 	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
      00092F FA               [12] 2163 	mov	r2,a
      000930 74 03            [12] 2164 	mov	a,#0x03
      000932 2D               [12] 2165 	add	a,r5
      000933 FD               [12] 2166 	mov	r5,a
      000934 74 00            [12] 2167 	mov	a,#0x00
      000936 3E               [12] 2168 	addc	a,r6
      000937 FE               [12] 2169 	mov	r6,a
      000938 8D 82            [24] 2170 	mov	dpl,r5
      00093A 8E 83            [24] 2171 	mov	dph,r6
      00093C 8F F0            [24] 2172 	mov	b,r7
      00093E 12 5B 6D         [24] 2173 	lcall	__gptrget
      000941 FD               [12] 2174 	mov	r5,a
      000942 8D 00            [24] 2175 	mov	ar0,r5
      000944 7D 00            [12] 2176 	mov	r5,#0x00
      000946 7E 00            [12] 2177 	mov	r6,#0x00
      000948 7F 00            [12] 2178 	mov	r7,#0x00
      00094A 88 07            [24] 2179 	mov	ar7,r0
      00094C 78 00            [12] 2180 	mov	r0,#0x00
      00094E 7D 00            [12] 2181 	mov	r5,#0x00
      000950 7E 00            [12] 2182 	mov	r6,#0x00
      000952 E8               [12] 2183 	mov	a,r0
      000953 29               [12] 2184 	add	a,r1
      000954 F9               [12] 2185 	mov	r1,a
      000955 ED               [12] 2186 	mov	a,r5
      000956 3C               [12] 2187 	addc	a,r4
      000957 FC               [12] 2188 	mov	r4,a
      000958 EE               [12] 2189 	mov	a,r6
      000959 3B               [12] 2190 	addc	a,r3
      00095A FB               [12] 2191 	mov	r3,a
      00095B EF               [12] 2192 	mov	a,r7
      00095C 3A               [12] 2193 	addc	a,r2
      00095D FA               [12] 2194 	mov	r2,a
      00095E 89 82            [24] 2195 	mov	dpl,r1
      000960 8C 83            [24] 2196 	mov	dph,r4
      000962 8B F0            [24] 2197 	mov	b,r3
      000964 EA               [12] 2198 	mov	a,r2
      000965 02 09 8A         [24] 2199 	ljmp	00110$
      000968                       2200 00102$:
                                   2201 ;	../osal/common/OSAL.c:311: return ( (uint32)swapped[0] );
      000968 90 03 48         [24] 2202 	mov	dptr,#_osal_build_uint32_swapped_1_127
      00096B E0               [24] 2203 	movx	a,@dptr
      00096C FD               [12] 2204 	mov	r5,a
      00096D A3               [24] 2205 	inc	dptr
      00096E E0               [24] 2206 	movx	a,@dptr
      00096F FE               [12] 2207 	mov	r6,a
      000970 A3               [24] 2208 	inc	dptr
      000971 E0               [24] 2209 	movx	a,@dptr
      000972 FF               [12] 2210 	mov	r7,a
      000973 8D 82            [24] 2211 	mov	dpl,r5
      000975 8E 83            [24] 2212 	mov	dph,r6
      000977 8F F0            [24] 2213 	mov	b,r7
      000979 12 5B 6D         [24] 2214 	lcall	__gptrget
      00097C FD               [12] 2215 	mov	r5,a
      00097D 7F 00            [12] 2216 	mov	r7,#0x00
      00097F 7E 00            [12] 2217 	mov	r6,#0x00
      000981 7C 00            [12] 2218 	mov	r4,#0x00
      000983 8D 82            [24] 2219 	mov	dpl,r5
      000985 8F 83            [24] 2220 	mov	dph,r7
      000987 8E F0            [24] 2221 	mov	b,r6
      000989 EC               [12] 2222 	mov	a,r4
      00098A                       2223 00110$:
      00098A 22               [24] 2224 	ret
                                   2225 ;------------------------------------------------------------
                                   2226 ;Allocation info for local variables in function '_ltoa'
                                   2227 ;------------------------------------------------------------
                                   2228 ;buf                       Allocated with name '__ltoa_PARM_2'
                                   2229 ;radix                     Allocated with name '__ltoa_PARM_3'
                                   2230 ;l                         Allocated with name '__ltoa_l_1_129'
                                   2231 ;tmp1                      Allocated with name '__ltoa_tmp1_1_130'
                                   2232 ;tmp2                      Allocated with name '__ltoa_tmp2_1_130'
                                   2233 ;tmp3                      Allocated with name '__ltoa_tmp3_1_130'
                                   2234 ;num1                      Allocated with name '__ltoa_num1_1_130'
                                   2235 ;num2                      Allocated with name '__ltoa_num2_1_130'
                                   2236 ;num3                      Allocated with name '__ltoa_num3_1_130'
                                   2237 ;i                         Allocated with name '__ltoa_i_1_130'
                                   2238 ;------------------------------------------------------------
                                   2239 ;	../osal/common/OSAL.c:328: unsigned char * _ltoa(unsigned long l, unsigned char *buf, unsigned char radix)
                                   2240 ;	-----------------------------------------
                                   2241 ;	 function _ltoa
                                   2242 ;	-----------------------------------------
      00098B                       2243 __ltoa:
      00098B AF 82            [24] 2244 	mov	r7,dpl
      00098D AE 83            [24] 2245 	mov	r6,dph
      00098F AD F0            [24] 2246 	mov	r5,b
      000991 FC               [12] 2247 	mov	r4,a
      000992 90 03 4F         [24] 2248 	mov	dptr,#__ltoa_l_1_129
      000995 EF               [12] 2249 	mov	a,r7
      000996 F0               [24] 2250 	movx	@dptr,a
      000997 EE               [12] 2251 	mov	a,r6
      000998 A3               [24] 2252 	inc	dptr
      000999 F0               [24] 2253 	movx	@dptr,a
      00099A ED               [12] 2254 	mov	a,r5
      00099B A3               [24] 2255 	inc	dptr
      00099C F0               [24] 2256 	movx	@dptr,a
      00099D EC               [12] 2257 	mov	a,r4
      00099E A3               [24] 2258 	inc	dptr
      00099F F0               [24] 2259 	movx	@dptr,a
                                   2260 ;	../osal/common/OSAL.c:332: unsigned char tmp1[10] = "", tmp2[10] = "", tmp3[10] = "";
      0009A0 90 03 53         [24] 2261 	mov	dptr,#__ltoa_tmp1_1_130
      0009A3 74 00            [12] 2262 	mov	a,#0x00
      0009A5 F0               [24] 2263 	movx	@dptr,a
      0009A6 90 03 5D         [24] 2264 	mov	dptr,#__ltoa_tmp2_1_130
      0009A9 F0               [24] 2265 	movx	@dptr,a
      0009AA 90 03 67         [24] 2266 	mov	dptr,#__ltoa_tmp3_1_130
      0009AD F0               [24] 2267 	movx	@dptr,a
                                   2268 ;	../osal/common/OSAL.c:336: buf[0] = '\0';
      0009AE 90 03 4B         [24] 2269 	mov	dptr,#__ltoa_PARM_2
      0009B1 E0               [24] 2270 	movx	a,@dptr
      0009B2 FD               [12] 2271 	mov	r5,a
      0009B3 A3               [24] 2272 	inc	dptr
      0009B4 E0               [24] 2273 	movx	a,@dptr
      0009B5 FE               [12] 2274 	mov	r6,a
      0009B6 A3               [24] 2275 	inc	dptr
      0009B7 E0               [24] 2276 	movx	a,@dptr
      0009B8 FF               [12] 2277 	mov	r7,a
      0009B9 8D 82            [24] 2278 	mov	dpl,r5
      0009BB 8E 83            [24] 2279 	mov	dph,r6
      0009BD 8F F0            [24] 2280 	mov	b,r7
      0009BF 74 00            [12] 2281 	mov	a,#0x00
      0009C1 12 5A 01         [24] 2282 	lcall	__gptrput
                                   2283 ;	../osal/common/OSAL.c:338: if ( radix == 10 )
      0009C4 90 03 4E         [24] 2284 	mov	dptr,#__ltoa_PARM_3
      0009C7 E0               [24] 2285 	movx	a,@dptr
      0009C8 FF               [12] 2286 	mov	r7,a
      0009C9 BF 0A 02         [24] 2287 	cjne	r7,#0x0A,00211$
      0009CC 80 03            [24] 2288 	sjmp	00212$
      0009CE                       2289 00211$:
      0009CE 02 0D 1C         [24] 2290 	ljmp	00132$
      0009D1                       2291 00212$:
                                   2292 ;	../osal/common/OSAL.c:340: num1 = l % 10000;
      0009D1 90 03 4F         [24] 2293 	mov	dptr,#__ltoa_l_1_129
      0009D4 E0               [24] 2294 	movx	a,@dptr
      0009D5 FC               [12] 2295 	mov	r4,a
      0009D6 A3               [24] 2296 	inc	dptr
      0009D7 E0               [24] 2297 	movx	a,@dptr
      0009D8 FD               [12] 2298 	mov	r5,a
      0009D9 A3               [24] 2299 	inc	dptr
      0009DA E0               [24] 2300 	movx	a,@dptr
      0009DB FE               [12] 2301 	mov	r6,a
      0009DC A3               [24] 2302 	inc	dptr
      0009DD E0               [24] 2303 	movx	a,@dptr
      0009DE FF               [12] 2304 	mov	r7,a
      0009DF 90 11 F9         [24] 2305 	mov	dptr,#__modulong_PARM_2
      0009E2 74 10            [12] 2306 	mov	a,#0x10
      0009E4 F0               [24] 2307 	movx	@dptr,a
      0009E5 74 27            [12] 2308 	mov	a,#0x27
      0009E7 A3               [24] 2309 	inc	dptr
      0009E8 F0               [24] 2310 	movx	@dptr,a
      0009E9 74 00            [12] 2311 	mov	a,#0x00
      0009EB A3               [24] 2312 	inc	dptr
      0009EC F0               [24] 2313 	movx	@dptr,a
      0009ED A3               [24] 2314 	inc	dptr
      0009EE F0               [24] 2315 	movx	@dptr,a
      0009EF 8C 82            [24] 2316 	mov	dpl,r4
      0009F1 8D 83            [24] 2317 	mov	dph,r5
      0009F3 8E F0            [24] 2318 	mov	b,r6
      0009F5 EF               [12] 2319 	mov	a,r7
      0009F6 C0 07            [24] 2320 	push	ar7
      0009F8 C0 06            [24] 2321 	push	ar6
      0009FA C0 05            [24] 2322 	push	ar5
      0009FC C0 04            [24] 2323 	push	ar4
      0009FE 12 54 F5         [24] 2324 	lcall	__modulong
      000A01 A8 82            [24] 2325 	mov	r0,dpl
      000A03 A9 83            [24] 2326 	mov	r1,dph
      000A05 AA F0            [24] 2327 	mov	r2,b
      000A07 FB               [12] 2328 	mov	r3,a
      000A08 D0 04            [24] 2329 	pop	ar4
      000A0A D0 05            [24] 2330 	pop	ar5
      000A0C D0 06            [24] 2331 	pop	ar6
      000A0E D0 07            [24] 2332 	pop	ar7
      000A10 90 03 71         [24] 2333 	mov	dptr,#__ltoa_num1_1_130
      000A13 E8               [12] 2334 	mov	a,r0
      000A14 F0               [24] 2335 	movx	@dptr,a
      000A15 E9               [12] 2336 	mov	a,r1
      000A16 A3               [24] 2337 	inc	dptr
      000A17 F0               [24] 2338 	movx	@dptr,a
                                   2339 ;	../osal/common/OSAL.c:341: num2 = (l / 10000) % 10000;
      000A18 90 12 08         [24] 2340 	mov	dptr,#__divulong_PARM_2
      000A1B 74 10            [12] 2341 	mov	a,#0x10
      000A1D F0               [24] 2342 	movx	@dptr,a
      000A1E 74 27            [12] 2343 	mov	a,#0x27
      000A20 A3               [24] 2344 	inc	dptr
      000A21 F0               [24] 2345 	movx	@dptr,a
      000A22 74 00            [12] 2346 	mov	a,#0x00
      000A24 A3               [24] 2347 	inc	dptr
      000A25 F0               [24] 2348 	movx	@dptr,a
      000A26 A3               [24] 2349 	inc	dptr
      000A27 F0               [24] 2350 	movx	@dptr,a
      000A28 8C 82            [24] 2351 	mov	dpl,r4
      000A2A 8D 83            [24] 2352 	mov	dph,r5
      000A2C 8E F0            [24] 2353 	mov	b,r6
      000A2E EF               [12] 2354 	mov	a,r7
      000A2F C0 07            [24] 2355 	push	ar7
      000A31 C0 06            [24] 2356 	push	ar6
      000A33 C0 05            [24] 2357 	push	ar5
      000A35 C0 04            [24] 2358 	push	ar4
      000A37 12 56 8F         [24] 2359 	lcall	__divulong
      000A3A A8 82            [24] 2360 	mov	r0,dpl
      000A3C A9 83            [24] 2361 	mov	r1,dph
      000A3E AA F0            [24] 2362 	mov	r2,b
      000A40 FB               [12] 2363 	mov	r3,a
      000A41 D0 04            [24] 2364 	pop	ar4
      000A43 D0 05            [24] 2365 	pop	ar5
      000A45 D0 06            [24] 2366 	pop	ar6
      000A47 D0 07            [24] 2367 	pop	ar7
      000A49 90 11 F9         [24] 2368 	mov	dptr,#__modulong_PARM_2
      000A4C 74 10            [12] 2369 	mov	a,#0x10
      000A4E F0               [24] 2370 	movx	@dptr,a
      000A4F 74 27            [12] 2371 	mov	a,#0x27
      000A51 A3               [24] 2372 	inc	dptr
      000A52 F0               [24] 2373 	movx	@dptr,a
      000A53 74 00            [12] 2374 	mov	a,#0x00
      000A55 A3               [24] 2375 	inc	dptr
      000A56 F0               [24] 2376 	movx	@dptr,a
      000A57 A3               [24] 2377 	inc	dptr
      000A58 F0               [24] 2378 	movx	@dptr,a
      000A59 88 82            [24] 2379 	mov	dpl,r0
      000A5B 89 83            [24] 2380 	mov	dph,r1
      000A5D 8A F0            [24] 2381 	mov	b,r2
      000A5F EB               [12] 2382 	mov	a,r3
      000A60 C0 07            [24] 2383 	push	ar7
      000A62 C0 06            [24] 2384 	push	ar6
      000A64 C0 05            [24] 2385 	push	ar5
      000A66 C0 04            [24] 2386 	push	ar4
      000A68 12 54 F5         [24] 2387 	lcall	__modulong
      000A6B A8 82            [24] 2388 	mov	r0,dpl
      000A6D A9 83            [24] 2389 	mov	r1,dph
      000A6F AA F0            [24] 2390 	mov	r2,b
      000A71 FB               [12] 2391 	mov	r3,a
      000A72 D0 04            [24] 2392 	pop	ar4
      000A74 D0 05            [24] 2393 	pop	ar5
      000A76 D0 06            [24] 2394 	pop	ar6
      000A78 D0 07            [24] 2395 	pop	ar7
      000A7A 90 03 73         [24] 2396 	mov	dptr,#__ltoa_num2_1_130
      000A7D E8               [12] 2397 	mov	a,r0
      000A7E F0               [24] 2398 	movx	@dptr,a
      000A7F E9               [12] 2399 	mov	a,r1
      000A80 A3               [24] 2400 	inc	dptr
      000A81 F0               [24] 2401 	movx	@dptr,a
                                   2402 ;	../osal/common/OSAL.c:342: num3 = (unsigned short)(l / 100000000);
      000A82 90 12 08         [24] 2403 	mov	dptr,#__divulong_PARM_2
      000A85 74 00            [12] 2404 	mov	a,#0x00
      000A87 F0               [24] 2405 	movx	@dptr,a
      000A88 74 E1            [12] 2406 	mov	a,#0xE1
      000A8A A3               [24] 2407 	inc	dptr
      000A8B F0               [24] 2408 	movx	@dptr,a
      000A8C 74 F5            [12] 2409 	mov	a,#0xF5
      000A8E A3               [24] 2410 	inc	dptr
      000A8F F0               [24] 2411 	movx	@dptr,a
      000A90 74 05            [12] 2412 	mov	a,#0x05
      000A92 A3               [24] 2413 	inc	dptr
      000A93 F0               [24] 2414 	movx	@dptr,a
      000A94 8C 82            [24] 2415 	mov	dpl,r4
      000A96 8D 83            [24] 2416 	mov	dph,r5
      000A98 8E F0            [24] 2417 	mov	b,r6
      000A9A EF               [12] 2418 	mov	a,r7
      000A9B 12 56 8F         [24] 2419 	lcall	__divulong
      000A9E AC 82            [24] 2420 	mov	r4,dpl
      000AA0 AD 83            [24] 2421 	mov	r5,dph
      000AA2 AE F0            [24] 2422 	mov	r6,b
      000AA4 FF               [12] 2423 	mov	r7,a
      000AA5 90 03 75         [24] 2424 	mov	dptr,#__ltoa_num3_1_130
      000AA8 EC               [12] 2425 	mov	a,r4
      000AA9 F0               [24] 2426 	movx	@dptr,a
      000AAA ED               [12] 2427 	mov	a,r5
      000AAB A3               [24] 2428 	inc	dptr
      000AAC F0               [24] 2429 	movx	@dptr,a
                                   2430 ;	../osal/common/OSAL.c:344: if (num3) _itoa(num3, tmp3, 10);
      000AAD EC               [12] 2431 	mov	a,r4
      000AAE 4D               [12] 2432 	orl	a,r5
      000AAF 70 03            [24] 2433 	jnz	00213$
      000AB1 02 0A D7         [24] 2434 	ljmp	00102$
      000AB4                       2435 00213$:
      000AB4 90 03 75         [24] 2436 	mov	dptr,#__ltoa_num3_1_130
      000AB7 E0               [24] 2437 	movx	a,@dptr
      000AB8 FE               [12] 2438 	mov	r6,a
      000AB9 A3               [24] 2439 	inc	dptr
      000ABA E0               [24] 2440 	movx	a,@dptr
      000ABB FF               [12] 2441 	mov	r7,a
      000ABC 90 12 1E         [24] 2442 	mov	dptr,#__itoa_PARM_2
      000ABF 74 67            [12] 2443 	mov	a,#__ltoa_tmp3_1_130
      000AC1 F0               [24] 2444 	movx	@dptr,a
      000AC2 74 03            [12] 2445 	mov	a,#(__ltoa_tmp3_1_130 >> 8)
      000AC4 A3               [24] 2446 	inc	dptr
      000AC5 F0               [24] 2447 	movx	@dptr,a
      000AC6 74 00            [12] 2448 	mov	a,#0x00
      000AC8 A3               [24] 2449 	inc	dptr
      000AC9 F0               [24] 2450 	movx	@dptr,a
      000ACA 90 12 21         [24] 2451 	mov	dptr,#__itoa_PARM_3
      000ACD 74 0A            [12] 2452 	mov	a,#0x0A
      000ACF F0               [24] 2453 	movx	@dptr,a
      000AD0 8E 82            [24] 2454 	mov	dpl,r6
      000AD2 8F 83            [24] 2455 	mov	dph,r7
      000AD4 12 59 17         [24] 2456 	lcall	__itoa
      000AD7                       2457 00102$:
                                   2458 ;	../osal/common/OSAL.c:345: if (num2) _itoa(num2, tmp2, 10);
      000AD7 90 03 73         [24] 2459 	mov	dptr,#__ltoa_num2_1_130
      000ADA E0               [24] 2460 	movx	a,@dptr
      000ADB FE               [12] 2461 	mov	r6,a
      000ADC A3               [24] 2462 	inc	dptr
      000ADD E0               [24] 2463 	movx	a,@dptr
      000ADE FF               [12] 2464 	mov	r7,a
      000ADF EE               [12] 2465 	mov	a,r6
      000AE0 4F               [12] 2466 	orl	a,r7
      000AE1 70 03            [24] 2467 	jnz	00214$
      000AE3 02 0B 09         [24] 2468 	ljmp	00104$
      000AE6                       2469 00214$:
      000AE6 90 03 73         [24] 2470 	mov	dptr,#__ltoa_num2_1_130
      000AE9 E0               [24] 2471 	movx	a,@dptr
      000AEA FE               [12] 2472 	mov	r6,a
      000AEB A3               [24] 2473 	inc	dptr
      000AEC E0               [24] 2474 	movx	a,@dptr
      000AED FF               [12] 2475 	mov	r7,a
      000AEE 90 12 1E         [24] 2476 	mov	dptr,#__itoa_PARM_2
      000AF1 74 5D            [12] 2477 	mov	a,#__ltoa_tmp2_1_130
      000AF3 F0               [24] 2478 	movx	@dptr,a
      000AF4 74 03            [12] 2479 	mov	a,#(__ltoa_tmp2_1_130 >> 8)
      000AF6 A3               [24] 2480 	inc	dptr
      000AF7 F0               [24] 2481 	movx	@dptr,a
      000AF8 74 00            [12] 2482 	mov	a,#0x00
      000AFA A3               [24] 2483 	inc	dptr
      000AFB F0               [24] 2484 	movx	@dptr,a
      000AFC 90 12 21         [24] 2485 	mov	dptr,#__itoa_PARM_3
      000AFF 74 0A            [12] 2486 	mov	a,#0x0A
      000B01 F0               [24] 2487 	movx	@dptr,a
      000B02 8E 82            [24] 2488 	mov	dpl,r6
      000B04 8F 83            [24] 2489 	mov	dph,r7
      000B06 12 59 17         [24] 2490 	lcall	__itoa
      000B09                       2491 00104$:
                                   2492 ;	../osal/common/OSAL.c:346: if (num1) _itoa(num1, tmp1, 10);
      000B09 90 03 71         [24] 2493 	mov	dptr,#__ltoa_num1_1_130
      000B0C E0               [24] 2494 	movx	a,@dptr
      000B0D FE               [12] 2495 	mov	r6,a
      000B0E A3               [24] 2496 	inc	dptr
      000B0F E0               [24] 2497 	movx	a,@dptr
      000B10 FF               [12] 2498 	mov	r7,a
      000B11 EE               [12] 2499 	mov	a,r6
      000B12 4F               [12] 2500 	orl	a,r7
      000B13 70 03            [24] 2501 	jnz	00215$
      000B15 02 0B 3B         [24] 2502 	ljmp	00106$
      000B18                       2503 00215$:
      000B18 90 03 71         [24] 2504 	mov	dptr,#__ltoa_num1_1_130
      000B1B E0               [24] 2505 	movx	a,@dptr
      000B1C FE               [12] 2506 	mov	r6,a
      000B1D A3               [24] 2507 	inc	dptr
      000B1E E0               [24] 2508 	movx	a,@dptr
      000B1F FF               [12] 2509 	mov	r7,a
      000B20 90 12 1E         [24] 2510 	mov	dptr,#__itoa_PARM_2
      000B23 74 53            [12] 2511 	mov	a,#__ltoa_tmp1_1_130
      000B25 F0               [24] 2512 	movx	@dptr,a
      000B26 74 03            [12] 2513 	mov	a,#(__ltoa_tmp1_1_130 >> 8)
      000B28 A3               [24] 2514 	inc	dptr
      000B29 F0               [24] 2515 	movx	@dptr,a
      000B2A 74 00            [12] 2516 	mov	a,#0x00
      000B2C A3               [24] 2517 	inc	dptr
      000B2D F0               [24] 2518 	movx	@dptr,a
      000B2E 90 12 21         [24] 2519 	mov	dptr,#__itoa_PARM_3
      000B31 74 0A            [12] 2520 	mov	a,#0x0A
      000B33 F0               [24] 2521 	movx	@dptr,a
      000B34 8E 82            [24] 2522 	mov	dpl,r6
      000B36 8F 83            [24] 2523 	mov	dph,r7
      000B38 12 59 17         [24] 2524 	lcall	__itoa
      000B3B                       2525 00106$:
                                   2526 ;	../osal/common/OSAL.c:348: if (num3)
      000B3B 90 03 75         [24] 2527 	mov	dptr,#__ltoa_num3_1_130
      000B3E E0               [24] 2528 	movx	a,@dptr
      000B3F FE               [12] 2529 	mov	r6,a
      000B40 A3               [24] 2530 	inc	dptr
      000B41 E0               [24] 2531 	movx	a,@dptr
      000B42 FF               [12] 2532 	mov	r7,a
      000B43 EE               [12] 2533 	mov	a,r6
      000B44 4F               [12] 2534 	orl	a,r7
      000B45 70 03            [24] 2535 	jnz	00216$
      000B47 02 0B EA         [24] 2536 	ljmp	00109$
      000B4A                       2537 00216$:
                                   2538 ;	../osal/common/OSAL.c:350: strcpy((char*)buf, (char const*)tmp3);
      000B4A 90 03 4B         [24] 2539 	mov	dptr,#__ltoa_PARM_2
      000B4D E0               [24] 2540 	movx	a,@dptr
      000B4E FD               [12] 2541 	mov	r5,a
      000B4F A3               [24] 2542 	inc	dptr
      000B50 E0               [24] 2543 	movx	a,@dptr
      000B51 FE               [12] 2544 	mov	r6,a
      000B52 A3               [24] 2545 	inc	dptr
      000B53 E0               [24] 2546 	movx	a,@dptr
      000B54 FF               [12] 2547 	mov	r7,a
      000B55 90 12 02         [24] 2548 	mov	dptr,#_strcpy_PARM_2
      000B58 74 67            [12] 2549 	mov	a,#__ltoa_tmp3_1_130
      000B5A F0               [24] 2550 	movx	@dptr,a
      000B5B 74 03            [12] 2551 	mov	a,#(__ltoa_tmp3_1_130 >> 8)
      000B5D A3               [24] 2552 	inc	dptr
      000B5E F0               [24] 2553 	movx	@dptr,a
      000B5F 74 00            [12] 2554 	mov	a,#0x00
      000B61 A3               [24] 2555 	inc	dptr
      000B62 F0               [24] 2556 	movx	@dptr,a
      000B63 8D 82            [24] 2557 	mov	dpl,r5
      000B65 8E 83            [24] 2558 	mov	dph,r6
      000B67 8F F0            [24] 2559 	mov	b,r7
      000B69 12 56 36         [24] 2560 	lcall	_strcpy
                                   2561 ;	../osal/common/OSAL.c:351: for (i = 0; i < 4 - strlen((char const*)tmp2); i++)
      000B6C 90 03 77         [24] 2562 	mov	dptr,#__ltoa_i_1_130
      000B6F 74 00            [12] 2563 	mov	a,#0x00
      000B71 F0               [24] 2564 	movx	@dptr,a
      000B72 90 03 4B         [24] 2565 	mov	dptr,#__ltoa_PARM_2
      000B75 E0               [24] 2566 	movx	a,@dptr
      000B76 FD               [12] 2567 	mov	r5,a
      000B77 A3               [24] 2568 	inc	dptr
      000B78 E0               [24] 2569 	movx	a,@dptr
      000B79 FE               [12] 2570 	mov	r6,a
      000B7A A3               [24] 2571 	inc	dptr
      000B7B E0               [24] 2572 	movx	a,@dptr
      000B7C FF               [12] 2573 	mov	r7,a
      000B7D 90 03 77         [24] 2574 	mov	dptr,#__ltoa_i_1_130
      000B80 E0               [24] 2575 	movx	a,@dptr
      000B81 FC               [12] 2576 	mov	r4,a
      000B82                       2577 00135$:
      000B82 75 82 5D         [24] 2578 	mov	dpl,#__ltoa_tmp2_1_130
      000B85 75 83 03         [24] 2579 	mov	dph,#(__ltoa_tmp2_1_130 >> 8)
      000B88 75 F0 00         [24] 2580 	mov	b,#0x00
      000B8B C0 07            [24] 2581 	push	ar7
      000B8D C0 06            [24] 2582 	push	ar6
      000B8F C0 05            [24] 2583 	push	ar5
      000B91 C0 04            [24] 2584 	push	ar4
      000B93 12 5B 55         [24] 2585 	lcall	_strlen
      000B96 AA 82            [24] 2586 	mov	r2,dpl
      000B98 AB 83            [24] 2587 	mov	r3,dph
      000B9A D0 04            [24] 2588 	pop	ar4
      000B9C D0 05            [24] 2589 	pop	ar5
      000B9E D0 06            [24] 2590 	pop	ar6
      000BA0 D0 07            [24] 2591 	pop	ar7
      000BA2 74 04            [12] 2592 	mov	a,#0x04
      000BA4 C3               [12] 2593 	clr	c
      000BA5 9A               [12] 2594 	subb	a,r2
      000BA6 FA               [12] 2595 	mov	r2,a
      000BA7 74 00            [12] 2596 	mov	a,#0x00
      000BA9 9B               [12] 2597 	subb	a,r3
      000BAA FB               [12] 2598 	mov	r3,a
      000BAB 8C 00            [24] 2599 	mov	ar0,r4
      000BAD 79 00            [12] 2600 	mov	r1,#0x00
      000BAF C3               [12] 2601 	clr	c
      000BB0 E8               [12] 2602 	mov	a,r0
      000BB1 9A               [12] 2603 	subb	a,r2
      000BB2 E9               [12] 2604 	mov	a,r1
      000BB3 9B               [12] 2605 	subb	a,r3
      000BB4 40 03            [24] 2606 	jc	00217$
      000BB6 02 0B EA         [24] 2607 	ljmp	00109$
      000BB9                       2608 00217$:
                                   2609 ;	../osal/common/OSAL.c:352: strcat((char*)buf, "0");
      000BB9 8D 01            [24] 2610 	mov	ar1,r5
      000BBB 8E 02            [24] 2611 	mov	ar2,r6
      000BBD 8F 03            [24] 2612 	mov	ar3,r7
      000BBF 90 12 24         [24] 2613 	mov	dptr,#_strcat_PARM_2
      000BC2 74 8D            [12] 2614 	mov	a,#___str_3
      000BC4 F0               [24] 2615 	movx	@dptr,a
      000BC5 74 5B            [12] 2616 	mov	a,#(___str_3 >> 8)
      000BC7 A3               [24] 2617 	inc	dptr
      000BC8 F0               [24] 2618 	movx	@dptr,a
      000BC9 74 80            [12] 2619 	mov	a,#0x80
      000BCB A3               [24] 2620 	inc	dptr
      000BCC F0               [24] 2621 	movx	@dptr,a
      000BCD 89 82            [24] 2622 	mov	dpl,r1
      000BCF 8A 83            [24] 2623 	mov	dph,r2
      000BD1 8B F0            [24] 2624 	mov	b,r3
      000BD3 C0 07            [24] 2625 	push	ar7
      000BD5 C0 06            [24] 2626 	push	ar6
      000BD7 C0 05            [24] 2627 	push	ar5
      000BD9 C0 04            [24] 2628 	push	ar4
      000BDB 12 59 93         [24] 2629 	lcall	_strcat
      000BDE D0 04            [24] 2630 	pop	ar4
      000BE0 D0 05            [24] 2631 	pop	ar5
      000BE2 D0 06            [24] 2632 	pop	ar6
      000BE4 D0 07            [24] 2633 	pop	ar7
                                   2634 ;	../osal/common/OSAL.c:351: for (i = 0; i < 4 - strlen((char const*)tmp2); i++)
      000BE6 0C               [12] 2635 	inc	r4
      000BE7 02 0B 82         [24] 2636 	ljmp	00135$
      000BEA                       2637 00109$:
                                   2638 ;	../osal/common/OSAL.c:354: strcat((char*)buf, (char const*)tmp2);
      000BEA 90 03 4B         [24] 2639 	mov	dptr,#__ltoa_PARM_2
      000BED E0               [24] 2640 	movx	a,@dptr
      000BEE FD               [12] 2641 	mov	r5,a
      000BEF A3               [24] 2642 	inc	dptr
      000BF0 E0               [24] 2643 	movx	a,@dptr
      000BF1 FE               [12] 2644 	mov	r6,a
      000BF2 A3               [24] 2645 	inc	dptr
      000BF3 E0               [24] 2646 	movx	a,@dptr
      000BF4 FF               [12] 2647 	mov	r7,a
      000BF5 90 12 24         [24] 2648 	mov	dptr,#_strcat_PARM_2
      000BF8 74 5D            [12] 2649 	mov	a,#__ltoa_tmp2_1_130
      000BFA F0               [24] 2650 	movx	@dptr,a
      000BFB 74 03            [12] 2651 	mov	a,#(__ltoa_tmp2_1_130 >> 8)
      000BFD A3               [24] 2652 	inc	dptr
      000BFE F0               [24] 2653 	movx	@dptr,a
      000BFF 74 00            [12] 2654 	mov	a,#0x00
      000C01 A3               [24] 2655 	inc	dptr
      000C02 F0               [24] 2656 	movx	@dptr,a
      000C03 8D 82            [24] 2657 	mov	dpl,r5
      000C05 8E 83            [24] 2658 	mov	dph,r6
      000C07 8F F0            [24] 2659 	mov	b,r7
      000C09 12 59 93         [24] 2660 	lcall	_strcat
                                   2661 ;	../osal/common/OSAL.c:355: if (num3 || num2)
      000C0C 90 03 75         [24] 2662 	mov	dptr,#__ltoa_num3_1_130
      000C0F E0               [24] 2663 	movx	a,@dptr
      000C10 FE               [12] 2664 	mov	r6,a
      000C11 A3               [24] 2665 	inc	dptr
      000C12 E0               [24] 2666 	movx	a,@dptr
      000C13 FF               [12] 2667 	mov	r7,a
      000C14 EE               [12] 2668 	mov	a,r6
      000C15 4F               [12] 2669 	orl	a,r7
      000C16 60 03            [24] 2670 	jz	00218$
      000C18 02 0C 2A         [24] 2671 	ljmp	00111$
      000C1B                       2672 00218$:
      000C1B 90 03 73         [24] 2673 	mov	dptr,#__ltoa_num2_1_130
      000C1E E0               [24] 2674 	movx	a,@dptr
      000C1F FE               [12] 2675 	mov	r6,a
      000C20 A3               [24] 2676 	inc	dptr
      000C21 E0               [24] 2677 	movx	a,@dptr
      000C22 FF               [12] 2678 	mov	r7,a
      000C23 EE               [12] 2679 	mov	a,r6
      000C24 4F               [12] 2680 	orl	a,r7
      000C25 70 03            [24] 2681 	jnz	00219$
      000C27 02 0C A8         [24] 2682 	ljmp	00112$
      000C2A                       2683 00219$:
      000C2A                       2684 00111$:
                                   2685 ;	../osal/common/OSAL.c:357: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
      000C2A 90 03 77         [24] 2686 	mov	dptr,#__ltoa_i_1_130
      000C2D 74 00            [12] 2687 	mov	a,#0x00
      000C2F F0               [24] 2688 	movx	@dptr,a
      000C30 90 03 4B         [24] 2689 	mov	dptr,#__ltoa_PARM_2
      000C33 E0               [24] 2690 	movx	a,@dptr
      000C34 FD               [12] 2691 	mov	r5,a
      000C35 A3               [24] 2692 	inc	dptr
      000C36 E0               [24] 2693 	movx	a,@dptr
      000C37 FE               [12] 2694 	mov	r6,a
      000C38 A3               [24] 2695 	inc	dptr
      000C39 E0               [24] 2696 	movx	a,@dptr
      000C3A FF               [12] 2697 	mov	r7,a
      000C3B 90 03 77         [24] 2698 	mov	dptr,#__ltoa_i_1_130
      000C3E E0               [24] 2699 	movx	a,@dptr
      000C3F FC               [12] 2700 	mov	r4,a
      000C40                       2701 00138$:
      000C40 75 82 53         [24] 2702 	mov	dpl,#__ltoa_tmp1_1_130
      000C43 75 83 03         [24] 2703 	mov	dph,#(__ltoa_tmp1_1_130 >> 8)
      000C46 75 F0 00         [24] 2704 	mov	b,#0x00
      000C49 C0 07            [24] 2705 	push	ar7
      000C4B C0 06            [24] 2706 	push	ar6
      000C4D C0 05            [24] 2707 	push	ar5
      000C4F C0 04            [24] 2708 	push	ar4
      000C51 12 5B 55         [24] 2709 	lcall	_strlen
      000C54 AA 82            [24] 2710 	mov	r2,dpl
      000C56 AB 83            [24] 2711 	mov	r3,dph
      000C58 D0 04            [24] 2712 	pop	ar4
      000C5A D0 05            [24] 2713 	pop	ar5
      000C5C D0 06            [24] 2714 	pop	ar6
      000C5E D0 07            [24] 2715 	pop	ar7
      000C60 74 04            [12] 2716 	mov	a,#0x04
      000C62 C3               [12] 2717 	clr	c
      000C63 9A               [12] 2718 	subb	a,r2
      000C64 FA               [12] 2719 	mov	r2,a
      000C65 74 00            [12] 2720 	mov	a,#0x00
      000C67 9B               [12] 2721 	subb	a,r3
      000C68 FB               [12] 2722 	mov	r3,a
      000C69 8C 00            [24] 2723 	mov	ar0,r4
      000C6B 79 00            [12] 2724 	mov	r1,#0x00
      000C6D C3               [12] 2725 	clr	c
      000C6E E8               [12] 2726 	mov	a,r0
      000C6F 9A               [12] 2727 	subb	a,r2
      000C70 E9               [12] 2728 	mov	a,r1
      000C71 9B               [12] 2729 	subb	a,r3
      000C72 40 03            [24] 2730 	jc	00220$
      000C74 02 0C A8         [24] 2731 	ljmp	00112$
      000C77                       2732 00220$:
                                   2733 ;	../osal/common/OSAL.c:358: strcat((char*)buf, "0");
      000C77 8D 01            [24] 2734 	mov	ar1,r5
      000C79 8E 02            [24] 2735 	mov	ar2,r6
      000C7B 8F 03            [24] 2736 	mov	ar3,r7
      000C7D 90 12 24         [24] 2737 	mov	dptr,#_strcat_PARM_2
      000C80 74 8D            [12] 2738 	mov	a,#___str_3
      000C82 F0               [24] 2739 	movx	@dptr,a
      000C83 74 5B            [12] 2740 	mov	a,#(___str_3 >> 8)
      000C85 A3               [24] 2741 	inc	dptr
      000C86 F0               [24] 2742 	movx	@dptr,a
      000C87 74 80            [12] 2743 	mov	a,#0x80
      000C89 A3               [24] 2744 	inc	dptr
      000C8A F0               [24] 2745 	movx	@dptr,a
      000C8B 89 82            [24] 2746 	mov	dpl,r1
      000C8D 8A 83            [24] 2747 	mov	dph,r2
      000C8F 8B F0            [24] 2748 	mov	b,r3
      000C91 C0 07            [24] 2749 	push	ar7
      000C93 C0 06            [24] 2750 	push	ar6
      000C95 C0 05            [24] 2751 	push	ar5
      000C97 C0 04            [24] 2752 	push	ar4
      000C99 12 59 93         [24] 2753 	lcall	_strcat
      000C9C D0 04            [24] 2754 	pop	ar4
      000C9E D0 05            [24] 2755 	pop	ar5
      000CA0 D0 06            [24] 2756 	pop	ar6
      000CA2 D0 07            [24] 2757 	pop	ar7
                                   2758 ;	../osal/common/OSAL.c:357: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
      000CA4 0C               [12] 2759 	inc	r4
      000CA5 02 0C 40         [24] 2760 	ljmp	00138$
      000CA8                       2761 00112$:
                                   2762 ;	../osal/common/OSAL.c:360: strcat((char*)buf, (char const*)tmp1);
      000CA8 90 03 4B         [24] 2763 	mov	dptr,#__ltoa_PARM_2
      000CAB E0               [24] 2764 	movx	a,@dptr
      000CAC FD               [12] 2765 	mov	r5,a
      000CAD A3               [24] 2766 	inc	dptr
      000CAE E0               [24] 2767 	movx	a,@dptr
      000CAF FE               [12] 2768 	mov	r6,a
      000CB0 A3               [24] 2769 	inc	dptr
      000CB1 E0               [24] 2770 	movx	a,@dptr
      000CB2 FF               [12] 2771 	mov	r7,a
      000CB3 90 12 24         [24] 2772 	mov	dptr,#_strcat_PARM_2
      000CB6 74 53            [12] 2773 	mov	a,#__ltoa_tmp1_1_130
      000CB8 F0               [24] 2774 	movx	@dptr,a
      000CB9 74 03            [12] 2775 	mov	a,#(__ltoa_tmp1_1_130 >> 8)
      000CBB A3               [24] 2776 	inc	dptr
      000CBC F0               [24] 2777 	movx	@dptr,a
      000CBD 74 00            [12] 2778 	mov	a,#0x00
      000CBF A3               [24] 2779 	inc	dptr
      000CC0 F0               [24] 2780 	movx	@dptr,a
      000CC1 8D 82            [24] 2781 	mov	dpl,r5
      000CC3 8E 83            [24] 2782 	mov	dph,r6
      000CC5 8F F0            [24] 2783 	mov	b,r7
      000CC7 12 59 93         [24] 2784 	lcall	_strcat
                                   2785 ;	../osal/common/OSAL.c:361: if (!num3 && !num2 && !num1)
      000CCA 90 03 75         [24] 2786 	mov	dptr,#__ltoa_num3_1_130
      000CCD E0               [24] 2787 	movx	a,@dptr
      000CCE FE               [12] 2788 	mov	r6,a
      000CCF A3               [24] 2789 	inc	dptr
      000CD0 E0               [24] 2790 	movx	a,@dptr
      000CD1 FF               [12] 2791 	mov	r7,a
      000CD2 EE               [12] 2792 	mov	a,r6
      000CD3 4F               [12] 2793 	orl	a,r7
      000CD4 60 03            [24] 2794 	jz	00221$
      000CD6 02 0E CF         [24] 2795 	ljmp	00133$
      000CD9                       2796 00221$:
      000CD9 90 03 73         [24] 2797 	mov	dptr,#__ltoa_num2_1_130
      000CDC E0               [24] 2798 	movx	a,@dptr
      000CDD FE               [12] 2799 	mov	r6,a
      000CDE A3               [24] 2800 	inc	dptr
      000CDF E0               [24] 2801 	movx	a,@dptr
      000CE0 FF               [12] 2802 	mov	r7,a
      000CE1 EE               [12] 2803 	mov	a,r6
      000CE2 4F               [12] 2804 	orl	a,r7
      000CE3 60 03            [24] 2805 	jz	00222$
      000CE5 02 0E CF         [24] 2806 	ljmp	00133$
      000CE8                       2807 00222$:
      000CE8 90 03 71         [24] 2808 	mov	dptr,#__ltoa_num1_1_130
      000CEB E0               [24] 2809 	movx	a,@dptr
      000CEC FE               [12] 2810 	mov	r6,a
      000CED A3               [24] 2811 	inc	dptr
      000CEE E0               [24] 2812 	movx	a,@dptr
      000CEF FF               [12] 2813 	mov	r7,a
      000CF0 EE               [12] 2814 	mov	a,r6
      000CF1 4F               [12] 2815 	orl	a,r7
      000CF2 60 03            [24] 2816 	jz	00223$
      000CF4 02 0E CF         [24] 2817 	ljmp	00133$
      000CF7                       2818 00223$:
                                   2819 ;	../osal/common/OSAL.c:362: strcpy((char*)buf, "0");
      000CF7 90 03 4B         [24] 2820 	mov	dptr,#__ltoa_PARM_2
      000CFA E0               [24] 2821 	movx	a,@dptr
      000CFB FD               [12] 2822 	mov	r5,a
      000CFC A3               [24] 2823 	inc	dptr
      000CFD E0               [24] 2824 	movx	a,@dptr
      000CFE FE               [12] 2825 	mov	r6,a
      000CFF A3               [24] 2826 	inc	dptr
      000D00 E0               [24] 2827 	movx	a,@dptr
      000D01 FF               [12] 2828 	mov	r7,a
      000D02 90 12 02         [24] 2829 	mov	dptr,#_strcpy_PARM_2
      000D05 74 8D            [12] 2830 	mov	a,#___str_3
      000D07 F0               [24] 2831 	movx	@dptr,a
      000D08 74 5B            [12] 2832 	mov	a,#(___str_3 >> 8)
      000D0A A3               [24] 2833 	inc	dptr
      000D0B F0               [24] 2834 	movx	@dptr,a
      000D0C 74 80            [12] 2835 	mov	a,#0x80
      000D0E A3               [24] 2836 	inc	dptr
      000D0F F0               [24] 2837 	movx	@dptr,a
      000D10 8D 82            [24] 2838 	mov	dpl,r5
      000D12 8E 83            [24] 2839 	mov	dph,r6
      000D14 8F F0            [24] 2840 	mov	b,r7
      000D16 12 56 36         [24] 2841 	lcall	_strcpy
      000D19 02 0E CF         [24] 2842 	ljmp	00133$
      000D1C                       2843 00132$:
                                   2844 ;	../osal/common/OSAL.c:364: else if ( radix == 16 )
      000D1C 90 03 4E         [24] 2845 	mov	dptr,#__ltoa_PARM_3
      000D1F E0               [24] 2846 	movx	a,@dptr
      000D20 FF               [12] 2847 	mov	r7,a
      000D21 BF 10 02         [24] 2848 	cjne	r7,#0x10,00224$
      000D24 80 03            [24] 2849 	sjmp	00225$
      000D26                       2850 00224$:
      000D26 02 0E C3         [24] 2851 	ljmp	00129$
      000D29                       2852 00225$:
                                   2853 ;	../osal/common/OSAL.c:366: num1 = l & 0x0000FFFF;
      000D29 90 03 4F         [24] 2854 	mov	dptr,#__ltoa_l_1_129
      000D2C E0               [24] 2855 	movx	a,@dptr
      000D2D FC               [12] 2856 	mov	r4,a
      000D2E A3               [24] 2857 	inc	dptr
      000D2F E0               [24] 2858 	movx	a,@dptr
      000D30 FD               [12] 2859 	mov	r5,a
      000D31 A3               [24] 2860 	inc	dptr
      000D32 E0               [24] 2861 	movx	a,@dptr
      000D33 FE               [12] 2862 	mov	r6,a
      000D34 A3               [24] 2863 	inc	dptr
      000D35 E0               [24] 2864 	movx	a,@dptr
      000D36 FF               [12] 2865 	mov	r7,a
      000D37 8C 00            [24] 2866 	mov	ar0,r4
      000D39 8D 01            [24] 2867 	mov	ar1,r5
      000D3B 7A 00            [12] 2868 	mov	r2,#0x00
      000D3D 7B 00            [12] 2869 	mov	r3,#0x00
      000D3F 90 03 71         [24] 2870 	mov	dptr,#__ltoa_num1_1_130
      000D42 E8               [12] 2871 	mov	a,r0
      000D43 F0               [24] 2872 	movx	@dptr,a
      000D44 E9               [12] 2873 	mov	a,r1
      000D45 A3               [24] 2874 	inc	dptr
      000D46 F0               [24] 2875 	movx	@dptr,a
                                   2876 ;	../osal/common/OSAL.c:367: num2 = l >> 16;
      000D47 8E 04            [24] 2877 	mov	ar4,r6
      000D49 8F 05            [24] 2878 	mov	ar5,r7
      000D4B 90 03 73         [24] 2879 	mov	dptr,#__ltoa_num2_1_130
      000D4E EC               [12] 2880 	mov	a,r4
      000D4F F0               [24] 2881 	movx	@dptr,a
      000D50 ED               [12] 2882 	mov	a,r5
      000D51 A3               [24] 2883 	inc	dptr
      000D52 F0               [24] 2884 	movx	@dptr,a
                                   2885 ;	../osal/common/OSAL.c:369: if (num2) _itoa(num2, tmp2, 16);
      000D53 EC               [12] 2886 	mov	a,r4
      000D54 4D               [12] 2887 	orl	a,r5
      000D55 70 03            [24] 2888 	jnz	00226$
      000D57 02 0D 7D         [24] 2889 	ljmp	00119$
      000D5A                       2890 00226$:
      000D5A 90 03 73         [24] 2891 	mov	dptr,#__ltoa_num2_1_130
      000D5D E0               [24] 2892 	movx	a,@dptr
      000D5E FE               [12] 2893 	mov	r6,a
      000D5F A3               [24] 2894 	inc	dptr
      000D60 E0               [24] 2895 	movx	a,@dptr
      000D61 FF               [12] 2896 	mov	r7,a
      000D62 90 12 1E         [24] 2897 	mov	dptr,#__itoa_PARM_2
      000D65 74 5D            [12] 2898 	mov	a,#__ltoa_tmp2_1_130
      000D67 F0               [24] 2899 	movx	@dptr,a
      000D68 74 03            [12] 2900 	mov	a,#(__ltoa_tmp2_1_130 >> 8)
      000D6A A3               [24] 2901 	inc	dptr
      000D6B F0               [24] 2902 	movx	@dptr,a
      000D6C 74 00            [12] 2903 	mov	a,#0x00
      000D6E A3               [24] 2904 	inc	dptr
      000D6F F0               [24] 2905 	movx	@dptr,a
      000D70 90 12 21         [24] 2906 	mov	dptr,#__itoa_PARM_3
      000D73 74 10            [12] 2907 	mov	a,#0x10
      000D75 F0               [24] 2908 	movx	@dptr,a
      000D76 8E 82            [24] 2909 	mov	dpl,r6
      000D78 8F 83            [24] 2910 	mov	dph,r7
      000D7A 12 59 17         [24] 2911 	lcall	__itoa
      000D7D                       2912 00119$:
                                   2913 ;	../osal/common/OSAL.c:370: if (num1) _itoa(num1, tmp1, 16);
      000D7D 90 03 71         [24] 2914 	mov	dptr,#__ltoa_num1_1_130
      000D80 E0               [24] 2915 	movx	a,@dptr
      000D81 FE               [12] 2916 	mov	r6,a
      000D82 A3               [24] 2917 	inc	dptr
      000D83 E0               [24] 2918 	movx	a,@dptr
      000D84 FF               [12] 2919 	mov	r7,a
      000D85 EE               [12] 2920 	mov	a,r6
      000D86 4F               [12] 2921 	orl	a,r7
      000D87 70 03            [24] 2922 	jnz	00227$
      000D89 02 0D AF         [24] 2923 	ljmp	00121$
      000D8C                       2924 00227$:
      000D8C 90 03 71         [24] 2925 	mov	dptr,#__ltoa_num1_1_130
      000D8F E0               [24] 2926 	movx	a,@dptr
      000D90 FE               [12] 2927 	mov	r6,a
      000D91 A3               [24] 2928 	inc	dptr
      000D92 E0               [24] 2929 	movx	a,@dptr
      000D93 FF               [12] 2930 	mov	r7,a
      000D94 90 12 1E         [24] 2931 	mov	dptr,#__itoa_PARM_2
      000D97 74 53            [12] 2932 	mov	a,#__ltoa_tmp1_1_130
      000D99 F0               [24] 2933 	movx	@dptr,a
      000D9A 74 03            [12] 2934 	mov	a,#(__ltoa_tmp1_1_130 >> 8)
      000D9C A3               [24] 2935 	inc	dptr
      000D9D F0               [24] 2936 	movx	@dptr,a
      000D9E 74 00            [12] 2937 	mov	a,#0x00
      000DA0 A3               [24] 2938 	inc	dptr
      000DA1 F0               [24] 2939 	movx	@dptr,a
      000DA2 90 12 21         [24] 2940 	mov	dptr,#__itoa_PARM_3
      000DA5 74 10            [12] 2941 	mov	a,#0x10
      000DA7 F0               [24] 2942 	movx	@dptr,a
      000DA8 8E 82            [24] 2943 	mov	dpl,r6
      000DAA 8F 83            [24] 2944 	mov	dph,r7
      000DAC 12 59 17         [24] 2945 	lcall	__itoa
      000DAF                       2946 00121$:
                                   2947 ;	../osal/common/OSAL.c:372: if (num2)
      000DAF 90 03 73         [24] 2948 	mov	dptr,#__ltoa_num2_1_130
      000DB2 E0               [24] 2949 	movx	a,@dptr
      000DB3 FE               [12] 2950 	mov	r6,a
      000DB4 A3               [24] 2951 	inc	dptr
      000DB5 E0               [24] 2952 	movx	a,@dptr
      000DB6 FF               [12] 2953 	mov	r7,a
      000DB7 EE               [12] 2954 	mov	a,r6
      000DB8 4F               [12] 2955 	orl	a,r7
      000DB9 70 03            [24] 2956 	jnz	00228$
      000DBB 02 0E 5E         [24] 2957 	ljmp	00124$
      000DBE                       2958 00228$:
                                   2959 ;	../osal/common/OSAL.c:374: strcpy((char*)buf,(char const*)tmp2);
      000DBE 90 03 4B         [24] 2960 	mov	dptr,#__ltoa_PARM_2
      000DC1 E0               [24] 2961 	movx	a,@dptr
      000DC2 FD               [12] 2962 	mov	r5,a
      000DC3 A3               [24] 2963 	inc	dptr
      000DC4 E0               [24] 2964 	movx	a,@dptr
      000DC5 FE               [12] 2965 	mov	r6,a
      000DC6 A3               [24] 2966 	inc	dptr
      000DC7 E0               [24] 2967 	movx	a,@dptr
      000DC8 FF               [12] 2968 	mov	r7,a
      000DC9 90 12 02         [24] 2969 	mov	dptr,#_strcpy_PARM_2
      000DCC 74 5D            [12] 2970 	mov	a,#__ltoa_tmp2_1_130
      000DCE F0               [24] 2971 	movx	@dptr,a
      000DCF 74 03            [12] 2972 	mov	a,#(__ltoa_tmp2_1_130 >> 8)
      000DD1 A3               [24] 2973 	inc	dptr
      000DD2 F0               [24] 2974 	movx	@dptr,a
      000DD3 74 00            [12] 2975 	mov	a,#0x00
      000DD5 A3               [24] 2976 	inc	dptr
      000DD6 F0               [24] 2977 	movx	@dptr,a
      000DD7 8D 82            [24] 2978 	mov	dpl,r5
      000DD9 8E 83            [24] 2979 	mov	dph,r6
      000DDB 8F F0            [24] 2980 	mov	b,r7
      000DDD 12 56 36         [24] 2981 	lcall	_strcpy
                                   2982 ;	../osal/common/OSAL.c:375: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
      000DE0 90 03 77         [24] 2983 	mov	dptr,#__ltoa_i_1_130
      000DE3 74 00            [12] 2984 	mov	a,#0x00
      000DE5 F0               [24] 2985 	movx	@dptr,a
      000DE6 90 03 4B         [24] 2986 	mov	dptr,#__ltoa_PARM_2
      000DE9 E0               [24] 2987 	movx	a,@dptr
      000DEA FD               [12] 2988 	mov	r5,a
      000DEB A3               [24] 2989 	inc	dptr
      000DEC E0               [24] 2990 	movx	a,@dptr
      000DED FE               [12] 2991 	mov	r6,a
      000DEE A3               [24] 2992 	inc	dptr
      000DEF E0               [24] 2993 	movx	a,@dptr
      000DF0 FF               [12] 2994 	mov	r7,a
      000DF1 90 03 77         [24] 2995 	mov	dptr,#__ltoa_i_1_130
      000DF4 E0               [24] 2996 	movx	a,@dptr
      000DF5 FC               [12] 2997 	mov	r4,a
      000DF6                       2998 00141$:
      000DF6 75 82 53         [24] 2999 	mov	dpl,#__ltoa_tmp1_1_130
      000DF9 75 83 03         [24] 3000 	mov	dph,#(__ltoa_tmp1_1_130 >> 8)
      000DFC 75 F0 00         [24] 3001 	mov	b,#0x00
      000DFF C0 07            [24] 3002 	push	ar7
      000E01 C0 06            [24] 3003 	push	ar6
      000E03 C0 05            [24] 3004 	push	ar5
      000E05 C0 04            [24] 3005 	push	ar4
      000E07 12 5B 55         [24] 3006 	lcall	_strlen
      000E0A AA 82            [24] 3007 	mov	r2,dpl
      000E0C AB 83            [24] 3008 	mov	r3,dph
      000E0E D0 04            [24] 3009 	pop	ar4
      000E10 D0 05            [24] 3010 	pop	ar5
      000E12 D0 06            [24] 3011 	pop	ar6
      000E14 D0 07            [24] 3012 	pop	ar7
      000E16 74 04            [12] 3013 	mov	a,#0x04
      000E18 C3               [12] 3014 	clr	c
      000E19 9A               [12] 3015 	subb	a,r2
      000E1A FA               [12] 3016 	mov	r2,a
      000E1B 74 00            [12] 3017 	mov	a,#0x00
      000E1D 9B               [12] 3018 	subb	a,r3
      000E1E FB               [12] 3019 	mov	r3,a
      000E1F 8C 00            [24] 3020 	mov	ar0,r4
      000E21 79 00            [12] 3021 	mov	r1,#0x00
      000E23 C3               [12] 3022 	clr	c
      000E24 E8               [12] 3023 	mov	a,r0
      000E25 9A               [12] 3024 	subb	a,r2
      000E26 E9               [12] 3025 	mov	a,r1
      000E27 9B               [12] 3026 	subb	a,r3
      000E28 40 03            [24] 3027 	jc	00229$
      000E2A 02 0E 5E         [24] 3028 	ljmp	00124$
      000E2D                       3029 00229$:
                                   3030 ;	../osal/common/OSAL.c:376: strcat((char*)buf, "0");
      000E2D 8D 01            [24] 3031 	mov	ar1,r5
      000E2F 8E 02            [24] 3032 	mov	ar2,r6
      000E31 8F 03            [24] 3033 	mov	ar3,r7
      000E33 90 12 24         [24] 3034 	mov	dptr,#_strcat_PARM_2
      000E36 74 8D            [12] 3035 	mov	a,#___str_3
      000E38 F0               [24] 3036 	movx	@dptr,a
      000E39 74 5B            [12] 3037 	mov	a,#(___str_3 >> 8)
      000E3B A3               [24] 3038 	inc	dptr
      000E3C F0               [24] 3039 	movx	@dptr,a
      000E3D 74 80            [12] 3040 	mov	a,#0x80
      000E3F A3               [24] 3041 	inc	dptr
      000E40 F0               [24] 3042 	movx	@dptr,a
      000E41 89 82            [24] 3043 	mov	dpl,r1
      000E43 8A 83            [24] 3044 	mov	dph,r2
      000E45 8B F0            [24] 3045 	mov	b,r3
      000E47 C0 07            [24] 3046 	push	ar7
      000E49 C0 06            [24] 3047 	push	ar6
      000E4B C0 05            [24] 3048 	push	ar5
      000E4D C0 04            [24] 3049 	push	ar4
      000E4F 12 59 93         [24] 3050 	lcall	_strcat
      000E52 D0 04            [24] 3051 	pop	ar4
      000E54 D0 05            [24] 3052 	pop	ar5
      000E56 D0 06            [24] 3053 	pop	ar6
      000E58 D0 07            [24] 3054 	pop	ar7
                                   3055 ;	../osal/common/OSAL.c:375: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
      000E5A 0C               [12] 3056 	inc	r4
      000E5B 02 0D F6         [24] 3057 	ljmp	00141$
      000E5E                       3058 00124$:
                                   3059 ;	../osal/common/OSAL.c:378: strcat((char*)buf, (char const*)tmp1);
      000E5E 90 03 4B         [24] 3060 	mov	dptr,#__ltoa_PARM_2
      000E61 E0               [24] 3061 	movx	a,@dptr
      000E62 FD               [12] 3062 	mov	r5,a
      000E63 A3               [24] 3063 	inc	dptr
      000E64 E0               [24] 3064 	movx	a,@dptr
      000E65 FE               [12] 3065 	mov	r6,a
      000E66 A3               [24] 3066 	inc	dptr
      000E67 E0               [24] 3067 	movx	a,@dptr
      000E68 FF               [12] 3068 	mov	r7,a
      000E69 90 12 24         [24] 3069 	mov	dptr,#_strcat_PARM_2
      000E6C 74 53            [12] 3070 	mov	a,#__ltoa_tmp1_1_130
      000E6E F0               [24] 3071 	movx	@dptr,a
      000E6F 74 03            [12] 3072 	mov	a,#(__ltoa_tmp1_1_130 >> 8)
      000E71 A3               [24] 3073 	inc	dptr
      000E72 F0               [24] 3074 	movx	@dptr,a
      000E73 74 00            [12] 3075 	mov	a,#0x00
      000E75 A3               [24] 3076 	inc	dptr
      000E76 F0               [24] 3077 	movx	@dptr,a
      000E77 8D 82            [24] 3078 	mov	dpl,r5
      000E79 8E 83            [24] 3079 	mov	dph,r6
      000E7B 8F F0            [24] 3080 	mov	b,r7
      000E7D 12 59 93         [24] 3081 	lcall	_strcat
                                   3082 ;	../osal/common/OSAL.c:379: if (!num2 && !num1)
      000E80 90 03 73         [24] 3083 	mov	dptr,#__ltoa_num2_1_130
      000E83 E0               [24] 3084 	movx	a,@dptr
      000E84 FE               [12] 3085 	mov	r6,a
      000E85 A3               [24] 3086 	inc	dptr
      000E86 E0               [24] 3087 	movx	a,@dptr
      000E87 FF               [12] 3088 	mov	r7,a
      000E88 EE               [12] 3089 	mov	a,r6
      000E89 4F               [12] 3090 	orl	a,r7
      000E8A 60 03            [24] 3091 	jz	00230$
      000E8C 02 0E CF         [24] 3092 	ljmp	00133$
      000E8F                       3093 00230$:
      000E8F 90 03 71         [24] 3094 	mov	dptr,#__ltoa_num1_1_130
      000E92 E0               [24] 3095 	movx	a,@dptr
      000E93 FE               [12] 3096 	mov	r6,a
      000E94 A3               [24] 3097 	inc	dptr
      000E95 E0               [24] 3098 	movx	a,@dptr
      000E96 FF               [12] 3099 	mov	r7,a
      000E97 EE               [12] 3100 	mov	a,r6
      000E98 4F               [12] 3101 	orl	a,r7
      000E99 60 03            [24] 3102 	jz	00231$
      000E9B 02 0E CF         [24] 3103 	ljmp	00133$
      000E9E                       3104 00231$:
                                   3105 ;	../osal/common/OSAL.c:380: strcpy((char*)buf, "0");
      000E9E 90 03 4B         [24] 3106 	mov	dptr,#__ltoa_PARM_2
      000EA1 E0               [24] 3107 	movx	a,@dptr
      000EA2 FD               [12] 3108 	mov	r5,a
      000EA3 A3               [24] 3109 	inc	dptr
      000EA4 E0               [24] 3110 	movx	a,@dptr
      000EA5 FE               [12] 3111 	mov	r6,a
      000EA6 A3               [24] 3112 	inc	dptr
      000EA7 E0               [24] 3113 	movx	a,@dptr
      000EA8 FF               [12] 3114 	mov	r7,a
      000EA9 90 12 02         [24] 3115 	mov	dptr,#_strcpy_PARM_2
      000EAC 74 8D            [12] 3116 	mov	a,#___str_3
      000EAE F0               [24] 3117 	movx	@dptr,a
      000EAF 74 5B            [12] 3118 	mov	a,#(___str_3 >> 8)
      000EB1 A3               [24] 3119 	inc	dptr
      000EB2 F0               [24] 3120 	movx	@dptr,a
      000EB3 74 80            [12] 3121 	mov	a,#0x80
      000EB5 A3               [24] 3122 	inc	dptr
      000EB6 F0               [24] 3123 	movx	@dptr,a
      000EB7 8D 82            [24] 3124 	mov	dpl,r5
      000EB9 8E 83            [24] 3125 	mov	dph,r6
      000EBB 8F F0            [24] 3126 	mov	b,r7
      000EBD 12 56 36         [24] 3127 	lcall	_strcpy
      000EC0 02 0E CF         [24] 3128 	ljmp	00133$
      000EC3                       3129 00129$:
                                   3130 ;	../osal/common/OSAL.c:383: return NULL;
      000EC3 75 82 00         [24] 3131 	mov	dpl,#0x00
      000EC6 75 83 00         [24] 3132 	mov	dph,#0x00
      000EC9 75 F0 00         [24] 3133 	mov	b,#0x00
      000ECC 02 0E E0         [24] 3134 	ljmp	00143$
      000ECF                       3135 00133$:
                                   3136 ;	../osal/common/OSAL.c:385: return buf;
      000ECF 90 03 4B         [24] 3137 	mov	dptr,#__ltoa_PARM_2
      000ED2 E0               [24] 3138 	movx	a,@dptr
      000ED3 FD               [12] 3139 	mov	r5,a
      000ED4 A3               [24] 3140 	inc	dptr
      000ED5 E0               [24] 3141 	movx	a,@dptr
      000ED6 FE               [12] 3142 	mov	r6,a
      000ED7 A3               [24] 3143 	inc	dptr
      000ED8 E0               [24] 3144 	movx	a,@dptr
      000ED9 FF               [12] 3145 	mov	r7,a
      000EDA 8D 82            [24] 3146 	mov	dpl,r5
      000EDC 8E 83            [24] 3147 	mov	dph,r6
      000EDE 8F F0            [24] 3148 	mov	b,r7
      000EE0                       3149 00143$:
      000EE0 22               [24] 3150 	ret
                                   3151 ;------------------------------------------------------------
                                   3152 ;Allocation info for local variables in function 'osal_rand'
                                   3153 ;------------------------------------------------------------
                                   3154 ;	../osal/common/OSAL.c:400: uint16 osal_rand( void )
                                   3155 ;	-----------------------------------------
                                   3156 ;	 function osal_rand
                                   3157 ;	-----------------------------------------
      000EE1                       3158 _osal_rand:
                                   3159 ;	../osal/common/OSAL.c:404: }
      000EE1                       3160 00101$:
      000EE1 22               [24] 3161 	ret
                                   3162 ;------------------------------------------------------------
                                   3163 ;Allocation info for local variables in function 'osal_msg_allocate'
                                   3164 ;------------------------------------------------------------
                                   3165 ;len                       Allocated with name '_osal_msg_allocate_len_1_138'
                                   3166 ;hdr                       Allocated with name '_osal_msg_allocate_hdr_1_139'
                                   3167 ;------------------------------------------------------------
                                   3168 ;	../osal/common/OSAL.c:432: uint8 * osal_msg_allocate( uint16 len )
                                   3169 ;	-----------------------------------------
                                   3170 ;	 function osal_msg_allocate
                                   3171 ;	-----------------------------------------
      000EE2                       3172 _osal_msg_allocate:
      000EE2 AF 83            [24] 3173 	mov	r7,dph
      000EE4 E5 82            [12] 3174 	mov	a,dpl
      000EE6 90 03 78         [24] 3175 	mov	dptr,#_osal_msg_allocate_len_1_138
      000EE9 F0               [24] 3176 	movx	@dptr,a
      000EEA EF               [12] 3177 	mov	a,r7
      000EEB A3               [24] 3178 	inc	dptr
      000EEC F0               [24] 3179 	movx	@dptr,a
                                   3180 ;	../osal/common/OSAL.c:436: if ( len == 0 )
      000EED 90 03 78         [24] 3181 	mov	dptr,#_osal_msg_allocate_len_1_138
      000EF0 E0               [24] 3182 	movx	a,@dptr
      000EF1 FE               [12] 3183 	mov	r6,a
      000EF2 A3               [24] 3184 	inc	dptr
      000EF3 E0               [24] 3185 	movx	a,@dptr
      000EF4 FF               [12] 3186 	mov	r7,a
      000EF5 EE               [12] 3187 	mov	a,r6
      000EF6 4F               [12] 3188 	orl	a,r7
      000EF7 60 03            [24] 3189 	jz	00114$
      000EF9 02 0F 08         [24] 3190 	ljmp	00102$
      000EFC                       3191 00114$:
                                   3192 ;	../osal/common/OSAL.c:437: return ( NULL );
      000EFC 75 82 00         [24] 3193 	mov	dpl,#0x00
      000EFF 75 83 00         [24] 3194 	mov	dph,#0x00
      000F02 75 F0 00         [24] 3195 	mov	b,#0x00
      000F05 02 0F A5         [24] 3196 	ljmp	00106$
      000F08                       3197 00102$:
                                   3198 ;	../osal/common/OSAL.c:439: hdr = (osal_msg_hdr_t *) osal_mem_alloc( (short)(len + sizeof( osal_msg_hdr_t )) );
      000F08 90 03 78         [24] 3199 	mov	dptr,#_osal_msg_allocate_len_1_138
      000F0B E0               [24] 3200 	movx	a,@dptr
      000F0C FE               [12] 3201 	mov	r6,a
      000F0D A3               [24] 3202 	inc	dptr
      000F0E E0               [24] 3203 	movx	a,@dptr
      000F0F FF               [12] 3204 	mov	r7,a
      000F10 74 06            [12] 3205 	mov	a,#0x06
      000F12 2E               [12] 3206 	add	a,r6
      000F13 FE               [12] 3207 	mov	r6,a
      000F14 74 00            [12] 3208 	mov	a,#0x00
      000F16 3F               [12] 3209 	addc	a,r7
      000F17 FF               [12] 3210 	mov	r7,a
      000F18 8E 82            [24] 3211 	mov	dpl,r6
      000F1A 8F 83            [24] 3212 	mov	dph,r7
      000F1C 12 20 2A         [24] 3213 	lcall	_osal_mem_alloc
      000F1F AD 82            [24] 3214 	mov	r5,dpl
      000F21 AE 83            [24] 3215 	mov	r6,dph
      000F23 AF F0            [24] 3216 	mov	r7,b
      000F25 90 03 7A         [24] 3217 	mov	dptr,#_osal_msg_allocate_hdr_1_139
      000F28 ED               [12] 3218 	mov	a,r5
      000F29 F0               [24] 3219 	movx	@dptr,a
      000F2A EE               [12] 3220 	mov	a,r6
      000F2B A3               [24] 3221 	inc	dptr
      000F2C F0               [24] 3222 	movx	@dptr,a
      000F2D EF               [12] 3223 	mov	a,r7
      000F2E A3               [24] 3224 	inc	dptr
      000F2F F0               [24] 3225 	movx	@dptr,a
                                   3226 ;	../osal/common/OSAL.c:440: if ( hdr )
      000F30 ED               [12] 3227 	mov	a,r5
      000F31 4E               [12] 3228 	orl	a,r6
      000F32 70 03            [24] 3229 	jnz	00115$
      000F34 02 0F 9C         [24] 3230 	ljmp	00104$
      000F37                       3231 00115$:
                                   3232 ;	../osal/common/OSAL.c:442: hdr->next = NULL;
      000F37 90 03 7A         [24] 3233 	mov	dptr,#_osal_msg_allocate_hdr_1_139
      000F3A E0               [24] 3234 	movx	a,@dptr
      000F3B FD               [12] 3235 	mov	r5,a
      000F3C A3               [24] 3236 	inc	dptr
      000F3D E0               [24] 3237 	movx	a,@dptr
      000F3E FE               [12] 3238 	mov	r6,a
      000F3F A3               [24] 3239 	inc	dptr
      000F40 E0               [24] 3240 	movx	a,@dptr
      000F41 FF               [12] 3241 	mov	r7,a
      000F42 8D 82            [24] 3242 	mov	dpl,r5
      000F44 8E 83            [24] 3243 	mov	dph,r6
      000F46 8F F0            [24] 3244 	mov	b,r7
      000F48 74 00            [12] 3245 	mov	a,#0x00
      000F4A 12 5A 01         [24] 3246 	lcall	__gptrput
      000F4D A3               [24] 3247 	inc	dptr
      000F4E 12 5A 01         [24] 3248 	lcall	__gptrput
      000F51 A3               [24] 3249 	inc	dptr
      000F52 12 5A 01         [24] 3250 	lcall	__gptrput
                                   3251 ;	../osal/common/OSAL.c:443: hdr->len = len;
      000F55 74 03            [12] 3252 	mov	a,#0x03
      000F57 2D               [12] 3253 	add	a,r5
      000F58 FA               [12] 3254 	mov	r2,a
      000F59 74 00            [12] 3255 	mov	a,#0x00
      000F5B 3E               [12] 3256 	addc	a,r6
      000F5C FB               [12] 3257 	mov	r3,a
      000F5D 8F 04            [24] 3258 	mov	ar4,r7
      000F5F 90 03 78         [24] 3259 	mov	dptr,#_osal_msg_allocate_len_1_138
      000F62 E0               [24] 3260 	movx	a,@dptr
      000F63 F8               [12] 3261 	mov	r0,a
      000F64 A3               [24] 3262 	inc	dptr
      000F65 E0               [24] 3263 	movx	a,@dptr
      000F66 F9               [12] 3264 	mov	r1,a
      000F67 8A 82            [24] 3265 	mov	dpl,r2
      000F69 8B 83            [24] 3266 	mov	dph,r3
      000F6B 8C F0            [24] 3267 	mov	b,r4
      000F6D E8               [12] 3268 	mov	a,r0
      000F6E 12 5A 01         [24] 3269 	lcall	__gptrput
      000F71 A3               [24] 3270 	inc	dptr
      000F72 E9               [12] 3271 	mov	a,r1
      000F73 12 5A 01         [24] 3272 	lcall	__gptrput
                                   3273 ;	../osal/common/OSAL.c:444: hdr->dest_id = TASK_NO_TASK;
      000F76 74 05            [12] 3274 	mov	a,#0x05
      000F78 2D               [12] 3275 	add	a,r5
      000F79 FA               [12] 3276 	mov	r2,a
      000F7A 74 00            [12] 3277 	mov	a,#0x00
      000F7C 3E               [12] 3278 	addc	a,r6
      000F7D FB               [12] 3279 	mov	r3,a
      000F7E 8F 04            [24] 3280 	mov	ar4,r7
      000F80 8A 82            [24] 3281 	mov	dpl,r2
      000F82 8B 83            [24] 3282 	mov	dph,r3
      000F84 8C F0            [24] 3283 	mov	b,r4
      000F86 74 FF            [12] 3284 	mov	a,#0xFF
      000F88 12 5A 01         [24] 3285 	lcall	__gptrput
                                   3286 ;	../osal/common/OSAL.c:445: return ( (uint8 *) (hdr + 1) );
      000F8B 74 06            [12] 3287 	mov	a,#0x06
      000F8D 2D               [12] 3288 	add	a,r5
      000F8E FD               [12] 3289 	mov	r5,a
      000F8F 74 00            [12] 3290 	mov	a,#0x00
      000F91 3E               [12] 3291 	addc	a,r6
      000F92 FE               [12] 3292 	mov	r6,a
      000F93 8D 82            [24] 3293 	mov	dpl,r5
      000F95 8E 83            [24] 3294 	mov	dph,r6
      000F97 8F F0            [24] 3295 	mov	b,r7
      000F99 02 0F A5         [24] 3296 	ljmp	00106$
      000F9C                       3297 00104$:
                                   3298 ;	../osal/common/OSAL.c:448: return ( NULL );
      000F9C 75 82 00         [24] 3299 	mov	dpl,#0x00
      000F9F 75 83 00         [24] 3300 	mov	dph,#0x00
      000FA2 75 F0 00         [24] 3301 	mov	b,#0x00
      000FA5                       3302 00106$:
      000FA5 22               [24] 3303 	ret
                                   3304 ;------------------------------------------------------------
                                   3305 ;Allocation info for local variables in function 'osal_msg_deallocate'
                                   3306 ;------------------------------------------------------------
                                   3307 ;msg_ptr                   Allocated with name '_osal_msg_deallocate_msg_ptr_1_141'
                                   3308 ;x                         Allocated with name '_osal_msg_deallocate_x_1_142'
                                   3309 ;------------------------------------------------------------
                                   3310 ;	../osal/common/OSAL.c:465: uint8 osal_msg_deallocate( uint8 *msg_ptr )
                                   3311 ;	-----------------------------------------
                                   3312 ;	 function osal_msg_deallocate
                                   3313 ;	-----------------------------------------
      000FA6                       3314 _osal_msg_deallocate:
      000FA6 AF F0            [24] 3315 	mov	r7,b
      000FA8 AE 83            [24] 3316 	mov	r6,dph
      000FAA E5 82            [12] 3317 	mov	a,dpl
      000FAC 90 03 7D         [24] 3318 	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
      000FAF F0               [24] 3319 	movx	@dptr,a
      000FB0 EE               [12] 3320 	mov	a,r6
      000FB1 A3               [24] 3321 	inc	dptr
      000FB2 F0               [24] 3322 	movx	@dptr,a
      000FB3 EF               [12] 3323 	mov	a,r7
      000FB4 A3               [24] 3324 	inc	dptr
      000FB5 F0               [24] 3325 	movx	@dptr,a
                                   3326 ;	../osal/common/OSAL.c:469: if ( msg_ptr == NULL )
      000FB6 90 03 7D         [24] 3327 	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
      000FB9 E0               [24] 3328 	movx	a,@dptr
      000FBA FD               [12] 3329 	mov	r5,a
      000FBB A3               [24] 3330 	inc	dptr
      000FBC E0               [24] 3331 	movx	a,@dptr
      000FBD FE               [12] 3332 	mov	r6,a
      000FBE A3               [24] 3333 	inc	dptr
      000FBF E0               [24] 3334 	movx	a,@dptr
      000FC0 FF               [12] 3335 	mov	r7,a
      000FC1 ED               [12] 3336 	mov	a,r5
      000FC2 4E               [12] 3337 	orl	a,r6
      000FC3 60 03            [24] 3338 	jz	00113$
      000FC5 02 0F CE         [24] 3339 	ljmp	00102$
      000FC8                       3340 00113$:
                                   3341 ;	../osal/common/OSAL.c:470: return ( INVALID_MSG_POINTER );
      000FC8 75 82 05         [24] 3342 	mov	dpl,#0x05
      000FCB 02 10 16         [24] 3343 	ljmp	00105$
      000FCE                       3344 00102$:
                                   3345 ;	../osal/common/OSAL.c:473: if ( OSAL_MSG_ID( msg_ptr ) != TASK_NO_TASK )
      000FCE 90 03 7D         [24] 3346 	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
      000FD1 E0               [24] 3347 	movx	a,@dptr
      000FD2 FD               [12] 3348 	mov	r5,a
      000FD3 A3               [24] 3349 	inc	dptr
      000FD4 E0               [24] 3350 	movx	a,@dptr
      000FD5 FE               [12] 3351 	mov	r6,a
      000FD6 A3               [24] 3352 	inc	dptr
      000FD7 E0               [24] 3353 	movx	a,@dptr
      000FD8 FF               [12] 3354 	mov	r7,a
      000FD9 74 FF            [12] 3355 	mov	a,#0xFF
      000FDB 2D               [12] 3356 	add	a,r5
      000FDC FD               [12] 3357 	mov	r5,a
      000FDD 74 FF            [12] 3358 	mov	a,#0xFF
      000FDF 3E               [12] 3359 	addc	a,r6
      000FE0 FE               [12] 3360 	mov	r6,a
      000FE1 8D 82            [24] 3361 	mov	dpl,r5
      000FE3 8E 83            [24] 3362 	mov	dph,r6
      000FE5 8F F0            [24] 3363 	mov	b,r7
      000FE7 12 5B 6D         [24] 3364 	lcall	__gptrget
      000FEA FD               [12] 3365 	mov	r5,a
      000FEB BD FF 03         [24] 3366 	cjne	r5,#0xFF,00114$
      000FEE 02 0F F7         [24] 3367 	ljmp	00104$
      000FF1                       3368 00114$:
                                   3369 ;	../osal/common/OSAL.c:474: return ( MSG_BUFFER_NOT_AVAIL );
      000FF1 75 82 04         [24] 3370 	mov	dpl,#0x04
      000FF4 02 10 16         [24] 3371 	ljmp	00105$
      000FF7                       3372 00104$:
                                   3373 ;	../osal/common/OSAL.c:476: x = (uint8 *)((uint8 *)msg_ptr - sizeof( osal_msg_hdr_t ));
      000FF7 90 03 7D         [24] 3374 	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
      000FFA E0               [24] 3375 	movx	a,@dptr
      000FFB FD               [12] 3376 	mov	r5,a
      000FFC A3               [24] 3377 	inc	dptr
      000FFD E0               [24] 3378 	movx	a,@dptr
      000FFE FE               [12] 3379 	mov	r6,a
      000FFF A3               [24] 3380 	inc	dptr
      001000 E0               [24] 3381 	movx	a,@dptr
      001001 FF               [12] 3382 	mov	r7,a
      001002 ED               [12] 3383 	mov	a,r5
      001003 24 FA            [12] 3384 	add	a,#0xFA
      001005 FD               [12] 3385 	mov	r5,a
      001006 EE               [12] 3386 	mov	a,r6
      001007 34 FF            [12] 3387 	addc	a,#0xFF
      001009 FE               [12] 3388 	mov	r6,a
                                   3389 ;	../osal/common/OSAL.c:478: osal_mem_free( (void *)x );
      00100A 8D 82            [24] 3390 	mov	dpl,r5
      00100C 8E 83            [24] 3391 	mov	dph,r6
      00100E 8F F0            [24] 3392 	mov	b,r7
      001010 12 23 76         [24] 3393 	lcall	_osal_mem_free
                                   3394 ;	../osal/common/OSAL.c:480: return ( SUCCESS );
      001013 75 82 00         [24] 3395 	mov	dpl,#0x00
      001016                       3396 00105$:
      001016 22               [24] 3397 	ret
                                   3398 ;------------------------------------------------------------
                                   3399 ;Allocation info for local variables in function 'osal_msg_send'
                                   3400 ;------------------------------------------------------------
                                   3401 ;msg_ptr                   Allocated with name '_osal_msg_send_PARM_2'
                                   3402 ;destination_task          Allocated with name '_osal_msg_send_destination_task_1_143'
                                   3403 ;------------------------------------------------------------
                                   3404 ;	../osal/common/OSAL.c:500: uint8 osal_msg_send( uint8 destination_task, uint8 *msg_ptr )
                                   3405 ;	-----------------------------------------
                                   3406 ;	 function osal_msg_send
                                   3407 ;	-----------------------------------------
      001017                       3408 _osal_msg_send:
      001017 E5 82            [12] 3409 	mov	a,dpl
      001019 90 03 83         [24] 3410 	mov	dptr,#_osal_msg_send_destination_task_1_143
      00101C F0               [24] 3411 	movx	@dptr,a
                                   3412 ;	../osal/common/OSAL.c:502: return ( osal_msg_enqueue_push( destination_task, msg_ptr, FALSE ) );
      00101D E0               [24] 3413 	movx	a,@dptr
      00101E FF               [12] 3414 	mov	r7,a
      00101F 90 03 80         [24] 3415 	mov	dptr,#_osal_msg_send_PARM_2
      001022 E0               [24] 3416 	movx	a,@dptr
      001023 FC               [12] 3417 	mov	r4,a
      001024 A3               [24] 3418 	inc	dptr
      001025 E0               [24] 3419 	movx	a,@dptr
      001026 FD               [12] 3420 	mov	r5,a
      001027 A3               [24] 3421 	inc	dptr
      001028 E0               [24] 3422 	movx	a,@dptr
      001029 FE               [12] 3423 	mov	r6,a
      00102A 90 03 88         [24] 3424 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      00102D EC               [12] 3425 	mov	a,r4
      00102E F0               [24] 3426 	movx	@dptr,a
      00102F ED               [12] 3427 	mov	a,r5
      001030 A3               [24] 3428 	inc	dptr
      001031 F0               [24] 3429 	movx	@dptr,a
      001032 EE               [12] 3430 	mov	a,r6
      001033 A3               [24] 3431 	inc	dptr
      001034 F0               [24] 3432 	movx	@dptr,a
      001035 90 03 8B         [24] 3433 	mov	dptr,#_osal_msg_enqueue_push_PARM_3
      001038 74 00            [12] 3434 	mov	a,#0x00
      00103A F0               [24] 3435 	movx	@dptr,a
      00103B 8F 82            [24] 3436 	mov	dpl,r7
      00103D 12 10 73         [24] 3437 	lcall	_osal_msg_enqueue_push
      001040 AF 82            [24] 3438 	mov	r7,dpl
      001042 8F 82            [24] 3439 	mov	dpl,r7
      001044                       3440 00101$:
      001044 22               [24] 3441 	ret
                                   3442 ;------------------------------------------------------------
                                   3443 ;Allocation info for local variables in function 'osal_msg_push_front'
                                   3444 ;------------------------------------------------------------
                                   3445 ;msg_ptr                   Allocated with name '_osal_msg_push_front_PARM_2'
                                   3446 ;destination_task          Allocated with name '_osal_msg_push_front_destination_task_1_145'
                                   3447 ;------------------------------------------------------------
                                   3448 ;	../osal/common/OSAL.c:521: uint8 osal_msg_push_front( uint8 destination_task, uint8 *msg_ptr )
                                   3449 ;	-----------------------------------------
                                   3450 ;	 function osal_msg_push_front
                                   3451 ;	-----------------------------------------
      001045                       3452 _osal_msg_push_front:
      001045 E5 82            [12] 3453 	mov	a,dpl
      001047 90 03 87         [24] 3454 	mov	dptr,#_osal_msg_push_front_destination_task_1_145
      00104A F0               [24] 3455 	movx	@dptr,a
                                   3456 ;	../osal/common/OSAL.c:523: return ( osal_msg_enqueue_push( destination_task, msg_ptr, TRUE ) );
      00104B E0               [24] 3457 	movx	a,@dptr
      00104C FF               [12] 3458 	mov	r7,a
      00104D 90 03 84         [24] 3459 	mov	dptr,#_osal_msg_push_front_PARM_2
      001050 E0               [24] 3460 	movx	a,@dptr
      001051 FC               [12] 3461 	mov	r4,a
      001052 A3               [24] 3462 	inc	dptr
      001053 E0               [24] 3463 	movx	a,@dptr
      001054 FD               [12] 3464 	mov	r5,a
      001055 A3               [24] 3465 	inc	dptr
      001056 E0               [24] 3466 	movx	a,@dptr
      001057 FE               [12] 3467 	mov	r6,a
      001058 90 03 88         [24] 3468 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      00105B EC               [12] 3469 	mov	a,r4
      00105C F0               [24] 3470 	movx	@dptr,a
      00105D ED               [12] 3471 	mov	a,r5
      00105E A3               [24] 3472 	inc	dptr
      00105F F0               [24] 3473 	movx	@dptr,a
      001060 EE               [12] 3474 	mov	a,r6
      001061 A3               [24] 3475 	inc	dptr
      001062 F0               [24] 3476 	movx	@dptr,a
      001063 90 03 8B         [24] 3477 	mov	dptr,#_osal_msg_enqueue_push_PARM_3
      001066 74 01            [12] 3478 	mov	a,#0x01
      001068 F0               [24] 3479 	movx	@dptr,a
      001069 8F 82            [24] 3480 	mov	dpl,r7
      00106B 12 10 73         [24] 3481 	lcall	_osal_msg_enqueue_push
      00106E AF 82            [24] 3482 	mov	r7,dpl
      001070 8F 82            [24] 3483 	mov	dpl,r7
      001072                       3484 00101$:
      001072 22               [24] 3485 	ret
                                   3486 ;------------------------------------------------------------
                                   3487 ;Allocation info for local variables in function 'osal_msg_enqueue_push'
                                   3488 ;------------------------------------------------------------
                                   3489 ;msg_ptr                   Allocated with name '_osal_msg_enqueue_push_PARM_2'
                                   3490 ;push                      Allocated with name '_osal_msg_enqueue_push_PARM_3'
                                   3491 ;destination_task          Allocated with name '_osal_msg_enqueue_push_destination_task_1_147'
                                   3492 ;------------------------------------------------------------
                                   3493 ;	../osal/common/OSAL.c:544: static uint8 osal_msg_enqueue_push( uint8 destination_task, uint8 *msg_ptr, uint8 push )
                                   3494 ;	-----------------------------------------
                                   3495 ;	 function osal_msg_enqueue_push
                                   3496 ;	-----------------------------------------
      001073                       3497 _osal_msg_enqueue_push:
      001073 E5 82            [12] 3498 	mov	a,dpl
      001075 90 03 8C         [24] 3499 	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
      001078 F0               [24] 3500 	movx	@dptr,a
                                   3501 ;	../osal/common/OSAL.c:546: if ( msg_ptr == NULL )
      001079 90 03 88         [24] 3502 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      00107C E0               [24] 3503 	movx	a,@dptr
      00107D FD               [12] 3504 	mov	r5,a
      00107E A3               [24] 3505 	inc	dptr
      00107F E0               [24] 3506 	movx	a,@dptr
      001080 FE               [12] 3507 	mov	r6,a
      001081 A3               [24] 3508 	inc	dptr
      001082 E0               [24] 3509 	movx	a,@dptr
      001083 FF               [12] 3510 	mov	r7,a
      001084 ED               [12] 3511 	mov	a,r5
      001085 4E               [12] 3512 	orl	a,r6
      001086 60 03            [24] 3513 	jz	00125$
      001088 02 10 91         [24] 3514 	ljmp	00102$
      00108B                       3515 00125$:
                                   3516 ;	../osal/common/OSAL.c:548: return ( INVALID_MSG_POINTER );
      00108B 75 82 05         [24] 3517 	mov	dpl,#0x05
      00108E 02 11 B6         [24] 3518 	ljmp	00111$
      001091                       3519 00102$:
                                   3520 ;	../osal/common/OSAL.c:551: if ( destination_task >= tasksCnt )
      001091 90 03 8C         [24] 3521 	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
      001094 E0               [24] 3522 	movx	a,@dptr
      001095 FF               [12] 3523 	mov	r7,a
      001096 90 5B 99         [24] 3524 	mov	dptr,#_tasksCnt
      001099 E4               [12] 3525 	clr	a
      00109A 93               [24] 3526 	movc	a,@a+dptr
      00109B FE               [12] 3527 	mov	r6,a
      00109C C3               [12] 3528 	clr	c
      00109D EF               [12] 3529 	mov	a,r7
      00109E 9E               [12] 3530 	subb	a,r6
      00109F 50 03            [24] 3531 	jnc	00126$
      0010A1 02 10 BE         [24] 3532 	ljmp	00104$
      0010A4                       3533 00126$:
                                   3534 ;	../osal/common/OSAL.c:553: osal_msg_deallocate( msg_ptr );
      0010A4 90 03 88         [24] 3535 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      0010A7 E0               [24] 3536 	movx	a,@dptr
      0010A8 FD               [12] 3537 	mov	r5,a
      0010A9 A3               [24] 3538 	inc	dptr
      0010AA E0               [24] 3539 	movx	a,@dptr
      0010AB FE               [12] 3540 	mov	r6,a
      0010AC A3               [24] 3541 	inc	dptr
      0010AD E0               [24] 3542 	movx	a,@dptr
      0010AE FF               [12] 3543 	mov	r7,a
      0010AF 8D 82            [24] 3544 	mov	dpl,r5
      0010B1 8E 83            [24] 3545 	mov	dph,r6
      0010B3 8F F0            [24] 3546 	mov	b,r7
      0010B5 12 0F A6         [24] 3547 	lcall	_osal_msg_deallocate
                                   3548 ;	../osal/common/OSAL.c:554: return ( INVALID_TASK );
      0010B8 75 82 03         [24] 3549 	mov	dpl,#0x03
      0010BB 02 11 B6         [24] 3550 	ljmp	00111$
      0010BE                       3551 00104$:
                                   3552 ;	../osal/common/OSAL.c:558: if ( OSAL_MSG_NEXT( msg_ptr ) != NULL ||
      0010BE 90 03 88         [24] 3553 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      0010C1 E0               [24] 3554 	movx	a,@dptr
      0010C2 FD               [12] 3555 	mov	r5,a
      0010C3 A3               [24] 3556 	inc	dptr
      0010C4 E0               [24] 3557 	movx	a,@dptr
      0010C5 FE               [12] 3558 	mov	r6,a
      0010C6 A3               [24] 3559 	inc	dptr
      0010C7 E0               [24] 3560 	movx	a,@dptr
      0010C8 FF               [12] 3561 	mov	r7,a
      0010C9 ED               [12] 3562 	mov	a,r5
      0010CA 24 FA            [12] 3563 	add	a,#0xFA
      0010CC FD               [12] 3564 	mov	r5,a
      0010CD EE               [12] 3565 	mov	a,r6
      0010CE 34 FF            [12] 3566 	addc	a,#0xFF
      0010D0 FE               [12] 3567 	mov	r6,a
      0010D1 8D 82            [24] 3568 	mov	dpl,r5
      0010D3 8E 83            [24] 3569 	mov	dph,r6
      0010D5 8F F0            [24] 3570 	mov	b,r7
      0010D7 12 5B 6D         [24] 3571 	lcall	__gptrget
      0010DA FD               [12] 3572 	mov	r5,a
      0010DB A3               [24] 3573 	inc	dptr
      0010DC 12 5B 6D         [24] 3574 	lcall	__gptrget
      0010DF FE               [12] 3575 	mov	r6,a
      0010E0 A3               [24] 3576 	inc	dptr
      0010E1 12 5B 6D         [24] 3577 	lcall	__gptrget
      0010E4 FF               [12] 3578 	mov	r7,a
      0010E5 ED               [12] 3579 	mov	a,r5
      0010E6 4E               [12] 3580 	orl	a,r6
      0010E7 60 03            [24] 3581 	jz	00127$
      0010E9 02 11 0F         [24] 3582 	ljmp	00105$
      0010EC                       3583 00127$:
                                   3584 ;	../osal/common/OSAL.c:559: OSAL_MSG_ID( msg_ptr ) != TASK_NO_TASK )
      0010EC 90 03 88         [24] 3585 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      0010EF E0               [24] 3586 	movx	a,@dptr
      0010F0 FD               [12] 3587 	mov	r5,a
      0010F1 A3               [24] 3588 	inc	dptr
      0010F2 E0               [24] 3589 	movx	a,@dptr
      0010F3 FE               [12] 3590 	mov	r6,a
      0010F4 A3               [24] 3591 	inc	dptr
      0010F5 E0               [24] 3592 	movx	a,@dptr
      0010F6 FF               [12] 3593 	mov	r7,a
      0010F7 74 FF            [12] 3594 	mov	a,#0xFF
      0010F9 2D               [12] 3595 	add	a,r5
      0010FA FD               [12] 3596 	mov	r5,a
      0010FB 74 FF            [12] 3597 	mov	a,#0xFF
      0010FD 3E               [12] 3598 	addc	a,r6
      0010FE FE               [12] 3599 	mov	r6,a
      0010FF 8D 82            [24] 3600 	mov	dpl,r5
      001101 8E 83            [24] 3601 	mov	dph,r6
      001103 8F F0            [24] 3602 	mov	b,r7
      001105 12 5B 6D         [24] 3603 	lcall	__gptrget
      001108 FD               [12] 3604 	mov	r5,a
      001109 BD FF 03         [24] 3605 	cjne	r5,#0xFF,00128$
      00110C 02 11 29         [24] 3606 	ljmp	00106$
      00110F                       3607 00128$:
      00110F                       3608 00105$:
                                   3609 ;	../osal/common/OSAL.c:561: osal_msg_deallocate( msg_ptr );
      00110F 90 03 88         [24] 3610 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      001112 E0               [24] 3611 	movx	a,@dptr
      001113 FD               [12] 3612 	mov	r5,a
      001114 A3               [24] 3613 	inc	dptr
      001115 E0               [24] 3614 	movx	a,@dptr
      001116 FE               [12] 3615 	mov	r6,a
      001117 A3               [24] 3616 	inc	dptr
      001118 E0               [24] 3617 	movx	a,@dptr
      001119 FF               [12] 3618 	mov	r7,a
      00111A 8D 82            [24] 3619 	mov	dpl,r5
      00111C 8E 83            [24] 3620 	mov	dph,r6
      00111E 8F F0            [24] 3621 	mov	b,r7
      001120 12 0F A6         [24] 3622 	lcall	_osal_msg_deallocate
                                   3623 ;	../osal/common/OSAL.c:562: return ( INVALID_MSG_POINTER );
      001123 75 82 05         [24] 3624 	mov	dpl,#0x05
      001126 02 11 B6         [24] 3625 	ljmp	00111$
      001129                       3626 00106$:
                                   3627 ;	../osal/common/OSAL.c:565: OSAL_MSG_ID( msg_ptr ) = destination_task;
      001129 90 03 88         [24] 3628 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      00112C E0               [24] 3629 	movx	a,@dptr
      00112D FD               [12] 3630 	mov	r5,a
      00112E A3               [24] 3631 	inc	dptr
      00112F E0               [24] 3632 	movx	a,@dptr
      001130 FE               [12] 3633 	mov	r6,a
      001131 A3               [24] 3634 	inc	dptr
      001132 E0               [24] 3635 	movx	a,@dptr
      001133 FF               [12] 3636 	mov	r7,a
      001134 74 FF            [12] 3637 	mov	a,#0xFF
      001136 2D               [12] 3638 	add	a,r5
      001137 FD               [12] 3639 	mov	r5,a
      001138 74 FF            [12] 3640 	mov	a,#0xFF
      00113A 3E               [12] 3641 	addc	a,r6
      00113B FE               [12] 3642 	mov	r6,a
      00113C 90 03 8C         [24] 3643 	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
      00113F E0               [24] 3644 	movx	a,@dptr
      001140 FC               [12] 3645 	mov	r4,a
      001141 8D 82            [24] 3646 	mov	dpl,r5
      001143 8E 83            [24] 3647 	mov	dph,r6
      001145 8F F0            [24] 3648 	mov	b,r7
      001147 EC               [12] 3649 	mov	a,r4
      001148 12 5A 01         [24] 3650 	lcall	__gptrput
                                   3651 ;	../osal/common/OSAL.c:567: if ( push == TRUE )
      00114B 90 03 8B         [24] 3652 	mov	dptr,#_osal_msg_enqueue_push_PARM_3
      00114E E0               [24] 3653 	movx	a,@dptr
      00114F FF               [12] 3654 	mov	r7,a
      001150 BF 01 02         [24] 3655 	cjne	r7,#0x01,00129$
      001153 80 03            [24] 3656 	sjmp	00130$
      001155                       3657 00129$:
      001155 02 11 7D         [24] 3658 	ljmp	00109$
      001158                       3659 00130$:
                                   3660 ;	../osal/common/OSAL.c:570: osal_msg_push( &osal_qHead, msg_ptr );
      001158 90 03 88         [24] 3661 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      00115B E0               [24] 3662 	movx	a,@dptr
      00115C FD               [12] 3663 	mov	r5,a
      00115D A3               [24] 3664 	inc	dptr
      00115E E0               [24] 3665 	movx	a,@dptr
      00115F FE               [12] 3666 	mov	r6,a
      001160 A3               [24] 3667 	inc	dptr
      001161 E0               [24] 3668 	movx	a,@dptr
      001162 FF               [12] 3669 	mov	r7,a
      001163 90 03 AF         [24] 3670 	mov	dptr,#_osal_msg_push_PARM_2
      001166 ED               [12] 3671 	mov	a,r5
      001167 F0               [24] 3672 	movx	@dptr,a
      001168 EE               [12] 3673 	mov	a,r6
      001169 A3               [24] 3674 	inc	dptr
      00116A F0               [24] 3675 	movx	@dptr,a
      00116B EF               [12] 3676 	mov	a,r7
      00116C A3               [24] 3677 	inc	dptr
      00116D F0               [24] 3678 	movx	@dptr,a
      00116E 75 82 05         [24] 3679 	mov	dpl,#_osal_qHead
      001171 75 83 03         [24] 3680 	mov	dph,#(_osal_qHead >> 8)
      001174 75 F0 00         [24] 3681 	mov	b,#0x00
      001177 12 16 9D         [24] 3682 	lcall	_osal_msg_push
      00117A 02 11 9F         [24] 3683 	ljmp	00110$
      00117D                       3684 00109$:
                                   3685 ;	../osal/common/OSAL.c:575: osal_msg_enqueue( &osal_qHead, msg_ptr );
      00117D 90 03 88         [24] 3686 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      001180 E0               [24] 3687 	movx	a,@dptr
      001181 FD               [12] 3688 	mov	r5,a
      001182 A3               [24] 3689 	inc	dptr
      001183 E0               [24] 3690 	movx	a,@dptr
      001184 FE               [12] 3691 	mov	r6,a
      001185 A3               [24] 3692 	inc	dptr
      001186 E0               [24] 3693 	movx	a,@dptr
      001187 FF               [12] 3694 	mov	r7,a
      001188 90 03 9E         [24] 3695 	mov	dptr,#_osal_msg_enqueue_PARM_2
      00118B ED               [12] 3696 	mov	a,r5
      00118C F0               [24] 3697 	movx	@dptr,a
      00118D EE               [12] 3698 	mov	a,r6
      00118E A3               [24] 3699 	inc	dptr
      00118F F0               [24] 3700 	movx	@dptr,a
      001190 EF               [12] 3701 	mov	a,r7
      001191 A3               [24] 3702 	inc	dptr
      001192 F0               [24] 3703 	movx	@dptr,a
      001193 75 82 05         [24] 3704 	mov	dpl,#_osal_qHead
      001196 75 83 03         [24] 3705 	mov	dph,#(_osal_qHead >> 8)
      001199 75 F0 00         [24] 3706 	mov	b,#0x00
      00119C 12 14 29         [24] 3707 	lcall	_osal_msg_enqueue
      00119F                       3708 00110$:
                                   3709 ;	../osal/common/OSAL.c:579: osal_set_event( destination_task, SYS_EVENT_MSG );
      00119F 90 03 8C         [24] 3710 	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
      0011A2 E0               [24] 3711 	movx	a,@dptr
      0011A3 FF               [12] 3712 	mov	r7,a
      0011A4 90 03 CB         [24] 3713 	mov	dptr,#_osal_set_event_PARM_2
      0011A7 74 00            [12] 3714 	mov	a,#0x00
      0011A9 F0               [24] 3715 	movx	@dptr,a
      0011AA 74 80            [12] 3716 	mov	a,#0x80
      0011AC A3               [24] 3717 	inc	dptr
      0011AD F0               [24] 3718 	movx	@dptr,a
      0011AE 8F 82            [24] 3719 	mov	dpl,r7
      0011B0 12 19 D8         [24] 3720 	lcall	_osal_set_event
                                   3721 ;	../osal/common/OSAL.c:581: return ( SUCCESS );
      0011B3 75 82 00         [24] 3722 	mov	dpl,#0x00
      0011B6                       3723 00111$:
      0011B6 22               [24] 3724 	ret
                                   3725 ;------------------------------------------------------------
                                   3726 ;Allocation info for local variables in function 'osal_msg_receive'
                                   3727 ;------------------------------------------------------------
                                   3728 ;task_id                   Allocated with name '_osal_msg_receive_task_id_1_154'
                                   3729 ;listHdr                   Allocated with name '_osal_msg_receive_listHdr_1_155'
                                   3730 ;prevHdr                   Allocated with name '_osal_msg_receive_prevHdr_1_155'
                                   3731 ;foundHdr                  Allocated with name '_osal_msg_receive_foundHdr_1_155'
                                   3732 ;intState                  Allocated with name '_osal_msg_receive_intState_1_155'
                                   3733 ;------------------------------------------------------------
                                   3734 ;	../osal/common/OSAL.c:597: uint8 *osal_msg_receive( uint8 task_id )
                                   3735 ;	-----------------------------------------
                                   3736 ;	 function osal_msg_receive
                                   3737 ;	-----------------------------------------
      0011B7                       3738 _osal_msg_receive:
      0011B7 E5 82            [12] 3739 	mov	a,dpl
      0011B9 90 03 8D         [24] 3740 	mov	dptr,#_osal_msg_receive_task_id_1_154
      0011BC F0               [24] 3741 	movx	@dptr,a
                                   3742 ;	../osal/common/OSAL.c:600: osal_msg_hdr_t *prevHdr = NULL;
      0011BD 90 03 91         [24] 3743 	mov	dptr,#_osal_msg_receive_prevHdr_1_155
      0011C0 74 00            [12] 3744 	mov	a,#0x00
      0011C2 F0               [24] 3745 	movx	@dptr,a
      0011C3 A3               [24] 3746 	inc	dptr
      0011C4 F0               [24] 3747 	movx	@dptr,a
      0011C5 A3               [24] 3748 	inc	dptr
      0011C6 F0               [24] 3749 	movx	@dptr,a
                                   3750 ;	../osal/common/OSAL.c:601: osal_msg_hdr_t *foundHdr = NULL;
      0011C7 90 03 94         [24] 3751 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      0011CA F0               [24] 3752 	movx	@dptr,a
      0011CB A3               [24] 3753 	inc	dptr
      0011CC F0               [24] 3754 	movx	@dptr,a
      0011CD A3               [24] 3755 	inc	dptr
      0011CE F0               [24] 3756 	movx	@dptr,a
                                   3757 ;	../osal/common/OSAL.c:605: HAL_ENTER_CRITICAL_SECTION(intState);
      0011CF 90 03 97         [24] 3758 	mov	dptr,#_osal_msg_receive_intState_1_155
      0011D2 A2 AF            [12] 3759 	mov	c,_EA
      0011D4 E4               [12] 3760 	clr	a
      0011D5 33               [12] 3761 	rlc	a
      0011D6 F0               [24] 3762 	movx	@dptr,a
      0011D7 C2 AF            [12] 3763 	clr	_EA
                                   3764 ;	../osal/common/OSAL.c:608: listHdr = osal_qHead;
      0011D9 90 03 05         [24] 3765 	mov	dptr,#_osal_qHead
      0011DC E0               [24] 3766 	movx	a,@dptr
      0011DD FD               [12] 3767 	mov	r5,a
      0011DE A3               [24] 3768 	inc	dptr
      0011DF E0               [24] 3769 	movx	a,@dptr
      0011E0 FE               [12] 3770 	mov	r6,a
      0011E1 A3               [24] 3771 	inc	dptr
      0011E2 E0               [24] 3772 	movx	a,@dptr
      0011E3 FF               [12] 3773 	mov	r7,a
      0011E4 90 03 8E         [24] 3774 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      0011E7 ED               [12] 3775 	mov	a,r5
      0011E8 F0               [24] 3776 	movx	@dptr,a
      0011E9 EE               [12] 3777 	mov	a,r6
      0011EA A3               [24] 3778 	inc	dptr
      0011EB F0               [24] 3779 	movx	@dptr,a
      0011EC EF               [12] 3780 	mov	a,r7
      0011ED A3               [24] 3781 	inc	dptr
      0011EE F0               [24] 3782 	movx	@dptr,a
                                   3783 ;	../osal/common/OSAL.c:611: while ( listHdr != NULL )
      0011EF 90 03 8D         [24] 3784 	mov	dptr,#_osal_msg_receive_task_id_1_154
      0011F2 E0               [24] 3785 	movx	a,@dptr
      0011F3 FF               [12] 3786 	mov	r7,a
      0011F4                       3787 00114$:
      0011F4 90 03 8E         [24] 3788 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      0011F7 E0               [24] 3789 	movx	a,@dptr
      0011F8 FC               [12] 3790 	mov	r4,a
      0011F9 A3               [24] 3791 	inc	dptr
      0011FA E0               [24] 3792 	movx	a,@dptr
      0011FB FD               [12] 3793 	mov	r5,a
      0011FC A3               [24] 3794 	inc	dptr
      0011FD E0               [24] 3795 	movx	a,@dptr
      0011FE FE               [12] 3796 	mov	r6,a
      0011FF EC               [12] 3797 	mov	a,r4
      001200 4D               [12] 3798 	orl	a,r5
      001201 70 03            [24] 3799 	jnz	00148$
      001203 02 12 B1         [24] 3800 	ljmp	00116$
      001206                       3801 00148$:
                                   3802 ;	../osal/common/OSAL.c:613: if ( (listHdr - 1)->dest_id == task_id )
      001206 90 03 8E         [24] 3803 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      001209 E0               [24] 3804 	movx	a,@dptr
      00120A FC               [12] 3805 	mov	r4,a
      00120B A3               [24] 3806 	inc	dptr
      00120C E0               [24] 3807 	movx	a,@dptr
      00120D FD               [12] 3808 	mov	r5,a
      00120E A3               [24] 3809 	inc	dptr
      00120F E0               [24] 3810 	movx	a,@dptr
      001210 FE               [12] 3811 	mov	r6,a
      001211 74 FF            [12] 3812 	mov	a,#0xFF
      001213 2C               [12] 3813 	add	a,r4
      001214 FC               [12] 3814 	mov	r4,a
      001215 74 FF            [12] 3815 	mov	a,#0xFF
      001217 3D               [12] 3816 	addc	a,r5
      001218 FD               [12] 3817 	mov	r5,a
      001219 8C 82            [24] 3818 	mov	dpl,r4
      00121B 8D 83            [24] 3819 	mov	dph,r5
      00121D 8E F0            [24] 3820 	mov	b,r6
      00121F 12 5B 6D         [24] 3821 	lcall	__gptrget
      001222 FC               [12] 3822 	mov	r4,a
      001223 EC               [12] 3823 	mov	a,r4
      001224 B5 07 02         [24] 3824 	cjne	a,ar7,00149$
      001227 80 03            [24] 3825 	sjmp	00150$
      001229                       3826 00149$:
      001229 02 12 54         [24] 3827 	ljmp	00111$
      00122C                       3828 00150$:
                                   3829 ;	../osal/common/OSAL.c:615: if ( foundHdr == NULL )
      00122C 90 03 94         [24] 3830 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      00122F E0               [24] 3831 	movx	a,@dptr
      001230 FC               [12] 3832 	mov	r4,a
      001231 A3               [24] 3833 	inc	dptr
      001232 E0               [24] 3834 	movx	a,@dptr
      001233 FD               [12] 3835 	mov	r5,a
      001234 A3               [24] 3836 	inc	dptr
      001235 E0               [24] 3837 	movx	a,@dptr
      001236 FE               [12] 3838 	mov	r6,a
      001237 EC               [12] 3839 	mov	a,r4
      001238 4D               [12] 3840 	orl	a,r5
      001239 60 03            [24] 3841 	jz	00151$
      00123B 02 12 B1         [24] 3842 	ljmp	00116$
      00123E                       3843 00151$:
                                   3844 ;	../osal/common/OSAL.c:618: foundHdr = listHdr;
      00123E 90 03 8E         [24] 3845 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      001241 E0               [24] 3846 	movx	a,@dptr
      001242 FC               [12] 3847 	mov	r4,a
      001243 A3               [24] 3848 	inc	dptr
      001244 E0               [24] 3849 	movx	a,@dptr
      001245 FD               [12] 3850 	mov	r5,a
      001246 A3               [24] 3851 	inc	dptr
      001247 E0               [24] 3852 	movx	a,@dptr
      001248 FE               [12] 3853 	mov	r6,a
      001249 90 03 94         [24] 3854 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      00124C EC               [12] 3855 	mov	a,r4
      00124D F0               [24] 3856 	movx	@dptr,a
      00124E ED               [12] 3857 	mov	a,r5
      00124F A3               [24] 3858 	inc	dptr
      001250 F0               [24] 3859 	movx	@dptr,a
      001251 EE               [12] 3860 	mov	a,r6
      001252 A3               [24] 3861 	inc	dptr
      001253 F0               [24] 3862 	movx	@dptr,a
                                   3863 ;	../osal/common/OSAL.c:623: break;
      001254                       3864 00111$:
                                   3865 ;	../osal/common/OSAL.c:626: if ( foundHdr == NULL )
      001254 90 03 94         [24] 3866 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      001257 E0               [24] 3867 	movx	a,@dptr
      001258 FC               [12] 3868 	mov	r4,a
      001259 A3               [24] 3869 	inc	dptr
      00125A E0               [24] 3870 	movx	a,@dptr
      00125B FD               [12] 3871 	mov	r5,a
      00125C A3               [24] 3872 	inc	dptr
      00125D E0               [24] 3873 	movx	a,@dptr
      00125E FE               [12] 3874 	mov	r6,a
      00125F EC               [12] 3875 	mov	a,r4
      001260 4D               [12] 3876 	orl	a,r5
      001261 60 03            [24] 3877 	jz	00152$
      001263 02 12 7C         [24] 3878 	ljmp	00113$
      001266                       3879 00152$:
                                   3880 ;	../osal/common/OSAL.c:628: prevHdr = listHdr;
      001266 90 03 8E         [24] 3881 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      001269 E0               [24] 3882 	movx	a,@dptr
      00126A FC               [12] 3883 	mov	r4,a
      00126B A3               [24] 3884 	inc	dptr
      00126C E0               [24] 3885 	movx	a,@dptr
      00126D FD               [12] 3886 	mov	r5,a
      00126E A3               [24] 3887 	inc	dptr
      00126F E0               [24] 3888 	movx	a,@dptr
      001270 FE               [12] 3889 	mov	r6,a
      001271 90 03 91         [24] 3890 	mov	dptr,#_osal_msg_receive_prevHdr_1_155
      001274 EC               [12] 3891 	mov	a,r4
      001275 F0               [24] 3892 	movx	@dptr,a
      001276 ED               [12] 3893 	mov	a,r5
      001277 A3               [24] 3894 	inc	dptr
      001278 F0               [24] 3895 	movx	@dptr,a
      001279 EE               [12] 3896 	mov	a,r6
      00127A A3               [24] 3897 	inc	dptr
      00127B F0               [24] 3898 	movx	@dptr,a
      00127C                       3899 00113$:
                                   3900 ;	../osal/common/OSAL.c:630: listHdr = OSAL_MSG_NEXT( listHdr );
      00127C 90 03 8E         [24] 3901 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      00127F E0               [24] 3902 	movx	a,@dptr
      001280 FC               [12] 3903 	mov	r4,a
      001281 A3               [24] 3904 	inc	dptr
      001282 E0               [24] 3905 	movx	a,@dptr
      001283 FD               [12] 3906 	mov	r5,a
      001284 A3               [24] 3907 	inc	dptr
      001285 E0               [24] 3908 	movx	a,@dptr
      001286 FE               [12] 3909 	mov	r6,a
      001287 EC               [12] 3910 	mov	a,r4
      001288 24 FA            [12] 3911 	add	a,#0xFA
      00128A FC               [12] 3912 	mov	r4,a
      00128B ED               [12] 3913 	mov	a,r5
      00128C 34 FF            [12] 3914 	addc	a,#0xFF
      00128E FD               [12] 3915 	mov	r5,a
      00128F 8C 82            [24] 3916 	mov	dpl,r4
      001291 8D 83            [24] 3917 	mov	dph,r5
      001293 8E F0            [24] 3918 	mov	b,r6
      001295 12 5B 6D         [24] 3919 	lcall	__gptrget
      001298 FC               [12] 3920 	mov	r4,a
      001299 A3               [24] 3921 	inc	dptr
      00129A 12 5B 6D         [24] 3922 	lcall	__gptrget
      00129D FD               [12] 3923 	mov	r5,a
      00129E A3               [24] 3924 	inc	dptr
      00129F 12 5B 6D         [24] 3925 	lcall	__gptrget
      0012A2 FE               [12] 3926 	mov	r6,a
      0012A3 90 03 8E         [24] 3927 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      0012A6 EC               [12] 3928 	mov	a,r4
      0012A7 F0               [24] 3929 	movx	@dptr,a
      0012A8 ED               [12] 3930 	mov	a,r5
      0012A9 A3               [24] 3931 	inc	dptr
      0012AA F0               [24] 3932 	movx	@dptr,a
      0012AB EE               [12] 3933 	mov	a,r6
      0012AC A3               [24] 3934 	inc	dptr
      0012AD F0               [24] 3935 	movx	@dptr,a
      0012AE 02 11 F4         [24] 3936 	ljmp	00114$
      0012B1                       3937 00116$:
                                   3938 ;	../osal/common/OSAL.c:634: if ( listHdr != NULL )
      0012B1 90 03 8E         [24] 3939 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      0012B4 E0               [24] 3940 	movx	a,@dptr
      0012B5 FD               [12] 3941 	mov	r5,a
      0012B6 A3               [24] 3942 	inc	dptr
      0012B7 E0               [24] 3943 	movx	a,@dptr
      0012B8 FE               [12] 3944 	mov	r6,a
      0012B9 A3               [24] 3945 	inc	dptr
      0012BA E0               [24] 3946 	movx	a,@dptr
      0012BB FF               [12] 3947 	mov	r7,a
      0012BC ED               [12] 3948 	mov	a,r5
      0012BD 4E               [12] 3949 	orl	a,r6
      0012BE 70 03            [24] 3950 	jnz	00153$
      0012C0 02 12 DA         [24] 3951 	ljmp	00118$
      0012C3                       3952 00153$:
                                   3953 ;	../osal/common/OSAL.c:637: osal_set_event( task_id, SYS_EVENT_MSG );
      0012C3 90 03 8D         [24] 3954 	mov	dptr,#_osal_msg_receive_task_id_1_154
      0012C6 E0               [24] 3955 	movx	a,@dptr
      0012C7 FF               [12] 3956 	mov	r7,a
      0012C8 90 03 CB         [24] 3957 	mov	dptr,#_osal_set_event_PARM_2
      0012CB 74 00            [12] 3958 	mov	a,#0x00
      0012CD F0               [24] 3959 	movx	@dptr,a
      0012CE 74 80            [12] 3960 	mov	a,#0x80
      0012D0 A3               [24] 3961 	inc	dptr
      0012D1 F0               [24] 3962 	movx	@dptr,a
      0012D2 8F 82            [24] 3963 	mov	dpl,r7
      0012D4 12 19 D8         [24] 3964 	lcall	_osal_set_event
      0012D7 02 12 EE         [24] 3965 	ljmp	00119$
      0012DA                       3966 00118$:
                                   3967 ;	../osal/common/OSAL.c:642: osal_clear_event( task_id, SYS_EVENT_MSG );
      0012DA 90 03 8D         [24] 3968 	mov	dptr,#_osal_msg_receive_task_id_1_154
      0012DD E0               [24] 3969 	movx	a,@dptr
      0012DE FF               [12] 3970 	mov	r7,a
      0012DF 90 03 CE         [24] 3971 	mov	dptr,#_osal_clear_event_PARM_2
      0012E2 74 00            [12] 3972 	mov	a,#0x00
      0012E4 F0               [24] 3973 	movx	@dptr,a
      0012E5 74 80            [12] 3974 	mov	a,#0x80
      0012E7 A3               [24] 3975 	inc	dptr
      0012E8 F0               [24] 3976 	movx	@dptr,a
      0012E9 8F 82            [24] 3977 	mov	dpl,r7
      0012EB 12 1A 3F         [24] 3978 	lcall	_osal_clear_event
      0012EE                       3979 00119$:
                                   3980 ;	../osal/common/OSAL.c:646: if ( foundHdr != NULL )
      0012EE 90 03 94         [24] 3981 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      0012F1 E0               [24] 3982 	movx	a,@dptr
      0012F2 FD               [12] 3983 	mov	r5,a
      0012F3 A3               [24] 3984 	inc	dptr
      0012F4 E0               [24] 3985 	movx	a,@dptr
      0012F5 FE               [12] 3986 	mov	r6,a
      0012F6 A3               [24] 3987 	inc	dptr
      0012F7 E0               [24] 3988 	movx	a,@dptr
      0012F8 FF               [12] 3989 	mov	r7,a
      0012F9 ED               [12] 3990 	mov	a,r5
      0012FA 4E               [12] 3991 	orl	a,r6
      0012FB 70 03            [24] 3992 	jnz	00154$
      0012FD 02 13 38         [24] 3993 	ljmp	00122$
      001300                       3994 00154$:
                                   3995 ;	../osal/common/OSAL.c:649: osal_msg_extract( &osal_qHead, foundHdr, prevHdr );
      001300 90 03 94         [24] 3996 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      001303 E0               [24] 3997 	movx	a,@dptr
      001304 FD               [12] 3998 	mov	r5,a
      001305 A3               [24] 3999 	inc	dptr
      001306 E0               [24] 4000 	movx	a,@dptr
      001307 FE               [12] 4001 	mov	r6,a
      001308 A3               [24] 4002 	inc	dptr
      001309 E0               [24] 4003 	movx	a,@dptr
      00130A FF               [12] 4004 	mov	r7,a
      00130B 90 03 91         [24] 4005 	mov	dptr,#_osal_msg_receive_prevHdr_1_155
      00130E E0               [24] 4006 	movx	a,@dptr
      00130F FA               [12] 4007 	mov	r2,a
      001310 A3               [24] 4008 	inc	dptr
      001311 E0               [24] 4009 	movx	a,@dptr
      001312 FB               [12] 4010 	mov	r3,a
      001313 A3               [24] 4011 	inc	dptr
      001314 E0               [24] 4012 	movx	a,@dptr
      001315 FC               [12] 4013 	mov	r4,a
      001316 90 03 B5         [24] 4014 	mov	dptr,#_osal_msg_extract_PARM_2
      001319 ED               [12] 4015 	mov	a,r5
      00131A F0               [24] 4016 	movx	@dptr,a
      00131B EE               [12] 4017 	mov	a,r6
      00131C A3               [24] 4018 	inc	dptr
      00131D F0               [24] 4019 	movx	@dptr,a
      00131E EF               [12] 4020 	mov	a,r7
      00131F A3               [24] 4021 	inc	dptr
      001320 F0               [24] 4022 	movx	@dptr,a
      001321 90 03 B8         [24] 4023 	mov	dptr,#_osal_msg_extract_PARM_3
      001324 EA               [12] 4024 	mov	a,r2
      001325 F0               [24] 4025 	movx	@dptr,a
      001326 EB               [12] 4026 	mov	a,r3
      001327 A3               [24] 4027 	inc	dptr
      001328 F0               [24] 4028 	movx	@dptr,a
      001329 EC               [12] 4029 	mov	a,r4
      00132A A3               [24] 4030 	inc	dptr
      00132B F0               [24] 4031 	movx	@dptr,a
      00132C 75 82 05         [24] 4032 	mov	dpl,#_osal_qHead
      00132F 75 83 03         [24] 4033 	mov	dph,#(_osal_qHead >> 8)
      001332 75 F0 00         [24] 4034 	mov	b,#0x00
      001335 12 17 2C         [24] 4035 	lcall	_osal_msg_extract
                                   4036 ;	../osal/common/OSAL.c:653: HAL_EXIT_CRITICAL_SECTION(intState);
      001338                       4037 00122$:
      001338 90 03 97         [24] 4038 	mov	dptr,#_osal_msg_receive_intState_1_155
      00133B E0               [24] 4039 	movx	a,@dptr
      00133C FF               [12] 4040 	mov	r7,a
      00133D EF               [12] 4041 	mov	a,r7
      00133E 24 FF            [12] 4042 	add	a,#0xff
      001340 92 AF            [24] 4043 	mov	_EA,c
                                   4044 ;	../osal/common/OSAL.c:655: return ( (uint8*) foundHdr );
      001342 90 03 94         [24] 4045 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      001345 E0               [24] 4046 	movx	a,@dptr
      001346 FD               [12] 4047 	mov	r5,a
      001347 A3               [24] 4048 	inc	dptr
      001348 E0               [24] 4049 	movx	a,@dptr
      001349 FE               [12] 4050 	mov	r6,a
      00134A A3               [24] 4051 	inc	dptr
      00134B E0               [24] 4052 	movx	a,@dptr
      00134C FF               [12] 4053 	mov	r7,a
      00134D 8D 82            [24] 4054 	mov	dpl,r5
      00134F 8E 83            [24] 4055 	mov	dph,r6
      001351 8F F0            [24] 4056 	mov	b,r7
      001353                       4057 00125$:
      001353 22               [24] 4058 	ret
                                   4059 ;------------------------------------------------------------
                                   4060 ;Allocation info for local variables in function 'osal_msg_find'
                                   4061 ;------------------------------------------------------------
                                   4062 ;event                     Allocated with name '_osal_msg_find_PARM_2'
                                   4063 ;task_id                   Allocated with name '_osal_msg_find_task_id_1_167'
                                   4064 ;pHdr                      Allocated with name '_osal_msg_find_pHdr_1_168'
                                   4065 ;intState                  Allocated with name '_osal_msg_find_intState_1_168'
                                   4066 ;------------------------------------------------------------
                                   4067 ;	../osal/common/OSAL.c:676: osal_event_hdr_t *osal_msg_find(uint8 task_id, uint8 event)
                                   4068 ;	-----------------------------------------
                                   4069 ;	 function osal_msg_find
                                   4070 ;	-----------------------------------------
      001354                       4071 _osal_msg_find:
      001354 E5 82            [12] 4072 	mov	a,dpl
      001356 90 03 99         [24] 4073 	mov	dptr,#_osal_msg_find_task_id_1_167
      001359 F0               [24] 4074 	movx	@dptr,a
                                   4075 ;	../osal/common/OSAL.c:681: HAL_ENTER_CRITICAL_SECTION(intState);  // Hold off interrupts.
      00135A 90 03 9D         [24] 4076 	mov	dptr,#_osal_msg_find_intState_1_168
      00135D A2 AF            [12] 4077 	mov	c,_EA
      00135F E4               [12] 4078 	clr	a
      001360 33               [12] 4079 	rlc	a
      001361 F0               [24] 4080 	movx	@dptr,a
      001362 C2 AF            [12] 4081 	clr	_EA
                                   4082 ;	../osal/common/OSAL.c:683: pHdr = osal_qHead;  // Point to the top of the queue.
      001364 90 03 05         [24] 4083 	mov	dptr,#_osal_qHead
      001367 E0               [24] 4084 	movx	a,@dptr
      001368 FD               [12] 4085 	mov	r5,a
      001369 A3               [24] 4086 	inc	dptr
      00136A E0               [24] 4087 	movx	a,@dptr
      00136B FE               [12] 4088 	mov	r6,a
      00136C A3               [24] 4089 	inc	dptr
      00136D E0               [24] 4090 	movx	a,@dptr
      00136E FF               [12] 4091 	mov	r7,a
      00136F 90 03 9A         [24] 4092 	mov	dptr,#_osal_msg_find_pHdr_1_168
      001372 ED               [12] 4093 	mov	a,r5
      001373 F0               [24] 4094 	movx	@dptr,a
      001374 EE               [12] 4095 	mov	a,r6
      001375 A3               [24] 4096 	inc	dptr
      001376 F0               [24] 4097 	movx	@dptr,a
      001377 EF               [12] 4098 	mov	a,r7
      001378 A3               [24] 4099 	inc	dptr
      001379 F0               [24] 4100 	movx	@dptr,a
                                   4101 ;	../osal/common/OSAL.c:686: while (pHdr != NULL)
      00137A 90 03 98         [24] 4102 	mov	dptr,#_osal_msg_find_PARM_2
      00137D E0               [24] 4103 	movx	a,@dptr
      00137E FF               [12] 4104 	mov	r7,a
      00137F 90 03 99         [24] 4105 	mov	dptr,#_osal_msg_find_task_id_1_167
      001382 E0               [24] 4106 	movx	a,@dptr
      001383 FE               [12] 4107 	mov	r6,a
      001384                       4108 00110$:
      001384 90 03 9A         [24] 4109 	mov	dptr,#_osal_msg_find_pHdr_1_168
      001387 E0               [24] 4110 	movx	a,@dptr
      001388 FB               [12] 4111 	mov	r3,a
      001389 A3               [24] 4112 	inc	dptr
      00138A E0               [24] 4113 	movx	a,@dptr
      00138B FC               [12] 4114 	mov	r4,a
      00138C A3               [24] 4115 	inc	dptr
      00138D E0               [24] 4116 	movx	a,@dptr
      00138E FD               [12] 4117 	mov	r5,a
      00138F EB               [12] 4118 	mov	a,r3
      001390 4C               [12] 4119 	orl	a,r4
      001391 70 03            [24] 4120 	jnz	00127$
      001393 02 14 0D         [24] 4121 	ljmp	00113$
      001396                       4122 00127$:
                                   4123 ;	../osal/common/OSAL.c:688: if (((pHdr-1)->dest_id == task_id) && (((osal_event_hdr_t *)pHdr)->event == event))
      001396 90 03 9A         [24] 4124 	mov	dptr,#_osal_msg_find_pHdr_1_168
      001399 E0               [24] 4125 	movx	a,@dptr
      00139A FB               [12] 4126 	mov	r3,a
      00139B A3               [24] 4127 	inc	dptr
      00139C E0               [24] 4128 	movx	a,@dptr
      00139D FC               [12] 4129 	mov	r4,a
      00139E A3               [24] 4130 	inc	dptr
      00139F E0               [24] 4131 	movx	a,@dptr
      0013A0 FD               [12] 4132 	mov	r5,a
      0013A1 74 FF            [12] 4133 	mov	a,#0xFF
      0013A3 2B               [12] 4134 	add	a,r3
      0013A4 FB               [12] 4135 	mov	r3,a
      0013A5 74 FF            [12] 4136 	mov	a,#0xFF
      0013A7 3C               [12] 4137 	addc	a,r4
      0013A8 FC               [12] 4138 	mov	r4,a
      0013A9 8B 82            [24] 4139 	mov	dpl,r3
      0013AB 8C 83            [24] 4140 	mov	dph,r4
      0013AD 8D F0            [24] 4141 	mov	b,r5
      0013AF 12 5B 6D         [24] 4142 	lcall	__gptrget
      0013B2 FB               [12] 4143 	mov	r3,a
      0013B3 EB               [12] 4144 	mov	a,r3
      0013B4 B5 06 02         [24] 4145 	cjne	a,ar6,00128$
      0013B7 80 03            [24] 4146 	sjmp	00129$
      0013B9                       4147 00128$:
      0013B9 02 13 D8         [24] 4148 	ljmp	00108$
      0013BC                       4149 00129$:
      0013BC 90 03 9A         [24] 4150 	mov	dptr,#_osal_msg_find_pHdr_1_168
      0013BF E0               [24] 4151 	movx	a,@dptr
      0013C0 FB               [12] 4152 	mov	r3,a
      0013C1 A3               [24] 4153 	inc	dptr
      0013C2 E0               [24] 4154 	movx	a,@dptr
      0013C3 FC               [12] 4155 	mov	r4,a
      0013C4 A3               [24] 4156 	inc	dptr
      0013C5 E0               [24] 4157 	movx	a,@dptr
      0013C6 FD               [12] 4158 	mov	r5,a
      0013C7 8B 82            [24] 4159 	mov	dpl,r3
      0013C9 8C 83            [24] 4160 	mov	dph,r4
      0013CB 8D F0            [24] 4161 	mov	b,r5
      0013CD 12 5B 6D         [24] 4162 	lcall	__gptrget
      0013D0 FB               [12] 4163 	mov	r3,a
      0013D1 EB               [12] 4164 	mov	a,r3
      0013D2 B5 07 03         [24] 4165 	cjne	a,ar7,00130$
      0013D5 02 14 0D         [24] 4166 	ljmp	00113$
      0013D8                       4167 00130$:
                                   4168 ;	../osal/common/OSAL.c:690: break;
      0013D8                       4169 00108$:
                                   4170 ;	../osal/common/OSAL.c:693: pHdr = OSAL_MSG_NEXT(pHdr);
      0013D8 90 03 9A         [24] 4171 	mov	dptr,#_osal_msg_find_pHdr_1_168
      0013DB E0               [24] 4172 	movx	a,@dptr
      0013DC FB               [12] 4173 	mov	r3,a
      0013DD A3               [24] 4174 	inc	dptr
      0013DE E0               [24] 4175 	movx	a,@dptr
      0013DF FC               [12] 4176 	mov	r4,a
      0013E0 A3               [24] 4177 	inc	dptr
      0013E1 E0               [24] 4178 	movx	a,@dptr
      0013E2 FD               [12] 4179 	mov	r5,a
      0013E3 EB               [12] 4180 	mov	a,r3
      0013E4 24 FA            [12] 4181 	add	a,#0xFA
      0013E6 FB               [12] 4182 	mov	r3,a
      0013E7 EC               [12] 4183 	mov	a,r4
      0013E8 34 FF            [12] 4184 	addc	a,#0xFF
      0013EA FC               [12] 4185 	mov	r4,a
      0013EB 8B 82            [24] 4186 	mov	dpl,r3
      0013ED 8C 83            [24] 4187 	mov	dph,r4
      0013EF 8D F0            [24] 4188 	mov	b,r5
      0013F1 12 5B 6D         [24] 4189 	lcall	__gptrget
      0013F4 FB               [12] 4190 	mov	r3,a
      0013F5 A3               [24] 4191 	inc	dptr
      0013F6 12 5B 6D         [24] 4192 	lcall	__gptrget
      0013F9 FC               [12] 4193 	mov	r4,a
      0013FA A3               [24] 4194 	inc	dptr
      0013FB 12 5B 6D         [24] 4195 	lcall	__gptrget
      0013FE FD               [12] 4196 	mov	r5,a
      0013FF 90 03 9A         [24] 4197 	mov	dptr,#_osal_msg_find_pHdr_1_168
      001402 EB               [12] 4198 	mov	a,r3
      001403 F0               [24] 4199 	movx	@dptr,a
      001404 EC               [12] 4200 	mov	a,r4
      001405 A3               [24] 4201 	inc	dptr
      001406 F0               [24] 4202 	movx	@dptr,a
      001407 ED               [12] 4203 	mov	a,r5
      001408 A3               [24] 4204 	inc	dptr
      001409 F0               [24] 4205 	movx	@dptr,a
      00140A 02 13 84         [24] 4206 	ljmp	00110$
                                   4207 ;	../osal/common/OSAL.c:696: HAL_EXIT_CRITICAL_SECTION(intState);  // Release interrupts.
      00140D                       4208 00113$:
      00140D 90 03 9D         [24] 4209 	mov	dptr,#_osal_msg_find_intState_1_168
      001410 E0               [24] 4210 	movx	a,@dptr
      001411 FF               [12] 4211 	mov	r7,a
      001412 EF               [12] 4212 	mov	a,r7
      001413 24 FF            [12] 4213 	add	a,#0xff
      001415 92 AF            [24] 4214 	mov	_EA,c
                                   4215 ;	../osal/common/OSAL.c:698: return (osal_event_hdr_t *)pHdr;
      001417 90 03 9A         [24] 4216 	mov	dptr,#_osal_msg_find_pHdr_1_168
      00141A E0               [24] 4217 	movx	a,@dptr
      00141B FD               [12] 4218 	mov	r5,a
      00141C A3               [24] 4219 	inc	dptr
      00141D E0               [24] 4220 	movx	a,@dptr
      00141E FE               [12] 4221 	mov	r6,a
      00141F A3               [24] 4222 	inc	dptr
      001420 E0               [24] 4223 	movx	a,@dptr
      001421 FF               [12] 4224 	mov	r7,a
      001422 8D 82            [24] 4225 	mov	dpl,r5
      001424 8E 83            [24] 4226 	mov	dph,r6
      001426 8F F0            [24] 4227 	mov	b,r7
      001428                       4228 00116$:
      001428 22               [24] 4229 	ret
                                   4230 ;------------------------------------------------------------
                                   4231 ;Allocation info for local variables in function 'osal_msg_enqueue'
                                   4232 ;------------------------------------------------------------
                                   4233 ;msg_ptr                   Allocated with name '_osal_msg_enqueue_PARM_2'
                                   4234 ;q_ptr                     Allocated with name '_osal_msg_enqueue_q_ptr_1_174'
                                   4235 ;list                      Allocated with name '_osal_msg_enqueue_list_1_175'
                                   4236 ;intState                  Allocated with name '_osal_msg_enqueue_intState_1_175'
                                   4237 ;------------------------------------------------------------
                                   4238 ;	../osal/common/OSAL.c:713: void osal_msg_enqueue( osal_msg_q_t *q_ptr, void *msg_ptr )
                                   4239 ;	-----------------------------------------
                                   4240 ;	 function osal_msg_enqueue
                                   4241 ;	-----------------------------------------
      001429                       4242 _osal_msg_enqueue:
      001429 AF F0            [24] 4243 	mov	r7,b
      00142B AE 83            [24] 4244 	mov	r6,dph
      00142D E5 82            [12] 4245 	mov	a,dpl
      00142F 90 03 A1         [24] 4246 	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
      001432 F0               [24] 4247 	movx	@dptr,a
      001433 EE               [12] 4248 	mov	a,r6
      001434 A3               [24] 4249 	inc	dptr
      001435 F0               [24] 4250 	movx	@dptr,a
      001436 EF               [12] 4251 	mov	a,r7
      001437 A3               [24] 4252 	inc	dptr
      001438 F0               [24] 4253 	movx	@dptr,a
                                   4254 ;	../osal/common/OSAL.c:719: HAL_ENTER_CRITICAL_SECTION(intState);
      001439 90 03 A7         [24] 4255 	mov	dptr,#_osal_msg_enqueue_intState_1_175
      00143C A2 AF            [12] 4256 	mov	c,_EA
      00143E E4               [12] 4257 	clr	a
      00143F 33               [12] 4258 	rlc	a
      001440 F0               [24] 4259 	movx	@dptr,a
      001441 C2 AF            [12] 4260 	clr	_EA
                                   4261 ;	../osal/common/OSAL.c:721: OSAL_MSG_NEXT( msg_ptr ) = NULL;
      001443 90 03 9E         [24] 4262 	mov	dptr,#_osal_msg_enqueue_PARM_2
      001446 E0               [24] 4263 	movx	a,@dptr
      001447 FD               [12] 4264 	mov	r5,a
      001448 A3               [24] 4265 	inc	dptr
      001449 E0               [24] 4266 	movx	a,@dptr
      00144A FE               [12] 4267 	mov	r6,a
      00144B A3               [24] 4268 	inc	dptr
      00144C E0               [24] 4269 	movx	a,@dptr
      00144D FF               [12] 4270 	mov	r7,a
      00144E ED               [12] 4271 	mov	a,r5
      00144F 24 FA            [12] 4272 	add	a,#0xFA
      001451 FD               [12] 4273 	mov	r5,a
      001452 EE               [12] 4274 	mov	a,r6
      001453 34 FF            [12] 4275 	addc	a,#0xFF
      001455 FE               [12] 4276 	mov	r6,a
      001456 8D 82            [24] 4277 	mov	dpl,r5
      001458 8E 83            [24] 4278 	mov	dph,r6
      00145A 8F F0            [24] 4279 	mov	b,r7
      00145C 74 00            [12] 4280 	mov	a,#0x00
      00145E 12 5A 01         [24] 4281 	lcall	__gptrput
      001461 A3               [24] 4282 	inc	dptr
      001462 12 5A 01         [24] 4283 	lcall	__gptrput
      001465 A3               [24] 4284 	inc	dptr
      001466 12 5A 01         [24] 4285 	lcall	__gptrput
                                   4286 ;	../osal/common/OSAL.c:723: if ( *q_ptr == NULL )
      001469 90 03 A1         [24] 4287 	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
      00146C E0               [24] 4288 	movx	a,@dptr
      00146D FD               [12] 4289 	mov	r5,a
      00146E A3               [24] 4290 	inc	dptr
      00146F E0               [24] 4291 	movx	a,@dptr
      001470 FE               [12] 4292 	mov	r6,a
      001471 A3               [24] 4293 	inc	dptr
      001472 E0               [24] 4294 	movx	a,@dptr
      001473 FF               [12] 4295 	mov	r7,a
      001474 8D 82            [24] 4296 	mov	dpl,r5
      001476 8E 83            [24] 4297 	mov	dph,r6
      001478 8F F0            [24] 4298 	mov	b,r7
      00147A 12 5B 6D         [24] 4299 	lcall	__gptrget
      00147D FD               [12] 4300 	mov	r5,a
      00147E A3               [24] 4301 	inc	dptr
      00147F 12 5B 6D         [24] 4302 	lcall	__gptrget
      001482 FE               [12] 4303 	mov	r6,a
      001483 A3               [24] 4304 	inc	dptr
      001484 12 5B 6D         [24] 4305 	lcall	__gptrget
      001487 FF               [12] 4306 	mov	r7,a
      001488 ED               [12] 4307 	mov	a,r5
      001489 4E               [12] 4308 	orl	a,r6
      00148A 60 03            [24] 4309 	jz	00128$
      00148C 02 14 BC         [24] 4310 	ljmp	00109$
      00148F                       4311 00128$:
                                   4312 ;	../osal/common/OSAL.c:725: *q_ptr = msg_ptr;
      00148F 90 03 A1         [24] 4313 	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
      001492 E0               [24] 4314 	movx	a,@dptr
      001493 FD               [12] 4315 	mov	r5,a
      001494 A3               [24] 4316 	inc	dptr
      001495 E0               [24] 4317 	movx	a,@dptr
      001496 FE               [12] 4318 	mov	r6,a
      001497 A3               [24] 4319 	inc	dptr
      001498 E0               [24] 4320 	movx	a,@dptr
      001499 FF               [12] 4321 	mov	r7,a
      00149A 90 03 9E         [24] 4322 	mov	dptr,#_osal_msg_enqueue_PARM_2
      00149D E0               [24] 4323 	movx	a,@dptr
      00149E FA               [12] 4324 	mov	r2,a
      00149F A3               [24] 4325 	inc	dptr
      0014A0 E0               [24] 4326 	movx	a,@dptr
      0014A1 FB               [12] 4327 	mov	r3,a
      0014A2 A3               [24] 4328 	inc	dptr
      0014A3 E0               [24] 4329 	movx	a,@dptr
      0014A4 FC               [12] 4330 	mov	r4,a
      0014A5 8D 82            [24] 4331 	mov	dpl,r5
      0014A7 8E 83            [24] 4332 	mov	dph,r6
      0014A9 8F F0            [24] 4333 	mov	b,r7
      0014AB EA               [12] 4334 	mov	a,r2
      0014AC 12 5A 01         [24] 4335 	lcall	__gptrput
      0014AF A3               [24] 4336 	inc	dptr
      0014B0 EB               [12] 4337 	mov	a,r3
      0014B1 12 5A 01         [24] 4338 	lcall	__gptrput
      0014B4 A3               [24] 4339 	inc	dptr
      0014B5 EC               [12] 4340 	mov	a,r4
      0014B6 12 5A 01         [24] 4341 	lcall	__gptrput
      0014B9 02 15 90         [24] 4342 	ljmp	00111$
      0014BC                       4343 00109$:
                                   4344 ;	../osal/common/OSAL.c:730: for ( list = *q_ptr; OSAL_MSG_NEXT( list ) != NULL; list = OSAL_MSG_NEXT( list ) );
      0014BC 90 03 A1         [24] 4345 	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
      0014BF E0               [24] 4346 	movx	a,@dptr
      0014C0 FD               [12] 4347 	mov	r5,a
      0014C1 A3               [24] 4348 	inc	dptr
      0014C2 E0               [24] 4349 	movx	a,@dptr
      0014C3 FE               [12] 4350 	mov	r6,a
      0014C4 A3               [24] 4351 	inc	dptr
      0014C5 E0               [24] 4352 	movx	a,@dptr
      0014C6 FF               [12] 4353 	mov	r7,a
      0014C7 8D 82            [24] 4354 	mov	dpl,r5
      0014C9 8E 83            [24] 4355 	mov	dph,r6
      0014CB 8F F0            [24] 4356 	mov	b,r7
      0014CD 12 5B 6D         [24] 4357 	lcall	__gptrget
      0014D0 FD               [12] 4358 	mov	r5,a
      0014D1 A3               [24] 4359 	inc	dptr
      0014D2 12 5B 6D         [24] 4360 	lcall	__gptrget
      0014D5 FE               [12] 4361 	mov	r6,a
      0014D6 A3               [24] 4362 	inc	dptr
      0014D7 12 5B 6D         [24] 4363 	lcall	__gptrget
      0014DA FF               [12] 4364 	mov	r7,a
      0014DB 90 03 A4         [24] 4365 	mov	dptr,#_osal_msg_enqueue_list_1_175
      0014DE ED               [12] 4366 	mov	a,r5
      0014DF F0               [24] 4367 	movx	@dptr,a
      0014E0 EE               [12] 4368 	mov	a,r6
      0014E1 A3               [24] 4369 	inc	dptr
      0014E2 F0               [24] 4370 	movx	@dptr,a
      0014E3 EF               [12] 4371 	mov	a,r7
      0014E4 A3               [24] 4372 	inc	dptr
      0014E5 F0               [24] 4373 	movx	@dptr,a
      0014E6                       4374 00115$:
      0014E6 90 03 A4         [24] 4375 	mov	dptr,#_osal_msg_enqueue_list_1_175
      0014E9 E0               [24] 4376 	movx	a,@dptr
      0014EA FD               [12] 4377 	mov	r5,a
      0014EB A3               [24] 4378 	inc	dptr
      0014EC E0               [24] 4379 	movx	a,@dptr
      0014ED FE               [12] 4380 	mov	r6,a
      0014EE A3               [24] 4381 	inc	dptr
      0014EF E0               [24] 4382 	movx	a,@dptr
      0014F0 FF               [12] 4383 	mov	r7,a
      0014F1 ED               [12] 4384 	mov	a,r5
      0014F2 24 FA            [12] 4385 	add	a,#0xFA
      0014F4 FD               [12] 4386 	mov	r5,a
      0014F5 EE               [12] 4387 	mov	a,r6
      0014F6 34 FF            [12] 4388 	addc	a,#0xFF
      0014F8 FE               [12] 4389 	mov	r6,a
      0014F9 8D 82            [24] 4390 	mov	dpl,r5
      0014FB 8E 83            [24] 4391 	mov	dph,r6
      0014FD 8F F0            [24] 4392 	mov	b,r7
      0014FF 12 5B 6D         [24] 4393 	lcall	__gptrget
      001502 FD               [12] 4394 	mov	r5,a
      001503 A3               [24] 4395 	inc	dptr
      001504 12 5B 6D         [24] 4396 	lcall	__gptrget
      001507 FE               [12] 4397 	mov	r6,a
      001508 A3               [24] 4398 	inc	dptr
      001509 12 5B 6D         [24] 4399 	lcall	__gptrget
      00150C FF               [12] 4400 	mov	r7,a
      00150D 74 00            [12] 4401 	mov	a,#0x00
      00150F C0 E0            [24] 4402 	push	acc
      001511 C0 E0            [24] 4403 	push	acc
      001513 C0 E0            [24] 4404 	push	acc
      001515 8D 82            [24] 4405 	mov	dpl,r5
      001517 8E 83            [24] 4406 	mov	dph,r6
      001519 8F F0            [24] 4407 	mov	b,r7
      00151B 12 00 06         [24] 4408 	lcall	___gptr_cmp
      00151E 15 81            [12] 4409 	dec	sp
      001520 15 81            [12] 4410 	dec	sp
      001522 15 81            [12] 4411 	dec	sp
      001524 70 03            [24] 4412 	jnz	00129$
      001526 02 15 5E         [24] 4413 	ljmp	00107$
      001529                       4414 00129$:
      001529 90 03 A4         [24] 4415 	mov	dptr,#_osal_msg_enqueue_list_1_175
      00152C E0               [24] 4416 	movx	a,@dptr
      00152D FD               [12] 4417 	mov	r5,a
      00152E A3               [24] 4418 	inc	dptr
      00152F E0               [24] 4419 	movx	a,@dptr
      001530 FE               [12] 4420 	mov	r6,a
      001531 A3               [24] 4421 	inc	dptr
      001532 E0               [24] 4422 	movx	a,@dptr
      001533 FF               [12] 4423 	mov	r7,a
      001534 ED               [12] 4424 	mov	a,r5
      001535 24 FA            [12] 4425 	add	a,#0xFA
      001537 FD               [12] 4426 	mov	r5,a
      001538 EE               [12] 4427 	mov	a,r6
      001539 34 FF            [12] 4428 	addc	a,#0xFF
      00153B FE               [12] 4429 	mov	r6,a
      00153C 8D 82            [24] 4430 	mov	dpl,r5
      00153E 8E 83            [24] 4431 	mov	dph,r6
      001540 8F F0            [24] 4432 	mov	b,r7
      001542 12 5B 6D         [24] 4433 	lcall	__gptrget
      001545 FD               [12] 4434 	mov	r5,a
      001546 A3               [24] 4435 	inc	dptr
      001547 12 5B 6D         [24] 4436 	lcall	__gptrget
      00154A FE               [12] 4437 	mov	r6,a
      00154B A3               [24] 4438 	inc	dptr
      00154C 12 5B 6D         [24] 4439 	lcall	__gptrget
      00154F FF               [12] 4440 	mov	r7,a
      001550 90 03 A4         [24] 4441 	mov	dptr,#_osal_msg_enqueue_list_1_175
      001553 ED               [12] 4442 	mov	a,r5
      001554 F0               [24] 4443 	movx	@dptr,a
      001555 EE               [12] 4444 	mov	a,r6
      001556 A3               [24] 4445 	inc	dptr
      001557 F0               [24] 4446 	movx	@dptr,a
      001558 EF               [12] 4447 	mov	a,r7
      001559 A3               [24] 4448 	inc	dptr
      00155A F0               [24] 4449 	movx	@dptr,a
      00155B 02 14 E6         [24] 4450 	ljmp	00115$
      00155E                       4451 00107$:
                                   4452 ;	../osal/common/OSAL.c:733: OSAL_MSG_NEXT( list ) = msg_ptr;
      00155E 90 03 A4         [24] 4453 	mov	dptr,#_osal_msg_enqueue_list_1_175
      001561 E0               [24] 4454 	movx	a,@dptr
      001562 FD               [12] 4455 	mov	r5,a
      001563 A3               [24] 4456 	inc	dptr
      001564 E0               [24] 4457 	movx	a,@dptr
      001565 FE               [12] 4458 	mov	r6,a
      001566 A3               [24] 4459 	inc	dptr
      001567 E0               [24] 4460 	movx	a,@dptr
      001568 FF               [12] 4461 	mov	r7,a
      001569 ED               [12] 4462 	mov	a,r5
      00156A 24 FA            [12] 4463 	add	a,#0xFA
      00156C FD               [12] 4464 	mov	r5,a
      00156D EE               [12] 4465 	mov	a,r6
      00156E 34 FF            [12] 4466 	addc	a,#0xFF
      001570 FE               [12] 4467 	mov	r6,a
      001571 90 03 9E         [24] 4468 	mov	dptr,#_osal_msg_enqueue_PARM_2
      001574 E0               [24] 4469 	movx	a,@dptr
      001575 FA               [12] 4470 	mov	r2,a
      001576 A3               [24] 4471 	inc	dptr
      001577 E0               [24] 4472 	movx	a,@dptr
      001578 FB               [12] 4473 	mov	r3,a
      001579 A3               [24] 4474 	inc	dptr
      00157A E0               [24] 4475 	movx	a,@dptr
      00157B FC               [12] 4476 	mov	r4,a
      00157C 8D 82            [24] 4477 	mov	dpl,r5
      00157E 8E 83            [24] 4478 	mov	dph,r6
      001580 8F F0            [24] 4479 	mov	b,r7
      001582 EA               [12] 4480 	mov	a,r2
      001583 12 5A 01         [24] 4481 	lcall	__gptrput
      001586 A3               [24] 4482 	inc	dptr
      001587 EB               [12] 4483 	mov	a,r3
      001588 12 5A 01         [24] 4484 	lcall	__gptrput
      00158B A3               [24] 4485 	inc	dptr
      00158C EC               [12] 4486 	mov	a,r4
      00158D 12 5A 01         [24] 4487 	lcall	__gptrput
                                   4488 ;	../osal/common/OSAL.c:737: HAL_EXIT_CRITICAL_SECTION(intState);
      001590                       4489 00111$:
      001590 90 03 A7         [24] 4490 	mov	dptr,#_osal_msg_enqueue_intState_1_175
      001593 E0               [24] 4491 	movx	a,@dptr
      001594 FF               [12] 4492 	mov	r7,a
      001595 EF               [12] 4493 	mov	a,r7
      001596 24 FF            [12] 4494 	add	a,#0xff
      001598 92 AF            [24] 4495 	mov	_EA,c
      00159A                       4496 00117$:
      00159A 22               [24] 4497 	ret
                                   4498 ;------------------------------------------------------------
                                   4499 ;Allocation info for local variables in function 'osal_msg_dequeue'
                                   4500 ;------------------------------------------------------------
                                   4501 ;q_ptr                     Allocated with name '_osal_msg_dequeue_q_ptr_1_181'
                                   4502 ;msg_ptr                   Allocated with name '_osal_msg_dequeue_msg_ptr_1_182'
                                   4503 ;intState                  Allocated with name '_osal_msg_dequeue_intState_1_182'
                                   4504 ;sloc0                     Allocated with name '_osal_msg_dequeue_sloc0_1_0'
                                   4505 ;------------------------------------------------------------
                                   4506 ;	../osal/common/OSAL.c:751: void *osal_msg_dequeue( osal_msg_q_t *q_ptr )
                                   4507 ;	-----------------------------------------
                                   4508 ;	 function osal_msg_dequeue
                                   4509 ;	-----------------------------------------
      00159B                       4510 _osal_msg_dequeue:
      00159B AF F0            [24] 4511 	mov	r7,b
      00159D AE 83            [24] 4512 	mov	r6,dph
      00159F E5 82            [12] 4513 	mov	a,dpl
      0015A1 90 03 A8         [24] 4514 	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
      0015A4 F0               [24] 4515 	movx	@dptr,a
      0015A5 EE               [12] 4516 	mov	a,r6
      0015A6 A3               [24] 4517 	inc	dptr
      0015A7 F0               [24] 4518 	movx	@dptr,a
      0015A8 EF               [12] 4519 	mov	a,r7
      0015A9 A3               [24] 4520 	inc	dptr
      0015AA F0               [24] 4521 	movx	@dptr,a
                                   4522 ;	../osal/common/OSAL.c:753: void *msg_ptr = NULL;
      0015AB 90 03 AB         [24] 4523 	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
      0015AE 74 00            [12] 4524 	mov	a,#0x00
      0015B0 F0               [24] 4525 	movx	@dptr,a
      0015B1 A3               [24] 4526 	inc	dptr
      0015B2 F0               [24] 4527 	movx	@dptr,a
      0015B3 A3               [24] 4528 	inc	dptr
      0015B4 F0               [24] 4529 	movx	@dptr,a
                                   4530 ;	../osal/common/OSAL.c:757: HAL_ENTER_CRITICAL_SECTION(intState);
      0015B5 90 03 AE         [24] 4531 	mov	dptr,#_osal_msg_dequeue_intState_1_182
      0015B8 A2 AF            [12] 4532 	mov	c,_EA
      0015BA E4               [12] 4533 	clr	a
      0015BB 33               [12] 4534 	rlc	a
      0015BC F0               [24] 4535 	movx	@dptr,a
      0015BD C2 AF            [12] 4536 	clr	_EA
                                   4537 ;	../osal/common/OSAL.c:759: if ( *q_ptr != NULL )
      0015BF 90 03 A8         [24] 4538 	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
      0015C2 E0               [24] 4539 	movx	a,@dptr
      0015C3 FD               [12] 4540 	mov	r5,a
      0015C4 A3               [24] 4541 	inc	dptr
      0015C5 E0               [24] 4542 	movx	a,@dptr
      0015C6 FE               [12] 4543 	mov	r6,a
      0015C7 A3               [24] 4544 	inc	dptr
      0015C8 E0               [24] 4545 	movx	a,@dptr
      0015C9 FF               [12] 4546 	mov	r7,a
      0015CA 8D 82            [24] 4547 	mov	dpl,r5
      0015CC 8E 83            [24] 4548 	mov	dph,r6
      0015CE 8F F0            [24] 4549 	mov	b,r7
      0015D0 12 5B 6D         [24] 4550 	lcall	__gptrget
      0015D3 FD               [12] 4551 	mov	r5,a
      0015D4 A3               [24] 4552 	inc	dptr
      0015D5 12 5B 6D         [24] 4553 	lcall	__gptrget
      0015D8 FE               [12] 4554 	mov	r6,a
      0015D9 A3               [24] 4555 	inc	dptr
      0015DA 12 5B 6D         [24] 4556 	lcall	__gptrget
      0015DD FF               [12] 4557 	mov	r7,a
      0015DE ED               [12] 4558 	mov	a,r5
      0015DF 4E               [12] 4559 	orl	a,r6
      0015E0 70 03            [24] 4560 	jnz	00117$
      0015E2 02 16 81         [24] 4561 	ljmp	00109$
      0015E5                       4562 00117$:
                                   4563 ;	../osal/common/OSAL.c:762: msg_ptr = *q_ptr;
      0015E5 90 03 A8         [24] 4564 	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
      0015E8 E0               [24] 4565 	movx	a,@dptr
      0015E9 F5 3A            [12] 4566 	mov	_osal_msg_dequeue_sloc0_1_0,a
      0015EB A3               [24] 4567 	inc	dptr
      0015EC E0               [24] 4568 	movx	a,@dptr
      0015ED F5 3B            [12] 4569 	mov	(_osal_msg_dequeue_sloc0_1_0 + 1),a
      0015EF A3               [24] 4570 	inc	dptr
      0015F0 E0               [24] 4571 	movx	a,@dptr
      0015F1 F5 3C            [12] 4572 	mov	(_osal_msg_dequeue_sloc0_1_0 + 2),a
      0015F3 85 3A 82         [24] 4573 	mov	dpl,_osal_msg_dequeue_sloc0_1_0
      0015F6 85 3B 83         [24] 4574 	mov	dph,(_osal_msg_dequeue_sloc0_1_0 + 1)
      0015F9 85 3C F0         [24] 4575 	mov	b,(_osal_msg_dequeue_sloc0_1_0 + 2)
      0015FC 12 5B 6D         [24] 4576 	lcall	__gptrget
      0015FF FA               [12] 4577 	mov	r2,a
      001600 A3               [24] 4578 	inc	dptr
      001601 12 5B 6D         [24] 4579 	lcall	__gptrget
      001604 FB               [12] 4580 	mov	r3,a
      001605 A3               [24] 4581 	inc	dptr
      001606 12 5B 6D         [24] 4582 	lcall	__gptrget
      001609 FC               [12] 4583 	mov	r4,a
      00160A 90 03 AB         [24] 4584 	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
      00160D EA               [12] 4585 	mov	a,r2
      00160E F0               [24] 4586 	movx	@dptr,a
      00160F EB               [12] 4587 	mov	a,r3
      001610 A3               [24] 4588 	inc	dptr
      001611 F0               [24] 4589 	movx	@dptr,a
      001612 EC               [12] 4590 	mov	a,r4
      001613 A3               [24] 4591 	inc	dptr
      001614 F0               [24] 4592 	movx	@dptr,a
                                   4593 ;	../osal/common/OSAL.c:763: *q_ptr = OSAL_MSG_NEXT( msg_ptr );
      001615 8A 00            [24] 4594 	mov	ar0,r2
      001617 8B 01            [24] 4595 	mov	ar1,r3
      001619 8C 07            [24] 4596 	mov	ar7,r4
      00161B E8               [12] 4597 	mov	a,r0
      00161C 24 FA            [12] 4598 	add	a,#0xFA
      00161E F8               [12] 4599 	mov	r0,a
      00161F E9               [12] 4600 	mov	a,r1
      001620 34 FF            [12] 4601 	addc	a,#0xFF
      001622 F9               [12] 4602 	mov	r1,a
      001623 88 82            [24] 4603 	mov	dpl,r0
      001625 89 83            [24] 4604 	mov	dph,r1
      001627 8F F0            [24] 4605 	mov	b,r7
      001629 12 5B 6D         [24] 4606 	lcall	__gptrget
      00162C F8               [12] 4607 	mov	r0,a
      00162D A3               [24] 4608 	inc	dptr
      00162E 12 5B 6D         [24] 4609 	lcall	__gptrget
      001631 F9               [12] 4610 	mov	r1,a
      001632 A3               [24] 4611 	inc	dptr
      001633 12 5B 6D         [24] 4612 	lcall	__gptrget
      001636 FF               [12] 4613 	mov	r7,a
      001637 85 3A 82         [24] 4614 	mov	dpl,_osal_msg_dequeue_sloc0_1_0
      00163A 85 3B 83         [24] 4615 	mov	dph,(_osal_msg_dequeue_sloc0_1_0 + 1)
      00163D 85 3C F0         [24] 4616 	mov	b,(_osal_msg_dequeue_sloc0_1_0 + 2)
      001640 E8               [12] 4617 	mov	a,r0
      001641 12 5A 01         [24] 4618 	lcall	__gptrput
      001644 A3               [24] 4619 	inc	dptr
      001645 E9               [12] 4620 	mov	a,r1
      001646 12 5A 01         [24] 4621 	lcall	__gptrput
      001649 A3               [24] 4622 	inc	dptr
      00164A EF               [12] 4623 	mov	a,r7
      00164B 12 5A 01         [24] 4624 	lcall	__gptrput
                                   4625 ;	../osal/common/OSAL.c:764: OSAL_MSG_NEXT( msg_ptr ) = NULL;
      00164E 8A 05            [24] 4626 	mov	ar5,r2
      001650 8B 06            [24] 4627 	mov	ar6,r3
      001652 8C 07            [24] 4628 	mov	ar7,r4
      001654 ED               [12] 4629 	mov	a,r5
      001655 24 FA            [12] 4630 	add	a,#0xFA
      001657 FD               [12] 4631 	mov	r5,a
      001658 EE               [12] 4632 	mov	a,r6
      001659 34 FF            [12] 4633 	addc	a,#0xFF
      00165B FE               [12] 4634 	mov	r6,a
      00165C 8D 82            [24] 4635 	mov	dpl,r5
      00165E 8E 83            [24] 4636 	mov	dph,r6
      001660 8F F0            [24] 4637 	mov	b,r7
      001662 74 00            [12] 4638 	mov	a,#0x00
      001664 12 5A 01         [24] 4639 	lcall	__gptrput
      001667 A3               [24] 4640 	inc	dptr
      001668 12 5A 01         [24] 4641 	lcall	__gptrput
      00166B A3               [24] 4642 	inc	dptr
      00166C 12 5A 01         [24] 4643 	lcall	__gptrput
                                   4644 ;	../osal/common/OSAL.c:765: OSAL_MSG_ID( msg_ptr ) = TASK_NO_TASK;
      00166F 14               [12] 4645 	dec	a
      001670 2A               [12] 4646 	add	a,r2
      001671 FA               [12] 4647 	mov	r2,a
      001672 74 FF            [12] 4648 	mov	a,#0xFF
      001674 3B               [12] 4649 	addc	a,r3
      001675 FB               [12] 4650 	mov	r3,a
      001676 8A 82            [24] 4651 	mov	dpl,r2
      001678 8B 83            [24] 4652 	mov	dph,r3
      00167A 8C F0            [24] 4653 	mov	b,r4
      00167C 74 FF            [12] 4654 	mov	a,#0xFF
      00167E 12 5A 01         [24] 4655 	lcall	__gptrput
                                   4656 ;	../osal/common/OSAL.c:769: HAL_EXIT_CRITICAL_SECTION(intState);
      001681                       4657 00109$:
      001681 90 03 AE         [24] 4658 	mov	dptr,#_osal_msg_dequeue_intState_1_182
      001684 E0               [24] 4659 	movx	a,@dptr
      001685 FF               [12] 4660 	mov	r7,a
      001686 EF               [12] 4661 	mov	a,r7
      001687 24 FF            [12] 4662 	add	a,#0xff
      001689 92 AF            [24] 4663 	mov	_EA,c
                                   4664 ;	../osal/common/OSAL.c:771: return msg_ptr;
      00168B 90 03 AB         [24] 4665 	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
      00168E E0               [24] 4666 	movx	a,@dptr
      00168F FD               [12] 4667 	mov	r5,a
      001690 A3               [24] 4668 	inc	dptr
      001691 E0               [24] 4669 	movx	a,@dptr
      001692 FE               [12] 4670 	mov	r6,a
      001693 A3               [24] 4671 	inc	dptr
      001694 E0               [24] 4672 	movx	a,@dptr
      001695 FF               [12] 4673 	mov	r7,a
      001696 8D 82            [24] 4674 	mov	dpl,r5
      001698 8E 83            [24] 4675 	mov	dph,r6
      00169A 8F F0            [24] 4676 	mov	b,r7
      00169C                       4677 00112$:
      00169C 22               [24] 4678 	ret
                                   4679 ;------------------------------------------------------------
                                   4680 ;Allocation info for local variables in function 'osal_msg_push'
                                   4681 ;------------------------------------------------------------
                                   4682 ;msg_ptr                   Allocated with name '_osal_msg_push_PARM_2'
                                   4683 ;q_ptr                     Allocated with name '_osal_msg_push_q_ptr_1_187'
                                   4684 ;intState                  Allocated with name '_osal_msg_push_intState_1_188'
                                   4685 ;sloc0                     Allocated with name '_osal_msg_push_sloc0_1_0'
                                   4686 ;sloc1                     Allocated with name '_osal_msg_push_sloc1_1_0'
                                   4687 ;sloc2                     Allocated with name '_osal_msg_push_sloc2_1_0'
                                   4688 ;------------------------------------------------------------
                                   4689 ;	../osal/common/OSAL.c:787: void osal_msg_push( osal_msg_q_t *q_ptr, void *msg_ptr )
                                   4690 ;	-----------------------------------------
                                   4691 ;	 function osal_msg_push
                                   4692 ;	-----------------------------------------
      00169D                       4693 _osal_msg_push:
      00169D AF F0            [24] 4694 	mov	r7,b
      00169F AE 83            [24] 4695 	mov	r6,dph
      0016A1 E5 82            [12] 4696 	mov	a,dpl
      0016A3 90 03 B2         [24] 4697 	mov	dptr,#_osal_msg_push_q_ptr_1_187
      0016A6 F0               [24] 4698 	movx	@dptr,a
      0016A7 EE               [12] 4699 	mov	a,r6
      0016A8 A3               [24] 4700 	inc	dptr
      0016A9 F0               [24] 4701 	movx	@dptr,a
      0016AA EF               [12] 4702 	mov	a,r7
      0016AB A3               [24] 4703 	inc	dptr
      0016AC F0               [24] 4704 	movx	@dptr,a
                                   4705 ;	../osal/common/OSAL.c:792: HAL_ENTER_CRITICAL_SECTION(intState);
      0016AD A2 AF            [12] 4706 	mov	c,_EA
      0016AF E4               [12] 4707 	clr	a
      0016B0 33               [12] 4708 	rlc	a
      0016B1 F5 3A            [12] 4709 	mov	_osal_msg_push_sloc0_1_0,a
      0016B3 C2 AF            [12] 4710 	clr	_EA
                                   4711 ;	../osal/common/OSAL.c:795: OSAL_MSG_NEXT( msg_ptr ) = *q_ptr;
      0016B5 90 03 AF         [24] 4712 	mov	dptr,#_osal_msg_push_PARM_2
      0016B8 E0               [24] 4713 	movx	a,@dptr
      0016B9 FC               [12] 4714 	mov	r4,a
      0016BA A3               [24] 4715 	inc	dptr
      0016BB E0               [24] 4716 	movx	a,@dptr
      0016BC FD               [12] 4717 	mov	r5,a
      0016BD A3               [24] 4718 	inc	dptr
      0016BE E0               [24] 4719 	movx	a,@dptr
      0016BF FE               [12] 4720 	mov	r6,a
      0016C0 8C 01            [24] 4721 	mov	ar1,r4
      0016C2 8D 02            [24] 4722 	mov	ar2,r5
      0016C4 8E 03            [24] 4723 	mov	ar3,r6
      0016C6 E9               [12] 4724 	mov	a,r1
      0016C7 24 FA            [12] 4725 	add	a,#0xFA
      0016C9 F5 3B            [12] 4726 	mov	_osal_msg_push_sloc1_1_0,a
      0016CB EA               [12] 4727 	mov	a,r2
      0016CC 34 FF            [12] 4728 	addc	a,#0xFF
      0016CE F5 3C            [12] 4729 	mov	(_osal_msg_push_sloc1_1_0 + 1),a
      0016D0 8B 3D            [24] 4730 	mov	(_osal_msg_push_sloc1_1_0 + 2),r3
      0016D2 90 03 B2         [24] 4731 	mov	dptr,#_osal_msg_push_q_ptr_1_187
      0016D5 E0               [24] 4732 	movx	a,@dptr
      0016D6 F5 3E            [12] 4733 	mov	_osal_msg_push_sloc2_1_0,a
      0016D8 A3               [24] 4734 	inc	dptr
      0016D9 E0               [24] 4735 	movx	a,@dptr
      0016DA F5 3F            [12] 4736 	mov	(_osal_msg_push_sloc2_1_0 + 1),a
      0016DC A3               [24] 4737 	inc	dptr
      0016DD E0               [24] 4738 	movx	a,@dptr
      0016DE F5 40            [12] 4739 	mov	(_osal_msg_push_sloc2_1_0 + 2),a
      0016E0 85 3E 82         [24] 4740 	mov	dpl,_osal_msg_push_sloc2_1_0
      0016E3 85 3F 83         [24] 4741 	mov	dph,(_osal_msg_push_sloc2_1_0 + 1)
      0016E6 85 40 F0         [24] 4742 	mov	b,(_osal_msg_push_sloc2_1_0 + 2)
      0016E9 12 5B 6D         [24] 4743 	lcall	__gptrget
      0016EC F9               [12] 4744 	mov	r1,a
      0016ED A3               [24] 4745 	inc	dptr
      0016EE 12 5B 6D         [24] 4746 	lcall	__gptrget
      0016F1 FA               [12] 4747 	mov	r2,a
      0016F2 A3               [24] 4748 	inc	dptr
      0016F3 12 5B 6D         [24] 4749 	lcall	__gptrget
      0016F6 FF               [12] 4750 	mov	r7,a
      0016F7 85 3B 82         [24] 4751 	mov	dpl,_osal_msg_push_sloc1_1_0
      0016FA 85 3C 83         [24] 4752 	mov	dph,(_osal_msg_push_sloc1_1_0 + 1)
      0016FD 85 3D F0         [24] 4753 	mov	b,(_osal_msg_push_sloc1_1_0 + 2)
      001700 E9               [12] 4754 	mov	a,r1
      001701 12 5A 01         [24] 4755 	lcall	__gptrput
      001704 A3               [24] 4756 	inc	dptr
      001705 EA               [12] 4757 	mov	a,r2
      001706 12 5A 01         [24] 4758 	lcall	__gptrput
      001709 A3               [24] 4759 	inc	dptr
      00170A EF               [12] 4760 	mov	a,r7
      00170B 12 5A 01         [24] 4761 	lcall	__gptrput
                                   4762 ;	../osal/common/OSAL.c:796: *q_ptr = msg_ptr;
      00170E 85 3E 82         [24] 4763 	mov	dpl,_osal_msg_push_sloc2_1_0
      001711 85 3F 83         [24] 4764 	mov	dph,(_osal_msg_push_sloc2_1_0 + 1)
      001714 85 40 F0         [24] 4765 	mov	b,(_osal_msg_push_sloc2_1_0 + 2)
      001717 EC               [12] 4766 	mov	a,r4
      001718 12 5A 01         [24] 4767 	lcall	__gptrput
      00171B A3               [24] 4768 	inc	dptr
      00171C ED               [12] 4769 	mov	a,r5
      00171D 12 5A 01         [24] 4770 	lcall	__gptrput
      001720 A3               [24] 4771 	inc	dptr
      001721 EE               [12] 4772 	mov	a,r6
      001722 12 5A 01         [24] 4773 	lcall	__gptrput
                                   4774 ;	../osal/common/OSAL.c:799: HAL_EXIT_CRITICAL_SECTION(intState);
      001725 E5 3A            [12] 4775 	mov	a,_osal_msg_push_sloc0_1_0
      001727 24 FF            [12] 4776 	add	a,#0xff
      001729 92 AF            [24] 4777 	mov	_EA,c
      00172B                       4778 00110$:
      00172B 22               [24] 4779 	ret
                                   4780 ;------------------------------------------------------------
                                   4781 ;Allocation info for local variables in function 'osal_msg_extract'
                                   4782 ;------------------------------------------------------------
                                   4783 ;msg_ptr                   Allocated with name '_osal_msg_extract_PARM_2'
                                   4784 ;prev_ptr                  Allocated with name '_osal_msg_extract_PARM_3'
                                   4785 ;q_ptr                     Allocated with name '_osal_msg_extract_q_ptr_1_192'
                                   4786 ;intState                  Allocated with name '_osal_msg_extract_intState_1_193'
                                   4787 ;------------------------------------------------------------
                                   4788 ;	../osal/common/OSAL.c:816: void osal_msg_extract( osal_msg_q_t *q_ptr, void *msg_ptr, void *prev_ptr )
                                   4789 ;	-----------------------------------------
                                   4790 ;	 function osal_msg_extract
                                   4791 ;	-----------------------------------------
      00172C                       4792 _osal_msg_extract:
      00172C AF F0            [24] 4793 	mov	r7,b
      00172E AE 83            [24] 4794 	mov	r6,dph
      001730 E5 82            [12] 4795 	mov	a,dpl
      001732 90 03 BB         [24] 4796 	mov	dptr,#_osal_msg_extract_q_ptr_1_192
      001735 F0               [24] 4797 	movx	@dptr,a
      001736 EE               [12] 4798 	mov	a,r6
      001737 A3               [24] 4799 	inc	dptr
      001738 F0               [24] 4800 	movx	@dptr,a
      001739 EF               [12] 4801 	mov	a,r7
      00173A A3               [24] 4802 	inc	dptr
      00173B F0               [24] 4803 	movx	@dptr,a
                                   4804 ;	../osal/common/OSAL.c:821: HAL_ENTER_CRITICAL_SECTION(intState);
      00173C 90 03 BE         [24] 4805 	mov	dptr,#_osal_msg_extract_intState_1_193
      00173F A2 AF            [12] 4806 	mov	c,_EA
      001741 E4               [12] 4807 	clr	a
      001742 33               [12] 4808 	rlc	a
      001743 F0               [24] 4809 	movx	@dptr,a
      001744 C2 AF            [12] 4810 	clr	_EA
                                   4811 ;	../osal/common/OSAL.c:823: if ( msg_ptr == *q_ptr )
      001746 90 03 BB         [24] 4812 	mov	dptr,#_osal_msg_extract_q_ptr_1_192
      001749 E0               [24] 4813 	movx	a,@dptr
      00174A FD               [12] 4814 	mov	r5,a
      00174B A3               [24] 4815 	inc	dptr
      00174C E0               [24] 4816 	movx	a,@dptr
      00174D FE               [12] 4817 	mov	r6,a
      00174E A3               [24] 4818 	inc	dptr
      00174F E0               [24] 4819 	movx	a,@dptr
      001750 FF               [12] 4820 	mov	r7,a
      001751 8D 82            [24] 4821 	mov	dpl,r5
      001753 8E 83            [24] 4822 	mov	dph,r6
      001755 8F F0            [24] 4823 	mov	b,r7
      001757 12 5B 6D         [24] 4824 	lcall	__gptrget
      00175A FD               [12] 4825 	mov	r5,a
      00175B A3               [24] 4826 	inc	dptr
      00175C 12 5B 6D         [24] 4827 	lcall	__gptrget
      00175F FE               [12] 4828 	mov	r6,a
      001760 A3               [24] 4829 	inc	dptr
      001761 12 5B 6D         [24] 4830 	lcall	__gptrget
      001764 FF               [12] 4831 	mov	r7,a
      001765 90 03 B5         [24] 4832 	mov	dptr,#_osal_msg_extract_PARM_2
      001768 E0               [24] 4833 	movx	a,@dptr
      001769 FA               [12] 4834 	mov	r2,a
      00176A A3               [24] 4835 	inc	dptr
      00176B E0               [24] 4836 	movx	a,@dptr
      00176C FB               [12] 4837 	mov	r3,a
      00176D A3               [24] 4838 	inc	dptr
      00176E E0               [24] 4839 	movx	a,@dptr
      00176F FC               [12] 4840 	mov	r4,a
      001770 C0 05            [24] 4841 	push	ar5
      001772 C0 06            [24] 4842 	push	ar6
      001774 C0 07            [24] 4843 	push	ar7
      001776 8A 82            [24] 4844 	mov	dpl,r2
      001778 8B 83            [24] 4845 	mov	dph,r3
      00177A 8C F0            [24] 4846 	mov	b,r4
      00177C 12 00 06         [24] 4847 	lcall	___gptr_cmp
      00177F 15 81            [12] 4848 	dec	sp
      001781 15 81            [12] 4849 	dec	sp
      001783 15 81            [12] 4850 	dec	sp
      001785 70 02            [24] 4851 	jnz	00118$
      001787 80 03            [24] 4852 	sjmp	00119$
      001789                       4853 00118$:
      001789 02 17 D5         [24] 4854 	ljmp	00108$
      00178C                       4855 00119$:
                                   4856 ;	../osal/common/OSAL.c:826: *q_ptr = OSAL_MSG_NEXT( msg_ptr );
      00178C 90 03 BB         [24] 4857 	mov	dptr,#_osal_msg_extract_q_ptr_1_192
      00178F E0               [24] 4858 	movx	a,@dptr
      001790 FD               [12] 4859 	mov	r5,a
      001791 A3               [24] 4860 	inc	dptr
      001792 E0               [24] 4861 	movx	a,@dptr
      001793 FE               [12] 4862 	mov	r6,a
      001794 A3               [24] 4863 	inc	dptr
      001795 E0               [24] 4864 	movx	a,@dptr
      001796 FF               [12] 4865 	mov	r7,a
      001797 90 03 B5         [24] 4866 	mov	dptr,#_osal_msg_extract_PARM_2
      00179A E0               [24] 4867 	movx	a,@dptr
      00179B FA               [12] 4868 	mov	r2,a
      00179C A3               [24] 4869 	inc	dptr
      00179D E0               [24] 4870 	movx	a,@dptr
      00179E FB               [12] 4871 	mov	r3,a
      00179F A3               [24] 4872 	inc	dptr
      0017A0 E0               [24] 4873 	movx	a,@dptr
      0017A1 FC               [12] 4874 	mov	r4,a
      0017A2 EA               [12] 4875 	mov	a,r2
      0017A3 24 FA            [12] 4876 	add	a,#0xFA
      0017A5 FA               [12] 4877 	mov	r2,a
      0017A6 EB               [12] 4878 	mov	a,r3
      0017A7 34 FF            [12] 4879 	addc	a,#0xFF
      0017A9 FB               [12] 4880 	mov	r3,a
      0017AA 8A 82            [24] 4881 	mov	dpl,r2
      0017AC 8B 83            [24] 4882 	mov	dph,r3
      0017AE 8C F0            [24] 4883 	mov	b,r4
      0017B0 12 5B 6D         [24] 4884 	lcall	__gptrget
      0017B3 FA               [12] 4885 	mov	r2,a
      0017B4 A3               [24] 4886 	inc	dptr
      0017B5 12 5B 6D         [24] 4887 	lcall	__gptrget
      0017B8 FB               [12] 4888 	mov	r3,a
      0017B9 A3               [24] 4889 	inc	dptr
      0017BA 12 5B 6D         [24] 4890 	lcall	__gptrget
      0017BD FC               [12] 4891 	mov	r4,a
      0017BE 8D 82            [24] 4892 	mov	dpl,r5
      0017C0 8E 83            [24] 4893 	mov	dph,r6
      0017C2 8F F0            [24] 4894 	mov	b,r7
      0017C4 EA               [12] 4895 	mov	a,r2
      0017C5 12 5A 01         [24] 4896 	lcall	__gptrput
      0017C8 A3               [24] 4897 	inc	dptr
      0017C9 EB               [12] 4898 	mov	a,r3
      0017CA 12 5A 01         [24] 4899 	lcall	__gptrput
      0017CD A3               [24] 4900 	inc	dptr
      0017CE EC               [12] 4901 	mov	a,r4
      0017CF 12 5A 01         [24] 4902 	lcall	__gptrput
      0017D2 02 18 23         [24] 4903 	ljmp	00109$
      0017D5                       4904 00108$:
                                   4905 ;	../osal/common/OSAL.c:831: OSAL_MSG_NEXT( prev_ptr ) = OSAL_MSG_NEXT( msg_ptr );
      0017D5 90 03 B8         [24] 4906 	mov	dptr,#_osal_msg_extract_PARM_3
      0017D8 E0               [24] 4907 	movx	a,@dptr
      0017D9 FD               [12] 4908 	mov	r5,a
      0017DA A3               [24] 4909 	inc	dptr
      0017DB E0               [24] 4910 	movx	a,@dptr
      0017DC FE               [12] 4911 	mov	r6,a
      0017DD A3               [24] 4912 	inc	dptr
      0017DE E0               [24] 4913 	movx	a,@dptr
      0017DF FF               [12] 4914 	mov	r7,a
      0017E0 ED               [12] 4915 	mov	a,r5
      0017E1 24 FA            [12] 4916 	add	a,#0xFA
      0017E3 FD               [12] 4917 	mov	r5,a
      0017E4 EE               [12] 4918 	mov	a,r6
      0017E5 34 FF            [12] 4919 	addc	a,#0xFF
      0017E7 FE               [12] 4920 	mov	r6,a
      0017E8 90 03 B5         [24] 4921 	mov	dptr,#_osal_msg_extract_PARM_2
      0017EB E0               [24] 4922 	movx	a,@dptr
      0017EC FA               [12] 4923 	mov	r2,a
      0017ED A3               [24] 4924 	inc	dptr
      0017EE E0               [24] 4925 	movx	a,@dptr
      0017EF FB               [12] 4926 	mov	r3,a
      0017F0 A3               [24] 4927 	inc	dptr
      0017F1 E0               [24] 4928 	movx	a,@dptr
      0017F2 FC               [12] 4929 	mov	r4,a
      0017F3 EA               [12] 4930 	mov	a,r2
      0017F4 24 FA            [12] 4931 	add	a,#0xFA
      0017F6 FA               [12] 4932 	mov	r2,a
      0017F7 EB               [12] 4933 	mov	a,r3
      0017F8 34 FF            [12] 4934 	addc	a,#0xFF
      0017FA FB               [12] 4935 	mov	r3,a
      0017FB 8A 82            [24] 4936 	mov	dpl,r2
      0017FD 8B 83            [24] 4937 	mov	dph,r3
      0017FF 8C F0            [24] 4938 	mov	b,r4
      001801 12 5B 6D         [24] 4939 	lcall	__gptrget
      001804 FA               [12] 4940 	mov	r2,a
      001805 A3               [24] 4941 	inc	dptr
      001806 12 5B 6D         [24] 4942 	lcall	__gptrget
      001809 FB               [12] 4943 	mov	r3,a
      00180A A3               [24] 4944 	inc	dptr
      00180B 12 5B 6D         [24] 4945 	lcall	__gptrget
      00180E FC               [12] 4946 	mov	r4,a
      00180F 8D 82            [24] 4947 	mov	dpl,r5
      001811 8E 83            [24] 4948 	mov	dph,r6
      001813 8F F0            [24] 4949 	mov	b,r7
      001815 EA               [12] 4950 	mov	a,r2
      001816 12 5A 01         [24] 4951 	lcall	__gptrput
      001819 A3               [24] 4952 	inc	dptr
      00181A EB               [12] 4953 	mov	a,r3
      00181B 12 5A 01         [24] 4954 	lcall	__gptrput
      00181E A3               [24] 4955 	inc	dptr
      00181F EC               [12] 4956 	mov	a,r4
      001820 12 5A 01         [24] 4957 	lcall	__gptrput
      001823                       4958 00109$:
                                   4959 ;	../osal/common/OSAL.c:833: OSAL_MSG_NEXT( msg_ptr ) = NULL;
      001823 90 03 B5         [24] 4960 	mov	dptr,#_osal_msg_extract_PARM_2
      001826 E0               [24] 4961 	movx	a,@dptr
      001827 FD               [12] 4962 	mov	r5,a
      001828 A3               [24] 4963 	inc	dptr
      001829 E0               [24] 4964 	movx	a,@dptr
      00182A FE               [12] 4965 	mov	r6,a
      00182B A3               [24] 4966 	inc	dptr
      00182C E0               [24] 4967 	movx	a,@dptr
      00182D FF               [12] 4968 	mov	r7,a
      00182E 8D 02            [24] 4969 	mov	ar2,r5
      001830 8E 03            [24] 4970 	mov	ar3,r6
      001832 8F 04            [24] 4971 	mov	ar4,r7
      001834 EA               [12] 4972 	mov	a,r2
      001835 24 FA            [12] 4973 	add	a,#0xFA
      001837 FA               [12] 4974 	mov	r2,a
      001838 EB               [12] 4975 	mov	a,r3
      001839 34 FF            [12] 4976 	addc	a,#0xFF
      00183B FB               [12] 4977 	mov	r3,a
      00183C 8A 82            [24] 4978 	mov	dpl,r2
      00183E 8B 83            [24] 4979 	mov	dph,r3
      001840 8C F0            [24] 4980 	mov	b,r4
      001842 74 00            [12] 4981 	mov	a,#0x00
      001844 12 5A 01         [24] 4982 	lcall	__gptrput
      001847 A3               [24] 4983 	inc	dptr
      001848 12 5A 01         [24] 4984 	lcall	__gptrput
      00184B A3               [24] 4985 	inc	dptr
      00184C 12 5A 01         [24] 4986 	lcall	__gptrput
                                   4987 ;	../osal/common/OSAL.c:834: OSAL_MSG_ID( msg_ptr ) = TASK_NO_TASK;
      00184F 14               [12] 4988 	dec	a
      001850 2D               [12] 4989 	add	a,r5
      001851 FD               [12] 4990 	mov	r5,a
      001852 74 FF            [12] 4991 	mov	a,#0xFF
      001854 3E               [12] 4992 	addc	a,r6
      001855 FE               [12] 4993 	mov	r6,a
      001856 8D 82            [24] 4994 	mov	dpl,r5
      001858 8E 83            [24] 4995 	mov	dph,r6
      00185A 8F F0            [24] 4996 	mov	b,r7
      00185C 74 FF            [12] 4997 	mov	a,#0xFF
      00185E 12 5A 01         [24] 4998 	lcall	__gptrput
                                   4999 ;	../osal/common/OSAL.c:837: HAL_EXIT_CRITICAL_SECTION(intState);
      001861 90 03 BE         [24] 5000 	mov	dptr,#_osal_msg_extract_intState_1_193
      001864 E0               [24] 5001 	movx	a,@dptr
      001865 FF               [12] 5002 	mov	r7,a
      001866 EF               [12] 5003 	mov	a,r7
      001867 24 FF            [12] 5004 	add	a,#0xff
      001869 92 AF            [24] 5005 	mov	_EA,c
      00186B                       5006 00113$:
      00186B 22               [24] 5007 	ret
                                   5008 ;------------------------------------------------------------
                                   5009 ;Allocation info for local variables in function 'osal_msg_enqueue_max'
                                   5010 ;------------------------------------------------------------
                                   5011 ;msg_ptr                   Allocated with name '_osal_msg_enqueue_max_PARM_2'
                                   5012 ;max                       Allocated with name '_osal_msg_enqueue_max_PARM_3'
                                   5013 ;q_ptr                     Allocated with name '_osal_msg_enqueue_max_q_ptr_1_199'
                                   5014 ;list                      Allocated with name '_osal_msg_enqueue_max_list_1_200'
                                   5015 ;ret                       Allocated with name '_osal_msg_enqueue_max_ret_1_200'
                                   5016 ;intState                  Allocated with name '_osal_msg_enqueue_max_intState_1_200'
                                   5017 ;------------------------------------------------------------
                                   5018 ;	../osal/common/OSAL.c:854: uint8 osal_msg_enqueue_max( osal_msg_q_t *q_ptr, void *msg_ptr, uint8 max )
                                   5019 ;	-----------------------------------------
                                   5020 ;	 function osal_msg_enqueue_max
                                   5021 ;	-----------------------------------------
      00186C                       5022 _osal_msg_enqueue_max:
      00186C AF F0            [24] 5023 	mov	r7,b
      00186E AE 83            [24] 5024 	mov	r6,dph
      001870 E5 82            [12] 5025 	mov	a,dpl
      001872 90 03 C3         [24] 5026 	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
      001875 F0               [24] 5027 	movx	@dptr,a
      001876 EE               [12] 5028 	mov	a,r6
      001877 A3               [24] 5029 	inc	dptr
      001878 F0               [24] 5030 	movx	@dptr,a
      001879 EF               [12] 5031 	mov	a,r7
      00187A A3               [24] 5032 	inc	dptr
      00187B F0               [24] 5033 	movx	@dptr,a
                                   5034 ;	../osal/common/OSAL.c:857: uint8 ret = FALSE;
      00187C 90 03 C9         [24] 5035 	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
      00187F 74 00            [12] 5036 	mov	a,#0x00
      001881 F0               [24] 5037 	movx	@dptr,a
                                   5038 ;	../osal/common/OSAL.c:861: HAL_ENTER_CRITICAL_SECTION(intState);
      001882 90 03 CA         [24] 5039 	mov	dptr,#_osal_msg_enqueue_max_intState_1_200
      001885 A2 AF            [12] 5040 	mov	c,_EA
      001887 E4               [12] 5041 	clr	a
      001888 33               [12] 5042 	rlc	a
      001889 F0               [24] 5043 	movx	@dptr,a
      00188A C2 AF            [12] 5044 	clr	_EA
                                   5045 ;	../osal/common/OSAL.c:864: if ( *q_ptr == NULL )
      00188C 90 03 C3         [24] 5046 	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
      00188F E0               [24] 5047 	movx	a,@dptr
      001890 FD               [12] 5048 	mov	r5,a
      001891 A3               [24] 5049 	inc	dptr
      001892 E0               [24] 5050 	movx	a,@dptr
      001893 FE               [12] 5051 	mov	r6,a
      001894 A3               [24] 5052 	inc	dptr
      001895 E0               [24] 5053 	movx	a,@dptr
      001896 FF               [12] 5054 	mov	r7,a
      001897 8D 82            [24] 5055 	mov	dpl,r5
      001899 8E 83            [24] 5056 	mov	dph,r6
      00189B 8F F0            [24] 5057 	mov	b,r7
      00189D 12 5B 6D         [24] 5058 	lcall	__gptrget
      0018A0 FD               [12] 5059 	mov	r5,a
      0018A1 A3               [24] 5060 	inc	dptr
      0018A2 12 5B 6D         [24] 5061 	lcall	__gptrget
      0018A5 FE               [12] 5062 	mov	r6,a
      0018A6 A3               [24] 5063 	inc	dptr
      0018A7 12 5B 6D         [24] 5064 	lcall	__gptrget
      0018AA FF               [12] 5065 	mov	r7,a
      0018AB ED               [12] 5066 	mov	a,r5
      0018AC 4E               [12] 5067 	orl	a,r6
      0018AD 60 03            [24] 5068 	jz	00137$
      0018AF 02 18 E5         [24] 5069 	ljmp	00114$
      0018B2                       5070 00137$:
                                   5071 ;	../osal/common/OSAL.c:866: *q_ptr = msg_ptr;
      0018B2 90 03 C3         [24] 5072 	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
      0018B5 E0               [24] 5073 	movx	a,@dptr
      0018B6 FD               [12] 5074 	mov	r5,a
      0018B7 A3               [24] 5075 	inc	dptr
      0018B8 E0               [24] 5076 	movx	a,@dptr
      0018B9 FE               [12] 5077 	mov	r6,a
      0018BA A3               [24] 5078 	inc	dptr
      0018BB E0               [24] 5079 	movx	a,@dptr
      0018BC FF               [12] 5080 	mov	r7,a
      0018BD 90 03 BF         [24] 5081 	mov	dptr,#_osal_msg_enqueue_max_PARM_2
      0018C0 E0               [24] 5082 	movx	a,@dptr
      0018C1 FA               [12] 5083 	mov	r2,a
      0018C2 A3               [24] 5084 	inc	dptr
      0018C3 E0               [24] 5085 	movx	a,@dptr
      0018C4 FB               [12] 5086 	mov	r3,a
      0018C5 A3               [24] 5087 	inc	dptr
      0018C6 E0               [24] 5088 	movx	a,@dptr
      0018C7 FC               [12] 5089 	mov	r4,a
      0018C8 8D 82            [24] 5090 	mov	dpl,r5
      0018CA 8E 83            [24] 5091 	mov	dph,r6
      0018CC 8F F0            [24] 5092 	mov	b,r7
      0018CE EA               [12] 5093 	mov	a,r2
      0018CF 12 5A 01         [24] 5094 	lcall	__gptrput
      0018D2 A3               [24] 5095 	inc	dptr
      0018D3 EB               [12] 5096 	mov	a,r3
      0018D4 12 5A 01         [24] 5097 	lcall	__gptrput
      0018D7 A3               [24] 5098 	inc	dptr
      0018D8 EC               [12] 5099 	mov	a,r4
      0018D9 12 5A 01         [24] 5100 	lcall	__gptrput
                                   5101 ;	../osal/common/OSAL.c:867: ret = TRUE;
      0018DC 90 03 C9         [24] 5102 	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
      0018DF 74 01            [12] 5103 	mov	a,#0x01
      0018E1 F0               [24] 5104 	movx	@dptr,a
      0018E2 02 19 C6         [24] 5105 	ljmp	00116$
      0018E5                       5106 00114$:
                                   5107 ;	../osal/common/OSAL.c:872: list = *q_ptr;
      0018E5 90 03 C3         [24] 5108 	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
      0018E8 E0               [24] 5109 	movx	a,@dptr
      0018E9 FD               [12] 5110 	mov	r5,a
      0018EA A3               [24] 5111 	inc	dptr
      0018EB E0               [24] 5112 	movx	a,@dptr
      0018EC FE               [12] 5113 	mov	r6,a
      0018ED A3               [24] 5114 	inc	dptr
      0018EE E0               [24] 5115 	movx	a,@dptr
      0018EF FF               [12] 5116 	mov	r7,a
      0018F0 8D 82            [24] 5117 	mov	dpl,r5
      0018F2 8E 83            [24] 5118 	mov	dph,r6
      0018F4 8F F0            [24] 5119 	mov	b,r7
      0018F6 12 5B 6D         [24] 5120 	lcall	__gptrget
      0018F9 FD               [12] 5121 	mov	r5,a
      0018FA A3               [24] 5122 	inc	dptr
      0018FB 12 5B 6D         [24] 5123 	lcall	__gptrget
      0018FE FE               [12] 5124 	mov	r6,a
      0018FF A3               [24] 5125 	inc	dptr
      001900 12 5B 6D         [24] 5126 	lcall	__gptrget
      001903 FF               [12] 5127 	mov	r7,a
      001904 90 03 C6         [24] 5128 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      001907 ED               [12] 5129 	mov	a,r5
      001908 F0               [24] 5130 	movx	@dptr,a
      001909 EE               [12] 5131 	mov	a,r6
      00190A A3               [24] 5132 	inc	dptr
      00190B F0               [24] 5133 	movx	@dptr,a
      00190C EF               [12] 5134 	mov	a,r7
      00190D A3               [24] 5135 	inc	dptr
      00190E F0               [24] 5136 	movx	@dptr,a
                                   5137 ;	../osal/common/OSAL.c:873: max--;
      00190F 90 03 C2         [24] 5138 	mov	dptr,#_osal_msg_enqueue_max_PARM_3
      001912 E0               [24] 5139 	movx	a,@dptr
      001913 14               [12] 5140 	dec	a
      001914 F0               [24] 5141 	movx	@dptr,a
                                   5142 ;	../osal/common/OSAL.c:874: while ( (OSAL_MSG_NEXT( list ) != NULL) && (max > 0) )
      001915 E0               [24] 5143 	movx	a,@dptr
      001916 FF               [12] 5144 	mov	r7,a
      001917                       5145 00108$:
      001917 90 03 C6         [24] 5146 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      00191A E0               [24] 5147 	movx	a,@dptr
      00191B FC               [12] 5148 	mov	r4,a
      00191C A3               [24] 5149 	inc	dptr
      00191D E0               [24] 5150 	movx	a,@dptr
      00191E FD               [12] 5151 	mov	r5,a
      00191F A3               [24] 5152 	inc	dptr
      001920 E0               [24] 5153 	movx	a,@dptr
      001921 FE               [12] 5154 	mov	r6,a
      001922 EC               [12] 5155 	mov	a,r4
      001923 24 FA            [12] 5156 	add	a,#0xFA
      001925 FC               [12] 5157 	mov	r4,a
      001926 ED               [12] 5158 	mov	a,r5
      001927 34 FF            [12] 5159 	addc	a,#0xFF
      001929 FD               [12] 5160 	mov	r5,a
      00192A 8C 82            [24] 5161 	mov	dpl,r4
      00192C 8D 83            [24] 5162 	mov	dph,r5
      00192E 8E F0            [24] 5163 	mov	b,r6
      001930 12 5B 6D         [24] 5164 	lcall	__gptrget
      001933 FC               [12] 5165 	mov	r4,a
      001934 A3               [24] 5166 	inc	dptr
      001935 12 5B 6D         [24] 5167 	lcall	__gptrget
      001938 FD               [12] 5168 	mov	r5,a
      001939 A3               [24] 5169 	inc	dptr
      00193A 12 5B 6D         [24] 5170 	lcall	__gptrget
      00193D FE               [12] 5171 	mov	r6,a
      00193E EC               [12] 5172 	mov	a,r4
      00193F 4D               [12] 5173 	orl	a,r5
      001940 70 03            [24] 5174 	jnz	00138$
      001942 02 19 81         [24] 5175 	ljmp	00126$
      001945                       5176 00138$:
      001945 EF               [12] 5177 	mov	a,r7
      001946 70 03            [24] 5178 	jnz	00139$
      001948 02 19 81         [24] 5179 	ljmp	00126$
      00194B                       5180 00139$:
                                   5181 ;	../osal/common/OSAL.c:876: list = OSAL_MSG_NEXT( list );
      00194B 90 03 C6         [24] 5182 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      00194E E0               [24] 5183 	movx	a,@dptr
      00194F FC               [12] 5184 	mov	r4,a
      001950 A3               [24] 5185 	inc	dptr
      001951 E0               [24] 5186 	movx	a,@dptr
      001952 FD               [12] 5187 	mov	r5,a
      001953 A3               [24] 5188 	inc	dptr
      001954 E0               [24] 5189 	movx	a,@dptr
      001955 FE               [12] 5190 	mov	r6,a
      001956 EC               [12] 5191 	mov	a,r4
      001957 24 FA            [12] 5192 	add	a,#0xFA
      001959 FC               [12] 5193 	mov	r4,a
      00195A ED               [12] 5194 	mov	a,r5
      00195B 34 FF            [12] 5195 	addc	a,#0xFF
      00195D FD               [12] 5196 	mov	r5,a
      00195E 8C 82            [24] 5197 	mov	dpl,r4
      001960 8D 83            [24] 5198 	mov	dph,r5
      001962 8E F0            [24] 5199 	mov	b,r6
      001964 12 5B 6D         [24] 5200 	lcall	__gptrget
      001967 FC               [12] 5201 	mov	r4,a
      001968 A3               [24] 5202 	inc	dptr
      001969 12 5B 6D         [24] 5203 	lcall	__gptrget
      00196C FD               [12] 5204 	mov	r5,a
      00196D A3               [24] 5205 	inc	dptr
      00196E 12 5B 6D         [24] 5206 	lcall	__gptrget
      001971 FE               [12] 5207 	mov	r6,a
      001972 90 03 C6         [24] 5208 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      001975 EC               [12] 5209 	mov	a,r4
      001976 F0               [24] 5210 	movx	@dptr,a
      001977 ED               [12] 5211 	mov	a,r5
      001978 A3               [24] 5212 	inc	dptr
      001979 F0               [24] 5213 	movx	@dptr,a
      00197A EE               [12] 5214 	mov	a,r6
      00197B A3               [24] 5215 	inc	dptr
      00197C F0               [24] 5216 	movx	@dptr,a
                                   5217 ;	../osal/common/OSAL.c:877: max--;
      00197D 1F               [12] 5218 	dec	r7
      00197E 02 19 17         [24] 5219 	ljmp	00108$
      001981                       5220 00126$:
      001981 90 03 C2         [24] 5221 	mov	dptr,#_osal_msg_enqueue_max_PARM_3
      001984 EF               [12] 5222 	mov	a,r7
      001985 F0               [24] 5223 	movx	@dptr,a
                                   5224 ;	../osal/common/OSAL.c:881: if ( max != 0 )
      001986 E0               [24] 5225 	movx	a,@dptr
      001987 FF               [12] 5226 	mov	r7,a
      001988 EF               [12] 5227 	mov	a,r7
      001989 70 03            [24] 5228 	jnz	00140$
      00198B 02 19 C6         [24] 5229 	ljmp	00116$
      00198E                       5230 00140$:
                                   5231 ;	../osal/common/OSAL.c:883: OSAL_MSG_NEXT( list ) = msg_ptr;
      00198E 90 03 C6         [24] 5232 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      001991 E0               [24] 5233 	movx	a,@dptr
      001992 FD               [12] 5234 	mov	r5,a
      001993 A3               [24] 5235 	inc	dptr
      001994 E0               [24] 5236 	movx	a,@dptr
      001995 FE               [12] 5237 	mov	r6,a
      001996 A3               [24] 5238 	inc	dptr
      001997 E0               [24] 5239 	movx	a,@dptr
      001998 FF               [12] 5240 	mov	r7,a
      001999 ED               [12] 5241 	mov	a,r5
      00199A 24 FA            [12] 5242 	add	a,#0xFA
      00199C FD               [12] 5243 	mov	r5,a
      00199D EE               [12] 5244 	mov	a,r6
      00199E 34 FF            [12] 5245 	addc	a,#0xFF
      0019A0 FE               [12] 5246 	mov	r6,a
      0019A1 90 03 BF         [24] 5247 	mov	dptr,#_osal_msg_enqueue_max_PARM_2
      0019A4 E0               [24] 5248 	movx	a,@dptr
      0019A5 FA               [12] 5249 	mov	r2,a
      0019A6 A3               [24] 5250 	inc	dptr
      0019A7 E0               [24] 5251 	movx	a,@dptr
      0019A8 FB               [12] 5252 	mov	r3,a
      0019A9 A3               [24] 5253 	inc	dptr
      0019AA E0               [24] 5254 	movx	a,@dptr
      0019AB FC               [12] 5255 	mov	r4,a
      0019AC 8D 82            [24] 5256 	mov	dpl,r5
      0019AE 8E 83            [24] 5257 	mov	dph,r6
      0019B0 8F F0            [24] 5258 	mov	b,r7
      0019B2 EA               [12] 5259 	mov	a,r2
      0019B3 12 5A 01         [24] 5260 	lcall	__gptrput
      0019B6 A3               [24] 5261 	inc	dptr
      0019B7 EB               [12] 5262 	mov	a,r3
      0019B8 12 5A 01         [24] 5263 	lcall	__gptrput
      0019BB A3               [24] 5264 	inc	dptr
      0019BC EC               [12] 5265 	mov	a,r4
      0019BD 12 5A 01         [24] 5266 	lcall	__gptrput
                                   5267 ;	../osal/common/OSAL.c:884: ret = TRUE;
      0019C0 90 03 C9         [24] 5268 	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
      0019C3 74 01            [12] 5269 	mov	a,#0x01
      0019C5 F0               [24] 5270 	movx	@dptr,a
                                   5271 ;	../osal/common/OSAL.c:889: HAL_EXIT_CRITICAL_SECTION(intState);
      0019C6                       5272 00116$:
      0019C6 90 03 CA         [24] 5273 	mov	dptr,#_osal_msg_enqueue_max_intState_1_200
      0019C9 E0               [24] 5274 	movx	a,@dptr
      0019CA FF               [12] 5275 	mov	r7,a
      0019CB EF               [12] 5276 	mov	a,r7
      0019CC 24 FF            [12] 5277 	add	a,#0xff
      0019CE 92 AF            [24] 5278 	mov	_EA,c
                                   5279 ;	../osal/common/OSAL.c:891: return ret;
      0019D0 90 03 C9         [24] 5280 	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
      0019D3 E0               [24] 5281 	movx	a,@dptr
      0019D4 FF               [12] 5282 	mov	r7,a
      0019D5 8F 82            [24] 5283 	mov	dpl,r7
      0019D7                       5284 00119$:
      0019D7 22               [24] 5285 	ret
                                   5286 ;------------------------------------------------------------
                                   5287 ;Allocation info for local variables in function 'osal_set_event'
                                   5288 ;------------------------------------------------------------
                                   5289 ;event_flag                Allocated with name '_osal_set_event_PARM_2'
                                   5290 ;task_id                   Allocated with name '_osal_set_event_task_id_1_208'
                                   5291 ;intState                  Allocated with name '_osal_set_event_intState_2_210'
                                   5292 ;------------------------------------------------------------
                                   5293 ;	../osal/common/OSAL.c:907: uint8 osal_set_event( uint8 task_id, uint16 event_flag )
                                   5294 ;	-----------------------------------------
                                   5295 ;	 function osal_set_event
                                   5296 ;	-----------------------------------------
      0019D8                       5297 _osal_set_event:
      0019D8 E5 82            [12] 5298 	mov	a,dpl
      0019DA 90 03 CD         [24] 5299 	mov	dptr,#_osal_set_event_task_id_1_208
      0019DD F0               [24] 5300 	movx	@dptr,a
                                   5301 ;	../osal/common/OSAL.c:909: if ( task_id < tasksCnt )
      0019DE E0               [24] 5302 	movx	a,@dptr
      0019DF FF               [12] 5303 	mov	r7,a
      0019E0 90 5B 99         [24] 5304 	mov	dptr,#_tasksCnt
      0019E3 E4               [12] 5305 	clr	a
      0019E4 93               [24] 5306 	movc	a,@a+dptr
      0019E5 FE               [12] 5307 	mov	r6,a
      0019E6 C3               [12] 5308 	clr	c
      0019E7 EF               [12] 5309 	mov	a,r7
      0019E8 9E               [12] 5310 	subb	a,r6
      0019E9 40 03            [24] 5311 	jc	00109$
      0019EB 02 1A 3B         [24] 5312 	ljmp	00102$
      0019EE                       5313 00109$:
                                   5314 ;	../osal/common/OSAL.c:913: tasksEvents[task_id] |= event_flag;  // Stuff the event bit(s)
      0019EE 90 10 77         [24] 5315 	mov	dptr,#_tasksEvents
      0019F1 E0               [24] 5316 	movx	a,@dptr
      0019F2 FD               [12] 5317 	mov	r5,a
      0019F3 A3               [24] 5318 	inc	dptr
      0019F4 E0               [24] 5319 	movx	a,@dptr
      0019F5 FE               [12] 5320 	mov	r6,a
      0019F6 A3               [24] 5321 	inc	dptr
      0019F7 E0               [24] 5322 	movx	a,@dptr
      0019F8 FF               [12] 5323 	mov	r7,a
      0019F9 90 03 CD         [24] 5324 	mov	dptr,#_osal_set_event_task_id_1_208
      0019FC E0               [24] 5325 	movx	a,@dptr
      0019FD FC               [12] 5326 	mov	r4,a
      0019FE EC               [12] 5327 	mov	a,r4
      0019FF 75 F0 02         [24] 5328 	mov	b,#0x02
      001A02 A4               [48] 5329 	mul	ab
      001A03 2D               [12] 5330 	add	a,r5
      001A04 FD               [12] 5331 	mov	r5,a
      001A05 EE               [12] 5332 	mov	a,r6
      001A06 35 F0            [12] 5333 	addc	a,b
      001A08 FE               [12] 5334 	mov	r6,a
      001A09 8D 82            [24] 5335 	mov	dpl,r5
      001A0B 8E 83            [24] 5336 	mov	dph,r6
      001A0D 8F F0            [24] 5337 	mov	b,r7
      001A0F 12 5B 6D         [24] 5338 	lcall	__gptrget
      001A12 FB               [12] 5339 	mov	r3,a
      001A13 A3               [24] 5340 	inc	dptr
      001A14 12 5B 6D         [24] 5341 	lcall	__gptrget
      001A17 FC               [12] 5342 	mov	r4,a
      001A18 90 03 CB         [24] 5343 	mov	dptr,#_osal_set_event_PARM_2
      001A1B E0               [24] 5344 	movx	a,@dptr
      001A1C F9               [12] 5345 	mov	r1,a
      001A1D A3               [24] 5346 	inc	dptr
      001A1E E0               [24] 5347 	movx	a,@dptr
      001A1F FA               [12] 5348 	mov	r2,a
      001A20 E9               [12] 5349 	mov	a,r1
      001A21 42 03            [12] 5350 	orl	ar3,a
      001A23 EA               [12] 5351 	mov	a,r2
      001A24 42 04            [12] 5352 	orl	ar4,a
      001A26 8D 82            [24] 5353 	mov	dpl,r5
      001A28 8E 83            [24] 5354 	mov	dph,r6
      001A2A 8F F0            [24] 5355 	mov	b,r7
      001A2C EB               [12] 5356 	mov	a,r3
      001A2D 12 5A 01         [24] 5357 	lcall	__gptrput
      001A30 A3               [24] 5358 	inc	dptr
      001A31 EC               [12] 5359 	mov	a,r4
      001A32 12 5A 01         [24] 5360 	lcall	__gptrput
                                   5361 ;	../osal/common/OSAL.c:915: return ( SUCCESS );
      001A35 75 82 00         [24] 5362 	mov	dpl,#0x00
      001A38 02 1A 3E         [24] 5363 	ljmp	00104$
      001A3B                       5364 00102$:
                                   5365 ;	../osal/common/OSAL.c:919: return ( INVALID_TASK );
      001A3B 75 82 03         [24] 5366 	mov	dpl,#0x03
      001A3E                       5367 00104$:
      001A3E 22               [24] 5368 	ret
                                   5369 ;------------------------------------------------------------
                                   5370 ;Allocation info for local variables in function 'osal_clear_event'
                                   5371 ;------------------------------------------------------------
                                   5372 ;event_flag                Allocated with name '_osal_clear_event_PARM_2'
                                   5373 ;task_id                   Allocated with name '_osal_clear_event_task_id_1_212'
                                   5374 ;intState                  Allocated with name '_osal_clear_event_intState_2_214'
                                   5375 ;------------------------------------------------------------
                                   5376 ;	../osal/common/OSAL.c:936: uint8 osal_clear_event( uint8 task_id, uint16 event_flag )
                                   5377 ;	-----------------------------------------
                                   5378 ;	 function osal_clear_event
                                   5379 ;	-----------------------------------------
      001A3F                       5380 _osal_clear_event:
      001A3F E5 82            [12] 5381 	mov	a,dpl
      001A41 90 03 D0         [24] 5382 	mov	dptr,#_osal_clear_event_task_id_1_212
      001A44 F0               [24] 5383 	movx	@dptr,a
                                   5384 ;	../osal/common/OSAL.c:938: if ( task_id < tasksCnt )
      001A45 E0               [24] 5385 	movx	a,@dptr
      001A46 FF               [12] 5386 	mov	r7,a
      001A47 90 5B 99         [24] 5387 	mov	dptr,#_tasksCnt
      001A4A E4               [12] 5388 	clr	a
      001A4B 93               [24] 5389 	movc	a,@a+dptr
      001A4C FE               [12] 5390 	mov	r6,a
      001A4D C3               [12] 5391 	clr	c
      001A4E EF               [12] 5392 	mov	a,r7
      001A4F 9E               [12] 5393 	subb	a,r6
      001A50 40 03            [24] 5394 	jc	00118$
      001A52 02 1A B4         [24] 5395 	ljmp	00111$
      001A55                       5396 00118$:
                                   5397 ;	../osal/common/OSAL.c:941: HAL_ENTER_CRITICAL_SECTION(intState);    // Hold off interrupts
      001A55 A2 AF            [12] 5398 	mov	c,_EA
      001A57 E4               [12] 5399 	clr	a
      001A58 33               [12] 5400 	rlc	a
      001A59 FF               [12] 5401 	mov	r7,a
      001A5A C2 AF            [12] 5402 	clr	_EA
                                   5403 ;	../osal/common/OSAL.c:942: tasksEvents[task_id] &= ~(event_flag);   // Clear the event bit(s)
      001A5C 90 10 77         [24] 5404 	mov	dptr,#_tasksEvents
      001A5F E0               [24] 5405 	movx	a,@dptr
      001A60 FC               [12] 5406 	mov	r4,a
      001A61 A3               [24] 5407 	inc	dptr
      001A62 E0               [24] 5408 	movx	a,@dptr
      001A63 FD               [12] 5409 	mov	r5,a
      001A64 A3               [24] 5410 	inc	dptr
      001A65 E0               [24] 5411 	movx	a,@dptr
      001A66 FE               [12] 5412 	mov	r6,a
      001A67 90 03 D0         [24] 5413 	mov	dptr,#_osal_clear_event_task_id_1_212
      001A6A E0               [24] 5414 	movx	a,@dptr
      001A6B FB               [12] 5415 	mov	r3,a
      001A6C EB               [12] 5416 	mov	a,r3
      001A6D 75 F0 02         [24] 5417 	mov	b,#0x02
      001A70 A4               [48] 5418 	mul	ab
      001A71 2C               [12] 5419 	add	a,r4
      001A72 FC               [12] 5420 	mov	r4,a
      001A73 ED               [12] 5421 	mov	a,r5
      001A74 35 F0            [12] 5422 	addc	a,b
      001A76 FD               [12] 5423 	mov	r5,a
      001A77 8C 82            [24] 5424 	mov	dpl,r4
      001A79 8D 83            [24] 5425 	mov	dph,r5
      001A7B 8E F0            [24] 5426 	mov	b,r6
      001A7D 12 5B 6D         [24] 5427 	lcall	__gptrget
      001A80 FA               [12] 5428 	mov	r2,a
      001A81 A3               [24] 5429 	inc	dptr
      001A82 12 5B 6D         [24] 5430 	lcall	__gptrget
      001A85 FB               [12] 5431 	mov	r3,a
      001A86 90 03 CE         [24] 5432 	mov	dptr,#_osal_clear_event_PARM_2
      001A89 E0               [24] 5433 	movx	a,@dptr
      001A8A F8               [12] 5434 	mov	r0,a
      001A8B A3               [24] 5435 	inc	dptr
      001A8C E0               [24] 5436 	movx	a,@dptr
      001A8D F9               [12] 5437 	mov	r1,a
      001A8E E8               [12] 5438 	mov	a,r0
      001A8F F4               [12] 5439 	cpl	a
      001A90 F8               [12] 5440 	mov	r0,a
      001A91 E9               [12] 5441 	mov	a,r1
      001A92 F4               [12] 5442 	cpl	a
      001A93 F9               [12] 5443 	mov	r1,a
      001A94 E8               [12] 5444 	mov	a,r0
      001A95 52 02            [12] 5445 	anl	ar2,a
      001A97 E9               [12] 5446 	mov	a,r1
      001A98 52 03            [12] 5447 	anl	ar3,a
      001A9A 8C 82            [24] 5448 	mov	dpl,r4
      001A9C 8D 83            [24] 5449 	mov	dph,r5
      001A9E 8E F0            [24] 5450 	mov	b,r6
      001AA0 EA               [12] 5451 	mov	a,r2
      001AA1 12 5A 01         [24] 5452 	lcall	__gptrput
      001AA4 A3               [24] 5453 	inc	dptr
      001AA5 EB               [12] 5454 	mov	a,r3
      001AA6 12 5A 01         [24] 5455 	lcall	__gptrput
                                   5456 ;	../osal/common/OSAL.c:943: HAL_EXIT_CRITICAL_SECTION(intState);     // Release interrupts
      001AA9 EF               [12] 5457 	mov	a,r7
      001AAA 24 FF            [12] 5458 	add	a,#0xff
      001AAC 92 AF            [24] 5459 	mov	_EA,c
                                   5460 ;	../osal/common/OSAL.c:944: return ( SUCCESS );
      001AAE 75 82 00         [24] 5461 	mov	dpl,#0x00
      001AB1 02 1A B7         [24] 5462 	ljmp	00113$
      001AB4                       5463 00111$:
                                   5464 ;	../osal/common/OSAL.c:948: return ( INVALID_TASK );
      001AB4 75 82 03         [24] 5465 	mov	dpl,#0x03
      001AB7                       5466 00113$:
      001AB7 22               [24] 5467 	ret
                                   5468 ;------------------------------------------------------------
                                   5469 ;Allocation info for local variables in function 'osal_isr_register'
                                   5470 ;------------------------------------------------------------
                                   5471 ;isr_ptr                   Allocated with name '_osal_isr_register_PARM_2'
                                   5472 ;interrupt_id              Allocated with name '_osal_isr_register_interrupt_id_1_219'
                                   5473 ;------------------------------------------------------------
                                   5474 ;	../osal/common/OSAL.c:965: uint8 osal_isr_register( uint8 interrupt_id, void (*isr_ptr)( uint8* ) )
                                   5475 ;	-----------------------------------------
                                   5476 ;	 function osal_isr_register
                                   5477 ;	-----------------------------------------
      001AB8                       5478 _osal_isr_register:
                                   5479 ;	../osal/common/OSAL.c:970: return ( SUCCESS );
      001AB8 75 82 00         [24] 5480 	mov	dpl,#0x00
      001ABB                       5481 00101$:
      001ABB 22               [24] 5482 	ret
                                   5483 ;------------------------------------------------------------
                                   5484 ;Allocation info for local variables in function 'osal_int_enable'
                                   5485 ;------------------------------------------------------------
                                   5486 ;interrupt_id              Allocated with name '_osal_int_enable_interrupt_id_1_222'
                                   5487 ;------------------------------------------------------------
                                   5488 ;	../osal/common/OSAL.c:990: uint8 osal_int_enable( uint8 interrupt_id )
                                   5489 ;	-----------------------------------------
                                   5490 ;	 function osal_int_enable
                                   5491 ;	-----------------------------------------
      001ABC                       5492 _osal_int_enable:
      001ABC E5 82            [12] 5493 	mov	a,dpl
      001ABE 90 03 D3         [24] 5494 	mov	dptr,#_osal_int_enable_interrupt_id_1_222
      001AC1 F0               [24] 5495 	movx	@dptr,a
                                   5496 ;	../osal/common/OSAL.c:993: if ( interrupt_id == INTS_ALL )
      001AC2 E0               [24] 5497 	movx	a,@dptr
      001AC3 FF               [12] 5498 	mov	r7,a
      001AC4 BF FF 02         [24] 5499 	cjne	r7,#0xFF,00112$
      001AC7 80 03            [24] 5500 	sjmp	00113$
      001AC9                       5501 00112$:
      001AC9 02 1A D4         [24] 5502 	ljmp	00105$
      001ACC                       5503 00113$:
                                   5504 ;	../osal/common/OSAL.c:995: HAL_ENABLE_INTERRUPTS();
      001ACC D2 AF            [12] 5505 	setb	_EA
                                   5506 ;	../osal/common/OSAL.c:996: return ( SUCCESS );
      001ACE 75 82 00         [24] 5507 	mov	dpl,#0x00
      001AD1 02 1A D7         [24] 5508 	ljmp	00107$
      001AD4                       5509 00105$:
                                   5510 ;	../osal/common/OSAL.c:1000: return ( INVALID_INTERRUPT_ID );
      001AD4 75 82 07         [24] 5511 	mov	dpl,#0x07
      001AD7                       5512 00107$:
      001AD7 22               [24] 5513 	ret
                                   5514 ;------------------------------------------------------------
                                   5515 ;Allocation info for local variables in function 'osal_int_disable'
                                   5516 ;------------------------------------------------------------
                                   5517 ;interrupt_id              Allocated with name '_osal_int_disable_interrupt_id_1_227'
                                   5518 ;------------------------------------------------------------
                                   5519 ;	../osal/common/OSAL.c:1020: uint8 osal_int_disable( uint8 interrupt_id )
                                   5520 ;	-----------------------------------------
                                   5521 ;	 function osal_int_disable
                                   5522 ;	-----------------------------------------
      001AD8                       5523 _osal_int_disable:
      001AD8 E5 82            [12] 5524 	mov	a,dpl
      001ADA 90 03 D4         [24] 5525 	mov	dptr,#_osal_int_disable_interrupt_id_1_227
      001ADD F0               [24] 5526 	movx	@dptr,a
                                   5527 ;	../osal/common/OSAL.c:1023: if ( interrupt_id == INTS_ALL )
      001ADE E0               [24] 5528 	movx	a,@dptr
      001ADF FF               [12] 5529 	mov	r7,a
      001AE0 BF FF 02         [24] 5530 	cjne	r7,#0xFF,00112$
      001AE3 80 03            [24] 5531 	sjmp	00113$
      001AE5                       5532 00112$:
      001AE5 02 1A F0         [24] 5533 	ljmp	00105$
      001AE8                       5534 00113$:
                                   5535 ;	../osal/common/OSAL.c:1025: HAL_DISABLE_INTERRUPTS();
      001AE8 C2 AF            [12] 5536 	clr	_EA
                                   5537 ;	../osal/common/OSAL.c:1026: return ( SUCCESS );
      001AEA 75 82 00         [24] 5538 	mov	dpl,#0x00
      001AED 02 1A F3         [24] 5539 	ljmp	00107$
      001AF0                       5540 00105$:
                                   5541 ;	../osal/common/OSAL.c:1030: return ( INVALID_INTERRUPT_ID );
      001AF0 75 82 07         [24] 5542 	mov	dpl,#0x07
      001AF3                       5543 00107$:
      001AF3 22               [24] 5544 	ret
                                   5545 ;------------------------------------------------------------
                                   5546 ;Allocation info for local variables in function 'osal_init_system'
                                   5547 ;------------------------------------------------------------
                                   5548 ;	../osal/common/OSAL.c:1046: uint8 osal_init_system( void )
                                   5549 ;	-----------------------------------------
                                   5550 ;	 function osal_init_system
                                   5551 ;	-----------------------------------------
      001AF4                       5552 _osal_init_system:
                                   5553 ;	../osal/common/OSAL.c:1049: osal_mem_init();
      001AF4 12 1F B3         [24] 5554 	lcall	_osal_mem_init
                                   5555 ;	../osal/common/OSAL.c:1052: osal_qHead = NULL;
      001AF7 90 03 05         [24] 5556 	mov	dptr,#_osal_qHead
      001AFA 74 00            [12] 5557 	mov	a,#0x00
      001AFC F0               [24] 5558 	movx	@dptr,a
      001AFD A3               [24] 5559 	inc	dptr
      001AFE F0               [24] 5560 	movx	@dptr,a
      001AFF A3               [24] 5561 	inc	dptr
      001B00 F0               [24] 5562 	movx	@dptr,a
                                   5563 ;	../osal/common/OSAL.c:1055: osalTimerInit();
      001B01 12 24 0C         [24] 5564 	lcall	_osalTimerInit
                                   5565 ;	../osal/common/OSAL.c:1061: osalInitTasks();
      001B04 12 30 5C         [24] 5566 	lcall	_osalInitTasks
                                   5567 ;	../osal/common/OSAL.c:1066: return ( SUCCESS );
      001B07 75 82 00         [24] 5568 	mov	dpl,#0x00
      001B0A                       5569 00101$:
      001B0A 22               [24] 5570 	ret
                                   5571 ;------------------------------------------------------------
                                   5572 ;Allocation info for local variables in function 'osal_start_system'
                                   5573 ;------------------------------------------------------------
                                   5574 ;	../osal/common/OSAL.c:1081: void osal_start_system( void )
                                   5575 ;	-----------------------------------------
                                   5576 ;	 function osal_start_system
                                   5577 ;	-----------------------------------------
      001B0B                       5578 _osal_start_system:
      001B0B                       5579 00102$:
                                   5580 ;	../osal/common/OSAL.c:1087: osal_run_system();
      001B0B 12 1B 12         [24] 5581 	lcall	_osal_run_system
      001B0E 02 1B 0B         [24] 5582 	ljmp	00102$
      001B11                       5583 00104$:
      001B11 22               [24] 5584 	ret
                                   5585 ;------------------------------------------------------------
                                   5586 ;Allocation info for local variables in function 'osal_run_system'
                                   5587 ;------------------------------------------------------------
                                   5588 ;idx                       Allocated with name '_osal_run_system_idx_1_238'
                                   5589 ;events                    Allocated with name '_osal_run_system_events_2_241'
                                   5590 ;------------------------------------------------------------
                                   5591 ;	../osal/common/OSAL.c:1105: void osal_run_system( void )
                                   5592 ;	-----------------------------------------
                                   5593 ;	 function osal_run_system
                                   5594 ;	-----------------------------------------
      001B12                       5595 _osal_run_system:
                                   5596 ;	../osal/common/OSAL.c:1107: uint8 idx = 0;
      001B12 90 03 D5         [24] 5597 	mov	dptr,#_osal_run_system_idx_1_238
      001B15 74 00            [12] 5598 	mov	a,#0x00
      001B17 F0               [24] 5599 	movx	@dptr,a
                                   5600 ;	../osal/common/OSAL.c:1110: osalTimeUpdate();
      001B18 12 30 D7         [24] 5601 	lcall	_osalTimeUpdate
                                   5602 ;	../osal/common/OSAL.c:1115: do {
      001B1B 90 03 D5         [24] 5603 	mov	dptr,#_osal_run_system_idx_1_238
      001B1E E0               [24] 5604 	movx	a,@dptr
      001B1F FF               [12] 5605 	mov	r7,a
      001B20                       5606 00103$:
                                   5607 ;	../osal/common/OSAL.c:1116: if (tasksEvents[idx])  // Task is highest priority that is ready.
      001B20 90 10 77         [24] 5608 	mov	dptr,#_tasksEvents
      001B23 E0               [24] 5609 	movx	a,@dptr
      001B24 FC               [12] 5610 	mov	r4,a
      001B25 A3               [24] 5611 	inc	dptr
      001B26 E0               [24] 5612 	movx	a,@dptr
      001B27 FD               [12] 5613 	mov	r5,a
      001B28 A3               [24] 5614 	inc	dptr
      001B29 E0               [24] 5615 	movx	a,@dptr
      001B2A FE               [12] 5616 	mov	r6,a
      001B2B EF               [12] 5617 	mov	a,r7
      001B2C 75 F0 02         [24] 5618 	mov	b,#0x02
      001B2F A4               [48] 5619 	mul	ab
      001B30 2C               [12] 5620 	add	a,r4
      001B31 FC               [12] 5621 	mov	r4,a
      001B32 ED               [12] 5622 	mov	a,r5
      001B33 35 F0            [12] 5623 	addc	a,b
      001B35 FD               [12] 5624 	mov	r5,a
      001B36 8C 82            [24] 5625 	mov	dpl,r4
      001B38 8D 83            [24] 5626 	mov	dph,r5
      001B3A 8E F0            [24] 5627 	mov	b,r6
      001B3C 12 5B 6D         [24] 5628 	lcall	__gptrget
      001B3F FC               [12] 5629 	mov	r4,a
      001B40 A3               [24] 5630 	inc	dptr
      001B41 12 5B 6D         [24] 5631 	lcall	__gptrget
      001B44 FD               [12] 5632 	mov	r5,a
      001B45 EC               [12] 5633 	mov	a,r4
      001B46 4D               [12] 5634 	orl	a,r5
      001B47 60 03            [24] 5635 	jz	00120$
      001B49 02 1B 5B         [24] 5636 	ljmp	00113$
      001B4C                       5637 00120$:
                                   5638 ;	../osal/common/OSAL.c:1120: } while (++idx < tasksCnt);
      001B4C 0F               [12] 5639 	inc	r7
      001B4D 90 5B 99         [24] 5640 	mov	dptr,#_tasksCnt
      001B50 E4               [12] 5641 	clr	a
      001B51 93               [24] 5642 	movc	a,@a+dptr
      001B52 FE               [12] 5643 	mov	r6,a
      001B53 C3               [12] 5644 	clr	c
      001B54 EF               [12] 5645 	mov	a,r7
      001B55 9E               [12] 5646 	subb	a,r6
      001B56 50 03            [24] 5647 	jnc	00121$
      001B58 02 1B 20         [24] 5648 	ljmp	00103$
      001B5B                       5649 00121$:
      001B5B                       5650 00113$:
      001B5B 90 03 D5         [24] 5651 	mov	dptr,#_osal_run_system_idx_1_238
      001B5E EF               [12] 5652 	mov	a,r7
      001B5F F0               [24] 5653 	movx	@dptr,a
                                   5654 ;	../osal/common/OSAL.c:1132: if (idx < tasksCnt)
      001B60 E0               [24] 5655 	movx	a,@dptr
      001B61 FF               [12] 5656 	mov	r7,a
      001B62 90 5B 99         [24] 5657 	mov	dptr,#_tasksCnt
      001B65 E4               [12] 5658 	clr	a
      001B66 93               [24] 5659 	movc	a,@a+dptr
      001B67 FE               [12] 5660 	mov	r6,a
      001B68 C3               [12] 5661 	clr	c
      001B69 EF               [12] 5662 	mov	a,r7
      001B6A 9E               [12] 5663 	subb	a,r6
      001B6B 40 03            [24] 5664 	jc	00122$
      001B6D 02 1C 2C         [24] 5665 	ljmp	00108$
      001B70                       5666 00122$:
                                   5667 ;	../osal/common/OSAL.c:1138: events = tasksEvents[idx];
      001B70 90 10 77         [24] 5668 	mov	dptr,#_tasksEvents
      001B73 E0               [24] 5669 	movx	a,@dptr
      001B74 FD               [12] 5670 	mov	r5,a
      001B75 A3               [24] 5671 	inc	dptr
      001B76 E0               [24] 5672 	movx	a,@dptr
      001B77 FE               [12] 5673 	mov	r6,a
      001B78 A3               [24] 5674 	inc	dptr
      001B79 E0               [24] 5675 	movx	a,@dptr
      001B7A FF               [12] 5676 	mov	r7,a
      001B7B 90 03 D5         [24] 5677 	mov	dptr,#_osal_run_system_idx_1_238
      001B7E E0               [24] 5678 	movx	a,@dptr
      001B7F FC               [12] 5679 	mov	r4,a
      001B80 EC               [12] 5680 	mov	a,r4
      001B81 75 F0 02         [24] 5681 	mov	b,#0x02
      001B84 A4               [48] 5682 	mul	ab
      001B85 FA               [12] 5683 	mov	r2,a
      001B86 AB F0            [24] 5684 	mov	r3,b
      001B88 EA               [12] 5685 	mov	a,r2
      001B89 2D               [12] 5686 	add	a,r5
      001B8A FD               [12] 5687 	mov	r5,a
      001B8B EB               [12] 5688 	mov	a,r3
      001B8C 3E               [12] 5689 	addc	a,r6
      001B8D FE               [12] 5690 	mov	r6,a
      001B8E 8D 82            [24] 5691 	mov	dpl,r5
      001B90 8E 83            [24] 5692 	mov	dph,r6
      001B92 8F F0            [24] 5693 	mov	b,r7
      001B94 12 5B 6D         [24] 5694 	lcall	__gptrget
      001B97 F8               [12] 5695 	mov	r0,a
      001B98 A3               [24] 5696 	inc	dptr
      001B99 12 5B 6D         [24] 5697 	lcall	__gptrget
      001B9C F9               [12] 5698 	mov	r1,a
      001B9D 90 03 D6         [24] 5699 	mov	dptr,#_osal_run_system_events_2_241
      001BA0 E8               [12] 5700 	mov	a,r0
      001BA1 F0               [24] 5701 	movx	@dptr,a
      001BA2 E9               [12] 5702 	mov	a,r1
      001BA3 A3               [24] 5703 	inc	dptr
      001BA4 F0               [24] 5704 	movx	@dptr,a
                                   5705 ;	../osal/common/OSAL.c:1139: tasksEvents[idx] = 0;  // Clear the Events for this task.
      001BA5 8D 82            [24] 5706 	mov	dpl,r5
      001BA7 8E 83            [24] 5707 	mov	dph,r6
      001BA9 8F F0            [24] 5708 	mov	b,r7
      001BAB 74 00            [12] 5709 	mov	a,#0x00
      001BAD 12 5A 01         [24] 5710 	lcall	__gptrput
      001BB0 A3               [24] 5711 	inc	dptr
      001BB1 12 5A 01         [24] 5712 	lcall	__gptrput
                                   5713 ;	../osal/common/OSAL.c:1152: activeTaskID = idx;
      001BB4 90 03 08         [24] 5714 	mov	dptr,#_activeTaskID
      001BB7 EC               [12] 5715 	mov	a,r4
      001BB8 F0               [24] 5716 	movx	@dptr,a
                                   5717 ;	../osal/common/OSAL.c:1153: events = (tasksArr[idx])( idx, events );
      001BB9 EA               [12] 5718 	mov	a,r2
      001BBA 24 8F            [12] 5719 	add	a,#_tasksArr
      001BBC F5 82            [12] 5720 	mov	dpl,a
      001BBE EB               [12] 5721 	mov	a,r3
      001BBF 34 5B            [12] 5722 	addc	a,#(_tasksArr >> 8)
      001BC1 F5 83            [12] 5723 	mov	dph,a
      001BC3 E4               [12] 5724 	clr	a
      001BC4 93               [24] 5725 	movc	a,@a+dptr
      001BC5 FE               [12] 5726 	mov	r6,a
      001BC6 A3               [24] 5727 	inc	dptr
      001BC7 E4               [12] 5728 	clr	a
      001BC8 93               [24] 5729 	movc	a,@a+dptr
      001BC9 FF               [12] 5730 	mov	r7,a
      001BCA C0 03            [24] 5731 	push	ar3
      001BCC C0 02            [24] 5732 	push	ar2
      001BCE 90 03 D6         [24] 5733 	mov	dptr,#_osal_run_system_events_2_241
      001BD1 E0               [24] 5734 	movx	a,@dptr
      001BD2 C0 E0            [24] 5735 	push	acc
      001BD4 A3               [24] 5736 	inc	dptr
      001BD5 E0               [24] 5737 	movx	a,@dptr
      001BD6 C0 E0            [24] 5738 	push	acc
      001BD8 12 1B DE         [24] 5739 	lcall	00123$
      001BDB 02 1B E5         [24] 5740 	ljmp	00124$
      001BDE                       5741 00123$:
      001BDE C0 06            [24] 5742 	push	ar6
      001BE0 C0 07            [24] 5743 	push	ar7
      001BE2 8C 82            [24] 5744 	mov	dpl,r4
      001BE4 22               [24] 5745 	ret
      001BE5                       5746 00124$:
      001BE5 AE 82            [24] 5747 	mov	r6,dpl
      001BE7 AF 83            [24] 5748 	mov	r7,dph
      001BE9 15 81            [12] 5749 	dec	sp
      001BEB 15 81            [12] 5750 	dec	sp
      001BED D0 02            [24] 5751 	pop	ar2
      001BEF D0 03            [24] 5752 	pop	ar3
                                   5753 ;	../osal/common/OSAL.c:1154: activeTaskID = TASK_NO_TASK;
      001BF1 90 03 08         [24] 5754 	mov	dptr,#_activeTaskID
      001BF4 74 FF            [12] 5755 	mov	a,#0xFF
      001BF6 F0               [24] 5756 	movx	@dptr,a
                                   5757 ;	../osal/common/OSAL.c:1162: tasksEvents[idx] |= events;  // Add back unprocessed events to the current task.
      001BF7 90 10 77         [24] 5758 	mov	dptr,#_tasksEvents
      001BFA E0               [24] 5759 	movx	a,@dptr
      001BFB F9               [12] 5760 	mov	r1,a
      001BFC A3               [24] 5761 	inc	dptr
      001BFD E0               [24] 5762 	movx	a,@dptr
      001BFE FC               [12] 5763 	mov	r4,a
      001BFF A3               [24] 5764 	inc	dptr
      001C00 E0               [24] 5765 	movx	a,@dptr
      001C01 FD               [12] 5766 	mov	r5,a
      001C02 EA               [12] 5767 	mov	a,r2
      001C03 29               [12] 5768 	add	a,r1
      001C04 F9               [12] 5769 	mov	r1,a
      001C05 EB               [12] 5770 	mov	a,r3
      001C06 3C               [12] 5771 	addc	a,r4
      001C07 FC               [12] 5772 	mov	r4,a
      001C08 89 82            [24] 5773 	mov	dpl,r1
      001C0A 8C 83            [24] 5774 	mov	dph,r4
      001C0C 8D F0            [24] 5775 	mov	b,r5
      001C0E 12 5B 6D         [24] 5776 	lcall	__gptrget
      001C11 FA               [12] 5777 	mov	r2,a
      001C12 A3               [24] 5778 	inc	dptr
      001C13 12 5B 6D         [24] 5779 	lcall	__gptrget
      001C16 FB               [12] 5780 	mov	r3,a
      001C17 EA               [12] 5781 	mov	a,r2
      001C18 42 06            [12] 5782 	orl	ar6,a
      001C1A EB               [12] 5783 	mov	a,r3
      001C1B 42 07            [12] 5784 	orl	ar7,a
      001C1D 89 82            [24] 5785 	mov	dpl,r1
      001C1F 8C 83            [24] 5786 	mov	dph,r4
      001C21 8D F0            [24] 5787 	mov	b,r5
      001C23 EE               [12] 5788 	mov	a,r6
      001C24 12 5A 01         [24] 5789 	lcall	__gptrput
      001C27 A3               [24] 5790 	inc	dptr
      001C28 EF               [12] 5791 	mov	a,r7
      001C29 12 5A 01         [24] 5792 	lcall	__gptrput
      001C2C                       5793 00108$:
      001C2C 22               [24] 5794 	ret
                                   5795 ;------------------------------------------------------------
                                   5796 ;Allocation info for local variables in function 'osal_buffer_uint32'
                                   5797 ;------------------------------------------------------------
                                   5798 ;val                       Allocated with name '_osal_buffer_uint32_PARM_2'
                                   5799 ;buf                       Allocated with name '_osal_buffer_uint32_buf_1_242'
                                   5800 ;sloc0                     Allocated with name '_osal_buffer_uint32_sloc0_1_0'
                                   5801 ;------------------------------------------------------------
                                   5802 ;	../osal/common/OSAL.c:1192: uint8* osal_buffer_uint32( uint8 *buf, uint32 val )
                                   5803 ;	-----------------------------------------
                                   5804 ;	 function osal_buffer_uint32
                                   5805 ;	-----------------------------------------
      001C2D                       5806 _osal_buffer_uint32:
      001C2D AF F0            [24] 5807 	mov	r7,b
      001C2F AE 83            [24] 5808 	mov	r6,dph
      001C31 E5 82            [12] 5809 	mov	a,dpl
      001C33 90 03 DC         [24] 5810 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C36 F0               [24] 5811 	movx	@dptr,a
      001C37 EE               [12] 5812 	mov	a,r6
      001C38 A3               [24] 5813 	inc	dptr
      001C39 F0               [24] 5814 	movx	@dptr,a
      001C3A EF               [12] 5815 	mov	a,r7
      001C3B A3               [24] 5816 	inc	dptr
      001C3C F0               [24] 5817 	movx	@dptr,a
                                   5818 ;	../osal/common/OSAL.c:1194: *buf++ = BREAK_UINT32( val, 0 );
      001C3D 90 03 DC         [24] 5819 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C40 E0               [24] 5820 	movx	a,@dptr
      001C41 F5 3A            [12] 5821 	mov	_osal_buffer_uint32_sloc0_1_0,a
      001C43 A3               [24] 5822 	inc	dptr
      001C44 E0               [24] 5823 	movx	a,@dptr
      001C45 F5 3B            [12] 5824 	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
      001C47 A3               [24] 5825 	inc	dptr
      001C48 E0               [24] 5826 	movx	a,@dptr
      001C49 F5 3C            [12] 5827 	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
      001C4B 90 03 D8         [24] 5828 	mov	dptr,#_osal_buffer_uint32_PARM_2
      001C4E E0               [24] 5829 	movx	a,@dptr
      001C4F F9               [12] 5830 	mov	r1,a
      001C50 A3               [24] 5831 	inc	dptr
      001C51 E0               [24] 5832 	movx	a,@dptr
      001C52 FA               [12] 5833 	mov	r2,a
      001C53 A3               [24] 5834 	inc	dptr
      001C54 E0               [24] 5835 	movx	a,@dptr
      001C55 FB               [12] 5836 	mov	r3,a
      001C56 A3               [24] 5837 	inc	dptr
      001C57 E0               [24] 5838 	movx	a,@dptr
      001C58 FC               [12] 5839 	mov	r4,a
      001C59 89 00            [24] 5840 	mov	ar0,r1
      001C5B 7D 00            [12] 5841 	mov	r5,#0x00
      001C5D 7E 00            [12] 5842 	mov	r6,#0x00
      001C5F 7F 00            [12] 5843 	mov	r7,#0x00
      001C61 85 3A 82         [24] 5844 	mov	dpl,_osal_buffer_uint32_sloc0_1_0
      001C64 85 3B 83         [24] 5845 	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001C67 85 3C F0         [24] 5846 	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001C6A E8               [12] 5847 	mov	a,r0
      001C6B 12 5A 01         [24] 5848 	lcall	__gptrput
      001C6E 90 03 DC         [24] 5849 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C71 74 01            [12] 5850 	mov	a,#0x01
      001C73 25 3A            [12] 5851 	add	a,_osal_buffer_uint32_sloc0_1_0
      001C75 F0               [24] 5852 	movx	@dptr,a
      001C76 74 00            [12] 5853 	mov	a,#0x00
      001C78 35 3B            [12] 5854 	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001C7A A3               [24] 5855 	inc	dptr
      001C7B F0               [24] 5856 	movx	@dptr,a
      001C7C E5 3C            [12] 5857 	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001C7E A3               [24] 5858 	inc	dptr
      001C7F F0               [24] 5859 	movx	@dptr,a
                                   5860 ;	../osal/common/OSAL.c:1195: *buf++ = BREAK_UINT32( val, 1 );
      001C80 90 03 DC         [24] 5861 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C83 E0               [24] 5862 	movx	a,@dptr
      001C84 F5 3A            [12] 5863 	mov	_osal_buffer_uint32_sloc0_1_0,a
      001C86 A3               [24] 5864 	inc	dptr
      001C87 E0               [24] 5865 	movx	a,@dptr
      001C88 F5 3B            [12] 5866 	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
      001C8A A3               [24] 5867 	inc	dptr
      001C8B E0               [24] 5868 	movx	a,@dptr
      001C8C F5 3C            [12] 5869 	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
      001C8E 8A 00            [24] 5870 	mov	ar0,r2
      001C90 7D 00            [12] 5871 	mov	r5,#0x00
      001C92 7E 00            [12] 5872 	mov	r6,#0x00
      001C94 7F 00            [12] 5873 	mov	r7,#0x00
      001C96 85 3A 82         [24] 5874 	mov	dpl,_osal_buffer_uint32_sloc0_1_0
      001C99 85 3B 83         [24] 5875 	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001C9C 85 3C F0         [24] 5876 	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001C9F E8               [12] 5877 	mov	a,r0
      001CA0 12 5A 01         [24] 5878 	lcall	__gptrput
      001CA3 90 03 DC         [24] 5879 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001CA6 74 01            [12] 5880 	mov	a,#0x01
      001CA8 25 3A            [12] 5881 	add	a,_osal_buffer_uint32_sloc0_1_0
      001CAA F0               [24] 5882 	movx	@dptr,a
      001CAB 74 00            [12] 5883 	mov	a,#0x00
      001CAD 35 3B            [12] 5884 	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001CAF A3               [24] 5885 	inc	dptr
      001CB0 F0               [24] 5886 	movx	@dptr,a
      001CB1 E5 3C            [12] 5887 	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001CB3 A3               [24] 5888 	inc	dptr
      001CB4 F0               [24] 5889 	movx	@dptr,a
                                   5890 ;	../osal/common/OSAL.c:1196: *buf++ = BREAK_UINT32( val, 2 );
      001CB5 90 03 DC         [24] 5891 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001CB8 E0               [24] 5892 	movx	a,@dptr
      001CB9 F5 3A            [12] 5893 	mov	_osal_buffer_uint32_sloc0_1_0,a
      001CBB A3               [24] 5894 	inc	dptr
      001CBC E0               [24] 5895 	movx	a,@dptr
      001CBD F5 3B            [12] 5896 	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
      001CBF A3               [24] 5897 	inc	dptr
      001CC0 E0               [24] 5898 	movx	a,@dptr
      001CC1 F5 3C            [12] 5899 	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
      001CC3 8B 00            [24] 5900 	mov	ar0,r3
      001CC5 7D 00            [12] 5901 	mov	r5,#0x00
      001CC7 7E 00            [12] 5902 	mov	r6,#0x00
      001CC9 7F 00            [12] 5903 	mov	r7,#0x00
      001CCB 85 3A 82         [24] 5904 	mov	dpl,_osal_buffer_uint32_sloc0_1_0
      001CCE 85 3B 83         [24] 5905 	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001CD1 85 3C F0         [24] 5906 	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001CD4 E8               [12] 5907 	mov	a,r0
      001CD5 12 5A 01         [24] 5908 	lcall	__gptrput
      001CD8 90 03 DC         [24] 5909 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001CDB 74 01            [12] 5910 	mov	a,#0x01
      001CDD 25 3A            [12] 5911 	add	a,_osal_buffer_uint32_sloc0_1_0
      001CDF F0               [24] 5912 	movx	@dptr,a
      001CE0 74 00            [12] 5913 	mov	a,#0x00
      001CE2 35 3B            [12] 5914 	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001CE4 A3               [24] 5915 	inc	dptr
      001CE5 F0               [24] 5916 	movx	@dptr,a
      001CE6 E5 3C            [12] 5917 	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001CE8 A3               [24] 5918 	inc	dptr
      001CE9 F0               [24] 5919 	movx	@dptr,a
                                   5920 ;	../osal/common/OSAL.c:1197: *buf++ = BREAK_UINT32( val, 3 );
      001CEA 90 03 DC         [24] 5921 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001CED E0               [24] 5922 	movx	a,@dptr
      001CEE FD               [12] 5923 	mov	r5,a
      001CEF A3               [24] 5924 	inc	dptr
      001CF0 E0               [24] 5925 	movx	a,@dptr
      001CF1 FE               [12] 5926 	mov	r6,a
      001CF2 A3               [24] 5927 	inc	dptr
      001CF3 E0               [24] 5928 	movx	a,@dptr
      001CF4 FF               [12] 5929 	mov	r7,a
      001CF5 8C 01            [24] 5930 	mov	ar1,r4
      001CF7 7C 00            [12] 5931 	mov	r4,#0x00
      001CF9 7B 00            [12] 5932 	mov	r3,#0x00
      001CFB 7A 00            [12] 5933 	mov	r2,#0x00
      001CFD 8D 82            [24] 5934 	mov	dpl,r5
      001CFF 8E 83            [24] 5935 	mov	dph,r6
      001D01 8F F0            [24] 5936 	mov	b,r7
      001D03 E9               [12] 5937 	mov	a,r1
      001D04 12 5A 01         [24] 5938 	lcall	__gptrput
      001D07 90 03 DC         [24] 5939 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001D0A 74 01            [12] 5940 	mov	a,#0x01
      001D0C 2D               [12] 5941 	add	a,r5
      001D0D F0               [24] 5942 	movx	@dptr,a
      001D0E 74 00            [12] 5943 	mov	a,#0x00
      001D10 3E               [12] 5944 	addc	a,r6
      001D11 A3               [24] 5945 	inc	dptr
      001D12 F0               [24] 5946 	movx	@dptr,a
      001D13 EF               [12] 5947 	mov	a,r7
      001D14 A3               [24] 5948 	inc	dptr
      001D15 F0               [24] 5949 	movx	@dptr,a
                                   5950 ;	../osal/common/OSAL.c:1199: return buf;
      001D16 90 03 DC         [24] 5951 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001D19 E0               [24] 5952 	movx	a,@dptr
      001D1A FD               [12] 5953 	mov	r5,a
      001D1B A3               [24] 5954 	inc	dptr
      001D1C E0               [24] 5955 	movx	a,@dptr
      001D1D FE               [12] 5956 	mov	r6,a
      001D1E A3               [24] 5957 	inc	dptr
      001D1F E0               [24] 5958 	movx	a,@dptr
      001D20 FF               [12] 5959 	mov	r7,a
      001D21 8D 82            [24] 5960 	mov	dpl,r5
      001D23 8E 83            [24] 5961 	mov	dph,r6
      001D25 8F F0            [24] 5962 	mov	b,r7
      001D27                       5963 00101$:
      001D27 22               [24] 5964 	ret
                                   5965 ;------------------------------------------------------------
                                   5966 ;Allocation info for local variables in function 'osal_buffer_uint24'
                                   5967 ;------------------------------------------------------------
                                   5968 ;val                       Allocated with name '_osal_buffer_uint24_PARM_2'
                                   5969 ;buf                       Allocated with name '_osal_buffer_uint24_buf_1_244'
                                   5970 ;sloc0                     Allocated with name '_osal_buffer_uint24_sloc0_1_0'
                                   5971 ;------------------------------------------------------------
                                   5972 ;	../osal/common/OSAL.c:1215: uint8* osal_buffer_uint24( uint8 *buf, uint24 val )
                                   5973 ;	-----------------------------------------
                                   5974 ;	 function osal_buffer_uint24
                                   5975 ;	-----------------------------------------
      001D28                       5976 _osal_buffer_uint24:
      001D28 AF F0            [24] 5977 	mov	r7,b
      001D2A AE 83            [24] 5978 	mov	r6,dph
      001D2C E5 82            [12] 5979 	mov	a,dpl
      001D2E 90 03 E3         [24] 5980 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D31 F0               [24] 5981 	movx	@dptr,a
      001D32 EE               [12] 5982 	mov	a,r6
      001D33 A3               [24] 5983 	inc	dptr
      001D34 F0               [24] 5984 	movx	@dptr,a
      001D35 EF               [12] 5985 	mov	a,r7
      001D36 A3               [24] 5986 	inc	dptr
      001D37 F0               [24] 5987 	movx	@dptr,a
                                   5988 ;	../osal/common/OSAL.c:1217: *buf++ = BREAK_UINT32( val, 0 );
      001D38 90 03 E3         [24] 5989 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D3B E0               [24] 5990 	movx	a,@dptr
      001D3C F5 3A            [12] 5991 	mov	_osal_buffer_uint24_sloc0_1_0,a
      001D3E A3               [24] 5992 	inc	dptr
      001D3F E0               [24] 5993 	movx	a,@dptr
      001D40 F5 3B            [12] 5994 	mov	(_osal_buffer_uint24_sloc0_1_0 + 1),a
      001D42 A3               [24] 5995 	inc	dptr
      001D43 E0               [24] 5996 	movx	a,@dptr
      001D44 F5 3C            [12] 5997 	mov	(_osal_buffer_uint24_sloc0_1_0 + 2),a
      001D46 90 03 DF         [24] 5998 	mov	dptr,#_osal_buffer_uint24_PARM_2
      001D49 E0               [24] 5999 	movx	a,@dptr
      001D4A F9               [12] 6000 	mov	r1,a
      001D4B A3               [24] 6001 	inc	dptr
      001D4C E0               [24] 6002 	movx	a,@dptr
      001D4D FA               [12] 6003 	mov	r2,a
      001D4E A3               [24] 6004 	inc	dptr
      001D4F E0               [24] 6005 	movx	a,@dptr
      001D50 FB               [12] 6006 	mov	r3,a
      001D51 A3               [24] 6007 	inc	dptr
      001D52 E0               [24] 6008 	movx	a,@dptr
      001D53 FC               [12] 6009 	mov	r4,a
      001D54 89 00            [24] 6010 	mov	ar0,r1
      001D56 7D 00            [12] 6011 	mov	r5,#0x00
      001D58 7E 00            [12] 6012 	mov	r6,#0x00
      001D5A 7F 00            [12] 6013 	mov	r7,#0x00
      001D5C 85 3A 82         [24] 6014 	mov	dpl,_osal_buffer_uint24_sloc0_1_0
      001D5F 85 3B 83         [24] 6015 	mov	dph,(_osal_buffer_uint24_sloc0_1_0 + 1)
      001D62 85 3C F0         [24] 6016 	mov	b,(_osal_buffer_uint24_sloc0_1_0 + 2)
      001D65 E8               [12] 6017 	mov	a,r0
      001D66 12 5A 01         [24] 6018 	lcall	__gptrput
      001D69 90 03 E3         [24] 6019 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D6C 74 01            [12] 6020 	mov	a,#0x01
      001D6E 25 3A            [12] 6021 	add	a,_osal_buffer_uint24_sloc0_1_0
      001D70 F0               [24] 6022 	movx	@dptr,a
      001D71 74 00            [12] 6023 	mov	a,#0x00
      001D73 35 3B            [12] 6024 	addc	a,(_osal_buffer_uint24_sloc0_1_0 + 1)
      001D75 A3               [24] 6025 	inc	dptr
      001D76 F0               [24] 6026 	movx	@dptr,a
      001D77 E5 3C            [12] 6027 	mov	a,(_osal_buffer_uint24_sloc0_1_0 + 2)
      001D79 A3               [24] 6028 	inc	dptr
      001D7A F0               [24] 6029 	movx	@dptr,a
                                   6030 ;	../osal/common/OSAL.c:1218: *buf++ = BREAK_UINT32( val, 1 );
      001D7B 90 03 E3         [24] 6031 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D7E E0               [24] 6032 	movx	a,@dptr
      001D7F F5 3A            [12] 6033 	mov	_osal_buffer_uint24_sloc0_1_0,a
      001D81 A3               [24] 6034 	inc	dptr
      001D82 E0               [24] 6035 	movx	a,@dptr
      001D83 F5 3B            [12] 6036 	mov	(_osal_buffer_uint24_sloc0_1_0 + 1),a
      001D85 A3               [24] 6037 	inc	dptr
      001D86 E0               [24] 6038 	movx	a,@dptr
      001D87 F5 3C            [12] 6039 	mov	(_osal_buffer_uint24_sloc0_1_0 + 2),a
      001D89 8A 00            [24] 6040 	mov	ar0,r2
      001D8B 7D 00            [12] 6041 	mov	r5,#0x00
      001D8D 7E 00            [12] 6042 	mov	r6,#0x00
      001D8F 7F 00            [12] 6043 	mov	r7,#0x00
      001D91 85 3A 82         [24] 6044 	mov	dpl,_osal_buffer_uint24_sloc0_1_0
      001D94 85 3B 83         [24] 6045 	mov	dph,(_osal_buffer_uint24_sloc0_1_0 + 1)
      001D97 85 3C F0         [24] 6046 	mov	b,(_osal_buffer_uint24_sloc0_1_0 + 2)
      001D9A E8               [12] 6047 	mov	a,r0
      001D9B 12 5A 01         [24] 6048 	lcall	__gptrput
      001D9E 90 03 E3         [24] 6049 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001DA1 74 01            [12] 6050 	mov	a,#0x01
      001DA3 25 3A            [12] 6051 	add	a,_osal_buffer_uint24_sloc0_1_0
      001DA5 F0               [24] 6052 	movx	@dptr,a
      001DA6 74 00            [12] 6053 	mov	a,#0x00
      001DA8 35 3B            [12] 6054 	addc	a,(_osal_buffer_uint24_sloc0_1_0 + 1)
      001DAA A3               [24] 6055 	inc	dptr
      001DAB F0               [24] 6056 	movx	@dptr,a
      001DAC E5 3C            [12] 6057 	mov	a,(_osal_buffer_uint24_sloc0_1_0 + 2)
      001DAE A3               [24] 6058 	inc	dptr
      001DAF F0               [24] 6059 	movx	@dptr,a
                                   6060 ;	../osal/common/OSAL.c:1219: *buf++ = BREAK_UINT32( val, 2 );
      001DB0 90 03 E3         [24] 6061 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001DB3 E0               [24] 6062 	movx	a,@dptr
      001DB4 FD               [12] 6063 	mov	r5,a
      001DB5 A3               [24] 6064 	inc	dptr
      001DB6 E0               [24] 6065 	movx	a,@dptr
      001DB7 FE               [12] 6066 	mov	r6,a
      001DB8 A3               [24] 6067 	inc	dptr
      001DB9 E0               [24] 6068 	movx	a,@dptr
      001DBA FF               [12] 6069 	mov	r7,a
      001DBB 8B 01            [24] 6070 	mov	ar1,r3
      001DBD 7C 00            [12] 6071 	mov	r4,#0x00
      001DBF 7B 00            [12] 6072 	mov	r3,#0x00
      001DC1 7A 00            [12] 6073 	mov	r2,#0x00
      001DC3 8D 82            [24] 6074 	mov	dpl,r5
      001DC5 8E 83            [24] 6075 	mov	dph,r6
      001DC7 8F F0            [24] 6076 	mov	b,r7
      001DC9 E9               [12] 6077 	mov	a,r1
      001DCA 12 5A 01         [24] 6078 	lcall	__gptrput
      001DCD 90 03 E3         [24] 6079 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001DD0 74 01            [12] 6080 	mov	a,#0x01
      001DD2 2D               [12] 6081 	add	a,r5
      001DD3 F0               [24] 6082 	movx	@dptr,a
      001DD4 74 00            [12] 6083 	mov	a,#0x00
      001DD6 3E               [12] 6084 	addc	a,r6
      001DD7 A3               [24] 6085 	inc	dptr
      001DD8 F0               [24] 6086 	movx	@dptr,a
      001DD9 EF               [12] 6087 	mov	a,r7
      001DDA A3               [24] 6088 	inc	dptr
      001DDB F0               [24] 6089 	movx	@dptr,a
                                   6090 ;	../osal/common/OSAL.c:1221: return buf;
      001DDC 90 03 E3         [24] 6091 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001DDF E0               [24] 6092 	movx	a,@dptr
      001DE0 FD               [12] 6093 	mov	r5,a
      001DE1 A3               [24] 6094 	inc	dptr
      001DE2 E0               [24] 6095 	movx	a,@dptr
      001DE3 FE               [12] 6096 	mov	r6,a
      001DE4 A3               [24] 6097 	inc	dptr
      001DE5 E0               [24] 6098 	movx	a,@dptr
      001DE6 FF               [12] 6099 	mov	r7,a
      001DE7 8D 82            [24] 6100 	mov	dpl,r5
      001DE9 8E 83            [24] 6101 	mov	dph,r6
      001DEB 8F F0            [24] 6102 	mov	b,r7
      001DED                       6103 00101$:
      001DED 22               [24] 6104 	ret
                                   6105 ;------------------------------------------------------------
                                   6106 ;Allocation info for local variables in function 'osal_isbufset'
                                   6107 ;------------------------------------------------------------
                                   6108 ;val                       Allocated with name '_osal_isbufset_PARM_2'
                                   6109 ;len                       Allocated with name '_osal_isbufset_PARM_3'
                                   6110 ;buf                       Allocated with name '_osal_isbufset_buf_1_246'
                                   6111 ;x                         Allocated with name '_osal_isbufset_x_1_247'
                                   6112 ;------------------------------------------------------------
                                   6113 ;	../osal/common/OSAL.c:1238: uint8 osal_isbufset( uint8 *buf, uint8 val, uint8 len )
                                   6114 ;	-----------------------------------------
                                   6115 ;	 function osal_isbufset
                                   6116 ;	-----------------------------------------
      001DEE                       6117 _osal_isbufset:
      001DEE AF F0            [24] 6118 	mov	r7,b
      001DF0 AE 83            [24] 6119 	mov	r6,dph
      001DF2 E5 82            [12] 6120 	mov	a,dpl
      001DF4 90 03 E8         [24] 6121 	mov	dptr,#_osal_isbufset_buf_1_246
      001DF7 F0               [24] 6122 	movx	@dptr,a
      001DF8 EE               [12] 6123 	mov	a,r6
      001DF9 A3               [24] 6124 	inc	dptr
      001DFA F0               [24] 6125 	movx	@dptr,a
      001DFB EF               [12] 6126 	mov	a,r7
      001DFC A3               [24] 6127 	inc	dptr
      001DFD F0               [24] 6128 	movx	@dptr,a
                                   6129 ;	../osal/common/OSAL.c:1242: if ( buf == NULL )
      001DFE 90 03 E8         [24] 6130 	mov	dptr,#_osal_isbufset_buf_1_246
      001E01 E0               [24] 6131 	movx	a,@dptr
      001E02 FD               [12] 6132 	mov	r5,a
      001E03 A3               [24] 6133 	inc	dptr
      001E04 E0               [24] 6134 	movx	a,@dptr
      001E05 FE               [12] 6135 	mov	r6,a
      001E06 A3               [24] 6136 	inc	dptr
      001E07 E0               [24] 6137 	movx	a,@dptr
      001E08 FF               [12] 6138 	mov	r7,a
      001E09 ED               [12] 6139 	mov	a,r5
      001E0A 4E               [12] 6140 	orl	a,r6
      001E0B 60 03            [24] 6141 	jz	00123$
      001E0D 02 1E 16         [24] 6142 	ljmp	00102$
      001E10                       6143 00123$:
                                   6144 ;	../osal/common/OSAL.c:1244: return ( FALSE );
      001E10 75 82 00         [24] 6145 	mov	dpl,#0x00
      001E13 02 1E 6B         [24] 6146 	ljmp	00109$
      001E16                       6147 00102$:
                                   6148 ;	../osal/common/OSAL.c:1247: for ( x = 0; x < len; x++ )
      001E16 90 03 EB         [24] 6149 	mov	dptr,#_osal_isbufset_x_1_247
      001E19 74 00            [12] 6150 	mov	a,#0x00
      001E1B F0               [24] 6151 	movx	@dptr,a
      001E1C 90 03 E8         [24] 6152 	mov	dptr,#_osal_isbufset_buf_1_246
      001E1F E0               [24] 6153 	movx	a,@dptr
      001E20 FD               [12] 6154 	mov	r5,a
      001E21 A3               [24] 6155 	inc	dptr
      001E22 E0               [24] 6156 	movx	a,@dptr
      001E23 FE               [12] 6157 	mov	r6,a
      001E24 A3               [24] 6158 	inc	dptr
      001E25 E0               [24] 6159 	movx	a,@dptr
      001E26 FF               [12] 6160 	mov	r7,a
      001E27 90 03 E6         [24] 6161 	mov	dptr,#_osal_isbufset_PARM_2
      001E2A E0               [24] 6162 	movx	a,@dptr
      001E2B FC               [12] 6163 	mov	r4,a
      001E2C 90 03 E7         [24] 6164 	mov	dptr,#_osal_isbufset_PARM_3
      001E2F E0               [24] 6165 	movx	a,@dptr
      001E30 FB               [12] 6166 	mov	r3,a
      001E31 90 03 EB         [24] 6167 	mov	dptr,#_osal_isbufset_x_1_247
      001E34 E0               [24] 6168 	movx	a,@dptr
      001E35 FA               [12] 6169 	mov	r2,a
      001E36                       6170 00107$:
      001E36 C3               [12] 6171 	clr	c
      001E37 EA               [12] 6172 	mov	a,r2
      001E38 9B               [12] 6173 	subb	a,r3
      001E39 40 03            [24] 6174 	jc	00124$
      001E3B 02 1E 68         [24] 6175 	ljmp	00105$
      001E3E                       6176 00124$:
                                   6177 ;	../osal/common/OSAL.c:1250: if ( buf[x] != val )
      001E3E C0 03            [24] 6178 	push	ar3
      001E40 EA               [12] 6179 	mov	a,r2
      001E41 2D               [12] 6180 	add	a,r5
      001E42 F8               [12] 6181 	mov	r0,a
      001E43 74 00            [12] 6182 	mov	a,#0x00
      001E45 3E               [12] 6183 	addc	a,r6
      001E46 F9               [12] 6184 	mov	r1,a
      001E47 8F 03            [24] 6185 	mov	ar3,r7
      001E49 88 82            [24] 6186 	mov	dpl,r0
      001E4B 89 83            [24] 6187 	mov	dph,r1
      001E4D 8B F0            [24] 6188 	mov	b,r3
      001E4F 12 5B 6D         [24] 6189 	lcall	__gptrget
      001E52 F8               [12] 6190 	mov	r0,a
      001E53 E8               [12] 6191 	mov	a,r0
      001E54 B5 04 05         [24] 6192 	cjne	a,ar4,00125$
      001E57 D0 03            [24] 6193 	pop	ar3
      001E59 02 1E 64         [24] 6194 	ljmp	00108$
      001E5C                       6195 00125$:
      001E5C D0 03            [24] 6196 	pop	ar3
                                   6197 ;	../osal/common/OSAL.c:1252: return ( FALSE );
      001E5E 75 82 00         [24] 6198 	mov	dpl,#0x00
      001E61 02 1E 6B         [24] 6199 	ljmp	00109$
      001E64                       6200 00108$:
                                   6201 ;	../osal/common/OSAL.c:1247: for ( x = 0; x < len; x++ )
      001E64 0A               [12] 6202 	inc	r2
      001E65 02 1E 36         [24] 6203 	ljmp	00107$
      001E68                       6204 00105$:
                                   6205 ;	../osal/common/OSAL.c:1255: return ( TRUE );
      001E68 75 82 01         [24] 6206 	mov	dpl,#0x01
      001E6B                       6207 00109$:
      001E6B 22               [24] 6208 	ret
                                   6209 ;------------------------------------------------------------
                                   6210 ;Allocation info for local variables in function 'osal_self'
                                   6211 ;------------------------------------------------------------
                                   6212 ;	../osal/common/OSAL.c:1269: uint8 osal_self( void )
                                   6213 ;	-----------------------------------------
                                   6214 ;	 function osal_self
                                   6215 ;	-----------------------------------------
      001E6C                       6216 _osal_self:
                                   6217 ;	../osal/common/OSAL.c:1271: return ( activeTaskID );
      001E6C 90 03 08         [24] 6218 	mov	dptr,#_activeTaskID
      001E6F E0               [24] 6219 	movx	a,@dptr
      001E70 FF               [12] 6220 	mov	r7,a
      001E71 8F 82            [24] 6221 	mov	dpl,r7
      001E73                       6222 00101$:
      001E73 22               [24] 6223 	ret
                                   6224 	.area CSEG    (CODE)
                                   6225 	.area CONST   (CODE)
      005B8D                       6226 ___str_3:
      005B8D 30                    6227 	.ascii "0"
      005B8E 00                    6228 	.db 0x00
                                   6229 	.area CABS    (ABS,CODE)
