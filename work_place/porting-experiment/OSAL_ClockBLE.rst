                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:40 2015
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
      000022                        659 _osalClockUpdate_sloc0_1_0:
      000022                        660 	.ds 4
      000026                        661 _osal_ConvertUTCTime_sloc0_1_0:
      000026                        662 	.ds 4
      00002A                        663 _osal_ConvertUTCTime_sloc1_1_0:
      00002A                        664 	.ds 4
      00002E                        665 _osal_ConvertUTCTime_sloc2_1_0:
      00002E                        666 	.ds 3
      000031                        667 _osal_ConvertUTCSecs_sloc0_1_0:
      000031                        668 	.ds 4
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
      001075                        872 _previousLLTimerTick:
      001075                        873 	.ds 2
      001077                        874 _remUsTicks:
      001077                        875 	.ds 2
      001079                        876 _timeMSec:
      001079                        877 	.ds 2
      00107B                        878 _OSAL_timeSeconds::
      00107B                        879 	.ds 4
      00107F                        880 _osalTimeUpdate_tmp_1_77:
      00107F                        881 	.ds 2
      001081                        882 _osalTimeUpdate_ticks625us_1_77:
      001081                        883 	.ds 2
      001083                        884 _osalTimeUpdate_elapsedMSec_1_77:
      001083                        885 	.ds 2
      001085                        886 _osalClockUpdate_elapsedMSec_1_81:
      001085                        887 	.ds 2
      001087                        888 _osal_setClock_newTime_1_84:
      001087                        889 	.ds 4
      00108B                        890 _osal_ConvertUTCTime_PARM_2:
      00108B                        891 	.ds 4
      00108F                        892 _osal_ConvertUTCTime_tm_1_88:
      00108F                        893 	.ds 3
      001092                        894 _osal_ConvertUTCTime_numDays_2_91:
      001092                        895 	.ds 2
      001094                        896 _monthLength_PARM_2:
      001094                        897 	.ds 1
      001095                        898 _monthLength_lpyr_1_94:
      001095                        899 	.ds 1
      001096                        900 _monthLength_days_1_95:
      001096                        901 	.ds 1
      001097                        902 _osal_ConvertUTCSecs_tm_1_100:
      001097                        903 	.ds 3
      00109A                        904 _osal_ConvertUTCSecs_seconds_1_101:
      00109A                        905 	.ds 4
      00109E                        906 _osal_ConvertUTCSecs_days_2_102:
      00109E                        907 	.ds 2
      0010A0                        908 _osal_ConvertUTCSecs_month_3_103:
      0010A0                        909 	.ds 1
      0010A1                        910 _osal_ConvertUTCSecs_year_3_105:
      0010A1                        911 	.ds 2
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
      0000BE 90 10 75         [24]  937 	mov	dptr,#_previousLLTimerTick
      0000C1 74 00            [12]  938 	mov	a,#0x00
      0000C3 F0               [24]  939 	movx	@dptr,a
      0000C4 A3               [24]  940 	inc	dptr
      0000C5 F0               [24]  941 	movx	@dptr,a
                                    942 ;	../osal/common/OSAL_ClockBLE.c:100: static uint16 remUsTicks = 0;
      0000C6 90 10 77         [24]  943 	mov	dptr,#_remUsTicks
      0000C9 F0               [24]  944 	movx	@dptr,a
      0000CA A3               [24]  945 	inc	dptr
      0000CB F0               [24]  946 	movx	@dptr,a
                                    947 ;	../osal/common/OSAL_ClockBLE.c:101: static uint16 timeMSec = 0;
      0000CC 90 10 79         [24]  948 	mov	dptr,#_timeMSec
      0000CF F0               [24]  949 	movx	@dptr,a
      0000D0 A3               [24]  950 	inc	dptr
      0000D1 F0               [24]  951 	movx	@dptr,a
                                    952 ;	../osal/common/OSAL_ClockBLE.c:105: UTCTime OSAL_timeSeconds = 0;
      0000D2 90 10 7B         [24]  953 	mov	dptr,#_OSAL_timeSeconds
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
      00306C                        979 _ll_McuPrecisionCount:
                           000007   980 	ar7 = 0x07
                           000006   981 	ar6 = 0x06
                           000005   982 	ar5 = 0x05
                           000004   983 	ar4 = 0x04
                           000003   984 	ar3 = 0x03
                           000002   985 	ar2 = 0x02
                           000001   986 	ar1 = 0x01
                           000000   987 	ar0 = 0x00
                                    988 ;	../osal/common/OSAL_ClockBLE.c:88: uint16 tick = T2M0 +(T2M1<<8);
      00306C AE A2            [24]  989 	mov	r6,_T2M0
      00306E 7F 00            [12]  990 	mov	r7,#0x00
      003070 AC A3            [24]  991 	mov	r4,_T2M1
      003072 7D 00            [12]  992 	mov	r5,#0x00
      003074 8C 05            [24]  993 	mov	ar5,r4
      003076 7C 00            [12]  994 	mov	r4,#0x00
      003078 EC               [12]  995 	mov	a,r4
      003079 2E               [12]  996 	add	a,r6
      00307A FE               [12]  997 	mov	r6,a
      00307B ED               [12]  998 	mov	a,r5
      00307C 3F               [12]  999 	addc	a,r7
      00307D FF               [12] 1000 	mov	r7,a
                                   1001 ;	../osal/common/OSAL_ClockBLE.c:90: return tick;
      00307E 8E 82            [24] 1002 	mov	dpl,r6
      003080 8F 83            [24] 1003 	mov	dph,r7
      003082                       1004 00101$:
      003082 22               [24] 1005 	ret
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
      003083                       1017 _osalTimeUpdate:
                                   1018 ;	../osal/common/OSAL_ClockBLE.c:136: uint16 elapsedMSec = 0;
      003083 90 10 83         [24] 1019 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      003086 74 00            [12] 1020 	mov	a,#0x00
      003088 F0               [24] 1021 	movx	@dptr,a
      003089 A3               [24] 1022 	inc	dptr
      00308A F0               [24] 1023 	movx	@dptr,a
                                   1024 ;	../osal/common/OSAL_ClockBLE.c:139: tmp = ll_McuPrecisionCount();
      00308B 12 30 6C         [24] 1025 	lcall	_ll_McuPrecisionCount
      00308E AE 82            [24] 1026 	mov	r6,dpl
      003090 AF 83            [24] 1027 	mov	r7,dph
      003092 90 10 7F         [24] 1028 	mov	dptr,#_osalTimeUpdate_tmp_1_77
      003095 EE               [12] 1029 	mov	a,r6
      003096 F0               [24] 1030 	movx	@dptr,a
      003097 EF               [12] 1031 	mov	a,r7
      003098 A3               [24] 1032 	inc	dptr
      003099 F0               [24] 1033 	movx	@dptr,a
                                   1034 ;	../osal/common/OSAL_ClockBLE.c:144: if ( tmp != previousLLTimerTick )
      00309A 90 10 75         [24] 1035 	mov	dptr,#_previousLLTimerTick
      00309D E0               [24] 1036 	movx	a,@dptr
      00309E FC               [12] 1037 	mov	r4,a
      00309F A3               [24] 1038 	inc	dptr
      0030A0 E0               [24] 1039 	movx	a,@dptr
      0030A1 FD               [12] 1040 	mov	r5,a
      0030A2 EE               [12] 1041 	mov	a,r6
      0030A3 B5 04 07         [24] 1042 	cjne	a,ar4,00123$
      0030A6 EF               [12] 1043 	mov	a,r7
      0030A7 B5 05 03         [24] 1044 	cjne	a,ar5,00123$
      0030AA 02 31 B1         [24] 1045 	ljmp	00108$
      0030AD                       1046 00123$:
                                   1047 ;	../osal/common/OSAL_ClockBLE.c:147: ticks625us = tmp - previousLLTimerTick;
      0030AD 90 10 75         [24] 1048 	mov	dptr,#_previousLLTimerTick
      0030B0 E0               [24] 1049 	movx	a,@dptr
      0030B1 FE               [12] 1050 	mov	r6,a
      0030B2 A3               [24] 1051 	inc	dptr
      0030B3 E0               [24] 1052 	movx	a,@dptr
      0030B4 FF               [12] 1053 	mov	r7,a
      0030B5 90 10 7F         [24] 1054 	mov	dptr,#_osalTimeUpdate_tmp_1_77
      0030B8 E0               [24] 1055 	movx	a,@dptr
      0030B9 FC               [12] 1056 	mov	r4,a
      0030BA A3               [24] 1057 	inc	dptr
      0030BB E0               [24] 1058 	movx	a,@dptr
      0030BC FD               [12] 1059 	mov	r5,a
      0030BD 90 10 81         [24] 1060 	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
      0030C0 EC               [12] 1061 	mov	a,r4
      0030C1 C3               [12] 1062 	clr	c
      0030C2 9E               [12] 1063 	subb	a,r6
      0030C3 F0               [24] 1064 	movx	@dptr,a
      0030C4 ED               [12] 1065 	mov	a,r5
      0030C5 9F               [12] 1066 	subb	a,r7
      0030C6 A3               [24] 1067 	inc	dptr
      0030C7 F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	../osal/common/OSAL_ClockBLE.c:150: previousLLTimerTick = tmp;
      0030C8 90 10 75         [24] 1070 	mov	dptr,#_previousLLTimerTick
      0030CB EC               [12] 1071 	mov	a,r4
      0030CC F0               [24] 1072 	movx	@dptr,a
      0030CD ED               [12] 1073 	mov	a,r5
      0030CE A3               [24] 1074 	inc	dptr
      0030CF F0               [24] 1075 	movx	@dptr,a
                                   1076 ;	../osal/common/OSAL_ClockBLE.c:155: while ( ticks625us > MAXCALCTICKS )
      0030D0 90 10 81         [24] 1077 	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
      0030D3 E0               [24] 1078 	movx	a,@dptr
      0030D4 FE               [12] 1079 	mov	r6,a
      0030D5 A3               [24] 1080 	inc	dptr
      0030D6 E0               [24] 1081 	movx	a,@dptr
      0030D7 FF               [12] 1082 	mov	r7,a
      0030D8 90 10 83         [24] 1083 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      0030DB E0               [24] 1084 	movx	a,@dptr
      0030DC FC               [12] 1085 	mov	r4,a
      0030DD A3               [24] 1086 	inc	dptr
      0030DE E0               [24] 1087 	movx	a,@dptr
      0030DF FD               [12] 1088 	mov	r5,a
      0030E0                       1089 00101$:
      0030E0 C3               [12] 1090 	clr	c
      0030E1 74 31            [12] 1091 	mov	a,#0x31
      0030E3 9E               [12] 1092 	subb	a,r6
      0030E4 74 33            [12] 1093 	mov	a,#0x33
      0030E6 9F               [12] 1094 	subb	a,r7
      0030E7 40 03            [24] 1095 	jc	00124$
      0030E9 02 31 13         [24] 1096 	ljmp	00114$
      0030EC                       1097 00124$:
                                   1098 ;	../osal/common/OSAL_ClockBLE.c:157: ticks625us -= MAXCALCTICKS;
      0030EC EE               [12] 1099 	mov	a,r6
      0030ED 24 CF            [12] 1100 	add	a,#0xCF
      0030EF FE               [12] 1101 	mov	r6,a
      0030F0 EF               [12] 1102 	mov	a,r7
      0030F1 34 CC            [12] 1103 	addc	a,#0xCC
      0030F3 FF               [12] 1104 	mov	r7,a
                                   1105 ;	../osal/common/OSAL_ClockBLE.c:158: elapsedMSec += MAXCALCTICKS * 5 / 8;
      0030F4 74 FE            [12] 1106 	mov	a,#0xFE
      0030F6 2C               [12] 1107 	add	a,r4
      0030F7 FC               [12] 1108 	mov	r4,a
      0030F8 74 1F            [12] 1109 	mov	a,#0x1F
      0030FA 3D               [12] 1110 	addc	a,r5
      0030FB FD               [12] 1111 	mov	r5,a
                                   1112 ;	../osal/common/OSAL_ClockBLE.c:159: remUsTicks += MAXCALCTICKS * 5 % 8;
      0030FC 90 10 77         [24] 1113 	mov	dptr,#_remUsTicks
      0030FF E0               [24] 1114 	movx	a,@dptr
      003100 FA               [12] 1115 	mov	r2,a
      003101 A3               [24] 1116 	inc	dptr
      003102 E0               [24] 1117 	movx	a,@dptr
      003103 FB               [12] 1118 	mov	r3,a
      003104 90 10 77         [24] 1119 	mov	dptr,#_remUsTicks
      003107 74 05            [12] 1120 	mov	a,#0x05
      003109 2A               [12] 1121 	add	a,r2
      00310A F0               [24] 1122 	movx	@dptr,a
      00310B 74 00            [12] 1123 	mov	a,#0x00
      00310D 3B               [12] 1124 	addc	a,r3
      00310E A3               [24] 1125 	inc	dptr
      00310F F0               [24] 1126 	movx	@dptr,a
      003110 02 30 E0         [24] 1127 	ljmp	00101$
      003113                       1128 00114$:
      003113 90 10 81         [24] 1129 	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
      003116 EE               [12] 1130 	mov	a,r6
      003117 F0               [24] 1131 	movx	@dptr,a
      003118 EF               [12] 1132 	mov	a,r7
      003119 A3               [24] 1133 	inc	dptr
      00311A F0               [24] 1134 	movx	@dptr,a
      00311B 90 10 83         [24] 1135 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      00311E EC               [12] 1136 	mov	a,r4
      00311F F0               [24] 1137 	movx	@dptr,a
      003120 ED               [12] 1138 	mov	a,r5
      003121 A3               [24] 1139 	inc	dptr
      003122 F0               [24] 1140 	movx	@dptr,a
                                   1141 ;	../osal/common/OSAL_ClockBLE.c:164: tmp = (ticks625us * 5) + remUsTicks;
      003123 90 10 81         [24] 1142 	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
      003126 E0               [24] 1143 	movx	a,@dptr
      003127 FE               [12] 1144 	mov	r6,a
      003128 A3               [24] 1145 	inc	dptr
      003129 E0               [24] 1146 	movx	a,@dptr
      00312A FF               [12] 1147 	mov	r7,a
      00312B 90 12 5E         [24] 1148 	mov	dptr,#__mulint_PARM_2
      00312E EE               [12] 1149 	mov	a,r6
      00312F F0               [24] 1150 	movx	@dptr,a
      003130 EF               [12] 1151 	mov	a,r7
      003131 A3               [24] 1152 	inc	dptr
      003132 F0               [24] 1153 	movx	@dptr,a
      003133 75 82 05         [24] 1154 	mov	dpl,#0x05
      003136 75 83 00         [24] 1155 	mov	dph,#0x00
      003139 12 5C 0F         [24] 1156 	lcall	__mulint
      00313C AE 82            [24] 1157 	mov	r6,dpl
      00313E AF 83            [24] 1158 	mov	r7,dph
      003140 90 10 77         [24] 1159 	mov	dptr,#_remUsTicks
      003143 E0               [24] 1160 	movx	a,@dptr
      003144 FC               [12] 1161 	mov	r4,a
      003145 A3               [24] 1162 	inc	dptr
      003146 E0               [24] 1163 	movx	a,@dptr
      003147 FD               [12] 1164 	mov	r5,a
      003148 EC               [12] 1165 	mov	a,r4
      003149 2E               [12] 1166 	add	a,r6
      00314A FE               [12] 1167 	mov	r6,a
      00314B ED               [12] 1168 	mov	a,r5
      00314C 3F               [12] 1169 	addc	a,r7
      00314D FF               [12] 1170 	mov	r7,a
                                   1171 ;	../osal/common/OSAL_ClockBLE.c:167: elapsedMSec += tmp / 8;
      00314E 8E 04            [24] 1172 	mov	ar4,r6
      003150 EF               [12] 1173 	mov	a,r7
      003151 C4               [12] 1174 	swap	a
      003152 23               [12] 1175 	rl	a
      003153 CC               [12] 1176 	xch	a,r4
      003154 C4               [12] 1177 	swap	a
      003155 23               [12] 1178 	rl	a
      003156 54 1F            [12] 1179 	anl	a,#0x1F
      003158 6C               [12] 1180 	xrl	a,r4
      003159 CC               [12] 1181 	xch	a,r4
      00315A 54 1F            [12] 1182 	anl	a,#0x1F
      00315C CC               [12] 1183 	xch	a,r4
      00315D 6C               [12] 1184 	xrl	a,r4
      00315E CC               [12] 1185 	xch	a,r4
      00315F FD               [12] 1186 	mov	r5,a
      003160 90 10 83         [24] 1187 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      003163 E0               [24] 1188 	movx	a,@dptr
      003164 FA               [12] 1189 	mov	r2,a
      003165 A3               [24] 1190 	inc	dptr
      003166 E0               [24] 1191 	movx	a,@dptr
      003167 FB               [12] 1192 	mov	r3,a
      003168 90 10 83         [24] 1193 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      00316B EC               [12] 1194 	mov	a,r4
      00316C 2A               [12] 1195 	add	a,r2
      00316D F0               [24] 1196 	movx	@dptr,a
      00316E ED               [12] 1197 	mov	a,r5
      00316F 3B               [12] 1198 	addc	a,r3
      003170 A3               [24] 1199 	inc	dptr
      003171 F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	../osal/common/OSAL_ClockBLE.c:168: remUsTicks = tmp % 8;
      003172 90 10 77         [24] 1202 	mov	dptr,#_remUsTicks
      003175 74 07            [12] 1203 	mov	a,#0x07
      003177 5E               [12] 1204 	anl	a,r6
      003178 F0               [24] 1205 	movx	@dptr,a
      003179 74 00            [12] 1206 	mov	a,#0x00
      00317B A3               [24] 1207 	inc	dptr
      00317C F0               [24] 1208 	movx	@dptr,a
                                   1209 ;	../osal/common/OSAL_ClockBLE.c:171: if ( elapsedMSec )
      00317D 90 10 83         [24] 1210 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      003180 E0               [24] 1211 	movx	a,@dptr
      003181 FE               [12] 1212 	mov	r6,a
      003182 A3               [24] 1213 	inc	dptr
      003183 E0               [24] 1214 	movx	a,@dptr
      003184 FF               [12] 1215 	mov	r7,a
      003185 EE               [12] 1216 	mov	a,r6
      003186 4F               [12] 1217 	orl	a,r7
      003187 70 03            [24] 1218 	jnz	00125$
      003189 02 31 B1         [24] 1219 	ljmp	00108$
      00318C                       1220 00125$:
                                   1221 ;	../osal/common/OSAL_ClockBLE.c:173: osalClockUpdate( elapsedMSec );
      00318C 90 10 83         [24] 1222 	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
      00318F E0               [24] 1223 	movx	a,@dptr
      003190 FE               [12] 1224 	mov	r6,a
      003191 A3               [24] 1225 	inc	dptr
      003192 E0               [24] 1226 	movx	a,@dptr
      003193 FF               [12] 1227 	mov	r7,a
      003194 8E 82            [24] 1228 	mov	dpl,r6
      003196 8F 83            [24] 1229 	mov	dph,r7
      003198 C0 07            [24] 1230 	push	ar7
      00319A C0 06            [24] 1231 	push	ar6
      00319C 12 31 B2         [24] 1232 	lcall	_osalClockUpdate
      00319F D0 06            [24] 1233 	pop	ar6
      0031A1 D0 07            [24] 1234 	pop	ar7
                                   1235 ;	../osal/common/OSAL_ClockBLE.c:177: osalTimerUpdate( elapsedMSec );
      0031A3 7D 00            [12] 1236 	mov	r5,#0x00
      0031A5 7C 00            [12] 1237 	mov	r4,#0x00
      0031A7 8E 82            [24] 1238 	mov	dpl,r6
      0031A9 8F 83            [24] 1239 	mov	dph,r7
      0031AB 8D F0            [24] 1240 	mov	b,r5
      0031AD EC               [12] 1241 	mov	a,r4
      0031AE 12 29 B8         [24] 1242 	lcall	_osalTimerUpdate
      0031B1                       1243 00108$:
      0031B1 22               [24] 1244 	ret
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
      0031B2                       1255 _osalClockUpdate:
      0031B2 AF 83            [24] 1256 	mov	r7,dph
      0031B4 E5 82            [12] 1257 	mov	a,dpl
      0031B6 90 10 85         [24] 1258 	mov	dptr,#_osalClockUpdate_elapsedMSec_1_81
      0031B9 F0               [24] 1259 	movx	@dptr,a
      0031BA EF               [12] 1260 	mov	a,r7
      0031BB A3               [24] 1261 	inc	dptr
      0031BC F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	../osal/common/OSAL_ClockBLE.c:194: timeMSec += elapsedMSec;
      0031BD 90 10 85         [24] 1264 	mov	dptr,#_osalClockUpdate_elapsedMSec_1_81
      0031C0 E0               [24] 1265 	movx	a,@dptr
      0031C1 FE               [12] 1266 	mov	r6,a
      0031C2 A3               [24] 1267 	inc	dptr
      0031C3 E0               [24] 1268 	movx	a,@dptr
      0031C4 FF               [12] 1269 	mov	r7,a
      0031C5 90 10 79         [24] 1270 	mov	dptr,#_timeMSec
      0031C8 E0               [24] 1271 	movx	a,@dptr
      0031C9 FC               [12] 1272 	mov	r4,a
      0031CA A3               [24] 1273 	inc	dptr
      0031CB E0               [24] 1274 	movx	a,@dptr
      0031CC FD               [12] 1275 	mov	r5,a
      0031CD 90 10 79         [24] 1276 	mov	dptr,#_timeMSec
      0031D0 EE               [12] 1277 	mov	a,r6
      0031D1 2C               [12] 1278 	add	a,r4
      0031D2 F0               [24] 1279 	movx	@dptr,a
      0031D3 EF               [12] 1280 	mov	a,r7
      0031D4 3D               [12] 1281 	addc	a,r5
      0031D5 A3               [24] 1282 	inc	dptr
      0031D6 F0               [24] 1283 	movx	@dptr,a
                                   1284 ;	../osal/common/OSAL_ClockBLE.c:197: if ( timeMSec >= 1000 )
      0031D7 90 10 79         [24] 1285 	mov	dptr,#_timeMSec
      0031DA E0               [24] 1286 	movx	a,@dptr
      0031DB FE               [12] 1287 	mov	r6,a
      0031DC A3               [24] 1288 	inc	dptr
      0031DD E0               [24] 1289 	movx	a,@dptr
      0031DE FF               [12] 1290 	mov	r7,a
      0031DF C3               [12] 1291 	clr	c
      0031E0 EE               [12] 1292 	mov	a,r6
      0031E1 94 E8            [12] 1293 	subb	a,#0xE8
      0031E3 EF               [12] 1294 	mov	a,r7
      0031E4 94 03            [12] 1295 	subb	a,#0x03
      0031E6 50 03            [24] 1296 	jnc	00108$
      0031E8 02 32 5E         [24] 1297 	ljmp	00103$
      0031EB                       1298 00108$:
                                   1299 ;	../osal/common/OSAL_ClockBLE.c:199: OSAL_timeSeconds += timeMSec / 1000;
      0031EB 90 10 79         [24] 1300 	mov	dptr,#_timeMSec
      0031EE E0               [24] 1301 	movx	a,@dptr
      0031EF FE               [12] 1302 	mov	r6,a
      0031F0 A3               [24] 1303 	inc	dptr
      0031F1 E0               [24] 1304 	movx	a,@dptr
      0031F2 FF               [12] 1305 	mov	r7,a
      0031F3 90 12 26         [24] 1306 	mov	dptr,#__divuint_PARM_2
      0031F6 74 E8            [12] 1307 	mov	a,#0xE8
      0031F8 F0               [24] 1308 	movx	@dptr,a
      0031F9 74 03            [12] 1309 	mov	a,#0x03
      0031FB A3               [24] 1310 	inc	dptr
      0031FC F0               [24] 1311 	movx	@dptr,a
      0031FD 8E 82            [24] 1312 	mov	dpl,r6
      0031FF 8F 83            [24] 1313 	mov	dph,r7
      003201 C0 07            [24] 1314 	push	ar7
      003203 C0 06            [24] 1315 	push	ar6
      003205 12 56 4E         [24] 1316 	lcall	__divuint
      003208 AC 82            [24] 1317 	mov	r4,dpl
      00320A AD 83            [24] 1318 	mov	r5,dph
      00320C D0 06            [24] 1319 	pop	ar6
      00320E D0 07            [24] 1320 	pop	ar7
      003210 90 10 7B         [24] 1321 	mov	dptr,#_OSAL_timeSeconds
      003213 E0               [24] 1322 	movx	a,@dptr
      003214 F5 22            [12] 1323 	mov	_osalClockUpdate_sloc0_1_0,a
      003216 A3               [24] 1324 	inc	dptr
      003217 E0               [24] 1325 	movx	a,@dptr
      003218 F5 23            [12] 1326 	mov	(_osalClockUpdate_sloc0_1_0 + 1),a
      00321A A3               [24] 1327 	inc	dptr
      00321B E0               [24] 1328 	movx	a,@dptr
      00321C F5 24            [12] 1329 	mov	(_osalClockUpdate_sloc0_1_0 + 2),a
      00321E A3               [24] 1330 	inc	dptr
      00321F E0               [24] 1331 	movx	a,@dptr
      003220 F5 25            [12] 1332 	mov	(_osalClockUpdate_sloc0_1_0 + 3),a
      003222 8C 02            [24] 1333 	mov	ar2,r4
      003224 8D 03            [24] 1334 	mov	ar3,r5
      003226 7C 00            [12] 1335 	mov	r4,#0x00
      003228 7D 00            [12] 1336 	mov	r5,#0x00
      00322A 90 10 7B         [24] 1337 	mov	dptr,#_OSAL_timeSeconds
      00322D EA               [12] 1338 	mov	a,r2
      00322E 25 22            [12] 1339 	add	a,_osalClockUpdate_sloc0_1_0
      003230 F0               [24] 1340 	movx	@dptr,a
      003231 EB               [12] 1341 	mov	a,r3
      003232 35 23            [12] 1342 	addc	a,(_osalClockUpdate_sloc0_1_0 + 1)
      003234 A3               [24] 1343 	inc	dptr
      003235 F0               [24] 1344 	movx	@dptr,a
      003236 EC               [12] 1345 	mov	a,r4
      003237 35 24            [12] 1346 	addc	a,(_osalClockUpdate_sloc0_1_0 + 2)
      003239 A3               [24] 1347 	inc	dptr
      00323A F0               [24] 1348 	movx	@dptr,a
      00323B ED               [12] 1349 	mov	a,r5
      00323C 35 25            [12] 1350 	addc	a,(_osalClockUpdate_sloc0_1_0 + 3)
      00323E A3               [24] 1351 	inc	dptr
      00323F F0               [24] 1352 	movx	@dptr,a
                                   1353 ;	../osal/common/OSAL_ClockBLE.c:200: timeMSec = timeMSec % 1000;
      003240 90 12 64         [24] 1354 	mov	dptr,#__moduint_PARM_2
      003243 74 E8            [12] 1355 	mov	a,#0xE8
      003245 F0               [24] 1356 	movx	@dptr,a
      003246 74 03            [12] 1357 	mov	a,#0x03
      003248 A3               [24] 1358 	inc	dptr
      003249 F0               [24] 1359 	movx	@dptr,a
      00324A 8E 82            [24] 1360 	mov	dpl,r6
      00324C 8F 83            [24] 1361 	mov	dph,r7
      00324E 12 5C 9B         [24] 1362 	lcall	__moduint
      003251 E5 82            [12] 1363 	mov	a,dpl
      003253 85 83 F0         [24] 1364 	mov	b,dph
      003256 90 10 79         [24] 1365 	mov	dptr,#_timeMSec
      003259 F0               [24] 1366 	movx	@dptr,a
      00325A E5 F0            [12] 1367 	mov	a,b
      00325C A3               [24] 1368 	inc	dptr
      00325D F0               [24] 1369 	movx	@dptr,a
      00325E                       1370 00103$:
      00325E 22               [24] 1371 	ret
                                   1372 ;------------------------------------------------------------
                                   1373 ;Allocation info for local variables in function 'osal_setClock'
                                   1374 ;------------------------------------------------------------
                                   1375 ;newTime                   Allocated with name '_osal_setClock_newTime_1_84'
                                   1376 ;------------------------------------------------------------
                                   1377 ;	../osal/common/OSAL_ClockBLE.c:215: void osal_setClock( UTCTime newTime )
                                   1378 ;	-----------------------------------------
                                   1379 ;	 function osal_setClock
                                   1380 ;	-----------------------------------------
      00325F                       1381 _osal_setClock:
      00325F AF 82            [24] 1382 	mov	r7,dpl
      003261 AE 83            [24] 1383 	mov	r6,dph
      003263 AD F0            [24] 1384 	mov	r5,b
      003265 FC               [12] 1385 	mov	r4,a
      003266 90 10 87         [24] 1386 	mov	dptr,#_osal_setClock_newTime_1_84
      003269 EF               [12] 1387 	mov	a,r7
      00326A F0               [24] 1388 	movx	@dptr,a
      00326B EE               [12] 1389 	mov	a,r6
      00326C A3               [24] 1390 	inc	dptr
      00326D F0               [24] 1391 	movx	@dptr,a
      00326E ED               [12] 1392 	mov	a,r5
      00326F A3               [24] 1393 	inc	dptr
      003270 F0               [24] 1394 	movx	@dptr,a
      003271 EC               [12] 1395 	mov	a,r4
      003272 A3               [24] 1396 	inc	dptr
      003273 F0               [24] 1397 	movx	@dptr,a
                                   1398 ;	../osal/common/OSAL_ClockBLE.c:217: OSAL_timeSeconds = newTime;
      003274 90 10 87         [24] 1399 	mov	dptr,#_osal_setClock_newTime_1_84
      003277 E0               [24] 1400 	movx	a,@dptr
      003278 FC               [12] 1401 	mov	r4,a
      003279 A3               [24] 1402 	inc	dptr
      00327A E0               [24] 1403 	movx	a,@dptr
      00327B FD               [12] 1404 	mov	r5,a
      00327C A3               [24] 1405 	inc	dptr
      00327D E0               [24] 1406 	movx	a,@dptr
      00327E FE               [12] 1407 	mov	r6,a
      00327F A3               [24] 1408 	inc	dptr
      003280 E0               [24] 1409 	movx	a,@dptr
      003281 FF               [12] 1410 	mov	r7,a
      003282 90 10 7B         [24] 1411 	mov	dptr,#_OSAL_timeSeconds
      003285 EC               [12] 1412 	mov	a,r4
      003286 F0               [24] 1413 	movx	@dptr,a
      003287 ED               [12] 1414 	mov	a,r5
      003288 A3               [24] 1415 	inc	dptr
      003289 F0               [24] 1416 	movx	@dptr,a
      00328A EE               [12] 1417 	mov	a,r6
      00328B A3               [24] 1418 	inc	dptr
      00328C F0               [24] 1419 	movx	@dptr,a
      00328D EF               [12] 1420 	mov	a,r7
      00328E A3               [24] 1421 	inc	dptr
      00328F F0               [24] 1422 	movx	@dptr,a
      003290                       1423 00101$:
      003290 22               [24] 1424 	ret
                                   1425 ;------------------------------------------------------------
                                   1426 ;Allocation info for local variables in function 'osal_getClock'
                                   1427 ;------------------------------------------------------------
                                   1428 ;	../osal/common/OSAL_ClockBLE.c:232: UTCTime osal_getClock( void )
                                   1429 ;	-----------------------------------------
                                   1430 ;	 function osal_getClock
                                   1431 ;	-----------------------------------------
      003291                       1432 _osal_getClock:
                                   1433 ;	../osal/common/OSAL_ClockBLE.c:234: return ( OSAL_timeSeconds );
      003291 90 10 7B         [24] 1434 	mov	dptr,#_OSAL_timeSeconds
      003294 E0               [24] 1435 	movx	a,@dptr
      003295 FC               [12] 1436 	mov	r4,a
      003296 A3               [24] 1437 	inc	dptr
      003297 E0               [24] 1438 	movx	a,@dptr
      003298 FD               [12] 1439 	mov	r5,a
      003299 A3               [24] 1440 	inc	dptr
      00329A E0               [24] 1441 	movx	a,@dptr
      00329B FE               [12] 1442 	mov	r6,a
      00329C A3               [24] 1443 	inc	dptr
      00329D E0               [24] 1444 	movx	a,@dptr
      00329E FF               [12] 1445 	mov	r7,a
      00329F 8C 82            [24] 1446 	mov	dpl,r4
      0032A1 8D 83            [24] 1447 	mov	dph,r5
      0032A3 8E F0            [24] 1448 	mov	b,r6
      0032A5 EF               [12] 1449 	mov	a,r7
      0032A6                       1450 00101$:
      0032A6 22               [24] 1451 	ret
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
      0032A7                       1467 _osal_ConvertUTCTime:
      0032A7 AF F0            [24] 1468 	mov	r7,b
      0032A9 AE 83            [24] 1469 	mov	r6,dph
      0032AB E5 82            [12] 1470 	mov	a,dpl
      0032AD 90 10 8F         [24] 1471 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      0032B0 F0               [24] 1472 	movx	@dptr,a
      0032B1 EE               [12] 1473 	mov	a,r6
      0032B2 A3               [24] 1474 	inc	dptr
      0032B3 F0               [24] 1475 	movx	@dptr,a
      0032B4 EF               [12] 1476 	mov	a,r7
      0032B5 A3               [24] 1477 	inc	dptr
      0032B6 F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	../osal/common/OSAL_ClockBLE.c:253: uint32 day = secTime % DAY;
      0032B7 90 10 8B         [24] 1480 	mov	dptr,#_osal_ConvertUTCTime_PARM_2
      0032BA E0               [24] 1481 	movx	a,@dptr
      0032BB F5 26            [12] 1482 	mov	_osal_ConvertUTCTime_sloc0_1_0,a
      0032BD A3               [24] 1483 	inc	dptr
      0032BE E0               [24] 1484 	movx	a,@dptr
      0032BF F5 27            [12] 1485 	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 1),a
      0032C1 A3               [24] 1486 	inc	dptr
      0032C2 E0               [24] 1487 	movx	a,@dptr
      0032C3 F5 28            [12] 1488 	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 2),a
      0032C5 A3               [24] 1489 	inc	dptr
      0032C6 E0               [24] 1490 	movx	a,@dptr
      0032C7 F5 29            [12] 1491 	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 3),a
      0032C9 90 12 2C         [24] 1492 	mov	dptr,#__modulong_PARM_2
      0032CC 74 80            [12] 1493 	mov	a,#0x80
      0032CE F0               [24] 1494 	movx	@dptr,a
      0032CF 74 51            [12] 1495 	mov	a,#0x51
      0032D1 A3               [24] 1496 	inc	dptr
      0032D2 F0               [24] 1497 	movx	@dptr,a
      0032D3 74 01            [12] 1498 	mov	a,#0x01
      0032D5 A3               [24] 1499 	inc	dptr
      0032D6 F0               [24] 1500 	movx	@dptr,a
      0032D7 74 00            [12] 1501 	mov	a,#0x00
      0032D9 A3               [24] 1502 	inc	dptr
      0032DA F0               [24] 1503 	movx	@dptr,a
                                   1504 ;	../osal/common/OSAL_ClockBLE.c:254: tm->seconds = day % 60UL;
      0032DB 85 26 82         [24] 1505 	mov	dpl,_osal_ConvertUTCTime_sloc0_1_0
      0032DE 85 27 83         [24] 1506 	mov	dph,(_osal_ConvertUTCTime_sloc0_1_0 + 1)
      0032E1 85 28 F0         [24] 1507 	mov	b,(_osal_ConvertUTCTime_sloc0_1_0 + 2)
      0032E4 E5 29            [12] 1508 	mov	a,(_osal_ConvertUTCTime_sloc0_1_0 + 3)
      0032E6 12 56 E8         [24] 1509 	lcall	__modulong
      0032E9 85 82 2A         [24] 1510 	mov	_osal_ConvertUTCTime_sloc1_1_0,dpl
      0032EC 85 83 2B         [24] 1511 	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 1),dph
      0032EF 85 F0 2C         [24] 1512 	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 2),b
      0032F2 F5 2D            [12] 1513 	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 3),a
      0032F4 90 10 8F         [24] 1514 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      0032F7 E0               [24] 1515 	movx	a,@dptr
      0032F8 FD               [12] 1516 	mov	r5,a
      0032F9 A3               [24] 1517 	inc	dptr
      0032FA E0               [24] 1518 	movx	a,@dptr
      0032FB FE               [12] 1519 	mov	r6,a
      0032FC A3               [24] 1520 	inc	dptr
      0032FD E0               [24] 1521 	movx	a,@dptr
      0032FE FF               [12] 1522 	mov	r7,a
      0032FF 90 12 2C         [24] 1523 	mov	dptr,#__modulong_PARM_2
      003302 74 3C            [12] 1524 	mov	a,#0x3C
      003304 F0               [24] 1525 	movx	@dptr,a
      003305 74 00            [12] 1526 	mov	a,#0x00
      003307 A3               [24] 1527 	inc	dptr
      003308 F0               [24] 1528 	movx	@dptr,a
      003309 A3               [24] 1529 	inc	dptr
      00330A F0               [24] 1530 	movx	@dptr,a
      00330B A3               [24] 1531 	inc	dptr
      00330C F0               [24] 1532 	movx	@dptr,a
      00330D 85 2A 82         [24] 1533 	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
      003310 85 2B 83         [24] 1534 	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
      003313 85 2C F0         [24] 1535 	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
      003316 E5 2D            [12] 1536 	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
      003318 C0 07            [24] 1537 	push	ar7
      00331A C0 06            [24] 1538 	push	ar6
      00331C C0 05            [24] 1539 	push	ar5
      00331E 12 56 E8         [24] 1540 	lcall	__modulong
      003321 A9 82            [24] 1541 	mov	r1,dpl
      003323 AA 83            [24] 1542 	mov	r2,dph
      003325 AB F0            [24] 1543 	mov	r3,b
      003327 FC               [12] 1544 	mov	r4,a
      003328 D0 05            [24] 1545 	pop	ar5
      00332A D0 06            [24] 1546 	pop	ar6
      00332C D0 07            [24] 1547 	pop	ar7
      00332E 8D 82            [24] 1548 	mov	dpl,r5
      003330 8E 83            [24] 1549 	mov	dph,r6
      003332 8F F0            [24] 1550 	mov	b,r7
      003334 E9               [12] 1551 	mov	a,r1
      003335 12 5B F4         [24] 1552 	lcall	__gptrput
                                   1553 ;	../osal/common/OSAL_ClockBLE.c:255: tm->minutes = (day % 3600UL) / 60UL;
      003338 74 01            [12] 1554 	mov	a,#0x01
      00333A 2D               [12] 1555 	add	a,r5
      00333B F5 2E            [12] 1556 	mov	_osal_ConvertUTCTime_sloc2_1_0,a
      00333D 74 00            [12] 1557 	mov	a,#0x00
      00333F 3E               [12] 1558 	addc	a,r6
      003340 F5 2F            [12] 1559 	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 1),a
      003342 8F 30            [24] 1560 	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 2),r7
      003344 90 12 2C         [24] 1561 	mov	dptr,#__modulong_PARM_2
      003347 74 10            [12] 1562 	mov	a,#0x10
      003349 F0               [24] 1563 	movx	@dptr,a
      00334A 74 0E            [12] 1564 	mov	a,#0x0E
      00334C A3               [24] 1565 	inc	dptr
      00334D F0               [24] 1566 	movx	@dptr,a
      00334E 74 00            [12] 1567 	mov	a,#0x00
      003350 A3               [24] 1568 	inc	dptr
      003351 F0               [24] 1569 	movx	@dptr,a
      003352 A3               [24] 1570 	inc	dptr
      003353 F0               [24] 1571 	movx	@dptr,a
      003354 85 2A 82         [24] 1572 	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
      003357 85 2B 83         [24] 1573 	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
      00335A 85 2C F0         [24] 1574 	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
      00335D E5 2D            [12] 1575 	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
      00335F C0 07            [24] 1576 	push	ar7
      003361 C0 06            [24] 1577 	push	ar6
      003363 C0 05            [24] 1578 	push	ar5
      003365 12 56 E8         [24] 1579 	lcall	__modulong
      003368 A8 82            [24] 1580 	mov	r0,dpl
      00336A A9 83            [24] 1581 	mov	r1,dph
      00336C AB F0            [24] 1582 	mov	r3,b
      00336E FC               [12] 1583 	mov	r4,a
      00336F D0 05            [24] 1584 	pop	ar5
      003371 D0 06            [24] 1585 	pop	ar6
      003373 D0 07            [24] 1586 	pop	ar7
      003375 90 12 3B         [24] 1587 	mov	dptr,#__divulong_PARM_2
      003378 74 3C            [12] 1588 	mov	a,#0x3C
      00337A F0               [24] 1589 	movx	@dptr,a
      00337B 74 00            [12] 1590 	mov	a,#0x00
      00337D A3               [24] 1591 	inc	dptr
      00337E F0               [24] 1592 	movx	@dptr,a
      00337F A3               [24] 1593 	inc	dptr
      003380 F0               [24] 1594 	movx	@dptr,a
      003381 A3               [24] 1595 	inc	dptr
      003382 F0               [24] 1596 	movx	@dptr,a
      003383 88 82            [24] 1597 	mov	dpl,r0
      003385 89 83            [24] 1598 	mov	dph,r1
      003387 8B F0            [24] 1599 	mov	b,r3
      003389 EC               [12] 1600 	mov	a,r4
      00338A C0 07            [24] 1601 	push	ar7
      00338C C0 06            [24] 1602 	push	ar6
      00338E C0 05            [24] 1603 	push	ar5
      003390 12 58 82         [24] 1604 	lcall	__divulong
      003393 A9 82            [24] 1605 	mov	r1,dpl
      003395 AA 83            [24] 1606 	mov	r2,dph
      003397 AB F0            [24] 1607 	mov	r3,b
      003399 FC               [12] 1608 	mov	r4,a
      00339A D0 05            [24] 1609 	pop	ar5
      00339C D0 06            [24] 1610 	pop	ar6
      00339E D0 07            [24] 1611 	pop	ar7
      0033A0 85 2E 82         [24] 1612 	mov	dpl,_osal_ConvertUTCTime_sloc2_1_0
      0033A3 85 2F 83         [24] 1613 	mov	dph,(_osal_ConvertUTCTime_sloc2_1_0 + 1)
      0033A6 85 30 F0         [24] 1614 	mov	b,(_osal_ConvertUTCTime_sloc2_1_0 + 2)
      0033A9 E9               [12] 1615 	mov	a,r1
      0033AA 12 5B F4         [24] 1616 	lcall	__gptrput
                                   1617 ;	../osal/common/OSAL_ClockBLE.c:256: tm->hour = day / 3600UL;
      0033AD 74 02            [12] 1618 	mov	a,#0x02
      0033AF 2D               [12] 1619 	add	a,r5
      0033B0 F5 2E            [12] 1620 	mov	_osal_ConvertUTCTime_sloc2_1_0,a
      0033B2 74 00            [12] 1621 	mov	a,#0x00
      0033B4 3E               [12] 1622 	addc	a,r6
      0033B5 F5 2F            [12] 1623 	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 1),a
      0033B7 8F 30            [24] 1624 	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 2),r7
      0033B9 90 12 3B         [24] 1625 	mov	dptr,#__divulong_PARM_2
      0033BC 74 10            [12] 1626 	mov	a,#0x10
      0033BE F0               [24] 1627 	movx	@dptr,a
      0033BF 74 0E            [12] 1628 	mov	a,#0x0E
      0033C1 A3               [24] 1629 	inc	dptr
      0033C2 F0               [24] 1630 	movx	@dptr,a
      0033C3 74 00            [12] 1631 	mov	a,#0x00
      0033C5 A3               [24] 1632 	inc	dptr
      0033C6 F0               [24] 1633 	movx	@dptr,a
      0033C7 A3               [24] 1634 	inc	dptr
      0033C8 F0               [24] 1635 	movx	@dptr,a
      0033C9 85 2A 82         [24] 1636 	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
      0033CC 85 2B 83         [24] 1637 	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
      0033CF 85 2C F0         [24] 1638 	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
      0033D2 E5 2D            [12] 1639 	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
      0033D4 C0 07            [24] 1640 	push	ar7
      0033D6 C0 06            [24] 1641 	push	ar6
      0033D8 C0 05            [24] 1642 	push	ar5
      0033DA 12 58 82         [24] 1643 	lcall	__divulong
      0033DD A8 82            [24] 1644 	mov	r0,dpl
      0033DF A9 83            [24] 1645 	mov	r1,dph
      0033E1 AB F0            [24] 1646 	mov	r3,b
      0033E3 FC               [12] 1647 	mov	r4,a
      0033E4 D0 05            [24] 1648 	pop	ar5
      0033E6 D0 06            [24] 1649 	pop	ar6
      0033E8 D0 07            [24] 1650 	pop	ar7
      0033EA 85 2E 82         [24] 1651 	mov	dpl,_osal_ConvertUTCTime_sloc2_1_0
      0033ED 85 2F 83         [24] 1652 	mov	dph,(_osal_ConvertUTCTime_sloc2_1_0 + 1)
      0033F0 85 30 F0         [24] 1653 	mov	b,(_osal_ConvertUTCTime_sloc2_1_0 + 2)
      0033F3 E8               [12] 1654 	mov	a,r0
      0033F4 12 5B F4         [24] 1655 	lcall	__gptrput
                                   1656 ;	../osal/common/OSAL_ClockBLE.c:261: uint16 numDays = secTime / DAY;
      0033F7 90 12 3B         [24] 1657 	mov	dptr,#__divulong_PARM_2
      0033FA 74 80            [12] 1658 	mov	a,#0x80
      0033FC F0               [24] 1659 	movx	@dptr,a
      0033FD 74 51            [12] 1660 	mov	a,#0x51
      0033FF A3               [24] 1661 	inc	dptr
      003400 F0               [24] 1662 	movx	@dptr,a
      003401 74 01            [12] 1663 	mov	a,#0x01
      003403 A3               [24] 1664 	inc	dptr
      003404 F0               [24] 1665 	movx	@dptr,a
      003405 74 00            [12] 1666 	mov	a,#0x00
      003407 A3               [24] 1667 	inc	dptr
      003408 F0               [24] 1668 	movx	@dptr,a
      003409 85 26 82         [24] 1669 	mov	dpl,_osal_ConvertUTCTime_sloc0_1_0
      00340C 85 27 83         [24] 1670 	mov	dph,(_osal_ConvertUTCTime_sloc0_1_0 + 1)
      00340F 85 28 F0         [24] 1671 	mov	b,(_osal_ConvertUTCTime_sloc0_1_0 + 2)
      003412 E5 29            [12] 1672 	mov	a,(_osal_ConvertUTCTime_sloc0_1_0 + 3)
      003414 C0 07            [24] 1673 	push	ar7
      003416 C0 06            [24] 1674 	push	ar6
      003418 C0 05            [24] 1675 	push	ar5
      00341A 12 58 82         [24] 1676 	lcall	__divulong
      00341D A9 82            [24] 1677 	mov	r1,dpl
      00341F AA 83            [24] 1678 	mov	r2,dph
      003421 AB F0            [24] 1679 	mov	r3,b
      003423 FC               [12] 1680 	mov	r4,a
      003424 D0 05            [24] 1681 	pop	ar5
      003426 D0 06            [24] 1682 	pop	ar6
      003428 D0 07            [24] 1683 	pop	ar7
      00342A 90 10 92         [24] 1684 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      00342D E9               [12] 1685 	mov	a,r1
      00342E F0               [24] 1686 	movx	@dptr,a
      00342F EA               [12] 1687 	mov	a,r2
      003430 A3               [24] 1688 	inc	dptr
      003431 F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	../osal/common/OSAL_ClockBLE.c:262: tm->year = BEGYEAR;
      003432 74 05            [12] 1691 	mov	a,#0x05
      003434 2D               [12] 1692 	add	a,r5
      003435 FD               [12] 1693 	mov	r5,a
      003436 74 00            [12] 1694 	mov	a,#0x00
      003438 3E               [12] 1695 	addc	a,r6
      003439 FE               [12] 1696 	mov	r6,a
      00343A 8D 82            [24] 1697 	mov	dpl,r5
      00343C 8E 83            [24] 1698 	mov	dph,r6
      00343E 8F F0            [24] 1699 	mov	b,r7
      003440 74 D0            [12] 1700 	mov	a,#0xD0
      003442 12 5B F4         [24] 1701 	lcall	__gptrput
      003445 A3               [24] 1702 	inc	dptr
      003446 74 07            [12] 1703 	mov	a,#0x07
      003448 12 5B F4         [24] 1704 	lcall	__gptrput
                                   1705 ;	../osal/common/OSAL_ClockBLE.c:263: while ( numDays >= YearLength( tm->year ) )
      00344B 90 10 8F         [24] 1706 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      00344E E0               [24] 1707 	movx	a,@dptr
      00344F FD               [12] 1708 	mov	r5,a
      003450 A3               [24] 1709 	inc	dptr
      003451 E0               [24] 1710 	movx	a,@dptr
      003452 FE               [12] 1711 	mov	r6,a
      003453 A3               [24] 1712 	inc	dptr
      003454 E0               [24] 1713 	movx	a,@dptr
      003455 FF               [12] 1714 	mov	r7,a
      003456 74 05            [12] 1715 	mov	a,#0x05
      003458 2D               [12] 1716 	add	a,r5
      003459 FD               [12] 1717 	mov	r5,a
      00345A 74 00            [12] 1718 	mov	a,#0x00
      00345C 3E               [12] 1719 	addc	a,r6
      00345D FE               [12] 1720 	mov	r6,a
      00345E                       1721 00101$:
      00345E 8D 82            [24] 1722 	mov	dpl,r5
      003460 8E 83            [24] 1723 	mov	dph,r6
      003462 8F F0            [24] 1724 	mov	b,r7
      003464 12 5D 60         [24] 1725 	lcall	__gptrget
      003467 FB               [12] 1726 	mov	r3,a
      003468 A3               [24] 1727 	inc	dptr
      003469 12 5D 60         [24] 1728 	lcall	__gptrget
      00346C FC               [12] 1729 	mov	r4,a
      00346D 90 12 64         [24] 1730 	mov	dptr,#__moduint_PARM_2
      003470 74 90            [12] 1731 	mov	a,#0x90
      003472 F0               [24] 1732 	movx	@dptr,a
      003473 74 01            [12] 1733 	mov	a,#0x01
      003475 A3               [24] 1734 	inc	dptr
      003476 F0               [24] 1735 	movx	@dptr,a
      003477 8B 82            [24] 1736 	mov	dpl,r3
      003479 8C 83            [24] 1737 	mov	dph,r4
      00347B C0 07            [24] 1738 	push	ar7
      00347D C0 06            [24] 1739 	push	ar6
      00347F C0 05            [24] 1740 	push	ar5
      003481 12 5C 9B         [24] 1741 	lcall	__moduint
      003484 AB 82            [24] 1742 	mov	r3,dpl
      003486 AC 83            [24] 1743 	mov	r4,dph
      003488 D0 05            [24] 1744 	pop	ar5
      00348A D0 06            [24] 1745 	pop	ar6
      00348C D0 07            [24] 1746 	pop	ar7
      00348E EB               [12] 1747 	mov	a,r3
      00348F 4C               [12] 1748 	orl	a,r4
      003490 B4 01 00         [24] 1749 	cjne	a,#0x01,00173$
      003493                       1750 00173$:
      003493 E4               [12] 1751 	clr	a
      003494 33               [12] 1752 	rlc	a
      003495 FB               [12] 1753 	mov	r3,a
      003496 EB               [12] 1754 	mov	a,r3
      003497 60 03            [24] 1755 	jz	00174$
      003499 02 34 F6         [24] 1756 	ljmp	00112$
      00349C                       1757 00174$:
      00349C 8D 82            [24] 1758 	mov	dpl,r5
      00349E 8E 83            [24] 1759 	mov	dph,r6
      0034A0 8F F0            [24] 1760 	mov	b,r7
      0034A2 12 5D 60         [24] 1761 	lcall	__gptrget
      0034A5 FB               [12] 1762 	mov	r3,a
      0034A6 A3               [24] 1763 	inc	dptr
      0034A7 12 5D 60         [24] 1764 	lcall	__gptrget
      0034AA FC               [12] 1765 	mov	r4,a
      0034AB 90 12 64         [24] 1766 	mov	dptr,#__moduint_PARM_2
      0034AE 74 64            [12] 1767 	mov	a,#0x64
      0034B0 F0               [24] 1768 	movx	@dptr,a
      0034B1 74 00            [12] 1769 	mov	a,#0x00
      0034B3 A3               [24] 1770 	inc	dptr
      0034B4 F0               [24] 1771 	movx	@dptr,a
      0034B5 8B 82            [24] 1772 	mov	dpl,r3
      0034B7 8C 83            [24] 1773 	mov	dph,r4
      0034B9 C0 07            [24] 1774 	push	ar7
      0034BB C0 06            [24] 1775 	push	ar6
      0034BD C0 05            [24] 1776 	push	ar5
      0034BF 12 5C 9B         [24] 1777 	lcall	__moduint
      0034C2 E5 82            [12] 1778 	mov	a,dpl
      0034C4 85 83 F0         [24] 1779 	mov	b,dph
      0034C7 D0 05            [24] 1780 	pop	ar5
      0034C9 D0 06            [24] 1781 	pop	ar6
      0034CB D0 07            [24] 1782 	pop	ar7
      0034CD 45 F0            [12] 1783 	orl	a,b
      0034CF 70 03            [24] 1784 	jnz	00175$
      0034D1 02 34 FD         [24] 1785 	ljmp	00109$
      0034D4                       1786 00175$:
      0034D4 8D 82            [24] 1787 	mov	dpl,r5
      0034D6 8E 83            [24] 1788 	mov	dph,r6
      0034D8 8F F0            [24] 1789 	mov	b,r7
      0034DA 12 5D 60         [24] 1790 	lcall	__gptrget
      0034DD FB               [12] 1791 	mov	r3,a
      0034DE A3               [24] 1792 	inc	dptr
      0034DF 12 5D 60         [24] 1793 	lcall	__gptrget
      0034E2 FC               [12] 1794 	mov	r4,a
      0034E3 53 03 03         [24] 1795 	anl	ar3,#0x03
      0034E6 7C 00            [12] 1796 	mov	r4,#0x00
      0034E8 EB               [12] 1797 	mov	a,r3
      0034E9 4C               [12] 1798 	orl	a,r4
      0034EA B4 01 00         [24] 1799 	cjne	a,#0x01,00176$
      0034ED                       1800 00176$:
      0034ED E4               [12] 1801 	clr	a
      0034EE 33               [12] 1802 	rlc	a
      0034EF FB               [12] 1803 	mov	r3,a
      0034F0 EB               [12] 1804 	mov	a,r3
      0034F1 70 03            [24] 1805 	jnz	00177$
      0034F3 02 34 FD         [24] 1806 	ljmp	00109$
      0034F6                       1807 00177$:
      0034F6                       1808 00112$:
      0034F6 7B 6E            [12] 1809 	mov	r3,#0x6E
      0034F8 7C 01            [12] 1810 	mov	r4,#0x01
      0034FA 02 35 01         [24] 1811 	ljmp	00110$
      0034FD                       1812 00109$:
      0034FD 7B 6D            [12] 1813 	mov	r3,#0x6D
      0034FF 7C 01            [12] 1814 	mov	r4,#0x01
      003501                       1815 00110$:
      003501 90 10 92         [24] 1816 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003504 E0               [24] 1817 	movx	a,@dptr
      003505 F9               [12] 1818 	mov	r1,a
      003506 A3               [24] 1819 	inc	dptr
      003507 E0               [24] 1820 	movx	a,@dptr
      003508 FA               [12] 1821 	mov	r2,a
      003509 C3               [12] 1822 	clr	c
      00350A E9               [12] 1823 	mov	a,r1
      00350B 9B               [12] 1824 	subb	a,r3
      00350C EA               [12] 1825 	mov	a,r2
      00350D 9C               [12] 1826 	subb	a,r4
      00350E 50 03            [24] 1827 	jnc	00178$
      003510 02 35 EF         [24] 1828 	ljmp	00103$
      003513                       1829 00178$:
                                   1830 ;	../osal/common/OSAL_ClockBLE.c:265: numDays -= YearLength( tm->year );
      003513 8D 82            [24] 1831 	mov	dpl,r5
      003515 8E 83            [24] 1832 	mov	dph,r6
      003517 8F F0            [24] 1833 	mov	b,r7
      003519 12 5D 60         [24] 1834 	lcall	__gptrget
      00351C FB               [12] 1835 	mov	r3,a
      00351D A3               [24] 1836 	inc	dptr
      00351E 12 5D 60         [24] 1837 	lcall	__gptrget
      003521 FC               [12] 1838 	mov	r4,a
      003522 90 12 64         [24] 1839 	mov	dptr,#__moduint_PARM_2
      003525 74 90            [12] 1840 	mov	a,#0x90
      003527 F0               [24] 1841 	movx	@dptr,a
      003528 74 01            [12] 1842 	mov	a,#0x01
      00352A A3               [24] 1843 	inc	dptr
      00352B F0               [24] 1844 	movx	@dptr,a
      00352C 8B 82            [24] 1845 	mov	dpl,r3
      00352E 8C 83            [24] 1846 	mov	dph,r4
      003530 C0 07            [24] 1847 	push	ar7
      003532 C0 06            [24] 1848 	push	ar6
      003534 C0 05            [24] 1849 	push	ar5
      003536 12 5C 9B         [24] 1850 	lcall	__moduint
      003539 AB 82            [24] 1851 	mov	r3,dpl
      00353B AC 83            [24] 1852 	mov	r4,dph
      00353D D0 05            [24] 1853 	pop	ar5
      00353F D0 06            [24] 1854 	pop	ar6
      003541 D0 07            [24] 1855 	pop	ar7
      003543 EB               [12] 1856 	mov	a,r3
      003544 4C               [12] 1857 	orl	a,r4
      003545 B4 01 00         [24] 1858 	cjne	a,#0x01,00179$
      003548                       1859 00179$:
      003548 E4               [12] 1860 	clr	a
      003549 33               [12] 1861 	rlc	a
      00354A FB               [12] 1862 	mov	r3,a
      00354B EB               [12] 1863 	mov	a,r3
      00354C 60 03            [24] 1864 	jz	00180$
      00354E 02 35 AB         [24] 1865 	ljmp	00120$
      003551                       1866 00180$:
      003551 8D 82            [24] 1867 	mov	dpl,r5
      003553 8E 83            [24] 1868 	mov	dph,r6
      003555 8F F0            [24] 1869 	mov	b,r7
      003557 12 5D 60         [24] 1870 	lcall	__gptrget
      00355A FB               [12] 1871 	mov	r3,a
      00355B A3               [24] 1872 	inc	dptr
      00355C 12 5D 60         [24] 1873 	lcall	__gptrget
      00355F FC               [12] 1874 	mov	r4,a
      003560 90 12 64         [24] 1875 	mov	dptr,#__moduint_PARM_2
      003563 74 64            [12] 1876 	mov	a,#0x64
      003565 F0               [24] 1877 	movx	@dptr,a
      003566 74 00            [12] 1878 	mov	a,#0x00
      003568 A3               [24] 1879 	inc	dptr
      003569 F0               [24] 1880 	movx	@dptr,a
      00356A 8B 82            [24] 1881 	mov	dpl,r3
      00356C 8C 83            [24] 1882 	mov	dph,r4
      00356E C0 07            [24] 1883 	push	ar7
      003570 C0 06            [24] 1884 	push	ar6
      003572 C0 05            [24] 1885 	push	ar5
      003574 12 5C 9B         [24] 1886 	lcall	__moduint
      003577 E5 82            [12] 1887 	mov	a,dpl
      003579 85 83 F0         [24] 1888 	mov	b,dph
      00357C D0 05            [24] 1889 	pop	ar5
      00357E D0 06            [24] 1890 	pop	ar6
      003580 D0 07            [24] 1891 	pop	ar7
      003582 45 F0            [12] 1892 	orl	a,b
      003584 70 03            [24] 1893 	jnz	00181$
      003586 02 35 B2         [24] 1894 	ljmp	00117$
      003589                       1895 00181$:
      003589 8D 82            [24] 1896 	mov	dpl,r5
      00358B 8E 83            [24] 1897 	mov	dph,r6
      00358D 8F F0            [24] 1898 	mov	b,r7
      00358F 12 5D 60         [24] 1899 	lcall	__gptrget
      003592 FB               [12] 1900 	mov	r3,a
      003593 A3               [24] 1901 	inc	dptr
      003594 12 5D 60         [24] 1902 	lcall	__gptrget
      003597 FC               [12] 1903 	mov	r4,a
      003598 53 03 03         [24] 1904 	anl	ar3,#0x03
      00359B 7C 00            [12] 1905 	mov	r4,#0x00
      00359D EB               [12] 1906 	mov	a,r3
      00359E 4C               [12] 1907 	orl	a,r4
      00359F B4 01 00         [24] 1908 	cjne	a,#0x01,00182$
      0035A2                       1909 00182$:
      0035A2 E4               [12] 1910 	clr	a
      0035A3 33               [12] 1911 	rlc	a
      0035A4 FB               [12] 1912 	mov	r3,a
      0035A5 EB               [12] 1913 	mov	a,r3
      0035A6 70 03            [24] 1914 	jnz	00183$
      0035A8 02 35 B2         [24] 1915 	ljmp	00117$
      0035AB                       1916 00183$:
      0035AB                       1917 00120$:
      0035AB 7B 6E            [12] 1918 	mov	r3,#0x6E
      0035AD 7C 01            [12] 1919 	mov	r4,#0x01
      0035AF 02 35 B6         [24] 1920 	ljmp	00118$
      0035B2                       1921 00117$:
      0035B2 7B 6D            [12] 1922 	mov	r3,#0x6D
      0035B4 7C 01            [12] 1923 	mov	r4,#0x01
      0035B6                       1924 00118$:
      0035B6 90 10 92         [24] 1925 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      0035B9 E0               [24] 1926 	movx	a,@dptr
      0035BA F9               [12] 1927 	mov	r1,a
      0035BB A3               [24] 1928 	inc	dptr
      0035BC E0               [24] 1929 	movx	a,@dptr
      0035BD FA               [12] 1930 	mov	r2,a
      0035BE 90 10 92         [24] 1931 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      0035C1 E9               [12] 1932 	mov	a,r1
      0035C2 C3               [12] 1933 	clr	c
      0035C3 9B               [12] 1934 	subb	a,r3
      0035C4 F0               [24] 1935 	movx	@dptr,a
      0035C5 EA               [12] 1936 	mov	a,r2
      0035C6 9C               [12] 1937 	subb	a,r4
      0035C7 A3               [24] 1938 	inc	dptr
      0035C8 F0               [24] 1939 	movx	@dptr,a
                                   1940 ;	../osal/common/OSAL_ClockBLE.c:266: tm->year++;
      0035C9 8D 82            [24] 1941 	mov	dpl,r5
      0035CB 8E 83            [24] 1942 	mov	dph,r6
      0035CD 8F F0            [24] 1943 	mov	b,r7
      0035CF 12 5D 60         [24] 1944 	lcall	__gptrget
      0035D2 FB               [12] 1945 	mov	r3,a
      0035D3 A3               [24] 1946 	inc	dptr
      0035D4 12 5D 60         [24] 1947 	lcall	__gptrget
      0035D7 FC               [12] 1948 	mov	r4,a
      0035D8 0B               [12] 1949 	inc	r3
      0035D9 BB 00 01         [24] 1950 	cjne	r3,#0x00,00184$
      0035DC 0C               [12] 1951 	inc	r4
      0035DD                       1952 00184$:
      0035DD 8D 82            [24] 1953 	mov	dpl,r5
      0035DF 8E 83            [24] 1954 	mov	dph,r6
      0035E1 8F F0            [24] 1955 	mov	b,r7
      0035E3 EB               [12] 1956 	mov	a,r3
      0035E4 12 5B F4         [24] 1957 	lcall	__gptrput
      0035E7 A3               [24] 1958 	inc	dptr
      0035E8 EC               [12] 1959 	mov	a,r4
      0035E9 12 5B F4         [24] 1960 	lcall	__gptrput
      0035EC 02 34 5E         [24] 1961 	ljmp	00101$
      0035EF                       1962 00103$:
                                   1963 ;	../osal/common/OSAL_ClockBLE.c:269: tm->month = 0;
      0035EF 90 10 8F         [24] 1964 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      0035F2 E0               [24] 1965 	movx	a,@dptr
      0035F3 FD               [12] 1966 	mov	r5,a
      0035F4 A3               [24] 1967 	inc	dptr
      0035F5 E0               [24] 1968 	movx	a,@dptr
      0035F6 FE               [12] 1969 	mov	r6,a
      0035F7 A3               [24] 1970 	inc	dptr
      0035F8 E0               [24] 1971 	movx	a,@dptr
      0035F9 FF               [12] 1972 	mov	r7,a
      0035FA 74 04            [12] 1973 	mov	a,#0x04
      0035FC 2D               [12] 1974 	add	a,r5
      0035FD FD               [12] 1975 	mov	r5,a
      0035FE 74 00            [12] 1976 	mov	a,#0x00
      003600 3E               [12] 1977 	addc	a,r6
      003601 FE               [12] 1978 	mov	r6,a
      003602 8D 82            [24] 1979 	mov	dpl,r5
      003604 8E 83            [24] 1980 	mov	dph,r6
      003606 8F F0            [24] 1981 	mov	b,r7
      003608 74 00            [12] 1982 	mov	a,#0x00
      00360A 12 5B F4         [24] 1983 	lcall	__gptrput
                                   1984 ;	../osal/common/OSAL_ClockBLE.c:270: while ( numDays >= monthLength( IsLeapYear( tm->year ), tm->month ) )
      00360D 90 10 8F         [24] 1985 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      003610 E0               [24] 1986 	movx	a,@dptr
      003611 FD               [12] 1987 	mov	r5,a
      003612 A3               [24] 1988 	inc	dptr
      003613 E0               [24] 1989 	movx	a,@dptr
      003614 FE               [12] 1990 	mov	r6,a
      003615 A3               [24] 1991 	inc	dptr
      003616 E0               [24] 1992 	movx	a,@dptr
      003617 FF               [12] 1993 	mov	r7,a
      003618 74 05            [12] 1994 	mov	a,#0x05
      00361A 2D               [12] 1995 	add	a,r5
      00361B FA               [12] 1996 	mov	r2,a
      00361C 74 00            [12] 1997 	mov	a,#0x00
      00361E 3E               [12] 1998 	addc	a,r6
      00361F FB               [12] 1999 	mov	r3,a
      003620 8F 04            [24] 2000 	mov	ar4,r7
      003622 74 04            [12] 2001 	mov	a,#0x04
      003624 2D               [12] 2002 	add	a,r5
      003625 FD               [12] 2003 	mov	r5,a
      003626 74 00            [12] 2004 	mov	a,#0x00
      003628 3E               [12] 2005 	addc	a,r6
      003629 FE               [12] 2006 	mov	r6,a
      00362A                       2007 00104$:
      00362A 8A 82            [24] 2008 	mov	dpl,r2
      00362C 8B 83            [24] 2009 	mov	dph,r3
      00362E 8C F0            [24] 2010 	mov	b,r4
      003630 12 5D 60         [24] 2011 	lcall	__gptrget
      003633 F8               [12] 2012 	mov	r0,a
      003634 A3               [24] 2013 	inc	dptr
      003635 12 5D 60         [24] 2014 	lcall	__gptrget
      003638 F9               [12] 2015 	mov	r1,a
      003639 90 12 64         [24] 2016 	mov	dptr,#__moduint_PARM_2
      00363C 74 90            [12] 2017 	mov	a,#0x90
      00363E F0               [24] 2018 	movx	@dptr,a
      00363F 74 01            [12] 2019 	mov	a,#0x01
      003641 A3               [24] 2020 	inc	dptr
      003642 F0               [24] 2021 	movx	@dptr,a
      003643 88 82            [24] 2022 	mov	dpl,r0
      003645 89 83            [24] 2023 	mov	dph,r1
      003647 C0 07            [24] 2024 	push	ar7
      003649 C0 06            [24] 2025 	push	ar6
      00364B C0 05            [24] 2026 	push	ar5
      00364D C0 04            [24] 2027 	push	ar4
      00364F C0 03            [24] 2028 	push	ar3
      003651 C0 02            [24] 2029 	push	ar2
      003653 12 5C 9B         [24] 2030 	lcall	__moduint
      003656 A8 82            [24] 2031 	mov	r0,dpl
      003658 A9 83            [24] 2032 	mov	r1,dph
      00365A D0 02            [24] 2033 	pop	ar2
      00365C D0 03            [24] 2034 	pop	ar3
      00365E D0 04            [24] 2035 	pop	ar4
      003660 D0 05            [24] 2036 	pop	ar5
      003662 D0 06            [24] 2037 	pop	ar6
      003664 D0 07            [24] 2038 	pop	ar7
      003666 E8               [12] 2039 	mov	a,r0
      003667 49               [12] 2040 	orl	a,r1
      003668 B4 01 00         [24] 2041 	cjne	a,#0x01,00185$
      00366B                       2042 00185$:
      00366B E4               [12] 2043 	clr	a
      00366C 33               [12] 2044 	rlc	a
      00366D F8               [12] 2045 	mov	r0,a
      00366E E8               [12] 2046 	mov	a,r0
      00366F 60 03            [24] 2047 	jz	00186$
      003671 02 36 DF         [24] 2048 	ljmp	00126$
      003674                       2049 00186$:
      003674 8A 82            [24] 2050 	mov	dpl,r2
      003676 8B 83            [24] 2051 	mov	dph,r3
      003678 8C F0            [24] 2052 	mov	b,r4
      00367A 12 5D 60         [24] 2053 	lcall	__gptrget
      00367D F8               [12] 2054 	mov	r0,a
      00367E A3               [24] 2055 	inc	dptr
      00367F 12 5D 60         [24] 2056 	lcall	__gptrget
      003682 F9               [12] 2057 	mov	r1,a
      003683 90 12 64         [24] 2058 	mov	dptr,#__moduint_PARM_2
      003686 74 64            [12] 2059 	mov	a,#0x64
      003688 F0               [24] 2060 	movx	@dptr,a
      003689 74 00            [12] 2061 	mov	a,#0x00
      00368B A3               [24] 2062 	inc	dptr
      00368C F0               [24] 2063 	movx	@dptr,a
      00368D 88 82            [24] 2064 	mov	dpl,r0
      00368F 89 83            [24] 2065 	mov	dph,r1
      003691 C0 07            [24] 2066 	push	ar7
      003693 C0 06            [24] 2067 	push	ar6
      003695 C0 05            [24] 2068 	push	ar5
      003697 C0 04            [24] 2069 	push	ar4
      003699 C0 03            [24] 2070 	push	ar3
      00369B C0 02            [24] 2071 	push	ar2
      00369D 12 5C 9B         [24] 2072 	lcall	__moduint
      0036A0 E5 82            [12] 2073 	mov	a,dpl
      0036A2 85 83 F0         [24] 2074 	mov	b,dph
      0036A5 D0 02            [24] 2075 	pop	ar2
      0036A7 D0 03            [24] 2076 	pop	ar3
      0036A9 D0 04            [24] 2077 	pop	ar4
      0036AB D0 05            [24] 2078 	pop	ar5
      0036AD D0 06            [24] 2079 	pop	ar6
      0036AF D0 07            [24] 2080 	pop	ar7
      0036B1 45 F0            [12] 2081 	orl	a,b
      0036B3 70 03            [24] 2082 	jnz	00187$
      0036B5 02 36 DA         [24] 2083 	ljmp	00125$
      0036B8                       2084 00187$:
      0036B8 8A 82            [24] 2085 	mov	dpl,r2
      0036BA 8B 83            [24] 2086 	mov	dph,r3
      0036BC 8C F0            [24] 2087 	mov	b,r4
      0036BE 12 5D 60         [24] 2088 	lcall	__gptrget
      0036C1 F8               [12] 2089 	mov	r0,a
      0036C2 A3               [24] 2090 	inc	dptr
      0036C3 12 5D 60         [24] 2091 	lcall	__gptrget
      0036C6 F9               [12] 2092 	mov	r1,a
      0036C7 53 00 03         [24] 2093 	anl	ar0,#0x03
      0036CA 79 00            [12] 2094 	mov	r1,#0x00
      0036CC E8               [12] 2095 	mov	a,r0
      0036CD 49               [12] 2096 	orl	a,r1
      0036CE B4 01 00         [24] 2097 	cjne	a,#0x01,00188$
      0036D1                       2098 00188$:
      0036D1 E4               [12] 2099 	clr	a
      0036D2 33               [12] 2100 	rlc	a
      0036D3 F8               [12] 2101 	mov	r0,a
      0036D4 E8               [12] 2102 	mov	a,r0
      0036D5 60 03            [24] 2103 	jz	00189$
      0036D7 02 36 DF         [24] 2104 	ljmp	00126$
      0036DA                       2105 00189$:
      0036DA                       2106 00125$:
      0036DA 79 00            [12] 2107 	mov	r1,#0x00
      0036DC 02 36 E1         [24] 2108 	ljmp	00127$
      0036DF                       2109 00126$:
      0036DF 79 01            [12] 2110 	mov	r1,#0x01
      0036E1                       2111 00127$:
      0036E1 C0 02            [24] 2112 	push	ar2
      0036E3 C0 03            [24] 2113 	push	ar3
      0036E5 C0 04            [24] 2114 	push	ar4
      0036E7 8D 82            [24] 2115 	mov	dpl,r5
      0036E9 8E 83            [24] 2116 	mov	dph,r6
      0036EB 8F F0            [24] 2117 	mov	b,r7
      0036ED 12 5D 60         [24] 2118 	lcall	__gptrget
      0036F0 F8               [12] 2119 	mov	r0,a
      0036F1 90 10 94         [24] 2120 	mov	dptr,#_monthLength_PARM_2
      0036F4 E8               [12] 2121 	mov	a,r0
      0036F5 F0               [24] 2122 	movx	@dptr,a
      0036F6 89 82            [24] 2123 	mov	dpl,r1
      0036F8 C0 07            [24] 2124 	push	ar7
      0036FA C0 06            [24] 2125 	push	ar6
      0036FC C0 05            [24] 2126 	push	ar5
      0036FE C0 04            [24] 2127 	push	ar4
      003700 C0 03            [24] 2128 	push	ar3
      003702 C0 02            [24] 2129 	push	ar2
      003704 12 38 75         [24] 2130 	lcall	_monthLength
      003707 A9 82            [24] 2131 	mov	r1,dpl
      003709 D0 02            [24] 2132 	pop	ar2
      00370B D0 03            [24] 2133 	pop	ar3
      00370D D0 04            [24] 2134 	pop	ar4
      00370F D0 05            [24] 2135 	pop	ar5
      003711 D0 06            [24] 2136 	pop	ar6
      003713 D0 07            [24] 2137 	pop	ar7
      003715 90 10 92         [24] 2138 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003718 E0               [24] 2139 	movx	a,@dptr
      003719 F8               [12] 2140 	mov	r0,a
      00371A A3               [24] 2141 	inc	dptr
      00371B E0               [24] 2142 	movx	a,@dptr
      00371C FC               [12] 2143 	mov	r4,a
      00371D 7B 00            [12] 2144 	mov	r3,#0x00
      00371F C3               [12] 2145 	clr	c
      003720 E8               [12] 2146 	mov	a,r0
      003721 99               [12] 2147 	subb	a,r1
      003722 EC               [12] 2148 	mov	a,r4
      003723 9B               [12] 2149 	subb	a,r3
      003724 D0 04            [24] 2150 	pop	ar4
      003726 D0 03            [24] 2151 	pop	ar3
      003728 D0 02            [24] 2152 	pop	ar2
      00372A 50 03            [24] 2153 	jnc	00190$
      00372C 02 38 4F         [24] 2154 	ljmp	00106$
      00372F                       2155 00190$:
                                   2156 ;	../osal/common/OSAL_ClockBLE.c:272: numDays -= monthLength( IsLeapYear( tm->year ), tm->month );
      00372F 8A 82            [24] 2157 	mov	dpl,r2
      003731 8B 83            [24] 2158 	mov	dph,r3
      003733 8C F0            [24] 2159 	mov	b,r4
      003735 12 5D 60         [24] 2160 	lcall	__gptrget
      003738 F8               [12] 2161 	mov	r0,a
      003739 A3               [24] 2162 	inc	dptr
      00373A 12 5D 60         [24] 2163 	lcall	__gptrget
      00373D F9               [12] 2164 	mov	r1,a
      00373E 90 12 64         [24] 2165 	mov	dptr,#__moduint_PARM_2
      003741 74 90            [12] 2166 	mov	a,#0x90
      003743 F0               [24] 2167 	movx	@dptr,a
      003744 74 01            [12] 2168 	mov	a,#0x01
      003746 A3               [24] 2169 	inc	dptr
      003747 F0               [24] 2170 	movx	@dptr,a
      003748 88 82            [24] 2171 	mov	dpl,r0
      00374A 89 83            [24] 2172 	mov	dph,r1
      00374C C0 07            [24] 2173 	push	ar7
      00374E C0 06            [24] 2174 	push	ar6
      003750 C0 05            [24] 2175 	push	ar5
      003752 C0 04            [24] 2176 	push	ar4
      003754 C0 03            [24] 2177 	push	ar3
      003756 C0 02            [24] 2178 	push	ar2
      003758 12 5C 9B         [24] 2179 	lcall	__moduint
      00375B A8 82            [24] 2180 	mov	r0,dpl
      00375D A9 83            [24] 2181 	mov	r1,dph
      00375F D0 02            [24] 2182 	pop	ar2
      003761 D0 03            [24] 2183 	pop	ar3
      003763 D0 04            [24] 2184 	pop	ar4
      003765 D0 05            [24] 2185 	pop	ar5
      003767 D0 06            [24] 2186 	pop	ar6
      003769 D0 07            [24] 2187 	pop	ar7
      00376B E8               [12] 2188 	mov	a,r0
      00376C 49               [12] 2189 	orl	a,r1
      00376D B4 01 00         [24] 2190 	cjne	a,#0x01,00191$
      003770                       2191 00191$:
      003770 E4               [12] 2192 	clr	a
      003771 33               [12] 2193 	rlc	a
      003772 F8               [12] 2194 	mov	r0,a
      003773 E8               [12] 2195 	mov	a,r0
      003774 60 03            [24] 2196 	jz	00192$
      003776 02 37 E4         [24] 2197 	ljmp	00132$
      003779                       2198 00192$:
      003779 8A 82            [24] 2199 	mov	dpl,r2
      00377B 8B 83            [24] 2200 	mov	dph,r3
      00377D 8C F0            [24] 2201 	mov	b,r4
      00377F 12 5D 60         [24] 2202 	lcall	__gptrget
      003782 F8               [12] 2203 	mov	r0,a
      003783 A3               [24] 2204 	inc	dptr
      003784 12 5D 60         [24] 2205 	lcall	__gptrget
      003787 F9               [12] 2206 	mov	r1,a
      003788 90 12 64         [24] 2207 	mov	dptr,#__moduint_PARM_2
      00378B 74 64            [12] 2208 	mov	a,#0x64
      00378D F0               [24] 2209 	movx	@dptr,a
      00378E 74 00            [12] 2210 	mov	a,#0x00
      003790 A3               [24] 2211 	inc	dptr
      003791 F0               [24] 2212 	movx	@dptr,a
      003792 88 82            [24] 2213 	mov	dpl,r0
      003794 89 83            [24] 2214 	mov	dph,r1
      003796 C0 07            [24] 2215 	push	ar7
      003798 C0 06            [24] 2216 	push	ar6
      00379A C0 05            [24] 2217 	push	ar5
      00379C C0 04            [24] 2218 	push	ar4
      00379E C0 03            [24] 2219 	push	ar3
      0037A0 C0 02            [24] 2220 	push	ar2
      0037A2 12 5C 9B         [24] 2221 	lcall	__moduint
      0037A5 E5 82            [12] 2222 	mov	a,dpl
      0037A7 85 83 F0         [24] 2223 	mov	b,dph
      0037AA D0 02            [24] 2224 	pop	ar2
      0037AC D0 03            [24] 2225 	pop	ar3
      0037AE D0 04            [24] 2226 	pop	ar4
      0037B0 D0 05            [24] 2227 	pop	ar5
      0037B2 D0 06            [24] 2228 	pop	ar6
      0037B4 D0 07            [24] 2229 	pop	ar7
      0037B6 45 F0            [12] 2230 	orl	a,b
      0037B8 70 03            [24] 2231 	jnz	00193$
      0037BA 02 37 DF         [24] 2232 	ljmp	00131$
      0037BD                       2233 00193$:
      0037BD 8A 82            [24] 2234 	mov	dpl,r2
      0037BF 8B 83            [24] 2235 	mov	dph,r3
      0037C1 8C F0            [24] 2236 	mov	b,r4
      0037C3 12 5D 60         [24] 2237 	lcall	__gptrget
      0037C6 F8               [12] 2238 	mov	r0,a
      0037C7 A3               [24] 2239 	inc	dptr
      0037C8 12 5D 60         [24] 2240 	lcall	__gptrget
      0037CB F9               [12] 2241 	mov	r1,a
      0037CC 53 00 03         [24] 2242 	anl	ar0,#0x03
      0037CF 79 00            [12] 2243 	mov	r1,#0x00
      0037D1 E8               [12] 2244 	mov	a,r0
      0037D2 49               [12] 2245 	orl	a,r1
      0037D3 B4 01 00         [24] 2246 	cjne	a,#0x01,00194$
      0037D6                       2247 00194$:
      0037D6 E4               [12] 2248 	clr	a
      0037D7 33               [12] 2249 	rlc	a
      0037D8 F8               [12] 2250 	mov	r0,a
      0037D9 E8               [12] 2251 	mov	a,r0
      0037DA 60 03            [24] 2252 	jz	00195$
      0037DC 02 37 E4         [24] 2253 	ljmp	00132$
      0037DF                       2254 00195$:
      0037DF                       2255 00131$:
      0037DF 79 00            [12] 2256 	mov	r1,#0x00
      0037E1 02 37 E6         [24] 2257 	ljmp	00133$
      0037E4                       2258 00132$:
      0037E4 79 01            [12] 2259 	mov	r1,#0x01
      0037E6                       2260 00133$:
      0037E6 C0 02            [24] 2261 	push	ar2
      0037E8 C0 03            [24] 2262 	push	ar3
      0037EA C0 04            [24] 2263 	push	ar4
      0037EC 8D 82            [24] 2264 	mov	dpl,r5
      0037EE 8E 83            [24] 2265 	mov	dph,r6
      0037F0 8F F0            [24] 2266 	mov	b,r7
      0037F2 12 5D 60         [24] 2267 	lcall	__gptrget
      0037F5 F8               [12] 2268 	mov	r0,a
      0037F6 90 10 94         [24] 2269 	mov	dptr,#_monthLength_PARM_2
      0037F9 E8               [12] 2270 	mov	a,r0
      0037FA F0               [24] 2271 	movx	@dptr,a
      0037FB 89 82            [24] 2272 	mov	dpl,r1
      0037FD C0 07            [24] 2273 	push	ar7
      0037FF C0 06            [24] 2274 	push	ar6
      003801 C0 05            [24] 2275 	push	ar5
      003803 C0 04            [24] 2276 	push	ar4
      003805 C0 03            [24] 2277 	push	ar3
      003807 C0 02            [24] 2278 	push	ar2
      003809 12 38 75         [24] 2279 	lcall	_monthLength
      00380C A9 82            [24] 2280 	mov	r1,dpl
      00380E D0 02            [24] 2281 	pop	ar2
      003810 D0 03            [24] 2282 	pop	ar3
      003812 D0 04            [24] 2283 	pop	ar4
      003814 D0 05            [24] 2284 	pop	ar5
      003816 D0 06            [24] 2285 	pop	ar6
      003818 D0 07            [24] 2286 	pop	ar7
      00381A 89 00            [24] 2287 	mov	ar0,r1
      00381C 79 00            [12] 2288 	mov	r1,#0x00
      00381E 90 10 92         [24] 2289 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003821 E0               [24] 2290 	movx	a,@dptr
      003822 FB               [12] 2291 	mov	r3,a
      003823 A3               [24] 2292 	inc	dptr
      003824 E0               [24] 2293 	movx	a,@dptr
      003825 FC               [12] 2294 	mov	r4,a
      003826 90 10 92         [24] 2295 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003829 EB               [12] 2296 	mov	a,r3
      00382A C3               [12] 2297 	clr	c
      00382B 98               [12] 2298 	subb	a,r0
      00382C F0               [24] 2299 	movx	@dptr,a
      00382D EC               [12] 2300 	mov	a,r4
      00382E 99               [12] 2301 	subb	a,r1
      00382F A3               [24] 2302 	inc	dptr
      003830 F0               [24] 2303 	movx	@dptr,a
                                   2304 ;	../osal/common/OSAL_ClockBLE.c:273: tm->month++;
      003831 8D 82            [24] 2305 	mov	dpl,r5
      003833 8E 83            [24] 2306 	mov	dph,r6
      003835 8F F0            [24] 2307 	mov	b,r7
      003837 12 5D 60         [24] 2308 	lcall	__gptrget
      00383A FC               [12] 2309 	mov	r4,a
      00383B 0C               [12] 2310 	inc	r4
      00383C 8D 82            [24] 2311 	mov	dpl,r5
      00383E 8E 83            [24] 2312 	mov	dph,r6
      003840 8F F0            [24] 2313 	mov	b,r7
      003842 EC               [12] 2314 	mov	a,r4
      003843 12 5B F4         [24] 2315 	lcall	__gptrput
      003846 D0 04            [24] 2316 	pop	ar4
      003848 D0 03            [24] 2317 	pop	ar3
      00384A D0 02            [24] 2318 	pop	ar2
      00384C 02 36 2A         [24] 2319 	ljmp	00104$
      00384F                       2320 00106$:
                                   2321 ;	../osal/common/OSAL_ClockBLE.c:276: tm->day = numDays;
      00384F 90 10 8F         [24] 2322 	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
      003852 E0               [24] 2323 	movx	a,@dptr
      003853 FD               [12] 2324 	mov	r5,a
      003854 A3               [24] 2325 	inc	dptr
      003855 E0               [24] 2326 	movx	a,@dptr
      003856 FE               [12] 2327 	mov	r6,a
      003857 A3               [24] 2328 	inc	dptr
      003858 E0               [24] 2329 	movx	a,@dptr
      003859 FF               [12] 2330 	mov	r7,a
      00385A 74 03            [12] 2331 	mov	a,#0x03
      00385C 2D               [12] 2332 	add	a,r5
      00385D FD               [12] 2333 	mov	r5,a
      00385E 74 00            [12] 2334 	mov	a,#0x00
      003860 3E               [12] 2335 	addc	a,r6
      003861 FE               [12] 2336 	mov	r6,a
      003862 90 10 92         [24] 2337 	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
      003865 E0               [24] 2338 	movx	a,@dptr
      003866 FB               [12] 2339 	mov	r3,a
      003867 A3               [24] 2340 	inc	dptr
      003868 E0               [24] 2341 	movx	a,@dptr
      003869 FC               [12] 2342 	mov	r4,a
      00386A 8D 82            [24] 2343 	mov	dpl,r5
      00386C 8E 83            [24] 2344 	mov	dph,r6
      00386E 8F F0            [24] 2345 	mov	b,r7
      003870 EB               [12] 2346 	mov	a,r3
      003871 12 5B F4         [24] 2347 	lcall	__gptrput
      003874                       2348 00107$:
      003874 22               [24] 2349 	ret
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
      003875                       2361 _monthLength:
      003875 E5 82            [12] 2362 	mov	a,dpl
      003877 90 10 95         [24] 2363 	mov	dptr,#_monthLength_lpyr_1_94
      00387A F0               [24] 2364 	movx	@dptr,a
                                   2365 ;	../osal/common/OSAL_ClockBLE.c:291: uint8 days = 31;
      00387B 90 10 96         [24] 2366 	mov	dptr,#_monthLength_days_1_95
      00387E 74 1F            [12] 2367 	mov	a,#0x1F
      003880 F0               [24] 2368 	movx	@dptr,a
                                   2369 ;	../osal/common/OSAL_ClockBLE.c:293: if ( mon == 1 ) // feb
      003881 90 10 94         [24] 2370 	mov	dptr,#_monthLength_PARM_2
      003884 E0               [24] 2371 	movx	a,@dptr
      003885 FF               [12] 2372 	mov	r7,a
      003886 BF 01 02         [24] 2373 	cjne	r7,#0x01,00119$
      003889 80 03            [24] 2374 	sjmp	00120$
      00388B                       2375 00119$:
      00388B 02 38 9D         [24] 2376 	ljmp	00106$
      00388E                       2377 00120$:
                                   2378 ;	../osal/common/OSAL_ClockBLE.c:295: days = ( 28 + lpyr );
      00388E 90 10 95         [24] 2379 	mov	dptr,#_monthLength_lpyr_1_94
      003891 E0               [24] 2380 	movx	a,@dptr
      003892 FF               [12] 2381 	mov	r7,a
      003893 90 10 96         [24] 2382 	mov	dptr,#_monthLength_days_1_95
      003896 74 1C            [12] 2383 	mov	a,#0x1C
      003898 2F               [12] 2384 	add	a,r7
      003899 F0               [24] 2385 	movx	@dptr,a
      00389A 02 38 C3         [24] 2386 	ljmp	00107$
      00389D                       2387 00106$:
                                   2388 ;	../osal/common/OSAL_ClockBLE.c:299: if ( mon > 6 ) // aug-dec
      00389D 90 10 94         [24] 2389 	mov	dptr,#_monthLength_PARM_2
      0038A0 E0               [24] 2390 	movx	a,@dptr
      0038A1 FF               [12] 2391 	mov	r7,a
      0038A2 C3               [12] 2392 	clr	c
      0038A3 74 06            [12] 2393 	mov	a,#0x06
      0038A5 9F               [12] 2394 	subb	a,r7
      0038A6 40 03            [24] 2395 	jc	00121$
      0038A8 02 38 B1         [24] 2396 	ljmp	00102$
      0038AB                       2397 00121$:
                                   2398 ;	../osal/common/OSAL_ClockBLE.c:301: mon--;
      0038AB 90 10 94         [24] 2399 	mov	dptr,#_monthLength_PARM_2
      0038AE E0               [24] 2400 	movx	a,@dptr
      0038AF 14               [12] 2401 	dec	a
      0038B0 F0               [24] 2402 	movx	@dptr,a
      0038B1                       2403 00102$:
                                   2404 ;	../osal/common/OSAL_ClockBLE.c:304: if ( mon & 1 )
      0038B1 90 10 94         [24] 2405 	mov	dptr,#_monthLength_PARM_2
      0038B4 E0               [24] 2406 	movx	a,@dptr
      0038B5 FF               [12] 2407 	mov	r7,a
      0038B6 EF               [12] 2408 	mov	a,r7
      0038B7 20 E0 03         [24] 2409 	jb	acc.0,00122$
      0038BA 02 38 C3         [24] 2410 	ljmp	00107$
      0038BD                       2411 00122$:
                                   2412 ;	../osal/common/OSAL_ClockBLE.c:306: days = 30;
      0038BD 90 10 96         [24] 2413 	mov	dptr,#_monthLength_days_1_95
      0038C0 74 1E            [12] 2414 	mov	a,#0x1E
      0038C2 F0               [24] 2415 	movx	@dptr,a
      0038C3                       2416 00107$:
                                   2417 ;	../osal/common/OSAL_ClockBLE.c:310: return ( days );
      0038C3 90 10 96         [24] 2418 	mov	dptr,#_monthLength_days_1_95
      0038C6 E0               [24] 2419 	movx	a,@dptr
      0038C7 FF               [12] 2420 	mov	r7,a
      0038C8 8F 82            [24] 2421 	mov	dpl,r7
      0038CA                       2422 00108$:
      0038CA 22               [24] 2423 	ret
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
      0038CB                       2438 _osal_ConvertUTCSecs:
      0038CB AF F0            [24] 2439 	mov	r7,b
      0038CD AE 83            [24] 2440 	mov	r6,dph
      0038CF E5 82            [12] 2441 	mov	a,dpl
      0038D1 90 10 97         [24] 2442 	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
      0038D4 F0               [24] 2443 	movx	@dptr,a
      0038D5 EE               [12] 2444 	mov	a,r6
      0038D6 A3               [24] 2445 	inc	dptr
      0038D7 F0               [24] 2446 	movx	@dptr,a
      0038D8 EF               [12] 2447 	mov	a,r7
      0038D9 A3               [24] 2448 	inc	dptr
      0038DA F0               [24] 2449 	movx	@dptr,a
                                   2450 ;	../osal/common/OSAL_ClockBLE.c:327: seconds = (((tm->hour * 60UL) + tm->minutes) * 60UL) + tm->seconds;
      0038DB 90 10 97         [24] 2451 	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
      0038DE E0               [24] 2452 	movx	a,@dptr
      0038DF FD               [12] 2453 	mov	r5,a
      0038E0 A3               [24] 2454 	inc	dptr
      0038E1 E0               [24] 2455 	movx	a,@dptr
      0038E2 FE               [12] 2456 	mov	r6,a
      0038E3 A3               [24] 2457 	inc	dptr
      0038E4 E0               [24] 2458 	movx	a,@dptr
      0038E5 FF               [12] 2459 	mov	r7,a
      0038E6 74 02            [12] 2460 	mov	a,#0x02
      0038E8 2D               [12] 2461 	add	a,r5
      0038E9 FA               [12] 2462 	mov	r2,a
      0038EA 74 00            [12] 2463 	mov	a,#0x00
      0038EC 3E               [12] 2464 	addc	a,r6
      0038ED FB               [12] 2465 	mov	r3,a
      0038EE 8F 04            [24] 2466 	mov	ar4,r7
      0038F0 8A 82            [24] 2467 	mov	dpl,r2
      0038F2 8B 83            [24] 2468 	mov	dph,r3
      0038F4 8C F0            [24] 2469 	mov	b,r4
      0038F6 12 5D 60         [24] 2470 	lcall	__gptrget
      0038F9 FA               [12] 2471 	mov	r2,a
      0038FA 90 12 60         [24] 2472 	mov	dptr,#__mullong_PARM_2
      0038FD EA               [12] 2473 	mov	a,r2
      0038FE F0               [24] 2474 	movx	@dptr,a
      0038FF 74 00            [12] 2475 	mov	a,#0x00
      003901 A3               [24] 2476 	inc	dptr
      003902 F0               [24] 2477 	movx	@dptr,a
      003903 A3               [24] 2478 	inc	dptr
      003904 F0               [24] 2479 	movx	@dptr,a
      003905 A3               [24] 2480 	inc	dptr
      003906 F0               [24] 2481 	movx	@dptr,a
      003907 75 82 3C         [24] 2482 	mov	dpl,#0x3C
      00390A 75 83 00         [24] 2483 	mov	dph,#0x00
      00390D 75 F0 00         [24] 2484 	mov	b,#0x00
      003910 74 00            [12] 2485 	mov	a,#0x00
      003912 C0 07            [24] 2486 	push	ar7
      003914 C0 06            [24] 2487 	push	ar6
      003916 C0 05            [24] 2488 	push	ar5
      003918 12 5C 2F         [24] 2489 	lcall	__mullong
      00391B 85 82 31         [24] 2490 	mov	_osal_ConvertUTCSecs_sloc0_1_0,dpl
      00391E 85 83 32         [24] 2491 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 1),dph
      003921 85 F0 33         [24] 2492 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 2),b
      003924 F5 34            [12] 2493 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 3),a
      003926 D0 05            [24] 2494 	pop	ar5
      003928 D0 06            [24] 2495 	pop	ar6
      00392A D0 07            [24] 2496 	pop	ar7
      00392C 74 01            [12] 2497 	mov	a,#0x01
      00392E 2D               [12] 2498 	add	a,r5
      00392F F8               [12] 2499 	mov	r0,a
      003930 74 00            [12] 2500 	mov	a,#0x00
      003932 3E               [12] 2501 	addc	a,r6
      003933 FB               [12] 2502 	mov	r3,a
      003934 8F 04            [24] 2503 	mov	ar4,r7
      003936 88 82            [24] 2504 	mov	dpl,r0
      003938 8B 83            [24] 2505 	mov	dph,r3
      00393A 8C F0            [24] 2506 	mov	b,r4
      00393C 12 5D 60         [24] 2507 	lcall	__gptrget
      00393F F8               [12] 2508 	mov	r0,a
      003940 7C 00            [12] 2509 	mov	r4,#0x00
      003942 7B 00            [12] 2510 	mov	r3,#0x00
      003944 7A 00            [12] 2511 	mov	r2,#0x00
      003946 90 12 60         [24] 2512 	mov	dptr,#__mullong_PARM_2
      003949 E8               [12] 2513 	mov	a,r0
      00394A 25 31            [12] 2514 	add	a,_osal_ConvertUTCSecs_sloc0_1_0
      00394C F0               [24] 2515 	movx	@dptr,a
      00394D EC               [12] 2516 	mov	a,r4
      00394E 35 32            [12] 2517 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 1)
      003950 A3               [24] 2518 	inc	dptr
      003951 F0               [24] 2519 	movx	@dptr,a
      003952 EB               [12] 2520 	mov	a,r3
      003953 35 33            [12] 2521 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 2)
      003955 A3               [24] 2522 	inc	dptr
      003956 F0               [24] 2523 	movx	@dptr,a
      003957 EA               [12] 2524 	mov	a,r2
      003958 35 34            [12] 2525 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 3)
      00395A A3               [24] 2526 	inc	dptr
      00395B F0               [24] 2527 	movx	@dptr,a
      00395C 75 82 3C         [24] 2528 	mov	dpl,#0x3C
      00395F 75 83 00         [24] 2529 	mov	dph,#0x00
      003962 75 F0 00         [24] 2530 	mov	b,#0x00
      003965 74 00            [12] 2531 	mov	a,#0x00
      003967 C0 07            [24] 2532 	push	ar7
      003969 C0 06            [24] 2533 	push	ar6
      00396B C0 05            [24] 2534 	push	ar5
      00396D 12 5C 2F         [24] 2535 	lcall	__mullong
      003970 85 82 31         [24] 2536 	mov	_osal_ConvertUTCSecs_sloc0_1_0,dpl
      003973 85 83 32         [24] 2537 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 1),dph
      003976 85 F0 33         [24] 2538 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 2),b
      003979 F5 34            [12] 2539 	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 3),a
      00397B D0 05            [24] 2540 	pop	ar5
      00397D D0 06            [24] 2541 	pop	ar6
      00397F D0 07            [24] 2542 	pop	ar7
      003981 8D 82            [24] 2543 	mov	dpl,r5
      003983 8E 83            [24] 2544 	mov	dph,r6
      003985 8F F0            [24] 2545 	mov	b,r7
      003987 12 5D 60         [24] 2546 	lcall	__gptrget
      00398A F8               [12] 2547 	mov	r0,a
      00398B 7A 00            [12] 2548 	mov	r2,#0x00
      00398D 7B 00            [12] 2549 	mov	r3,#0x00
      00398F 7C 00            [12] 2550 	mov	r4,#0x00
      003991 90 10 9A         [24] 2551 	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
      003994 E8               [12] 2552 	mov	a,r0
      003995 25 31            [12] 2553 	add	a,_osal_ConvertUTCSecs_sloc0_1_0
      003997 F0               [24] 2554 	movx	@dptr,a
      003998 EA               [12] 2555 	mov	a,r2
      003999 35 32            [12] 2556 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 1)
      00399B A3               [24] 2557 	inc	dptr
      00399C F0               [24] 2558 	movx	@dptr,a
      00399D EB               [12] 2559 	mov	a,r3
      00399E 35 33            [12] 2560 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 2)
      0039A0 A3               [24] 2561 	inc	dptr
      0039A1 F0               [24] 2562 	movx	@dptr,a
      0039A2 EC               [12] 2563 	mov	a,r4
      0039A3 35 34            [12] 2564 	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 3)
      0039A5 A3               [24] 2565 	inc	dptr
      0039A6 F0               [24] 2566 	movx	@dptr,a
                                   2567 ;	../osal/common/OSAL_ClockBLE.c:332: uint16 days = tm->day;
      0039A7 74 03            [12] 2568 	mov	a,#0x03
      0039A9 2D               [12] 2569 	add	a,r5
      0039AA FA               [12] 2570 	mov	r2,a
      0039AB 74 00            [12] 2571 	mov	a,#0x00
      0039AD 3E               [12] 2572 	addc	a,r6
      0039AE FB               [12] 2573 	mov	r3,a
      0039AF 8F 04            [24] 2574 	mov	ar4,r7
      0039B1 8A 82            [24] 2575 	mov	dpl,r2
      0039B3 8B 83            [24] 2576 	mov	dph,r3
      0039B5 8C F0            [24] 2577 	mov	b,r4
      0039B7 12 5D 60         [24] 2578 	lcall	__gptrget
      0039BA FA               [12] 2579 	mov	r2,a
      0039BB 90 10 9E         [24] 2580 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      0039BE EA               [12] 2581 	mov	a,r2
      0039BF F0               [24] 2582 	movx	@dptr,a
      0039C0 74 00            [12] 2583 	mov	a,#0x00
      0039C2 A3               [24] 2584 	inc	dptr
      0039C3 F0               [24] 2585 	movx	@dptr,a
                                   2586 ;	../osal/common/OSAL_ClockBLE.c:336: int8 month = tm->month;
      0039C4 74 04            [12] 2587 	mov	a,#0x04
      0039C6 2D               [12] 2588 	add	a,r5
      0039C7 FD               [12] 2589 	mov	r5,a
      0039C8 74 00            [12] 2590 	mov	a,#0x00
      0039CA 3E               [12] 2591 	addc	a,r6
      0039CB FE               [12] 2592 	mov	r6,a
      0039CC 8D 82            [24] 2593 	mov	dpl,r5
      0039CE 8E 83            [24] 2594 	mov	dph,r6
      0039D0 8F F0            [24] 2595 	mov	b,r7
      0039D2 12 5D 60         [24] 2596 	lcall	__gptrget
      0039D5 FD               [12] 2597 	mov	r5,a
      0039D6 90 10 A0         [24] 2598 	mov	dptr,#_osal_ConvertUTCSecs_month_3_103
      0039D9 ED               [12] 2599 	mov	a,r5
      0039DA F0               [24] 2600 	movx	@dptr,a
                                   2601 ;	../osal/common/OSAL_ClockBLE.c:337: while ( --month >= 0 )
      0039DB 90 10 97         [24] 2602 	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
      0039DE E0               [24] 2603 	movx	a,@dptr
      0039DF FD               [12] 2604 	mov	r5,a
      0039E0 A3               [24] 2605 	inc	dptr
      0039E1 E0               [24] 2606 	movx	a,@dptr
      0039E2 FE               [12] 2607 	mov	r6,a
      0039E3 A3               [24] 2608 	inc	dptr
      0039E4 E0               [24] 2609 	movx	a,@dptr
      0039E5 FF               [12] 2610 	mov	r7,a
      0039E6 74 05            [12] 2611 	mov	a,#0x05
      0039E8 2D               [12] 2612 	add	a,r5
      0039E9 FD               [12] 2613 	mov	r5,a
      0039EA 74 00            [12] 2614 	mov	a,#0x00
      0039EC 3E               [12] 2615 	addc	a,r6
      0039ED FE               [12] 2616 	mov	r6,a
      0039EE 90 10 A0         [24] 2617 	mov	dptr,#_osal_ConvertUTCSecs_month_3_103
      0039F1 E0               [24] 2618 	movx	a,@dptr
      0039F2 FC               [12] 2619 	mov	r4,a
      0039F3                       2620 00101$:
      0039F3 1C               [12] 2621 	dec	r4
      0039F4 EC               [12] 2622 	mov	a,r4
      0039F5 30 E7 03         [24] 2623 	jnb	acc.7,00149$
      0039F8 02 3A D5         [24] 2624 	ljmp	00103$
      0039FB                       2625 00149$:
                                   2626 ;	../osal/common/OSAL_ClockBLE.c:339: days += monthLength( IsLeapYear( tm->year ), month );
      0039FB 8D 82            [24] 2627 	mov	dpl,r5
      0039FD 8E 83            [24] 2628 	mov	dph,r6
      0039FF 8F F0            [24] 2629 	mov	b,r7
      003A01 12 5D 60         [24] 2630 	lcall	__gptrget
      003A04 FA               [12] 2631 	mov	r2,a
      003A05 A3               [24] 2632 	inc	dptr
      003A06 12 5D 60         [24] 2633 	lcall	__gptrget
      003A09 FB               [12] 2634 	mov	r3,a
      003A0A 90 12 64         [24] 2635 	mov	dptr,#__moduint_PARM_2
      003A0D 74 90            [12] 2636 	mov	a,#0x90
      003A0F F0               [24] 2637 	movx	@dptr,a
      003A10 74 01            [12] 2638 	mov	a,#0x01
      003A12 A3               [24] 2639 	inc	dptr
      003A13 F0               [24] 2640 	movx	@dptr,a
      003A14 8A 82            [24] 2641 	mov	dpl,r2
      003A16 8B 83            [24] 2642 	mov	dph,r3
      003A18 C0 07            [24] 2643 	push	ar7
      003A1A C0 06            [24] 2644 	push	ar6
      003A1C C0 05            [24] 2645 	push	ar5
      003A1E C0 04            [24] 2646 	push	ar4
      003A20 12 5C 9B         [24] 2647 	lcall	__moduint
      003A23 AA 82            [24] 2648 	mov	r2,dpl
      003A25 AB 83            [24] 2649 	mov	r3,dph
      003A27 D0 04            [24] 2650 	pop	ar4
      003A29 D0 05            [24] 2651 	pop	ar5
      003A2B D0 06            [24] 2652 	pop	ar6
      003A2D D0 07            [24] 2653 	pop	ar7
      003A2F EA               [12] 2654 	mov	a,r2
      003A30 4B               [12] 2655 	orl	a,r3
      003A31 B4 01 00         [24] 2656 	cjne	a,#0x01,00150$
      003A34                       2657 00150$:
      003A34 E4               [12] 2658 	clr	a
      003A35 33               [12] 2659 	rlc	a
      003A36 FA               [12] 2660 	mov	r2,a
      003A37 EA               [12] 2661 	mov	a,r2
      003A38 60 03            [24] 2662 	jz	00151$
      003A3A 02 3A A0         [24] 2663 	ljmp	00110$
      003A3D                       2664 00151$:
      003A3D 8D 82            [24] 2665 	mov	dpl,r5
      003A3F 8E 83            [24] 2666 	mov	dph,r6
      003A41 8F F0            [24] 2667 	mov	b,r7
      003A43 12 5D 60         [24] 2668 	lcall	__gptrget
      003A46 FA               [12] 2669 	mov	r2,a
      003A47 A3               [24] 2670 	inc	dptr
      003A48 12 5D 60         [24] 2671 	lcall	__gptrget
      003A4B FB               [12] 2672 	mov	r3,a
      003A4C 90 12 64         [24] 2673 	mov	dptr,#__moduint_PARM_2
      003A4F 74 64            [12] 2674 	mov	a,#0x64
      003A51 F0               [24] 2675 	movx	@dptr,a
      003A52 74 00            [12] 2676 	mov	a,#0x00
      003A54 A3               [24] 2677 	inc	dptr
      003A55 F0               [24] 2678 	movx	@dptr,a
      003A56 8A 82            [24] 2679 	mov	dpl,r2
      003A58 8B 83            [24] 2680 	mov	dph,r3
      003A5A C0 07            [24] 2681 	push	ar7
      003A5C C0 06            [24] 2682 	push	ar6
      003A5E C0 05            [24] 2683 	push	ar5
      003A60 C0 04            [24] 2684 	push	ar4
      003A62 12 5C 9B         [24] 2685 	lcall	__moduint
      003A65 E5 82            [12] 2686 	mov	a,dpl
      003A67 85 83 F0         [24] 2687 	mov	b,dph
      003A6A D0 04            [24] 2688 	pop	ar4
      003A6C D0 05            [24] 2689 	pop	ar5
      003A6E D0 06            [24] 2690 	pop	ar6
      003A70 D0 07            [24] 2691 	pop	ar7
      003A72 45 F0            [12] 2692 	orl	a,b
      003A74 70 03            [24] 2693 	jnz	00152$
      003A76 02 3A 9B         [24] 2694 	ljmp	00109$
      003A79                       2695 00152$:
      003A79 8D 82            [24] 2696 	mov	dpl,r5
      003A7B 8E 83            [24] 2697 	mov	dph,r6
      003A7D 8F F0            [24] 2698 	mov	b,r7
      003A7F 12 5D 60         [24] 2699 	lcall	__gptrget
      003A82 FA               [12] 2700 	mov	r2,a
      003A83 A3               [24] 2701 	inc	dptr
      003A84 12 5D 60         [24] 2702 	lcall	__gptrget
      003A87 FB               [12] 2703 	mov	r3,a
      003A88 53 02 03         [24] 2704 	anl	ar2,#0x03
      003A8B 7B 00            [12] 2705 	mov	r3,#0x00
      003A8D EA               [12] 2706 	mov	a,r2
      003A8E 4B               [12] 2707 	orl	a,r3
      003A8F B4 01 00         [24] 2708 	cjne	a,#0x01,00153$
      003A92                       2709 00153$:
      003A92 E4               [12] 2710 	clr	a
      003A93 33               [12] 2711 	rlc	a
      003A94 FA               [12] 2712 	mov	r2,a
      003A95 EA               [12] 2713 	mov	a,r2
      003A96 60 03            [24] 2714 	jz	00154$
      003A98 02 3A A0         [24] 2715 	ljmp	00110$
      003A9B                       2716 00154$:
      003A9B                       2717 00109$:
      003A9B 7B 00            [12] 2718 	mov	r3,#0x00
      003A9D 02 3A A2         [24] 2719 	ljmp	00111$
      003AA0                       2720 00110$:
      003AA0 7B 01            [12] 2721 	mov	r3,#0x01
      003AA2                       2722 00111$:
      003AA2 90 10 94         [24] 2723 	mov	dptr,#_monthLength_PARM_2
      003AA5 EC               [12] 2724 	mov	a,r4
      003AA6 F0               [24] 2725 	movx	@dptr,a
      003AA7 8B 82            [24] 2726 	mov	dpl,r3
      003AA9 C0 07            [24] 2727 	push	ar7
      003AAB C0 06            [24] 2728 	push	ar6
      003AAD C0 05            [24] 2729 	push	ar5
      003AAF C0 04            [24] 2730 	push	ar4
      003AB1 12 38 75         [24] 2731 	lcall	_monthLength
      003AB4 AB 82            [24] 2732 	mov	r3,dpl
      003AB6 D0 04            [24] 2733 	pop	ar4
      003AB8 D0 05            [24] 2734 	pop	ar5
      003ABA D0 06            [24] 2735 	pop	ar6
      003ABC D0 07            [24] 2736 	pop	ar7
      003ABE 7A 00            [12] 2737 	mov	r2,#0x00
      003AC0 90 10 9E         [24] 2738 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003AC3 E0               [24] 2739 	movx	a,@dptr
      003AC4 F8               [12] 2740 	mov	r0,a
      003AC5 A3               [24] 2741 	inc	dptr
      003AC6 E0               [24] 2742 	movx	a,@dptr
      003AC7 F9               [12] 2743 	mov	r1,a
      003AC8 90 10 9E         [24] 2744 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003ACB EB               [12] 2745 	mov	a,r3
      003ACC 28               [12] 2746 	add	a,r0
      003ACD F0               [24] 2747 	movx	@dptr,a
      003ACE EA               [12] 2748 	mov	a,r2
      003ACF 39               [12] 2749 	addc	a,r1
      003AD0 A3               [24] 2750 	inc	dptr
      003AD1 F0               [24] 2751 	movx	@dptr,a
      003AD2 02 39 F3         [24] 2752 	ljmp	00101$
      003AD5                       2753 00103$:
                                   2754 ;	../osal/common/OSAL_ClockBLE.c:345: uint16 year = tm->year;
      003AD5 90 10 97         [24] 2755 	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
      003AD8 E0               [24] 2756 	movx	a,@dptr
      003AD9 FD               [12] 2757 	mov	r5,a
      003ADA A3               [24] 2758 	inc	dptr
      003ADB E0               [24] 2759 	movx	a,@dptr
      003ADC FE               [12] 2760 	mov	r6,a
      003ADD A3               [24] 2761 	inc	dptr
      003ADE E0               [24] 2762 	movx	a,@dptr
      003ADF FF               [12] 2763 	mov	r7,a
      003AE0 74 05            [12] 2764 	mov	a,#0x05
      003AE2 2D               [12] 2765 	add	a,r5
      003AE3 FD               [12] 2766 	mov	r5,a
      003AE4 74 00            [12] 2767 	mov	a,#0x00
      003AE6 3E               [12] 2768 	addc	a,r6
      003AE7 FE               [12] 2769 	mov	r6,a
      003AE8 8D 82            [24] 2770 	mov	dpl,r5
      003AEA 8E 83            [24] 2771 	mov	dph,r6
      003AEC 8F F0            [24] 2772 	mov	b,r7
      003AEE 12 5D 60         [24] 2773 	lcall	__gptrget
      003AF1 FD               [12] 2774 	mov	r5,a
      003AF2 A3               [24] 2775 	inc	dptr
      003AF3 12 5D 60         [24] 2776 	lcall	__gptrget
      003AF6 FE               [12] 2777 	mov	r6,a
      003AF7 90 10 A1         [24] 2778 	mov	dptr,#_osal_ConvertUTCSecs_year_3_105
      003AFA ED               [12] 2779 	mov	a,r5
      003AFB F0               [24] 2780 	movx	@dptr,a
      003AFC EE               [12] 2781 	mov	a,r6
      003AFD A3               [24] 2782 	inc	dptr
      003AFE F0               [24] 2783 	movx	@dptr,a
                                   2784 ;	../osal/common/OSAL_ClockBLE.c:346: while ( --year >= BEGYEAR )
      003AFF 90 10 A1         [24] 2785 	mov	dptr,#_osal_ConvertUTCSecs_year_3_105
      003B02 E0               [24] 2786 	movx	a,@dptr
      003B03 FE               [12] 2787 	mov	r6,a
      003B04 A3               [24] 2788 	inc	dptr
      003B05 E0               [24] 2789 	movx	a,@dptr
      003B06 FF               [12] 2790 	mov	r7,a
      003B07                       2791 00104$:
      003B07 1E               [12] 2792 	dec	r6
      003B08 BE FF 01         [24] 2793 	cjne	r6,#0xFF,00155$
      003B0B 1F               [12] 2794 	dec	r7
      003B0C                       2795 00155$:
      003B0C C3               [12] 2796 	clr	c
      003B0D EE               [12] 2797 	mov	a,r6
      003B0E 94 D0            [12] 2798 	subb	a,#0xD0
      003B10 EF               [12] 2799 	mov	a,r7
      003B11 94 07            [12] 2800 	subb	a,#0x07
      003B13 50 03            [24] 2801 	jnc	00156$
      003B15 02 3B 9C         [24] 2802 	ljmp	00106$
      003B18                       2803 00156$:
                                   2804 ;	../osal/common/OSAL_ClockBLE.c:348: days += YearLength( year );
      003B18 90 12 64         [24] 2805 	mov	dptr,#__moduint_PARM_2
      003B1B 74 90            [12] 2806 	mov	a,#0x90
      003B1D F0               [24] 2807 	movx	@dptr,a
      003B1E 74 01            [12] 2808 	mov	a,#0x01
      003B20 A3               [24] 2809 	inc	dptr
      003B21 F0               [24] 2810 	movx	@dptr,a
      003B22 8E 82            [24] 2811 	mov	dpl,r6
      003B24 8F 83            [24] 2812 	mov	dph,r7
      003B26 C0 07            [24] 2813 	push	ar7
      003B28 C0 06            [24] 2814 	push	ar6
      003B2A 12 5C 9B         [24] 2815 	lcall	__moduint
      003B2D AC 82            [24] 2816 	mov	r4,dpl
      003B2F AD 83            [24] 2817 	mov	r5,dph
      003B31 D0 06            [24] 2818 	pop	ar6
      003B33 D0 07            [24] 2819 	pop	ar7
      003B35 EC               [12] 2820 	mov	a,r4
      003B36 4D               [12] 2821 	orl	a,r5
      003B37 B4 01 00         [24] 2822 	cjne	a,#0x01,00157$
      003B3A                       2823 00157$:
      003B3A E4               [12] 2824 	clr	a
      003B3B 33               [12] 2825 	rlc	a
      003B3C FC               [12] 2826 	mov	r4,a
      003B3D EC               [12] 2827 	mov	a,r4
      003B3E 60 03            [24] 2828 	jz	00158$
      003B40 02 3B 7C         [24] 2829 	ljmp	00118$
      003B43                       2830 00158$:
      003B43 90 12 64         [24] 2831 	mov	dptr,#__moduint_PARM_2
      003B46 74 64            [12] 2832 	mov	a,#0x64
      003B48 F0               [24] 2833 	movx	@dptr,a
      003B49 74 00            [12] 2834 	mov	a,#0x00
      003B4B A3               [24] 2835 	inc	dptr
      003B4C F0               [24] 2836 	movx	@dptr,a
      003B4D 8E 82            [24] 2837 	mov	dpl,r6
      003B4F 8F 83            [24] 2838 	mov	dph,r7
      003B51 C0 07            [24] 2839 	push	ar7
      003B53 C0 06            [24] 2840 	push	ar6
      003B55 12 5C 9B         [24] 2841 	lcall	__moduint
      003B58 E5 82            [12] 2842 	mov	a,dpl
      003B5A 85 83 F0         [24] 2843 	mov	b,dph
      003B5D D0 06            [24] 2844 	pop	ar6
      003B5F D0 07            [24] 2845 	pop	ar7
      003B61 45 F0            [12] 2846 	orl	a,b
      003B63 70 03            [24] 2847 	jnz	00159$
      003B65 02 3B 83         [24] 2848 	ljmp	00115$
      003B68                       2849 00159$:
      003B68 74 03            [12] 2850 	mov	a,#0x03
      003B6A 5E               [12] 2851 	anl	a,r6
      003B6B FC               [12] 2852 	mov	r4,a
      003B6C 7D 00            [12] 2853 	mov	r5,#0x00
      003B6E EC               [12] 2854 	mov	a,r4
      003B6F 4D               [12] 2855 	orl	a,r5
      003B70 B4 01 00         [24] 2856 	cjne	a,#0x01,00160$
      003B73                       2857 00160$:
      003B73 E4               [12] 2858 	clr	a
      003B74 33               [12] 2859 	rlc	a
      003B75 FC               [12] 2860 	mov	r4,a
      003B76 EC               [12] 2861 	mov	a,r4
      003B77 70 03            [24] 2862 	jnz	00161$
      003B79 02 3B 83         [24] 2863 	ljmp	00115$
      003B7C                       2864 00161$:
      003B7C                       2865 00118$:
      003B7C 7C 6E            [12] 2866 	mov	r4,#0x6E
      003B7E 7D 01            [12] 2867 	mov	r5,#0x01
      003B80 02 3B 87         [24] 2868 	ljmp	00116$
      003B83                       2869 00115$:
      003B83 7C 6D            [12] 2870 	mov	r4,#0x6D
      003B85 7D 01            [12] 2871 	mov	r5,#0x01
      003B87                       2872 00116$:
      003B87 90 10 9E         [24] 2873 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003B8A E0               [24] 2874 	movx	a,@dptr
      003B8B FA               [12] 2875 	mov	r2,a
      003B8C A3               [24] 2876 	inc	dptr
      003B8D E0               [24] 2877 	movx	a,@dptr
      003B8E FB               [12] 2878 	mov	r3,a
      003B8F 90 10 9E         [24] 2879 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003B92 EC               [12] 2880 	mov	a,r4
      003B93 2A               [12] 2881 	add	a,r2
      003B94 F0               [24] 2882 	movx	@dptr,a
      003B95 ED               [12] 2883 	mov	a,r5
      003B96 3B               [12] 2884 	addc	a,r3
      003B97 A3               [24] 2885 	inc	dptr
      003B98 F0               [24] 2886 	movx	@dptr,a
      003B99 02 3B 07         [24] 2887 	ljmp	00104$
      003B9C                       2888 00106$:
                                   2889 ;	../osal/common/OSAL_ClockBLE.c:353: seconds += (days * DAY);
      003B9C 90 10 9E         [24] 2890 	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
      003B9F E0               [24] 2891 	movx	a,@dptr
      003BA0 FE               [12] 2892 	mov	r6,a
      003BA1 A3               [24] 2893 	inc	dptr
      003BA2 E0               [24] 2894 	movx	a,@dptr
      003BA3 FF               [12] 2895 	mov	r7,a
      003BA4 90 12 60         [24] 2896 	mov	dptr,#__mullong_PARM_2
      003BA7 EE               [12] 2897 	mov	a,r6
      003BA8 F0               [24] 2898 	movx	@dptr,a
      003BA9 EF               [12] 2899 	mov	a,r7
      003BAA A3               [24] 2900 	inc	dptr
      003BAB F0               [24] 2901 	movx	@dptr,a
      003BAC 74 00            [12] 2902 	mov	a,#0x00
      003BAE A3               [24] 2903 	inc	dptr
      003BAF F0               [24] 2904 	movx	@dptr,a
      003BB0 A3               [24] 2905 	inc	dptr
      003BB1 F0               [24] 2906 	movx	@dptr,a
      003BB2 75 82 80         [24] 2907 	mov	dpl,#0x80
      003BB5 75 83 51         [24] 2908 	mov	dph,#0x51
      003BB8 75 F0 01         [24] 2909 	mov	b,#0x01
      003BBB 74 00            [12] 2910 	mov	a,#0x00
      003BBD 12 5C 2F         [24] 2911 	lcall	__mullong
      003BC0 AC 82            [24] 2912 	mov	r4,dpl
      003BC2 AD 83            [24] 2913 	mov	r5,dph
      003BC4 AE F0            [24] 2914 	mov	r6,b
      003BC6 FF               [12] 2915 	mov	r7,a
      003BC7 90 10 9A         [24] 2916 	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
      003BCA E0               [24] 2917 	movx	a,@dptr
      003BCB F8               [12] 2918 	mov	r0,a
      003BCC A3               [24] 2919 	inc	dptr
      003BCD E0               [24] 2920 	movx	a,@dptr
      003BCE F9               [12] 2921 	mov	r1,a
      003BCF A3               [24] 2922 	inc	dptr
      003BD0 E0               [24] 2923 	movx	a,@dptr
      003BD1 FA               [12] 2924 	mov	r2,a
      003BD2 A3               [24] 2925 	inc	dptr
      003BD3 E0               [24] 2926 	movx	a,@dptr
      003BD4 FB               [12] 2927 	mov	r3,a
      003BD5 90 10 9A         [24] 2928 	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
      003BD8 EC               [12] 2929 	mov	a,r4
      003BD9 28               [12] 2930 	add	a,r0
      003BDA F0               [24] 2931 	movx	@dptr,a
      003BDB ED               [12] 2932 	mov	a,r5
      003BDC 39               [12] 2933 	addc	a,r1
      003BDD A3               [24] 2934 	inc	dptr
      003BDE F0               [24] 2935 	movx	@dptr,a
      003BDF EE               [12] 2936 	mov	a,r6
      003BE0 3A               [12] 2937 	addc	a,r2
      003BE1 A3               [24] 2938 	inc	dptr
      003BE2 F0               [24] 2939 	movx	@dptr,a
      003BE3 EF               [12] 2940 	mov	a,r7
      003BE4 3B               [12] 2941 	addc	a,r3
      003BE5 A3               [24] 2942 	inc	dptr
      003BE6 F0               [24] 2943 	movx	@dptr,a
                                   2944 ;	../osal/common/OSAL_ClockBLE.c:356: return ( seconds );
      003BE7 90 10 9A         [24] 2945 	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
      003BEA E0               [24] 2946 	movx	a,@dptr
      003BEB FC               [12] 2947 	mov	r4,a
      003BEC A3               [24] 2948 	inc	dptr
      003BED E0               [24] 2949 	movx	a,@dptr
      003BEE FD               [12] 2950 	mov	r5,a
      003BEF A3               [24] 2951 	inc	dptr
      003BF0 E0               [24] 2952 	movx	a,@dptr
      003BF1 FE               [12] 2953 	mov	r6,a
      003BF2 A3               [24] 2954 	inc	dptr
      003BF3 E0               [24] 2955 	movx	a,@dptr
      003BF4 FF               [12] 2956 	mov	r7,a
      003BF5 8C 82            [24] 2957 	mov	dpl,r4
      003BF7 8D 83            [24] 2958 	mov	dph,r5
      003BF9 8E F0            [24] 2959 	mov	b,r6
      003BFB EF               [12] 2960 	mov	a,r7
      003BFC                       2961 00107$:
      003BFC 22               [24] 2962 	ret
                                   2963 	.area CSEG    (CODE)
                                   2964 	.area CONST   (CODE)
                                   2965 	.area CABS    (ABS,CODE)
