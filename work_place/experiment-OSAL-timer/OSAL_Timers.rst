                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:57 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module OSAL_Timers
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _osal_set_event
                                     13 	.globl _osal_mem_free
                                     14 	.globl _osal_mem_alloc
                                     15 	.globl _MODE
                                     16 	.globl _RE
                                     17 	.globl _SLAVE
                                     18 	.globl _FE
                                     19 	.globl _ERR
                                     20 	.globl _RX_BYTE
                                     21 	.globl _TX_BYTE
                                     22 	.globl _ACTIVE
                                     23 	.globl _B_7
                                     24 	.globl _B_6
                                     25 	.globl _B_5
                                     26 	.globl _B_4
                                     27 	.globl _B_3
                                     28 	.globl _B_2
                                     29 	.globl _B_1
                                     30 	.globl _B_0
                                     31 	.globl _WDTIF
                                     32 	.globl _P1IF
                                     33 	.globl _UTX1IF
                                     34 	.globl _UTX0IF
                                     35 	.globl _P2IF
                                     36 	.globl _ACC_7
                                     37 	.globl _ACC_6
                                     38 	.globl _ACC_5
                                     39 	.globl _ACC_4
                                     40 	.globl _ACC_3
                                     41 	.globl _ACC_2
                                     42 	.globl _ACC_1
                                     43 	.globl _ACC_0
                                     44 	.globl _OVFIM
                                     45 	.globl _T4CH1IF
                                     46 	.globl _T4CH0IF
                                     47 	.globl _T4OVFIF
                                     48 	.globl _T3CH1IF
                                     49 	.globl _T3CH0IF
                                     50 	.globl _T3OVFIF
                                     51 	.globl _CY
                                     52 	.globl _AC
                                     53 	.globl _F0
                                     54 	.globl _RS1
                                     55 	.globl _RS0
                                     56 	.globl _OV
                                     57 	.globl _F1
                                     58 	.globl _P
                                     59 	.globl _STIF
                                     60 	.globl _P0IF
                                     61 	.globl _T4IF
                                     62 	.globl _T3IF
                                     63 	.globl _T2IF
                                     64 	.globl _T1IF
                                     65 	.globl _DMAIF
                                     66 	.globl _P0IE
                                     67 	.globl _T4IE
                                     68 	.globl _T3IE
                                     69 	.globl _T2IE
                                     70 	.globl _T1IE
                                     71 	.globl _DMAIE
                                     72 	.globl _EA
                                     73 	.globl _STIE
                                     74 	.globl _ENCIE
                                     75 	.globl _URX1IE
                                     76 	.globl _URX0IE
                                     77 	.globl _ADCIE
                                     78 	.globl _RFERRIE
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _ENCIF_1
                                     88 	.globl _ENCIF_0
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _URX1IF
                                     98 	.globl _ADCIF
                                     99 	.globl _URX0IF
                                    100 	.globl _IT1
                                    101 	.globl _RFERRIF
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _P2DIR
                                    112 	.globl _P1DIR
                                    113 	.globl _P0DIR
                                    114 	.globl _U1GCR
                                    115 	.globl _U1UCR
                                    116 	.globl _U1BAUD
                                    117 	.globl _U1DBUF
                                    118 	.globl _U1CSR
                                    119 	.globl _P2INP
                                    120 	.globl _P1INP
                                    121 	.globl _P2SEL
                                    122 	.globl _P1SEL
                                    123 	.globl _P0SEL
                                    124 	.globl _APCFG
                                    125 	.globl _PERCFG
                                    126 	.globl _B
                                    127 	.globl _T4CC1
                                    128 	.globl _T4CCTL1
                                    129 	.globl _T4CC0
                                    130 	.globl _T4CCTL0
                                    131 	.globl _T4CTL
                                    132 	.globl _T4CNT
                                    133 	.globl _RFIRQF0
                                    134 	.globl _IRCON2
                                    135 	.globl _T1CCTL2
                                    136 	.globl _T1CCTL1
                                    137 	.globl _T1CCTL0
                                    138 	.globl _T1CTL
                                    139 	.globl _T1CNTH
                                    140 	.globl _T1CNTL
                                    141 	.globl _RFST
                                    142 	.globl _ACC
                                    143 	.globl _T1CC2H
                                    144 	.globl _T1CC2L
                                    145 	.globl _T1CC1H
                                    146 	.globl _T1CC1L
                                    147 	.globl _T1CC0H
                                    148 	.globl _T1CC0L
                                    149 	.globl _RFD
                                    150 	.globl _TIMIF
                                    151 	.globl _DMAREQ
                                    152 	.globl _DMAARM
                                    153 	.globl _DMA0CFGH
                                    154 	.globl _DMA0CFGL
                                    155 	.globl _DMA1CFGH
                                    156 	.globl _DMA1CFGL
                                    157 	.globl _DMAIRQ
                                    158 	.globl _PSW
                                    159 	.globl _T3CC1
                                    160 	.globl _T3CCTL1
                                    161 	.globl _T3CC0
                                    162 	.globl _T3CCTL0
                                    163 	.globl _T3CTL
                                    164 	.globl _T3CNT
                                    165 	.globl _WDCTL
                                    166 	.globl _MEMCTR
                                    167 	.globl _CLKCONCMD
                                    168 	.globl _U0GCR
                                    169 	.globl _U0UCR
                                    170 	.globl _T2MSEL
                                    171 	.globl _U0BAUD
                                    172 	.globl _U0DBUF
                                    173 	.globl _IRCON
                                    174 	.globl _RFERRF
                                    175 	.globl _SLEEPCMD
                                    176 	.globl _RNDH
                                    177 	.globl _RNDL
                                    178 	.globl _ADCH
                                    179 	.globl _ADCL
                                    180 	.globl _IP1
                                    181 	.globl _IEN1
                                    182 	.globl _ADCCON3
                                    183 	.globl _ADCCON2
                                    184 	.globl _ADCCON1
                                    185 	.globl _ENCCS
                                    186 	.globl _ENCDO
                                    187 	.globl _ENCDI
                                    188 	.globl _T1STAT
                                    189 	.globl _PMUX
                                    190 	.globl _STLOAD
                                    191 	.globl _P2IEN
                                    192 	.globl _P0IEN
                                    193 	.globl _IP0
                                    194 	.globl _IEN0
                                    195 	.globl _T2IRQM
                                    196 	.globl _T2MOVF2
                                    197 	.globl _T2MOVF1
                                    198 	.globl _T2MOVF0
                                    199 	.globl _T2M1
                                    200 	.globl _T2M0
                                    201 	.globl _T2IRQF
                                    202 	.globl _P2
                                    203 	.globl _FMAP
                                    204 	.globl _PSBANK
                                    205 	.globl _CLKCONSTA
                                    206 	.globl _SLEEPSTA
                                    207 	.globl _T2EVTCFG
                                    208 	.globl _S1CON
                                    209 	.globl _IEN2
                                    210 	.globl _S0CON
                                    211 	.globl _ST2
                                    212 	.globl _ST1
                                    213 	.globl _ST0
                                    214 	.globl _T2CTRL
                                    215 	.globl __XPAGE
                                    216 	.globl _MPAGE
                                    217 	.globl _DPS
                                    218 	.globl _RFIRQF1
                                    219 	.globl _P1
                                    220 	.globl _P0INP
                                    221 	.globl _P1IEN
                                    222 	.globl _PICTL
                                    223 	.globl _P2IFG
                                    224 	.globl _P1IFG
                                    225 	.globl _P0IFG
                                    226 	.globl _TCON
                                    227 	.globl _PCON
                                    228 	.globl _U0CSR
                                    229 	.globl _DPH1
                                    230 	.globl _DPL1
                                    231 	.globl _DPH0
                                    232 	.globl _DPL0
                                    233 	.globl _SP
                                    234 	.globl _P0
                                    235 	.globl _osal_get_timeoutEx_PARM_2
                                    236 	.globl _osal_stop_timerEx_PARM_2
                                    237 	.globl _osal_start_reload_timer_PARM_3
                                    238 	.globl _osal_start_reload_timer_PARM_2
                                    239 	.globl _osal_start_timerEx_PARM_3
                                    240 	.globl _osal_start_timerEx_PARM_2
                                    241 	.globl _osalFindTimer_PARM_2
                                    242 	.globl _osalAddTimer_PARM_3
                                    243 	.globl _osalAddTimer_PARM_2
                                    244 	.globl _timerHead
                                    245 	.globl _TXFILTCFG
                                    246 	.globl _RFC_OBS_CTRL2
                                    247 	.globl _RFC_OBS_CTRL1
                                    248 	.globl _RFC_OBS_CTRL0
                                    249 	.globl _CSPT
                                    250 	.globl _CSPZ
                                    251 	.globl _CSPY
                                    252 	.globl _CSPX
                                    253 	.globl _CSPSTAT
                                    254 	.globl _CSPCTRL
                                    255 	.globl _CSPPROG23
                                    256 	.globl _CSPPROG22
                                    257 	.globl _CSPPROG21
                                    258 	.globl _CSPPROG20
                                    259 	.globl _CSPPROG19
                                    260 	.globl _CSPPROG18
                                    261 	.globl _CSPPROG17
                                    262 	.globl _CSPPROG16
                                    263 	.globl _CSPPROG15
                                    264 	.globl _CSPPROG14
                                    265 	.globl _CSPPROG13
                                    266 	.globl _CSPPROG12
                                    267 	.globl _CSPPROG11
                                    268 	.globl _CSPPROG10
                                    269 	.globl _CSPPROG9
                                    270 	.globl _CSPPROG8
                                    271 	.globl _CSPPROG7
                                    272 	.globl _CSPPROG6
                                    273 	.globl _CSPPROG5
                                    274 	.globl _CSPPROG4
                                    275 	.globl _CSPPROG3
                                    276 	.globl _CSPPROG2
                                    277 	.globl _CSPPROG1
                                    278 	.globl _CSPPROG0
                                    279 	.globl _PTEST1
                                    280 	.globl _PTEST0
                                    281 	.globl _ATEST
                                    282 	.globl _DACTEST2
                                    283 	.globl _DACTEST1
                                    284 	.globl _DACTEST0
                                    285 	.globl _MDMTEST1
                                    286 	.globl _MDMTEST0
                                    287 	.globl _ADCTEST2
                                    288 	.globl _ADCTEST1
                                    289 	.globl _ADCTEST0
                                    290 	.globl _AGCCTRL3
                                    291 	.globl _AGCCTRL2
                                    292 	.globl _AGCCTRL1
                                    293 	.globl _AGCCTRL0
                                    294 	.globl _FSCAL3
                                    295 	.globl _FSCAL2
                                    296 	.globl _FSCAL1
                                    297 	.globl _FSCTRL
                                    298 	.globl _RXCTRL
                                    299 	.globl _FREQEST
                                    300 	.globl _MDMCTRL1
                                    301 	.globl _MDMCTRL0
                                    302 	.globl _RFRND
                                    303 	.globl _OPAMPMC
                                    304 	.globl _RFERRM
                                    305 	.globl _RFIRQM1
                                    306 	.globl _RFIRQM0
                                    307 	.globl _TXLAST_PTR
                                    308 	.globl _TXFIRST_PTR
                                    309 	.globl _RXP1_PTR
                                    310 	.globl _RXLAST_PTR
                                    311 	.globl _RXFIRST_PTR
                                    312 	.globl _TXFIFOCNT
                                    313 	.globl _RXFIFOCNT
                                    314 	.globl _RXFIRST
                                    315 	.globl _RSSISTAT
                                    316 	.globl _RSSI
                                    317 	.globl _CCACTRL1
                                    318 	.globl _CCACTRL0
                                    319 	.globl _FSMCTRL
                                    320 	.globl _FIFOPCTRL
                                    321 	.globl _FSMSTAT1
                                    322 	.globl _FSMSTAT0
                                    323 	.globl _TXCTRL
                                    324 	.globl _TXPOWER
                                    325 	.globl _FREQCTRL
                                    326 	.globl _FREQTUNE
                                    327 	.globl _RXMASKCLR
                                    328 	.globl _RXMASKSET
                                    329 	.globl _RXENABLE
                                    330 	.globl _FRMCTRL1
                                    331 	.globl _FRMCTRL0
                                    332 	.globl _SRCEXTEN2
                                    333 	.globl _SRCEXTEN1
                                    334 	.globl _SRCEXTEN0
                                    335 	.globl _SRCSHORTEN2
                                    336 	.globl _SRCSHORTEN1
                                    337 	.globl _SRCSHORTEN0
                                    338 	.globl _SRCMATCH
                                    339 	.globl _FRMFILT1
                                    340 	.globl _FRMFILT0
                                    341 	.globl _IEEE_ADDR
                                    342 	.globl _PANIDL
                                    343 	.globl _PANIDH
                                    344 	.globl _SHORTADDRL
                                    345 	.globl _SHORTADDRH
                                    346 	.globl _USBF5
                                    347 	.globl _USBF4
                                    348 	.globl _USBF3
                                    349 	.globl _USBF2
                                    350 	.globl _USBF1
                                    351 	.globl _USBF0
                                    352 	.globl _USBCNTH
                                    353 	.globl _USBCNTL
                                    354 	.globl _USBCNT0
                                    355 	.globl _USBCSOH
                                    356 	.globl _USBCSOL
                                    357 	.globl _USBMAXO
                                    358 	.globl _USBCSIH
                                    359 	.globl _USBCSIL
                                    360 	.globl _USBCS0
                                    361 	.globl _USBMAXI
                                    362 	.globl _USBCTRL
                                    363 	.globl _USBINDEX
                                    364 	.globl _USBFRMH
                                    365 	.globl _USBFRML
                                    366 	.globl _USBCIE
                                    367 	.globl _USBOIE
                                    368 	.globl _USBIIE
                                    369 	.globl _USBCIF
                                    370 	.globl _USBOIF
                                    371 	.globl _USBIIF
                                    372 	.globl _USBPOW
                                    373 	.globl _USBADDR
                                    374 	.globl _CMPCTL
                                    375 	.globl _OPAMPS
                                    376 	.globl _OPAMPC
                                    377 	.globl _STCV2
                                    378 	.globl _STCV1
                                    379 	.globl _STCV0
                                    380 	.globl _STCS
                                    381 	.globl _STCC
                                    382 	.globl _T1CC4H
                                    383 	.globl _T1CC4L
                                    384 	.globl _T1CC3H
                                    385 	.globl _T1CC3L
                                    386 	.globl _X_T1CC2H
                                    387 	.globl _X_T1CC2L
                                    388 	.globl _X_T1CC1H
                                    389 	.globl _X_T1CC1L
                                    390 	.globl _X_T1CC0H
                                    391 	.globl _X_T1CC0L
                                    392 	.globl _T1CCTL4
                                    393 	.globl _T1CCTL3
                                    394 	.globl _X_T1CCTL2
                                    395 	.globl _X_T1CCTL1
                                    396 	.globl _X_T1CCTL0
                                    397 	.globl _CLD
                                    398 	.globl _IRCTL
                                    399 	.globl _CHIPINFO1
                                    400 	.globl _CHIPINFO0
                                    401 	.globl _FWDATA
                                    402 	.globl _FADDRH
                                    403 	.globl _FADDRL
                                    404 	.globl _FCTL
                                    405 	.globl _IVCTRL
                                    406 	.globl _BATTMON
                                    407 	.globl _SRCRC
                                    408 	.globl _DBGDATA
                                    409 	.globl _TESTREG0
                                    410 	.globl _CHIPID
                                    411 	.globl _CHVER
                                    412 	.globl _OBSSEL5
                                    413 	.globl _OBSSEL4
                                    414 	.globl _OBSSEL3
                                    415 	.globl _OBSSEL2
                                    416 	.globl _OBSSEL1
                                    417 	.globl _OBSSEL0
                                    418 	.globl _I2CIO
                                    419 	.globl _I2CWC
                                    420 	.globl _I2CADDR
                                    421 	.globl _I2CDATA
                                    422 	.globl _I2CSTAT
                                    423 	.globl _I2CCFG
                                    424 	.globl _osalTimerInit
                                    425 	.globl _osalAddTimer
                                    426 	.globl _osalFindTimer
                                    427 	.globl _osalDeleteTimer
                                    428 	.globl _osal_start_timerEx
                                    429 	.globl _osal_start_reload_timer
                                    430 	.globl _osal_stop_timerEx
                                    431 	.globl _osal_get_timeoutEx
                                    432 	.globl _osal_timer_num_active
                                    433 	.globl _osalTimerUpdate
                                    434 	.globl _osal_GetSystemClock
                                    435 ;--------------------------------------------------------
                                    436 ; special function registers
                                    437 ;--------------------------------------------------------
                                    438 	.area RSEG    (ABS,DATA)
      000000                        439 	.org 0x0000
                           000080   440 _P0	=	0x0080
                           000081   441 _SP	=	0x0081
                           000082   442 _DPL0	=	0x0082
                           000083   443 _DPH0	=	0x0083
                           000084   444 _DPL1	=	0x0084
                           000085   445 _DPH1	=	0x0085
                           000086   446 _U0CSR	=	0x0086
                           000087   447 _PCON	=	0x0087
                           000088   448 _TCON	=	0x0088
                           000089   449 _P0IFG	=	0x0089
                           00008A   450 _P1IFG	=	0x008a
                           00008B   451 _P2IFG	=	0x008b
                           00008C   452 _PICTL	=	0x008c
                           00008D   453 _P1IEN	=	0x008d
                           00008F   454 _P0INP	=	0x008f
                           000090   455 _P1	=	0x0090
                           000091   456 _RFIRQF1	=	0x0091
                           000092   457 _DPS	=	0x0092
                           000093   458 _MPAGE	=	0x0093
                           000093   459 __XPAGE	=	0x0093
                           000094   460 _T2CTRL	=	0x0094
                           000095   461 _ST0	=	0x0095
                           000096   462 _ST1	=	0x0096
                           000097   463 _ST2	=	0x0097
                           000098   464 _S0CON	=	0x0098
                           00009A   465 _IEN2	=	0x009a
                           00009B   466 _S1CON	=	0x009b
                           00009C   467 _T2EVTCFG	=	0x009c
                           00009D   468 _SLEEPSTA	=	0x009d
                           00009E   469 _CLKCONSTA	=	0x009e
                           00009F   470 _PSBANK	=	0x009f
                           00009F   471 _FMAP	=	0x009f
                           0000A0   472 _P2	=	0x00a0
                           0000A1   473 _T2IRQF	=	0x00a1
                           0000A2   474 _T2M0	=	0x00a2
                           0000A3   475 _T2M1	=	0x00a3
                           0000A4   476 _T2MOVF0	=	0x00a4
                           0000A5   477 _T2MOVF1	=	0x00a5
                           0000A6   478 _T2MOVF2	=	0x00a6
                           0000A7   479 _T2IRQM	=	0x00a7
                           0000A8   480 _IEN0	=	0x00a8
                           0000A9   481 _IP0	=	0x00a9
                           0000AB   482 _P0IEN	=	0x00ab
                           0000AC   483 _P2IEN	=	0x00ac
                           0000AD   484 _STLOAD	=	0x00ad
                           0000AE   485 _PMUX	=	0x00ae
                           0000AF   486 _T1STAT	=	0x00af
                           0000B1   487 _ENCDI	=	0x00b1
                           0000B2   488 _ENCDO	=	0x00b2
                           0000B3   489 _ENCCS	=	0x00b3
                           0000B4   490 _ADCCON1	=	0x00b4
                           0000B5   491 _ADCCON2	=	0x00b5
                           0000B6   492 _ADCCON3	=	0x00b6
                           0000B8   493 _IEN1	=	0x00b8
                           0000B9   494 _IP1	=	0x00b9
                           0000BA   495 _ADCL	=	0x00ba
                           0000BB   496 _ADCH	=	0x00bb
                           0000BC   497 _RNDL	=	0x00bc
                           0000BD   498 _RNDH	=	0x00bd
                           0000BE   499 _SLEEPCMD	=	0x00be
                           0000BF   500 _RFERRF	=	0x00bf
                           0000C0   501 _IRCON	=	0x00c0
                           0000C1   502 _U0DBUF	=	0x00c1
                           0000C2   503 _U0BAUD	=	0x00c2
                           0000C3   504 _T2MSEL	=	0x00c3
                           0000C4   505 _U0UCR	=	0x00c4
                           0000C5   506 _U0GCR	=	0x00c5
                           0000C6   507 _CLKCONCMD	=	0x00c6
                           0000C7   508 _MEMCTR	=	0x00c7
                           0000C9   509 _WDCTL	=	0x00c9
                           0000CA   510 _T3CNT	=	0x00ca
                           0000CB   511 _T3CTL	=	0x00cb
                           0000CC   512 _T3CCTL0	=	0x00cc
                           0000CD   513 _T3CC0	=	0x00cd
                           0000CE   514 _T3CCTL1	=	0x00ce
                           0000CF   515 _T3CC1	=	0x00cf
                           0000D0   516 _PSW	=	0x00d0
                           0000D1   517 _DMAIRQ	=	0x00d1
                           0000D2   518 _DMA1CFGL	=	0x00d2
                           0000D3   519 _DMA1CFGH	=	0x00d3
                           0000D4   520 _DMA0CFGL	=	0x00d4
                           0000D5   521 _DMA0CFGH	=	0x00d5
                           0000D6   522 _DMAARM	=	0x00d6
                           0000D7   523 _DMAREQ	=	0x00d7
                           0000D8   524 _TIMIF	=	0x00d8
                           0000D9   525 _RFD	=	0x00d9
                           0000DA   526 _T1CC0L	=	0x00da
                           0000DB   527 _T1CC0H	=	0x00db
                           0000DC   528 _T1CC1L	=	0x00dc
                           0000DD   529 _T1CC1H	=	0x00dd
                           0000DE   530 _T1CC2L	=	0x00de
                           0000DF   531 _T1CC2H	=	0x00df
                           0000E0   532 _ACC	=	0x00e0
                           0000E1   533 _RFST	=	0x00e1
                           0000E2   534 _T1CNTL	=	0x00e2
                           0000E3   535 _T1CNTH	=	0x00e3
                           0000E4   536 _T1CTL	=	0x00e4
                           0000E5   537 _T1CCTL0	=	0x00e5
                           0000E6   538 _T1CCTL1	=	0x00e6
                           0000E7   539 _T1CCTL2	=	0x00e7
                           0000E8   540 _IRCON2	=	0x00e8
                           0000E9   541 _RFIRQF0	=	0x00e9
                           0000EA   542 _T4CNT	=	0x00ea
                           0000EB   543 _T4CTL	=	0x00eb
                           0000EC   544 _T4CCTL0	=	0x00ec
                           0000ED   545 _T4CC0	=	0x00ed
                           0000EE   546 _T4CCTL1	=	0x00ee
                           0000EF   547 _T4CC1	=	0x00ef
                           0000F0   548 _B	=	0x00f0
                           0000F1   549 _PERCFG	=	0x00f1
                           0000F2   550 _APCFG	=	0x00f2
                           0000F3   551 _P0SEL	=	0x00f3
                           0000F4   552 _P1SEL	=	0x00f4
                           0000F5   553 _P2SEL	=	0x00f5
                           0000F6   554 _P1INP	=	0x00f6
                           0000F7   555 _P2INP	=	0x00f7
                           0000F8   556 _U1CSR	=	0x00f8
                           0000F9   557 _U1DBUF	=	0x00f9
                           0000FA   558 _U1BAUD	=	0x00fa
                           0000FB   559 _U1UCR	=	0x00fb
                           0000FC   560 _U1GCR	=	0x00fc
                           0000FD   561 _P0DIR	=	0x00fd
                           0000FE   562 _P1DIR	=	0x00fe
                           0000FF   563 _P2DIR	=	0x00ff
                                    564 ;--------------------------------------------------------
                                    565 ; special function bits
                                    566 ;--------------------------------------------------------
                                    567 	.area RSEG    (ABS,DATA)
      000000                        568 	.org 0x0000
                           000080   569 _P0_0	=	0x0080
                           000081   570 _P0_1	=	0x0081
                           000082   571 _P0_2	=	0x0082
                           000083   572 _P0_3	=	0x0083
                           000084   573 _P0_4	=	0x0084
                           000085   574 _P0_5	=	0x0085
                           000086   575 _P0_6	=	0x0086
                           000087   576 _P0_7	=	0x0087
                           000088   577 _IT0	=	0x0088
                           000089   578 _RFERRIF	=	0x0089
                           00008A   579 _IT1	=	0x008a
                           00008B   580 _URX0IF	=	0x008b
                           00008D   581 _ADCIF	=	0x008d
                           00008F   582 _URX1IF	=	0x008f
                           000090   583 _P1_0	=	0x0090
                           000091   584 _P1_1	=	0x0091
                           000092   585 _P1_2	=	0x0092
                           000093   586 _P1_3	=	0x0093
                           000094   587 _P1_4	=	0x0094
                           000095   588 _P1_5	=	0x0095
                           000096   589 _P1_6	=	0x0096
                           000097   590 _P1_7	=	0x0097
                           000098   591 _ENCIF_0	=	0x0098
                           000099   592 _ENCIF_1	=	0x0099
                           0000A0   593 _P2_0	=	0x00a0
                           0000A1   594 _P2_1	=	0x00a1
                           0000A2   595 _P2_2	=	0x00a2
                           0000A3   596 _P2_3	=	0x00a3
                           0000A4   597 _P2_4	=	0x00a4
                           0000A5   598 _P2_5	=	0x00a5
                           0000A6   599 _P2_6	=	0x00a6
                           0000A7   600 _P2_7	=	0x00a7
                           0000A8   601 _RFERRIE	=	0x00a8
                           0000A9   602 _ADCIE	=	0x00a9
                           0000AA   603 _URX0IE	=	0x00aa
                           0000AB   604 _URX1IE	=	0x00ab
                           0000AC   605 _ENCIE	=	0x00ac
                           0000AD   606 _STIE	=	0x00ad
                           0000AF   607 _EA	=	0x00af
                           0000B8   608 _DMAIE	=	0x00b8
                           0000B9   609 _T1IE	=	0x00b9
                           0000BA   610 _T2IE	=	0x00ba
                           0000BB   611 _T3IE	=	0x00bb
                           0000BC   612 _T4IE	=	0x00bc
                           0000BD   613 _P0IE	=	0x00bd
                           0000C0   614 _DMAIF	=	0x00c0
                           0000C1   615 _T1IF	=	0x00c1
                           0000C2   616 _T2IF	=	0x00c2
                           0000C3   617 _T3IF	=	0x00c3
                           0000C4   618 _T4IF	=	0x00c4
                           0000C5   619 _P0IF	=	0x00c5
                           0000C7   620 _STIF	=	0x00c7
                           0000D0   621 _P	=	0x00d0
                           0000D1   622 _F1	=	0x00d1
                           0000D2   623 _OV	=	0x00d2
                           0000D3   624 _RS0	=	0x00d3
                           0000D4   625 _RS1	=	0x00d4
                           0000D5   626 _F0	=	0x00d5
                           0000D6   627 _AC	=	0x00d6
                           0000D7   628 _CY	=	0x00d7
                           0000D8   629 _T3OVFIF	=	0x00d8
                           0000D9   630 _T3CH0IF	=	0x00d9
                           0000DA   631 _T3CH1IF	=	0x00da
                           0000DB   632 _T4OVFIF	=	0x00db
                           0000DC   633 _T4CH0IF	=	0x00dc
                           0000DD   634 _T4CH1IF	=	0x00dd
                           0000DE   635 _OVFIM	=	0x00de
                           0000E0   636 _ACC_0	=	0x00e0
                           0000E1   637 _ACC_1	=	0x00e1
                           0000E2   638 _ACC_2	=	0x00e2
                           0000E3   639 _ACC_3	=	0x00e3
                           0000E4   640 _ACC_4	=	0x00e4
                           0000E5   641 _ACC_5	=	0x00e5
                           0000E6   642 _ACC_6	=	0x00e6
                           0000E7   643 _ACC_7	=	0x00e7
                           0000E8   644 _P2IF	=	0x00e8
                           0000E9   645 _UTX0IF	=	0x00e9
                           0000EA   646 _UTX1IF	=	0x00ea
                           0000EB   647 _P1IF	=	0x00eb
                           0000EC   648 _WDTIF	=	0x00ec
                           0000F0   649 _B_0	=	0x00f0
                           0000F1   650 _B_1	=	0x00f1
                           0000F2   651 _B_2	=	0x00f2
                           0000F3   652 _B_3	=	0x00f3
                           0000F4   653 _B_4	=	0x00f4
                           0000F5   654 _B_5	=	0x00f5
                           0000F6   655 _B_6	=	0x00f6
                           0000F7   656 _B_7	=	0x00f7
                           0000F8   657 _ACTIVE	=	0x00f8
                           0000F9   658 _TX_BYTE	=	0x00f9
                           0000FA   659 _RX_BYTE	=	0x00fa
                           0000FB   660 _ERR	=	0x00fb
                           0000FC   661 _FE	=	0x00fc
                           0000FD   662 _SLAVE	=	0x00fd
                           0000FE   663 _RE	=	0x00fe
                           0000FF   664 _MODE	=	0x00ff
                                    665 ;--------------------------------------------------------
                                    666 ; overlayable register banks
                                    667 ;--------------------------------------------------------
                                    668 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        669 	.ds 8
                                    670 ;--------------------------------------------------------
                                    671 ; internal ram data
                                    672 ;--------------------------------------------------------
                                    673 	.area DSEG    (DATA)
      000010                        674 _osalAddTimer_sloc0_1_0:
      000010                        675 	.ds 3
      000013                        676 _osalTimerUpdate_sloc0_1_0:
      000013                        677 	.ds 4
                                    678 ;--------------------------------------------------------
                                    679 ; overlayable items in internal ram 
                                    680 ;--------------------------------------------------------
                                    681 ;--------------------------------------------------------
                                    682 ; indirectly addressable internal ram data
                                    683 ;--------------------------------------------------------
                                    684 	.area ISEG    (DATA)
                                    685 ;--------------------------------------------------------
                                    686 ; absolute internal ram data
                                    687 ;--------------------------------------------------------
                                    688 	.area IABS    (ABS,DATA)
                                    689 	.area IABS    (ABS,DATA)
                                    690 ;--------------------------------------------------------
                                    691 ; bit data
                                    692 ;--------------------------------------------------------
                                    693 	.area BSEG    (BIT)
                                    694 ;--------------------------------------------------------
                                    695 ; paged external ram data
                                    696 ;--------------------------------------------------------
                                    697 	.area PSEG    (PAG,XDATA)
                                    698 ;--------------------------------------------------------
                                    699 ; external ram data
                                    700 ;--------------------------------------------------------
                                    701 	.area XSEG    (XDATA)
                           006230   702 _I2CCFG	=	0x6230
                           006231   703 _I2CSTAT	=	0x6231
                           006232   704 _I2CDATA	=	0x6232
                           006233   705 _I2CADDR	=	0x6233
                           006234   706 _I2CWC	=	0x6234
                           006235   707 _I2CIO	=	0x6235
                           006243   708 _OBSSEL0	=	0x6243
                           006244   709 _OBSSEL1	=	0x6244
                           006245   710 _OBSSEL2	=	0x6245
                           006246   711 _OBSSEL3	=	0x6246
                           006247   712 _OBSSEL4	=	0x6247
                           006248   713 _OBSSEL5	=	0x6248
                           006249   714 _CHVER	=	0x6249
                           00624A   715 _CHIPID	=	0x624a
                           00624B   716 _TESTREG0	=	0x624b
                           006260   717 _DBGDATA	=	0x6260
                           006262   718 _SRCRC	=	0x6262
                           006264   719 _BATTMON	=	0x6264
                           006265   720 _IVCTRL	=	0x6265
                           006270   721 _FCTL	=	0x6270
                           006271   722 _FADDRL	=	0x6271
                           006272   723 _FADDRH	=	0x6272
                           006273   724 _FWDATA	=	0x6273
                           006276   725 _CHIPINFO0	=	0x6276
                           006277   726 _CHIPINFO1	=	0x6277
                           006281   727 _IRCTL	=	0x6281
                           006290   728 _CLD	=	0x6290
                           0062A0   729 _X_T1CCTL0	=	0x62a0
                           0062A1   730 _X_T1CCTL1	=	0x62a1
                           0062A2   731 _X_T1CCTL2	=	0x62a2
                           0062A3   732 _T1CCTL3	=	0x62a3
                           0062A4   733 _T1CCTL4	=	0x62a4
                           0062A6   734 _X_T1CC0L	=	0x62a6
                           0062A7   735 _X_T1CC0H	=	0x62a7
                           0062A8   736 _X_T1CC1L	=	0x62a8
                           0062A9   737 _X_T1CC1H	=	0x62a9
                           0062AA   738 _X_T1CC2L	=	0x62aa
                           0062AB   739 _X_T1CC2H	=	0x62ab
                           0062AC   740 _T1CC3L	=	0x62ac
                           0062AD   741 _T1CC3H	=	0x62ad
                           0062AE   742 _T1CC4L	=	0x62ae
                           0062AF   743 _T1CC4H	=	0x62af
                           0062B0   744 _STCC	=	0x62b0
                           0062B1   745 _STCS	=	0x62b1
                           0062B2   746 _STCV0	=	0x62b2
                           0062B3   747 _STCV1	=	0x62b3
                           0062B4   748 _STCV2	=	0x62b4
                           0062C0   749 _OPAMPC	=	0x62c0
                           0062C1   750 _OPAMPS	=	0x62c1
                           0062D0   751 _CMPCTL	=	0x62d0
                           006200   752 _USBADDR	=	0x6200
                           006201   753 _USBPOW	=	0x6201
                           006202   754 _USBIIF	=	0x6202
                           006204   755 _USBOIF	=	0x6204
                           006206   756 _USBCIF	=	0x6206
                           006207   757 _USBIIE	=	0x6207
                           006209   758 _USBOIE	=	0x6209
                           00620B   759 _USBCIE	=	0x620b
                           00620C   760 _USBFRML	=	0x620c
                           00620D   761 _USBFRMH	=	0x620d
                           00620E   762 _USBINDEX	=	0x620e
                           00620F   763 _USBCTRL	=	0x620f
                           006210   764 _USBMAXI	=	0x6210
                           006211   765 _USBCS0	=	0x6211
                           006211   766 _USBCSIL	=	0x6211
                           006212   767 _USBCSIH	=	0x6212
                           006213   768 _USBMAXO	=	0x6213
                           006214   769 _USBCSOL	=	0x6214
                           006215   770 _USBCSOH	=	0x6215
                           006216   771 _USBCNT0	=	0x6216
                           006216   772 _USBCNTL	=	0x6216
                           006217   773 _USBCNTH	=	0x6217
                           006220   774 _USBF0	=	0x6220
                           006222   775 _USBF1	=	0x6222
                           006224   776 _USBF2	=	0x6224
                           006226   777 _USBF3	=	0x6226
                           006228   778 _USBF4	=	0x6228
                           00622A   779 _USBF5	=	0x622a
                           006174   780 _SHORTADDRH	=	0x6174
                           006175   781 _SHORTADDRL	=	0x6175
                           006172   782 _PANIDH	=	0x6172
                           006173   783 _PANIDL	=	0x6173
                           00616A   784 _IEEE_ADDR	=	0x616a
                           006180   785 _FRMFILT0	=	0x6180
                           006181   786 _FRMFILT1	=	0x6181
                           006182   787 _SRCMATCH	=	0x6182
                           006183   788 _SRCSHORTEN0	=	0x6183
                           006184   789 _SRCSHORTEN1	=	0x6184
                           006185   790 _SRCSHORTEN2	=	0x6185
                           006186   791 _SRCEXTEN0	=	0x6186
                           006187   792 _SRCEXTEN1	=	0x6187
                           006188   793 _SRCEXTEN2	=	0x6188
                           006189   794 _FRMCTRL0	=	0x6189
                           00618A   795 _FRMCTRL1	=	0x618a
                           00618B   796 _RXENABLE	=	0x618b
                           00618C   797 _RXMASKSET	=	0x618c
                           00618D   798 _RXMASKCLR	=	0x618d
                           00618E   799 _FREQTUNE	=	0x618e
                           00618F   800 _FREQCTRL	=	0x618f
                           006190   801 _TXPOWER	=	0x6190
                           006191   802 _TXCTRL	=	0x6191
                           006192   803 _FSMSTAT0	=	0x6192
                           006193   804 _FSMSTAT1	=	0x6193
                           006194   805 _FIFOPCTRL	=	0x6194
                           006195   806 _FSMCTRL	=	0x6195
                           006196   807 _CCACTRL0	=	0x6196
                           006197   808 _CCACTRL1	=	0x6197
                           006198   809 _RSSI	=	0x6198
                           006199   810 _RSSISTAT	=	0x6199
                           00619A   811 _RXFIRST	=	0x619a
                           00619B   812 _RXFIFOCNT	=	0x619b
                           00619C   813 _TXFIFOCNT	=	0x619c
                           00619D   814 _RXFIRST_PTR	=	0x619d
                           00619E   815 _RXLAST_PTR	=	0x619e
                           00619F   816 _RXP1_PTR	=	0x619f
                           0061A1   817 _TXFIRST_PTR	=	0x61a1
                           0061A2   818 _TXLAST_PTR	=	0x61a2
                           0061A3   819 _RFIRQM0	=	0x61a3
                           0061A4   820 _RFIRQM1	=	0x61a4
                           0061A5   821 _RFERRM	=	0x61a5
                           0061A6   822 _OPAMPMC	=	0x61a6
                           0061A7   823 _RFRND	=	0x61a7
                           0061A8   824 _MDMCTRL0	=	0x61a8
                           0061A9   825 _MDMCTRL1	=	0x61a9
                           0061AA   826 _FREQEST	=	0x61aa
                           0061AB   827 _RXCTRL	=	0x61ab
                           0061AC   828 _FSCTRL	=	0x61ac
                           0061AE   829 _FSCAL1	=	0x61ae
                           0061AF   830 _FSCAL2	=	0x61af
                           0061B0   831 _FSCAL3	=	0x61b0
                           0061B1   832 _AGCCTRL0	=	0x61b1
                           0061B2   833 _AGCCTRL1	=	0x61b2
                           0061B3   834 _AGCCTRL2	=	0x61b3
                           0061B4   835 _AGCCTRL3	=	0x61b4
                           0061B5   836 _ADCTEST0	=	0x61b5
                           0061B6   837 _ADCTEST1	=	0x61b6
                           0061B7   838 _ADCTEST2	=	0x61b7
                           0061B8   839 _MDMTEST0	=	0x61b8
                           0061B9   840 _MDMTEST1	=	0x61b9
                           0061BA   841 _DACTEST0	=	0x61ba
                           0061BB   842 _DACTEST1	=	0x61bb
                           0061BC   843 _DACTEST2	=	0x61bc
                           0061BD   844 _ATEST	=	0x61bd
                           0061BE   845 _PTEST0	=	0x61be
                           0061BF   846 _PTEST1	=	0x61bf
                           0061C0   847 _CSPPROG0	=	0x61c0
                           0061C1   848 _CSPPROG1	=	0x61c1
                           0061C2   849 _CSPPROG2	=	0x61c2
                           0061C3   850 _CSPPROG3	=	0x61c3
                           0061C4   851 _CSPPROG4	=	0x61c4
                           0061C5   852 _CSPPROG5	=	0x61c5
                           0061C6   853 _CSPPROG6	=	0x61c6
                           0061C7   854 _CSPPROG7	=	0x61c7
                           0061C8   855 _CSPPROG8	=	0x61c8
                           0061C9   856 _CSPPROG9	=	0x61c9
                           0061CA   857 _CSPPROG10	=	0x61ca
                           0061CB   858 _CSPPROG11	=	0x61cb
                           0061CC   859 _CSPPROG12	=	0x61cc
                           0061CD   860 _CSPPROG13	=	0x61cd
                           0061CE   861 _CSPPROG14	=	0x61ce
                           0061CF   862 _CSPPROG15	=	0x61cf
                           0061D0   863 _CSPPROG16	=	0x61d0
                           0061D1   864 _CSPPROG17	=	0x61d1
                           0061D2   865 _CSPPROG18	=	0x61d2
                           0061D3   866 _CSPPROG19	=	0x61d3
                           0061D4   867 _CSPPROG20	=	0x61d4
                           0061D5   868 _CSPPROG21	=	0x61d5
                           0061D6   869 _CSPPROG22	=	0x61d6
                           0061D7   870 _CSPPROG23	=	0x61d7
                           0061E0   871 _CSPCTRL	=	0x61e0
                           0061E1   872 _CSPSTAT	=	0x61e1
                           0061E2   873 _CSPX	=	0x61e2
                           0061E3   874 _CSPY	=	0x61e3
                           0061E4   875 _CSPZ	=	0x61e4
                           0061E5   876 _CSPT	=	0x61e5
                           0061EB   877 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   878 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   879 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   880 _TXFILTCFG	=	0x61fa
      00101B                        881 _timerHead::
      00101B                        882 	.ds 3
      00101E                        883 _osal_systemClock:
      00101E                        884 	.ds 4
      001022                        885 _osalAddTimer_PARM_2:
      001022                        886 	.ds 2
      001024                        887 _osalAddTimer_PARM_3:
      001024                        888 	.ds 4
      001028                        889 _osalAddTimer_task_id_1_88:
      001028                        890 	.ds 1
      001029                        891 _osalAddTimer_newTimer_1_89:
      001029                        892 	.ds 3
      00102C                        893 _osalAddTimer_srchTimer_1_89:
      00102C                        894 	.ds 3
      00102F                        895 _osalFindTimer_PARM_2:
      00102F                        896 	.ds 2
      001031                        897 _osalFindTimer_task_id_1_97:
      001031                        898 	.ds 1
      001032                        899 _osalFindTimer_srchTimer_1_98:
      001032                        900 	.ds 3
      001035                        901 _osalDeleteTimer_rmTimer_1_101:
      001035                        902 	.ds 3
      001038                        903 _osal_start_timerEx_PARM_2:
      001038                        904 	.ds 2
      00103A                        905 _osal_start_timerEx_PARM_3:
      00103A                        906 	.ds 4
      00103E                        907 _osal_start_timerEx_taskID_1_104:
      00103E                        908 	.ds 1
      00103F                        909 _osal_start_reload_timer_PARM_2:
      00103F                        910 	.ds 2
      001041                        911 _osal_start_reload_timer_PARM_3:
      001041                        912 	.ds 4
      001045                        913 _osal_start_reload_timer_taskID_1_106:
      001045                        914 	.ds 1
      001046                        915 _osal_start_reload_timer_intState_1_107:
      001046                        916 	.ds 1
      001047                        917 _osal_start_reload_timer_newTimer_1_107:
      001047                        918 	.ds 3
      00104A                        919 _osal_stop_timerEx_PARM_2:
      00104A                        920 	.ds 2
      00104C                        921 _osal_stop_timerEx_task_id_1_112:
      00104C                        922 	.ds 1
      00104D                        923 _osal_stop_timerEx_intState_1_113:
      00104D                        924 	.ds 1
      00104E                        925 _osal_stop_timerEx_foundTimer_1_113:
      00104E                        926 	.ds 3
      001051                        927 _osal_get_timeoutEx_PARM_2:
      001051                        928 	.ds 2
      001053                        929 _osal_get_timeoutEx_task_id_1_118:
      001053                        930 	.ds 1
      001054                        931 _osal_get_timeoutEx_intState_1_119:
      001054                        932 	.ds 1
      001055                        933 _osal_get_timeoutEx_rtrn_1_119:
      001055                        934 	.ds 4
      001059                        935 _osal_get_timeoutEx_tmr_1_119:
      001059                        936 	.ds 3
      00105C                        937 _osal_timer_num_active_intState_1_125:
      00105C                        938 	.ds 1
      00105D                        939 _osal_timer_num_active_num_timers_1_125:
      00105D                        940 	.ds 1
      00105E                        941 _osal_timer_num_active_srchTimer_1_125:
      00105E                        942 	.ds 3
      001061                        943 _osalTimerUpdate_updateTime_1_130:
      001061                        944 	.ds 4
      001065                        945 _osalTimerUpdate_srchTimer_1_131:
      001065                        946 	.ds 3
      001068                        947 _osalTimerUpdate_prevTimer_1_131:
      001068                        948 	.ds 3
      00106B                        949 _osalTimerUpdate_timeUnion_1_131:
      00106B                        950 	.ds 4
      00106F                        951 _osalTimerUpdate_freeTimer_3_133:
      00106F                        952 	.ds 3
                                    953 ;--------------------------------------------------------
                                    954 ; absolute external ram data
                                    955 ;--------------------------------------------------------
                                    956 	.area XABS    (ABS,XDATA)
                                    957 ;--------------------------------------------------------
                                    958 ; external initialized ram data
                                    959 ;--------------------------------------------------------
                                    960 	.area HOME    (CODE)
                                    961 	.area GSINIT0 (CODE)
                                    962 	.area GSINIT1 (CODE)
                                    963 	.area GSINIT2 (CODE)
                                    964 	.area GSINIT3 (CODE)
                                    965 	.area GSINIT4 (CODE)
                                    966 	.area GSINIT5 (CODE)
                                    967 	.area GSINIT  (CODE)
                                    968 	.area GSFINAL (CODE)
                                    969 	.area CSEG    (CODE)
                                    970 ;--------------------------------------------------------
                                    971 ; global & static initialisations
                                    972 ;--------------------------------------------------------
                                    973 	.area HOME    (CODE)
                                    974 	.area GSINIT  (CODE)
                                    975 	.area GSFINAL (CODE)
                                    976 	.area GSINIT  (CODE)
                                    977 ;--------------------------------------------------------
                                    978 ; Home
                                    979 ;--------------------------------------------------------
                                    980 	.area HOME    (CODE)
                                    981 	.area HOME    (CODE)
                                    982 ;--------------------------------------------------------
                                    983 ; code
                                    984 ;--------------------------------------------------------
                                    985 	.area CSEG    (CODE)
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'osalTimerInit'
                                    988 ;------------------------------------------------------------
                                    989 ;	../osal/common/OSAL_Timers.c:118: void osalTimerInit( void )
                                    990 ;	-----------------------------------------
                                    991 ;	 function osalTimerInit
                                    992 ;	-----------------------------------------
      002396                        993 _osalTimerInit:
                           000007   994 	ar7 = 0x07
                           000006   995 	ar6 = 0x06
                           000005   996 	ar5 = 0x05
                           000004   997 	ar4 = 0x04
                           000003   998 	ar3 = 0x03
                           000002   999 	ar2 = 0x02
                           000001  1000 	ar1 = 0x01
                           000000  1001 	ar0 = 0x00
                                   1002 ;	../osal/common/OSAL_Timers.c:120: osal_systemClock = 0;
      002396 90 10 1E         [24] 1003 	mov	dptr,#_osal_systemClock
      002399 74 00            [12] 1004 	mov	a,#0x00
      00239B F0               [24] 1005 	movx	@dptr,a
      00239C A3               [24] 1006 	inc	dptr
      00239D F0               [24] 1007 	movx	@dptr,a
      00239E A3               [24] 1008 	inc	dptr
      00239F F0               [24] 1009 	movx	@dptr,a
      0023A0 A3               [24] 1010 	inc	dptr
      0023A1 F0               [24] 1011 	movx	@dptr,a
      0023A2                       1012 00101$:
      0023A2 22               [24] 1013 	ret
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'osalAddTimer'
                                   1016 ;------------------------------------------------------------
                                   1017 ;sloc0                     Allocated with name '_osalAddTimer_sloc0_1_0'
                                   1018 ;event_flag                Allocated with name '_osalAddTimer_PARM_2'
                                   1019 ;timeout                   Allocated with name '_osalAddTimer_PARM_3'
                                   1020 ;task_id                   Allocated with name '_osalAddTimer_task_id_1_88'
                                   1021 ;newTimer                  Allocated with name '_osalAddTimer_newTimer_1_89'
                                   1022 ;srchTimer                 Allocated with name '_osalAddTimer_srchTimer_1_89'
                                   1023 ;------------------------------------------------------------
                                   1024 ;	../osal/common/OSAL_Timers.c:135: osalTimerRec_t * osalAddTimer( uint8 task_id, uint16 event_flag, uint32 timeout )
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function osalAddTimer
                                   1027 ;	-----------------------------------------
      0023A3                       1028 _osalAddTimer:
      0023A3 E5 82            [12] 1029 	mov	a,dpl
      0023A5 90 10 28         [24] 1030 	mov	dptr,#_osalAddTimer_task_id_1_88
      0023A8 F0               [24] 1031 	movx	@dptr,a
                                   1032 ;	../osal/common/OSAL_Timers.c:142: newTimer = osalFindTimer( task_id, event_flag );
      0023A9 E0               [24] 1033 	movx	a,@dptr
      0023AA FF               [12] 1034 	mov	r7,a
      0023AB 90 10 22         [24] 1035 	mov	dptr,#_osalAddTimer_PARM_2
      0023AE E0               [24] 1036 	movx	a,@dptr
      0023AF FD               [12] 1037 	mov	r5,a
      0023B0 A3               [24] 1038 	inc	dptr
      0023B1 E0               [24] 1039 	movx	a,@dptr
      0023B2 FE               [12] 1040 	mov	r6,a
      0023B3 90 10 2F         [24] 1041 	mov	dptr,#_osalFindTimer_PARM_2
      0023B6 ED               [12] 1042 	mov	a,r5
      0023B7 F0               [24] 1043 	movx	@dptr,a
      0023B8 EE               [12] 1044 	mov	a,r6
      0023B9 A3               [24] 1045 	inc	dptr
      0023BA F0               [24] 1046 	movx	@dptr,a
      0023BB 8F 82            [24] 1047 	mov	dpl,r7
      0023BD 12 25 CC         [24] 1048 	lcall	_osalFindTimer
      0023C0 AD 82            [24] 1049 	mov	r5,dpl
      0023C2 AE 83            [24] 1050 	mov	r6,dph
      0023C4 AF F0            [24] 1051 	mov	r7,b
      0023C6 90 10 29         [24] 1052 	mov	dptr,#_osalAddTimer_newTimer_1_89
      0023C9 ED               [12] 1053 	mov	a,r5
      0023CA F0               [24] 1054 	movx	@dptr,a
      0023CB EE               [12] 1055 	mov	a,r6
      0023CC A3               [24] 1056 	inc	dptr
      0023CD F0               [24] 1057 	movx	@dptr,a
      0023CE EF               [12] 1058 	mov	a,r7
      0023CF A3               [24] 1059 	inc	dptr
      0023D0 F0               [24] 1060 	movx	@dptr,a
                                   1061 ;	../osal/common/OSAL_Timers.c:143: if ( newTimer )
      0023D1 ED               [12] 1062 	mov	a,r5
      0023D2 4E               [12] 1063 	orl	a,r6
      0023D3 70 03            [24] 1064 	jnz	00130$
      0023D5 02 24 22         [24] 1065 	ljmp	00111$
      0023D8                       1066 00130$:
                                   1067 ;	../osal/common/OSAL_Timers.c:146: newTimer->timeout.time32 = timeout;
      0023D8 90 10 29         [24] 1068 	mov	dptr,#_osalAddTimer_newTimer_1_89
      0023DB E0               [24] 1069 	movx	a,@dptr
      0023DC FD               [12] 1070 	mov	r5,a
      0023DD A3               [24] 1071 	inc	dptr
      0023DE E0               [24] 1072 	movx	a,@dptr
      0023DF FE               [12] 1073 	mov	r6,a
      0023E0 A3               [24] 1074 	inc	dptr
      0023E1 E0               [24] 1075 	movx	a,@dptr
      0023E2 FF               [12] 1076 	mov	r7,a
      0023E3 74 03            [12] 1077 	mov	a,#0x03
      0023E5 2D               [12] 1078 	add	a,r5
      0023E6 F5 10            [12] 1079 	mov	_osalAddTimer_sloc0_1_0,a
      0023E8 74 00            [12] 1080 	mov	a,#0x00
      0023EA 3E               [12] 1081 	addc	a,r6
      0023EB F5 11            [12] 1082 	mov	(_osalAddTimer_sloc0_1_0 + 1),a
      0023ED 8F 12            [24] 1083 	mov	(_osalAddTimer_sloc0_1_0 + 2),r7
      0023EF 90 10 24         [24] 1084 	mov	dptr,#_osalAddTimer_PARM_3
      0023F2 E0               [24] 1085 	movx	a,@dptr
      0023F3 F8               [12] 1086 	mov	r0,a
      0023F4 A3               [24] 1087 	inc	dptr
      0023F5 E0               [24] 1088 	movx	a,@dptr
      0023F6 F9               [12] 1089 	mov	r1,a
      0023F7 A3               [24] 1090 	inc	dptr
      0023F8 E0               [24] 1091 	movx	a,@dptr
      0023F9 FB               [12] 1092 	mov	r3,a
      0023FA A3               [24] 1093 	inc	dptr
      0023FB E0               [24] 1094 	movx	a,@dptr
      0023FC FC               [12] 1095 	mov	r4,a
      0023FD 85 10 82         [24] 1096 	mov	dpl,_osalAddTimer_sloc0_1_0
      002400 85 11 83         [24] 1097 	mov	dph,(_osalAddTimer_sloc0_1_0 + 1)
      002403 85 12 F0         [24] 1098 	mov	b,(_osalAddTimer_sloc0_1_0 + 2)
      002406 E8               [12] 1099 	mov	a,r0
      002407 12 59 AA         [24] 1100 	lcall	__gptrput
      00240A A3               [24] 1101 	inc	dptr
      00240B E9               [12] 1102 	mov	a,r1
      00240C 12 59 AA         [24] 1103 	lcall	__gptrput
      00240F A3               [24] 1104 	inc	dptr
      002410 EB               [12] 1105 	mov	a,r3
      002411 12 59 AA         [24] 1106 	lcall	__gptrput
      002414 A3               [24] 1107 	inc	dptr
      002415 EC               [12] 1108 	mov	a,r4
      002416 12 59 AA         [24] 1109 	lcall	__gptrput
                                   1110 ;	../osal/common/OSAL_Timers.c:148: return ( newTimer );
      002419 8D 82            [24] 1111 	mov	dpl,r5
      00241B 8E 83            [24] 1112 	mov	dph,r6
      00241D 8F F0            [24] 1113 	mov	b,r7
      00241F 02 25 CB         [24] 1114 	ljmp	00113$
      002422                       1115 00111$:
                                   1116 ;	../osal/common/OSAL_Timers.c:153: newTimer = osal_mem_alloc( sizeof( osalTimerRec_t ) );
      002422 75 82 0E         [24] 1117 	mov	dpl,#0x0E
      002425 75 83 00         [24] 1118 	mov	dph,#0x00
      002428 12 1F B4         [24] 1119 	lcall	_osal_mem_alloc
      00242B AD 82            [24] 1120 	mov	r5,dpl
      00242D AE 83            [24] 1121 	mov	r6,dph
      00242F AF F0            [24] 1122 	mov	r7,b
      002431 90 10 29         [24] 1123 	mov	dptr,#_osalAddTimer_newTimer_1_89
      002434 ED               [12] 1124 	mov	a,r5
      002435 F0               [24] 1125 	movx	@dptr,a
      002436 EE               [12] 1126 	mov	a,r6
      002437 A3               [24] 1127 	inc	dptr
      002438 F0               [24] 1128 	movx	@dptr,a
      002439 EF               [12] 1129 	mov	a,r7
      00243A A3               [24] 1130 	inc	dptr
      00243B F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	../osal/common/OSAL_Timers.c:159: if ( newTimer )
      00243C ED               [12] 1133 	mov	a,r5
      00243D 4E               [12] 1134 	orl	a,r6
      00243E 70 03            [24] 1135 	jnz	00131$
      002440 02 25 C2         [24] 1136 	ljmp	00108$
      002443                       1137 00131$:
                                   1138 ;	../osal/common/OSAL_Timers.c:162: newTimer->event_flag = event_flag;
      002443 90 10 29         [24] 1139 	mov	dptr,#_osalAddTimer_newTimer_1_89
      002446 E0               [24] 1140 	movx	a,@dptr
      002447 FD               [12] 1141 	mov	r5,a
      002448 A3               [24] 1142 	inc	dptr
      002449 E0               [24] 1143 	movx	a,@dptr
      00244A FE               [12] 1144 	mov	r6,a
      00244B A3               [24] 1145 	inc	dptr
      00244C E0               [24] 1146 	movx	a,@dptr
      00244D FF               [12] 1147 	mov	r7,a
      00244E 74 07            [12] 1148 	mov	a,#0x07
      002450 2D               [12] 1149 	add	a,r5
      002451 FA               [12] 1150 	mov	r2,a
      002452 74 00            [12] 1151 	mov	a,#0x00
      002454 3E               [12] 1152 	addc	a,r6
      002455 FB               [12] 1153 	mov	r3,a
      002456 8F 04            [24] 1154 	mov	ar4,r7
      002458 90 10 22         [24] 1155 	mov	dptr,#_osalAddTimer_PARM_2
      00245B E0               [24] 1156 	movx	a,@dptr
      00245C F8               [12] 1157 	mov	r0,a
      00245D A3               [24] 1158 	inc	dptr
      00245E E0               [24] 1159 	movx	a,@dptr
      00245F F9               [12] 1160 	mov	r1,a
      002460 8A 82            [24] 1161 	mov	dpl,r2
      002462 8B 83            [24] 1162 	mov	dph,r3
      002464 8C F0            [24] 1163 	mov	b,r4
      002466 E8               [12] 1164 	mov	a,r0
      002467 12 59 AA         [24] 1165 	lcall	__gptrput
      00246A A3               [24] 1166 	inc	dptr
      00246B E9               [12] 1167 	mov	a,r1
      00246C 12 59 AA         [24] 1168 	lcall	__gptrput
                                   1169 ;	../osal/common/OSAL_Timers.c:163: newTimer->task_id = task_id;
      00246F 74 09            [12] 1170 	mov	a,#0x09
      002471 2D               [12] 1171 	add	a,r5
      002472 FA               [12] 1172 	mov	r2,a
      002473 74 00            [12] 1173 	mov	a,#0x00
      002475 3E               [12] 1174 	addc	a,r6
      002476 FB               [12] 1175 	mov	r3,a
      002477 8F 04            [24] 1176 	mov	ar4,r7
      002479 90 10 28         [24] 1177 	mov	dptr,#_osalAddTimer_task_id_1_88
      00247C E0               [24] 1178 	movx	a,@dptr
      00247D F9               [12] 1179 	mov	r1,a
      00247E 8A 82            [24] 1180 	mov	dpl,r2
      002480 8B 83            [24] 1181 	mov	dph,r3
      002482 8C F0            [24] 1182 	mov	b,r4
      002484 E9               [12] 1183 	mov	a,r1
      002485 12 59 AA         [24] 1184 	lcall	__gptrput
                                   1185 ;	../osal/common/OSAL_Timers.c:165: newTimer->timeout.time32 = timeout;
      002488 74 03            [12] 1186 	mov	a,#0x03
      00248A 2D               [12] 1187 	add	a,r5
      00248B F5 10            [12] 1188 	mov	_osalAddTimer_sloc0_1_0,a
      00248D 74 00            [12] 1189 	mov	a,#0x00
      00248F 3E               [12] 1190 	addc	a,r6
      002490 F5 11            [12] 1191 	mov	(_osalAddTimer_sloc0_1_0 + 1),a
      002492 8F 12            [24] 1192 	mov	(_osalAddTimer_sloc0_1_0 + 2),r7
      002494 90 10 24         [24] 1193 	mov	dptr,#_osalAddTimer_PARM_3
      002497 E0               [24] 1194 	movx	a,@dptr
      002498 F8               [12] 1195 	mov	r0,a
      002499 A3               [24] 1196 	inc	dptr
      00249A E0               [24] 1197 	movx	a,@dptr
      00249B F9               [12] 1198 	mov	r1,a
      00249C A3               [24] 1199 	inc	dptr
      00249D E0               [24] 1200 	movx	a,@dptr
      00249E FB               [12] 1201 	mov	r3,a
      00249F A3               [24] 1202 	inc	dptr
      0024A0 E0               [24] 1203 	movx	a,@dptr
      0024A1 FC               [12] 1204 	mov	r4,a
      0024A2 85 10 82         [24] 1205 	mov	dpl,_osalAddTimer_sloc0_1_0
      0024A5 85 11 83         [24] 1206 	mov	dph,(_osalAddTimer_sloc0_1_0 + 1)
      0024A8 85 12 F0         [24] 1207 	mov	b,(_osalAddTimer_sloc0_1_0 + 2)
      0024AB E8               [12] 1208 	mov	a,r0
      0024AC 12 59 AA         [24] 1209 	lcall	__gptrput
      0024AF A3               [24] 1210 	inc	dptr
      0024B0 E9               [12] 1211 	mov	a,r1
      0024B1 12 59 AA         [24] 1212 	lcall	__gptrput
      0024B4 A3               [24] 1213 	inc	dptr
      0024B5 EB               [12] 1214 	mov	a,r3
      0024B6 12 59 AA         [24] 1215 	lcall	__gptrput
      0024B9 A3               [24] 1216 	inc	dptr
      0024BA EC               [12] 1217 	mov	a,r4
      0024BB 12 59 AA         [24] 1218 	lcall	__gptrput
                                   1219 ;	../osal/common/OSAL_Timers.c:166: newTimer->next = (void *)NULL;
      0024BE 8D 82            [24] 1220 	mov	dpl,r5
      0024C0 8E 83            [24] 1221 	mov	dph,r6
      0024C2 8F F0            [24] 1222 	mov	b,r7
      0024C4 74 00            [12] 1223 	mov	a,#0x00
      0024C6 12 59 AA         [24] 1224 	lcall	__gptrput
      0024C9 A3               [24] 1225 	inc	dptr
      0024CA 12 59 AA         [24] 1226 	lcall	__gptrput
      0024CD A3               [24] 1227 	inc	dptr
      0024CE 12 59 AA         [24] 1228 	lcall	__gptrput
                                   1229 ;	../osal/common/OSAL_Timers.c:167: newTimer->reloadTimeout = 0;
      0024D1 74 0A            [12] 1230 	mov	a,#0x0A
      0024D3 2D               [12] 1231 	add	a,r5
      0024D4 FD               [12] 1232 	mov	r5,a
      0024D5 74 00            [12] 1233 	mov	a,#0x00
      0024D7 3E               [12] 1234 	addc	a,r6
      0024D8 FE               [12] 1235 	mov	r6,a
      0024D9 8D 82            [24] 1236 	mov	dpl,r5
      0024DB 8E 83            [24] 1237 	mov	dph,r6
      0024DD 8F F0            [24] 1238 	mov	b,r7
      0024DF 74 00            [12] 1239 	mov	a,#0x00
      0024E1 12 59 AA         [24] 1240 	lcall	__gptrput
      0024E4 A3               [24] 1241 	inc	dptr
      0024E5 12 59 AA         [24] 1242 	lcall	__gptrput
      0024E8 A3               [24] 1243 	inc	dptr
      0024E9 12 59 AA         [24] 1244 	lcall	__gptrput
      0024EC A3               [24] 1245 	inc	dptr
      0024ED 12 59 AA         [24] 1246 	lcall	__gptrput
                                   1247 ;	../osal/common/OSAL_Timers.c:170: if ( timerHead == NULL )
      0024F0 90 10 1B         [24] 1248 	mov	dptr,#_timerHead
      0024F3 E0               [24] 1249 	movx	a,@dptr
      0024F4 FD               [12] 1250 	mov	r5,a
      0024F5 A3               [24] 1251 	inc	dptr
      0024F6 E0               [24] 1252 	movx	a,@dptr
      0024F7 FE               [12] 1253 	mov	r6,a
      0024F8 A3               [24] 1254 	inc	dptr
      0024F9 E0               [24] 1255 	movx	a,@dptr
      0024FA FF               [12] 1256 	mov	r7,a
      0024FB ED               [12] 1257 	mov	a,r5
      0024FC 4E               [12] 1258 	orl	a,r6
      0024FD 60 03            [24] 1259 	jz	00132$
      0024FF 02 25 1B         [24] 1260 	ljmp	00105$
      002502                       1261 00132$:
                                   1262 ;	../osal/common/OSAL_Timers.c:173: timerHead = newTimer;
      002502 90 10 29         [24] 1263 	mov	dptr,#_osalAddTimer_newTimer_1_89
      002505 E0               [24] 1264 	movx	a,@dptr
      002506 FD               [12] 1265 	mov	r5,a
      002507 A3               [24] 1266 	inc	dptr
      002508 E0               [24] 1267 	movx	a,@dptr
      002509 FE               [12] 1268 	mov	r6,a
      00250A A3               [24] 1269 	inc	dptr
      00250B E0               [24] 1270 	movx	a,@dptr
      00250C FF               [12] 1271 	mov	r7,a
      00250D 90 10 1B         [24] 1272 	mov	dptr,#_timerHead
      002510 ED               [12] 1273 	mov	a,r5
      002511 F0               [24] 1274 	movx	@dptr,a
      002512 EE               [12] 1275 	mov	a,r6
      002513 A3               [24] 1276 	inc	dptr
      002514 F0               [24] 1277 	movx	@dptr,a
      002515 EF               [12] 1278 	mov	a,r7
      002516 A3               [24] 1279 	inc	dptr
      002517 F0               [24] 1280 	movx	@dptr,a
      002518 02 25 AE         [24] 1281 	ljmp	00106$
      00251B                       1282 00105$:
                                   1283 ;	../osal/common/OSAL_Timers.c:180: srchTimer = timerHead;
      00251B 90 10 1B         [24] 1284 	mov	dptr,#_timerHead
      00251E E0               [24] 1285 	movx	a,@dptr
      00251F FD               [12] 1286 	mov	r5,a
      002520 A3               [24] 1287 	inc	dptr
      002521 E0               [24] 1288 	movx	a,@dptr
      002522 FE               [12] 1289 	mov	r6,a
      002523 A3               [24] 1290 	inc	dptr
      002524 E0               [24] 1291 	movx	a,@dptr
      002525 FF               [12] 1292 	mov	r7,a
      002526 90 10 2C         [24] 1293 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      002529 ED               [12] 1294 	mov	a,r5
      00252A F0               [24] 1295 	movx	@dptr,a
      00252B EE               [12] 1296 	mov	a,r6
      00252C A3               [24] 1297 	inc	dptr
      00252D F0               [24] 1298 	movx	@dptr,a
      00252E EF               [12] 1299 	mov	a,r7
      00252F A3               [24] 1300 	inc	dptr
      002530 F0               [24] 1301 	movx	@dptr,a
                                   1302 ;	../osal/common/OSAL_Timers.c:183: while ( srchTimer->next ){
      002531                       1303 00101$:
      002531 90 10 2C         [24] 1304 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      002534 E0               [24] 1305 	movx	a,@dptr
      002535 FD               [12] 1306 	mov	r5,a
      002536 A3               [24] 1307 	inc	dptr
      002537 E0               [24] 1308 	movx	a,@dptr
      002538 FE               [12] 1309 	mov	r6,a
      002539 A3               [24] 1310 	inc	dptr
      00253A E0               [24] 1311 	movx	a,@dptr
      00253B FF               [12] 1312 	mov	r7,a
      00253C 8D 82            [24] 1313 	mov	dpl,r5
      00253E 8E 83            [24] 1314 	mov	dph,r6
      002540 8F F0            [24] 1315 	mov	b,r7
      002542 12 5B 16         [24] 1316 	lcall	__gptrget
      002545 FD               [12] 1317 	mov	r5,a
      002546 A3               [24] 1318 	inc	dptr
      002547 12 5B 16         [24] 1319 	lcall	__gptrget
      00254A FE               [12] 1320 	mov	r6,a
      00254B A3               [24] 1321 	inc	dptr
      00254C 12 5B 16         [24] 1322 	lcall	__gptrget
      00254F FF               [12] 1323 	mov	r7,a
      002550 ED               [12] 1324 	mov	a,r5
      002551 4E               [12] 1325 	orl	a,r6
      002552 70 03            [24] 1326 	jnz	00133$
      002554 02 25 84         [24] 1327 	ljmp	00103$
      002557                       1328 00133$:
                                   1329 ;	../osal/common/OSAL_Timers.c:184: srchTimer = srchTimer->next;
      002557 90 10 2C         [24] 1330 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      00255A E0               [24] 1331 	movx	a,@dptr
      00255B FD               [12] 1332 	mov	r5,a
      00255C A3               [24] 1333 	inc	dptr
      00255D E0               [24] 1334 	movx	a,@dptr
      00255E FE               [12] 1335 	mov	r6,a
      00255F A3               [24] 1336 	inc	dptr
      002560 E0               [24] 1337 	movx	a,@dptr
      002561 FF               [12] 1338 	mov	r7,a
      002562 8D 82            [24] 1339 	mov	dpl,r5
      002564 8E 83            [24] 1340 	mov	dph,r6
      002566 8F F0            [24] 1341 	mov	b,r7
      002568 12 5B 16         [24] 1342 	lcall	__gptrget
      00256B FD               [12] 1343 	mov	r5,a
      00256C A3               [24] 1344 	inc	dptr
      00256D 12 5B 16         [24] 1345 	lcall	__gptrget
      002570 FE               [12] 1346 	mov	r6,a
      002571 A3               [24] 1347 	inc	dptr
      002572 12 5B 16         [24] 1348 	lcall	__gptrget
      002575 FF               [12] 1349 	mov	r7,a
      002576 90 10 2C         [24] 1350 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      002579 ED               [12] 1351 	mov	a,r5
      00257A F0               [24] 1352 	movx	@dptr,a
      00257B EE               [12] 1353 	mov	a,r6
      00257C A3               [24] 1354 	inc	dptr
      00257D F0               [24] 1355 	movx	@dptr,a
      00257E EF               [12] 1356 	mov	a,r7
      00257F A3               [24] 1357 	inc	dptr
      002580 F0               [24] 1358 	movx	@dptr,a
      002581 02 25 31         [24] 1359 	ljmp	00101$
      002584                       1360 00103$:
                                   1361 ;	../osal/common/OSAL_Timers.c:189: srchTimer->next = newTimer;
      002584 90 10 2C         [24] 1362 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      002587 E0               [24] 1363 	movx	a,@dptr
      002588 FD               [12] 1364 	mov	r5,a
      002589 A3               [24] 1365 	inc	dptr
      00258A E0               [24] 1366 	movx	a,@dptr
      00258B FE               [12] 1367 	mov	r6,a
      00258C A3               [24] 1368 	inc	dptr
      00258D E0               [24] 1369 	movx	a,@dptr
      00258E FF               [12] 1370 	mov	r7,a
      00258F 90 10 29         [24] 1371 	mov	dptr,#_osalAddTimer_newTimer_1_89
      002592 E0               [24] 1372 	movx	a,@dptr
      002593 FA               [12] 1373 	mov	r2,a
      002594 A3               [24] 1374 	inc	dptr
      002595 E0               [24] 1375 	movx	a,@dptr
      002596 FB               [12] 1376 	mov	r3,a
      002597 A3               [24] 1377 	inc	dptr
      002598 E0               [24] 1378 	movx	a,@dptr
      002599 FC               [12] 1379 	mov	r4,a
      00259A 8D 82            [24] 1380 	mov	dpl,r5
      00259C 8E 83            [24] 1381 	mov	dph,r6
      00259E 8F F0            [24] 1382 	mov	b,r7
      0025A0 EA               [12] 1383 	mov	a,r2
      0025A1 12 59 AA         [24] 1384 	lcall	__gptrput
      0025A4 A3               [24] 1385 	inc	dptr
      0025A5 EB               [12] 1386 	mov	a,r3
      0025A6 12 59 AA         [24] 1387 	lcall	__gptrput
      0025A9 A3               [24] 1388 	inc	dptr
      0025AA EC               [12] 1389 	mov	a,r4
      0025AB 12 59 AA         [24] 1390 	lcall	__gptrput
      0025AE                       1391 00106$:
                                   1392 ;	../osal/common/OSAL_Timers.c:195: return ( newTimer );
      0025AE 90 10 29         [24] 1393 	mov	dptr,#_osalAddTimer_newTimer_1_89
      0025B1 E0               [24] 1394 	movx	a,@dptr
      0025B2 FD               [12] 1395 	mov	r5,a
      0025B3 A3               [24] 1396 	inc	dptr
      0025B4 E0               [24] 1397 	movx	a,@dptr
      0025B5 FE               [12] 1398 	mov	r6,a
      0025B6 A3               [24] 1399 	inc	dptr
      0025B7 E0               [24] 1400 	movx	a,@dptr
      0025B8 FF               [12] 1401 	mov	r7,a
      0025B9 8D 82            [24] 1402 	mov	dpl,r5
      0025BB 8E 83            [24] 1403 	mov	dph,r6
      0025BD 8F F0            [24] 1404 	mov	b,r7
      0025BF 02 25 CB         [24] 1405 	ljmp	00113$
      0025C2                       1406 00108$:
                                   1407 ;	../osal/common/OSAL_Timers.c:200: return ( (osalTimerRec_t *)NULL );
      0025C2 75 82 00         [24] 1408 	mov	dpl,#0x00
      0025C5 75 83 00         [24] 1409 	mov	dph,#0x00
      0025C8 75 F0 00         [24] 1410 	mov	b,#0x00
      0025CB                       1411 00113$:
      0025CB 22               [24] 1412 	ret
                                   1413 ;------------------------------------------------------------
                                   1414 ;Allocation info for local variables in function 'osalFindTimer'
                                   1415 ;------------------------------------------------------------
                                   1416 ;event_flag                Allocated with name '_osalFindTimer_PARM_2'
                                   1417 ;task_id                   Allocated with name '_osalFindTimer_task_id_1_97'
                                   1418 ;srchTimer                 Allocated with name '_osalFindTimer_srchTimer_1_98'
                                   1419 ;------------------------------------------------------------
                                   1420 ;	../osal/common/OSAL_Timers.c:216: osalTimerRec_t *osalFindTimer( uint8 task_id, uint16 event_flag )
                                   1421 ;	-----------------------------------------
                                   1422 ;	 function osalFindTimer
                                   1423 ;	-----------------------------------------
      0025CC                       1424 _osalFindTimer:
      0025CC E5 82            [12] 1425 	mov	a,dpl
      0025CE 90 10 31         [24] 1426 	mov	dptr,#_osalFindTimer_task_id_1_97
      0025D1 F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	../osal/common/OSAL_Timers.c:221: srchTimer = timerHead;
      0025D2 90 10 1B         [24] 1429 	mov	dptr,#_timerHead
      0025D5 E0               [24] 1430 	movx	a,@dptr
      0025D6 FD               [12] 1431 	mov	r5,a
      0025D7 A3               [24] 1432 	inc	dptr
      0025D8 E0               [24] 1433 	movx	a,@dptr
      0025D9 FE               [12] 1434 	mov	r6,a
      0025DA A3               [24] 1435 	inc	dptr
      0025DB E0               [24] 1436 	movx	a,@dptr
      0025DC FF               [12] 1437 	mov	r7,a
      0025DD 90 10 32         [24] 1438 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      0025E0 ED               [12] 1439 	mov	a,r5
      0025E1 F0               [24] 1440 	movx	@dptr,a
      0025E2 EE               [12] 1441 	mov	a,r6
      0025E3 A3               [24] 1442 	inc	dptr
      0025E4 F0               [24] 1443 	movx	@dptr,a
      0025E5 EF               [12] 1444 	mov	a,r7
      0025E6 A3               [24] 1445 	inc	dptr
      0025E7 F0               [24] 1446 	movx	@dptr,a
                                   1447 ;	../osal/common/OSAL_Timers.c:224: while ( srchTimer )
      0025E8 90 10 31         [24] 1448 	mov	dptr,#_osalFindTimer_task_id_1_97
      0025EB E0               [24] 1449 	movx	a,@dptr
      0025EC FF               [12] 1450 	mov	r7,a
      0025ED 90 10 2F         [24] 1451 	mov	dptr,#_osalFindTimer_PARM_2
      0025F0 E0               [24] 1452 	movx	a,@dptr
      0025F1 FD               [12] 1453 	mov	r5,a
      0025F2 A3               [24] 1454 	inc	dptr
      0025F3 E0               [24] 1455 	movx	a,@dptr
      0025F4 FE               [12] 1456 	mov	r6,a
      0025F5                       1457 00104$:
      0025F5 90 10 32         [24] 1458 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      0025F8 E0               [24] 1459 	movx	a,@dptr
      0025F9 FA               [12] 1460 	mov	r2,a
      0025FA A3               [24] 1461 	inc	dptr
      0025FB E0               [24] 1462 	movx	a,@dptr
      0025FC FB               [12] 1463 	mov	r3,a
      0025FD A3               [24] 1464 	inc	dptr
      0025FE E0               [24] 1465 	movx	a,@dptr
      0025FF FC               [12] 1466 	mov	r4,a
      002600 EA               [12] 1467 	mov	a,r2
      002601 4B               [12] 1468 	orl	a,r3
      002602 70 03            [24] 1469 	jnz	00118$
      002604 02 26 87         [24] 1470 	ljmp	00106$
      002607                       1471 00118$:
                                   1472 ;	../osal/common/OSAL_Timers.c:228: if ( srchTimer->event_flag == event_flag &&
      002607 90 10 32         [24] 1473 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      00260A E0               [24] 1474 	movx	a,@dptr
      00260B FA               [12] 1475 	mov	r2,a
      00260C A3               [24] 1476 	inc	dptr
      00260D E0               [24] 1477 	movx	a,@dptr
      00260E FB               [12] 1478 	mov	r3,a
      00260F A3               [24] 1479 	inc	dptr
      002610 E0               [24] 1480 	movx	a,@dptr
      002611 FC               [12] 1481 	mov	r4,a
      002612 74 07            [12] 1482 	mov	a,#0x07
      002614 2A               [12] 1483 	add	a,r2
      002615 FA               [12] 1484 	mov	r2,a
      002616 74 00            [12] 1485 	mov	a,#0x00
      002618 3B               [12] 1486 	addc	a,r3
      002619 FB               [12] 1487 	mov	r3,a
      00261A 8A 82            [24] 1488 	mov	dpl,r2
      00261C 8B 83            [24] 1489 	mov	dph,r3
      00261E 8C F0            [24] 1490 	mov	b,r4
      002620 12 5B 16         [24] 1491 	lcall	__gptrget
      002623 FA               [12] 1492 	mov	r2,a
      002624 A3               [24] 1493 	inc	dptr
      002625 12 5B 16         [24] 1494 	lcall	__gptrget
      002628 FB               [12] 1495 	mov	r3,a
      002629 EA               [12] 1496 	mov	a,r2
      00262A B5 05 06         [24] 1497 	cjne	a,ar5,00119$
      00262D EB               [12] 1498 	mov	a,r3
      00262E B5 06 02         [24] 1499 	cjne	a,ar6,00119$
      002631 80 03            [24] 1500 	sjmp	00120$
      002633                       1501 00119$:
      002633 02 26 5A         [24] 1502 	ljmp	00102$
      002636                       1503 00120$:
                                   1504 ;	../osal/common/OSAL_Timers.c:229: srchTimer->task_id == task_id )
      002636 90 10 32         [24] 1505 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      002639 E0               [24] 1506 	movx	a,@dptr
      00263A FA               [12] 1507 	mov	r2,a
      00263B A3               [24] 1508 	inc	dptr
      00263C E0               [24] 1509 	movx	a,@dptr
      00263D FB               [12] 1510 	mov	r3,a
      00263E A3               [24] 1511 	inc	dptr
      00263F E0               [24] 1512 	movx	a,@dptr
      002640 FC               [12] 1513 	mov	r4,a
      002641 74 09            [12] 1514 	mov	a,#0x09
      002643 2A               [12] 1515 	add	a,r2
      002644 FA               [12] 1516 	mov	r2,a
      002645 74 00            [12] 1517 	mov	a,#0x00
      002647 3B               [12] 1518 	addc	a,r3
      002648 FB               [12] 1519 	mov	r3,a
      002649 8A 82            [24] 1520 	mov	dpl,r2
      00264B 8B 83            [24] 1521 	mov	dph,r3
      00264D 8C F0            [24] 1522 	mov	b,r4
      00264F 12 5B 16         [24] 1523 	lcall	__gptrget
      002652 FA               [12] 1524 	mov	r2,a
      002653 EA               [12] 1525 	mov	a,r2
      002654 B5 07 03         [24] 1526 	cjne	a,ar7,00121$
      002657 02 26 87         [24] 1527 	ljmp	00106$
      00265A                       1528 00121$:
                                   1529 ;	../osal/common/OSAL_Timers.c:231: break;
      00265A                       1530 00102$:
                                   1531 ;	../osal/common/OSAL_Timers.c:237: srchTimer = srchTimer->next;
      00265A 90 10 32         [24] 1532 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      00265D E0               [24] 1533 	movx	a,@dptr
      00265E FA               [12] 1534 	mov	r2,a
      00265F A3               [24] 1535 	inc	dptr
      002660 E0               [24] 1536 	movx	a,@dptr
      002661 FB               [12] 1537 	mov	r3,a
      002662 A3               [24] 1538 	inc	dptr
      002663 E0               [24] 1539 	movx	a,@dptr
      002664 FC               [12] 1540 	mov	r4,a
      002665 8A 82            [24] 1541 	mov	dpl,r2
      002667 8B 83            [24] 1542 	mov	dph,r3
      002669 8C F0            [24] 1543 	mov	b,r4
      00266B 12 5B 16         [24] 1544 	lcall	__gptrget
      00266E FA               [12] 1545 	mov	r2,a
      00266F A3               [24] 1546 	inc	dptr
      002670 12 5B 16         [24] 1547 	lcall	__gptrget
      002673 FB               [12] 1548 	mov	r3,a
      002674 A3               [24] 1549 	inc	dptr
      002675 12 5B 16         [24] 1550 	lcall	__gptrget
      002678 FC               [12] 1551 	mov	r4,a
      002679 90 10 32         [24] 1552 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      00267C EA               [12] 1553 	mov	a,r2
      00267D F0               [24] 1554 	movx	@dptr,a
      00267E EB               [12] 1555 	mov	a,r3
      00267F A3               [24] 1556 	inc	dptr
      002680 F0               [24] 1557 	movx	@dptr,a
      002681 EC               [12] 1558 	mov	a,r4
      002682 A3               [24] 1559 	inc	dptr
      002683 F0               [24] 1560 	movx	@dptr,a
      002684 02 25 F5         [24] 1561 	ljmp	00104$
      002687                       1562 00106$:
                                   1563 ;	../osal/common/OSAL_Timers.c:241: return ( srchTimer );
      002687 90 10 32         [24] 1564 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      00268A E0               [24] 1565 	movx	a,@dptr
      00268B FD               [12] 1566 	mov	r5,a
      00268C A3               [24] 1567 	inc	dptr
      00268D E0               [24] 1568 	movx	a,@dptr
      00268E FE               [12] 1569 	mov	r6,a
      00268F A3               [24] 1570 	inc	dptr
      002690 E0               [24] 1571 	movx	a,@dptr
      002691 FF               [12] 1572 	mov	r7,a
      002692 8D 82            [24] 1573 	mov	dpl,r5
      002694 8E 83            [24] 1574 	mov	dph,r6
      002696 8F F0            [24] 1575 	mov	b,r7
      002698                       1576 00107$:
      002698 22               [24] 1577 	ret
                                   1578 ;------------------------------------------------------------
                                   1579 ;Allocation info for local variables in function 'osalDeleteTimer'
                                   1580 ;------------------------------------------------------------
                                   1581 ;rmTimer                   Allocated with name '_osalDeleteTimer_rmTimer_1_101'
                                   1582 ;------------------------------------------------------------
                                   1583 ;	../osal/common/OSAL_Timers.c:254: void osalDeleteTimer( osalTimerRec_t *rmTimer )
                                   1584 ;	-----------------------------------------
                                   1585 ;	 function osalDeleteTimer
                                   1586 ;	-----------------------------------------
      002699                       1587 _osalDeleteTimer:
      002699 AF F0            [24] 1588 	mov	r7,b
      00269B AE 83            [24] 1589 	mov	r6,dph
      00269D E5 82            [12] 1590 	mov	a,dpl
      00269F 90 10 35         [24] 1591 	mov	dptr,#_osalDeleteTimer_rmTimer_1_101
      0026A2 F0               [24] 1592 	movx	@dptr,a
      0026A3 EE               [12] 1593 	mov	a,r6
      0026A4 A3               [24] 1594 	inc	dptr
      0026A5 F0               [24] 1595 	movx	@dptr,a
      0026A6 EF               [12] 1596 	mov	a,r7
      0026A7 A3               [24] 1597 	inc	dptr
      0026A8 F0               [24] 1598 	movx	@dptr,a
                                   1599 ;	../osal/common/OSAL_Timers.c:257: if ( rmTimer )
      0026A9 90 10 35         [24] 1600 	mov	dptr,#_osalDeleteTimer_rmTimer_1_101
      0026AC E0               [24] 1601 	movx	a,@dptr
      0026AD FD               [12] 1602 	mov	r5,a
      0026AE A3               [24] 1603 	inc	dptr
      0026AF E0               [24] 1604 	movx	a,@dptr
      0026B0 FE               [12] 1605 	mov	r6,a
      0026B1 A3               [24] 1606 	inc	dptr
      0026B2 E0               [24] 1607 	movx	a,@dptr
      0026B3 FF               [12] 1608 	mov	r7,a
      0026B4 ED               [12] 1609 	mov	a,r5
      0026B5 4E               [12] 1610 	orl	a,r6
      0026B6 70 03            [24] 1611 	jnz	00108$
      0026B8 02 26 DD         [24] 1612 	ljmp	00103$
      0026BB                       1613 00108$:
                                   1614 ;	../osal/common/OSAL_Timers.c:261: rmTimer->event_flag = 0;
      0026BB 90 10 35         [24] 1615 	mov	dptr,#_osalDeleteTimer_rmTimer_1_101
      0026BE E0               [24] 1616 	movx	a,@dptr
      0026BF FD               [12] 1617 	mov	r5,a
      0026C0 A3               [24] 1618 	inc	dptr
      0026C1 E0               [24] 1619 	movx	a,@dptr
      0026C2 FE               [12] 1620 	mov	r6,a
      0026C3 A3               [24] 1621 	inc	dptr
      0026C4 E0               [24] 1622 	movx	a,@dptr
      0026C5 FF               [12] 1623 	mov	r7,a
      0026C6 74 07            [12] 1624 	mov	a,#0x07
      0026C8 2D               [12] 1625 	add	a,r5
      0026C9 FD               [12] 1626 	mov	r5,a
      0026CA 74 00            [12] 1627 	mov	a,#0x00
      0026CC 3E               [12] 1628 	addc	a,r6
      0026CD FE               [12] 1629 	mov	r6,a
      0026CE 8D 82            [24] 1630 	mov	dpl,r5
      0026D0 8E 83            [24] 1631 	mov	dph,r6
      0026D2 8F F0            [24] 1632 	mov	b,r7
      0026D4 74 00            [12] 1633 	mov	a,#0x00
      0026D6 12 59 AA         [24] 1634 	lcall	__gptrput
      0026D9 A3               [24] 1635 	inc	dptr
      0026DA 12 59 AA         [24] 1636 	lcall	__gptrput
      0026DD                       1637 00103$:
      0026DD 22               [24] 1638 	ret
                                   1639 ;------------------------------------------------------------
                                   1640 ;Allocation info for local variables in function 'osal_start_timerEx'
                                   1641 ;------------------------------------------------------------
                                   1642 ;event_id                  Allocated with name '_osal_start_timerEx_PARM_2'
                                   1643 ;timeout_value             Allocated with name '_osal_start_timerEx_PARM_3'
                                   1644 ;taskID                    Allocated with name '_osal_start_timerEx_taskID_1_104'
                                   1645 ;intState                  Allocated with name '_osal_start_timerEx_intState_1_105'
                                   1646 ;newTimer                  Allocated with name '_osal_start_timerEx_newTimer_1_105'
                                   1647 ;------------------------------------------------------------
                                   1648 ;	../osal/common/OSAL_Timers.c:279: uint8 osal_start_timerEx( uint8 taskID, uint16 event_id, uint32 timeout_value )
                                   1649 ;	-----------------------------------------
                                   1650 ;	 function osal_start_timerEx
                                   1651 ;	-----------------------------------------
      0026DE                       1652 _osal_start_timerEx:
      0026DE E5 82            [12] 1653 	mov	a,dpl
      0026E0 90 10 3E         [24] 1654 	mov	dptr,#_osal_start_timerEx_taskID_1_104
      0026E3 F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	../osal/common/OSAL_Timers.c:289: __endasm;
      0026E4 C3               [12] 1657 	clr c;
                                   1658 ;	../osal/common/OSAL_Timers.c:294: newTimer = osalAddTimer( taskID, event_id, timeout_value );
      0026E5 90 10 3E         [24] 1659 	mov	dptr,#_osal_start_timerEx_taskID_1_104
      0026E8 E0               [24] 1660 	movx	a,@dptr
      0026E9 FF               [12] 1661 	mov	r7,a
      0026EA 90 10 38         [24] 1662 	mov	dptr,#_osal_start_timerEx_PARM_2
      0026ED E0               [24] 1663 	movx	a,@dptr
      0026EE FD               [12] 1664 	mov	r5,a
      0026EF A3               [24] 1665 	inc	dptr
      0026F0 E0               [24] 1666 	movx	a,@dptr
      0026F1 FE               [12] 1667 	mov	r6,a
      0026F2 90 10 3A         [24] 1668 	mov	dptr,#_osal_start_timerEx_PARM_3
      0026F5 E0               [24] 1669 	movx	a,@dptr
      0026F6 F9               [12] 1670 	mov	r1,a
      0026F7 A3               [24] 1671 	inc	dptr
      0026F8 E0               [24] 1672 	movx	a,@dptr
      0026F9 FA               [12] 1673 	mov	r2,a
      0026FA A3               [24] 1674 	inc	dptr
      0026FB E0               [24] 1675 	movx	a,@dptr
      0026FC FB               [12] 1676 	mov	r3,a
      0026FD A3               [24] 1677 	inc	dptr
      0026FE E0               [24] 1678 	movx	a,@dptr
      0026FF FC               [12] 1679 	mov	r4,a
      002700 90 10 22         [24] 1680 	mov	dptr,#_osalAddTimer_PARM_2
      002703 ED               [12] 1681 	mov	a,r5
      002704 F0               [24] 1682 	movx	@dptr,a
      002705 EE               [12] 1683 	mov	a,r6
      002706 A3               [24] 1684 	inc	dptr
      002707 F0               [24] 1685 	movx	@dptr,a
      002708 90 10 24         [24] 1686 	mov	dptr,#_osalAddTimer_PARM_3
      00270B E9               [12] 1687 	mov	a,r1
      00270C F0               [24] 1688 	movx	@dptr,a
      00270D EA               [12] 1689 	mov	a,r2
      00270E A3               [24] 1690 	inc	dptr
      00270F F0               [24] 1691 	movx	@dptr,a
      002710 EB               [12] 1692 	mov	a,r3
      002711 A3               [24] 1693 	inc	dptr
      002712 F0               [24] 1694 	movx	@dptr,a
      002713 EC               [12] 1695 	mov	a,r4
      002714 A3               [24] 1696 	inc	dptr
      002715 F0               [24] 1697 	movx	@dptr,a
      002716 8F 82            [24] 1698 	mov	dpl,r7
      002718 12 23 A3         [24] 1699 	lcall	_osalAddTimer
      00271B AD 82            [24] 1700 	mov	r5,dpl
      00271D AE 83            [24] 1701 	mov	r6,dph
      00271F AF F0            [24] 1702 	mov	r7,b
                                   1703 ;	../osal/common/OSAL_Timers.c:301: return ( (newTimer != NULL) ? SUCCESS : NO_TIMER_AVAIL );
      002721 ED               [12] 1704 	mov	a,r5
      002722 4E               [12] 1705 	orl	a,r6
      002723 70 03            [24] 1706 	jnz	00108$
      002725 02 27 2D         [24] 1707 	ljmp	00103$
      002728                       1708 00108$:
      002728 7F 00            [12] 1709 	mov	r7,#0x00
      00272A 02 27 2F         [24] 1710 	ljmp	00104$
      00272D                       1711 00103$:
      00272D 7F 08            [12] 1712 	mov	r7,#0x08
      00272F                       1713 00104$:
      00272F 8F 82            [24] 1714 	mov	dpl,r7
      002731                       1715 00101$:
      002731 22               [24] 1716 	ret
                                   1717 ;------------------------------------------------------------
                                   1718 ;Allocation info for local variables in function 'osal_start_reload_timer'
                                   1719 ;------------------------------------------------------------
                                   1720 ;event_id                  Allocated with name '_osal_start_reload_timer_PARM_2'
                                   1721 ;timeout_value             Allocated with name '_osal_start_reload_timer_PARM_3'
                                   1722 ;taskID                    Allocated with name '_osal_start_reload_timer_taskID_1_106'
                                   1723 ;intState                  Allocated with name '_osal_start_reload_timer_intState_1_107'
                                   1724 ;newTimer                  Allocated with name '_osal_start_reload_timer_newTimer_1_107'
                                   1725 ;------------------------------------------------------------
                                   1726 ;	../osal/common/OSAL_Timers.c:319: uint8 osal_start_reload_timer( uint8 taskID, uint16 event_id, uint32 timeout_value )
                                   1727 ;	-----------------------------------------
                                   1728 ;	 function osal_start_reload_timer
                                   1729 ;	-----------------------------------------
      002732                       1730 _osal_start_reload_timer:
      002732 E5 82            [12] 1731 	mov	a,dpl
      002734 90 10 45         [24] 1732 	mov	dptr,#_osal_start_reload_timer_taskID_1_106
      002737 F0               [24] 1733 	movx	@dptr,a
                                   1734 ;	../osal/common/OSAL_Timers.c:324: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      002738 90 10 46         [24] 1735 	mov	dptr,#_osal_start_reload_timer_intState_1_107
      00273B A2 AF            [12] 1736 	mov	c,_EA
      00273D E4               [12] 1737 	clr	a
      00273E 33               [12] 1738 	rlc	a
      00273F F0               [24] 1739 	movx	@dptr,a
      002740 C2 AF            [12] 1740 	clr	_EA
                                   1741 ;	../osal/common/OSAL_Timers.c:327: newTimer = osalAddTimer( taskID, event_id, timeout_value );
      002742 90 10 45         [24] 1742 	mov	dptr,#_osal_start_reload_timer_taskID_1_106
      002745 E0               [24] 1743 	movx	a,@dptr
      002746 FF               [12] 1744 	mov	r7,a
      002747 90 10 3F         [24] 1745 	mov	dptr,#_osal_start_reload_timer_PARM_2
      00274A E0               [24] 1746 	movx	a,@dptr
      00274B FD               [12] 1747 	mov	r5,a
      00274C A3               [24] 1748 	inc	dptr
      00274D E0               [24] 1749 	movx	a,@dptr
      00274E FE               [12] 1750 	mov	r6,a
      00274F 90 10 41         [24] 1751 	mov	dptr,#_osal_start_reload_timer_PARM_3
      002752 E0               [24] 1752 	movx	a,@dptr
      002753 F9               [12] 1753 	mov	r1,a
      002754 A3               [24] 1754 	inc	dptr
      002755 E0               [24] 1755 	movx	a,@dptr
      002756 FA               [12] 1756 	mov	r2,a
      002757 A3               [24] 1757 	inc	dptr
      002758 E0               [24] 1758 	movx	a,@dptr
      002759 FB               [12] 1759 	mov	r3,a
      00275A A3               [24] 1760 	inc	dptr
      00275B E0               [24] 1761 	movx	a,@dptr
      00275C FC               [12] 1762 	mov	r4,a
      00275D 90 10 22         [24] 1763 	mov	dptr,#_osalAddTimer_PARM_2
      002760 ED               [12] 1764 	mov	a,r5
      002761 F0               [24] 1765 	movx	@dptr,a
      002762 EE               [12] 1766 	mov	a,r6
      002763 A3               [24] 1767 	inc	dptr
      002764 F0               [24] 1768 	movx	@dptr,a
      002765 90 10 24         [24] 1769 	mov	dptr,#_osalAddTimer_PARM_3
      002768 E9               [12] 1770 	mov	a,r1
      002769 F0               [24] 1771 	movx	@dptr,a
      00276A EA               [12] 1772 	mov	a,r2
      00276B A3               [24] 1773 	inc	dptr
      00276C F0               [24] 1774 	movx	@dptr,a
      00276D EB               [12] 1775 	mov	a,r3
      00276E A3               [24] 1776 	inc	dptr
      00276F F0               [24] 1777 	movx	@dptr,a
      002770 EC               [12] 1778 	mov	a,r4
      002771 A3               [24] 1779 	inc	dptr
      002772 F0               [24] 1780 	movx	@dptr,a
      002773 8F 82            [24] 1781 	mov	dpl,r7
      002775 12 23 A3         [24] 1782 	lcall	_osalAddTimer
      002778 AD 82            [24] 1783 	mov	r5,dpl
      00277A AE 83            [24] 1784 	mov	r6,dph
      00277C AF F0            [24] 1785 	mov	r7,b
      00277E 90 10 47         [24] 1786 	mov	dptr,#_osal_start_reload_timer_newTimer_1_107
      002781 ED               [12] 1787 	mov	a,r5
      002782 F0               [24] 1788 	movx	@dptr,a
      002783 EE               [12] 1789 	mov	a,r6
      002784 A3               [24] 1790 	inc	dptr
      002785 F0               [24] 1791 	movx	@dptr,a
      002786 EF               [12] 1792 	mov	a,r7
      002787 A3               [24] 1793 	inc	dptr
      002788 F0               [24] 1794 	movx	@dptr,a
                                   1795 ;	../osal/common/OSAL_Timers.c:328: if ( newTimer )
      002789 ED               [12] 1796 	mov	a,r5
      00278A 4E               [12] 1797 	orl	a,r6
      00278B 70 03            [24] 1798 	jnz	00122$
      00278D 02 27 CA         [24] 1799 	ljmp	00109$
      002790                       1800 00122$:
                                   1801 ;	../osal/common/OSAL_Timers.c:331: newTimer->reloadTimeout = timeout_value;
      002790 90 10 47         [24] 1802 	mov	dptr,#_osal_start_reload_timer_newTimer_1_107
      002793 E0               [24] 1803 	movx	a,@dptr
      002794 FD               [12] 1804 	mov	r5,a
      002795 A3               [24] 1805 	inc	dptr
      002796 E0               [24] 1806 	movx	a,@dptr
      002797 FE               [12] 1807 	mov	r6,a
      002798 A3               [24] 1808 	inc	dptr
      002799 E0               [24] 1809 	movx	a,@dptr
      00279A FF               [12] 1810 	mov	r7,a
      00279B 74 0A            [12] 1811 	mov	a,#0x0A
      00279D 2D               [12] 1812 	add	a,r5
      00279E FD               [12] 1813 	mov	r5,a
      00279F 74 00            [12] 1814 	mov	a,#0x00
      0027A1 3E               [12] 1815 	addc	a,r6
      0027A2 FE               [12] 1816 	mov	r6,a
      0027A3 90 10 41         [24] 1817 	mov	dptr,#_osal_start_reload_timer_PARM_3
      0027A6 E0               [24] 1818 	movx	a,@dptr
      0027A7 F9               [12] 1819 	mov	r1,a
      0027A8 A3               [24] 1820 	inc	dptr
      0027A9 E0               [24] 1821 	movx	a,@dptr
      0027AA FA               [12] 1822 	mov	r2,a
      0027AB A3               [24] 1823 	inc	dptr
      0027AC E0               [24] 1824 	movx	a,@dptr
      0027AD FB               [12] 1825 	mov	r3,a
      0027AE A3               [24] 1826 	inc	dptr
      0027AF E0               [24] 1827 	movx	a,@dptr
      0027B0 FC               [12] 1828 	mov	r4,a
      0027B1 8D 82            [24] 1829 	mov	dpl,r5
      0027B3 8E 83            [24] 1830 	mov	dph,r6
      0027B5 8F F0            [24] 1831 	mov	b,r7
      0027B7 E9               [12] 1832 	mov	a,r1
      0027B8 12 59 AA         [24] 1833 	lcall	__gptrput
      0027BB A3               [24] 1834 	inc	dptr
      0027BC EA               [12] 1835 	mov	a,r2
      0027BD 12 59 AA         [24] 1836 	lcall	__gptrput
      0027C0 A3               [24] 1837 	inc	dptr
      0027C1 EB               [12] 1838 	mov	a,r3
      0027C2 12 59 AA         [24] 1839 	lcall	__gptrput
      0027C5 A3               [24] 1840 	inc	dptr
      0027C6 EC               [12] 1841 	mov	a,r4
      0027C7 12 59 AA         [24] 1842 	lcall	__gptrput
                                   1843 ;	../osal/common/OSAL_Timers.c:334: HAL_EXIT_CRITICAL_SECTION( intState );   // Re-enable interrupts.
      0027CA                       1844 00109$:
      0027CA 90 10 46         [24] 1845 	mov	dptr,#_osal_start_reload_timer_intState_1_107
      0027CD E0               [24] 1846 	movx	a,@dptr
      0027CE FF               [12] 1847 	mov	r7,a
      0027CF EF               [12] 1848 	mov	a,r7
      0027D0 24 FF            [12] 1849 	add	a,#0xff
      0027D2 92 AF            [24] 1850 	mov	_EA,c
                                   1851 ;	../osal/common/OSAL_Timers.c:336: return ( (newTimer != NULL) ? SUCCESS : NO_TIMER_AVAIL );
      0027D4 90 10 47         [24] 1852 	mov	dptr,#_osal_start_reload_timer_newTimer_1_107
      0027D7 E0               [24] 1853 	movx	a,@dptr
      0027D8 FD               [12] 1854 	mov	r5,a
      0027D9 A3               [24] 1855 	inc	dptr
      0027DA E0               [24] 1856 	movx	a,@dptr
      0027DB FE               [12] 1857 	mov	r6,a
      0027DC A3               [24] 1858 	inc	dptr
      0027DD E0               [24] 1859 	movx	a,@dptr
      0027DE FF               [12] 1860 	mov	r7,a
      0027DF ED               [12] 1861 	mov	a,r5
      0027E0 4E               [12] 1862 	orl	a,r6
      0027E1 70 03            [24] 1863 	jnz	00123$
      0027E3 02 27 EB         [24] 1864 	ljmp	00114$
      0027E6                       1865 00123$:
      0027E6 7F 00            [12] 1866 	mov	r7,#0x00
      0027E8 02 27 ED         [24] 1867 	ljmp	00115$
      0027EB                       1868 00114$:
      0027EB 7F 08            [12] 1869 	mov	r7,#0x08
      0027ED                       1870 00115$:
      0027ED 8F 82            [24] 1871 	mov	dpl,r7
      0027EF                       1872 00112$:
      0027EF 22               [24] 1873 	ret
                                   1874 ;------------------------------------------------------------
                                   1875 ;Allocation info for local variables in function 'osal_stop_timerEx'
                                   1876 ;------------------------------------------------------------
                                   1877 ;event_id                  Allocated with name '_osal_stop_timerEx_PARM_2'
                                   1878 ;task_id                   Allocated with name '_osal_stop_timerEx_task_id_1_112'
                                   1879 ;intState                  Allocated with name '_osal_stop_timerEx_intState_1_113'
                                   1880 ;foundTimer                Allocated with name '_osal_stop_timerEx_foundTimer_1_113'
                                   1881 ;------------------------------------------------------------
                                   1882 ;	../osal/common/OSAL_Timers.c:353: uint8 osal_stop_timerEx( uint8 task_id, uint16 event_id )
                                   1883 ;	-----------------------------------------
                                   1884 ;	 function osal_stop_timerEx
                                   1885 ;	-----------------------------------------
      0027F0                       1886 _osal_stop_timerEx:
      0027F0 E5 82            [12] 1887 	mov	a,dpl
      0027F2 90 10 4C         [24] 1888 	mov	dptr,#_osal_stop_timerEx_task_id_1_112
      0027F5 F0               [24] 1889 	movx	@dptr,a
                                   1890 ;	../osal/common/OSAL_Timers.c:358: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      0027F6 90 10 4D         [24] 1891 	mov	dptr,#_osal_stop_timerEx_intState_1_113
      0027F9 A2 AF            [12] 1892 	mov	c,_EA
      0027FB E4               [12] 1893 	clr	a
      0027FC 33               [12] 1894 	rlc	a
      0027FD F0               [24] 1895 	movx	@dptr,a
      0027FE C2 AF            [12] 1896 	clr	_EA
                                   1897 ;	../osal/common/OSAL_Timers.c:361: foundTimer = osalFindTimer( task_id, event_id );
      002800 90 10 4C         [24] 1898 	mov	dptr,#_osal_stop_timerEx_task_id_1_112
      002803 E0               [24] 1899 	movx	a,@dptr
      002804 FF               [12] 1900 	mov	r7,a
      002805 90 10 4A         [24] 1901 	mov	dptr,#_osal_stop_timerEx_PARM_2
      002808 E0               [24] 1902 	movx	a,@dptr
      002809 FD               [12] 1903 	mov	r5,a
      00280A A3               [24] 1904 	inc	dptr
      00280B E0               [24] 1905 	movx	a,@dptr
      00280C FE               [12] 1906 	mov	r6,a
      00280D 90 10 2F         [24] 1907 	mov	dptr,#_osalFindTimer_PARM_2
      002810 ED               [12] 1908 	mov	a,r5
      002811 F0               [24] 1909 	movx	@dptr,a
      002812 EE               [12] 1910 	mov	a,r6
      002813 A3               [24] 1911 	inc	dptr
      002814 F0               [24] 1912 	movx	@dptr,a
      002815 8F 82            [24] 1913 	mov	dpl,r7
      002817 12 25 CC         [24] 1914 	lcall	_osalFindTimer
      00281A AD 82            [24] 1915 	mov	r5,dpl
      00281C AE 83            [24] 1916 	mov	r6,dph
      00281E AF F0            [24] 1917 	mov	r7,b
      002820 90 10 4E         [24] 1918 	mov	dptr,#_osal_stop_timerEx_foundTimer_1_113
      002823 ED               [12] 1919 	mov	a,r5
      002824 F0               [24] 1920 	movx	@dptr,a
      002825 EE               [12] 1921 	mov	a,r6
      002826 A3               [24] 1922 	inc	dptr
      002827 F0               [24] 1923 	movx	@dptr,a
      002828 EF               [12] 1924 	mov	a,r7
      002829 A3               [24] 1925 	inc	dptr
      00282A F0               [24] 1926 	movx	@dptr,a
                                   1927 ;	../osal/common/OSAL_Timers.c:362: if ( foundTimer )
      00282B ED               [12] 1928 	mov	a,r5
      00282C 4E               [12] 1929 	orl	a,r6
      00282D 70 03            [24] 1930 	jnz	00122$
      00282F 02 28 46         [24] 1931 	ljmp	00109$
      002832                       1932 00122$:
                                   1933 ;	../osal/common/OSAL_Timers.c:364: osalDeleteTimer( foundTimer );
      002832 90 10 4E         [24] 1934 	mov	dptr,#_osal_stop_timerEx_foundTimer_1_113
      002835 E0               [24] 1935 	movx	a,@dptr
      002836 FD               [12] 1936 	mov	r5,a
      002837 A3               [24] 1937 	inc	dptr
      002838 E0               [24] 1938 	movx	a,@dptr
      002839 FE               [12] 1939 	mov	r6,a
      00283A A3               [24] 1940 	inc	dptr
      00283B E0               [24] 1941 	movx	a,@dptr
      00283C FF               [12] 1942 	mov	r7,a
      00283D 8D 82            [24] 1943 	mov	dpl,r5
      00283F 8E 83            [24] 1944 	mov	dph,r6
      002841 8F F0            [24] 1945 	mov	b,r7
      002843 12 26 99         [24] 1946 	lcall	_osalDeleteTimer
                                   1947 ;	../osal/common/OSAL_Timers.c:367: HAL_EXIT_CRITICAL_SECTION( intState );   // Re-enable interrupts.
      002846                       1948 00109$:
      002846 90 10 4D         [24] 1949 	mov	dptr,#_osal_stop_timerEx_intState_1_113
      002849 E0               [24] 1950 	movx	a,@dptr
      00284A FF               [12] 1951 	mov	r7,a
      00284B EF               [12] 1952 	mov	a,r7
      00284C 24 FF            [12] 1953 	add	a,#0xff
      00284E 92 AF            [24] 1954 	mov	_EA,c
                                   1955 ;	../osal/common/OSAL_Timers.c:369: return ( (foundTimer != NULL) ? SUCCESS : INVALID_EVENT_ID );
      002850 90 10 4E         [24] 1956 	mov	dptr,#_osal_stop_timerEx_foundTimer_1_113
      002853 E0               [24] 1957 	movx	a,@dptr
      002854 FD               [12] 1958 	mov	r5,a
      002855 A3               [24] 1959 	inc	dptr
      002856 E0               [24] 1960 	movx	a,@dptr
      002857 FE               [12] 1961 	mov	r6,a
      002858 A3               [24] 1962 	inc	dptr
      002859 E0               [24] 1963 	movx	a,@dptr
      00285A FF               [12] 1964 	mov	r7,a
      00285B ED               [12] 1965 	mov	a,r5
      00285C 4E               [12] 1966 	orl	a,r6
      00285D 70 03            [24] 1967 	jnz	00123$
      00285F 02 28 67         [24] 1968 	ljmp	00114$
      002862                       1969 00123$:
      002862 7F 00            [12] 1970 	mov	r7,#0x00
      002864 02 28 69         [24] 1971 	ljmp	00115$
      002867                       1972 00114$:
      002867 7F 06            [12] 1973 	mov	r7,#0x06
      002869                       1974 00115$:
      002869 8F 82            [24] 1975 	mov	dpl,r7
      00286B                       1976 00112$:
      00286B 22               [24] 1977 	ret
                                   1978 ;------------------------------------------------------------
                                   1979 ;Allocation info for local variables in function 'osal_get_timeoutEx'
                                   1980 ;------------------------------------------------------------
                                   1981 ;event_id                  Allocated with name '_osal_get_timeoutEx_PARM_2'
                                   1982 ;task_id                   Allocated with name '_osal_get_timeoutEx_task_id_1_118'
                                   1983 ;intState                  Allocated with name '_osal_get_timeoutEx_intState_1_119'
                                   1984 ;rtrn                      Allocated with name '_osal_get_timeoutEx_rtrn_1_119'
                                   1985 ;tmr                       Allocated with name '_osal_get_timeoutEx_tmr_1_119'
                                   1986 ;------------------------------------------------------------
                                   1987 ;	../osal/common/OSAL_Timers.c:382: uint32 osal_get_timeoutEx( uint8 task_id, uint16 event_id )
                                   1988 ;	-----------------------------------------
                                   1989 ;	 function osal_get_timeoutEx
                                   1990 ;	-----------------------------------------
      00286C                       1991 _osal_get_timeoutEx:
      00286C E5 82            [12] 1992 	mov	a,dpl
      00286E 90 10 53         [24] 1993 	mov	dptr,#_osal_get_timeoutEx_task_id_1_118
      002871 F0               [24] 1994 	movx	@dptr,a
                                   1995 ;	../osal/common/OSAL_Timers.c:385: uint32 rtrn = 0;
      002872 90 10 55         [24] 1996 	mov	dptr,#_osal_get_timeoutEx_rtrn_1_119
      002875 74 00            [12] 1997 	mov	a,#0x00
      002877 F0               [24] 1998 	movx	@dptr,a
      002878 A3               [24] 1999 	inc	dptr
      002879 F0               [24] 2000 	movx	@dptr,a
      00287A A3               [24] 2001 	inc	dptr
      00287B F0               [24] 2002 	movx	@dptr,a
      00287C A3               [24] 2003 	inc	dptr
      00287D F0               [24] 2004 	movx	@dptr,a
                                   2005 ;	../osal/common/OSAL_Timers.c:388: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      00287E 90 10 54         [24] 2006 	mov	dptr,#_osal_get_timeoutEx_intState_1_119
      002881 A2 AF            [12] 2007 	mov	c,_EA
      002883 E4               [12] 2008 	clr	a
      002884 33               [12] 2009 	rlc	a
      002885 F0               [24] 2010 	movx	@dptr,a
      002886 C2 AF            [12] 2011 	clr	_EA
                                   2012 ;	../osal/common/OSAL_Timers.c:390: tmr = osalFindTimer( task_id, event_id );
      002888 90 10 53         [24] 2013 	mov	dptr,#_osal_get_timeoutEx_task_id_1_118
      00288B E0               [24] 2014 	movx	a,@dptr
      00288C FF               [12] 2015 	mov	r7,a
      00288D 90 10 51         [24] 2016 	mov	dptr,#_osal_get_timeoutEx_PARM_2
      002890 E0               [24] 2017 	movx	a,@dptr
      002891 FD               [12] 2018 	mov	r5,a
      002892 A3               [24] 2019 	inc	dptr
      002893 E0               [24] 2020 	movx	a,@dptr
      002894 FE               [12] 2021 	mov	r6,a
      002895 90 10 2F         [24] 2022 	mov	dptr,#_osalFindTimer_PARM_2
      002898 ED               [12] 2023 	mov	a,r5
      002899 F0               [24] 2024 	movx	@dptr,a
      00289A EE               [12] 2025 	mov	a,r6
      00289B A3               [24] 2026 	inc	dptr
      00289C F0               [24] 2027 	movx	@dptr,a
      00289D 8F 82            [24] 2028 	mov	dpl,r7
      00289F 12 25 CC         [24] 2029 	lcall	_osalFindTimer
      0028A2 AD 82            [24] 2030 	mov	r5,dpl
      0028A4 AE 83            [24] 2031 	mov	r6,dph
      0028A6 AF F0            [24] 2032 	mov	r7,b
      0028A8 90 10 59         [24] 2033 	mov	dptr,#_osal_get_timeoutEx_tmr_1_119
      0028AB ED               [12] 2034 	mov	a,r5
      0028AC F0               [24] 2035 	movx	@dptr,a
      0028AD EE               [12] 2036 	mov	a,r6
      0028AE A3               [24] 2037 	inc	dptr
      0028AF F0               [24] 2038 	movx	@dptr,a
      0028B0 EF               [12] 2039 	mov	a,r7
      0028B1 A3               [24] 2040 	inc	dptr
      0028B2 F0               [24] 2041 	movx	@dptr,a
                                   2042 ;	../osal/common/OSAL_Timers.c:392: if ( tmr )
      0028B3 ED               [12] 2043 	mov	a,r5
      0028B4 4E               [12] 2044 	orl	a,r6
      0028B5 70 03            [24] 2045 	jnz	00117$
      0028B7 02 28 F4         [24] 2046 	ljmp	00109$
      0028BA                       2047 00117$:
                                   2048 ;	../osal/common/OSAL_Timers.c:394: rtrn = tmr->timeout.time32;
      0028BA 90 10 59         [24] 2049 	mov	dptr,#_osal_get_timeoutEx_tmr_1_119
      0028BD E0               [24] 2050 	movx	a,@dptr
      0028BE FD               [12] 2051 	mov	r5,a
      0028BF A3               [24] 2052 	inc	dptr
      0028C0 E0               [24] 2053 	movx	a,@dptr
      0028C1 FE               [12] 2054 	mov	r6,a
      0028C2 A3               [24] 2055 	inc	dptr
      0028C3 E0               [24] 2056 	movx	a,@dptr
      0028C4 FF               [12] 2057 	mov	r7,a
      0028C5 74 03            [12] 2058 	mov	a,#0x03
      0028C7 2D               [12] 2059 	add	a,r5
      0028C8 FD               [12] 2060 	mov	r5,a
      0028C9 74 00            [12] 2061 	mov	a,#0x00
      0028CB 3E               [12] 2062 	addc	a,r6
      0028CC FE               [12] 2063 	mov	r6,a
      0028CD 8D 82            [24] 2064 	mov	dpl,r5
      0028CF 8E 83            [24] 2065 	mov	dph,r6
      0028D1 8F F0            [24] 2066 	mov	b,r7
      0028D3 12 5B 16         [24] 2067 	lcall	__gptrget
      0028D6 FD               [12] 2068 	mov	r5,a
      0028D7 A3               [24] 2069 	inc	dptr
      0028D8 12 5B 16         [24] 2070 	lcall	__gptrget
      0028DB FE               [12] 2071 	mov	r6,a
      0028DC A3               [24] 2072 	inc	dptr
      0028DD 12 5B 16         [24] 2073 	lcall	__gptrget
      0028E0 FF               [12] 2074 	mov	r7,a
      0028E1 A3               [24] 2075 	inc	dptr
      0028E2 12 5B 16         [24] 2076 	lcall	__gptrget
      0028E5 FC               [12] 2077 	mov	r4,a
      0028E6 90 10 55         [24] 2078 	mov	dptr,#_osal_get_timeoutEx_rtrn_1_119
      0028E9 ED               [12] 2079 	mov	a,r5
      0028EA F0               [24] 2080 	movx	@dptr,a
      0028EB EE               [12] 2081 	mov	a,r6
      0028EC A3               [24] 2082 	inc	dptr
      0028ED F0               [24] 2083 	movx	@dptr,a
      0028EE EF               [12] 2084 	mov	a,r7
      0028EF A3               [24] 2085 	inc	dptr
      0028F0 F0               [24] 2086 	movx	@dptr,a
      0028F1 EC               [12] 2087 	mov	a,r4
      0028F2 A3               [24] 2088 	inc	dptr
      0028F3 F0               [24] 2089 	movx	@dptr,a
                                   2090 ;	../osal/common/OSAL_Timers.c:397: HAL_EXIT_CRITICAL_SECTION( intState );   // Re-enable interrupts.
      0028F4                       2091 00109$:
      0028F4 90 10 54         [24] 2092 	mov	dptr,#_osal_get_timeoutEx_intState_1_119
      0028F7 E0               [24] 2093 	movx	a,@dptr
      0028F8 FF               [12] 2094 	mov	r7,a
      0028F9 EF               [12] 2095 	mov	a,r7
      0028FA 24 FF            [12] 2096 	add	a,#0xff
      0028FC 92 AF            [24] 2097 	mov	_EA,c
                                   2098 ;	../osal/common/OSAL_Timers.c:399: return rtrn;
      0028FE 90 10 55         [24] 2099 	mov	dptr,#_osal_get_timeoutEx_rtrn_1_119
      002901 E0               [24] 2100 	movx	a,@dptr
      002902 FC               [12] 2101 	mov	r4,a
      002903 A3               [24] 2102 	inc	dptr
      002904 E0               [24] 2103 	movx	a,@dptr
      002905 FD               [12] 2104 	mov	r5,a
      002906 A3               [24] 2105 	inc	dptr
      002907 E0               [24] 2106 	movx	a,@dptr
      002908 FE               [12] 2107 	mov	r6,a
      002909 A3               [24] 2108 	inc	dptr
      00290A E0               [24] 2109 	movx	a,@dptr
      00290B FF               [12] 2110 	mov	r7,a
      00290C 8C 82            [24] 2111 	mov	dpl,r4
      00290E 8D 83            [24] 2112 	mov	dph,r5
      002910 8E F0            [24] 2113 	mov	b,r6
      002912 EF               [12] 2114 	mov	a,r7
      002913                       2115 00112$:
      002913 22               [24] 2116 	ret
                                   2117 ;------------------------------------------------------------
                                   2118 ;Allocation info for local variables in function 'osal_timer_num_active'
                                   2119 ;------------------------------------------------------------
                                   2120 ;intState                  Allocated with name '_osal_timer_num_active_intState_1_125'
                                   2121 ;num_timers                Allocated with name '_osal_timer_num_active_num_timers_1_125'
                                   2122 ;srchTimer                 Allocated with name '_osal_timer_num_active_srchTimer_1_125'
                                   2123 ;------------------------------------------------------------
                                   2124 ;	../osal/common/OSAL_Timers.c:411: uint8 osal_timer_num_active( void )
                                   2125 ;	-----------------------------------------
                                   2126 ;	 function osal_timer_num_active
                                   2127 ;	-----------------------------------------
      002914                       2128 _osal_timer_num_active:
                                   2129 ;	../osal/common/OSAL_Timers.c:414: uint8 num_timers = 0;
      002914 90 10 5D         [24] 2130 	mov	dptr,#_osal_timer_num_active_num_timers_1_125
      002917 74 00            [12] 2131 	mov	a,#0x00
      002919 F0               [24] 2132 	movx	@dptr,a
                                   2133 ;	../osal/common/OSAL_Timers.c:417: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      00291A 90 10 5C         [24] 2134 	mov	dptr,#_osal_timer_num_active_intState_1_125
      00291D A2 AF            [12] 2135 	mov	c,_EA
      00291F E4               [12] 2136 	clr	a
      002920 33               [12] 2137 	rlc	a
      002921 F0               [24] 2138 	movx	@dptr,a
      002922 C2 AF            [12] 2139 	clr	_EA
                                   2140 ;	../osal/common/OSAL_Timers.c:420: srchTimer = timerHead;
      002924 90 10 1B         [24] 2141 	mov	dptr,#_timerHead
      002927 E0               [24] 2142 	movx	a,@dptr
      002928 FD               [12] 2143 	mov	r5,a
      002929 A3               [24] 2144 	inc	dptr
      00292A E0               [24] 2145 	movx	a,@dptr
      00292B FE               [12] 2146 	mov	r6,a
      00292C A3               [24] 2147 	inc	dptr
      00292D E0               [24] 2148 	movx	a,@dptr
      00292E FF               [12] 2149 	mov	r7,a
      00292F 90 10 5E         [24] 2150 	mov	dptr,#_osal_timer_num_active_srchTimer_1_125
      002932 ED               [12] 2151 	mov	a,r5
      002933 F0               [24] 2152 	movx	@dptr,a
      002934 EE               [12] 2153 	mov	a,r6
      002935 A3               [24] 2154 	inc	dptr
      002936 F0               [24] 2155 	movx	@dptr,a
      002937 EF               [12] 2156 	mov	a,r7
      002938 A3               [24] 2157 	inc	dptr
      002939 F0               [24] 2158 	movx	@dptr,a
                                   2159 ;	../osal/common/OSAL_Timers.c:423: while ( srchTimer != NULL )
      00293A 90 10 5D         [24] 2160 	mov	dptr,#_osal_timer_num_active_num_timers_1_125
      00293D E0               [24] 2161 	movx	a,@dptr
      00293E FF               [12] 2162 	mov	r7,a
      00293F                       2163 00107$:
      00293F 90 10 5E         [24] 2164 	mov	dptr,#_osal_timer_num_active_srchTimer_1_125
      002942 E0               [24] 2165 	movx	a,@dptr
      002943 FC               [12] 2166 	mov	r4,a
      002944 A3               [24] 2167 	inc	dptr
      002945 E0               [24] 2168 	movx	a,@dptr
      002946 FD               [12] 2169 	mov	r5,a
      002947 A3               [24] 2170 	inc	dptr
      002948 E0               [24] 2171 	movx	a,@dptr
      002949 FE               [12] 2172 	mov	r6,a
      00294A EC               [12] 2173 	mov	a,r4
      00294B 4D               [12] 2174 	orl	a,r5
      00294C 70 03            [24] 2175 	jnz	00122$
      00294E 02 29 7F         [24] 2176 	ljmp	00117$
      002951                       2177 00122$:
                                   2178 ;	../osal/common/OSAL_Timers.c:425: num_timers++;
      002951 0F               [12] 2179 	inc	r7
                                   2180 ;	../osal/common/OSAL_Timers.c:426: srchTimer = srchTimer->next;
      002952 90 10 5E         [24] 2181 	mov	dptr,#_osal_timer_num_active_srchTimer_1_125
      002955 E0               [24] 2182 	movx	a,@dptr
      002956 FC               [12] 2183 	mov	r4,a
      002957 A3               [24] 2184 	inc	dptr
      002958 E0               [24] 2185 	movx	a,@dptr
      002959 FD               [12] 2186 	mov	r5,a
      00295A A3               [24] 2187 	inc	dptr
      00295B E0               [24] 2188 	movx	a,@dptr
      00295C FE               [12] 2189 	mov	r6,a
      00295D 8C 82            [24] 2190 	mov	dpl,r4
      00295F 8D 83            [24] 2191 	mov	dph,r5
      002961 8E F0            [24] 2192 	mov	b,r6
      002963 12 5B 16         [24] 2193 	lcall	__gptrget
      002966 FC               [12] 2194 	mov	r4,a
      002967 A3               [24] 2195 	inc	dptr
      002968 12 5B 16         [24] 2196 	lcall	__gptrget
      00296B FD               [12] 2197 	mov	r5,a
      00296C A3               [24] 2198 	inc	dptr
      00296D 12 5B 16         [24] 2199 	lcall	__gptrget
      002970 FE               [12] 2200 	mov	r6,a
      002971 90 10 5E         [24] 2201 	mov	dptr,#_osal_timer_num_active_srchTimer_1_125
      002974 EC               [12] 2202 	mov	a,r4
      002975 F0               [24] 2203 	movx	@dptr,a
      002976 ED               [12] 2204 	mov	a,r5
      002977 A3               [24] 2205 	inc	dptr
      002978 F0               [24] 2206 	movx	@dptr,a
      002979 EE               [12] 2207 	mov	a,r6
      00297A A3               [24] 2208 	inc	dptr
      00297B F0               [24] 2209 	movx	@dptr,a
      00297C 02 29 3F         [24] 2210 	ljmp	00107$
                                   2211 ;	../osal/common/OSAL_Timers.c:429: HAL_EXIT_CRITICAL_SECTION( intState );   // Re-enable interrupts.
      00297F                       2212 00117$:
      00297F 90 10 5D         [24] 2213 	mov	dptr,#_osal_timer_num_active_num_timers_1_125
      002982 EF               [12] 2214 	mov	a,r7
      002983 F0               [24] 2215 	movx	@dptr,a
      002984 90 10 5C         [24] 2216 	mov	dptr,#_osal_timer_num_active_intState_1_125
      002987 E0               [24] 2217 	movx	a,@dptr
      002988 FF               [12] 2218 	mov	r7,a
      002989 EF               [12] 2219 	mov	a,r7
      00298A 24 FF            [12] 2220 	add	a,#0xff
      00298C 92 AF            [24] 2221 	mov	_EA,c
                                   2222 ;	../osal/common/OSAL_Timers.c:431: return num_timers;
      00298E 90 10 5D         [24] 2223 	mov	dptr,#_osal_timer_num_active_num_timers_1_125
      002991 E0               [24] 2224 	movx	a,@dptr
      002992 FF               [12] 2225 	mov	r7,a
      002993 8F 82            [24] 2226 	mov	dpl,r7
      002995                       2227 00113$:
      002995 22               [24] 2228 	ret
                                   2229 ;------------------------------------------------------------
                                   2230 ;Allocation info for local variables in function 'osalTimerUpdate'
                                   2231 ;------------------------------------------------------------
                                   2232 ;sloc0                     Allocated with name '_osalTimerUpdate_sloc0_1_0'
                                   2233 ;updateTime                Allocated with name '_osalTimerUpdate_updateTime_1_130'
                                   2234 ;intState                  Allocated with name '_osalTimerUpdate_intState_1_131'
                                   2235 ;srchTimer                 Allocated with name '_osalTimerUpdate_srchTimer_1_131'
                                   2236 ;prevTimer                 Allocated with name '_osalTimerUpdate_prevTimer_1_131'
                                   2237 ;timeUnion                 Allocated with name '_osalTimerUpdate_timeUnion_1_131'
                                   2238 ;freeTimer                 Allocated with name '_osalTimerUpdate_freeTimer_3_133'
                                   2239 ;------------------------------------------------------------
                                   2240 ;	../osal/common/OSAL_Timers.c:443: void osalTimerUpdate( uint32 updateTime )
                                   2241 ;	-----------------------------------------
                                   2242 ;	 function osalTimerUpdate
                                   2243 ;	-----------------------------------------
      002996                       2244 _osalTimerUpdate:
      002996 AF 82            [24] 2245 	mov	r7,dpl
      002998 AE 83            [24] 2246 	mov	r6,dph
      00299A AD F0            [24] 2247 	mov	r5,b
      00299C FC               [12] 2248 	mov	r4,a
      00299D 90 10 61         [24] 2249 	mov	dptr,#_osalTimerUpdate_updateTime_1_130
      0029A0 EF               [12] 2250 	mov	a,r7
      0029A1 F0               [24] 2251 	movx	@dptr,a
      0029A2 EE               [12] 2252 	mov	a,r6
      0029A3 A3               [24] 2253 	inc	dptr
      0029A4 F0               [24] 2254 	movx	@dptr,a
      0029A5 ED               [12] 2255 	mov	a,r5
      0029A6 A3               [24] 2256 	inc	dptr
      0029A7 F0               [24] 2257 	movx	@dptr,a
      0029A8 EC               [12] 2258 	mov	a,r4
      0029A9 A3               [24] 2259 	inc	dptr
      0029AA F0               [24] 2260 	movx	@dptr,a
                                   2261 ;	../osal/common/OSAL_Timers.c:450: timeUnion.time32 = updateTime;
      0029AB 90 10 61         [24] 2262 	mov	dptr,#_osalTimerUpdate_updateTime_1_130
      0029AE E0               [24] 2263 	movx	a,@dptr
      0029AF FC               [12] 2264 	mov	r4,a
      0029B0 A3               [24] 2265 	inc	dptr
      0029B1 E0               [24] 2266 	movx	a,@dptr
      0029B2 FD               [12] 2267 	mov	r5,a
      0029B3 A3               [24] 2268 	inc	dptr
      0029B4 E0               [24] 2269 	movx	a,@dptr
      0029B5 FE               [12] 2270 	mov	r6,a
      0029B6 A3               [24] 2271 	inc	dptr
      0029B7 E0               [24] 2272 	movx	a,@dptr
      0029B8 FF               [12] 2273 	mov	r7,a
      0029B9 90 10 6B         [24] 2274 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      0029BC EC               [12] 2275 	mov	a,r4
      0029BD F0               [24] 2276 	movx	@dptr,a
      0029BE ED               [12] 2277 	mov	a,r5
      0029BF A3               [24] 2278 	inc	dptr
      0029C0 F0               [24] 2279 	movx	@dptr,a
      0029C1 EE               [12] 2280 	mov	a,r6
      0029C2 A3               [24] 2281 	inc	dptr
      0029C3 F0               [24] 2282 	movx	@dptr,a
      0029C4 EF               [12] 2283 	mov	a,r7
      0029C5 A3               [24] 2284 	inc	dptr
      0029C6 F0               [24] 2285 	movx	@dptr,a
                                   2286 ;	../osal/common/OSAL_Timers.c:457: osal_systemClock += updateTime;
      0029C7 90 10 1E         [24] 2287 	mov	dptr,#_osal_systemClock
      0029CA E0               [24] 2288 	movx	a,@dptr
      0029CB F8               [12] 2289 	mov	r0,a
      0029CC A3               [24] 2290 	inc	dptr
      0029CD E0               [24] 2291 	movx	a,@dptr
      0029CE F9               [12] 2292 	mov	r1,a
      0029CF A3               [24] 2293 	inc	dptr
      0029D0 E0               [24] 2294 	movx	a,@dptr
      0029D1 FA               [12] 2295 	mov	r2,a
      0029D2 A3               [24] 2296 	inc	dptr
      0029D3 E0               [24] 2297 	movx	a,@dptr
      0029D4 FB               [12] 2298 	mov	r3,a
      0029D5 90 10 1E         [24] 2299 	mov	dptr,#_osal_systemClock
      0029D8 EC               [12] 2300 	mov	a,r4
      0029D9 28               [12] 2301 	add	a,r0
      0029DA F0               [24] 2302 	movx	@dptr,a
      0029DB ED               [12] 2303 	mov	a,r5
      0029DC 39               [12] 2304 	addc	a,r1
      0029DD A3               [24] 2305 	inc	dptr
      0029DE F0               [24] 2306 	movx	@dptr,a
      0029DF EE               [12] 2307 	mov	a,r6
      0029E0 3A               [12] 2308 	addc	a,r2
      0029E1 A3               [24] 2309 	inc	dptr
      0029E2 F0               [24] 2310 	movx	@dptr,a
      0029E3 EF               [12] 2311 	mov	a,r7
      0029E4 3B               [12] 2312 	addc	a,r3
      0029E5 A3               [24] 2313 	inc	dptr
      0029E6 F0               [24] 2314 	movx	@dptr,a
                                   2315 ;	../osal/common/OSAL_Timers.c:461: if ( timerHead != NULL )
      0029E7 90 10 1B         [24] 2316 	mov	dptr,#_timerHead
      0029EA E0               [24] 2317 	movx	a,@dptr
      0029EB FD               [12] 2318 	mov	r5,a
      0029EC A3               [24] 2319 	inc	dptr
      0029ED E0               [24] 2320 	movx	a,@dptr
      0029EE FE               [12] 2321 	mov	r6,a
      0029EF A3               [24] 2322 	inc	dptr
      0029F0 E0               [24] 2323 	movx	a,@dptr
      0029F1 FF               [12] 2324 	mov	r7,a
      0029F2 ED               [12] 2325 	mov	a,r5
      0029F3 4E               [12] 2326 	orl	a,r6
      0029F4 70 03            [24] 2327 	jnz	00190$
      0029F6 02 2F CF         [24] 2328 	ljmp	00137$
      0029F9                       2329 00190$:
                                   2330 ;	../osal/common/OSAL_Timers.c:464: srchTimer = timerHead;
      0029F9 90 10 1B         [24] 2331 	mov	dptr,#_timerHead
      0029FC E0               [24] 2332 	movx	a,@dptr
      0029FD FD               [12] 2333 	mov	r5,a
      0029FE A3               [24] 2334 	inc	dptr
      0029FF E0               [24] 2335 	movx	a,@dptr
      002A00 FE               [12] 2336 	mov	r6,a
      002A01 A3               [24] 2337 	inc	dptr
      002A02 E0               [24] 2338 	movx	a,@dptr
      002A03 FF               [12] 2339 	mov	r7,a
      002A04 90 10 65         [24] 2340 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002A07 ED               [12] 2341 	mov	a,r5
      002A08 F0               [24] 2342 	movx	@dptr,a
      002A09 EE               [12] 2343 	mov	a,r6
      002A0A A3               [24] 2344 	inc	dptr
      002A0B F0               [24] 2345 	movx	@dptr,a
      002A0C EF               [12] 2346 	mov	a,r7
      002A0D A3               [24] 2347 	inc	dptr
      002A0E F0               [24] 2348 	movx	@dptr,a
                                   2349 ;	../osal/common/OSAL_Timers.c:465: prevTimer = (void *)NULL;
      002A0F 90 10 68         [24] 2350 	mov	dptr,#_osalTimerUpdate_prevTimer_1_131
      002A12 74 00            [12] 2351 	mov	a,#0x00
      002A14 F0               [24] 2352 	movx	@dptr,a
      002A15 A3               [24] 2353 	inc	dptr
      002A16 F0               [24] 2354 	movx	@dptr,a
      002A17 A3               [24] 2355 	inc	dptr
      002A18 F0               [24] 2356 	movx	@dptr,a
                                   2357 ;	../osal/common/OSAL_Timers.c:480: while ( srchTimer )
      002A19                       2358 00132$:
      002A19 90 10 65         [24] 2359 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002A1C E0               [24] 2360 	movx	a,@dptr
      002A1D FD               [12] 2361 	mov	r5,a
      002A1E A3               [24] 2362 	inc	dptr
      002A1F E0               [24] 2363 	movx	a,@dptr
      002A20 FE               [12] 2364 	mov	r6,a
      002A21 A3               [24] 2365 	inc	dptr
      002A22 E0               [24] 2366 	movx	a,@dptr
      002A23 FF               [12] 2367 	mov	r7,a
      002A24 ED               [12] 2368 	mov	a,r5
      002A25 4E               [12] 2369 	orl	a,r6
      002A26 70 03            [24] 2370 	jnz	00191$
      002A28 02 2F CF         [24] 2371 	ljmp	00137$
      002A2B                       2372 00191$:
                                   2373 ;	../osal/common/OSAL_Timers.c:482: osalTimerRec_t *freeTimer = NULL;
      002A2B 90 10 6F         [24] 2374 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002A2E 74 00            [12] 2375 	mov	a,#0x00
      002A30 F0               [24] 2376 	movx	@dptr,a
      002A31 A3               [24] 2377 	inc	dptr
      002A32 F0               [24] 2378 	movx	@dptr,a
      002A33 A3               [24] 2379 	inc	dptr
      002A34 F0               [24] 2380 	movx	@dptr,a
                                   2381 ;	../osal/common/OSAL_Timers.c:501: if ((timeUnion.time16[1] == 0) && (timeUnion.time8[1] == 0))
      002A35 90 10 6D         [24] 2382 	mov	dptr,#(_osalTimerUpdate_timeUnion_1_131 + 0x0002)
      002A38 E0               [24] 2383 	movx	a,@dptr
      002A39 FE               [12] 2384 	mov	r6,a
      002A3A A3               [24] 2385 	inc	dptr
      002A3B E0               [24] 2386 	movx	a,@dptr
      002A3C FF               [12] 2387 	mov	r7,a
      002A3D EE               [12] 2388 	mov	a,r6
      002A3E 4F               [12] 2389 	orl	a,r7
      002A3F 60 03            [24] 2390 	jz	00192$
      002A41 02 2B 8A         [24] 2391 	ljmp	00111$
      002A44                       2392 00192$:
      002A44 90 10 6C         [24] 2393 	mov	dptr,#(_osalTimerUpdate_timeUnion_1_131 + 0x0001)
      002A47 E0               [24] 2394 	movx	a,@dptr
      002A48 60 03            [24] 2395 	jz	00193$
      002A4A 02 2B 8A         [24] 2396 	ljmp	00111$
      002A4D                       2397 00193$:
                                   2398 ;	../osal/common/OSAL_Timers.c:504: if (srchTimer->timeout.time8[0] >= timeUnion.time8[0])
      002A4D 90 10 65         [24] 2399 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002A50 E0               [24] 2400 	movx	a,@dptr
      002A51 FD               [12] 2401 	mov	r5,a
      002A52 A3               [24] 2402 	inc	dptr
      002A53 E0               [24] 2403 	movx	a,@dptr
      002A54 FE               [12] 2404 	mov	r6,a
      002A55 A3               [24] 2405 	inc	dptr
      002A56 E0               [24] 2406 	movx	a,@dptr
      002A57 FF               [12] 2407 	mov	r7,a
      002A58 74 03            [12] 2408 	mov	a,#0x03
      002A5A 2D               [12] 2409 	add	a,r5
      002A5B FD               [12] 2410 	mov	r5,a
      002A5C 74 00            [12] 2411 	mov	a,#0x00
      002A5E 3E               [12] 2412 	addc	a,r6
      002A5F FE               [12] 2413 	mov	r6,a
      002A60 8D 82            [24] 2414 	mov	dpl,r5
      002A62 8E 83            [24] 2415 	mov	dph,r6
      002A64 8F F0            [24] 2416 	mov	b,r7
      002A66 12 5B 16         [24] 2417 	lcall	__gptrget
      002A69 FD               [12] 2418 	mov	r5,a
      002A6A 90 10 6B         [24] 2419 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002A6D E0               [24] 2420 	movx	a,@dptr
      002A6E FF               [12] 2421 	mov	r7,a
      002A6F C3               [12] 2422 	clr	c
      002A70 ED               [12] 2423 	mov	a,r5
      002A71 9F               [12] 2424 	subb	a,r7
      002A72 50 03            [24] 2425 	jnc	00194$
      002A74 02 2A AA         [24] 2426 	ljmp	00105$
      002A77                       2427 00194$:
                                   2428 ;	../osal/common/OSAL_Timers.c:507: srchTimer->timeout.time8[0] -= timeUnion.time8[0];
      002A77 90 10 65         [24] 2429 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002A7A E0               [24] 2430 	movx	a,@dptr
      002A7B FD               [12] 2431 	mov	r5,a
      002A7C A3               [24] 2432 	inc	dptr
      002A7D E0               [24] 2433 	movx	a,@dptr
      002A7E FE               [12] 2434 	mov	r6,a
      002A7F A3               [24] 2435 	inc	dptr
      002A80 E0               [24] 2436 	movx	a,@dptr
      002A81 FF               [12] 2437 	mov	r7,a
      002A82 74 03            [12] 2438 	mov	a,#0x03
      002A84 2D               [12] 2439 	add	a,r5
      002A85 FD               [12] 2440 	mov	r5,a
      002A86 74 00            [12] 2441 	mov	a,#0x00
      002A88 3E               [12] 2442 	addc	a,r6
      002A89 FE               [12] 2443 	mov	r6,a
      002A8A 90 10 6B         [24] 2444 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002A8D E0               [24] 2445 	movx	a,@dptr
      002A8E FC               [12] 2446 	mov	r4,a
      002A8F 8D 82            [24] 2447 	mov	dpl,r5
      002A91 8E 83            [24] 2448 	mov	dph,r6
      002A93 8F F0            [24] 2449 	mov	b,r7
      002A95 12 5B 16         [24] 2450 	lcall	__gptrget
      002A98 FB               [12] 2451 	mov	r3,a
      002A99 EB               [12] 2452 	mov	a,r3
      002A9A C3               [12] 2453 	clr	c
      002A9B 9C               [12] 2454 	subb	a,r4
      002A9C FC               [12] 2455 	mov	r4,a
      002A9D 8D 82            [24] 2456 	mov	dpl,r5
      002A9F 8E 83            [24] 2457 	mov	dph,r6
      002AA1 8F F0            [24] 2458 	mov	b,r7
      002AA3 EC               [12] 2459 	mov	a,r4
      002AA4 12 59 AA         [24] 2460 	lcall	__gptrput
      002AA7 02 2C 67         [24] 2461 	ljmp	00112$
      002AAA                       2462 00105$:
                                   2463 ;	../osal/common/OSAL_Timers.c:512: if (srchTimer->timeout.time32 > timeUnion.time32)
      002AAA 90 10 65         [24] 2464 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002AAD E0               [24] 2465 	movx	a,@dptr
      002AAE FD               [12] 2466 	mov	r5,a
      002AAF A3               [24] 2467 	inc	dptr
      002AB0 E0               [24] 2468 	movx	a,@dptr
      002AB1 FE               [12] 2469 	mov	r6,a
      002AB2 A3               [24] 2470 	inc	dptr
      002AB3 E0               [24] 2471 	movx	a,@dptr
      002AB4 FF               [12] 2472 	mov	r7,a
      002AB5 74 03            [12] 2473 	mov	a,#0x03
      002AB7 2D               [12] 2474 	add	a,r5
      002AB8 FD               [12] 2475 	mov	r5,a
      002AB9 74 00            [12] 2476 	mov	a,#0x00
      002ABB 3E               [12] 2477 	addc	a,r6
      002ABC FE               [12] 2478 	mov	r6,a
      002ABD 8D 82            [24] 2479 	mov	dpl,r5
      002ABF 8E 83            [24] 2480 	mov	dph,r6
      002AC1 8F F0            [24] 2481 	mov	b,r7
      002AC3 12 5B 16         [24] 2482 	lcall	__gptrget
      002AC6 FD               [12] 2483 	mov	r5,a
      002AC7 A3               [24] 2484 	inc	dptr
      002AC8 12 5B 16         [24] 2485 	lcall	__gptrget
      002ACB FE               [12] 2486 	mov	r6,a
      002ACC A3               [24] 2487 	inc	dptr
      002ACD 12 5B 16         [24] 2488 	lcall	__gptrget
      002AD0 FF               [12] 2489 	mov	r7,a
      002AD1 A3               [24] 2490 	inc	dptr
      002AD2 12 5B 16         [24] 2491 	lcall	__gptrget
      002AD5 FC               [12] 2492 	mov	r4,a
      002AD6 90 10 6B         [24] 2493 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002AD9 E0               [24] 2494 	movx	a,@dptr
      002ADA F8               [12] 2495 	mov	r0,a
      002ADB A3               [24] 2496 	inc	dptr
      002ADC E0               [24] 2497 	movx	a,@dptr
      002ADD F9               [12] 2498 	mov	r1,a
      002ADE A3               [24] 2499 	inc	dptr
      002ADF E0               [24] 2500 	movx	a,@dptr
      002AE0 FA               [12] 2501 	mov	r2,a
      002AE1 A3               [24] 2502 	inc	dptr
      002AE2 E0               [24] 2503 	movx	a,@dptr
      002AE3 FB               [12] 2504 	mov	r3,a
      002AE4 C3               [12] 2505 	clr	c
      002AE5 E8               [12] 2506 	mov	a,r0
      002AE6 9D               [12] 2507 	subb	a,r5
      002AE7 E9               [12] 2508 	mov	a,r1
      002AE8 9E               [12] 2509 	subb	a,r6
      002AE9 EA               [12] 2510 	mov	a,r2
      002AEA 9F               [12] 2511 	subb	a,r7
      002AEB EB               [12] 2512 	mov	a,r3
      002AEC 9C               [12] 2513 	subb	a,r4
      002AED 40 03            [24] 2514 	jc	00195$
      002AEF 02 2B 5D         [24] 2515 	ljmp	00102$
      002AF2                       2516 00195$:
                                   2517 ;	../osal/common/OSAL_Timers.c:514: srchTimer->timeout.time32 -= timeUnion.time32;
      002AF2 90 10 65         [24] 2518 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002AF5 E0               [24] 2519 	movx	a,@dptr
      002AF6 FD               [12] 2520 	mov	r5,a
      002AF7 A3               [24] 2521 	inc	dptr
      002AF8 E0               [24] 2522 	movx	a,@dptr
      002AF9 FE               [12] 2523 	mov	r6,a
      002AFA A3               [24] 2524 	inc	dptr
      002AFB E0               [24] 2525 	movx	a,@dptr
      002AFC FF               [12] 2526 	mov	r7,a
      002AFD 74 03            [12] 2527 	mov	a,#0x03
      002AFF 2D               [12] 2528 	add	a,r5
      002B00 FD               [12] 2529 	mov	r5,a
      002B01 74 00            [12] 2530 	mov	a,#0x00
      002B03 3E               [12] 2531 	addc	a,r6
      002B04 FE               [12] 2532 	mov	r6,a
      002B05 8D 82            [24] 2533 	mov	dpl,r5
      002B07 8E 83            [24] 2534 	mov	dph,r6
      002B09 8F F0            [24] 2535 	mov	b,r7
      002B0B 12 5B 16         [24] 2536 	lcall	__gptrget
      002B0E F5 13            [12] 2537 	mov	_osalTimerUpdate_sloc0_1_0,a
      002B10 A3               [24] 2538 	inc	dptr
      002B11 12 5B 16         [24] 2539 	lcall	__gptrget
      002B14 F5 14            [12] 2540 	mov	(_osalTimerUpdate_sloc0_1_0 + 1),a
      002B16 A3               [24] 2541 	inc	dptr
      002B17 12 5B 16         [24] 2542 	lcall	__gptrget
      002B1A F5 15            [12] 2543 	mov	(_osalTimerUpdate_sloc0_1_0 + 2),a
      002B1C A3               [24] 2544 	inc	dptr
      002B1D 12 5B 16         [24] 2545 	lcall	__gptrget
      002B20 F5 16            [12] 2546 	mov	(_osalTimerUpdate_sloc0_1_0 + 3),a
      002B22 90 10 6B         [24] 2547 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002B25 E0               [24] 2548 	movx	a,@dptr
      002B26 F8               [12] 2549 	mov	r0,a
      002B27 A3               [24] 2550 	inc	dptr
      002B28 E0               [24] 2551 	movx	a,@dptr
      002B29 FA               [12] 2552 	mov	r2,a
      002B2A A3               [24] 2553 	inc	dptr
      002B2B E0               [24] 2554 	movx	a,@dptr
      002B2C FB               [12] 2555 	mov	r3,a
      002B2D A3               [24] 2556 	inc	dptr
      002B2E E0               [24] 2557 	movx	a,@dptr
      002B2F FC               [12] 2558 	mov	r4,a
      002B30 E5 13            [12] 2559 	mov	a,_osalTimerUpdate_sloc0_1_0
      002B32 C3               [12] 2560 	clr	c
      002B33 98               [12] 2561 	subb	a,r0
      002B34 F8               [12] 2562 	mov	r0,a
      002B35 E5 14            [12] 2563 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 1)
      002B37 9A               [12] 2564 	subb	a,r2
      002B38 FA               [12] 2565 	mov	r2,a
      002B39 E5 15            [12] 2566 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 2)
      002B3B 9B               [12] 2567 	subb	a,r3
      002B3C FB               [12] 2568 	mov	r3,a
      002B3D E5 16            [12] 2569 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 3)
      002B3F 9C               [12] 2570 	subb	a,r4
      002B40 FC               [12] 2571 	mov	r4,a
      002B41 8D 82            [24] 2572 	mov	dpl,r5
      002B43 8E 83            [24] 2573 	mov	dph,r6
      002B45 8F F0            [24] 2574 	mov	b,r7
      002B47 E8               [12] 2575 	mov	a,r0
      002B48 12 59 AA         [24] 2576 	lcall	__gptrput
      002B4B A3               [24] 2577 	inc	dptr
      002B4C EA               [12] 2578 	mov	a,r2
      002B4D 12 59 AA         [24] 2579 	lcall	__gptrput
      002B50 A3               [24] 2580 	inc	dptr
      002B51 EB               [12] 2581 	mov	a,r3
      002B52 12 59 AA         [24] 2582 	lcall	__gptrput
      002B55 A3               [24] 2583 	inc	dptr
      002B56 EC               [12] 2584 	mov	a,r4
      002B57 12 59 AA         [24] 2585 	lcall	__gptrput
      002B5A 02 2C 67         [24] 2586 	ljmp	00112$
      002B5D                       2587 00102$:
                                   2588 ;	../osal/common/OSAL_Timers.c:518: srchTimer->timeout.time32 = 0;
      002B5D 90 10 65         [24] 2589 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002B60 E0               [24] 2590 	movx	a,@dptr
      002B61 FD               [12] 2591 	mov	r5,a
      002B62 A3               [24] 2592 	inc	dptr
      002B63 E0               [24] 2593 	movx	a,@dptr
      002B64 FE               [12] 2594 	mov	r6,a
      002B65 A3               [24] 2595 	inc	dptr
      002B66 E0               [24] 2596 	movx	a,@dptr
      002B67 FF               [12] 2597 	mov	r7,a
      002B68 74 03            [12] 2598 	mov	a,#0x03
      002B6A 2D               [12] 2599 	add	a,r5
      002B6B FD               [12] 2600 	mov	r5,a
      002B6C 74 00            [12] 2601 	mov	a,#0x00
      002B6E 3E               [12] 2602 	addc	a,r6
      002B6F FE               [12] 2603 	mov	r6,a
      002B70 8D 82            [24] 2604 	mov	dpl,r5
      002B72 8E 83            [24] 2605 	mov	dph,r6
      002B74 8F F0            [24] 2606 	mov	b,r7
      002B76 74 00            [12] 2607 	mov	a,#0x00
      002B78 12 59 AA         [24] 2608 	lcall	__gptrput
      002B7B A3               [24] 2609 	inc	dptr
      002B7C 12 59 AA         [24] 2610 	lcall	__gptrput
      002B7F A3               [24] 2611 	inc	dptr
      002B80 12 59 AA         [24] 2612 	lcall	__gptrput
      002B83 A3               [24] 2613 	inc	dptr
      002B84 12 59 AA         [24] 2614 	lcall	__gptrput
      002B87 02 2C 67         [24] 2615 	ljmp	00112$
      002B8A                       2616 00111$:
                                   2617 ;	../osal/common/OSAL_Timers.c:525: if (srchTimer->timeout.time32 > timeUnion.time32)
      002B8A 90 10 65         [24] 2618 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002B8D E0               [24] 2619 	movx	a,@dptr
      002B8E FD               [12] 2620 	mov	r5,a
      002B8F A3               [24] 2621 	inc	dptr
      002B90 E0               [24] 2622 	movx	a,@dptr
      002B91 FE               [12] 2623 	mov	r6,a
      002B92 A3               [24] 2624 	inc	dptr
      002B93 E0               [24] 2625 	movx	a,@dptr
      002B94 FF               [12] 2626 	mov	r7,a
      002B95 74 03            [12] 2627 	mov	a,#0x03
      002B97 2D               [12] 2628 	add	a,r5
      002B98 FD               [12] 2629 	mov	r5,a
      002B99 74 00            [12] 2630 	mov	a,#0x00
      002B9B 3E               [12] 2631 	addc	a,r6
      002B9C FE               [12] 2632 	mov	r6,a
      002B9D 8D 82            [24] 2633 	mov	dpl,r5
      002B9F 8E 83            [24] 2634 	mov	dph,r6
      002BA1 8F F0            [24] 2635 	mov	b,r7
      002BA3 12 5B 16         [24] 2636 	lcall	__gptrget
      002BA6 FD               [12] 2637 	mov	r5,a
      002BA7 A3               [24] 2638 	inc	dptr
      002BA8 12 5B 16         [24] 2639 	lcall	__gptrget
      002BAB FE               [12] 2640 	mov	r6,a
      002BAC A3               [24] 2641 	inc	dptr
      002BAD 12 5B 16         [24] 2642 	lcall	__gptrget
      002BB0 FF               [12] 2643 	mov	r7,a
      002BB1 A3               [24] 2644 	inc	dptr
      002BB2 12 5B 16         [24] 2645 	lcall	__gptrget
      002BB5 FC               [12] 2646 	mov	r4,a
      002BB6 90 10 6B         [24] 2647 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002BB9 E0               [24] 2648 	movx	a,@dptr
      002BBA F8               [12] 2649 	mov	r0,a
      002BBB A3               [24] 2650 	inc	dptr
      002BBC E0               [24] 2651 	movx	a,@dptr
      002BBD F9               [12] 2652 	mov	r1,a
      002BBE A3               [24] 2653 	inc	dptr
      002BBF E0               [24] 2654 	movx	a,@dptr
      002BC0 FA               [12] 2655 	mov	r2,a
      002BC1 A3               [24] 2656 	inc	dptr
      002BC2 E0               [24] 2657 	movx	a,@dptr
      002BC3 FB               [12] 2658 	mov	r3,a
      002BC4 C3               [12] 2659 	clr	c
      002BC5 E8               [12] 2660 	mov	a,r0
      002BC6 9D               [12] 2661 	subb	a,r5
      002BC7 E9               [12] 2662 	mov	a,r1
      002BC8 9E               [12] 2663 	subb	a,r6
      002BC9 EA               [12] 2664 	mov	a,r2
      002BCA 9F               [12] 2665 	subb	a,r7
      002BCB EB               [12] 2666 	mov	a,r3
      002BCC 9C               [12] 2667 	subb	a,r4
      002BCD 40 03            [24] 2668 	jc	00196$
      002BCF 02 2C 3D         [24] 2669 	ljmp	00108$
      002BD2                       2670 00196$:
                                   2671 ;	../osal/common/OSAL_Timers.c:527: srchTimer->timeout.time32 -= timeUnion.time32;
      002BD2 90 10 65         [24] 2672 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002BD5 E0               [24] 2673 	movx	a,@dptr
      002BD6 FD               [12] 2674 	mov	r5,a
      002BD7 A3               [24] 2675 	inc	dptr
      002BD8 E0               [24] 2676 	movx	a,@dptr
      002BD9 FE               [12] 2677 	mov	r6,a
      002BDA A3               [24] 2678 	inc	dptr
      002BDB E0               [24] 2679 	movx	a,@dptr
      002BDC FF               [12] 2680 	mov	r7,a
      002BDD 74 03            [12] 2681 	mov	a,#0x03
      002BDF 2D               [12] 2682 	add	a,r5
      002BE0 FD               [12] 2683 	mov	r5,a
      002BE1 74 00            [12] 2684 	mov	a,#0x00
      002BE3 3E               [12] 2685 	addc	a,r6
      002BE4 FE               [12] 2686 	mov	r6,a
      002BE5 8D 82            [24] 2687 	mov	dpl,r5
      002BE7 8E 83            [24] 2688 	mov	dph,r6
      002BE9 8F F0            [24] 2689 	mov	b,r7
      002BEB 12 5B 16         [24] 2690 	lcall	__gptrget
      002BEE F5 13            [12] 2691 	mov	_osalTimerUpdate_sloc0_1_0,a
      002BF0 A3               [24] 2692 	inc	dptr
      002BF1 12 5B 16         [24] 2693 	lcall	__gptrget
      002BF4 F5 14            [12] 2694 	mov	(_osalTimerUpdate_sloc0_1_0 + 1),a
      002BF6 A3               [24] 2695 	inc	dptr
      002BF7 12 5B 16         [24] 2696 	lcall	__gptrget
      002BFA F5 15            [12] 2697 	mov	(_osalTimerUpdate_sloc0_1_0 + 2),a
      002BFC A3               [24] 2698 	inc	dptr
      002BFD 12 5B 16         [24] 2699 	lcall	__gptrget
      002C00 F5 16            [12] 2700 	mov	(_osalTimerUpdate_sloc0_1_0 + 3),a
      002C02 90 10 6B         [24] 2701 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002C05 E0               [24] 2702 	movx	a,@dptr
      002C06 F8               [12] 2703 	mov	r0,a
      002C07 A3               [24] 2704 	inc	dptr
      002C08 E0               [24] 2705 	movx	a,@dptr
      002C09 FA               [12] 2706 	mov	r2,a
      002C0A A3               [24] 2707 	inc	dptr
      002C0B E0               [24] 2708 	movx	a,@dptr
      002C0C FB               [12] 2709 	mov	r3,a
      002C0D A3               [24] 2710 	inc	dptr
      002C0E E0               [24] 2711 	movx	a,@dptr
      002C0F FC               [12] 2712 	mov	r4,a
      002C10 E5 13            [12] 2713 	mov	a,_osalTimerUpdate_sloc0_1_0
      002C12 C3               [12] 2714 	clr	c
      002C13 98               [12] 2715 	subb	a,r0
      002C14 F8               [12] 2716 	mov	r0,a
      002C15 E5 14            [12] 2717 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 1)
      002C17 9A               [12] 2718 	subb	a,r2
      002C18 FA               [12] 2719 	mov	r2,a
      002C19 E5 15            [12] 2720 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 2)
      002C1B 9B               [12] 2721 	subb	a,r3
      002C1C FB               [12] 2722 	mov	r3,a
      002C1D E5 16            [12] 2723 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 3)
      002C1F 9C               [12] 2724 	subb	a,r4
      002C20 FC               [12] 2725 	mov	r4,a
      002C21 8D 82            [24] 2726 	mov	dpl,r5
      002C23 8E 83            [24] 2727 	mov	dph,r6
      002C25 8F F0            [24] 2728 	mov	b,r7
      002C27 E8               [12] 2729 	mov	a,r0
      002C28 12 59 AA         [24] 2730 	lcall	__gptrput
      002C2B A3               [24] 2731 	inc	dptr
      002C2C EA               [12] 2732 	mov	a,r2
      002C2D 12 59 AA         [24] 2733 	lcall	__gptrput
      002C30 A3               [24] 2734 	inc	dptr
      002C31 EB               [12] 2735 	mov	a,r3
      002C32 12 59 AA         [24] 2736 	lcall	__gptrput
      002C35 A3               [24] 2737 	inc	dptr
      002C36 EC               [12] 2738 	mov	a,r4
      002C37 12 59 AA         [24] 2739 	lcall	__gptrput
      002C3A 02 2C 67         [24] 2740 	ljmp	00112$
      002C3D                       2741 00108$:
                                   2742 ;	../osal/common/OSAL_Timers.c:531: srchTimer->timeout.time32 = 0;
      002C3D 90 10 65         [24] 2743 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002C40 E0               [24] 2744 	movx	a,@dptr
      002C41 FD               [12] 2745 	mov	r5,a
      002C42 A3               [24] 2746 	inc	dptr
      002C43 E0               [24] 2747 	movx	a,@dptr
      002C44 FE               [12] 2748 	mov	r6,a
      002C45 A3               [24] 2749 	inc	dptr
      002C46 E0               [24] 2750 	movx	a,@dptr
      002C47 FF               [12] 2751 	mov	r7,a
      002C48 74 03            [12] 2752 	mov	a,#0x03
      002C4A 2D               [12] 2753 	add	a,r5
      002C4B FD               [12] 2754 	mov	r5,a
      002C4C 74 00            [12] 2755 	mov	a,#0x00
      002C4E 3E               [12] 2756 	addc	a,r6
      002C4F FE               [12] 2757 	mov	r6,a
      002C50 8D 82            [24] 2758 	mov	dpl,r5
      002C52 8E 83            [24] 2759 	mov	dph,r6
      002C54 8F F0            [24] 2760 	mov	b,r7
      002C56 74 00            [12] 2761 	mov	a,#0x00
      002C58 12 59 AA         [24] 2762 	lcall	__gptrput
      002C5B A3               [24] 2763 	inc	dptr
      002C5C 12 59 AA         [24] 2764 	lcall	__gptrput
      002C5F A3               [24] 2765 	inc	dptr
      002C60 12 59 AA         [24] 2766 	lcall	__gptrput
      002C63 A3               [24] 2767 	inc	dptr
      002C64 12 59 AA         [24] 2768 	lcall	__gptrput
      002C67                       2769 00112$:
                                   2770 ;	../osal/common/OSAL_Timers.c:536: if ( (srchTimer->timeout.time16[0] == 0) && (srchTimer->timeout.time16[1] == 0) &&
      002C67 90 10 65         [24] 2771 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002C6A E0               [24] 2772 	movx	a,@dptr
      002C6B FD               [12] 2773 	mov	r5,a
      002C6C A3               [24] 2774 	inc	dptr
      002C6D E0               [24] 2775 	movx	a,@dptr
      002C6E FE               [12] 2776 	mov	r6,a
      002C6F A3               [24] 2777 	inc	dptr
      002C70 E0               [24] 2778 	movx	a,@dptr
      002C71 FF               [12] 2779 	mov	r7,a
      002C72 74 03            [12] 2780 	mov	a,#0x03
      002C74 2D               [12] 2781 	add	a,r5
      002C75 FD               [12] 2782 	mov	r5,a
      002C76 74 00            [12] 2783 	mov	a,#0x00
      002C78 3E               [12] 2784 	addc	a,r6
      002C79 FE               [12] 2785 	mov	r6,a
      002C7A 8D 82            [24] 2786 	mov	dpl,r5
      002C7C 8E 83            [24] 2787 	mov	dph,r6
      002C7E 8F F0            [24] 2788 	mov	b,r7
      002C80 12 5B 16         [24] 2789 	lcall	__gptrget
      002C83 FD               [12] 2790 	mov	r5,a
      002C84 A3               [24] 2791 	inc	dptr
      002C85 12 5B 16         [24] 2792 	lcall	__gptrget
      002C88 FE               [12] 2793 	mov	r6,a
      002C89 ED               [12] 2794 	mov	a,r5
      002C8A 4E               [12] 2795 	orl	a,r6
      002C8B 60 03            [24] 2796 	jz	00197$
      002C8D 02 2D AC         [24] 2797 	ljmp	00115$
      002C90                       2798 00197$:
      002C90 90 10 65         [24] 2799 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002C93 E0               [24] 2800 	movx	a,@dptr
      002C94 FD               [12] 2801 	mov	r5,a
      002C95 A3               [24] 2802 	inc	dptr
      002C96 E0               [24] 2803 	movx	a,@dptr
      002C97 FE               [12] 2804 	mov	r6,a
      002C98 A3               [24] 2805 	inc	dptr
      002C99 E0               [24] 2806 	movx	a,@dptr
      002C9A FF               [12] 2807 	mov	r7,a
      002C9B 74 05            [12] 2808 	mov	a,#0x05
      002C9D 2D               [12] 2809 	add	a,r5
      002C9E FD               [12] 2810 	mov	r5,a
      002C9F 74 00            [12] 2811 	mov	a,#0x00
      002CA1 3E               [12] 2812 	addc	a,r6
      002CA2 FE               [12] 2813 	mov	r6,a
      002CA3 8D 82            [24] 2814 	mov	dpl,r5
      002CA5 8E 83            [24] 2815 	mov	dph,r6
      002CA7 8F F0            [24] 2816 	mov	b,r7
      002CA9 12 5B 16         [24] 2817 	lcall	__gptrget
      002CAC FD               [12] 2818 	mov	r5,a
      002CAD A3               [24] 2819 	inc	dptr
      002CAE 12 5B 16         [24] 2820 	lcall	__gptrget
      002CB1 FE               [12] 2821 	mov	r6,a
      002CB2 ED               [12] 2822 	mov	a,r5
      002CB3 4E               [12] 2823 	orl	a,r6
      002CB4 60 03            [24] 2824 	jz	00198$
      002CB6 02 2D AC         [24] 2825 	ljmp	00115$
      002CB9                       2826 00198$:
                                   2827 ;	../osal/common/OSAL_Timers.c:537: (srchTimer->reloadTimeout) && (srchTimer->event_flag) )
      002CB9 90 10 65         [24] 2828 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002CBC E0               [24] 2829 	movx	a,@dptr
      002CBD FD               [12] 2830 	mov	r5,a
      002CBE A3               [24] 2831 	inc	dptr
      002CBF E0               [24] 2832 	movx	a,@dptr
      002CC0 FE               [12] 2833 	mov	r6,a
      002CC1 A3               [24] 2834 	inc	dptr
      002CC2 E0               [24] 2835 	movx	a,@dptr
      002CC3 FF               [12] 2836 	mov	r7,a
      002CC4 74 0A            [12] 2837 	mov	a,#0x0A
      002CC6 2D               [12] 2838 	add	a,r5
      002CC7 FD               [12] 2839 	mov	r5,a
      002CC8 74 00            [12] 2840 	mov	a,#0x00
      002CCA 3E               [12] 2841 	addc	a,r6
      002CCB FE               [12] 2842 	mov	r6,a
      002CCC 8D 82            [24] 2843 	mov	dpl,r5
      002CCE 8E 83            [24] 2844 	mov	dph,r6
      002CD0 8F F0            [24] 2845 	mov	b,r7
      002CD2 12 5B 16         [24] 2846 	lcall	__gptrget
      002CD5 FD               [12] 2847 	mov	r5,a
      002CD6 A3               [24] 2848 	inc	dptr
      002CD7 12 5B 16         [24] 2849 	lcall	__gptrget
      002CDA FE               [12] 2850 	mov	r6,a
      002CDB A3               [24] 2851 	inc	dptr
      002CDC 12 5B 16         [24] 2852 	lcall	__gptrget
      002CDF FF               [12] 2853 	mov	r7,a
      002CE0 A3               [24] 2854 	inc	dptr
      002CE1 12 5B 16         [24] 2855 	lcall	__gptrget
      002CE4 FC               [12] 2856 	mov	r4,a
      002CE5 ED               [12] 2857 	mov	a,r5
      002CE6 4E               [12] 2858 	orl	a,r6
      002CE7 4F               [12] 2859 	orl	a,r7
      002CE8 4C               [12] 2860 	orl	a,r4
      002CE9 70 03            [24] 2861 	jnz	00199$
      002CEB 02 2D AC         [24] 2862 	ljmp	00115$
      002CEE                       2863 00199$:
      002CEE 90 10 65         [24] 2864 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002CF1 E0               [24] 2865 	movx	a,@dptr
      002CF2 FD               [12] 2866 	mov	r5,a
      002CF3 A3               [24] 2867 	inc	dptr
      002CF4 E0               [24] 2868 	movx	a,@dptr
      002CF5 FE               [12] 2869 	mov	r6,a
      002CF6 A3               [24] 2870 	inc	dptr
      002CF7 E0               [24] 2871 	movx	a,@dptr
      002CF8 FF               [12] 2872 	mov	r7,a
      002CF9 74 07            [12] 2873 	mov	a,#0x07
      002CFB 2D               [12] 2874 	add	a,r5
      002CFC FD               [12] 2875 	mov	r5,a
      002CFD 74 00            [12] 2876 	mov	a,#0x00
      002CFF 3E               [12] 2877 	addc	a,r6
      002D00 FE               [12] 2878 	mov	r6,a
      002D01 8D 82            [24] 2879 	mov	dpl,r5
      002D03 8E 83            [24] 2880 	mov	dph,r6
      002D05 8F F0            [24] 2881 	mov	b,r7
      002D07 12 5B 16         [24] 2882 	lcall	__gptrget
      002D0A FD               [12] 2883 	mov	r5,a
      002D0B A3               [24] 2884 	inc	dptr
      002D0C 12 5B 16         [24] 2885 	lcall	__gptrget
      002D0F FE               [12] 2886 	mov	r6,a
      002D10 ED               [12] 2887 	mov	a,r5
      002D11 4E               [12] 2888 	orl	a,r6
      002D12 70 03            [24] 2889 	jnz	00200$
      002D14 02 2D AC         [24] 2890 	ljmp	00115$
      002D17                       2891 00200$:
                                   2892 ;	../osal/common/OSAL_Timers.c:542: osal_set_event( srchTimer->task_id, srchTimer->event_flag );
      002D17 90 10 65         [24] 2893 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002D1A E0               [24] 2894 	movx	a,@dptr
      002D1B FD               [12] 2895 	mov	r5,a
      002D1C A3               [24] 2896 	inc	dptr
      002D1D E0               [24] 2897 	movx	a,@dptr
      002D1E FE               [12] 2898 	mov	r6,a
      002D1F A3               [24] 2899 	inc	dptr
      002D20 E0               [24] 2900 	movx	a,@dptr
      002D21 FF               [12] 2901 	mov	r7,a
      002D22 74 09            [12] 2902 	mov	a,#0x09
      002D24 2D               [12] 2903 	add	a,r5
      002D25 FA               [12] 2904 	mov	r2,a
      002D26 74 00            [12] 2905 	mov	a,#0x00
      002D28 3E               [12] 2906 	addc	a,r6
      002D29 FB               [12] 2907 	mov	r3,a
      002D2A 8F 04            [24] 2908 	mov	ar4,r7
      002D2C 8A 82            [24] 2909 	mov	dpl,r2
      002D2E 8B 83            [24] 2910 	mov	dph,r3
      002D30 8C F0            [24] 2911 	mov	b,r4
      002D32 12 5B 16         [24] 2912 	lcall	__gptrget
      002D35 FA               [12] 2913 	mov	r2,a
      002D36 74 07            [12] 2914 	mov	a,#0x07
      002D38 2D               [12] 2915 	add	a,r5
      002D39 F9               [12] 2916 	mov	r1,a
      002D3A 74 00            [12] 2917 	mov	a,#0x00
      002D3C 3E               [12] 2918 	addc	a,r6
      002D3D FB               [12] 2919 	mov	r3,a
      002D3E 8F 04            [24] 2920 	mov	ar4,r7
      002D40 89 82            [24] 2921 	mov	dpl,r1
      002D42 8B 83            [24] 2922 	mov	dph,r3
      002D44 8C F0            [24] 2923 	mov	b,r4
      002D46 12 5B 16         [24] 2924 	lcall	__gptrget
      002D49 F9               [12] 2925 	mov	r1,a
      002D4A A3               [24] 2926 	inc	dptr
      002D4B 12 5B 16         [24] 2927 	lcall	__gptrget
      002D4E FB               [12] 2928 	mov	r3,a
      002D4F 90 03 C6         [24] 2929 	mov	dptr,#_osal_set_event_PARM_2
      002D52 E9               [12] 2930 	mov	a,r1
      002D53 F0               [24] 2931 	movx	@dptr,a
      002D54 EB               [12] 2932 	mov	a,r3
      002D55 A3               [24] 2933 	inc	dptr
      002D56 F0               [24] 2934 	movx	@dptr,a
      002D57 8A 82            [24] 2935 	mov	dpl,r2
      002D59 C0 07            [24] 2936 	push	ar7
      002D5B C0 06            [24] 2937 	push	ar6
      002D5D C0 05            [24] 2938 	push	ar5
      002D5F 12 19 62         [24] 2939 	lcall	_osal_set_event
      002D62 D0 05            [24] 2940 	pop	ar5
      002D64 D0 06            [24] 2941 	pop	ar6
      002D66 D0 07            [24] 2942 	pop	ar7
                                   2943 ;	../osal/common/OSAL_Timers.c:545: srchTimer->timeout.time32 = srchTimer->reloadTimeout;
      002D68 74 03            [12] 2944 	mov	a,#0x03
      002D6A 2D               [12] 2945 	add	a,r5
      002D6B FA               [12] 2946 	mov	r2,a
      002D6C 74 00            [12] 2947 	mov	a,#0x00
      002D6E 3E               [12] 2948 	addc	a,r6
      002D6F FB               [12] 2949 	mov	r3,a
      002D70 8F 04            [24] 2950 	mov	ar4,r7
      002D72 74 0A            [12] 2951 	mov	a,#0x0A
      002D74 2D               [12] 2952 	add	a,r5
      002D75 FD               [12] 2953 	mov	r5,a
      002D76 74 00            [12] 2954 	mov	a,#0x00
      002D78 3E               [12] 2955 	addc	a,r6
      002D79 FE               [12] 2956 	mov	r6,a
      002D7A 8D 82            [24] 2957 	mov	dpl,r5
      002D7C 8E 83            [24] 2958 	mov	dph,r6
      002D7E 8F F0            [24] 2959 	mov	b,r7
      002D80 12 5B 16         [24] 2960 	lcall	__gptrget
      002D83 F9               [12] 2961 	mov	r1,a
      002D84 A3               [24] 2962 	inc	dptr
      002D85 12 5B 16         [24] 2963 	lcall	__gptrget
      002D88 FD               [12] 2964 	mov	r5,a
      002D89 A3               [24] 2965 	inc	dptr
      002D8A 12 5B 16         [24] 2966 	lcall	__gptrget
      002D8D FE               [12] 2967 	mov	r6,a
      002D8E A3               [24] 2968 	inc	dptr
      002D8F 12 5B 16         [24] 2969 	lcall	__gptrget
      002D92 FF               [12] 2970 	mov	r7,a
      002D93 8A 82            [24] 2971 	mov	dpl,r2
      002D95 8B 83            [24] 2972 	mov	dph,r3
      002D97 8C F0            [24] 2973 	mov	b,r4
      002D99 E9               [12] 2974 	mov	a,r1
      002D9A 12 59 AA         [24] 2975 	lcall	__gptrput
      002D9D A3               [24] 2976 	inc	dptr
      002D9E ED               [12] 2977 	mov	a,r5
      002D9F 12 59 AA         [24] 2978 	lcall	__gptrput
      002DA2 A3               [24] 2979 	inc	dptr
      002DA3 EE               [12] 2980 	mov	a,r6
      002DA4 12 59 AA         [24] 2981 	lcall	__gptrput
      002DA7 A3               [24] 2982 	inc	dptr
      002DA8 EF               [12] 2983 	mov	a,r7
      002DA9 12 59 AA         [24] 2984 	lcall	__gptrput
      002DAC                       2985 00115$:
                                   2986 ;	../osal/common/OSAL_Timers.c:549: if ( ((srchTimer->timeout.time16[0] == 0) && (srchTimer->timeout.time16[1] == 0)) ||
      002DAC 90 10 65         [24] 2987 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002DAF E0               [24] 2988 	movx	a,@dptr
      002DB0 FD               [12] 2989 	mov	r5,a
      002DB1 A3               [24] 2990 	inc	dptr
      002DB2 E0               [24] 2991 	movx	a,@dptr
      002DB3 FE               [12] 2992 	mov	r6,a
      002DB4 A3               [24] 2993 	inc	dptr
      002DB5 E0               [24] 2994 	movx	a,@dptr
      002DB6 FF               [12] 2995 	mov	r7,a
      002DB7 74 03            [12] 2996 	mov	a,#0x03
      002DB9 2D               [12] 2997 	add	a,r5
      002DBA FD               [12] 2998 	mov	r5,a
      002DBB 74 00            [12] 2999 	mov	a,#0x00
      002DBD 3E               [12] 3000 	addc	a,r6
      002DBE FE               [12] 3001 	mov	r6,a
      002DBF 8D 82            [24] 3002 	mov	dpl,r5
      002DC1 8E 83            [24] 3003 	mov	dph,r6
      002DC3 8F F0            [24] 3004 	mov	b,r7
      002DC5 12 5B 16         [24] 3005 	lcall	__gptrget
      002DC8 FD               [12] 3006 	mov	r5,a
      002DC9 A3               [24] 3007 	inc	dptr
      002DCA 12 5B 16         [24] 3008 	lcall	__gptrget
      002DCD FE               [12] 3009 	mov	r6,a
      002DCE ED               [12] 3010 	mov	a,r5
      002DCF 4E               [12] 3011 	orl	a,r6
      002DD0 60 03            [24] 3012 	jz	00201$
      002DD2 02 2D FE         [24] 3013 	ljmp	00126$
      002DD5                       3014 00201$:
      002DD5 90 10 65         [24] 3015 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002DD8 E0               [24] 3016 	movx	a,@dptr
      002DD9 FD               [12] 3017 	mov	r5,a
      002DDA A3               [24] 3018 	inc	dptr
      002DDB E0               [24] 3019 	movx	a,@dptr
      002DDC FE               [12] 3020 	mov	r6,a
      002DDD A3               [24] 3021 	inc	dptr
      002DDE E0               [24] 3022 	movx	a,@dptr
      002DDF FF               [12] 3023 	mov	r7,a
      002DE0 74 05            [12] 3024 	mov	a,#0x05
      002DE2 2D               [12] 3025 	add	a,r5
      002DE3 FD               [12] 3026 	mov	r5,a
      002DE4 74 00            [12] 3027 	mov	a,#0x00
      002DE6 3E               [12] 3028 	addc	a,r6
      002DE7 FE               [12] 3029 	mov	r6,a
      002DE8 8D 82            [24] 3030 	mov	dpl,r5
      002DEA 8E 83            [24] 3031 	mov	dph,r6
      002DEC 8F F0            [24] 3032 	mov	b,r7
      002DEE 12 5B 16         [24] 3033 	lcall	__gptrget
      002DF1 FD               [12] 3034 	mov	r5,a
      002DF2 A3               [24] 3035 	inc	dptr
      002DF3 12 5B 16         [24] 3036 	lcall	__gptrget
      002DF6 FE               [12] 3037 	mov	r6,a
      002DF7 ED               [12] 3038 	mov	a,r5
      002DF8 4E               [12] 3039 	orl	a,r6
      002DF9 70 03            [24] 3040 	jnz	00202$
      002DFB 02 2E 27         [24] 3041 	ljmp	00122$
      002DFE                       3042 00202$:
      002DFE                       3043 00126$:
                                   3044 ;	../osal/common/OSAL_Timers.c:550: (srchTimer->event_flag == 0) )
      002DFE 90 10 65         [24] 3045 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002E01 E0               [24] 3046 	movx	a,@dptr
      002E02 FD               [12] 3047 	mov	r5,a
      002E03 A3               [24] 3048 	inc	dptr
      002E04 E0               [24] 3049 	movx	a,@dptr
      002E05 FE               [12] 3050 	mov	r6,a
      002E06 A3               [24] 3051 	inc	dptr
      002E07 E0               [24] 3052 	movx	a,@dptr
      002E08 FF               [12] 3053 	mov	r7,a
      002E09 74 07            [12] 3054 	mov	a,#0x07
      002E0B 2D               [12] 3055 	add	a,r5
      002E0C FD               [12] 3056 	mov	r5,a
      002E0D 74 00            [12] 3057 	mov	a,#0x00
      002E0F 3E               [12] 3058 	addc	a,r6
      002E10 FE               [12] 3059 	mov	r6,a
      002E11 8D 82            [24] 3060 	mov	dpl,r5
      002E13 8E 83            [24] 3061 	mov	dph,r6
      002E15 8F F0            [24] 3062 	mov	b,r7
      002E17 12 5B 16         [24] 3063 	lcall	__gptrget
      002E1A FD               [12] 3064 	mov	r5,a
      002E1B A3               [24] 3065 	inc	dptr
      002E1C 12 5B 16         [24] 3066 	lcall	__gptrget
      002E1F FE               [12] 3067 	mov	r6,a
      002E20 ED               [12] 3068 	mov	a,r5
      002E21 4E               [12] 3069 	orl	a,r6
      002E22 60 03            [24] 3070 	jz	00203$
      002E24 02 2E DC         [24] 3071 	ljmp	00123$
      002E27                       3072 00203$:
      002E27                       3073 00122$:
                                   3074 ;	../osal/common/OSAL_Timers.c:561: if ( prevTimer == NULL )
      002E27 90 10 68         [24] 3075 	mov	dptr,#_osalTimerUpdate_prevTimer_1_131
      002E2A E0               [24] 3076 	movx	a,@dptr
      002E2B FD               [12] 3077 	mov	r5,a
      002E2C A3               [24] 3078 	inc	dptr
      002E2D E0               [24] 3079 	movx	a,@dptr
      002E2E FE               [12] 3080 	mov	r6,a
      002E2F A3               [24] 3081 	inc	dptr
      002E30 E0               [24] 3082 	movx	a,@dptr
      002E31 FF               [12] 3083 	mov	r7,a
      002E32 ED               [12] 3084 	mov	a,r5
      002E33 4E               [12] 3085 	orl	a,r6
      002E34 60 03            [24] 3086 	jz	00204$
      002E36 02 2E 66         [24] 3087 	ljmp	00120$
      002E39                       3088 00204$:
                                   3089 ;	../osal/common/OSAL_Timers.c:563: timerHead = srchTimer->next;
      002E39 90 10 65         [24] 3090 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002E3C E0               [24] 3091 	movx	a,@dptr
      002E3D FD               [12] 3092 	mov	r5,a
      002E3E A3               [24] 3093 	inc	dptr
      002E3F E0               [24] 3094 	movx	a,@dptr
      002E40 FE               [12] 3095 	mov	r6,a
      002E41 A3               [24] 3096 	inc	dptr
      002E42 E0               [24] 3097 	movx	a,@dptr
      002E43 FF               [12] 3098 	mov	r7,a
      002E44 8D 82            [24] 3099 	mov	dpl,r5
      002E46 8E 83            [24] 3100 	mov	dph,r6
      002E48 8F F0            [24] 3101 	mov	b,r7
      002E4A 12 5B 16         [24] 3102 	lcall	__gptrget
      002E4D FD               [12] 3103 	mov	r5,a
      002E4E A3               [24] 3104 	inc	dptr
      002E4F 12 5B 16         [24] 3105 	lcall	__gptrget
      002E52 FE               [12] 3106 	mov	r6,a
      002E53 A3               [24] 3107 	inc	dptr
      002E54 12 5B 16         [24] 3108 	lcall	__gptrget
      002E57 FF               [12] 3109 	mov	r7,a
      002E58 90 10 1B         [24] 3110 	mov	dptr,#_timerHead
      002E5B ED               [12] 3111 	mov	a,r5
      002E5C F0               [24] 3112 	movx	@dptr,a
      002E5D EE               [12] 3113 	mov	a,r6
      002E5E A3               [24] 3114 	inc	dptr
      002E5F F0               [24] 3115 	movx	@dptr,a
      002E60 EF               [12] 3116 	mov	a,r7
      002E61 A3               [24] 3117 	inc	dptr
      002E62 F0               [24] 3118 	movx	@dptr,a
      002E63 02 2E A4         [24] 3119 	ljmp	00121$
      002E66                       3120 00120$:
                                   3121 ;	../osal/common/OSAL_Timers.c:568: prevTimer->next = srchTimer->next;
      002E66 90 10 68         [24] 3122 	mov	dptr,#_osalTimerUpdate_prevTimer_1_131
      002E69 E0               [24] 3123 	movx	a,@dptr
      002E6A FD               [12] 3124 	mov	r5,a
      002E6B A3               [24] 3125 	inc	dptr
      002E6C E0               [24] 3126 	movx	a,@dptr
      002E6D FE               [12] 3127 	mov	r6,a
      002E6E A3               [24] 3128 	inc	dptr
      002E6F E0               [24] 3129 	movx	a,@dptr
      002E70 FF               [12] 3130 	mov	r7,a
      002E71 90 10 65         [24] 3131 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002E74 E0               [24] 3132 	movx	a,@dptr
      002E75 FA               [12] 3133 	mov	r2,a
      002E76 A3               [24] 3134 	inc	dptr
      002E77 E0               [24] 3135 	movx	a,@dptr
      002E78 FB               [12] 3136 	mov	r3,a
      002E79 A3               [24] 3137 	inc	dptr
      002E7A E0               [24] 3138 	movx	a,@dptr
      002E7B FC               [12] 3139 	mov	r4,a
      002E7C 8A 82            [24] 3140 	mov	dpl,r2
      002E7E 8B 83            [24] 3141 	mov	dph,r3
      002E80 8C F0            [24] 3142 	mov	b,r4
      002E82 12 5B 16         [24] 3143 	lcall	__gptrget
      002E85 FA               [12] 3144 	mov	r2,a
      002E86 A3               [24] 3145 	inc	dptr
      002E87 12 5B 16         [24] 3146 	lcall	__gptrget
      002E8A FB               [12] 3147 	mov	r3,a
      002E8B A3               [24] 3148 	inc	dptr
      002E8C 12 5B 16         [24] 3149 	lcall	__gptrget
      002E8F FC               [12] 3150 	mov	r4,a
      002E90 8D 82            [24] 3151 	mov	dpl,r5
      002E92 8E 83            [24] 3152 	mov	dph,r6
      002E94 8F F0            [24] 3153 	mov	b,r7
      002E96 EA               [12] 3154 	mov	a,r2
      002E97 12 59 AA         [24] 3155 	lcall	__gptrput
      002E9A A3               [24] 3156 	inc	dptr
      002E9B EB               [12] 3157 	mov	a,r3
      002E9C 12 59 AA         [24] 3158 	lcall	__gptrput
      002E9F A3               [24] 3159 	inc	dptr
      002EA0 EC               [12] 3160 	mov	a,r4
      002EA1 12 59 AA         [24] 3161 	lcall	__gptrput
      002EA4                       3162 00121$:
                                   3163 ;	../osal/common/OSAL_Timers.c:572: freeTimer = srchTimer;
      002EA4 90 10 65         [24] 3164 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002EA7 E0               [24] 3165 	movx	a,@dptr
      002EA8 FD               [12] 3166 	mov	r5,a
      002EA9 A3               [24] 3167 	inc	dptr
      002EAA E0               [24] 3168 	movx	a,@dptr
      002EAB FE               [12] 3169 	mov	r6,a
      002EAC A3               [24] 3170 	inc	dptr
      002EAD E0               [24] 3171 	movx	a,@dptr
      002EAE FF               [12] 3172 	mov	r7,a
      002EAF 90 10 6F         [24] 3173 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002EB2 ED               [12] 3174 	mov	a,r5
      002EB3 F0               [24] 3175 	movx	@dptr,a
      002EB4 EE               [12] 3176 	mov	a,r6
      002EB5 A3               [24] 3177 	inc	dptr
      002EB6 F0               [24] 3178 	movx	@dptr,a
      002EB7 EF               [12] 3179 	mov	a,r7
      002EB8 A3               [24] 3180 	inc	dptr
      002EB9 F0               [24] 3181 	movx	@dptr,a
                                   3182 ;	../osal/common/OSAL_Timers.c:575: srchTimer = srchTimer->next;
      002EBA 8D 82            [24] 3183 	mov	dpl,r5
      002EBC 8E 83            [24] 3184 	mov	dph,r6
      002EBE 8F F0            [24] 3185 	mov	b,r7
      002EC0 12 5B 16         [24] 3186 	lcall	__gptrget
      002EC3 FD               [12] 3187 	mov	r5,a
      002EC4 A3               [24] 3188 	inc	dptr
      002EC5 12 5B 16         [24] 3189 	lcall	__gptrget
      002EC8 FE               [12] 3190 	mov	r6,a
      002EC9 A3               [24] 3191 	inc	dptr
      002ECA 12 5B 16         [24] 3192 	lcall	__gptrget
      002ECD FF               [12] 3193 	mov	r7,a
      002ECE 90 10 65         [24] 3194 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002ED1 ED               [12] 3195 	mov	a,r5
      002ED2 F0               [24] 3196 	movx	@dptr,a
      002ED3 EE               [12] 3197 	mov	a,r6
      002ED4 A3               [24] 3198 	inc	dptr
      002ED5 F0               [24] 3199 	movx	@dptr,a
      002ED6 EF               [12] 3200 	mov	a,r7
      002ED7 A3               [24] 3201 	inc	dptr
      002ED8 F0               [24] 3202 	movx	@dptr,a
      002ED9 02 2F 11         [24] 3203 	ljmp	00124$
      002EDC                       3204 00123$:
                                   3205 ;	../osal/common/OSAL_Timers.c:580: prevTimer = srchTimer;
      002EDC 90 10 65         [24] 3206 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002EDF E0               [24] 3207 	movx	a,@dptr
      002EE0 FD               [12] 3208 	mov	r5,a
      002EE1 A3               [24] 3209 	inc	dptr
      002EE2 E0               [24] 3210 	movx	a,@dptr
      002EE3 FE               [12] 3211 	mov	r6,a
      002EE4 A3               [24] 3212 	inc	dptr
      002EE5 E0               [24] 3213 	movx	a,@dptr
      002EE6 FF               [12] 3214 	mov	r7,a
      002EE7 90 10 68         [24] 3215 	mov	dptr,#_osalTimerUpdate_prevTimer_1_131
      002EEA ED               [12] 3216 	mov	a,r5
      002EEB F0               [24] 3217 	movx	@dptr,a
      002EEC EE               [12] 3218 	mov	a,r6
      002EED A3               [24] 3219 	inc	dptr
      002EEE F0               [24] 3220 	movx	@dptr,a
      002EEF EF               [12] 3221 	mov	a,r7
      002EF0 A3               [24] 3222 	inc	dptr
      002EF1 F0               [24] 3223 	movx	@dptr,a
                                   3224 ;	../osal/common/OSAL_Timers.c:581: srchTimer = srchTimer->next;
      002EF2 8D 82            [24] 3225 	mov	dpl,r5
      002EF4 8E 83            [24] 3226 	mov	dph,r6
      002EF6 8F F0            [24] 3227 	mov	b,r7
      002EF8 12 5B 16         [24] 3228 	lcall	__gptrget
      002EFB FD               [12] 3229 	mov	r5,a
      002EFC A3               [24] 3230 	inc	dptr
      002EFD 12 5B 16         [24] 3231 	lcall	__gptrget
      002F00 FE               [12] 3232 	mov	r6,a
      002F01 A3               [24] 3233 	inc	dptr
      002F02 12 5B 16         [24] 3234 	lcall	__gptrget
      002F05 FF               [12] 3235 	mov	r7,a
      002F06 90 10 65         [24] 3236 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002F09 ED               [12] 3237 	mov	a,r5
      002F0A F0               [24] 3238 	movx	@dptr,a
      002F0B EE               [12] 3239 	mov	a,r6
      002F0C A3               [24] 3240 	inc	dptr
      002F0D F0               [24] 3241 	movx	@dptr,a
      002F0E EF               [12] 3242 	mov	a,r7
      002F0F A3               [24] 3243 	inc	dptr
      002F10 F0               [24] 3244 	movx	@dptr,a
      002F11                       3245 00124$:
                                   3246 ;	../osal/common/OSAL_Timers.c:586: if ( freeTimer )
      002F11 90 10 6F         [24] 3247 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002F14 E0               [24] 3248 	movx	a,@dptr
      002F15 FD               [12] 3249 	mov	r5,a
      002F16 A3               [24] 3250 	inc	dptr
      002F17 E0               [24] 3251 	movx	a,@dptr
      002F18 FE               [12] 3252 	mov	r6,a
      002F19 A3               [24] 3253 	inc	dptr
      002F1A E0               [24] 3254 	movx	a,@dptr
      002F1B FF               [12] 3255 	mov	r7,a
      002F1C ED               [12] 3256 	mov	a,r5
      002F1D 4E               [12] 3257 	orl	a,r6
      002F1E 70 03            [24] 3258 	jnz	00205$
      002F20 02 2A 19         [24] 3259 	ljmp	00132$
      002F23                       3260 00205$:
                                   3261 ;	../osal/common/OSAL_Timers.c:590: if ( (freeTimer->timeout.time16[0] == 0) && (freeTimer->timeout.time16[1] == 0) )
      002F23 90 10 6F         [24] 3262 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002F26 E0               [24] 3263 	movx	a,@dptr
      002F27 FD               [12] 3264 	mov	r5,a
      002F28 A3               [24] 3265 	inc	dptr
      002F29 E0               [24] 3266 	movx	a,@dptr
      002F2A FE               [12] 3267 	mov	r6,a
      002F2B A3               [24] 3268 	inc	dptr
      002F2C E0               [24] 3269 	movx	a,@dptr
      002F2D FF               [12] 3270 	mov	r7,a
      002F2E 74 03            [12] 3271 	mov	a,#0x03
      002F30 2D               [12] 3272 	add	a,r5
      002F31 FD               [12] 3273 	mov	r5,a
      002F32 74 00            [12] 3274 	mov	a,#0x00
      002F34 3E               [12] 3275 	addc	a,r6
      002F35 FE               [12] 3276 	mov	r6,a
      002F36 8D 82            [24] 3277 	mov	dpl,r5
      002F38 8E 83            [24] 3278 	mov	dph,r6
      002F3A 8F F0            [24] 3279 	mov	b,r7
      002F3C 12 5B 16         [24] 3280 	lcall	__gptrget
      002F3F FD               [12] 3281 	mov	r5,a
      002F40 A3               [24] 3282 	inc	dptr
      002F41 12 5B 16         [24] 3283 	lcall	__gptrget
      002F44 FE               [12] 3284 	mov	r6,a
      002F45 ED               [12] 3285 	mov	a,r5
      002F46 4E               [12] 3286 	orl	a,r6
      002F47 60 03            [24] 3287 	jz	00206$
      002F49 02 2F B8         [24] 3288 	ljmp	00128$
      002F4C                       3289 00206$:
      002F4C 90 10 6F         [24] 3290 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002F4F E0               [24] 3291 	movx	a,@dptr
      002F50 FD               [12] 3292 	mov	r5,a
      002F51 A3               [24] 3293 	inc	dptr
      002F52 E0               [24] 3294 	movx	a,@dptr
      002F53 FE               [12] 3295 	mov	r6,a
      002F54 A3               [24] 3296 	inc	dptr
      002F55 E0               [24] 3297 	movx	a,@dptr
      002F56 FF               [12] 3298 	mov	r7,a
      002F57 74 05            [12] 3299 	mov	a,#0x05
      002F59 2D               [12] 3300 	add	a,r5
      002F5A FD               [12] 3301 	mov	r5,a
      002F5B 74 00            [12] 3302 	mov	a,#0x00
      002F5D 3E               [12] 3303 	addc	a,r6
      002F5E FE               [12] 3304 	mov	r6,a
      002F5F 8D 82            [24] 3305 	mov	dpl,r5
      002F61 8E 83            [24] 3306 	mov	dph,r6
      002F63 8F F0            [24] 3307 	mov	b,r7
      002F65 12 5B 16         [24] 3308 	lcall	__gptrget
      002F68 FD               [12] 3309 	mov	r5,a
      002F69 A3               [24] 3310 	inc	dptr
      002F6A 12 5B 16         [24] 3311 	lcall	__gptrget
      002F6D FE               [12] 3312 	mov	r6,a
      002F6E ED               [12] 3313 	mov	a,r5
      002F6F 4E               [12] 3314 	orl	a,r6
      002F70 60 03            [24] 3315 	jz	00207$
      002F72 02 2F B8         [24] 3316 	ljmp	00128$
      002F75                       3317 00207$:
                                   3318 ;	../osal/common/OSAL_Timers.c:602: osal_set_event( freeTimer->task_id, freeTimer->event_flag );
      002F75 90 10 6F         [24] 3319 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002F78 E0               [24] 3320 	movx	a,@dptr
      002F79 FD               [12] 3321 	mov	r5,a
      002F7A A3               [24] 3322 	inc	dptr
      002F7B E0               [24] 3323 	movx	a,@dptr
      002F7C FE               [12] 3324 	mov	r6,a
      002F7D A3               [24] 3325 	inc	dptr
      002F7E E0               [24] 3326 	movx	a,@dptr
      002F7F FF               [12] 3327 	mov	r7,a
      002F80 74 09            [12] 3328 	mov	a,#0x09
      002F82 2D               [12] 3329 	add	a,r5
      002F83 FA               [12] 3330 	mov	r2,a
      002F84 74 00            [12] 3331 	mov	a,#0x00
      002F86 3E               [12] 3332 	addc	a,r6
      002F87 FB               [12] 3333 	mov	r3,a
      002F88 8F 04            [24] 3334 	mov	ar4,r7
      002F8A 8A 82            [24] 3335 	mov	dpl,r2
      002F8C 8B 83            [24] 3336 	mov	dph,r3
      002F8E 8C F0            [24] 3337 	mov	b,r4
      002F90 12 5B 16         [24] 3338 	lcall	__gptrget
      002F93 FA               [12] 3339 	mov	r2,a
      002F94 74 07            [12] 3340 	mov	a,#0x07
      002F96 2D               [12] 3341 	add	a,r5
      002F97 FD               [12] 3342 	mov	r5,a
      002F98 74 00            [12] 3343 	mov	a,#0x00
      002F9A 3E               [12] 3344 	addc	a,r6
      002F9B FE               [12] 3345 	mov	r6,a
      002F9C 8D 82            [24] 3346 	mov	dpl,r5
      002F9E 8E 83            [24] 3347 	mov	dph,r6
      002FA0 8F F0            [24] 3348 	mov	b,r7
      002FA2 12 5B 16         [24] 3349 	lcall	__gptrget
      002FA5 FD               [12] 3350 	mov	r5,a
      002FA6 A3               [24] 3351 	inc	dptr
      002FA7 12 5B 16         [24] 3352 	lcall	__gptrget
      002FAA FE               [12] 3353 	mov	r6,a
      002FAB 90 03 C6         [24] 3354 	mov	dptr,#_osal_set_event_PARM_2
      002FAE ED               [12] 3355 	mov	a,r5
      002FAF F0               [24] 3356 	movx	@dptr,a
      002FB0 EE               [12] 3357 	mov	a,r6
      002FB1 A3               [24] 3358 	inc	dptr
      002FB2 F0               [24] 3359 	movx	@dptr,a
      002FB3 8A 82            [24] 3360 	mov	dpl,r2
      002FB5 12 19 62         [24] 3361 	lcall	_osal_set_event
      002FB8                       3362 00128$:
                                   3363 ;	../osal/common/OSAL_Timers.c:604: osal_mem_free( freeTimer );
      002FB8 90 10 6F         [24] 3364 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002FBB E0               [24] 3365 	movx	a,@dptr
      002FBC FD               [12] 3366 	mov	r5,a
      002FBD A3               [24] 3367 	inc	dptr
      002FBE E0               [24] 3368 	movx	a,@dptr
      002FBF FE               [12] 3369 	mov	r6,a
      002FC0 A3               [24] 3370 	inc	dptr
      002FC1 E0               [24] 3371 	movx	a,@dptr
      002FC2 FF               [12] 3372 	mov	r7,a
      002FC3 8D 82            [24] 3373 	mov	dpl,r5
      002FC5 8E 83            [24] 3374 	mov	dph,r6
      002FC7 8F F0            [24] 3375 	mov	b,r7
      002FC9 12 23 00         [24] 3376 	lcall	_osal_mem_free
      002FCC 02 2A 19         [24] 3377 	ljmp	00132$
      002FCF                       3378 00137$:
      002FCF 22               [24] 3379 	ret
                                   3380 ;------------------------------------------------------------
                                   3381 ;Allocation info for local variables in function 'osal_GetSystemClock'
                                   3382 ;------------------------------------------------------------
                                   3383 ;	../osal/common/OSAL_Timers.c:689: uint32 osal_GetSystemClock( void )
                                   3384 ;	-----------------------------------------
                                   3385 ;	 function osal_GetSystemClock
                                   3386 ;	-----------------------------------------
      002FD0                       3387 _osal_GetSystemClock:
                                   3388 ;	../osal/common/OSAL_Timers.c:691: return ( osal_systemClock );
      002FD0 90 10 1E         [24] 3389 	mov	dptr,#_osal_systemClock
      002FD3 E0               [24] 3390 	movx	a,@dptr
      002FD4 FC               [12] 3391 	mov	r4,a
      002FD5 A3               [24] 3392 	inc	dptr
      002FD6 E0               [24] 3393 	movx	a,@dptr
      002FD7 FD               [12] 3394 	mov	r5,a
      002FD8 A3               [24] 3395 	inc	dptr
      002FD9 E0               [24] 3396 	movx	a,@dptr
      002FDA FE               [12] 3397 	mov	r6,a
      002FDB A3               [24] 3398 	inc	dptr
      002FDC E0               [24] 3399 	movx	a,@dptr
      002FDD FF               [12] 3400 	mov	r7,a
      002FDE 8C 82            [24] 3401 	mov	dpl,r4
      002FE0 8D 83            [24] 3402 	mov	dph,r5
      002FE2 8E F0            [24] 3403 	mov	b,r6
      002FE4 EF               [12] 3404 	mov	a,r7
      002FE5                       3405 00101$:
      002FE5 22               [24] 3406 	ret
                                   3407 	.area CSEG    (CODE)
                                   3408 	.area CONST   (CODE)
                                   3409 	.area CABS    (ABS,CODE)
