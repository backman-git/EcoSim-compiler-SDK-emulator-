                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:56 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module epl_uart
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
                                    232 	.globl _TXFILTCFG
                                    233 	.globl _RFC_OBS_CTRL2
                                    234 	.globl _RFC_OBS_CTRL1
                                    235 	.globl _RFC_OBS_CTRL0
                                    236 	.globl _CSPT
                                    237 	.globl _CSPZ
                                    238 	.globl _CSPY
                                    239 	.globl _CSPX
                                    240 	.globl _CSPSTAT
                                    241 	.globl _CSPCTRL
                                    242 	.globl _CSPPROG23
                                    243 	.globl _CSPPROG22
                                    244 	.globl _CSPPROG21
                                    245 	.globl _CSPPROG20
                                    246 	.globl _CSPPROG19
                                    247 	.globl _CSPPROG18
                                    248 	.globl _CSPPROG17
                                    249 	.globl _CSPPROG16
                                    250 	.globl _CSPPROG15
                                    251 	.globl _CSPPROG14
                                    252 	.globl _CSPPROG13
                                    253 	.globl _CSPPROG12
                                    254 	.globl _CSPPROG11
                                    255 	.globl _CSPPROG10
                                    256 	.globl _CSPPROG9
                                    257 	.globl _CSPPROG8
                                    258 	.globl _CSPPROG7
                                    259 	.globl _CSPPROG6
                                    260 	.globl _CSPPROG5
                                    261 	.globl _CSPPROG4
                                    262 	.globl _CSPPROG3
                                    263 	.globl _CSPPROG2
                                    264 	.globl _CSPPROG1
                                    265 	.globl _CSPPROG0
                                    266 	.globl _PTEST1
                                    267 	.globl _PTEST0
                                    268 	.globl _ATEST
                                    269 	.globl _DACTEST2
                                    270 	.globl _DACTEST1
                                    271 	.globl _DACTEST0
                                    272 	.globl _MDMTEST1
                                    273 	.globl _MDMTEST0
                                    274 	.globl _ADCTEST2
                                    275 	.globl _ADCTEST1
                                    276 	.globl _ADCTEST0
                                    277 	.globl _AGCCTRL3
                                    278 	.globl _AGCCTRL2
                                    279 	.globl _AGCCTRL1
                                    280 	.globl _AGCCTRL0
                                    281 	.globl _FSCAL3
                                    282 	.globl _FSCAL2
                                    283 	.globl _FSCAL1
                                    284 	.globl _FSCTRL
                                    285 	.globl _RXCTRL
                                    286 	.globl _FREQEST
                                    287 	.globl _MDMCTRL1
                                    288 	.globl _MDMCTRL0
                                    289 	.globl _RFRND
                                    290 	.globl _OPAMPMC
                                    291 	.globl _RFERRM
                                    292 	.globl _RFIRQM1
                                    293 	.globl _RFIRQM0
                                    294 	.globl _TXLAST_PTR
                                    295 	.globl _TXFIRST_PTR
                                    296 	.globl _RXP1_PTR
                                    297 	.globl _RXLAST_PTR
                                    298 	.globl _RXFIRST_PTR
                                    299 	.globl _TXFIFOCNT
                                    300 	.globl _RXFIFOCNT
                                    301 	.globl _RXFIRST
                                    302 	.globl _RSSISTAT
                                    303 	.globl _RSSI
                                    304 	.globl _CCACTRL1
                                    305 	.globl _CCACTRL0
                                    306 	.globl _FSMCTRL
                                    307 	.globl _FIFOPCTRL
                                    308 	.globl _FSMSTAT1
                                    309 	.globl _FSMSTAT0
                                    310 	.globl _TXCTRL
                                    311 	.globl _TXPOWER
                                    312 	.globl _FREQCTRL
                                    313 	.globl _FREQTUNE
                                    314 	.globl _RXMASKCLR
                                    315 	.globl _RXMASKSET
                                    316 	.globl _RXENABLE
                                    317 	.globl _FRMCTRL1
                                    318 	.globl _FRMCTRL0
                                    319 	.globl _SRCEXTEN2
                                    320 	.globl _SRCEXTEN1
                                    321 	.globl _SRCEXTEN0
                                    322 	.globl _SRCSHORTEN2
                                    323 	.globl _SRCSHORTEN1
                                    324 	.globl _SRCSHORTEN0
                                    325 	.globl _SRCMATCH
                                    326 	.globl _FRMFILT1
                                    327 	.globl _FRMFILT0
                                    328 	.globl _IEEE_ADDR
                                    329 	.globl _PANIDL
                                    330 	.globl _PANIDH
                                    331 	.globl _SHORTADDRL
                                    332 	.globl _SHORTADDRH
                                    333 	.globl _USBF5
                                    334 	.globl _USBF4
                                    335 	.globl _USBF3
                                    336 	.globl _USBF2
                                    337 	.globl _USBF1
                                    338 	.globl _USBF0
                                    339 	.globl _USBCNTH
                                    340 	.globl _USBCNTL
                                    341 	.globl _USBCNT0
                                    342 	.globl _USBCSOH
                                    343 	.globl _USBCSOL
                                    344 	.globl _USBMAXO
                                    345 	.globl _USBCSIH
                                    346 	.globl _USBCSIL
                                    347 	.globl _USBCS0
                                    348 	.globl _USBMAXI
                                    349 	.globl _USBCTRL
                                    350 	.globl _USBINDEX
                                    351 	.globl _USBFRMH
                                    352 	.globl _USBFRML
                                    353 	.globl _USBCIE
                                    354 	.globl _USBOIE
                                    355 	.globl _USBIIE
                                    356 	.globl _USBCIF
                                    357 	.globl _USBOIF
                                    358 	.globl _USBIIF
                                    359 	.globl _USBPOW
                                    360 	.globl _USBADDR
                                    361 	.globl _CMPCTL
                                    362 	.globl _OPAMPS
                                    363 	.globl _OPAMPC
                                    364 	.globl _STCV2
                                    365 	.globl _STCV1
                                    366 	.globl _STCV0
                                    367 	.globl _STCS
                                    368 	.globl _STCC
                                    369 	.globl _T1CC4H
                                    370 	.globl _T1CC4L
                                    371 	.globl _T1CC3H
                                    372 	.globl _T1CC3L
                                    373 	.globl _X_T1CC2H
                                    374 	.globl _X_T1CC2L
                                    375 	.globl _X_T1CC1H
                                    376 	.globl _X_T1CC1L
                                    377 	.globl _X_T1CC0H
                                    378 	.globl _X_T1CC0L
                                    379 	.globl _T1CCTL4
                                    380 	.globl _T1CCTL3
                                    381 	.globl _X_T1CCTL2
                                    382 	.globl _X_T1CCTL1
                                    383 	.globl _X_T1CCTL0
                                    384 	.globl _CLD
                                    385 	.globl _IRCTL
                                    386 	.globl _CHIPINFO1
                                    387 	.globl _CHIPINFO0
                                    388 	.globl _FWDATA
                                    389 	.globl _FADDRH
                                    390 	.globl _FADDRL
                                    391 	.globl _FCTL
                                    392 	.globl _IVCTRL
                                    393 	.globl _BATTMON
                                    394 	.globl _SRCRC
                                    395 	.globl _DBGDATA
                                    396 	.globl _TESTREG0
                                    397 	.globl _CHIPID
                                    398 	.globl _CHVER
                                    399 	.globl _OBSSEL5
                                    400 	.globl _OBSSEL4
                                    401 	.globl _OBSSEL3
                                    402 	.globl _OBSSEL2
                                    403 	.globl _OBSSEL1
                                    404 	.globl _OBSSEL0
                                    405 	.globl _I2CIO
                                    406 	.globl _I2CWC
                                    407 	.globl _I2CADDR
                                    408 	.globl _I2CDATA
                                    409 	.globl _I2CSTAT
                                    410 	.globl _I2CCFG
                                    411 	.globl _osillator
                                    412 	.globl _uartInit
                                    413 	.globl _uartWriteByte
                                    414 	.globl _uartReadByte
                                    415 	.globl _uartWriteString
                                    416 	.globl _uartReadString
                                    417 	.globl _uartWriteU16
                                    418 	.globl _N_to_ascii
                                    419 ;--------------------------------------------------------
                                    420 ; special function registers
                                    421 ;--------------------------------------------------------
                                    422 	.area RSEG    (ABS,DATA)
      000000                        423 	.org 0x0000
                           000080   424 _P0	=	0x0080
                           000081   425 _SP	=	0x0081
                           000082   426 _DPL0	=	0x0082
                           000083   427 _DPH0	=	0x0083
                           000084   428 _DPL1	=	0x0084
                           000085   429 _DPH1	=	0x0085
                           000086   430 _U0CSR	=	0x0086
                           000087   431 _PCON	=	0x0087
                           000088   432 _TCON	=	0x0088
                           000089   433 _P0IFG	=	0x0089
                           00008A   434 _P1IFG	=	0x008a
                           00008B   435 _P2IFG	=	0x008b
                           00008C   436 _PICTL	=	0x008c
                           00008D   437 _P1IEN	=	0x008d
                           00008F   438 _P0INP	=	0x008f
                           000090   439 _P1	=	0x0090
                           000091   440 _RFIRQF1	=	0x0091
                           000092   441 _DPS	=	0x0092
                           000093   442 _MPAGE	=	0x0093
                           000093   443 __XPAGE	=	0x0093
                           000094   444 _T2CTRL	=	0x0094
                           000095   445 _ST0	=	0x0095
                           000096   446 _ST1	=	0x0096
                           000097   447 _ST2	=	0x0097
                           000098   448 _S0CON	=	0x0098
                           00009A   449 _IEN2	=	0x009a
                           00009B   450 _S1CON	=	0x009b
                           00009C   451 _T2EVTCFG	=	0x009c
                           00009D   452 _SLEEPSTA	=	0x009d
                           00009E   453 _CLKCONSTA	=	0x009e
                           00009F   454 _PSBANK	=	0x009f
                           00009F   455 _FMAP	=	0x009f
                           0000A0   456 _P2	=	0x00a0
                           0000A1   457 _T2IRQF	=	0x00a1
                           0000A2   458 _T2M0	=	0x00a2
                           0000A3   459 _T2M1	=	0x00a3
                           0000A4   460 _T2MOVF0	=	0x00a4
                           0000A5   461 _T2MOVF1	=	0x00a5
                           0000A6   462 _T2MOVF2	=	0x00a6
                           0000A7   463 _T2IRQM	=	0x00a7
                           0000A8   464 _IEN0	=	0x00a8
                           0000A9   465 _IP0	=	0x00a9
                           0000AB   466 _P0IEN	=	0x00ab
                           0000AC   467 _P2IEN	=	0x00ac
                           0000AD   468 _STLOAD	=	0x00ad
                           0000AE   469 _PMUX	=	0x00ae
                           0000AF   470 _T1STAT	=	0x00af
                           0000B1   471 _ENCDI	=	0x00b1
                           0000B2   472 _ENCDO	=	0x00b2
                           0000B3   473 _ENCCS	=	0x00b3
                           0000B4   474 _ADCCON1	=	0x00b4
                           0000B5   475 _ADCCON2	=	0x00b5
                           0000B6   476 _ADCCON3	=	0x00b6
                           0000B8   477 _IEN1	=	0x00b8
                           0000B9   478 _IP1	=	0x00b9
                           0000BA   479 _ADCL	=	0x00ba
                           0000BB   480 _ADCH	=	0x00bb
                           0000BC   481 _RNDL	=	0x00bc
                           0000BD   482 _RNDH	=	0x00bd
                           0000BE   483 _SLEEPCMD	=	0x00be
                           0000BF   484 _RFERRF	=	0x00bf
                           0000C0   485 _IRCON	=	0x00c0
                           0000C1   486 _U0DBUF	=	0x00c1
                           0000C2   487 _U0BAUD	=	0x00c2
                           0000C3   488 _T2MSEL	=	0x00c3
                           0000C4   489 _U0UCR	=	0x00c4
                           0000C5   490 _U0GCR	=	0x00c5
                           0000C6   491 _CLKCONCMD	=	0x00c6
                           0000C7   492 _MEMCTR	=	0x00c7
                           0000C9   493 _WDCTL	=	0x00c9
                           0000CA   494 _T3CNT	=	0x00ca
                           0000CB   495 _T3CTL	=	0x00cb
                           0000CC   496 _T3CCTL0	=	0x00cc
                           0000CD   497 _T3CC0	=	0x00cd
                           0000CE   498 _T3CCTL1	=	0x00ce
                           0000CF   499 _T3CC1	=	0x00cf
                           0000D0   500 _PSW	=	0x00d0
                           0000D1   501 _DMAIRQ	=	0x00d1
                           0000D2   502 _DMA1CFGL	=	0x00d2
                           0000D3   503 _DMA1CFGH	=	0x00d3
                           0000D4   504 _DMA0CFGL	=	0x00d4
                           0000D5   505 _DMA0CFGH	=	0x00d5
                           0000D6   506 _DMAARM	=	0x00d6
                           0000D7   507 _DMAREQ	=	0x00d7
                           0000D8   508 _TIMIF	=	0x00d8
                           0000D9   509 _RFD	=	0x00d9
                           0000DA   510 _T1CC0L	=	0x00da
                           0000DB   511 _T1CC0H	=	0x00db
                           0000DC   512 _T1CC1L	=	0x00dc
                           0000DD   513 _T1CC1H	=	0x00dd
                           0000DE   514 _T1CC2L	=	0x00de
                           0000DF   515 _T1CC2H	=	0x00df
                           0000E0   516 _ACC	=	0x00e0
                           0000E1   517 _RFST	=	0x00e1
                           0000E2   518 _T1CNTL	=	0x00e2
                           0000E3   519 _T1CNTH	=	0x00e3
                           0000E4   520 _T1CTL	=	0x00e4
                           0000E5   521 _T1CCTL0	=	0x00e5
                           0000E6   522 _T1CCTL1	=	0x00e6
                           0000E7   523 _T1CCTL2	=	0x00e7
                           0000E8   524 _IRCON2	=	0x00e8
                           0000E9   525 _RFIRQF0	=	0x00e9
                           0000EA   526 _T4CNT	=	0x00ea
                           0000EB   527 _T4CTL	=	0x00eb
                           0000EC   528 _T4CCTL0	=	0x00ec
                           0000ED   529 _T4CC0	=	0x00ed
                           0000EE   530 _T4CCTL1	=	0x00ee
                           0000EF   531 _T4CC1	=	0x00ef
                           0000F0   532 _B	=	0x00f0
                           0000F1   533 _PERCFG	=	0x00f1
                           0000F2   534 _APCFG	=	0x00f2
                           0000F3   535 _P0SEL	=	0x00f3
                           0000F4   536 _P1SEL	=	0x00f4
                           0000F5   537 _P2SEL	=	0x00f5
                           0000F6   538 _P1INP	=	0x00f6
                           0000F7   539 _P2INP	=	0x00f7
                           0000F8   540 _U1CSR	=	0x00f8
                           0000F9   541 _U1DBUF	=	0x00f9
                           0000FA   542 _U1BAUD	=	0x00fa
                           0000FB   543 _U1UCR	=	0x00fb
                           0000FC   544 _U1GCR	=	0x00fc
                           0000FD   545 _P0DIR	=	0x00fd
                           0000FE   546 _P1DIR	=	0x00fe
                           0000FF   547 _P2DIR	=	0x00ff
                                    548 ;--------------------------------------------------------
                                    549 ; special function bits
                                    550 ;--------------------------------------------------------
                                    551 	.area RSEG    (ABS,DATA)
      000000                        552 	.org 0x0000
                           000080   553 _P0_0	=	0x0080
                           000081   554 _P0_1	=	0x0081
                           000082   555 _P0_2	=	0x0082
                           000083   556 _P0_3	=	0x0083
                           000084   557 _P0_4	=	0x0084
                           000085   558 _P0_5	=	0x0085
                           000086   559 _P0_6	=	0x0086
                           000087   560 _P0_7	=	0x0087
                           000088   561 _IT0	=	0x0088
                           000089   562 _RFERRIF	=	0x0089
                           00008A   563 _IT1	=	0x008a
                           00008B   564 _URX0IF	=	0x008b
                           00008D   565 _ADCIF	=	0x008d
                           00008F   566 _URX1IF	=	0x008f
                           000090   567 _P1_0	=	0x0090
                           000091   568 _P1_1	=	0x0091
                           000092   569 _P1_2	=	0x0092
                           000093   570 _P1_3	=	0x0093
                           000094   571 _P1_4	=	0x0094
                           000095   572 _P1_5	=	0x0095
                           000096   573 _P1_6	=	0x0096
                           000097   574 _P1_7	=	0x0097
                           000098   575 _ENCIF_0	=	0x0098
                           000099   576 _ENCIF_1	=	0x0099
                           0000A0   577 _P2_0	=	0x00a0
                           0000A1   578 _P2_1	=	0x00a1
                           0000A2   579 _P2_2	=	0x00a2
                           0000A3   580 _P2_3	=	0x00a3
                           0000A4   581 _P2_4	=	0x00a4
                           0000A5   582 _P2_5	=	0x00a5
                           0000A6   583 _P2_6	=	0x00a6
                           0000A7   584 _P2_7	=	0x00a7
                           0000A8   585 _RFERRIE	=	0x00a8
                           0000A9   586 _ADCIE	=	0x00a9
                           0000AA   587 _URX0IE	=	0x00aa
                           0000AB   588 _URX1IE	=	0x00ab
                           0000AC   589 _ENCIE	=	0x00ac
                           0000AD   590 _STIE	=	0x00ad
                           0000AF   591 _EA	=	0x00af
                           0000B8   592 _DMAIE	=	0x00b8
                           0000B9   593 _T1IE	=	0x00b9
                           0000BA   594 _T2IE	=	0x00ba
                           0000BB   595 _T3IE	=	0x00bb
                           0000BC   596 _T4IE	=	0x00bc
                           0000BD   597 _P0IE	=	0x00bd
                           0000C0   598 _DMAIF	=	0x00c0
                           0000C1   599 _T1IF	=	0x00c1
                           0000C2   600 _T2IF	=	0x00c2
                           0000C3   601 _T3IF	=	0x00c3
                           0000C4   602 _T4IF	=	0x00c4
                           0000C5   603 _P0IF	=	0x00c5
                           0000C7   604 _STIF	=	0x00c7
                           0000D0   605 _P	=	0x00d0
                           0000D1   606 _F1	=	0x00d1
                           0000D2   607 _OV	=	0x00d2
                           0000D3   608 _RS0	=	0x00d3
                           0000D4   609 _RS1	=	0x00d4
                           0000D5   610 _F0	=	0x00d5
                           0000D6   611 _AC	=	0x00d6
                           0000D7   612 _CY	=	0x00d7
                           0000D8   613 _T3OVFIF	=	0x00d8
                           0000D9   614 _T3CH0IF	=	0x00d9
                           0000DA   615 _T3CH1IF	=	0x00da
                           0000DB   616 _T4OVFIF	=	0x00db
                           0000DC   617 _T4CH0IF	=	0x00dc
                           0000DD   618 _T4CH1IF	=	0x00dd
                           0000DE   619 _OVFIM	=	0x00de
                           0000E0   620 _ACC_0	=	0x00e0
                           0000E1   621 _ACC_1	=	0x00e1
                           0000E2   622 _ACC_2	=	0x00e2
                           0000E3   623 _ACC_3	=	0x00e3
                           0000E4   624 _ACC_4	=	0x00e4
                           0000E5   625 _ACC_5	=	0x00e5
                           0000E6   626 _ACC_6	=	0x00e6
                           0000E7   627 _ACC_7	=	0x00e7
                           0000E8   628 _P2IF	=	0x00e8
                           0000E9   629 _UTX0IF	=	0x00e9
                           0000EA   630 _UTX1IF	=	0x00ea
                           0000EB   631 _P1IF	=	0x00eb
                           0000EC   632 _WDTIF	=	0x00ec
                           0000F0   633 _B_0	=	0x00f0
                           0000F1   634 _B_1	=	0x00f1
                           0000F2   635 _B_2	=	0x00f2
                           0000F3   636 _B_3	=	0x00f3
                           0000F4   637 _B_4	=	0x00f4
                           0000F5   638 _B_5	=	0x00f5
                           0000F6   639 _B_6	=	0x00f6
                           0000F7   640 _B_7	=	0x00f7
                           0000F8   641 _ACTIVE	=	0x00f8
                           0000F9   642 _TX_BYTE	=	0x00f9
                           0000FA   643 _RX_BYTE	=	0x00fa
                           0000FB   644 _ERR	=	0x00fb
                           0000FC   645 _FE	=	0x00fc
                           0000FD   646 _SLAVE	=	0x00fd
                           0000FE   647 _RE	=	0x00fe
                           0000FF   648 _MODE	=	0x00ff
                                    649 ;--------------------------------------------------------
                                    650 ; overlayable register banks
                                    651 ;--------------------------------------------------------
                                    652 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        653 	.ds 8
                                    654 ;--------------------------------------------------------
                                    655 ; internal ram data
                                    656 ;--------------------------------------------------------
                                    657 	.area DSEG    (DATA)
                                    658 ;--------------------------------------------------------
                                    659 ; overlayable items in internal ram 
                                    660 ;--------------------------------------------------------
                                    661 ;--------------------------------------------------------
                                    662 ; indirectly addressable internal ram data
                                    663 ;--------------------------------------------------------
                                    664 	.area ISEG    (DATA)
                                    665 ;--------------------------------------------------------
                                    666 ; absolute internal ram data
                                    667 ;--------------------------------------------------------
                                    668 	.area IABS    (ABS,DATA)
                                    669 	.area IABS    (ABS,DATA)
                                    670 ;--------------------------------------------------------
                                    671 ; bit data
                                    672 ;--------------------------------------------------------
                                    673 	.area BSEG    (BIT)
                                    674 ;--------------------------------------------------------
                                    675 ; paged external ram data
                                    676 ;--------------------------------------------------------
                                    677 	.area PSEG    (PAG,XDATA)
                                    678 ;--------------------------------------------------------
                                    679 ; external ram data
                                    680 ;--------------------------------------------------------
                                    681 	.area XSEG    (XDATA)
                           006230   682 _I2CCFG	=	0x6230
                           006231   683 _I2CSTAT	=	0x6231
                           006232   684 _I2CDATA	=	0x6232
                           006233   685 _I2CADDR	=	0x6233
                           006234   686 _I2CWC	=	0x6234
                           006235   687 _I2CIO	=	0x6235
                           006243   688 _OBSSEL0	=	0x6243
                           006244   689 _OBSSEL1	=	0x6244
                           006245   690 _OBSSEL2	=	0x6245
                           006246   691 _OBSSEL3	=	0x6246
                           006247   692 _OBSSEL4	=	0x6247
                           006248   693 _OBSSEL5	=	0x6248
                           006249   694 _CHVER	=	0x6249
                           00624A   695 _CHIPID	=	0x624a
                           00624B   696 _TESTREG0	=	0x624b
                           006260   697 _DBGDATA	=	0x6260
                           006262   698 _SRCRC	=	0x6262
                           006264   699 _BATTMON	=	0x6264
                           006265   700 _IVCTRL	=	0x6265
                           006270   701 _FCTL	=	0x6270
                           006271   702 _FADDRL	=	0x6271
                           006272   703 _FADDRH	=	0x6272
                           006273   704 _FWDATA	=	0x6273
                           006276   705 _CHIPINFO0	=	0x6276
                           006277   706 _CHIPINFO1	=	0x6277
                           006281   707 _IRCTL	=	0x6281
                           006290   708 _CLD	=	0x6290
                           0062A0   709 _X_T1CCTL0	=	0x62a0
                           0062A1   710 _X_T1CCTL1	=	0x62a1
                           0062A2   711 _X_T1CCTL2	=	0x62a2
                           0062A3   712 _T1CCTL3	=	0x62a3
                           0062A4   713 _T1CCTL4	=	0x62a4
                           0062A6   714 _X_T1CC0L	=	0x62a6
                           0062A7   715 _X_T1CC0H	=	0x62a7
                           0062A8   716 _X_T1CC1L	=	0x62a8
                           0062A9   717 _X_T1CC1H	=	0x62a9
                           0062AA   718 _X_T1CC2L	=	0x62aa
                           0062AB   719 _X_T1CC2H	=	0x62ab
                           0062AC   720 _T1CC3L	=	0x62ac
                           0062AD   721 _T1CC3H	=	0x62ad
                           0062AE   722 _T1CC4L	=	0x62ae
                           0062AF   723 _T1CC4H	=	0x62af
                           0062B0   724 _STCC	=	0x62b0
                           0062B1   725 _STCS	=	0x62b1
                           0062B2   726 _STCV0	=	0x62b2
                           0062B3   727 _STCV1	=	0x62b3
                           0062B4   728 _STCV2	=	0x62b4
                           0062C0   729 _OPAMPC	=	0x62c0
                           0062C1   730 _OPAMPS	=	0x62c1
                           0062D0   731 _CMPCTL	=	0x62d0
                           006200   732 _USBADDR	=	0x6200
                           006201   733 _USBPOW	=	0x6201
                           006202   734 _USBIIF	=	0x6202
                           006204   735 _USBOIF	=	0x6204
                           006206   736 _USBCIF	=	0x6206
                           006207   737 _USBIIE	=	0x6207
                           006209   738 _USBOIE	=	0x6209
                           00620B   739 _USBCIE	=	0x620b
                           00620C   740 _USBFRML	=	0x620c
                           00620D   741 _USBFRMH	=	0x620d
                           00620E   742 _USBINDEX	=	0x620e
                           00620F   743 _USBCTRL	=	0x620f
                           006210   744 _USBMAXI	=	0x6210
                           006211   745 _USBCS0	=	0x6211
                           006211   746 _USBCSIL	=	0x6211
                           006212   747 _USBCSIH	=	0x6212
                           006213   748 _USBMAXO	=	0x6213
                           006214   749 _USBCSOL	=	0x6214
                           006215   750 _USBCSOH	=	0x6215
                           006216   751 _USBCNT0	=	0x6216
                           006216   752 _USBCNTL	=	0x6216
                           006217   753 _USBCNTH	=	0x6217
                           006220   754 _USBF0	=	0x6220
                           006222   755 _USBF1	=	0x6222
                           006224   756 _USBF2	=	0x6224
                           006226   757 _USBF3	=	0x6226
                           006228   758 _USBF4	=	0x6228
                           00622A   759 _USBF5	=	0x622a
                           006174   760 _SHORTADDRH	=	0x6174
                           006175   761 _SHORTADDRL	=	0x6175
                           006172   762 _PANIDH	=	0x6172
                           006173   763 _PANIDL	=	0x6173
                           00616A   764 _IEEE_ADDR	=	0x616a
                           006180   765 _FRMFILT0	=	0x6180
                           006181   766 _FRMFILT1	=	0x6181
                           006182   767 _SRCMATCH	=	0x6182
                           006183   768 _SRCSHORTEN0	=	0x6183
                           006184   769 _SRCSHORTEN1	=	0x6184
                           006185   770 _SRCSHORTEN2	=	0x6185
                           006186   771 _SRCEXTEN0	=	0x6186
                           006187   772 _SRCEXTEN1	=	0x6187
                           006188   773 _SRCEXTEN2	=	0x6188
                           006189   774 _FRMCTRL0	=	0x6189
                           00618A   775 _FRMCTRL1	=	0x618a
                           00618B   776 _RXENABLE	=	0x618b
                           00618C   777 _RXMASKSET	=	0x618c
                           00618D   778 _RXMASKCLR	=	0x618d
                           00618E   779 _FREQTUNE	=	0x618e
                           00618F   780 _FREQCTRL	=	0x618f
                           006190   781 _TXPOWER	=	0x6190
                           006191   782 _TXCTRL	=	0x6191
                           006192   783 _FSMSTAT0	=	0x6192
                           006193   784 _FSMSTAT1	=	0x6193
                           006194   785 _FIFOPCTRL	=	0x6194
                           006195   786 _FSMCTRL	=	0x6195
                           006196   787 _CCACTRL0	=	0x6196
                           006197   788 _CCACTRL1	=	0x6197
                           006198   789 _RSSI	=	0x6198
                           006199   790 _RSSISTAT	=	0x6199
                           00619A   791 _RXFIRST	=	0x619a
                           00619B   792 _RXFIFOCNT	=	0x619b
                           00619C   793 _TXFIFOCNT	=	0x619c
                           00619D   794 _RXFIRST_PTR	=	0x619d
                           00619E   795 _RXLAST_PTR	=	0x619e
                           00619F   796 _RXP1_PTR	=	0x619f
                           0061A1   797 _TXFIRST_PTR	=	0x61a1
                           0061A2   798 _TXLAST_PTR	=	0x61a2
                           0061A3   799 _RFIRQM0	=	0x61a3
                           0061A4   800 _RFIRQM1	=	0x61a4
                           0061A5   801 _RFERRM	=	0x61a5
                           0061A6   802 _OPAMPMC	=	0x61a6
                           0061A7   803 _RFRND	=	0x61a7
                           0061A8   804 _MDMCTRL0	=	0x61a8
                           0061A9   805 _MDMCTRL1	=	0x61a9
                           0061AA   806 _FREQEST	=	0x61aa
                           0061AB   807 _RXCTRL	=	0x61ab
                           0061AC   808 _FSCTRL	=	0x61ac
                           0061AE   809 _FSCAL1	=	0x61ae
                           0061AF   810 _FSCAL2	=	0x61af
                           0061B0   811 _FSCAL3	=	0x61b0
                           0061B1   812 _AGCCTRL0	=	0x61b1
                           0061B2   813 _AGCCTRL1	=	0x61b2
                           0061B3   814 _AGCCTRL2	=	0x61b3
                           0061B4   815 _AGCCTRL3	=	0x61b4
                           0061B5   816 _ADCTEST0	=	0x61b5
                           0061B6   817 _ADCTEST1	=	0x61b6
                           0061B7   818 _ADCTEST2	=	0x61b7
                           0061B8   819 _MDMTEST0	=	0x61b8
                           0061B9   820 _MDMTEST1	=	0x61b9
                           0061BA   821 _DACTEST0	=	0x61ba
                           0061BB   822 _DACTEST1	=	0x61bb
                           0061BC   823 _DACTEST2	=	0x61bc
                           0061BD   824 _ATEST	=	0x61bd
                           0061BE   825 _PTEST0	=	0x61be
                           0061BF   826 _PTEST1	=	0x61bf
                           0061C0   827 _CSPPROG0	=	0x61c0
                           0061C1   828 _CSPPROG1	=	0x61c1
                           0061C2   829 _CSPPROG2	=	0x61c2
                           0061C3   830 _CSPPROG3	=	0x61c3
                           0061C4   831 _CSPPROG4	=	0x61c4
                           0061C5   832 _CSPPROG5	=	0x61c5
                           0061C6   833 _CSPPROG6	=	0x61c6
                           0061C7   834 _CSPPROG7	=	0x61c7
                           0061C8   835 _CSPPROG8	=	0x61c8
                           0061C9   836 _CSPPROG9	=	0x61c9
                           0061CA   837 _CSPPROG10	=	0x61ca
                           0061CB   838 _CSPPROG11	=	0x61cb
                           0061CC   839 _CSPPROG12	=	0x61cc
                           0061CD   840 _CSPPROG13	=	0x61cd
                           0061CE   841 _CSPPROG14	=	0x61ce
                           0061CF   842 _CSPPROG15	=	0x61cf
                           0061D0   843 _CSPPROG16	=	0x61d0
                           0061D1   844 _CSPPROG17	=	0x61d1
                           0061D2   845 _CSPPROG18	=	0x61d2
                           0061D3   846 _CSPPROG19	=	0x61d3
                           0061D4   847 _CSPPROG20	=	0x61d4
                           0061D5   848 _CSPPROG21	=	0x61d5
                           0061D6   849 _CSPPROG22	=	0x61d6
                           0061D7   850 _CSPPROG23	=	0x61d7
                           0061E0   851 _CSPCTRL	=	0x61e0
                           0061E1   852 _CSPSTAT	=	0x61e1
                           0061E2   853 _CSPX	=	0x61e2
                           0061E3   854 _CSPY	=	0x61e3
                           0061E4   855 _CSPZ	=	0x61e4
                           0061E5   856 _CSPT	=	0x61e5
                           0061EB   857 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   858 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   859 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   860 _TXFILTCFG	=	0x61fa
      0010A3                        861 _uartInit_BaudRate_1_11:
      0010A3                        862 	.ds 2
      0010A5                        863 _uartWriteByte_write_1_14:
      0010A5                        864 	.ds 1
      0010A6                        865 _uartReadByte_read_1_16:
      0010A6                        866 	.ds 3
      0010A9                        867 _uartWriteString_str_1_18:
      0010A9                        868 	.ds 3
      0010AC                        869 _uartReadString_str_1_21:
      0010AC                        870 	.ds 3
      0010AF                        871 _uartWriteU16_x_1_24:
      0010AF                        872 	.ds 2
      0010B1                        873 _N_to_ascii_x_1_26:
      0010B1                        874 	.ds 1
                                    875 ;--------------------------------------------------------
                                    876 ; absolute external ram data
                                    877 ;--------------------------------------------------------
                                    878 	.area XABS    (ABS,XDATA)
                                    879 ;--------------------------------------------------------
                                    880 ; external initialized ram data
                                    881 ;--------------------------------------------------------
                                    882 	.area HOME    (CODE)
                                    883 	.area GSINIT0 (CODE)
                                    884 	.area GSINIT1 (CODE)
                                    885 	.area GSINIT2 (CODE)
                                    886 	.area GSINIT3 (CODE)
                                    887 	.area GSINIT4 (CODE)
                                    888 	.area GSINIT5 (CODE)
                                    889 	.area GSINIT  (CODE)
                                    890 	.area GSFINAL (CODE)
                                    891 	.area CSEG    (CODE)
                                    892 ;--------------------------------------------------------
                                    893 ; global & static initialisations
                                    894 ;--------------------------------------------------------
                                    895 	.area HOME    (CODE)
                                    896 	.area GSINIT  (CODE)
                                    897 	.area GSFINAL (CODE)
                                    898 	.area GSINIT  (CODE)
                                    899 ;--------------------------------------------------------
                                    900 ; Home
                                    901 ;--------------------------------------------------------
                                    902 	.area HOME    (CODE)
                                    903 	.area HOME    (CODE)
                                    904 ;--------------------------------------------------------
                                    905 ; code
                                    906 ;--------------------------------------------------------
                                    907 	.area CSEG    (CODE)
                                    908 ;------------------------------------------------------------
                                    909 ;Allocation info for local variables in function 'osillator'
                                    910 ;------------------------------------------------------------
                                    911 ;	../uart/epl_uart.c:5: void osillator(void){
                                    912 ;	-----------------------------------------
                                    913 ;	 function osillator
                                    914 ;	-----------------------------------------
      003BDB                        915 _osillator:
                           000007   916 	ar7 = 0x07
                           000006   917 	ar6 = 0x06
                           000005   918 	ar5 = 0x05
                           000004   919 	ar4 = 0x04
                           000003   920 	ar3 = 0x03
                           000002   921 	ar2 = 0x02
                           000001   922 	ar1 = 0x01
                           000000   923 	ar0 = 0x00
                                    924 ;	../uart/epl_uart.c:8: CLKCONCMD=0x00;
      003BDB 75 C6 00         [24]  925 	mov	_CLKCONCMD,#0x00
      003BDE                        926 00101$:
      003BDE 22               [24]  927 	ret
                                    928 ;------------------------------------------------------------
                                    929 ;Allocation info for local variables in function 'uartInit'
                                    930 ;------------------------------------------------------------
                                    931 ;BaudRate                  Allocated with name '_uartInit_BaudRate_1_11'
                                    932 ;------------------------------------------------------------
                                    933 ;	../uart/epl_uart.c:15: void uartInit(int BaudRate)
                                    934 ;	-----------------------------------------
                                    935 ;	 function uartInit
                                    936 ;	-----------------------------------------
      003BDF                        937 _uartInit:
      003BDF AF 83            [24]  938 	mov	r7,dph
      003BE1 E5 82            [12]  939 	mov	a,dpl
      003BE3 90 10 A3         [24]  940 	mov	dptr,#_uartInit_BaudRate_1_11
      003BE6 F0               [24]  941 	movx	@dptr,a
      003BE7 EF               [12]  942 	mov	a,r7
      003BE8 A3               [24]  943 	inc	dptr
      003BE9 F0               [24]  944 	movx	@dptr,a
                                    945 ;	../uart/epl_uart.c:17: PERCFG &= ~0x01;
      003BEA AF F1            [24]  946 	mov	r7,_PERCFG
      003BEC 74 FE            [12]  947 	mov	a,#0xFE
      003BEE 5F               [12]  948 	anl	a,r7
      003BEF F5 F1            [12]  949 	mov	_PERCFG,a
                                    950 ;	../uart/epl_uart.c:18: P0SEL |=0x0C;
      003BF1 43 F3 0C         [24]  951 	orl	_P0SEL,#0x0C
                                    952 ;	../uart/epl_uart.c:19: U0CSR |=0xC0;
      003BF4 43 86 C0         [24]  953 	orl	_U0CSR,#0xC0
                                    954 ;	../uart/epl_uart.c:20: switch(BaudRate)
      003BF7 90 10 A3         [24]  955 	mov	dptr,#_uartInit_BaudRate_1_11
      003BFA E0               [24]  956 	movx	a,@dptr
      003BFB FE               [12]  957 	mov	r6,a
      003BFC A3               [24]  958 	inc	dptr
      003BFD E0               [24]  959 	movx	a,@dptr
      003BFE FF               [12]  960 	mov	r7,a
      003BFF BE 00 06         [24]  961 	cjne	r6,#0x00,00125$
      003C02 BF 00 03         [24]  962 	cjne	r7,#0x00,00125$
      003C05 02 3C 2F         [24]  963 	ljmp	00101$
      003C08                        964 00125$:
      003C08 BE 01 06         [24]  965 	cjne	r6,#0x01,00126$
      003C0B BF 00 03         [24]  966 	cjne	r7,#0x00,00126$
      003C0E 02 3C 38         [24]  967 	ljmp	00102$
      003C11                        968 00126$:
      003C11 BE 02 06         [24]  969 	cjne	r6,#0x02,00127$
      003C14 BF 00 03         [24]  970 	cjne	r7,#0x00,00127$
      003C17 02 3C 41         [24]  971 	ljmp	00103$
      003C1A                        972 00127$:
      003C1A BE 03 06         [24]  973 	cjne	r6,#0x03,00128$
      003C1D BF 00 03         [24]  974 	cjne	r7,#0x00,00128$
      003C20 02 3C 4A         [24]  975 	ljmp	00104$
      003C23                        976 00128$:
      003C23 BE 04 06         [24]  977 	cjne	r6,#0x04,00129$
      003C26 BF 00 03         [24]  978 	cjne	r7,#0x00,00129$
      003C29 02 3C 53         [24]  979 	ljmp	00105$
      003C2C                        980 00129$:
      003C2C 02 3C 59         [24]  981 	ljmp	00108$
                                    982 ;	../uart/epl_uart.c:22: case HAL_UART_BR_9600:
      003C2F                        983 00101$:
                                    984 ;	../uart/epl_uart.c:23: U0GCR |=0x08;
      003C2F 43 C5 08         [24]  985 	orl	_U0GCR,#0x08
                                    986 ;	../uart/epl_uart.c:24: U0BAUD = 0x3B;
      003C32 75 C2 3B         [24]  987 	mov	_U0BAUD,#0x3B
                                    988 ;	../uart/epl_uart.c:25: break;
      003C35 02 3C 59         [24]  989 	ljmp	00108$
                                    990 ;	../uart/epl_uart.c:26: case HAL_UART_BR_19200:
      003C38                        991 00102$:
                                    992 ;	../uart/epl_uart.c:27: U0GCR |=0x09;
      003C38 43 C5 09         [24]  993 	orl	_U0GCR,#0x09
                                    994 ;	../uart/epl_uart.c:28: U0BAUD = 0x3B;
      003C3B 75 C2 3B         [24]  995 	mov	_U0BAUD,#0x3B
                                    996 ;	../uart/epl_uart.c:29: break;
      003C3E 02 3C 59         [24]  997 	ljmp	00108$
                                    998 ;	../uart/epl_uart.c:30: case HAL_UART_BR_38400:
      003C41                        999 00103$:
                                   1000 ;	../uart/epl_uart.c:31: U0GCR |=0x0A;
      003C41 43 C5 0A         [24] 1001 	orl	_U0GCR,#0x0A
                                   1002 ;	../uart/epl_uart.c:32: U0BAUD = 0x3B;
      003C44 75 C2 3B         [24] 1003 	mov	_U0BAUD,#0x3B
                                   1004 ;	../uart/epl_uart.c:33: break;
      003C47 02 3C 59         [24] 1005 	ljmp	00108$
                                   1006 ;	../uart/epl_uart.c:34: case HAL_UART_BR_57600:
      003C4A                       1007 00104$:
                                   1008 ;	../uart/epl_uart.c:35: U0GCR |=0x0A;
      003C4A 43 C5 0A         [24] 1009 	orl	_U0GCR,#0x0A
                                   1010 ;	../uart/epl_uart.c:36: U0BAUD = 0xD8;
      003C4D 75 C2 D8         [24] 1011 	mov	_U0BAUD,#0xD8
                                   1012 ;	../uart/epl_uart.c:37: break;
      003C50 02 3C 59         [24] 1013 	ljmp	00108$
                                   1014 ;	../uart/epl_uart.c:38: case HAL_UART_BR_115200:
      003C53                       1015 00105$:
                                   1016 ;	../uart/epl_uart.c:39: U0GCR |=0x0B;
      003C53 43 C5 0B         [24] 1017 	orl	_U0GCR,#0x0B
                                   1018 ;	../uart/epl_uart.c:40: U0BAUD = 0xD8;
      003C56 75 C2 D8         [24] 1019 	mov	_U0BAUD,#0xD8
                                   1020 ;	../uart/epl_uart.c:44: }
      003C59                       1021 00108$:
      003C59 22               [24] 1022 	ret
                                   1023 ;------------------------------------------------------------
                                   1024 ;Allocation info for local variables in function 'uartWriteByte'
                                   1025 ;------------------------------------------------------------
                                   1026 ;write                     Allocated with name '_uartWriteByte_write_1_14'
                                   1027 ;------------------------------------------------------------
                                   1028 ;	../uart/epl_uart.c:48: void uartWriteByte(char write)
                                   1029 ;	-----------------------------------------
                                   1030 ;	 function uartWriteByte
                                   1031 ;	-----------------------------------------
      003C5A                       1032 _uartWriteByte:
      003C5A E5 82            [12] 1033 	mov	a,dpl
      003C5C 90 10 A5         [24] 1034 	mov	dptr,#_uartWriteByte_write_1_14
      003C5F F0               [24] 1035 	movx	@dptr,a
                                   1036 ;	../uart/epl_uart.c:50: U0DBUF = write;
      003C60 E0               [24] 1037 	movx	a,@dptr
      003C61 F5 C1            [12] 1038 	mov	_U0DBUF,a
                                   1039 ;	../uart/epl_uart.c:51: while((U0CSR&0x01) || !(U0CSR&0x02));
      003C63                       1040 00102$:
      003C63 E5 86            [12] 1041 	mov	a,_U0CSR
      003C65 30 E0 03         [24] 1042 	jnb	acc.0,00116$
      003C68 02 3C 63         [24] 1043 	ljmp	00102$
      003C6B                       1044 00116$:
      003C6B E5 86            [12] 1045 	mov	a,_U0CSR
      003C6D 20 E1 03         [24] 1046 	jb	acc.1,00117$
      003C70 02 3C 63         [24] 1047 	ljmp	00102$
      003C73                       1048 00117$:
                                   1049 ;	../uart/epl_uart.c:52: U0CSR&=~0x02;
      003C73 AF 86            [24] 1050 	mov	r7,_U0CSR
      003C75 74 FD            [12] 1051 	mov	a,#0xFD
      003C77 5F               [12] 1052 	anl	a,r7
      003C78 F5 86            [12] 1053 	mov	_U0CSR,a
      003C7A                       1054 00105$:
      003C7A 22               [24] 1055 	ret
                                   1056 ;------------------------------------------------------------
                                   1057 ;Allocation info for local variables in function 'uartReadByte'
                                   1058 ;------------------------------------------------------------
                                   1059 ;read                      Allocated with name '_uartReadByte_read_1_16'
                                   1060 ;------------------------------------------------------------
                                   1061 ;	../uart/epl_uart.c:54: void uartReadByte(char *read)
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function uartReadByte
                                   1064 ;	-----------------------------------------
      003C7B                       1065 _uartReadByte:
      003C7B AF F0            [24] 1066 	mov	r7,b
      003C7D AE 83            [24] 1067 	mov	r6,dph
      003C7F E5 82            [12] 1068 	mov	a,dpl
      003C81 90 10 A6         [24] 1069 	mov	dptr,#_uartReadByte_read_1_16
      003C84 F0               [24] 1070 	movx	@dptr,a
      003C85 EE               [12] 1071 	mov	a,r6
      003C86 A3               [24] 1072 	inc	dptr
      003C87 F0               [24] 1073 	movx	@dptr,a
      003C88 EF               [12] 1074 	mov	a,r7
      003C89 A3               [24] 1075 	inc	dptr
      003C8A F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	../uart/epl_uart.c:56: while((U0CSR&0x01) || !(U0CSR&0x04));
      003C8B                       1078 00102$:
      003C8B E5 86            [12] 1079 	mov	a,_U0CSR
      003C8D 30 E0 03         [24] 1080 	jnb	acc.0,00116$
      003C90 02 3C 8B         [24] 1081 	ljmp	00102$
      003C93                       1082 00116$:
      003C93 E5 86            [12] 1083 	mov	a,_U0CSR
      003C95 20 E2 03         [24] 1084 	jb	acc.2,00117$
      003C98 02 3C 8B         [24] 1085 	ljmp	00102$
      003C9B                       1086 00117$:
                                   1087 ;	../uart/epl_uart.c:57: *read=U0DBUF;
      003C9B 90 10 A6         [24] 1088 	mov	dptr,#_uartReadByte_read_1_16
      003C9E E0               [24] 1089 	movx	a,@dptr
      003C9F FD               [12] 1090 	mov	r5,a
      003CA0 A3               [24] 1091 	inc	dptr
      003CA1 E0               [24] 1092 	movx	a,@dptr
      003CA2 FE               [12] 1093 	mov	r6,a
      003CA3 A3               [24] 1094 	inc	dptr
      003CA4 E0               [24] 1095 	movx	a,@dptr
      003CA5 FF               [12] 1096 	mov	r7,a
      003CA6 8D 82            [24] 1097 	mov	dpl,r5
      003CA8 8E 83            [24] 1098 	mov	dph,r6
      003CAA 8F F0            [24] 1099 	mov	b,r7
      003CAC E5 C1            [12] 1100 	mov	a,_U0DBUF
      003CAE 12 59 AA         [24] 1101 	lcall	__gptrput
      003CB1                       1102 00105$:
      003CB1 22               [24] 1103 	ret
                                   1104 ;------------------------------------------------------------
                                   1105 ;Allocation info for local variables in function 'uartWriteString'
                                   1106 ;------------------------------------------------------------
                                   1107 ;str                       Allocated with name '_uartWriteString_str_1_18'
                                   1108 ;------------------------------------------------------------
                                   1109 ;	../uart/epl_uart.c:59: void uartWriteString(char *str)
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function uartWriteString
                                   1112 ;	-----------------------------------------
      003CB2                       1113 _uartWriteString:
      003CB2 AF F0            [24] 1114 	mov	r7,b
      003CB4 AE 83            [24] 1115 	mov	r6,dph
      003CB6 E5 82            [12] 1116 	mov	a,dpl
      003CB8 90 10 A9         [24] 1117 	mov	dptr,#_uartWriteString_str_1_18
      003CBB F0               [24] 1118 	movx	@dptr,a
      003CBC EE               [12] 1119 	mov	a,r6
      003CBD A3               [24] 1120 	inc	dptr
      003CBE F0               [24] 1121 	movx	@dptr,a
      003CBF EF               [12] 1122 	mov	a,r7
      003CC0 A3               [24] 1123 	inc	dptr
      003CC1 F0               [24] 1124 	movx	@dptr,a
                                   1125 ;	../uart/epl_uart.c:61: while(*str != 0)
      003CC2 90 10 A9         [24] 1126 	mov	dptr,#_uartWriteString_str_1_18
      003CC5 E0               [24] 1127 	movx	a,@dptr
      003CC6 FD               [12] 1128 	mov	r5,a
      003CC7 A3               [24] 1129 	inc	dptr
      003CC8 E0               [24] 1130 	movx	a,@dptr
      003CC9 FE               [12] 1131 	mov	r6,a
      003CCA A3               [24] 1132 	inc	dptr
      003CCB E0               [24] 1133 	movx	a,@dptr
      003CCC FF               [12] 1134 	mov	r7,a
      003CCD                       1135 00101$:
      003CCD 8D 82            [24] 1136 	mov	dpl,r5
      003CCF 8E 83            [24] 1137 	mov	dph,r6
      003CD1 8F F0            [24] 1138 	mov	b,r7
      003CD3 12 5B 16         [24] 1139 	lcall	__gptrget
      003CD6 70 03            [24] 1140 	jnz	00113$
      003CD8 02 3D 09         [24] 1141 	ljmp	00108$
      003CDB                       1142 00113$:
                                   1143 ;	../uart/epl_uart.c:63: uartWriteByte(*(str++));
      003CDB 8D 82            [24] 1144 	mov	dpl,r5
      003CDD 8E 83            [24] 1145 	mov	dph,r6
      003CDF 8F F0            [24] 1146 	mov	b,r7
      003CE1 12 5B 16         [24] 1147 	lcall	__gptrget
      003CE4 FC               [12] 1148 	mov	r4,a
      003CE5 A3               [24] 1149 	inc	dptr
      003CE6 AD 82            [24] 1150 	mov	r5,dpl
      003CE8 AE 83            [24] 1151 	mov	r6,dph
      003CEA 90 10 A9         [24] 1152 	mov	dptr,#_uartWriteString_str_1_18
      003CED ED               [12] 1153 	mov	a,r5
      003CEE F0               [24] 1154 	movx	@dptr,a
      003CEF EE               [12] 1155 	mov	a,r6
      003CF0 A3               [24] 1156 	inc	dptr
      003CF1 F0               [24] 1157 	movx	@dptr,a
      003CF2 EF               [12] 1158 	mov	a,r7
      003CF3 A3               [24] 1159 	inc	dptr
      003CF4 F0               [24] 1160 	movx	@dptr,a
      003CF5 8C 82            [24] 1161 	mov	dpl,r4
      003CF7 C0 07            [24] 1162 	push	ar7
      003CF9 C0 06            [24] 1163 	push	ar6
      003CFB C0 05            [24] 1164 	push	ar5
      003CFD 12 3C 5A         [24] 1165 	lcall	_uartWriteByte
      003D00 D0 05            [24] 1166 	pop	ar5
      003D02 D0 06            [24] 1167 	pop	ar6
      003D04 D0 07            [24] 1168 	pop	ar7
      003D06 02 3C CD         [24] 1169 	ljmp	00101$
      003D09                       1170 00108$:
      003D09 90 10 A9         [24] 1171 	mov	dptr,#_uartWriteString_str_1_18
      003D0C ED               [12] 1172 	mov	a,r5
      003D0D F0               [24] 1173 	movx	@dptr,a
      003D0E EE               [12] 1174 	mov	a,r6
      003D0F A3               [24] 1175 	inc	dptr
      003D10 F0               [24] 1176 	movx	@dptr,a
      003D11 EF               [12] 1177 	mov	a,r7
      003D12 A3               [24] 1178 	inc	dptr
      003D13 F0               [24] 1179 	movx	@dptr,a
      003D14                       1180 00104$:
      003D14 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'uartReadString'
                                   1184 ;------------------------------------------------------------
                                   1185 ;str                       Allocated with name '_uartReadString_str_1_21'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	../uart/epl_uart.c:66: void uartReadString(char *str)
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function uartReadString
                                   1190 ;	-----------------------------------------
      003D15                       1191 _uartReadString:
      003D15 AF F0            [24] 1192 	mov	r7,b
      003D17 AE 83            [24] 1193 	mov	r6,dph
      003D19 E5 82            [12] 1194 	mov	a,dpl
      003D1B 90 10 AC         [24] 1195 	mov	dptr,#_uartReadString_str_1_21
      003D1E F0               [24] 1196 	movx	@dptr,a
      003D1F EE               [12] 1197 	mov	a,r6
      003D20 A3               [24] 1198 	inc	dptr
      003D21 F0               [24] 1199 	movx	@dptr,a
      003D22 EF               [12] 1200 	mov	a,r7
      003D23 A3               [24] 1201 	inc	dptr
      003D24 F0               [24] 1202 	movx	@dptr,a
                                   1203 ;	../uart/epl_uart.c:68: do{
      003D25 90 10 AC         [24] 1204 	mov	dptr,#_uartReadString_str_1_21
      003D28 E0               [24] 1205 	movx	a,@dptr
      003D29 FD               [12] 1206 	mov	r5,a
      003D2A A3               [24] 1207 	inc	dptr
      003D2B E0               [24] 1208 	movx	a,@dptr
      003D2C FE               [12] 1209 	mov	r6,a
      003D2D A3               [24] 1210 	inc	dptr
      003D2E E0               [24] 1211 	movx	a,@dptr
      003D2F FF               [12] 1212 	mov	r7,a
      003D30                       1213 00101$:
                                   1214 ;	../uart/epl_uart.c:69: uartReadByte(str);
      003D30 8D 82            [24] 1215 	mov	dpl,r5
      003D32 8E 83            [24] 1216 	mov	dph,r6
      003D34 8F F0            [24] 1217 	mov	b,r7
      003D36 C0 07            [24] 1218 	push	ar7
      003D38 C0 06            [24] 1219 	push	ar6
      003D3A C0 05            [24] 1220 	push	ar5
      003D3C 12 3C 7B         [24] 1221 	lcall	_uartReadByte
      003D3F D0 05            [24] 1222 	pop	ar5
      003D41 D0 06            [24] 1223 	pop	ar6
      003D43 D0 07            [24] 1224 	pop	ar7
                                   1225 ;	../uart/epl_uart.c:70: }while(*str++ != '\r');
      003D45 8D 82            [24] 1226 	mov	dpl,r5
      003D47 8E 83            [24] 1227 	mov	dph,r6
      003D49 8F F0            [24] 1228 	mov	b,r7
      003D4B 12 5B 16         [24] 1229 	lcall	__gptrget
      003D4E FC               [12] 1230 	mov	r4,a
      003D4F A3               [24] 1231 	inc	dptr
      003D50 AD 82            [24] 1232 	mov	r5,dpl
      003D52 AE 83            [24] 1233 	mov	r6,dph
      003D54 90 10 AC         [24] 1234 	mov	dptr,#_uartReadString_str_1_21
      003D57 ED               [12] 1235 	mov	a,r5
      003D58 F0               [24] 1236 	movx	@dptr,a
      003D59 EE               [12] 1237 	mov	a,r6
      003D5A A3               [24] 1238 	inc	dptr
      003D5B F0               [24] 1239 	movx	@dptr,a
      003D5C EF               [12] 1240 	mov	a,r7
      003D5D A3               [24] 1241 	inc	dptr
      003D5E F0               [24] 1242 	movx	@dptr,a
      003D5F BC 0D 02         [24] 1243 	cjne	r4,#0x0D,00112$
      003D62 80 03            [24] 1244 	sjmp	00113$
      003D64                       1245 00112$:
      003D64 02 3D 30         [24] 1246 	ljmp	00101$
      003D67                       1247 00113$:
      003D67 90 10 AC         [24] 1248 	mov	dptr,#_uartReadString_str_1_21
      003D6A ED               [12] 1249 	mov	a,r5
      003D6B F0               [24] 1250 	movx	@dptr,a
      003D6C EE               [12] 1251 	mov	a,r6
      003D6D A3               [24] 1252 	inc	dptr
      003D6E F0               [24] 1253 	movx	@dptr,a
      003D6F EF               [12] 1254 	mov	a,r7
      003D70 A3               [24] 1255 	inc	dptr
      003D71 F0               [24] 1256 	movx	@dptr,a
      003D72                       1257 00104$:
      003D72 22               [24] 1258 	ret
                                   1259 ;------------------------------------------------------------
                                   1260 ;Allocation info for local variables in function 'uartWriteU16'
                                   1261 ;------------------------------------------------------------
                                   1262 ;x                         Allocated with name '_uartWriteU16_x_1_24'
                                   1263 ;out                       Allocated with name '_uartWriteU16_out_1_25'
                                   1264 ;------------------------------------------------------------
                                   1265 ;	../uart/epl_uart.c:76: uint16 uartWriteU16(uint16 x){
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function uartWriteU16
                                   1268 ;	-----------------------------------------
      003D73                       1269 _uartWriteU16:
      003D73 AF 83            [24] 1270 	mov	r7,dph
      003D75 E5 82            [12] 1271 	mov	a,dpl
      003D77 90 10 AF         [24] 1272 	mov	dptr,#_uartWriteU16_x_1_24
      003D7A F0               [24] 1273 	movx	@dptr,a
      003D7B EF               [12] 1274 	mov	a,r7
      003D7C A3               [24] 1275 	inc	dptr
      003D7D F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	../uart/epl_uart.c:80: uartWriteByte('0');
      003D7E 75 82 30         [24] 1278 	mov	dpl,#0x30
      003D81 12 3C 5A         [24] 1279 	lcall	_uartWriteByte
                                   1280 ;	../uart/epl_uart.c:81: uartWriteByte('X');          
      003D84 75 82 58         [24] 1281 	mov	dpl,#0x58
      003D87 12 3C 5A         [24] 1282 	lcall	_uartWriteByte
                                   1283 ;	../uart/epl_uart.c:84: out = (0xf000&x)>>12;
      003D8A 90 10 AF         [24] 1284 	mov	dptr,#_uartWriteU16_x_1_24
      003D8D E0               [24] 1285 	movx	a,@dptr
      003D8E FE               [12] 1286 	mov	r6,a
      003D8F A3               [24] 1287 	inc	dptr
      003D90 E0               [24] 1288 	movx	a,@dptr
      003D91 FF               [12] 1289 	mov	r7,a
      003D92 7C 00            [12] 1290 	mov	r4,#0x00
      003D94 74 F0            [12] 1291 	mov	a,#0xF0
      003D96 5F               [12] 1292 	anl	a,r7
      003D97 FD               [12] 1293 	mov	r5,a
      003D98 ED               [12] 1294 	mov	a,r5
      003D99 C4               [12] 1295 	swap	a
      003D9A 54 0F            [12] 1296 	anl	a,#0x0F
      003D9C FC               [12] 1297 	mov	r4,a
      003D9D 7D 00            [12] 1298 	mov	r5,#0x00
                                   1299 ;	../uart/epl_uart.c:85: out=N_to_ascii(out);
      003D9F 8C 82            [24] 1300 	mov	dpl,r4
      003DA1 C0 07            [24] 1301 	push	ar7
      003DA3 C0 06            [24] 1302 	push	ar6
      003DA5 12 3E 36         [24] 1303 	lcall	_N_to_ascii
      003DA8 AD 82            [24] 1304 	mov	r5,dpl
      003DAA D0 06            [24] 1305 	pop	ar6
      003DAC D0 07            [24] 1306 	pop	ar7
                                   1307 ;	../uart/epl_uart.c:86: uartWriteByte(out);
      003DAE 8D 82            [24] 1308 	mov	dpl,r5
      003DB0 C0 07            [24] 1309 	push	ar7
      003DB2 C0 06            [24] 1310 	push	ar6
      003DB4 12 3C 5A         [24] 1311 	lcall	_uartWriteByte
      003DB7 D0 06            [24] 1312 	pop	ar6
      003DB9 D0 07            [24] 1313 	pop	ar7
                                   1314 ;	../uart/epl_uart.c:88: out = (0x0f00&x)>>8;
      003DBB 7C 00            [12] 1315 	mov	r4,#0x00
      003DBD 74 0F            [12] 1316 	mov	a,#0x0F
      003DBF 5F               [12] 1317 	anl	a,r7
      003DC0 FD               [12] 1318 	mov	r5,a
      003DC1 8D 04            [24] 1319 	mov	ar4,r5
                                   1320 ;	../uart/epl_uart.c:89: out=N_to_ascii(out);
      003DC3 8C 82            [24] 1321 	mov	dpl,r4
      003DC5 C0 07            [24] 1322 	push	ar7
      003DC7 C0 06            [24] 1323 	push	ar6
      003DC9 12 3E 36         [24] 1324 	lcall	_N_to_ascii
      003DCC AD 82            [24] 1325 	mov	r5,dpl
      003DCE D0 06            [24] 1326 	pop	ar6
      003DD0 D0 07            [24] 1327 	pop	ar7
                                   1328 ;	../uart/epl_uart.c:90: uartWriteByte(out);
      003DD2 8D 82            [24] 1329 	mov	dpl,r5
      003DD4 C0 07            [24] 1330 	push	ar7
      003DD6 C0 06            [24] 1331 	push	ar6
      003DD8 12 3C 5A         [24] 1332 	lcall	_uartWriteByte
      003DDB D0 06            [24] 1333 	pop	ar6
      003DDD D0 07            [24] 1334 	pop	ar7
                                   1335 ;	../uart/epl_uart.c:92: out = (0x00f0&x)>>4;
      003DDF 74 F0            [12] 1336 	mov	a,#0xF0
      003DE1 5E               [12] 1337 	anl	a,r6
      003DE2 FC               [12] 1338 	mov	r4,a
      003DE3 7D 00            [12] 1339 	mov	r5,#0x00
      003DE5 ED               [12] 1340 	mov	a,r5
      003DE6 C4               [12] 1341 	swap	a
      003DE7 CC               [12] 1342 	xch	a,r4
      003DE8 C4               [12] 1343 	swap	a
      003DE9 54 0F            [12] 1344 	anl	a,#0x0F
      003DEB 6C               [12] 1345 	xrl	a,r4
      003DEC CC               [12] 1346 	xch	a,r4
      003DED 54 0F            [12] 1347 	anl	a,#0x0F
      003DEF CC               [12] 1348 	xch	a,r4
      003DF0 6C               [12] 1349 	xrl	a,r4
      003DF1 CC               [12] 1350 	xch	a,r4
      003DF2 FD               [12] 1351 	mov	r5,a
                                   1352 ;	../uart/epl_uart.c:93: out=N_to_ascii(out);
      003DF3 8C 82            [24] 1353 	mov	dpl,r4
      003DF5 C0 07            [24] 1354 	push	ar7
      003DF7 C0 06            [24] 1355 	push	ar6
      003DF9 12 3E 36         [24] 1356 	lcall	_N_to_ascii
      003DFC AD 82            [24] 1357 	mov	r5,dpl
      003DFE D0 06            [24] 1358 	pop	ar6
      003E00 D0 07            [24] 1359 	pop	ar7
                                   1360 ;	../uart/epl_uart.c:94: uartWriteByte(out);
      003E02 8D 82            [24] 1361 	mov	dpl,r5
      003E04 C0 07            [24] 1362 	push	ar7
      003E06 C0 06            [24] 1363 	push	ar6
      003E08 12 3C 5A         [24] 1364 	lcall	_uartWriteByte
      003E0B D0 06            [24] 1365 	pop	ar6
      003E0D D0 07            [24] 1366 	pop	ar7
                                   1367 ;	../uart/epl_uart.c:96: out = 0x000f&x;
      003E0F 74 0F            [12] 1368 	mov	a,#0x0F
      003E11 5E               [12] 1369 	anl	a,r6
      003E12 FC               [12] 1370 	mov	r4,a
      003E13 7D 00            [12] 1371 	mov	r5,#0x00
                                   1372 ;	../uart/epl_uart.c:97: out=N_to_ascii(out);
      003E15 8C 82            [24] 1373 	mov	dpl,r4
      003E17 C0 07            [24] 1374 	push	ar7
      003E19 C0 06            [24] 1375 	push	ar6
      003E1B 12 3E 36         [24] 1376 	lcall	_N_to_ascii
      003E1E AD 82            [24] 1377 	mov	r5,dpl
      003E20 D0 06            [24] 1378 	pop	ar6
      003E22 D0 07            [24] 1379 	pop	ar7
                                   1380 ;	../uart/epl_uart.c:98: uartWriteByte(out);
      003E24 8D 82            [24] 1381 	mov	dpl,r5
      003E26 C0 07            [24] 1382 	push	ar7
      003E28 C0 06            [24] 1383 	push	ar6
      003E2A 12 3C 5A         [24] 1384 	lcall	_uartWriteByte
      003E2D D0 06            [24] 1385 	pop	ar6
      003E2F D0 07            [24] 1386 	pop	ar7
                                   1387 ;	../uart/epl_uart.c:112: return x;
      003E31 8E 82            [24] 1388 	mov	dpl,r6
      003E33 8F 83            [24] 1389 	mov	dph,r7
      003E35                       1390 00101$:
      003E35 22               [24] 1391 	ret
                                   1392 ;------------------------------------------------------------
                                   1393 ;Allocation info for local variables in function 'N_to_ascii'
                                   1394 ;------------------------------------------------------------
                                   1395 ;x                         Allocated with name '_N_to_ascii_x_1_26'
                                   1396 ;------------------------------------------------------------
                                   1397 ;	../uart/epl_uart.c:115: uint8 N_to_ascii(uint8 x){
                                   1398 ;	-----------------------------------------
                                   1399 ;	 function N_to_ascii
                                   1400 ;	-----------------------------------------
      003E36                       1401 _N_to_ascii:
      003E36 E5 82            [12] 1402 	mov	a,dpl
      003E38 90 10 B1         [24] 1403 	mov	dptr,#_N_to_ascii_x_1_26
      003E3B F0               [24] 1404 	movx	@dptr,a
                                   1405 ;	../uart/epl_uart.c:119: if ( (x <= 0x09) )
      003E3C E0               [24] 1406 	movx	a,@dptr
      003E3D FF               [12] 1407 	mov	r7,a
      003E3E C3               [12] 1408 	clr	c
      003E3F 74 09            [12] 1409 	mov	a,#0x09
      003E41 9F               [12] 1410 	subb	a,r7
      003E42 50 03            [24] 1411 	jnc	00119$
      003E44 02 3E 55         [24] 1412 	ljmp	00106$
      003E47                       1413 00119$:
                                   1414 ;	../uart/epl_uart.c:120: return x+0x30; 
      003E47 90 10 B1         [24] 1415 	mov	dptr,#_N_to_ascii_x_1_26
      003E4A E0               [24] 1416 	movx	a,@dptr
      003E4B FF               [12] 1417 	mov	r7,a
      003E4C 74 30            [12] 1418 	mov	a,#0x30
      003E4E 2F               [12] 1419 	add	a,r7
      003E4F FF               [12] 1420 	mov	r7,a
      003E50 8F 82            [24] 1421 	mov	dpl,r7
      003E52 02 3E 7D         [24] 1422 	ljmp	00108$
      003E55                       1423 00106$:
                                   1424 ;	../uart/epl_uart.c:121: else if( 0x0a<=x &&x <=0x0f ){
      003E55 90 10 B1         [24] 1425 	mov	dptr,#_N_to_ascii_x_1_26
      003E58 E0               [24] 1426 	movx	a,@dptr
      003E59 FF               [12] 1427 	mov	r7,a
      003E5A BF 0A 00         [24] 1428 	cjne	r7,#0x0A,00120$
      003E5D                       1429 00120$:
      003E5D 50 03            [24] 1430 	jnc	00121$
      003E5F 02 3E 7A         [24] 1431 	ljmp	00102$
      003E62                       1432 00121$:
      003E62 90 10 B1         [24] 1433 	mov	dptr,#_N_to_ascii_x_1_26
      003E65 E0               [24] 1434 	movx	a,@dptr
      003E66 FF               [12] 1435 	mov	r7,a
      003E67 C3               [12] 1436 	clr	c
      003E68 74 0F            [12] 1437 	mov	a,#0x0F
      003E6A 9F               [12] 1438 	subb	a,r7
      003E6B 50 03            [24] 1439 	jnc	00122$
      003E6D 02 3E 7A         [24] 1440 	ljmp	00102$
      003E70                       1441 00122$:
                                   1442 ;	../uart/epl_uart.c:124: return x;
      003E70 90 10 B1         [24] 1443 	mov	dptr,#_N_to_ascii_x_1_26
      003E73 E0               [24] 1444 	movx	a,@dptr
      003E74 FF               [12] 1445 	mov	r7,a
      003E75 8F 82            [24] 1446 	mov	dpl,r7
      003E77 02 3E 7D         [24] 1447 	ljmp	00108$
      003E7A                       1448 00102$:
                                   1449 ;	../uart/epl_uart.c:127: return 0xff;
      003E7A 75 82 FF         [24] 1450 	mov	dpl,#0xFF
      003E7D                       1451 00108$:
      003E7D 22               [24] 1452 	ret
                                   1453 	.area CSEG    (CODE)
                                   1454 	.area CONST   (CODE)
                                   1455 	.area CABS    (ABS,CODE)
