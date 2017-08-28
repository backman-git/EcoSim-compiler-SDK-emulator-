                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:56 2015
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
      000300                        954 _osal_qHead::
      000300                        955 	.ds 3
      000303                        956 _activeTaskID:
      000303                        957 	.ds 1
      000304                        958 _osal_strlen_pString_1_111:
      000304                        959 	.ds 3
      000307                        960 _osal_memcpy_PARM_2:
      000307                        961 	.ds 3
      00030A                        962 _osal_memcpy_PARM_3:
      00030A                        963 	.ds 2
      00030C                        964 _osal_memcpy_dst_1_113:
      00030C                        965 	.ds 3
      00030F                        966 _osal_memcpy_pDst_1_114:
      00030F                        967 	.ds 3
      000312                        968 _osal_memcpy_pSrc_1_114:
      000312                        969 	.ds 3
      000315                        970 _osal_revmemcpy_PARM_2:
      000315                        971 	.ds 3
      000318                        972 _osal_revmemcpy_PARM_3:
      000318                        973 	.ds 2
      00031A                        974 _osal_revmemcpy_dst_1_115:
      00031A                        975 	.ds 3
      00031D                        976 _osal_revmemcpy_pDst_1_116:
      00031D                        977 	.ds 3
      000320                        978 _osal_revmemcpy_pSrc_1_116:
      000320                        979 	.ds 3
      000323                        980 _osal_memdup_PARM_2:
      000323                        981 	.ds 2
      000325                        982 _osal_memdup_src_1_117:
      000325                        983 	.ds 3
      000328                        984 _osal_memdup_pDst_1_118:
      000328                        985 	.ds 3
      00032B                        986 _osal_memcmp_PARM_2:
      00032B                        987 	.ds 3
      00032E                        988 _osal_memcmp_PARM_3:
      00032E                        989 	.ds 2
      000330                        990 _osal_memcmp_src1_1_120:
      000330                        991 	.ds 3
      000333                        992 _osal_memcmp_pSrc1_1_121:
      000333                        993 	.ds 3
      000336                        994 _osal_memcmp_pSrc2_1_121:
      000336                        995 	.ds 3
      000339                        996 _osal_memset_PARM_2:
      000339                        997 	.ds 1
      00033A                        998 _osal_memset_PARM_3:
      00033A                        999 	.ds 2
      00033C                       1000 _osal_memset_dest_1_123:
      00033C                       1001 	.ds 3
      00033F                       1002 _osal_build_uint16_swapped_1_125:
      00033F                       1003 	.ds 3
      000342                       1004 _osal_build_uint32_PARM_2:
      000342                       1005 	.ds 1
      000343                       1006 _osal_build_uint32_swapped_1_127:
      000343                       1007 	.ds 3
      000346                       1008 __ltoa_PARM_2:
      000346                       1009 	.ds 3
      000349                       1010 __ltoa_PARM_3:
      000349                       1011 	.ds 1
      00034A                       1012 __ltoa_l_1_129:
      00034A                       1013 	.ds 4
      00034E                       1014 __ltoa_tmp1_1_130:
      00034E                       1015 	.ds 10
      000358                       1016 __ltoa_tmp2_1_130:
      000358                       1017 	.ds 10
      000362                       1018 __ltoa_tmp3_1_130:
      000362                       1019 	.ds 10
      00036C                       1020 __ltoa_num1_1_130:
      00036C                       1021 	.ds 2
      00036E                       1022 __ltoa_num2_1_130:
      00036E                       1023 	.ds 2
      000370                       1024 __ltoa_num3_1_130:
      000370                       1025 	.ds 2
      000372                       1026 __ltoa_i_1_130:
      000372                       1027 	.ds 1
      000373                       1028 _osal_msg_allocate_len_1_138:
      000373                       1029 	.ds 2
      000375                       1030 _osal_msg_allocate_hdr_1_139:
      000375                       1031 	.ds 3
      000378                       1032 _osal_msg_deallocate_msg_ptr_1_141:
      000378                       1033 	.ds 3
      00037B                       1034 _osal_msg_send_PARM_2:
      00037B                       1035 	.ds 3
      00037E                       1036 _osal_msg_send_destination_task_1_143:
      00037E                       1037 	.ds 1
      00037F                       1038 _osal_msg_push_front_PARM_2:
      00037F                       1039 	.ds 3
      000382                       1040 _osal_msg_push_front_destination_task_1_145:
      000382                       1041 	.ds 1
      000383                       1042 _osal_msg_enqueue_push_PARM_2:
      000383                       1043 	.ds 3
      000386                       1044 _osal_msg_enqueue_push_PARM_3:
      000386                       1045 	.ds 1
      000387                       1046 _osal_msg_enqueue_push_destination_task_1_147:
      000387                       1047 	.ds 1
      000388                       1048 _osal_msg_receive_task_id_1_154:
      000388                       1049 	.ds 1
      000389                       1050 _osal_msg_receive_listHdr_1_155:
      000389                       1051 	.ds 3
      00038C                       1052 _osal_msg_receive_prevHdr_1_155:
      00038C                       1053 	.ds 3
      00038F                       1054 _osal_msg_receive_foundHdr_1_155:
      00038F                       1055 	.ds 3
      000392                       1056 _osal_msg_receive_intState_1_155:
      000392                       1057 	.ds 1
      000393                       1058 _osal_msg_find_PARM_2:
      000393                       1059 	.ds 1
      000394                       1060 _osal_msg_find_task_id_1_167:
      000394                       1061 	.ds 1
      000395                       1062 _osal_msg_find_pHdr_1_168:
      000395                       1063 	.ds 3
      000398                       1064 _osal_msg_find_intState_1_168:
      000398                       1065 	.ds 1
      000399                       1066 _osal_msg_enqueue_PARM_2:
      000399                       1067 	.ds 3
      00039C                       1068 _osal_msg_enqueue_q_ptr_1_174:
      00039C                       1069 	.ds 3
      00039F                       1070 _osal_msg_enqueue_list_1_175:
      00039F                       1071 	.ds 3
      0003A2                       1072 _osal_msg_enqueue_intState_1_175:
      0003A2                       1073 	.ds 1
      0003A3                       1074 _osal_msg_dequeue_q_ptr_1_181:
      0003A3                       1075 	.ds 3
      0003A6                       1076 _osal_msg_dequeue_msg_ptr_1_182:
      0003A6                       1077 	.ds 3
      0003A9                       1078 _osal_msg_dequeue_intState_1_182:
      0003A9                       1079 	.ds 1
      0003AA                       1080 _osal_msg_push_PARM_2:
      0003AA                       1081 	.ds 3
      0003AD                       1082 _osal_msg_push_q_ptr_1_187:
      0003AD                       1083 	.ds 3
      0003B0                       1084 _osal_msg_extract_PARM_2:
      0003B0                       1085 	.ds 3
      0003B3                       1086 _osal_msg_extract_PARM_3:
      0003B3                       1087 	.ds 3
      0003B6                       1088 _osal_msg_extract_q_ptr_1_192:
      0003B6                       1089 	.ds 3
      0003B9                       1090 _osal_msg_extract_intState_1_193:
      0003B9                       1091 	.ds 1
      0003BA                       1092 _osal_msg_enqueue_max_PARM_2:
      0003BA                       1093 	.ds 3
      0003BD                       1094 _osal_msg_enqueue_max_PARM_3:
      0003BD                       1095 	.ds 1
      0003BE                       1096 _osal_msg_enqueue_max_q_ptr_1_199:
      0003BE                       1097 	.ds 3
      0003C1                       1098 _osal_msg_enqueue_max_list_1_200:
      0003C1                       1099 	.ds 3
      0003C4                       1100 _osal_msg_enqueue_max_ret_1_200:
      0003C4                       1101 	.ds 1
      0003C5                       1102 _osal_msg_enqueue_max_intState_1_200:
      0003C5                       1103 	.ds 1
      0003C6                       1104 _osal_set_event_PARM_2:
      0003C6                       1105 	.ds 2
      0003C8                       1106 _osal_set_event_task_id_1_208:
      0003C8                       1107 	.ds 1
      0003C9                       1108 _osal_clear_event_PARM_2:
      0003C9                       1109 	.ds 2
      0003CB                       1110 _osal_clear_event_task_id_1_212:
      0003CB                       1111 	.ds 1
      0003CC                       1112 _osal_isr_register_PARM_2:
      0003CC                       1113 	.ds 2
      0003CE                       1114 _osal_int_enable_interrupt_id_1_222:
      0003CE                       1115 	.ds 1
      0003CF                       1116 _osal_int_disable_interrupt_id_1_227:
      0003CF                       1117 	.ds 1
      0003D0                       1118 _osal_run_system_idx_1_238:
      0003D0                       1119 	.ds 1
      0003D1                       1120 _osal_run_system_events_2_241:
      0003D1                       1121 	.ds 2
      0003D3                       1122 _osal_buffer_uint32_PARM_2:
      0003D3                       1123 	.ds 4
      0003D7                       1124 _osal_buffer_uint32_buf_1_242:
      0003D7                       1125 	.ds 3
      0003DA                       1126 _osal_buffer_uint24_PARM_2:
      0003DA                       1127 	.ds 4
      0003DE                       1128 _osal_buffer_uint24_buf_1_244:
      0003DE                       1129 	.ds 3
      0003E1                       1130 _osal_isbufset_PARM_2:
      0003E1                       1131 	.ds 1
      0003E2                       1132 _osal_isbufset_PARM_3:
      0003E2                       1133 	.ds 1
      0003E3                       1134 _osal_isbufset_buf_1_246:
      0003E3                       1135 	.ds 3
      0003E6                       1136 _osal_isbufset_x_1_247:
      0003E6                       1137 	.ds 1
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
      000047 90 03 03         [24] 1163 	mov	dptr,#_activeTaskID
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
      0003D3                       1184 _osal_strlen:
                           000007  1185 	ar7 = 0x07
                           000006  1186 	ar6 = 0x06
                           000005  1187 	ar5 = 0x05
                           000004  1188 	ar4 = 0x04
                           000003  1189 	ar3 = 0x03
                           000002  1190 	ar2 = 0x02
                           000001  1191 	ar1 = 0x01
                           000000  1192 	ar0 = 0x00
      0003D3 AF F0            [24] 1193 	mov	r7,b
      0003D5 AE 83            [24] 1194 	mov	r6,dph
      0003D7 E5 82            [12] 1195 	mov	a,dpl
      0003D9 90 03 04         [24] 1196 	mov	dptr,#_osal_strlen_pString_1_111
      0003DC F0               [24] 1197 	movx	@dptr,a
      0003DD EE               [12] 1198 	mov	a,r6
      0003DE A3               [24] 1199 	inc	dptr
      0003DF F0               [24] 1200 	movx	@dptr,a
      0003E0 EF               [12] 1201 	mov	a,r7
      0003E1 A3               [24] 1202 	inc	dptr
      0003E2 F0               [24] 1203 	movx	@dptr,a
                                   1204 ;	../osal/common/OSAL.c:135: return (int)( strlen( pString ) );
      0003E3 90 03 04         [24] 1205 	mov	dptr,#_osal_strlen_pString_1_111
      0003E6 E0               [24] 1206 	movx	a,@dptr
      0003E7 FD               [12] 1207 	mov	r5,a
      0003E8 A3               [24] 1208 	inc	dptr
      0003E9 E0               [24] 1209 	movx	a,@dptr
      0003EA FE               [12] 1210 	mov	r6,a
      0003EB A3               [24] 1211 	inc	dptr
      0003EC E0               [24] 1212 	movx	a,@dptr
      0003ED FF               [12] 1213 	mov	r7,a
      0003EE 8D 82            [24] 1214 	mov	dpl,r5
      0003F0 8E 83            [24] 1215 	mov	dph,r6
      0003F2 8F F0            [24] 1216 	mov	b,r7
      0003F4 12 5A FE         [24] 1217 	lcall	_strlen
      0003F7 AE 82            [24] 1218 	mov	r6,dpl
      0003F9 AF 83            [24] 1219 	mov	r7,dph
      0003FB 8E 82            [24] 1220 	mov	dpl,r6
      0003FD 8F 83            [24] 1221 	mov	dph,r7
      0003FF                       1222 00101$:
      0003FF 22               [24] 1223 	ret
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
      000400                       1238 _osal_memcpy:
      000400 AF F0            [24] 1239 	mov	r7,b
      000402 AE 83            [24] 1240 	mov	r6,dph
      000404 E5 82            [12] 1241 	mov	a,dpl
      000406 90 03 0C         [24] 1242 	mov	dptr,#_osal_memcpy_dst_1_113
      000409 F0               [24] 1243 	movx	@dptr,a
      00040A EE               [12] 1244 	mov	a,r6
      00040B A3               [24] 1245 	inc	dptr
      00040C F0               [24] 1246 	movx	@dptr,a
      00040D EF               [12] 1247 	mov	a,r7
      00040E A3               [24] 1248 	inc	dptr
      00040F F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	../osal/common/OSAL.c:160: pSrc = src;
      000410 90 03 07         [24] 1251 	mov	dptr,#_osal_memcpy_PARM_2
      000413 E0               [24] 1252 	movx	a,@dptr
      000414 FD               [12] 1253 	mov	r5,a
      000415 A3               [24] 1254 	inc	dptr
      000416 E0               [24] 1255 	movx	a,@dptr
      000417 FE               [12] 1256 	mov	r6,a
      000418 A3               [24] 1257 	inc	dptr
      000419 E0               [24] 1258 	movx	a,@dptr
      00041A FF               [12] 1259 	mov	r7,a
      00041B 90 03 12         [24] 1260 	mov	dptr,#_osal_memcpy_pSrc_1_114
      00041E ED               [12] 1261 	mov	a,r5
      00041F F0               [24] 1262 	movx	@dptr,a
      000420 EE               [12] 1263 	mov	a,r6
      000421 A3               [24] 1264 	inc	dptr
      000422 F0               [24] 1265 	movx	@dptr,a
      000423 EF               [12] 1266 	mov	a,r7
      000424 A3               [24] 1267 	inc	dptr
      000425 F0               [24] 1268 	movx	@dptr,a
                                   1269 ;	../osal/common/OSAL.c:161: pDst = dst;
      000426 90 03 0C         [24] 1270 	mov	dptr,#_osal_memcpy_dst_1_113
      000429 E0               [24] 1271 	movx	a,@dptr
      00042A FD               [12] 1272 	mov	r5,a
      00042B A3               [24] 1273 	inc	dptr
      00042C E0               [24] 1274 	movx	a,@dptr
      00042D FE               [12] 1275 	mov	r6,a
      00042E A3               [24] 1276 	inc	dptr
      00042F E0               [24] 1277 	movx	a,@dptr
      000430 FF               [12] 1278 	mov	r7,a
      000431 90 03 0F         [24] 1279 	mov	dptr,#_osal_memcpy_pDst_1_114
      000434 ED               [12] 1280 	mov	a,r5
      000435 F0               [24] 1281 	movx	@dptr,a
      000436 EE               [12] 1282 	mov	a,r6
      000437 A3               [24] 1283 	inc	dptr
      000438 F0               [24] 1284 	movx	@dptr,a
      000439 EF               [12] 1285 	mov	a,r7
      00043A A3               [24] 1286 	inc	dptr
      00043B F0               [24] 1287 	movx	@dptr,a
                                   1288 ;	../osal/common/OSAL.c:163: while ( len-- )
      00043C 90 03 12         [24] 1289 	mov	dptr,#_osal_memcpy_pSrc_1_114
      00043F E0               [24] 1290 	movx	a,@dptr
      000440 FD               [12] 1291 	mov	r5,a
      000441 A3               [24] 1292 	inc	dptr
      000442 E0               [24] 1293 	movx	a,@dptr
      000443 FE               [12] 1294 	mov	r6,a
      000444 A3               [24] 1295 	inc	dptr
      000445 E0               [24] 1296 	movx	a,@dptr
      000446 FF               [12] 1297 	mov	r7,a
      000447 90 03 0F         [24] 1298 	mov	dptr,#_osal_memcpy_pDst_1_114
      00044A E0               [24] 1299 	movx	a,@dptr
      00044B FA               [12] 1300 	mov	r2,a
      00044C A3               [24] 1301 	inc	dptr
      00044D E0               [24] 1302 	movx	a,@dptr
      00044E FB               [12] 1303 	mov	r3,a
      00044F A3               [24] 1304 	inc	dptr
      000450 E0               [24] 1305 	movx	a,@dptr
      000451 FC               [12] 1306 	mov	r4,a
      000452 90 03 0A         [24] 1307 	mov	dptr,#_osal_memcpy_PARM_3
      000455 E0               [24] 1308 	movx	a,@dptr
      000456 F5 3A            [12] 1309 	mov	_osal_memcpy_sloc0_1_0,a
      000458 A3               [24] 1310 	inc	dptr
      000459 E0               [24] 1311 	movx	a,@dptr
      00045A F5 3B            [12] 1312 	mov	(_osal_memcpy_sloc0_1_0 + 1),a
      00045C                       1313 00101$:
      00045C A8 3A            [24] 1314 	mov	r0,_osal_memcpy_sloc0_1_0
      00045E A9 3B            [24] 1315 	mov	r1,(_osal_memcpy_sloc0_1_0 + 1)
      000460 15 3A            [12] 1316 	dec	_osal_memcpy_sloc0_1_0
      000462 74 FF            [12] 1317 	mov	a,#0xFF
      000464 B5 3A 02         [24] 1318 	cjne	a,_osal_memcpy_sloc0_1_0,00113$
      000467 15 3B            [12] 1319 	dec	(_osal_memcpy_sloc0_1_0 + 1)
      000469                       1320 00113$:
      000469 E8               [12] 1321 	mov	a,r0
      00046A 49               [12] 1322 	orl	a,r1
      00046B 70 03            [24] 1323 	jnz	00114$
      00046D 02 04 91         [24] 1324 	ljmp	00108$
      000470                       1325 00114$:
                                   1326 ;	../osal/common/OSAL.c:164: *pDst++ = *pSrc++;
      000470 8D 82            [24] 1327 	mov	dpl,r5
      000472 8E 83            [24] 1328 	mov	dph,r6
      000474 8F F0            [24] 1329 	mov	b,r7
      000476 12 5B 16         [24] 1330 	lcall	__gptrget
      000479 F9               [12] 1331 	mov	r1,a
      00047A A3               [24] 1332 	inc	dptr
      00047B AD 82            [24] 1333 	mov	r5,dpl
      00047D AE 83            [24] 1334 	mov	r6,dph
      00047F 8A 82            [24] 1335 	mov	dpl,r2
      000481 8B 83            [24] 1336 	mov	dph,r3
      000483 8C F0            [24] 1337 	mov	b,r4
      000485 E9               [12] 1338 	mov	a,r1
      000486 12 59 AA         [24] 1339 	lcall	__gptrput
      000489 A3               [24] 1340 	inc	dptr
      00048A AA 82            [24] 1341 	mov	r2,dpl
      00048C AB 83            [24] 1342 	mov	r3,dph
      00048E 02 04 5C         [24] 1343 	ljmp	00101$
      000491                       1344 00108$:
      000491 90 03 0F         [24] 1345 	mov	dptr,#_osal_memcpy_pDst_1_114
      000494 EA               [12] 1346 	mov	a,r2
      000495 F0               [24] 1347 	movx	@dptr,a
      000496 EB               [12] 1348 	mov	a,r3
      000497 A3               [24] 1349 	inc	dptr
      000498 F0               [24] 1350 	movx	@dptr,a
      000499 EC               [12] 1351 	mov	a,r4
      00049A A3               [24] 1352 	inc	dptr
      00049B F0               [24] 1353 	movx	@dptr,a
                                   1354 ;	../osal/common/OSAL.c:166: return ( pDst );
      00049C 90 03 0F         [24] 1355 	mov	dptr,#_osal_memcpy_pDst_1_114
      00049F E0               [24] 1356 	movx	a,@dptr
      0004A0 FD               [12] 1357 	mov	r5,a
      0004A1 A3               [24] 1358 	inc	dptr
      0004A2 E0               [24] 1359 	movx	a,@dptr
      0004A3 FE               [12] 1360 	mov	r6,a
      0004A4 A3               [24] 1361 	inc	dptr
      0004A5 E0               [24] 1362 	movx	a,@dptr
      0004A6 FF               [12] 1363 	mov	r7,a
      0004A7 8D 82            [24] 1364 	mov	dpl,r5
      0004A9 8E 83            [24] 1365 	mov	dph,r6
      0004AB 8F F0            [24] 1366 	mov	b,r7
      0004AD                       1367 00104$:
      0004AD 22               [24] 1368 	ret
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
      0004AE                       1383 _osal_revmemcpy:
      0004AE AF F0            [24] 1384 	mov	r7,b
      0004B0 AE 83            [24] 1385 	mov	r6,dph
      0004B2 E5 82            [12] 1386 	mov	a,dpl
      0004B4 90 03 1A         [24] 1387 	mov	dptr,#_osal_revmemcpy_dst_1_115
      0004B7 F0               [24] 1388 	movx	@dptr,a
      0004B8 EE               [12] 1389 	mov	a,r6
      0004B9 A3               [24] 1390 	inc	dptr
      0004BA F0               [24] 1391 	movx	@dptr,a
      0004BB EF               [12] 1392 	mov	a,r7
      0004BC A3               [24] 1393 	inc	dptr
      0004BD F0               [24] 1394 	movx	@dptr,a
                                   1395 ;	../osal/common/OSAL.c:191: pSrc = src;
      0004BE 90 03 15         [24] 1396 	mov	dptr,#_osal_revmemcpy_PARM_2
      0004C1 E0               [24] 1397 	movx	a,@dptr
      0004C2 FD               [12] 1398 	mov	r5,a
      0004C3 A3               [24] 1399 	inc	dptr
      0004C4 E0               [24] 1400 	movx	a,@dptr
      0004C5 FE               [12] 1401 	mov	r6,a
      0004C6 A3               [24] 1402 	inc	dptr
      0004C7 E0               [24] 1403 	movx	a,@dptr
      0004C8 FF               [12] 1404 	mov	r7,a
                                   1405 ;	../osal/common/OSAL.c:192: pSrc += (len-1);
      0004C9 90 03 18         [24] 1406 	mov	dptr,#_osal_revmemcpy_PARM_3
      0004CC E0               [24] 1407 	movx	a,@dptr
      0004CD FB               [12] 1408 	mov	r3,a
      0004CE A3               [24] 1409 	inc	dptr
      0004CF E0               [24] 1410 	movx	a,@dptr
      0004D0 FC               [12] 1411 	mov	r4,a
      0004D1 1B               [12] 1412 	dec	r3
      0004D2 BB FF 01         [24] 1413 	cjne	r3,#0xFF,00113$
      0004D5 1C               [12] 1414 	dec	r4
      0004D6                       1415 00113$:
      0004D6 90 03 20         [24] 1416 	mov	dptr,#_osal_revmemcpy_pSrc_1_116
      0004D9 EB               [12] 1417 	mov	a,r3
      0004DA 2D               [12] 1418 	add	a,r5
      0004DB F0               [24] 1419 	movx	@dptr,a
      0004DC EC               [12] 1420 	mov	a,r4
      0004DD 3E               [12] 1421 	addc	a,r6
      0004DE A3               [24] 1422 	inc	dptr
      0004DF F0               [24] 1423 	movx	@dptr,a
      0004E0 EF               [12] 1424 	mov	a,r7
      0004E1 A3               [24] 1425 	inc	dptr
      0004E2 F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	../osal/common/OSAL.c:193: pDst = dst;
      0004E3 90 03 1A         [24] 1428 	mov	dptr,#_osal_revmemcpy_dst_1_115
      0004E6 E0               [24] 1429 	movx	a,@dptr
      0004E7 FD               [12] 1430 	mov	r5,a
      0004E8 A3               [24] 1431 	inc	dptr
      0004E9 E0               [24] 1432 	movx	a,@dptr
      0004EA FE               [12] 1433 	mov	r6,a
      0004EB A3               [24] 1434 	inc	dptr
      0004EC E0               [24] 1435 	movx	a,@dptr
      0004ED FF               [12] 1436 	mov	r7,a
      0004EE 90 03 1D         [24] 1437 	mov	dptr,#_osal_revmemcpy_pDst_1_116
      0004F1 ED               [12] 1438 	mov	a,r5
      0004F2 F0               [24] 1439 	movx	@dptr,a
      0004F3 EE               [12] 1440 	mov	a,r6
      0004F4 A3               [24] 1441 	inc	dptr
      0004F5 F0               [24] 1442 	movx	@dptr,a
      0004F6 EF               [12] 1443 	mov	a,r7
      0004F7 A3               [24] 1444 	inc	dptr
      0004F8 F0               [24] 1445 	movx	@dptr,a
                                   1446 ;	../osal/common/OSAL.c:195: while ( len-- )
      0004F9 90 03 20         [24] 1447 	mov	dptr,#_osal_revmemcpy_pSrc_1_116
      0004FC E0               [24] 1448 	movx	a,@dptr
      0004FD FD               [12] 1449 	mov	r5,a
      0004FE A3               [24] 1450 	inc	dptr
      0004FF E0               [24] 1451 	movx	a,@dptr
      000500 FE               [12] 1452 	mov	r6,a
      000501 A3               [24] 1453 	inc	dptr
      000502 E0               [24] 1454 	movx	a,@dptr
      000503 FF               [12] 1455 	mov	r7,a
      000504 90 03 1D         [24] 1456 	mov	dptr,#_osal_revmemcpy_pDst_1_116
      000507 E0               [24] 1457 	movx	a,@dptr
      000508 FA               [12] 1458 	mov	r2,a
      000509 A3               [24] 1459 	inc	dptr
      00050A E0               [24] 1460 	movx	a,@dptr
      00050B FB               [12] 1461 	mov	r3,a
      00050C A3               [24] 1462 	inc	dptr
      00050D E0               [24] 1463 	movx	a,@dptr
      00050E FC               [12] 1464 	mov	r4,a
      00050F 90 03 18         [24] 1465 	mov	dptr,#_osal_revmemcpy_PARM_3
      000512 E0               [24] 1466 	movx	a,@dptr
      000513 F5 3A            [12] 1467 	mov	_osal_revmemcpy_sloc0_1_0,a
      000515 A3               [24] 1468 	inc	dptr
      000516 E0               [24] 1469 	movx	a,@dptr
      000517 F5 3B            [12] 1470 	mov	(_osal_revmemcpy_sloc0_1_0 + 1),a
      000519                       1471 00101$:
      000519 A8 3A            [24] 1472 	mov	r0,_osal_revmemcpy_sloc0_1_0
      00051B A9 3B            [24] 1473 	mov	r1,(_osal_revmemcpy_sloc0_1_0 + 1)
      00051D 15 3A            [12] 1474 	dec	_osal_revmemcpy_sloc0_1_0
      00051F 74 FF            [12] 1475 	mov	a,#0xFF
      000521 B5 3A 02         [24] 1476 	cjne	a,_osal_revmemcpy_sloc0_1_0,00114$
      000524 15 3B            [12] 1477 	dec	(_osal_revmemcpy_sloc0_1_0 + 1)
      000526                       1478 00114$:
      000526 E8               [12] 1479 	mov	a,r0
      000527 49               [12] 1480 	orl	a,r1
      000528 70 03            [24] 1481 	jnz	00115$
      00052A 02 05 4E         [24] 1482 	ljmp	00108$
      00052D                       1483 00115$:
                                   1484 ;	../osal/common/OSAL.c:196: *pDst++ = *pSrc--;
      00052D 8D 82            [24] 1485 	mov	dpl,r5
      00052F 8E 83            [24] 1486 	mov	dph,r6
      000531 8F F0            [24] 1487 	mov	b,r7
      000533 12 5B 16         [24] 1488 	lcall	__gptrget
      000536 F9               [12] 1489 	mov	r1,a
      000537 1D               [12] 1490 	dec	r5
      000538 BD FF 01         [24] 1491 	cjne	r5,#0xFF,00116$
      00053B 1E               [12] 1492 	dec	r6
      00053C                       1493 00116$:
      00053C 8A 82            [24] 1494 	mov	dpl,r2
      00053E 8B 83            [24] 1495 	mov	dph,r3
      000540 8C F0            [24] 1496 	mov	b,r4
      000542 E9               [12] 1497 	mov	a,r1
      000543 12 59 AA         [24] 1498 	lcall	__gptrput
      000546 A3               [24] 1499 	inc	dptr
      000547 AA 82            [24] 1500 	mov	r2,dpl
      000549 AB 83            [24] 1501 	mov	r3,dph
      00054B 02 05 19         [24] 1502 	ljmp	00101$
      00054E                       1503 00108$:
      00054E 90 03 1D         [24] 1504 	mov	dptr,#_osal_revmemcpy_pDst_1_116
      000551 EA               [12] 1505 	mov	a,r2
      000552 F0               [24] 1506 	movx	@dptr,a
      000553 EB               [12] 1507 	mov	a,r3
      000554 A3               [24] 1508 	inc	dptr
      000555 F0               [24] 1509 	movx	@dptr,a
      000556 EC               [12] 1510 	mov	a,r4
      000557 A3               [24] 1511 	inc	dptr
      000558 F0               [24] 1512 	movx	@dptr,a
                                   1513 ;	../osal/common/OSAL.c:198: return ( pDst );
      000559 90 03 1D         [24] 1514 	mov	dptr,#_osal_revmemcpy_pDst_1_116
      00055C E0               [24] 1515 	movx	a,@dptr
      00055D FD               [12] 1516 	mov	r5,a
      00055E A3               [24] 1517 	inc	dptr
      00055F E0               [24] 1518 	movx	a,@dptr
      000560 FE               [12] 1519 	mov	r6,a
      000561 A3               [24] 1520 	inc	dptr
      000562 E0               [24] 1521 	movx	a,@dptr
      000563 FF               [12] 1522 	mov	r7,a
      000564 8D 82            [24] 1523 	mov	dpl,r5
      000566 8E 83            [24] 1524 	mov	dph,r6
      000568 8F F0            [24] 1525 	mov	b,r7
      00056A                       1526 00104$:
      00056A 22               [24] 1527 	ret
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
      00056B                       1539 _osal_memdup:
      00056B AF F0            [24] 1540 	mov	r7,b
      00056D AE 83            [24] 1541 	mov	r6,dph
      00056F E5 82            [12] 1542 	mov	a,dpl
      000571 90 03 25         [24] 1543 	mov	dptr,#_osal_memdup_src_1_117
      000574 F0               [24] 1544 	movx	@dptr,a
      000575 EE               [12] 1545 	mov	a,r6
      000576 A3               [24] 1546 	inc	dptr
      000577 F0               [24] 1547 	movx	@dptr,a
      000578 EF               [12] 1548 	mov	a,r7
      000579 A3               [24] 1549 	inc	dptr
      00057A F0               [24] 1550 	movx	@dptr,a
                                   1551 ;	../osal/common/OSAL.c:217: pDst = osal_mem_alloc( len );
      00057B 90 03 23         [24] 1552 	mov	dptr,#_osal_memdup_PARM_2
      00057E E0               [24] 1553 	movx	a,@dptr
      00057F FE               [12] 1554 	mov	r6,a
      000580 A3               [24] 1555 	inc	dptr
      000581 E0               [24] 1556 	movx	a,@dptr
      000582 FF               [12] 1557 	mov	r7,a
      000583 8E 82            [24] 1558 	mov	dpl,r6
      000585 8F 83            [24] 1559 	mov	dph,r7
      000587 12 1F B4         [24] 1560 	lcall	_osal_mem_alloc
      00058A AD 82            [24] 1561 	mov	r5,dpl
      00058C AE 83            [24] 1562 	mov	r6,dph
      00058E AF F0            [24] 1563 	mov	r7,b
      000590 90 03 28         [24] 1564 	mov	dptr,#_osal_memdup_pDst_1_118
      000593 ED               [12] 1565 	mov	a,r5
      000594 F0               [24] 1566 	movx	@dptr,a
      000595 EE               [12] 1567 	mov	a,r6
      000596 A3               [24] 1568 	inc	dptr
      000597 F0               [24] 1569 	movx	@dptr,a
      000598 EF               [12] 1570 	mov	a,r7
      000599 A3               [24] 1571 	inc	dptr
      00059A F0               [24] 1572 	movx	@dptr,a
                                   1573 ;	../osal/common/OSAL.c:218: if ( pDst )
      00059B ED               [12] 1574 	mov	a,r5
      00059C 4E               [12] 1575 	orl	a,r6
      00059D 70 03            [24] 1576 	jnz	00108$
      00059F 02 05 DC         [24] 1577 	ljmp	00102$
      0005A2                       1578 00108$:
                                   1579 ;	../osal/common/OSAL.c:220: VOID osal_memcpy( pDst, src, len );
      0005A2 90 03 28         [24] 1580 	mov	dptr,#_osal_memdup_pDst_1_118
      0005A5 E0               [24] 1581 	movx	a,@dptr
      0005A6 FD               [12] 1582 	mov	r5,a
      0005A7 A3               [24] 1583 	inc	dptr
      0005A8 E0               [24] 1584 	movx	a,@dptr
      0005A9 FE               [12] 1585 	mov	r6,a
      0005AA A3               [24] 1586 	inc	dptr
      0005AB E0               [24] 1587 	movx	a,@dptr
      0005AC FF               [12] 1588 	mov	r7,a
      0005AD 90 03 25         [24] 1589 	mov	dptr,#_osal_memdup_src_1_117
      0005B0 E0               [24] 1590 	movx	a,@dptr
      0005B1 FA               [12] 1591 	mov	r2,a
      0005B2 A3               [24] 1592 	inc	dptr
      0005B3 E0               [24] 1593 	movx	a,@dptr
      0005B4 FB               [12] 1594 	mov	r3,a
      0005B5 A3               [24] 1595 	inc	dptr
      0005B6 E0               [24] 1596 	movx	a,@dptr
      0005B7 FC               [12] 1597 	mov	r4,a
      0005B8 90 03 23         [24] 1598 	mov	dptr,#_osal_memdup_PARM_2
      0005BB E0               [24] 1599 	movx	a,@dptr
      0005BC F8               [12] 1600 	mov	r0,a
      0005BD A3               [24] 1601 	inc	dptr
      0005BE E0               [24] 1602 	movx	a,@dptr
      0005BF F9               [12] 1603 	mov	r1,a
      0005C0 90 03 07         [24] 1604 	mov	dptr,#_osal_memcpy_PARM_2
      0005C3 EA               [12] 1605 	mov	a,r2
      0005C4 F0               [24] 1606 	movx	@dptr,a
      0005C5 EB               [12] 1607 	mov	a,r3
      0005C6 A3               [24] 1608 	inc	dptr
      0005C7 F0               [24] 1609 	movx	@dptr,a
      0005C8 EC               [12] 1610 	mov	a,r4
      0005C9 A3               [24] 1611 	inc	dptr
      0005CA F0               [24] 1612 	movx	@dptr,a
      0005CB 90 03 0A         [24] 1613 	mov	dptr,#_osal_memcpy_PARM_3
      0005CE E8               [12] 1614 	mov	a,r0
      0005CF F0               [24] 1615 	movx	@dptr,a
      0005D0 E9               [12] 1616 	mov	a,r1
      0005D1 A3               [24] 1617 	inc	dptr
      0005D2 F0               [24] 1618 	movx	@dptr,a
      0005D3 8D 82            [24] 1619 	mov	dpl,r5
      0005D5 8E 83            [24] 1620 	mov	dph,r6
      0005D7 8F F0            [24] 1621 	mov	b,r7
      0005D9 12 04 00         [24] 1622 	lcall	_osal_memcpy
      0005DC                       1623 00102$:
                                   1624 ;	../osal/common/OSAL.c:223: return ( (void *)pDst );
      0005DC 90 03 28         [24] 1625 	mov	dptr,#_osal_memdup_pDst_1_118
      0005DF E0               [24] 1626 	movx	a,@dptr
      0005E0 FD               [12] 1627 	mov	r5,a
      0005E1 A3               [24] 1628 	inc	dptr
      0005E2 E0               [24] 1629 	movx	a,@dptr
      0005E3 FE               [12] 1630 	mov	r6,a
      0005E4 A3               [24] 1631 	inc	dptr
      0005E5 E0               [24] 1632 	movx	a,@dptr
      0005E6 FF               [12] 1633 	mov	r7,a
      0005E7 8D 82            [24] 1634 	mov	dpl,r5
      0005E9 8E 83            [24] 1635 	mov	dph,r6
      0005EB 8F F0            [24] 1636 	mov	b,r7
      0005ED                       1637 00103$:
      0005ED 22               [24] 1638 	ret
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
      0005EE                       1653 _osal_memcmp:
      0005EE AF F0            [24] 1654 	mov	r7,b
      0005F0 AE 83            [24] 1655 	mov	r6,dph
      0005F2 E5 82            [12] 1656 	mov	a,dpl
      0005F4 90 03 30         [24] 1657 	mov	dptr,#_osal_memcmp_src1_1_120
      0005F7 F0               [24] 1658 	movx	@dptr,a
      0005F8 EE               [12] 1659 	mov	a,r6
      0005F9 A3               [24] 1660 	inc	dptr
      0005FA F0               [24] 1661 	movx	@dptr,a
      0005FB EF               [12] 1662 	mov	a,r7
      0005FC A3               [24] 1663 	inc	dptr
      0005FD F0               [24] 1664 	movx	@dptr,a
                                   1665 ;	../osal/common/OSAL.c:244: pSrc1 = src1;
      0005FE 90 03 30         [24] 1666 	mov	dptr,#_osal_memcmp_src1_1_120
      000601 E0               [24] 1667 	movx	a,@dptr
      000602 FD               [12] 1668 	mov	r5,a
      000603 A3               [24] 1669 	inc	dptr
      000604 E0               [24] 1670 	movx	a,@dptr
      000605 FE               [12] 1671 	mov	r6,a
      000606 A3               [24] 1672 	inc	dptr
      000607 E0               [24] 1673 	movx	a,@dptr
      000608 FF               [12] 1674 	mov	r7,a
      000609 90 03 33         [24] 1675 	mov	dptr,#_osal_memcmp_pSrc1_1_121
      00060C ED               [12] 1676 	mov	a,r5
      00060D F0               [24] 1677 	movx	@dptr,a
      00060E EE               [12] 1678 	mov	a,r6
      00060F A3               [24] 1679 	inc	dptr
      000610 F0               [24] 1680 	movx	@dptr,a
      000611 EF               [12] 1681 	mov	a,r7
      000612 A3               [24] 1682 	inc	dptr
      000613 F0               [24] 1683 	movx	@dptr,a
                                   1684 ;	../osal/common/OSAL.c:245: pSrc2 = src2;
      000614 90 03 2B         [24] 1685 	mov	dptr,#_osal_memcmp_PARM_2
      000617 E0               [24] 1686 	movx	a,@dptr
      000618 FD               [12] 1687 	mov	r5,a
      000619 A3               [24] 1688 	inc	dptr
      00061A E0               [24] 1689 	movx	a,@dptr
      00061B FE               [12] 1690 	mov	r6,a
      00061C A3               [24] 1691 	inc	dptr
      00061D E0               [24] 1692 	movx	a,@dptr
      00061E FF               [12] 1693 	mov	r7,a
      00061F 90 03 36         [24] 1694 	mov	dptr,#_osal_memcmp_pSrc2_1_121
      000622 ED               [12] 1695 	mov	a,r5
      000623 F0               [24] 1696 	movx	@dptr,a
      000624 EE               [12] 1697 	mov	a,r6
      000625 A3               [24] 1698 	inc	dptr
      000626 F0               [24] 1699 	movx	@dptr,a
      000627 EF               [12] 1700 	mov	a,r7
      000628 A3               [24] 1701 	inc	dptr
      000629 F0               [24] 1702 	movx	@dptr,a
                                   1703 ;	../osal/common/OSAL.c:247: while ( len-- )
      00062A 90 03 33         [24] 1704 	mov	dptr,#_osal_memcmp_pSrc1_1_121
      00062D E0               [24] 1705 	movx	a,@dptr
      00062E FD               [12] 1706 	mov	r5,a
      00062F A3               [24] 1707 	inc	dptr
      000630 E0               [24] 1708 	movx	a,@dptr
      000631 FE               [12] 1709 	mov	r6,a
      000632 A3               [24] 1710 	inc	dptr
      000633 E0               [24] 1711 	movx	a,@dptr
      000634 FF               [12] 1712 	mov	r7,a
      000635 90 03 36         [24] 1713 	mov	dptr,#_osal_memcmp_pSrc2_1_121
      000638 E0               [24] 1714 	movx	a,@dptr
      000639 FA               [12] 1715 	mov	r2,a
      00063A A3               [24] 1716 	inc	dptr
      00063B E0               [24] 1717 	movx	a,@dptr
      00063C FB               [12] 1718 	mov	r3,a
      00063D A3               [24] 1719 	inc	dptr
      00063E E0               [24] 1720 	movx	a,@dptr
      00063F FC               [12] 1721 	mov	r4,a
      000640 90 03 2E         [24] 1722 	mov	dptr,#_osal_memcmp_PARM_3
      000643 E0               [24] 1723 	movx	a,@dptr
      000644 F5 3A            [12] 1724 	mov	_osal_memcmp_sloc0_1_0,a
      000646 A3               [24] 1725 	inc	dptr
      000647 E0               [24] 1726 	movx	a,@dptr
      000648 F5 3B            [12] 1727 	mov	(_osal_memcmp_sloc0_1_0 + 1),a
      00064A                       1728 00103$:
      00064A A8 3A            [24] 1729 	mov	r0,_osal_memcmp_sloc0_1_0
      00064C A9 3B            [24] 1730 	mov	r1,(_osal_memcmp_sloc0_1_0 + 1)
      00064E 15 3A            [12] 1731 	dec	_osal_memcmp_sloc0_1_0
      000650 74 FF            [12] 1732 	mov	a,#0xFF
      000652 B5 3A 02         [24] 1733 	cjne	a,_osal_memcmp_sloc0_1_0,00117$
      000655 15 3B            [12] 1734 	dec	(_osal_memcmp_sloc0_1_0 + 1)
      000657                       1735 00117$:
      000657 E8               [12] 1736 	mov	a,r0
      000658 49               [12] 1737 	orl	a,r1
      000659 70 03            [24] 1738 	jnz	00118$
      00065B 02 06 89         [24] 1739 	ljmp	00105$
      00065E                       1740 00118$:
                                   1741 ;	../osal/common/OSAL.c:249: if( *pSrc1++ != *pSrc2++ )
      00065E 8D 82            [24] 1742 	mov	dpl,r5
      000660 8E 83            [24] 1743 	mov	dph,r6
      000662 8F F0            [24] 1744 	mov	b,r7
      000664 12 5B 16         [24] 1745 	lcall	__gptrget
      000667 F9               [12] 1746 	mov	r1,a
      000668 A3               [24] 1747 	inc	dptr
      000669 AD 82            [24] 1748 	mov	r5,dpl
      00066B AE 83            [24] 1749 	mov	r6,dph
      00066D 8A 82            [24] 1750 	mov	dpl,r2
      00066F 8B 83            [24] 1751 	mov	dph,r3
      000671 8C F0            [24] 1752 	mov	b,r4
      000673 12 5B 16         [24] 1753 	lcall	__gptrget
      000676 F8               [12] 1754 	mov	r0,a
      000677 A3               [24] 1755 	inc	dptr
      000678 AA 82            [24] 1756 	mov	r2,dpl
      00067A AB 83            [24] 1757 	mov	r3,dph
      00067C E9               [12] 1758 	mov	a,r1
      00067D B5 00 03         [24] 1759 	cjne	a,ar0,00119$
      000680 02 06 4A         [24] 1760 	ljmp	00103$
      000683                       1761 00119$:
                                   1762 ;	../osal/common/OSAL.c:250: return FALSE;
      000683 75 82 00         [24] 1763 	mov	dpl,#0x00
      000686 02 06 8C         [24] 1764 	ljmp	00106$
      000689                       1765 00105$:
                                   1766 ;	../osal/common/OSAL.c:252: return TRUE;
      000689 75 82 01         [24] 1767 	mov	dpl,#0x01
      00068C                       1768 00106$:
      00068C 22               [24] 1769 	ret
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
      00068D                       1781 _osal_memset:
      00068D AF F0            [24] 1782 	mov	r7,b
      00068F AE 83            [24] 1783 	mov	r6,dph
      000691 E5 82            [12] 1784 	mov	a,dpl
      000693 90 03 3C         [24] 1785 	mov	dptr,#_osal_memset_dest_1_123
      000696 F0               [24] 1786 	movx	@dptr,a
      000697 EE               [12] 1787 	mov	a,r6
      000698 A3               [24] 1788 	inc	dptr
      000699 F0               [24] 1789 	movx	@dptr,a
      00069A EF               [12] 1790 	mov	a,r7
      00069B A3               [24] 1791 	inc	dptr
      00069C F0               [24] 1792 	movx	@dptr,a
                                   1793 ;	../osal/common/OSAL.c:271: return memset( dest, value, len );
      00069D 90 03 3C         [24] 1794 	mov	dptr,#_osal_memset_dest_1_123
      0006A0 E0               [24] 1795 	movx	a,@dptr
      0006A1 FD               [12] 1796 	mov	r5,a
      0006A2 A3               [24] 1797 	inc	dptr
      0006A3 E0               [24] 1798 	movx	a,@dptr
      0006A4 FE               [12] 1799 	mov	r6,a
      0006A5 A3               [24] 1800 	inc	dptr
      0006A6 E0               [24] 1801 	movx	a,@dptr
      0006A7 FF               [12] 1802 	mov	r7,a
      0006A8 90 03 39         [24] 1803 	mov	dptr,#_osal_memset_PARM_2
      0006AB E0               [24] 1804 	movx	a,@dptr
      0006AC FC               [12] 1805 	mov	r4,a
      0006AD 90 03 3A         [24] 1806 	mov	dptr,#_osal_memset_PARM_3
      0006B0 E0               [24] 1807 	movx	a,@dptr
      0006B1 FA               [12] 1808 	mov	r2,a
      0006B2 A3               [24] 1809 	inc	dptr
      0006B3 E0               [24] 1810 	movx	a,@dptr
      0006B4 FB               [12] 1811 	mov	r3,a
      0006B5 90 12 0F         [24] 1812 	mov	dptr,#_memset_PARM_2
      0006B8 EC               [12] 1813 	mov	a,r4
      0006B9 F0               [24] 1814 	movx	@dptr,a
      0006BA 90 12 10         [24] 1815 	mov	dptr,#_memset_PARM_3
      0006BD EA               [12] 1816 	mov	a,r2
      0006BE F0               [24] 1817 	movx	@dptr,a
      0006BF EB               [12] 1818 	mov	a,r3
      0006C0 A3               [24] 1819 	inc	dptr
      0006C1 F0               [24] 1820 	movx	@dptr,a
      0006C2 8D 82            [24] 1821 	mov	dpl,r5
      0006C4 8E 83            [24] 1822 	mov	dph,r6
      0006C6 8F F0            [24] 1823 	mov	b,r7
      0006C8 12 57 43         [24] 1824 	lcall	_memset
      0006CB AD 82            [24] 1825 	mov	r5,dpl
      0006CD AE 83            [24] 1826 	mov	r6,dph
      0006CF AF F0            [24] 1827 	mov	r7,b
      0006D1 8D 82            [24] 1828 	mov	dpl,r5
      0006D3 8E 83            [24] 1829 	mov	dph,r6
      0006D5 8F F0            [24] 1830 	mov	b,r7
      0006D7                       1831 00101$:
      0006D7 22               [24] 1832 	ret
                                   1833 ;------------------------------------------------------------
                                   1834 ;Allocation info for local variables in function 'osal_build_uint16'
                                   1835 ;------------------------------------------------------------
                                   1836 ;swapped                   Allocated with name '_osal_build_uint16_swapped_1_125'
                                   1837 ;------------------------------------------------------------
                                   1838 ;	../osal/common/OSAL.c:285: uint16 osal_build_uint16( uint8 *swapped )
                                   1839 ;	-----------------------------------------
                                   1840 ;	 function osal_build_uint16
                                   1841 ;	-----------------------------------------
      0006D8                       1842 _osal_build_uint16:
      0006D8 AF F0            [24] 1843 	mov	r7,b
      0006DA AE 83            [24] 1844 	mov	r6,dph
      0006DC E5 82            [12] 1845 	mov	a,dpl
      0006DE 90 03 3F         [24] 1846 	mov	dptr,#_osal_build_uint16_swapped_1_125
      0006E1 F0               [24] 1847 	movx	@dptr,a
      0006E2 EE               [12] 1848 	mov	a,r6
      0006E3 A3               [24] 1849 	inc	dptr
      0006E4 F0               [24] 1850 	movx	@dptr,a
      0006E5 EF               [12] 1851 	mov	a,r7
      0006E6 A3               [24] 1852 	inc	dptr
      0006E7 F0               [24] 1853 	movx	@dptr,a
                                   1854 ;	../osal/common/OSAL.c:287: return ( BUILD_UINT16( swapped[0], swapped[1] ) );
      0006E8 90 03 3F         [24] 1855 	mov	dptr,#_osal_build_uint16_swapped_1_125
      0006EB E0               [24] 1856 	movx	a,@dptr
      0006EC FD               [12] 1857 	mov	r5,a
      0006ED A3               [24] 1858 	inc	dptr
      0006EE E0               [24] 1859 	movx	a,@dptr
      0006EF FE               [12] 1860 	mov	r6,a
      0006F0 A3               [24] 1861 	inc	dptr
      0006F1 E0               [24] 1862 	movx	a,@dptr
      0006F2 FF               [12] 1863 	mov	r7,a
      0006F3 8D 82            [24] 1864 	mov	dpl,r5
      0006F5 8E 83            [24] 1865 	mov	dph,r6
      0006F7 8F F0            [24] 1866 	mov	b,r7
      0006F9 12 5B 16         [24] 1867 	lcall	__gptrget
      0006FC FC               [12] 1868 	mov	r4,a
      0006FD 7B 00            [12] 1869 	mov	r3,#0x00
      0006FF 0D               [12] 1870 	inc	r5
      000700 BD 00 01         [24] 1871 	cjne	r5,#0x00,00103$
      000703 0E               [12] 1872 	inc	r6
      000704                       1873 00103$:
      000704 8D 82            [24] 1874 	mov	dpl,r5
      000706 8E 83            [24] 1875 	mov	dph,r6
      000708 8F F0            [24] 1876 	mov	b,r7
      00070A 12 5B 16         [24] 1877 	lcall	__gptrget
      00070D FD               [12] 1878 	mov	r5,a
      00070E 7F 00            [12] 1879 	mov	r7,#0x00
      000710 8D 07            [24] 1880 	mov	ar7,r5
      000712 7D 00            [12] 1881 	mov	r5,#0x00
      000714 ED               [12] 1882 	mov	a,r5
      000715 2C               [12] 1883 	add	a,r4
      000716 FC               [12] 1884 	mov	r4,a
      000717 EF               [12] 1885 	mov	a,r7
      000718 3B               [12] 1886 	addc	a,r3
      000719 FB               [12] 1887 	mov	r3,a
      00071A 8C 82            [24] 1888 	mov	dpl,r4
      00071C 8B 83            [24] 1889 	mov	dph,r3
      00071E                       1890 00101$:
      00071E 22               [24] 1891 	ret
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
      00071F                       1903 _osal_build_uint32:
      00071F AF F0            [24] 1904 	mov	r7,b
      000721 AE 83            [24] 1905 	mov	r6,dph
      000723 E5 82            [12] 1906 	mov	a,dpl
      000725 90 03 43         [24] 1907 	mov	dptr,#_osal_build_uint32_swapped_1_127
      000728 F0               [24] 1908 	movx	@dptr,a
      000729 EE               [12] 1909 	mov	a,r6
      00072A A3               [24] 1910 	inc	dptr
      00072B F0               [24] 1911 	movx	@dptr,a
      00072C EF               [12] 1912 	mov	a,r7
      00072D A3               [24] 1913 	inc	dptr
      00072E F0               [24] 1914 	movx	@dptr,a
                                   1915 ;	../osal/common/OSAL.c:304: if ( len == 2 )
      00072F 90 03 42         [24] 1916 	mov	dptr,#_osal_build_uint32_PARM_2
      000732 E0               [24] 1917 	movx	a,@dptr
      000733 FF               [12] 1918 	mov	r7,a
      000734 BF 02 02         [24] 1919 	cjne	r7,#0x02,00121$
      000737 80 03            [24] 1920 	sjmp	00122$
      000739                       1921 00121$:
      000739 02 07 8E         [24] 1922 	ljmp	00108$
      00073C                       1923 00122$:
                                   1924 ;	../osal/common/OSAL.c:305: return ( BUILD_UINT32( swapped[0], swapped[1], 0L, 0L ) );
      00073C 90 03 43         [24] 1925 	mov	dptr,#_osal_build_uint32_swapped_1_127
      00073F E0               [24] 1926 	movx	a,@dptr
      000740 FD               [12] 1927 	mov	r5,a
      000741 A3               [24] 1928 	inc	dptr
      000742 E0               [24] 1929 	movx	a,@dptr
      000743 FE               [12] 1930 	mov	r6,a
      000744 A3               [24] 1931 	inc	dptr
      000745 E0               [24] 1932 	movx	a,@dptr
      000746 FF               [12] 1933 	mov	r7,a
      000747 8D 82            [24] 1934 	mov	dpl,r5
      000749 8E 83            [24] 1935 	mov	dph,r6
      00074B 8F F0            [24] 1936 	mov	b,r7
      00074D 12 5B 16         [24] 1937 	lcall	__gptrget
      000750 FC               [12] 1938 	mov	r4,a
      000751 8C 01            [24] 1939 	mov	ar1,r4
      000753 7A 00            [12] 1940 	mov	r2,#0x00
      000755 7B 00            [12] 1941 	mov	r3,#0x00
      000757 7C 00            [12] 1942 	mov	r4,#0x00
      000759 0D               [12] 1943 	inc	r5
      00075A BD 00 01         [24] 1944 	cjne	r5,#0x00,00123$
      00075D 0E               [12] 1945 	inc	r6
      00075E                       1946 00123$:
      00075E 8D 82            [24] 1947 	mov	dpl,r5
      000760 8E 83            [24] 1948 	mov	dph,r6
      000762 8F F0            [24] 1949 	mov	b,r7
      000764 12 5B 16         [24] 1950 	lcall	__gptrget
      000767 FD               [12] 1951 	mov	r5,a
      000768 8D 00            [24] 1952 	mov	ar0,r5
      00076A 7D 00            [12] 1953 	mov	r5,#0x00
      00076C 7E 00            [12] 1954 	mov	r6,#0x00
      00076E 7F 00            [12] 1955 	mov	r7,#0x00
      000770 8E 07            [24] 1956 	mov	ar7,r6
      000772 8D 06            [24] 1957 	mov	ar6,r5
      000774 88 05            [24] 1958 	mov	ar5,r0
      000776 78 00            [12] 1959 	mov	r0,#0x00
      000778 E8               [12] 1960 	mov	a,r0
      000779 29               [12] 1961 	add	a,r1
      00077A F9               [12] 1962 	mov	r1,a
      00077B ED               [12] 1963 	mov	a,r5
      00077C 3A               [12] 1964 	addc	a,r2
      00077D FA               [12] 1965 	mov	r2,a
      00077E EE               [12] 1966 	mov	a,r6
      00077F 3B               [12] 1967 	addc	a,r3
      000780 FB               [12] 1968 	mov	r3,a
      000781 EF               [12] 1969 	mov	a,r7
      000782 3C               [12] 1970 	addc	a,r4
      000783 FC               [12] 1971 	mov	r4,a
      000784 89 82            [24] 1972 	mov	dpl,r1
      000786 8A 83            [24] 1973 	mov	dph,r2
      000788 8B F0            [24] 1974 	mov	b,r3
      00078A EC               [12] 1975 	mov	a,r4
      00078B 02 09 14         [24] 1976 	ljmp	00110$
      00078E                       1977 00108$:
                                   1978 ;	../osal/common/OSAL.c:306: else if ( len == 3 )
      00078E 90 03 42         [24] 1979 	mov	dptr,#_osal_build_uint32_PARM_2
      000791 E0               [24] 1980 	movx	a,@dptr
      000792 FF               [12] 1981 	mov	r7,a
      000793 BF 03 02         [24] 1982 	cjne	r7,#0x03,00124$
      000796 80 03            [24] 1983 	sjmp	00125$
      000798                       1984 00124$:
      000798 02 08 25         [24] 1985 	ljmp	00105$
      00079B                       1986 00125$:
                                   1987 ;	../osal/common/OSAL.c:307: return ( BUILD_UINT32( swapped[0], swapped[1], swapped[2], 0L ) );
      00079B 90 03 43         [24] 1988 	mov	dptr,#_osal_build_uint32_swapped_1_127
      00079E E0               [24] 1989 	movx	a,@dptr
      00079F FD               [12] 1990 	mov	r5,a
      0007A0 A3               [24] 1991 	inc	dptr
      0007A1 E0               [24] 1992 	movx	a,@dptr
      0007A2 FE               [12] 1993 	mov	r6,a
      0007A3 A3               [24] 1994 	inc	dptr
      0007A4 E0               [24] 1995 	movx	a,@dptr
      0007A5 FF               [12] 1996 	mov	r7,a
      0007A6 8D 82            [24] 1997 	mov	dpl,r5
      0007A8 8E 83            [24] 1998 	mov	dph,r6
      0007AA 8F F0            [24] 1999 	mov	b,r7
      0007AC 12 5B 16         [24] 2000 	lcall	__gptrget
      0007AF FC               [12] 2001 	mov	r4,a
      0007B0 8C 3A            [24] 2002 	mov	_osal_build_uint32_sloc0_1_0,r4
      0007B2 75 3B 00         [24] 2003 	mov	(_osal_build_uint32_sloc0_1_0 + 1),#0x00
      0007B5 75 3C 00         [24] 2004 	mov	(_osal_build_uint32_sloc0_1_0 + 2),#0x00
      0007B8 75 3D 00         [24] 2005 	mov	(_osal_build_uint32_sloc0_1_0 + 3),#0x00
      0007BB 74 01            [12] 2006 	mov	a,#0x01
      0007BD 2D               [12] 2007 	add	a,r5
      0007BE F8               [12] 2008 	mov	r0,a
      0007BF 74 00            [12] 2009 	mov	a,#0x00
      0007C1 3E               [12] 2010 	addc	a,r6
      0007C2 FB               [12] 2011 	mov	r3,a
      0007C3 8F 04            [24] 2012 	mov	ar4,r7
      0007C5 88 82            [24] 2013 	mov	dpl,r0
      0007C7 8B 83            [24] 2014 	mov	dph,r3
      0007C9 8C F0            [24] 2015 	mov	b,r4
      0007CB 12 5B 16         [24] 2016 	lcall	__gptrget
      0007CE F8               [12] 2017 	mov	r0,a
      0007CF 7C 00            [12] 2018 	mov	r4,#0x00
      0007D1 7B 00            [12] 2019 	mov	r3,#0x00
      0007D3 7A 00            [12] 2020 	mov	r2,#0x00
      0007D5 8B 02            [24] 2021 	mov	ar2,r3
      0007D7 8C 03            [24] 2022 	mov	ar3,r4
      0007D9 88 04            [24] 2023 	mov	ar4,r0
      0007DB 78 00            [12] 2024 	mov	r0,#0x00
      0007DD E8               [12] 2025 	mov	a,r0
      0007DE 25 3A            [12] 2026 	add	a,_osal_build_uint32_sloc0_1_0
      0007E0 F8               [12] 2027 	mov	r0,a
      0007E1 EC               [12] 2028 	mov	a,r4
      0007E2 35 3B            [12] 2029 	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
      0007E4 FC               [12] 2030 	mov	r4,a
      0007E5 EB               [12] 2031 	mov	a,r3
      0007E6 35 3C            [12] 2032 	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
      0007E8 FB               [12] 2033 	mov	r3,a
      0007E9 EA               [12] 2034 	mov	a,r2
      0007EA 35 3D            [12] 2035 	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
      0007EC FA               [12] 2036 	mov	r2,a
      0007ED 74 02            [12] 2037 	mov	a,#0x02
      0007EF 2D               [12] 2038 	add	a,r5
      0007F0 FD               [12] 2039 	mov	r5,a
      0007F1 74 00            [12] 2040 	mov	a,#0x00
      0007F3 3E               [12] 2041 	addc	a,r6
      0007F4 FE               [12] 2042 	mov	r6,a
      0007F5 8D 82            [24] 2043 	mov	dpl,r5
      0007F7 8E 83            [24] 2044 	mov	dph,r6
      0007F9 8F F0            [24] 2045 	mov	b,r7
      0007FB 12 5B 16         [24] 2046 	lcall	__gptrget
      0007FE FD               [12] 2047 	mov	r5,a
      0007FF 8D 01            [24] 2048 	mov	ar1,r5
      000801 7D 00            [12] 2049 	mov	r5,#0x00
      000803 7E 00            [12] 2050 	mov	r6,#0x00
      000805 7F 00            [12] 2051 	mov	r7,#0x00
      000807 8D 07            [24] 2052 	mov	ar7,r5
      000809 89 06            [24] 2053 	mov	ar6,r1
      00080B 7D 00            [12] 2054 	mov	r5,#0x00
      00080D 79 00            [12] 2055 	mov	r1,#0x00
      00080F E9               [12] 2056 	mov	a,r1
      000810 28               [12] 2057 	add	a,r0
      000811 F8               [12] 2058 	mov	r0,a
      000812 ED               [12] 2059 	mov	a,r5
      000813 3C               [12] 2060 	addc	a,r4
      000814 FC               [12] 2061 	mov	r4,a
      000815 EE               [12] 2062 	mov	a,r6
      000816 3B               [12] 2063 	addc	a,r3
      000817 FB               [12] 2064 	mov	r3,a
      000818 EF               [12] 2065 	mov	a,r7
      000819 3A               [12] 2066 	addc	a,r2
      00081A FA               [12] 2067 	mov	r2,a
      00081B 88 82            [24] 2068 	mov	dpl,r0
      00081D 8C 83            [24] 2069 	mov	dph,r4
      00081F 8B F0            [24] 2070 	mov	b,r3
      000821 EA               [12] 2071 	mov	a,r2
      000822 02 09 14         [24] 2072 	ljmp	00110$
      000825                       2073 00105$:
                                   2074 ;	../osal/common/OSAL.c:308: else if ( len == 4 )
      000825 90 03 42         [24] 2075 	mov	dptr,#_osal_build_uint32_PARM_2
      000828 E0               [24] 2076 	movx	a,@dptr
      000829 FF               [12] 2077 	mov	r7,a
      00082A BF 04 02         [24] 2078 	cjne	r7,#0x04,00126$
      00082D 80 03            [24] 2079 	sjmp	00127$
      00082F                       2080 00126$:
      00082F 02 08 F2         [24] 2081 	ljmp	00102$
      000832                       2082 00127$:
                                   2083 ;	../osal/common/OSAL.c:309: return ( BUILD_UINT32( swapped[0], swapped[1], swapped[2], swapped[3] ) );
      000832 90 03 43         [24] 2084 	mov	dptr,#_osal_build_uint32_swapped_1_127
      000835 E0               [24] 2085 	movx	a,@dptr
      000836 FD               [12] 2086 	mov	r5,a
      000837 A3               [24] 2087 	inc	dptr
      000838 E0               [24] 2088 	movx	a,@dptr
      000839 FE               [12] 2089 	mov	r6,a
      00083A A3               [24] 2090 	inc	dptr
      00083B E0               [24] 2091 	movx	a,@dptr
      00083C FF               [12] 2092 	mov	r7,a
      00083D 8D 82            [24] 2093 	mov	dpl,r5
      00083F 8E 83            [24] 2094 	mov	dph,r6
      000841 8F F0            [24] 2095 	mov	b,r7
      000843 12 5B 16         [24] 2096 	lcall	__gptrget
      000846 FC               [12] 2097 	mov	r4,a
      000847 8C 3A            [24] 2098 	mov	_osal_build_uint32_sloc0_1_0,r4
      000849 75 3B 00         [24] 2099 	mov	(_osal_build_uint32_sloc0_1_0 + 1),#0x00
      00084C 75 3C 00         [24] 2100 	mov	(_osal_build_uint32_sloc0_1_0 + 2),#0x00
      00084F 75 3D 00         [24] 2101 	mov	(_osal_build_uint32_sloc0_1_0 + 3),#0x00
      000852 74 01            [12] 2102 	mov	a,#0x01
      000854 2D               [12] 2103 	add	a,r5
      000855 F8               [12] 2104 	mov	r0,a
      000856 74 00            [12] 2105 	mov	a,#0x00
      000858 3E               [12] 2106 	addc	a,r6
      000859 FB               [12] 2107 	mov	r3,a
      00085A 8F 04            [24] 2108 	mov	ar4,r7
      00085C 88 82            [24] 2109 	mov	dpl,r0
      00085E 8B 83            [24] 2110 	mov	dph,r3
      000860 8C F0            [24] 2111 	mov	b,r4
      000862 12 5B 16         [24] 2112 	lcall	__gptrget
      000865 F8               [12] 2113 	mov	r0,a
      000866 7C 00            [12] 2114 	mov	r4,#0x00
      000868 7B 00            [12] 2115 	mov	r3,#0x00
      00086A 7A 00            [12] 2116 	mov	r2,#0x00
      00086C 8B 02            [24] 2117 	mov	ar2,r3
      00086E 8C 03            [24] 2118 	mov	ar3,r4
      000870 88 04            [24] 2119 	mov	ar4,r0
      000872 78 00            [12] 2120 	mov	r0,#0x00
      000874 E8               [12] 2121 	mov	a,r0
      000875 25 3A            [12] 2122 	add	a,_osal_build_uint32_sloc0_1_0
      000877 F5 3A            [12] 2123 	mov	_osal_build_uint32_sloc0_1_0,a
      000879 EC               [12] 2124 	mov	a,r4
      00087A 35 3B            [12] 2125 	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
      00087C F5 3B            [12] 2126 	mov	(_osal_build_uint32_sloc0_1_0 + 1),a
      00087E EB               [12] 2127 	mov	a,r3
      00087F 35 3C            [12] 2128 	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
      000881 F5 3C            [12] 2129 	mov	(_osal_build_uint32_sloc0_1_0 + 2),a
      000883 EA               [12] 2130 	mov	a,r2
      000884 35 3D            [12] 2131 	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
      000886 F5 3D            [12] 2132 	mov	(_osal_build_uint32_sloc0_1_0 + 3),a
      000888 74 02            [12] 2133 	mov	a,#0x02
      00088A 2D               [12] 2134 	add	a,r5
      00088B F9               [12] 2135 	mov	r1,a
      00088C 74 00            [12] 2136 	mov	a,#0x00
      00088E 3E               [12] 2137 	addc	a,r6
      00088F FB               [12] 2138 	mov	r3,a
      000890 8F 04            [24] 2139 	mov	ar4,r7
      000892 89 82            [24] 2140 	mov	dpl,r1
      000894 8B 83            [24] 2141 	mov	dph,r3
      000896 8C F0            [24] 2142 	mov	b,r4
      000898 12 5B 16         [24] 2143 	lcall	__gptrget
      00089B F9               [12] 2144 	mov	r1,a
      00089C 7C 00            [12] 2145 	mov	r4,#0x00
      00089E 7B 00            [12] 2146 	mov	r3,#0x00
      0008A0 7A 00            [12] 2147 	mov	r2,#0x00
      0008A2 8C 02            [24] 2148 	mov	ar2,r4
      0008A4 89 03            [24] 2149 	mov	ar3,r1
      0008A6 7C 00            [12] 2150 	mov	r4,#0x00
      0008A8 79 00            [12] 2151 	mov	r1,#0x00
      0008AA E9               [12] 2152 	mov	a,r1
      0008AB 25 3A            [12] 2153 	add	a,_osal_build_uint32_sloc0_1_0
      0008AD F9               [12] 2154 	mov	r1,a
      0008AE EC               [12] 2155 	mov	a,r4
      0008AF 35 3B            [12] 2156 	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
      0008B1 FC               [12] 2157 	mov	r4,a
      0008B2 EB               [12] 2158 	mov	a,r3
      0008B3 35 3C            [12] 2159 	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
      0008B5 FB               [12] 2160 	mov	r3,a
      0008B6 EA               [12] 2161 	mov	a,r2
      0008B7 35 3D            [12] 2162 	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
      0008B9 FA               [12] 2163 	mov	r2,a
      0008BA 74 03            [12] 2164 	mov	a,#0x03
      0008BC 2D               [12] 2165 	add	a,r5
      0008BD FD               [12] 2166 	mov	r5,a
      0008BE 74 00            [12] 2167 	mov	a,#0x00
      0008C0 3E               [12] 2168 	addc	a,r6
      0008C1 FE               [12] 2169 	mov	r6,a
      0008C2 8D 82            [24] 2170 	mov	dpl,r5
      0008C4 8E 83            [24] 2171 	mov	dph,r6
      0008C6 8F F0            [24] 2172 	mov	b,r7
      0008C8 12 5B 16         [24] 2173 	lcall	__gptrget
      0008CB FD               [12] 2174 	mov	r5,a
      0008CC 8D 00            [24] 2175 	mov	ar0,r5
      0008CE 7D 00            [12] 2176 	mov	r5,#0x00
      0008D0 7E 00            [12] 2177 	mov	r6,#0x00
      0008D2 7F 00            [12] 2178 	mov	r7,#0x00
      0008D4 88 07            [24] 2179 	mov	ar7,r0
      0008D6 78 00            [12] 2180 	mov	r0,#0x00
      0008D8 7D 00            [12] 2181 	mov	r5,#0x00
      0008DA 7E 00            [12] 2182 	mov	r6,#0x00
      0008DC E8               [12] 2183 	mov	a,r0
      0008DD 29               [12] 2184 	add	a,r1
      0008DE F9               [12] 2185 	mov	r1,a
      0008DF ED               [12] 2186 	mov	a,r5
      0008E0 3C               [12] 2187 	addc	a,r4
      0008E1 FC               [12] 2188 	mov	r4,a
      0008E2 EE               [12] 2189 	mov	a,r6
      0008E3 3B               [12] 2190 	addc	a,r3
      0008E4 FB               [12] 2191 	mov	r3,a
      0008E5 EF               [12] 2192 	mov	a,r7
      0008E6 3A               [12] 2193 	addc	a,r2
      0008E7 FA               [12] 2194 	mov	r2,a
      0008E8 89 82            [24] 2195 	mov	dpl,r1
      0008EA 8C 83            [24] 2196 	mov	dph,r4
      0008EC 8B F0            [24] 2197 	mov	b,r3
      0008EE EA               [12] 2198 	mov	a,r2
      0008EF 02 09 14         [24] 2199 	ljmp	00110$
      0008F2                       2200 00102$:
                                   2201 ;	../osal/common/OSAL.c:311: return ( (uint32)swapped[0] );
      0008F2 90 03 43         [24] 2202 	mov	dptr,#_osal_build_uint32_swapped_1_127
      0008F5 E0               [24] 2203 	movx	a,@dptr
      0008F6 FD               [12] 2204 	mov	r5,a
      0008F7 A3               [24] 2205 	inc	dptr
      0008F8 E0               [24] 2206 	movx	a,@dptr
      0008F9 FE               [12] 2207 	mov	r6,a
      0008FA A3               [24] 2208 	inc	dptr
      0008FB E0               [24] 2209 	movx	a,@dptr
      0008FC FF               [12] 2210 	mov	r7,a
      0008FD 8D 82            [24] 2211 	mov	dpl,r5
      0008FF 8E 83            [24] 2212 	mov	dph,r6
      000901 8F F0            [24] 2213 	mov	b,r7
      000903 12 5B 16         [24] 2214 	lcall	__gptrget
      000906 FD               [12] 2215 	mov	r5,a
      000907 7F 00            [12] 2216 	mov	r7,#0x00
      000909 7E 00            [12] 2217 	mov	r6,#0x00
      00090B 7C 00            [12] 2218 	mov	r4,#0x00
      00090D 8D 82            [24] 2219 	mov	dpl,r5
      00090F 8F 83            [24] 2220 	mov	dph,r7
      000911 8E F0            [24] 2221 	mov	b,r6
      000913 EC               [12] 2222 	mov	a,r4
      000914                       2223 00110$:
      000914 22               [24] 2224 	ret
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
      000915                       2243 __ltoa:
      000915 AF 82            [24] 2244 	mov	r7,dpl
      000917 AE 83            [24] 2245 	mov	r6,dph
      000919 AD F0            [24] 2246 	mov	r5,b
      00091B FC               [12] 2247 	mov	r4,a
      00091C 90 03 4A         [24] 2248 	mov	dptr,#__ltoa_l_1_129
      00091F EF               [12] 2249 	mov	a,r7
      000920 F0               [24] 2250 	movx	@dptr,a
      000921 EE               [12] 2251 	mov	a,r6
      000922 A3               [24] 2252 	inc	dptr
      000923 F0               [24] 2253 	movx	@dptr,a
      000924 ED               [12] 2254 	mov	a,r5
      000925 A3               [24] 2255 	inc	dptr
      000926 F0               [24] 2256 	movx	@dptr,a
      000927 EC               [12] 2257 	mov	a,r4
      000928 A3               [24] 2258 	inc	dptr
      000929 F0               [24] 2259 	movx	@dptr,a
                                   2260 ;	../osal/common/OSAL.c:332: unsigned char tmp1[10] = "", tmp2[10] = "", tmp3[10] = "";
      00092A 90 03 4E         [24] 2261 	mov	dptr,#__ltoa_tmp1_1_130
      00092D 74 00            [12] 2262 	mov	a,#0x00
      00092F F0               [24] 2263 	movx	@dptr,a
      000930 90 03 58         [24] 2264 	mov	dptr,#__ltoa_tmp2_1_130
      000933 F0               [24] 2265 	movx	@dptr,a
      000934 90 03 62         [24] 2266 	mov	dptr,#__ltoa_tmp3_1_130
      000937 F0               [24] 2267 	movx	@dptr,a
                                   2268 ;	../osal/common/OSAL.c:336: buf[0] = '\0';
      000938 90 03 46         [24] 2269 	mov	dptr,#__ltoa_PARM_2
      00093B E0               [24] 2270 	movx	a,@dptr
      00093C FD               [12] 2271 	mov	r5,a
      00093D A3               [24] 2272 	inc	dptr
      00093E E0               [24] 2273 	movx	a,@dptr
      00093F FE               [12] 2274 	mov	r6,a
      000940 A3               [24] 2275 	inc	dptr
      000941 E0               [24] 2276 	movx	a,@dptr
      000942 FF               [12] 2277 	mov	r7,a
      000943 8D 82            [24] 2278 	mov	dpl,r5
      000945 8E 83            [24] 2279 	mov	dph,r6
      000947 8F F0            [24] 2280 	mov	b,r7
      000949 74 00            [12] 2281 	mov	a,#0x00
      00094B 12 59 AA         [24] 2282 	lcall	__gptrput
                                   2283 ;	../osal/common/OSAL.c:338: if ( radix == 10 )
      00094E 90 03 49         [24] 2284 	mov	dptr,#__ltoa_PARM_3
      000951 E0               [24] 2285 	movx	a,@dptr
      000952 FF               [12] 2286 	mov	r7,a
      000953 BF 0A 02         [24] 2287 	cjne	r7,#0x0A,00211$
      000956 80 03            [24] 2288 	sjmp	00212$
      000958                       2289 00211$:
      000958 02 0C A6         [24] 2290 	ljmp	00132$
      00095B                       2291 00212$:
                                   2292 ;	../osal/common/OSAL.c:340: num1 = l % 10000;
      00095B 90 03 4A         [24] 2293 	mov	dptr,#__ltoa_l_1_129
      00095E E0               [24] 2294 	movx	a,@dptr
      00095F FC               [12] 2295 	mov	r4,a
      000960 A3               [24] 2296 	inc	dptr
      000961 E0               [24] 2297 	movx	a,@dptr
      000962 FD               [12] 2298 	mov	r5,a
      000963 A3               [24] 2299 	inc	dptr
      000964 E0               [24] 2300 	movx	a,@dptr
      000965 FE               [12] 2301 	mov	r6,a
      000966 A3               [24] 2302 	inc	dptr
      000967 E0               [24] 2303 	movx	a,@dptr
      000968 FF               [12] 2304 	mov	r7,a
      000969 90 11 F4         [24] 2305 	mov	dptr,#__modulong_PARM_2
      00096C 74 10            [12] 2306 	mov	a,#0x10
      00096E F0               [24] 2307 	movx	@dptr,a
      00096F 74 27            [12] 2308 	mov	a,#0x27
      000971 A3               [24] 2309 	inc	dptr
      000972 F0               [24] 2310 	movx	@dptr,a
      000973 74 00            [12] 2311 	mov	a,#0x00
      000975 A3               [24] 2312 	inc	dptr
      000976 F0               [24] 2313 	movx	@dptr,a
      000977 A3               [24] 2314 	inc	dptr
      000978 F0               [24] 2315 	movx	@dptr,a
      000979 8C 82            [24] 2316 	mov	dpl,r4
      00097B 8D 83            [24] 2317 	mov	dph,r5
      00097D 8E F0            [24] 2318 	mov	b,r6
      00097F EF               [12] 2319 	mov	a,r7
      000980 C0 07            [24] 2320 	push	ar7
      000982 C0 06            [24] 2321 	push	ar6
      000984 C0 05            [24] 2322 	push	ar5
      000986 C0 04            [24] 2323 	push	ar4
      000988 12 54 9E         [24] 2324 	lcall	__modulong
      00098B A8 82            [24] 2325 	mov	r0,dpl
      00098D A9 83            [24] 2326 	mov	r1,dph
      00098F AA F0            [24] 2327 	mov	r2,b
      000991 FB               [12] 2328 	mov	r3,a
      000992 D0 04            [24] 2329 	pop	ar4
      000994 D0 05            [24] 2330 	pop	ar5
      000996 D0 06            [24] 2331 	pop	ar6
      000998 D0 07            [24] 2332 	pop	ar7
      00099A 90 03 6C         [24] 2333 	mov	dptr,#__ltoa_num1_1_130
      00099D E8               [12] 2334 	mov	a,r0
      00099E F0               [24] 2335 	movx	@dptr,a
      00099F E9               [12] 2336 	mov	a,r1
      0009A0 A3               [24] 2337 	inc	dptr
      0009A1 F0               [24] 2338 	movx	@dptr,a
                                   2339 ;	../osal/common/OSAL.c:341: num2 = (l / 10000) % 10000;
      0009A2 90 12 03         [24] 2340 	mov	dptr,#__divulong_PARM_2
      0009A5 74 10            [12] 2341 	mov	a,#0x10
      0009A7 F0               [24] 2342 	movx	@dptr,a
      0009A8 74 27            [12] 2343 	mov	a,#0x27
      0009AA A3               [24] 2344 	inc	dptr
      0009AB F0               [24] 2345 	movx	@dptr,a
      0009AC 74 00            [12] 2346 	mov	a,#0x00
      0009AE A3               [24] 2347 	inc	dptr
      0009AF F0               [24] 2348 	movx	@dptr,a
      0009B0 A3               [24] 2349 	inc	dptr
      0009B1 F0               [24] 2350 	movx	@dptr,a
      0009B2 8C 82            [24] 2351 	mov	dpl,r4
      0009B4 8D 83            [24] 2352 	mov	dph,r5
      0009B6 8E F0            [24] 2353 	mov	b,r6
      0009B8 EF               [12] 2354 	mov	a,r7
      0009B9 C0 07            [24] 2355 	push	ar7
      0009BB C0 06            [24] 2356 	push	ar6
      0009BD C0 05            [24] 2357 	push	ar5
      0009BF C0 04            [24] 2358 	push	ar4
      0009C1 12 56 38         [24] 2359 	lcall	__divulong
      0009C4 A8 82            [24] 2360 	mov	r0,dpl
      0009C6 A9 83            [24] 2361 	mov	r1,dph
      0009C8 AA F0            [24] 2362 	mov	r2,b
      0009CA FB               [12] 2363 	mov	r3,a
      0009CB D0 04            [24] 2364 	pop	ar4
      0009CD D0 05            [24] 2365 	pop	ar5
      0009CF D0 06            [24] 2366 	pop	ar6
      0009D1 D0 07            [24] 2367 	pop	ar7
      0009D3 90 11 F4         [24] 2368 	mov	dptr,#__modulong_PARM_2
      0009D6 74 10            [12] 2369 	mov	a,#0x10
      0009D8 F0               [24] 2370 	movx	@dptr,a
      0009D9 74 27            [12] 2371 	mov	a,#0x27
      0009DB A3               [24] 2372 	inc	dptr
      0009DC F0               [24] 2373 	movx	@dptr,a
      0009DD 74 00            [12] 2374 	mov	a,#0x00
      0009DF A3               [24] 2375 	inc	dptr
      0009E0 F0               [24] 2376 	movx	@dptr,a
      0009E1 A3               [24] 2377 	inc	dptr
      0009E2 F0               [24] 2378 	movx	@dptr,a
      0009E3 88 82            [24] 2379 	mov	dpl,r0
      0009E5 89 83            [24] 2380 	mov	dph,r1
      0009E7 8A F0            [24] 2381 	mov	b,r2
      0009E9 EB               [12] 2382 	mov	a,r3
      0009EA C0 07            [24] 2383 	push	ar7
      0009EC C0 06            [24] 2384 	push	ar6
      0009EE C0 05            [24] 2385 	push	ar5
      0009F0 C0 04            [24] 2386 	push	ar4
      0009F2 12 54 9E         [24] 2387 	lcall	__modulong
      0009F5 A8 82            [24] 2388 	mov	r0,dpl
      0009F7 A9 83            [24] 2389 	mov	r1,dph
      0009F9 AA F0            [24] 2390 	mov	r2,b
      0009FB FB               [12] 2391 	mov	r3,a
      0009FC D0 04            [24] 2392 	pop	ar4
      0009FE D0 05            [24] 2393 	pop	ar5
      000A00 D0 06            [24] 2394 	pop	ar6
      000A02 D0 07            [24] 2395 	pop	ar7
      000A04 90 03 6E         [24] 2396 	mov	dptr,#__ltoa_num2_1_130
      000A07 E8               [12] 2397 	mov	a,r0
      000A08 F0               [24] 2398 	movx	@dptr,a
      000A09 E9               [12] 2399 	mov	a,r1
      000A0A A3               [24] 2400 	inc	dptr
      000A0B F0               [24] 2401 	movx	@dptr,a
                                   2402 ;	../osal/common/OSAL.c:342: num3 = (unsigned short)(l / 100000000);
      000A0C 90 12 03         [24] 2403 	mov	dptr,#__divulong_PARM_2
      000A0F 74 00            [12] 2404 	mov	a,#0x00
      000A11 F0               [24] 2405 	movx	@dptr,a
      000A12 74 E1            [12] 2406 	mov	a,#0xE1
      000A14 A3               [24] 2407 	inc	dptr
      000A15 F0               [24] 2408 	movx	@dptr,a
      000A16 74 F5            [12] 2409 	mov	a,#0xF5
      000A18 A3               [24] 2410 	inc	dptr
      000A19 F0               [24] 2411 	movx	@dptr,a
      000A1A 74 05            [12] 2412 	mov	a,#0x05
      000A1C A3               [24] 2413 	inc	dptr
      000A1D F0               [24] 2414 	movx	@dptr,a
      000A1E 8C 82            [24] 2415 	mov	dpl,r4
      000A20 8D 83            [24] 2416 	mov	dph,r5
      000A22 8E F0            [24] 2417 	mov	b,r6
      000A24 EF               [12] 2418 	mov	a,r7
      000A25 12 56 38         [24] 2419 	lcall	__divulong
      000A28 AC 82            [24] 2420 	mov	r4,dpl
      000A2A AD 83            [24] 2421 	mov	r5,dph
      000A2C AE F0            [24] 2422 	mov	r6,b
      000A2E FF               [12] 2423 	mov	r7,a
      000A2F 90 03 70         [24] 2424 	mov	dptr,#__ltoa_num3_1_130
      000A32 EC               [12] 2425 	mov	a,r4
      000A33 F0               [24] 2426 	movx	@dptr,a
      000A34 ED               [12] 2427 	mov	a,r5
      000A35 A3               [24] 2428 	inc	dptr
      000A36 F0               [24] 2429 	movx	@dptr,a
                                   2430 ;	../osal/common/OSAL.c:344: if (num3) _itoa(num3, tmp3, 10);
      000A37 EC               [12] 2431 	mov	a,r4
      000A38 4D               [12] 2432 	orl	a,r5
      000A39 70 03            [24] 2433 	jnz	00213$
      000A3B 02 0A 61         [24] 2434 	ljmp	00102$
      000A3E                       2435 00213$:
      000A3E 90 03 70         [24] 2436 	mov	dptr,#__ltoa_num3_1_130
      000A41 E0               [24] 2437 	movx	a,@dptr
      000A42 FE               [12] 2438 	mov	r6,a
      000A43 A3               [24] 2439 	inc	dptr
      000A44 E0               [24] 2440 	movx	a,@dptr
      000A45 FF               [12] 2441 	mov	r7,a
      000A46 90 12 19         [24] 2442 	mov	dptr,#__itoa_PARM_2
      000A49 74 62            [12] 2443 	mov	a,#__ltoa_tmp3_1_130
      000A4B F0               [24] 2444 	movx	@dptr,a
      000A4C 74 03            [12] 2445 	mov	a,#(__ltoa_tmp3_1_130 >> 8)
      000A4E A3               [24] 2446 	inc	dptr
      000A4F F0               [24] 2447 	movx	@dptr,a
      000A50 74 00            [12] 2448 	mov	a,#0x00
      000A52 A3               [24] 2449 	inc	dptr
      000A53 F0               [24] 2450 	movx	@dptr,a
      000A54 90 12 1C         [24] 2451 	mov	dptr,#__itoa_PARM_3
      000A57 74 0A            [12] 2452 	mov	a,#0x0A
      000A59 F0               [24] 2453 	movx	@dptr,a
      000A5A 8E 82            [24] 2454 	mov	dpl,r6
      000A5C 8F 83            [24] 2455 	mov	dph,r7
      000A5E 12 58 C0         [24] 2456 	lcall	__itoa
      000A61                       2457 00102$:
                                   2458 ;	../osal/common/OSAL.c:345: if (num2) _itoa(num2, tmp2, 10);
      000A61 90 03 6E         [24] 2459 	mov	dptr,#__ltoa_num2_1_130
      000A64 E0               [24] 2460 	movx	a,@dptr
      000A65 FE               [12] 2461 	mov	r6,a
      000A66 A3               [24] 2462 	inc	dptr
      000A67 E0               [24] 2463 	movx	a,@dptr
      000A68 FF               [12] 2464 	mov	r7,a
      000A69 EE               [12] 2465 	mov	a,r6
      000A6A 4F               [12] 2466 	orl	a,r7
      000A6B 70 03            [24] 2467 	jnz	00214$
      000A6D 02 0A 93         [24] 2468 	ljmp	00104$
      000A70                       2469 00214$:
      000A70 90 03 6E         [24] 2470 	mov	dptr,#__ltoa_num2_1_130
      000A73 E0               [24] 2471 	movx	a,@dptr
      000A74 FE               [12] 2472 	mov	r6,a
      000A75 A3               [24] 2473 	inc	dptr
      000A76 E0               [24] 2474 	movx	a,@dptr
      000A77 FF               [12] 2475 	mov	r7,a
      000A78 90 12 19         [24] 2476 	mov	dptr,#__itoa_PARM_2
      000A7B 74 58            [12] 2477 	mov	a,#__ltoa_tmp2_1_130
      000A7D F0               [24] 2478 	movx	@dptr,a
      000A7E 74 03            [12] 2479 	mov	a,#(__ltoa_tmp2_1_130 >> 8)
      000A80 A3               [24] 2480 	inc	dptr
      000A81 F0               [24] 2481 	movx	@dptr,a
      000A82 74 00            [12] 2482 	mov	a,#0x00
      000A84 A3               [24] 2483 	inc	dptr
      000A85 F0               [24] 2484 	movx	@dptr,a
      000A86 90 12 1C         [24] 2485 	mov	dptr,#__itoa_PARM_3
      000A89 74 0A            [12] 2486 	mov	a,#0x0A
      000A8B F0               [24] 2487 	movx	@dptr,a
      000A8C 8E 82            [24] 2488 	mov	dpl,r6
      000A8E 8F 83            [24] 2489 	mov	dph,r7
      000A90 12 58 C0         [24] 2490 	lcall	__itoa
      000A93                       2491 00104$:
                                   2492 ;	../osal/common/OSAL.c:346: if (num1) _itoa(num1, tmp1, 10);
      000A93 90 03 6C         [24] 2493 	mov	dptr,#__ltoa_num1_1_130
      000A96 E0               [24] 2494 	movx	a,@dptr
      000A97 FE               [12] 2495 	mov	r6,a
      000A98 A3               [24] 2496 	inc	dptr
      000A99 E0               [24] 2497 	movx	a,@dptr
      000A9A FF               [12] 2498 	mov	r7,a
      000A9B EE               [12] 2499 	mov	a,r6
      000A9C 4F               [12] 2500 	orl	a,r7
      000A9D 70 03            [24] 2501 	jnz	00215$
      000A9F 02 0A C5         [24] 2502 	ljmp	00106$
      000AA2                       2503 00215$:
      000AA2 90 03 6C         [24] 2504 	mov	dptr,#__ltoa_num1_1_130
      000AA5 E0               [24] 2505 	movx	a,@dptr
      000AA6 FE               [12] 2506 	mov	r6,a
      000AA7 A3               [24] 2507 	inc	dptr
      000AA8 E0               [24] 2508 	movx	a,@dptr
      000AA9 FF               [12] 2509 	mov	r7,a
      000AAA 90 12 19         [24] 2510 	mov	dptr,#__itoa_PARM_2
      000AAD 74 4E            [12] 2511 	mov	a,#__ltoa_tmp1_1_130
      000AAF F0               [24] 2512 	movx	@dptr,a
      000AB0 74 03            [12] 2513 	mov	a,#(__ltoa_tmp1_1_130 >> 8)
      000AB2 A3               [24] 2514 	inc	dptr
      000AB3 F0               [24] 2515 	movx	@dptr,a
      000AB4 74 00            [12] 2516 	mov	a,#0x00
      000AB6 A3               [24] 2517 	inc	dptr
      000AB7 F0               [24] 2518 	movx	@dptr,a
      000AB8 90 12 1C         [24] 2519 	mov	dptr,#__itoa_PARM_3
      000ABB 74 0A            [12] 2520 	mov	a,#0x0A
      000ABD F0               [24] 2521 	movx	@dptr,a
      000ABE 8E 82            [24] 2522 	mov	dpl,r6
      000AC0 8F 83            [24] 2523 	mov	dph,r7
      000AC2 12 58 C0         [24] 2524 	lcall	__itoa
      000AC5                       2525 00106$:
                                   2526 ;	../osal/common/OSAL.c:348: if (num3)
      000AC5 90 03 70         [24] 2527 	mov	dptr,#__ltoa_num3_1_130
      000AC8 E0               [24] 2528 	movx	a,@dptr
      000AC9 FE               [12] 2529 	mov	r6,a
      000ACA A3               [24] 2530 	inc	dptr
      000ACB E0               [24] 2531 	movx	a,@dptr
      000ACC FF               [12] 2532 	mov	r7,a
      000ACD EE               [12] 2533 	mov	a,r6
      000ACE 4F               [12] 2534 	orl	a,r7
      000ACF 70 03            [24] 2535 	jnz	00216$
      000AD1 02 0B 74         [24] 2536 	ljmp	00109$
      000AD4                       2537 00216$:
                                   2538 ;	../osal/common/OSAL.c:350: strcpy((char*)buf, (char const*)tmp3);
      000AD4 90 03 46         [24] 2539 	mov	dptr,#__ltoa_PARM_2
      000AD7 E0               [24] 2540 	movx	a,@dptr
      000AD8 FD               [12] 2541 	mov	r5,a
      000AD9 A3               [24] 2542 	inc	dptr
      000ADA E0               [24] 2543 	movx	a,@dptr
      000ADB FE               [12] 2544 	mov	r6,a
      000ADC A3               [24] 2545 	inc	dptr
      000ADD E0               [24] 2546 	movx	a,@dptr
      000ADE FF               [12] 2547 	mov	r7,a
      000ADF 90 11 FD         [24] 2548 	mov	dptr,#_strcpy_PARM_2
      000AE2 74 62            [12] 2549 	mov	a,#__ltoa_tmp3_1_130
      000AE4 F0               [24] 2550 	movx	@dptr,a
      000AE5 74 03            [12] 2551 	mov	a,#(__ltoa_tmp3_1_130 >> 8)
      000AE7 A3               [24] 2552 	inc	dptr
      000AE8 F0               [24] 2553 	movx	@dptr,a
      000AE9 74 00            [12] 2554 	mov	a,#0x00
      000AEB A3               [24] 2555 	inc	dptr
      000AEC F0               [24] 2556 	movx	@dptr,a
      000AED 8D 82            [24] 2557 	mov	dpl,r5
      000AEF 8E 83            [24] 2558 	mov	dph,r6
      000AF1 8F F0            [24] 2559 	mov	b,r7
      000AF3 12 55 DF         [24] 2560 	lcall	_strcpy
                                   2561 ;	../osal/common/OSAL.c:351: for (i = 0; i < 4 - strlen((char const*)tmp2); i++)
      000AF6 90 03 72         [24] 2562 	mov	dptr,#__ltoa_i_1_130
      000AF9 74 00            [12] 2563 	mov	a,#0x00
      000AFB F0               [24] 2564 	movx	@dptr,a
      000AFC 90 03 46         [24] 2565 	mov	dptr,#__ltoa_PARM_2
      000AFF E0               [24] 2566 	movx	a,@dptr
      000B00 FD               [12] 2567 	mov	r5,a
      000B01 A3               [24] 2568 	inc	dptr
      000B02 E0               [24] 2569 	movx	a,@dptr
      000B03 FE               [12] 2570 	mov	r6,a
      000B04 A3               [24] 2571 	inc	dptr
      000B05 E0               [24] 2572 	movx	a,@dptr
      000B06 FF               [12] 2573 	mov	r7,a
      000B07 90 03 72         [24] 2574 	mov	dptr,#__ltoa_i_1_130
      000B0A E0               [24] 2575 	movx	a,@dptr
      000B0B FC               [12] 2576 	mov	r4,a
      000B0C                       2577 00135$:
      000B0C 75 82 58         [24] 2578 	mov	dpl,#__ltoa_tmp2_1_130
      000B0F 75 83 03         [24] 2579 	mov	dph,#(__ltoa_tmp2_1_130 >> 8)
      000B12 75 F0 00         [24] 2580 	mov	b,#0x00
      000B15 C0 07            [24] 2581 	push	ar7
      000B17 C0 06            [24] 2582 	push	ar6
      000B19 C0 05            [24] 2583 	push	ar5
      000B1B C0 04            [24] 2584 	push	ar4
      000B1D 12 5A FE         [24] 2585 	lcall	_strlen
      000B20 AA 82            [24] 2586 	mov	r2,dpl
      000B22 AB 83            [24] 2587 	mov	r3,dph
      000B24 D0 04            [24] 2588 	pop	ar4
      000B26 D0 05            [24] 2589 	pop	ar5
      000B28 D0 06            [24] 2590 	pop	ar6
      000B2A D0 07            [24] 2591 	pop	ar7
      000B2C 74 04            [12] 2592 	mov	a,#0x04
      000B2E C3               [12] 2593 	clr	c
      000B2F 9A               [12] 2594 	subb	a,r2
      000B30 FA               [12] 2595 	mov	r2,a
      000B31 74 00            [12] 2596 	mov	a,#0x00
      000B33 9B               [12] 2597 	subb	a,r3
      000B34 FB               [12] 2598 	mov	r3,a
      000B35 8C 00            [24] 2599 	mov	ar0,r4
      000B37 79 00            [12] 2600 	mov	r1,#0x00
      000B39 C3               [12] 2601 	clr	c
      000B3A E8               [12] 2602 	mov	a,r0
      000B3B 9A               [12] 2603 	subb	a,r2
      000B3C E9               [12] 2604 	mov	a,r1
      000B3D 9B               [12] 2605 	subb	a,r3
      000B3E 40 03            [24] 2606 	jc	00217$
      000B40 02 0B 74         [24] 2607 	ljmp	00109$
      000B43                       2608 00217$:
                                   2609 ;	../osal/common/OSAL.c:352: strcat((char*)buf, "0");
      000B43 8D 01            [24] 2610 	mov	ar1,r5
      000B45 8E 02            [24] 2611 	mov	ar2,r6
      000B47 8F 03            [24] 2612 	mov	ar3,r7
      000B49 90 12 1F         [24] 2613 	mov	dptr,#_strcat_PARM_2
      000B4C 74 36            [12] 2614 	mov	a,#___str_3
      000B4E F0               [24] 2615 	movx	@dptr,a
      000B4F 74 5B            [12] 2616 	mov	a,#(___str_3 >> 8)
      000B51 A3               [24] 2617 	inc	dptr
      000B52 F0               [24] 2618 	movx	@dptr,a
      000B53 74 80            [12] 2619 	mov	a,#0x80
      000B55 A3               [24] 2620 	inc	dptr
      000B56 F0               [24] 2621 	movx	@dptr,a
      000B57 89 82            [24] 2622 	mov	dpl,r1
      000B59 8A 83            [24] 2623 	mov	dph,r2
      000B5B 8B F0            [24] 2624 	mov	b,r3
      000B5D C0 07            [24] 2625 	push	ar7
      000B5F C0 06            [24] 2626 	push	ar6
      000B61 C0 05            [24] 2627 	push	ar5
      000B63 C0 04            [24] 2628 	push	ar4
      000B65 12 59 3C         [24] 2629 	lcall	_strcat
      000B68 D0 04            [24] 2630 	pop	ar4
      000B6A D0 05            [24] 2631 	pop	ar5
      000B6C D0 06            [24] 2632 	pop	ar6
      000B6E D0 07            [24] 2633 	pop	ar7
                                   2634 ;	../osal/common/OSAL.c:351: for (i = 0; i < 4 - strlen((char const*)tmp2); i++)
      000B70 0C               [12] 2635 	inc	r4
      000B71 02 0B 0C         [24] 2636 	ljmp	00135$
      000B74                       2637 00109$:
                                   2638 ;	../osal/common/OSAL.c:354: strcat((char*)buf, (char const*)tmp2);
      000B74 90 03 46         [24] 2639 	mov	dptr,#__ltoa_PARM_2
      000B77 E0               [24] 2640 	movx	a,@dptr
      000B78 FD               [12] 2641 	mov	r5,a
      000B79 A3               [24] 2642 	inc	dptr
      000B7A E0               [24] 2643 	movx	a,@dptr
      000B7B FE               [12] 2644 	mov	r6,a
      000B7C A3               [24] 2645 	inc	dptr
      000B7D E0               [24] 2646 	movx	a,@dptr
      000B7E FF               [12] 2647 	mov	r7,a
      000B7F 90 12 1F         [24] 2648 	mov	dptr,#_strcat_PARM_2
      000B82 74 58            [12] 2649 	mov	a,#__ltoa_tmp2_1_130
      000B84 F0               [24] 2650 	movx	@dptr,a
      000B85 74 03            [12] 2651 	mov	a,#(__ltoa_tmp2_1_130 >> 8)
      000B87 A3               [24] 2652 	inc	dptr
      000B88 F0               [24] 2653 	movx	@dptr,a
      000B89 74 00            [12] 2654 	mov	a,#0x00
      000B8B A3               [24] 2655 	inc	dptr
      000B8C F0               [24] 2656 	movx	@dptr,a
      000B8D 8D 82            [24] 2657 	mov	dpl,r5
      000B8F 8E 83            [24] 2658 	mov	dph,r6
      000B91 8F F0            [24] 2659 	mov	b,r7
      000B93 12 59 3C         [24] 2660 	lcall	_strcat
                                   2661 ;	../osal/common/OSAL.c:355: if (num3 || num2)
      000B96 90 03 70         [24] 2662 	mov	dptr,#__ltoa_num3_1_130
      000B99 E0               [24] 2663 	movx	a,@dptr
      000B9A FE               [12] 2664 	mov	r6,a
      000B9B A3               [24] 2665 	inc	dptr
      000B9C E0               [24] 2666 	movx	a,@dptr
      000B9D FF               [12] 2667 	mov	r7,a
      000B9E EE               [12] 2668 	mov	a,r6
      000B9F 4F               [12] 2669 	orl	a,r7
      000BA0 60 03            [24] 2670 	jz	00218$
      000BA2 02 0B B4         [24] 2671 	ljmp	00111$
      000BA5                       2672 00218$:
      000BA5 90 03 6E         [24] 2673 	mov	dptr,#__ltoa_num2_1_130
      000BA8 E0               [24] 2674 	movx	a,@dptr
      000BA9 FE               [12] 2675 	mov	r6,a
      000BAA A3               [24] 2676 	inc	dptr
      000BAB E0               [24] 2677 	movx	a,@dptr
      000BAC FF               [12] 2678 	mov	r7,a
      000BAD EE               [12] 2679 	mov	a,r6
      000BAE 4F               [12] 2680 	orl	a,r7
      000BAF 70 03            [24] 2681 	jnz	00219$
      000BB1 02 0C 32         [24] 2682 	ljmp	00112$
      000BB4                       2683 00219$:
      000BB4                       2684 00111$:
                                   2685 ;	../osal/common/OSAL.c:357: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
      000BB4 90 03 72         [24] 2686 	mov	dptr,#__ltoa_i_1_130
      000BB7 74 00            [12] 2687 	mov	a,#0x00
      000BB9 F0               [24] 2688 	movx	@dptr,a
      000BBA 90 03 46         [24] 2689 	mov	dptr,#__ltoa_PARM_2
      000BBD E0               [24] 2690 	movx	a,@dptr
      000BBE FD               [12] 2691 	mov	r5,a
      000BBF A3               [24] 2692 	inc	dptr
      000BC0 E0               [24] 2693 	movx	a,@dptr
      000BC1 FE               [12] 2694 	mov	r6,a
      000BC2 A3               [24] 2695 	inc	dptr
      000BC3 E0               [24] 2696 	movx	a,@dptr
      000BC4 FF               [12] 2697 	mov	r7,a
      000BC5 90 03 72         [24] 2698 	mov	dptr,#__ltoa_i_1_130
      000BC8 E0               [24] 2699 	movx	a,@dptr
      000BC9 FC               [12] 2700 	mov	r4,a
      000BCA                       2701 00138$:
      000BCA 75 82 4E         [24] 2702 	mov	dpl,#__ltoa_tmp1_1_130
      000BCD 75 83 03         [24] 2703 	mov	dph,#(__ltoa_tmp1_1_130 >> 8)
      000BD0 75 F0 00         [24] 2704 	mov	b,#0x00
      000BD3 C0 07            [24] 2705 	push	ar7
      000BD5 C0 06            [24] 2706 	push	ar6
      000BD7 C0 05            [24] 2707 	push	ar5
      000BD9 C0 04            [24] 2708 	push	ar4
      000BDB 12 5A FE         [24] 2709 	lcall	_strlen
      000BDE AA 82            [24] 2710 	mov	r2,dpl
      000BE0 AB 83            [24] 2711 	mov	r3,dph
      000BE2 D0 04            [24] 2712 	pop	ar4
      000BE4 D0 05            [24] 2713 	pop	ar5
      000BE6 D0 06            [24] 2714 	pop	ar6
      000BE8 D0 07            [24] 2715 	pop	ar7
      000BEA 74 04            [12] 2716 	mov	a,#0x04
      000BEC C3               [12] 2717 	clr	c
      000BED 9A               [12] 2718 	subb	a,r2
      000BEE FA               [12] 2719 	mov	r2,a
      000BEF 74 00            [12] 2720 	mov	a,#0x00
      000BF1 9B               [12] 2721 	subb	a,r3
      000BF2 FB               [12] 2722 	mov	r3,a
      000BF3 8C 00            [24] 2723 	mov	ar0,r4
      000BF5 79 00            [12] 2724 	mov	r1,#0x00
      000BF7 C3               [12] 2725 	clr	c
      000BF8 E8               [12] 2726 	mov	a,r0
      000BF9 9A               [12] 2727 	subb	a,r2
      000BFA E9               [12] 2728 	mov	a,r1
      000BFB 9B               [12] 2729 	subb	a,r3
      000BFC 40 03            [24] 2730 	jc	00220$
      000BFE 02 0C 32         [24] 2731 	ljmp	00112$
      000C01                       2732 00220$:
                                   2733 ;	../osal/common/OSAL.c:358: strcat((char*)buf, "0");
      000C01 8D 01            [24] 2734 	mov	ar1,r5
      000C03 8E 02            [24] 2735 	mov	ar2,r6
      000C05 8F 03            [24] 2736 	mov	ar3,r7
      000C07 90 12 1F         [24] 2737 	mov	dptr,#_strcat_PARM_2
      000C0A 74 36            [12] 2738 	mov	a,#___str_3
      000C0C F0               [24] 2739 	movx	@dptr,a
      000C0D 74 5B            [12] 2740 	mov	a,#(___str_3 >> 8)
      000C0F A3               [24] 2741 	inc	dptr
      000C10 F0               [24] 2742 	movx	@dptr,a
      000C11 74 80            [12] 2743 	mov	a,#0x80
      000C13 A3               [24] 2744 	inc	dptr
      000C14 F0               [24] 2745 	movx	@dptr,a
      000C15 89 82            [24] 2746 	mov	dpl,r1
      000C17 8A 83            [24] 2747 	mov	dph,r2
      000C19 8B F0            [24] 2748 	mov	b,r3
      000C1B C0 07            [24] 2749 	push	ar7
      000C1D C0 06            [24] 2750 	push	ar6
      000C1F C0 05            [24] 2751 	push	ar5
      000C21 C0 04            [24] 2752 	push	ar4
      000C23 12 59 3C         [24] 2753 	lcall	_strcat
      000C26 D0 04            [24] 2754 	pop	ar4
      000C28 D0 05            [24] 2755 	pop	ar5
      000C2A D0 06            [24] 2756 	pop	ar6
      000C2C D0 07            [24] 2757 	pop	ar7
                                   2758 ;	../osal/common/OSAL.c:357: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
      000C2E 0C               [12] 2759 	inc	r4
      000C2F 02 0B CA         [24] 2760 	ljmp	00138$
      000C32                       2761 00112$:
                                   2762 ;	../osal/common/OSAL.c:360: strcat((char*)buf, (char const*)tmp1);
      000C32 90 03 46         [24] 2763 	mov	dptr,#__ltoa_PARM_2
      000C35 E0               [24] 2764 	movx	a,@dptr
      000C36 FD               [12] 2765 	mov	r5,a
      000C37 A3               [24] 2766 	inc	dptr
      000C38 E0               [24] 2767 	movx	a,@dptr
      000C39 FE               [12] 2768 	mov	r6,a
      000C3A A3               [24] 2769 	inc	dptr
      000C3B E0               [24] 2770 	movx	a,@dptr
      000C3C FF               [12] 2771 	mov	r7,a
      000C3D 90 12 1F         [24] 2772 	mov	dptr,#_strcat_PARM_2
      000C40 74 4E            [12] 2773 	mov	a,#__ltoa_tmp1_1_130
      000C42 F0               [24] 2774 	movx	@dptr,a
      000C43 74 03            [12] 2775 	mov	a,#(__ltoa_tmp1_1_130 >> 8)
      000C45 A3               [24] 2776 	inc	dptr
      000C46 F0               [24] 2777 	movx	@dptr,a
      000C47 74 00            [12] 2778 	mov	a,#0x00
      000C49 A3               [24] 2779 	inc	dptr
      000C4A F0               [24] 2780 	movx	@dptr,a
      000C4B 8D 82            [24] 2781 	mov	dpl,r5
      000C4D 8E 83            [24] 2782 	mov	dph,r6
      000C4F 8F F0            [24] 2783 	mov	b,r7
      000C51 12 59 3C         [24] 2784 	lcall	_strcat
                                   2785 ;	../osal/common/OSAL.c:361: if (!num3 && !num2 && !num1)
      000C54 90 03 70         [24] 2786 	mov	dptr,#__ltoa_num3_1_130
      000C57 E0               [24] 2787 	movx	a,@dptr
      000C58 FE               [12] 2788 	mov	r6,a
      000C59 A3               [24] 2789 	inc	dptr
      000C5A E0               [24] 2790 	movx	a,@dptr
      000C5B FF               [12] 2791 	mov	r7,a
      000C5C EE               [12] 2792 	mov	a,r6
      000C5D 4F               [12] 2793 	orl	a,r7
      000C5E 60 03            [24] 2794 	jz	00221$
      000C60 02 0E 59         [24] 2795 	ljmp	00133$
      000C63                       2796 00221$:
      000C63 90 03 6E         [24] 2797 	mov	dptr,#__ltoa_num2_1_130
      000C66 E0               [24] 2798 	movx	a,@dptr
      000C67 FE               [12] 2799 	mov	r6,a
      000C68 A3               [24] 2800 	inc	dptr
      000C69 E0               [24] 2801 	movx	a,@dptr
      000C6A FF               [12] 2802 	mov	r7,a
      000C6B EE               [12] 2803 	mov	a,r6
      000C6C 4F               [12] 2804 	orl	a,r7
      000C6D 60 03            [24] 2805 	jz	00222$
      000C6F 02 0E 59         [24] 2806 	ljmp	00133$
      000C72                       2807 00222$:
      000C72 90 03 6C         [24] 2808 	mov	dptr,#__ltoa_num1_1_130
      000C75 E0               [24] 2809 	movx	a,@dptr
      000C76 FE               [12] 2810 	mov	r6,a
      000C77 A3               [24] 2811 	inc	dptr
      000C78 E0               [24] 2812 	movx	a,@dptr
      000C79 FF               [12] 2813 	mov	r7,a
      000C7A EE               [12] 2814 	mov	a,r6
      000C7B 4F               [12] 2815 	orl	a,r7
      000C7C 60 03            [24] 2816 	jz	00223$
      000C7E 02 0E 59         [24] 2817 	ljmp	00133$
      000C81                       2818 00223$:
                                   2819 ;	../osal/common/OSAL.c:362: strcpy((char*)buf, "0");
      000C81 90 03 46         [24] 2820 	mov	dptr,#__ltoa_PARM_2
      000C84 E0               [24] 2821 	movx	a,@dptr
      000C85 FD               [12] 2822 	mov	r5,a
      000C86 A3               [24] 2823 	inc	dptr
      000C87 E0               [24] 2824 	movx	a,@dptr
      000C88 FE               [12] 2825 	mov	r6,a
      000C89 A3               [24] 2826 	inc	dptr
      000C8A E0               [24] 2827 	movx	a,@dptr
      000C8B FF               [12] 2828 	mov	r7,a
      000C8C 90 11 FD         [24] 2829 	mov	dptr,#_strcpy_PARM_2
      000C8F 74 36            [12] 2830 	mov	a,#___str_3
      000C91 F0               [24] 2831 	movx	@dptr,a
      000C92 74 5B            [12] 2832 	mov	a,#(___str_3 >> 8)
      000C94 A3               [24] 2833 	inc	dptr
      000C95 F0               [24] 2834 	movx	@dptr,a
      000C96 74 80            [12] 2835 	mov	a,#0x80
      000C98 A3               [24] 2836 	inc	dptr
      000C99 F0               [24] 2837 	movx	@dptr,a
      000C9A 8D 82            [24] 2838 	mov	dpl,r5
      000C9C 8E 83            [24] 2839 	mov	dph,r6
      000C9E 8F F0            [24] 2840 	mov	b,r7
      000CA0 12 55 DF         [24] 2841 	lcall	_strcpy
      000CA3 02 0E 59         [24] 2842 	ljmp	00133$
      000CA6                       2843 00132$:
                                   2844 ;	../osal/common/OSAL.c:364: else if ( radix == 16 )
      000CA6 90 03 49         [24] 2845 	mov	dptr,#__ltoa_PARM_3
      000CA9 E0               [24] 2846 	movx	a,@dptr
      000CAA FF               [12] 2847 	mov	r7,a
      000CAB BF 10 02         [24] 2848 	cjne	r7,#0x10,00224$
      000CAE 80 03            [24] 2849 	sjmp	00225$
      000CB0                       2850 00224$:
      000CB0 02 0E 4D         [24] 2851 	ljmp	00129$
      000CB3                       2852 00225$:
                                   2853 ;	../osal/common/OSAL.c:366: num1 = l & 0x0000FFFF;
      000CB3 90 03 4A         [24] 2854 	mov	dptr,#__ltoa_l_1_129
      000CB6 E0               [24] 2855 	movx	a,@dptr
      000CB7 FC               [12] 2856 	mov	r4,a
      000CB8 A3               [24] 2857 	inc	dptr
      000CB9 E0               [24] 2858 	movx	a,@dptr
      000CBA FD               [12] 2859 	mov	r5,a
      000CBB A3               [24] 2860 	inc	dptr
      000CBC E0               [24] 2861 	movx	a,@dptr
      000CBD FE               [12] 2862 	mov	r6,a
      000CBE A3               [24] 2863 	inc	dptr
      000CBF E0               [24] 2864 	movx	a,@dptr
      000CC0 FF               [12] 2865 	mov	r7,a
      000CC1 8C 00            [24] 2866 	mov	ar0,r4
      000CC3 8D 01            [24] 2867 	mov	ar1,r5
      000CC5 7A 00            [12] 2868 	mov	r2,#0x00
      000CC7 7B 00            [12] 2869 	mov	r3,#0x00
      000CC9 90 03 6C         [24] 2870 	mov	dptr,#__ltoa_num1_1_130
      000CCC E8               [12] 2871 	mov	a,r0
      000CCD F0               [24] 2872 	movx	@dptr,a
      000CCE E9               [12] 2873 	mov	a,r1
      000CCF A3               [24] 2874 	inc	dptr
      000CD0 F0               [24] 2875 	movx	@dptr,a
                                   2876 ;	../osal/common/OSAL.c:367: num2 = l >> 16;
      000CD1 8E 04            [24] 2877 	mov	ar4,r6
      000CD3 8F 05            [24] 2878 	mov	ar5,r7
      000CD5 90 03 6E         [24] 2879 	mov	dptr,#__ltoa_num2_1_130
      000CD8 EC               [12] 2880 	mov	a,r4
      000CD9 F0               [24] 2881 	movx	@dptr,a
      000CDA ED               [12] 2882 	mov	a,r5
      000CDB A3               [24] 2883 	inc	dptr
      000CDC F0               [24] 2884 	movx	@dptr,a
                                   2885 ;	../osal/common/OSAL.c:369: if (num2) _itoa(num2, tmp2, 16);
      000CDD EC               [12] 2886 	mov	a,r4
      000CDE 4D               [12] 2887 	orl	a,r5
      000CDF 70 03            [24] 2888 	jnz	00226$
      000CE1 02 0D 07         [24] 2889 	ljmp	00119$
      000CE4                       2890 00226$:
      000CE4 90 03 6E         [24] 2891 	mov	dptr,#__ltoa_num2_1_130
      000CE7 E0               [24] 2892 	movx	a,@dptr
      000CE8 FE               [12] 2893 	mov	r6,a
      000CE9 A3               [24] 2894 	inc	dptr
      000CEA E0               [24] 2895 	movx	a,@dptr
      000CEB FF               [12] 2896 	mov	r7,a
      000CEC 90 12 19         [24] 2897 	mov	dptr,#__itoa_PARM_2
      000CEF 74 58            [12] 2898 	mov	a,#__ltoa_tmp2_1_130
      000CF1 F0               [24] 2899 	movx	@dptr,a
      000CF2 74 03            [12] 2900 	mov	a,#(__ltoa_tmp2_1_130 >> 8)
      000CF4 A3               [24] 2901 	inc	dptr
      000CF5 F0               [24] 2902 	movx	@dptr,a
      000CF6 74 00            [12] 2903 	mov	a,#0x00
      000CF8 A3               [24] 2904 	inc	dptr
      000CF9 F0               [24] 2905 	movx	@dptr,a
      000CFA 90 12 1C         [24] 2906 	mov	dptr,#__itoa_PARM_3
      000CFD 74 10            [12] 2907 	mov	a,#0x10
      000CFF F0               [24] 2908 	movx	@dptr,a
      000D00 8E 82            [24] 2909 	mov	dpl,r6
      000D02 8F 83            [24] 2910 	mov	dph,r7
      000D04 12 58 C0         [24] 2911 	lcall	__itoa
      000D07                       2912 00119$:
                                   2913 ;	../osal/common/OSAL.c:370: if (num1) _itoa(num1, tmp1, 16);
      000D07 90 03 6C         [24] 2914 	mov	dptr,#__ltoa_num1_1_130
      000D0A E0               [24] 2915 	movx	a,@dptr
      000D0B FE               [12] 2916 	mov	r6,a
      000D0C A3               [24] 2917 	inc	dptr
      000D0D E0               [24] 2918 	movx	a,@dptr
      000D0E FF               [12] 2919 	mov	r7,a
      000D0F EE               [12] 2920 	mov	a,r6
      000D10 4F               [12] 2921 	orl	a,r7
      000D11 70 03            [24] 2922 	jnz	00227$
      000D13 02 0D 39         [24] 2923 	ljmp	00121$
      000D16                       2924 00227$:
      000D16 90 03 6C         [24] 2925 	mov	dptr,#__ltoa_num1_1_130
      000D19 E0               [24] 2926 	movx	a,@dptr
      000D1A FE               [12] 2927 	mov	r6,a
      000D1B A3               [24] 2928 	inc	dptr
      000D1C E0               [24] 2929 	movx	a,@dptr
      000D1D FF               [12] 2930 	mov	r7,a
      000D1E 90 12 19         [24] 2931 	mov	dptr,#__itoa_PARM_2
      000D21 74 4E            [12] 2932 	mov	a,#__ltoa_tmp1_1_130
      000D23 F0               [24] 2933 	movx	@dptr,a
      000D24 74 03            [12] 2934 	mov	a,#(__ltoa_tmp1_1_130 >> 8)
      000D26 A3               [24] 2935 	inc	dptr
      000D27 F0               [24] 2936 	movx	@dptr,a
      000D28 74 00            [12] 2937 	mov	a,#0x00
      000D2A A3               [24] 2938 	inc	dptr
      000D2B F0               [24] 2939 	movx	@dptr,a
      000D2C 90 12 1C         [24] 2940 	mov	dptr,#__itoa_PARM_3
      000D2F 74 10            [12] 2941 	mov	a,#0x10
      000D31 F0               [24] 2942 	movx	@dptr,a
      000D32 8E 82            [24] 2943 	mov	dpl,r6
      000D34 8F 83            [24] 2944 	mov	dph,r7
      000D36 12 58 C0         [24] 2945 	lcall	__itoa
      000D39                       2946 00121$:
                                   2947 ;	../osal/common/OSAL.c:372: if (num2)
      000D39 90 03 6E         [24] 2948 	mov	dptr,#__ltoa_num2_1_130
      000D3C E0               [24] 2949 	movx	a,@dptr
      000D3D FE               [12] 2950 	mov	r6,a
      000D3E A3               [24] 2951 	inc	dptr
      000D3F E0               [24] 2952 	movx	a,@dptr
      000D40 FF               [12] 2953 	mov	r7,a
      000D41 EE               [12] 2954 	mov	a,r6
      000D42 4F               [12] 2955 	orl	a,r7
      000D43 70 03            [24] 2956 	jnz	00228$
      000D45 02 0D E8         [24] 2957 	ljmp	00124$
      000D48                       2958 00228$:
                                   2959 ;	../osal/common/OSAL.c:374: strcpy((char*)buf,(char const*)tmp2);
      000D48 90 03 46         [24] 2960 	mov	dptr,#__ltoa_PARM_2
      000D4B E0               [24] 2961 	movx	a,@dptr
      000D4C FD               [12] 2962 	mov	r5,a
      000D4D A3               [24] 2963 	inc	dptr
      000D4E E0               [24] 2964 	movx	a,@dptr
      000D4F FE               [12] 2965 	mov	r6,a
      000D50 A3               [24] 2966 	inc	dptr
      000D51 E0               [24] 2967 	movx	a,@dptr
      000D52 FF               [12] 2968 	mov	r7,a
      000D53 90 11 FD         [24] 2969 	mov	dptr,#_strcpy_PARM_2
      000D56 74 58            [12] 2970 	mov	a,#__ltoa_tmp2_1_130
      000D58 F0               [24] 2971 	movx	@dptr,a
      000D59 74 03            [12] 2972 	mov	a,#(__ltoa_tmp2_1_130 >> 8)
      000D5B A3               [24] 2973 	inc	dptr
      000D5C F0               [24] 2974 	movx	@dptr,a
      000D5D 74 00            [12] 2975 	mov	a,#0x00
      000D5F A3               [24] 2976 	inc	dptr
      000D60 F0               [24] 2977 	movx	@dptr,a
      000D61 8D 82            [24] 2978 	mov	dpl,r5
      000D63 8E 83            [24] 2979 	mov	dph,r6
      000D65 8F F0            [24] 2980 	mov	b,r7
      000D67 12 55 DF         [24] 2981 	lcall	_strcpy
                                   2982 ;	../osal/common/OSAL.c:375: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
      000D6A 90 03 72         [24] 2983 	mov	dptr,#__ltoa_i_1_130
      000D6D 74 00            [12] 2984 	mov	a,#0x00
      000D6F F0               [24] 2985 	movx	@dptr,a
      000D70 90 03 46         [24] 2986 	mov	dptr,#__ltoa_PARM_2
      000D73 E0               [24] 2987 	movx	a,@dptr
      000D74 FD               [12] 2988 	mov	r5,a
      000D75 A3               [24] 2989 	inc	dptr
      000D76 E0               [24] 2990 	movx	a,@dptr
      000D77 FE               [12] 2991 	mov	r6,a
      000D78 A3               [24] 2992 	inc	dptr
      000D79 E0               [24] 2993 	movx	a,@dptr
      000D7A FF               [12] 2994 	mov	r7,a
      000D7B 90 03 72         [24] 2995 	mov	dptr,#__ltoa_i_1_130
      000D7E E0               [24] 2996 	movx	a,@dptr
      000D7F FC               [12] 2997 	mov	r4,a
      000D80                       2998 00141$:
      000D80 75 82 4E         [24] 2999 	mov	dpl,#__ltoa_tmp1_1_130
      000D83 75 83 03         [24] 3000 	mov	dph,#(__ltoa_tmp1_1_130 >> 8)
      000D86 75 F0 00         [24] 3001 	mov	b,#0x00
      000D89 C0 07            [24] 3002 	push	ar7
      000D8B C0 06            [24] 3003 	push	ar6
      000D8D C0 05            [24] 3004 	push	ar5
      000D8F C0 04            [24] 3005 	push	ar4
      000D91 12 5A FE         [24] 3006 	lcall	_strlen
      000D94 AA 82            [24] 3007 	mov	r2,dpl
      000D96 AB 83            [24] 3008 	mov	r3,dph
      000D98 D0 04            [24] 3009 	pop	ar4
      000D9A D0 05            [24] 3010 	pop	ar5
      000D9C D0 06            [24] 3011 	pop	ar6
      000D9E D0 07            [24] 3012 	pop	ar7
      000DA0 74 04            [12] 3013 	mov	a,#0x04
      000DA2 C3               [12] 3014 	clr	c
      000DA3 9A               [12] 3015 	subb	a,r2
      000DA4 FA               [12] 3016 	mov	r2,a
      000DA5 74 00            [12] 3017 	mov	a,#0x00
      000DA7 9B               [12] 3018 	subb	a,r3
      000DA8 FB               [12] 3019 	mov	r3,a
      000DA9 8C 00            [24] 3020 	mov	ar0,r4
      000DAB 79 00            [12] 3021 	mov	r1,#0x00
      000DAD C3               [12] 3022 	clr	c
      000DAE E8               [12] 3023 	mov	a,r0
      000DAF 9A               [12] 3024 	subb	a,r2
      000DB0 E9               [12] 3025 	mov	a,r1
      000DB1 9B               [12] 3026 	subb	a,r3
      000DB2 40 03            [24] 3027 	jc	00229$
      000DB4 02 0D E8         [24] 3028 	ljmp	00124$
      000DB7                       3029 00229$:
                                   3030 ;	../osal/common/OSAL.c:376: strcat((char*)buf, "0");
      000DB7 8D 01            [24] 3031 	mov	ar1,r5
      000DB9 8E 02            [24] 3032 	mov	ar2,r6
      000DBB 8F 03            [24] 3033 	mov	ar3,r7
      000DBD 90 12 1F         [24] 3034 	mov	dptr,#_strcat_PARM_2
      000DC0 74 36            [12] 3035 	mov	a,#___str_3
      000DC2 F0               [24] 3036 	movx	@dptr,a
      000DC3 74 5B            [12] 3037 	mov	a,#(___str_3 >> 8)
      000DC5 A3               [24] 3038 	inc	dptr
      000DC6 F0               [24] 3039 	movx	@dptr,a
      000DC7 74 80            [12] 3040 	mov	a,#0x80
      000DC9 A3               [24] 3041 	inc	dptr
      000DCA F0               [24] 3042 	movx	@dptr,a
      000DCB 89 82            [24] 3043 	mov	dpl,r1
      000DCD 8A 83            [24] 3044 	mov	dph,r2
      000DCF 8B F0            [24] 3045 	mov	b,r3
      000DD1 C0 07            [24] 3046 	push	ar7
      000DD3 C0 06            [24] 3047 	push	ar6
      000DD5 C0 05            [24] 3048 	push	ar5
      000DD7 C0 04            [24] 3049 	push	ar4
      000DD9 12 59 3C         [24] 3050 	lcall	_strcat
      000DDC D0 04            [24] 3051 	pop	ar4
      000DDE D0 05            [24] 3052 	pop	ar5
      000DE0 D0 06            [24] 3053 	pop	ar6
      000DE2 D0 07            [24] 3054 	pop	ar7
                                   3055 ;	../osal/common/OSAL.c:375: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
      000DE4 0C               [12] 3056 	inc	r4
      000DE5 02 0D 80         [24] 3057 	ljmp	00141$
      000DE8                       3058 00124$:
                                   3059 ;	../osal/common/OSAL.c:378: strcat((char*)buf, (char const*)tmp1);
      000DE8 90 03 46         [24] 3060 	mov	dptr,#__ltoa_PARM_2
      000DEB E0               [24] 3061 	movx	a,@dptr
      000DEC FD               [12] 3062 	mov	r5,a
      000DED A3               [24] 3063 	inc	dptr
      000DEE E0               [24] 3064 	movx	a,@dptr
      000DEF FE               [12] 3065 	mov	r6,a
      000DF0 A3               [24] 3066 	inc	dptr
      000DF1 E0               [24] 3067 	movx	a,@dptr
      000DF2 FF               [12] 3068 	mov	r7,a
      000DF3 90 12 1F         [24] 3069 	mov	dptr,#_strcat_PARM_2
      000DF6 74 4E            [12] 3070 	mov	a,#__ltoa_tmp1_1_130
      000DF8 F0               [24] 3071 	movx	@dptr,a
      000DF9 74 03            [12] 3072 	mov	a,#(__ltoa_tmp1_1_130 >> 8)
      000DFB A3               [24] 3073 	inc	dptr
      000DFC F0               [24] 3074 	movx	@dptr,a
      000DFD 74 00            [12] 3075 	mov	a,#0x00
      000DFF A3               [24] 3076 	inc	dptr
      000E00 F0               [24] 3077 	movx	@dptr,a
      000E01 8D 82            [24] 3078 	mov	dpl,r5
      000E03 8E 83            [24] 3079 	mov	dph,r6
      000E05 8F F0            [24] 3080 	mov	b,r7
      000E07 12 59 3C         [24] 3081 	lcall	_strcat
                                   3082 ;	../osal/common/OSAL.c:379: if (!num2 && !num1)
      000E0A 90 03 6E         [24] 3083 	mov	dptr,#__ltoa_num2_1_130
      000E0D E0               [24] 3084 	movx	a,@dptr
      000E0E FE               [12] 3085 	mov	r6,a
      000E0F A3               [24] 3086 	inc	dptr
      000E10 E0               [24] 3087 	movx	a,@dptr
      000E11 FF               [12] 3088 	mov	r7,a
      000E12 EE               [12] 3089 	mov	a,r6
      000E13 4F               [12] 3090 	orl	a,r7
      000E14 60 03            [24] 3091 	jz	00230$
      000E16 02 0E 59         [24] 3092 	ljmp	00133$
      000E19                       3093 00230$:
      000E19 90 03 6C         [24] 3094 	mov	dptr,#__ltoa_num1_1_130
      000E1C E0               [24] 3095 	movx	a,@dptr
      000E1D FE               [12] 3096 	mov	r6,a
      000E1E A3               [24] 3097 	inc	dptr
      000E1F E0               [24] 3098 	movx	a,@dptr
      000E20 FF               [12] 3099 	mov	r7,a
      000E21 EE               [12] 3100 	mov	a,r6
      000E22 4F               [12] 3101 	orl	a,r7
      000E23 60 03            [24] 3102 	jz	00231$
      000E25 02 0E 59         [24] 3103 	ljmp	00133$
      000E28                       3104 00231$:
                                   3105 ;	../osal/common/OSAL.c:380: strcpy((char*)buf, "0");
      000E28 90 03 46         [24] 3106 	mov	dptr,#__ltoa_PARM_2
      000E2B E0               [24] 3107 	movx	a,@dptr
      000E2C FD               [12] 3108 	mov	r5,a
      000E2D A3               [24] 3109 	inc	dptr
      000E2E E0               [24] 3110 	movx	a,@dptr
      000E2F FE               [12] 3111 	mov	r6,a
      000E30 A3               [24] 3112 	inc	dptr
      000E31 E0               [24] 3113 	movx	a,@dptr
      000E32 FF               [12] 3114 	mov	r7,a
      000E33 90 11 FD         [24] 3115 	mov	dptr,#_strcpy_PARM_2
      000E36 74 36            [12] 3116 	mov	a,#___str_3
      000E38 F0               [24] 3117 	movx	@dptr,a
      000E39 74 5B            [12] 3118 	mov	a,#(___str_3 >> 8)
      000E3B A3               [24] 3119 	inc	dptr
      000E3C F0               [24] 3120 	movx	@dptr,a
      000E3D 74 80            [12] 3121 	mov	a,#0x80
      000E3F A3               [24] 3122 	inc	dptr
      000E40 F0               [24] 3123 	movx	@dptr,a
      000E41 8D 82            [24] 3124 	mov	dpl,r5
      000E43 8E 83            [24] 3125 	mov	dph,r6
      000E45 8F F0            [24] 3126 	mov	b,r7
      000E47 12 55 DF         [24] 3127 	lcall	_strcpy
      000E4A 02 0E 59         [24] 3128 	ljmp	00133$
      000E4D                       3129 00129$:
                                   3130 ;	../osal/common/OSAL.c:383: return NULL;
      000E4D 75 82 00         [24] 3131 	mov	dpl,#0x00
      000E50 75 83 00         [24] 3132 	mov	dph,#0x00
      000E53 75 F0 00         [24] 3133 	mov	b,#0x00
      000E56 02 0E 6A         [24] 3134 	ljmp	00143$
      000E59                       3135 00133$:
                                   3136 ;	../osal/common/OSAL.c:385: return buf;
      000E59 90 03 46         [24] 3137 	mov	dptr,#__ltoa_PARM_2
      000E5C E0               [24] 3138 	movx	a,@dptr
      000E5D FD               [12] 3139 	mov	r5,a
      000E5E A3               [24] 3140 	inc	dptr
      000E5F E0               [24] 3141 	movx	a,@dptr
      000E60 FE               [12] 3142 	mov	r6,a
      000E61 A3               [24] 3143 	inc	dptr
      000E62 E0               [24] 3144 	movx	a,@dptr
      000E63 FF               [12] 3145 	mov	r7,a
      000E64 8D 82            [24] 3146 	mov	dpl,r5
      000E66 8E 83            [24] 3147 	mov	dph,r6
      000E68 8F F0            [24] 3148 	mov	b,r7
      000E6A                       3149 00143$:
      000E6A 22               [24] 3150 	ret
                                   3151 ;------------------------------------------------------------
                                   3152 ;Allocation info for local variables in function 'osal_rand'
                                   3153 ;------------------------------------------------------------
                                   3154 ;	../osal/common/OSAL.c:400: uint16 osal_rand( void )
                                   3155 ;	-----------------------------------------
                                   3156 ;	 function osal_rand
                                   3157 ;	-----------------------------------------
      000E6B                       3158 _osal_rand:
                                   3159 ;	../osal/common/OSAL.c:404: }
      000E6B                       3160 00101$:
      000E6B 22               [24] 3161 	ret
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
      000E6C                       3172 _osal_msg_allocate:
      000E6C AF 83            [24] 3173 	mov	r7,dph
      000E6E E5 82            [12] 3174 	mov	a,dpl
      000E70 90 03 73         [24] 3175 	mov	dptr,#_osal_msg_allocate_len_1_138
      000E73 F0               [24] 3176 	movx	@dptr,a
      000E74 EF               [12] 3177 	mov	a,r7
      000E75 A3               [24] 3178 	inc	dptr
      000E76 F0               [24] 3179 	movx	@dptr,a
                                   3180 ;	../osal/common/OSAL.c:436: if ( len == 0 )
      000E77 90 03 73         [24] 3181 	mov	dptr,#_osal_msg_allocate_len_1_138
      000E7A E0               [24] 3182 	movx	a,@dptr
      000E7B FE               [12] 3183 	mov	r6,a
      000E7C A3               [24] 3184 	inc	dptr
      000E7D E0               [24] 3185 	movx	a,@dptr
      000E7E FF               [12] 3186 	mov	r7,a
      000E7F EE               [12] 3187 	mov	a,r6
      000E80 4F               [12] 3188 	orl	a,r7
      000E81 60 03            [24] 3189 	jz	00114$
      000E83 02 0E 92         [24] 3190 	ljmp	00102$
      000E86                       3191 00114$:
                                   3192 ;	../osal/common/OSAL.c:437: return ( NULL );
      000E86 75 82 00         [24] 3193 	mov	dpl,#0x00
      000E89 75 83 00         [24] 3194 	mov	dph,#0x00
      000E8C 75 F0 00         [24] 3195 	mov	b,#0x00
      000E8F 02 0F 2F         [24] 3196 	ljmp	00106$
      000E92                       3197 00102$:
                                   3198 ;	../osal/common/OSAL.c:439: hdr = (osal_msg_hdr_t *) osal_mem_alloc( (short)(len + sizeof( osal_msg_hdr_t )) );
      000E92 90 03 73         [24] 3199 	mov	dptr,#_osal_msg_allocate_len_1_138
      000E95 E0               [24] 3200 	movx	a,@dptr
      000E96 FE               [12] 3201 	mov	r6,a
      000E97 A3               [24] 3202 	inc	dptr
      000E98 E0               [24] 3203 	movx	a,@dptr
      000E99 FF               [12] 3204 	mov	r7,a
      000E9A 74 06            [12] 3205 	mov	a,#0x06
      000E9C 2E               [12] 3206 	add	a,r6
      000E9D FE               [12] 3207 	mov	r6,a
      000E9E 74 00            [12] 3208 	mov	a,#0x00
      000EA0 3F               [12] 3209 	addc	a,r7
      000EA1 FF               [12] 3210 	mov	r7,a
      000EA2 8E 82            [24] 3211 	mov	dpl,r6
      000EA4 8F 83            [24] 3212 	mov	dph,r7
      000EA6 12 1F B4         [24] 3213 	lcall	_osal_mem_alloc
      000EA9 AD 82            [24] 3214 	mov	r5,dpl
      000EAB AE 83            [24] 3215 	mov	r6,dph
      000EAD AF F0            [24] 3216 	mov	r7,b
      000EAF 90 03 75         [24] 3217 	mov	dptr,#_osal_msg_allocate_hdr_1_139
      000EB2 ED               [12] 3218 	mov	a,r5
      000EB3 F0               [24] 3219 	movx	@dptr,a
      000EB4 EE               [12] 3220 	mov	a,r6
      000EB5 A3               [24] 3221 	inc	dptr
      000EB6 F0               [24] 3222 	movx	@dptr,a
      000EB7 EF               [12] 3223 	mov	a,r7
      000EB8 A3               [24] 3224 	inc	dptr
      000EB9 F0               [24] 3225 	movx	@dptr,a
                                   3226 ;	../osal/common/OSAL.c:440: if ( hdr )
      000EBA ED               [12] 3227 	mov	a,r5
      000EBB 4E               [12] 3228 	orl	a,r6
      000EBC 70 03            [24] 3229 	jnz	00115$
      000EBE 02 0F 26         [24] 3230 	ljmp	00104$
      000EC1                       3231 00115$:
                                   3232 ;	../osal/common/OSAL.c:442: hdr->next = NULL;
      000EC1 90 03 75         [24] 3233 	mov	dptr,#_osal_msg_allocate_hdr_1_139
      000EC4 E0               [24] 3234 	movx	a,@dptr
      000EC5 FD               [12] 3235 	mov	r5,a
      000EC6 A3               [24] 3236 	inc	dptr
      000EC7 E0               [24] 3237 	movx	a,@dptr
      000EC8 FE               [12] 3238 	mov	r6,a
      000EC9 A3               [24] 3239 	inc	dptr
      000ECA E0               [24] 3240 	movx	a,@dptr
      000ECB FF               [12] 3241 	mov	r7,a
      000ECC 8D 82            [24] 3242 	mov	dpl,r5
      000ECE 8E 83            [24] 3243 	mov	dph,r6
      000ED0 8F F0            [24] 3244 	mov	b,r7
      000ED2 74 00            [12] 3245 	mov	a,#0x00
      000ED4 12 59 AA         [24] 3246 	lcall	__gptrput
      000ED7 A3               [24] 3247 	inc	dptr
      000ED8 12 59 AA         [24] 3248 	lcall	__gptrput
      000EDB A3               [24] 3249 	inc	dptr
      000EDC 12 59 AA         [24] 3250 	lcall	__gptrput
                                   3251 ;	../osal/common/OSAL.c:443: hdr->len = len;
      000EDF 74 03            [12] 3252 	mov	a,#0x03
      000EE1 2D               [12] 3253 	add	a,r5
      000EE2 FA               [12] 3254 	mov	r2,a
      000EE3 74 00            [12] 3255 	mov	a,#0x00
      000EE5 3E               [12] 3256 	addc	a,r6
      000EE6 FB               [12] 3257 	mov	r3,a
      000EE7 8F 04            [24] 3258 	mov	ar4,r7
      000EE9 90 03 73         [24] 3259 	mov	dptr,#_osal_msg_allocate_len_1_138
      000EEC E0               [24] 3260 	movx	a,@dptr
      000EED F8               [12] 3261 	mov	r0,a
      000EEE A3               [24] 3262 	inc	dptr
      000EEF E0               [24] 3263 	movx	a,@dptr
      000EF0 F9               [12] 3264 	mov	r1,a
      000EF1 8A 82            [24] 3265 	mov	dpl,r2
      000EF3 8B 83            [24] 3266 	mov	dph,r3
      000EF5 8C F0            [24] 3267 	mov	b,r4
      000EF7 E8               [12] 3268 	mov	a,r0
      000EF8 12 59 AA         [24] 3269 	lcall	__gptrput
      000EFB A3               [24] 3270 	inc	dptr
      000EFC E9               [12] 3271 	mov	a,r1
      000EFD 12 59 AA         [24] 3272 	lcall	__gptrput
                                   3273 ;	../osal/common/OSAL.c:444: hdr->dest_id = TASK_NO_TASK;
      000F00 74 05            [12] 3274 	mov	a,#0x05
      000F02 2D               [12] 3275 	add	a,r5
      000F03 FA               [12] 3276 	mov	r2,a
      000F04 74 00            [12] 3277 	mov	a,#0x00
      000F06 3E               [12] 3278 	addc	a,r6
      000F07 FB               [12] 3279 	mov	r3,a
      000F08 8F 04            [24] 3280 	mov	ar4,r7
      000F0A 8A 82            [24] 3281 	mov	dpl,r2
      000F0C 8B 83            [24] 3282 	mov	dph,r3
      000F0E 8C F0            [24] 3283 	mov	b,r4
      000F10 74 FF            [12] 3284 	mov	a,#0xFF
      000F12 12 59 AA         [24] 3285 	lcall	__gptrput
                                   3286 ;	../osal/common/OSAL.c:445: return ( (uint8 *) (hdr + 1) );
      000F15 74 06            [12] 3287 	mov	a,#0x06
      000F17 2D               [12] 3288 	add	a,r5
      000F18 FD               [12] 3289 	mov	r5,a
      000F19 74 00            [12] 3290 	mov	a,#0x00
      000F1B 3E               [12] 3291 	addc	a,r6
      000F1C FE               [12] 3292 	mov	r6,a
      000F1D 8D 82            [24] 3293 	mov	dpl,r5
      000F1F 8E 83            [24] 3294 	mov	dph,r6
      000F21 8F F0            [24] 3295 	mov	b,r7
      000F23 02 0F 2F         [24] 3296 	ljmp	00106$
      000F26                       3297 00104$:
                                   3298 ;	../osal/common/OSAL.c:448: return ( NULL );
      000F26 75 82 00         [24] 3299 	mov	dpl,#0x00
      000F29 75 83 00         [24] 3300 	mov	dph,#0x00
      000F2C 75 F0 00         [24] 3301 	mov	b,#0x00
      000F2F                       3302 00106$:
      000F2F 22               [24] 3303 	ret
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
      000F30                       3314 _osal_msg_deallocate:
      000F30 AF F0            [24] 3315 	mov	r7,b
      000F32 AE 83            [24] 3316 	mov	r6,dph
      000F34 E5 82            [12] 3317 	mov	a,dpl
      000F36 90 03 78         [24] 3318 	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
      000F39 F0               [24] 3319 	movx	@dptr,a
      000F3A EE               [12] 3320 	mov	a,r6
      000F3B A3               [24] 3321 	inc	dptr
      000F3C F0               [24] 3322 	movx	@dptr,a
      000F3D EF               [12] 3323 	mov	a,r7
      000F3E A3               [24] 3324 	inc	dptr
      000F3F F0               [24] 3325 	movx	@dptr,a
                                   3326 ;	../osal/common/OSAL.c:469: if ( msg_ptr == NULL )
      000F40 90 03 78         [24] 3327 	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
      000F43 E0               [24] 3328 	movx	a,@dptr
      000F44 FD               [12] 3329 	mov	r5,a
      000F45 A3               [24] 3330 	inc	dptr
      000F46 E0               [24] 3331 	movx	a,@dptr
      000F47 FE               [12] 3332 	mov	r6,a
      000F48 A3               [24] 3333 	inc	dptr
      000F49 E0               [24] 3334 	movx	a,@dptr
      000F4A FF               [12] 3335 	mov	r7,a
      000F4B ED               [12] 3336 	mov	a,r5
      000F4C 4E               [12] 3337 	orl	a,r6
      000F4D 60 03            [24] 3338 	jz	00113$
      000F4F 02 0F 58         [24] 3339 	ljmp	00102$
      000F52                       3340 00113$:
                                   3341 ;	../osal/common/OSAL.c:470: return ( INVALID_MSG_POINTER );
      000F52 75 82 05         [24] 3342 	mov	dpl,#0x05
      000F55 02 0F A0         [24] 3343 	ljmp	00105$
      000F58                       3344 00102$:
                                   3345 ;	../osal/common/OSAL.c:473: if ( OSAL_MSG_ID( msg_ptr ) != TASK_NO_TASK )
      000F58 90 03 78         [24] 3346 	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
      000F5B E0               [24] 3347 	movx	a,@dptr
      000F5C FD               [12] 3348 	mov	r5,a
      000F5D A3               [24] 3349 	inc	dptr
      000F5E E0               [24] 3350 	movx	a,@dptr
      000F5F FE               [12] 3351 	mov	r6,a
      000F60 A3               [24] 3352 	inc	dptr
      000F61 E0               [24] 3353 	movx	a,@dptr
      000F62 FF               [12] 3354 	mov	r7,a
      000F63 74 FF            [12] 3355 	mov	a,#0xFF
      000F65 2D               [12] 3356 	add	a,r5
      000F66 FD               [12] 3357 	mov	r5,a
      000F67 74 FF            [12] 3358 	mov	a,#0xFF
      000F69 3E               [12] 3359 	addc	a,r6
      000F6A FE               [12] 3360 	mov	r6,a
      000F6B 8D 82            [24] 3361 	mov	dpl,r5
      000F6D 8E 83            [24] 3362 	mov	dph,r6
      000F6F 8F F0            [24] 3363 	mov	b,r7
      000F71 12 5B 16         [24] 3364 	lcall	__gptrget
      000F74 FD               [12] 3365 	mov	r5,a
      000F75 BD FF 03         [24] 3366 	cjne	r5,#0xFF,00114$
      000F78 02 0F 81         [24] 3367 	ljmp	00104$
      000F7B                       3368 00114$:
                                   3369 ;	../osal/common/OSAL.c:474: return ( MSG_BUFFER_NOT_AVAIL );
      000F7B 75 82 04         [24] 3370 	mov	dpl,#0x04
      000F7E 02 0F A0         [24] 3371 	ljmp	00105$
      000F81                       3372 00104$:
                                   3373 ;	../osal/common/OSAL.c:476: x = (uint8 *)((uint8 *)msg_ptr - sizeof( osal_msg_hdr_t ));
      000F81 90 03 78         [24] 3374 	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
      000F84 E0               [24] 3375 	movx	a,@dptr
      000F85 FD               [12] 3376 	mov	r5,a
      000F86 A3               [24] 3377 	inc	dptr
      000F87 E0               [24] 3378 	movx	a,@dptr
      000F88 FE               [12] 3379 	mov	r6,a
      000F89 A3               [24] 3380 	inc	dptr
      000F8A E0               [24] 3381 	movx	a,@dptr
      000F8B FF               [12] 3382 	mov	r7,a
      000F8C ED               [12] 3383 	mov	a,r5
      000F8D 24 FA            [12] 3384 	add	a,#0xFA
      000F8F FD               [12] 3385 	mov	r5,a
      000F90 EE               [12] 3386 	mov	a,r6
      000F91 34 FF            [12] 3387 	addc	a,#0xFF
      000F93 FE               [12] 3388 	mov	r6,a
                                   3389 ;	../osal/common/OSAL.c:478: osal_mem_free( (void *)x );
      000F94 8D 82            [24] 3390 	mov	dpl,r5
      000F96 8E 83            [24] 3391 	mov	dph,r6
      000F98 8F F0            [24] 3392 	mov	b,r7
      000F9A 12 23 00         [24] 3393 	lcall	_osal_mem_free
                                   3394 ;	../osal/common/OSAL.c:480: return ( SUCCESS );
      000F9D 75 82 00         [24] 3395 	mov	dpl,#0x00
      000FA0                       3396 00105$:
      000FA0 22               [24] 3397 	ret
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
      000FA1                       3408 _osal_msg_send:
      000FA1 E5 82            [12] 3409 	mov	a,dpl
      000FA3 90 03 7E         [24] 3410 	mov	dptr,#_osal_msg_send_destination_task_1_143
      000FA6 F0               [24] 3411 	movx	@dptr,a
                                   3412 ;	../osal/common/OSAL.c:502: return ( osal_msg_enqueue_push( destination_task, msg_ptr, FALSE ) );
      000FA7 E0               [24] 3413 	movx	a,@dptr
      000FA8 FF               [12] 3414 	mov	r7,a
      000FA9 90 03 7B         [24] 3415 	mov	dptr,#_osal_msg_send_PARM_2
      000FAC E0               [24] 3416 	movx	a,@dptr
      000FAD FC               [12] 3417 	mov	r4,a
      000FAE A3               [24] 3418 	inc	dptr
      000FAF E0               [24] 3419 	movx	a,@dptr
      000FB0 FD               [12] 3420 	mov	r5,a
      000FB1 A3               [24] 3421 	inc	dptr
      000FB2 E0               [24] 3422 	movx	a,@dptr
      000FB3 FE               [12] 3423 	mov	r6,a
      000FB4 90 03 83         [24] 3424 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      000FB7 EC               [12] 3425 	mov	a,r4
      000FB8 F0               [24] 3426 	movx	@dptr,a
      000FB9 ED               [12] 3427 	mov	a,r5
      000FBA A3               [24] 3428 	inc	dptr
      000FBB F0               [24] 3429 	movx	@dptr,a
      000FBC EE               [12] 3430 	mov	a,r6
      000FBD A3               [24] 3431 	inc	dptr
      000FBE F0               [24] 3432 	movx	@dptr,a
      000FBF 90 03 86         [24] 3433 	mov	dptr,#_osal_msg_enqueue_push_PARM_3
      000FC2 74 00            [12] 3434 	mov	a,#0x00
      000FC4 F0               [24] 3435 	movx	@dptr,a
      000FC5 8F 82            [24] 3436 	mov	dpl,r7
      000FC7 12 0F FD         [24] 3437 	lcall	_osal_msg_enqueue_push
      000FCA AF 82            [24] 3438 	mov	r7,dpl
      000FCC 8F 82            [24] 3439 	mov	dpl,r7
      000FCE                       3440 00101$:
      000FCE 22               [24] 3441 	ret
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
      000FCF                       3452 _osal_msg_push_front:
      000FCF E5 82            [12] 3453 	mov	a,dpl
      000FD1 90 03 82         [24] 3454 	mov	dptr,#_osal_msg_push_front_destination_task_1_145
      000FD4 F0               [24] 3455 	movx	@dptr,a
                                   3456 ;	../osal/common/OSAL.c:523: return ( osal_msg_enqueue_push( destination_task, msg_ptr, TRUE ) );
      000FD5 E0               [24] 3457 	movx	a,@dptr
      000FD6 FF               [12] 3458 	mov	r7,a
      000FD7 90 03 7F         [24] 3459 	mov	dptr,#_osal_msg_push_front_PARM_2
      000FDA E0               [24] 3460 	movx	a,@dptr
      000FDB FC               [12] 3461 	mov	r4,a
      000FDC A3               [24] 3462 	inc	dptr
      000FDD E0               [24] 3463 	movx	a,@dptr
      000FDE FD               [12] 3464 	mov	r5,a
      000FDF A3               [24] 3465 	inc	dptr
      000FE0 E0               [24] 3466 	movx	a,@dptr
      000FE1 FE               [12] 3467 	mov	r6,a
      000FE2 90 03 83         [24] 3468 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      000FE5 EC               [12] 3469 	mov	a,r4
      000FE6 F0               [24] 3470 	movx	@dptr,a
      000FE7 ED               [12] 3471 	mov	a,r5
      000FE8 A3               [24] 3472 	inc	dptr
      000FE9 F0               [24] 3473 	movx	@dptr,a
      000FEA EE               [12] 3474 	mov	a,r6
      000FEB A3               [24] 3475 	inc	dptr
      000FEC F0               [24] 3476 	movx	@dptr,a
      000FED 90 03 86         [24] 3477 	mov	dptr,#_osal_msg_enqueue_push_PARM_3
      000FF0 74 01            [12] 3478 	mov	a,#0x01
      000FF2 F0               [24] 3479 	movx	@dptr,a
      000FF3 8F 82            [24] 3480 	mov	dpl,r7
      000FF5 12 0F FD         [24] 3481 	lcall	_osal_msg_enqueue_push
      000FF8 AF 82            [24] 3482 	mov	r7,dpl
      000FFA 8F 82            [24] 3483 	mov	dpl,r7
      000FFC                       3484 00101$:
      000FFC 22               [24] 3485 	ret
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
      000FFD                       3497 _osal_msg_enqueue_push:
      000FFD E5 82            [12] 3498 	mov	a,dpl
      000FFF 90 03 87         [24] 3499 	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
      001002 F0               [24] 3500 	movx	@dptr,a
                                   3501 ;	../osal/common/OSAL.c:546: if ( msg_ptr == NULL )
      001003 90 03 83         [24] 3502 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      001006 E0               [24] 3503 	movx	a,@dptr
      001007 FD               [12] 3504 	mov	r5,a
      001008 A3               [24] 3505 	inc	dptr
      001009 E0               [24] 3506 	movx	a,@dptr
      00100A FE               [12] 3507 	mov	r6,a
      00100B A3               [24] 3508 	inc	dptr
      00100C E0               [24] 3509 	movx	a,@dptr
      00100D FF               [12] 3510 	mov	r7,a
      00100E ED               [12] 3511 	mov	a,r5
      00100F 4E               [12] 3512 	orl	a,r6
      001010 60 03            [24] 3513 	jz	00125$
      001012 02 10 1B         [24] 3514 	ljmp	00102$
      001015                       3515 00125$:
                                   3516 ;	../osal/common/OSAL.c:548: return ( INVALID_MSG_POINTER );
      001015 75 82 05         [24] 3517 	mov	dpl,#0x05
      001018 02 11 40         [24] 3518 	ljmp	00111$
      00101B                       3519 00102$:
                                   3520 ;	../osal/common/OSAL.c:551: if ( destination_task >= tasksCnt )
      00101B 90 03 87         [24] 3521 	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
      00101E E0               [24] 3522 	movx	a,@dptr
      00101F FF               [12] 3523 	mov	r7,a
      001020 90 5B 42         [24] 3524 	mov	dptr,#_tasksCnt
      001023 E4               [12] 3525 	clr	a
      001024 93               [24] 3526 	movc	a,@a+dptr
      001025 FE               [12] 3527 	mov	r6,a
      001026 C3               [12] 3528 	clr	c
      001027 EF               [12] 3529 	mov	a,r7
      001028 9E               [12] 3530 	subb	a,r6
      001029 50 03            [24] 3531 	jnc	00126$
      00102B 02 10 48         [24] 3532 	ljmp	00104$
      00102E                       3533 00126$:
                                   3534 ;	../osal/common/OSAL.c:553: osal_msg_deallocate( msg_ptr );
      00102E 90 03 83         [24] 3535 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      001031 E0               [24] 3536 	movx	a,@dptr
      001032 FD               [12] 3537 	mov	r5,a
      001033 A3               [24] 3538 	inc	dptr
      001034 E0               [24] 3539 	movx	a,@dptr
      001035 FE               [12] 3540 	mov	r6,a
      001036 A3               [24] 3541 	inc	dptr
      001037 E0               [24] 3542 	movx	a,@dptr
      001038 FF               [12] 3543 	mov	r7,a
      001039 8D 82            [24] 3544 	mov	dpl,r5
      00103B 8E 83            [24] 3545 	mov	dph,r6
      00103D 8F F0            [24] 3546 	mov	b,r7
      00103F 12 0F 30         [24] 3547 	lcall	_osal_msg_deallocate
                                   3548 ;	../osal/common/OSAL.c:554: return ( INVALID_TASK );
      001042 75 82 03         [24] 3549 	mov	dpl,#0x03
      001045 02 11 40         [24] 3550 	ljmp	00111$
      001048                       3551 00104$:
                                   3552 ;	../osal/common/OSAL.c:558: if ( OSAL_MSG_NEXT( msg_ptr ) != NULL ||
      001048 90 03 83         [24] 3553 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      00104B E0               [24] 3554 	movx	a,@dptr
      00104C FD               [12] 3555 	mov	r5,a
      00104D A3               [24] 3556 	inc	dptr
      00104E E0               [24] 3557 	movx	a,@dptr
      00104F FE               [12] 3558 	mov	r6,a
      001050 A3               [24] 3559 	inc	dptr
      001051 E0               [24] 3560 	movx	a,@dptr
      001052 FF               [12] 3561 	mov	r7,a
      001053 ED               [12] 3562 	mov	a,r5
      001054 24 FA            [12] 3563 	add	a,#0xFA
      001056 FD               [12] 3564 	mov	r5,a
      001057 EE               [12] 3565 	mov	a,r6
      001058 34 FF            [12] 3566 	addc	a,#0xFF
      00105A FE               [12] 3567 	mov	r6,a
      00105B 8D 82            [24] 3568 	mov	dpl,r5
      00105D 8E 83            [24] 3569 	mov	dph,r6
      00105F 8F F0            [24] 3570 	mov	b,r7
      001061 12 5B 16         [24] 3571 	lcall	__gptrget
      001064 FD               [12] 3572 	mov	r5,a
      001065 A3               [24] 3573 	inc	dptr
      001066 12 5B 16         [24] 3574 	lcall	__gptrget
      001069 FE               [12] 3575 	mov	r6,a
      00106A A3               [24] 3576 	inc	dptr
      00106B 12 5B 16         [24] 3577 	lcall	__gptrget
      00106E FF               [12] 3578 	mov	r7,a
      00106F ED               [12] 3579 	mov	a,r5
      001070 4E               [12] 3580 	orl	a,r6
      001071 60 03            [24] 3581 	jz	00127$
      001073 02 10 99         [24] 3582 	ljmp	00105$
      001076                       3583 00127$:
                                   3584 ;	../osal/common/OSAL.c:559: OSAL_MSG_ID( msg_ptr ) != TASK_NO_TASK )
      001076 90 03 83         [24] 3585 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      001079 E0               [24] 3586 	movx	a,@dptr
      00107A FD               [12] 3587 	mov	r5,a
      00107B A3               [24] 3588 	inc	dptr
      00107C E0               [24] 3589 	movx	a,@dptr
      00107D FE               [12] 3590 	mov	r6,a
      00107E A3               [24] 3591 	inc	dptr
      00107F E0               [24] 3592 	movx	a,@dptr
      001080 FF               [12] 3593 	mov	r7,a
      001081 74 FF            [12] 3594 	mov	a,#0xFF
      001083 2D               [12] 3595 	add	a,r5
      001084 FD               [12] 3596 	mov	r5,a
      001085 74 FF            [12] 3597 	mov	a,#0xFF
      001087 3E               [12] 3598 	addc	a,r6
      001088 FE               [12] 3599 	mov	r6,a
      001089 8D 82            [24] 3600 	mov	dpl,r5
      00108B 8E 83            [24] 3601 	mov	dph,r6
      00108D 8F F0            [24] 3602 	mov	b,r7
      00108F 12 5B 16         [24] 3603 	lcall	__gptrget
      001092 FD               [12] 3604 	mov	r5,a
      001093 BD FF 03         [24] 3605 	cjne	r5,#0xFF,00128$
      001096 02 10 B3         [24] 3606 	ljmp	00106$
      001099                       3607 00128$:
      001099                       3608 00105$:
                                   3609 ;	../osal/common/OSAL.c:561: osal_msg_deallocate( msg_ptr );
      001099 90 03 83         [24] 3610 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      00109C E0               [24] 3611 	movx	a,@dptr
      00109D FD               [12] 3612 	mov	r5,a
      00109E A3               [24] 3613 	inc	dptr
      00109F E0               [24] 3614 	movx	a,@dptr
      0010A0 FE               [12] 3615 	mov	r6,a
      0010A1 A3               [24] 3616 	inc	dptr
      0010A2 E0               [24] 3617 	movx	a,@dptr
      0010A3 FF               [12] 3618 	mov	r7,a
      0010A4 8D 82            [24] 3619 	mov	dpl,r5
      0010A6 8E 83            [24] 3620 	mov	dph,r6
      0010A8 8F F0            [24] 3621 	mov	b,r7
      0010AA 12 0F 30         [24] 3622 	lcall	_osal_msg_deallocate
                                   3623 ;	../osal/common/OSAL.c:562: return ( INVALID_MSG_POINTER );
      0010AD 75 82 05         [24] 3624 	mov	dpl,#0x05
      0010B0 02 11 40         [24] 3625 	ljmp	00111$
      0010B3                       3626 00106$:
                                   3627 ;	../osal/common/OSAL.c:565: OSAL_MSG_ID( msg_ptr ) = destination_task;
      0010B3 90 03 83         [24] 3628 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      0010B6 E0               [24] 3629 	movx	a,@dptr
      0010B7 FD               [12] 3630 	mov	r5,a
      0010B8 A3               [24] 3631 	inc	dptr
      0010B9 E0               [24] 3632 	movx	a,@dptr
      0010BA FE               [12] 3633 	mov	r6,a
      0010BB A3               [24] 3634 	inc	dptr
      0010BC E0               [24] 3635 	movx	a,@dptr
      0010BD FF               [12] 3636 	mov	r7,a
      0010BE 74 FF            [12] 3637 	mov	a,#0xFF
      0010C0 2D               [12] 3638 	add	a,r5
      0010C1 FD               [12] 3639 	mov	r5,a
      0010C2 74 FF            [12] 3640 	mov	a,#0xFF
      0010C4 3E               [12] 3641 	addc	a,r6
      0010C5 FE               [12] 3642 	mov	r6,a
      0010C6 90 03 87         [24] 3643 	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
      0010C9 E0               [24] 3644 	movx	a,@dptr
      0010CA FC               [12] 3645 	mov	r4,a
      0010CB 8D 82            [24] 3646 	mov	dpl,r5
      0010CD 8E 83            [24] 3647 	mov	dph,r6
      0010CF 8F F0            [24] 3648 	mov	b,r7
      0010D1 EC               [12] 3649 	mov	a,r4
      0010D2 12 59 AA         [24] 3650 	lcall	__gptrput
                                   3651 ;	../osal/common/OSAL.c:567: if ( push == TRUE )
      0010D5 90 03 86         [24] 3652 	mov	dptr,#_osal_msg_enqueue_push_PARM_3
      0010D8 E0               [24] 3653 	movx	a,@dptr
      0010D9 FF               [12] 3654 	mov	r7,a
      0010DA BF 01 02         [24] 3655 	cjne	r7,#0x01,00129$
      0010DD 80 03            [24] 3656 	sjmp	00130$
      0010DF                       3657 00129$:
      0010DF 02 11 07         [24] 3658 	ljmp	00109$
      0010E2                       3659 00130$:
                                   3660 ;	../osal/common/OSAL.c:570: osal_msg_push( &osal_qHead, msg_ptr );
      0010E2 90 03 83         [24] 3661 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      0010E5 E0               [24] 3662 	movx	a,@dptr
      0010E6 FD               [12] 3663 	mov	r5,a
      0010E7 A3               [24] 3664 	inc	dptr
      0010E8 E0               [24] 3665 	movx	a,@dptr
      0010E9 FE               [12] 3666 	mov	r6,a
      0010EA A3               [24] 3667 	inc	dptr
      0010EB E0               [24] 3668 	movx	a,@dptr
      0010EC FF               [12] 3669 	mov	r7,a
      0010ED 90 03 AA         [24] 3670 	mov	dptr,#_osal_msg_push_PARM_2
      0010F0 ED               [12] 3671 	mov	a,r5
      0010F1 F0               [24] 3672 	movx	@dptr,a
      0010F2 EE               [12] 3673 	mov	a,r6
      0010F3 A3               [24] 3674 	inc	dptr
      0010F4 F0               [24] 3675 	movx	@dptr,a
      0010F5 EF               [12] 3676 	mov	a,r7
      0010F6 A3               [24] 3677 	inc	dptr
      0010F7 F0               [24] 3678 	movx	@dptr,a
      0010F8 75 82 00         [24] 3679 	mov	dpl,#_osal_qHead
      0010FB 75 83 03         [24] 3680 	mov	dph,#(_osal_qHead >> 8)
      0010FE 75 F0 00         [24] 3681 	mov	b,#0x00
      001101 12 16 27         [24] 3682 	lcall	_osal_msg_push
      001104 02 11 29         [24] 3683 	ljmp	00110$
      001107                       3684 00109$:
                                   3685 ;	../osal/common/OSAL.c:575: osal_msg_enqueue( &osal_qHead, msg_ptr );
      001107 90 03 83         [24] 3686 	mov	dptr,#_osal_msg_enqueue_push_PARM_2
      00110A E0               [24] 3687 	movx	a,@dptr
      00110B FD               [12] 3688 	mov	r5,a
      00110C A3               [24] 3689 	inc	dptr
      00110D E0               [24] 3690 	movx	a,@dptr
      00110E FE               [12] 3691 	mov	r6,a
      00110F A3               [24] 3692 	inc	dptr
      001110 E0               [24] 3693 	movx	a,@dptr
      001111 FF               [12] 3694 	mov	r7,a
      001112 90 03 99         [24] 3695 	mov	dptr,#_osal_msg_enqueue_PARM_2
      001115 ED               [12] 3696 	mov	a,r5
      001116 F0               [24] 3697 	movx	@dptr,a
      001117 EE               [12] 3698 	mov	a,r6
      001118 A3               [24] 3699 	inc	dptr
      001119 F0               [24] 3700 	movx	@dptr,a
      00111A EF               [12] 3701 	mov	a,r7
      00111B A3               [24] 3702 	inc	dptr
      00111C F0               [24] 3703 	movx	@dptr,a
      00111D 75 82 00         [24] 3704 	mov	dpl,#_osal_qHead
      001120 75 83 03         [24] 3705 	mov	dph,#(_osal_qHead >> 8)
      001123 75 F0 00         [24] 3706 	mov	b,#0x00
      001126 12 13 B3         [24] 3707 	lcall	_osal_msg_enqueue
      001129                       3708 00110$:
                                   3709 ;	../osal/common/OSAL.c:579: osal_set_event( destination_task, SYS_EVENT_MSG );
      001129 90 03 87         [24] 3710 	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
      00112C E0               [24] 3711 	movx	a,@dptr
      00112D FF               [12] 3712 	mov	r7,a
      00112E 90 03 C6         [24] 3713 	mov	dptr,#_osal_set_event_PARM_2
      001131 74 00            [12] 3714 	mov	a,#0x00
      001133 F0               [24] 3715 	movx	@dptr,a
      001134 74 80            [12] 3716 	mov	a,#0x80
      001136 A3               [24] 3717 	inc	dptr
      001137 F0               [24] 3718 	movx	@dptr,a
      001138 8F 82            [24] 3719 	mov	dpl,r7
      00113A 12 19 62         [24] 3720 	lcall	_osal_set_event
                                   3721 ;	../osal/common/OSAL.c:581: return ( SUCCESS );
      00113D 75 82 00         [24] 3722 	mov	dpl,#0x00
      001140                       3723 00111$:
      001140 22               [24] 3724 	ret
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
      001141                       3738 _osal_msg_receive:
      001141 E5 82            [12] 3739 	mov	a,dpl
      001143 90 03 88         [24] 3740 	mov	dptr,#_osal_msg_receive_task_id_1_154
      001146 F0               [24] 3741 	movx	@dptr,a
                                   3742 ;	../osal/common/OSAL.c:600: osal_msg_hdr_t *prevHdr = NULL;
      001147 90 03 8C         [24] 3743 	mov	dptr,#_osal_msg_receive_prevHdr_1_155
      00114A 74 00            [12] 3744 	mov	a,#0x00
      00114C F0               [24] 3745 	movx	@dptr,a
      00114D A3               [24] 3746 	inc	dptr
      00114E F0               [24] 3747 	movx	@dptr,a
      00114F A3               [24] 3748 	inc	dptr
      001150 F0               [24] 3749 	movx	@dptr,a
                                   3750 ;	../osal/common/OSAL.c:601: osal_msg_hdr_t *foundHdr = NULL;
      001151 90 03 8F         [24] 3751 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      001154 F0               [24] 3752 	movx	@dptr,a
      001155 A3               [24] 3753 	inc	dptr
      001156 F0               [24] 3754 	movx	@dptr,a
      001157 A3               [24] 3755 	inc	dptr
      001158 F0               [24] 3756 	movx	@dptr,a
                                   3757 ;	../osal/common/OSAL.c:605: HAL_ENTER_CRITICAL_SECTION(intState);
      001159 90 03 92         [24] 3758 	mov	dptr,#_osal_msg_receive_intState_1_155
      00115C A2 AF            [12] 3759 	mov	c,_EA
      00115E E4               [12] 3760 	clr	a
      00115F 33               [12] 3761 	rlc	a
      001160 F0               [24] 3762 	movx	@dptr,a
      001161 C2 AF            [12] 3763 	clr	_EA
                                   3764 ;	../osal/common/OSAL.c:608: listHdr = osal_qHead;
      001163 90 03 00         [24] 3765 	mov	dptr,#_osal_qHead
      001166 E0               [24] 3766 	movx	a,@dptr
      001167 FD               [12] 3767 	mov	r5,a
      001168 A3               [24] 3768 	inc	dptr
      001169 E0               [24] 3769 	movx	a,@dptr
      00116A FE               [12] 3770 	mov	r6,a
      00116B A3               [24] 3771 	inc	dptr
      00116C E0               [24] 3772 	movx	a,@dptr
      00116D FF               [12] 3773 	mov	r7,a
      00116E 90 03 89         [24] 3774 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      001171 ED               [12] 3775 	mov	a,r5
      001172 F0               [24] 3776 	movx	@dptr,a
      001173 EE               [12] 3777 	mov	a,r6
      001174 A3               [24] 3778 	inc	dptr
      001175 F0               [24] 3779 	movx	@dptr,a
      001176 EF               [12] 3780 	mov	a,r7
      001177 A3               [24] 3781 	inc	dptr
      001178 F0               [24] 3782 	movx	@dptr,a
                                   3783 ;	../osal/common/OSAL.c:611: while ( listHdr != NULL )
      001179 90 03 88         [24] 3784 	mov	dptr,#_osal_msg_receive_task_id_1_154
      00117C E0               [24] 3785 	movx	a,@dptr
      00117D FF               [12] 3786 	mov	r7,a
      00117E                       3787 00114$:
      00117E 90 03 89         [24] 3788 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      001181 E0               [24] 3789 	movx	a,@dptr
      001182 FC               [12] 3790 	mov	r4,a
      001183 A3               [24] 3791 	inc	dptr
      001184 E0               [24] 3792 	movx	a,@dptr
      001185 FD               [12] 3793 	mov	r5,a
      001186 A3               [24] 3794 	inc	dptr
      001187 E0               [24] 3795 	movx	a,@dptr
      001188 FE               [12] 3796 	mov	r6,a
      001189 EC               [12] 3797 	mov	a,r4
      00118A 4D               [12] 3798 	orl	a,r5
      00118B 70 03            [24] 3799 	jnz	00148$
      00118D 02 12 3B         [24] 3800 	ljmp	00116$
      001190                       3801 00148$:
                                   3802 ;	../osal/common/OSAL.c:613: if ( (listHdr - 1)->dest_id == task_id )
      001190 90 03 89         [24] 3803 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      001193 E0               [24] 3804 	movx	a,@dptr
      001194 FC               [12] 3805 	mov	r4,a
      001195 A3               [24] 3806 	inc	dptr
      001196 E0               [24] 3807 	movx	a,@dptr
      001197 FD               [12] 3808 	mov	r5,a
      001198 A3               [24] 3809 	inc	dptr
      001199 E0               [24] 3810 	movx	a,@dptr
      00119A FE               [12] 3811 	mov	r6,a
      00119B 74 FF            [12] 3812 	mov	a,#0xFF
      00119D 2C               [12] 3813 	add	a,r4
      00119E FC               [12] 3814 	mov	r4,a
      00119F 74 FF            [12] 3815 	mov	a,#0xFF
      0011A1 3D               [12] 3816 	addc	a,r5
      0011A2 FD               [12] 3817 	mov	r5,a
      0011A3 8C 82            [24] 3818 	mov	dpl,r4
      0011A5 8D 83            [24] 3819 	mov	dph,r5
      0011A7 8E F0            [24] 3820 	mov	b,r6
      0011A9 12 5B 16         [24] 3821 	lcall	__gptrget
      0011AC FC               [12] 3822 	mov	r4,a
      0011AD EC               [12] 3823 	mov	a,r4
      0011AE B5 07 02         [24] 3824 	cjne	a,ar7,00149$
      0011B1 80 03            [24] 3825 	sjmp	00150$
      0011B3                       3826 00149$:
      0011B3 02 11 DE         [24] 3827 	ljmp	00111$
      0011B6                       3828 00150$:
                                   3829 ;	../osal/common/OSAL.c:615: if ( foundHdr == NULL )
      0011B6 90 03 8F         [24] 3830 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      0011B9 E0               [24] 3831 	movx	a,@dptr
      0011BA FC               [12] 3832 	mov	r4,a
      0011BB A3               [24] 3833 	inc	dptr
      0011BC E0               [24] 3834 	movx	a,@dptr
      0011BD FD               [12] 3835 	mov	r5,a
      0011BE A3               [24] 3836 	inc	dptr
      0011BF E0               [24] 3837 	movx	a,@dptr
      0011C0 FE               [12] 3838 	mov	r6,a
      0011C1 EC               [12] 3839 	mov	a,r4
      0011C2 4D               [12] 3840 	orl	a,r5
      0011C3 60 03            [24] 3841 	jz	00151$
      0011C5 02 12 3B         [24] 3842 	ljmp	00116$
      0011C8                       3843 00151$:
                                   3844 ;	../osal/common/OSAL.c:618: foundHdr = listHdr;
      0011C8 90 03 89         [24] 3845 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      0011CB E0               [24] 3846 	movx	a,@dptr
      0011CC FC               [12] 3847 	mov	r4,a
      0011CD A3               [24] 3848 	inc	dptr
      0011CE E0               [24] 3849 	movx	a,@dptr
      0011CF FD               [12] 3850 	mov	r5,a
      0011D0 A3               [24] 3851 	inc	dptr
      0011D1 E0               [24] 3852 	movx	a,@dptr
      0011D2 FE               [12] 3853 	mov	r6,a
      0011D3 90 03 8F         [24] 3854 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      0011D6 EC               [12] 3855 	mov	a,r4
      0011D7 F0               [24] 3856 	movx	@dptr,a
      0011D8 ED               [12] 3857 	mov	a,r5
      0011D9 A3               [24] 3858 	inc	dptr
      0011DA F0               [24] 3859 	movx	@dptr,a
      0011DB EE               [12] 3860 	mov	a,r6
      0011DC A3               [24] 3861 	inc	dptr
      0011DD F0               [24] 3862 	movx	@dptr,a
                                   3863 ;	../osal/common/OSAL.c:623: break;
      0011DE                       3864 00111$:
                                   3865 ;	../osal/common/OSAL.c:626: if ( foundHdr == NULL )
      0011DE 90 03 8F         [24] 3866 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      0011E1 E0               [24] 3867 	movx	a,@dptr
      0011E2 FC               [12] 3868 	mov	r4,a
      0011E3 A3               [24] 3869 	inc	dptr
      0011E4 E0               [24] 3870 	movx	a,@dptr
      0011E5 FD               [12] 3871 	mov	r5,a
      0011E6 A3               [24] 3872 	inc	dptr
      0011E7 E0               [24] 3873 	movx	a,@dptr
      0011E8 FE               [12] 3874 	mov	r6,a
      0011E9 EC               [12] 3875 	mov	a,r4
      0011EA 4D               [12] 3876 	orl	a,r5
      0011EB 60 03            [24] 3877 	jz	00152$
      0011ED 02 12 06         [24] 3878 	ljmp	00113$
      0011F0                       3879 00152$:
                                   3880 ;	../osal/common/OSAL.c:628: prevHdr = listHdr;
      0011F0 90 03 89         [24] 3881 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      0011F3 E0               [24] 3882 	movx	a,@dptr
      0011F4 FC               [12] 3883 	mov	r4,a
      0011F5 A3               [24] 3884 	inc	dptr
      0011F6 E0               [24] 3885 	movx	a,@dptr
      0011F7 FD               [12] 3886 	mov	r5,a
      0011F8 A3               [24] 3887 	inc	dptr
      0011F9 E0               [24] 3888 	movx	a,@dptr
      0011FA FE               [12] 3889 	mov	r6,a
      0011FB 90 03 8C         [24] 3890 	mov	dptr,#_osal_msg_receive_prevHdr_1_155
      0011FE EC               [12] 3891 	mov	a,r4
      0011FF F0               [24] 3892 	movx	@dptr,a
      001200 ED               [12] 3893 	mov	a,r5
      001201 A3               [24] 3894 	inc	dptr
      001202 F0               [24] 3895 	movx	@dptr,a
      001203 EE               [12] 3896 	mov	a,r6
      001204 A3               [24] 3897 	inc	dptr
      001205 F0               [24] 3898 	movx	@dptr,a
      001206                       3899 00113$:
                                   3900 ;	../osal/common/OSAL.c:630: listHdr = OSAL_MSG_NEXT( listHdr );
      001206 90 03 89         [24] 3901 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      001209 E0               [24] 3902 	movx	a,@dptr
      00120A FC               [12] 3903 	mov	r4,a
      00120B A3               [24] 3904 	inc	dptr
      00120C E0               [24] 3905 	movx	a,@dptr
      00120D FD               [12] 3906 	mov	r5,a
      00120E A3               [24] 3907 	inc	dptr
      00120F E0               [24] 3908 	movx	a,@dptr
      001210 FE               [12] 3909 	mov	r6,a
      001211 EC               [12] 3910 	mov	a,r4
      001212 24 FA            [12] 3911 	add	a,#0xFA
      001214 FC               [12] 3912 	mov	r4,a
      001215 ED               [12] 3913 	mov	a,r5
      001216 34 FF            [12] 3914 	addc	a,#0xFF
      001218 FD               [12] 3915 	mov	r5,a
      001219 8C 82            [24] 3916 	mov	dpl,r4
      00121B 8D 83            [24] 3917 	mov	dph,r5
      00121D 8E F0            [24] 3918 	mov	b,r6
      00121F 12 5B 16         [24] 3919 	lcall	__gptrget
      001222 FC               [12] 3920 	mov	r4,a
      001223 A3               [24] 3921 	inc	dptr
      001224 12 5B 16         [24] 3922 	lcall	__gptrget
      001227 FD               [12] 3923 	mov	r5,a
      001228 A3               [24] 3924 	inc	dptr
      001229 12 5B 16         [24] 3925 	lcall	__gptrget
      00122C FE               [12] 3926 	mov	r6,a
      00122D 90 03 89         [24] 3927 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      001230 EC               [12] 3928 	mov	a,r4
      001231 F0               [24] 3929 	movx	@dptr,a
      001232 ED               [12] 3930 	mov	a,r5
      001233 A3               [24] 3931 	inc	dptr
      001234 F0               [24] 3932 	movx	@dptr,a
      001235 EE               [12] 3933 	mov	a,r6
      001236 A3               [24] 3934 	inc	dptr
      001237 F0               [24] 3935 	movx	@dptr,a
      001238 02 11 7E         [24] 3936 	ljmp	00114$
      00123B                       3937 00116$:
                                   3938 ;	../osal/common/OSAL.c:634: if ( listHdr != NULL )
      00123B 90 03 89         [24] 3939 	mov	dptr,#_osal_msg_receive_listHdr_1_155
      00123E E0               [24] 3940 	movx	a,@dptr
      00123F FD               [12] 3941 	mov	r5,a
      001240 A3               [24] 3942 	inc	dptr
      001241 E0               [24] 3943 	movx	a,@dptr
      001242 FE               [12] 3944 	mov	r6,a
      001243 A3               [24] 3945 	inc	dptr
      001244 E0               [24] 3946 	movx	a,@dptr
      001245 FF               [12] 3947 	mov	r7,a
      001246 ED               [12] 3948 	mov	a,r5
      001247 4E               [12] 3949 	orl	a,r6
      001248 70 03            [24] 3950 	jnz	00153$
      00124A 02 12 64         [24] 3951 	ljmp	00118$
      00124D                       3952 00153$:
                                   3953 ;	../osal/common/OSAL.c:637: osal_set_event( task_id, SYS_EVENT_MSG );
      00124D 90 03 88         [24] 3954 	mov	dptr,#_osal_msg_receive_task_id_1_154
      001250 E0               [24] 3955 	movx	a,@dptr
      001251 FF               [12] 3956 	mov	r7,a
      001252 90 03 C6         [24] 3957 	mov	dptr,#_osal_set_event_PARM_2
      001255 74 00            [12] 3958 	mov	a,#0x00
      001257 F0               [24] 3959 	movx	@dptr,a
      001258 74 80            [12] 3960 	mov	a,#0x80
      00125A A3               [24] 3961 	inc	dptr
      00125B F0               [24] 3962 	movx	@dptr,a
      00125C 8F 82            [24] 3963 	mov	dpl,r7
      00125E 12 19 62         [24] 3964 	lcall	_osal_set_event
      001261 02 12 78         [24] 3965 	ljmp	00119$
      001264                       3966 00118$:
                                   3967 ;	../osal/common/OSAL.c:642: osal_clear_event( task_id, SYS_EVENT_MSG );
      001264 90 03 88         [24] 3968 	mov	dptr,#_osal_msg_receive_task_id_1_154
      001267 E0               [24] 3969 	movx	a,@dptr
      001268 FF               [12] 3970 	mov	r7,a
      001269 90 03 C9         [24] 3971 	mov	dptr,#_osal_clear_event_PARM_2
      00126C 74 00            [12] 3972 	mov	a,#0x00
      00126E F0               [24] 3973 	movx	@dptr,a
      00126F 74 80            [12] 3974 	mov	a,#0x80
      001271 A3               [24] 3975 	inc	dptr
      001272 F0               [24] 3976 	movx	@dptr,a
      001273 8F 82            [24] 3977 	mov	dpl,r7
      001275 12 19 C9         [24] 3978 	lcall	_osal_clear_event
      001278                       3979 00119$:
                                   3980 ;	../osal/common/OSAL.c:646: if ( foundHdr != NULL )
      001278 90 03 8F         [24] 3981 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      00127B E0               [24] 3982 	movx	a,@dptr
      00127C FD               [12] 3983 	mov	r5,a
      00127D A3               [24] 3984 	inc	dptr
      00127E E0               [24] 3985 	movx	a,@dptr
      00127F FE               [12] 3986 	mov	r6,a
      001280 A3               [24] 3987 	inc	dptr
      001281 E0               [24] 3988 	movx	a,@dptr
      001282 FF               [12] 3989 	mov	r7,a
      001283 ED               [12] 3990 	mov	a,r5
      001284 4E               [12] 3991 	orl	a,r6
      001285 70 03            [24] 3992 	jnz	00154$
      001287 02 12 C2         [24] 3993 	ljmp	00122$
      00128A                       3994 00154$:
                                   3995 ;	../osal/common/OSAL.c:649: osal_msg_extract( &osal_qHead, foundHdr, prevHdr );
      00128A 90 03 8F         [24] 3996 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      00128D E0               [24] 3997 	movx	a,@dptr
      00128E FD               [12] 3998 	mov	r5,a
      00128F A3               [24] 3999 	inc	dptr
      001290 E0               [24] 4000 	movx	a,@dptr
      001291 FE               [12] 4001 	mov	r6,a
      001292 A3               [24] 4002 	inc	dptr
      001293 E0               [24] 4003 	movx	a,@dptr
      001294 FF               [12] 4004 	mov	r7,a
      001295 90 03 8C         [24] 4005 	mov	dptr,#_osal_msg_receive_prevHdr_1_155
      001298 E0               [24] 4006 	movx	a,@dptr
      001299 FA               [12] 4007 	mov	r2,a
      00129A A3               [24] 4008 	inc	dptr
      00129B E0               [24] 4009 	movx	a,@dptr
      00129C FB               [12] 4010 	mov	r3,a
      00129D A3               [24] 4011 	inc	dptr
      00129E E0               [24] 4012 	movx	a,@dptr
      00129F FC               [12] 4013 	mov	r4,a
      0012A0 90 03 B0         [24] 4014 	mov	dptr,#_osal_msg_extract_PARM_2
      0012A3 ED               [12] 4015 	mov	a,r5
      0012A4 F0               [24] 4016 	movx	@dptr,a
      0012A5 EE               [12] 4017 	mov	a,r6
      0012A6 A3               [24] 4018 	inc	dptr
      0012A7 F0               [24] 4019 	movx	@dptr,a
      0012A8 EF               [12] 4020 	mov	a,r7
      0012A9 A3               [24] 4021 	inc	dptr
      0012AA F0               [24] 4022 	movx	@dptr,a
      0012AB 90 03 B3         [24] 4023 	mov	dptr,#_osal_msg_extract_PARM_3
      0012AE EA               [12] 4024 	mov	a,r2
      0012AF F0               [24] 4025 	movx	@dptr,a
      0012B0 EB               [12] 4026 	mov	a,r3
      0012B1 A3               [24] 4027 	inc	dptr
      0012B2 F0               [24] 4028 	movx	@dptr,a
      0012B3 EC               [12] 4029 	mov	a,r4
      0012B4 A3               [24] 4030 	inc	dptr
      0012B5 F0               [24] 4031 	movx	@dptr,a
      0012B6 75 82 00         [24] 4032 	mov	dpl,#_osal_qHead
      0012B9 75 83 03         [24] 4033 	mov	dph,#(_osal_qHead >> 8)
      0012BC 75 F0 00         [24] 4034 	mov	b,#0x00
      0012BF 12 16 B6         [24] 4035 	lcall	_osal_msg_extract
                                   4036 ;	../osal/common/OSAL.c:653: HAL_EXIT_CRITICAL_SECTION(intState);
      0012C2                       4037 00122$:
      0012C2 90 03 92         [24] 4038 	mov	dptr,#_osal_msg_receive_intState_1_155
      0012C5 E0               [24] 4039 	movx	a,@dptr
      0012C6 FF               [12] 4040 	mov	r7,a
      0012C7 EF               [12] 4041 	mov	a,r7
      0012C8 24 FF            [12] 4042 	add	a,#0xff
      0012CA 92 AF            [24] 4043 	mov	_EA,c
                                   4044 ;	../osal/common/OSAL.c:655: return ( (uint8*) foundHdr );
      0012CC 90 03 8F         [24] 4045 	mov	dptr,#_osal_msg_receive_foundHdr_1_155
      0012CF E0               [24] 4046 	movx	a,@dptr
      0012D0 FD               [12] 4047 	mov	r5,a
      0012D1 A3               [24] 4048 	inc	dptr
      0012D2 E0               [24] 4049 	movx	a,@dptr
      0012D3 FE               [12] 4050 	mov	r6,a
      0012D4 A3               [24] 4051 	inc	dptr
      0012D5 E0               [24] 4052 	movx	a,@dptr
      0012D6 FF               [12] 4053 	mov	r7,a
      0012D7 8D 82            [24] 4054 	mov	dpl,r5
      0012D9 8E 83            [24] 4055 	mov	dph,r6
      0012DB 8F F0            [24] 4056 	mov	b,r7
      0012DD                       4057 00125$:
      0012DD 22               [24] 4058 	ret
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
      0012DE                       4071 _osal_msg_find:
      0012DE E5 82            [12] 4072 	mov	a,dpl
      0012E0 90 03 94         [24] 4073 	mov	dptr,#_osal_msg_find_task_id_1_167
      0012E3 F0               [24] 4074 	movx	@dptr,a
                                   4075 ;	../osal/common/OSAL.c:681: HAL_ENTER_CRITICAL_SECTION(intState);  // Hold off interrupts.
      0012E4 90 03 98         [24] 4076 	mov	dptr,#_osal_msg_find_intState_1_168
      0012E7 A2 AF            [12] 4077 	mov	c,_EA
      0012E9 E4               [12] 4078 	clr	a
      0012EA 33               [12] 4079 	rlc	a
      0012EB F0               [24] 4080 	movx	@dptr,a
      0012EC C2 AF            [12] 4081 	clr	_EA
                                   4082 ;	../osal/common/OSAL.c:683: pHdr = osal_qHead;  // Point to the top of the queue.
      0012EE 90 03 00         [24] 4083 	mov	dptr,#_osal_qHead
      0012F1 E0               [24] 4084 	movx	a,@dptr
      0012F2 FD               [12] 4085 	mov	r5,a
      0012F3 A3               [24] 4086 	inc	dptr
      0012F4 E0               [24] 4087 	movx	a,@dptr
      0012F5 FE               [12] 4088 	mov	r6,a
      0012F6 A3               [24] 4089 	inc	dptr
      0012F7 E0               [24] 4090 	movx	a,@dptr
      0012F8 FF               [12] 4091 	mov	r7,a
      0012F9 90 03 95         [24] 4092 	mov	dptr,#_osal_msg_find_pHdr_1_168
      0012FC ED               [12] 4093 	mov	a,r5
      0012FD F0               [24] 4094 	movx	@dptr,a
      0012FE EE               [12] 4095 	mov	a,r6
      0012FF A3               [24] 4096 	inc	dptr
      001300 F0               [24] 4097 	movx	@dptr,a
      001301 EF               [12] 4098 	mov	a,r7
      001302 A3               [24] 4099 	inc	dptr
      001303 F0               [24] 4100 	movx	@dptr,a
                                   4101 ;	../osal/common/OSAL.c:686: while (pHdr != NULL)
      001304 90 03 93         [24] 4102 	mov	dptr,#_osal_msg_find_PARM_2
      001307 E0               [24] 4103 	movx	a,@dptr
      001308 FF               [12] 4104 	mov	r7,a
      001309 90 03 94         [24] 4105 	mov	dptr,#_osal_msg_find_task_id_1_167
      00130C E0               [24] 4106 	movx	a,@dptr
      00130D FE               [12] 4107 	mov	r6,a
      00130E                       4108 00110$:
      00130E 90 03 95         [24] 4109 	mov	dptr,#_osal_msg_find_pHdr_1_168
      001311 E0               [24] 4110 	movx	a,@dptr
      001312 FB               [12] 4111 	mov	r3,a
      001313 A3               [24] 4112 	inc	dptr
      001314 E0               [24] 4113 	movx	a,@dptr
      001315 FC               [12] 4114 	mov	r4,a
      001316 A3               [24] 4115 	inc	dptr
      001317 E0               [24] 4116 	movx	a,@dptr
      001318 FD               [12] 4117 	mov	r5,a
      001319 EB               [12] 4118 	mov	a,r3
      00131A 4C               [12] 4119 	orl	a,r4
      00131B 70 03            [24] 4120 	jnz	00127$
      00131D 02 13 97         [24] 4121 	ljmp	00113$
      001320                       4122 00127$:
                                   4123 ;	../osal/common/OSAL.c:688: if (((pHdr-1)->dest_id == task_id) && (((osal_event_hdr_t *)pHdr)->event == event))
      001320 90 03 95         [24] 4124 	mov	dptr,#_osal_msg_find_pHdr_1_168
      001323 E0               [24] 4125 	movx	a,@dptr
      001324 FB               [12] 4126 	mov	r3,a
      001325 A3               [24] 4127 	inc	dptr
      001326 E0               [24] 4128 	movx	a,@dptr
      001327 FC               [12] 4129 	mov	r4,a
      001328 A3               [24] 4130 	inc	dptr
      001329 E0               [24] 4131 	movx	a,@dptr
      00132A FD               [12] 4132 	mov	r5,a
      00132B 74 FF            [12] 4133 	mov	a,#0xFF
      00132D 2B               [12] 4134 	add	a,r3
      00132E FB               [12] 4135 	mov	r3,a
      00132F 74 FF            [12] 4136 	mov	a,#0xFF
      001331 3C               [12] 4137 	addc	a,r4
      001332 FC               [12] 4138 	mov	r4,a
      001333 8B 82            [24] 4139 	mov	dpl,r3
      001335 8C 83            [24] 4140 	mov	dph,r4
      001337 8D F0            [24] 4141 	mov	b,r5
      001339 12 5B 16         [24] 4142 	lcall	__gptrget
      00133C FB               [12] 4143 	mov	r3,a
      00133D EB               [12] 4144 	mov	a,r3
      00133E B5 06 02         [24] 4145 	cjne	a,ar6,00128$
      001341 80 03            [24] 4146 	sjmp	00129$
      001343                       4147 00128$:
      001343 02 13 62         [24] 4148 	ljmp	00108$
      001346                       4149 00129$:
      001346 90 03 95         [24] 4150 	mov	dptr,#_osal_msg_find_pHdr_1_168
      001349 E0               [24] 4151 	movx	a,@dptr
      00134A FB               [12] 4152 	mov	r3,a
      00134B A3               [24] 4153 	inc	dptr
      00134C E0               [24] 4154 	movx	a,@dptr
      00134D FC               [12] 4155 	mov	r4,a
      00134E A3               [24] 4156 	inc	dptr
      00134F E0               [24] 4157 	movx	a,@dptr
      001350 FD               [12] 4158 	mov	r5,a
      001351 8B 82            [24] 4159 	mov	dpl,r3
      001353 8C 83            [24] 4160 	mov	dph,r4
      001355 8D F0            [24] 4161 	mov	b,r5
      001357 12 5B 16         [24] 4162 	lcall	__gptrget
      00135A FB               [12] 4163 	mov	r3,a
      00135B EB               [12] 4164 	mov	a,r3
      00135C B5 07 03         [24] 4165 	cjne	a,ar7,00130$
      00135F 02 13 97         [24] 4166 	ljmp	00113$
      001362                       4167 00130$:
                                   4168 ;	../osal/common/OSAL.c:690: break;
      001362                       4169 00108$:
                                   4170 ;	../osal/common/OSAL.c:693: pHdr = OSAL_MSG_NEXT(pHdr);
      001362 90 03 95         [24] 4171 	mov	dptr,#_osal_msg_find_pHdr_1_168
      001365 E0               [24] 4172 	movx	a,@dptr
      001366 FB               [12] 4173 	mov	r3,a
      001367 A3               [24] 4174 	inc	dptr
      001368 E0               [24] 4175 	movx	a,@dptr
      001369 FC               [12] 4176 	mov	r4,a
      00136A A3               [24] 4177 	inc	dptr
      00136B E0               [24] 4178 	movx	a,@dptr
      00136C FD               [12] 4179 	mov	r5,a
      00136D EB               [12] 4180 	mov	a,r3
      00136E 24 FA            [12] 4181 	add	a,#0xFA
      001370 FB               [12] 4182 	mov	r3,a
      001371 EC               [12] 4183 	mov	a,r4
      001372 34 FF            [12] 4184 	addc	a,#0xFF
      001374 FC               [12] 4185 	mov	r4,a
      001375 8B 82            [24] 4186 	mov	dpl,r3
      001377 8C 83            [24] 4187 	mov	dph,r4
      001379 8D F0            [24] 4188 	mov	b,r5
      00137B 12 5B 16         [24] 4189 	lcall	__gptrget
      00137E FB               [12] 4190 	mov	r3,a
      00137F A3               [24] 4191 	inc	dptr
      001380 12 5B 16         [24] 4192 	lcall	__gptrget
      001383 FC               [12] 4193 	mov	r4,a
      001384 A3               [24] 4194 	inc	dptr
      001385 12 5B 16         [24] 4195 	lcall	__gptrget
      001388 FD               [12] 4196 	mov	r5,a
      001389 90 03 95         [24] 4197 	mov	dptr,#_osal_msg_find_pHdr_1_168
      00138C EB               [12] 4198 	mov	a,r3
      00138D F0               [24] 4199 	movx	@dptr,a
      00138E EC               [12] 4200 	mov	a,r4
      00138F A3               [24] 4201 	inc	dptr
      001390 F0               [24] 4202 	movx	@dptr,a
      001391 ED               [12] 4203 	mov	a,r5
      001392 A3               [24] 4204 	inc	dptr
      001393 F0               [24] 4205 	movx	@dptr,a
      001394 02 13 0E         [24] 4206 	ljmp	00110$
                                   4207 ;	../osal/common/OSAL.c:696: HAL_EXIT_CRITICAL_SECTION(intState);  // Release interrupts.
      001397                       4208 00113$:
      001397 90 03 98         [24] 4209 	mov	dptr,#_osal_msg_find_intState_1_168
      00139A E0               [24] 4210 	movx	a,@dptr
      00139B FF               [12] 4211 	mov	r7,a
      00139C EF               [12] 4212 	mov	a,r7
      00139D 24 FF            [12] 4213 	add	a,#0xff
      00139F 92 AF            [24] 4214 	mov	_EA,c
                                   4215 ;	../osal/common/OSAL.c:698: return (osal_event_hdr_t *)pHdr;
      0013A1 90 03 95         [24] 4216 	mov	dptr,#_osal_msg_find_pHdr_1_168
      0013A4 E0               [24] 4217 	movx	a,@dptr
      0013A5 FD               [12] 4218 	mov	r5,a
      0013A6 A3               [24] 4219 	inc	dptr
      0013A7 E0               [24] 4220 	movx	a,@dptr
      0013A8 FE               [12] 4221 	mov	r6,a
      0013A9 A3               [24] 4222 	inc	dptr
      0013AA E0               [24] 4223 	movx	a,@dptr
      0013AB FF               [12] 4224 	mov	r7,a
      0013AC 8D 82            [24] 4225 	mov	dpl,r5
      0013AE 8E 83            [24] 4226 	mov	dph,r6
      0013B0 8F F0            [24] 4227 	mov	b,r7
      0013B2                       4228 00116$:
      0013B2 22               [24] 4229 	ret
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
      0013B3                       4242 _osal_msg_enqueue:
      0013B3 AF F0            [24] 4243 	mov	r7,b
      0013B5 AE 83            [24] 4244 	mov	r6,dph
      0013B7 E5 82            [12] 4245 	mov	a,dpl
      0013B9 90 03 9C         [24] 4246 	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
      0013BC F0               [24] 4247 	movx	@dptr,a
      0013BD EE               [12] 4248 	mov	a,r6
      0013BE A3               [24] 4249 	inc	dptr
      0013BF F0               [24] 4250 	movx	@dptr,a
      0013C0 EF               [12] 4251 	mov	a,r7
      0013C1 A3               [24] 4252 	inc	dptr
      0013C2 F0               [24] 4253 	movx	@dptr,a
                                   4254 ;	../osal/common/OSAL.c:719: HAL_ENTER_CRITICAL_SECTION(intState);
      0013C3 90 03 A2         [24] 4255 	mov	dptr,#_osal_msg_enqueue_intState_1_175
      0013C6 A2 AF            [12] 4256 	mov	c,_EA
      0013C8 E4               [12] 4257 	clr	a
      0013C9 33               [12] 4258 	rlc	a
      0013CA F0               [24] 4259 	movx	@dptr,a
      0013CB C2 AF            [12] 4260 	clr	_EA
                                   4261 ;	../osal/common/OSAL.c:721: OSAL_MSG_NEXT( msg_ptr ) = NULL;
      0013CD 90 03 99         [24] 4262 	mov	dptr,#_osal_msg_enqueue_PARM_2
      0013D0 E0               [24] 4263 	movx	a,@dptr
      0013D1 FD               [12] 4264 	mov	r5,a
      0013D2 A3               [24] 4265 	inc	dptr
      0013D3 E0               [24] 4266 	movx	a,@dptr
      0013D4 FE               [12] 4267 	mov	r6,a
      0013D5 A3               [24] 4268 	inc	dptr
      0013D6 E0               [24] 4269 	movx	a,@dptr
      0013D7 FF               [12] 4270 	mov	r7,a
      0013D8 ED               [12] 4271 	mov	a,r5
      0013D9 24 FA            [12] 4272 	add	a,#0xFA
      0013DB FD               [12] 4273 	mov	r5,a
      0013DC EE               [12] 4274 	mov	a,r6
      0013DD 34 FF            [12] 4275 	addc	a,#0xFF
      0013DF FE               [12] 4276 	mov	r6,a
      0013E0 8D 82            [24] 4277 	mov	dpl,r5
      0013E2 8E 83            [24] 4278 	mov	dph,r6
      0013E4 8F F0            [24] 4279 	mov	b,r7
      0013E6 74 00            [12] 4280 	mov	a,#0x00
      0013E8 12 59 AA         [24] 4281 	lcall	__gptrput
      0013EB A3               [24] 4282 	inc	dptr
      0013EC 12 59 AA         [24] 4283 	lcall	__gptrput
      0013EF A3               [24] 4284 	inc	dptr
      0013F0 12 59 AA         [24] 4285 	lcall	__gptrput
                                   4286 ;	../osal/common/OSAL.c:723: if ( *q_ptr == NULL )
      0013F3 90 03 9C         [24] 4287 	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
      0013F6 E0               [24] 4288 	movx	a,@dptr
      0013F7 FD               [12] 4289 	mov	r5,a
      0013F8 A3               [24] 4290 	inc	dptr
      0013F9 E0               [24] 4291 	movx	a,@dptr
      0013FA FE               [12] 4292 	mov	r6,a
      0013FB A3               [24] 4293 	inc	dptr
      0013FC E0               [24] 4294 	movx	a,@dptr
      0013FD FF               [12] 4295 	mov	r7,a
      0013FE 8D 82            [24] 4296 	mov	dpl,r5
      001400 8E 83            [24] 4297 	mov	dph,r6
      001402 8F F0            [24] 4298 	mov	b,r7
      001404 12 5B 16         [24] 4299 	lcall	__gptrget
      001407 FD               [12] 4300 	mov	r5,a
      001408 A3               [24] 4301 	inc	dptr
      001409 12 5B 16         [24] 4302 	lcall	__gptrget
      00140C FE               [12] 4303 	mov	r6,a
      00140D A3               [24] 4304 	inc	dptr
      00140E 12 5B 16         [24] 4305 	lcall	__gptrget
      001411 FF               [12] 4306 	mov	r7,a
      001412 ED               [12] 4307 	mov	a,r5
      001413 4E               [12] 4308 	orl	a,r6
      001414 60 03            [24] 4309 	jz	00128$
      001416 02 14 46         [24] 4310 	ljmp	00109$
      001419                       4311 00128$:
                                   4312 ;	../osal/common/OSAL.c:725: *q_ptr = msg_ptr;
      001419 90 03 9C         [24] 4313 	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
      00141C E0               [24] 4314 	movx	a,@dptr
      00141D FD               [12] 4315 	mov	r5,a
      00141E A3               [24] 4316 	inc	dptr
      00141F E0               [24] 4317 	movx	a,@dptr
      001420 FE               [12] 4318 	mov	r6,a
      001421 A3               [24] 4319 	inc	dptr
      001422 E0               [24] 4320 	movx	a,@dptr
      001423 FF               [12] 4321 	mov	r7,a
      001424 90 03 99         [24] 4322 	mov	dptr,#_osal_msg_enqueue_PARM_2
      001427 E0               [24] 4323 	movx	a,@dptr
      001428 FA               [12] 4324 	mov	r2,a
      001429 A3               [24] 4325 	inc	dptr
      00142A E0               [24] 4326 	movx	a,@dptr
      00142B FB               [12] 4327 	mov	r3,a
      00142C A3               [24] 4328 	inc	dptr
      00142D E0               [24] 4329 	movx	a,@dptr
      00142E FC               [12] 4330 	mov	r4,a
      00142F 8D 82            [24] 4331 	mov	dpl,r5
      001431 8E 83            [24] 4332 	mov	dph,r6
      001433 8F F0            [24] 4333 	mov	b,r7
      001435 EA               [12] 4334 	mov	a,r2
      001436 12 59 AA         [24] 4335 	lcall	__gptrput
      001439 A3               [24] 4336 	inc	dptr
      00143A EB               [12] 4337 	mov	a,r3
      00143B 12 59 AA         [24] 4338 	lcall	__gptrput
      00143E A3               [24] 4339 	inc	dptr
      00143F EC               [12] 4340 	mov	a,r4
      001440 12 59 AA         [24] 4341 	lcall	__gptrput
      001443 02 15 1A         [24] 4342 	ljmp	00111$
      001446                       4343 00109$:
                                   4344 ;	../osal/common/OSAL.c:730: for ( list = *q_ptr; OSAL_MSG_NEXT( list ) != NULL; list = OSAL_MSG_NEXT( list ) );
      001446 90 03 9C         [24] 4345 	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
      001449 E0               [24] 4346 	movx	a,@dptr
      00144A FD               [12] 4347 	mov	r5,a
      00144B A3               [24] 4348 	inc	dptr
      00144C E0               [24] 4349 	movx	a,@dptr
      00144D FE               [12] 4350 	mov	r6,a
      00144E A3               [24] 4351 	inc	dptr
      00144F E0               [24] 4352 	movx	a,@dptr
      001450 FF               [12] 4353 	mov	r7,a
      001451 8D 82            [24] 4354 	mov	dpl,r5
      001453 8E 83            [24] 4355 	mov	dph,r6
      001455 8F F0            [24] 4356 	mov	b,r7
      001457 12 5B 16         [24] 4357 	lcall	__gptrget
      00145A FD               [12] 4358 	mov	r5,a
      00145B A3               [24] 4359 	inc	dptr
      00145C 12 5B 16         [24] 4360 	lcall	__gptrget
      00145F FE               [12] 4361 	mov	r6,a
      001460 A3               [24] 4362 	inc	dptr
      001461 12 5B 16         [24] 4363 	lcall	__gptrget
      001464 FF               [12] 4364 	mov	r7,a
      001465 90 03 9F         [24] 4365 	mov	dptr,#_osal_msg_enqueue_list_1_175
      001468 ED               [12] 4366 	mov	a,r5
      001469 F0               [24] 4367 	movx	@dptr,a
      00146A EE               [12] 4368 	mov	a,r6
      00146B A3               [24] 4369 	inc	dptr
      00146C F0               [24] 4370 	movx	@dptr,a
      00146D EF               [12] 4371 	mov	a,r7
      00146E A3               [24] 4372 	inc	dptr
      00146F F0               [24] 4373 	movx	@dptr,a
      001470                       4374 00115$:
      001470 90 03 9F         [24] 4375 	mov	dptr,#_osal_msg_enqueue_list_1_175
      001473 E0               [24] 4376 	movx	a,@dptr
      001474 FD               [12] 4377 	mov	r5,a
      001475 A3               [24] 4378 	inc	dptr
      001476 E0               [24] 4379 	movx	a,@dptr
      001477 FE               [12] 4380 	mov	r6,a
      001478 A3               [24] 4381 	inc	dptr
      001479 E0               [24] 4382 	movx	a,@dptr
      00147A FF               [12] 4383 	mov	r7,a
      00147B ED               [12] 4384 	mov	a,r5
      00147C 24 FA            [12] 4385 	add	a,#0xFA
      00147E FD               [12] 4386 	mov	r5,a
      00147F EE               [12] 4387 	mov	a,r6
      001480 34 FF            [12] 4388 	addc	a,#0xFF
      001482 FE               [12] 4389 	mov	r6,a
      001483 8D 82            [24] 4390 	mov	dpl,r5
      001485 8E 83            [24] 4391 	mov	dph,r6
      001487 8F F0            [24] 4392 	mov	b,r7
      001489 12 5B 16         [24] 4393 	lcall	__gptrget
      00148C FD               [12] 4394 	mov	r5,a
      00148D A3               [24] 4395 	inc	dptr
      00148E 12 5B 16         [24] 4396 	lcall	__gptrget
      001491 FE               [12] 4397 	mov	r6,a
      001492 A3               [24] 4398 	inc	dptr
      001493 12 5B 16         [24] 4399 	lcall	__gptrget
      001496 FF               [12] 4400 	mov	r7,a
      001497 74 00            [12] 4401 	mov	a,#0x00
      001499 C0 E0            [24] 4402 	push	acc
      00149B C0 E0            [24] 4403 	push	acc
      00149D C0 E0            [24] 4404 	push	acc
      00149F 8D 82            [24] 4405 	mov	dpl,r5
      0014A1 8E 83            [24] 4406 	mov	dph,r6
      0014A3 8F F0            [24] 4407 	mov	b,r7
      0014A5 12 00 06         [24] 4408 	lcall	___gptr_cmp
      0014A8 15 81            [12] 4409 	dec	sp
      0014AA 15 81            [12] 4410 	dec	sp
      0014AC 15 81            [12] 4411 	dec	sp
      0014AE 70 03            [24] 4412 	jnz	00129$
      0014B0 02 14 E8         [24] 4413 	ljmp	00107$
      0014B3                       4414 00129$:
      0014B3 90 03 9F         [24] 4415 	mov	dptr,#_osal_msg_enqueue_list_1_175
      0014B6 E0               [24] 4416 	movx	a,@dptr
      0014B7 FD               [12] 4417 	mov	r5,a
      0014B8 A3               [24] 4418 	inc	dptr
      0014B9 E0               [24] 4419 	movx	a,@dptr
      0014BA FE               [12] 4420 	mov	r6,a
      0014BB A3               [24] 4421 	inc	dptr
      0014BC E0               [24] 4422 	movx	a,@dptr
      0014BD FF               [12] 4423 	mov	r7,a
      0014BE ED               [12] 4424 	mov	a,r5
      0014BF 24 FA            [12] 4425 	add	a,#0xFA
      0014C1 FD               [12] 4426 	mov	r5,a
      0014C2 EE               [12] 4427 	mov	a,r6
      0014C3 34 FF            [12] 4428 	addc	a,#0xFF
      0014C5 FE               [12] 4429 	mov	r6,a
      0014C6 8D 82            [24] 4430 	mov	dpl,r5
      0014C8 8E 83            [24] 4431 	mov	dph,r6
      0014CA 8F F0            [24] 4432 	mov	b,r7
      0014CC 12 5B 16         [24] 4433 	lcall	__gptrget
      0014CF FD               [12] 4434 	mov	r5,a
      0014D0 A3               [24] 4435 	inc	dptr
      0014D1 12 5B 16         [24] 4436 	lcall	__gptrget
      0014D4 FE               [12] 4437 	mov	r6,a
      0014D5 A3               [24] 4438 	inc	dptr
      0014D6 12 5B 16         [24] 4439 	lcall	__gptrget
      0014D9 FF               [12] 4440 	mov	r7,a
      0014DA 90 03 9F         [24] 4441 	mov	dptr,#_osal_msg_enqueue_list_1_175
      0014DD ED               [12] 4442 	mov	a,r5
      0014DE F0               [24] 4443 	movx	@dptr,a
      0014DF EE               [12] 4444 	mov	a,r6
      0014E0 A3               [24] 4445 	inc	dptr
      0014E1 F0               [24] 4446 	movx	@dptr,a
      0014E2 EF               [12] 4447 	mov	a,r7
      0014E3 A3               [24] 4448 	inc	dptr
      0014E4 F0               [24] 4449 	movx	@dptr,a
      0014E5 02 14 70         [24] 4450 	ljmp	00115$
      0014E8                       4451 00107$:
                                   4452 ;	../osal/common/OSAL.c:733: OSAL_MSG_NEXT( list ) = msg_ptr;
      0014E8 90 03 9F         [24] 4453 	mov	dptr,#_osal_msg_enqueue_list_1_175
      0014EB E0               [24] 4454 	movx	a,@dptr
      0014EC FD               [12] 4455 	mov	r5,a
      0014ED A3               [24] 4456 	inc	dptr
      0014EE E0               [24] 4457 	movx	a,@dptr
      0014EF FE               [12] 4458 	mov	r6,a
      0014F0 A3               [24] 4459 	inc	dptr
      0014F1 E0               [24] 4460 	movx	a,@dptr
      0014F2 FF               [12] 4461 	mov	r7,a
      0014F3 ED               [12] 4462 	mov	a,r5
      0014F4 24 FA            [12] 4463 	add	a,#0xFA
      0014F6 FD               [12] 4464 	mov	r5,a
      0014F7 EE               [12] 4465 	mov	a,r6
      0014F8 34 FF            [12] 4466 	addc	a,#0xFF
      0014FA FE               [12] 4467 	mov	r6,a
      0014FB 90 03 99         [24] 4468 	mov	dptr,#_osal_msg_enqueue_PARM_2
      0014FE E0               [24] 4469 	movx	a,@dptr
      0014FF FA               [12] 4470 	mov	r2,a
      001500 A3               [24] 4471 	inc	dptr
      001501 E0               [24] 4472 	movx	a,@dptr
      001502 FB               [12] 4473 	mov	r3,a
      001503 A3               [24] 4474 	inc	dptr
      001504 E0               [24] 4475 	movx	a,@dptr
      001505 FC               [12] 4476 	mov	r4,a
      001506 8D 82            [24] 4477 	mov	dpl,r5
      001508 8E 83            [24] 4478 	mov	dph,r6
      00150A 8F F0            [24] 4479 	mov	b,r7
      00150C EA               [12] 4480 	mov	a,r2
      00150D 12 59 AA         [24] 4481 	lcall	__gptrput
      001510 A3               [24] 4482 	inc	dptr
      001511 EB               [12] 4483 	mov	a,r3
      001512 12 59 AA         [24] 4484 	lcall	__gptrput
      001515 A3               [24] 4485 	inc	dptr
      001516 EC               [12] 4486 	mov	a,r4
      001517 12 59 AA         [24] 4487 	lcall	__gptrput
                                   4488 ;	../osal/common/OSAL.c:737: HAL_EXIT_CRITICAL_SECTION(intState);
      00151A                       4489 00111$:
      00151A 90 03 A2         [24] 4490 	mov	dptr,#_osal_msg_enqueue_intState_1_175
      00151D E0               [24] 4491 	movx	a,@dptr
      00151E FF               [12] 4492 	mov	r7,a
      00151F EF               [12] 4493 	mov	a,r7
      001520 24 FF            [12] 4494 	add	a,#0xff
      001522 92 AF            [24] 4495 	mov	_EA,c
      001524                       4496 00117$:
      001524 22               [24] 4497 	ret
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
      001525                       4510 _osal_msg_dequeue:
      001525 AF F0            [24] 4511 	mov	r7,b
      001527 AE 83            [24] 4512 	mov	r6,dph
      001529 E5 82            [12] 4513 	mov	a,dpl
      00152B 90 03 A3         [24] 4514 	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
      00152E F0               [24] 4515 	movx	@dptr,a
      00152F EE               [12] 4516 	mov	a,r6
      001530 A3               [24] 4517 	inc	dptr
      001531 F0               [24] 4518 	movx	@dptr,a
      001532 EF               [12] 4519 	mov	a,r7
      001533 A3               [24] 4520 	inc	dptr
      001534 F0               [24] 4521 	movx	@dptr,a
                                   4522 ;	../osal/common/OSAL.c:753: void *msg_ptr = NULL;
      001535 90 03 A6         [24] 4523 	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
      001538 74 00            [12] 4524 	mov	a,#0x00
      00153A F0               [24] 4525 	movx	@dptr,a
      00153B A3               [24] 4526 	inc	dptr
      00153C F0               [24] 4527 	movx	@dptr,a
      00153D A3               [24] 4528 	inc	dptr
      00153E F0               [24] 4529 	movx	@dptr,a
                                   4530 ;	../osal/common/OSAL.c:757: HAL_ENTER_CRITICAL_SECTION(intState);
      00153F 90 03 A9         [24] 4531 	mov	dptr,#_osal_msg_dequeue_intState_1_182
      001542 A2 AF            [12] 4532 	mov	c,_EA
      001544 E4               [12] 4533 	clr	a
      001545 33               [12] 4534 	rlc	a
      001546 F0               [24] 4535 	movx	@dptr,a
      001547 C2 AF            [12] 4536 	clr	_EA
                                   4537 ;	../osal/common/OSAL.c:759: if ( *q_ptr != NULL )
      001549 90 03 A3         [24] 4538 	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
      00154C E0               [24] 4539 	movx	a,@dptr
      00154D FD               [12] 4540 	mov	r5,a
      00154E A3               [24] 4541 	inc	dptr
      00154F E0               [24] 4542 	movx	a,@dptr
      001550 FE               [12] 4543 	mov	r6,a
      001551 A3               [24] 4544 	inc	dptr
      001552 E0               [24] 4545 	movx	a,@dptr
      001553 FF               [12] 4546 	mov	r7,a
      001554 8D 82            [24] 4547 	mov	dpl,r5
      001556 8E 83            [24] 4548 	mov	dph,r6
      001558 8F F0            [24] 4549 	mov	b,r7
      00155A 12 5B 16         [24] 4550 	lcall	__gptrget
      00155D FD               [12] 4551 	mov	r5,a
      00155E A3               [24] 4552 	inc	dptr
      00155F 12 5B 16         [24] 4553 	lcall	__gptrget
      001562 FE               [12] 4554 	mov	r6,a
      001563 A3               [24] 4555 	inc	dptr
      001564 12 5B 16         [24] 4556 	lcall	__gptrget
      001567 FF               [12] 4557 	mov	r7,a
      001568 ED               [12] 4558 	mov	a,r5
      001569 4E               [12] 4559 	orl	a,r6
      00156A 70 03            [24] 4560 	jnz	00117$
      00156C 02 16 0B         [24] 4561 	ljmp	00109$
      00156F                       4562 00117$:
                                   4563 ;	../osal/common/OSAL.c:762: msg_ptr = *q_ptr;
      00156F 90 03 A3         [24] 4564 	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
      001572 E0               [24] 4565 	movx	a,@dptr
      001573 F5 3A            [12] 4566 	mov	_osal_msg_dequeue_sloc0_1_0,a
      001575 A3               [24] 4567 	inc	dptr
      001576 E0               [24] 4568 	movx	a,@dptr
      001577 F5 3B            [12] 4569 	mov	(_osal_msg_dequeue_sloc0_1_0 + 1),a
      001579 A3               [24] 4570 	inc	dptr
      00157A E0               [24] 4571 	movx	a,@dptr
      00157B F5 3C            [12] 4572 	mov	(_osal_msg_dequeue_sloc0_1_0 + 2),a
      00157D 85 3A 82         [24] 4573 	mov	dpl,_osal_msg_dequeue_sloc0_1_0
      001580 85 3B 83         [24] 4574 	mov	dph,(_osal_msg_dequeue_sloc0_1_0 + 1)
      001583 85 3C F0         [24] 4575 	mov	b,(_osal_msg_dequeue_sloc0_1_0 + 2)
      001586 12 5B 16         [24] 4576 	lcall	__gptrget
      001589 FA               [12] 4577 	mov	r2,a
      00158A A3               [24] 4578 	inc	dptr
      00158B 12 5B 16         [24] 4579 	lcall	__gptrget
      00158E FB               [12] 4580 	mov	r3,a
      00158F A3               [24] 4581 	inc	dptr
      001590 12 5B 16         [24] 4582 	lcall	__gptrget
      001593 FC               [12] 4583 	mov	r4,a
      001594 90 03 A6         [24] 4584 	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
      001597 EA               [12] 4585 	mov	a,r2
      001598 F0               [24] 4586 	movx	@dptr,a
      001599 EB               [12] 4587 	mov	a,r3
      00159A A3               [24] 4588 	inc	dptr
      00159B F0               [24] 4589 	movx	@dptr,a
      00159C EC               [12] 4590 	mov	a,r4
      00159D A3               [24] 4591 	inc	dptr
      00159E F0               [24] 4592 	movx	@dptr,a
                                   4593 ;	../osal/common/OSAL.c:763: *q_ptr = OSAL_MSG_NEXT( msg_ptr );
      00159F 8A 00            [24] 4594 	mov	ar0,r2
      0015A1 8B 01            [24] 4595 	mov	ar1,r3
      0015A3 8C 07            [24] 4596 	mov	ar7,r4
      0015A5 E8               [12] 4597 	mov	a,r0
      0015A6 24 FA            [12] 4598 	add	a,#0xFA
      0015A8 F8               [12] 4599 	mov	r0,a
      0015A9 E9               [12] 4600 	mov	a,r1
      0015AA 34 FF            [12] 4601 	addc	a,#0xFF
      0015AC F9               [12] 4602 	mov	r1,a
      0015AD 88 82            [24] 4603 	mov	dpl,r0
      0015AF 89 83            [24] 4604 	mov	dph,r1
      0015B1 8F F0            [24] 4605 	mov	b,r7
      0015B3 12 5B 16         [24] 4606 	lcall	__gptrget
      0015B6 F8               [12] 4607 	mov	r0,a
      0015B7 A3               [24] 4608 	inc	dptr
      0015B8 12 5B 16         [24] 4609 	lcall	__gptrget
      0015BB F9               [12] 4610 	mov	r1,a
      0015BC A3               [24] 4611 	inc	dptr
      0015BD 12 5B 16         [24] 4612 	lcall	__gptrget
      0015C0 FF               [12] 4613 	mov	r7,a
      0015C1 85 3A 82         [24] 4614 	mov	dpl,_osal_msg_dequeue_sloc0_1_0
      0015C4 85 3B 83         [24] 4615 	mov	dph,(_osal_msg_dequeue_sloc0_1_0 + 1)
      0015C7 85 3C F0         [24] 4616 	mov	b,(_osal_msg_dequeue_sloc0_1_0 + 2)
      0015CA E8               [12] 4617 	mov	a,r0
      0015CB 12 59 AA         [24] 4618 	lcall	__gptrput
      0015CE A3               [24] 4619 	inc	dptr
      0015CF E9               [12] 4620 	mov	a,r1
      0015D0 12 59 AA         [24] 4621 	lcall	__gptrput
      0015D3 A3               [24] 4622 	inc	dptr
      0015D4 EF               [12] 4623 	mov	a,r7
      0015D5 12 59 AA         [24] 4624 	lcall	__gptrput
                                   4625 ;	../osal/common/OSAL.c:764: OSAL_MSG_NEXT( msg_ptr ) = NULL;
      0015D8 8A 05            [24] 4626 	mov	ar5,r2
      0015DA 8B 06            [24] 4627 	mov	ar6,r3
      0015DC 8C 07            [24] 4628 	mov	ar7,r4
      0015DE ED               [12] 4629 	mov	a,r5
      0015DF 24 FA            [12] 4630 	add	a,#0xFA
      0015E1 FD               [12] 4631 	mov	r5,a
      0015E2 EE               [12] 4632 	mov	a,r6
      0015E3 34 FF            [12] 4633 	addc	a,#0xFF
      0015E5 FE               [12] 4634 	mov	r6,a
      0015E6 8D 82            [24] 4635 	mov	dpl,r5
      0015E8 8E 83            [24] 4636 	mov	dph,r6
      0015EA 8F F0            [24] 4637 	mov	b,r7
      0015EC 74 00            [12] 4638 	mov	a,#0x00
      0015EE 12 59 AA         [24] 4639 	lcall	__gptrput
      0015F1 A3               [24] 4640 	inc	dptr
      0015F2 12 59 AA         [24] 4641 	lcall	__gptrput
      0015F5 A3               [24] 4642 	inc	dptr
      0015F6 12 59 AA         [24] 4643 	lcall	__gptrput
                                   4644 ;	../osal/common/OSAL.c:765: OSAL_MSG_ID( msg_ptr ) = TASK_NO_TASK;
      0015F9 14               [12] 4645 	dec	a
      0015FA 2A               [12] 4646 	add	a,r2
      0015FB FA               [12] 4647 	mov	r2,a
      0015FC 74 FF            [12] 4648 	mov	a,#0xFF
      0015FE 3B               [12] 4649 	addc	a,r3
      0015FF FB               [12] 4650 	mov	r3,a
      001600 8A 82            [24] 4651 	mov	dpl,r2
      001602 8B 83            [24] 4652 	mov	dph,r3
      001604 8C F0            [24] 4653 	mov	b,r4
      001606 74 FF            [12] 4654 	mov	a,#0xFF
      001608 12 59 AA         [24] 4655 	lcall	__gptrput
                                   4656 ;	../osal/common/OSAL.c:769: HAL_EXIT_CRITICAL_SECTION(intState);
      00160B                       4657 00109$:
      00160B 90 03 A9         [24] 4658 	mov	dptr,#_osal_msg_dequeue_intState_1_182
      00160E E0               [24] 4659 	movx	a,@dptr
      00160F FF               [12] 4660 	mov	r7,a
      001610 EF               [12] 4661 	mov	a,r7
      001611 24 FF            [12] 4662 	add	a,#0xff
      001613 92 AF            [24] 4663 	mov	_EA,c
                                   4664 ;	../osal/common/OSAL.c:771: return msg_ptr;
      001615 90 03 A6         [24] 4665 	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
      001618 E0               [24] 4666 	movx	a,@dptr
      001619 FD               [12] 4667 	mov	r5,a
      00161A A3               [24] 4668 	inc	dptr
      00161B E0               [24] 4669 	movx	a,@dptr
      00161C FE               [12] 4670 	mov	r6,a
      00161D A3               [24] 4671 	inc	dptr
      00161E E0               [24] 4672 	movx	a,@dptr
      00161F FF               [12] 4673 	mov	r7,a
      001620 8D 82            [24] 4674 	mov	dpl,r5
      001622 8E 83            [24] 4675 	mov	dph,r6
      001624 8F F0            [24] 4676 	mov	b,r7
      001626                       4677 00112$:
      001626 22               [24] 4678 	ret
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
      001627                       4693 _osal_msg_push:
      001627 AF F0            [24] 4694 	mov	r7,b
      001629 AE 83            [24] 4695 	mov	r6,dph
      00162B E5 82            [12] 4696 	mov	a,dpl
      00162D 90 03 AD         [24] 4697 	mov	dptr,#_osal_msg_push_q_ptr_1_187
      001630 F0               [24] 4698 	movx	@dptr,a
      001631 EE               [12] 4699 	mov	a,r6
      001632 A3               [24] 4700 	inc	dptr
      001633 F0               [24] 4701 	movx	@dptr,a
      001634 EF               [12] 4702 	mov	a,r7
      001635 A3               [24] 4703 	inc	dptr
      001636 F0               [24] 4704 	movx	@dptr,a
                                   4705 ;	../osal/common/OSAL.c:792: HAL_ENTER_CRITICAL_SECTION(intState);
      001637 A2 AF            [12] 4706 	mov	c,_EA
      001639 E4               [12] 4707 	clr	a
      00163A 33               [12] 4708 	rlc	a
      00163B F5 3A            [12] 4709 	mov	_osal_msg_push_sloc0_1_0,a
      00163D C2 AF            [12] 4710 	clr	_EA
                                   4711 ;	../osal/common/OSAL.c:795: OSAL_MSG_NEXT( msg_ptr ) = *q_ptr;
      00163F 90 03 AA         [24] 4712 	mov	dptr,#_osal_msg_push_PARM_2
      001642 E0               [24] 4713 	movx	a,@dptr
      001643 FC               [12] 4714 	mov	r4,a
      001644 A3               [24] 4715 	inc	dptr
      001645 E0               [24] 4716 	movx	a,@dptr
      001646 FD               [12] 4717 	mov	r5,a
      001647 A3               [24] 4718 	inc	dptr
      001648 E0               [24] 4719 	movx	a,@dptr
      001649 FE               [12] 4720 	mov	r6,a
      00164A 8C 01            [24] 4721 	mov	ar1,r4
      00164C 8D 02            [24] 4722 	mov	ar2,r5
      00164E 8E 03            [24] 4723 	mov	ar3,r6
      001650 E9               [12] 4724 	mov	a,r1
      001651 24 FA            [12] 4725 	add	a,#0xFA
      001653 F5 3B            [12] 4726 	mov	_osal_msg_push_sloc1_1_0,a
      001655 EA               [12] 4727 	mov	a,r2
      001656 34 FF            [12] 4728 	addc	a,#0xFF
      001658 F5 3C            [12] 4729 	mov	(_osal_msg_push_sloc1_1_0 + 1),a
      00165A 8B 3D            [24] 4730 	mov	(_osal_msg_push_sloc1_1_0 + 2),r3
      00165C 90 03 AD         [24] 4731 	mov	dptr,#_osal_msg_push_q_ptr_1_187
      00165F E0               [24] 4732 	movx	a,@dptr
      001660 F5 3E            [12] 4733 	mov	_osal_msg_push_sloc2_1_0,a
      001662 A3               [24] 4734 	inc	dptr
      001663 E0               [24] 4735 	movx	a,@dptr
      001664 F5 3F            [12] 4736 	mov	(_osal_msg_push_sloc2_1_0 + 1),a
      001666 A3               [24] 4737 	inc	dptr
      001667 E0               [24] 4738 	movx	a,@dptr
      001668 F5 40            [12] 4739 	mov	(_osal_msg_push_sloc2_1_0 + 2),a
      00166A 85 3E 82         [24] 4740 	mov	dpl,_osal_msg_push_sloc2_1_0
      00166D 85 3F 83         [24] 4741 	mov	dph,(_osal_msg_push_sloc2_1_0 + 1)
      001670 85 40 F0         [24] 4742 	mov	b,(_osal_msg_push_sloc2_1_0 + 2)
      001673 12 5B 16         [24] 4743 	lcall	__gptrget
      001676 F9               [12] 4744 	mov	r1,a
      001677 A3               [24] 4745 	inc	dptr
      001678 12 5B 16         [24] 4746 	lcall	__gptrget
      00167B FA               [12] 4747 	mov	r2,a
      00167C A3               [24] 4748 	inc	dptr
      00167D 12 5B 16         [24] 4749 	lcall	__gptrget
      001680 FF               [12] 4750 	mov	r7,a
      001681 85 3B 82         [24] 4751 	mov	dpl,_osal_msg_push_sloc1_1_0
      001684 85 3C 83         [24] 4752 	mov	dph,(_osal_msg_push_sloc1_1_0 + 1)
      001687 85 3D F0         [24] 4753 	mov	b,(_osal_msg_push_sloc1_1_0 + 2)
      00168A E9               [12] 4754 	mov	a,r1
      00168B 12 59 AA         [24] 4755 	lcall	__gptrput
      00168E A3               [24] 4756 	inc	dptr
      00168F EA               [12] 4757 	mov	a,r2
      001690 12 59 AA         [24] 4758 	lcall	__gptrput
      001693 A3               [24] 4759 	inc	dptr
      001694 EF               [12] 4760 	mov	a,r7
      001695 12 59 AA         [24] 4761 	lcall	__gptrput
                                   4762 ;	../osal/common/OSAL.c:796: *q_ptr = msg_ptr;
      001698 85 3E 82         [24] 4763 	mov	dpl,_osal_msg_push_sloc2_1_0
      00169B 85 3F 83         [24] 4764 	mov	dph,(_osal_msg_push_sloc2_1_0 + 1)
      00169E 85 40 F0         [24] 4765 	mov	b,(_osal_msg_push_sloc2_1_0 + 2)
      0016A1 EC               [12] 4766 	mov	a,r4
      0016A2 12 59 AA         [24] 4767 	lcall	__gptrput
      0016A5 A3               [24] 4768 	inc	dptr
      0016A6 ED               [12] 4769 	mov	a,r5
      0016A7 12 59 AA         [24] 4770 	lcall	__gptrput
      0016AA A3               [24] 4771 	inc	dptr
      0016AB EE               [12] 4772 	mov	a,r6
      0016AC 12 59 AA         [24] 4773 	lcall	__gptrput
                                   4774 ;	../osal/common/OSAL.c:799: HAL_EXIT_CRITICAL_SECTION(intState);
      0016AF E5 3A            [12] 4775 	mov	a,_osal_msg_push_sloc0_1_0
      0016B1 24 FF            [12] 4776 	add	a,#0xff
      0016B3 92 AF            [24] 4777 	mov	_EA,c
      0016B5                       4778 00110$:
      0016B5 22               [24] 4779 	ret
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
      0016B6                       4792 _osal_msg_extract:
      0016B6 AF F0            [24] 4793 	mov	r7,b
      0016B8 AE 83            [24] 4794 	mov	r6,dph
      0016BA E5 82            [12] 4795 	mov	a,dpl
      0016BC 90 03 B6         [24] 4796 	mov	dptr,#_osal_msg_extract_q_ptr_1_192
      0016BF F0               [24] 4797 	movx	@dptr,a
      0016C0 EE               [12] 4798 	mov	a,r6
      0016C1 A3               [24] 4799 	inc	dptr
      0016C2 F0               [24] 4800 	movx	@dptr,a
      0016C3 EF               [12] 4801 	mov	a,r7
      0016C4 A3               [24] 4802 	inc	dptr
      0016C5 F0               [24] 4803 	movx	@dptr,a
                                   4804 ;	../osal/common/OSAL.c:821: HAL_ENTER_CRITICAL_SECTION(intState);
      0016C6 90 03 B9         [24] 4805 	mov	dptr,#_osal_msg_extract_intState_1_193
      0016C9 A2 AF            [12] 4806 	mov	c,_EA
      0016CB E4               [12] 4807 	clr	a
      0016CC 33               [12] 4808 	rlc	a
      0016CD F0               [24] 4809 	movx	@dptr,a
      0016CE C2 AF            [12] 4810 	clr	_EA
                                   4811 ;	../osal/common/OSAL.c:823: if ( msg_ptr == *q_ptr )
      0016D0 90 03 B6         [24] 4812 	mov	dptr,#_osal_msg_extract_q_ptr_1_192
      0016D3 E0               [24] 4813 	movx	a,@dptr
      0016D4 FD               [12] 4814 	mov	r5,a
      0016D5 A3               [24] 4815 	inc	dptr
      0016D6 E0               [24] 4816 	movx	a,@dptr
      0016D7 FE               [12] 4817 	mov	r6,a
      0016D8 A3               [24] 4818 	inc	dptr
      0016D9 E0               [24] 4819 	movx	a,@dptr
      0016DA FF               [12] 4820 	mov	r7,a
      0016DB 8D 82            [24] 4821 	mov	dpl,r5
      0016DD 8E 83            [24] 4822 	mov	dph,r6
      0016DF 8F F0            [24] 4823 	mov	b,r7
      0016E1 12 5B 16         [24] 4824 	lcall	__gptrget
      0016E4 FD               [12] 4825 	mov	r5,a
      0016E5 A3               [24] 4826 	inc	dptr
      0016E6 12 5B 16         [24] 4827 	lcall	__gptrget
      0016E9 FE               [12] 4828 	mov	r6,a
      0016EA A3               [24] 4829 	inc	dptr
      0016EB 12 5B 16         [24] 4830 	lcall	__gptrget
      0016EE FF               [12] 4831 	mov	r7,a
      0016EF 90 03 B0         [24] 4832 	mov	dptr,#_osal_msg_extract_PARM_2
      0016F2 E0               [24] 4833 	movx	a,@dptr
      0016F3 FA               [12] 4834 	mov	r2,a
      0016F4 A3               [24] 4835 	inc	dptr
      0016F5 E0               [24] 4836 	movx	a,@dptr
      0016F6 FB               [12] 4837 	mov	r3,a
      0016F7 A3               [24] 4838 	inc	dptr
      0016F8 E0               [24] 4839 	movx	a,@dptr
      0016F9 FC               [12] 4840 	mov	r4,a
      0016FA C0 05            [24] 4841 	push	ar5
      0016FC C0 06            [24] 4842 	push	ar6
      0016FE C0 07            [24] 4843 	push	ar7
      001700 8A 82            [24] 4844 	mov	dpl,r2
      001702 8B 83            [24] 4845 	mov	dph,r3
      001704 8C F0            [24] 4846 	mov	b,r4
      001706 12 00 06         [24] 4847 	lcall	___gptr_cmp
      001709 15 81            [12] 4848 	dec	sp
      00170B 15 81            [12] 4849 	dec	sp
      00170D 15 81            [12] 4850 	dec	sp
      00170F 70 02            [24] 4851 	jnz	00118$
      001711 80 03            [24] 4852 	sjmp	00119$
      001713                       4853 00118$:
      001713 02 17 5F         [24] 4854 	ljmp	00108$
      001716                       4855 00119$:
                                   4856 ;	../osal/common/OSAL.c:826: *q_ptr = OSAL_MSG_NEXT( msg_ptr );
      001716 90 03 B6         [24] 4857 	mov	dptr,#_osal_msg_extract_q_ptr_1_192
      001719 E0               [24] 4858 	movx	a,@dptr
      00171A FD               [12] 4859 	mov	r5,a
      00171B A3               [24] 4860 	inc	dptr
      00171C E0               [24] 4861 	movx	a,@dptr
      00171D FE               [12] 4862 	mov	r6,a
      00171E A3               [24] 4863 	inc	dptr
      00171F E0               [24] 4864 	movx	a,@dptr
      001720 FF               [12] 4865 	mov	r7,a
      001721 90 03 B0         [24] 4866 	mov	dptr,#_osal_msg_extract_PARM_2
      001724 E0               [24] 4867 	movx	a,@dptr
      001725 FA               [12] 4868 	mov	r2,a
      001726 A3               [24] 4869 	inc	dptr
      001727 E0               [24] 4870 	movx	a,@dptr
      001728 FB               [12] 4871 	mov	r3,a
      001729 A3               [24] 4872 	inc	dptr
      00172A E0               [24] 4873 	movx	a,@dptr
      00172B FC               [12] 4874 	mov	r4,a
      00172C EA               [12] 4875 	mov	a,r2
      00172D 24 FA            [12] 4876 	add	a,#0xFA
      00172F FA               [12] 4877 	mov	r2,a
      001730 EB               [12] 4878 	mov	a,r3
      001731 34 FF            [12] 4879 	addc	a,#0xFF
      001733 FB               [12] 4880 	mov	r3,a
      001734 8A 82            [24] 4881 	mov	dpl,r2
      001736 8B 83            [24] 4882 	mov	dph,r3
      001738 8C F0            [24] 4883 	mov	b,r4
      00173A 12 5B 16         [24] 4884 	lcall	__gptrget
      00173D FA               [12] 4885 	mov	r2,a
      00173E A3               [24] 4886 	inc	dptr
      00173F 12 5B 16         [24] 4887 	lcall	__gptrget
      001742 FB               [12] 4888 	mov	r3,a
      001743 A3               [24] 4889 	inc	dptr
      001744 12 5B 16         [24] 4890 	lcall	__gptrget
      001747 FC               [12] 4891 	mov	r4,a
      001748 8D 82            [24] 4892 	mov	dpl,r5
      00174A 8E 83            [24] 4893 	mov	dph,r6
      00174C 8F F0            [24] 4894 	mov	b,r7
      00174E EA               [12] 4895 	mov	a,r2
      00174F 12 59 AA         [24] 4896 	lcall	__gptrput
      001752 A3               [24] 4897 	inc	dptr
      001753 EB               [12] 4898 	mov	a,r3
      001754 12 59 AA         [24] 4899 	lcall	__gptrput
      001757 A3               [24] 4900 	inc	dptr
      001758 EC               [12] 4901 	mov	a,r4
      001759 12 59 AA         [24] 4902 	lcall	__gptrput
      00175C 02 17 AD         [24] 4903 	ljmp	00109$
      00175F                       4904 00108$:
                                   4905 ;	../osal/common/OSAL.c:831: OSAL_MSG_NEXT( prev_ptr ) = OSAL_MSG_NEXT( msg_ptr );
      00175F 90 03 B3         [24] 4906 	mov	dptr,#_osal_msg_extract_PARM_3
      001762 E0               [24] 4907 	movx	a,@dptr
      001763 FD               [12] 4908 	mov	r5,a
      001764 A3               [24] 4909 	inc	dptr
      001765 E0               [24] 4910 	movx	a,@dptr
      001766 FE               [12] 4911 	mov	r6,a
      001767 A3               [24] 4912 	inc	dptr
      001768 E0               [24] 4913 	movx	a,@dptr
      001769 FF               [12] 4914 	mov	r7,a
      00176A ED               [12] 4915 	mov	a,r5
      00176B 24 FA            [12] 4916 	add	a,#0xFA
      00176D FD               [12] 4917 	mov	r5,a
      00176E EE               [12] 4918 	mov	a,r6
      00176F 34 FF            [12] 4919 	addc	a,#0xFF
      001771 FE               [12] 4920 	mov	r6,a
      001772 90 03 B0         [24] 4921 	mov	dptr,#_osal_msg_extract_PARM_2
      001775 E0               [24] 4922 	movx	a,@dptr
      001776 FA               [12] 4923 	mov	r2,a
      001777 A3               [24] 4924 	inc	dptr
      001778 E0               [24] 4925 	movx	a,@dptr
      001779 FB               [12] 4926 	mov	r3,a
      00177A A3               [24] 4927 	inc	dptr
      00177B E0               [24] 4928 	movx	a,@dptr
      00177C FC               [12] 4929 	mov	r4,a
      00177D EA               [12] 4930 	mov	a,r2
      00177E 24 FA            [12] 4931 	add	a,#0xFA
      001780 FA               [12] 4932 	mov	r2,a
      001781 EB               [12] 4933 	mov	a,r3
      001782 34 FF            [12] 4934 	addc	a,#0xFF
      001784 FB               [12] 4935 	mov	r3,a
      001785 8A 82            [24] 4936 	mov	dpl,r2
      001787 8B 83            [24] 4937 	mov	dph,r3
      001789 8C F0            [24] 4938 	mov	b,r4
      00178B 12 5B 16         [24] 4939 	lcall	__gptrget
      00178E FA               [12] 4940 	mov	r2,a
      00178F A3               [24] 4941 	inc	dptr
      001790 12 5B 16         [24] 4942 	lcall	__gptrget
      001793 FB               [12] 4943 	mov	r3,a
      001794 A3               [24] 4944 	inc	dptr
      001795 12 5B 16         [24] 4945 	lcall	__gptrget
      001798 FC               [12] 4946 	mov	r4,a
      001799 8D 82            [24] 4947 	mov	dpl,r5
      00179B 8E 83            [24] 4948 	mov	dph,r6
      00179D 8F F0            [24] 4949 	mov	b,r7
      00179F EA               [12] 4950 	mov	a,r2
      0017A0 12 59 AA         [24] 4951 	lcall	__gptrput
      0017A3 A3               [24] 4952 	inc	dptr
      0017A4 EB               [12] 4953 	mov	a,r3
      0017A5 12 59 AA         [24] 4954 	lcall	__gptrput
      0017A8 A3               [24] 4955 	inc	dptr
      0017A9 EC               [12] 4956 	mov	a,r4
      0017AA 12 59 AA         [24] 4957 	lcall	__gptrput
      0017AD                       4958 00109$:
                                   4959 ;	../osal/common/OSAL.c:833: OSAL_MSG_NEXT( msg_ptr ) = NULL;
      0017AD 90 03 B0         [24] 4960 	mov	dptr,#_osal_msg_extract_PARM_2
      0017B0 E0               [24] 4961 	movx	a,@dptr
      0017B1 FD               [12] 4962 	mov	r5,a
      0017B2 A3               [24] 4963 	inc	dptr
      0017B3 E0               [24] 4964 	movx	a,@dptr
      0017B4 FE               [12] 4965 	mov	r6,a
      0017B5 A3               [24] 4966 	inc	dptr
      0017B6 E0               [24] 4967 	movx	a,@dptr
      0017B7 FF               [12] 4968 	mov	r7,a
      0017B8 8D 02            [24] 4969 	mov	ar2,r5
      0017BA 8E 03            [24] 4970 	mov	ar3,r6
      0017BC 8F 04            [24] 4971 	mov	ar4,r7
      0017BE EA               [12] 4972 	mov	a,r2
      0017BF 24 FA            [12] 4973 	add	a,#0xFA
      0017C1 FA               [12] 4974 	mov	r2,a
      0017C2 EB               [12] 4975 	mov	a,r3
      0017C3 34 FF            [12] 4976 	addc	a,#0xFF
      0017C5 FB               [12] 4977 	mov	r3,a
      0017C6 8A 82            [24] 4978 	mov	dpl,r2
      0017C8 8B 83            [24] 4979 	mov	dph,r3
      0017CA 8C F0            [24] 4980 	mov	b,r4
      0017CC 74 00            [12] 4981 	mov	a,#0x00
      0017CE 12 59 AA         [24] 4982 	lcall	__gptrput
      0017D1 A3               [24] 4983 	inc	dptr
      0017D2 12 59 AA         [24] 4984 	lcall	__gptrput
      0017D5 A3               [24] 4985 	inc	dptr
      0017D6 12 59 AA         [24] 4986 	lcall	__gptrput
                                   4987 ;	../osal/common/OSAL.c:834: OSAL_MSG_ID( msg_ptr ) = TASK_NO_TASK;
      0017D9 14               [12] 4988 	dec	a
      0017DA 2D               [12] 4989 	add	a,r5
      0017DB FD               [12] 4990 	mov	r5,a
      0017DC 74 FF            [12] 4991 	mov	a,#0xFF
      0017DE 3E               [12] 4992 	addc	a,r6
      0017DF FE               [12] 4993 	mov	r6,a
      0017E0 8D 82            [24] 4994 	mov	dpl,r5
      0017E2 8E 83            [24] 4995 	mov	dph,r6
      0017E4 8F F0            [24] 4996 	mov	b,r7
      0017E6 74 FF            [12] 4997 	mov	a,#0xFF
      0017E8 12 59 AA         [24] 4998 	lcall	__gptrput
                                   4999 ;	../osal/common/OSAL.c:837: HAL_EXIT_CRITICAL_SECTION(intState);
      0017EB 90 03 B9         [24] 5000 	mov	dptr,#_osal_msg_extract_intState_1_193
      0017EE E0               [24] 5001 	movx	a,@dptr
      0017EF FF               [12] 5002 	mov	r7,a
      0017F0 EF               [12] 5003 	mov	a,r7
      0017F1 24 FF            [12] 5004 	add	a,#0xff
      0017F3 92 AF            [24] 5005 	mov	_EA,c
      0017F5                       5006 00113$:
      0017F5 22               [24] 5007 	ret
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
      0017F6                       5022 _osal_msg_enqueue_max:
      0017F6 AF F0            [24] 5023 	mov	r7,b
      0017F8 AE 83            [24] 5024 	mov	r6,dph
      0017FA E5 82            [12] 5025 	mov	a,dpl
      0017FC 90 03 BE         [24] 5026 	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
      0017FF F0               [24] 5027 	movx	@dptr,a
      001800 EE               [12] 5028 	mov	a,r6
      001801 A3               [24] 5029 	inc	dptr
      001802 F0               [24] 5030 	movx	@dptr,a
      001803 EF               [12] 5031 	mov	a,r7
      001804 A3               [24] 5032 	inc	dptr
      001805 F0               [24] 5033 	movx	@dptr,a
                                   5034 ;	../osal/common/OSAL.c:857: uint8 ret = FALSE;
      001806 90 03 C4         [24] 5035 	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
      001809 74 00            [12] 5036 	mov	a,#0x00
      00180B F0               [24] 5037 	movx	@dptr,a
                                   5038 ;	../osal/common/OSAL.c:861: HAL_ENTER_CRITICAL_SECTION(intState);
      00180C 90 03 C5         [24] 5039 	mov	dptr,#_osal_msg_enqueue_max_intState_1_200
      00180F A2 AF            [12] 5040 	mov	c,_EA
      001811 E4               [12] 5041 	clr	a
      001812 33               [12] 5042 	rlc	a
      001813 F0               [24] 5043 	movx	@dptr,a
      001814 C2 AF            [12] 5044 	clr	_EA
                                   5045 ;	../osal/common/OSAL.c:864: if ( *q_ptr == NULL )
      001816 90 03 BE         [24] 5046 	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
      001819 E0               [24] 5047 	movx	a,@dptr
      00181A FD               [12] 5048 	mov	r5,a
      00181B A3               [24] 5049 	inc	dptr
      00181C E0               [24] 5050 	movx	a,@dptr
      00181D FE               [12] 5051 	mov	r6,a
      00181E A3               [24] 5052 	inc	dptr
      00181F E0               [24] 5053 	movx	a,@dptr
      001820 FF               [12] 5054 	mov	r7,a
      001821 8D 82            [24] 5055 	mov	dpl,r5
      001823 8E 83            [24] 5056 	mov	dph,r6
      001825 8F F0            [24] 5057 	mov	b,r7
      001827 12 5B 16         [24] 5058 	lcall	__gptrget
      00182A FD               [12] 5059 	mov	r5,a
      00182B A3               [24] 5060 	inc	dptr
      00182C 12 5B 16         [24] 5061 	lcall	__gptrget
      00182F FE               [12] 5062 	mov	r6,a
      001830 A3               [24] 5063 	inc	dptr
      001831 12 5B 16         [24] 5064 	lcall	__gptrget
      001834 FF               [12] 5065 	mov	r7,a
      001835 ED               [12] 5066 	mov	a,r5
      001836 4E               [12] 5067 	orl	a,r6
      001837 60 03            [24] 5068 	jz	00137$
      001839 02 18 6F         [24] 5069 	ljmp	00114$
      00183C                       5070 00137$:
                                   5071 ;	../osal/common/OSAL.c:866: *q_ptr = msg_ptr;
      00183C 90 03 BE         [24] 5072 	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
      00183F E0               [24] 5073 	movx	a,@dptr
      001840 FD               [12] 5074 	mov	r5,a
      001841 A3               [24] 5075 	inc	dptr
      001842 E0               [24] 5076 	movx	a,@dptr
      001843 FE               [12] 5077 	mov	r6,a
      001844 A3               [24] 5078 	inc	dptr
      001845 E0               [24] 5079 	movx	a,@dptr
      001846 FF               [12] 5080 	mov	r7,a
      001847 90 03 BA         [24] 5081 	mov	dptr,#_osal_msg_enqueue_max_PARM_2
      00184A E0               [24] 5082 	movx	a,@dptr
      00184B FA               [12] 5083 	mov	r2,a
      00184C A3               [24] 5084 	inc	dptr
      00184D E0               [24] 5085 	movx	a,@dptr
      00184E FB               [12] 5086 	mov	r3,a
      00184F A3               [24] 5087 	inc	dptr
      001850 E0               [24] 5088 	movx	a,@dptr
      001851 FC               [12] 5089 	mov	r4,a
      001852 8D 82            [24] 5090 	mov	dpl,r5
      001854 8E 83            [24] 5091 	mov	dph,r6
      001856 8F F0            [24] 5092 	mov	b,r7
      001858 EA               [12] 5093 	mov	a,r2
      001859 12 59 AA         [24] 5094 	lcall	__gptrput
      00185C A3               [24] 5095 	inc	dptr
      00185D EB               [12] 5096 	mov	a,r3
      00185E 12 59 AA         [24] 5097 	lcall	__gptrput
      001861 A3               [24] 5098 	inc	dptr
      001862 EC               [12] 5099 	mov	a,r4
      001863 12 59 AA         [24] 5100 	lcall	__gptrput
                                   5101 ;	../osal/common/OSAL.c:867: ret = TRUE;
      001866 90 03 C4         [24] 5102 	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
      001869 74 01            [12] 5103 	mov	a,#0x01
      00186B F0               [24] 5104 	movx	@dptr,a
      00186C 02 19 50         [24] 5105 	ljmp	00116$
      00186F                       5106 00114$:
                                   5107 ;	../osal/common/OSAL.c:872: list = *q_ptr;
      00186F 90 03 BE         [24] 5108 	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
      001872 E0               [24] 5109 	movx	a,@dptr
      001873 FD               [12] 5110 	mov	r5,a
      001874 A3               [24] 5111 	inc	dptr
      001875 E0               [24] 5112 	movx	a,@dptr
      001876 FE               [12] 5113 	mov	r6,a
      001877 A3               [24] 5114 	inc	dptr
      001878 E0               [24] 5115 	movx	a,@dptr
      001879 FF               [12] 5116 	mov	r7,a
      00187A 8D 82            [24] 5117 	mov	dpl,r5
      00187C 8E 83            [24] 5118 	mov	dph,r6
      00187E 8F F0            [24] 5119 	mov	b,r7
      001880 12 5B 16         [24] 5120 	lcall	__gptrget
      001883 FD               [12] 5121 	mov	r5,a
      001884 A3               [24] 5122 	inc	dptr
      001885 12 5B 16         [24] 5123 	lcall	__gptrget
      001888 FE               [12] 5124 	mov	r6,a
      001889 A3               [24] 5125 	inc	dptr
      00188A 12 5B 16         [24] 5126 	lcall	__gptrget
      00188D FF               [12] 5127 	mov	r7,a
      00188E 90 03 C1         [24] 5128 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      001891 ED               [12] 5129 	mov	a,r5
      001892 F0               [24] 5130 	movx	@dptr,a
      001893 EE               [12] 5131 	mov	a,r6
      001894 A3               [24] 5132 	inc	dptr
      001895 F0               [24] 5133 	movx	@dptr,a
      001896 EF               [12] 5134 	mov	a,r7
      001897 A3               [24] 5135 	inc	dptr
      001898 F0               [24] 5136 	movx	@dptr,a
                                   5137 ;	../osal/common/OSAL.c:873: max--;
      001899 90 03 BD         [24] 5138 	mov	dptr,#_osal_msg_enqueue_max_PARM_3
      00189C E0               [24] 5139 	movx	a,@dptr
      00189D 14               [12] 5140 	dec	a
      00189E F0               [24] 5141 	movx	@dptr,a
                                   5142 ;	../osal/common/OSAL.c:874: while ( (OSAL_MSG_NEXT( list ) != NULL) && (max > 0) )
      00189F E0               [24] 5143 	movx	a,@dptr
      0018A0 FF               [12] 5144 	mov	r7,a
      0018A1                       5145 00108$:
      0018A1 90 03 C1         [24] 5146 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      0018A4 E0               [24] 5147 	movx	a,@dptr
      0018A5 FC               [12] 5148 	mov	r4,a
      0018A6 A3               [24] 5149 	inc	dptr
      0018A7 E0               [24] 5150 	movx	a,@dptr
      0018A8 FD               [12] 5151 	mov	r5,a
      0018A9 A3               [24] 5152 	inc	dptr
      0018AA E0               [24] 5153 	movx	a,@dptr
      0018AB FE               [12] 5154 	mov	r6,a
      0018AC EC               [12] 5155 	mov	a,r4
      0018AD 24 FA            [12] 5156 	add	a,#0xFA
      0018AF FC               [12] 5157 	mov	r4,a
      0018B0 ED               [12] 5158 	mov	a,r5
      0018B1 34 FF            [12] 5159 	addc	a,#0xFF
      0018B3 FD               [12] 5160 	mov	r5,a
      0018B4 8C 82            [24] 5161 	mov	dpl,r4
      0018B6 8D 83            [24] 5162 	mov	dph,r5
      0018B8 8E F0            [24] 5163 	mov	b,r6
      0018BA 12 5B 16         [24] 5164 	lcall	__gptrget
      0018BD FC               [12] 5165 	mov	r4,a
      0018BE A3               [24] 5166 	inc	dptr
      0018BF 12 5B 16         [24] 5167 	lcall	__gptrget
      0018C2 FD               [12] 5168 	mov	r5,a
      0018C3 A3               [24] 5169 	inc	dptr
      0018C4 12 5B 16         [24] 5170 	lcall	__gptrget
      0018C7 FE               [12] 5171 	mov	r6,a
      0018C8 EC               [12] 5172 	mov	a,r4
      0018C9 4D               [12] 5173 	orl	a,r5
      0018CA 70 03            [24] 5174 	jnz	00138$
      0018CC 02 19 0B         [24] 5175 	ljmp	00126$
      0018CF                       5176 00138$:
      0018CF EF               [12] 5177 	mov	a,r7
      0018D0 70 03            [24] 5178 	jnz	00139$
      0018D2 02 19 0B         [24] 5179 	ljmp	00126$
      0018D5                       5180 00139$:
                                   5181 ;	../osal/common/OSAL.c:876: list = OSAL_MSG_NEXT( list );
      0018D5 90 03 C1         [24] 5182 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      0018D8 E0               [24] 5183 	movx	a,@dptr
      0018D9 FC               [12] 5184 	mov	r4,a
      0018DA A3               [24] 5185 	inc	dptr
      0018DB E0               [24] 5186 	movx	a,@dptr
      0018DC FD               [12] 5187 	mov	r5,a
      0018DD A3               [24] 5188 	inc	dptr
      0018DE E0               [24] 5189 	movx	a,@dptr
      0018DF FE               [12] 5190 	mov	r6,a
      0018E0 EC               [12] 5191 	mov	a,r4
      0018E1 24 FA            [12] 5192 	add	a,#0xFA
      0018E3 FC               [12] 5193 	mov	r4,a
      0018E4 ED               [12] 5194 	mov	a,r5
      0018E5 34 FF            [12] 5195 	addc	a,#0xFF
      0018E7 FD               [12] 5196 	mov	r5,a
      0018E8 8C 82            [24] 5197 	mov	dpl,r4
      0018EA 8D 83            [24] 5198 	mov	dph,r5
      0018EC 8E F0            [24] 5199 	mov	b,r6
      0018EE 12 5B 16         [24] 5200 	lcall	__gptrget
      0018F1 FC               [12] 5201 	mov	r4,a
      0018F2 A3               [24] 5202 	inc	dptr
      0018F3 12 5B 16         [24] 5203 	lcall	__gptrget
      0018F6 FD               [12] 5204 	mov	r5,a
      0018F7 A3               [24] 5205 	inc	dptr
      0018F8 12 5B 16         [24] 5206 	lcall	__gptrget
      0018FB FE               [12] 5207 	mov	r6,a
      0018FC 90 03 C1         [24] 5208 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      0018FF EC               [12] 5209 	mov	a,r4
      001900 F0               [24] 5210 	movx	@dptr,a
      001901 ED               [12] 5211 	mov	a,r5
      001902 A3               [24] 5212 	inc	dptr
      001903 F0               [24] 5213 	movx	@dptr,a
      001904 EE               [12] 5214 	mov	a,r6
      001905 A3               [24] 5215 	inc	dptr
      001906 F0               [24] 5216 	movx	@dptr,a
                                   5217 ;	../osal/common/OSAL.c:877: max--;
      001907 1F               [12] 5218 	dec	r7
      001908 02 18 A1         [24] 5219 	ljmp	00108$
      00190B                       5220 00126$:
      00190B 90 03 BD         [24] 5221 	mov	dptr,#_osal_msg_enqueue_max_PARM_3
      00190E EF               [12] 5222 	mov	a,r7
      00190F F0               [24] 5223 	movx	@dptr,a
                                   5224 ;	../osal/common/OSAL.c:881: if ( max != 0 )
      001910 E0               [24] 5225 	movx	a,@dptr
      001911 FF               [12] 5226 	mov	r7,a
      001912 EF               [12] 5227 	mov	a,r7
      001913 70 03            [24] 5228 	jnz	00140$
      001915 02 19 50         [24] 5229 	ljmp	00116$
      001918                       5230 00140$:
                                   5231 ;	../osal/common/OSAL.c:883: OSAL_MSG_NEXT( list ) = msg_ptr;
      001918 90 03 C1         [24] 5232 	mov	dptr,#_osal_msg_enqueue_max_list_1_200
      00191B E0               [24] 5233 	movx	a,@dptr
      00191C FD               [12] 5234 	mov	r5,a
      00191D A3               [24] 5235 	inc	dptr
      00191E E0               [24] 5236 	movx	a,@dptr
      00191F FE               [12] 5237 	mov	r6,a
      001920 A3               [24] 5238 	inc	dptr
      001921 E0               [24] 5239 	movx	a,@dptr
      001922 FF               [12] 5240 	mov	r7,a
      001923 ED               [12] 5241 	mov	a,r5
      001924 24 FA            [12] 5242 	add	a,#0xFA
      001926 FD               [12] 5243 	mov	r5,a
      001927 EE               [12] 5244 	mov	a,r6
      001928 34 FF            [12] 5245 	addc	a,#0xFF
      00192A FE               [12] 5246 	mov	r6,a
      00192B 90 03 BA         [24] 5247 	mov	dptr,#_osal_msg_enqueue_max_PARM_2
      00192E E0               [24] 5248 	movx	a,@dptr
      00192F FA               [12] 5249 	mov	r2,a
      001930 A3               [24] 5250 	inc	dptr
      001931 E0               [24] 5251 	movx	a,@dptr
      001932 FB               [12] 5252 	mov	r3,a
      001933 A3               [24] 5253 	inc	dptr
      001934 E0               [24] 5254 	movx	a,@dptr
      001935 FC               [12] 5255 	mov	r4,a
      001936 8D 82            [24] 5256 	mov	dpl,r5
      001938 8E 83            [24] 5257 	mov	dph,r6
      00193A 8F F0            [24] 5258 	mov	b,r7
      00193C EA               [12] 5259 	mov	a,r2
      00193D 12 59 AA         [24] 5260 	lcall	__gptrput
      001940 A3               [24] 5261 	inc	dptr
      001941 EB               [12] 5262 	mov	a,r3
      001942 12 59 AA         [24] 5263 	lcall	__gptrput
      001945 A3               [24] 5264 	inc	dptr
      001946 EC               [12] 5265 	mov	a,r4
      001947 12 59 AA         [24] 5266 	lcall	__gptrput
                                   5267 ;	../osal/common/OSAL.c:884: ret = TRUE;
      00194A 90 03 C4         [24] 5268 	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
      00194D 74 01            [12] 5269 	mov	a,#0x01
      00194F F0               [24] 5270 	movx	@dptr,a
                                   5271 ;	../osal/common/OSAL.c:889: HAL_EXIT_CRITICAL_SECTION(intState);
      001950                       5272 00116$:
      001950 90 03 C5         [24] 5273 	mov	dptr,#_osal_msg_enqueue_max_intState_1_200
      001953 E0               [24] 5274 	movx	a,@dptr
      001954 FF               [12] 5275 	mov	r7,a
      001955 EF               [12] 5276 	mov	a,r7
      001956 24 FF            [12] 5277 	add	a,#0xff
      001958 92 AF            [24] 5278 	mov	_EA,c
                                   5279 ;	../osal/common/OSAL.c:891: return ret;
      00195A 90 03 C4         [24] 5280 	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
      00195D E0               [24] 5281 	movx	a,@dptr
      00195E FF               [12] 5282 	mov	r7,a
      00195F 8F 82            [24] 5283 	mov	dpl,r7
      001961                       5284 00119$:
      001961 22               [24] 5285 	ret
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
      001962                       5297 _osal_set_event:
      001962 E5 82            [12] 5298 	mov	a,dpl
      001964 90 03 C8         [24] 5299 	mov	dptr,#_osal_set_event_task_id_1_208
      001967 F0               [24] 5300 	movx	@dptr,a
                                   5301 ;	../osal/common/OSAL.c:909: if ( task_id < tasksCnt )
      001968 E0               [24] 5302 	movx	a,@dptr
      001969 FF               [12] 5303 	mov	r7,a
      00196A 90 5B 42         [24] 5304 	mov	dptr,#_tasksCnt
      00196D E4               [12] 5305 	clr	a
      00196E 93               [24] 5306 	movc	a,@a+dptr
      00196F FE               [12] 5307 	mov	r6,a
      001970 C3               [12] 5308 	clr	c
      001971 EF               [12] 5309 	mov	a,r7
      001972 9E               [12] 5310 	subb	a,r6
      001973 40 03            [24] 5311 	jc	00109$
      001975 02 19 C5         [24] 5312 	ljmp	00102$
      001978                       5313 00109$:
                                   5314 ;	../osal/common/OSAL.c:913: tasksEvents[task_id] |= event_flag;  // Stuff the event bit(s)
      001978 90 10 72         [24] 5315 	mov	dptr,#_tasksEvents
      00197B E0               [24] 5316 	movx	a,@dptr
      00197C FD               [12] 5317 	mov	r5,a
      00197D A3               [24] 5318 	inc	dptr
      00197E E0               [24] 5319 	movx	a,@dptr
      00197F FE               [12] 5320 	mov	r6,a
      001980 A3               [24] 5321 	inc	dptr
      001981 E0               [24] 5322 	movx	a,@dptr
      001982 FF               [12] 5323 	mov	r7,a
      001983 90 03 C8         [24] 5324 	mov	dptr,#_osal_set_event_task_id_1_208
      001986 E0               [24] 5325 	movx	a,@dptr
      001987 FC               [12] 5326 	mov	r4,a
      001988 EC               [12] 5327 	mov	a,r4
      001989 75 F0 02         [24] 5328 	mov	b,#0x02
      00198C A4               [48] 5329 	mul	ab
      00198D 2D               [12] 5330 	add	a,r5
      00198E FD               [12] 5331 	mov	r5,a
      00198F EE               [12] 5332 	mov	a,r6
      001990 35 F0            [12] 5333 	addc	a,b
      001992 FE               [12] 5334 	mov	r6,a
      001993 8D 82            [24] 5335 	mov	dpl,r5
      001995 8E 83            [24] 5336 	mov	dph,r6
      001997 8F F0            [24] 5337 	mov	b,r7
      001999 12 5B 16         [24] 5338 	lcall	__gptrget
      00199C FB               [12] 5339 	mov	r3,a
      00199D A3               [24] 5340 	inc	dptr
      00199E 12 5B 16         [24] 5341 	lcall	__gptrget
      0019A1 FC               [12] 5342 	mov	r4,a
      0019A2 90 03 C6         [24] 5343 	mov	dptr,#_osal_set_event_PARM_2
      0019A5 E0               [24] 5344 	movx	a,@dptr
      0019A6 F9               [12] 5345 	mov	r1,a
      0019A7 A3               [24] 5346 	inc	dptr
      0019A8 E0               [24] 5347 	movx	a,@dptr
      0019A9 FA               [12] 5348 	mov	r2,a
      0019AA E9               [12] 5349 	mov	a,r1
      0019AB 42 03            [12] 5350 	orl	ar3,a
      0019AD EA               [12] 5351 	mov	a,r2
      0019AE 42 04            [12] 5352 	orl	ar4,a
      0019B0 8D 82            [24] 5353 	mov	dpl,r5
      0019B2 8E 83            [24] 5354 	mov	dph,r6
      0019B4 8F F0            [24] 5355 	mov	b,r7
      0019B6 EB               [12] 5356 	mov	a,r3
      0019B7 12 59 AA         [24] 5357 	lcall	__gptrput
      0019BA A3               [24] 5358 	inc	dptr
      0019BB EC               [12] 5359 	mov	a,r4
      0019BC 12 59 AA         [24] 5360 	lcall	__gptrput
                                   5361 ;	../osal/common/OSAL.c:915: return ( SUCCESS );
      0019BF 75 82 00         [24] 5362 	mov	dpl,#0x00
      0019C2 02 19 C8         [24] 5363 	ljmp	00104$
      0019C5                       5364 00102$:
                                   5365 ;	../osal/common/OSAL.c:919: return ( INVALID_TASK );
      0019C5 75 82 03         [24] 5366 	mov	dpl,#0x03
      0019C8                       5367 00104$:
      0019C8 22               [24] 5368 	ret
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
      0019C9                       5380 _osal_clear_event:
      0019C9 E5 82            [12] 5381 	mov	a,dpl
      0019CB 90 03 CB         [24] 5382 	mov	dptr,#_osal_clear_event_task_id_1_212
      0019CE F0               [24] 5383 	movx	@dptr,a
                                   5384 ;	../osal/common/OSAL.c:938: if ( task_id < tasksCnt )
      0019CF E0               [24] 5385 	movx	a,@dptr
      0019D0 FF               [12] 5386 	mov	r7,a
      0019D1 90 5B 42         [24] 5387 	mov	dptr,#_tasksCnt
      0019D4 E4               [12] 5388 	clr	a
      0019D5 93               [24] 5389 	movc	a,@a+dptr
      0019D6 FE               [12] 5390 	mov	r6,a
      0019D7 C3               [12] 5391 	clr	c
      0019D8 EF               [12] 5392 	mov	a,r7
      0019D9 9E               [12] 5393 	subb	a,r6
      0019DA 40 03            [24] 5394 	jc	00118$
      0019DC 02 1A 3E         [24] 5395 	ljmp	00111$
      0019DF                       5396 00118$:
                                   5397 ;	../osal/common/OSAL.c:941: HAL_ENTER_CRITICAL_SECTION(intState);    // Hold off interrupts
      0019DF A2 AF            [12] 5398 	mov	c,_EA
      0019E1 E4               [12] 5399 	clr	a
      0019E2 33               [12] 5400 	rlc	a
      0019E3 FF               [12] 5401 	mov	r7,a
      0019E4 C2 AF            [12] 5402 	clr	_EA
                                   5403 ;	../osal/common/OSAL.c:942: tasksEvents[task_id] &= ~(event_flag);   // Clear the event bit(s)
      0019E6 90 10 72         [24] 5404 	mov	dptr,#_tasksEvents
      0019E9 E0               [24] 5405 	movx	a,@dptr
      0019EA FC               [12] 5406 	mov	r4,a
      0019EB A3               [24] 5407 	inc	dptr
      0019EC E0               [24] 5408 	movx	a,@dptr
      0019ED FD               [12] 5409 	mov	r5,a
      0019EE A3               [24] 5410 	inc	dptr
      0019EF E0               [24] 5411 	movx	a,@dptr
      0019F0 FE               [12] 5412 	mov	r6,a
      0019F1 90 03 CB         [24] 5413 	mov	dptr,#_osal_clear_event_task_id_1_212
      0019F4 E0               [24] 5414 	movx	a,@dptr
      0019F5 FB               [12] 5415 	mov	r3,a
      0019F6 EB               [12] 5416 	mov	a,r3
      0019F7 75 F0 02         [24] 5417 	mov	b,#0x02
      0019FA A4               [48] 5418 	mul	ab
      0019FB 2C               [12] 5419 	add	a,r4
      0019FC FC               [12] 5420 	mov	r4,a
      0019FD ED               [12] 5421 	mov	a,r5
      0019FE 35 F0            [12] 5422 	addc	a,b
      001A00 FD               [12] 5423 	mov	r5,a
      001A01 8C 82            [24] 5424 	mov	dpl,r4
      001A03 8D 83            [24] 5425 	mov	dph,r5
      001A05 8E F0            [24] 5426 	mov	b,r6
      001A07 12 5B 16         [24] 5427 	lcall	__gptrget
      001A0A FA               [12] 5428 	mov	r2,a
      001A0B A3               [24] 5429 	inc	dptr
      001A0C 12 5B 16         [24] 5430 	lcall	__gptrget
      001A0F FB               [12] 5431 	mov	r3,a
      001A10 90 03 C9         [24] 5432 	mov	dptr,#_osal_clear_event_PARM_2
      001A13 E0               [24] 5433 	movx	a,@dptr
      001A14 F8               [12] 5434 	mov	r0,a
      001A15 A3               [24] 5435 	inc	dptr
      001A16 E0               [24] 5436 	movx	a,@dptr
      001A17 F9               [12] 5437 	mov	r1,a
      001A18 E8               [12] 5438 	mov	a,r0
      001A19 F4               [12] 5439 	cpl	a
      001A1A F8               [12] 5440 	mov	r0,a
      001A1B E9               [12] 5441 	mov	a,r1
      001A1C F4               [12] 5442 	cpl	a
      001A1D F9               [12] 5443 	mov	r1,a
      001A1E E8               [12] 5444 	mov	a,r0
      001A1F 52 02            [12] 5445 	anl	ar2,a
      001A21 E9               [12] 5446 	mov	a,r1
      001A22 52 03            [12] 5447 	anl	ar3,a
      001A24 8C 82            [24] 5448 	mov	dpl,r4
      001A26 8D 83            [24] 5449 	mov	dph,r5
      001A28 8E F0            [24] 5450 	mov	b,r6
      001A2A EA               [12] 5451 	mov	a,r2
      001A2B 12 59 AA         [24] 5452 	lcall	__gptrput
      001A2E A3               [24] 5453 	inc	dptr
      001A2F EB               [12] 5454 	mov	a,r3
      001A30 12 59 AA         [24] 5455 	lcall	__gptrput
                                   5456 ;	../osal/common/OSAL.c:943: HAL_EXIT_CRITICAL_SECTION(intState);     // Release interrupts
      001A33 EF               [12] 5457 	mov	a,r7
      001A34 24 FF            [12] 5458 	add	a,#0xff
      001A36 92 AF            [24] 5459 	mov	_EA,c
                                   5460 ;	../osal/common/OSAL.c:944: return ( SUCCESS );
      001A38 75 82 00         [24] 5461 	mov	dpl,#0x00
      001A3B 02 1A 41         [24] 5462 	ljmp	00113$
      001A3E                       5463 00111$:
                                   5464 ;	../osal/common/OSAL.c:948: return ( INVALID_TASK );
      001A3E 75 82 03         [24] 5465 	mov	dpl,#0x03
      001A41                       5466 00113$:
      001A41 22               [24] 5467 	ret
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
      001A42                       5478 _osal_isr_register:
                                   5479 ;	../osal/common/OSAL.c:970: return ( SUCCESS );
      001A42 75 82 00         [24] 5480 	mov	dpl,#0x00
      001A45                       5481 00101$:
      001A45 22               [24] 5482 	ret
                                   5483 ;------------------------------------------------------------
                                   5484 ;Allocation info for local variables in function 'osal_int_enable'
                                   5485 ;------------------------------------------------------------
                                   5486 ;interrupt_id              Allocated with name '_osal_int_enable_interrupt_id_1_222'
                                   5487 ;------------------------------------------------------------
                                   5488 ;	../osal/common/OSAL.c:990: uint8 osal_int_enable( uint8 interrupt_id )
                                   5489 ;	-----------------------------------------
                                   5490 ;	 function osal_int_enable
                                   5491 ;	-----------------------------------------
      001A46                       5492 _osal_int_enable:
      001A46 E5 82            [12] 5493 	mov	a,dpl
      001A48 90 03 CE         [24] 5494 	mov	dptr,#_osal_int_enable_interrupt_id_1_222
      001A4B F0               [24] 5495 	movx	@dptr,a
                                   5496 ;	../osal/common/OSAL.c:993: if ( interrupt_id == INTS_ALL )
      001A4C E0               [24] 5497 	movx	a,@dptr
      001A4D FF               [12] 5498 	mov	r7,a
      001A4E BF FF 02         [24] 5499 	cjne	r7,#0xFF,00112$
      001A51 80 03            [24] 5500 	sjmp	00113$
      001A53                       5501 00112$:
      001A53 02 1A 5E         [24] 5502 	ljmp	00105$
      001A56                       5503 00113$:
                                   5504 ;	../osal/common/OSAL.c:995: HAL_ENABLE_INTERRUPTS();
      001A56 D2 AF            [12] 5505 	setb	_EA
                                   5506 ;	../osal/common/OSAL.c:996: return ( SUCCESS );
      001A58 75 82 00         [24] 5507 	mov	dpl,#0x00
      001A5B 02 1A 61         [24] 5508 	ljmp	00107$
      001A5E                       5509 00105$:
                                   5510 ;	../osal/common/OSAL.c:1000: return ( INVALID_INTERRUPT_ID );
      001A5E 75 82 07         [24] 5511 	mov	dpl,#0x07
      001A61                       5512 00107$:
      001A61 22               [24] 5513 	ret
                                   5514 ;------------------------------------------------------------
                                   5515 ;Allocation info for local variables in function 'osal_int_disable'
                                   5516 ;------------------------------------------------------------
                                   5517 ;interrupt_id              Allocated with name '_osal_int_disable_interrupt_id_1_227'
                                   5518 ;------------------------------------------------------------
                                   5519 ;	../osal/common/OSAL.c:1020: uint8 osal_int_disable( uint8 interrupt_id )
                                   5520 ;	-----------------------------------------
                                   5521 ;	 function osal_int_disable
                                   5522 ;	-----------------------------------------
      001A62                       5523 _osal_int_disable:
      001A62 E5 82            [12] 5524 	mov	a,dpl
      001A64 90 03 CF         [24] 5525 	mov	dptr,#_osal_int_disable_interrupt_id_1_227
      001A67 F0               [24] 5526 	movx	@dptr,a
                                   5527 ;	../osal/common/OSAL.c:1023: if ( interrupt_id == INTS_ALL )
      001A68 E0               [24] 5528 	movx	a,@dptr
      001A69 FF               [12] 5529 	mov	r7,a
      001A6A BF FF 02         [24] 5530 	cjne	r7,#0xFF,00112$
      001A6D 80 03            [24] 5531 	sjmp	00113$
      001A6F                       5532 00112$:
      001A6F 02 1A 7A         [24] 5533 	ljmp	00105$
      001A72                       5534 00113$:
                                   5535 ;	../osal/common/OSAL.c:1025: HAL_DISABLE_INTERRUPTS();
      001A72 C2 AF            [12] 5536 	clr	_EA
                                   5537 ;	../osal/common/OSAL.c:1026: return ( SUCCESS );
      001A74 75 82 00         [24] 5538 	mov	dpl,#0x00
      001A77 02 1A 7D         [24] 5539 	ljmp	00107$
      001A7A                       5540 00105$:
                                   5541 ;	../osal/common/OSAL.c:1030: return ( INVALID_INTERRUPT_ID );
      001A7A 75 82 07         [24] 5542 	mov	dpl,#0x07
      001A7D                       5543 00107$:
      001A7D 22               [24] 5544 	ret
                                   5545 ;------------------------------------------------------------
                                   5546 ;Allocation info for local variables in function 'osal_init_system'
                                   5547 ;------------------------------------------------------------
                                   5548 ;	../osal/common/OSAL.c:1046: uint8 osal_init_system( void )
                                   5549 ;	-----------------------------------------
                                   5550 ;	 function osal_init_system
                                   5551 ;	-----------------------------------------
      001A7E                       5552 _osal_init_system:
                                   5553 ;	../osal/common/OSAL.c:1049: osal_mem_init();
      001A7E 12 1F 3D         [24] 5554 	lcall	_osal_mem_init
                                   5555 ;	../osal/common/OSAL.c:1052: osal_qHead = NULL;
      001A81 90 03 00         [24] 5556 	mov	dptr,#_osal_qHead
      001A84 74 00            [12] 5557 	mov	a,#0x00
      001A86 F0               [24] 5558 	movx	@dptr,a
      001A87 A3               [24] 5559 	inc	dptr
      001A88 F0               [24] 5560 	movx	@dptr,a
      001A89 A3               [24] 5561 	inc	dptr
      001A8A F0               [24] 5562 	movx	@dptr,a
                                   5563 ;	../osal/common/OSAL.c:1055: osalTimerInit();
      001A8B 12 23 96         [24] 5564 	lcall	_osalTimerInit
                                   5565 ;	../osal/common/OSAL.c:1061: osalInitTasks();
      001A8E 12 2F E6         [24] 5566 	lcall	_osalInitTasks
                                   5567 ;	../osal/common/OSAL.c:1066: return ( SUCCESS );
      001A91 75 82 00         [24] 5568 	mov	dpl,#0x00
      001A94                       5569 00101$:
      001A94 22               [24] 5570 	ret
                                   5571 ;------------------------------------------------------------
                                   5572 ;Allocation info for local variables in function 'osal_start_system'
                                   5573 ;------------------------------------------------------------
                                   5574 ;	../osal/common/OSAL.c:1081: void osal_start_system( void )
                                   5575 ;	-----------------------------------------
                                   5576 ;	 function osal_start_system
                                   5577 ;	-----------------------------------------
      001A95                       5578 _osal_start_system:
      001A95                       5579 00102$:
                                   5580 ;	../osal/common/OSAL.c:1087: osal_run_system();
      001A95 12 1A 9C         [24] 5581 	lcall	_osal_run_system
      001A98 02 1A 95         [24] 5582 	ljmp	00102$
      001A9B                       5583 00104$:
      001A9B 22               [24] 5584 	ret
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
      001A9C                       5595 _osal_run_system:
                                   5596 ;	../osal/common/OSAL.c:1107: uint8 idx = 0;
      001A9C 90 03 D0         [24] 5597 	mov	dptr,#_osal_run_system_idx_1_238
      001A9F 74 00            [12] 5598 	mov	a,#0x00
      001AA1 F0               [24] 5599 	movx	@dptr,a
                                   5600 ;	../osal/common/OSAL.c:1110: osalTimeUpdate();
      001AA2 12 30 61         [24] 5601 	lcall	_osalTimeUpdate
                                   5602 ;	../osal/common/OSAL.c:1115: do {
      001AA5 90 03 D0         [24] 5603 	mov	dptr,#_osal_run_system_idx_1_238
      001AA8 E0               [24] 5604 	movx	a,@dptr
      001AA9 FF               [12] 5605 	mov	r7,a
      001AAA                       5606 00103$:
                                   5607 ;	../osal/common/OSAL.c:1116: if (tasksEvents[idx])  // Task is highest priority that is ready.
      001AAA 90 10 72         [24] 5608 	mov	dptr,#_tasksEvents
      001AAD E0               [24] 5609 	movx	a,@dptr
      001AAE FC               [12] 5610 	mov	r4,a
      001AAF A3               [24] 5611 	inc	dptr
      001AB0 E0               [24] 5612 	movx	a,@dptr
      001AB1 FD               [12] 5613 	mov	r5,a
      001AB2 A3               [24] 5614 	inc	dptr
      001AB3 E0               [24] 5615 	movx	a,@dptr
      001AB4 FE               [12] 5616 	mov	r6,a
      001AB5 EF               [12] 5617 	mov	a,r7
      001AB6 75 F0 02         [24] 5618 	mov	b,#0x02
      001AB9 A4               [48] 5619 	mul	ab
      001ABA 2C               [12] 5620 	add	a,r4
      001ABB FC               [12] 5621 	mov	r4,a
      001ABC ED               [12] 5622 	mov	a,r5
      001ABD 35 F0            [12] 5623 	addc	a,b
      001ABF FD               [12] 5624 	mov	r5,a
      001AC0 8C 82            [24] 5625 	mov	dpl,r4
      001AC2 8D 83            [24] 5626 	mov	dph,r5
      001AC4 8E F0            [24] 5627 	mov	b,r6
      001AC6 12 5B 16         [24] 5628 	lcall	__gptrget
      001AC9 FC               [12] 5629 	mov	r4,a
      001ACA A3               [24] 5630 	inc	dptr
      001ACB 12 5B 16         [24] 5631 	lcall	__gptrget
      001ACE FD               [12] 5632 	mov	r5,a
      001ACF EC               [12] 5633 	mov	a,r4
      001AD0 4D               [12] 5634 	orl	a,r5
      001AD1 60 03            [24] 5635 	jz	00120$
      001AD3 02 1A E5         [24] 5636 	ljmp	00113$
      001AD6                       5637 00120$:
                                   5638 ;	../osal/common/OSAL.c:1120: } while (++idx < tasksCnt);
      001AD6 0F               [12] 5639 	inc	r7
      001AD7 90 5B 42         [24] 5640 	mov	dptr,#_tasksCnt
      001ADA E4               [12] 5641 	clr	a
      001ADB 93               [24] 5642 	movc	a,@a+dptr
      001ADC FE               [12] 5643 	mov	r6,a
      001ADD C3               [12] 5644 	clr	c
      001ADE EF               [12] 5645 	mov	a,r7
      001ADF 9E               [12] 5646 	subb	a,r6
      001AE0 50 03            [24] 5647 	jnc	00121$
      001AE2 02 1A AA         [24] 5648 	ljmp	00103$
      001AE5                       5649 00121$:
      001AE5                       5650 00113$:
      001AE5 90 03 D0         [24] 5651 	mov	dptr,#_osal_run_system_idx_1_238
      001AE8 EF               [12] 5652 	mov	a,r7
      001AE9 F0               [24] 5653 	movx	@dptr,a
                                   5654 ;	../osal/common/OSAL.c:1132: if (idx < tasksCnt)
      001AEA E0               [24] 5655 	movx	a,@dptr
      001AEB FF               [12] 5656 	mov	r7,a
      001AEC 90 5B 42         [24] 5657 	mov	dptr,#_tasksCnt
      001AEF E4               [12] 5658 	clr	a
      001AF0 93               [24] 5659 	movc	a,@a+dptr
      001AF1 FE               [12] 5660 	mov	r6,a
      001AF2 C3               [12] 5661 	clr	c
      001AF3 EF               [12] 5662 	mov	a,r7
      001AF4 9E               [12] 5663 	subb	a,r6
      001AF5 40 03            [24] 5664 	jc	00122$
      001AF7 02 1B B6         [24] 5665 	ljmp	00108$
      001AFA                       5666 00122$:
                                   5667 ;	../osal/common/OSAL.c:1138: events = tasksEvents[idx];
      001AFA 90 10 72         [24] 5668 	mov	dptr,#_tasksEvents
      001AFD E0               [24] 5669 	movx	a,@dptr
      001AFE FD               [12] 5670 	mov	r5,a
      001AFF A3               [24] 5671 	inc	dptr
      001B00 E0               [24] 5672 	movx	a,@dptr
      001B01 FE               [12] 5673 	mov	r6,a
      001B02 A3               [24] 5674 	inc	dptr
      001B03 E0               [24] 5675 	movx	a,@dptr
      001B04 FF               [12] 5676 	mov	r7,a
      001B05 90 03 D0         [24] 5677 	mov	dptr,#_osal_run_system_idx_1_238
      001B08 E0               [24] 5678 	movx	a,@dptr
      001B09 FC               [12] 5679 	mov	r4,a
      001B0A EC               [12] 5680 	mov	a,r4
      001B0B 75 F0 02         [24] 5681 	mov	b,#0x02
      001B0E A4               [48] 5682 	mul	ab
      001B0F FA               [12] 5683 	mov	r2,a
      001B10 AB F0            [24] 5684 	mov	r3,b
      001B12 EA               [12] 5685 	mov	a,r2
      001B13 2D               [12] 5686 	add	a,r5
      001B14 FD               [12] 5687 	mov	r5,a
      001B15 EB               [12] 5688 	mov	a,r3
      001B16 3E               [12] 5689 	addc	a,r6
      001B17 FE               [12] 5690 	mov	r6,a
      001B18 8D 82            [24] 5691 	mov	dpl,r5
      001B1A 8E 83            [24] 5692 	mov	dph,r6
      001B1C 8F F0            [24] 5693 	mov	b,r7
      001B1E 12 5B 16         [24] 5694 	lcall	__gptrget
      001B21 F8               [12] 5695 	mov	r0,a
      001B22 A3               [24] 5696 	inc	dptr
      001B23 12 5B 16         [24] 5697 	lcall	__gptrget
      001B26 F9               [12] 5698 	mov	r1,a
      001B27 90 03 D1         [24] 5699 	mov	dptr,#_osal_run_system_events_2_241
      001B2A E8               [12] 5700 	mov	a,r0
      001B2B F0               [24] 5701 	movx	@dptr,a
      001B2C E9               [12] 5702 	mov	a,r1
      001B2D A3               [24] 5703 	inc	dptr
      001B2E F0               [24] 5704 	movx	@dptr,a
                                   5705 ;	../osal/common/OSAL.c:1139: tasksEvents[idx] = 0;  // Clear the Events for this task.
      001B2F 8D 82            [24] 5706 	mov	dpl,r5
      001B31 8E 83            [24] 5707 	mov	dph,r6
      001B33 8F F0            [24] 5708 	mov	b,r7
      001B35 74 00            [12] 5709 	mov	a,#0x00
      001B37 12 59 AA         [24] 5710 	lcall	__gptrput
      001B3A A3               [24] 5711 	inc	dptr
      001B3B 12 59 AA         [24] 5712 	lcall	__gptrput
                                   5713 ;	../osal/common/OSAL.c:1152: activeTaskID = idx;
      001B3E 90 03 03         [24] 5714 	mov	dptr,#_activeTaskID
      001B41 EC               [12] 5715 	mov	a,r4
      001B42 F0               [24] 5716 	movx	@dptr,a
                                   5717 ;	../osal/common/OSAL.c:1153: events = (tasksArr[idx])( idx, events );
      001B43 EA               [12] 5718 	mov	a,r2
      001B44 24 38            [12] 5719 	add	a,#_tasksArr
      001B46 F5 82            [12] 5720 	mov	dpl,a
      001B48 EB               [12] 5721 	mov	a,r3
      001B49 34 5B            [12] 5722 	addc	a,#(_tasksArr >> 8)
      001B4B F5 83            [12] 5723 	mov	dph,a
      001B4D E4               [12] 5724 	clr	a
      001B4E 93               [24] 5725 	movc	a,@a+dptr
      001B4F FE               [12] 5726 	mov	r6,a
      001B50 A3               [24] 5727 	inc	dptr
      001B51 E4               [12] 5728 	clr	a
      001B52 93               [24] 5729 	movc	a,@a+dptr
      001B53 FF               [12] 5730 	mov	r7,a
      001B54 C0 03            [24] 5731 	push	ar3
      001B56 C0 02            [24] 5732 	push	ar2
      001B58 90 03 D1         [24] 5733 	mov	dptr,#_osal_run_system_events_2_241
      001B5B E0               [24] 5734 	movx	a,@dptr
      001B5C C0 E0            [24] 5735 	push	acc
      001B5E A3               [24] 5736 	inc	dptr
      001B5F E0               [24] 5737 	movx	a,@dptr
      001B60 C0 E0            [24] 5738 	push	acc
      001B62 12 1B 68         [24] 5739 	lcall	00123$
      001B65 02 1B 6F         [24] 5740 	ljmp	00124$
      001B68                       5741 00123$:
      001B68 C0 06            [24] 5742 	push	ar6
      001B6A C0 07            [24] 5743 	push	ar7
      001B6C 8C 82            [24] 5744 	mov	dpl,r4
      001B6E 22               [24] 5745 	ret
      001B6F                       5746 00124$:
      001B6F AE 82            [24] 5747 	mov	r6,dpl
      001B71 AF 83            [24] 5748 	mov	r7,dph
      001B73 15 81            [12] 5749 	dec	sp
      001B75 15 81            [12] 5750 	dec	sp
      001B77 D0 02            [24] 5751 	pop	ar2
      001B79 D0 03            [24] 5752 	pop	ar3
                                   5753 ;	../osal/common/OSAL.c:1154: activeTaskID = TASK_NO_TASK;
      001B7B 90 03 03         [24] 5754 	mov	dptr,#_activeTaskID
      001B7E 74 FF            [12] 5755 	mov	a,#0xFF
      001B80 F0               [24] 5756 	movx	@dptr,a
                                   5757 ;	../osal/common/OSAL.c:1162: tasksEvents[idx] |= events;  // Add back unprocessed events to the current task.
      001B81 90 10 72         [24] 5758 	mov	dptr,#_tasksEvents
      001B84 E0               [24] 5759 	movx	a,@dptr
      001B85 F9               [12] 5760 	mov	r1,a
      001B86 A3               [24] 5761 	inc	dptr
      001B87 E0               [24] 5762 	movx	a,@dptr
      001B88 FC               [12] 5763 	mov	r4,a
      001B89 A3               [24] 5764 	inc	dptr
      001B8A E0               [24] 5765 	movx	a,@dptr
      001B8B FD               [12] 5766 	mov	r5,a
      001B8C EA               [12] 5767 	mov	a,r2
      001B8D 29               [12] 5768 	add	a,r1
      001B8E F9               [12] 5769 	mov	r1,a
      001B8F EB               [12] 5770 	mov	a,r3
      001B90 3C               [12] 5771 	addc	a,r4
      001B91 FC               [12] 5772 	mov	r4,a
      001B92 89 82            [24] 5773 	mov	dpl,r1
      001B94 8C 83            [24] 5774 	mov	dph,r4
      001B96 8D F0            [24] 5775 	mov	b,r5
      001B98 12 5B 16         [24] 5776 	lcall	__gptrget
      001B9B FA               [12] 5777 	mov	r2,a
      001B9C A3               [24] 5778 	inc	dptr
      001B9D 12 5B 16         [24] 5779 	lcall	__gptrget
      001BA0 FB               [12] 5780 	mov	r3,a
      001BA1 EA               [12] 5781 	mov	a,r2
      001BA2 42 06            [12] 5782 	orl	ar6,a
      001BA4 EB               [12] 5783 	mov	a,r3
      001BA5 42 07            [12] 5784 	orl	ar7,a
      001BA7 89 82            [24] 5785 	mov	dpl,r1
      001BA9 8C 83            [24] 5786 	mov	dph,r4
      001BAB 8D F0            [24] 5787 	mov	b,r5
      001BAD EE               [12] 5788 	mov	a,r6
      001BAE 12 59 AA         [24] 5789 	lcall	__gptrput
      001BB1 A3               [24] 5790 	inc	dptr
      001BB2 EF               [12] 5791 	mov	a,r7
      001BB3 12 59 AA         [24] 5792 	lcall	__gptrput
      001BB6                       5793 00108$:
      001BB6 22               [24] 5794 	ret
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
      001BB7                       5806 _osal_buffer_uint32:
      001BB7 AF F0            [24] 5807 	mov	r7,b
      001BB9 AE 83            [24] 5808 	mov	r6,dph
      001BBB E5 82            [12] 5809 	mov	a,dpl
      001BBD 90 03 D7         [24] 5810 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001BC0 F0               [24] 5811 	movx	@dptr,a
      001BC1 EE               [12] 5812 	mov	a,r6
      001BC2 A3               [24] 5813 	inc	dptr
      001BC3 F0               [24] 5814 	movx	@dptr,a
      001BC4 EF               [12] 5815 	mov	a,r7
      001BC5 A3               [24] 5816 	inc	dptr
      001BC6 F0               [24] 5817 	movx	@dptr,a
                                   5818 ;	../osal/common/OSAL.c:1194: *buf++ = BREAK_UINT32( val, 0 );
      001BC7 90 03 D7         [24] 5819 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001BCA E0               [24] 5820 	movx	a,@dptr
      001BCB F5 3A            [12] 5821 	mov	_osal_buffer_uint32_sloc0_1_0,a
      001BCD A3               [24] 5822 	inc	dptr
      001BCE E0               [24] 5823 	movx	a,@dptr
      001BCF F5 3B            [12] 5824 	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
      001BD1 A3               [24] 5825 	inc	dptr
      001BD2 E0               [24] 5826 	movx	a,@dptr
      001BD3 F5 3C            [12] 5827 	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
      001BD5 90 03 D3         [24] 5828 	mov	dptr,#_osal_buffer_uint32_PARM_2
      001BD8 E0               [24] 5829 	movx	a,@dptr
      001BD9 F9               [12] 5830 	mov	r1,a
      001BDA A3               [24] 5831 	inc	dptr
      001BDB E0               [24] 5832 	movx	a,@dptr
      001BDC FA               [12] 5833 	mov	r2,a
      001BDD A3               [24] 5834 	inc	dptr
      001BDE E0               [24] 5835 	movx	a,@dptr
      001BDF FB               [12] 5836 	mov	r3,a
      001BE0 A3               [24] 5837 	inc	dptr
      001BE1 E0               [24] 5838 	movx	a,@dptr
      001BE2 FC               [12] 5839 	mov	r4,a
      001BE3 89 00            [24] 5840 	mov	ar0,r1
      001BE5 7D 00            [12] 5841 	mov	r5,#0x00
      001BE7 7E 00            [12] 5842 	mov	r6,#0x00
      001BE9 7F 00            [12] 5843 	mov	r7,#0x00
      001BEB 85 3A 82         [24] 5844 	mov	dpl,_osal_buffer_uint32_sloc0_1_0
      001BEE 85 3B 83         [24] 5845 	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001BF1 85 3C F0         [24] 5846 	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001BF4 E8               [12] 5847 	mov	a,r0
      001BF5 12 59 AA         [24] 5848 	lcall	__gptrput
      001BF8 90 03 D7         [24] 5849 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001BFB 74 01            [12] 5850 	mov	a,#0x01
      001BFD 25 3A            [12] 5851 	add	a,_osal_buffer_uint32_sloc0_1_0
      001BFF F0               [24] 5852 	movx	@dptr,a
      001C00 74 00            [12] 5853 	mov	a,#0x00
      001C02 35 3B            [12] 5854 	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001C04 A3               [24] 5855 	inc	dptr
      001C05 F0               [24] 5856 	movx	@dptr,a
      001C06 E5 3C            [12] 5857 	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001C08 A3               [24] 5858 	inc	dptr
      001C09 F0               [24] 5859 	movx	@dptr,a
                                   5860 ;	../osal/common/OSAL.c:1195: *buf++ = BREAK_UINT32( val, 1 );
      001C0A 90 03 D7         [24] 5861 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C0D E0               [24] 5862 	movx	a,@dptr
      001C0E F5 3A            [12] 5863 	mov	_osal_buffer_uint32_sloc0_1_0,a
      001C10 A3               [24] 5864 	inc	dptr
      001C11 E0               [24] 5865 	movx	a,@dptr
      001C12 F5 3B            [12] 5866 	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
      001C14 A3               [24] 5867 	inc	dptr
      001C15 E0               [24] 5868 	movx	a,@dptr
      001C16 F5 3C            [12] 5869 	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
      001C18 8A 00            [24] 5870 	mov	ar0,r2
      001C1A 7D 00            [12] 5871 	mov	r5,#0x00
      001C1C 7E 00            [12] 5872 	mov	r6,#0x00
      001C1E 7F 00            [12] 5873 	mov	r7,#0x00
      001C20 85 3A 82         [24] 5874 	mov	dpl,_osal_buffer_uint32_sloc0_1_0
      001C23 85 3B 83         [24] 5875 	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001C26 85 3C F0         [24] 5876 	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001C29 E8               [12] 5877 	mov	a,r0
      001C2A 12 59 AA         [24] 5878 	lcall	__gptrput
      001C2D 90 03 D7         [24] 5879 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C30 74 01            [12] 5880 	mov	a,#0x01
      001C32 25 3A            [12] 5881 	add	a,_osal_buffer_uint32_sloc0_1_0
      001C34 F0               [24] 5882 	movx	@dptr,a
      001C35 74 00            [12] 5883 	mov	a,#0x00
      001C37 35 3B            [12] 5884 	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001C39 A3               [24] 5885 	inc	dptr
      001C3A F0               [24] 5886 	movx	@dptr,a
      001C3B E5 3C            [12] 5887 	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001C3D A3               [24] 5888 	inc	dptr
      001C3E F0               [24] 5889 	movx	@dptr,a
                                   5890 ;	../osal/common/OSAL.c:1196: *buf++ = BREAK_UINT32( val, 2 );
      001C3F 90 03 D7         [24] 5891 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C42 E0               [24] 5892 	movx	a,@dptr
      001C43 F5 3A            [12] 5893 	mov	_osal_buffer_uint32_sloc0_1_0,a
      001C45 A3               [24] 5894 	inc	dptr
      001C46 E0               [24] 5895 	movx	a,@dptr
      001C47 F5 3B            [12] 5896 	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
      001C49 A3               [24] 5897 	inc	dptr
      001C4A E0               [24] 5898 	movx	a,@dptr
      001C4B F5 3C            [12] 5899 	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
      001C4D 8B 00            [24] 5900 	mov	ar0,r3
      001C4F 7D 00            [12] 5901 	mov	r5,#0x00
      001C51 7E 00            [12] 5902 	mov	r6,#0x00
      001C53 7F 00            [12] 5903 	mov	r7,#0x00
      001C55 85 3A 82         [24] 5904 	mov	dpl,_osal_buffer_uint32_sloc0_1_0
      001C58 85 3B 83         [24] 5905 	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001C5B 85 3C F0         [24] 5906 	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001C5E E8               [12] 5907 	mov	a,r0
      001C5F 12 59 AA         [24] 5908 	lcall	__gptrput
      001C62 90 03 D7         [24] 5909 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C65 74 01            [12] 5910 	mov	a,#0x01
      001C67 25 3A            [12] 5911 	add	a,_osal_buffer_uint32_sloc0_1_0
      001C69 F0               [24] 5912 	movx	@dptr,a
      001C6A 74 00            [12] 5913 	mov	a,#0x00
      001C6C 35 3B            [12] 5914 	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
      001C6E A3               [24] 5915 	inc	dptr
      001C6F F0               [24] 5916 	movx	@dptr,a
      001C70 E5 3C            [12] 5917 	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
      001C72 A3               [24] 5918 	inc	dptr
      001C73 F0               [24] 5919 	movx	@dptr,a
                                   5920 ;	../osal/common/OSAL.c:1197: *buf++ = BREAK_UINT32( val, 3 );
      001C74 90 03 D7         [24] 5921 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C77 E0               [24] 5922 	movx	a,@dptr
      001C78 FD               [12] 5923 	mov	r5,a
      001C79 A3               [24] 5924 	inc	dptr
      001C7A E0               [24] 5925 	movx	a,@dptr
      001C7B FE               [12] 5926 	mov	r6,a
      001C7C A3               [24] 5927 	inc	dptr
      001C7D E0               [24] 5928 	movx	a,@dptr
      001C7E FF               [12] 5929 	mov	r7,a
      001C7F 8C 01            [24] 5930 	mov	ar1,r4
      001C81 7C 00            [12] 5931 	mov	r4,#0x00
      001C83 7B 00            [12] 5932 	mov	r3,#0x00
      001C85 7A 00            [12] 5933 	mov	r2,#0x00
      001C87 8D 82            [24] 5934 	mov	dpl,r5
      001C89 8E 83            [24] 5935 	mov	dph,r6
      001C8B 8F F0            [24] 5936 	mov	b,r7
      001C8D E9               [12] 5937 	mov	a,r1
      001C8E 12 59 AA         [24] 5938 	lcall	__gptrput
      001C91 90 03 D7         [24] 5939 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001C94 74 01            [12] 5940 	mov	a,#0x01
      001C96 2D               [12] 5941 	add	a,r5
      001C97 F0               [24] 5942 	movx	@dptr,a
      001C98 74 00            [12] 5943 	mov	a,#0x00
      001C9A 3E               [12] 5944 	addc	a,r6
      001C9B A3               [24] 5945 	inc	dptr
      001C9C F0               [24] 5946 	movx	@dptr,a
      001C9D EF               [12] 5947 	mov	a,r7
      001C9E A3               [24] 5948 	inc	dptr
      001C9F F0               [24] 5949 	movx	@dptr,a
                                   5950 ;	../osal/common/OSAL.c:1199: return buf;
      001CA0 90 03 D7         [24] 5951 	mov	dptr,#_osal_buffer_uint32_buf_1_242
      001CA3 E0               [24] 5952 	movx	a,@dptr
      001CA4 FD               [12] 5953 	mov	r5,a
      001CA5 A3               [24] 5954 	inc	dptr
      001CA6 E0               [24] 5955 	movx	a,@dptr
      001CA7 FE               [12] 5956 	mov	r6,a
      001CA8 A3               [24] 5957 	inc	dptr
      001CA9 E0               [24] 5958 	movx	a,@dptr
      001CAA FF               [12] 5959 	mov	r7,a
      001CAB 8D 82            [24] 5960 	mov	dpl,r5
      001CAD 8E 83            [24] 5961 	mov	dph,r6
      001CAF 8F F0            [24] 5962 	mov	b,r7
      001CB1                       5963 00101$:
      001CB1 22               [24] 5964 	ret
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
      001CB2                       5976 _osal_buffer_uint24:
      001CB2 AF F0            [24] 5977 	mov	r7,b
      001CB4 AE 83            [24] 5978 	mov	r6,dph
      001CB6 E5 82            [12] 5979 	mov	a,dpl
      001CB8 90 03 DE         [24] 5980 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001CBB F0               [24] 5981 	movx	@dptr,a
      001CBC EE               [12] 5982 	mov	a,r6
      001CBD A3               [24] 5983 	inc	dptr
      001CBE F0               [24] 5984 	movx	@dptr,a
      001CBF EF               [12] 5985 	mov	a,r7
      001CC0 A3               [24] 5986 	inc	dptr
      001CC1 F0               [24] 5987 	movx	@dptr,a
                                   5988 ;	../osal/common/OSAL.c:1217: *buf++ = BREAK_UINT32( val, 0 );
      001CC2 90 03 DE         [24] 5989 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001CC5 E0               [24] 5990 	movx	a,@dptr
      001CC6 F5 3A            [12] 5991 	mov	_osal_buffer_uint24_sloc0_1_0,a
      001CC8 A3               [24] 5992 	inc	dptr
      001CC9 E0               [24] 5993 	movx	a,@dptr
      001CCA F5 3B            [12] 5994 	mov	(_osal_buffer_uint24_sloc0_1_0 + 1),a
      001CCC A3               [24] 5995 	inc	dptr
      001CCD E0               [24] 5996 	movx	a,@dptr
      001CCE F5 3C            [12] 5997 	mov	(_osal_buffer_uint24_sloc0_1_0 + 2),a
      001CD0 90 03 DA         [24] 5998 	mov	dptr,#_osal_buffer_uint24_PARM_2
      001CD3 E0               [24] 5999 	movx	a,@dptr
      001CD4 F9               [12] 6000 	mov	r1,a
      001CD5 A3               [24] 6001 	inc	dptr
      001CD6 E0               [24] 6002 	movx	a,@dptr
      001CD7 FA               [12] 6003 	mov	r2,a
      001CD8 A3               [24] 6004 	inc	dptr
      001CD9 E0               [24] 6005 	movx	a,@dptr
      001CDA FB               [12] 6006 	mov	r3,a
      001CDB A3               [24] 6007 	inc	dptr
      001CDC E0               [24] 6008 	movx	a,@dptr
      001CDD FC               [12] 6009 	mov	r4,a
      001CDE 89 00            [24] 6010 	mov	ar0,r1
      001CE0 7D 00            [12] 6011 	mov	r5,#0x00
      001CE2 7E 00            [12] 6012 	mov	r6,#0x00
      001CE4 7F 00            [12] 6013 	mov	r7,#0x00
      001CE6 85 3A 82         [24] 6014 	mov	dpl,_osal_buffer_uint24_sloc0_1_0
      001CE9 85 3B 83         [24] 6015 	mov	dph,(_osal_buffer_uint24_sloc0_1_0 + 1)
      001CEC 85 3C F0         [24] 6016 	mov	b,(_osal_buffer_uint24_sloc0_1_0 + 2)
      001CEF E8               [12] 6017 	mov	a,r0
      001CF0 12 59 AA         [24] 6018 	lcall	__gptrput
      001CF3 90 03 DE         [24] 6019 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001CF6 74 01            [12] 6020 	mov	a,#0x01
      001CF8 25 3A            [12] 6021 	add	a,_osal_buffer_uint24_sloc0_1_0
      001CFA F0               [24] 6022 	movx	@dptr,a
      001CFB 74 00            [12] 6023 	mov	a,#0x00
      001CFD 35 3B            [12] 6024 	addc	a,(_osal_buffer_uint24_sloc0_1_0 + 1)
      001CFF A3               [24] 6025 	inc	dptr
      001D00 F0               [24] 6026 	movx	@dptr,a
      001D01 E5 3C            [12] 6027 	mov	a,(_osal_buffer_uint24_sloc0_1_0 + 2)
      001D03 A3               [24] 6028 	inc	dptr
      001D04 F0               [24] 6029 	movx	@dptr,a
                                   6030 ;	../osal/common/OSAL.c:1218: *buf++ = BREAK_UINT32( val, 1 );
      001D05 90 03 DE         [24] 6031 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D08 E0               [24] 6032 	movx	a,@dptr
      001D09 F5 3A            [12] 6033 	mov	_osal_buffer_uint24_sloc0_1_0,a
      001D0B A3               [24] 6034 	inc	dptr
      001D0C E0               [24] 6035 	movx	a,@dptr
      001D0D F5 3B            [12] 6036 	mov	(_osal_buffer_uint24_sloc0_1_0 + 1),a
      001D0F A3               [24] 6037 	inc	dptr
      001D10 E0               [24] 6038 	movx	a,@dptr
      001D11 F5 3C            [12] 6039 	mov	(_osal_buffer_uint24_sloc0_1_0 + 2),a
      001D13 8A 00            [24] 6040 	mov	ar0,r2
      001D15 7D 00            [12] 6041 	mov	r5,#0x00
      001D17 7E 00            [12] 6042 	mov	r6,#0x00
      001D19 7F 00            [12] 6043 	mov	r7,#0x00
      001D1B 85 3A 82         [24] 6044 	mov	dpl,_osal_buffer_uint24_sloc0_1_0
      001D1E 85 3B 83         [24] 6045 	mov	dph,(_osal_buffer_uint24_sloc0_1_0 + 1)
      001D21 85 3C F0         [24] 6046 	mov	b,(_osal_buffer_uint24_sloc0_1_0 + 2)
      001D24 E8               [12] 6047 	mov	a,r0
      001D25 12 59 AA         [24] 6048 	lcall	__gptrput
      001D28 90 03 DE         [24] 6049 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D2B 74 01            [12] 6050 	mov	a,#0x01
      001D2D 25 3A            [12] 6051 	add	a,_osal_buffer_uint24_sloc0_1_0
      001D2F F0               [24] 6052 	movx	@dptr,a
      001D30 74 00            [12] 6053 	mov	a,#0x00
      001D32 35 3B            [12] 6054 	addc	a,(_osal_buffer_uint24_sloc0_1_0 + 1)
      001D34 A3               [24] 6055 	inc	dptr
      001D35 F0               [24] 6056 	movx	@dptr,a
      001D36 E5 3C            [12] 6057 	mov	a,(_osal_buffer_uint24_sloc0_1_0 + 2)
      001D38 A3               [24] 6058 	inc	dptr
      001D39 F0               [24] 6059 	movx	@dptr,a
                                   6060 ;	../osal/common/OSAL.c:1219: *buf++ = BREAK_UINT32( val, 2 );
      001D3A 90 03 DE         [24] 6061 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D3D E0               [24] 6062 	movx	a,@dptr
      001D3E FD               [12] 6063 	mov	r5,a
      001D3F A3               [24] 6064 	inc	dptr
      001D40 E0               [24] 6065 	movx	a,@dptr
      001D41 FE               [12] 6066 	mov	r6,a
      001D42 A3               [24] 6067 	inc	dptr
      001D43 E0               [24] 6068 	movx	a,@dptr
      001D44 FF               [12] 6069 	mov	r7,a
      001D45 8B 01            [24] 6070 	mov	ar1,r3
      001D47 7C 00            [12] 6071 	mov	r4,#0x00
      001D49 7B 00            [12] 6072 	mov	r3,#0x00
      001D4B 7A 00            [12] 6073 	mov	r2,#0x00
      001D4D 8D 82            [24] 6074 	mov	dpl,r5
      001D4F 8E 83            [24] 6075 	mov	dph,r6
      001D51 8F F0            [24] 6076 	mov	b,r7
      001D53 E9               [12] 6077 	mov	a,r1
      001D54 12 59 AA         [24] 6078 	lcall	__gptrput
      001D57 90 03 DE         [24] 6079 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D5A 74 01            [12] 6080 	mov	a,#0x01
      001D5C 2D               [12] 6081 	add	a,r5
      001D5D F0               [24] 6082 	movx	@dptr,a
      001D5E 74 00            [12] 6083 	mov	a,#0x00
      001D60 3E               [12] 6084 	addc	a,r6
      001D61 A3               [24] 6085 	inc	dptr
      001D62 F0               [24] 6086 	movx	@dptr,a
      001D63 EF               [12] 6087 	mov	a,r7
      001D64 A3               [24] 6088 	inc	dptr
      001D65 F0               [24] 6089 	movx	@dptr,a
                                   6090 ;	../osal/common/OSAL.c:1221: return buf;
      001D66 90 03 DE         [24] 6091 	mov	dptr,#_osal_buffer_uint24_buf_1_244
      001D69 E0               [24] 6092 	movx	a,@dptr
      001D6A FD               [12] 6093 	mov	r5,a
      001D6B A3               [24] 6094 	inc	dptr
      001D6C E0               [24] 6095 	movx	a,@dptr
      001D6D FE               [12] 6096 	mov	r6,a
      001D6E A3               [24] 6097 	inc	dptr
      001D6F E0               [24] 6098 	movx	a,@dptr
      001D70 FF               [12] 6099 	mov	r7,a
      001D71 8D 82            [24] 6100 	mov	dpl,r5
      001D73 8E 83            [24] 6101 	mov	dph,r6
      001D75 8F F0            [24] 6102 	mov	b,r7
      001D77                       6103 00101$:
      001D77 22               [24] 6104 	ret
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
      001D78                       6117 _osal_isbufset:
      001D78 AF F0            [24] 6118 	mov	r7,b
      001D7A AE 83            [24] 6119 	mov	r6,dph
      001D7C E5 82            [12] 6120 	mov	a,dpl
      001D7E 90 03 E3         [24] 6121 	mov	dptr,#_osal_isbufset_buf_1_246
      001D81 F0               [24] 6122 	movx	@dptr,a
      001D82 EE               [12] 6123 	mov	a,r6
      001D83 A3               [24] 6124 	inc	dptr
      001D84 F0               [24] 6125 	movx	@dptr,a
      001D85 EF               [12] 6126 	mov	a,r7
      001D86 A3               [24] 6127 	inc	dptr
      001D87 F0               [24] 6128 	movx	@dptr,a
                                   6129 ;	../osal/common/OSAL.c:1242: if ( buf == NULL )
      001D88 90 03 E3         [24] 6130 	mov	dptr,#_osal_isbufset_buf_1_246
      001D8B E0               [24] 6131 	movx	a,@dptr
      001D8C FD               [12] 6132 	mov	r5,a
      001D8D A3               [24] 6133 	inc	dptr
      001D8E E0               [24] 6134 	movx	a,@dptr
      001D8F FE               [12] 6135 	mov	r6,a
      001D90 A3               [24] 6136 	inc	dptr
      001D91 E0               [24] 6137 	movx	a,@dptr
      001D92 FF               [12] 6138 	mov	r7,a
      001D93 ED               [12] 6139 	mov	a,r5
      001D94 4E               [12] 6140 	orl	a,r6
      001D95 60 03            [24] 6141 	jz	00123$
      001D97 02 1D A0         [24] 6142 	ljmp	00102$
      001D9A                       6143 00123$:
                                   6144 ;	../osal/common/OSAL.c:1244: return ( FALSE );
      001D9A 75 82 00         [24] 6145 	mov	dpl,#0x00
      001D9D 02 1D F5         [24] 6146 	ljmp	00109$
      001DA0                       6147 00102$:
                                   6148 ;	../osal/common/OSAL.c:1247: for ( x = 0; x < len; x++ )
      001DA0 90 03 E6         [24] 6149 	mov	dptr,#_osal_isbufset_x_1_247
      001DA3 74 00            [12] 6150 	mov	a,#0x00
      001DA5 F0               [24] 6151 	movx	@dptr,a
      001DA6 90 03 E3         [24] 6152 	mov	dptr,#_osal_isbufset_buf_1_246
      001DA9 E0               [24] 6153 	movx	a,@dptr
      001DAA FD               [12] 6154 	mov	r5,a
      001DAB A3               [24] 6155 	inc	dptr
      001DAC E0               [24] 6156 	movx	a,@dptr
      001DAD FE               [12] 6157 	mov	r6,a
      001DAE A3               [24] 6158 	inc	dptr
      001DAF E0               [24] 6159 	movx	a,@dptr
      001DB0 FF               [12] 6160 	mov	r7,a
      001DB1 90 03 E1         [24] 6161 	mov	dptr,#_osal_isbufset_PARM_2
      001DB4 E0               [24] 6162 	movx	a,@dptr
      001DB5 FC               [12] 6163 	mov	r4,a
      001DB6 90 03 E2         [24] 6164 	mov	dptr,#_osal_isbufset_PARM_3
      001DB9 E0               [24] 6165 	movx	a,@dptr
      001DBA FB               [12] 6166 	mov	r3,a
      001DBB 90 03 E6         [24] 6167 	mov	dptr,#_osal_isbufset_x_1_247
      001DBE E0               [24] 6168 	movx	a,@dptr
      001DBF FA               [12] 6169 	mov	r2,a
      001DC0                       6170 00107$:
      001DC0 C3               [12] 6171 	clr	c
      001DC1 EA               [12] 6172 	mov	a,r2
      001DC2 9B               [12] 6173 	subb	a,r3
      001DC3 40 03            [24] 6174 	jc	00124$
      001DC5 02 1D F2         [24] 6175 	ljmp	00105$
      001DC8                       6176 00124$:
                                   6177 ;	../osal/common/OSAL.c:1250: if ( buf[x] != val )
      001DC8 C0 03            [24] 6178 	push	ar3
      001DCA EA               [12] 6179 	mov	a,r2
      001DCB 2D               [12] 6180 	add	a,r5
      001DCC F8               [12] 6181 	mov	r0,a
      001DCD 74 00            [12] 6182 	mov	a,#0x00
      001DCF 3E               [12] 6183 	addc	a,r6
      001DD0 F9               [12] 6184 	mov	r1,a
      001DD1 8F 03            [24] 6185 	mov	ar3,r7
      001DD3 88 82            [24] 6186 	mov	dpl,r0
      001DD5 89 83            [24] 6187 	mov	dph,r1
      001DD7 8B F0            [24] 6188 	mov	b,r3
      001DD9 12 5B 16         [24] 6189 	lcall	__gptrget
      001DDC F8               [12] 6190 	mov	r0,a
      001DDD E8               [12] 6191 	mov	a,r0
      001DDE B5 04 05         [24] 6192 	cjne	a,ar4,00125$
      001DE1 D0 03            [24] 6193 	pop	ar3
      001DE3 02 1D EE         [24] 6194 	ljmp	00108$
      001DE6                       6195 00125$:
      001DE6 D0 03            [24] 6196 	pop	ar3
                                   6197 ;	../osal/common/OSAL.c:1252: return ( FALSE );
      001DE8 75 82 00         [24] 6198 	mov	dpl,#0x00
      001DEB 02 1D F5         [24] 6199 	ljmp	00109$
      001DEE                       6200 00108$:
                                   6201 ;	../osal/common/OSAL.c:1247: for ( x = 0; x < len; x++ )
      001DEE 0A               [12] 6202 	inc	r2
      001DEF 02 1D C0         [24] 6203 	ljmp	00107$
      001DF2                       6204 00105$:
                                   6205 ;	../osal/common/OSAL.c:1255: return ( TRUE );
      001DF2 75 82 01         [24] 6206 	mov	dpl,#0x01
      001DF5                       6207 00109$:
      001DF5 22               [24] 6208 	ret
                                   6209 ;------------------------------------------------------------
                                   6210 ;Allocation info for local variables in function 'osal_self'
                                   6211 ;------------------------------------------------------------
                                   6212 ;	../osal/common/OSAL.c:1269: uint8 osal_self( void )
                                   6213 ;	-----------------------------------------
                                   6214 ;	 function osal_self
                                   6215 ;	-----------------------------------------
      001DF6                       6216 _osal_self:
                                   6217 ;	../osal/common/OSAL.c:1271: return ( activeTaskID );
      001DF6 90 03 03         [24] 6218 	mov	dptr,#_activeTaskID
      001DF9 E0               [24] 6219 	movx	a,@dptr
      001DFA FF               [12] 6220 	mov	r7,a
      001DFB 8F 82            [24] 6221 	mov	dpl,r7
      001DFD                       6222 00101$:
      001DFD 22               [24] 6223 	ret
                                   6224 	.area CSEG    (CODE)
                                   6225 	.area CONST   (CODE)
      005B36                       6226 ___str_3:
      005B36 30                    6227 	.ascii "0"
      005B37 00                    6228 	.db 0x00
                                   6229 	.area CABS    (ABS,CODE)
