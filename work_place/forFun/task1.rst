                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Sun Jul  5 09:25:28 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module task1
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _osal_set_event
                                     13 	.globl _osal_start_timerEx
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
                                    234 	.globl _TXFILTCFG
                                    235 	.globl _RFC_OBS_CTRL2
                                    236 	.globl _RFC_OBS_CTRL1
                                    237 	.globl _RFC_OBS_CTRL0
                                    238 	.globl _CSPT
                                    239 	.globl _CSPZ
                                    240 	.globl _CSPY
                                    241 	.globl _CSPX
                                    242 	.globl _CSPSTAT
                                    243 	.globl _CSPCTRL
                                    244 	.globl _CSPPROG23
                                    245 	.globl _CSPPROG22
                                    246 	.globl _CSPPROG21
                                    247 	.globl _CSPPROG20
                                    248 	.globl _CSPPROG19
                                    249 	.globl _CSPPROG18
                                    250 	.globl _CSPPROG17
                                    251 	.globl _CSPPROG16
                                    252 	.globl _CSPPROG15
                                    253 	.globl _CSPPROG14
                                    254 	.globl _CSPPROG13
                                    255 	.globl _CSPPROG12
                                    256 	.globl _CSPPROG11
                                    257 	.globl _CSPPROG10
                                    258 	.globl _CSPPROG9
                                    259 	.globl _CSPPROG8
                                    260 	.globl _CSPPROG7
                                    261 	.globl _CSPPROG6
                                    262 	.globl _CSPPROG5
                                    263 	.globl _CSPPROG4
                                    264 	.globl _CSPPROG3
                                    265 	.globl _CSPPROG2
                                    266 	.globl _CSPPROG1
                                    267 	.globl _CSPPROG0
                                    268 	.globl _PTEST1
                                    269 	.globl _PTEST0
                                    270 	.globl _ATEST
                                    271 	.globl _DACTEST2
                                    272 	.globl _DACTEST1
                                    273 	.globl _DACTEST0
                                    274 	.globl _MDMTEST1
                                    275 	.globl _MDMTEST0
                                    276 	.globl _ADCTEST2
                                    277 	.globl _ADCTEST1
                                    278 	.globl _ADCTEST0
                                    279 	.globl _AGCCTRL3
                                    280 	.globl _AGCCTRL2
                                    281 	.globl _AGCCTRL1
                                    282 	.globl _AGCCTRL0
                                    283 	.globl _FSCAL3
                                    284 	.globl _FSCAL2
                                    285 	.globl _FSCAL1
                                    286 	.globl _FSCTRL
                                    287 	.globl _RXCTRL
                                    288 	.globl _FREQEST
                                    289 	.globl _MDMCTRL1
                                    290 	.globl _MDMCTRL0
                                    291 	.globl _RFRND
                                    292 	.globl _OPAMPMC
                                    293 	.globl _RFERRM
                                    294 	.globl _RFIRQM1
                                    295 	.globl _RFIRQM0
                                    296 	.globl _TXLAST_PTR
                                    297 	.globl _TXFIRST_PTR
                                    298 	.globl _RXP1_PTR
                                    299 	.globl _RXLAST_PTR
                                    300 	.globl _RXFIRST_PTR
                                    301 	.globl _TXFIFOCNT
                                    302 	.globl _RXFIFOCNT
                                    303 	.globl _RXFIRST
                                    304 	.globl _RSSISTAT
                                    305 	.globl _RSSI
                                    306 	.globl _CCACTRL1
                                    307 	.globl _CCACTRL0
                                    308 	.globl _FSMCTRL
                                    309 	.globl _FIFOPCTRL
                                    310 	.globl _FSMSTAT1
                                    311 	.globl _FSMSTAT0
                                    312 	.globl _TXCTRL
                                    313 	.globl _TXPOWER
                                    314 	.globl _FREQCTRL
                                    315 	.globl _FREQTUNE
                                    316 	.globl _RXMASKCLR
                                    317 	.globl _RXMASKSET
                                    318 	.globl _RXENABLE
                                    319 	.globl _FRMCTRL1
                                    320 	.globl _FRMCTRL0
                                    321 	.globl _SRCEXTEN2
                                    322 	.globl _SRCEXTEN1
                                    323 	.globl _SRCEXTEN0
                                    324 	.globl _SRCSHORTEN2
                                    325 	.globl _SRCSHORTEN1
                                    326 	.globl _SRCSHORTEN0
                                    327 	.globl _SRCMATCH
                                    328 	.globl _FRMFILT1
                                    329 	.globl _FRMFILT0
                                    330 	.globl _IEEE_ADDR
                                    331 	.globl _PANIDL
                                    332 	.globl _PANIDH
                                    333 	.globl _SHORTADDRL
                                    334 	.globl _SHORTADDRH
                                    335 	.globl _USBF5
                                    336 	.globl _USBF4
                                    337 	.globl _USBF3
                                    338 	.globl _USBF2
                                    339 	.globl _USBF1
                                    340 	.globl _USBF0
                                    341 	.globl _USBCNTH
                                    342 	.globl _USBCNTL
                                    343 	.globl _USBCNT0
                                    344 	.globl _USBCSOH
                                    345 	.globl _USBCSOL
                                    346 	.globl _USBMAXO
                                    347 	.globl _USBCSIH
                                    348 	.globl _USBCSIL
                                    349 	.globl _USBCS0
                                    350 	.globl _USBMAXI
                                    351 	.globl _USBCTRL
                                    352 	.globl _USBINDEX
                                    353 	.globl _USBFRMH
                                    354 	.globl _USBFRML
                                    355 	.globl _USBCIE
                                    356 	.globl _USBOIE
                                    357 	.globl _USBIIE
                                    358 	.globl _USBCIF
                                    359 	.globl _USBOIF
                                    360 	.globl _USBIIF
                                    361 	.globl _USBPOW
                                    362 	.globl _USBADDR
                                    363 	.globl _CMPCTL
                                    364 	.globl _OPAMPS
                                    365 	.globl _OPAMPC
                                    366 	.globl _STCV2
                                    367 	.globl _STCV1
                                    368 	.globl _STCV0
                                    369 	.globl _STCS
                                    370 	.globl _STCC
                                    371 	.globl _T1CC4H
                                    372 	.globl _T1CC4L
                                    373 	.globl _T1CC3H
                                    374 	.globl _T1CC3L
                                    375 	.globl _X_T1CC2H
                                    376 	.globl _X_T1CC2L
                                    377 	.globl _X_T1CC1H
                                    378 	.globl _X_T1CC1L
                                    379 	.globl _X_T1CC0H
                                    380 	.globl _X_T1CC0L
                                    381 	.globl _T1CCTL4
                                    382 	.globl _T1CCTL3
                                    383 	.globl _X_T1CCTL2
                                    384 	.globl _X_T1CCTL1
                                    385 	.globl _X_T1CCTL0
                                    386 	.globl _CLD
                                    387 	.globl _IRCTL
                                    388 	.globl _CHIPINFO1
                                    389 	.globl _CHIPINFO0
                                    390 	.globl _FWDATA
                                    391 	.globl _FADDRH
                                    392 	.globl _FADDRL
                                    393 	.globl _FCTL
                                    394 	.globl _IVCTRL
                                    395 	.globl _BATTMON
                                    396 	.globl _SRCRC
                                    397 	.globl _DBGDATA
                                    398 	.globl _TESTREG0
                                    399 	.globl _CHIPID
                                    400 	.globl _CHVER
                                    401 	.globl _OBSSEL5
                                    402 	.globl _OBSSEL4
                                    403 	.globl _OBSSEL3
                                    404 	.globl _OBSSEL2
                                    405 	.globl _OBSSEL1
                                    406 	.globl _OBSSEL0
                                    407 	.globl _I2CIO
                                    408 	.globl _I2CWC
                                    409 	.globl _I2CADDR
                                    410 	.globl _I2CDATA
                                    411 	.globl _I2CSTAT
                                    412 	.globl _I2CCFG
                                    413 	.globl _Task1_Init
                                    414 	.globl _Task1_ProcessEvent
                                    415 ;--------------------------------------------------------
                                    416 ; special function registers
                                    417 ;--------------------------------------------------------
                                    418 	.area RSEG    (ABS,DATA)
      000000                        419 	.org 0x0000
                           000080   420 _P0	=	0x0080
                           000081   421 _SP	=	0x0081
                           000082   422 _DPL0	=	0x0082
                           000083   423 _DPH0	=	0x0083
                           000084   424 _DPL1	=	0x0084
                           000085   425 _DPH1	=	0x0085
                           000086   426 _U0CSR	=	0x0086
                           000087   427 _PCON	=	0x0087
                           000088   428 _TCON	=	0x0088
                           000089   429 _P0IFG	=	0x0089
                           00008A   430 _P1IFG	=	0x008a
                           00008B   431 _P2IFG	=	0x008b
                           00008C   432 _PICTL	=	0x008c
                           00008D   433 _P1IEN	=	0x008d
                           00008F   434 _P0INP	=	0x008f
                           000090   435 _P1	=	0x0090
                           000091   436 _RFIRQF1	=	0x0091
                           000092   437 _DPS	=	0x0092
                           000093   438 _MPAGE	=	0x0093
                           000093   439 __XPAGE	=	0x0093
                           000094   440 _T2CTRL	=	0x0094
                           000095   441 _ST0	=	0x0095
                           000096   442 _ST1	=	0x0096
                           000097   443 _ST2	=	0x0097
                           000098   444 _S0CON	=	0x0098
                           00009A   445 _IEN2	=	0x009a
                           00009B   446 _S1CON	=	0x009b
                           00009C   447 _T2EVTCFG	=	0x009c
                           00009D   448 _SLEEPSTA	=	0x009d
                           00009E   449 _CLKCONSTA	=	0x009e
                           00009F   450 _PSBANK	=	0x009f
                           00009F   451 _FMAP	=	0x009f
                           0000A0   452 _P2	=	0x00a0
                           0000A1   453 _T2IRQF	=	0x00a1
                           0000A2   454 _T2M0	=	0x00a2
                           0000A3   455 _T2M1	=	0x00a3
                           0000A4   456 _T2MOVF0	=	0x00a4
                           0000A5   457 _T2MOVF1	=	0x00a5
                           0000A6   458 _T2MOVF2	=	0x00a6
                           0000A7   459 _T2IRQM	=	0x00a7
                           0000A8   460 _IEN0	=	0x00a8
                           0000A9   461 _IP0	=	0x00a9
                           0000AB   462 _P0IEN	=	0x00ab
                           0000AC   463 _P2IEN	=	0x00ac
                           0000AD   464 _STLOAD	=	0x00ad
                           0000AE   465 _PMUX	=	0x00ae
                           0000AF   466 _T1STAT	=	0x00af
                           0000B1   467 _ENCDI	=	0x00b1
                           0000B2   468 _ENCDO	=	0x00b2
                           0000B3   469 _ENCCS	=	0x00b3
                           0000B4   470 _ADCCON1	=	0x00b4
                           0000B5   471 _ADCCON2	=	0x00b5
                           0000B6   472 _ADCCON3	=	0x00b6
                           0000B8   473 _IEN1	=	0x00b8
                           0000B9   474 _IP1	=	0x00b9
                           0000BA   475 _ADCL	=	0x00ba
                           0000BB   476 _ADCH	=	0x00bb
                           0000BC   477 _RNDL	=	0x00bc
                           0000BD   478 _RNDH	=	0x00bd
                           0000BE   479 _SLEEPCMD	=	0x00be
                           0000BF   480 _RFERRF	=	0x00bf
                           0000C0   481 _IRCON	=	0x00c0
                           0000C1   482 _U0DBUF	=	0x00c1
                           0000C2   483 _U0BAUD	=	0x00c2
                           0000C3   484 _T2MSEL	=	0x00c3
                           0000C4   485 _U0UCR	=	0x00c4
                           0000C5   486 _U0GCR	=	0x00c5
                           0000C6   487 _CLKCONCMD	=	0x00c6
                           0000C7   488 _MEMCTR	=	0x00c7
                           0000C9   489 _WDCTL	=	0x00c9
                           0000CA   490 _T3CNT	=	0x00ca
                           0000CB   491 _T3CTL	=	0x00cb
                           0000CC   492 _T3CCTL0	=	0x00cc
                           0000CD   493 _T3CC0	=	0x00cd
                           0000CE   494 _T3CCTL1	=	0x00ce
                           0000CF   495 _T3CC1	=	0x00cf
                           0000D0   496 _PSW	=	0x00d0
                           0000D1   497 _DMAIRQ	=	0x00d1
                           0000D2   498 _DMA1CFGL	=	0x00d2
                           0000D3   499 _DMA1CFGH	=	0x00d3
                           0000D4   500 _DMA0CFGL	=	0x00d4
                           0000D5   501 _DMA0CFGH	=	0x00d5
                           0000D6   502 _DMAARM	=	0x00d6
                           0000D7   503 _DMAREQ	=	0x00d7
                           0000D8   504 _TIMIF	=	0x00d8
                           0000D9   505 _RFD	=	0x00d9
                           0000DA   506 _T1CC0L	=	0x00da
                           0000DB   507 _T1CC0H	=	0x00db
                           0000DC   508 _T1CC1L	=	0x00dc
                           0000DD   509 _T1CC1H	=	0x00dd
                           0000DE   510 _T1CC2L	=	0x00de
                           0000DF   511 _T1CC2H	=	0x00df
                           0000E0   512 _ACC	=	0x00e0
                           0000E1   513 _RFST	=	0x00e1
                           0000E2   514 _T1CNTL	=	0x00e2
                           0000E3   515 _T1CNTH	=	0x00e3
                           0000E4   516 _T1CTL	=	0x00e4
                           0000E5   517 _T1CCTL0	=	0x00e5
                           0000E6   518 _T1CCTL1	=	0x00e6
                           0000E7   519 _T1CCTL2	=	0x00e7
                           0000E8   520 _IRCON2	=	0x00e8
                           0000E9   521 _RFIRQF0	=	0x00e9
                           0000EA   522 _T4CNT	=	0x00ea
                           0000EB   523 _T4CTL	=	0x00eb
                           0000EC   524 _T4CCTL0	=	0x00ec
                           0000ED   525 _T4CC0	=	0x00ed
                           0000EE   526 _T4CCTL1	=	0x00ee
                           0000EF   527 _T4CC1	=	0x00ef
                           0000F0   528 _B	=	0x00f0
                           0000F1   529 _PERCFG	=	0x00f1
                           0000F2   530 _APCFG	=	0x00f2
                           0000F3   531 _P0SEL	=	0x00f3
                           0000F4   532 _P1SEL	=	0x00f4
                           0000F5   533 _P2SEL	=	0x00f5
                           0000F6   534 _P1INP	=	0x00f6
                           0000F7   535 _P2INP	=	0x00f7
                           0000F8   536 _U1CSR	=	0x00f8
                           0000F9   537 _U1DBUF	=	0x00f9
                           0000FA   538 _U1BAUD	=	0x00fa
                           0000FB   539 _U1UCR	=	0x00fb
                           0000FC   540 _U1GCR	=	0x00fc
                           0000FD   541 _P0DIR	=	0x00fd
                           0000FE   542 _P1DIR	=	0x00fe
                           0000FF   543 _P2DIR	=	0x00ff
                                    544 ;--------------------------------------------------------
                                    545 ; special function bits
                                    546 ;--------------------------------------------------------
                                    547 	.area RSEG    (ABS,DATA)
      000000                        548 	.org 0x0000
                           000080   549 _P0_0	=	0x0080
                           000081   550 _P0_1	=	0x0081
                           000082   551 _P0_2	=	0x0082
                           000083   552 _P0_3	=	0x0083
                           000084   553 _P0_4	=	0x0084
                           000085   554 _P0_5	=	0x0085
                           000086   555 _P0_6	=	0x0086
                           000087   556 _P0_7	=	0x0087
                           000088   557 _IT0	=	0x0088
                           000089   558 _RFERRIF	=	0x0089
                           00008A   559 _IT1	=	0x008a
                           00008B   560 _URX0IF	=	0x008b
                           00008D   561 _ADCIF	=	0x008d
                           00008F   562 _URX1IF	=	0x008f
                           000090   563 _P1_0	=	0x0090
                           000091   564 _P1_1	=	0x0091
                           000092   565 _P1_2	=	0x0092
                           000093   566 _P1_3	=	0x0093
                           000094   567 _P1_4	=	0x0094
                           000095   568 _P1_5	=	0x0095
                           000096   569 _P1_6	=	0x0096
                           000097   570 _P1_7	=	0x0097
                           000098   571 _ENCIF_0	=	0x0098
                           000099   572 _ENCIF_1	=	0x0099
                           0000A0   573 _P2_0	=	0x00a0
                           0000A1   574 _P2_1	=	0x00a1
                           0000A2   575 _P2_2	=	0x00a2
                           0000A3   576 _P2_3	=	0x00a3
                           0000A4   577 _P2_4	=	0x00a4
                           0000A5   578 _P2_5	=	0x00a5
                           0000A6   579 _P2_6	=	0x00a6
                           0000A7   580 _P2_7	=	0x00a7
                           0000A8   581 _RFERRIE	=	0x00a8
                           0000A9   582 _ADCIE	=	0x00a9
                           0000AA   583 _URX0IE	=	0x00aa
                           0000AB   584 _URX1IE	=	0x00ab
                           0000AC   585 _ENCIE	=	0x00ac
                           0000AD   586 _STIE	=	0x00ad
                           0000AF   587 _EA	=	0x00af
                           0000B8   588 _DMAIE	=	0x00b8
                           0000B9   589 _T1IE	=	0x00b9
                           0000BA   590 _T2IE	=	0x00ba
                           0000BB   591 _T3IE	=	0x00bb
                           0000BC   592 _T4IE	=	0x00bc
                           0000BD   593 _P0IE	=	0x00bd
                           0000C0   594 _DMAIF	=	0x00c0
                           0000C1   595 _T1IF	=	0x00c1
                           0000C2   596 _T2IF	=	0x00c2
                           0000C3   597 _T3IF	=	0x00c3
                           0000C4   598 _T4IF	=	0x00c4
                           0000C5   599 _P0IF	=	0x00c5
                           0000C7   600 _STIF	=	0x00c7
                           0000D0   601 _P	=	0x00d0
                           0000D1   602 _F1	=	0x00d1
                           0000D2   603 _OV	=	0x00d2
                           0000D3   604 _RS0	=	0x00d3
                           0000D4   605 _RS1	=	0x00d4
                           0000D5   606 _F0	=	0x00d5
                           0000D6   607 _AC	=	0x00d6
                           0000D7   608 _CY	=	0x00d7
                           0000D8   609 _T3OVFIF	=	0x00d8
                           0000D9   610 _T3CH0IF	=	0x00d9
                           0000DA   611 _T3CH1IF	=	0x00da
                           0000DB   612 _T4OVFIF	=	0x00db
                           0000DC   613 _T4CH0IF	=	0x00dc
                           0000DD   614 _T4CH1IF	=	0x00dd
                           0000DE   615 _OVFIM	=	0x00de
                           0000E0   616 _ACC_0	=	0x00e0
                           0000E1   617 _ACC_1	=	0x00e1
                           0000E2   618 _ACC_2	=	0x00e2
                           0000E3   619 _ACC_3	=	0x00e3
                           0000E4   620 _ACC_4	=	0x00e4
                           0000E5   621 _ACC_5	=	0x00e5
                           0000E6   622 _ACC_6	=	0x00e6
                           0000E7   623 _ACC_7	=	0x00e7
                           0000E8   624 _P2IF	=	0x00e8
                           0000E9   625 _UTX0IF	=	0x00e9
                           0000EA   626 _UTX1IF	=	0x00ea
                           0000EB   627 _P1IF	=	0x00eb
                           0000EC   628 _WDTIF	=	0x00ec
                           0000F0   629 _B_0	=	0x00f0
                           0000F1   630 _B_1	=	0x00f1
                           0000F2   631 _B_2	=	0x00f2
                           0000F3   632 _B_3	=	0x00f3
                           0000F4   633 _B_4	=	0x00f4
                           0000F5   634 _B_5	=	0x00f5
                           0000F6   635 _B_6	=	0x00f6
                           0000F7   636 _B_7	=	0x00f7
                           0000F8   637 _ACTIVE	=	0x00f8
                           0000F9   638 _TX_BYTE	=	0x00f9
                           0000FA   639 _RX_BYTE	=	0x00fa
                           0000FB   640 _ERR	=	0x00fb
                           0000FC   641 _FE	=	0x00fc
                           0000FD   642 _SLAVE	=	0x00fd
                           0000FE   643 _RE	=	0x00fe
                           0000FF   644 _MODE	=	0x00ff
                                    645 ;--------------------------------------------------------
                                    646 ; overlayable register banks
                                    647 ;--------------------------------------------------------
                                    648 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        649 	.ds 8
                                    650 ;--------------------------------------------------------
                                    651 ; internal ram data
                                    652 ;--------------------------------------------------------
                                    653 	.area DSEG    (DATA)
                                    654 ;--------------------------------------------------------
                                    655 ; overlayable items in internal ram 
                                    656 ;--------------------------------------------------------
                                    657 ;--------------------------------------------------------
                                    658 ; indirectly addressable internal ram data
                                    659 ;--------------------------------------------------------
                                    660 	.area ISEG    (DATA)
                                    661 ;--------------------------------------------------------
                                    662 ; absolute internal ram data
                                    663 ;--------------------------------------------------------
                                    664 	.area IABS    (ABS,DATA)
                                    665 	.area IABS    (ABS,DATA)
                                    666 ;--------------------------------------------------------
                                    667 ; bit data
                                    668 ;--------------------------------------------------------
                                    669 	.area BSEG    (BIT)
                                    670 ;--------------------------------------------------------
                                    671 ; paged external ram data
                                    672 ;--------------------------------------------------------
                                    673 	.area PSEG    (PAG,XDATA)
                                    674 ;--------------------------------------------------------
                                    675 ; external ram data
                                    676 ;--------------------------------------------------------
                                    677 	.area XSEG    (XDATA)
                           006230   678 _I2CCFG	=	0x6230
                           006231   679 _I2CSTAT	=	0x6231
                           006232   680 _I2CDATA	=	0x6232
                           006233   681 _I2CADDR	=	0x6233
                           006234   682 _I2CWC	=	0x6234
                           006235   683 _I2CIO	=	0x6235
                           006243   684 _OBSSEL0	=	0x6243
                           006244   685 _OBSSEL1	=	0x6244
                           006245   686 _OBSSEL2	=	0x6245
                           006246   687 _OBSSEL3	=	0x6246
                           006247   688 _OBSSEL4	=	0x6247
                           006248   689 _OBSSEL5	=	0x6248
                           006249   690 _CHVER	=	0x6249
                           00624A   691 _CHIPID	=	0x624a
                           00624B   692 _TESTREG0	=	0x624b
                           006260   693 _DBGDATA	=	0x6260
                           006262   694 _SRCRC	=	0x6262
                           006264   695 _BATTMON	=	0x6264
                           006265   696 _IVCTRL	=	0x6265
                           006270   697 _FCTL	=	0x6270
                           006271   698 _FADDRL	=	0x6271
                           006272   699 _FADDRH	=	0x6272
                           006273   700 _FWDATA	=	0x6273
                           006276   701 _CHIPINFO0	=	0x6276
                           006277   702 _CHIPINFO1	=	0x6277
                           006281   703 _IRCTL	=	0x6281
                           006290   704 _CLD	=	0x6290
                           0062A0   705 _X_T1CCTL0	=	0x62a0
                           0062A1   706 _X_T1CCTL1	=	0x62a1
                           0062A2   707 _X_T1CCTL2	=	0x62a2
                           0062A3   708 _T1CCTL3	=	0x62a3
                           0062A4   709 _T1CCTL4	=	0x62a4
                           0062A6   710 _X_T1CC0L	=	0x62a6
                           0062A7   711 _X_T1CC0H	=	0x62a7
                           0062A8   712 _X_T1CC1L	=	0x62a8
                           0062A9   713 _X_T1CC1H	=	0x62a9
                           0062AA   714 _X_T1CC2L	=	0x62aa
                           0062AB   715 _X_T1CC2H	=	0x62ab
                           0062AC   716 _T1CC3L	=	0x62ac
                           0062AD   717 _T1CC3H	=	0x62ad
                           0062AE   718 _T1CC4L	=	0x62ae
                           0062AF   719 _T1CC4H	=	0x62af
                           0062B0   720 _STCC	=	0x62b0
                           0062B1   721 _STCS	=	0x62b1
                           0062B2   722 _STCV0	=	0x62b2
                           0062B3   723 _STCV1	=	0x62b3
                           0062B4   724 _STCV2	=	0x62b4
                           0062C0   725 _OPAMPC	=	0x62c0
                           0062C1   726 _OPAMPS	=	0x62c1
                           0062D0   727 _CMPCTL	=	0x62d0
                           006200   728 _USBADDR	=	0x6200
                           006201   729 _USBPOW	=	0x6201
                           006202   730 _USBIIF	=	0x6202
                           006204   731 _USBOIF	=	0x6204
                           006206   732 _USBCIF	=	0x6206
                           006207   733 _USBIIE	=	0x6207
                           006209   734 _USBOIE	=	0x6209
                           00620B   735 _USBCIE	=	0x620b
                           00620C   736 _USBFRML	=	0x620c
                           00620D   737 _USBFRMH	=	0x620d
                           00620E   738 _USBINDEX	=	0x620e
                           00620F   739 _USBCTRL	=	0x620f
                           006210   740 _USBMAXI	=	0x6210
                           006211   741 _USBCS0	=	0x6211
                           006211   742 _USBCSIL	=	0x6211
                           006212   743 _USBCSIH	=	0x6212
                           006213   744 _USBMAXO	=	0x6213
                           006214   745 _USBCSOL	=	0x6214
                           006215   746 _USBCSOH	=	0x6215
                           006216   747 _USBCNT0	=	0x6216
                           006216   748 _USBCNTL	=	0x6216
                           006217   749 _USBCNTH	=	0x6217
                           006220   750 _USBF0	=	0x6220
                           006222   751 _USBF1	=	0x6222
                           006224   752 _USBF2	=	0x6224
                           006226   753 _USBF3	=	0x6226
                           006228   754 _USBF4	=	0x6228
                           00622A   755 _USBF5	=	0x622a
                           006174   756 _SHORTADDRH	=	0x6174
                           006175   757 _SHORTADDRL	=	0x6175
                           006172   758 _PANIDH	=	0x6172
                           006173   759 _PANIDL	=	0x6173
                           00616A   760 _IEEE_ADDR	=	0x616a
                           006180   761 _FRMFILT0	=	0x6180
                           006181   762 _FRMFILT1	=	0x6181
                           006182   763 _SRCMATCH	=	0x6182
                           006183   764 _SRCSHORTEN0	=	0x6183
                           006184   765 _SRCSHORTEN1	=	0x6184
                           006185   766 _SRCSHORTEN2	=	0x6185
                           006186   767 _SRCEXTEN0	=	0x6186
                           006187   768 _SRCEXTEN1	=	0x6187
                           006188   769 _SRCEXTEN2	=	0x6188
                           006189   770 _FRMCTRL0	=	0x6189
                           00618A   771 _FRMCTRL1	=	0x618a
                           00618B   772 _RXENABLE	=	0x618b
                           00618C   773 _RXMASKSET	=	0x618c
                           00618D   774 _RXMASKCLR	=	0x618d
                           00618E   775 _FREQTUNE	=	0x618e
                           00618F   776 _FREQCTRL	=	0x618f
                           006190   777 _TXPOWER	=	0x6190
                           006191   778 _TXCTRL	=	0x6191
                           006192   779 _FSMSTAT0	=	0x6192
                           006193   780 _FSMSTAT1	=	0x6193
                           006194   781 _FIFOPCTRL	=	0x6194
                           006195   782 _FSMCTRL	=	0x6195
                           006196   783 _CCACTRL0	=	0x6196
                           006197   784 _CCACTRL1	=	0x6197
                           006198   785 _RSSI	=	0x6198
                           006199   786 _RSSISTAT	=	0x6199
                           00619A   787 _RXFIRST	=	0x619a
                           00619B   788 _RXFIFOCNT	=	0x619b
                           00619C   789 _TXFIFOCNT	=	0x619c
                           00619D   790 _RXFIRST_PTR	=	0x619d
                           00619E   791 _RXLAST_PTR	=	0x619e
                           00619F   792 _RXP1_PTR	=	0x619f
                           0061A1   793 _TXFIRST_PTR	=	0x61a1
                           0061A2   794 _TXLAST_PTR	=	0x61a2
                           0061A3   795 _RFIRQM0	=	0x61a3
                           0061A4   796 _RFIRQM1	=	0x61a4
                           0061A5   797 _RFERRM	=	0x61a5
                           0061A6   798 _OPAMPMC	=	0x61a6
                           0061A7   799 _RFRND	=	0x61a7
                           0061A8   800 _MDMCTRL0	=	0x61a8
                           0061A9   801 _MDMCTRL1	=	0x61a9
                           0061AA   802 _FREQEST	=	0x61aa
                           0061AB   803 _RXCTRL	=	0x61ab
                           0061AC   804 _FSCTRL	=	0x61ac
                           0061AE   805 _FSCAL1	=	0x61ae
                           0061AF   806 _FSCAL2	=	0x61af
                           0061B0   807 _FSCAL3	=	0x61b0
                           0061B1   808 _AGCCTRL0	=	0x61b1
                           0061B2   809 _AGCCTRL1	=	0x61b2
                           0061B3   810 _AGCCTRL2	=	0x61b3
                           0061B4   811 _AGCCTRL3	=	0x61b4
                           0061B5   812 _ADCTEST0	=	0x61b5
                           0061B6   813 _ADCTEST1	=	0x61b6
                           0061B7   814 _ADCTEST2	=	0x61b7
                           0061B8   815 _MDMTEST0	=	0x61b8
                           0061B9   816 _MDMTEST1	=	0x61b9
                           0061BA   817 _DACTEST0	=	0x61ba
                           0061BB   818 _DACTEST1	=	0x61bb
                           0061BC   819 _DACTEST2	=	0x61bc
                           0061BD   820 _ATEST	=	0x61bd
                           0061BE   821 _PTEST0	=	0x61be
                           0061BF   822 _PTEST1	=	0x61bf
                           0061C0   823 _CSPPROG0	=	0x61c0
                           0061C1   824 _CSPPROG1	=	0x61c1
                           0061C2   825 _CSPPROG2	=	0x61c2
                           0061C3   826 _CSPPROG3	=	0x61c3
                           0061C4   827 _CSPPROG4	=	0x61c4
                           0061C5   828 _CSPPROG5	=	0x61c5
                           0061C6   829 _CSPPROG6	=	0x61c6
                           0061C7   830 _CSPPROG7	=	0x61c7
                           0061C8   831 _CSPPROG8	=	0x61c8
                           0061C9   832 _CSPPROG9	=	0x61c9
                           0061CA   833 _CSPPROG10	=	0x61ca
                           0061CB   834 _CSPPROG11	=	0x61cb
                           0061CC   835 _CSPPROG12	=	0x61cc
                           0061CD   836 _CSPPROG13	=	0x61cd
                           0061CE   837 _CSPPROG14	=	0x61ce
                           0061CF   838 _CSPPROG15	=	0x61cf
                           0061D0   839 _CSPPROG16	=	0x61d0
                           0061D1   840 _CSPPROG17	=	0x61d1
                           0061D2   841 _CSPPROG18	=	0x61d2
                           0061D3   842 _CSPPROG19	=	0x61d3
                           0061D4   843 _CSPPROG20	=	0x61d4
                           0061D5   844 _CSPPROG21	=	0x61d5
                           0061D6   845 _CSPPROG22	=	0x61d6
                           0061D7   846 _CSPPROG23	=	0x61d7
                           0061E0   847 _CSPCTRL	=	0x61e0
                           0061E1   848 _CSPSTAT	=	0x61e1
                           0061E2   849 _CSPX	=	0x61e2
                           0061E3   850 _CSPY	=	0x61e3
                           0061E4   851 _CSPZ	=	0x61e4
                           0061E5   852 _CSPT	=	0x61e5
                           0061EB   853 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   854 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   855 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   856 _TXFILTCFG	=	0x61fa
      0010B7                        857 _TaskID:
      0010B7                        858 	.ds 1
      0010B8                        859 _flag:
      0010B8                        860 	.ds 1
      0010B9                        861 _Task1_Init_task_id_1_65:
      0010B9                        862 	.ds 1
      0010BA                        863 _performPeriodicTask_sloc0_1_0:
      0010BA                        864 	.ds 1
                                    865 ;--------------------------------------------------------
                                    866 ; absolute external ram data
                                    867 ;--------------------------------------------------------
                                    868 	.area XABS    (ABS,XDATA)
                                    869 ;--------------------------------------------------------
                                    870 ; external initialized ram data
                                    871 ;--------------------------------------------------------
                                    872 	.area HOME    (CODE)
                                    873 	.area GSINIT0 (CODE)
                                    874 	.area GSINIT1 (CODE)
                                    875 	.area GSINIT2 (CODE)
                                    876 	.area GSINIT3 (CODE)
                                    877 	.area GSINIT4 (CODE)
                                    878 	.area GSINIT5 (CODE)
                                    879 	.area GSINIT  (CODE)
                                    880 	.area GSFINAL (CODE)
                                    881 	.area CSEG    (CODE)
                                    882 ;--------------------------------------------------------
                                    883 ; global & static initialisations
                                    884 ;--------------------------------------------------------
                                    885 	.area HOME    (CODE)
                                    886 	.area GSINIT  (CODE)
                                    887 	.area GSFINAL (CODE)
                                    888 	.area GSINIT  (CODE)
                                    889 ;	./Source/task1.c:13: static bool flag=false;
      0000DC 90 10 B8         [24]  890 	mov	dptr,#_flag
      0000DF 74 00            [12]  891 	mov	a,#0x00
      0000E1 F0               [24]  892 	movx	@dptr,a
                                    893 ;--------------------------------------------------------
                                    894 ; Home
                                    895 ;--------------------------------------------------------
                                    896 	.area HOME    (CODE)
                                    897 	.area HOME    (CODE)
                                    898 ;--------------------------------------------------------
                                    899 ; code
                                    900 ;--------------------------------------------------------
                                    901 	.area CSEG    (CODE)
                                    902 ;------------------------------------------------------------
                                    903 ;Allocation info for local variables in function 'Task1_Init'
                                    904 ;------------------------------------------------------------
                                    905 ;task_id                   Allocated with name '_Task1_Init_task_id_1_65'
                                    906 ;------------------------------------------------------------
                                    907 ;	./Source/task1.c:15: void Task1_Init(uint8 task_id) {
                                    908 ;	-----------------------------------------
                                    909 ;	 function Task1_Init
                                    910 ;	-----------------------------------------
      003EF4                        911 _Task1_Init:
                           000007   912 	ar7 = 0x07
                           000006   913 	ar6 = 0x06
                           000005   914 	ar5 = 0x05
                           000004   915 	ar4 = 0x04
                           000003   916 	ar3 = 0x03
                           000002   917 	ar2 = 0x02
                           000001   918 	ar1 = 0x01
                           000000   919 	ar0 = 0x00
      003EF4 E5 82            [12]  920 	mov	a,dpl
      003EF6 90 10 B9         [24]  921 	mov	dptr,#_Task1_Init_task_id_1_65
      003EF9 F0               [24]  922 	movx	@dptr,a
                                    923 ;	./Source/task1.c:19: TaskID=task_id;
      003EFA E0               [24]  924 	movx	a,@dptr
      003EFB FF               [12]  925 	mov	r7,a
      003EFC 90 10 B7         [24]  926 	mov	dptr,#_TaskID
      003EFF EF               [12]  927 	mov	a,r7
      003F00 F0               [24]  928 	movx	@dptr,a
                                    929 ;	./Source/task1.c:24: osal_set_event( TaskID, T1_start );
      003F01 90 03 CB         [24]  930 	mov	dptr,#_osal_set_event_PARM_2
      003F04 74 01            [12]  931 	mov	a,#0x01
      003F06 F0               [24]  932 	movx	@dptr,a
      003F07 74 00            [12]  933 	mov	a,#0x00
      003F09 A3               [24]  934 	inc	dptr
      003F0A F0               [24]  935 	movx	@dptr,a
      003F0B 8F 82            [24]  936 	mov	dpl,r7
      003F0D 12 19 D8         [24]  937 	lcall	_osal_set_event
      003F10                        938 00101$:
      003F10 22               [24]  939 	ret
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'Task1_ProcessEvent'
                                    942 ;------------------------------------------------------------
                                    943 ;events                    Allocated to stack - _bp -4
                                    944 ;task_id                   Allocated to registers 
                                    945 ;------------------------------------------------------------
                                    946 ;	./Source/task1.c:36: uint16 Task1_ProcessEvent( uint8 task_id, uint16 events ) __reentrant{
                                    947 ;	-----------------------------------------
                                    948 ;	 function Task1_ProcessEvent
                                    949 ;	-----------------------------------------
      003F11                        950 _Task1_ProcessEvent:
      003F11 C0 1D            [24]  951 	push	_bp
      003F13 85 81 1D         [24]  952 	mov	_bp,sp
                                    953 ;	./Source/task1.c:41: if ( events & T1_start ){
      003F16 E5 1D            [12]  954 	mov	a,_bp
      003F18 24 FC            [12]  955 	add	a,#0xfc
      003F1A F8               [12]  956 	mov	r0,a
      003F1B E6               [12]  957 	mov	a,@r0
      003F1C 20 E0 03         [24]  958 	jb	acc.0,00115$
      003F1F 02 3F 57         [24]  959 	ljmp	00102$
      003F22                        960 00115$:
                                    961 ;	./Source/task1.c:47: osal_start_timerEx( TaskID, T1_PERIODIC_EVT, T1_PERIODIC_EVT_PERIOD );
      003F22 90 10 B7         [24]  962 	mov	dptr,#_TaskID
      003F25 E0               [24]  963 	movx	a,@dptr
      003F26 FF               [12]  964 	mov	r7,a
      003F27 90 10 3D         [24]  965 	mov	dptr,#_osal_start_timerEx_PARM_2
      003F2A 74 02            [12]  966 	mov	a,#0x02
      003F2C F0               [24]  967 	movx	@dptr,a
      003F2D 74 00            [12]  968 	mov	a,#0x00
      003F2F A3               [24]  969 	inc	dptr
      003F30 F0               [24]  970 	movx	@dptr,a
      003F31 90 10 3F         [24]  971 	mov	dptr,#_osal_start_timerEx_PARM_3
      003F34 74 64            [12]  972 	mov	a,#0x64
      003F36 F0               [24]  973 	movx	@dptr,a
      003F37 74 00            [12]  974 	mov	a,#0x00
      003F39 A3               [24]  975 	inc	dptr
      003F3A F0               [24]  976 	movx	@dptr,a
      003F3B A3               [24]  977 	inc	dptr
      003F3C F0               [24]  978 	movx	@dptr,a
      003F3D A3               [24]  979 	inc	dptr
      003F3E F0               [24]  980 	movx	@dptr,a
      003F3F 8F 82            [24]  981 	mov	dpl,r7
      003F41 12 27 54         [24]  982 	lcall	_osal_start_timerEx
                                    983 ;	./Source/task1.c:53: return ( events ^ T1_start );
      003F44 E5 1D            [12]  984 	mov	a,_bp
      003F46 24 FC            [12]  985 	add	a,#0xfc
      003F48 F8               [12]  986 	mov	r0,a
      003F49 74 01            [12]  987 	mov	a,#0x01
      003F4B 66               [12]  988 	xrl	a,@r0
      003F4C FE               [12]  989 	mov	r6,a
      003F4D 08               [12]  990 	inc	r0
      003F4E 86 07            [24]  991 	mov	ar7,@r0
      003F50 8E 82            [24]  992 	mov	dpl,r6
      003F52 8F 83            [24]  993 	mov	dph,r7
      003F54 02 3F A1         [24]  994 	ljmp	00107$
      003F57                        995 00102$:
                                    996 ;	./Source/task1.c:57: if( events & T1_PERIODIC_EVT ){
      003F57 E5 1D            [12]  997 	mov	a,_bp
      003F59 24 FC            [12]  998 	add	a,#0xfc
      003F5B F8               [12]  999 	mov	r0,a
      003F5C E6               [12] 1000 	mov	a,@r0
      003F5D 20 E1 03         [24] 1001 	jb	acc.1,00116$
      003F60 02 3F 9B         [24] 1002 	ljmp	00106$
      003F63                       1003 00116$:
                                   1004 ;	./Source/task1.c:65: osal_start_timerEx( TaskID, T1_PERIODIC_EVT, T1_PERIODIC_EVT_PERIOD );
      003F63 90 10 B7         [24] 1005 	mov	dptr,#_TaskID
      003F66 E0               [24] 1006 	movx	a,@dptr
      003F67 FF               [12] 1007 	mov	r7,a
      003F68 90 10 3D         [24] 1008 	mov	dptr,#_osal_start_timerEx_PARM_2
      003F6B 74 02            [12] 1009 	mov	a,#0x02
      003F6D F0               [24] 1010 	movx	@dptr,a
      003F6E 74 00            [12] 1011 	mov	a,#0x00
      003F70 A3               [24] 1012 	inc	dptr
      003F71 F0               [24] 1013 	movx	@dptr,a
      003F72 90 10 3F         [24] 1014 	mov	dptr,#_osal_start_timerEx_PARM_3
      003F75 74 64            [12] 1015 	mov	a,#0x64
      003F77 F0               [24] 1016 	movx	@dptr,a
      003F78 74 00            [12] 1017 	mov	a,#0x00
      003F7A A3               [24] 1018 	inc	dptr
      003F7B F0               [24] 1019 	movx	@dptr,a
      003F7C A3               [24] 1020 	inc	dptr
      003F7D F0               [24] 1021 	movx	@dptr,a
      003F7E A3               [24] 1022 	inc	dptr
      003F7F F0               [24] 1023 	movx	@dptr,a
      003F80 8F 82            [24] 1024 	mov	dpl,r7
      003F82 12 27 54         [24] 1025 	lcall	_osal_start_timerEx
                                   1026 ;	./Source/task1.c:70: performPeriodicTask();
      003F85 12 3F A4         [24] 1027 	lcall	_performPeriodicTask
                                   1028 ;	./Source/task1.c:75: return( events ^ T1_PERIODIC_EVT);
      003F88 E5 1D            [12] 1029 	mov	a,_bp
      003F8A 24 FC            [12] 1030 	add	a,#0xfc
      003F8C F8               [12] 1031 	mov	r0,a
      003F8D 74 02            [12] 1032 	mov	a,#0x02
      003F8F 66               [12] 1033 	xrl	a,@r0
      003F90 FE               [12] 1034 	mov	r6,a
      003F91 08               [12] 1035 	inc	r0
      003F92 86 07            [24] 1036 	mov	ar7,@r0
      003F94 8E 82            [24] 1037 	mov	dpl,r6
      003F96 8F 83            [24] 1038 	mov	dph,r7
      003F98 02 3F A1         [24] 1039 	ljmp	00107$
      003F9B                       1040 00106$:
                                   1041 ;	./Source/task1.c:83: return 0;
      003F9B 75 82 00         [24] 1042 	mov	dpl,#0x00
      003F9E 75 83 00         [24] 1043 	mov	dph,#0x00
      003FA1                       1044 00107$:
      003FA1 D0 1D            [24] 1045 	pop	_bp
      003FA3 22               [24] 1046 	ret
                                   1047 ;------------------------------------------------------------
                                   1048 ;Allocation info for local variables in function 'performPeriodicTask'
                                   1049 ;------------------------------------------------------------
                                   1050 ;sloc0                     Allocated with name '_performPeriodicTask_sloc0_1_0'
                                   1051 ;------------------------------------------------------------
                                   1052 ;	./Source/task1.c:91: static void performPeriodicTask( void ){
                                   1053 ;	-----------------------------------------
                                   1054 ;	 function performPeriodicTask
                                   1055 ;	-----------------------------------------
      003FA4                       1056 _performPeriodicTask:
                                   1057 ;	./Source/task1.c:104: if(flag==true){
      003FA4 90 10 B8         [24] 1058 	mov	dptr,#_flag
      003FA7 E0               [24] 1059 	movx	a,@dptr
      003FA8 FF               [12] 1060 	mov	r7,a
      003FA9 BF 01 02         [24] 1061 	cjne	r7,#0x01,00109$
      003FAC 80 03            [24] 1062 	sjmp	00110$
      003FAE                       1063 00109$:
      003FAE 02 3F C9         [24] 1064 	ljmp	00102$
      003FB1                       1065 00110$:
                                   1066 ;	./Source/task1.c:106: flag=false;
      003FB1 90 10 B8         [24] 1067 	mov	dptr,#_flag
      003FB4 74 00            [12] 1068 	mov	a,#0x00
      003FB6 F0               [24] 1069 	movx	@dptr,a
                                   1070 ;	./Source/task1.c:107: P0_0|=0x01;
      003FB7 90 10 BA         [24] 1071 	mov	dptr,#_performPeriodicTask_sloc0_1_0
      003FBA 04               [12] 1072 	inc	a
      003FBB F0               [24] 1073 	movx	@dptr,a
      003FBC A2 80            [12] 1074 	mov	c,_P0_0
      003FBE 90 10 BA         [24] 1075 	mov	dptr,#_performPeriodicTask_sloc0_1_0
      003FC1 E0               [24] 1076 	movx	a,@dptr
      003FC2 24 FF            [12] 1077 	add	a,#0xff
      003FC4 92 80            [24] 1078 	mov	_P0_0,c
      003FC6 02 3F DF         [24] 1079 	ljmp	00104$
      003FC9                       1080 00102$:
                                   1081 ;	./Source/task1.c:116: flag=true;
      003FC9 90 10 B8         [24] 1082 	mov	dptr,#_flag
      003FCC 74 01            [12] 1083 	mov	a,#0x01
      003FCE F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	./Source/task1.c:117: P0_0&=~0x01;
      003FCF 90 10 BA         [24] 1086 	mov	dptr,#_performPeriodicTask_sloc0_1_0
      003FD2 74 00            [12] 1087 	mov	a,#0x00
      003FD4 F0               [24] 1088 	movx	@dptr,a
      003FD5 A2 80            [12] 1089 	mov	c,_P0_0
      003FD7 90 10 BA         [24] 1090 	mov	dptr,#_performPeriodicTask_sloc0_1_0
      003FDA E0               [24] 1091 	movx	a,@dptr
      003FDB 24 FF            [12] 1092 	add	a,#0xff
      003FDD 92 80            [24] 1093 	mov	_P0_0,c
      003FDF                       1094 00104$:
      003FDF 22               [24] 1095 	ret
                                   1096 	.area CSEG    (CODE)
                                   1097 	.area CONST   (CODE)
                                   1098 	.area CABS    (ABS,CODE)
