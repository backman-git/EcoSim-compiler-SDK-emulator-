                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:10:05 2015
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
      001020                        881 _timerHead::
      001020                        882 	.ds 3
      001023                        883 _osal_systemClock:
      001023                        884 	.ds 4
      001027                        885 _osalAddTimer_PARM_2:
      001027                        886 	.ds 2
      001029                        887 _osalAddTimer_PARM_3:
      001029                        888 	.ds 4
      00102D                        889 _osalAddTimer_task_id_1_88:
      00102D                        890 	.ds 1
      00102E                        891 _osalAddTimer_newTimer_1_89:
      00102E                        892 	.ds 3
      001031                        893 _osalAddTimer_srchTimer_1_89:
      001031                        894 	.ds 3
      001034                        895 _osalFindTimer_PARM_2:
      001034                        896 	.ds 2
      001036                        897 _osalFindTimer_task_id_1_97:
      001036                        898 	.ds 1
      001037                        899 _osalFindTimer_srchTimer_1_98:
      001037                        900 	.ds 3
      00103A                        901 _osalDeleteTimer_rmTimer_1_101:
      00103A                        902 	.ds 3
      00103D                        903 _osal_start_timerEx_PARM_2:
      00103D                        904 	.ds 2
      00103F                        905 _osal_start_timerEx_PARM_3:
      00103F                        906 	.ds 4
      001043                        907 _osal_start_timerEx_taskID_1_104:
      001043                        908 	.ds 1
      001044                        909 _osal_start_reload_timer_PARM_2:
      001044                        910 	.ds 2
      001046                        911 _osal_start_reload_timer_PARM_3:
      001046                        912 	.ds 4
      00104A                        913 _osal_start_reload_timer_taskID_1_106:
      00104A                        914 	.ds 1
      00104B                        915 _osal_start_reload_timer_intState_1_107:
      00104B                        916 	.ds 1
      00104C                        917 _osal_start_reload_timer_newTimer_1_107:
      00104C                        918 	.ds 3
      00104F                        919 _osal_stop_timerEx_PARM_2:
      00104F                        920 	.ds 2
      001051                        921 _osal_stop_timerEx_task_id_1_112:
      001051                        922 	.ds 1
      001052                        923 _osal_stop_timerEx_intState_1_113:
      001052                        924 	.ds 1
      001053                        925 _osal_stop_timerEx_foundTimer_1_113:
      001053                        926 	.ds 3
      001056                        927 _osal_get_timeoutEx_PARM_2:
      001056                        928 	.ds 2
      001058                        929 _osal_get_timeoutEx_task_id_1_118:
      001058                        930 	.ds 1
      001059                        931 _osal_get_timeoutEx_intState_1_119:
      001059                        932 	.ds 1
      00105A                        933 _osal_get_timeoutEx_rtrn_1_119:
      00105A                        934 	.ds 4
      00105E                        935 _osal_get_timeoutEx_tmr_1_119:
      00105E                        936 	.ds 3
      001061                        937 _osal_timer_num_active_intState_1_125:
      001061                        938 	.ds 1
      001062                        939 _osal_timer_num_active_num_timers_1_125:
      001062                        940 	.ds 1
      001063                        941 _osal_timer_num_active_srchTimer_1_125:
      001063                        942 	.ds 3
      001066                        943 _osalTimerUpdate_updateTime_1_130:
      001066                        944 	.ds 4
      00106A                        945 _osalTimerUpdate_srchTimer_1_131:
      00106A                        946 	.ds 3
      00106D                        947 _osalTimerUpdate_prevTimer_1_131:
      00106D                        948 	.ds 3
      001070                        949 _osalTimerUpdate_timeUnion_1_131:
      001070                        950 	.ds 4
      001074                        951 _osalTimerUpdate_freeTimer_3_133:
      001074                        952 	.ds 3
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
      00240C                        993 _osalTimerInit:
                           000007   994 	ar7 = 0x07
                           000006   995 	ar6 = 0x06
                           000005   996 	ar5 = 0x05
                           000004   997 	ar4 = 0x04
                           000003   998 	ar3 = 0x03
                           000002   999 	ar2 = 0x02
                           000001  1000 	ar1 = 0x01
                           000000  1001 	ar0 = 0x00
                                   1002 ;	../osal/common/OSAL_Timers.c:120: osal_systemClock = 0;
      00240C 90 10 23         [24] 1003 	mov	dptr,#_osal_systemClock
      00240F 74 00            [12] 1004 	mov	a,#0x00
      002411 F0               [24] 1005 	movx	@dptr,a
      002412 A3               [24] 1006 	inc	dptr
      002413 F0               [24] 1007 	movx	@dptr,a
      002414 A3               [24] 1008 	inc	dptr
      002415 F0               [24] 1009 	movx	@dptr,a
      002416 A3               [24] 1010 	inc	dptr
      002417 F0               [24] 1011 	movx	@dptr,a
      002418                       1012 00101$:
      002418 22               [24] 1013 	ret
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
      002419                       1028 _osalAddTimer:
      002419 E5 82            [12] 1029 	mov	a,dpl
      00241B 90 10 2D         [24] 1030 	mov	dptr,#_osalAddTimer_task_id_1_88
      00241E F0               [24] 1031 	movx	@dptr,a
                                   1032 ;	../osal/common/OSAL_Timers.c:142: newTimer = osalFindTimer( task_id, event_flag );
      00241F E0               [24] 1033 	movx	a,@dptr
      002420 FF               [12] 1034 	mov	r7,a
      002421 90 10 27         [24] 1035 	mov	dptr,#_osalAddTimer_PARM_2
      002424 E0               [24] 1036 	movx	a,@dptr
      002425 FD               [12] 1037 	mov	r5,a
      002426 A3               [24] 1038 	inc	dptr
      002427 E0               [24] 1039 	movx	a,@dptr
      002428 FE               [12] 1040 	mov	r6,a
      002429 90 10 34         [24] 1041 	mov	dptr,#_osalFindTimer_PARM_2
      00242C ED               [12] 1042 	mov	a,r5
      00242D F0               [24] 1043 	movx	@dptr,a
      00242E EE               [12] 1044 	mov	a,r6
      00242F A3               [24] 1045 	inc	dptr
      002430 F0               [24] 1046 	movx	@dptr,a
      002431 8F 82            [24] 1047 	mov	dpl,r7
      002433 12 26 42         [24] 1048 	lcall	_osalFindTimer
      002436 AD 82            [24] 1049 	mov	r5,dpl
      002438 AE 83            [24] 1050 	mov	r6,dph
      00243A AF F0            [24] 1051 	mov	r7,b
      00243C 90 10 2E         [24] 1052 	mov	dptr,#_osalAddTimer_newTimer_1_89
      00243F ED               [12] 1053 	mov	a,r5
      002440 F0               [24] 1054 	movx	@dptr,a
      002441 EE               [12] 1055 	mov	a,r6
      002442 A3               [24] 1056 	inc	dptr
      002443 F0               [24] 1057 	movx	@dptr,a
      002444 EF               [12] 1058 	mov	a,r7
      002445 A3               [24] 1059 	inc	dptr
      002446 F0               [24] 1060 	movx	@dptr,a
                                   1061 ;	../osal/common/OSAL_Timers.c:143: if ( newTimer )
      002447 ED               [12] 1062 	mov	a,r5
      002448 4E               [12] 1063 	orl	a,r6
      002449 70 03            [24] 1064 	jnz	00130$
      00244B 02 24 98         [24] 1065 	ljmp	00111$
      00244E                       1066 00130$:
                                   1067 ;	../osal/common/OSAL_Timers.c:146: newTimer->timeout.time32 = timeout;
      00244E 90 10 2E         [24] 1068 	mov	dptr,#_osalAddTimer_newTimer_1_89
      002451 E0               [24] 1069 	movx	a,@dptr
      002452 FD               [12] 1070 	mov	r5,a
      002453 A3               [24] 1071 	inc	dptr
      002454 E0               [24] 1072 	movx	a,@dptr
      002455 FE               [12] 1073 	mov	r6,a
      002456 A3               [24] 1074 	inc	dptr
      002457 E0               [24] 1075 	movx	a,@dptr
      002458 FF               [12] 1076 	mov	r7,a
      002459 74 03            [12] 1077 	mov	a,#0x03
      00245B 2D               [12] 1078 	add	a,r5
      00245C F5 10            [12] 1079 	mov	_osalAddTimer_sloc0_1_0,a
      00245E 74 00            [12] 1080 	mov	a,#0x00
      002460 3E               [12] 1081 	addc	a,r6
      002461 F5 11            [12] 1082 	mov	(_osalAddTimer_sloc0_1_0 + 1),a
      002463 8F 12            [24] 1083 	mov	(_osalAddTimer_sloc0_1_0 + 2),r7
      002465 90 10 29         [24] 1084 	mov	dptr,#_osalAddTimer_PARM_3
      002468 E0               [24] 1085 	movx	a,@dptr
      002469 F8               [12] 1086 	mov	r0,a
      00246A A3               [24] 1087 	inc	dptr
      00246B E0               [24] 1088 	movx	a,@dptr
      00246C F9               [12] 1089 	mov	r1,a
      00246D A3               [24] 1090 	inc	dptr
      00246E E0               [24] 1091 	movx	a,@dptr
      00246F FB               [12] 1092 	mov	r3,a
      002470 A3               [24] 1093 	inc	dptr
      002471 E0               [24] 1094 	movx	a,@dptr
      002472 FC               [12] 1095 	mov	r4,a
      002473 85 10 82         [24] 1096 	mov	dpl,_osalAddTimer_sloc0_1_0
      002476 85 11 83         [24] 1097 	mov	dph,(_osalAddTimer_sloc0_1_0 + 1)
      002479 85 12 F0         [24] 1098 	mov	b,(_osalAddTimer_sloc0_1_0 + 2)
      00247C E8               [12] 1099 	mov	a,r0
      00247D 12 5A 01         [24] 1100 	lcall	__gptrput
      002480 A3               [24] 1101 	inc	dptr
      002481 E9               [12] 1102 	mov	a,r1
      002482 12 5A 01         [24] 1103 	lcall	__gptrput
      002485 A3               [24] 1104 	inc	dptr
      002486 EB               [12] 1105 	mov	a,r3
      002487 12 5A 01         [24] 1106 	lcall	__gptrput
      00248A A3               [24] 1107 	inc	dptr
      00248B EC               [12] 1108 	mov	a,r4
      00248C 12 5A 01         [24] 1109 	lcall	__gptrput
                                   1110 ;	../osal/common/OSAL_Timers.c:148: return ( newTimer );
      00248F 8D 82            [24] 1111 	mov	dpl,r5
      002491 8E 83            [24] 1112 	mov	dph,r6
      002493 8F F0            [24] 1113 	mov	b,r7
      002495 02 26 41         [24] 1114 	ljmp	00113$
      002498                       1115 00111$:
                                   1116 ;	../osal/common/OSAL_Timers.c:153: newTimer = osal_mem_alloc( sizeof( osalTimerRec_t ) );
      002498 75 82 0E         [24] 1117 	mov	dpl,#0x0E
      00249B 75 83 00         [24] 1118 	mov	dph,#0x00
      00249E 12 20 2A         [24] 1119 	lcall	_osal_mem_alloc
      0024A1 AD 82            [24] 1120 	mov	r5,dpl
      0024A3 AE 83            [24] 1121 	mov	r6,dph
      0024A5 AF F0            [24] 1122 	mov	r7,b
      0024A7 90 10 2E         [24] 1123 	mov	dptr,#_osalAddTimer_newTimer_1_89
      0024AA ED               [12] 1124 	mov	a,r5
      0024AB F0               [24] 1125 	movx	@dptr,a
      0024AC EE               [12] 1126 	mov	a,r6
      0024AD A3               [24] 1127 	inc	dptr
      0024AE F0               [24] 1128 	movx	@dptr,a
      0024AF EF               [12] 1129 	mov	a,r7
      0024B0 A3               [24] 1130 	inc	dptr
      0024B1 F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	../osal/common/OSAL_Timers.c:159: if ( newTimer )
      0024B2 ED               [12] 1133 	mov	a,r5
      0024B3 4E               [12] 1134 	orl	a,r6
      0024B4 70 03            [24] 1135 	jnz	00131$
      0024B6 02 26 38         [24] 1136 	ljmp	00108$
      0024B9                       1137 00131$:
                                   1138 ;	../osal/common/OSAL_Timers.c:162: newTimer->event_flag = event_flag;
      0024B9 90 10 2E         [24] 1139 	mov	dptr,#_osalAddTimer_newTimer_1_89
      0024BC E0               [24] 1140 	movx	a,@dptr
      0024BD FD               [12] 1141 	mov	r5,a
      0024BE A3               [24] 1142 	inc	dptr
      0024BF E0               [24] 1143 	movx	a,@dptr
      0024C0 FE               [12] 1144 	mov	r6,a
      0024C1 A3               [24] 1145 	inc	dptr
      0024C2 E0               [24] 1146 	movx	a,@dptr
      0024C3 FF               [12] 1147 	mov	r7,a
      0024C4 74 07            [12] 1148 	mov	a,#0x07
      0024C6 2D               [12] 1149 	add	a,r5
      0024C7 FA               [12] 1150 	mov	r2,a
      0024C8 74 00            [12] 1151 	mov	a,#0x00
      0024CA 3E               [12] 1152 	addc	a,r6
      0024CB FB               [12] 1153 	mov	r3,a
      0024CC 8F 04            [24] 1154 	mov	ar4,r7
      0024CE 90 10 27         [24] 1155 	mov	dptr,#_osalAddTimer_PARM_2
      0024D1 E0               [24] 1156 	movx	a,@dptr
      0024D2 F8               [12] 1157 	mov	r0,a
      0024D3 A3               [24] 1158 	inc	dptr
      0024D4 E0               [24] 1159 	movx	a,@dptr
      0024D5 F9               [12] 1160 	mov	r1,a
      0024D6 8A 82            [24] 1161 	mov	dpl,r2
      0024D8 8B 83            [24] 1162 	mov	dph,r3
      0024DA 8C F0            [24] 1163 	mov	b,r4
      0024DC E8               [12] 1164 	mov	a,r0
      0024DD 12 5A 01         [24] 1165 	lcall	__gptrput
      0024E0 A3               [24] 1166 	inc	dptr
      0024E1 E9               [12] 1167 	mov	a,r1
      0024E2 12 5A 01         [24] 1168 	lcall	__gptrput
                                   1169 ;	../osal/common/OSAL_Timers.c:163: newTimer->task_id = task_id;
      0024E5 74 09            [12] 1170 	mov	a,#0x09
      0024E7 2D               [12] 1171 	add	a,r5
      0024E8 FA               [12] 1172 	mov	r2,a
      0024E9 74 00            [12] 1173 	mov	a,#0x00
      0024EB 3E               [12] 1174 	addc	a,r6
      0024EC FB               [12] 1175 	mov	r3,a
      0024ED 8F 04            [24] 1176 	mov	ar4,r7
      0024EF 90 10 2D         [24] 1177 	mov	dptr,#_osalAddTimer_task_id_1_88
      0024F2 E0               [24] 1178 	movx	a,@dptr
      0024F3 F9               [12] 1179 	mov	r1,a
      0024F4 8A 82            [24] 1180 	mov	dpl,r2
      0024F6 8B 83            [24] 1181 	mov	dph,r3
      0024F8 8C F0            [24] 1182 	mov	b,r4
      0024FA E9               [12] 1183 	mov	a,r1
      0024FB 12 5A 01         [24] 1184 	lcall	__gptrput
                                   1185 ;	../osal/common/OSAL_Timers.c:165: newTimer->timeout.time32 = timeout;
      0024FE 74 03            [12] 1186 	mov	a,#0x03
      002500 2D               [12] 1187 	add	a,r5
      002501 F5 10            [12] 1188 	mov	_osalAddTimer_sloc0_1_0,a
      002503 74 00            [12] 1189 	mov	a,#0x00
      002505 3E               [12] 1190 	addc	a,r6
      002506 F5 11            [12] 1191 	mov	(_osalAddTimer_sloc0_1_0 + 1),a
      002508 8F 12            [24] 1192 	mov	(_osalAddTimer_sloc0_1_0 + 2),r7
      00250A 90 10 29         [24] 1193 	mov	dptr,#_osalAddTimer_PARM_3
      00250D E0               [24] 1194 	movx	a,@dptr
      00250E F8               [12] 1195 	mov	r0,a
      00250F A3               [24] 1196 	inc	dptr
      002510 E0               [24] 1197 	movx	a,@dptr
      002511 F9               [12] 1198 	mov	r1,a
      002512 A3               [24] 1199 	inc	dptr
      002513 E0               [24] 1200 	movx	a,@dptr
      002514 FB               [12] 1201 	mov	r3,a
      002515 A3               [24] 1202 	inc	dptr
      002516 E0               [24] 1203 	movx	a,@dptr
      002517 FC               [12] 1204 	mov	r4,a
      002518 85 10 82         [24] 1205 	mov	dpl,_osalAddTimer_sloc0_1_0
      00251B 85 11 83         [24] 1206 	mov	dph,(_osalAddTimer_sloc0_1_0 + 1)
      00251E 85 12 F0         [24] 1207 	mov	b,(_osalAddTimer_sloc0_1_0 + 2)
      002521 E8               [12] 1208 	mov	a,r0
      002522 12 5A 01         [24] 1209 	lcall	__gptrput
      002525 A3               [24] 1210 	inc	dptr
      002526 E9               [12] 1211 	mov	a,r1
      002527 12 5A 01         [24] 1212 	lcall	__gptrput
      00252A A3               [24] 1213 	inc	dptr
      00252B EB               [12] 1214 	mov	a,r3
      00252C 12 5A 01         [24] 1215 	lcall	__gptrput
      00252F A3               [24] 1216 	inc	dptr
      002530 EC               [12] 1217 	mov	a,r4
      002531 12 5A 01         [24] 1218 	lcall	__gptrput
                                   1219 ;	../osal/common/OSAL_Timers.c:166: newTimer->next = (void *)NULL;
      002534 8D 82            [24] 1220 	mov	dpl,r5
      002536 8E 83            [24] 1221 	mov	dph,r6
      002538 8F F0            [24] 1222 	mov	b,r7
      00253A 74 00            [12] 1223 	mov	a,#0x00
      00253C 12 5A 01         [24] 1224 	lcall	__gptrput
      00253F A3               [24] 1225 	inc	dptr
      002540 12 5A 01         [24] 1226 	lcall	__gptrput
      002543 A3               [24] 1227 	inc	dptr
      002544 12 5A 01         [24] 1228 	lcall	__gptrput
                                   1229 ;	../osal/common/OSAL_Timers.c:167: newTimer->reloadTimeout = 0;
      002547 74 0A            [12] 1230 	mov	a,#0x0A
      002549 2D               [12] 1231 	add	a,r5
      00254A FD               [12] 1232 	mov	r5,a
      00254B 74 00            [12] 1233 	mov	a,#0x00
      00254D 3E               [12] 1234 	addc	a,r6
      00254E FE               [12] 1235 	mov	r6,a
      00254F 8D 82            [24] 1236 	mov	dpl,r5
      002551 8E 83            [24] 1237 	mov	dph,r6
      002553 8F F0            [24] 1238 	mov	b,r7
      002555 74 00            [12] 1239 	mov	a,#0x00
      002557 12 5A 01         [24] 1240 	lcall	__gptrput
      00255A A3               [24] 1241 	inc	dptr
      00255B 12 5A 01         [24] 1242 	lcall	__gptrput
      00255E A3               [24] 1243 	inc	dptr
      00255F 12 5A 01         [24] 1244 	lcall	__gptrput
      002562 A3               [24] 1245 	inc	dptr
      002563 12 5A 01         [24] 1246 	lcall	__gptrput
                                   1247 ;	../osal/common/OSAL_Timers.c:170: if ( timerHead == NULL )
      002566 90 10 20         [24] 1248 	mov	dptr,#_timerHead
      002569 E0               [24] 1249 	movx	a,@dptr
      00256A FD               [12] 1250 	mov	r5,a
      00256B A3               [24] 1251 	inc	dptr
      00256C E0               [24] 1252 	movx	a,@dptr
      00256D FE               [12] 1253 	mov	r6,a
      00256E A3               [24] 1254 	inc	dptr
      00256F E0               [24] 1255 	movx	a,@dptr
      002570 FF               [12] 1256 	mov	r7,a
      002571 ED               [12] 1257 	mov	a,r5
      002572 4E               [12] 1258 	orl	a,r6
      002573 60 03            [24] 1259 	jz	00132$
      002575 02 25 91         [24] 1260 	ljmp	00105$
      002578                       1261 00132$:
                                   1262 ;	../osal/common/OSAL_Timers.c:173: timerHead = newTimer;
      002578 90 10 2E         [24] 1263 	mov	dptr,#_osalAddTimer_newTimer_1_89
      00257B E0               [24] 1264 	movx	a,@dptr
      00257C FD               [12] 1265 	mov	r5,a
      00257D A3               [24] 1266 	inc	dptr
      00257E E0               [24] 1267 	movx	a,@dptr
      00257F FE               [12] 1268 	mov	r6,a
      002580 A3               [24] 1269 	inc	dptr
      002581 E0               [24] 1270 	movx	a,@dptr
      002582 FF               [12] 1271 	mov	r7,a
      002583 90 10 20         [24] 1272 	mov	dptr,#_timerHead
      002586 ED               [12] 1273 	mov	a,r5
      002587 F0               [24] 1274 	movx	@dptr,a
      002588 EE               [12] 1275 	mov	a,r6
      002589 A3               [24] 1276 	inc	dptr
      00258A F0               [24] 1277 	movx	@dptr,a
      00258B EF               [12] 1278 	mov	a,r7
      00258C A3               [24] 1279 	inc	dptr
      00258D F0               [24] 1280 	movx	@dptr,a
      00258E 02 26 24         [24] 1281 	ljmp	00106$
      002591                       1282 00105$:
                                   1283 ;	../osal/common/OSAL_Timers.c:180: srchTimer = timerHead;
      002591 90 10 20         [24] 1284 	mov	dptr,#_timerHead
      002594 E0               [24] 1285 	movx	a,@dptr
      002595 FD               [12] 1286 	mov	r5,a
      002596 A3               [24] 1287 	inc	dptr
      002597 E0               [24] 1288 	movx	a,@dptr
      002598 FE               [12] 1289 	mov	r6,a
      002599 A3               [24] 1290 	inc	dptr
      00259A E0               [24] 1291 	movx	a,@dptr
      00259B FF               [12] 1292 	mov	r7,a
      00259C 90 10 31         [24] 1293 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      00259F ED               [12] 1294 	mov	a,r5
      0025A0 F0               [24] 1295 	movx	@dptr,a
      0025A1 EE               [12] 1296 	mov	a,r6
      0025A2 A3               [24] 1297 	inc	dptr
      0025A3 F0               [24] 1298 	movx	@dptr,a
      0025A4 EF               [12] 1299 	mov	a,r7
      0025A5 A3               [24] 1300 	inc	dptr
      0025A6 F0               [24] 1301 	movx	@dptr,a
                                   1302 ;	../osal/common/OSAL_Timers.c:183: while ( srchTimer->next ){
      0025A7                       1303 00101$:
      0025A7 90 10 31         [24] 1304 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      0025AA E0               [24] 1305 	movx	a,@dptr
      0025AB FD               [12] 1306 	mov	r5,a
      0025AC A3               [24] 1307 	inc	dptr
      0025AD E0               [24] 1308 	movx	a,@dptr
      0025AE FE               [12] 1309 	mov	r6,a
      0025AF A3               [24] 1310 	inc	dptr
      0025B0 E0               [24] 1311 	movx	a,@dptr
      0025B1 FF               [12] 1312 	mov	r7,a
      0025B2 8D 82            [24] 1313 	mov	dpl,r5
      0025B4 8E 83            [24] 1314 	mov	dph,r6
      0025B6 8F F0            [24] 1315 	mov	b,r7
      0025B8 12 5B 6D         [24] 1316 	lcall	__gptrget
      0025BB FD               [12] 1317 	mov	r5,a
      0025BC A3               [24] 1318 	inc	dptr
      0025BD 12 5B 6D         [24] 1319 	lcall	__gptrget
      0025C0 FE               [12] 1320 	mov	r6,a
      0025C1 A3               [24] 1321 	inc	dptr
      0025C2 12 5B 6D         [24] 1322 	lcall	__gptrget
      0025C5 FF               [12] 1323 	mov	r7,a
      0025C6 ED               [12] 1324 	mov	a,r5
      0025C7 4E               [12] 1325 	orl	a,r6
      0025C8 70 03            [24] 1326 	jnz	00133$
      0025CA 02 25 FA         [24] 1327 	ljmp	00103$
      0025CD                       1328 00133$:
                                   1329 ;	../osal/common/OSAL_Timers.c:184: srchTimer = srchTimer->next;
      0025CD 90 10 31         [24] 1330 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      0025D0 E0               [24] 1331 	movx	a,@dptr
      0025D1 FD               [12] 1332 	mov	r5,a
      0025D2 A3               [24] 1333 	inc	dptr
      0025D3 E0               [24] 1334 	movx	a,@dptr
      0025D4 FE               [12] 1335 	mov	r6,a
      0025D5 A3               [24] 1336 	inc	dptr
      0025D6 E0               [24] 1337 	movx	a,@dptr
      0025D7 FF               [12] 1338 	mov	r7,a
      0025D8 8D 82            [24] 1339 	mov	dpl,r5
      0025DA 8E 83            [24] 1340 	mov	dph,r6
      0025DC 8F F0            [24] 1341 	mov	b,r7
      0025DE 12 5B 6D         [24] 1342 	lcall	__gptrget
      0025E1 FD               [12] 1343 	mov	r5,a
      0025E2 A3               [24] 1344 	inc	dptr
      0025E3 12 5B 6D         [24] 1345 	lcall	__gptrget
      0025E6 FE               [12] 1346 	mov	r6,a
      0025E7 A3               [24] 1347 	inc	dptr
      0025E8 12 5B 6D         [24] 1348 	lcall	__gptrget
      0025EB FF               [12] 1349 	mov	r7,a
      0025EC 90 10 31         [24] 1350 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      0025EF ED               [12] 1351 	mov	a,r5
      0025F0 F0               [24] 1352 	movx	@dptr,a
      0025F1 EE               [12] 1353 	mov	a,r6
      0025F2 A3               [24] 1354 	inc	dptr
      0025F3 F0               [24] 1355 	movx	@dptr,a
      0025F4 EF               [12] 1356 	mov	a,r7
      0025F5 A3               [24] 1357 	inc	dptr
      0025F6 F0               [24] 1358 	movx	@dptr,a
      0025F7 02 25 A7         [24] 1359 	ljmp	00101$
      0025FA                       1360 00103$:
                                   1361 ;	../osal/common/OSAL_Timers.c:189: srchTimer->next = newTimer;
      0025FA 90 10 31         [24] 1362 	mov	dptr,#_osalAddTimer_srchTimer_1_89
      0025FD E0               [24] 1363 	movx	a,@dptr
      0025FE FD               [12] 1364 	mov	r5,a
      0025FF A3               [24] 1365 	inc	dptr
      002600 E0               [24] 1366 	movx	a,@dptr
      002601 FE               [12] 1367 	mov	r6,a
      002602 A3               [24] 1368 	inc	dptr
      002603 E0               [24] 1369 	movx	a,@dptr
      002604 FF               [12] 1370 	mov	r7,a
      002605 90 10 2E         [24] 1371 	mov	dptr,#_osalAddTimer_newTimer_1_89
      002608 E0               [24] 1372 	movx	a,@dptr
      002609 FA               [12] 1373 	mov	r2,a
      00260A A3               [24] 1374 	inc	dptr
      00260B E0               [24] 1375 	movx	a,@dptr
      00260C FB               [12] 1376 	mov	r3,a
      00260D A3               [24] 1377 	inc	dptr
      00260E E0               [24] 1378 	movx	a,@dptr
      00260F FC               [12] 1379 	mov	r4,a
      002610 8D 82            [24] 1380 	mov	dpl,r5
      002612 8E 83            [24] 1381 	mov	dph,r6
      002614 8F F0            [24] 1382 	mov	b,r7
      002616 EA               [12] 1383 	mov	a,r2
      002617 12 5A 01         [24] 1384 	lcall	__gptrput
      00261A A3               [24] 1385 	inc	dptr
      00261B EB               [12] 1386 	mov	a,r3
      00261C 12 5A 01         [24] 1387 	lcall	__gptrput
      00261F A3               [24] 1388 	inc	dptr
      002620 EC               [12] 1389 	mov	a,r4
      002621 12 5A 01         [24] 1390 	lcall	__gptrput
      002624                       1391 00106$:
                                   1392 ;	../osal/common/OSAL_Timers.c:195: return ( newTimer );
      002624 90 10 2E         [24] 1393 	mov	dptr,#_osalAddTimer_newTimer_1_89
      002627 E0               [24] 1394 	movx	a,@dptr
      002628 FD               [12] 1395 	mov	r5,a
      002629 A3               [24] 1396 	inc	dptr
      00262A E0               [24] 1397 	movx	a,@dptr
      00262B FE               [12] 1398 	mov	r6,a
      00262C A3               [24] 1399 	inc	dptr
      00262D E0               [24] 1400 	movx	a,@dptr
      00262E FF               [12] 1401 	mov	r7,a
      00262F 8D 82            [24] 1402 	mov	dpl,r5
      002631 8E 83            [24] 1403 	mov	dph,r6
      002633 8F F0            [24] 1404 	mov	b,r7
      002635 02 26 41         [24] 1405 	ljmp	00113$
      002638                       1406 00108$:
                                   1407 ;	../osal/common/OSAL_Timers.c:200: return ( (osalTimerRec_t *)NULL );
      002638 75 82 00         [24] 1408 	mov	dpl,#0x00
      00263B 75 83 00         [24] 1409 	mov	dph,#0x00
      00263E 75 F0 00         [24] 1410 	mov	b,#0x00
      002641                       1411 00113$:
      002641 22               [24] 1412 	ret
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
      002642                       1424 _osalFindTimer:
      002642 E5 82            [12] 1425 	mov	a,dpl
      002644 90 10 36         [24] 1426 	mov	dptr,#_osalFindTimer_task_id_1_97
      002647 F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	../osal/common/OSAL_Timers.c:221: srchTimer = timerHead;
      002648 90 10 20         [24] 1429 	mov	dptr,#_timerHead
      00264B E0               [24] 1430 	movx	a,@dptr
      00264C FD               [12] 1431 	mov	r5,a
      00264D A3               [24] 1432 	inc	dptr
      00264E E0               [24] 1433 	movx	a,@dptr
      00264F FE               [12] 1434 	mov	r6,a
      002650 A3               [24] 1435 	inc	dptr
      002651 E0               [24] 1436 	movx	a,@dptr
      002652 FF               [12] 1437 	mov	r7,a
      002653 90 10 37         [24] 1438 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      002656 ED               [12] 1439 	mov	a,r5
      002657 F0               [24] 1440 	movx	@dptr,a
      002658 EE               [12] 1441 	mov	a,r6
      002659 A3               [24] 1442 	inc	dptr
      00265A F0               [24] 1443 	movx	@dptr,a
      00265B EF               [12] 1444 	mov	a,r7
      00265C A3               [24] 1445 	inc	dptr
      00265D F0               [24] 1446 	movx	@dptr,a
                                   1447 ;	../osal/common/OSAL_Timers.c:224: while ( srchTimer )
      00265E 90 10 36         [24] 1448 	mov	dptr,#_osalFindTimer_task_id_1_97
      002661 E0               [24] 1449 	movx	a,@dptr
      002662 FF               [12] 1450 	mov	r7,a
      002663 90 10 34         [24] 1451 	mov	dptr,#_osalFindTimer_PARM_2
      002666 E0               [24] 1452 	movx	a,@dptr
      002667 FD               [12] 1453 	mov	r5,a
      002668 A3               [24] 1454 	inc	dptr
      002669 E0               [24] 1455 	movx	a,@dptr
      00266A FE               [12] 1456 	mov	r6,a
      00266B                       1457 00104$:
      00266B 90 10 37         [24] 1458 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      00266E E0               [24] 1459 	movx	a,@dptr
      00266F FA               [12] 1460 	mov	r2,a
      002670 A3               [24] 1461 	inc	dptr
      002671 E0               [24] 1462 	movx	a,@dptr
      002672 FB               [12] 1463 	mov	r3,a
      002673 A3               [24] 1464 	inc	dptr
      002674 E0               [24] 1465 	movx	a,@dptr
      002675 FC               [12] 1466 	mov	r4,a
      002676 EA               [12] 1467 	mov	a,r2
      002677 4B               [12] 1468 	orl	a,r3
      002678 70 03            [24] 1469 	jnz	00118$
      00267A 02 26 FD         [24] 1470 	ljmp	00106$
      00267D                       1471 00118$:
                                   1472 ;	../osal/common/OSAL_Timers.c:228: if ( srchTimer->event_flag == event_flag &&
      00267D 90 10 37         [24] 1473 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      002680 E0               [24] 1474 	movx	a,@dptr
      002681 FA               [12] 1475 	mov	r2,a
      002682 A3               [24] 1476 	inc	dptr
      002683 E0               [24] 1477 	movx	a,@dptr
      002684 FB               [12] 1478 	mov	r3,a
      002685 A3               [24] 1479 	inc	dptr
      002686 E0               [24] 1480 	movx	a,@dptr
      002687 FC               [12] 1481 	mov	r4,a
      002688 74 07            [12] 1482 	mov	a,#0x07
      00268A 2A               [12] 1483 	add	a,r2
      00268B FA               [12] 1484 	mov	r2,a
      00268C 74 00            [12] 1485 	mov	a,#0x00
      00268E 3B               [12] 1486 	addc	a,r3
      00268F FB               [12] 1487 	mov	r3,a
      002690 8A 82            [24] 1488 	mov	dpl,r2
      002692 8B 83            [24] 1489 	mov	dph,r3
      002694 8C F0            [24] 1490 	mov	b,r4
      002696 12 5B 6D         [24] 1491 	lcall	__gptrget
      002699 FA               [12] 1492 	mov	r2,a
      00269A A3               [24] 1493 	inc	dptr
      00269B 12 5B 6D         [24] 1494 	lcall	__gptrget
      00269E FB               [12] 1495 	mov	r3,a
      00269F EA               [12] 1496 	mov	a,r2
      0026A0 B5 05 06         [24] 1497 	cjne	a,ar5,00119$
      0026A3 EB               [12] 1498 	mov	a,r3
      0026A4 B5 06 02         [24] 1499 	cjne	a,ar6,00119$
      0026A7 80 03            [24] 1500 	sjmp	00120$
      0026A9                       1501 00119$:
      0026A9 02 26 D0         [24] 1502 	ljmp	00102$
      0026AC                       1503 00120$:
                                   1504 ;	../osal/common/OSAL_Timers.c:229: srchTimer->task_id == task_id )
      0026AC 90 10 37         [24] 1505 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      0026AF E0               [24] 1506 	movx	a,@dptr
      0026B0 FA               [12] 1507 	mov	r2,a
      0026B1 A3               [24] 1508 	inc	dptr
      0026B2 E0               [24] 1509 	movx	a,@dptr
      0026B3 FB               [12] 1510 	mov	r3,a
      0026B4 A3               [24] 1511 	inc	dptr
      0026B5 E0               [24] 1512 	movx	a,@dptr
      0026B6 FC               [12] 1513 	mov	r4,a
      0026B7 74 09            [12] 1514 	mov	a,#0x09
      0026B9 2A               [12] 1515 	add	a,r2
      0026BA FA               [12] 1516 	mov	r2,a
      0026BB 74 00            [12] 1517 	mov	a,#0x00
      0026BD 3B               [12] 1518 	addc	a,r3
      0026BE FB               [12] 1519 	mov	r3,a
      0026BF 8A 82            [24] 1520 	mov	dpl,r2
      0026C1 8B 83            [24] 1521 	mov	dph,r3
      0026C3 8C F0            [24] 1522 	mov	b,r4
      0026C5 12 5B 6D         [24] 1523 	lcall	__gptrget
      0026C8 FA               [12] 1524 	mov	r2,a
      0026C9 EA               [12] 1525 	mov	a,r2
      0026CA B5 07 03         [24] 1526 	cjne	a,ar7,00121$
      0026CD 02 26 FD         [24] 1527 	ljmp	00106$
      0026D0                       1528 00121$:
                                   1529 ;	../osal/common/OSAL_Timers.c:231: break;
      0026D0                       1530 00102$:
                                   1531 ;	../osal/common/OSAL_Timers.c:237: srchTimer = srchTimer->next;
      0026D0 90 10 37         [24] 1532 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      0026D3 E0               [24] 1533 	movx	a,@dptr
      0026D4 FA               [12] 1534 	mov	r2,a
      0026D5 A3               [24] 1535 	inc	dptr
      0026D6 E0               [24] 1536 	movx	a,@dptr
      0026D7 FB               [12] 1537 	mov	r3,a
      0026D8 A3               [24] 1538 	inc	dptr
      0026D9 E0               [24] 1539 	movx	a,@dptr
      0026DA FC               [12] 1540 	mov	r4,a
      0026DB 8A 82            [24] 1541 	mov	dpl,r2
      0026DD 8B 83            [24] 1542 	mov	dph,r3
      0026DF 8C F0            [24] 1543 	mov	b,r4
      0026E1 12 5B 6D         [24] 1544 	lcall	__gptrget
      0026E4 FA               [12] 1545 	mov	r2,a
      0026E5 A3               [24] 1546 	inc	dptr
      0026E6 12 5B 6D         [24] 1547 	lcall	__gptrget
      0026E9 FB               [12] 1548 	mov	r3,a
      0026EA A3               [24] 1549 	inc	dptr
      0026EB 12 5B 6D         [24] 1550 	lcall	__gptrget
      0026EE FC               [12] 1551 	mov	r4,a
      0026EF 90 10 37         [24] 1552 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      0026F2 EA               [12] 1553 	mov	a,r2
      0026F3 F0               [24] 1554 	movx	@dptr,a
      0026F4 EB               [12] 1555 	mov	a,r3
      0026F5 A3               [24] 1556 	inc	dptr
      0026F6 F0               [24] 1557 	movx	@dptr,a
      0026F7 EC               [12] 1558 	mov	a,r4
      0026F8 A3               [24] 1559 	inc	dptr
      0026F9 F0               [24] 1560 	movx	@dptr,a
      0026FA 02 26 6B         [24] 1561 	ljmp	00104$
      0026FD                       1562 00106$:
                                   1563 ;	../osal/common/OSAL_Timers.c:241: return ( srchTimer );
      0026FD 90 10 37         [24] 1564 	mov	dptr,#_osalFindTimer_srchTimer_1_98
      002700 E0               [24] 1565 	movx	a,@dptr
      002701 FD               [12] 1566 	mov	r5,a
      002702 A3               [24] 1567 	inc	dptr
      002703 E0               [24] 1568 	movx	a,@dptr
      002704 FE               [12] 1569 	mov	r6,a
      002705 A3               [24] 1570 	inc	dptr
      002706 E0               [24] 1571 	movx	a,@dptr
      002707 FF               [12] 1572 	mov	r7,a
      002708 8D 82            [24] 1573 	mov	dpl,r5
      00270A 8E 83            [24] 1574 	mov	dph,r6
      00270C 8F F0            [24] 1575 	mov	b,r7
      00270E                       1576 00107$:
      00270E 22               [24] 1577 	ret
                                   1578 ;------------------------------------------------------------
                                   1579 ;Allocation info for local variables in function 'osalDeleteTimer'
                                   1580 ;------------------------------------------------------------
                                   1581 ;rmTimer                   Allocated with name '_osalDeleteTimer_rmTimer_1_101'
                                   1582 ;------------------------------------------------------------
                                   1583 ;	../osal/common/OSAL_Timers.c:254: void osalDeleteTimer( osalTimerRec_t *rmTimer )
                                   1584 ;	-----------------------------------------
                                   1585 ;	 function osalDeleteTimer
                                   1586 ;	-----------------------------------------
      00270F                       1587 _osalDeleteTimer:
      00270F AF F0            [24] 1588 	mov	r7,b
      002711 AE 83            [24] 1589 	mov	r6,dph
      002713 E5 82            [12] 1590 	mov	a,dpl
      002715 90 10 3A         [24] 1591 	mov	dptr,#_osalDeleteTimer_rmTimer_1_101
      002718 F0               [24] 1592 	movx	@dptr,a
      002719 EE               [12] 1593 	mov	a,r6
      00271A A3               [24] 1594 	inc	dptr
      00271B F0               [24] 1595 	movx	@dptr,a
      00271C EF               [12] 1596 	mov	a,r7
      00271D A3               [24] 1597 	inc	dptr
      00271E F0               [24] 1598 	movx	@dptr,a
                                   1599 ;	../osal/common/OSAL_Timers.c:257: if ( rmTimer )
      00271F 90 10 3A         [24] 1600 	mov	dptr,#_osalDeleteTimer_rmTimer_1_101
      002722 E0               [24] 1601 	movx	a,@dptr
      002723 FD               [12] 1602 	mov	r5,a
      002724 A3               [24] 1603 	inc	dptr
      002725 E0               [24] 1604 	movx	a,@dptr
      002726 FE               [12] 1605 	mov	r6,a
      002727 A3               [24] 1606 	inc	dptr
      002728 E0               [24] 1607 	movx	a,@dptr
      002729 FF               [12] 1608 	mov	r7,a
      00272A ED               [12] 1609 	mov	a,r5
      00272B 4E               [12] 1610 	orl	a,r6
      00272C 70 03            [24] 1611 	jnz	00108$
      00272E 02 27 53         [24] 1612 	ljmp	00103$
      002731                       1613 00108$:
                                   1614 ;	../osal/common/OSAL_Timers.c:261: rmTimer->event_flag = 0;
      002731 90 10 3A         [24] 1615 	mov	dptr,#_osalDeleteTimer_rmTimer_1_101
      002734 E0               [24] 1616 	movx	a,@dptr
      002735 FD               [12] 1617 	mov	r5,a
      002736 A3               [24] 1618 	inc	dptr
      002737 E0               [24] 1619 	movx	a,@dptr
      002738 FE               [12] 1620 	mov	r6,a
      002739 A3               [24] 1621 	inc	dptr
      00273A E0               [24] 1622 	movx	a,@dptr
      00273B FF               [12] 1623 	mov	r7,a
      00273C 74 07            [12] 1624 	mov	a,#0x07
      00273E 2D               [12] 1625 	add	a,r5
      00273F FD               [12] 1626 	mov	r5,a
      002740 74 00            [12] 1627 	mov	a,#0x00
      002742 3E               [12] 1628 	addc	a,r6
      002743 FE               [12] 1629 	mov	r6,a
      002744 8D 82            [24] 1630 	mov	dpl,r5
      002746 8E 83            [24] 1631 	mov	dph,r6
      002748 8F F0            [24] 1632 	mov	b,r7
      00274A 74 00            [12] 1633 	mov	a,#0x00
      00274C 12 5A 01         [24] 1634 	lcall	__gptrput
      00274F A3               [24] 1635 	inc	dptr
      002750 12 5A 01         [24] 1636 	lcall	__gptrput
      002753                       1637 00103$:
      002753 22               [24] 1638 	ret
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
      002754                       1652 _osal_start_timerEx:
      002754 E5 82            [12] 1653 	mov	a,dpl
      002756 90 10 43         [24] 1654 	mov	dptr,#_osal_start_timerEx_taskID_1_104
      002759 F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	../osal/common/OSAL_Timers.c:289: __endasm;
      00275A C3               [12] 1657 	clr c;
                                   1658 ;	../osal/common/OSAL_Timers.c:294: newTimer = osalAddTimer( taskID, event_id, timeout_value );
      00275B 90 10 43         [24] 1659 	mov	dptr,#_osal_start_timerEx_taskID_1_104
      00275E E0               [24] 1660 	movx	a,@dptr
      00275F FF               [12] 1661 	mov	r7,a
      002760 90 10 3D         [24] 1662 	mov	dptr,#_osal_start_timerEx_PARM_2
      002763 E0               [24] 1663 	movx	a,@dptr
      002764 FD               [12] 1664 	mov	r5,a
      002765 A3               [24] 1665 	inc	dptr
      002766 E0               [24] 1666 	movx	a,@dptr
      002767 FE               [12] 1667 	mov	r6,a
      002768 90 10 3F         [24] 1668 	mov	dptr,#_osal_start_timerEx_PARM_3
      00276B E0               [24] 1669 	movx	a,@dptr
      00276C F9               [12] 1670 	mov	r1,a
      00276D A3               [24] 1671 	inc	dptr
      00276E E0               [24] 1672 	movx	a,@dptr
      00276F FA               [12] 1673 	mov	r2,a
      002770 A3               [24] 1674 	inc	dptr
      002771 E0               [24] 1675 	movx	a,@dptr
      002772 FB               [12] 1676 	mov	r3,a
      002773 A3               [24] 1677 	inc	dptr
      002774 E0               [24] 1678 	movx	a,@dptr
      002775 FC               [12] 1679 	mov	r4,a
      002776 90 10 27         [24] 1680 	mov	dptr,#_osalAddTimer_PARM_2
      002779 ED               [12] 1681 	mov	a,r5
      00277A F0               [24] 1682 	movx	@dptr,a
      00277B EE               [12] 1683 	mov	a,r6
      00277C A3               [24] 1684 	inc	dptr
      00277D F0               [24] 1685 	movx	@dptr,a
      00277E 90 10 29         [24] 1686 	mov	dptr,#_osalAddTimer_PARM_3
      002781 E9               [12] 1687 	mov	a,r1
      002782 F0               [24] 1688 	movx	@dptr,a
      002783 EA               [12] 1689 	mov	a,r2
      002784 A3               [24] 1690 	inc	dptr
      002785 F0               [24] 1691 	movx	@dptr,a
      002786 EB               [12] 1692 	mov	a,r3
      002787 A3               [24] 1693 	inc	dptr
      002788 F0               [24] 1694 	movx	@dptr,a
      002789 EC               [12] 1695 	mov	a,r4
      00278A A3               [24] 1696 	inc	dptr
      00278B F0               [24] 1697 	movx	@dptr,a
      00278C 8F 82            [24] 1698 	mov	dpl,r7
      00278E 12 24 19         [24] 1699 	lcall	_osalAddTimer
      002791 AD 82            [24] 1700 	mov	r5,dpl
      002793 AE 83            [24] 1701 	mov	r6,dph
      002795 AF F0            [24] 1702 	mov	r7,b
                                   1703 ;	../osal/common/OSAL_Timers.c:301: return ( (newTimer != NULL) ? SUCCESS : NO_TIMER_AVAIL );
      002797 ED               [12] 1704 	mov	a,r5
      002798 4E               [12] 1705 	orl	a,r6
      002799 70 03            [24] 1706 	jnz	00108$
      00279B 02 27 A3         [24] 1707 	ljmp	00103$
      00279E                       1708 00108$:
      00279E 7F 00            [12] 1709 	mov	r7,#0x00
      0027A0 02 27 A5         [24] 1710 	ljmp	00104$
      0027A3                       1711 00103$:
      0027A3 7F 08            [12] 1712 	mov	r7,#0x08
      0027A5                       1713 00104$:
      0027A5 8F 82            [24] 1714 	mov	dpl,r7
      0027A7                       1715 00101$:
      0027A7 22               [24] 1716 	ret
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
      0027A8                       1730 _osal_start_reload_timer:
      0027A8 E5 82            [12] 1731 	mov	a,dpl
      0027AA 90 10 4A         [24] 1732 	mov	dptr,#_osal_start_reload_timer_taskID_1_106
      0027AD F0               [24] 1733 	movx	@dptr,a
                                   1734 ;	../osal/common/OSAL_Timers.c:324: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      0027AE 90 10 4B         [24] 1735 	mov	dptr,#_osal_start_reload_timer_intState_1_107
      0027B1 A2 AF            [12] 1736 	mov	c,_EA
      0027B3 E4               [12] 1737 	clr	a
      0027B4 33               [12] 1738 	rlc	a
      0027B5 F0               [24] 1739 	movx	@dptr,a
      0027B6 C2 AF            [12] 1740 	clr	_EA
                                   1741 ;	../osal/common/OSAL_Timers.c:327: newTimer = osalAddTimer( taskID, event_id, timeout_value );
      0027B8 90 10 4A         [24] 1742 	mov	dptr,#_osal_start_reload_timer_taskID_1_106
      0027BB E0               [24] 1743 	movx	a,@dptr
      0027BC FF               [12] 1744 	mov	r7,a
      0027BD 90 10 44         [24] 1745 	mov	dptr,#_osal_start_reload_timer_PARM_2
      0027C0 E0               [24] 1746 	movx	a,@dptr
      0027C1 FD               [12] 1747 	mov	r5,a
      0027C2 A3               [24] 1748 	inc	dptr
      0027C3 E0               [24] 1749 	movx	a,@dptr
      0027C4 FE               [12] 1750 	mov	r6,a
      0027C5 90 10 46         [24] 1751 	mov	dptr,#_osal_start_reload_timer_PARM_3
      0027C8 E0               [24] 1752 	movx	a,@dptr
      0027C9 F9               [12] 1753 	mov	r1,a
      0027CA A3               [24] 1754 	inc	dptr
      0027CB E0               [24] 1755 	movx	a,@dptr
      0027CC FA               [12] 1756 	mov	r2,a
      0027CD A3               [24] 1757 	inc	dptr
      0027CE E0               [24] 1758 	movx	a,@dptr
      0027CF FB               [12] 1759 	mov	r3,a
      0027D0 A3               [24] 1760 	inc	dptr
      0027D1 E0               [24] 1761 	movx	a,@dptr
      0027D2 FC               [12] 1762 	mov	r4,a
      0027D3 90 10 27         [24] 1763 	mov	dptr,#_osalAddTimer_PARM_2
      0027D6 ED               [12] 1764 	mov	a,r5
      0027D7 F0               [24] 1765 	movx	@dptr,a
      0027D8 EE               [12] 1766 	mov	a,r6
      0027D9 A3               [24] 1767 	inc	dptr
      0027DA F0               [24] 1768 	movx	@dptr,a
      0027DB 90 10 29         [24] 1769 	mov	dptr,#_osalAddTimer_PARM_3
      0027DE E9               [12] 1770 	mov	a,r1
      0027DF F0               [24] 1771 	movx	@dptr,a
      0027E0 EA               [12] 1772 	mov	a,r2
      0027E1 A3               [24] 1773 	inc	dptr
      0027E2 F0               [24] 1774 	movx	@dptr,a
      0027E3 EB               [12] 1775 	mov	a,r3
      0027E4 A3               [24] 1776 	inc	dptr
      0027E5 F0               [24] 1777 	movx	@dptr,a
      0027E6 EC               [12] 1778 	mov	a,r4
      0027E7 A3               [24] 1779 	inc	dptr
      0027E8 F0               [24] 1780 	movx	@dptr,a
      0027E9 8F 82            [24] 1781 	mov	dpl,r7
      0027EB 12 24 19         [24] 1782 	lcall	_osalAddTimer
      0027EE AD 82            [24] 1783 	mov	r5,dpl
      0027F0 AE 83            [24] 1784 	mov	r6,dph
      0027F2 AF F0            [24] 1785 	mov	r7,b
      0027F4 90 10 4C         [24] 1786 	mov	dptr,#_osal_start_reload_timer_newTimer_1_107
      0027F7 ED               [12] 1787 	mov	a,r5
      0027F8 F0               [24] 1788 	movx	@dptr,a
      0027F9 EE               [12] 1789 	mov	a,r6
      0027FA A3               [24] 1790 	inc	dptr
      0027FB F0               [24] 1791 	movx	@dptr,a
      0027FC EF               [12] 1792 	mov	a,r7
      0027FD A3               [24] 1793 	inc	dptr
      0027FE F0               [24] 1794 	movx	@dptr,a
                                   1795 ;	../osal/common/OSAL_Timers.c:328: if ( newTimer )
      0027FF ED               [12] 1796 	mov	a,r5
      002800 4E               [12] 1797 	orl	a,r6
      002801 70 03            [24] 1798 	jnz	00122$
      002803 02 28 40         [24] 1799 	ljmp	00109$
      002806                       1800 00122$:
                                   1801 ;	../osal/common/OSAL_Timers.c:331: newTimer->reloadTimeout = timeout_value;
      002806 90 10 4C         [24] 1802 	mov	dptr,#_osal_start_reload_timer_newTimer_1_107
      002809 E0               [24] 1803 	movx	a,@dptr
      00280A FD               [12] 1804 	mov	r5,a
      00280B A3               [24] 1805 	inc	dptr
      00280C E0               [24] 1806 	movx	a,@dptr
      00280D FE               [12] 1807 	mov	r6,a
      00280E A3               [24] 1808 	inc	dptr
      00280F E0               [24] 1809 	movx	a,@dptr
      002810 FF               [12] 1810 	mov	r7,a
      002811 74 0A            [12] 1811 	mov	a,#0x0A
      002813 2D               [12] 1812 	add	a,r5
      002814 FD               [12] 1813 	mov	r5,a
      002815 74 00            [12] 1814 	mov	a,#0x00
      002817 3E               [12] 1815 	addc	a,r6
      002818 FE               [12] 1816 	mov	r6,a
      002819 90 10 46         [24] 1817 	mov	dptr,#_osal_start_reload_timer_PARM_3
      00281C E0               [24] 1818 	movx	a,@dptr
      00281D F9               [12] 1819 	mov	r1,a
      00281E A3               [24] 1820 	inc	dptr
      00281F E0               [24] 1821 	movx	a,@dptr
      002820 FA               [12] 1822 	mov	r2,a
      002821 A3               [24] 1823 	inc	dptr
      002822 E0               [24] 1824 	movx	a,@dptr
      002823 FB               [12] 1825 	mov	r3,a
      002824 A3               [24] 1826 	inc	dptr
      002825 E0               [24] 1827 	movx	a,@dptr
      002826 FC               [12] 1828 	mov	r4,a
      002827 8D 82            [24] 1829 	mov	dpl,r5
      002829 8E 83            [24] 1830 	mov	dph,r6
      00282B 8F F0            [24] 1831 	mov	b,r7
      00282D E9               [12] 1832 	mov	a,r1
      00282E 12 5A 01         [24] 1833 	lcall	__gptrput
      002831 A3               [24] 1834 	inc	dptr
      002832 EA               [12] 1835 	mov	a,r2
      002833 12 5A 01         [24] 1836 	lcall	__gptrput
      002836 A3               [24] 1837 	inc	dptr
      002837 EB               [12] 1838 	mov	a,r3
      002838 12 5A 01         [24] 1839 	lcall	__gptrput
      00283B A3               [24] 1840 	inc	dptr
      00283C EC               [12] 1841 	mov	a,r4
      00283D 12 5A 01         [24] 1842 	lcall	__gptrput
                                   1843 ;	../osal/common/OSAL_Timers.c:334: HAL_EXIT_CRITICAL_SECTION( intState );   // Re-enable interrupts.
      002840                       1844 00109$:
      002840 90 10 4B         [24] 1845 	mov	dptr,#_osal_start_reload_timer_intState_1_107
      002843 E0               [24] 1846 	movx	a,@dptr
      002844 FF               [12] 1847 	mov	r7,a
      002845 EF               [12] 1848 	mov	a,r7
      002846 24 FF            [12] 1849 	add	a,#0xff
      002848 92 AF            [24] 1850 	mov	_EA,c
                                   1851 ;	../osal/common/OSAL_Timers.c:336: return ( (newTimer != NULL) ? SUCCESS : NO_TIMER_AVAIL );
      00284A 90 10 4C         [24] 1852 	mov	dptr,#_osal_start_reload_timer_newTimer_1_107
      00284D E0               [24] 1853 	movx	a,@dptr
      00284E FD               [12] 1854 	mov	r5,a
      00284F A3               [24] 1855 	inc	dptr
      002850 E0               [24] 1856 	movx	a,@dptr
      002851 FE               [12] 1857 	mov	r6,a
      002852 A3               [24] 1858 	inc	dptr
      002853 E0               [24] 1859 	movx	a,@dptr
      002854 FF               [12] 1860 	mov	r7,a
      002855 ED               [12] 1861 	mov	a,r5
      002856 4E               [12] 1862 	orl	a,r6
      002857 70 03            [24] 1863 	jnz	00123$
      002859 02 28 61         [24] 1864 	ljmp	00114$
      00285C                       1865 00123$:
      00285C 7F 00            [12] 1866 	mov	r7,#0x00
      00285E 02 28 63         [24] 1867 	ljmp	00115$
      002861                       1868 00114$:
      002861 7F 08            [12] 1869 	mov	r7,#0x08
      002863                       1870 00115$:
      002863 8F 82            [24] 1871 	mov	dpl,r7
      002865                       1872 00112$:
      002865 22               [24] 1873 	ret
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
      002866                       1886 _osal_stop_timerEx:
      002866 E5 82            [12] 1887 	mov	a,dpl
      002868 90 10 51         [24] 1888 	mov	dptr,#_osal_stop_timerEx_task_id_1_112
      00286B F0               [24] 1889 	movx	@dptr,a
                                   1890 ;	../osal/common/OSAL_Timers.c:358: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      00286C 90 10 52         [24] 1891 	mov	dptr,#_osal_stop_timerEx_intState_1_113
      00286F A2 AF            [12] 1892 	mov	c,_EA
      002871 E4               [12] 1893 	clr	a
      002872 33               [12] 1894 	rlc	a
      002873 F0               [24] 1895 	movx	@dptr,a
      002874 C2 AF            [12] 1896 	clr	_EA
                                   1897 ;	../osal/common/OSAL_Timers.c:361: foundTimer = osalFindTimer( task_id, event_id );
      002876 90 10 51         [24] 1898 	mov	dptr,#_osal_stop_timerEx_task_id_1_112
      002879 E0               [24] 1899 	movx	a,@dptr
      00287A FF               [12] 1900 	mov	r7,a
      00287B 90 10 4F         [24] 1901 	mov	dptr,#_osal_stop_timerEx_PARM_2
      00287E E0               [24] 1902 	movx	a,@dptr
      00287F FD               [12] 1903 	mov	r5,a
      002880 A3               [24] 1904 	inc	dptr
      002881 E0               [24] 1905 	movx	a,@dptr
      002882 FE               [12] 1906 	mov	r6,a
      002883 90 10 34         [24] 1907 	mov	dptr,#_osalFindTimer_PARM_2
      002886 ED               [12] 1908 	mov	a,r5
      002887 F0               [24] 1909 	movx	@dptr,a
      002888 EE               [12] 1910 	mov	a,r6
      002889 A3               [24] 1911 	inc	dptr
      00288A F0               [24] 1912 	movx	@dptr,a
      00288B 8F 82            [24] 1913 	mov	dpl,r7
      00288D 12 26 42         [24] 1914 	lcall	_osalFindTimer
      002890 AD 82            [24] 1915 	mov	r5,dpl
      002892 AE 83            [24] 1916 	mov	r6,dph
      002894 AF F0            [24] 1917 	mov	r7,b
      002896 90 10 53         [24] 1918 	mov	dptr,#_osal_stop_timerEx_foundTimer_1_113
      002899 ED               [12] 1919 	mov	a,r5
      00289A F0               [24] 1920 	movx	@dptr,a
      00289B EE               [12] 1921 	mov	a,r6
      00289C A3               [24] 1922 	inc	dptr
      00289D F0               [24] 1923 	movx	@dptr,a
      00289E EF               [12] 1924 	mov	a,r7
      00289F A3               [24] 1925 	inc	dptr
      0028A0 F0               [24] 1926 	movx	@dptr,a
                                   1927 ;	../osal/common/OSAL_Timers.c:362: if ( foundTimer )
      0028A1 ED               [12] 1928 	mov	a,r5
      0028A2 4E               [12] 1929 	orl	a,r6
      0028A3 70 03            [24] 1930 	jnz	00122$
      0028A5 02 28 BC         [24] 1931 	ljmp	00109$
      0028A8                       1932 00122$:
                                   1933 ;	../osal/common/OSAL_Timers.c:364: osalDeleteTimer( foundTimer );
      0028A8 90 10 53         [24] 1934 	mov	dptr,#_osal_stop_timerEx_foundTimer_1_113
      0028AB E0               [24] 1935 	movx	a,@dptr
      0028AC FD               [12] 1936 	mov	r5,a
      0028AD A3               [24] 1937 	inc	dptr
      0028AE E0               [24] 1938 	movx	a,@dptr
      0028AF FE               [12] 1939 	mov	r6,a
      0028B0 A3               [24] 1940 	inc	dptr
      0028B1 E0               [24] 1941 	movx	a,@dptr
      0028B2 FF               [12] 1942 	mov	r7,a
      0028B3 8D 82            [24] 1943 	mov	dpl,r5
      0028B5 8E 83            [24] 1944 	mov	dph,r6
      0028B7 8F F0            [24] 1945 	mov	b,r7
      0028B9 12 27 0F         [24] 1946 	lcall	_osalDeleteTimer
                                   1947 ;	../osal/common/OSAL_Timers.c:367: HAL_EXIT_CRITICAL_SECTION( intState );   // Re-enable interrupts.
      0028BC                       1948 00109$:
      0028BC 90 10 52         [24] 1949 	mov	dptr,#_osal_stop_timerEx_intState_1_113
      0028BF E0               [24] 1950 	movx	a,@dptr
      0028C0 FF               [12] 1951 	mov	r7,a
      0028C1 EF               [12] 1952 	mov	a,r7
      0028C2 24 FF            [12] 1953 	add	a,#0xff
      0028C4 92 AF            [24] 1954 	mov	_EA,c
                                   1955 ;	../osal/common/OSAL_Timers.c:369: return ( (foundTimer != NULL) ? SUCCESS : INVALID_EVENT_ID );
      0028C6 90 10 53         [24] 1956 	mov	dptr,#_osal_stop_timerEx_foundTimer_1_113
      0028C9 E0               [24] 1957 	movx	a,@dptr
      0028CA FD               [12] 1958 	mov	r5,a
      0028CB A3               [24] 1959 	inc	dptr
      0028CC E0               [24] 1960 	movx	a,@dptr
      0028CD FE               [12] 1961 	mov	r6,a
      0028CE A3               [24] 1962 	inc	dptr
      0028CF E0               [24] 1963 	movx	a,@dptr
      0028D0 FF               [12] 1964 	mov	r7,a
      0028D1 ED               [12] 1965 	mov	a,r5
      0028D2 4E               [12] 1966 	orl	a,r6
      0028D3 70 03            [24] 1967 	jnz	00123$
      0028D5 02 28 DD         [24] 1968 	ljmp	00114$
      0028D8                       1969 00123$:
      0028D8 7F 00            [12] 1970 	mov	r7,#0x00
      0028DA 02 28 DF         [24] 1971 	ljmp	00115$
      0028DD                       1972 00114$:
      0028DD 7F 06            [12] 1973 	mov	r7,#0x06
      0028DF                       1974 00115$:
      0028DF 8F 82            [24] 1975 	mov	dpl,r7
      0028E1                       1976 00112$:
      0028E1 22               [24] 1977 	ret
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
      0028E2                       1991 _osal_get_timeoutEx:
      0028E2 E5 82            [12] 1992 	mov	a,dpl
      0028E4 90 10 58         [24] 1993 	mov	dptr,#_osal_get_timeoutEx_task_id_1_118
      0028E7 F0               [24] 1994 	movx	@dptr,a
                                   1995 ;	../osal/common/OSAL_Timers.c:385: uint32 rtrn = 0;
      0028E8 90 10 5A         [24] 1996 	mov	dptr,#_osal_get_timeoutEx_rtrn_1_119
      0028EB 74 00            [12] 1997 	mov	a,#0x00
      0028ED F0               [24] 1998 	movx	@dptr,a
      0028EE A3               [24] 1999 	inc	dptr
      0028EF F0               [24] 2000 	movx	@dptr,a
      0028F0 A3               [24] 2001 	inc	dptr
      0028F1 F0               [24] 2002 	movx	@dptr,a
      0028F2 A3               [24] 2003 	inc	dptr
      0028F3 F0               [24] 2004 	movx	@dptr,a
                                   2005 ;	../osal/common/OSAL_Timers.c:388: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      0028F4 90 10 59         [24] 2006 	mov	dptr,#_osal_get_timeoutEx_intState_1_119
      0028F7 A2 AF            [12] 2007 	mov	c,_EA
      0028F9 E4               [12] 2008 	clr	a
      0028FA 33               [12] 2009 	rlc	a
      0028FB F0               [24] 2010 	movx	@dptr,a
      0028FC C2 AF            [12] 2011 	clr	_EA
                                   2012 ;	../osal/common/OSAL_Timers.c:390: tmr = osalFindTimer( task_id, event_id );
      0028FE 90 10 58         [24] 2013 	mov	dptr,#_osal_get_timeoutEx_task_id_1_118
      002901 E0               [24] 2014 	movx	a,@dptr
      002902 FF               [12] 2015 	mov	r7,a
      002903 90 10 56         [24] 2016 	mov	dptr,#_osal_get_timeoutEx_PARM_2
      002906 E0               [24] 2017 	movx	a,@dptr
      002907 FD               [12] 2018 	mov	r5,a
      002908 A3               [24] 2019 	inc	dptr
      002909 E0               [24] 2020 	movx	a,@dptr
      00290A FE               [12] 2021 	mov	r6,a
      00290B 90 10 34         [24] 2022 	mov	dptr,#_osalFindTimer_PARM_2
      00290E ED               [12] 2023 	mov	a,r5
      00290F F0               [24] 2024 	movx	@dptr,a
      002910 EE               [12] 2025 	mov	a,r6
      002911 A3               [24] 2026 	inc	dptr
      002912 F0               [24] 2027 	movx	@dptr,a
      002913 8F 82            [24] 2028 	mov	dpl,r7
      002915 12 26 42         [24] 2029 	lcall	_osalFindTimer
      002918 AD 82            [24] 2030 	mov	r5,dpl
      00291A AE 83            [24] 2031 	mov	r6,dph
      00291C AF F0            [24] 2032 	mov	r7,b
      00291E 90 10 5E         [24] 2033 	mov	dptr,#_osal_get_timeoutEx_tmr_1_119
      002921 ED               [12] 2034 	mov	a,r5
      002922 F0               [24] 2035 	movx	@dptr,a
      002923 EE               [12] 2036 	mov	a,r6
      002924 A3               [24] 2037 	inc	dptr
      002925 F0               [24] 2038 	movx	@dptr,a
      002926 EF               [12] 2039 	mov	a,r7
      002927 A3               [24] 2040 	inc	dptr
      002928 F0               [24] 2041 	movx	@dptr,a
                                   2042 ;	../osal/common/OSAL_Timers.c:392: if ( tmr )
      002929 ED               [12] 2043 	mov	a,r5
      00292A 4E               [12] 2044 	orl	a,r6
      00292B 70 03            [24] 2045 	jnz	00117$
      00292D 02 29 6A         [24] 2046 	ljmp	00109$
      002930                       2047 00117$:
                                   2048 ;	../osal/common/OSAL_Timers.c:394: rtrn = tmr->timeout.time32;
      002930 90 10 5E         [24] 2049 	mov	dptr,#_osal_get_timeoutEx_tmr_1_119
      002933 E0               [24] 2050 	movx	a,@dptr
      002934 FD               [12] 2051 	mov	r5,a
      002935 A3               [24] 2052 	inc	dptr
      002936 E0               [24] 2053 	movx	a,@dptr
      002937 FE               [12] 2054 	mov	r6,a
      002938 A3               [24] 2055 	inc	dptr
      002939 E0               [24] 2056 	movx	a,@dptr
      00293A FF               [12] 2057 	mov	r7,a
      00293B 74 03            [12] 2058 	mov	a,#0x03
      00293D 2D               [12] 2059 	add	a,r5
      00293E FD               [12] 2060 	mov	r5,a
      00293F 74 00            [12] 2061 	mov	a,#0x00
      002941 3E               [12] 2062 	addc	a,r6
      002942 FE               [12] 2063 	mov	r6,a
      002943 8D 82            [24] 2064 	mov	dpl,r5
      002945 8E 83            [24] 2065 	mov	dph,r6
      002947 8F F0            [24] 2066 	mov	b,r7
      002949 12 5B 6D         [24] 2067 	lcall	__gptrget
      00294C FD               [12] 2068 	mov	r5,a
      00294D A3               [24] 2069 	inc	dptr
      00294E 12 5B 6D         [24] 2070 	lcall	__gptrget
      002951 FE               [12] 2071 	mov	r6,a
      002952 A3               [24] 2072 	inc	dptr
      002953 12 5B 6D         [24] 2073 	lcall	__gptrget
      002956 FF               [12] 2074 	mov	r7,a
      002957 A3               [24] 2075 	inc	dptr
      002958 12 5B 6D         [24] 2076 	lcall	__gptrget
      00295B FC               [12] 2077 	mov	r4,a
      00295C 90 10 5A         [24] 2078 	mov	dptr,#_osal_get_timeoutEx_rtrn_1_119
      00295F ED               [12] 2079 	mov	a,r5
      002960 F0               [24] 2080 	movx	@dptr,a
      002961 EE               [12] 2081 	mov	a,r6
      002962 A3               [24] 2082 	inc	dptr
      002963 F0               [24] 2083 	movx	@dptr,a
      002964 EF               [12] 2084 	mov	a,r7
      002965 A3               [24] 2085 	inc	dptr
      002966 F0               [24] 2086 	movx	@dptr,a
      002967 EC               [12] 2087 	mov	a,r4
      002968 A3               [24] 2088 	inc	dptr
      002969 F0               [24] 2089 	movx	@dptr,a
                                   2090 ;	../osal/common/OSAL_Timers.c:397: HAL_EXIT_CRITICAL_SECTION( intState );   // Re-enable interrupts.
      00296A                       2091 00109$:
      00296A 90 10 59         [24] 2092 	mov	dptr,#_osal_get_timeoutEx_intState_1_119
      00296D E0               [24] 2093 	movx	a,@dptr
      00296E FF               [12] 2094 	mov	r7,a
      00296F EF               [12] 2095 	mov	a,r7
      002970 24 FF            [12] 2096 	add	a,#0xff
      002972 92 AF            [24] 2097 	mov	_EA,c
                                   2098 ;	../osal/common/OSAL_Timers.c:399: return rtrn;
      002974 90 10 5A         [24] 2099 	mov	dptr,#_osal_get_timeoutEx_rtrn_1_119
      002977 E0               [24] 2100 	movx	a,@dptr
      002978 FC               [12] 2101 	mov	r4,a
      002979 A3               [24] 2102 	inc	dptr
      00297A E0               [24] 2103 	movx	a,@dptr
      00297B FD               [12] 2104 	mov	r5,a
      00297C A3               [24] 2105 	inc	dptr
      00297D E0               [24] 2106 	movx	a,@dptr
      00297E FE               [12] 2107 	mov	r6,a
      00297F A3               [24] 2108 	inc	dptr
      002980 E0               [24] 2109 	movx	a,@dptr
      002981 FF               [12] 2110 	mov	r7,a
      002982 8C 82            [24] 2111 	mov	dpl,r4
      002984 8D 83            [24] 2112 	mov	dph,r5
      002986 8E F0            [24] 2113 	mov	b,r6
      002988 EF               [12] 2114 	mov	a,r7
      002989                       2115 00112$:
      002989 22               [24] 2116 	ret
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
      00298A                       2128 _osal_timer_num_active:
                                   2129 ;	../osal/common/OSAL_Timers.c:414: uint8 num_timers = 0;
      00298A 90 10 62         [24] 2130 	mov	dptr,#_osal_timer_num_active_num_timers_1_125
      00298D 74 00            [12] 2131 	mov	a,#0x00
      00298F F0               [24] 2132 	movx	@dptr,a
                                   2133 ;	../osal/common/OSAL_Timers.c:417: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      002990 90 10 61         [24] 2134 	mov	dptr,#_osal_timer_num_active_intState_1_125
      002993 A2 AF            [12] 2135 	mov	c,_EA
      002995 E4               [12] 2136 	clr	a
      002996 33               [12] 2137 	rlc	a
      002997 F0               [24] 2138 	movx	@dptr,a
      002998 C2 AF            [12] 2139 	clr	_EA
                                   2140 ;	../osal/common/OSAL_Timers.c:420: srchTimer = timerHead;
      00299A 90 10 20         [24] 2141 	mov	dptr,#_timerHead
      00299D E0               [24] 2142 	movx	a,@dptr
      00299E FD               [12] 2143 	mov	r5,a
      00299F A3               [24] 2144 	inc	dptr
      0029A0 E0               [24] 2145 	movx	a,@dptr
      0029A1 FE               [12] 2146 	mov	r6,a
      0029A2 A3               [24] 2147 	inc	dptr
      0029A3 E0               [24] 2148 	movx	a,@dptr
      0029A4 FF               [12] 2149 	mov	r7,a
      0029A5 90 10 63         [24] 2150 	mov	dptr,#_osal_timer_num_active_srchTimer_1_125
      0029A8 ED               [12] 2151 	mov	a,r5
      0029A9 F0               [24] 2152 	movx	@dptr,a
      0029AA EE               [12] 2153 	mov	a,r6
      0029AB A3               [24] 2154 	inc	dptr
      0029AC F0               [24] 2155 	movx	@dptr,a
      0029AD EF               [12] 2156 	mov	a,r7
      0029AE A3               [24] 2157 	inc	dptr
      0029AF F0               [24] 2158 	movx	@dptr,a
                                   2159 ;	../osal/common/OSAL_Timers.c:423: while ( srchTimer != NULL )
      0029B0 90 10 62         [24] 2160 	mov	dptr,#_osal_timer_num_active_num_timers_1_125
      0029B3 E0               [24] 2161 	movx	a,@dptr
      0029B4 FF               [12] 2162 	mov	r7,a
      0029B5                       2163 00107$:
      0029B5 90 10 63         [24] 2164 	mov	dptr,#_osal_timer_num_active_srchTimer_1_125
      0029B8 E0               [24] 2165 	movx	a,@dptr
      0029B9 FC               [12] 2166 	mov	r4,a
      0029BA A3               [24] 2167 	inc	dptr
      0029BB E0               [24] 2168 	movx	a,@dptr
      0029BC FD               [12] 2169 	mov	r5,a
      0029BD A3               [24] 2170 	inc	dptr
      0029BE E0               [24] 2171 	movx	a,@dptr
      0029BF FE               [12] 2172 	mov	r6,a
      0029C0 EC               [12] 2173 	mov	a,r4
      0029C1 4D               [12] 2174 	orl	a,r5
      0029C2 70 03            [24] 2175 	jnz	00122$
      0029C4 02 29 F5         [24] 2176 	ljmp	00117$
      0029C7                       2177 00122$:
                                   2178 ;	../osal/common/OSAL_Timers.c:425: num_timers++;
      0029C7 0F               [12] 2179 	inc	r7
                                   2180 ;	../osal/common/OSAL_Timers.c:426: srchTimer = srchTimer->next;
      0029C8 90 10 63         [24] 2181 	mov	dptr,#_osal_timer_num_active_srchTimer_1_125
      0029CB E0               [24] 2182 	movx	a,@dptr
      0029CC FC               [12] 2183 	mov	r4,a
      0029CD A3               [24] 2184 	inc	dptr
      0029CE E0               [24] 2185 	movx	a,@dptr
      0029CF FD               [12] 2186 	mov	r5,a
      0029D0 A3               [24] 2187 	inc	dptr
      0029D1 E0               [24] 2188 	movx	a,@dptr
      0029D2 FE               [12] 2189 	mov	r6,a
      0029D3 8C 82            [24] 2190 	mov	dpl,r4
      0029D5 8D 83            [24] 2191 	mov	dph,r5
      0029D7 8E F0            [24] 2192 	mov	b,r6
      0029D9 12 5B 6D         [24] 2193 	lcall	__gptrget
      0029DC FC               [12] 2194 	mov	r4,a
      0029DD A3               [24] 2195 	inc	dptr
      0029DE 12 5B 6D         [24] 2196 	lcall	__gptrget
      0029E1 FD               [12] 2197 	mov	r5,a
      0029E2 A3               [24] 2198 	inc	dptr
      0029E3 12 5B 6D         [24] 2199 	lcall	__gptrget
      0029E6 FE               [12] 2200 	mov	r6,a
      0029E7 90 10 63         [24] 2201 	mov	dptr,#_osal_timer_num_active_srchTimer_1_125
      0029EA EC               [12] 2202 	mov	a,r4
      0029EB F0               [24] 2203 	movx	@dptr,a
      0029EC ED               [12] 2204 	mov	a,r5
      0029ED A3               [24] 2205 	inc	dptr
      0029EE F0               [24] 2206 	movx	@dptr,a
      0029EF EE               [12] 2207 	mov	a,r6
      0029F0 A3               [24] 2208 	inc	dptr
      0029F1 F0               [24] 2209 	movx	@dptr,a
      0029F2 02 29 B5         [24] 2210 	ljmp	00107$
                                   2211 ;	../osal/common/OSAL_Timers.c:429: HAL_EXIT_CRITICAL_SECTION( intState );   // Re-enable interrupts.
      0029F5                       2212 00117$:
      0029F5 90 10 62         [24] 2213 	mov	dptr,#_osal_timer_num_active_num_timers_1_125
      0029F8 EF               [12] 2214 	mov	a,r7
      0029F9 F0               [24] 2215 	movx	@dptr,a
      0029FA 90 10 61         [24] 2216 	mov	dptr,#_osal_timer_num_active_intState_1_125
      0029FD E0               [24] 2217 	movx	a,@dptr
      0029FE FF               [12] 2218 	mov	r7,a
      0029FF EF               [12] 2219 	mov	a,r7
      002A00 24 FF            [12] 2220 	add	a,#0xff
      002A02 92 AF            [24] 2221 	mov	_EA,c
                                   2222 ;	../osal/common/OSAL_Timers.c:431: return num_timers;
      002A04 90 10 62         [24] 2223 	mov	dptr,#_osal_timer_num_active_num_timers_1_125
      002A07 E0               [24] 2224 	movx	a,@dptr
      002A08 FF               [12] 2225 	mov	r7,a
      002A09 8F 82            [24] 2226 	mov	dpl,r7
      002A0B                       2227 00113$:
      002A0B 22               [24] 2228 	ret
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
      002A0C                       2244 _osalTimerUpdate:
      002A0C AF 82            [24] 2245 	mov	r7,dpl
      002A0E AE 83            [24] 2246 	mov	r6,dph
      002A10 AD F0            [24] 2247 	mov	r5,b
      002A12 FC               [12] 2248 	mov	r4,a
      002A13 90 10 66         [24] 2249 	mov	dptr,#_osalTimerUpdate_updateTime_1_130
      002A16 EF               [12] 2250 	mov	a,r7
      002A17 F0               [24] 2251 	movx	@dptr,a
      002A18 EE               [12] 2252 	mov	a,r6
      002A19 A3               [24] 2253 	inc	dptr
      002A1A F0               [24] 2254 	movx	@dptr,a
      002A1B ED               [12] 2255 	mov	a,r5
      002A1C A3               [24] 2256 	inc	dptr
      002A1D F0               [24] 2257 	movx	@dptr,a
      002A1E EC               [12] 2258 	mov	a,r4
      002A1F A3               [24] 2259 	inc	dptr
      002A20 F0               [24] 2260 	movx	@dptr,a
                                   2261 ;	../osal/common/OSAL_Timers.c:450: timeUnion.time32 = updateTime;
      002A21 90 10 66         [24] 2262 	mov	dptr,#_osalTimerUpdate_updateTime_1_130
      002A24 E0               [24] 2263 	movx	a,@dptr
      002A25 FC               [12] 2264 	mov	r4,a
      002A26 A3               [24] 2265 	inc	dptr
      002A27 E0               [24] 2266 	movx	a,@dptr
      002A28 FD               [12] 2267 	mov	r5,a
      002A29 A3               [24] 2268 	inc	dptr
      002A2A E0               [24] 2269 	movx	a,@dptr
      002A2B FE               [12] 2270 	mov	r6,a
      002A2C A3               [24] 2271 	inc	dptr
      002A2D E0               [24] 2272 	movx	a,@dptr
      002A2E FF               [12] 2273 	mov	r7,a
      002A2F 90 10 70         [24] 2274 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002A32 EC               [12] 2275 	mov	a,r4
      002A33 F0               [24] 2276 	movx	@dptr,a
      002A34 ED               [12] 2277 	mov	a,r5
      002A35 A3               [24] 2278 	inc	dptr
      002A36 F0               [24] 2279 	movx	@dptr,a
      002A37 EE               [12] 2280 	mov	a,r6
      002A38 A3               [24] 2281 	inc	dptr
      002A39 F0               [24] 2282 	movx	@dptr,a
      002A3A EF               [12] 2283 	mov	a,r7
      002A3B A3               [24] 2284 	inc	dptr
      002A3C F0               [24] 2285 	movx	@dptr,a
                                   2286 ;	../osal/common/OSAL_Timers.c:457: osal_systemClock += updateTime;
      002A3D 90 10 23         [24] 2287 	mov	dptr,#_osal_systemClock
      002A40 E0               [24] 2288 	movx	a,@dptr
      002A41 F8               [12] 2289 	mov	r0,a
      002A42 A3               [24] 2290 	inc	dptr
      002A43 E0               [24] 2291 	movx	a,@dptr
      002A44 F9               [12] 2292 	mov	r1,a
      002A45 A3               [24] 2293 	inc	dptr
      002A46 E0               [24] 2294 	movx	a,@dptr
      002A47 FA               [12] 2295 	mov	r2,a
      002A48 A3               [24] 2296 	inc	dptr
      002A49 E0               [24] 2297 	movx	a,@dptr
      002A4A FB               [12] 2298 	mov	r3,a
      002A4B 90 10 23         [24] 2299 	mov	dptr,#_osal_systemClock
      002A4E EC               [12] 2300 	mov	a,r4
      002A4F 28               [12] 2301 	add	a,r0
      002A50 F0               [24] 2302 	movx	@dptr,a
      002A51 ED               [12] 2303 	mov	a,r5
      002A52 39               [12] 2304 	addc	a,r1
      002A53 A3               [24] 2305 	inc	dptr
      002A54 F0               [24] 2306 	movx	@dptr,a
      002A55 EE               [12] 2307 	mov	a,r6
      002A56 3A               [12] 2308 	addc	a,r2
      002A57 A3               [24] 2309 	inc	dptr
      002A58 F0               [24] 2310 	movx	@dptr,a
      002A59 EF               [12] 2311 	mov	a,r7
      002A5A 3B               [12] 2312 	addc	a,r3
      002A5B A3               [24] 2313 	inc	dptr
      002A5C F0               [24] 2314 	movx	@dptr,a
                                   2315 ;	../osal/common/OSAL_Timers.c:461: if ( timerHead != NULL )
      002A5D 90 10 20         [24] 2316 	mov	dptr,#_timerHead
      002A60 E0               [24] 2317 	movx	a,@dptr
      002A61 FD               [12] 2318 	mov	r5,a
      002A62 A3               [24] 2319 	inc	dptr
      002A63 E0               [24] 2320 	movx	a,@dptr
      002A64 FE               [12] 2321 	mov	r6,a
      002A65 A3               [24] 2322 	inc	dptr
      002A66 E0               [24] 2323 	movx	a,@dptr
      002A67 FF               [12] 2324 	mov	r7,a
      002A68 ED               [12] 2325 	mov	a,r5
      002A69 4E               [12] 2326 	orl	a,r6
      002A6A 70 03            [24] 2327 	jnz	00190$
      002A6C 02 30 45         [24] 2328 	ljmp	00137$
      002A6F                       2329 00190$:
                                   2330 ;	../osal/common/OSAL_Timers.c:464: srchTimer = timerHead;
      002A6F 90 10 20         [24] 2331 	mov	dptr,#_timerHead
      002A72 E0               [24] 2332 	movx	a,@dptr
      002A73 FD               [12] 2333 	mov	r5,a
      002A74 A3               [24] 2334 	inc	dptr
      002A75 E0               [24] 2335 	movx	a,@dptr
      002A76 FE               [12] 2336 	mov	r6,a
      002A77 A3               [24] 2337 	inc	dptr
      002A78 E0               [24] 2338 	movx	a,@dptr
      002A79 FF               [12] 2339 	mov	r7,a
      002A7A 90 10 6A         [24] 2340 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002A7D ED               [12] 2341 	mov	a,r5
      002A7E F0               [24] 2342 	movx	@dptr,a
      002A7F EE               [12] 2343 	mov	a,r6
      002A80 A3               [24] 2344 	inc	dptr
      002A81 F0               [24] 2345 	movx	@dptr,a
      002A82 EF               [12] 2346 	mov	a,r7
      002A83 A3               [24] 2347 	inc	dptr
      002A84 F0               [24] 2348 	movx	@dptr,a
                                   2349 ;	../osal/common/OSAL_Timers.c:465: prevTimer = (void *)NULL;
      002A85 90 10 6D         [24] 2350 	mov	dptr,#_osalTimerUpdate_prevTimer_1_131
      002A88 74 00            [12] 2351 	mov	a,#0x00
      002A8A F0               [24] 2352 	movx	@dptr,a
      002A8B A3               [24] 2353 	inc	dptr
      002A8C F0               [24] 2354 	movx	@dptr,a
      002A8D A3               [24] 2355 	inc	dptr
      002A8E F0               [24] 2356 	movx	@dptr,a
                                   2357 ;	../osal/common/OSAL_Timers.c:480: while ( srchTimer )
      002A8F                       2358 00132$:
      002A8F 90 10 6A         [24] 2359 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002A92 E0               [24] 2360 	movx	a,@dptr
      002A93 FD               [12] 2361 	mov	r5,a
      002A94 A3               [24] 2362 	inc	dptr
      002A95 E0               [24] 2363 	movx	a,@dptr
      002A96 FE               [12] 2364 	mov	r6,a
      002A97 A3               [24] 2365 	inc	dptr
      002A98 E0               [24] 2366 	movx	a,@dptr
      002A99 FF               [12] 2367 	mov	r7,a
      002A9A ED               [12] 2368 	mov	a,r5
      002A9B 4E               [12] 2369 	orl	a,r6
      002A9C 70 03            [24] 2370 	jnz	00191$
      002A9E 02 30 45         [24] 2371 	ljmp	00137$
      002AA1                       2372 00191$:
                                   2373 ;	../osal/common/OSAL_Timers.c:482: osalTimerRec_t *freeTimer = NULL;
      002AA1 90 10 74         [24] 2374 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002AA4 74 00            [12] 2375 	mov	a,#0x00
      002AA6 F0               [24] 2376 	movx	@dptr,a
      002AA7 A3               [24] 2377 	inc	dptr
      002AA8 F0               [24] 2378 	movx	@dptr,a
      002AA9 A3               [24] 2379 	inc	dptr
      002AAA F0               [24] 2380 	movx	@dptr,a
                                   2381 ;	../osal/common/OSAL_Timers.c:501: if ((timeUnion.time16[1] == 0) && (timeUnion.time8[1] == 0))
      002AAB 90 10 72         [24] 2382 	mov	dptr,#(_osalTimerUpdate_timeUnion_1_131 + 0x0002)
      002AAE E0               [24] 2383 	movx	a,@dptr
      002AAF FE               [12] 2384 	mov	r6,a
      002AB0 A3               [24] 2385 	inc	dptr
      002AB1 E0               [24] 2386 	movx	a,@dptr
      002AB2 FF               [12] 2387 	mov	r7,a
      002AB3 EE               [12] 2388 	mov	a,r6
      002AB4 4F               [12] 2389 	orl	a,r7
      002AB5 60 03            [24] 2390 	jz	00192$
      002AB7 02 2C 00         [24] 2391 	ljmp	00111$
      002ABA                       2392 00192$:
      002ABA 90 10 71         [24] 2393 	mov	dptr,#(_osalTimerUpdate_timeUnion_1_131 + 0x0001)
      002ABD E0               [24] 2394 	movx	a,@dptr
      002ABE 60 03            [24] 2395 	jz	00193$
      002AC0 02 2C 00         [24] 2396 	ljmp	00111$
      002AC3                       2397 00193$:
                                   2398 ;	../osal/common/OSAL_Timers.c:504: if (srchTimer->timeout.time8[0] >= timeUnion.time8[0])
      002AC3 90 10 6A         [24] 2399 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002AC6 E0               [24] 2400 	movx	a,@dptr
      002AC7 FD               [12] 2401 	mov	r5,a
      002AC8 A3               [24] 2402 	inc	dptr
      002AC9 E0               [24] 2403 	movx	a,@dptr
      002ACA FE               [12] 2404 	mov	r6,a
      002ACB A3               [24] 2405 	inc	dptr
      002ACC E0               [24] 2406 	movx	a,@dptr
      002ACD FF               [12] 2407 	mov	r7,a
      002ACE 74 03            [12] 2408 	mov	a,#0x03
      002AD0 2D               [12] 2409 	add	a,r5
      002AD1 FD               [12] 2410 	mov	r5,a
      002AD2 74 00            [12] 2411 	mov	a,#0x00
      002AD4 3E               [12] 2412 	addc	a,r6
      002AD5 FE               [12] 2413 	mov	r6,a
      002AD6 8D 82            [24] 2414 	mov	dpl,r5
      002AD8 8E 83            [24] 2415 	mov	dph,r6
      002ADA 8F F0            [24] 2416 	mov	b,r7
      002ADC 12 5B 6D         [24] 2417 	lcall	__gptrget
      002ADF FD               [12] 2418 	mov	r5,a
      002AE0 90 10 70         [24] 2419 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002AE3 E0               [24] 2420 	movx	a,@dptr
      002AE4 FF               [12] 2421 	mov	r7,a
      002AE5 C3               [12] 2422 	clr	c
      002AE6 ED               [12] 2423 	mov	a,r5
      002AE7 9F               [12] 2424 	subb	a,r7
      002AE8 50 03            [24] 2425 	jnc	00194$
      002AEA 02 2B 20         [24] 2426 	ljmp	00105$
      002AED                       2427 00194$:
                                   2428 ;	../osal/common/OSAL_Timers.c:507: srchTimer->timeout.time8[0] -= timeUnion.time8[0];
      002AED 90 10 6A         [24] 2429 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002AF0 E0               [24] 2430 	movx	a,@dptr
      002AF1 FD               [12] 2431 	mov	r5,a
      002AF2 A3               [24] 2432 	inc	dptr
      002AF3 E0               [24] 2433 	movx	a,@dptr
      002AF4 FE               [12] 2434 	mov	r6,a
      002AF5 A3               [24] 2435 	inc	dptr
      002AF6 E0               [24] 2436 	movx	a,@dptr
      002AF7 FF               [12] 2437 	mov	r7,a
      002AF8 74 03            [12] 2438 	mov	a,#0x03
      002AFA 2D               [12] 2439 	add	a,r5
      002AFB FD               [12] 2440 	mov	r5,a
      002AFC 74 00            [12] 2441 	mov	a,#0x00
      002AFE 3E               [12] 2442 	addc	a,r6
      002AFF FE               [12] 2443 	mov	r6,a
      002B00 90 10 70         [24] 2444 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002B03 E0               [24] 2445 	movx	a,@dptr
      002B04 FC               [12] 2446 	mov	r4,a
      002B05 8D 82            [24] 2447 	mov	dpl,r5
      002B07 8E 83            [24] 2448 	mov	dph,r6
      002B09 8F F0            [24] 2449 	mov	b,r7
      002B0B 12 5B 6D         [24] 2450 	lcall	__gptrget
      002B0E FB               [12] 2451 	mov	r3,a
      002B0F EB               [12] 2452 	mov	a,r3
      002B10 C3               [12] 2453 	clr	c
      002B11 9C               [12] 2454 	subb	a,r4
      002B12 FC               [12] 2455 	mov	r4,a
      002B13 8D 82            [24] 2456 	mov	dpl,r5
      002B15 8E 83            [24] 2457 	mov	dph,r6
      002B17 8F F0            [24] 2458 	mov	b,r7
      002B19 EC               [12] 2459 	mov	a,r4
      002B1A 12 5A 01         [24] 2460 	lcall	__gptrput
      002B1D 02 2C DD         [24] 2461 	ljmp	00112$
      002B20                       2462 00105$:
                                   2463 ;	../osal/common/OSAL_Timers.c:512: if (srchTimer->timeout.time32 > timeUnion.time32)
      002B20 90 10 6A         [24] 2464 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002B23 E0               [24] 2465 	movx	a,@dptr
      002B24 FD               [12] 2466 	mov	r5,a
      002B25 A3               [24] 2467 	inc	dptr
      002B26 E0               [24] 2468 	movx	a,@dptr
      002B27 FE               [12] 2469 	mov	r6,a
      002B28 A3               [24] 2470 	inc	dptr
      002B29 E0               [24] 2471 	movx	a,@dptr
      002B2A FF               [12] 2472 	mov	r7,a
      002B2B 74 03            [12] 2473 	mov	a,#0x03
      002B2D 2D               [12] 2474 	add	a,r5
      002B2E FD               [12] 2475 	mov	r5,a
      002B2F 74 00            [12] 2476 	mov	a,#0x00
      002B31 3E               [12] 2477 	addc	a,r6
      002B32 FE               [12] 2478 	mov	r6,a
      002B33 8D 82            [24] 2479 	mov	dpl,r5
      002B35 8E 83            [24] 2480 	mov	dph,r6
      002B37 8F F0            [24] 2481 	mov	b,r7
      002B39 12 5B 6D         [24] 2482 	lcall	__gptrget
      002B3C FD               [12] 2483 	mov	r5,a
      002B3D A3               [24] 2484 	inc	dptr
      002B3E 12 5B 6D         [24] 2485 	lcall	__gptrget
      002B41 FE               [12] 2486 	mov	r6,a
      002B42 A3               [24] 2487 	inc	dptr
      002B43 12 5B 6D         [24] 2488 	lcall	__gptrget
      002B46 FF               [12] 2489 	mov	r7,a
      002B47 A3               [24] 2490 	inc	dptr
      002B48 12 5B 6D         [24] 2491 	lcall	__gptrget
      002B4B FC               [12] 2492 	mov	r4,a
      002B4C 90 10 70         [24] 2493 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002B4F E0               [24] 2494 	movx	a,@dptr
      002B50 F8               [12] 2495 	mov	r0,a
      002B51 A3               [24] 2496 	inc	dptr
      002B52 E0               [24] 2497 	movx	a,@dptr
      002B53 F9               [12] 2498 	mov	r1,a
      002B54 A3               [24] 2499 	inc	dptr
      002B55 E0               [24] 2500 	movx	a,@dptr
      002B56 FA               [12] 2501 	mov	r2,a
      002B57 A3               [24] 2502 	inc	dptr
      002B58 E0               [24] 2503 	movx	a,@dptr
      002B59 FB               [12] 2504 	mov	r3,a
      002B5A C3               [12] 2505 	clr	c
      002B5B E8               [12] 2506 	mov	a,r0
      002B5C 9D               [12] 2507 	subb	a,r5
      002B5D E9               [12] 2508 	mov	a,r1
      002B5E 9E               [12] 2509 	subb	a,r6
      002B5F EA               [12] 2510 	mov	a,r2
      002B60 9F               [12] 2511 	subb	a,r7
      002B61 EB               [12] 2512 	mov	a,r3
      002B62 9C               [12] 2513 	subb	a,r4
      002B63 40 03            [24] 2514 	jc	00195$
      002B65 02 2B D3         [24] 2515 	ljmp	00102$
      002B68                       2516 00195$:
                                   2517 ;	../osal/common/OSAL_Timers.c:514: srchTimer->timeout.time32 -= timeUnion.time32;
      002B68 90 10 6A         [24] 2518 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002B6B E0               [24] 2519 	movx	a,@dptr
      002B6C FD               [12] 2520 	mov	r5,a
      002B6D A3               [24] 2521 	inc	dptr
      002B6E E0               [24] 2522 	movx	a,@dptr
      002B6F FE               [12] 2523 	mov	r6,a
      002B70 A3               [24] 2524 	inc	dptr
      002B71 E0               [24] 2525 	movx	a,@dptr
      002B72 FF               [12] 2526 	mov	r7,a
      002B73 74 03            [12] 2527 	mov	a,#0x03
      002B75 2D               [12] 2528 	add	a,r5
      002B76 FD               [12] 2529 	mov	r5,a
      002B77 74 00            [12] 2530 	mov	a,#0x00
      002B79 3E               [12] 2531 	addc	a,r6
      002B7A FE               [12] 2532 	mov	r6,a
      002B7B 8D 82            [24] 2533 	mov	dpl,r5
      002B7D 8E 83            [24] 2534 	mov	dph,r6
      002B7F 8F F0            [24] 2535 	mov	b,r7
      002B81 12 5B 6D         [24] 2536 	lcall	__gptrget
      002B84 F5 13            [12] 2537 	mov	_osalTimerUpdate_sloc0_1_0,a
      002B86 A3               [24] 2538 	inc	dptr
      002B87 12 5B 6D         [24] 2539 	lcall	__gptrget
      002B8A F5 14            [12] 2540 	mov	(_osalTimerUpdate_sloc0_1_0 + 1),a
      002B8C A3               [24] 2541 	inc	dptr
      002B8D 12 5B 6D         [24] 2542 	lcall	__gptrget
      002B90 F5 15            [12] 2543 	mov	(_osalTimerUpdate_sloc0_1_0 + 2),a
      002B92 A3               [24] 2544 	inc	dptr
      002B93 12 5B 6D         [24] 2545 	lcall	__gptrget
      002B96 F5 16            [12] 2546 	mov	(_osalTimerUpdate_sloc0_1_0 + 3),a
      002B98 90 10 70         [24] 2547 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002B9B E0               [24] 2548 	movx	a,@dptr
      002B9C F8               [12] 2549 	mov	r0,a
      002B9D A3               [24] 2550 	inc	dptr
      002B9E E0               [24] 2551 	movx	a,@dptr
      002B9F FA               [12] 2552 	mov	r2,a
      002BA0 A3               [24] 2553 	inc	dptr
      002BA1 E0               [24] 2554 	movx	a,@dptr
      002BA2 FB               [12] 2555 	mov	r3,a
      002BA3 A3               [24] 2556 	inc	dptr
      002BA4 E0               [24] 2557 	movx	a,@dptr
      002BA5 FC               [12] 2558 	mov	r4,a
      002BA6 E5 13            [12] 2559 	mov	a,_osalTimerUpdate_sloc0_1_0
      002BA8 C3               [12] 2560 	clr	c
      002BA9 98               [12] 2561 	subb	a,r0
      002BAA F8               [12] 2562 	mov	r0,a
      002BAB E5 14            [12] 2563 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 1)
      002BAD 9A               [12] 2564 	subb	a,r2
      002BAE FA               [12] 2565 	mov	r2,a
      002BAF E5 15            [12] 2566 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 2)
      002BB1 9B               [12] 2567 	subb	a,r3
      002BB2 FB               [12] 2568 	mov	r3,a
      002BB3 E5 16            [12] 2569 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 3)
      002BB5 9C               [12] 2570 	subb	a,r4
      002BB6 FC               [12] 2571 	mov	r4,a
      002BB7 8D 82            [24] 2572 	mov	dpl,r5
      002BB9 8E 83            [24] 2573 	mov	dph,r6
      002BBB 8F F0            [24] 2574 	mov	b,r7
      002BBD E8               [12] 2575 	mov	a,r0
      002BBE 12 5A 01         [24] 2576 	lcall	__gptrput
      002BC1 A3               [24] 2577 	inc	dptr
      002BC2 EA               [12] 2578 	mov	a,r2
      002BC3 12 5A 01         [24] 2579 	lcall	__gptrput
      002BC6 A3               [24] 2580 	inc	dptr
      002BC7 EB               [12] 2581 	mov	a,r3
      002BC8 12 5A 01         [24] 2582 	lcall	__gptrput
      002BCB A3               [24] 2583 	inc	dptr
      002BCC EC               [12] 2584 	mov	a,r4
      002BCD 12 5A 01         [24] 2585 	lcall	__gptrput
      002BD0 02 2C DD         [24] 2586 	ljmp	00112$
      002BD3                       2587 00102$:
                                   2588 ;	../osal/common/OSAL_Timers.c:518: srchTimer->timeout.time32 = 0;
      002BD3 90 10 6A         [24] 2589 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002BD6 E0               [24] 2590 	movx	a,@dptr
      002BD7 FD               [12] 2591 	mov	r5,a
      002BD8 A3               [24] 2592 	inc	dptr
      002BD9 E0               [24] 2593 	movx	a,@dptr
      002BDA FE               [12] 2594 	mov	r6,a
      002BDB A3               [24] 2595 	inc	dptr
      002BDC E0               [24] 2596 	movx	a,@dptr
      002BDD FF               [12] 2597 	mov	r7,a
      002BDE 74 03            [12] 2598 	mov	a,#0x03
      002BE0 2D               [12] 2599 	add	a,r5
      002BE1 FD               [12] 2600 	mov	r5,a
      002BE2 74 00            [12] 2601 	mov	a,#0x00
      002BE4 3E               [12] 2602 	addc	a,r6
      002BE5 FE               [12] 2603 	mov	r6,a
      002BE6 8D 82            [24] 2604 	mov	dpl,r5
      002BE8 8E 83            [24] 2605 	mov	dph,r6
      002BEA 8F F0            [24] 2606 	mov	b,r7
      002BEC 74 00            [12] 2607 	mov	a,#0x00
      002BEE 12 5A 01         [24] 2608 	lcall	__gptrput
      002BF1 A3               [24] 2609 	inc	dptr
      002BF2 12 5A 01         [24] 2610 	lcall	__gptrput
      002BF5 A3               [24] 2611 	inc	dptr
      002BF6 12 5A 01         [24] 2612 	lcall	__gptrput
      002BF9 A3               [24] 2613 	inc	dptr
      002BFA 12 5A 01         [24] 2614 	lcall	__gptrput
      002BFD 02 2C DD         [24] 2615 	ljmp	00112$
      002C00                       2616 00111$:
                                   2617 ;	../osal/common/OSAL_Timers.c:525: if (srchTimer->timeout.time32 > timeUnion.time32)
      002C00 90 10 6A         [24] 2618 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002C03 E0               [24] 2619 	movx	a,@dptr
      002C04 FD               [12] 2620 	mov	r5,a
      002C05 A3               [24] 2621 	inc	dptr
      002C06 E0               [24] 2622 	movx	a,@dptr
      002C07 FE               [12] 2623 	mov	r6,a
      002C08 A3               [24] 2624 	inc	dptr
      002C09 E0               [24] 2625 	movx	a,@dptr
      002C0A FF               [12] 2626 	mov	r7,a
      002C0B 74 03            [12] 2627 	mov	a,#0x03
      002C0D 2D               [12] 2628 	add	a,r5
      002C0E FD               [12] 2629 	mov	r5,a
      002C0F 74 00            [12] 2630 	mov	a,#0x00
      002C11 3E               [12] 2631 	addc	a,r6
      002C12 FE               [12] 2632 	mov	r6,a
      002C13 8D 82            [24] 2633 	mov	dpl,r5
      002C15 8E 83            [24] 2634 	mov	dph,r6
      002C17 8F F0            [24] 2635 	mov	b,r7
      002C19 12 5B 6D         [24] 2636 	lcall	__gptrget
      002C1C FD               [12] 2637 	mov	r5,a
      002C1D A3               [24] 2638 	inc	dptr
      002C1E 12 5B 6D         [24] 2639 	lcall	__gptrget
      002C21 FE               [12] 2640 	mov	r6,a
      002C22 A3               [24] 2641 	inc	dptr
      002C23 12 5B 6D         [24] 2642 	lcall	__gptrget
      002C26 FF               [12] 2643 	mov	r7,a
      002C27 A3               [24] 2644 	inc	dptr
      002C28 12 5B 6D         [24] 2645 	lcall	__gptrget
      002C2B FC               [12] 2646 	mov	r4,a
      002C2C 90 10 70         [24] 2647 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002C2F E0               [24] 2648 	movx	a,@dptr
      002C30 F8               [12] 2649 	mov	r0,a
      002C31 A3               [24] 2650 	inc	dptr
      002C32 E0               [24] 2651 	movx	a,@dptr
      002C33 F9               [12] 2652 	mov	r1,a
      002C34 A3               [24] 2653 	inc	dptr
      002C35 E0               [24] 2654 	movx	a,@dptr
      002C36 FA               [12] 2655 	mov	r2,a
      002C37 A3               [24] 2656 	inc	dptr
      002C38 E0               [24] 2657 	movx	a,@dptr
      002C39 FB               [12] 2658 	mov	r3,a
      002C3A C3               [12] 2659 	clr	c
      002C3B E8               [12] 2660 	mov	a,r0
      002C3C 9D               [12] 2661 	subb	a,r5
      002C3D E9               [12] 2662 	mov	a,r1
      002C3E 9E               [12] 2663 	subb	a,r6
      002C3F EA               [12] 2664 	mov	a,r2
      002C40 9F               [12] 2665 	subb	a,r7
      002C41 EB               [12] 2666 	mov	a,r3
      002C42 9C               [12] 2667 	subb	a,r4
      002C43 40 03            [24] 2668 	jc	00196$
      002C45 02 2C B3         [24] 2669 	ljmp	00108$
      002C48                       2670 00196$:
                                   2671 ;	../osal/common/OSAL_Timers.c:527: srchTimer->timeout.time32 -= timeUnion.time32;
      002C48 90 10 6A         [24] 2672 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002C4B E0               [24] 2673 	movx	a,@dptr
      002C4C FD               [12] 2674 	mov	r5,a
      002C4D A3               [24] 2675 	inc	dptr
      002C4E E0               [24] 2676 	movx	a,@dptr
      002C4F FE               [12] 2677 	mov	r6,a
      002C50 A3               [24] 2678 	inc	dptr
      002C51 E0               [24] 2679 	movx	a,@dptr
      002C52 FF               [12] 2680 	mov	r7,a
      002C53 74 03            [12] 2681 	mov	a,#0x03
      002C55 2D               [12] 2682 	add	a,r5
      002C56 FD               [12] 2683 	mov	r5,a
      002C57 74 00            [12] 2684 	mov	a,#0x00
      002C59 3E               [12] 2685 	addc	a,r6
      002C5A FE               [12] 2686 	mov	r6,a
      002C5B 8D 82            [24] 2687 	mov	dpl,r5
      002C5D 8E 83            [24] 2688 	mov	dph,r6
      002C5F 8F F0            [24] 2689 	mov	b,r7
      002C61 12 5B 6D         [24] 2690 	lcall	__gptrget
      002C64 F5 13            [12] 2691 	mov	_osalTimerUpdate_sloc0_1_0,a
      002C66 A3               [24] 2692 	inc	dptr
      002C67 12 5B 6D         [24] 2693 	lcall	__gptrget
      002C6A F5 14            [12] 2694 	mov	(_osalTimerUpdate_sloc0_1_0 + 1),a
      002C6C A3               [24] 2695 	inc	dptr
      002C6D 12 5B 6D         [24] 2696 	lcall	__gptrget
      002C70 F5 15            [12] 2697 	mov	(_osalTimerUpdate_sloc0_1_0 + 2),a
      002C72 A3               [24] 2698 	inc	dptr
      002C73 12 5B 6D         [24] 2699 	lcall	__gptrget
      002C76 F5 16            [12] 2700 	mov	(_osalTimerUpdate_sloc0_1_0 + 3),a
      002C78 90 10 70         [24] 2701 	mov	dptr,#_osalTimerUpdate_timeUnion_1_131
      002C7B E0               [24] 2702 	movx	a,@dptr
      002C7C F8               [12] 2703 	mov	r0,a
      002C7D A3               [24] 2704 	inc	dptr
      002C7E E0               [24] 2705 	movx	a,@dptr
      002C7F FA               [12] 2706 	mov	r2,a
      002C80 A3               [24] 2707 	inc	dptr
      002C81 E0               [24] 2708 	movx	a,@dptr
      002C82 FB               [12] 2709 	mov	r3,a
      002C83 A3               [24] 2710 	inc	dptr
      002C84 E0               [24] 2711 	movx	a,@dptr
      002C85 FC               [12] 2712 	mov	r4,a
      002C86 E5 13            [12] 2713 	mov	a,_osalTimerUpdate_sloc0_1_0
      002C88 C3               [12] 2714 	clr	c
      002C89 98               [12] 2715 	subb	a,r0
      002C8A F8               [12] 2716 	mov	r0,a
      002C8B E5 14            [12] 2717 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 1)
      002C8D 9A               [12] 2718 	subb	a,r2
      002C8E FA               [12] 2719 	mov	r2,a
      002C8F E5 15            [12] 2720 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 2)
      002C91 9B               [12] 2721 	subb	a,r3
      002C92 FB               [12] 2722 	mov	r3,a
      002C93 E5 16            [12] 2723 	mov	a,(_osalTimerUpdate_sloc0_1_0 + 3)
      002C95 9C               [12] 2724 	subb	a,r4
      002C96 FC               [12] 2725 	mov	r4,a
      002C97 8D 82            [24] 2726 	mov	dpl,r5
      002C99 8E 83            [24] 2727 	mov	dph,r6
      002C9B 8F F0            [24] 2728 	mov	b,r7
      002C9D E8               [12] 2729 	mov	a,r0
      002C9E 12 5A 01         [24] 2730 	lcall	__gptrput
      002CA1 A3               [24] 2731 	inc	dptr
      002CA2 EA               [12] 2732 	mov	a,r2
      002CA3 12 5A 01         [24] 2733 	lcall	__gptrput
      002CA6 A3               [24] 2734 	inc	dptr
      002CA7 EB               [12] 2735 	mov	a,r3
      002CA8 12 5A 01         [24] 2736 	lcall	__gptrput
      002CAB A3               [24] 2737 	inc	dptr
      002CAC EC               [12] 2738 	mov	a,r4
      002CAD 12 5A 01         [24] 2739 	lcall	__gptrput
      002CB0 02 2C DD         [24] 2740 	ljmp	00112$
      002CB3                       2741 00108$:
                                   2742 ;	../osal/common/OSAL_Timers.c:531: srchTimer->timeout.time32 = 0;
      002CB3 90 10 6A         [24] 2743 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002CB6 E0               [24] 2744 	movx	a,@dptr
      002CB7 FD               [12] 2745 	mov	r5,a
      002CB8 A3               [24] 2746 	inc	dptr
      002CB9 E0               [24] 2747 	movx	a,@dptr
      002CBA FE               [12] 2748 	mov	r6,a
      002CBB A3               [24] 2749 	inc	dptr
      002CBC E0               [24] 2750 	movx	a,@dptr
      002CBD FF               [12] 2751 	mov	r7,a
      002CBE 74 03            [12] 2752 	mov	a,#0x03
      002CC0 2D               [12] 2753 	add	a,r5
      002CC1 FD               [12] 2754 	mov	r5,a
      002CC2 74 00            [12] 2755 	mov	a,#0x00
      002CC4 3E               [12] 2756 	addc	a,r6
      002CC5 FE               [12] 2757 	mov	r6,a
      002CC6 8D 82            [24] 2758 	mov	dpl,r5
      002CC8 8E 83            [24] 2759 	mov	dph,r6
      002CCA 8F F0            [24] 2760 	mov	b,r7
      002CCC 74 00            [12] 2761 	mov	a,#0x00
      002CCE 12 5A 01         [24] 2762 	lcall	__gptrput
      002CD1 A3               [24] 2763 	inc	dptr
      002CD2 12 5A 01         [24] 2764 	lcall	__gptrput
      002CD5 A3               [24] 2765 	inc	dptr
      002CD6 12 5A 01         [24] 2766 	lcall	__gptrput
      002CD9 A3               [24] 2767 	inc	dptr
      002CDA 12 5A 01         [24] 2768 	lcall	__gptrput
      002CDD                       2769 00112$:
                                   2770 ;	../osal/common/OSAL_Timers.c:536: if ( (srchTimer->timeout.time16[0] == 0) && (srchTimer->timeout.time16[1] == 0) &&
      002CDD 90 10 6A         [24] 2771 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002CE0 E0               [24] 2772 	movx	a,@dptr
      002CE1 FD               [12] 2773 	mov	r5,a
      002CE2 A3               [24] 2774 	inc	dptr
      002CE3 E0               [24] 2775 	movx	a,@dptr
      002CE4 FE               [12] 2776 	mov	r6,a
      002CE5 A3               [24] 2777 	inc	dptr
      002CE6 E0               [24] 2778 	movx	a,@dptr
      002CE7 FF               [12] 2779 	mov	r7,a
      002CE8 74 03            [12] 2780 	mov	a,#0x03
      002CEA 2D               [12] 2781 	add	a,r5
      002CEB FD               [12] 2782 	mov	r5,a
      002CEC 74 00            [12] 2783 	mov	a,#0x00
      002CEE 3E               [12] 2784 	addc	a,r6
      002CEF FE               [12] 2785 	mov	r6,a
      002CF0 8D 82            [24] 2786 	mov	dpl,r5
      002CF2 8E 83            [24] 2787 	mov	dph,r6
      002CF4 8F F0            [24] 2788 	mov	b,r7
      002CF6 12 5B 6D         [24] 2789 	lcall	__gptrget
      002CF9 FD               [12] 2790 	mov	r5,a
      002CFA A3               [24] 2791 	inc	dptr
      002CFB 12 5B 6D         [24] 2792 	lcall	__gptrget
      002CFE FE               [12] 2793 	mov	r6,a
      002CFF ED               [12] 2794 	mov	a,r5
      002D00 4E               [12] 2795 	orl	a,r6
      002D01 60 03            [24] 2796 	jz	00197$
      002D03 02 2E 22         [24] 2797 	ljmp	00115$
      002D06                       2798 00197$:
      002D06 90 10 6A         [24] 2799 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002D09 E0               [24] 2800 	movx	a,@dptr
      002D0A FD               [12] 2801 	mov	r5,a
      002D0B A3               [24] 2802 	inc	dptr
      002D0C E0               [24] 2803 	movx	a,@dptr
      002D0D FE               [12] 2804 	mov	r6,a
      002D0E A3               [24] 2805 	inc	dptr
      002D0F E0               [24] 2806 	movx	a,@dptr
      002D10 FF               [12] 2807 	mov	r7,a
      002D11 74 05            [12] 2808 	mov	a,#0x05
      002D13 2D               [12] 2809 	add	a,r5
      002D14 FD               [12] 2810 	mov	r5,a
      002D15 74 00            [12] 2811 	mov	a,#0x00
      002D17 3E               [12] 2812 	addc	a,r6
      002D18 FE               [12] 2813 	mov	r6,a
      002D19 8D 82            [24] 2814 	mov	dpl,r5
      002D1B 8E 83            [24] 2815 	mov	dph,r6
      002D1D 8F F0            [24] 2816 	mov	b,r7
      002D1F 12 5B 6D         [24] 2817 	lcall	__gptrget
      002D22 FD               [12] 2818 	mov	r5,a
      002D23 A3               [24] 2819 	inc	dptr
      002D24 12 5B 6D         [24] 2820 	lcall	__gptrget
      002D27 FE               [12] 2821 	mov	r6,a
      002D28 ED               [12] 2822 	mov	a,r5
      002D29 4E               [12] 2823 	orl	a,r6
      002D2A 60 03            [24] 2824 	jz	00198$
      002D2C 02 2E 22         [24] 2825 	ljmp	00115$
      002D2F                       2826 00198$:
                                   2827 ;	../osal/common/OSAL_Timers.c:537: (srchTimer->reloadTimeout) && (srchTimer->event_flag) )
      002D2F 90 10 6A         [24] 2828 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002D32 E0               [24] 2829 	movx	a,@dptr
      002D33 FD               [12] 2830 	mov	r5,a
      002D34 A3               [24] 2831 	inc	dptr
      002D35 E0               [24] 2832 	movx	a,@dptr
      002D36 FE               [12] 2833 	mov	r6,a
      002D37 A3               [24] 2834 	inc	dptr
      002D38 E0               [24] 2835 	movx	a,@dptr
      002D39 FF               [12] 2836 	mov	r7,a
      002D3A 74 0A            [12] 2837 	mov	a,#0x0A
      002D3C 2D               [12] 2838 	add	a,r5
      002D3D FD               [12] 2839 	mov	r5,a
      002D3E 74 00            [12] 2840 	mov	a,#0x00
      002D40 3E               [12] 2841 	addc	a,r6
      002D41 FE               [12] 2842 	mov	r6,a
      002D42 8D 82            [24] 2843 	mov	dpl,r5
      002D44 8E 83            [24] 2844 	mov	dph,r6
      002D46 8F F0            [24] 2845 	mov	b,r7
      002D48 12 5B 6D         [24] 2846 	lcall	__gptrget
      002D4B FD               [12] 2847 	mov	r5,a
      002D4C A3               [24] 2848 	inc	dptr
      002D4D 12 5B 6D         [24] 2849 	lcall	__gptrget
      002D50 FE               [12] 2850 	mov	r6,a
      002D51 A3               [24] 2851 	inc	dptr
      002D52 12 5B 6D         [24] 2852 	lcall	__gptrget
      002D55 FF               [12] 2853 	mov	r7,a
      002D56 A3               [24] 2854 	inc	dptr
      002D57 12 5B 6D         [24] 2855 	lcall	__gptrget
      002D5A FC               [12] 2856 	mov	r4,a
      002D5B ED               [12] 2857 	mov	a,r5
      002D5C 4E               [12] 2858 	orl	a,r6
      002D5D 4F               [12] 2859 	orl	a,r7
      002D5E 4C               [12] 2860 	orl	a,r4
      002D5F 70 03            [24] 2861 	jnz	00199$
      002D61 02 2E 22         [24] 2862 	ljmp	00115$
      002D64                       2863 00199$:
      002D64 90 10 6A         [24] 2864 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002D67 E0               [24] 2865 	movx	a,@dptr
      002D68 FD               [12] 2866 	mov	r5,a
      002D69 A3               [24] 2867 	inc	dptr
      002D6A E0               [24] 2868 	movx	a,@dptr
      002D6B FE               [12] 2869 	mov	r6,a
      002D6C A3               [24] 2870 	inc	dptr
      002D6D E0               [24] 2871 	movx	a,@dptr
      002D6E FF               [12] 2872 	mov	r7,a
      002D6F 74 07            [12] 2873 	mov	a,#0x07
      002D71 2D               [12] 2874 	add	a,r5
      002D72 FD               [12] 2875 	mov	r5,a
      002D73 74 00            [12] 2876 	mov	a,#0x00
      002D75 3E               [12] 2877 	addc	a,r6
      002D76 FE               [12] 2878 	mov	r6,a
      002D77 8D 82            [24] 2879 	mov	dpl,r5
      002D79 8E 83            [24] 2880 	mov	dph,r6
      002D7B 8F F0            [24] 2881 	mov	b,r7
      002D7D 12 5B 6D         [24] 2882 	lcall	__gptrget
      002D80 FD               [12] 2883 	mov	r5,a
      002D81 A3               [24] 2884 	inc	dptr
      002D82 12 5B 6D         [24] 2885 	lcall	__gptrget
      002D85 FE               [12] 2886 	mov	r6,a
      002D86 ED               [12] 2887 	mov	a,r5
      002D87 4E               [12] 2888 	orl	a,r6
      002D88 70 03            [24] 2889 	jnz	00200$
      002D8A 02 2E 22         [24] 2890 	ljmp	00115$
      002D8D                       2891 00200$:
                                   2892 ;	../osal/common/OSAL_Timers.c:542: osal_set_event( srchTimer->task_id, srchTimer->event_flag );
      002D8D 90 10 6A         [24] 2893 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002D90 E0               [24] 2894 	movx	a,@dptr
      002D91 FD               [12] 2895 	mov	r5,a
      002D92 A3               [24] 2896 	inc	dptr
      002D93 E0               [24] 2897 	movx	a,@dptr
      002D94 FE               [12] 2898 	mov	r6,a
      002D95 A3               [24] 2899 	inc	dptr
      002D96 E0               [24] 2900 	movx	a,@dptr
      002D97 FF               [12] 2901 	mov	r7,a
      002D98 74 09            [12] 2902 	mov	a,#0x09
      002D9A 2D               [12] 2903 	add	a,r5
      002D9B FA               [12] 2904 	mov	r2,a
      002D9C 74 00            [12] 2905 	mov	a,#0x00
      002D9E 3E               [12] 2906 	addc	a,r6
      002D9F FB               [12] 2907 	mov	r3,a
      002DA0 8F 04            [24] 2908 	mov	ar4,r7
      002DA2 8A 82            [24] 2909 	mov	dpl,r2
      002DA4 8B 83            [24] 2910 	mov	dph,r3
      002DA6 8C F0            [24] 2911 	mov	b,r4
      002DA8 12 5B 6D         [24] 2912 	lcall	__gptrget
      002DAB FA               [12] 2913 	mov	r2,a
      002DAC 74 07            [12] 2914 	mov	a,#0x07
      002DAE 2D               [12] 2915 	add	a,r5
      002DAF F9               [12] 2916 	mov	r1,a
      002DB0 74 00            [12] 2917 	mov	a,#0x00
      002DB2 3E               [12] 2918 	addc	a,r6
      002DB3 FB               [12] 2919 	mov	r3,a
      002DB4 8F 04            [24] 2920 	mov	ar4,r7
      002DB6 89 82            [24] 2921 	mov	dpl,r1
      002DB8 8B 83            [24] 2922 	mov	dph,r3
      002DBA 8C F0            [24] 2923 	mov	b,r4
      002DBC 12 5B 6D         [24] 2924 	lcall	__gptrget
      002DBF F9               [12] 2925 	mov	r1,a
      002DC0 A3               [24] 2926 	inc	dptr
      002DC1 12 5B 6D         [24] 2927 	lcall	__gptrget
      002DC4 FB               [12] 2928 	mov	r3,a
      002DC5 90 03 CB         [24] 2929 	mov	dptr,#_osal_set_event_PARM_2
      002DC8 E9               [12] 2930 	mov	a,r1
      002DC9 F0               [24] 2931 	movx	@dptr,a
      002DCA EB               [12] 2932 	mov	a,r3
      002DCB A3               [24] 2933 	inc	dptr
      002DCC F0               [24] 2934 	movx	@dptr,a
      002DCD 8A 82            [24] 2935 	mov	dpl,r2
      002DCF C0 07            [24] 2936 	push	ar7
      002DD1 C0 06            [24] 2937 	push	ar6
      002DD3 C0 05            [24] 2938 	push	ar5
      002DD5 12 19 D8         [24] 2939 	lcall	_osal_set_event
      002DD8 D0 05            [24] 2940 	pop	ar5
      002DDA D0 06            [24] 2941 	pop	ar6
      002DDC D0 07            [24] 2942 	pop	ar7
                                   2943 ;	../osal/common/OSAL_Timers.c:545: srchTimer->timeout.time32 = srchTimer->reloadTimeout;
      002DDE 74 03            [12] 2944 	mov	a,#0x03
      002DE0 2D               [12] 2945 	add	a,r5
      002DE1 FA               [12] 2946 	mov	r2,a
      002DE2 74 00            [12] 2947 	mov	a,#0x00
      002DE4 3E               [12] 2948 	addc	a,r6
      002DE5 FB               [12] 2949 	mov	r3,a
      002DE6 8F 04            [24] 2950 	mov	ar4,r7
      002DE8 74 0A            [12] 2951 	mov	a,#0x0A
      002DEA 2D               [12] 2952 	add	a,r5
      002DEB FD               [12] 2953 	mov	r5,a
      002DEC 74 00            [12] 2954 	mov	a,#0x00
      002DEE 3E               [12] 2955 	addc	a,r6
      002DEF FE               [12] 2956 	mov	r6,a
      002DF0 8D 82            [24] 2957 	mov	dpl,r5
      002DF2 8E 83            [24] 2958 	mov	dph,r6
      002DF4 8F F0            [24] 2959 	mov	b,r7
      002DF6 12 5B 6D         [24] 2960 	lcall	__gptrget
      002DF9 F9               [12] 2961 	mov	r1,a
      002DFA A3               [24] 2962 	inc	dptr
      002DFB 12 5B 6D         [24] 2963 	lcall	__gptrget
      002DFE FD               [12] 2964 	mov	r5,a
      002DFF A3               [24] 2965 	inc	dptr
      002E00 12 5B 6D         [24] 2966 	lcall	__gptrget
      002E03 FE               [12] 2967 	mov	r6,a
      002E04 A3               [24] 2968 	inc	dptr
      002E05 12 5B 6D         [24] 2969 	lcall	__gptrget
      002E08 FF               [12] 2970 	mov	r7,a
      002E09 8A 82            [24] 2971 	mov	dpl,r2
      002E0B 8B 83            [24] 2972 	mov	dph,r3
      002E0D 8C F0            [24] 2973 	mov	b,r4
      002E0F E9               [12] 2974 	mov	a,r1
      002E10 12 5A 01         [24] 2975 	lcall	__gptrput
      002E13 A3               [24] 2976 	inc	dptr
      002E14 ED               [12] 2977 	mov	a,r5
      002E15 12 5A 01         [24] 2978 	lcall	__gptrput
      002E18 A3               [24] 2979 	inc	dptr
      002E19 EE               [12] 2980 	mov	a,r6
      002E1A 12 5A 01         [24] 2981 	lcall	__gptrput
      002E1D A3               [24] 2982 	inc	dptr
      002E1E EF               [12] 2983 	mov	a,r7
      002E1F 12 5A 01         [24] 2984 	lcall	__gptrput
      002E22                       2985 00115$:
                                   2986 ;	../osal/common/OSAL_Timers.c:549: if ( ((srchTimer->timeout.time16[0] == 0) && (srchTimer->timeout.time16[1] == 0)) ||
      002E22 90 10 6A         [24] 2987 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002E25 E0               [24] 2988 	movx	a,@dptr
      002E26 FD               [12] 2989 	mov	r5,a
      002E27 A3               [24] 2990 	inc	dptr
      002E28 E0               [24] 2991 	movx	a,@dptr
      002E29 FE               [12] 2992 	mov	r6,a
      002E2A A3               [24] 2993 	inc	dptr
      002E2B E0               [24] 2994 	movx	a,@dptr
      002E2C FF               [12] 2995 	mov	r7,a
      002E2D 74 03            [12] 2996 	mov	a,#0x03
      002E2F 2D               [12] 2997 	add	a,r5
      002E30 FD               [12] 2998 	mov	r5,a
      002E31 74 00            [12] 2999 	mov	a,#0x00
      002E33 3E               [12] 3000 	addc	a,r6
      002E34 FE               [12] 3001 	mov	r6,a
      002E35 8D 82            [24] 3002 	mov	dpl,r5
      002E37 8E 83            [24] 3003 	mov	dph,r6
      002E39 8F F0            [24] 3004 	mov	b,r7
      002E3B 12 5B 6D         [24] 3005 	lcall	__gptrget
      002E3E FD               [12] 3006 	mov	r5,a
      002E3F A3               [24] 3007 	inc	dptr
      002E40 12 5B 6D         [24] 3008 	lcall	__gptrget
      002E43 FE               [12] 3009 	mov	r6,a
      002E44 ED               [12] 3010 	mov	a,r5
      002E45 4E               [12] 3011 	orl	a,r6
      002E46 60 03            [24] 3012 	jz	00201$
      002E48 02 2E 74         [24] 3013 	ljmp	00126$
      002E4B                       3014 00201$:
      002E4B 90 10 6A         [24] 3015 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002E4E E0               [24] 3016 	movx	a,@dptr
      002E4F FD               [12] 3017 	mov	r5,a
      002E50 A3               [24] 3018 	inc	dptr
      002E51 E0               [24] 3019 	movx	a,@dptr
      002E52 FE               [12] 3020 	mov	r6,a
      002E53 A3               [24] 3021 	inc	dptr
      002E54 E0               [24] 3022 	movx	a,@dptr
      002E55 FF               [12] 3023 	mov	r7,a
      002E56 74 05            [12] 3024 	mov	a,#0x05
      002E58 2D               [12] 3025 	add	a,r5
      002E59 FD               [12] 3026 	mov	r5,a
      002E5A 74 00            [12] 3027 	mov	a,#0x00
      002E5C 3E               [12] 3028 	addc	a,r6
      002E5D FE               [12] 3029 	mov	r6,a
      002E5E 8D 82            [24] 3030 	mov	dpl,r5
      002E60 8E 83            [24] 3031 	mov	dph,r6
      002E62 8F F0            [24] 3032 	mov	b,r7
      002E64 12 5B 6D         [24] 3033 	lcall	__gptrget
      002E67 FD               [12] 3034 	mov	r5,a
      002E68 A3               [24] 3035 	inc	dptr
      002E69 12 5B 6D         [24] 3036 	lcall	__gptrget
      002E6C FE               [12] 3037 	mov	r6,a
      002E6D ED               [12] 3038 	mov	a,r5
      002E6E 4E               [12] 3039 	orl	a,r6
      002E6F 70 03            [24] 3040 	jnz	00202$
      002E71 02 2E 9D         [24] 3041 	ljmp	00122$
      002E74                       3042 00202$:
      002E74                       3043 00126$:
                                   3044 ;	../osal/common/OSAL_Timers.c:550: (srchTimer->event_flag == 0) )
      002E74 90 10 6A         [24] 3045 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002E77 E0               [24] 3046 	movx	a,@dptr
      002E78 FD               [12] 3047 	mov	r5,a
      002E79 A3               [24] 3048 	inc	dptr
      002E7A E0               [24] 3049 	movx	a,@dptr
      002E7B FE               [12] 3050 	mov	r6,a
      002E7C A3               [24] 3051 	inc	dptr
      002E7D E0               [24] 3052 	movx	a,@dptr
      002E7E FF               [12] 3053 	mov	r7,a
      002E7F 74 07            [12] 3054 	mov	a,#0x07
      002E81 2D               [12] 3055 	add	a,r5
      002E82 FD               [12] 3056 	mov	r5,a
      002E83 74 00            [12] 3057 	mov	a,#0x00
      002E85 3E               [12] 3058 	addc	a,r6
      002E86 FE               [12] 3059 	mov	r6,a
      002E87 8D 82            [24] 3060 	mov	dpl,r5
      002E89 8E 83            [24] 3061 	mov	dph,r6
      002E8B 8F F0            [24] 3062 	mov	b,r7
      002E8D 12 5B 6D         [24] 3063 	lcall	__gptrget
      002E90 FD               [12] 3064 	mov	r5,a
      002E91 A3               [24] 3065 	inc	dptr
      002E92 12 5B 6D         [24] 3066 	lcall	__gptrget
      002E95 FE               [12] 3067 	mov	r6,a
      002E96 ED               [12] 3068 	mov	a,r5
      002E97 4E               [12] 3069 	orl	a,r6
      002E98 60 03            [24] 3070 	jz	00203$
      002E9A 02 2F 52         [24] 3071 	ljmp	00123$
      002E9D                       3072 00203$:
      002E9D                       3073 00122$:
                                   3074 ;	../osal/common/OSAL_Timers.c:561: if ( prevTimer == NULL )
      002E9D 90 10 6D         [24] 3075 	mov	dptr,#_osalTimerUpdate_prevTimer_1_131
      002EA0 E0               [24] 3076 	movx	a,@dptr
      002EA1 FD               [12] 3077 	mov	r5,a
      002EA2 A3               [24] 3078 	inc	dptr
      002EA3 E0               [24] 3079 	movx	a,@dptr
      002EA4 FE               [12] 3080 	mov	r6,a
      002EA5 A3               [24] 3081 	inc	dptr
      002EA6 E0               [24] 3082 	movx	a,@dptr
      002EA7 FF               [12] 3083 	mov	r7,a
      002EA8 ED               [12] 3084 	mov	a,r5
      002EA9 4E               [12] 3085 	orl	a,r6
      002EAA 60 03            [24] 3086 	jz	00204$
      002EAC 02 2E DC         [24] 3087 	ljmp	00120$
      002EAF                       3088 00204$:
                                   3089 ;	../osal/common/OSAL_Timers.c:563: timerHead = srchTimer->next;
      002EAF 90 10 6A         [24] 3090 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002EB2 E0               [24] 3091 	movx	a,@dptr
      002EB3 FD               [12] 3092 	mov	r5,a
      002EB4 A3               [24] 3093 	inc	dptr
      002EB5 E0               [24] 3094 	movx	a,@dptr
      002EB6 FE               [12] 3095 	mov	r6,a
      002EB7 A3               [24] 3096 	inc	dptr
      002EB8 E0               [24] 3097 	movx	a,@dptr
      002EB9 FF               [12] 3098 	mov	r7,a
      002EBA 8D 82            [24] 3099 	mov	dpl,r5
      002EBC 8E 83            [24] 3100 	mov	dph,r6
      002EBE 8F F0            [24] 3101 	mov	b,r7
      002EC0 12 5B 6D         [24] 3102 	lcall	__gptrget
      002EC3 FD               [12] 3103 	mov	r5,a
      002EC4 A3               [24] 3104 	inc	dptr
      002EC5 12 5B 6D         [24] 3105 	lcall	__gptrget
      002EC8 FE               [12] 3106 	mov	r6,a
      002EC9 A3               [24] 3107 	inc	dptr
      002ECA 12 5B 6D         [24] 3108 	lcall	__gptrget
      002ECD FF               [12] 3109 	mov	r7,a
      002ECE 90 10 20         [24] 3110 	mov	dptr,#_timerHead
      002ED1 ED               [12] 3111 	mov	a,r5
      002ED2 F0               [24] 3112 	movx	@dptr,a
      002ED3 EE               [12] 3113 	mov	a,r6
      002ED4 A3               [24] 3114 	inc	dptr
      002ED5 F0               [24] 3115 	movx	@dptr,a
      002ED6 EF               [12] 3116 	mov	a,r7
      002ED7 A3               [24] 3117 	inc	dptr
      002ED8 F0               [24] 3118 	movx	@dptr,a
      002ED9 02 2F 1A         [24] 3119 	ljmp	00121$
      002EDC                       3120 00120$:
                                   3121 ;	../osal/common/OSAL_Timers.c:568: prevTimer->next = srchTimer->next;
      002EDC 90 10 6D         [24] 3122 	mov	dptr,#_osalTimerUpdate_prevTimer_1_131
      002EDF E0               [24] 3123 	movx	a,@dptr
      002EE0 FD               [12] 3124 	mov	r5,a
      002EE1 A3               [24] 3125 	inc	dptr
      002EE2 E0               [24] 3126 	movx	a,@dptr
      002EE3 FE               [12] 3127 	mov	r6,a
      002EE4 A3               [24] 3128 	inc	dptr
      002EE5 E0               [24] 3129 	movx	a,@dptr
      002EE6 FF               [12] 3130 	mov	r7,a
      002EE7 90 10 6A         [24] 3131 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002EEA E0               [24] 3132 	movx	a,@dptr
      002EEB FA               [12] 3133 	mov	r2,a
      002EEC A3               [24] 3134 	inc	dptr
      002EED E0               [24] 3135 	movx	a,@dptr
      002EEE FB               [12] 3136 	mov	r3,a
      002EEF A3               [24] 3137 	inc	dptr
      002EF0 E0               [24] 3138 	movx	a,@dptr
      002EF1 FC               [12] 3139 	mov	r4,a
      002EF2 8A 82            [24] 3140 	mov	dpl,r2
      002EF4 8B 83            [24] 3141 	mov	dph,r3
      002EF6 8C F0            [24] 3142 	mov	b,r4
      002EF8 12 5B 6D         [24] 3143 	lcall	__gptrget
      002EFB FA               [12] 3144 	mov	r2,a
      002EFC A3               [24] 3145 	inc	dptr
      002EFD 12 5B 6D         [24] 3146 	lcall	__gptrget
      002F00 FB               [12] 3147 	mov	r3,a
      002F01 A3               [24] 3148 	inc	dptr
      002F02 12 5B 6D         [24] 3149 	lcall	__gptrget
      002F05 FC               [12] 3150 	mov	r4,a
      002F06 8D 82            [24] 3151 	mov	dpl,r5
      002F08 8E 83            [24] 3152 	mov	dph,r6
      002F0A 8F F0            [24] 3153 	mov	b,r7
      002F0C EA               [12] 3154 	mov	a,r2
      002F0D 12 5A 01         [24] 3155 	lcall	__gptrput
      002F10 A3               [24] 3156 	inc	dptr
      002F11 EB               [12] 3157 	mov	a,r3
      002F12 12 5A 01         [24] 3158 	lcall	__gptrput
      002F15 A3               [24] 3159 	inc	dptr
      002F16 EC               [12] 3160 	mov	a,r4
      002F17 12 5A 01         [24] 3161 	lcall	__gptrput
      002F1A                       3162 00121$:
                                   3163 ;	../osal/common/OSAL_Timers.c:572: freeTimer = srchTimer;
      002F1A 90 10 6A         [24] 3164 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002F1D E0               [24] 3165 	movx	a,@dptr
      002F1E FD               [12] 3166 	mov	r5,a
      002F1F A3               [24] 3167 	inc	dptr
      002F20 E0               [24] 3168 	movx	a,@dptr
      002F21 FE               [12] 3169 	mov	r6,a
      002F22 A3               [24] 3170 	inc	dptr
      002F23 E0               [24] 3171 	movx	a,@dptr
      002F24 FF               [12] 3172 	mov	r7,a
      002F25 90 10 74         [24] 3173 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002F28 ED               [12] 3174 	mov	a,r5
      002F29 F0               [24] 3175 	movx	@dptr,a
      002F2A EE               [12] 3176 	mov	a,r6
      002F2B A3               [24] 3177 	inc	dptr
      002F2C F0               [24] 3178 	movx	@dptr,a
      002F2D EF               [12] 3179 	mov	a,r7
      002F2E A3               [24] 3180 	inc	dptr
      002F2F F0               [24] 3181 	movx	@dptr,a
                                   3182 ;	../osal/common/OSAL_Timers.c:575: srchTimer = srchTimer->next;
      002F30 8D 82            [24] 3183 	mov	dpl,r5
      002F32 8E 83            [24] 3184 	mov	dph,r6
      002F34 8F F0            [24] 3185 	mov	b,r7
      002F36 12 5B 6D         [24] 3186 	lcall	__gptrget
      002F39 FD               [12] 3187 	mov	r5,a
      002F3A A3               [24] 3188 	inc	dptr
      002F3B 12 5B 6D         [24] 3189 	lcall	__gptrget
      002F3E FE               [12] 3190 	mov	r6,a
      002F3F A3               [24] 3191 	inc	dptr
      002F40 12 5B 6D         [24] 3192 	lcall	__gptrget
      002F43 FF               [12] 3193 	mov	r7,a
      002F44 90 10 6A         [24] 3194 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002F47 ED               [12] 3195 	mov	a,r5
      002F48 F0               [24] 3196 	movx	@dptr,a
      002F49 EE               [12] 3197 	mov	a,r6
      002F4A A3               [24] 3198 	inc	dptr
      002F4B F0               [24] 3199 	movx	@dptr,a
      002F4C EF               [12] 3200 	mov	a,r7
      002F4D A3               [24] 3201 	inc	dptr
      002F4E F0               [24] 3202 	movx	@dptr,a
      002F4F 02 2F 87         [24] 3203 	ljmp	00124$
      002F52                       3204 00123$:
                                   3205 ;	../osal/common/OSAL_Timers.c:580: prevTimer = srchTimer;
      002F52 90 10 6A         [24] 3206 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002F55 E0               [24] 3207 	movx	a,@dptr
      002F56 FD               [12] 3208 	mov	r5,a
      002F57 A3               [24] 3209 	inc	dptr
      002F58 E0               [24] 3210 	movx	a,@dptr
      002F59 FE               [12] 3211 	mov	r6,a
      002F5A A3               [24] 3212 	inc	dptr
      002F5B E0               [24] 3213 	movx	a,@dptr
      002F5C FF               [12] 3214 	mov	r7,a
      002F5D 90 10 6D         [24] 3215 	mov	dptr,#_osalTimerUpdate_prevTimer_1_131
      002F60 ED               [12] 3216 	mov	a,r5
      002F61 F0               [24] 3217 	movx	@dptr,a
      002F62 EE               [12] 3218 	mov	a,r6
      002F63 A3               [24] 3219 	inc	dptr
      002F64 F0               [24] 3220 	movx	@dptr,a
      002F65 EF               [12] 3221 	mov	a,r7
      002F66 A3               [24] 3222 	inc	dptr
      002F67 F0               [24] 3223 	movx	@dptr,a
                                   3224 ;	../osal/common/OSAL_Timers.c:581: srchTimer = srchTimer->next;
      002F68 8D 82            [24] 3225 	mov	dpl,r5
      002F6A 8E 83            [24] 3226 	mov	dph,r6
      002F6C 8F F0            [24] 3227 	mov	b,r7
      002F6E 12 5B 6D         [24] 3228 	lcall	__gptrget
      002F71 FD               [12] 3229 	mov	r5,a
      002F72 A3               [24] 3230 	inc	dptr
      002F73 12 5B 6D         [24] 3231 	lcall	__gptrget
      002F76 FE               [12] 3232 	mov	r6,a
      002F77 A3               [24] 3233 	inc	dptr
      002F78 12 5B 6D         [24] 3234 	lcall	__gptrget
      002F7B FF               [12] 3235 	mov	r7,a
      002F7C 90 10 6A         [24] 3236 	mov	dptr,#_osalTimerUpdate_srchTimer_1_131
      002F7F ED               [12] 3237 	mov	a,r5
      002F80 F0               [24] 3238 	movx	@dptr,a
      002F81 EE               [12] 3239 	mov	a,r6
      002F82 A3               [24] 3240 	inc	dptr
      002F83 F0               [24] 3241 	movx	@dptr,a
      002F84 EF               [12] 3242 	mov	a,r7
      002F85 A3               [24] 3243 	inc	dptr
      002F86 F0               [24] 3244 	movx	@dptr,a
      002F87                       3245 00124$:
                                   3246 ;	../osal/common/OSAL_Timers.c:586: if ( freeTimer )
      002F87 90 10 74         [24] 3247 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002F8A E0               [24] 3248 	movx	a,@dptr
      002F8B FD               [12] 3249 	mov	r5,a
      002F8C A3               [24] 3250 	inc	dptr
      002F8D E0               [24] 3251 	movx	a,@dptr
      002F8E FE               [12] 3252 	mov	r6,a
      002F8F A3               [24] 3253 	inc	dptr
      002F90 E0               [24] 3254 	movx	a,@dptr
      002F91 FF               [12] 3255 	mov	r7,a
      002F92 ED               [12] 3256 	mov	a,r5
      002F93 4E               [12] 3257 	orl	a,r6
      002F94 70 03            [24] 3258 	jnz	00205$
      002F96 02 2A 8F         [24] 3259 	ljmp	00132$
      002F99                       3260 00205$:
                                   3261 ;	../osal/common/OSAL_Timers.c:590: if ( (freeTimer->timeout.time16[0] == 0) && (freeTimer->timeout.time16[1] == 0) )
      002F99 90 10 74         [24] 3262 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002F9C E0               [24] 3263 	movx	a,@dptr
      002F9D FD               [12] 3264 	mov	r5,a
      002F9E A3               [24] 3265 	inc	dptr
      002F9F E0               [24] 3266 	movx	a,@dptr
      002FA0 FE               [12] 3267 	mov	r6,a
      002FA1 A3               [24] 3268 	inc	dptr
      002FA2 E0               [24] 3269 	movx	a,@dptr
      002FA3 FF               [12] 3270 	mov	r7,a
      002FA4 74 03            [12] 3271 	mov	a,#0x03
      002FA6 2D               [12] 3272 	add	a,r5
      002FA7 FD               [12] 3273 	mov	r5,a
      002FA8 74 00            [12] 3274 	mov	a,#0x00
      002FAA 3E               [12] 3275 	addc	a,r6
      002FAB FE               [12] 3276 	mov	r6,a
      002FAC 8D 82            [24] 3277 	mov	dpl,r5
      002FAE 8E 83            [24] 3278 	mov	dph,r6
      002FB0 8F F0            [24] 3279 	mov	b,r7
      002FB2 12 5B 6D         [24] 3280 	lcall	__gptrget
      002FB5 FD               [12] 3281 	mov	r5,a
      002FB6 A3               [24] 3282 	inc	dptr
      002FB7 12 5B 6D         [24] 3283 	lcall	__gptrget
      002FBA FE               [12] 3284 	mov	r6,a
      002FBB ED               [12] 3285 	mov	a,r5
      002FBC 4E               [12] 3286 	orl	a,r6
      002FBD 60 03            [24] 3287 	jz	00206$
      002FBF 02 30 2E         [24] 3288 	ljmp	00128$
      002FC2                       3289 00206$:
      002FC2 90 10 74         [24] 3290 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002FC5 E0               [24] 3291 	movx	a,@dptr
      002FC6 FD               [12] 3292 	mov	r5,a
      002FC7 A3               [24] 3293 	inc	dptr
      002FC8 E0               [24] 3294 	movx	a,@dptr
      002FC9 FE               [12] 3295 	mov	r6,a
      002FCA A3               [24] 3296 	inc	dptr
      002FCB E0               [24] 3297 	movx	a,@dptr
      002FCC FF               [12] 3298 	mov	r7,a
      002FCD 74 05            [12] 3299 	mov	a,#0x05
      002FCF 2D               [12] 3300 	add	a,r5
      002FD0 FD               [12] 3301 	mov	r5,a
      002FD1 74 00            [12] 3302 	mov	a,#0x00
      002FD3 3E               [12] 3303 	addc	a,r6
      002FD4 FE               [12] 3304 	mov	r6,a
      002FD5 8D 82            [24] 3305 	mov	dpl,r5
      002FD7 8E 83            [24] 3306 	mov	dph,r6
      002FD9 8F F0            [24] 3307 	mov	b,r7
      002FDB 12 5B 6D         [24] 3308 	lcall	__gptrget
      002FDE FD               [12] 3309 	mov	r5,a
      002FDF A3               [24] 3310 	inc	dptr
      002FE0 12 5B 6D         [24] 3311 	lcall	__gptrget
      002FE3 FE               [12] 3312 	mov	r6,a
      002FE4 ED               [12] 3313 	mov	a,r5
      002FE5 4E               [12] 3314 	orl	a,r6
      002FE6 60 03            [24] 3315 	jz	00207$
      002FE8 02 30 2E         [24] 3316 	ljmp	00128$
      002FEB                       3317 00207$:
                                   3318 ;	../osal/common/OSAL_Timers.c:602: osal_set_event( freeTimer->task_id, freeTimer->event_flag );
      002FEB 90 10 74         [24] 3319 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      002FEE E0               [24] 3320 	movx	a,@dptr
      002FEF FD               [12] 3321 	mov	r5,a
      002FF0 A3               [24] 3322 	inc	dptr
      002FF1 E0               [24] 3323 	movx	a,@dptr
      002FF2 FE               [12] 3324 	mov	r6,a
      002FF3 A3               [24] 3325 	inc	dptr
      002FF4 E0               [24] 3326 	movx	a,@dptr
      002FF5 FF               [12] 3327 	mov	r7,a
      002FF6 74 09            [12] 3328 	mov	a,#0x09
      002FF8 2D               [12] 3329 	add	a,r5
      002FF9 FA               [12] 3330 	mov	r2,a
      002FFA 74 00            [12] 3331 	mov	a,#0x00
      002FFC 3E               [12] 3332 	addc	a,r6
      002FFD FB               [12] 3333 	mov	r3,a
      002FFE 8F 04            [24] 3334 	mov	ar4,r7
      003000 8A 82            [24] 3335 	mov	dpl,r2
      003002 8B 83            [24] 3336 	mov	dph,r3
      003004 8C F0            [24] 3337 	mov	b,r4
      003006 12 5B 6D         [24] 3338 	lcall	__gptrget
      003009 FA               [12] 3339 	mov	r2,a
      00300A 74 07            [12] 3340 	mov	a,#0x07
      00300C 2D               [12] 3341 	add	a,r5
      00300D FD               [12] 3342 	mov	r5,a
      00300E 74 00            [12] 3343 	mov	a,#0x00
      003010 3E               [12] 3344 	addc	a,r6
      003011 FE               [12] 3345 	mov	r6,a
      003012 8D 82            [24] 3346 	mov	dpl,r5
      003014 8E 83            [24] 3347 	mov	dph,r6
      003016 8F F0            [24] 3348 	mov	b,r7
      003018 12 5B 6D         [24] 3349 	lcall	__gptrget
      00301B FD               [12] 3350 	mov	r5,a
      00301C A3               [24] 3351 	inc	dptr
      00301D 12 5B 6D         [24] 3352 	lcall	__gptrget
      003020 FE               [12] 3353 	mov	r6,a
      003021 90 03 CB         [24] 3354 	mov	dptr,#_osal_set_event_PARM_2
      003024 ED               [12] 3355 	mov	a,r5
      003025 F0               [24] 3356 	movx	@dptr,a
      003026 EE               [12] 3357 	mov	a,r6
      003027 A3               [24] 3358 	inc	dptr
      003028 F0               [24] 3359 	movx	@dptr,a
      003029 8A 82            [24] 3360 	mov	dpl,r2
      00302B 12 19 D8         [24] 3361 	lcall	_osal_set_event
      00302E                       3362 00128$:
                                   3363 ;	../osal/common/OSAL_Timers.c:604: osal_mem_free( freeTimer );
      00302E 90 10 74         [24] 3364 	mov	dptr,#_osalTimerUpdate_freeTimer_3_133
      003031 E0               [24] 3365 	movx	a,@dptr
      003032 FD               [12] 3366 	mov	r5,a
      003033 A3               [24] 3367 	inc	dptr
      003034 E0               [24] 3368 	movx	a,@dptr
      003035 FE               [12] 3369 	mov	r6,a
      003036 A3               [24] 3370 	inc	dptr
      003037 E0               [24] 3371 	movx	a,@dptr
      003038 FF               [12] 3372 	mov	r7,a
      003039 8D 82            [24] 3373 	mov	dpl,r5
      00303B 8E 83            [24] 3374 	mov	dph,r6
      00303D 8F F0            [24] 3375 	mov	b,r7
      00303F 12 23 76         [24] 3376 	lcall	_osal_mem_free
      003042 02 2A 8F         [24] 3377 	ljmp	00132$
      003045                       3378 00137$:
      003045 22               [24] 3379 	ret
                                   3380 ;------------------------------------------------------------
                                   3381 ;Allocation info for local variables in function 'osal_GetSystemClock'
                                   3382 ;------------------------------------------------------------
                                   3383 ;	../osal/common/OSAL_Timers.c:689: uint32 osal_GetSystemClock( void )
                                   3384 ;	-----------------------------------------
                                   3385 ;	 function osal_GetSystemClock
                                   3386 ;	-----------------------------------------
      003046                       3387 _osal_GetSystemClock:
                                   3388 ;	../osal/common/OSAL_Timers.c:691: return ( osal_systemClock );
      003046 90 10 23         [24] 3389 	mov	dptr,#_osal_systemClock
      003049 E0               [24] 3390 	movx	a,@dptr
      00304A FC               [12] 3391 	mov	r4,a
      00304B A3               [24] 3392 	inc	dptr
      00304C E0               [24] 3393 	movx	a,@dptr
      00304D FD               [12] 3394 	mov	r5,a
      00304E A3               [24] 3395 	inc	dptr
      00304F E0               [24] 3396 	movx	a,@dptr
      003050 FE               [12] 3397 	mov	r6,a
      003051 A3               [24] 3398 	inc	dptr
      003052 E0               [24] 3399 	movx	a,@dptr
      003053 FF               [12] 3400 	mov	r7,a
      003054 8C 82            [24] 3401 	mov	dpl,r4
      003056 8D 83            [24] 3402 	mov	dph,r5
      003058 8E F0            [24] 3403 	mov	b,r6
      00305A EF               [12] 3404 	mov	a,r7
      00305B                       3405 00101$:
      00305B 22               [24] 3406 	ret
                                   3407 	.area CSEG    (CODE)
                                   3408 	.area CONST   (CODE)
                                   3409 	.area CABS    (ABS,CODE)
