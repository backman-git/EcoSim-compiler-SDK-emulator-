                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module hal_led
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _MODE
                                     13 	.globl _RE
                                     14 	.globl _SLAVE
                                     15 	.globl _FE
                                     16 	.globl _ERR
                                     17 	.globl _RX_BYTE
                                     18 	.globl _TX_BYTE
                                     19 	.globl _ACTIVE
                                     20 	.globl _B_7
                                     21 	.globl _B_6
                                     22 	.globl _B_5
                                     23 	.globl _B_4
                                     24 	.globl _B_3
                                     25 	.globl _B_2
                                     26 	.globl _B_1
                                     27 	.globl _B_0
                                     28 	.globl _WDTIF
                                     29 	.globl _P1IF
                                     30 	.globl _UTX1IF
                                     31 	.globl _UTX0IF
                                     32 	.globl _P2IF
                                     33 	.globl _ACC_7
                                     34 	.globl _ACC_6
                                     35 	.globl _ACC_5
                                     36 	.globl _ACC_4
                                     37 	.globl _ACC_3
                                     38 	.globl _ACC_2
                                     39 	.globl _ACC_1
                                     40 	.globl _ACC_0
                                     41 	.globl _OVFIM
                                     42 	.globl _T4CH1IF
                                     43 	.globl _T4CH0IF
                                     44 	.globl _T4OVFIF
                                     45 	.globl _T3CH1IF
                                     46 	.globl _T3CH0IF
                                     47 	.globl _T3OVFIF
                                     48 	.globl _CY
                                     49 	.globl _AC
                                     50 	.globl _F0
                                     51 	.globl _RS1
                                     52 	.globl _RS0
                                     53 	.globl _OV
                                     54 	.globl _F1
                                     55 	.globl _P
                                     56 	.globl _STIF
                                     57 	.globl _P0IF
                                     58 	.globl _T4IF
                                     59 	.globl _T3IF
                                     60 	.globl _T2IF
                                     61 	.globl _T1IF
                                     62 	.globl _DMAIF
                                     63 	.globl _P0IE
                                     64 	.globl _T4IE
                                     65 	.globl _T3IE
                                     66 	.globl _T2IE
                                     67 	.globl _T1IE
                                     68 	.globl _DMAIE
                                     69 	.globl _EA
                                     70 	.globl _STIE
                                     71 	.globl _ENCIE
                                     72 	.globl _URX1IE
                                     73 	.globl _URX0IE
                                     74 	.globl _ADCIE
                                     75 	.globl _RFERRIE
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _ENCIF_1
                                     85 	.globl _ENCIF_0
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _URX1IF
                                     95 	.globl _ADCIF
                                     96 	.globl _URX0IF
                                     97 	.globl _IT1
                                     98 	.globl _RFERRIF
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _P2DIR
                                    109 	.globl _P1DIR
                                    110 	.globl _P0DIR
                                    111 	.globl _U1GCR
                                    112 	.globl _U1UCR
                                    113 	.globl _U1BAUD
                                    114 	.globl _U1DBUF
                                    115 	.globl _U1CSR
                                    116 	.globl _P2INP
                                    117 	.globl _P1INP
                                    118 	.globl _P2SEL
                                    119 	.globl _P1SEL
                                    120 	.globl _P0SEL
                                    121 	.globl _APCFG
                                    122 	.globl _PERCFG
                                    123 	.globl _B
                                    124 	.globl _T4CC1
                                    125 	.globl _T4CCTL1
                                    126 	.globl _T4CC0
                                    127 	.globl _T4CCTL0
                                    128 	.globl _T4CTL
                                    129 	.globl _T4CNT
                                    130 	.globl _RFIRQF0
                                    131 	.globl _IRCON2
                                    132 	.globl _T1CCTL2
                                    133 	.globl _T1CCTL1
                                    134 	.globl _T1CCTL0
                                    135 	.globl _T1CTL
                                    136 	.globl _T1CNTH
                                    137 	.globl _T1CNTL
                                    138 	.globl _RFST
                                    139 	.globl _ACC
                                    140 	.globl _T1CC2H
                                    141 	.globl _T1CC2L
                                    142 	.globl _T1CC1H
                                    143 	.globl _T1CC1L
                                    144 	.globl _T1CC0H
                                    145 	.globl _T1CC0L
                                    146 	.globl _RFD
                                    147 	.globl _TIMIF
                                    148 	.globl _DMAREQ
                                    149 	.globl _DMAARM
                                    150 	.globl _DMA0CFGH
                                    151 	.globl _DMA0CFGL
                                    152 	.globl _DMA1CFGH
                                    153 	.globl _DMA1CFGL
                                    154 	.globl _DMAIRQ
                                    155 	.globl _PSW
                                    156 	.globl _T3CC1
                                    157 	.globl _T3CCTL1
                                    158 	.globl _T3CC0
                                    159 	.globl _T3CCTL0
                                    160 	.globl _T3CTL
                                    161 	.globl _T3CNT
                                    162 	.globl _WDCTL
                                    163 	.globl _MEMCTR
                                    164 	.globl _CLKCONCMD
                                    165 	.globl _U0GCR
                                    166 	.globl _U0UCR
                                    167 	.globl _T2MSEL
                                    168 	.globl _U0BAUD
                                    169 	.globl _U0DBUF
                                    170 	.globl _IRCON
                                    171 	.globl _RFERRF
                                    172 	.globl _SLEEPCMD
                                    173 	.globl _RNDH
                                    174 	.globl _RNDL
                                    175 	.globl _ADCH
                                    176 	.globl _ADCL
                                    177 	.globl _IP1
                                    178 	.globl _IEN1
                                    179 	.globl _ADCCON3
                                    180 	.globl _ADCCON2
                                    181 	.globl _ADCCON1
                                    182 	.globl _ENCCS
                                    183 	.globl _ENCDO
                                    184 	.globl _ENCDI
                                    185 	.globl _T1STAT
                                    186 	.globl _PMUX
                                    187 	.globl _STLOAD
                                    188 	.globl _P2IEN
                                    189 	.globl _P0IEN
                                    190 	.globl _IP0
                                    191 	.globl _IEN0
                                    192 	.globl _T2IRQM
                                    193 	.globl _T2MOVF2
                                    194 	.globl _T2MOVF1
                                    195 	.globl _T2MOVF0
                                    196 	.globl _T2M1
                                    197 	.globl _T2M0
                                    198 	.globl _T2IRQF
                                    199 	.globl _P2
                                    200 	.globl _FMAP
                                    201 	.globl _PSBANK
                                    202 	.globl _CLKCONSTA
                                    203 	.globl _SLEEPSTA
                                    204 	.globl _T2EVTCFG
                                    205 	.globl _S1CON
                                    206 	.globl _IEN2
                                    207 	.globl _S0CON
                                    208 	.globl _ST2
                                    209 	.globl _ST1
                                    210 	.globl _ST0
                                    211 	.globl _T2CTRL
                                    212 	.globl __XPAGE
                                    213 	.globl _MPAGE
                                    214 	.globl _DPS
                                    215 	.globl _RFIRQF1
                                    216 	.globl _P1
                                    217 	.globl _P0INP
                                    218 	.globl _P1IEN
                                    219 	.globl _PICTL
                                    220 	.globl _P2IFG
                                    221 	.globl _P1IFG
                                    222 	.globl _P0IFG
                                    223 	.globl _TCON
                                    224 	.globl _PCON
                                    225 	.globl _U0CSR
                                    226 	.globl _DPH1
                                    227 	.globl _DPL1
                                    228 	.globl _DPH0
                                    229 	.globl _DPL0
                                    230 	.globl _SP
                                    231 	.globl _P0
                                    232 	.globl _HalLedSet_PARM_2
                                    233 	.globl _TXFILTCFG
                                    234 	.globl _RFC_OBS_CTRL2
                                    235 	.globl _RFC_OBS_CTRL1
                                    236 	.globl _RFC_OBS_CTRL0
                                    237 	.globl _CSPT
                                    238 	.globl _CSPZ
                                    239 	.globl _CSPY
                                    240 	.globl _CSPX
                                    241 	.globl _CSPSTAT
                                    242 	.globl _CSPCTRL
                                    243 	.globl _CSPPROG23
                                    244 	.globl _CSPPROG22
                                    245 	.globl _CSPPROG21
                                    246 	.globl _CSPPROG20
                                    247 	.globl _CSPPROG19
                                    248 	.globl _CSPPROG18
                                    249 	.globl _CSPPROG17
                                    250 	.globl _CSPPROG16
                                    251 	.globl _CSPPROG15
                                    252 	.globl _CSPPROG14
                                    253 	.globl _CSPPROG13
                                    254 	.globl _CSPPROG12
                                    255 	.globl _CSPPROG11
                                    256 	.globl _CSPPROG10
                                    257 	.globl _CSPPROG9
                                    258 	.globl _CSPPROG8
                                    259 	.globl _CSPPROG7
                                    260 	.globl _CSPPROG6
                                    261 	.globl _CSPPROG5
                                    262 	.globl _CSPPROG4
                                    263 	.globl _CSPPROG3
                                    264 	.globl _CSPPROG2
                                    265 	.globl _CSPPROG1
                                    266 	.globl _CSPPROG0
                                    267 	.globl _PTEST1
                                    268 	.globl _PTEST0
                                    269 	.globl _ATEST
                                    270 	.globl _DACTEST2
                                    271 	.globl _DACTEST1
                                    272 	.globl _DACTEST0
                                    273 	.globl _MDMTEST1
                                    274 	.globl _MDMTEST0
                                    275 	.globl _ADCTEST2
                                    276 	.globl _ADCTEST1
                                    277 	.globl _ADCTEST0
                                    278 	.globl _AGCCTRL3
                                    279 	.globl _AGCCTRL2
                                    280 	.globl _AGCCTRL1
                                    281 	.globl _AGCCTRL0
                                    282 	.globl _FSCAL3
                                    283 	.globl _FSCAL2
                                    284 	.globl _FSCAL1
                                    285 	.globl _FSCTRL
                                    286 	.globl _RXCTRL
                                    287 	.globl _FREQEST
                                    288 	.globl _MDMCTRL1
                                    289 	.globl _MDMCTRL0
                                    290 	.globl _RFRND
                                    291 	.globl _OPAMPMC
                                    292 	.globl _RFERRM
                                    293 	.globl _RFIRQM1
                                    294 	.globl _RFIRQM0
                                    295 	.globl _TXLAST_PTR
                                    296 	.globl _TXFIRST_PTR
                                    297 	.globl _RXP1_PTR
                                    298 	.globl _RXLAST_PTR
                                    299 	.globl _RXFIRST_PTR
                                    300 	.globl _TXFIFOCNT
                                    301 	.globl _RXFIFOCNT
                                    302 	.globl _RXFIRST
                                    303 	.globl _RSSISTAT
                                    304 	.globl _RSSI
                                    305 	.globl _CCACTRL1
                                    306 	.globl _CCACTRL0
                                    307 	.globl _FSMCTRL
                                    308 	.globl _FIFOPCTRL
                                    309 	.globl _FSMSTAT1
                                    310 	.globl _FSMSTAT0
                                    311 	.globl _TXCTRL
                                    312 	.globl _TXPOWER
                                    313 	.globl _FREQCTRL
                                    314 	.globl _FREQTUNE
                                    315 	.globl _RXMASKCLR
                                    316 	.globl _RXMASKSET
                                    317 	.globl _RXENABLE
                                    318 	.globl _FRMCTRL1
                                    319 	.globl _FRMCTRL0
                                    320 	.globl _SRCEXTEN2
                                    321 	.globl _SRCEXTEN1
                                    322 	.globl _SRCEXTEN0
                                    323 	.globl _SRCSHORTEN2
                                    324 	.globl _SRCSHORTEN1
                                    325 	.globl _SRCSHORTEN0
                                    326 	.globl _SRCMATCH
                                    327 	.globl _FRMFILT1
                                    328 	.globl _FRMFILT0
                                    329 	.globl _IEEE_ADDR
                                    330 	.globl _PANIDL
                                    331 	.globl _PANIDH
                                    332 	.globl _SHORTADDRL
                                    333 	.globl _SHORTADDRH
                                    334 	.globl _USBF5
                                    335 	.globl _USBF4
                                    336 	.globl _USBF3
                                    337 	.globl _USBF2
                                    338 	.globl _USBF1
                                    339 	.globl _USBF0
                                    340 	.globl _USBCNTH
                                    341 	.globl _USBCNTL
                                    342 	.globl _USBCNT0
                                    343 	.globl _USBCSOH
                                    344 	.globl _USBCSOL
                                    345 	.globl _USBMAXO
                                    346 	.globl _USBCSIH
                                    347 	.globl _USBCSIL
                                    348 	.globl _USBCS0
                                    349 	.globl _USBMAXI
                                    350 	.globl _USBCTRL
                                    351 	.globl _USBINDEX
                                    352 	.globl _USBFRMH
                                    353 	.globl _USBFRML
                                    354 	.globl _USBCIE
                                    355 	.globl _USBOIE
                                    356 	.globl _USBIIE
                                    357 	.globl _USBCIF
                                    358 	.globl _USBOIF
                                    359 	.globl _USBIIF
                                    360 	.globl _USBPOW
                                    361 	.globl _USBADDR
                                    362 	.globl _CMPCTL
                                    363 	.globl _OPAMPS
                                    364 	.globl _OPAMPC
                                    365 	.globl _STCV2
                                    366 	.globl _STCV1
                                    367 	.globl _STCV0
                                    368 	.globl _STCS
                                    369 	.globl _STCC
                                    370 	.globl _T1CC4H
                                    371 	.globl _T1CC4L
                                    372 	.globl _T1CC3H
                                    373 	.globl _T1CC3L
                                    374 	.globl _X_T1CC2H
                                    375 	.globl _X_T1CC2L
                                    376 	.globl _X_T1CC1H
                                    377 	.globl _X_T1CC1L
                                    378 	.globl _X_T1CC0H
                                    379 	.globl _X_T1CC0L
                                    380 	.globl _T1CCTL4
                                    381 	.globl _T1CCTL3
                                    382 	.globl _X_T1CCTL2
                                    383 	.globl _X_T1CCTL1
                                    384 	.globl _X_T1CCTL0
                                    385 	.globl _CLD
                                    386 	.globl _IRCTL
                                    387 	.globl _CHIPINFO1
                                    388 	.globl _CHIPINFO0
                                    389 	.globl _FWDATA
                                    390 	.globl _FADDRH
                                    391 	.globl _FADDRL
                                    392 	.globl _FCTL
                                    393 	.globl _IVCTRL
                                    394 	.globl _BATTMON
                                    395 	.globl _SRCRC
                                    396 	.globl _DBGDATA
                                    397 	.globl _TESTREG0
                                    398 	.globl _CHIPID
                                    399 	.globl _CHVER
                                    400 	.globl _OBSSEL5
                                    401 	.globl _OBSSEL4
                                    402 	.globl _OBSSEL3
                                    403 	.globl _OBSSEL2
                                    404 	.globl _OBSSEL1
                                    405 	.globl _OBSSEL0
                                    406 	.globl _I2CIO
                                    407 	.globl _I2CWC
                                    408 	.globl _I2CADDR
                                    409 	.globl _I2CDATA
                                    410 	.globl _I2CSTAT
                                    411 	.globl _I2CCFG
                                    412 	.globl _HalLedSet
                                    413 ;--------------------------------------------------------
                                    414 ; special function registers
                                    415 ;--------------------------------------------------------
                                    416 	.area RSEG    (ABS,DATA)
      000000                        417 	.org 0x0000
                           000080   418 _P0	=	0x0080
                           000081   419 _SP	=	0x0081
                           000082   420 _DPL0	=	0x0082
                           000083   421 _DPH0	=	0x0083
                           000084   422 _DPL1	=	0x0084
                           000085   423 _DPH1	=	0x0085
                           000086   424 _U0CSR	=	0x0086
                           000087   425 _PCON	=	0x0087
                           000088   426 _TCON	=	0x0088
                           000089   427 _P0IFG	=	0x0089
                           00008A   428 _P1IFG	=	0x008a
                           00008B   429 _P2IFG	=	0x008b
                           00008C   430 _PICTL	=	0x008c
                           00008D   431 _P1IEN	=	0x008d
                           00008F   432 _P0INP	=	0x008f
                           000090   433 _P1	=	0x0090
                           000091   434 _RFIRQF1	=	0x0091
                           000092   435 _DPS	=	0x0092
                           000093   436 _MPAGE	=	0x0093
                           000093   437 __XPAGE	=	0x0093
                           000094   438 _T2CTRL	=	0x0094
                           000095   439 _ST0	=	0x0095
                           000096   440 _ST1	=	0x0096
                           000097   441 _ST2	=	0x0097
                           000098   442 _S0CON	=	0x0098
                           00009A   443 _IEN2	=	0x009a
                           00009B   444 _S1CON	=	0x009b
                           00009C   445 _T2EVTCFG	=	0x009c
                           00009D   446 _SLEEPSTA	=	0x009d
                           00009E   447 _CLKCONSTA	=	0x009e
                           00009F   448 _PSBANK	=	0x009f
                           00009F   449 _FMAP	=	0x009f
                           0000A0   450 _P2	=	0x00a0
                           0000A1   451 _T2IRQF	=	0x00a1
                           0000A2   452 _T2M0	=	0x00a2
                           0000A3   453 _T2M1	=	0x00a3
                           0000A4   454 _T2MOVF0	=	0x00a4
                           0000A5   455 _T2MOVF1	=	0x00a5
                           0000A6   456 _T2MOVF2	=	0x00a6
                           0000A7   457 _T2IRQM	=	0x00a7
                           0000A8   458 _IEN0	=	0x00a8
                           0000A9   459 _IP0	=	0x00a9
                           0000AB   460 _P0IEN	=	0x00ab
                           0000AC   461 _P2IEN	=	0x00ac
                           0000AD   462 _STLOAD	=	0x00ad
                           0000AE   463 _PMUX	=	0x00ae
                           0000AF   464 _T1STAT	=	0x00af
                           0000B1   465 _ENCDI	=	0x00b1
                           0000B2   466 _ENCDO	=	0x00b2
                           0000B3   467 _ENCCS	=	0x00b3
                           0000B4   468 _ADCCON1	=	0x00b4
                           0000B5   469 _ADCCON2	=	0x00b5
                           0000B6   470 _ADCCON3	=	0x00b6
                           0000B8   471 _IEN1	=	0x00b8
                           0000B9   472 _IP1	=	0x00b9
                           0000BA   473 _ADCL	=	0x00ba
                           0000BB   474 _ADCH	=	0x00bb
                           0000BC   475 _RNDL	=	0x00bc
                           0000BD   476 _RNDH	=	0x00bd
                           0000BE   477 _SLEEPCMD	=	0x00be
                           0000BF   478 _RFERRF	=	0x00bf
                           0000C0   479 _IRCON	=	0x00c0
                           0000C1   480 _U0DBUF	=	0x00c1
                           0000C2   481 _U0BAUD	=	0x00c2
                           0000C3   482 _T2MSEL	=	0x00c3
                           0000C4   483 _U0UCR	=	0x00c4
                           0000C5   484 _U0GCR	=	0x00c5
                           0000C6   485 _CLKCONCMD	=	0x00c6
                           0000C7   486 _MEMCTR	=	0x00c7
                           0000C9   487 _WDCTL	=	0x00c9
                           0000CA   488 _T3CNT	=	0x00ca
                           0000CB   489 _T3CTL	=	0x00cb
                           0000CC   490 _T3CCTL0	=	0x00cc
                           0000CD   491 _T3CC0	=	0x00cd
                           0000CE   492 _T3CCTL1	=	0x00ce
                           0000CF   493 _T3CC1	=	0x00cf
                           0000D0   494 _PSW	=	0x00d0
                           0000D1   495 _DMAIRQ	=	0x00d1
                           0000D2   496 _DMA1CFGL	=	0x00d2
                           0000D3   497 _DMA1CFGH	=	0x00d3
                           0000D4   498 _DMA0CFGL	=	0x00d4
                           0000D5   499 _DMA0CFGH	=	0x00d5
                           0000D6   500 _DMAARM	=	0x00d6
                           0000D7   501 _DMAREQ	=	0x00d7
                           0000D8   502 _TIMIF	=	0x00d8
                           0000D9   503 _RFD	=	0x00d9
                           0000DA   504 _T1CC0L	=	0x00da
                           0000DB   505 _T1CC0H	=	0x00db
                           0000DC   506 _T1CC1L	=	0x00dc
                           0000DD   507 _T1CC1H	=	0x00dd
                           0000DE   508 _T1CC2L	=	0x00de
                           0000DF   509 _T1CC2H	=	0x00df
                           0000E0   510 _ACC	=	0x00e0
                           0000E1   511 _RFST	=	0x00e1
                           0000E2   512 _T1CNTL	=	0x00e2
                           0000E3   513 _T1CNTH	=	0x00e3
                           0000E4   514 _T1CTL	=	0x00e4
                           0000E5   515 _T1CCTL0	=	0x00e5
                           0000E6   516 _T1CCTL1	=	0x00e6
                           0000E7   517 _T1CCTL2	=	0x00e7
                           0000E8   518 _IRCON2	=	0x00e8
                           0000E9   519 _RFIRQF0	=	0x00e9
                           0000EA   520 _T4CNT	=	0x00ea
                           0000EB   521 _T4CTL	=	0x00eb
                           0000EC   522 _T4CCTL0	=	0x00ec
                           0000ED   523 _T4CC0	=	0x00ed
                           0000EE   524 _T4CCTL1	=	0x00ee
                           0000EF   525 _T4CC1	=	0x00ef
                           0000F0   526 _B	=	0x00f0
                           0000F1   527 _PERCFG	=	0x00f1
                           0000F2   528 _APCFG	=	0x00f2
                           0000F3   529 _P0SEL	=	0x00f3
                           0000F4   530 _P1SEL	=	0x00f4
                           0000F5   531 _P2SEL	=	0x00f5
                           0000F6   532 _P1INP	=	0x00f6
                           0000F7   533 _P2INP	=	0x00f7
                           0000F8   534 _U1CSR	=	0x00f8
                           0000F9   535 _U1DBUF	=	0x00f9
                           0000FA   536 _U1BAUD	=	0x00fa
                           0000FB   537 _U1UCR	=	0x00fb
                           0000FC   538 _U1GCR	=	0x00fc
                           0000FD   539 _P0DIR	=	0x00fd
                           0000FE   540 _P1DIR	=	0x00fe
                           0000FF   541 _P2DIR	=	0x00ff
                                    542 ;--------------------------------------------------------
                                    543 ; special function bits
                                    544 ;--------------------------------------------------------
                                    545 	.area RSEG    (ABS,DATA)
      000000                        546 	.org 0x0000
                           000080   547 _P0_0	=	0x0080
                           000081   548 _P0_1	=	0x0081
                           000082   549 _P0_2	=	0x0082
                           000083   550 _P0_3	=	0x0083
                           000084   551 _P0_4	=	0x0084
                           000085   552 _P0_5	=	0x0085
                           000086   553 _P0_6	=	0x0086
                           000087   554 _P0_7	=	0x0087
                           000088   555 _IT0	=	0x0088
                           000089   556 _RFERRIF	=	0x0089
                           00008A   557 _IT1	=	0x008a
                           00008B   558 _URX0IF	=	0x008b
                           00008D   559 _ADCIF	=	0x008d
                           00008F   560 _URX1IF	=	0x008f
                           000090   561 _P1_0	=	0x0090
                           000091   562 _P1_1	=	0x0091
                           000092   563 _P1_2	=	0x0092
                           000093   564 _P1_3	=	0x0093
                           000094   565 _P1_4	=	0x0094
                           000095   566 _P1_5	=	0x0095
                           000096   567 _P1_6	=	0x0096
                           000097   568 _P1_7	=	0x0097
                           000098   569 _ENCIF_0	=	0x0098
                           000099   570 _ENCIF_1	=	0x0099
                           0000A0   571 _P2_0	=	0x00a0
                           0000A1   572 _P2_1	=	0x00a1
                           0000A2   573 _P2_2	=	0x00a2
                           0000A3   574 _P2_3	=	0x00a3
                           0000A4   575 _P2_4	=	0x00a4
                           0000A5   576 _P2_5	=	0x00a5
                           0000A6   577 _P2_6	=	0x00a6
                           0000A7   578 _P2_7	=	0x00a7
                           0000A8   579 _RFERRIE	=	0x00a8
                           0000A9   580 _ADCIE	=	0x00a9
                           0000AA   581 _URX0IE	=	0x00aa
                           0000AB   582 _URX1IE	=	0x00ab
                           0000AC   583 _ENCIE	=	0x00ac
                           0000AD   584 _STIE	=	0x00ad
                           0000AF   585 _EA	=	0x00af
                           0000B8   586 _DMAIE	=	0x00b8
                           0000B9   587 _T1IE	=	0x00b9
                           0000BA   588 _T2IE	=	0x00ba
                           0000BB   589 _T3IE	=	0x00bb
                           0000BC   590 _T4IE	=	0x00bc
                           0000BD   591 _P0IE	=	0x00bd
                           0000C0   592 _DMAIF	=	0x00c0
                           0000C1   593 _T1IF	=	0x00c1
                           0000C2   594 _T2IF	=	0x00c2
                           0000C3   595 _T3IF	=	0x00c3
                           0000C4   596 _T4IF	=	0x00c4
                           0000C5   597 _P0IF	=	0x00c5
                           0000C7   598 _STIF	=	0x00c7
                           0000D0   599 _P	=	0x00d0
                           0000D1   600 _F1	=	0x00d1
                           0000D2   601 _OV	=	0x00d2
                           0000D3   602 _RS0	=	0x00d3
                           0000D4   603 _RS1	=	0x00d4
                           0000D5   604 _F0	=	0x00d5
                           0000D6   605 _AC	=	0x00d6
                           0000D7   606 _CY	=	0x00d7
                           0000D8   607 _T3OVFIF	=	0x00d8
                           0000D9   608 _T3CH0IF	=	0x00d9
                           0000DA   609 _T3CH1IF	=	0x00da
                           0000DB   610 _T4OVFIF	=	0x00db
                           0000DC   611 _T4CH0IF	=	0x00dc
                           0000DD   612 _T4CH1IF	=	0x00dd
                           0000DE   613 _OVFIM	=	0x00de
                           0000E0   614 _ACC_0	=	0x00e0
                           0000E1   615 _ACC_1	=	0x00e1
                           0000E2   616 _ACC_2	=	0x00e2
                           0000E3   617 _ACC_3	=	0x00e3
                           0000E4   618 _ACC_4	=	0x00e4
                           0000E5   619 _ACC_5	=	0x00e5
                           0000E6   620 _ACC_6	=	0x00e6
                           0000E7   621 _ACC_7	=	0x00e7
                           0000E8   622 _P2IF	=	0x00e8
                           0000E9   623 _UTX0IF	=	0x00e9
                           0000EA   624 _UTX1IF	=	0x00ea
                           0000EB   625 _P1IF	=	0x00eb
                           0000EC   626 _WDTIF	=	0x00ec
                           0000F0   627 _B_0	=	0x00f0
                           0000F1   628 _B_1	=	0x00f1
                           0000F2   629 _B_2	=	0x00f2
                           0000F3   630 _B_3	=	0x00f3
                           0000F4   631 _B_4	=	0x00f4
                           0000F5   632 _B_5	=	0x00f5
                           0000F6   633 _B_6	=	0x00f6
                           0000F7   634 _B_7	=	0x00f7
                           0000F8   635 _ACTIVE	=	0x00f8
                           0000F9   636 _TX_BYTE	=	0x00f9
                           0000FA   637 _RX_BYTE	=	0x00fa
                           0000FB   638 _ERR	=	0x00fb
                           0000FC   639 _FE	=	0x00fc
                           0000FD   640 _SLAVE	=	0x00fd
                           0000FE   641 _RE	=	0x00fe
                           0000FF   642 _MODE	=	0x00ff
                                    643 ;--------------------------------------------------------
                                    644 ; overlayable register banks
                                    645 ;--------------------------------------------------------
                                    646 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        647 	.ds 8
                                    648 ;--------------------------------------------------------
                                    649 ; internal ram data
                                    650 ;--------------------------------------------------------
                                    651 	.area DSEG    (DATA)
                                    652 ;--------------------------------------------------------
                                    653 ; overlayable items in internal ram 
                                    654 ;--------------------------------------------------------
                                    655 ;--------------------------------------------------------
                                    656 ; indirectly addressable internal ram data
                                    657 ;--------------------------------------------------------
                                    658 	.area ISEG    (DATA)
                                    659 ;--------------------------------------------------------
                                    660 ; absolute internal ram data
                                    661 ;--------------------------------------------------------
                                    662 	.area IABS    (ABS,DATA)
                                    663 	.area IABS    (ABS,DATA)
                                    664 ;--------------------------------------------------------
                                    665 ; bit data
                                    666 ;--------------------------------------------------------
                                    667 	.area BSEG    (BIT)
                                    668 ;--------------------------------------------------------
                                    669 ; paged external ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area PSEG    (PAG,XDATA)
                                    672 ;--------------------------------------------------------
                                    673 ; external ram data
                                    674 ;--------------------------------------------------------
                                    675 	.area XSEG    (XDATA)
                           006230   676 _I2CCFG	=	0x6230
                           006231   677 _I2CSTAT	=	0x6231
                           006232   678 _I2CDATA	=	0x6232
                           006233   679 _I2CADDR	=	0x6233
                           006234   680 _I2CWC	=	0x6234
                           006235   681 _I2CIO	=	0x6235
                           006243   682 _OBSSEL0	=	0x6243
                           006244   683 _OBSSEL1	=	0x6244
                           006245   684 _OBSSEL2	=	0x6245
                           006246   685 _OBSSEL3	=	0x6246
                           006247   686 _OBSSEL4	=	0x6247
                           006248   687 _OBSSEL5	=	0x6248
                           006249   688 _CHVER	=	0x6249
                           00624A   689 _CHIPID	=	0x624a
                           00624B   690 _TESTREG0	=	0x624b
                           006260   691 _DBGDATA	=	0x6260
                           006262   692 _SRCRC	=	0x6262
                           006264   693 _BATTMON	=	0x6264
                           006265   694 _IVCTRL	=	0x6265
                           006270   695 _FCTL	=	0x6270
                           006271   696 _FADDRL	=	0x6271
                           006272   697 _FADDRH	=	0x6272
                           006273   698 _FWDATA	=	0x6273
                           006276   699 _CHIPINFO0	=	0x6276
                           006277   700 _CHIPINFO1	=	0x6277
                           006281   701 _IRCTL	=	0x6281
                           006290   702 _CLD	=	0x6290
                           0062A0   703 _X_T1CCTL0	=	0x62a0
                           0062A1   704 _X_T1CCTL1	=	0x62a1
                           0062A2   705 _X_T1CCTL2	=	0x62a2
                           0062A3   706 _T1CCTL3	=	0x62a3
                           0062A4   707 _T1CCTL4	=	0x62a4
                           0062A6   708 _X_T1CC0L	=	0x62a6
                           0062A7   709 _X_T1CC0H	=	0x62a7
                           0062A8   710 _X_T1CC1L	=	0x62a8
                           0062A9   711 _X_T1CC1H	=	0x62a9
                           0062AA   712 _X_T1CC2L	=	0x62aa
                           0062AB   713 _X_T1CC2H	=	0x62ab
                           0062AC   714 _T1CC3L	=	0x62ac
                           0062AD   715 _T1CC3H	=	0x62ad
                           0062AE   716 _T1CC4L	=	0x62ae
                           0062AF   717 _T1CC4H	=	0x62af
                           0062B0   718 _STCC	=	0x62b0
                           0062B1   719 _STCS	=	0x62b1
                           0062B2   720 _STCV0	=	0x62b2
                           0062B3   721 _STCV1	=	0x62b3
                           0062B4   722 _STCV2	=	0x62b4
                           0062C0   723 _OPAMPC	=	0x62c0
                           0062C1   724 _OPAMPS	=	0x62c1
                           0062D0   725 _CMPCTL	=	0x62d0
                           006200   726 _USBADDR	=	0x6200
                           006201   727 _USBPOW	=	0x6201
                           006202   728 _USBIIF	=	0x6202
                           006204   729 _USBOIF	=	0x6204
                           006206   730 _USBCIF	=	0x6206
                           006207   731 _USBIIE	=	0x6207
                           006209   732 _USBOIE	=	0x6209
                           00620B   733 _USBCIE	=	0x620b
                           00620C   734 _USBFRML	=	0x620c
                           00620D   735 _USBFRMH	=	0x620d
                           00620E   736 _USBINDEX	=	0x620e
                           00620F   737 _USBCTRL	=	0x620f
                           006210   738 _USBMAXI	=	0x6210
                           006211   739 _USBCS0	=	0x6211
                           006211   740 _USBCSIL	=	0x6211
                           006212   741 _USBCSIH	=	0x6212
                           006213   742 _USBMAXO	=	0x6213
                           006214   743 _USBCSOL	=	0x6214
                           006215   744 _USBCSOH	=	0x6215
                           006216   745 _USBCNT0	=	0x6216
                           006216   746 _USBCNTL	=	0x6216
                           006217   747 _USBCNTH	=	0x6217
                           006220   748 _USBF0	=	0x6220
                           006222   749 _USBF1	=	0x6222
                           006224   750 _USBF2	=	0x6224
                           006226   751 _USBF3	=	0x6226
                           006228   752 _USBF4	=	0x6228
                           00622A   753 _USBF5	=	0x622a
                           006174   754 _SHORTADDRH	=	0x6174
                           006175   755 _SHORTADDRL	=	0x6175
                           006172   756 _PANIDH	=	0x6172
                           006173   757 _PANIDL	=	0x6173
                           00616A   758 _IEEE_ADDR	=	0x616a
                           006180   759 _FRMFILT0	=	0x6180
                           006181   760 _FRMFILT1	=	0x6181
                           006182   761 _SRCMATCH	=	0x6182
                           006183   762 _SRCSHORTEN0	=	0x6183
                           006184   763 _SRCSHORTEN1	=	0x6184
                           006185   764 _SRCSHORTEN2	=	0x6185
                           006186   765 _SRCEXTEN0	=	0x6186
                           006187   766 _SRCEXTEN1	=	0x6187
                           006188   767 _SRCEXTEN2	=	0x6188
                           006189   768 _FRMCTRL0	=	0x6189
                           00618A   769 _FRMCTRL1	=	0x618a
                           00618B   770 _RXENABLE	=	0x618b
                           00618C   771 _RXMASKSET	=	0x618c
                           00618D   772 _RXMASKCLR	=	0x618d
                           00618E   773 _FREQTUNE	=	0x618e
                           00618F   774 _FREQCTRL	=	0x618f
                           006190   775 _TXPOWER	=	0x6190
                           006191   776 _TXCTRL	=	0x6191
                           006192   777 _FSMSTAT0	=	0x6192
                           006193   778 _FSMSTAT1	=	0x6193
                           006194   779 _FIFOPCTRL	=	0x6194
                           006195   780 _FSMCTRL	=	0x6195
                           006196   781 _CCACTRL0	=	0x6196
                           006197   782 _CCACTRL1	=	0x6197
                           006198   783 _RSSI	=	0x6198
                           006199   784 _RSSISTAT	=	0x6199
                           00619A   785 _RXFIRST	=	0x619a
                           00619B   786 _RXFIFOCNT	=	0x619b
                           00619C   787 _TXFIFOCNT	=	0x619c
                           00619D   788 _RXFIRST_PTR	=	0x619d
                           00619E   789 _RXLAST_PTR	=	0x619e
                           00619F   790 _RXP1_PTR	=	0x619f
                           0061A1   791 _TXFIRST_PTR	=	0x61a1
                           0061A2   792 _TXLAST_PTR	=	0x61a2
                           0061A3   793 _RFIRQM0	=	0x61a3
                           0061A4   794 _RFIRQM1	=	0x61a4
                           0061A5   795 _RFERRM	=	0x61a5
                           0061A6   796 _OPAMPMC	=	0x61a6
                           0061A7   797 _RFRND	=	0x61a7
                           0061A8   798 _MDMCTRL0	=	0x61a8
                           0061A9   799 _MDMCTRL1	=	0x61a9
                           0061AA   800 _FREQEST	=	0x61aa
                           0061AB   801 _RXCTRL	=	0x61ab
                           0061AC   802 _FSCTRL	=	0x61ac
                           0061AE   803 _FSCAL1	=	0x61ae
                           0061AF   804 _FSCAL2	=	0x61af
                           0061B0   805 _FSCAL3	=	0x61b0
                           0061B1   806 _AGCCTRL0	=	0x61b1
                           0061B2   807 _AGCCTRL1	=	0x61b2
                           0061B3   808 _AGCCTRL2	=	0x61b3
                           0061B4   809 _AGCCTRL3	=	0x61b4
                           0061B5   810 _ADCTEST0	=	0x61b5
                           0061B6   811 _ADCTEST1	=	0x61b6
                           0061B7   812 _ADCTEST2	=	0x61b7
                           0061B8   813 _MDMTEST0	=	0x61b8
                           0061B9   814 _MDMTEST1	=	0x61b9
                           0061BA   815 _DACTEST0	=	0x61ba
                           0061BB   816 _DACTEST1	=	0x61bb
                           0061BC   817 _DACTEST2	=	0x61bc
                           0061BD   818 _ATEST	=	0x61bd
                           0061BE   819 _PTEST0	=	0x61be
                           0061BF   820 _PTEST1	=	0x61bf
                           0061C0   821 _CSPPROG0	=	0x61c0
                           0061C1   822 _CSPPROG1	=	0x61c1
                           0061C2   823 _CSPPROG2	=	0x61c2
                           0061C3   824 _CSPPROG3	=	0x61c3
                           0061C4   825 _CSPPROG4	=	0x61c4
                           0061C5   826 _CSPPROG5	=	0x61c5
                           0061C6   827 _CSPPROG6	=	0x61c6
                           0061C7   828 _CSPPROG7	=	0x61c7
                           0061C8   829 _CSPPROG8	=	0x61c8
                           0061C9   830 _CSPPROG9	=	0x61c9
                           0061CA   831 _CSPPROG10	=	0x61ca
                           0061CB   832 _CSPPROG11	=	0x61cb
                           0061CC   833 _CSPPROG12	=	0x61cc
                           0061CD   834 _CSPPROG13	=	0x61cd
                           0061CE   835 _CSPPROG14	=	0x61ce
                           0061CF   836 _CSPPROG15	=	0x61cf
                           0061D0   837 _CSPPROG16	=	0x61d0
                           0061D1   838 _CSPPROG17	=	0x61d1
                           0061D2   839 _CSPPROG18	=	0x61d2
                           0061D3   840 _CSPPROG19	=	0x61d3
                           0061D4   841 _CSPPROG20	=	0x61d4
                           0061D5   842 _CSPPROG21	=	0x61d5
                           0061D6   843 _CSPPROG22	=	0x61d6
                           0061D7   844 _CSPPROG23	=	0x61d7
                           0061E0   845 _CSPCTRL	=	0x61e0
                           0061E1   846 _CSPSTAT	=	0x61e1
                           0061E2   847 _CSPX	=	0x61e2
                           0061E3   848 _CSPY	=	0x61e3
                           0061E4   849 _CSPZ	=	0x61e4
                           0061E5   850 _CSPT	=	0x61e5
                           0061EB   851 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   852 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   853 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   854 _TXFILTCFG	=	0x61fa
      00121D                        855 _State_flag:
      00121D                        856 	.ds 1
      00121E                        857 _HalLedSet_PARM_2:
      00121E                        858 	.ds 1
      00121F                        859 _HalLedSet_led_1_7:
      00121F                        860 	.ds 1
      001220                        861 _HalLedSet_sloc0_1_0:
      001220                        862 	.ds 1
                                    863 ;--------------------------------------------------------
                                    864 ; absolute external ram data
                                    865 ;--------------------------------------------------------
                                    866 	.area XABS    (ABS,XDATA)
                                    867 ;--------------------------------------------------------
                                    868 ; external initialized ram data
                                    869 ;--------------------------------------------------------
                                    870 	.area HOME    (CODE)
                                    871 	.area GSINIT0 (CODE)
                                    872 	.area GSINIT1 (CODE)
                                    873 	.area GSINIT2 (CODE)
                                    874 	.area GSINIT3 (CODE)
                                    875 	.area GSINIT4 (CODE)
                                    876 	.area GSINIT5 (CODE)
                                    877 	.area GSINIT  (CODE)
                                    878 	.area GSFINAL (CODE)
                                    879 	.area CSEG    (CODE)
                                    880 ;--------------------------------------------------------
                                    881 ; global & static initialisations
                                    882 ;--------------------------------------------------------
                                    883 	.area HOME    (CODE)
                                    884 	.area GSINIT  (CODE)
                                    885 	.area GSFINAL (CODE)
                                    886 	.area GSINIT  (CODE)
                                    887 ;	../hal/include/hal_led.c:6: static bool State_flag= false;
      0003C9 90 12 1D         [24]  888 	mov	dptr,#_State_flag
      0003CC 74 00            [12]  889 	mov	a,#0x00
      0003CE F0               [24]  890 	movx	@dptr,a
                                    891 ;--------------------------------------------------------
                                    892 ; Home
                                    893 ;--------------------------------------------------------
                                    894 	.area HOME    (CODE)
                                    895 	.area HOME    (CODE)
                                    896 ;--------------------------------------------------------
                                    897 ; code
                                    898 ;--------------------------------------------------------
                                    899 	.area CSEG    (CODE)
                                    900 ;------------------------------------------------------------
                                    901 ;Allocation info for local variables in function 'HalLedSet'
                                    902 ;------------------------------------------------------------
                                    903 ;mode                      Allocated with name '_HalLedSet_PARM_2'
                                    904 ;led                       Allocated with name '_HalLedSet_led_1_7'
                                    905 ;sloc0                     Allocated with name '_HalLedSet_sloc0_1_0'
                                    906 ;------------------------------------------------------------
                                    907 ;	../hal/include/hal_led.c:7: uint8 HalLedSet( uint8 led, uint8 mode ){
                                    908 ;	-----------------------------------------
                                    909 ;	 function HalLedSet
                                    910 ;	-----------------------------------------
      0054E5                        911 _HalLedSet:
                           000007   912 	ar7 = 0x07
                           000006   913 	ar6 = 0x06
                           000005   914 	ar5 = 0x05
                           000004   915 	ar4 = 0x04
                           000003   916 	ar3 = 0x03
                           000002   917 	ar2 = 0x02
                           000001   918 	ar1 = 0x01
                           000000   919 	ar0 = 0x00
      0054E5 E5 82            [12]  920 	mov	a,dpl
      0054E7 90 12 1F         [24]  921 	mov	dptr,#_HalLedSet_led_1_7
      0054EA F0               [24]  922 	movx	@dptr,a
                                    923 ;	../hal/include/hal_led.c:11: if(HAL_LED_1 == led && mode == HAL_LED_MODE_BLINK){
      0054EB E0               [24]  924 	movx	a,@dptr
      0054EC FF               [12]  925 	mov	r7,a
      0054ED BF 01 02         [24]  926 	cjne	r7,#0x01,00118$
      0054F0 80 03            [24]  927 	sjmp	00119$
      0054F2                        928 00118$:
      0054F2 02 55 3D         [24]  929 	ljmp	00107$
      0054F5                        930 00119$:
      0054F5 90 12 1E         [24]  931 	mov	dptr,#_HalLedSet_PARM_2
      0054F8 E0               [24]  932 	movx	a,@dptr
      0054F9 FF               [12]  933 	mov	r7,a
      0054FA BF 02 02         [24]  934 	cjne	r7,#0x02,00120$
      0054FD 80 03            [24]  935 	sjmp	00121$
      0054FF                        936 00120$:
      0054FF 02 55 3D         [24]  937 	ljmp	00107$
      005502                        938 00121$:
                                    939 ;	../hal/include/hal_led.c:14: if(State_flag==true){
      005502 90 12 1D         [24]  940 	mov	dptr,#_State_flag
      005505 E0               [24]  941 	movx	a,@dptr
      005506 FF               [12]  942 	mov	r7,a
      005507 BF 01 02         [24]  943 	cjne	r7,#0x01,00122$
      00550A 80 03            [24]  944 	sjmp	00123$
      00550C                        945 00122$:
      00550C 02 55 27         [24]  946 	ljmp	00102$
      00550F                        947 00123$:
                                    948 ;	../hal/include/hal_led.c:16: State_flag=false;
      00550F 90 12 1D         [24]  949 	mov	dptr,#_State_flag
      005512 74 00            [12]  950 	mov	a,#0x00
      005514 F0               [24]  951 	movx	@dptr,a
                                    952 ;	../hal/include/hal_led.c:17: P0_1|=0x01;
      005515 90 12 20         [24]  953 	mov	dptr,#_HalLedSet_sloc0_1_0
      005518 04               [12]  954 	inc	a
      005519 F0               [24]  955 	movx	@dptr,a
      00551A A2 81            [12]  956 	mov	c,_P0_1
      00551C 90 12 20         [24]  957 	mov	dptr,#_HalLedSet_sloc0_1_0
      00551F E0               [24]  958 	movx	a,@dptr
      005520 24 FF            [12]  959 	add	a,#0xff
      005522 92 81            [24]  960 	mov	_P0_1,c
      005524 02 55 3D         [24]  961 	ljmp	00107$
      005527                        962 00102$:
                                    963 ;	../hal/include/hal_led.c:25: State_flag=true;
      005527 90 12 1D         [24]  964 	mov	dptr,#_State_flag
      00552A 74 01            [12]  965 	mov	a,#0x01
      00552C F0               [24]  966 	movx	@dptr,a
                                    967 ;	../hal/include/hal_led.c:26: P0_1&=~0x01;
      00552D 90 12 20         [24]  968 	mov	dptr,#_HalLedSet_sloc0_1_0
      005530 74 00            [12]  969 	mov	a,#0x00
      005532 F0               [24]  970 	movx	@dptr,a
      005533 A2 81            [12]  971 	mov	c,_P0_1
      005535 90 12 20         [24]  972 	mov	dptr,#_HalLedSet_sloc0_1_0
      005538 E0               [24]  973 	movx	a,@dptr
      005539 24 FF            [12]  974 	add	a,#0xff
      00553B 92 81            [24]  975 	mov	_P0_1,c
      00553D                        976 00107$:
      00553D 22               [24]  977 	ret
                                    978 	.area CSEG    (CODE)
                                    979 	.area CONST   (CODE)
                                    980 	.area CABS    (ABS,CODE)
