                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:10:04 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module OSAL_ClockBLE
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _ll_McuPrecisionCount
                                     13 	.globl _osalTimerUpdate
                                     14 	.globl _MODE
                                     15 	.globl _RE
                                     16 	.globl _SLAVE
                                     17 	.globl _FE
                                     18 	.globl _ERR
                                     19 	.globl _RX_BYTE
                                     20 	.globl _TX_BYTE
                                     21 	.globl _ACTIVE
                                     22 	.globl _B_7
                                     23 	.globl _B_6
                                     24 	.globl _B_5
                                     25 	.globl _B_4
                                     26 	.globl _B_3
                                     27 	.globl _B_2
                                     28 	.globl _B_1
                                     29 	.globl _B_0
                                     30 	.globl _WDTIF
                                     31 	.globl _P1IF
                                     32 	.globl _UTX1IF
                                     33 	.globl _UTX0IF
                                     34 	.globl _P2IF
                                     35 	.globl _ACC_7
                                     36 	.globl _ACC_6
                                     37 	.globl _ACC_5
                                     38 	.globl _ACC_4
                                     39 	.globl _ACC_3
                                     40 	.globl _ACC_2
                                     41 	.globl _ACC_1
                                     42 	.globl _ACC_0
                                     43 	.globl _OVFIM
                                     44 	.globl _T4CH1IF
                                     45 	.globl _T4CH0IF
                                     46 	.globl _T4OVFIF
                                     47 	.globl _T3CH1IF
                                     48 	.globl _T3CH0IF
                                     49 	.globl _T3OVFIF
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _STIF
                                     59 	.globl _P0IF
                                     60 	.globl _T4IF
                                     61 	.globl _T3IF
                                     62 	.globl _T2IF
                                     63 	.globl _T1IF
                                     64 	.globl _DMAIF
                                     65 	.globl _P0IE
                                     66 	.globl _T4IE
                                     67 	.globl _T3IE
                                     68 	.globl _T2IE
                                     69 	.globl _T1IE
                                     70 	.globl _DMAIE
                                     71 	.globl _EA
                                     72 	.globl _STIE
                                     73 	.globl _ENCIE
                                     74 	.globl _URX1IE
                                     75 	.globl _URX0IE
                                     76 	.globl _ADCIE
                                     77 	.globl _RFERRIE
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _ENCIF_1
                                     87 	.globl _ENCIF_0
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _URX1IF
                                     97 	.globl _ADCIF
                                     98 	.globl _URX0IF
                                     99 	.globl _IT1
                                    100 	.globl _RFERRIF
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _P2DIR
                                    111 	.globl _P1DIR
                                    112 	.globl _P0DIR
                                    113 	.globl _U1GCR
                                    114 	.globl _U1UCR
                                    115 	.globl _U1BAUD
                                    116 	.globl _U1DBUF
                                    117 	.globl _U1CSR
                                    118 	.globl _P2INP
                                    119 	.globl _P1INP
                                    120 	.globl _P2SEL
                                    121 	.globl _P1SEL
                                    122 	.globl _P0SEL
                                    123 	.globl _APCFG
                                    124 	.globl _PERCFG
                                    125 	.globl _B
                                    126 	.globl _T4CC1
                                    127 	.globl _T4CCTL1
                                    128 	.globl _T4CC0
                                    129 	.globl _T4CCTL0
                                    130 	.globl _T4CTL
                                    131 	.globl _T4CNT
                                    132 	.globl _RFIRQF0
                                    133 	.globl _IRCON2
                                    134 	.globl _T1CCTL2
                                    135 	.globl _T1CCTL1
                                    136 	.globl _T1CCTL0
                                    137 	.globl _T1CTL
                                    138 	.globl _T1CNTH
                                    139 	.globl _T1CNTL
                                    140 	.globl _RFST
                                    141 	.globl _ACC
                                    142 	.globl _T1CC2H
                                    143 	.globl _T1CC2L
                                    144 	.globl _T1CC1H
                                    145 	.globl _T1CC1L
                                    146 	.globl _T1CC0H
                                    147 	.globl _T1CC0L
                                    148 	.globl _RFD
                                    149 	.globl _TIMIF
                                    150 	.globl _DMAREQ
                                    151 	.globl _DMAARM
                                    152 	.globl _DMA0CFGH
                                    153 	.globl _DMA0CFGL
                                    154 	.globl _DMA1CFGH
                                    155 	.globl _DMA1CFGL
                                    156 	.globl _DMAIRQ
                                    157 	.globl _PSW
                                    158 	.globl _T3CC1
                                    159 	.globl _T3CCTL1
                                    160 	.globl _T3CC0
                                    161 	.globl _T3CCTL0
                                    162 	.globl _T3CTL
                                    163 	.globl _T3CNT
                                    164 	.globl _WDCTL
                                    165 	.globl _MEMCTR
                                    166 	.globl _CLKCONCMD
                                    167 	.globl _U0GCR
                                    168 	.globl _U0UCR
                                    169 	.globl _T2MSEL
                                    170 	.globl _U0BAUD
                                    171 	.globl _U0DBUF
                                    172 	.globl _IRCON
                                    173 	.globl _RFERRF
                                    174 	.globl _SLEEPCMD
                                    175 	.globl _RNDH
                                    176 	.globl _RNDL
                                    177 	.globl _ADCH
                                    178 	.globl _ADCL
                                    179 	.globl _IP1
                                    180 	.globl _IEN1
                                    181 	.globl _ADCCON3
                                    182 	.globl _ADCCON2
                                    183 	.globl _ADCCON1
                                    184 	.globl _ENCCS
                                    185 	.globl _ENCDO
                                    186 	.globl _ENCDI
                                    187 	.globl _T1STAT
                                    188 	.globl _PMUX
                                    189 	.globl _STLOAD
                                    190 	.globl _P2IEN
                                    191 	.globl _P0IEN
                                    192 	.globl _IP0
                                    193 	.globl _IEN0
                                    194 	.globl _T2IRQM
                                    195 	.globl _T2MOVF2
                                    196 	.globl _T2MOVF1
                                    197 	.globl _T2MOVF0
                                    198 	.globl _T2M1
                                    199 	.globl _T2M0
                                    200 	.globl _T2IRQF
                                    201 	.globl _P2
                                    202 	.globl _FMAP
                                    203 	.globl _PSBANK
                                    204 	.globl _CLKCONSTA
                                    205 	.globl _SLEEPSTA
                                    206 	.globl _T2EVTCFG
                                    207 	.globl _S1CON
                                    208 	.globl _IEN2
                                    209 	.globl _S0CON
                                    210 	.globl _ST2
                                    211 	.globl _ST1
                                    212 	.globl _ST0
                                    213 	.globl _T2CTRL
                                    214 	.globl __XPAGE
                                    215 	.globl _MPAGE
                                    216 	.globl _DPS
                                    217 	.globl _RFIRQF1
                                    218 	.globl _P1
                                    219 	.globl _P0INP
                                    220 	.globl _P1IEN
                                    221 	.globl _PICTL
                                    222 	.globl _P2IFG
                                    223 	.globl _P1IFG
                                    224 	.globl _P0IFG
                                    225 	.globl _TCON
                                    226 	.globl _PCON
                                    227 	.globl _U0CSR
                                    228 	.globl _DPH1
                                    229 	.globl _DPL1
                                    230 	.globl _DPH0
                                    231 	.globl _DPL0
                                    232 	.globl _SP
                                    233 	.globl _P0
                                    234 	.globl _osal_ConvertUTCTime_PARM_2
                                    235 	.globl _OSAL_timeSeconds
                                    236 	.globl _TXFILTCFG
                                    237 	.globl _RFC_OBS_CTRL2
                                    238 	.globl _RFC_OBS_CTRL1
                                    239 	.globl _RFC_OBS_CTRL0
                                    240 	.globl _CSPT
                                    241 	.globl _CSPZ
                                    242 	.globl _CSPY
                                    243 	.globl _CSPX
                                    244 	.globl _CSPSTAT
                                    245 	.globl _CSPCTRL
                                    246 	.globl _CSPPROG23
                                    247 	.globl _CSPPROG22
                                    248 	.globl _CSPPROG21
                                    249 	.globl _CSPPROG20
                                    250 	.globl _CSPPROG19
                                    251 	.globl _CSPPROG18
                                    252 	.globl _CSPPROG17
                                    253 	.globl _CSPPROG16
                                    254 	.globl _CSPPROG15
                                    255 	.globl _CSPPROG14
                                    256 	.globl _CSPPROG13
                                    257 	.globl _CSPPROG12
                                    258 	.globl _CSPPROG11
                                    259 	.globl _CSPPROG10
                                    260 	.globl _CSPPROG9
                                    261 	.globl _CSPPROG8
                                    262 	.globl _CSPPROG7
                                    263 	.globl _CSPPROG6
                                    264 	.globl _CSPPROG5
                                    265 	.globl _CSPPROG4
                                    266 	.globl _CSPPROG3
                                    267 	.globl _CSPPROG2
                                    268 	.globl _CSPPROG1
                                    269 	.globl _CSPPROG0
                                    270 	.globl _PTEST1
                                    271 	.globl _PTEST0
                                    272 	.globl _ATEST
                                    273 	.globl _DACTEST2
                                    274 	.globl _DACTEST1
                                    275 	.globl _DACTEST0
                                    276 	.globl _MDMTEST1
                                    277 	.globl _MDMTEST0
                                    278 	.globl _ADCTEST2
                                    279 	.globl _ADCTEST1
                                    280 	.globl _ADCTEST0
                                    281 	.globl _AGCCTRL3
                                    282 	.globl _AGCCTRL2
                                    283 	.globl _AGCCTRL1
                                    284 	.globl _AGCCTRL0
                                    285 	.globl _FSCAL3
                                    286 	.globl _FSCAL2
                                    287 	.globl _FSCAL1
                                    288 	.globl _FSCTRL
                                    289 	.globl _RXCTRL
                                    290 	.globl _FREQEST
                                    291 	.globl _MDMCTRL1
                                    292 	.globl _MDMCTRL0
                                    293 	.globl _RFRND
                                    294 	.globl _OPAMPMC
                                    295 	.globl _RFERRM
                                    296 	.globl _RFIRQM1
                                    297 	.globl _RFIRQM0
                                    298 	.globl _TXLAST_PTR
                                    299 	.globl _TXFIRST_PTR
                                    300 	.globl _RXP1_PTR
                                    301 	.globl _RXLAST_PTR
                                    302 	.globl _RXFIRST_PTR
                                    303 	.globl _TXFIFOCNT
                                    304 	.globl _RXFIFOCNT
                                    305 	.globl _RXFIRST
                                    306 	.globl _RSSISTAT
                                    307 	.globl _RSSI
                                    308 	.globl _CCACTRL1
                                    309 	.globl _CCACTRL0
                                    310 	.globl _FSMCTRL
                                    311 	.globl _FIFOPCTRL
                                    312 	.globl _FSMSTAT1
                                    313 	.globl _FSMSTAT0
                                    314 	.globl _TXCTRL
                                    315 	.globl _TXPOWER
                                    316 	.globl _FREQCTRL
                                    317 	.globl _FREQTUNE
                                    318 	.globl _RXMASKCLR
                                    319 	.globl _RXMASKSET
                                    320 	.globl _RXENABLE
                                    321 	.globl _FRMCTRL1
                                    322 	.globl _FRMCTRL0
                                    323 	.globl _SRCEXTEN2
                                    324 	.globl _SRCEXTEN1
                                    325 	.globl _SRCEXTEN0
                                    326 	.globl _SRCSHORTEN2
                                    327 	.globl _SRCSHORTEN1
                                    328 	.globl _SRCSHORTEN0
                                    329 	.globl _SRCMATCH
                                    330 	.globl _FRMFILT1
                                    331 	.globl _FRMFILT0
                                    332 	.globl _IEEE_ADDR
                                    333 	.globl _PANIDL
                                    334 	.globl _PANIDH
                                    335 	.globl _SHORTADDRL
                                    336 	.globl _SHORTADDRH
                                    337 	.globl _USBF5
                                    338 	.globl _USBF4
                                    339 	.globl _USBF3
                                    340 	.globl _USBF2
                                    341 	.globl _USBF1
                                    342 	.globl _USBF0
                                    343 	.globl _USBCNTH
                                    344 	.globl _USBCNTL
                                    345 	.globl _USBCNT0
                                    346 	.globl _USBCSOH
                                    347 	.globl _USBCSOL
                                    348 	.globl _USBMAXO
                                    349 	.globl _USBCSIH
                                    350 	.globl _USBCSIL
                                    351 	.globl _USBCS0
                                    352 	.globl _USBMAXI
                                    353 	.globl _USBCTRL
                                    354 	.globl _USBINDEX
                                    355 	.globl _USBFRMH
                                    356 	.globl _USBFRML
                                    357 	.globl _USBCIE
                                    358 	.globl _USBOIE
                                    359 	.globl _USBIIE
                                    360 	.globl _USBCIF
                                    361 	.globl _USBOIF
                                    362 	.globl _USBIIF
                                    363 	.globl _USBPOW
                                    364 	.globl _USBADDR
                                    365 	.globl _CMPCTL
                                    366 	.globl _OPAMPS
                                    367 	.globl _OPAMPC
                                    368 	.globl _STCV2
                                    369 	.globl _STCV1
                                    370 	.globl _STCV0
                                    371 	.globl _STCS
                                    372 	.globl _STCC
                                    373 	.globl _T1CC4H
                                    374 	.globl _T1CC4L
                                    375 	.globl _T1CC3H
                                    376 	.globl _T1CC3L
                                    377 	.globl _X_T1CC2H
                                    378 	.globl _X_T1CC2L
                                    379 	.globl _X_T1CC1H
                                    380 	.globl _X_T1CC1L
                                    381 	.globl _X_T1CC0H
                                    382 	.globl _X_T1CC0L
                                    383 	.globl _T1CCTL4
                                    384 	.globl _T1CCTL3
                                    385 	.globl _X_T1CCTL2
                                    386 	.globl _X_T1CCTL1
                                    387 	.globl _X_T1CCTL0
                                    388 	.globl _CLD
                                    389 	.globl _IRCTL
                                    390 	.globl _CHIPINFO1
                                    391 	.globl _CHIPINFO0
                                    392 	.globl _FWDATA
                                    393 	.globl _FADDRH
                                    394 	.globl _FADDRL
                                    395 	.globl _FCTL
                                    396 	.globl _IVCTRL
                                    397 	.globl _BATTMON
                                    398 	.globl _SRCRC
                                    399 	.globl _DBGDATA
                                    400 	.globl _TESTREG0
                                    401 	.globl _CHIPID
                                    402 	.globl _CHVER
                                    403 	.globl _OBSSEL5
                                    404 	.globl _OBSSEL4
                                    405 	.globl _OBSSEL3
                                    406 	.globl _OBSSEL2
                                    407 	.globl _OBSSEL1
                                    408 	.globl _OBSSEL0
                                    409 	.globl _I2CIO
                                    410 	.globl _I2CWC
                                    411 	.globl _I2CADDR
                                    412 	.globl _I2CDATA
                                    413 	.globl _I2CSTAT
                                    414 	.globl _I2CCFG
                                    415 	.globl _osalTimeUpdate
                                    416 	.globl _osal_setClock
                                    417 	.globl _osal_getClock
                                    418 	.globl _osal_ConvertUTCTime
                                    419 	.globl _osal_ConvertUTCSecs
                                    420 ;--------------------------------------------------------
                                    421 ; special function registers
                                    422 ;--------------------------------------------------------
                                    423 	.area RSEG    (ABS,DATA)
      000000                        424 	.org 0x0000
                           000080   425 _P0	=	0x0080
                           000081   426 _SP	=	0x0081
                           000082   427 _DPL0	=	0x0082
                           000083   428 _DPH0	=	0x0083
                           000084   429 _DPL1	=	0x0084
                           000085   430 _DPH1	=	0x0085
                           000086   431 _U0CSR	=	0x0086
                           000087   432 _PCON	=	0x0087
                           000088   433 _TCON	=	0x0088
                           000089   434 _P0IFG	=	0x0089
                           00008A   435 _P1IFG	=	0x008a
                           00008B   436 _P2IFG	=	0x008b
                           00008C   437 _PICTL	=	0x008c
                           00008D   438 _P1IEN	=	0x008d
                           00008F   439 _P0INP	=	0x008f
                           000090   440 _P1	=	0x0090
                           000091   441 _RFIRQF1	=	0x0091
                           000092   442 _DPS	=	0x0092
                           000093   443 _MPAGE	=	0x0093
                           000093   444 __XPAGE	=	0x0093
                           000094   445 _T2CTRL	=	0x0094
                           000095   446 _ST0	=	0x0095
                           000096   447 _ST1	=	0x0096
                           000097   448 _ST2	=	0x0097
                           000098   449 _S0CON	=	0x0098
                           00009A   450 _IEN2	=	0x009a
                           00009B   451 _S1CON	=	0x009b
                           00009C   452 _T2EVTCFG	=	0x009c
                           00009D   453 _SLEEPSTA	=	0x009d
                           00009E   454 _CLKCONSTA	=	0x009e
                           00009F   455 _PSBANK	=	0x009f
                           00009F   456 _FMAP	=	0x009f
                           0000A0   457 _P2	=	0x00a0
                           0000A1   458 _T2IRQF	=	0x00a1
                           0000A2   459 _T2M0	=	0x00a2
                           0000A3   460 _T2M1	=	0x00a3
                           0000A4   461 _T2MOVF0	=	0x00a4
                           0000A5   462 _T2MOVF1	=	0x00a5
                           0000A6   463 _T2MOVF2	=	0x00a6
                           0000A7   464 _T2IRQM	=	0x00a7
                           0000A8   465 _IEN0	=	0x00a8
                           0000A9   466 _IP0	=	0x00a9
                           0000AB   467 _P0IEN	=	0x00ab
                           0000AC   468 _P2IEN	=	0x00ac
                           0000AD   469 _STLOAD	=	0x00ad
                           0000AE   470 _PMUX	=	0x00ae
                           0000AF   471 _T1STAT	=	0x00af
                           0000B1   472 _ENCDI	=	0x00b1
                           0000B2   473 _ENCDO	=	0x00b2
                           0000B3   474 _ENCCS	=	0x00b3
                           0000B4   475 _ADCCON1	=	0x00b4
                           0000B5   476 _ADCCON2	=	0x00b5
                           0000B6   477 _ADCCON3	=	0x00b6
                           0000B8   478 _IEN1	=	0x00b8
                           0000B9   479 _IP1	=	0x00b9
                           0000BA   480 _ADCL	=	0x00ba
                           0000BB   481 _ADCH	=	0x00bb
                           0000BC   482 _RNDL	=	0x00bc
                           0000BD   483 _RNDH	=	0x00bd
                           0000BE   484 _SLEEPCMD	=	0x00be
                           0000BF   485 _RFERRF	=	0x00bf
                           0000C0   486 _IRCON	=	0x00c0
                           0000C1   487 _U0DBUF	=	0x00c1
                           0000C2   488 _U0BAUD	=	0x00c2
                           0000C3   489 _T2MSEL	=	0x00c3
                           0000C4   490 _U0UCR	=	0x00c4
                           0000C5   491 _U0GCR	=	0x00c5
                           0000C6   492 _CLKCONCMD	=	0x00c6
                           0000C7   493 _MEMCTR	=	0x00c7
                           0000C9   494 _WDCTL	=	0x00c9
                           0000CA   495 _T3CNT	=	0x00ca
                           0000CB   496 _T3CTL	=	0x00cb
                           0000CC   497 _T3CCTL0	=	0x00cc
                           0000CD   498 _T3CC0	=	0x00cd
                           0000CE   499 _T3CCTL1	=	0x00ce
                           0000CF   500 _T3CC1	=	0x00cf
                           0000D0   501 _PSW	=	0x00d0
                           0000D1   502 _DMAIRQ	=	0x00d1
                           0000D2   503 _DMA1CFGL	=	0x00d2
                           0000D3   504 _DMA1CFGH	=	0x00d3
                           0000D4   505 _DMA0CFGL	=	0x00d4
                           0000D5   506 _DMA0CFGH	=	0x00d5
                           0000D6   507 _DMAARM	=	0x00d6
                           0000D7   508 _DMAREQ	=	0x00d7
                           0000D8   509 _TIMIF	=	0x00d8
                           0000D9   510 _RFD	=	0x00d9
                           0000DA   511 _T1CC0L	=	0x00da
                           0000DB   512 _T1CC0H	=	0x00db
                           0000DC   513 _T1CC1L	=	0x00dc
                           0000DD   514 _T1CC1H	=	0x00dd
                           0000DE   515 _T1CC2L	=	0x00de
                           0000DF   516 _T1CC2H	=	0x00df
                           0000E0   517 _ACC	=	0x00e0
                           0000E1   518 _RFST	=	0x00e1
                           0000E2   519 _T1CNTL	=	0x00e2
                           0000E3   520 _T1CNTH	=	0x00e3
                           0000E4   521 _T1CTL	=	0x00e4
                           0000E5   522 _T1CCTL0	=	0x00e5
                           0000E6   523 _T1CCTL1	=	0x00e6
                           0000E7   524 _T1CCTL2	=	0x00e7
                           0000E8   525 _IRCON2	=	0x00e8
                           0000E9   526 _RFIRQF0	=	0x00e9
                           0000EA   527 _T4CNT	=	0x00ea
                           0000EB   528 _T4CTL	=	0x00eb
                           0000EC   529 _T4CCTL0	=	0x00ec
                           0000ED   530 _T4CC0	=	0x00ed
                           0000EE   531 _T4CCTL1	=	0x00ee
                           0000EF   532 _T4CC1	=	0x00ef
                           0000F0   533 _B	=	0x00f0
                           0000F1   534 _PERCFG	=	0x00f1
                           0000F2   535 _APCFG	=	0x00f2
                           0000F3   536 _P0SEL	=	0x00f3
                           0000F4   537 _P1SEL	=	0x00f4
                           0000F5   538 _P2SEL	=	0x00f5
                           0000F6   539 _P1INP	=	0x00f6
                           0000F7   540 _P2INP	=	0x00f7
                           0000F8   541 _U1CSR	=	0x00f8
                           0000F9   542 _U1DBUF	=	0x00f9
                           0000FA   543 _U1BAUD	=	0x00fa
                           0000FB   544 _U1UCR	=	0x00fb
                           0000FC   545 _U1GCR	=	0x00fc
                           0000FD   546 _P0DIR	=	0x00fd
                           0000FE   547 _P1DIR	=	0x00fe
                           0000FF   548 _P2DIR	=	0x00ff
                                    549 ;--------------------------------------------------------
                                    550 ; special function bits
                                    551 ;--------------------------------------------------------
                                    552 	.area RSEG    (ABS,DATA)
      000000                        553 	.org 0x0000
                           000080   554 _P0_0	=	0x0080
                           000081   555 _P0_1	=	0x0081
                           000082   556 _P0_2	=	0x0082
                           000083   557 _P0_3	=	0x0083
                           000084   558 _P0_4	=	0x0084
                           000085   559 _P0_5	=	0x0085
                           000086   560 _P0_6	=	0x0086
                           000087   561 _P0_7	=	0x0087
                           000088   562 _IT0	=	0x0088
                           000089   563 _RFERRIF	=	0x0089
                           00008A   564 _IT1	=	0x008a
                           00008B   565 _URX0IF	=	0x008b
                           00008D   566 _ADCIF	=	0x008d
                           00008F   567 _URX1IF	=	0x008f
                           000090   568 _P1_0	=	0x0090
                           000091   569 _P1_1	=	0x0091
                           000092   570 _P1_2	=	0x0092
                           000093   571 _P1_3	=	0x0093
                           000094   572 _P1_4	=	0x0094
                           000095   573 _P1_5	=	0x0095
                           000096   574 _P1_6	=	0x0096
                           000097   575 _P1_7	=	0x0097
                           000098   576 _ENCIF_0	=	0x0098
                           000099   577 _ENCIF_1	=	0x0099
                           0000A0   578 _P2_0	=	0x00a0
                           0000A1   579 _P2_1	=	0x00a1
                           0000A2   580 _P2_2	=	0x00a2
                           0000A3   581 _P2_3	=	0x00a3
                           0000A4   582 _P2_4	=	0x00a4
                           0000A5   583 _P2_5	=	0x00a5
                           0000A6   584 _P2_6	=	0x00a6
                           0000A7   585 _P2_7	=	0x00a7
                           0000A8   586 _RFERRIE	=	0x00a8
                           0000A9   587 _ADCIE	=	0x00a9
                           0000AA   588 _URX0IE	=	0x00aa
                           0000AB   589 _URX1IE	=	0x00ab
                           0000AC   590 _ENCIE	=	0x00ac
                           0000AD   591 _STIE	=	0x00ad
                           0000AF   592 _EA	=	0x00af
                           0000B8   593 _DMAIE	=	0x00b8
                           0000B9   594 _T1IE	=	0x00b9
                           0000BA   595 _T2IE	=	0x00ba
                           0000BB   596 _T3IE	=	0x00bb
                           0000BC   597 _T4IE	=	0x00bc
                           0000BD   598 _P0IE	=	0x00bd
                           0000C0   599 _DMAIF	=	0x00c0
                           0000C1   600 _T1IF	=	0x00c1
                           0000C2   601 _T2IF	=	0x00c2
                           0000C3   602 _T3IF	=	0x00c3
                           0000C4   603 _T4IF	=	0x00c4
                           0000C5   604 _P0IF	=	0x00c5
                           0000C7   605 _STIF	=	0x00c7
                           0000D0   606 _P	=	0x00d0
                           0000D1   607 _F1	=	0x00d1
                           0000D2   608 _OV	=	0x00d2
                           0000D3   609 _RS0	=	0x00d3
                           0000D4   610 _RS1	=	0x00d4
                           0000D5   611 _F0	=	0x00d5
                           0000D6   612 _AC	=	0x00d6
                           0000D7   613 _CY	=	0x00d7
                           0000D8   614 _T3OVFIF	=	0x00d8
                           0000D9   615 _T3CH0IF	=	0x00d9
                           0000DA   616 _T3CH1IF	=	0x00da
                           0000DB   617 _T4OVFIF	=	0x00db
                           0000DC   618 _T4CH0IF	=	0x00dc
                           0000DD   619 _T4CH1IF	=	0x00dd
                           0000DE   620 _OVFIM	=	0x00de
                           0000E0   621 _ACC_0	=	0x00e0
                           0000E1   622 _ACC_1	=	0x00e1
                           0000E2   623 _ACC_2	=	0x00e2
                           0000E3   624 _ACC_3	=	0x00e3
                           0000E4   625 _ACC_4	=	0x00e4
                           0000E5   626 _ACC_5	=	0x00e5
                           0000E6   627 _ACC_6	=	0x00e6
                           0000E7   628 _ACC_7	=	0x00e7
                           0000E8   629 _P2IF	=	0x00e8
                           0000E9   630 _UTX0IF	=	0x00e9
                           0000EA   631 _UTX1IF	=	0x00ea
                           0000EB   632 _P1IF	=	0x00eb
                           0000EC   633 _WDTIF	=	0x00ec
                           0000F0   634 _B_0	=	0x00f0
                           0000F1   635 _B_1	=	0x00f1
                           0000F2   636 _B_2	=	0x00f2
                           0000F3   637 _B_3	=	0x00f3
                           0000F4   638 _B_4	=	0x00f4
                           0000F5   639 _B_5	=	0x00f5
                           0000F6   640 _B_6	=	0x00f6
                           0000F7   641 _B_7	=	0x00f7
                           0000F8   642 _ACTIVE	=	0x00f8
                           0000F9   643 _TX_BYTE	=	0x00f9
                           0000FA   644 _RX_BYTE	=	0x00fa
                           0000FB   645 _ERR	=	0x00fb
                           0000FC   646 _FE	=	0x00fc
                           0000FD   647 _SLAVE	=	0x00fd
                           0000FE   648 _RE	=	0x00fe
                           0000FF   649 _MODE	=	0x00ff
                                    650 ;--------------------------------------------------------
                                    651 ; overlayable register banks
                                    652 ;--------------------------------------------------------
                                    653 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        654 	.ds 8
                                    655 ;--------------------------------------------------------
                                    656 ; internal ram data
                                    657 ;--------------------------------------------------------
                                    658 	.area DSEG    (DATA)
      000021                        659 _osalClockUpdate_sloc0_1_0:
      000021                        660 	.ds 4
      000025                        661 _osal_ConvertUTCTime_sloc0_1_0:
      000025                        662 	.ds 4
      000029                        663 _osal_ConvertUTCTime_sloc1_1_0:
      000029                        664 	.ds 4
      00002D                        665 _osal_ConvertUTCTime_sloc2_1_0:
      00002D                        666 	.ds 3
      000030                        667 _osal_ConvertUTCSecs_sloc0_1_0:
      000030                        668 	.ds 4
                                    669 ;--------------------------------------------------------
                                    670 ; overlayable items in internal ram 
                                    671 ;--------------------------------------------------------
                                    672 ;--------------------------------------------------------
                                    673 ; indirectly addressable internal ram data
                                    674 ;--------------------------------------------------------
                                    675 	.area ISEG    (DATA)
                                    676 ;--------------------------------------------------------
                                    677 ; absolute internal ram data
                                    678 ;--------------------------------------------------------
                                    679 	.area IABS    (ABS,DATA)
                                    680 	.area IABS    (ABS,DATA)
                                    681 ;--------------------------------------------------------
                                    682 ; bit data
                                    683 ;--------------------------------------------------------
                                    684 	.area BSEG    (BIT)
                                    685 ;--------------------------------------------------------
                                    686 ; paged external ram data
                                    687 ;--------------------------------------------------------
                                    688 	.area PSEG    (PAG,XDATA)
                                    689 ;--------------------------------------------------------
                                    690 ; external ram data
                                    691 ;--------------------------------------------------------
                                    692 	.area XSEG    (XDATA)
                           006230   693 _I2CCFG	=	0x6230
                           006231   694 _I2CSTAT	=	0x6231
                           006232   695 _I2CDATA	=	0x6232
                           006233   696 _I2CADDR	=	0x6233
                           006234   697 _I2CWC	=	0x6234
                           006235   698 _I2CIO	=	0x6235
                           006243   699 _OBSSEL0	=	0x6243
                           006244   700 _OBSSEL1	=	0x6244
                           006245   701 _OBSSEL2	=	0x6245
                           006246   702 _OBSSEL3	=	0x6246
                           006247   703 _OBSSEL4	=	0x6247
                           006248   704 _OBSSEL5	=	0x6248
                           006249   705 _CHVER	=	0x6249
                           00624A   706 _CHIPID	=	0x624a
                           00624B   707 _TESTREG0	=	0x624b
                           006260   708 _DBGDATA	=	0x6260
                           006262   709 _SRCRC	=	0x6262
                           006264   710 _BATTMON	=	0x6264
                           006265   711 _IVCTRL	=	0x6265
                           006270   712 _FCTL	=	0x6270
                           006271   713 _FADDRL	=	0x6271
                           006272   714 _FADDRH	=	0x6272
                           006273   715 _FWDATA	=	0x6273
                           006276   716 _CHIPINFO0	=	0x6276
                           006277   717 _CHIPINFO1	=	0x6277
                           006281   718 _IRCTL	=	0x6281
                           006290   719 _CLD	=	0x6290
                           0062A0   720 _X_T1CCTL0	=	0x62a0
                           0062A1   721 _X_T1CCTL1	=	0x62a1
                           0062A2   722 _X_T1CCTL2	=	0x62a2
                           0062A3   723 _T1CCTL3	=	0x62a3
                           0062A4   724 _T1CCTL4	=	0x62a4
                           0062A6   725 _X_T1CC0L	=	0x62a6
                           0062A7   726 _X_T1CC0H	=	0x62a7
                           0062A8   727 _X_T1CC1L	=	0x62a8
                           0062A9   728 _X_T1CC1H	=	0x62a9
                           0062AA   729 _X_T1CC2L	=	0x62aa
                           0062AB   730 _X_T1CC2H	=	0x62ab
                           0062AC   731 _T1CC3L	=	0x62ac
                           0062AD   732 _T1CC3H	=	0x62ad
                           0062AE   733 _T1CC4L	=	0x62ae
                           0062AF   734 _T1CC4H	=	0x62af
                           0062B0   735 _STCC	=	0x62b0
                           0062B1   736 _STCS	=	0x62b1
                           0062B2   737 _STCV0	=	0x62b2
                           0062B3   738 _STCV1	=	0x62b3
                           0062B4   739 _STCV2	=	0x62b4
                           0062C0   740 _OPAMPC	=	0x62c0
                           0062C1   741 _OPAMPS	=	0x62c1
                           0062D0   742 _CMPCTL	=	0x62d0
                           006200   743 _USBADDR	=	0x6200
                           006201   744 _USBPOW	=	0x6201
                           006202   745 _USBIIF	=	0x6202
                           006204   746 _USBOIF	=	0x6204
                           006206   747 _USBCIF	=	0x6206
                           006207   748 _USBIIE	=	0x6207
                           006209   749 _USBOIE	=	0x6209
                           00620B   750 _USBCIE	=	0x620b
                           00620C   751 _USBFRML	=	0x620c
                           00620D   752 _USBFRMH	=	0x620d
                           00620E   753 _USBINDEX	=	0x620e
                           00620F   754 _USBCTRL	=	0x620f
                           006210   755 _USBMAXI	=	0x6210
                           006211   756 _USBCS0	=	0x6211
                           006211   757 _USBCSIL	=	0x6211
                           006212   758 _USBCSIH	=	0x6212
                           006213   759 _USBMAXO	=	0x6213
                           006214   760 _USBCSOL	=	0x6214
                           006215   761 _USBCSOH	=	0x6215
                           006216   762 _USBCNT0	=	0x6216
                           006216   763 _USBCNTL	=	0x6216
                           006217   764 _USBCNTH	=	0x6217
                           006220   765 _USBF0	=	0x6220
                           006222   766 _USBF1	=	0x6222
                           006224   767 _USBF2	=	0x6224
                           006226   768 _USBF3	=	0x6226
                           006228   769 _USBF4	=	0x6228
                           00622A   770 _USBF5	=	0x622a
                           006174   771 _SHORTADDRH	=	0x6174
                           006175   772 _SHORTADDRL	=	0x6175
                           006172   773 _PANIDH	=	0x6172
                           006173   774 _PANIDL	=	0x6173
                           00616A   775 _IEEE_ADDR	=	0x616a
                           006180   776 _FRMFILT0	=	0x6180
                           006181   777 _FRMFILT1	=	0x6181
                           006182   778 _SRCMATCH	=	0x6182
                           006183   779 _SRCSHORTEN0	=	0x6183
                           006184   780 _SRCSHORTEN1	=	0x6184
                           006185   781 _SRCSHORTEN2	=	0x6185
                           006186   782 _SRCEXTEN0	=	0x6186
                           006187   783 _SRCEXTEN1	=	0x6187
                           006188   784 _SRCEXTEN2	=	0x6188
                           006189   785 _FRMCTRL0	=	0x6189
                           00618A   786 _FRMCTRL1	=	0x618a
                           00618B   787 _RXENABLE	=	0x618b
                           00618C   788 _RXMASKSET	=	0x618c
                           00618D   789 _RXMASKCLR	=	0x618d
                           00618E   790 _FREQTUNE	=	0x618e
                           00618F   791 _FREQCTRL	=	0x618f
                           006190   792 _TXPOWER	=	0x6190
                           006191   793 _TXCTRL	=	0x6191
                           006192   794 _FSMSTAT0	=	0x6192
                           006193   795 _FSMSTAT1	=	0x6193
                           006194   796 _FIFOPCTRL	=	0x6194
                           006195   797 _FSMCTRL	=	0x6195
                           006196   798 _CCACTRL0	=	0x6196
                           006197   799 _CCACTRL1	=	0x6197
                           006198   800 _RSSI	=	0x6198
                           006199   801 _RSSISTAT	=	0x6199
                           00619A   802 _RXFIRST	=	0x619a
                           00619B   803 _RXFIFOCNT	=	0x619b
                           00619C   804 _TXFIFOCNT	=	0x619c
                           00619D   805 _RXFIRST_PTR	=	0x619d
                           00619E   806 _RXLAST_PTR	=	0x619e
                           00619F   807 _RXP1_PTR	=	0x619f
                           0061A1   808 _TXFIRST_PTR	=	0x61a1
                           0061A2   809 _TXLAST_PTR	=	0x61a2
                           0061A3   810 _RFIRQM0	=	0x61a3
                           0061A4   811 _RFIRQM1	=	0x61a4
                           0061A5   812 _RFERRM	=	0x61a5
                           0061A6   813 _OPAMPMC	=	0x61a6
                           0061A7   814 _RFRND	=	0x61a7
                           0061A8   815 _MDMCTRL0	=	0x61a8
                           0061A9   816 _MDMCTRL1	=	0x61a9
                           0061AA   817 _FREQEST	=	0x61aa
                           0061AB   818 _RXCTRL	=	0x61ab
                           0061AC   819 _FSCTRL	=	0x61ac
                           0061AE   820 _FSCAL1	=	0x61ae
                           0061AF   821 _FSCAL2	=	0x61af
                           0061B0   822 _FSCAL3	=	0x61b0
                           0061B1   823 _AGCCTRL0	=	0x61b1
                           0061B2   824 _AGCCTRL1	=	0x61b2
                           0061B3   825 _AGCCTRL2	=	0x61b3
                           0061B4   826 _AGCCTRL3	=	0x61b4
                           0061B5   827 _ADCTEST0	=	0x61b5
                           0061B6   828 _ADCTEST1	=	0x61b6
                           0061B7   829 _ADCTEST2	=	0x61b7
                           0061B8   830 _MDMTEST0	=	0x61b8
                           0061B9   831 _MDMTEST1	=	0x61b9
                           0061BA   832 _DACTEST0	=	0x61ba
                           0061BB   833 _DACTEST1	=	0x61bb
                           0061BC   834 _DACTEST2	=	0x61bc
                           0061BD   835 _ATEST	=	0x61bd
                           0061BE   836 _PTEST0	=	0x61be
                           0061BF   837 _PTEST1	=	0x61bf
                           0061C0   838 _CSPPROG0	=	0x61c0
                           0061C1   839 _CSPPROG1	=	0x61c1
                           0061C2   840 _CSPPROG2	=	0x61c2
                           0061C3   841 _CSPPROG3	=	0x61c3
                           0061C4   842 _CSPPROG4	=	0x61c4
                           0061C5   843 _CSPPROG5	=	0x61c5
                           0061C6   844 _CSPPROG6	=	0x61c6
                           0061C7   845 _CSPPROG7	=	0x61c7
                           0061C8   846 _CSPPROG8	=	0x61c8
                           0061C9   847 _CSPPROG9	=	0x61c9
                           0061CA   848 _CSPPROG10	=	0x61ca
                           0061CB   849 _CSPPROG11	=	0x61cb
                           0061CC   850 _CSPPROG12	=	0x61cc
                           0061CD   851 _CSPPROG13	=	0x61cd
                           0061CE   852 _CSPPROG14	=	0x61ce
                           0061CF   853 _CSPPROG15	=	0x61cf
                           0061D0   854 _CSPPROG16	=	0x61d0
                           0061D1   855 _CSPPROG17	=	0x61d1
                           0061D2   856 _CSPPROG18	=	0x61d2
                           0061D3   857 _CSPPROG19	=	0x61d3
                           0061D4   858 _CSPPROG20	=	0x61d4
                           0061D5   859 _CSPPROG21	=	0x61d5
                           0061D6   860 _CSPPROG22	=	0x61d6
                           0061D7   861 _CSPPROG23	=	0x61d7
                           0061E0   862 _CSPCTRL	=	0x61e0
                           0061E1   863 _CSPSTAT	=	0x61e1
                           0061E2   864 _CSPX	=	0x61e2
                           0061E3   865 _CSPY	=	0x61e3
                           0061E4   866 _CSPZ	=	0x61e4
                           0061E5   867 _CSPT	=	0x61e5
                           0061EB   868 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   869 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   870 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   871 _TXFILTCFG	=	0x61fa
      00107A                        872 _previousLLTimerTick:
      00107A                        873 	.ds 2
      00107C                        874 _remUsTicks:
      00107C                        875 	.ds 2
      00107E                        876 _timeMSec:
      00107E                        877 	.ds 2
      001080                        878 _OSAL_timeSeconds::
      001080                        879 	.ds 4
      001084                        880 _osalTimeUpdate_tmp_1_77:
      001084                        881 	.ds 2
      001086                        882 _osalTimeUpdate_ticks625us_1_77:
      001086                        883 	.ds 2
      001088                        884 _osalTimeUpdate_elapsedMSec_1_77:
      001088                        885 	.ds 2
      00108A                        886 _osalClockUpdate_elapsedMSec_1_81:
      00108A                        887 	.ds 2
      00108C                        888 _osal_setClock_newTime_1_84:
      00108C                        889 	.ds 4
      001090                        890 _osal_ConvertUTCTime_PARM_2:
      001090                        891 	.ds 4
      001094                        892 _osal_ConvertUTCTime_tm_1_88:
      001094                        893 	.ds 3
      001097                        894 _osal_ConvertUTCTime_numDays_2_91:
      001097                        895 	.ds 2
      001099                        896 _monthLength_PARM_2:
      001099                        897 	.ds 1
      00109A                        898 _monthLength_lpyr_1_94:
      00109A                        899 	.ds 1
      00109B                        900 _monthLength_days_1_95:
      00109B                        901 	.ds 1
      00109C                        902 _osal_ConvertUTCSecs_tm_1_100:
      00109C                        903 	.ds 3
      00109F                        904 _osal_ConvertUTCSecs_seconds_1_101:
      00109F                        905 	.ds 4
      0010A3                        906 _osal_ConvertUTCSecs_days_2_102:
      0010A3                        907 	.ds 2
      0010A5                        908 _osal_ConvertUTCSecs_month_3_103:
      0010A5                        909 	.ds 1
      0010A6                        910 _osal_ConvertUTCSecs_year_3_105:
      0010A6                        911 	.ds 2
                                    912 ;--------------------------------------------------------
                                    913 ; absolute external ram data
                                    914 ;--------------------------------------------------------
                                    915 	.area XABS    (ABS,XDATA)
                                    916 ;--------------------------------------------------------
                                    917 ; external initialized ram data
                                    918 ;--------------------------------------------------------
                                    919 	.area HOME    (CODE)
                                    920 	.area GSINIT0 (CODE)
                                    921 	.area GSINIT1 (CODE)
                                    922 	.area GSINIT2 (CODE)
                                    923 	.area GSINIT3 (CODE)
                                    924 	.area GSINIT4 (CODE)
                                    925 	.area GSINIT5 (CODE)
                                    926 	.area GSINIT  (CODE)
                                    927 	.area GSFINAL (CODE)
                                    928 	.area CSEG    (CODE)
                                    929 ;--------------------------------------------------------
                                    930 ; global & static initialisations
                                    931 ;--------------------------------------------------------
                                    932 	.area HOME    (CODE)
                                    933 	.area GSINIT  (CODE)
                                    934 	.area GSFINAL (CODE)
                                    935 	.area GSINIT  (CODE)
                                    936 ;	../osal/common/OSAL_ClockBLE.c:99: static uint16 previousLLTimerTick = 0;
      0000BE 90 10 7A         [24]  937 	mov	dptr,#_previousLLTimerTick
      0000C1 74 00            [12]  938 	mov	a,#0x00
      0000C3 F0               [24]  939 	movx	@dptr,a
      0000C4 A3               [24]  940 	inc	dptr
      0000C5 F0               [24]  941 	movx	@dptr,a
                                    942 ;	../osal/common/OSAL_ClockBLE.c:100: static uint16 remUsTicks = 0;
      0000C6 90 10 7C         [24]  943 	mov	dptr,#_remUsTicks
      0000C9 F0               [24]  944 	movx	@dptr,a
      0000CA A3               [24]  945 	inc	dptr
      0000CB F0               [24]  946 	movx	@dptr,a
                                    947 ;	../osal/common/OSAL_ClockBLE.c:101: static uint16 timeMSec = 0;
      0000CC 90 10 7E         [24]  948 	mov	dptr,#_timeMSec
      0000CF F0               [24]  949 	movx	@dptr,a
      0000D0 A3               [24]  950 	inc	dptr
      0000D1 F0               [24]  951 	movx	@dptr,a
                                    952 ;	../osal/common/OSAL_ClockBLE.c:105: UTCTime OSAL_timeSeconds = 0;
      0000D2 90 10 80         [24]  953 	mov	dptr,#_OSAL_timeSeconds
      0000D5 F0               [24]  954 	movx	@dptr,a
      0000D6 A3               [24]  955 	inc	dptr
      0000D7 F0               [24]  956 	movx	@dptr,a
      0000D8 A3               [24]  957 	inc	dptr
      0000D9 F0               [24]  958 	movx	@dptr,a
      0000DA A3               [24]  959 	inc	dptr
      0000DB F0               [24]  960 	movx	@dptr,a
                                    961 ;--------------------------------------------------------
                                    962 ; Home
                                    963 ;--------------------------------------------------------
                                    964 	.area HOME    (CODE)
                                    965 	.area HOME    (CODE)
                                    966 ;--------------------------------------------------------
                                    967 ; code
                                    968 ;--------------------------------------------------------
                                    969 	.area CSEG    (CODE)
                                    970 ;------------------------------------------------------------
                                    971 ;Allocation info for local variables in function 'll_McuPrecisionCount'
                                    972 ;------------------------------------------------------------
                                    973 ;tick                      Allocated with name '_ll_McuPrecisionCount_tick_1_73'
                                    974 ;------------------------------------------------------------
                                    975 ;	../osal/common/OSAL_ClockBLE.c:84: uint16 ll_McuPrecisionCount(void){
                                    976 ;	-----------------------------------------
                                    977 ;	 function ll_McuPrecisionCount
                                    978 ;	-----------------------------------------
      0030C0                        979 _ll_McuPrecisionCount:
                           000007   980 	ar7 = 0x07
                           000006   981 	ar6 = 0x06
                           000005   982 	ar5 = 0x05
                           000004   983 	ar4 = 0x04
                           000003   984 	ar3 = 0x03
                           000002   985 	ar2 = 0x02
                           000001   986 	ar1 = 0x01
                           000000   987 	ar0 = 0x00
                                    988 ;	../osal/common/OSAL_ClockBLE.c:88: uint16 tick = T2M0 +(T2M1<<8);
      0030C0 AE A2            [24]  989 	mov	r6,_T2M0
      0030C2 7F 00            [12]  990 	mov	r7,#0x00
      0030C4 AC A3            [24]  991 	mov	r4,_T2M1
      0030C6 7D 00            [12]  992 	mov	r5,#0x00
      0030C8 8C 05            [24]  993 	mov	ar5,r4
      0030CA 7C 00            [12]  994 	mov	r4,#0x00
      0030CC EC               [12]  995 	mov	a,r4
      0030CD 2E               [12]  996 	add	a,r6
      0030CE FE               [12]  997 	mov	r6,a
      0030CF ED               [12]  998 	mov	a,r5
      0030D0 3F               [12]  999 	addc	a,r7
      0030D1 FF               [12] 1000 	mov	r7,a
                                   1001 ;	../osal/common/OSAL_ClockBLE.c:90: return tick;
      0030D2 8E 82            [24] 1002 	mov	dpl,r6
      0030D4 8F 83            [24] 1003 	mov	dph,r7
      0030D6                       1004 00101$:
      0030D6 22               [24] 1005 	ret
                                   1006 ;------------------------------------------------------------
                                   1007 ;Allocation info for local variables in function 'osalTimeUpdate'
                                   1008 ;------------------------------------------------------------
                                   1009 ;tmp                       Allocated with name '_osalTimeUpdate_tmp_1_77'
                                   1010 ;ticks625us                Allocated with name '_osalTimeUpdate_ticks625us_1_77'
                                   1011 ;elapsedMSec               Allocated with name '_osalTimeUpdate_elapsedMSec_1_77'
                                   1012 ;------------------------------------------------------------
                                   1013 ;	../osal/common/OSAL_ClockBLE.c:132: void osalTimeUpdate( void )
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function osalTimeUpdate
                                   1016 ;	-----------------------------------------
      0030D7                       1017 _osalTimeUpdate:
                                   1018 ;	../osal/common/OSAL_ClockBLE.c:136: uint16 elapsedMSec = 0;
      0030D7 90 10 88         [24] 1019 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      0030DA 74 00            [12] 1020 	mov	a,#0x00
      0030DC F0               [24] 1021 	movx	@dptr,a
      0030DD A3               [24] 1022 	inc	dptr
      0030DE F0               [24] 1023 	movx	@dptr,a
                                   1024 ;	../osal/common/OSAL_ClockBLE.c:139: tmp = ll_McuPrecisionCount();
      0030DF 12 30 C0         [24] 1025 	lcall	_ll_McuPrecisionCount
      0030E2 AE 82            [24] 1026 	mov	r6,dpl
      0030E4 AF 83            [24] 1027 	mov	r7,dph
      0030E6 90 10 84         [24] 1028 	mov	dptr,#_osalTimeUpdate_tmp_1_77
      0030E9 EE               [12] 1029 	mov	a,r6
      0030EA F0               [24] 1030 	movx	@dptr,a
      0030EB EF               [12] 1031 	mov	a,r7
      0030EC A3               [24] 1032 	inc	dptr
      0030ED F0               [24] 1033 	movx	@dptr,a
                                   1034 ;	../osal/common/OSAL_ClockBLE.c:144: if ( tmp != previousLLTimerTick )
      0030EE 90 10 7A         [24] 1035 	mov	dptr,#_previousLLTimerTick
      0030F1 E0               [24] 1036 	movx	a,@dptr
      0030F2 FC               [12] 1037 	mov	r4,a
      0030F3 A3               [24] 1038 	inc	dptr
      0030F4 E0               [24] 1039 	movx	a,@dptr
      0030F5 FD               [12] 1040 	mov	r5,a
      0030F6 EE               [12] 1041 	mov	a,r6
      0030F7 B5 04 07         [24] 1042 	cjne	a,ar4,00123$
      0030FA EF               [12] 1043 	mov	a,r7
      0030FB B5 05 03         [24] 1044 	cjne	a,ar5,00123$
      0030FE 02 32 05         [24] 1045 	ljmp	00108$
      003101                       1046 00123$:
                                   1047 ;	../osal/common/OSAL_ClockBLE.c:147: ticks625us = tmp - previousLLTimerTick;
      003101 90 10 7A         [24] 1048 	mov	dptr,#_previousLLTimerTick
      003104 E0               [24] 1049 	movx	a,@dptr
      003105 FE               [12] 1050 	mov	r6,a
      003106 A3               [24] 1051 	inc	dptr
      003107 E0               [24] 1052 	movx	a,@dptr
      003108 FF               [12] 1053 	mov	r7,a
      003109 90 10 84         [24] 1054 	mov	dptr,#_osalTimeUpdate_tmp_1_77
      00310C E0               [24] 1055 	movx	a,@dptr
      00310D FC               [12] 1056 	mov	r4,a
      00310E A3               [24] 1057 	inc	dptr
      00310F E0               [24] 1058 	movx	a,@dptr
      003110 FD               [12] 1059 	mov	r5,a
      003111 90 10 86         [24] 1060 	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
      003114 EC               [12] 1061 	mov	a,r4
      003115 C3               [12] 1062 	clr	c
      003116 9E               [12] 1063 	subb	a,r6
      003117 F0               [24] 1064 	movx	@dptr,a
      003118 ED               [12] 1065 	mov	a,r5
      003119 9F               [12] 1066 	subb	a,r7
      00311A A3               [24] 1067 	inc	dptr
      00311B F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	../osal/common/OSAL_ClockBLE.c:150: previousLLTimerTick = tmp;
      00311C 90 10 7A         [24] 1070 	mov	dptr,#_previousLLTimerTick
      00311F EC               [12] 1071 	mov	a,r4
      003120 F0               [24] 1072 	movx	@dptr,a
      003121 ED               [12] 1073 	mov	a,r5
      003122 A3               [24] 1074 	inc	dptr
      003123 F0               [24] 1075 	movx	@dptr,a
                                   1076 ;	../osal/common/OSAL_ClockBLE.c:155: while ( ticks625us > MAXCALCTICKS )
      003124 90 10 86         [24] 1077 	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
      003127 E0               [24] 1078 	movx	a,@dptr
      003128 FE               [12] 1079 	mov	r6,a
      003129 A3               [24] 1080 	inc	dptr
      00312A E0               [24] 1081 	movx	a,@dptr
      00312B FF               [12] 1082 	mov	r7,a
      00312C 90 10 88         [24] 1083 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      00312F E0               [24] 1084 	movx	a,@dptr
      003130 FC               [12] 1085 	mov	r4,a
      003131 A3               [24] 1086 	inc	dptr
      003132 E0               [24] 1087 	movx	a,@dptr
      003133 FD               [12] 1088 	mov	r5,a
      003134                       1089 00101$:
      003134 C3               [12] 1090 	clr	c
      003135 74 31            [12] 1091 	mov	a,#0x31
      003137 9E               [12] 1092 	subb	a,r6
      003138 74 33            [12] 1093 	mov	a,#0x33
      00313A 9F               [12] 1094 	subb	a,r7
      00313B 40 03            [24] 1095 	jc	00124$
      00313D 02 31 67         [24] 1096 	ljmp	00114$
      003140                       1097 00124$:
                                   1098 ;	../osal/common/OSAL_ClockBLE.c:157: ticks625us -= MAXCALCTICKS;
      003140 EE               [12] 1099 	mov	a,r6
      003141 24 CF            [12] 1100 	add	a,#0xCF
      003143 FE               [12] 1101 	mov	r6,a
      003144 EF               [12] 1102 	mov	a,r7
      003145 34 CC            [12] 1103 	addc	a,#0xCC
      003147 FF               [12] 1104 	mov	r7,a
                                   1105 ;	../osal/common/OSAL_ClockBLE.c:158: elapsedMSec += MAXCALCTICKS * 5 / 8;
      003148 74 FE            [12] 1106 	mov	a,#0xFE
      00314A 2C               [12] 1107 	add	a,r4
      00314B FC               [12] 1108 	mov	r4,a
      00314C 74 1F            [12] 1109 	mov	a,#0x1F
      00314E 3D               [12] 1110 	addc	a,r5
      00314F FD               [12] 1111 	mov	r5,a
                                   1112 ;	../osal/common/OSAL_ClockBLE.c:159: remUsTicks += MAXCALCTICKS * 5 % 8;
      003150 90 10 7C         [24] 1113 	mov	dptr,#_remUsTicks
      003153 E0               [24] 1114 	movx	a,@dptr
      003154 FA               [12] 1115 	mov	r2,a
      003155 A3               [24] 1116 	inc	dptr
      003156 E0               [24] 1117 	movx	a,@dptr
      003157 FB               [12] 1118 	mov	r3,a
      003158 90 10 7C         [24] 1119 	mov	dptr,#_remUsTicks
      00315B 74 05            [12] 1120 	mov	a,#0x05
      00315D 2A               [12] 1121 	add	a,r2
      00315E F0               [24] 1122 	movx	@dptr,a
      00315F 74 00            [12] 1123 	mov	a,#0x00
      003161 3B               [12] 1124 	addc	a,r3
      003162 A3               [24] 1125 	inc	dptr
      003163 F0               [24] 1126 	movx	@dptr,a
      003164 02 31 34         [24] 1127 	ljmp	00101$
      003167                       1128 00114$:
      003167 90 10 86         [24] 1129 	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
      00316A EE               [12] 1130 	mov	a,r6
      00316B F0               [24] 1131 	movx	@dptr,a
      00316C EF               [12] 1132 	mov	a,r7
      00316D A3               [24] 1133 	inc	dptr
      00316E F0               [24] 1134 	movx	@dptr,a
      00316F 90 10 88         [24] 1135 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      003172 EC               [12] 1136 	mov	a,r4
      003173 F0               [24] 1137 	movx	@dptr,a
      003174 ED               [12] 1138 	mov	a,r5
      003175 A3               [24] 1139 	inc	dptr
      003176 F0               [24] 1140 	movx	@dptr,a
                                   1141 ;	../osal/common/OSAL_ClockBLE.c:164: tmp = (ticks625us * 5) + remUsTicks;
      003177 90 10 86         [24] 1142 	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
      00317A E0               [24] 1143 	movx	a,@dptr
      00317B FE               [12] 1144 	mov	r6,a
      00317C A3               [24] 1145 	inc	dptr
      00317D E0               [24] 1146 	movx	a,@dptr
      00317E FF               [12] 1147 	mov	r7,a
      00317F 90 12 2B         [24] 1148 	mov	dptr,#__mulint_PARM_2
      003182 EE               [12] 1149 	mov	a,r6
      003183 F0               [24] 1150 	movx	@dptr,a
      003184 EF               [12] 1151 	mov	a,r7
      003185 A3               [24] 1152 	inc	dptr
      003186 F0               [24] 1153 	movx	@dptr,a
      003187 75 82 05         [24] 1154 	mov	dpl,#0x05
      00318A 75 83 00         [24] 1155 	mov	dph,#0x00
      00318D 12 5A 1C         [24] 1156 	lcall	__mulint
      003190 AE 82            [24] 1157 	mov	r6,dpl
      003192 AF 83            [24] 1158 	mov	r7,dph
      003194 90 10 7C         [24] 1159 	mov	dptr,#_remUsTicks
      003197 E0               [24] 1160 	movx	a,@dptr
      003198 FC               [12] 1161 	mov	r4,a
      003199 A3               [24] 1162 	inc	dptr
      00319A E0               [24] 1163 	movx	a,@dptr
      00319B FD               [12] 1164 	mov	r5,a
      00319C EC               [12] 1165 	mov	a,r4
      00319D 2E               [12] 1166 	add	a,r6
      00319E FE               [12] 1167 	mov	r6,a
      00319F ED               [12] 1168 	mov	a,r5
      0031A0 3F               [12] 1169 	addc	a,r7
      0031A1 FF               [12] 1170 	mov	r7,a
                                   1171 ;	../osal/common/OSAL_ClockBLE.c:167: elapsedMSec += tmp / 8;
      0031A2 8E 04            [24] 1172 	mov	ar4,r6
      0031A4 EF               [12] 1173 	mov	a,r7
      0031A5 C4               [12] 1174 	swap	a
      0031A6 23               [12] 1175 	rl	a
      0031A7 CC               [12] 1176 	xch	a,r4
      0031A8 C4               [12] 1177 	swap	a
      0031A9 23               [12] 1178 	rl	a
      0031AA 54 1F            [12] 1179 	anl	a,#0x1F
      0031AC 6C               [12] 1180 	xrl	a,r4
      0031AD CC               [12] 1181 	xch	a,r4
      0031AE 54 1F            [12] 1182 	anl	a,#0x1F
      0031B0 CC               [12] 1183 	xch	a,r4
      0031B1 6C               [12] 1184 	xrl	a,r4
      0031B2 CC               [12] 1185 	xch	a,r4
      0031B3 FD               [12] 1186 	mov	r5,a
      0031B4 90 10 88         [24] 1187 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      0031B7 E0               [24] 1188 	movx	a,@dptr
      0031B8 FA               [12] 1189 	mov	r2,a
      0031B9 A3               [24] 1190 	inc	dptr
      0031BA E0               [24] 1191 	movx	a,@dptr
      0031BB FB               [12] 1192 	mov	r3,a
      0031BC 90 10 88         [24] 1193 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      0031BF EC               [12] 1194 	mov	a,r4
      0031C0 2A               [12] 1195 	add	a,r2
      0031C1 F0               [24] 1196 	movx	@dptr,a
      0031C2 ED               [12] 1197 	mov	a,r5
      0031C3 3B               [12] 1198 	addc	a,r3
      0031C4 A3               [24] 1199 	inc	dptr
      0031C5 F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	../osal/common/OSAL_ClockBLE.c:168: remUsTicks = tmp % 8;
      0031C6 90 10 7C         [24] 1202 	mov	dptr,#_remUsTicks
      0031C9 74 07            [12] 1203 	mov	a,#0x07
      0031CB 5E               [12] 1204 	anl	a,r6
      0031CC F0               [24] 1205 	movx	@dptr,a
      0031CD 74 00            [12] 1206 	mov	a,#0x00
      0031CF A3               [24] 1207 	inc	dptr
      0031D0 F0               [24] 1208 	movx	@dptr,a
                                   1209 ;	../osal/common/OSAL_ClockBLE.c:171: if ( elapsedMSec )
      0031D1 90 10 88         [24] 1210 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      0031D4 E0               [24] 1211 	movx	a,@dptr
      0031D5 FE               [12] 1212 	mov	r6,a
      0031D6 A3               [24] 1213 	inc	dptr
      0031D7 E0               [24] 1214 	movx	a,@dptr
      0031D8 FF               [12] 1215 	mov	r7,a
      0031D9 EE               [12] 1216 	mov	a,r6
      0031DA 4F               [12] 1217 	orl	a,r7
      0031DB 70 03            [24] 1218 	jnz	00125$
      0031DD 02 32 05         [24] 1219 	ljmp	00108$
      0031E0                       1220 00125$:
                                   1221 ;	../osal/common/OSAL_ClockBLE.c:173: osalClockUpdate( elapsedMSec );
      0031E0 90 10 88         [24] 1222 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      0031E3 E0               [24] 1223 	movx	a,@dptr
      0031E4 FE               [12] 1224 	mov	r6,a
      0031E5 A3               [24] 1225 	inc	dptr
      0031E6 E0               [24] 1226 	movx	a,@dptr
      0031E7 FF               [12] 1227 	mov	r7,a
      0031E8 8E 82            [24] 1228 	mov	dpl,r6
      0031EA 8F 83            [24] 1229 	mov	dph,r7
      0031EC C0 07            [24] 1230 	push	ar7
      0031EE C0 06            [24] 1231 	push	ar6
      0031F0 12 32 06         [24] 1232 	lcall	_osalClockUpdate
      0031F3 D0 06            [24] 1233 	pop	ar6
      0031F5 D0 07            [24] 1234 	pop	ar7
                                   1235 ;	../osal/common/OSAL_ClockBLE.c:177: osalTimerUpdate( elapsedMSec );
      0031F7 7D 00            [12] 1236 	mov	r5,#0x00
      0031F9 7C 00            [12] 1237 	mov	r4,#0x00
      0031FB 8E 82            [24] 1238 	mov	dpl,r6
      0031FD 8F 83            [24] 1239 	mov	dph,r7
      0031FF 8D F0            [24] 1240 	mov	b,r5
      003201 EC               [12] 1241 	mov	a,r4
      003202 12 2A 0C         [24] 1242 	lcall	_osalTimerUpdate
      003205                       1243 00108$:
      003205 22               [24] 1244 	ret
                                   1245 ;------------------------------------------------------------
                                   1246 ;Allocation info for local variables in function 'osalClockUpdate'
                                   1247 ;------------------------------------------------------------
                                   1248 ;sloc0                     Allocated with name '_osalClockUpdate_sloc0_1_0'
                                   1249 ;elapsedMSec               Allocated with name '_osalClockUpdate_elapsedMSec_1_81'
                                   1250 ;------------------------------------------------------------
                                   1251 ;	../osal/common/OSAL_ClockBLE.c:191: static void osalClockUpdate( uint16 elapsedMSec )
                                   1252 ;	-----------------------------------------
                                   1253 ;	 function osalClockUpdate
                                   1254 ;	-----------------------------------------
      003206                       1255 _osalClockUpdate:
      003206 AF 83            [24] 1256 	mov	r7,dph
      003208 E5 82            [12] 1257 	mov	a,dpl
      00320A 90 10 8A         [24] 1258 	mov	dptr,#_osalClockUpdate_elapsedMSec_1_81
      00320D F0               [24] 1259 	movx	@dptr,a
      00320E EF               [12] 1260 	mov	a,r7
      00320F A3               [24] 1261 	inc	dptr
      003210 F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	../osal/common/OSAL_ClockBLE.c:194: timeMSec += elapsedMSec;
      003211 90 10 8A         [24] 1264 	mov	dptr,#_osalClockUpdate_elapsedMSec_1_81
      003214 E0               [24] 1265 	movx	a,@dptr
      003215 FE               [12] 1266 	mov	r6,a
      003216 A3               [24] 1267 	inc	dptr
      003217 E0               [24] 1268 	movx	a,@dptr
      003218 FF               [12] 1269 	mov	r7,a
      003219 90 10 7E         [24] 1270 	mov	dptr,#_timeMSec
      00321C E0               [24] 1271 	movx	a,@dptr
      00321D FC               [12] 1272 	mov	r4,a
      00321E A3               [24] 1273 	inc	dptr
      00321F E0               [24] 1274 	movx	a,@dptr
      003220 FD               [12] 1275 	mov	r5,a
      003221 90 10 7E         [24] 1276 	mov	dptr,#_timeMSec
      003224 EE               [12] 1277 	mov	a,r6
      003225 2C               [12] 1278 	add	a,r4
      003226 F0               [24] 1279 	movx	@dptr,a
      003227 EF               [12] 1280 	mov	a,r7
      003228 3D               [12] 1281 	addc	a,r5
      003229 A3               [24] 1282 	inc	dptr
      00322A F0               [24] 1283 	movx	@dptr,a
                                   1284 ;	../osal/common/OSAL_ClockBLE.c:197: if ( timeMSec >= 1000 )
      00322B 90 10 7E         [24] 1285 	mov	dptr,#_timeMSec
      00322E E0               [24] 1286 	movx	a,@dptr
      00322F FE               [12] 1287 	mov	r6,a
      003230 A3               [24] 1288 	inc	dptr
      003231 E0               [24] 1289 	movx	a,@dptr
      003232 FF               [12] 1290 	mov	r7,a
      003233 C3               [12] 1291 	clr	c
      003234 EE               [12] 1292 	mov	a,r6
      003235 94 E8            [12] 1293 	subb	a,#0xE8
      003237 EF               [12] 1294 	mov	a,r7
      003238 94 03            [12] 1295 	subb	a,#0x03
      00323A 50 03            [24] 1296 	jnc	00108$
      00323C 02 32 B2         [24] 1297 	ljmp	00103$
      00323F                       1298 00108$:
                                   1299 ;	../osal/common/OSAL_ClockBLE.c:199: OSAL_timeSeconds += timeMSec / 1000;
      00323F 90 10 7E         [24] 1300 	mov	dptr,#_timeMSec
      003242 E0               [24] 1301 	movx	a,@dptr
      003243 FE               [12] 1302 	mov	r6,a
      003244 A3               [24] 1303 	inc	dptr
      003245 E0               [24] 1304 	movx	a,@dptr
      003246 FF               [12] 1305 	mov	r7,a
      003247 90 11 F3         [24] 1306 	mov	dptr,#__divuint_PARM_2
      00324A 74 E8            [12] 1307 	mov	a,#0xE8
      00324C F0               [24] 1308 	movx	@dptr,a
      00324D 74 03            [12] 1309 	mov	a,#0x03
      00324F A3               [24] 1310 	inc	dptr
      003250 F0               [24] 1311 	movx	@dptr,a
      003251 8E 82            [24] 1312 	mov	dpl,r6
      003253 8F 83            [24] 1313 	mov	dph,r7
      003255 C0 07            [24] 1314 	push	ar7
      003257 C0 06            [24] 1315 	push	ar6
      003259 12 54 5B         [24] 1316 	lcall	__divuint
      00325C AC 82            [24] 1317 	mov	r4,dpl
      00325E AD 83            [24] 1318 	mov	r5,dph
      003260 D0 06            [24] 1319 	pop	ar6
      003262 D0 07            [24] 1320 	pop	ar7
      003264 90 10 80         [24] 1321 	mov	dptr,#_OSAL_timeSeconds
      003267 E0               [24] 1322 	movx	a,@dptr
      003268 F5 21            [12] 1323 	mov	_osalClockUpdate_sloc0_1_0,a
      00326A A3               [24] 1324 	inc	dptr
      00326B E0               [24] 1325 	movx	a,@dptr
      00326C F5 22            [12] 1326 	mov	(_osalClockUpdate_sloc0_1_0 + 1),a
      00326E A3               [24] 1327 	inc	dptr
      00326F E0               [24] 1328 	movx	a,@dptr
      003270 F5 23            [12] 1329 	mov	(_osalClockUpdate_sloc0_1_0 + 2),a
      003272 A3               [24] 1330 	inc	dptr
      003273 E0               [24] 1331 	movx	a,@dptr
      003274 F5 24            [12] 1332 	mov	(_osalClockUpdate_sloc0_1_0 + 3),a
      003276 8C 02            [24] 1333 	mov	ar2,r4
      003278 8D 03            [24] 1334 	mov	ar3,r5
      00327A 7C 00            [12] 1335 	mov	r4,#0x00
      00327C 7D 00            [12] 1336 	mov	r5,#0x00
      00327E 90 10 80         [24] 1337 	mov	dptr,#_OSAL_timeSeconds
      003281 EA               [12] 1338 	mov	a,r2
      003282 25 21            [12] 1339 	add	a,_osalClockUpdate_sloc0_1_0
      003284 F0               [24] 1340 	movx	@dptr,a
      003285 EB               [12] 1341 	mov	a,r3
      003286 35 22            [12] 1342 	addc	a,(_osalClockUpdate_sloc0_1_0 + 1)
      003288 A3               [24] 1343 	inc	dptr
      003289 F0               [24] 1344 	movx	@dptr,a
      00328A EC               [12] 1345 	mov	a,r4
      00328B 35 23            [12] 1346 	addc	a,(_osalClockUpdate_sloc0_1_0 + 2)
      00328D A3               [24] 1347 	inc	dptr
      00328E F0               [24] 1348 	movx	@dptr,a
      00328F ED               [12] 1349 	mov	a,r5
      003290 35 24            [12] 1350 	addc	a,(_osalClockUpdate_sloc0_1_0 + 3)
      003292 A3               [24] 1351 	inc	dptr
      003293 F0               [24] 1352 	movx	@dptr,a
                                   1353 ;	../osal/common/OSAL_ClockBLE.c:200: timeMSec = timeMSec % 1000;
      003294 90 12 31         [24] 1354 	mov	dptr,#__moduint_PARM_2
      003297 74 E8            [12] 1355 	mov	a,#0xE8
      003299 F0               [24] 1356 	movx	@dptr,a
      00329A 74 03            [12] 1357 	mov	a,#0x03
      00329C A3               [24] 1358 	inc	dptr
      00329D F0               [24] 1359 	movx	@dptr,a
      00329E 8E 82            [24] 1360 	mov	dpl,r6
      0032A0 8F 83            [24] 1361 	mov	dph,r7
      0032A2 12 5A A8         [24] 1362 	lcall	__moduint
      0032A5 E5 82            [12] 1363 	mov	a,dpl
      0032A7 85 83 F0         [24] 1364 	mov	b,dph
      0032AA 90 10 7E         [24] 1365 	mov	dptr,#_timeMSec
      0032AD F0               [24] 1366 	movx	@dptr,a
      0032AE E5 F0            [12] 1367 	mov	a,b
      0032B0 A3               [24] 1368 	inc	dptr
      0032B1 F0               [24] 1369 	movx	@dptr,a
      0032B2                       1370 00103$:
      0032B2 22               [24] 1371 	ret
                                   1372 ;------------------------------------------------------------
                                   1373 ;Allocation info for local variables in function 'osal_setClock'
                                   1374 ;------------------------------------------------------------
                                   1375 ;newTime                   Allocated with name '_osal_setClock_newTime_1_84'
                                   1376 ;------------------------------------------------------------
                                   1377 ;	../osal/common/OSAL_ClockBLE.c:215: void osal_setClock( UTCTime newTime )
                                   1378 ;	-----------------------------------------
                                   1379 ;	 function osal_setClock
                                   1380 ;	-----------------------------------------
      0032B3                       1381 _osal_setClock:
      0032B3 AF 82            [24] 1382 	mov	r7,dpl
      0032B5 AE 83            [24] 1383 	mov	r6,dph
      0032B7 AD F0            [24] 1384 	mov	r5,b
      0032B9 FC               [12] 1385 	mov	r4,a
      0032BA 90 10 8C         [24] 1386 	mov	dptr,#_osal_setClock_newTime_1_84
      0032BD EF               [12] 1387 	mov	a,r7
      0032BE F0               [24] 1388 	movx	@dptr,a
      0032BF EE               [12] 1389 	mov	a,r6
      0032C0 A3               [24] 1390 	inc	dptr
      0032C1 F0               [24] 1391 	movx	@dptr,a
      0032C2 ED               [12] 1392 	mov	a,r5
      0032C3 A3               [24] 1393 	inc	dptr
      0032C4 F0               [24] 1394 	movx	@dptr,a
      0032C5 EC               [12] 1395 	mov	a,r4
      0032C6 A3               [24] 1396 	inc	dptr
      0032C7 F0               [24] 1397 	movx	@dptr,a
                                   1398 ;	../osal/common/OSAL_ClockBLE.c:217: OSAL_timeSeconds = newTime;
      0032C8 90 10 8C         [24] 1399 	mov	dptr,#_osal_setClock_newTime_1_84
      0032CB E0               [24] 1400 	movx	a,@dptr
      0032CC FC               [12] 1401 	mov	r4,a
      0032CD A3               [24] 1402 	inc	dptr
      0032CE E0               [24] 1403 	movx	a,@dptr
      0032CF FD               [12] 1404 	mov	r5,a
      0032D0 A3               [24] 1405 	inc	dptr
      0032D1 E0               [24] 1406 	movx	a,@dptr
      0032D2 FE               [12] 1407 	mov	r6,a
      0032D3 A3               [24] 1408 	inc	dptr
      0032D4 E0               [24] 1409 	movx	a,@dptr
      0032D5 FF               [12] 1410 	mov	r7,a
      0032D6 90 10 80         [24] 1411 	mov	dptr,#_OSAL_timeSeconds
      0032D9 EC               [12] 1412 	mov	a,r4
      0032DA F0               [24] 1413 	movx	@dptr,a
      0032DB ED               [12] 1414 	mov	a,r5
      0032DC A3               [24] 1415 	inc	dptr
      0032DD F0               [24] 1416 	movx	@dptr,a
      0032DE EE               [12] 1417 	mov	a,r6
      0032DF A3               [24] 1418 	inc	dptr
      0032E0 F0               [24] 1419 	movx	@dptr,a
      0032E1 EF               [12] 1420 	mov	a,r7
      0032E2 A3               [24] 1421 	inc	dptr
      0032E3 F0               [24] 1422 	movx	@dptr,a
      0032E4                       1423 00101$:
      0032E4 22               [24] 1424 	ret
                                   1425 ;------------------------------------------------------------
                                   1426 ;Allocation info for local variables in function 'osal_getClock'
                                   1427 ;------------------------------------------------------------
                                   1428 ;	../osal/common/OSAL_ClockBLE.c:232: UTCTime osal_getClock( void )
                                   1429 ;	-----------------------------------------
                                   1430 ;	 function osal_getClock
                                   1431 ;	-----------------------------------------
      0032E5                       1432 _osal_getClock:
                                   1433 ;	../osal/common/OSAL_ClockBLE.c:234: return ( OSAL_timeSeconds );
      0032E5 90 10 80         [24] 1434 	mov	dptr,#_OSAL_timeSeconds
      0032E8 E0               [24] 1435 	movx	a,@dptr
      0032E9 FC               [12] 1436 	mov	r4,a
      0032EA A3               [24] 1437 	inc	dptr
      0032EB E0               [24] 1438 	movx	a,@dptr
      0032EC FD               [12] 1439 	mov	r5,a
      0032ED A3               [24] 1440 	inc	dptr
      0032EE E0               [24] 1441 	movx	a,@dptr
      0032EF FE               [12] 1442 	mov	r6,a
      0032F0 A3               [24] 1443 	inc	dptr
      0032F1 E0               [24] 1444 	movx	a,@dptr
      0032F2 FF               [12] 1445 	mov	r7,a
      0032F3 8C 82            [24] 1446 	mov	dpl,r4
      0032F5 8D 83            [24] 1447 	mov	dph,r5
      0032F7 8E F0            [24] 1448 	mov	b,r6
      0032F9 EF               [12] 1449 	mov	a,r7
      0032FA                       1450 00101$:
      0032FA 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'osal_ConvertUTCTime'
                                   1454 ;------------------------------------------------------------
                                   1455 ;sloc0                     Allocated with name '_osal_ConvertUTCTime_sloc0_1_0'
                                   1456 ;sloc1                     Allocated with name '_osal_ConvertUTCTime_sloc1_1_0'
                                   1457 ;sloc2                     Allocated with name '_osal_ConvertUTCTime_sloc2_1_0'
                                   1458 ;secTime                   Allocated with name '_osal_ConvertUTCTime_PARM_2'
                                   1459 ;tm                        Allocated with name '_osal_ConvertUTCTime_tm_1_88'
                                   1460 ;day                       Allocated with name '_osal_ConvertUTCTime_day_2_90'
                                   1461 ;numDays                   Allocated with name '_osal_ConvertUTCTime_numDays_2_91'
                                   1462 ;------------------------------------------------------------
                                   1463 ;	../osal/common/OSAL_ClockBLE.c:249: void osal_ConvertUTCTime( UTCTimeStruct *tm, UTCTime secTime )
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function osal_ConvertUTCTime
                                   1466 ;	-----------------------------------------
      0032FB                       1467 _osal_ConvertUTCTime:
      0032FB AF F0            [24] 1468 	mov	r7,b
      0032FD AE 83            [24] 1469 	mov	r6,dph
      0032FF E5 82            [12] 1470 	mov	a,dpl
      003301 90 10 94         [24] 1471 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      003304 F0               [24] 1472 	movx	@dptr,a
      003305 EE               [12] 1473 	mov	a,r6
      003306 A3               [24] 1474 	inc	dptr
      003307 F0               [24] 1475 	movx	@dptr,a
      003308 EF               [12] 1476 	mov	a,r7
      003309 A3               [24] 1477 	inc	dptr
      00330A F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	../osal/common/OSAL_ClockBLE.c:253: uint32 day = secTime % DAY;
      00330B 90 10 90         [24] 1480 	mov	dptr,#_osal_ConvertUTCTime_PARM_2
      00330E E0               [24] 1481 	movx	a,@dptr
      00330F F5 25            [12] 1482 	mov	_osal_ConvertUTCTime_sloc0_1_0,a
      003311 A3               [24] 1483 	inc	dptr
      003312 E0               [24] 1484 	movx	a,@dptr
      003313 F5 26            [12] 1485 	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 1),a
      003315 A3               [24] 1486 	inc	dptr
      003316 E0               [24] 1487 	movx	a,@dptr
      003317 F5 27            [12] 1488 	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 2),a
      003319 A3               [24] 1489 	inc	dptr
      00331A E0               [24] 1490 	movx	a,@dptr
      00331B F5 28            [12] 1491 	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 3),a
      00331D 90 11 F9         [24] 1492 	mov	dptr,#__modulong_PARM_2
      003320 74 80            [12] 1493 	mov	a,#0x80
      003322 F0               [24] 1494 	movx	@dptr,a
      003323 74 51            [12] 1495 	mov	a,#0x51
      003325 A3               [24] 1496 	inc	dptr
      003326 F0               [24] 1497 	movx	@dptr,a
      003327 74 01            [12] 1498 	mov	a,#0x01
      003329 A3               [24] 1499 	inc	dptr
      00332A F0               [24] 1500 	movx	@dptr,a
      00332B 74 00            [12] 1501 	mov	a,#0x00
      00332D A3               [24] 1502 	inc	dptr
      00332E F0               [24] 1503 	movx	@dptr,a
                                   1504 ;	../osal/common/OSAL_ClockBLE.c:254: tm->seconds = day % 60UL;
      00332F 85 25 82         [24] 1505 	mov	dpl,_osal_ConvertUTCTime_sloc0_1_0
      003332 85 26 83         [24] 1506 	mov	dph,(_osal_ConvertUTCTime_sloc0_1_0 + 1)
      003335 85 27 F0         [24] 1507 	mov	b,(_osal_ConvertUTCTime_sloc0_1_0 + 2)
      003338 E5 28            [12] 1508 	mov	a,(_osal_ConvertUTCTime_sloc0_1_0 + 3)
      00333A 12 54 F5         [24] 1509 	lcall	__modulong
      00333D 85 82 29         [24] 1510 	mov	_osal_ConvertUTCTime_sloc1_1_0,dpl
      003340 85 83 2A         [24] 1511 	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 1),dph
      003343 85 F0 2B         [24] 1512 	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 2),b
      003346 F5 2C            [12] 1513 	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 3),a
      003348 90 10 94         [24] 1514 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      00334B E0               [24] 1515 	movx	a,@dptr
      00334C FD               [12] 1516 	mov	r5,a
      00334D A3               [24] 1517 	inc	dptr
      00334E E0               [24] 1518 	movx	a,@dptr
      00334F FE               [12] 1519 	mov	r6,a
      003350 A3               [24] 1520 	inc	dptr
      003351 E0               [24] 1521 	movx	a,@dptr
      003352 FF               [12] 1522 	mov	r7,a
      003353 90 11 F9         [24] 1523 	mov	dptr,#__modulong_PARM_2
      003356 74 3C            [12] 1524 	mov	a,#0x3C
      003358 F0               [24] 1525 	movx	@dptr,a
      003359 74 00            [12] 1526 	mov	a,#0x00
      00335B A3               [24] 1527 	inc	dptr
      00335C F0               [24] 1528 	movx	@dptr,a
      00335D A3               [24] 1529 	inc	dptr
      00335E F0               [24] 1530 	movx	@dptr,a
      00335F A3               [24] 1531 	inc	dptr
      003360 F0               [24] 1532 	movx	@dptr,a
      003361 85 29 82         [24] 1533 	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
      003364 85 2A 83         [24] 1534 	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
      003367 85 2B F0         [24] 1535 	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
      00336A E5 2C            [12] 1536 	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
      00336C C0 07            [24] 1537 	push	ar7
      00336E C0 06            [24] 1538 	push	ar6
      003370 C0 05            [24] 1539 	push	ar5
      003372 12 54 F5         [24] 1540 	lcall	__modulong
      003375 A9 82            [24] 1541 	mov	r1,dpl
      003377 AA 83            [24] 1542 	mov	r2,dph
      003379 AB F0            [24] 1543 	mov	r3,b
      00337B FC               [12] 1544 	mov	r4,a
      00337C D0 05            [24] 1545 	pop	ar5
      00337E D0 06            [24] 1546 	pop	ar6
      003380 D0 07            [24] 1547 	pop	ar7
      003382 8D 82            [24] 1548 	mov	dpl,r5
      003384 8E 83            [24] 1549 	mov	dph,r6
      003386 8F F0            [24] 1550 	mov	b,r7
      003388 E9               [12] 1551 	mov	a,r1
      003389 12 5A 01         [24] 1552 	lcall	__gptrput
                                   1553 ;	../osal/common/OSAL_ClockBLE.c:255: tm->minutes = (day % 3600UL) / 60UL;
      00338C 74 01            [12] 1554 	mov	a,#0x01
      00338E 2D               [12] 1555 	add	a,r5
      00338F F5 2D            [12] 1556 	mov	_osal_ConvertUTCTime_sloc2_1_0,a
      003391 74 00            [12] 1557 	mov	a,#0x00
      003393 3E               [12] 1558 	addc	a,r6
      003394 F5 2E            [12] 1559 	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 1),a
      003396 8F 2F            [24] 1560 	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 2),r7
      003398 90 11 F9         [24] 1561 	mov	dptr,#__modulong_PARM_2
      00339B 74 10            [12] 1562 	mov	a,#0x10
      00339D F0               [24] 1563 	movx	@dptr,a
      00339E 74 0E            [12] 1564 	mov	a,#0x0E
      0033A0 A3               [24] 1565 	inc	dptr
      0033A1 F0               [24] 1566 	movx	@dptr,a
      0033A2 74 00            [12] 1567 	mov	a,#0x00
      0033A4 A3               [24] 1568 	inc	dptr
      0033A5 F0               [24] 1569 	movx	@dptr,a
      0033A6 A3               [24] 1570 	inc	dptr
      0033A7 F0               [24] 1571 	movx	@dptr,a
      0033A8 85 29 82         [24] 1572 	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
      0033AB 85 2A 83         [24] 1573 	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
      0033AE 85 2B F0         [24] 1574 	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
      0033B1 E5 2C            [12] 1575 	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
      0033B3 C0 07            [24] 1576 	push	ar7
      0033B5 C0 06            [24] 1577 	push	ar6
      0033B7 C0 05            [24] 1578 	push	ar5
      0033B9 12 54 F5         [24] 1579 	lcall	__modulong
      0033BC A8 82            [24] 1580 	mov	r0,dpl
      0033BE A9 83            [24] 1581 	mov	r1,dph
      0033C0 AB F0            [24] 1582 	mov	r3,b
      0033C2 FC               [12] 1583 	mov	r4,a
      0033C3 D0 05            [24] 1584 	pop	ar5
      0033C5 D0 06            [24] 1585 	pop	ar6
      0033C7 D0 07            [24] 1586 	pop	ar7
      0033C9 90 12 08         [24] 1587 	mov	dptr,#__divulong_PARM_2
      0033CC 74 3C            [12] 1588 	mov	a,#0x3C
      0033CE F0               [24] 1589 	movx	@dptr,a
      0033CF 74 00            [12] 1590 	mov	a,#0x00
      0033D1 A3               [24] 1591 	inc	dptr
      0033D2 F0               [24] 1592 	movx	@dptr,a
      0033D3 A3               [24] 1593 	inc	dptr
      0033D4 F0               [24] 1594 	movx	@dptr,a
      0033D5 A3               [24] 1595 	inc	dptr
      0033D6 F0               [24] 1596 	movx	@dptr,a
      0033D7 88 82            [24] 1597 	mov	dpl,r0
      0033D9 89 83            [24] 1598 	mov	dph,r1
      0033DB 8B F0            [24] 1599 	mov	b,r3
      0033DD EC               [12] 1600 	mov	a,r4
      0033DE C0 07            [24] 1601 	push	ar7
      0033E0 C0 06            [24] 1602 	push	ar6
      0033E2 C0 05            [24] 1603 	push	ar5
      0033E4 12 56 8F         [24] 1604 	lcall	__divulong
      0033E7 A9 82            [24] 1605 	mov	r1,dpl
      0033E9 AA 83            [24] 1606 	mov	r2,dph
      0033EB AB F0            [24] 1607 	mov	r3,b
      0033ED FC               [12] 1608 	mov	r4,a
      0033EE D0 05            [24] 1609 	pop	ar5
      0033F0 D0 06            [24] 1610 	pop	ar6
      0033F2 D0 07            [24] 1611 	pop	ar7
      0033F4 85 2D 82         [24] 1612 	mov	dpl,_osal_ConvertUTCTime_sloc2_1_0
      0033F7 85 2E 83         [24] 1613 	mov	dph,(_osal_ConvertUTCTime_sloc2_1_0 + 1)
      0033FA 85 2F F0         [24] 1614 	mov	b,(_osal_ConvertUTCTime_sloc2_1_0 + 2)
      0033FD E9               [12] 1615 	mov	a,r1
      0033FE 12 5A 01         [24] 1616 	lcall	__gptrput
                                   1617 ;	../osal/common/OSAL_ClockBLE.c:256: tm->hour = day / 3600UL;
      003401 74 02            [12] 1618 	mov	a,#0x02
      003403 2D               [12] 1619 	add	a,r5
      003404 F5 2D            [12] 1620 	mov	_osal_ConvertUTCTime_sloc2_1_0,a
      003406 74 00            [12] 1621 	mov	a,#0x00
      003408 3E               [12] 1622 	addc	a,r6
      003409 F5 2E            [12] 1623 	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 1),a
      00340B 8F 2F            [24] 1624 	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 2),r7
      00340D 90 12 08         [24] 1625 	mov	dptr,#__divulong_PARM_2
      003410 74 10            [12] 1626 	mov	a,#0x10
      003412 F0               [24] 1627 	movx	@dptr,a
      003413 74 0E            [12] 1628 	mov	a,#0x0E
      003415 A3               [24] 1629 	inc	dptr
      003416 F0               [24] 1630 	movx	@dptr,a
      003417 74 00            [12] 1631 	mov	a,#0x00
      003419 A3               [24] 1632 	inc	dptr
      00341A F0               [24] 1633 	movx	@dptr,a
      00341B A3               [24] 1634 	inc	dptr
      00341C F0               [24] 1635 	movx	@dptr,a
      00341D 85 29 82         [24] 1636 	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
      003420 85 2A 83         [24] 1637 	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
      003423 85 2B F0         [24] 1638 	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
      003426 E5 2C            [12] 1639 	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
      003428 C0 07            [24] 1640 	push	ar7
      00342A C0 06            [24] 1641 	push	ar6
      00342C C0 05            [24] 1642 	push	ar5
      00342E 12 56 8F         [24] 1643 	lcall	__divulong
      003431 A8 82            [24] 1644 	mov	r0,dpl
      003433 A9 83            [24] 1645 	mov	r1,dph
      003435 AB F0            [24] 1646 	mov	r3,b
      003437 FC               [12] 1647 	mov	r4,a
      003438 D0 05            [24] 1648 	pop	ar5
      00343A D0 06            [24] 1649 	pop	ar6
      00343C D0 07            [24] 1650 	pop	ar7
      00343E 85 2D 82         [24] 1651 	mov	dpl,_osal_ConvertUTCTime_sloc2_1_0
      003441 85 2E 83         [24] 1652 	mov	dph,(_osal_ConvertUTCTime_sloc2_1_0 + 1)
      003444 85 2F F0         [24] 1653 	mov	b,(_osal_ConvertUTCTime_sloc2_1_0 + 2)
      003447 E8               [12] 1654 	mov	a,r0
      003448 12 5A 01         [24] 1655 	lcall	__gptrput
                                   1656 ;	../osal/common/OSAL_ClockBLE.c:261: uint16 numDays = secTime / DAY;
      00344B 90 12 08         [24] 1657 	mov	dptr,#__divulong_PARM_2
      00344E 74 80            [12] 1658 	mov	a,#0x80
      003450 F0               [24] 1659 	movx	@dptr,a
      003451 74 51            [12] 1660 	mov	a,#0x51
      003453 A3               [24] 1661 	inc	dptr
      003454 F0               [24] 1662 	movx	@dptr,a
      003455 74 01            [12] 1663 	mov	a,#0x01
      003457 A3               [24] 1664 	inc	dptr
      003458 F0               [24] 1665 	movx	@dptr,a
      003459 74 00            [12] 1666 	mov	a,#0x00
      00345B A3               [24] 1667 	inc	dptr
      00345C F0               [24] 1668 	movx	@dptr,a
      00345D 85 25 82         [24] 1669 	mov	dpl,_osal_ConvertUTCTime_sloc0_1_0
      003460 85 26 83         [24] 1670 	mov	dph,(_osal_ConvertUTCTime_sloc0_1_0 + 1)
      003463 85 27 F0         [24] 1671 	mov	b,(_osal_ConvertUTCTime_sloc0_1_0 + 2)
      003466 E5 28            [12] 1672 	mov	a,(_osal_ConvertUTCTime_sloc0_1_0 + 3)
      003468 C0 07            [24] 1673 	push	ar7
      00346A C0 06            [24] 1674 	push	ar6
      00346C C0 05            [24] 1675 	push	ar5
      00346E 12 56 8F         [24] 1676 	lcall	__divulong
      003471 A9 82            [24] 1677 	mov	r1,dpl
      003473 AA 83            [24] 1678 	mov	r2,dph
      003475 AB F0            [24] 1679 	mov	r3,b
      003477 FC               [12] 1680 	mov	r4,a
      003478 D0 05            [24] 1681 	pop	ar5
      00347A D0 06            [24] 1682 	pop	ar6
      00347C D0 07            [24] 1683 	pop	ar7
      00347E 90 10 97         [24] 1684 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003481 E9               [12] 1685 	mov	a,r1
      003482 F0               [24] 1686 	movx	@dptr,a
      003483 EA               [12] 1687 	mov	a,r2
      003484 A3               [24] 1688 	inc	dptr
      003485 F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	../osal/common/OSAL_ClockBLE.c:262: tm->year = BEGYEAR;
      003486 74 05            [12] 1691 	mov	a,#0x05
      003488 2D               [12] 1692 	add	a,r5
      003489 FD               [12] 1693 	mov	r5,a
      00348A 74 00            [12] 1694 	mov	a,#0x00
      00348C 3E               [12] 1695 	addc	a,r6
      00348D FE               [12] 1696 	mov	r6,a
      00348E 8D 82            [24] 1697 	mov	dpl,r5
      003490 8E 83            [24] 1698 	mov	dph,r6
      003492 8F F0            [24] 1699 	mov	b,r7
      003494 74 D0            [12] 1700 	mov	a,#0xD0
      003496 12 5A 01         [24] 1701 	lcall	__gptrput
      003499 A3               [24] 1702 	inc	dptr
      00349A 74 07            [12] 1703 	mov	a,#0x07
      00349C 12 5A 01         [24] 1704 	lcall	__gptrput
                                   1705 ;	../osal/common/OSAL_ClockBLE.c:263: while ( numDays >= YearLength( tm->year ) )
      00349F 90 10 94         [24] 1706 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      0034A2 E0               [24] 1707 	movx	a,@dptr
      0034A3 FD               [12] 1708 	mov	r5,a
      0034A4 A3               [24] 1709 	inc	dptr
      0034A5 E0               [24] 1710 	movx	a,@dptr
      0034A6 FE               [12] 1711 	mov	r6,a
      0034A7 A3               [24] 1712 	inc	dptr
      0034A8 E0               [24] 1713 	movx	a,@dptr
      0034A9 FF               [12] 1714 	mov	r7,a
      0034AA 74 05            [12] 1715 	mov	a,#0x05
      0034AC 2D               [12] 1716 	add	a,r5
      0034AD FD               [12] 1717 	mov	r5,a
      0034AE 74 00            [12] 1718 	mov	a,#0x00
      0034B0 3E               [12] 1719 	addc	a,r6
      0034B1 FE               [12] 1720 	mov	r6,a
      0034B2                       1721 00101$:
      0034B2 8D 82            [24] 1722 	mov	dpl,r5
      0034B4 8E 83            [24] 1723 	mov	dph,r6
      0034B6 8F F0            [24] 1724 	mov	b,r7
      0034B8 12 5B 6D         [24] 1725 	lcall	__gptrget
      0034BB FB               [12] 1726 	mov	r3,a
      0034BC A3               [24] 1727 	inc	dptr
      0034BD 12 5B 6D         [24] 1728 	lcall	__gptrget
      0034C0 FC               [12] 1729 	mov	r4,a
      0034C1 90 12 31         [24] 1730 	mov	dptr,#__moduint_PARM_2
      0034C4 74 90            [12] 1731 	mov	a,#0x90
      0034C6 F0               [24] 1732 	movx	@dptr,a
      0034C7 74 01            [12] 1733 	mov	a,#0x01
      0034C9 A3               [24] 1734 	inc	dptr
      0034CA F0               [24] 1735 	movx	@dptr,a
      0034CB 8B 82            [24] 1736 	mov	dpl,r3
      0034CD 8C 83            [24] 1737 	mov	dph,r4
      0034CF C0 07            [24] 1738 	push	ar7
      0034D1 C0 06            [24] 1739 	push	ar6
      0034D3 C0 05            [24] 1740 	push	ar5
      0034D5 12 5A A8         [24] 1741 	lcall	__moduint
      0034D8 AB 82            [24] 1742 	mov	r3,dpl
      0034DA AC 83            [24] 1743 	mov	r4,dph
      0034DC D0 05            [24] 1744 	pop	ar5
      0034DE D0 06            [24] 1745 	pop	ar6
      0034E0 D0 07            [24] 1746 	pop	ar7
      0034E2 EB               [12] 1747 	mov	a,r3
      0034E3 4C               [12] 1748 	orl	a,r4
      0034E4 B4 01 00         [24] 1749 	cjne	a,#0x01,00173$
      0034E7                       1750 00173$:
      0034E7 E4               [12] 1751 	clr	a
      0034E8 33               [12] 1752 	rlc	a
      0034E9 FB               [12] 1753 	mov	r3,a
      0034EA EB               [12] 1754 	mov	a,r3
      0034EB 60 03            [24] 1755 	jz	00174$
      0034ED 02 35 4A         [24] 1756 	ljmp	00112$
      0034F0                       1757 00174$:
      0034F0 8D 82            [24] 1758 	mov	dpl,r5
      0034F2 8E 83            [24] 1759 	mov	dph,r6
      0034F4 8F F0            [24] 1760 	mov	b,r7
      0034F6 12 5B 6D         [24] 1761 	lcall	__gptrget
      0034F9 FB               [12] 1762 	mov	r3,a
      0034FA A3               [24] 1763 	inc	dptr
      0034FB 12 5B 6D         [24] 1764 	lcall	__gptrget
      0034FE FC               [12] 1765 	mov	r4,a
      0034FF 90 12 31         [24] 1766 	mov	dptr,#__moduint_PARM_2
      003502 74 64            [12] 1767 	mov	a,#0x64
      003504 F0               [24] 1768 	movx	@dptr,a
      003505 74 00            [12] 1769 	mov	a,#0x00
      003507 A3               [24] 1770 	inc	dptr
      003508 F0               [24] 1771 	movx	@dptr,a
      003509 8B 82            [24] 1772 	mov	dpl,r3
      00350B 8C 83            [24] 1773 	mov	dph,r4
      00350D C0 07            [24] 1774 	push	ar7
      00350F C0 06            [24] 1775 	push	ar6
      003511 C0 05            [24] 1776 	push	ar5
      003513 12 5A A8         [24] 1777 	lcall	__moduint
      003516 E5 82            [12] 1778 	mov	a,dpl
      003518 85 83 F0         [24] 1779 	mov	b,dph
      00351B D0 05            [24] 1780 	pop	ar5
      00351D D0 06            [24] 1781 	pop	ar6
      00351F D0 07            [24] 1782 	pop	ar7
      003521 45 F0            [12] 1783 	orl	a,b
      003523 70 03            [24] 1784 	jnz	00175$
      003525 02 35 51         [24] 1785 	ljmp	00109$
      003528                       1786 00175$:
      003528 8D 82            [24] 1787 	mov	dpl,r5
      00352A 8E 83            [24] 1788 	mov	dph,r6
      00352C 8F F0            [24] 1789 	mov	b,r7
      00352E 12 5B 6D         [24] 1790 	lcall	__gptrget
      003531 FB               [12] 1791 	mov	r3,a
      003532 A3               [24] 1792 	inc	dptr
      003533 12 5B 6D         [24] 1793 	lcall	__gptrget
      003536 FC               [12] 1794 	mov	r4,a
      003537 53 03 03         [24] 1795 	anl	ar3,#0x03
      00353A 7C 00            [12] 1796 	mov	r4,#0x00
      00353C EB               [12] 1797 	mov	a,r3
      00353D 4C               [12] 1798 	orl	a,r4
      00353E B4 01 00         [24] 1799 	cjne	a,#0x01,00176$
      003541                       1800 00176$:
      003541 E4               [12] 1801 	clr	a
      003542 33               [12] 1802 	rlc	a
      003543 FB               [12] 1803 	mov	r3,a
      003544 EB               [12] 1804 	mov	a,r3
      003545 70 03            [24] 1805 	jnz	00177$
      003547 02 35 51         [24] 1806 	ljmp	00109$
      00354A                       1807 00177$:
      00354A                       1808 00112$:
      00354A 7B 6E            [12] 1809 	mov	r3,#0x6E
      00354C 7C 01            [12] 1810 	mov	r4,#0x01
      00354E 02 35 55         [24] 1811 	ljmp	00110$
      003551                       1812 00109$:
      003551 7B 6D            [12] 1813 	mov	r3,#0x6D
      003553 7C 01            [12] 1814 	mov	r4,#0x01
      003555                       1815 00110$:
      003555 90 10 97         [24] 1816 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003558 E0               [24] 1817 	movx	a,@dptr
      003559 F9               [12] 1818 	mov	r1,a
      00355A A3               [24] 1819 	inc	dptr
      00355B E0               [24] 1820 	movx	a,@dptr
      00355C FA               [12] 1821 	mov	r2,a
      00355D C3               [12] 1822 	clr	c
      00355E E9               [12] 1823 	mov	a,r1
      00355F 9B               [12] 1824 	subb	a,r3
      003560 EA               [12] 1825 	mov	a,r2
      003561 9C               [12] 1826 	subb	a,r4
      003562 50 03            [24] 1827 	jnc	00178$
      003564 02 36 43         [24] 1828 	ljmp	00103$
      003567                       1829 00178$:
                                   1830 ;	../osal/common/OSAL_ClockBLE.c:265: numDays -= YearLength( tm->year );
      003567 8D 82            [24] 1831 	mov	dpl,r5
      003569 8E 83            [24] 1832 	mov	dph,r6
      00356B 8F F0            [24] 1833 	mov	b,r7
      00356D 12 5B 6D         [24] 1834 	lcall	__gptrget
      003570 FB               [12] 1835 	mov	r3,a
      003571 A3               [24] 1836 	inc	dptr
      003572 12 5B 6D         [24] 1837 	lcall	__gptrget
      003575 FC               [12] 1838 	mov	r4,a
      003576 90 12 31         [24] 1839 	mov	dptr,#__moduint_PARM_2
      003579 74 90            [12] 1840 	mov	a,#0x90
      00357B F0               [24] 1841 	movx	@dptr,a
      00357C 74 01            [12] 1842 	mov	a,#0x01
      00357E A3               [24] 1843 	inc	dptr
      00357F F0               [24] 1844 	movx	@dptr,a
      003580 8B 82            [24] 1845 	mov	dpl,r3
      003582 8C 83            [24] 1846 	mov	dph,r4
      003584 C0 07            [24] 1847 	push	ar7
      003586 C0 06            [24] 1848 	push	ar6
      003588 C0 05            [24] 1849 	push	ar5
      00358A 12 5A A8         [24] 1850 	lcall	__moduint
      00358D AB 82            [24] 1851 	mov	r3,dpl
      00358F AC 83            [24] 1852 	mov	r4,dph
      003591 D0 05            [24] 1853 	pop	ar5
      003593 D0 06            [24] 1854 	pop	ar6
      003595 D0 07            [24] 1855 	pop	ar7
      003597 EB               [12] 1856 	mov	a,r3
      003598 4C               [12] 1857 	orl	a,r4
      003599 B4 01 00         [24] 1858 	cjne	a,#0x01,00179$
      00359C                       1859 00179$:
      00359C E4               [12] 1860 	clr	a
      00359D 33               [12] 1861 	rlc	a
      00359E FB               [12] 1862 	mov	r3,a
      00359F EB               [12] 1863 	mov	a,r3
      0035A0 60 03            [24] 1864 	jz	00180$
      0035A2 02 35 FF         [24] 1865 	ljmp	00120$
      0035A5                       1866 00180$:
      0035A5 8D 82            [24] 1867 	mov	dpl,r5
      0035A7 8E 83            [24] 1868 	mov	dph,r6
      0035A9 8F F0            [24] 1869 	mov	b,r7
      0035AB 12 5B 6D         [24] 1870 	lcall	__gptrget
      0035AE FB               [12] 1871 	mov	r3,a
      0035AF A3               [24] 1872 	inc	dptr
      0035B0 12 5B 6D         [24] 1873 	lcall	__gptrget
      0035B3 FC               [12] 1874 	mov	r4,a
      0035B4 90 12 31         [24] 1875 	mov	dptr,#__moduint_PARM_2
      0035B7 74 64            [12] 1876 	mov	a,#0x64
      0035B9 F0               [24] 1877 	movx	@dptr,a
      0035BA 74 00            [12] 1878 	mov	a,#0x00
      0035BC A3               [24] 1879 	inc	dptr
      0035BD F0               [24] 1880 	movx	@dptr,a
      0035BE 8B 82            [24] 1881 	mov	dpl,r3
      0035C0 8C 83            [24] 1882 	mov	dph,r4
      0035C2 C0 07            [24] 1883 	push	ar7
      0035C4 C0 06            [24] 1884 	push	ar6
      0035C6 C0 05            [24] 1885 	push	ar5
      0035C8 12 5A A8         [24] 1886 	lcall	__moduint
      0035CB E5 82            [12] 1887 	mov	a,dpl
      0035CD 85 83 F0         [24] 1888 	mov	b,dph
      0035D0 D0 05            [24] 1889 	pop	ar5
      0035D2 D0 06            [24] 1890 	pop	ar6
      0035D4 D0 07            [24] 1891 	pop	ar7
      0035D6 45 F0            [12] 1892 	orl	a,b
      0035D8 70 03            [24] 1893 	jnz	00181$
      0035DA 02 36 06         [24] 1894 	ljmp	00117$
      0035DD                       1895 00181$:
      0035DD 8D 82            [24] 1896 	mov	dpl,r5
      0035DF 8E 83            [24] 1897 	mov	dph,r6
      0035E1 8F F0            [24] 1898 	mov	b,r7
      0035E3 12 5B 6D         [24] 1899 	lcall	__gptrget
      0035E6 FB               [12] 1900 	mov	r3,a
      0035E7 A3               [24] 1901 	inc	dptr
      0035E8 12 5B 6D         [24] 1902 	lcall	__gptrget
      0035EB FC               [12] 1903 	mov	r4,a
      0035EC 53 03 03         [24] 1904 	anl	ar3,#0x03
      0035EF 7C 00            [12] 1905 	mov	r4,#0x00
      0035F1 EB               [12] 1906 	mov	a,r3
      0035F2 4C               [12] 1907 	orl	a,r4
      0035F3 B4 01 00         [24] 1908 	cjne	a,#0x01,00182$
      0035F6                       1909 00182$:
      0035F6 E4               [12] 1910 	clr	a
      0035F7 33               [12] 1911 	rlc	a
      0035F8 FB               [12] 1912 	mov	r3,a
      0035F9 EB               [12] 1913 	mov	a,r3
      0035FA 70 03            [24] 1914 	jnz	00183$
      0035FC 02 36 06         [24] 1915 	ljmp	00117$
      0035FF                       1916 00183$:
      0035FF                       1917 00120$:
      0035FF 7B 6E            [12] 1918 	mov	r3,#0x6E
      003601 7C 01            [12] 1919 	mov	r4,#0x01
      003603 02 36 0A         [24] 1920 	ljmp	00118$
      003606                       1921 00117$:
      003606 7B 6D            [12] 1922 	mov	r3,#0x6D
      003608 7C 01            [12] 1923 	mov	r4,#0x01
      00360A                       1924 00118$:
      00360A 90 10 97         [24] 1925 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      00360D E0               [24] 1926 	movx	a,@dptr
      00360E F9               [12] 1927 	mov	r1,a
      00360F A3               [24] 1928 	inc	dptr
      003610 E0               [24] 1929 	movx	a,@dptr
      003611 FA               [12] 1930 	mov	r2,a
      003612 90 10 97         [24] 1931 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003615 E9               [12] 1932 	mov	a,r1
      003616 C3               [12] 1933 	clr	c
      003617 9B               [12] 1934 	subb	a,r3
      003618 F0               [24] 1935 	movx	@dptr,a
      003619 EA               [12] 1936 	mov	a,r2
      00361A 9C               [12] 1937 	subb	a,r4
      00361B A3               [24] 1938 	inc	dptr
      00361C F0               [24] 1939 	movx	@dptr,a
                                   1940 ;	../osal/common/OSAL_ClockBLE.c:266: tm->year++;
      00361D 8D 82            [24] 1941 	mov	dpl,r5
      00361F 8E 83            [24] 1942 	mov	dph,r6
      003621 8F F0            [24] 1943 	mov	b,r7
      003623 12 5B 6D         [24] 1944 	lcall	__gptrget
      003626 FB               [12] 1945 	mov	r3,a
      003627 A3               [24] 1946 	inc	dptr
      003628 12 5B 6D         [24] 1947 	lcall	__gptrget
      00362B FC               [12] 1948 	mov	r4,a
      00362C 0B               [12] 1949 	inc	r3
      00362D BB 00 01         [24] 1950 	cjne	r3,#0x00,00184$
      003630 0C               [12] 1951 	inc	r4
      003631                       1952 00184$:
      003631 8D 82            [24] 1953 	mov	dpl,r5
      003633 8E 83            [24] 1954 	mov	dph,r6
      003635 8F F0            [24] 1955 	mov	b,r7
      003637 EB               [12] 1956 	mov	a,r3
      003638 12 5A 01         [24] 1957 	lcall	__gptrput
      00363B A3               [24] 1958 	inc	dptr
      00363C EC               [12] 1959 	mov	a,r4
      00363D 12 5A 01         [24] 1960 	lcall	__gptrput
      003640 02 34 B2         [24] 1961 	ljmp	00101$
      003643                       1962 00103$:
                                   1963 ;	../osal/common/OSAL_ClockBLE.c:269: tm->month = 0;
      003643 90 10 94         [24] 1964 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      003646 E0               [24] 1965 	movx	a,@dptr
      003647 FD               [12] 1966 	mov	r5,a
      003648 A3               [24] 1967 	inc	dptr
      003649 E0               [24] 1968 	movx	a,@dptr
      00364A FE               [12] 1969 	mov	r6,a
      00364B A3               [24] 1970 	inc	dptr
      00364C E0               [24] 1971 	movx	a,@dptr
      00364D FF               [12] 1972 	mov	r7,a
      00364E 74 04            [12] 1973 	mov	a,#0x04
      003650 2D               [12] 1974 	add	a,r5
      003651 FD               [12] 1975 	mov	r5,a
      003652 74 00            [12] 1976 	mov	a,#0x00
      003654 3E               [12] 1977 	addc	a,r6
      003655 FE               [12] 1978 	mov	r6,a
      003656 8D 82            [24] 1979 	mov	dpl,r5
      003658 8E 83            [24] 1980 	mov	dph,r6
      00365A 8F F0            [24] 1981 	mov	b,r7
      00365C 74 00            [12] 1982 	mov	a,#0x00
      00365E 12 5A 01         [24] 1983 	lcall	__gptrput
                                   1984 ;	../osal/common/OSAL_ClockBLE.c:270: while ( numDays >= monthLength( IsLeapYear( tm->year ), tm->month ) )
      003661 90 10 94         [24] 1985 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      003664 E0               [24] 1986 	movx	a,@dptr
      003665 FD               [12] 1987 	mov	r5,a
      003666 A3               [24] 1988 	inc	dptr
      003667 E0               [24] 1989 	movx	a,@dptr
      003668 FE               [12] 1990 	mov	r6,a
      003669 A3               [24] 1991 	inc	dptr
      00366A E0               [24] 1992 	movx	a,@dptr
      00366B FF               [12] 1993 	mov	r7,a
      00366C 74 05            [12] 1994 	mov	a,#0x05
      00366E 2D               [12] 1995 	add	a,r5
      00366F FA               [12] 1996 	mov	r2,a
      003670 74 00            [12] 1997 	mov	a,#0x00
      003672 3E               [12] 1998 	addc	a,r6
      003673 FB               [12] 1999 	mov	r3,a
      003674 8F 04            [24] 2000 	mov	ar4,r7
      003676 74 04            [12] 2001 	mov	a,#0x04
      003678 2D               [12] 2002 	add	a,r5
      003679 FD               [12] 2003 	mov	r5,a
      00367A 74 00            [12] 2004 	mov	a,#0x00
      00367C 3E               [12] 2005 	addc	a,r6
      00367D FE               [12] 2006 	mov	r6,a
      00367E                       2007 00104$:
      00367E 8A 82            [24] 2008 	mov	dpl,r2
      003680 8B 83            [24] 2009 	mov	dph,r3
      003682 8C F0            [24] 2010 	mov	b,r4
      003684 12 5B 6D         [24] 2011 	lcall	__gptrget
      003687 F8               [12] 2012 	mov	r0,a
      003688 A3               [24] 2013 	inc	dptr
      003689 12 5B 6D         [24] 2014 	lcall	__gptrget
      00368C F9               [12] 2015 	mov	r1,a
      00368D 90 12 31         [24] 2016 	mov	dptr,#__moduint_PARM_2
      003690 74 90            [12] 2017 	mov	a,#0x90
      003692 F0               [24] 2018 	movx	@dptr,a
      003693 74 01            [12] 2019 	mov	a,#0x01
      003695 A3               [24] 2020 	inc	dptr
      003696 F0               [24] 2021 	movx	@dptr,a
      003697 88 82            [24] 2022 	mov	dpl,r0
      003699 89 83            [24] 2023 	mov	dph,r1
      00369B C0 07            [24] 2024 	push	ar7
      00369D C0 06            [24] 2025 	push	ar6
      00369F C0 05            [24] 2026 	push	ar5
      0036A1 C0 04            [24] 2027 	push	ar4
      0036A3 C0 03            [24] 2028 	push	ar3
      0036A5 C0 02            [24] 2029 	push	ar2
      0036A7 12 5A A8         [24] 2030 	lcall	__moduint
      0036AA A8 82            [24] 2031 	mov	r0,dpl
      0036AC A9 83            [24] 2032 	mov	r1,dph
      0036AE D0 02            [24] 2033 	pop	ar2
      0036B0 D0 03            [24] 2034 	pop	ar3
      0036B2 D0 04            [24] 2035 	pop	ar4
      0036B4 D0 05            [24] 2036 	pop	ar5
      0036B6 D0 06            [24] 2037 	pop	ar6
      0036B8 D0 07            [24] 2038 	pop	ar7
      0036BA E8               [12] 2039 	mov	a,r0
      0036BB 49               [12] 2040 	orl	a,r1
      0036BC B4 01 00         [24] 2041 	cjne	a,#0x01,00185$
      0036BF                       2042 00185$:
      0036BF E4               [12] 2043 	clr	a
      0036C0 33               [12] 2044 	rlc	a
      0036C1 F8               [12] 2045 	mov	r0,a
      0036C2 E8               [12] 2046 	mov	a,r0
      0036C3 60 03            [24] 2047 	jz	00186$
      0036C5 02 37 33         [24] 2048 	ljmp	00126$
      0036C8                       2049 00186$:
      0036C8 8A 82            [24] 2050 	mov	dpl,r2
      0036CA 8B 83            [24] 2051 	mov	dph,r3
      0036CC 8C F0            [24] 2052 	mov	b,r4
      0036CE 12 5B 6D         [24] 2053 	lcall	__gptrget
      0036D1 F8               [12] 2054 	mov	r0,a
      0036D2 A3               [24] 2055 	inc	dptr
      0036D3 12 5B 6D         [24] 2056 	lcall	__gptrget
      0036D6 F9               [12] 2057 	mov	r1,a
      0036D7 90 12 31         [24] 2058 	mov	dptr,#__moduint_PARM_2
      0036DA 74 64            [12] 2059 	mov	a,#0x64
      0036DC F0               [24] 2060 	movx	@dptr,a
      0036DD 74 00            [12] 2061 	mov	a,#0x00
      0036DF A3               [24] 2062 	inc	dptr
      0036E0 F0               [24] 2063 	movx	@dptr,a
      0036E1 88 82            [24] 2064 	mov	dpl,r0
      0036E3 89 83            [24] 2065 	mov	dph,r1
      0036E5 C0 07            [24] 2066 	push	ar7
      0036E7 C0 06            [24] 2067 	push	ar6
      0036E9 C0 05            [24] 2068 	push	ar5
      0036EB C0 04            [24] 2069 	push	ar4
      0036ED C0 03            [24] 2070 	push	ar3
      0036EF C0 02            [24] 2071 	push	ar2
      0036F1 12 5A A8         [24] 2072 	lcall	__moduint
      0036F4 E5 82            [12] 2073 	mov	a,dpl
      0036F6 85 83 F0         [24] 2074 	mov	b,dph
      0036F9 D0 02            [24] 2075 	pop	ar2
      0036FB D0 03            [24] 2076 	pop	ar3
      0036FD D0 04            [24] 2077 	pop	ar4
      0036FF D0 05            [24] 2078 	pop	ar5
      003701 D0 06            [24] 2079 	pop	ar6
      003703 D0 07            [24] 2080 	pop	ar7
      003705 45 F0            [12] 2081 	orl	a,b
      003707 70 03            [24] 2082 	jnz	00187$
      003709 02 37 2E         [24] 2083 	ljmp	00125$
      00370C                       2084 00187$:
      00370C 8A 82            [24] 2085 	mov	dpl,r2
      00370E 8B 83            [24] 2086 	mov	dph,r3
      003710 8C F0            [24] 2087 	mov	b,r4
      003712 12 5B 6D         [24] 2088 	lcall	__gptrget
      003715 F8               [12] 2089 	mov	r0,a
      003716 A3               [24] 2090 	inc	dptr
      003717 12 5B 6D         [24] 2091 	lcall	__gptrget
      00371A F9               [12] 2092 	mov	r1,a
      00371B 53 00 03         [24] 2093 	anl	ar0,#0x03
      00371E 79 00            [12] 2094 	mov	r1,#0x00
      003720 E8               [12] 2095 	mov	a,r0
      003721 49               [12] 2096 	orl	a,r1
      003722 B4 01 00         [24] 2097 	cjne	a,#0x01,00188$
      003725                       2098 00188$:
      003725 E4               [12] 2099 	clr	a
      003726 33               [12] 2100 	rlc	a
      003727 F8               [12] 2101 	mov	r0,a
      003728 E8               [12] 2102 	mov	a,r0
      003729 60 03            [24] 2103 	jz	00189$
      00372B 02 37 33         [24] 2104 	ljmp	00126$
      00372E                       2105 00189$:
      00372E                       2106 00125$:
      00372E 79 00            [12] 2107 	mov	r1,#0x00
      003730 02 37 35         [24] 2108 	ljmp	00127$
      003733                       2109 00126$:
      003733 79 01            [12] 2110 	mov	r1,#0x01
      003735                       2111 00127$:
      003735 C0 02            [24] 2112 	push	ar2
      003737 C0 03            [24] 2113 	push	ar3
      003739 C0 04            [24] 2114 	push	ar4
      00373B 8D 82            [24] 2115 	mov	dpl,r5
      00373D 8E 83            [24] 2116 	mov	dph,r6
      00373F 8F F0            [24] 2117 	mov	b,r7
      003741 12 5B 6D         [24] 2118 	lcall	__gptrget
      003744 F8               [12] 2119 	mov	r0,a
      003745 90 10 99         [24] 2120 	mov	dptr,#_monthLength_PARM_2
      003748 E8               [12] 2121 	mov	a,r0
      003749 F0               [24] 2122 	movx	@dptr,a
      00374A 89 82            [24] 2123 	mov	dpl,r1
      00374C C0 07            [24] 2124 	push	ar7
      00374E C0 06            [24] 2125 	push	ar6
      003750 C0 05            [24] 2126 	push	ar5
      003752 C0 04            [24] 2127 	push	ar4
      003754 C0 03            [24] 2128 	push	ar3
      003756 C0 02            [24] 2129 	push	ar2
      003758 12 38 C9         [24] 2130 	lcall	_monthLength
      00375B A9 82            [24] 2131 	mov	r1,dpl
      00375D D0 02            [24] 2132 	pop	ar2
      00375F D0 03            [24] 2133 	pop	ar3
      003761 D0 04            [24] 2134 	pop	ar4
      003763 D0 05            [24] 2135 	pop	ar5
      003765 D0 06            [24] 2136 	pop	ar6
      003767 D0 07            [24] 2137 	pop	ar7
      003769 90 10 97         [24] 2138 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      00376C E0               [24] 2139 	movx	a,@dptr
      00376D F8               [12] 2140 	mov	r0,a
      00376E A3               [24] 2141 	inc	dptr
      00376F E0               [24] 2142 	movx	a,@dptr
      003770 FC               [12] 2143 	mov	r4,a
      003771 7B 00            [12] 2144 	mov	r3,#0x00
      003773 C3               [12] 2145 	clr	c
      003774 E8               [12] 2146 	mov	a,r0
      003775 99               [12] 2147 	subb	a,r1
      003776 EC               [12] 2148 	mov	a,r4
      003777 9B               [12] 2149 	subb	a,r3
      003778 D0 04            [24] 2150 	pop	ar4
      00377A D0 03            [24] 2151 	pop	ar3
      00377C D0 02            [24] 2152 	pop	ar2
      00377E 50 03            [24] 2153 	jnc	00190$
      003780 02 38 A3         [24] 2154 	ljmp	00106$
      003783                       2155 00190$:
                                   2156 ;	../osal/common/OSAL_ClockBLE.c:272: numDays -= monthLength( IsLeapYear( tm->year ), tm->month );
      003783 8A 82            [24] 2157 	mov	dpl,r2
      003785 8B 83            [24] 2158 	mov	dph,r3
      003787 8C F0            [24] 2159 	mov	b,r4
      003789 12 5B 6D         [24] 2160 	lcall	__gptrget
      00378C F8               [12] 2161 	mov	r0,a
      00378D A3               [24] 2162 	inc	dptr
      00378E 12 5B 6D         [24] 2163 	lcall	__gptrget
      003791 F9               [12] 2164 	mov	r1,a
      003792 90 12 31         [24] 2165 	mov	dptr,#__moduint_PARM_2
      003795 74 90            [12] 2166 	mov	a,#0x90
      003797 F0               [24] 2167 	movx	@dptr,a
      003798 74 01            [12] 2168 	mov	a,#0x01
      00379A A3               [24] 2169 	inc	dptr
      00379B F0               [24] 2170 	movx	@dptr,a
      00379C 88 82            [24] 2171 	mov	dpl,r0
      00379E 89 83            [24] 2172 	mov	dph,r1
      0037A0 C0 07            [24] 2173 	push	ar7
      0037A2 C0 06            [24] 2174 	push	ar6
      0037A4 C0 05            [24] 2175 	push	ar5
      0037A6 C0 04            [24] 2176 	push	ar4
      0037A8 C0 03            [24] 2177 	push	ar3
      0037AA C0 02            [24] 2178 	push	ar2
      0037AC 12 5A A8         [24] 2179 	lcall	__moduint
      0037AF A8 82            [24] 2180 	mov	r0,dpl
      0037B1 A9 83            [24] 2181 	mov	r1,dph
      0037B3 D0 02            [24] 2182 	pop	ar2
      0037B5 D0 03            [24] 2183 	pop	ar3
      0037B7 D0 04            [24] 2184 	pop	ar4
      0037B9 D0 05            [24] 2185 	pop	ar5
      0037BB D0 06            [24] 2186 	pop	ar6
      0037BD D0 07            [24] 2187 	pop	ar7
      0037BF E8               [12] 2188 	mov	a,r0
      0037C0 49               [12] 2189 	orl	a,r1
      0037C1 B4 01 00         [24] 2190 	cjne	a,#0x01,00191$
      0037C4                       2191 00191$:
      0037C4 E4               [12] 2192 	clr	a
      0037C5 33               [12] 2193 	rlc	a
      0037C6 F8               [12] 2194 	mov	r0,a
      0037C7 E8               [12] 2195 	mov	a,r0
      0037C8 60 03            [24] 2196 	jz	00192$
      0037CA 02 38 38         [24] 2197 	ljmp	00132$
      0037CD                       2198 00192$:
      0037CD 8A 82            [24] 2199 	mov	dpl,r2
      0037CF 8B 83            [24] 2200 	mov	dph,r3
      0037D1 8C F0            [24] 2201 	mov	b,r4
      0037D3 12 5B 6D         [24] 2202 	lcall	__gptrget
      0037D6 F8               [12] 2203 	mov	r0,a
      0037D7 A3               [24] 2204 	inc	dptr
      0037D8 12 5B 6D         [24] 2205 	lcall	__gptrget
      0037DB F9               [12] 2206 	mov	r1,a
      0037DC 90 12 31         [24] 2207 	mov	dptr,#__moduint_PARM_2
      0037DF 74 64            [12] 2208 	mov	a,#0x64
      0037E1 F0               [24] 2209 	movx	@dptr,a
      0037E2 74 00            [12] 2210 	mov	a,#0x00
      0037E4 A3               [24] 2211 	inc	dptr
      0037E5 F0               [24] 2212 	movx	@dptr,a
      0037E6 88 82            [24] 2213 	mov	dpl,r0
      0037E8 89 83            [24] 2214 	mov	dph,r1
      0037EA C0 07            [24] 2215 	push	ar7
      0037EC C0 06            [24] 2216 	push	ar6
      0037EE C0 05            [24] 2217 	push	ar5
      0037F0 C0 04            [24] 2218 	push	ar4
      0037F2 C0 03            [24] 2219 	push	ar3
      0037F4 C0 02            [24] 2220 	push	ar2
      0037F6 12 5A A8         [24] 2221 	lcall	__moduint
      0037F9 E5 82            [12] 2222 	mov	a,dpl
      0037FB 85 83 F0         [24] 2223 	mov	b,dph
      0037FE D0 02            [24] 2224 	pop	ar2
      003800 D0 03            [24] 2225 	pop	ar3
      003802 D0 04            [24] 2226 	pop	ar4
      003804 D0 05            [24] 2227 	pop	ar5
      003806 D0 06            [24] 2228 	pop	ar6
      003808 D0 07            [24] 2229 	pop	ar7
      00380A 45 F0            [12] 2230 	orl	a,b
      00380C 70 03            [24] 2231 	jnz	00193$
      00380E 02 38 33         [24] 2232 	ljmp	00131$
      003811                       2233 00193$:
      003811 8A 82            [24] 2234 	mov	dpl,r2
      003813 8B 83            [24] 2235 	mov	dph,r3
      003815 8C F0            [24] 2236 	mov	b,r4
      003817 12 5B 6D         [24] 2237 	lcall	__gptrget
      00381A F8               [12] 2238 	mov	r0,a
      00381B A3               [24] 2239 	inc	dptr
      00381C 12 5B 6D         [24] 2240 	lcall	__gptrget
      00381F F9               [12] 2241 	mov	r1,a
      003820 53 00 03         [24] 2242 	anl	ar0,#0x03
      003823 79 00            [12] 2243 	mov	r1,#0x00
      003825 E8               [12] 2244 	mov	a,r0
      003826 49               [12] 2245 	orl	a,r1
      003827 B4 01 00         [24] 2246 	cjne	a,#0x01,00194$
      00382A                       2247 00194$:
      00382A E4               [12] 2248 	clr	a
      00382B 33               [12] 2249 	rlc	a
      00382C F8               [12] 2250 	mov	r0,a
      00382D E8               [12] 2251 	mov	a,r0
      00382E 60 03            [24] 2252 	jz	00195$
      003830 02 38 38         [24] 2253 	ljmp	00132$
      003833                       2254 00195$:
      003833                       2255 00131$:
      003833 79 00            [12] 2256 	mov	r1,#0x00
      003835 02 38 3A         [24] 2257 	ljmp	00133$
      003838                       2258 00132$:
      003838 79 01            [12] 2259 	mov	r1,#0x01
      00383A                       2260 00133$:
      00383A C0 02            [24] 2261 	push	ar2
      00383C C0 03            [24] 2262 	push	ar3
      00383E C0 04            [24] 2263 	push	ar4
      003840 8D 82            [24] 2264 	mov	dpl,r5
      003842 8E 83            [24] 2265 	mov	dph,r6
      003844 8F F0            [24] 2266 	mov	b,r7
      003846 12 5B 6D         [24] 2267 	lcall	__gptrget
      003849 F8               [12] 2268 	mov	r0,a
      00384A 90 10 99         [24] 2269 	mov	dptr,#_monthLength_PARM_2
      00384D E8               [12] 2270 	mov	a,r0
      00384E F0               [24] 2271 	movx	@dptr,a
      00384F 89 82            [24] 2272 	mov	dpl,r1
      003851 C0 07            [24] 2273 	push	ar7
      003853 C0 06            [24] 2274 	push	ar6
      003855 C0 05            [24] 2275 	push	ar5
      003857 C0 04            [24] 2276 	push	ar4
      003859 C0 03            [24] 2277 	push	ar3
      00385B C0 02            [24] 2278 	push	ar2
      00385D 12 38 C9         [24] 2279 	lcall	_monthLength
      003860 A9 82            [24] 2280 	mov	r1,dpl
      003862 D0 02            [24] 2281 	pop	ar2
      003864 D0 03            [24] 2282 	pop	ar3
      003866 D0 04            [24] 2283 	pop	ar4
      003868 D0 05            [24] 2284 	pop	ar5
      00386A D0 06            [24] 2285 	pop	ar6
      00386C D0 07            [24] 2286 	pop	ar7
      00386E 89 00            [24] 2287 	mov	ar0,r1
      003870 79 00            [12] 2288 	mov	r1,#0x00
      003872 90 10 97         [24] 2289 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003875 E0               [24] 2290 	movx	a,@dptr
      003876 FB               [12] 2291 	mov	r3,a
      003877 A3               [24] 2292 	inc	dptr
      003878 E0               [24] 2293 	movx	a,@dptr
      003879 FC               [12] 2294 	mov	r4,a
      00387A 90 10 97         [24] 2295 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      00387D EB               [12] 2296 	mov	a,r3
      00387E C3               [12] 2297 	clr	c
      00387F 98               [12] 2298 	subb	a,r0
      003880 F0               [24] 2299 	movx	@dptr,a
      003881 EC               [12] 2300 	mov	a,r4
      003882 99               [12] 2301 	subb	a,r1
      003883 A3               [24] 2302 	inc	dptr
      003884 F0               [24] 2303 	movx	@dptr,a
                                   2304 ;	../osal/common/OSAL_ClockBLE.c:273: tm->month++;
      003885 8D 82            [24] 2305 	mov	dpl,r5
      003887 8E 83            [24] 2306 	mov	dph,r6
      003889 8F F0            [24] 2307 	mov	b,r7
      00388B 12 5B 6D         [24] 2308 	lcall	__gptrget
      00388E FC               [12] 2309 	mov	r4,a
      00388F 0C               [12] 2310 	inc	r4
      003890 8D 82            [24] 2311 	mov	dpl,r5
      003892 8E 83            [24] 2312 	mov	dph,r6
      003894 8F F0            [24] 2313 	mov	b,r7
      003896 EC               [12] 2314 	mov	a,r4
      003897 12 5A 01         [24] 2315 	lcall	__gptrput
      00389A D0 04            [24] 2316 	pop	ar4
      00389C D0 03            [24] 2317 	pop	ar3
      00389E D0 02            [24] 2318 	pop	ar2
      0038A0 02 36 7E         [24] 2319 	ljmp	00104$
      0038A3                       2320 00106$:
                                   2321 ;	../osal/common/OSAL_ClockBLE.c:276: tm->day = numDays;
      0038A3 90 10 94         [24] 2322 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      0038A6 E0               [24] 2323 	movx	a,@dptr
      0038A7 FD               [12] 2324 	mov	r5,a
      0038A8 A3               [24] 2325 	inc	dptr
      0038A9 E0               [24] 2326 	movx	a,@dptr
      0038AA FE               [12] 2327 	mov	r6,a
      0038AB A3               [24] 2328 	inc	dptr
      0038AC E0               [24] 2329 	movx	a,@dptr
      0038AD FF               [12] 2330 	mov	r7,a
      0038AE 74 03            [12] 2331 	mov	a,#0x03
      0038B0 2D               [12] 2332 	add	a,r5
      0038B1 FD               [12] 2333 	mov	r5,a
      0038B2 74 00            [12] 2334 	mov	a,#0x00
      0038B4 3E               [12] 2335 	addc	a,r6
      0038B5 FE               [12] 2336 	mov	r6,a
      0038B6 90 10 97         [24] 2337 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      0038B9 E0               [24] 2338 	movx	a,@dptr
      0038BA FB               [12] 2339 	mov	r3,a
      0038BB A3               [24] 2340 	inc	dptr
      0038BC E0               [24] 2341 	movx	a,@dptr
      0038BD FC               [12] 2342 	mov	r4,a
      0038BE 8D 82            [24] 2343 	mov	dpl,r5
      0038C0 8E 83            [24] 2344 	mov	dph,r6
      0038C2 8F F0            [24] 2345 	mov	b,r7
      0038C4 EB               [12] 2346 	mov	a,r3
      0038C5 12 5A 01         [24] 2347 	lcall	__gptrput
      0038C8                       2348 00107$:
      0038C8 22               [24] 2349 	ret
                                   2350 ;------------------------------------------------------------
                                   2351 ;Allocation info for local variables in function 'monthLength'
                                   2352 ;------------------------------------------------------------
                                   2353 ;mon                       Allocated with name '_monthLength_PARM_2'
                                   2354 ;lpyr                      Allocated with name '_monthLength_lpyr_1_94'
                                   2355 ;days                      Allocated with name '_monthLength_days_1_95'
                                   2356 ;------------------------------------------------------------
                                   2357 ;	../osal/common/OSAL_ClockBLE.c:289: static uint8 monthLength( uint8 lpyr, uint8 mon )
                                   2358 ;	-----------------------------------------
                                   2359 ;	 function monthLength
                                   2360 ;	-----------------------------------------
      0038C9                       2361 _monthLength:
      0038C9 E5 82            [12] 2362 	mov	a,dpl
      0038CB 90 10 9A         [24] 2363 	mov	dptr,#_monthLength_lpyr_1_94
      0038CE F0               [24] 2364 	movx	@dptr,a
                                   2365 ;	../osal/common/OSAL_ClockBLE.c:291: uint8 days = 31;
      0038CF 90 10 9B         [24] 2366 	mov	dptr,#_monthLength_days_1_95
      0038D2 74 1F            [12] 2367 	mov	a,#0x1F
      0038D4 F0               [24] 2368 	movx	@dptr,a
                                   2369 ;	../osal/common/OSAL_ClockBLE.c:293: if ( mon == 1 ) // feb
      0038D5 90 10 99         [24] 2370 	mov	dptr,#_monthLength_PARM_2
      0038D8 E0               [24] 2371 	movx	a,@dptr
      0038D9 FF               [12] 2372 	mov	r7,a
      0038DA BF 01 02         [24] 2373 	cjne	r7,#0x01,00119$
      0038DD 80 03            [24] 2374 	sjmp	00120$
      0038DF                       2375 00119$:
      0038DF 02 38 F1         [24] 2376 	ljmp	00106$
      0038E2                       2377 00120$:
                                   2378 ;	../osal/common/OSAL_ClockBLE.c:295: days = ( 28 + lpyr );
      0038E2 90 10 9A         [24] 2379 	mov	dptr,#_monthLength_lpyr_1_94
      0038E5 E0               [24] 2380 	movx	a,@dptr
      0038E6 FF               [12] 2381 	mov	r7,a
      0038E7 90 10 9B         [24] 2382 	mov	dptr,#_monthLength_days_1_95
      0038EA 74 1C            [12] 2383 	mov	a,#0x1C
      0038EC 2F               [12] 2384 	add	a,r7
      0038ED F0               [24] 2385 	movx	@dptr,a
      0038EE 02 39 17         [24] 2386 	ljmp	00107$
      0038F1                       2387 00106$:
                                   2388 ;	../osal/common/OSAL_ClockBLE.c:299: if ( mon > 6 ) // aug-dec
      0038F1 90 10 99         [24] 2389 	mov	dptr,#_monthLength_PARM_2
      0038F4 E0               [24] 2390 	movx	a,@dptr
      0038F5 FF               [12] 2391 	mov	r7,a
      0038F6 C3               [12] 2392 	clr	c
      0038F7 74 06            [12] 2393 	mov	a,#0x06
      0038F9 9F               [12] 2394 	subb	a,r7
      0038FA 40 03            [24] 2395 	jc	00121$
      0038FC 02 39 05         [24] 2396 	ljmp	00102$
      0038FF                       2397 00121$:
                                   2398 ;	../osal/common/OSAL_ClockBLE.c:301: mon--;
      0038FF 90 10 99         [24] 2399 	mov	dptr,#_monthLength_PARM_2
      003902 E0               [24] 2400 	movx	a,@dptr
      003903 14               [12] 2401 	dec	a
      003904 F0               [24] 2402 	movx	@dptr,a
      003905                       2403 00102$:
                                   2404 ;	../osal/common/OSAL_ClockBLE.c:304: if ( mon & 1 )
      003905 90 10 99         [24] 2405 	mov	dptr,#_monthLength_PARM_2
      003908 E0               [24] 2406 	movx	a,@dptr
      003909 FF               [12] 2407 	mov	r7,a
      00390A EF               [12] 2408 	mov	a,r7
      00390B 20 E0 03         [24] 2409 	jb	acc.0,00122$
      00390E 02 39 17         [24] 2410 	ljmp	00107$
      003911                       2411 00122$:
                                   2412 ;	../osal/common/OSAL_ClockBLE.c:306: days = 30;
      003911 90 10 9B         [24] 2413 	mov	dptr,#_monthLength_days_1_95
      003914 74 1E            [12] 2414 	mov	a,#0x1E
      003916 F0               [24] 2415 	movx	@dptr,a
      003917                       2416 00107$:
                                   2417 ;	../osal/common/OSAL_ClockBLE.c:310: return ( days );
      003917 90 10 9B         [24] 2418 	mov	dptr,#_monthLength_days_1_95
      00391A E0               [24] 2419 	movx	a,@dptr
      00391B FF               [12] 2420 	mov	r7,a
      00391C 8F 82            [24] 2421 	mov	dpl,r7
      00391E                       2422 00108$:
      00391E 22               [24] 2423 	ret
                                   2424 ;------------------------------------------------------------
                                   2425 ;Allocation info for local variables in function 'osal_ConvertUTCSecs'
                                   2426 ;------------------------------------------------------------
                                   2427 ;sloc0                     Allocated with name '_osal_ConvertUTCSecs_sloc0_1_0'
                                   2428 ;tm                        Allocated with name '_osal_ConvertUTCSecs_tm_1_100'
                                   2429 ;seconds                   Allocated with name '_osal_ConvertUTCSecs_seconds_1_101'
                                   2430 ;days                      Allocated with name '_osal_ConvertUTCSecs_days_2_102'
                                   2431 ;month                     Allocated with name '_osal_ConvertUTCSecs_month_3_103'
                                   2432 ;year                      Allocated with name '_osal_ConvertUTCSecs_year_3_105'
                                   2433 ;------------------------------------------------------------
                                   2434 ;	../osal/common/OSAL_ClockBLE.c:322: UTCTime osal_ConvertUTCSecs( UTCTimeStruct *tm )
                                   2435 ;	-----------------------------------------
                                   2436 ;	 function osal_ConvertUTCSecs
                                   2437 ;	-----------------------------------------
      00391F                       2438 _osal_ConvertUTCSecs:
      00391F AF F0            [24] 2439 	mov	r7,b
      003921 AE 83            [24] 2440 	mov	r6,dph
      003923 E5 82            [12] 2441 	mov	a,dpl
      003925 90 10 9C         [24] 2442 	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
      003928 F0               [24] 2443 	movx	@dptr,a
      003929 EE               [12] 2444 	mov	a,r6
      00392A A3               [24] 2445 	inc	dptr
      00392B F0               [24] 2446 	movx	@dptr,a
      00392C EF               [12] 2447 	mov	a,r7
      00392D A3               [24] 2448 	inc	dptr
      00392E F0               [24] 2449 	movx	@dptr,a
                                   2450 ;	../osal/common/OSAL_ClockBLE.c:327: seconds = (((tm->hour * 60UL) + tm->minutes) * 60UL) + tm->seconds;
      00392F 90 10 9C         [24] 2451 	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
      003932 E0               [24] 2452 	movx	a,@dptr
      003933 FD               [12] 2453 	mov	r5,a
      003934 A3               [24] 2454 	inc	dptr
      003935 E0               [24] 2455 	movx	a,@dptr
      003936 FE               [12] 2456 	mov	r6,a
      003937 A3               [24] 2457 	inc	dptr
      003938 E0               [24] 2458 	movx	a,@dptr
      003939 FF               [12] 2459 	mov	r7,a
      00393A 74 02            [12] 2460 	mov	a,#0x02
      00393C 2D               [12] 2461 	add	a,r5
      00393D FA               [12] 2462 	mov	r2,a
      00393E 74 00            [12] 2463 	mov	a,#0x00
      003940 3E               [12] 2464 	addc	a,r6
      003941 FB               [12] 2465 	mov	r3,a
      003942 8F 04            [24] 2466 	mov	ar4,r7
      003944 8A 82            [24] 2467 	mov	dpl,r2
      003946 8B 83            [24] 2468 	mov	dph,r3
      003948 8C F0            [24] 2469 	mov	b,r4
      00394A 12 5B 6D         [24] 2470 	lcall	__gptrget
      00394D FA               [12] 2471 	mov	r2,a
      00394E 90 12 2D         [24] 2472 	mov	dptr,#__mullong_PARM_2
      003951 EA               [12] 2473 	mov	a,r2
      003952 F0               [24] 2474 	movx	@dptr,a
      003953 74 00            [12] 2475 	mov	a,#0x00
      003955 A3               [24] 2476 	inc	dptr
      003956 F0               [24] 2477 	movx	@dptr,a
      003957 A3               [24] 2478 	inc	dptr
      003958 F0               [24] 2479 	movx	@dptr,a
      003959 A3               [24] 2480 	inc	dptr
      00395A F0               [24] 2481 	movx	@dptr,a
      00395B 75 82 3C         [24] 2482 	mov	dpl,#0x3C
      00395E 75 83 00         [24] 2483 	mov	dph,#0x00
      003961 75 F0 00         [24] 2484 	mov	b,#0x00
      003964 74 00            [12] 2485 	mov	a,#0x00
      003966 C0 07            [24] 2486 	push	ar7
      003968 C0 06            [24] 2487 	push	ar6
      00396A C0 05            [24] 2488 	push	ar5
      00396C 12 5A 3C         [24] 2489 	lcall	__mullong
      00396F 85 82 30         [24] 2490 	mov	_osal_ConvertUTCSecs_sloc0_1_0,dpl
      003972 85 83 31         [24] 2491 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 1),dph
      003975 85 F0 32         [24] 2492 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 2),b
      003978 F5 33            [12] 2493 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 3),a
      00397A D0 05            [24] 2494 	pop	ar5
      00397C D0 06            [24] 2495 	pop	ar6
      00397E D0 07            [24] 2496 	pop	ar7
      003980 74 01            [12] 2497 	mov	a,#0x01
      003982 2D               [12] 2498 	add	a,r5
      003983 F8               [12] 2499 	mov	r0,a
      003984 74 00            [12] 2500 	mov	a,#0x00
      003986 3E               [12] 2501 	addc	a,r6
      003987 FB               [12] 2502 	mov	r3,a
      003988 8F 04            [24] 2503 	mov	ar4,r7
      00398A 88 82            [24] 2504 	mov	dpl,r0
      00398C 8B 83            [24] 2505 	mov	dph,r3
      00398E 8C F0            [24] 2506 	mov	b,r4
      003990 12 5B 6D         [24] 2507 	lcall	__gptrget
      003993 F8               [12] 2508 	mov	r0,a
      003994 7C 00            [12] 2509 	mov	r4,#0x00
      003996 7B 00            [12] 2510 	mov	r3,#0x00
      003998 7A 00            [12] 2511 	mov	r2,#0x00
      00399A 90 12 2D         [24] 2512 	mov	dptr,#__mullong_PARM_2
      00399D E8               [12] 2513 	mov	a,r0
      00399E 25 30            [12] 2514 	add	a,_osal_ConvertUTCSecs_sloc0_1_0
      0039A0 F0               [24] 2515 	movx	@dptr,a
      0039A1 EC               [12] 2516 	mov	a,r4
      0039A2 35 31            [12] 2517 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 1)
      0039A4 A3               [24] 2518 	inc	dptr
      0039A5 F0               [24] 2519 	movx	@dptr,a
      0039A6 EB               [12] 2520 	mov	a,r3
      0039A7 35 32            [12] 2521 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 2)
      0039A9 A3               [24] 2522 	inc	dptr
      0039AA F0               [24] 2523 	movx	@dptr,a
      0039AB EA               [12] 2524 	mov	a,r2
      0039AC 35 33            [12] 2525 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 3)
      0039AE A3               [24] 2526 	inc	dptr
      0039AF F0               [24] 2527 	movx	@dptr,a
      0039B0 75 82 3C         [24] 2528 	mov	dpl,#0x3C
      0039B3 75 83 00         [24] 2529 	mov	dph,#0x00
      0039B6 75 F0 00         [24] 2530 	mov	b,#0x00
      0039B9 74 00            [12] 2531 	mov	a,#0x00
      0039BB C0 07            [24] 2532 	push	ar7
      0039BD C0 06            [24] 2533 	push	ar6
      0039BF C0 05            [24] 2534 	push	ar5
      0039C1 12 5A 3C         [24] 2535 	lcall	__mullong
      0039C4 85 82 30         [24] 2536 	mov	_osal_ConvertUTCSecs_sloc0_1_0,dpl
      0039C7 85 83 31         [24] 2537 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 1),dph
      0039CA 85 F0 32         [24] 2538 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 2),b
      0039CD F5 33            [12] 2539 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 3),a
      0039CF D0 05            [24] 2540 	pop	ar5
      0039D1 D0 06            [24] 2541 	pop	ar6
      0039D3 D0 07            [24] 2542 	pop	ar7
      0039D5 8D 82            [24] 2543 	mov	dpl,r5
      0039D7 8E 83            [24] 2544 	mov	dph,r6
      0039D9 8F F0            [24] 2545 	mov	b,r7
      0039DB 12 5B 6D         [24] 2546 	lcall	__gptrget
      0039DE F8               [12] 2547 	mov	r0,a
      0039DF 7A 00            [12] 2548 	mov	r2,#0x00
      0039E1 7B 00            [12] 2549 	mov	r3,#0x00
      0039E3 7C 00            [12] 2550 	mov	r4,#0x00
      0039E5 90 10 9F         [24] 2551 	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
      0039E8 E8               [12] 2552 	mov	a,r0
      0039E9 25 30            [12] 2553 	add	a,_osal_ConvertUTCSecs_sloc0_1_0
      0039EB F0               [24] 2554 	movx	@dptr,a
      0039EC EA               [12] 2555 	mov	a,r2
      0039ED 35 31            [12] 2556 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 1)
      0039EF A3               [24] 2557 	inc	dptr
      0039F0 F0               [24] 2558 	movx	@dptr,a
      0039F1 EB               [12] 2559 	mov	a,r3
      0039F2 35 32            [12] 2560 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 2)
      0039F4 A3               [24] 2561 	inc	dptr
      0039F5 F0               [24] 2562 	movx	@dptr,a
      0039F6 EC               [12] 2563 	mov	a,r4
      0039F7 35 33            [12] 2564 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 3)
      0039F9 A3               [24] 2565 	inc	dptr
      0039FA F0               [24] 2566 	movx	@dptr,a
                                   2567 ;	../osal/common/OSAL_ClockBLE.c:332: uint16 days = tm->day;
      0039FB 74 03            [12] 2568 	mov	a,#0x03
      0039FD 2D               [12] 2569 	add	a,r5
      0039FE FA               [12] 2570 	mov	r2,a
      0039FF 74 00            [12] 2571 	mov	a,#0x00
      003A01 3E               [12] 2572 	addc	a,r6
      003A02 FB               [12] 2573 	mov	r3,a
      003A03 8F 04            [24] 2574 	mov	ar4,r7
      003A05 8A 82            [24] 2575 	mov	dpl,r2
      003A07 8B 83            [24] 2576 	mov	dph,r3
      003A09 8C F0            [24] 2577 	mov	b,r4
      003A0B 12 5B 6D         [24] 2578 	lcall	__gptrget
      003A0E FA               [12] 2579 	mov	r2,a
      003A0F 90 10 A3         [24] 2580 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003A12 EA               [12] 2581 	mov	a,r2
      003A13 F0               [24] 2582 	movx	@dptr,a
      003A14 74 00            [12] 2583 	mov	a,#0x00
      003A16 A3               [24] 2584 	inc	dptr
      003A17 F0               [24] 2585 	movx	@dptr,a
                                   2586 ;	../osal/common/OSAL_ClockBLE.c:336: int8 month = tm->month;
      003A18 74 04            [12] 2587 	mov	a,#0x04
      003A1A 2D               [12] 2588 	add	a,r5
      003A1B FD               [12] 2589 	mov	r5,a
      003A1C 74 00            [12] 2590 	mov	a,#0x00
      003A1E 3E               [12] 2591 	addc	a,r6
      003A1F FE               [12] 2592 	mov	r6,a
      003A20 8D 82            [24] 2593 	mov	dpl,r5
      003A22 8E 83            [24] 2594 	mov	dph,r6
      003A24 8F F0            [24] 2595 	mov	b,r7
      003A26 12 5B 6D         [24] 2596 	lcall	__gptrget
      003A29 FD               [12] 2597 	mov	r5,a
      003A2A 90 10 A5         [24] 2598 	mov	dptr,#_osal_ConvertUTCSecs_month_3_103
      003A2D ED               [12] 2599 	mov	a,r5
      003A2E F0               [24] 2600 	movx	@dptr,a
                                   2601 ;	../osal/common/OSAL_ClockBLE.c:337: while ( --month >= 0 )
      003A2F 90 10 9C         [24] 2602 	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
      003A32 E0               [24] 2603 	movx	a,@dptr
      003A33 FD               [12] 2604 	mov	r5,a
      003A34 A3               [24] 2605 	inc	dptr
      003A35 E0               [24] 2606 	movx	a,@dptr
      003A36 FE               [12] 2607 	mov	r6,a
      003A37 A3               [24] 2608 	inc	dptr
      003A38 E0               [24] 2609 	movx	a,@dptr
      003A39 FF               [12] 2610 	mov	r7,a
      003A3A 74 05            [12] 2611 	mov	a,#0x05
      003A3C 2D               [12] 2612 	add	a,r5
      003A3D FD               [12] 2613 	mov	r5,a
      003A3E 74 00            [12] 2614 	mov	a,#0x00
      003A40 3E               [12] 2615 	addc	a,r6
      003A41 FE               [12] 2616 	mov	r6,a
      003A42 90 10 A5         [24] 2617 	mov	dptr,#_osal_ConvertUTCSecs_month_3_103
      003A45 E0               [24] 2618 	movx	a,@dptr
      003A46 FC               [12] 2619 	mov	r4,a
      003A47                       2620 00101$:
      003A47 1C               [12] 2621 	dec	r4
      003A48 EC               [12] 2622 	mov	a,r4
      003A49 30 E7 03         [24] 2623 	jnb	acc.7,00149$
      003A4C 02 3B 29         [24] 2624 	ljmp	00103$
      003A4F                       2625 00149$:
                                   2626 ;	../osal/common/OSAL_ClockBLE.c:339: days += monthLength( IsLeapYear( tm->year ), month );
      003A4F 8D 82            [24] 2627 	mov	dpl,r5
      003A51 8E 83            [24] 2628 	mov	dph,r6
      003A53 8F F0            [24] 2629 	mov	b,r7
      003A55 12 5B 6D         [24] 2630 	lcall	__gptrget
      003A58 FA               [12] 2631 	mov	r2,a
      003A59 A3               [24] 2632 	inc	dptr
      003A5A 12 5B 6D         [24] 2633 	lcall	__gptrget
      003A5D FB               [12] 2634 	mov	r3,a
      003A5E 90 12 31         [24] 2635 	mov	dptr,#__moduint_PARM_2
      003A61 74 90            [12] 2636 	mov	a,#0x90
      003A63 F0               [24] 2637 	movx	@dptr,a
      003A64 74 01            [12] 2638 	mov	a,#0x01
      003A66 A3               [24] 2639 	inc	dptr
      003A67 F0               [24] 2640 	movx	@dptr,a
      003A68 8A 82            [24] 2641 	mov	dpl,r2
      003A6A 8B 83            [24] 2642 	mov	dph,r3
      003A6C C0 07            [24] 2643 	push	ar7
      003A6E C0 06            [24] 2644 	push	ar6
      003A70 C0 05            [24] 2645 	push	ar5
      003A72 C0 04            [24] 2646 	push	ar4
      003A74 12 5A A8         [24] 2647 	lcall	__moduint
      003A77 AA 82            [24] 2648 	mov	r2,dpl
      003A79 AB 83            [24] 2649 	mov	r3,dph
      003A7B D0 04            [24] 2650 	pop	ar4
      003A7D D0 05            [24] 2651 	pop	ar5
      003A7F D0 06            [24] 2652 	pop	ar6
      003A81 D0 07            [24] 2653 	pop	ar7
      003A83 EA               [12] 2654 	mov	a,r2
      003A84 4B               [12] 2655 	orl	a,r3
      003A85 B4 01 00         [24] 2656 	cjne	a,#0x01,00150$
      003A88                       2657 00150$:
      003A88 E4               [12] 2658 	clr	a
      003A89 33               [12] 2659 	rlc	a
      003A8A FA               [12] 2660 	mov	r2,a
      003A8B EA               [12] 2661 	mov	a,r2
      003A8C 60 03            [24] 2662 	jz	00151$
      003A8E 02 3A F4         [24] 2663 	ljmp	00110$
      003A91                       2664 00151$:
      003A91 8D 82            [24] 2665 	mov	dpl,r5
      003A93 8E 83            [24] 2666 	mov	dph,r6
      003A95 8F F0            [24] 2667 	mov	b,r7
      003A97 12 5B 6D         [24] 2668 	lcall	__gptrget
      003A9A FA               [12] 2669 	mov	r2,a
      003A9B A3               [24] 2670 	inc	dptr
      003A9C 12 5B 6D         [24] 2671 	lcall	__gptrget
      003A9F FB               [12] 2672 	mov	r3,a
      003AA0 90 12 31         [24] 2673 	mov	dptr,#__moduint_PARM_2
      003AA3 74 64            [12] 2674 	mov	a,#0x64
      003AA5 F0               [24] 2675 	movx	@dptr,a
      003AA6 74 00            [12] 2676 	mov	a,#0x00
      003AA8 A3               [24] 2677 	inc	dptr
      003AA9 F0               [24] 2678 	movx	@dptr,a
      003AAA 8A 82            [24] 2679 	mov	dpl,r2
      003AAC 8B 83            [24] 2680 	mov	dph,r3
      003AAE C0 07            [24] 2681 	push	ar7
      003AB0 C0 06            [24] 2682 	push	ar6
      003AB2 C0 05            [24] 2683 	push	ar5
      003AB4 C0 04            [24] 2684 	push	ar4
      003AB6 12 5A A8         [24] 2685 	lcall	__moduint
      003AB9 E5 82            [12] 2686 	mov	a,dpl
      003ABB 85 83 F0         [24] 2687 	mov	b,dph
      003ABE D0 04            [24] 2688 	pop	ar4
      003AC0 D0 05            [24] 2689 	pop	ar5
      003AC2 D0 06            [24] 2690 	pop	ar6
      003AC4 D0 07            [24] 2691 	pop	ar7
      003AC6 45 F0            [12] 2692 	orl	a,b
      003AC8 70 03            [24] 2693 	jnz	00152$
      003ACA 02 3A EF         [24] 2694 	ljmp	00109$
      003ACD                       2695 00152$:
      003ACD 8D 82            [24] 2696 	mov	dpl,r5
      003ACF 8E 83            [24] 2697 	mov	dph,r6
      003AD1 8F F0            [24] 2698 	mov	b,r7
      003AD3 12 5B 6D         [24] 2699 	lcall	__gptrget
      003AD6 FA               [12] 2700 	mov	r2,a
      003AD7 A3               [24] 2701 	inc	dptr
      003AD8 12 5B 6D         [24] 2702 	lcall	__gptrget
      003ADB FB               [12] 2703 	mov	r3,a
      003ADC 53 02 03         [24] 2704 	anl	ar2,#0x03
      003ADF 7B 00            [12] 2705 	mov	r3,#0x00
      003AE1 EA               [12] 2706 	mov	a,r2
      003AE2 4B               [12] 2707 	orl	a,r3
      003AE3 B4 01 00         [24] 2708 	cjne	a,#0x01,00153$
      003AE6                       2709 00153$:
      003AE6 E4               [12] 2710 	clr	a
      003AE7 33               [12] 2711 	rlc	a
      003AE8 FA               [12] 2712 	mov	r2,a
      003AE9 EA               [12] 2713 	mov	a,r2
      003AEA 60 03            [24] 2714 	jz	00154$
      003AEC 02 3A F4         [24] 2715 	ljmp	00110$
      003AEF                       2716 00154$:
      003AEF                       2717 00109$:
      003AEF 7B 00            [12] 2718 	mov	r3,#0x00
      003AF1 02 3A F6         [24] 2719 	ljmp	00111$
      003AF4                       2720 00110$:
      003AF4 7B 01            [12] 2721 	mov	r3,#0x01
      003AF6                       2722 00111$:
      003AF6 90 10 99         [24] 2723 	mov	dptr,#_monthLength_PARM_2
      003AF9 EC               [12] 2724 	mov	a,r4
      003AFA F0               [24] 2725 	movx	@dptr,a
      003AFB 8B 82            [24] 2726 	mov	dpl,r3
      003AFD C0 07            [24] 2727 	push	ar7
      003AFF C0 06            [24] 2728 	push	ar6
      003B01 C0 05            [24] 2729 	push	ar5
      003B03 C0 04            [24] 2730 	push	ar4
      003B05 12 38 C9         [24] 2731 	lcall	_monthLength
      003B08 AB 82            [24] 2732 	mov	r3,dpl
      003B0A D0 04            [24] 2733 	pop	ar4
      003B0C D0 05            [24] 2734 	pop	ar5
      003B0E D0 06            [24] 2735 	pop	ar6
      003B10 D0 07            [24] 2736 	pop	ar7
      003B12 7A 00            [12] 2737 	mov	r2,#0x00
      003B14 90 10 A3         [24] 2738 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003B17 E0               [24] 2739 	movx	a,@dptr
      003B18 F8               [12] 2740 	mov	r0,a
      003B19 A3               [24] 2741 	inc	dptr
      003B1A E0               [24] 2742 	movx	a,@dptr
      003B1B F9               [12] 2743 	mov	r1,a
      003B1C 90 10 A3         [24] 2744 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003B1F EB               [12] 2745 	mov	a,r3
      003B20 28               [12] 2746 	add	a,r0
      003B21 F0               [24] 2747 	movx	@dptr,a
      003B22 EA               [12] 2748 	mov	a,r2
      003B23 39               [12] 2749 	addc	a,r1
      003B24 A3               [24] 2750 	inc	dptr
      003B25 F0               [24] 2751 	movx	@dptr,a
      003B26 02 3A 47         [24] 2752 	ljmp	00101$
      003B29                       2753 00103$:
                                   2754 ;	../osal/common/OSAL_ClockBLE.c:345: uint16 year = tm->year;
      003B29 90 10 9C         [24] 2755 	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
      003B2C E0               [24] 2756 	movx	a,@dptr
      003B2D FD               [12] 2757 	mov	r5,a
      003B2E A3               [24] 2758 	inc	dptr
      003B2F E0               [24] 2759 	movx	a,@dptr
      003B30 FE               [12] 2760 	mov	r6,a
      003B31 A3               [24] 2761 	inc	dptr
      003B32 E0               [24] 2762 	movx	a,@dptr
      003B33 FF               [12] 2763 	mov	r7,a
      003B34 74 05            [12] 2764 	mov	a,#0x05
      003B36 2D               [12] 2765 	add	a,r5
      003B37 FD               [12] 2766 	mov	r5,a
      003B38 74 00            [12] 2767 	mov	a,#0x00
      003B3A 3E               [12] 2768 	addc	a,r6
      003B3B FE               [12] 2769 	mov	r6,a
      003B3C 8D 82            [24] 2770 	mov	dpl,r5
      003B3E 8E 83            [24] 2771 	mov	dph,r6
      003B40 8F F0            [24] 2772 	mov	b,r7
      003B42 12 5B 6D         [24] 2773 	lcall	__gptrget
      003B45 FD               [12] 2774 	mov	r5,a
      003B46 A3               [24] 2775 	inc	dptr
      003B47 12 5B 6D         [24] 2776 	lcall	__gptrget
      003B4A FE               [12] 2777 	mov	r6,a
      003B4B 90 10 A6         [24] 2778 	mov	dptr,#_osal_ConvertUTCSecs_year_3_105
      003B4E ED               [12] 2779 	mov	a,r5
      003B4F F0               [24] 2780 	movx	@dptr,a
      003B50 EE               [12] 2781 	mov	a,r6
      003B51 A3               [24] 2782 	inc	dptr
      003B52 F0               [24] 2783 	movx	@dptr,a
                                   2784 ;	../osal/common/OSAL_ClockBLE.c:346: while ( --year >= BEGYEAR )
      003B53 90 10 A6         [24] 2785 	mov	dptr,#_osal_ConvertUTCSecs_year_3_105
      003B56 E0               [24] 2786 	movx	a,@dptr
      003B57 FE               [12] 2787 	mov	r6,a
      003B58 A3               [24] 2788 	inc	dptr
      003B59 E0               [24] 2789 	movx	a,@dptr
      003B5A FF               [12] 2790 	mov	r7,a
      003B5B                       2791 00104$:
      003B5B 1E               [12] 2792 	dec	r6
      003B5C BE FF 01         [24] 2793 	cjne	r6,#0xFF,00155$
      003B5F 1F               [12] 2794 	dec	r7
      003B60                       2795 00155$:
      003B60 C3               [12] 2796 	clr	c
      003B61 EE               [12] 2797 	mov	a,r6
      003B62 94 D0            [12] 2798 	subb	a,#0xD0
      003B64 EF               [12] 2799 	mov	a,r7
      003B65 94 07            [12] 2800 	subb	a,#0x07
      003B67 50 03            [24] 2801 	jnc	00156$
      003B69 02 3B F0         [24] 2802 	ljmp	00106$
      003B6C                       2803 00156$:
                                   2804 ;	../osal/common/OSAL_ClockBLE.c:348: days += YearLength( year );
      003B6C 90 12 31         [24] 2805 	mov	dptr,#__moduint_PARM_2
      003B6F 74 90            [12] 2806 	mov	a,#0x90
      003B71 F0               [24] 2807 	movx	@dptr,a
      003B72 74 01            [12] 2808 	mov	a,#0x01
      003B74 A3               [24] 2809 	inc	dptr
      003B75 F0               [24] 2810 	movx	@dptr,a
      003B76 8E 82            [24] 2811 	mov	dpl,r6
      003B78 8F 83            [24] 2812 	mov	dph,r7
      003B7A C0 07            [24] 2813 	push	ar7
      003B7C C0 06            [24] 2814 	push	ar6
      003B7E 12 5A A8         [24] 2815 	lcall	__moduint
      003B81 AC 82            [24] 2816 	mov	r4,dpl
      003B83 AD 83            [24] 2817 	mov	r5,dph
      003B85 D0 06            [24] 2818 	pop	ar6
      003B87 D0 07            [24] 2819 	pop	ar7
      003B89 EC               [12] 2820 	mov	a,r4
      003B8A 4D               [12] 2821 	orl	a,r5
      003B8B B4 01 00         [24] 2822 	cjne	a,#0x01,00157$
      003B8E                       2823 00157$:
      003B8E E4               [12] 2824 	clr	a
      003B8F 33               [12] 2825 	rlc	a
      003B90 FC               [12] 2826 	mov	r4,a
      003B91 EC               [12] 2827 	mov	a,r4
      003B92 60 03            [24] 2828 	jz	00158$
      003B94 02 3B D0         [24] 2829 	ljmp	00118$
      003B97                       2830 00158$:
      003B97 90 12 31         [24] 2831 	mov	dptr,#__moduint_PARM_2
      003B9A 74 64            [12] 2832 	mov	a,#0x64
      003B9C F0               [24] 2833 	movx	@dptr,a
      003B9D 74 00            [12] 2834 	mov	a,#0x00
      003B9F A3               [24] 2835 	inc	dptr
      003BA0 F0               [24] 2836 	movx	@dptr,a
      003BA1 8E 82            [24] 2837 	mov	dpl,r6
      003BA3 8F 83            [24] 2838 	mov	dph,r7
      003BA5 C0 07            [24] 2839 	push	ar7
      003BA7 C0 06            [24] 2840 	push	ar6
      003BA9 12 5A A8         [24] 2841 	lcall	__moduint
      003BAC E5 82            [12] 2842 	mov	a,dpl
      003BAE 85 83 F0         [24] 2843 	mov	b,dph
      003BB1 D0 06            [24] 2844 	pop	ar6
      003BB3 D0 07            [24] 2845 	pop	ar7
      003BB5 45 F0            [12] 2846 	orl	a,b
      003BB7 70 03            [24] 2847 	jnz	00159$
      003BB9 02 3B D7         [24] 2848 	ljmp	00115$
      003BBC                       2849 00159$:
      003BBC 74 03            [12] 2850 	mov	a,#0x03
      003BBE 5E               [12] 2851 	anl	a,r6
      003BBF FC               [12] 2852 	mov	r4,a
      003BC0 7D 00            [12] 2853 	mov	r5,#0x00
      003BC2 EC               [12] 2854 	mov	a,r4
      003BC3 4D               [12] 2855 	orl	a,r5
      003BC4 B4 01 00         [24] 2856 	cjne	a,#0x01,00160$
      003BC7                       2857 00160$:
      003BC7 E4               [12] 2858 	clr	a
      003BC8 33               [12] 2859 	rlc	a
      003BC9 FC               [12] 2860 	mov	r4,a
      003BCA EC               [12] 2861 	mov	a,r4
      003BCB 70 03            [24] 2862 	jnz	00161$
      003BCD 02 3B D7         [24] 2863 	ljmp	00115$
      003BD0                       2864 00161$:
      003BD0                       2865 00118$:
      003BD0 7C 6E            [12] 2866 	mov	r4,#0x6E
      003BD2 7D 01            [12] 2867 	mov	r5,#0x01
      003BD4 02 3B DB         [24] 2868 	ljmp	00116$
      003BD7                       2869 00115$:
      003BD7 7C 6D            [12] 2870 	mov	r4,#0x6D
      003BD9 7D 01            [12] 2871 	mov	r5,#0x01
      003BDB                       2872 00116$:
      003BDB 90 10 A3         [24] 2873 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003BDE E0               [24] 2874 	movx	a,@dptr
      003BDF FA               [12] 2875 	mov	r2,a
      003BE0 A3               [24] 2876 	inc	dptr
      003BE1 E0               [24] 2877 	movx	a,@dptr
      003BE2 FB               [12] 2878 	mov	r3,a
      003BE3 90 10 A3         [24] 2879 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003BE6 EC               [12] 2880 	mov	a,r4
      003BE7 2A               [12] 2881 	add	a,r2
      003BE8 F0               [24] 2882 	movx	@dptr,a
      003BE9 ED               [12] 2883 	mov	a,r5
      003BEA 3B               [12] 2884 	addc	a,r3
      003BEB A3               [24] 2885 	inc	dptr
      003BEC F0               [24] 2886 	movx	@dptr,a
      003BED 02 3B 5B         [24] 2887 	ljmp	00104$
      003BF0                       2888 00106$:
                                   2889 ;	../osal/common/OSAL_ClockBLE.c:353: seconds += (days * DAY);
      003BF0 90 10 A3         [24] 2890 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003BF3 E0               [24] 2891 	movx	a,@dptr
      003BF4 FE               [12] 2892 	mov	r6,a
      003BF5 A3               [24] 2893 	inc	dptr
      003BF6 E0               [24] 2894 	movx	a,@dptr
      003BF7 FF               [12] 2895 	mov	r7,a
      003BF8 90 12 2D         [24] 2896 	mov	dptr,#__mullong_PARM_2
      003BFB EE               [12] 2897 	mov	a,r6
      003BFC F0               [24] 2898 	movx	@dptr,a
      003BFD EF               [12] 2899 	mov	a,r7
      003BFE A3               [24] 2900 	inc	dptr
      003BFF F0               [24] 2901 	movx	@dptr,a
      003C00 74 00            [12] 2902 	mov	a,#0x00
      003C02 A3               [24] 2903 	inc	dptr
      003C03 F0               [24] 2904 	movx	@dptr,a
      003C04 A3               [24] 2905 	inc	dptr
      003C05 F0               [24] 2906 	movx	@dptr,a
      003C06 75 82 80         [24] 2907 	mov	dpl,#0x80
      003C09 75 83 51         [24] 2908 	mov	dph,#0x51
      003C0C 75 F0 01         [24] 2909 	mov	b,#0x01
      003C0F 74 00            [12] 2910 	mov	a,#0x00
      003C11 12 5A 3C         [24] 2911 	lcall	__mullong
      003C14 AC 82            [24] 2912 	mov	r4,dpl
      003C16 AD 83            [24] 2913 	mov	r5,dph
      003C18 AE F0            [24] 2914 	mov	r6,b
      003C1A FF               [12] 2915 	mov	r7,a
      003C1B 90 10 9F         [24] 2916 	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
      003C1E E0               [24] 2917 	movx	a,@dptr
      003C1F F8               [12] 2918 	mov	r0,a
      003C20 A3               [24] 2919 	inc	dptr
      003C21 E0               [24] 2920 	movx	a,@dptr
      003C22 F9               [12] 2921 	mov	r1,a
      003C23 A3               [24] 2922 	inc	dptr
      003C24 E0               [24] 2923 	movx	a,@dptr
      003C25 FA               [12] 2924 	mov	r2,a
      003C26 A3               [24] 2925 	inc	dptr
      003C27 E0               [24] 2926 	movx	a,@dptr
      003C28 FB               [12] 2927 	mov	r3,a
      003C29 90 10 9F         [24] 2928 	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
      003C2C EC               [12] 2929 	mov	a,r4
      003C2D 28               [12] 2930 	add	a,r0
      003C2E F0               [24] 2931 	movx	@dptr,a
      003C2F ED               [12] 2932 	mov	a,r5
      003C30 39               [12] 2933 	addc	a,r1
      003C31 A3               [24] 2934 	inc	dptr
      003C32 F0               [24] 2935 	movx	@dptr,a
      003C33 EE               [12] 2936 	mov	a,r6
      003C34 3A               [12] 2937 	addc	a,r2
      003C35 A3               [24] 2938 	inc	dptr
      003C36 F0               [24] 2939 	movx	@dptr,a
      003C37 EF               [12] 2940 	mov	a,r7
      003C38 3B               [12] 2941 	addc	a,r3
      003C39 A3               [24] 2942 	inc	dptr
      003C3A F0               [24] 2943 	movx	@dptr,a
                                   2944 ;	../osal/common/OSAL_ClockBLE.c:356: return ( seconds );
      003C3B 90 10 9F         [24] 2945 	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
      003C3E E0               [24] 2946 	movx	a,@dptr
      003C3F FC               [12] 2947 	mov	r4,a
      003C40 A3               [24] 2948 	inc	dptr
      003C41 E0               [24] 2949 	movx	a,@dptr
      003C42 FD               [12] 2950 	mov	r5,a
      003C43 A3               [24] 2951 	inc	dptr
      003C44 E0               [24] 2952 	movx	a,@dptr
      003C45 FE               [12] 2953 	mov	r6,a
      003C46 A3               [24] 2954 	inc	dptr
      003C47 E0               [24] 2955 	movx	a,@dptr
      003C48 FF               [12] 2956 	mov	r7,a
      003C49 8C 82            [24] 2957 	mov	dpl,r4
      003C4B 8D 83            [24] 2958 	mov	dph,r5
      003C4D 8E F0            [24] 2959 	mov	b,r6
      003C4F EF               [12] 2960 	mov	a,r7
      003C50                       2961 00107$:
      003C50 22               [24] 2962 	ret
                                   2963 	.area CSEG    (CODE)
                                   2964 	.area CONST   (CODE)
                                   2965 	.area CABS    (ABS,CODE)
