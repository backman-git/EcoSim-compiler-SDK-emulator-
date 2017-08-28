                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:57 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module BXprof
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _BXchar2UUID
                                     13 	.globl _BXchar1UUID
                                     14 	.globl _BXServUUID
                                     15 	.globl _BX_CBs
                                     16 	.globl _GATTServApp_RegisterService
                                     17 	.globl _MODE
                                     18 	.globl _RE
                                     19 	.globl _SLAVE
                                     20 	.globl _FE
                                     21 	.globl _ERR
                                     22 	.globl _RX_BYTE
                                     23 	.globl _TX_BYTE
                                     24 	.globl _ACTIVE
                                     25 	.globl _B_7
                                     26 	.globl _B_6
                                     27 	.globl _B_5
                                     28 	.globl _B_4
                                     29 	.globl _B_3
                                     30 	.globl _B_2
                                     31 	.globl _B_1
                                     32 	.globl _B_0
                                     33 	.globl _WDTIF
                                     34 	.globl _P1IF
                                     35 	.globl _UTX1IF
                                     36 	.globl _UTX0IF
                                     37 	.globl _P2IF
                                     38 	.globl _ACC_7
                                     39 	.globl _ACC_6
                                     40 	.globl _ACC_5
                                     41 	.globl _ACC_4
                                     42 	.globl _ACC_3
                                     43 	.globl _ACC_2
                                     44 	.globl _ACC_1
                                     45 	.globl _ACC_0
                                     46 	.globl _OVFIM
                                     47 	.globl _T4CH1IF
                                     48 	.globl _T4CH0IF
                                     49 	.globl _T4OVFIF
                                     50 	.globl _T3CH1IF
                                     51 	.globl _T3CH0IF
                                     52 	.globl _T3OVFIF
                                     53 	.globl _CY
                                     54 	.globl _AC
                                     55 	.globl _F0
                                     56 	.globl _RS1
                                     57 	.globl _RS0
                                     58 	.globl _OV
                                     59 	.globl _F1
                                     60 	.globl _P
                                     61 	.globl _STIF
                                     62 	.globl _P0IF
                                     63 	.globl _T4IF
                                     64 	.globl _T3IF
                                     65 	.globl _T2IF
                                     66 	.globl _T1IF
                                     67 	.globl _DMAIF
                                     68 	.globl _P0IE
                                     69 	.globl _T4IE
                                     70 	.globl _T3IE
                                     71 	.globl _T2IE
                                     72 	.globl _T1IE
                                     73 	.globl _DMAIE
                                     74 	.globl _EA
                                     75 	.globl _STIE
                                     76 	.globl _ENCIE
                                     77 	.globl _URX1IE
                                     78 	.globl _URX0IE
                                     79 	.globl _ADCIE
                                     80 	.globl _RFERRIE
                                     81 	.globl _P2_7
                                     82 	.globl _P2_6
                                     83 	.globl _P2_5
                                     84 	.globl _P2_4
                                     85 	.globl _P2_3
                                     86 	.globl _P2_2
                                     87 	.globl _P2_1
                                     88 	.globl _P2_0
                                     89 	.globl _ENCIF_1
                                     90 	.globl _ENCIF_0
                                     91 	.globl _P1_7
                                     92 	.globl _P1_6
                                     93 	.globl _P1_5
                                     94 	.globl _P1_4
                                     95 	.globl _P1_3
                                     96 	.globl _P1_2
                                     97 	.globl _P1_1
                                     98 	.globl _P1_0
                                     99 	.globl _URX1IF
                                    100 	.globl _ADCIF
                                    101 	.globl _URX0IF
                                    102 	.globl _IT1
                                    103 	.globl _RFERRIF
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _MusicCtl
                                    114 	.globl _FlashLed
                                    115 	.globl _ServNL
                                    116 	.globl _ServNH
                                    117 	.globl _BleFeedback
                                    118 	.globl _BleOpr
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
                                    243 	.globl _TXFILTCFG
                                    244 	.globl _RFC_OBS_CTRL2
                                    245 	.globl _RFC_OBS_CTRL1
                                    246 	.globl _RFC_OBS_CTRL0
                                    247 	.globl _CSPT
                                    248 	.globl _CSPZ
                                    249 	.globl _CSPY
                                    250 	.globl _CSPX
                                    251 	.globl _CSPSTAT
                                    252 	.globl _CSPCTRL
                                    253 	.globl _CSPPROG23
                                    254 	.globl _CSPPROG22
                                    255 	.globl _CSPPROG21
                                    256 	.globl _CSPPROG20
                                    257 	.globl _CSPPROG19
                                    258 	.globl _CSPPROG18
                                    259 	.globl _CSPPROG17
                                    260 	.globl _CSPPROG16
                                    261 	.globl _CSPPROG15
                                    262 	.globl _CSPPROG14
                                    263 	.globl _CSPPROG13
                                    264 	.globl _CSPPROG12
                                    265 	.globl _CSPPROG11
                                    266 	.globl _CSPPROG10
                                    267 	.globl _CSPPROG9
                                    268 	.globl _CSPPROG8
                                    269 	.globl _CSPPROG7
                                    270 	.globl _CSPPROG6
                                    271 	.globl _CSPPROG5
                                    272 	.globl _CSPPROG4
                                    273 	.globl _CSPPROG3
                                    274 	.globl _CSPPROG2
                                    275 	.globl _CSPPROG1
                                    276 	.globl _CSPPROG0
                                    277 	.globl _PTEST1
                                    278 	.globl _PTEST0
                                    279 	.globl _ATEST
                                    280 	.globl _DACTEST2
                                    281 	.globl _DACTEST1
                                    282 	.globl _DACTEST0
                                    283 	.globl _MDMTEST1
                                    284 	.globl _MDMTEST0
                                    285 	.globl _ADCTEST2
                                    286 	.globl _ADCTEST1
                                    287 	.globl _ADCTEST0
                                    288 	.globl _AGCCTRL3
                                    289 	.globl _AGCCTRL2
                                    290 	.globl _AGCCTRL1
                                    291 	.globl _AGCCTRL0
                                    292 	.globl _FSCAL3
                                    293 	.globl _FSCAL2
                                    294 	.globl _FSCAL1
                                    295 	.globl _FSCTRL
                                    296 	.globl _RXCTRL
                                    297 	.globl _FREQEST
                                    298 	.globl _MDMCTRL1
                                    299 	.globl _MDMCTRL0
                                    300 	.globl _RFRND
                                    301 	.globl _OPAMPMC
                                    302 	.globl _RFERRM
                                    303 	.globl _RFIRQM1
                                    304 	.globl _RFIRQM0
                                    305 	.globl _TXLAST_PTR
                                    306 	.globl _TXFIRST_PTR
                                    307 	.globl _RXP1_PTR
                                    308 	.globl _RXLAST_PTR
                                    309 	.globl _RXFIRST_PTR
                                    310 	.globl _TXFIFOCNT
                                    311 	.globl _RXFIFOCNT
                                    312 	.globl _RXFIRST
                                    313 	.globl _RSSISTAT
                                    314 	.globl _RSSI
                                    315 	.globl _CCACTRL1
                                    316 	.globl _CCACTRL0
                                    317 	.globl _FSMCTRL
                                    318 	.globl _FIFOPCTRL
                                    319 	.globl _FSMSTAT1
                                    320 	.globl _FSMSTAT0
                                    321 	.globl _TXCTRL
                                    322 	.globl _TXPOWER
                                    323 	.globl _FREQCTRL
                                    324 	.globl _FREQTUNE
                                    325 	.globl _RXMASKCLR
                                    326 	.globl _RXMASKSET
                                    327 	.globl _RXENABLE
                                    328 	.globl _FRMCTRL1
                                    329 	.globl _FRMCTRL0
                                    330 	.globl _SRCEXTEN2
                                    331 	.globl _SRCEXTEN1
                                    332 	.globl _SRCEXTEN0
                                    333 	.globl _SRCSHORTEN2
                                    334 	.globl _SRCSHORTEN1
                                    335 	.globl _SRCSHORTEN0
                                    336 	.globl _SRCMATCH
                                    337 	.globl _FRMFILT1
                                    338 	.globl _FRMFILT0
                                    339 	.globl _IEEE_ADDR
                                    340 	.globl _PANIDL
                                    341 	.globl _PANIDH
                                    342 	.globl _SHORTADDRL
                                    343 	.globl _SHORTADDRH
                                    344 	.globl _USBF5
                                    345 	.globl _USBF4
                                    346 	.globl _USBF3
                                    347 	.globl _USBF2
                                    348 	.globl _USBF1
                                    349 	.globl _USBF0
                                    350 	.globl _USBCNTH
                                    351 	.globl _USBCNTL
                                    352 	.globl _USBCNT0
                                    353 	.globl _USBCSOH
                                    354 	.globl _USBCSOL
                                    355 	.globl _USBMAXO
                                    356 	.globl _USBCSIH
                                    357 	.globl _USBCSIL
                                    358 	.globl _USBCS0
                                    359 	.globl _USBMAXI
                                    360 	.globl _USBCTRL
                                    361 	.globl _USBINDEX
                                    362 	.globl _USBFRMH
                                    363 	.globl _USBFRML
                                    364 	.globl _USBCIE
                                    365 	.globl _USBOIE
                                    366 	.globl _USBIIE
                                    367 	.globl _USBCIF
                                    368 	.globl _USBOIF
                                    369 	.globl _USBIIF
                                    370 	.globl _USBPOW
                                    371 	.globl _USBADDR
                                    372 	.globl _CMPCTL
                                    373 	.globl _OPAMPS
                                    374 	.globl _OPAMPC
                                    375 	.globl _STCV2
                                    376 	.globl _STCV1
                                    377 	.globl _STCV0
                                    378 	.globl _STCS
                                    379 	.globl _STCC
                                    380 	.globl _T1CC4H
                                    381 	.globl _T1CC4L
                                    382 	.globl _T1CC3H
                                    383 	.globl _T1CC3L
                                    384 	.globl _X_T1CC2H
                                    385 	.globl _X_T1CC2L
                                    386 	.globl _X_T1CC1H
                                    387 	.globl _X_T1CC1L
                                    388 	.globl _X_T1CC0H
                                    389 	.globl _X_T1CC0L
                                    390 	.globl _T1CCTL4
                                    391 	.globl _T1CCTL3
                                    392 	.globl _X_T1CCTL2
                                    393 	.globl _X_T1CCTL1
                                    394 	.globl _X_T1CCTL0
                                    395 	.globl _CLD
                                    396 	.globl _IRCTL
                                    397 	.globl _CHIPINFO1
                                    398 	.globl _CHIPINFO0
                                    399 	.globl _FWDATA
                                    400 	.globl _FADDRH
                                    401 	.globl _FADDRL
                                    402 	.globl _FCTL
                                    403 	.globl _IVCTRL
                                    404 	.globl _BATTMON
                                    405 	.globl _SRCRC
                                    406 	.globl _DBGDATA
                                    407 	.globl _TESTREG0
                                    408 	.globl _CHIPID
                                    409 	.globl _CHVER
                                    410 	.globl _OBSSEL5
                                    411 	.globl _OBSSEL4
                                    412 	.globl _OBSSEL3
                                    413 	.globl _OBSSEL2
                                    414 	.globl _OBSSEL1
                                    415 	.globl _OBSSEL0
                                    416 	.globl _I2CIO
                                    417 	.globl _I2CWC
                                    418 	.globl _I2CADDR
                                    419 	.globl _I2CDATA
                                    420 	.globl _I2CSTAT
                                    421 	.globl _I2CCFG
                                    422 	.globl _BX_AddService
                                    423 ;--------------------------------------------------------
                                    424 ; special function registers
                                    425 ;--------------------------------------------------------
                                    426 	.area RSEG    (ABS,DATA)
      000000                        427 	.org 0x0000
                           000080   428 _P0	=	0x0080
                           000081   429 _SP	=	0x0081
                           000082   430 _DPL0	=	0x0082
                           000083   431 _DPH0	=	0x0083
                           000084   432 _DPL1	=	0x0084
                           000085   433 _DPH1	=	0x0085
                           000086   434 _U0CSR	=	0x0086
                           000087   435 _PCON	=	0x0087
                           000088   436 _TCON	=	0x0088
                           000089   437 _P0IFG	=	0x0089
                           00008A   438 _P1IFG	=	0x008a
                           00008B   439 _P2IFG	=	0x008b
                           00008C   440 _PICTL	=	0x008c
                           00008D   441 _P1IEN	=	0x008d
                           00008F   442 _P0INP	=	0x008f
                           000090   443 _P1	=	0x0090
                           000091   444 _RFIRQF1	=	0x0091
                           000092   445 _DPS	=	0x0092
                           000093   446 _MPAGE	=	0x0093
                           000093   447 __XPAGE	=	0x0093
                           000094   448 _T2CTRL	=	0x0094
                           000095   449 _ST0	=	0x0095
                           000096   450 _ST1	=	0x0096
                           000097   451 _ST2	=	0x0097
                           000098   452 _S0CON	=	0x0098
                           00009A   453 _IEN2	=	0x009a
                           00009B   454 _S1CON	=	0x009b
                           00009C   455 _T2EVTCFG	=	0x009c
                           00009D   456 _SLEEPSTA	=	0x009d
                           00009E   457 _CLKCONSTA	=	0x009e
                           00009F   458 _PSBANK	=	0x009f
                           00009F   459 _FMAP	=	0x009f
                           0000A0   460 _P2	=	0x00a0
                           0000A1   461 _T2IRQF	=	0x00a1
                           0000A2   462 _T2M0	=	0x00a2
                           0000A3   463 _T2M1	=	0x00a3
                           0000A4   464 _T2MOVF0	=	0x00a4
                           0000A5   465 _T2MOVF1	=	0x00a5
                           0000A6   466 _T2MOVF2	=	0x00a6
                           0000A7   467 _T2IRQM	=	0x00a7
                           0000A8   468 _IEN0	=	0x00a8
                           0000A9   469 _IP0	=	0x00a9
                           0000AB   470 _P0IEN	=	0x00ab
                           0000AC   471 _P2IEN	=	0x00ac
                           0000AD   472 _STLOAD	=	0x00ad
                           0000AE   473 _PMUX	=	0x00ae
                           0000AF   474 _T1STAT	=	0x00af
                           0000B1   475 _ENCDI	=	0x00b1
                           0000B2   476 _ENCDO	=	0x00b2
                           0000B3   477 _ENCCS	=	0x00b3
                           0000B4   478 _ADCCON1	=	0x00b4
                           0000B5   479 _ADCCON2	=	0x00b5
                           0000B6   480 _ADCCON3	=	0x00b6
                           0000B8   481 _IEN1	=	0x00b8
                           0000B9   482 _IP1	=	0x00b9
                           0000BA   483 _ADCL	=	0x00ba
                           0000BB   484 _ADCH	=	0x00bb
                           0000BC   485 _RNDL	=	0x00bc
                           0000BD   486 _RNDH	=	0x00bd
                           0000BE   487 _SLEEPCMD	=	0x00be
                           0000BF   488 _RFERRF	=	0x00bf
                           0000C0   489 _IRCON	=	0x00c0
                           0000C1   490 _U0DBUF	=	0x00c1
                           0000C2   491 _U0BAUD	=	0x00c2
                           0000C3   492 _T2MSEL	=	0x00c3
                           0000C4   493 _U0UCR	=	0x00c4
                           0000C5   494 _U0GCR	=	0x00c5
                           0000C6   495 _CLKCONCMD	=	0x00c6
                           0000C7   496 _MEMCTR	=	0x00c7
                           0000C9   497 _WDCTL	=	0x00c9
                           0000CA   498 _T3CNT	=	0x00ca
                           0000CB   499 _T3CTL	=	0x00cb
                           0000CC   500 _T3CCTL0	=	0x00cc
                           0000CD   501 _T3CC0	=	0x00cd
                           0000CE   502 _T3CCTL1	=	0x00ce
                           0000CF   503 _T3CC1	=	0x00cf
                           0000D0   504 _PSW	=	0x00d0
                           0000D1   505 _DMAIRQ	=	0x00d1
                           0000D2   506 _DMA1CFGL	=	0x00d2
                           0000D3   507 _DMA1CFGH	=	0x00d3
                           0000D4   508 _DMA0CFGL	=	0x00d4
                           0000D5   509 _DMA0CFGH	=	0x00d5
                           0000D6   510 _DMAARM	=	0x00d6
                           0000D7   511 _DMAREQ	=	0x00d7
                           0000D8   512 _TIMIF	=	0x00d8
                           0000D9   513 _RFD	=	0x00d9
                           0000DA   514 _T1CC0L	=	0x00da
                           0000DB   515 _T1CC0H	=	0x00db
                           0000DC   516 _T1CC1L	=	0x00dc
                           0000DD   517 _T1CC1H	=	0x00dd
                           0000DE   518 _T1CC2L	=	0x00de
                           0000DF   519 _T1CC2H	=	0x00df
                           0000E0   520 _ACC	=	0x00e0
                           0000E1   521 _RFST	=	0x00e1
                           0000E2   522 _T1CNTL	=	0x00e2
                           0000E3   523 _T1CNTH	=	0x00e3
                           0000E4   524 _T1CTL	=	0x00e4
                           0000E5   525 _T1CCTL0	=	0x00e5
                           0000E6   526 _T1CCTL1	=	0x00e6
                           0000E7   527 _T1CCTL2	=	0x00e7
                           0000E8   528 _IRCON2	=	0x00e8
                           0000E9   529 _RFIRQF0	=	0x00e9
                           0000EA   530 _T4CNT	=	0x00ea
                           0000EB   531 _T4CTL	=	0x00eb
                           0000EC   532 _T4CCTL0	=	0x00ec
                           0000ED   533 _T4CC0	=	0x00ed
                           0000EE   534 _T4CCTL1	=	0x00ee
                           0000EF   535 _T4CC1	=	0x00ef
                           0000F0   536 _B	=	0x00f0
                           0000F1   537 _PERCFG	=	0x00f1
                           0000F2   538 _APCFG	=	0x00f2
                           0000F3   539 _P0SEL	=	0x00f3
                           0000F4   540 _P1SEL	=	0x00f4
                           0000F5   541 _P2SEL	=	0x00f5
                           0000F6   542 _P1INP	=	0x00f6
                           0000F7   543 _P2INP	=	0x00f7
                           0000F8   544 _U1CSR	=	0x00f8
                           0000F9   545 _U1DBUF	=	0x00f9
                           0000FA   546 _U1BAUD	=	0x00fa
                           0000FB   547 _U1UCR	=	0x00fb
                           0000FC   548 _U1GCR	=	0x00fc
                           0000FD   549 _P0DIR	=	0x00fd
                           0000FE   550 _P1DIR	=	0x00fe
                           0000FF   551 _P2DIR	=	0x00ff
                           0000AA   552 _BleOpr	=	0x00aa
                           00008E   553 _BleFeedback	=	0x008e
                           0000B0   554 _ServNH	=	0x00b0
                           0000B7   555 _ServNL	=	0x00b7
                           0000C0   556 _FlashLed	=	0x00c0
                           0000C2   557 _MusicCtl	=	0x00c2
                                    558 ;--------------------------------------------------------
                                    559 ; special function bits
                                    560 ;--------------------------------------------------------
                                    561 	.area RSEG    (ABS,DATA)
      000000                        562 	.org 0x0000
                           000080   563 _P0_0	=	0x0080
                           000081   564 _P0_1	=	0x0081
                           000082   565 _P0_2	=	0x0082
                           000083   566 _P0_3	=	0x0083
                           000084   567 _P0_4	=	0x0084
                           000085   568 _P0_5	=	0x0085
                           000086   569 _P0_6	=	0x0086
                           000087   570 _P0_7	=	0x0087
                           000088   571 _IT0	=	0x0088
                           000089   572 _RFERRIF	=	0x0089
                           00008A   573 _IT1	=	0x008a
                           00008B   574 _URX0IF	=	0x008b
                           00008D   575 _ADCIF	=	0x008d
                           00008F   576 _URX1IF	=	0x008f
                           000090   577 _P1_0	=	0x0090
                           000091   578 _P1_1	=	0x0091
                           000092   579 _P1_2	=	0x0092
                           000093   580 _P1_3	=	0x0093
                           000094   581 _P1_4	=	0x0094
                           000095   582 _P1_5	=	0x0095
                           000096   583 _P1_6	=	0x0096
                           000097   584 _P1_7	=	0x0097
                           000098   585 _ENCIF_0	=	0x0098
                           000099   586 _ENCIF_1	=	0x0099
                           0000A0   587 _P2_0	=	0x00a0
                           0000A1   588 _P2_1	=	0x00a1
                           0000A2   589 _P2_2	=	0x00a2
                           0000A3   590 _P2_3	=	0x00a3
                           0000A4   591 _P2_4	=	0x00a4
                           0000A5   592 _P2_5	=	0x00a5
                           0000A6   593 _P2_6	=	0x00a6
                           0000A7   594 _P2_7	=	0x00a7
                           0000A8   595 _RFERRIE	=	0x00a8
                           0000A9   596 _ADCIE	=	0x00a9
                           0000AA   597 _URX0IE	=	0x00aa
                           0000AB   598 _URX1IE	=	0x00ab
                           0000AC   599 _ENCIE	=	0x00ac
                           0000AD   600 _STIE	=	0x00ad
                           0000AF   601 _EA	=	0x00af
                           0000B8   602 _DMAIE	=	0x00b8
                           0000B9   603 _T1IE	=	0x00b9
                           0000BA   604 _T2IE	=	0x00ba
                           0000BB   605 _T3IE	=	0x00bb
                           0000BC   606 _T4IE	=	0x00bc
                           0000BD   607 _P0IE	=	0x00bd
                           0000C0   608 _DMAIF	=	0x00c0
                           0000C1   609 _T1IF	=	0x00c1
                           0000C2   610 _T2IF	=	0x00c2
                           0000C3   611 _T3IF	=	0x00c3
                           0000C4   612 _T4IF	=	0x00c4
                           0000C5   613 _P0IF	=	0x00c5
                           0000C7   614 _STIF	=	0x00c7
                           0000D0   615 _P	=	0x00d0
                           0000D1   616 _F1	=	0x00d1
                           0000D2   617 _OV	=	0x00d2
                           0000D3   618 _RS0	=	0x00d3
                           0000D4   619 _RS1	=	0x00d4
                           0000D5   620 _F0	=	0x00d5
                           0000D6   621 _AC	=	0x00d6
                           0000D7   622 _CY	=	0x00d7
                           0000D8   623 _T3OVFIF	=	0x00d8
                           0000D9   624 _T3CH0IF	=	0x00d9
                           0000DA   625 _T3CH1IF	=	0x00da
                           0000DB   626 _T4OVFIF	=	0x00db
                           0000DC   627 _T4CH0IF	=	0x00dc
                           0000DD   628 _T4CH1IF	=	0x00dd
                           0000DE   629 _OVFIM	=	0x00de
                           0000E0   630 _ACC_0	=	0x00e0
                           0000E1   631 _ACC_1	=	0x00e1
                           0000E2   632 _ACC_2	=	0x00e2
                           0000E3   633 _ACC_3	=	0x00e3
                           0000E4   634 _ACC_4	=	0x00e4
                           0000E5   635 _ACC_5	=	0x00e5
                           0000E6   636 _ACC_6	=	0x00e6
                           0000E7   637 _ACC_7	=	0x00e7
                           0000E8   638 _P2IF	=	0x00e8
                           0000E9   639 _UTX0IF	=	0x00e9
                           0000EA   640 _UTX1IF	=	0x00ea
                           0000EB   641 _P1IF	=	0x00eb
                           0000EC   642 _WDTIF	=	0x00ec
                           0000F0   643 _B_0	=	0x00f0
                           0000F1   644 _B_1	=	0x00f1
                           0000F2   645 _B_2	=	0x00f2
                           0000F3   646 _B_3	=	0x00f3
                           0000F4   647 _B_4	=	0x00f4
                           0000F5   648 _B_5	=	0x00f5
                           0000F6   649 _B_6	=	0x00f6
                           0000F7   650 _B_7	=	0x00f7
                           0000F8   651 _ACTIVE	=	0x00f8
                           0000F9   652 _TX_BYTE	=	0x00f9
                           0000FA   653 _RX_BYTE	=	0x00fa
                           0000FB   654 _ERR	=	0x00fb
                           0000FC   655 _FE	=	0x00fc
                           0000FD   656 _SLAVE	=	0x00fd
                           0000FE   657 _RE	=	0x00fe
                           0000FF   658 _MODE	=	0x00ff
                                    659 ;--------------------------------------------------------
                                    660 ; overlayable register banks
                                    661 ;--------------------------------------------------------
                                    662 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        663 	.ds 8
                                    664 ;--------------------------------------------------------
                                    665 ; internal ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area DSEG    (DATA)
                                    668 ;--------------------------------------------------------
                                    669 ; overlayable items in internal ram 
                                    670 ;--------------------------------------------------------
                                    671 ;--------------------------------------------------------
                                    672 ; indirectly addressable internal ram data
                                    673 ;--------------------------------------------------------
                                    674 	.area ISEG    (DATA)
                                    675 ;--------------------------------------------------------
                                    676 ; absolute internal ram data
                                    677 ;--------------------------------------------------------
                                    678 	.area IABS    (ABS,DATA)
                                    679 	.area IABS    (ABS,DATA)
                                    680 ;--------------------------------------------------------
                                    681 ; bit data
                                    682 ;--------------------------------------------------------
                                    683 	.area BSEG    (BIT)
                                    684 ;--------------------------------------------------------
                                    685 ; paged external ram data
                                    686 ;--------------------------------------------------------
                                    687 	.area PSEG    (PAG,XDATA)
                                    688 ;--------------------------------------------------------
                                    689 ; external ram data
                                    690 ;--------------------------------------------------------
                                    691 	.area XSEG    (XDATA)
                           006230   692 _I2CCFG	=	0x6230
                           006231   693 _I2CSTAT	=	0x6231
                           006232   694 _I2CDATA	=	0x6232
                           006233   695 _I2CADDR	=	0x6233
                           006234   696 _I2CWC	=	0x6234
                           006235   697 _I2CIO	=	0x6235
                           006243   698 _OBSSEL0	=	0x6243
                           006244   699 _OBSSEL1	=	0x6244
                           006245   700 _OBSSEL2	=	0x6245
                           006246   701 _OBSSEL3	=	0x6246
                           006247   702 _OBSSEL4	=	0x6247
                           006248   703 _OBSSEL5	=	0x6248
                           006249   704 _CHVER	=	0x6249
                           00624A   705 _CHIPID	=	0x624a
                           00624B   706 _TESTREG0	=	0x624b
                           006260   707 _DBGDATA	=	0x6260
                           006262   708 _SRCRC	=	0x6262
                           006264   709 _BATTMON	=	0x6264
                           006265   710 _IVCTRL	=	0x6265
                           006270   711 _FCTL	=	0x6270
                           006271   712 _FADDRL	=	0x6271
                           006272   713 _FADDRH	=	0x6272
                           006273   714 _FWDATA	=	0x6273
                           006276   715 _CHIPINFO0	=	0x6276
                           006277   716 _CHIPINFO1	=	0x6277
                           006281   717 _IRCTL	=	0x6281
                           006290   718 _CLD	=	0x6290
                           0062A0   719 _X_T1CCTL0	=	0x62a0
                           0062A1   720 _X_T1CCTL1	=	0x62a1
                           0062A2   721 _X_T1CCTL2	=	0x62a2
                           0062A3   722 _T1CCTL3	=	0x62a3
                           0062A4   723 _T1CCTL4	=	0x62a4
                           0062A6   724 _X_T1CC0L	=	0x62a6
                           0062A7   725 _X_T1CC0H	=	0x62a7
                           0062A8   726 _X_T1CC1L	=	0x62a8
                           0062A9   727 _X_T1CC1H	=	0x62a9
                           0062AA   728 _X_T1CC2L	=	0x62aa
                           0062AB   729 _X_T1CC2H	=	0x62ab
                           0062AC   730 _T1CC3L	=	0x62ac
                           0062AD   731 _T1CC3H	=	0x62ad
                           0062AE   732 _T1CC4L	=	0x62ae
                           0062AF   733 _T1CC4H	=	0x62af
                           0062B0   734 _STCC	=	0x62b0
                           0062B1   735 _STCS	=	0x62b1
                           0062B2   736 _STCV0	=	0x62b2
                           0062B3   737 _STCV1	=	0x62b3
                           0062B4   738 _STCV2	=	0x62b4
                           0062C0   739 _OPAMPC	=	0x62c0
                           0062C1   740 _OPAMPS	=	0x62c1
                           0062D0   741 _CMPCTL	=	0x62d0
                           006200   742 _USBADDR	=	0x6200
                           006201   743 _USBPOW	=	0x6201
                           006202   744 _USBIIF	=	0x6202
                           006204   745 _USBOIF	=	0x6204
                           006206   746 _USBCIF	=	0x6206
                           006207   747 _USBIIE	=	0x6207
                           006209   748 _USBOIE	=	0x6209
                           00620B   749 _USBCIE	=	0x620b
                           00620C   750 _USBFRML	=	0x620c
                           00620D   751 _USBFRMH	=	0x620d
                           00620E   752 _USBINDEX	=	0x620e
                           00620F   753 _USBCTRL	=	0x620f
                           006210   754 _USBMAXI	=	0x6210
                           006211   755 _USBCS0	=	0x6211
                           006211   756 _USBCSIL	=	0x6211
                           006212   757 _USBCSIH	=	0x6212
                           006213   758 _USBMAXO	=	0x6213
                           006214   759 _USBCSOL	=	0x6214
                           006215   760 _USBCSOH	=	0x6215
                           006216   761 _USBCNT0	=	0x6216
                           006216   762 _USBCNTL	=	0x6216
                           006217   763 _USBCNTH	=	0x6217
                           006220   764 _USBF0	=	0x6220
                           006222   765 _USBF1	=	0x6222
                           006224   766 _USBF2	=	0x6224
                           006226   767 _USBF3	=	0x6226
                           006228   768 _USBF4	=	0x6228
                           00622A   769 _USBF5	=	0x622a
                           006174   770 _SHORTADDRH	=	0x6174
                           006175   771 _SHORTADDRL	=	0x6175
                           006172   772 _PANIDH	=	0x6172
                           006173   773 _PANIDL	=	0x6173
                           00616A   774 _IEEE_ADDR	=	0x616a
                           006180   775 _FRMFILT0	=	0x6180
                           006181   776 _FRMFILT1	=	0x6181
                           006182   777 _SRCMATCH	=	0x6182
                           006183   778 _SRCSHORTEN0	=	0x6183
                           006184   779 _SRCSHORTEN1	=	0x6184
                           006185   780 _SRCSHORTEN2	=	0x6185
                           006186   781 _SRCEXTEN0	=	0x6186
                           006187   782 _SRCEXTEN1	=	0x6187
                           006188   783 _SRCEXTEN2	=	0x6188
                           006189   784 _FRMCTRL0	=	0x6189
                           00618A   785 _FRMCTRL1	=	0x618a
                           00618B   786 _RXENABLE	=	0x618b
                           00618C   787 _RXMASKSET	=	0x618c
                           00618D   788 _RXMASKCLR	=	0x618d
                           00618E   789 _FREQTUNE	=	0x618e
                           00618F   790 _FREQCTRL	=	0x618f
                           006190   791 _TXPOWER	=	0x6190
                           006191   792 _TXCTRL	=	0x6191
                           006192   793 _FSMSTAT0	=	0x6192
                           006193   794 _FSMSTAT1	=	0x6193
                           006194   795 _FIFOPCTRL	=	0x6194
                           006195   796 _FSMCTRL	=	0x6195
                           006196   797 _CCACTRL0	=	0x6196
                           006197   798 _CCACTRL1	=	0x6197
                           006198   799 _RSSI	=	0x6198
                           006199   800 _RSSISTAT	=	0x6199
                           00619A   801 _RXFIRST	=	0x619a
                           00619B   802 _RXFIFOCNT	=	0x619b
                           00619C   803 _TXFIFOCNT	=	0x619c
                           00619D   804 _RXFIRST_PTR	=	0x619d
                           00619E   805 _RXLAST_PTR	=	0x619e
                           00619F   806 _RXP1_PTR	=	0x619f
                           0061A1   807 _TXFIRST_PTR	=	0x61a1
                           0061A2   808 _TXLAST_PTR	=	0x61a2
                           0061A3   809 _RFIRQM0	=	0x61a3
                           0061A4   810 _RFIRQM1	=	0x61a4
                           0061A5   811 _RFERRM	=	0x61a5
                           0061A6   812 _OPAMPMC	=	0x61a6
                           0061A7   813 _RFRND	=	0x61a7
                           0061A8   814 _MDMCTRL0	=	0x61a8
                           0061A9   815 _MDMCTRL1	=	0x61a9
                           0061AA   816 _FREQEST	=	0x61aa
                           0061AB   817 _RXCTRL	=	0x61ab
                           0061AC   818 _FSCTRL	=	0x61ac
                           0061AE   819 _FSCAL1	=	0x61ae
                           0061AF   820 _FSCAL2	=	0x61af
                           0061B0   821 _FSCAL3	=	0x61b0
                           0061B1   822 _AGCCTRL0	=	0x61b1
                           0061B2   823 _AGCCTRL1	=	0x61b2
                           0061B3   824 _AGCCTRL2	=	0x61b3
                           0061B4   825 _AGCCTRL3	=	0x61b4
                           0061B5   826 _ADCTEST0	=	0x61b5
                           0061B6   827 _ADCTEST1	=	0x61b6
                           0061B7   828 _ADCTEST2	=	0x61b7
                           0061B8   829 _MDMTEST0	=	0x61b8
                           0061B9   830 _MDMTEST1	=	0x61b9
                           0061BA   831 _DACTEST0	=	0x61ba
                           0061BB   832 _DACTEST1	=	0x61bb
                           0061BC   833 _DACTEST2	=	0x61bc
                           0061BD   834 _ATEST	=	0x61bd
                           0061BE   835 _PTEST0	=	0x61be
                           0061BF   836 _PTEST1	=	0x61bf
                           0061C0   837 _CSPPROG0	=	0x61c0
                           0061C1   838 _CSPPROG1	=	0x61c1
                           0061C2   839 _CSPPROG2	=	0x61c2
                           0061C3   840 _CSPPROG3	=	0x61c3
                           0061C4   841 _CSPPROG4	=	0x61c4
                           0061C5   842 _CSPPROG5	=	0x61c5
                           0061C6   843 _CSPPROG6	=	0x61c6
                           0061C7   844 _CSPPROG7	=	0x61c7
                           0061C8   845 _CSPPROG8	=	0x61c8
                           0061C9   846 _CSPPROG9	=	0x61c9
                           0061CA   847 _CSPPROG10	=	0x61ca
                           0061CB   848 _CSPPROG11	=	0x61cb
                           0061CC   849 _CSPPROG12	=	0x61cc
                           0061CD   850 _CSPPROG13	=	0x61cd
                           0061CE   851 _CSPPROG14	=	0x61ce
                           0061CF   852 _CSPPROG15	=	0x61cf
                           0061D0   853 _CSPPROG16	=	0x61d0
                           0061D1   854 _CSPPROG17	=	0x61d1
                           0061D2   855 _CSPPROG18	=	0x61d2
                           0061D3   856 _CSPPROG19	=	0x61d3
                           0061D4   857 _CSPPROG20	=	0x61d4
                           0061D5   858 _CSPPROG21	=	0x61d5
                           0061D6   859 _CSPPROG22	=	0x61d6
                           0061D7   860 _CSPPROG23	=	0x61d7
                           0061E0   861 _CSPCTRL	=	0x61e0
                           0061E1   862 _CSPSTAT	=	0x61e1
                           0061E2   863 _CSPX	=	0x61e2
                           0061E3   864 _CSPY	=	0x61e3
                           0061E4   865 _CSPZ	=	0x61e4
                           0061E5   866 _CSPT	=	0x61e5
                           0061EB   867 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   868 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   869 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   870 _TXFILTCFG	=	0x61fa
      001172                        871 _BXChar1Props:
      001172                        872 	.ds 1
      001173                        873 _BXChar1:
      001173                        874 	.ds 1
      001174                        875 _BXChar1UserDesp:
      001174                        876 	.ds 17
      001185                        877 _BXChar2Props:
      001185                        878 	.ds 1
      001186                        879 _BXChar2:
      001186                        880 	.ds 1
      001187                        881 _BXChar2UserDesp:
      001187                        882 	.ds 17
      001198                        883 _BX_Tbl:
      001198                        884 	.ds 50
      0011CA                        885 _BX_AddService_services_1_297:
      0011CA                        886 	.ds 4
      0011CE                        887 _BX_AddService_status_1_298:
      0011CE                        888 	.ds 1
                                    889 ;--------------------------------------------------------
                                    890 ; absolute external ram data
                                    891 ;--------------------------------------------------------
                                    892 	.area XABS    (ABS,XDATA)
                                    893 ;--------------------------------------------------------
                                    894 ; external initialized ram data
                                    895 ;--------------------------------------------------------
                                    896 	.area HOME    (CODE)
                                    897 	.area GSINIT0 (CODE)
                                    898 	.area GSINIT1 (CODE)
                                    899 	.area GSINIT2 (CODE)
                                    900 	.area GSINIT3 (CODE)
                                    901 	.area GSINIT4 (CODE)
                                    902 	.area GSINIT5 (CODE)
                                    903 	.area GSINIT  (CODE)
                                    904 	.area GSFINAL (CODE)
                                    905 	.area CSEG    (CODE)
                                    906 ;--------------------------------------------------------
                                    907 ; global & static initialisations
                                    908 ;--------------------------------------------------------
                                    909 	.area HOME    (CODE)
                                    910 	.area GSINIT  (CODE)
                                    911 	.area GSFINAL (CODE)
                                    912 	.area GSINIT  (CODE)
                                    913 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:78: static uint8 BXChar1Props = GATT_PROP_READ | GATT_PROP_WRITE;
      0001E0 90 11 72         [24]  914 	mov	dptr,#_BXChar1Props
      0001E3 74 0A            [12]  915 	mov	a,#0x0A
      0001E5 F0               [24]  916 	movx	@dptr,a
                                    917 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:80: static uint8 BXChar1 = 0x00;
      0001E6 90 11 73         [24]  918 	mov	dptr,#_BXChar1
      0001E9 74 00            [12]  919 	mov	a,#0x00
      0001EB F0               [24]  920 	movx	@dptr,a
                                    921 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:82: static uint8 BXChar1UserDesp[17] = "Characteristic 1\0";
      0001EC 90 11 74         [24]  922 	mov	dptr,#_BXChar1UserDesp
      0001EF 74 43            [12]  923 	mov	a,#0x43
      0001F1 F0               [24]  924 	movx	@dptr,a
      0001F2 90 11 75         [24]  925 	mov	dptr,#(_BXChar1UserDesp + 0x0001)
      0001F5 74 68            [12]  926 	mov	a,#0x68
      0001F7 F0               [24]  927 	movx	@dptr,a
      0001F8 90 11 76         [24]  928 	mov	dptr,#(_BXChar1UserDesp + 0x0002)
      0001FB 74 61            [12]  929 	mov	a,#0x61
      0001FD F0               [24]  930 	movx	@dptr,a
      0001FE 90 11 77         [24]  931 	mov	dptr,#(_BXChar1UserDesp + 0x0003)
      000201 74 72            [12]  932 	mov	a,#0x72
      000203 F0               [24]  933 	movx	@dptr,a
      000204 90 11 78         [24]  934 	mov	dptr,#(_BXChar1UserDesp + 0x0004)
      000207 74 61            [12]  935 	mov	a,#0x61
      000209 F0               [24]  936 	movx	@dptr,a
      00020A 90 11 79         [24]  937 	mov	dptr,#(_BXChar1UserDesp + 0x0005)
      00020D 74 63            [12]  938 	mov	a,#0x63
      00020F F0               [24]  939 	movx	@dptr,a
      000210 90 11 7A         [24]  940 	mov	dptr,#(_BXChar1UserDesp + 0x0006)
      000213 74 74            [12]  941 	mov	a,#0x74
      000215 F0               [24]  942 	movx	@dptr,a
      000216 90 11 7B         [24]  943 	mov	dptr,#(_BXChar1UserDesp + 0x0007)
      000219 74 65            [12]  944 	mov	a,#0x65
      00021B F0               [24]  945 	movx	@dptr,a
      00021C 90 11 7C         [24]  946 	mov	dptr,#(_BXChar1UserDesp + 0x0008)
      00021F 74 72            [12]  947 	mov	a,#0x72
      000221 F0               [24]  948 	movx	@dptr,a
      000222 90 11 7D         [24]  949 	mov	dptr,#(_BXChar1UserDesp + 0x0009)
      000225 74 69            [12]  950 	mov	a,#0x69
      000227 F0               [24]  951 	movx	@dptr,a
      000228 90 11 7E         [24]  952 	mov	dptr,#(_BXChar1UserDesp + 0x000a)
      00022B 74 73            [12]  953 	mov	a,#0x73
      00022D F0               [24]  954 	movx	@dptr,a
      00022E 90 11 7F         [24]  955 	mov	dptr,#(_BXChar1UserDesp + 0x000b)
      000231 04               [12]  956 	inc	a
      000232 F0               [24]  957 	movx	@dptr,a
      000233 90 11 80         [24]  958 	mov	dptr,#(_BXChar1UserDesp + 0x000c)
      000236 74 69            [12]  959 	mov	a,#0x69
      000238 F0               [24]  960 	movx	@dptr,a
      000239 90 11 81         [24]  961 	mov	dptr,#(_BXChar1UserDesp + 0x000d)
      00023C 74 63            [12]  962 	mov	a,#0x63
      00023E F0               [24]  963 	movx	@dptr,a
      00023F 90 11 82         [24]  964 	mov	dptr,#(_BXChar1UserDesp + 0x000e)
      000242 74 20            [12]  965 	mov	a,#0x20
      000244 F0               [24]  966 	movx	@dptr,a
      000245 90 11 83         [24]  967 	mov	dptr,#(_BXChar1UserDesp + 0x000f)
      000248 74 31            [12]  968 	mov	a,#0x31
      00024A F0               [24]  969 	movx	@dptr,a
      00024B 90 11 84         [24]  970 	mov	dptr,#(_BXChar1UserDesp + 0x0010)
      00024E 74 00            [12]  971 	mov	a,#0x00
      000250 F0               [24]  972 	movx	@dptr,a
                                    973 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:85: static uint8 BXChar2Props = GATT_PROP_READ |GATT_PROP_WRITE;
      000251 90 11 85         [24]  974 	mov	dptr,#_BXChar2Props
      000254 74 0A            [12]  975 	mov	a,#0x0A
      000256 F0               [24]  976 	movx	@dptr,a
                                    977 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:87: static uint8 BXChar2 = 0x00;
      000257 90 11 86         [24]  978 	mov	dptr,#_BXChar2
      00025A 74 00            [12]  979 	mov	a,#0x00
      00025C F0               [24]  980 	movx	@dptr,a
                                    981 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:89: static uint8 BXChar2UserDesp[17] = "Characteristic 2\0";
      00025D 90 11 87         [24]  982 	mov	dptr,#_BXChar2UserDesp
      000260 74 43            [12]  983 	mov	a,#0x43
      000262 F0               [24]  984 	movx	@dptr,a
      000263 90 11 88         [24]  985 	mov	dptr,#(_BXChar2UserDesp + 0x0001)
      000266 74 68            [12]  986 	mov	a,#0x68
      000268 F0               [24]  987 	movx	@dptr,a
      000269 90 11 89         [24]  988 	mov	dptr,#(_BXChar2UserDesp + 0x0002)
      00026C 74 61            [12]  989 	mov	a,#0x61
      00026E F0               [24]  990 	movx	@dptr,a
      00026F 90 11 8A         [24]  991 	mov	dptr,#(_BXChar2UserDesp + 0x0003)
      000272 74 72            [12]  992 	mov	a,#0x72
      000274 F0               [24]  993 	movx	@dptr,a
      000275 90 11 8B         [24]  994 	mov	dptr,#(_BXChar2UserDesp + 0x0004)
      000278 74 61            [12]  995 	mov	a,#0x61
      00027A F0               [24]  996 	movx	@dptr,a
      00027B 90 11 8C         [24]  997 	mov	dptr,#(_BXChar2UserDesp + 0x0005)
      00027E 74 63            [12]  998 	mov	a,#0x63
      000280 F0               [24]  999 	movx	@dptr,a
      000281 90 11 8D         [24] 1000 	mov	dptr,#(_BXChar2UserDesp + 0x0006)
      000284 74 74            [12] 1001 	mov	a,#0x74
      000286 F0               [24] 1002 	movx	@dptr,a
      000287 90 11 8E         [24] 1003 	mov	dptr,#(_BXChar2UserDesp + 0x0007)
      00028A 74 65            [12] 1004 	mov	a,#0x65
      00028C F0               [24] 1005 	movx	@dptr,a
      00028D 90 11 8F         [24] 1006 	mov	dptr,#(_BXChar2UserDesp + 0x0008)
      000290 74 72            [12] 1007 	mov	a,#0x72
      000292 F0               [24] 1008 	movx	@dptr,a
      000293 90 11 90         [24] 1009 	mov	dptr,#(_BXChar2UserDesp + 0x0009)
      000296 74 69            [12] 1010 	mov	a,#0x69
      000298 F0               [24] 1011 	movx	@dptr,a
      000299 90 11 91         [24] 1012 	mov	dptr,#(_BXChar2UserDesp + 0x000a)
      00029C 74 73            [12] 1013 	mov	a,#0x73
      00029E F0               [24] 1014 	movx	@dptr,a
      00029F 90 11 92         [24] 1015 	mov	dptr,#(_BXChar2UserDesp + 0x000b)
      0002A2 04               [12] 1016 	inc	a
      0002A3 F0               [24] 1017 	movx	@dptr,a
      0002A4 90 11 93         [24] 1018 	mov	dptr,#(_BXChar2UserDesp + 0x000c)
      0002A7 74 69            [12] 1019 	mov	a,#0x69
      0002A9 F0               [24] 1020 	movx	@dptr,a
      0002AA 90 11 94         [24] 1021 	mov	dptr,#(_BXChar2UserDesp + 0x000d)
      0002AD 74 63            [12] 1022 	mov	a,#0x63
      0002AF F0               [24] 1023 	movx	@dptr,a
      0002B0 90 11 95         [24] 1024 	mov	dptr,#(_BXChar2UserDesp + 0x000e)
      0002B3 74 20            [12] 1025 	mov	a,#0x20
      0002B5 F0               [24] 1026 	movx	@dptr,a
      0002B6 90 11 96         [24] 1027 	mov	dptr,#(_BXChar2UserDesp + 0x000f)
      0002B9 74 32            [12] 1028 	mov	a,#0x32
      0002BB F0               [24] 1029 	movx	@dptr,a
      0002BC 90 11 97         [24] 1030 	mov	dptr,#(_BXChar2UserDesp + 0x0010)
      0002BF 74 00            [12] 1031 	mov	a,#0x00
      0002C1 F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:115: static gattAttribute_t BX_Tbl[SERVAPP_NUM_ATTR_SUPPORTED] = 
      0002C2 90 11 98         [24] 1034 	mov	dptr,#_BX_Tbl
      0002C5 74 02            [12] 1035 	mov	a,#0x02
      0002C7 F0               [24] 1036 	movx	@dptr,a
      0002C8 90 11 99         [24] 1037 	mov	dptr,#(_BX_Tbl + 0x0001)
      0002CB 74 4B            [12] 1038 	mov	a,#_primaryServiceUUID
      0002CD F0               [24] 1039 	movx	@dptr,a
      0002CE 74 5B            [12] 1040 	mov	a,#(_primaryServiceUUID >> 8)
      0002D0 A3               [24] 1041 	inc	dptr
      0002D1 F0               [24] 1042 	movx	@dptr,a
      0002D2 74 80            [12] 1043 	mov	a,#0x80
      0002D4 A3               [24] 1044 	inc	dptr
      0002D5 F0               [24] 1045 	movx	@dptr,a
      0002D6 90 11 9C         [24] 1046 	mov	dptr,#(_BX_Tbl + 0x0004)
      0002D9 23               [12] 1047 	rl	a
      0002DA F0               [24] 1048 	movx	@dptr,a
      0002DB 90 11 9D         [24] 1049 	mov	dptr,#(_BX_Tbl + 0x0005)
      0002DE 74 00            [12] 1050 	mov	a,#0x00
      0002E0 F0               [24] 1051 	movx	@dptr,a
      0002E1 A3               [24] 1052 	inc	dptr
      0002E2 F0               [24] 1053 	movx	@dptr,a
      0002E3 90 11 9F         [24] 1054 	mov	dptr,#(_BX_Tbl + 0x0007)
      0002E6 74 99            [12] 1055 	mov	a,#_BXService
      0002E8 F0               [24] 1056 	movx	@dptr,a
      0002E9 74 5B            [12] 1057 	mov	a,#(_BXService >> 8)
      0002EB A3               [24] 1058 	inc	dptr
      0002EC F0               [24] 1059 	movx	@dptr,a
      0002ED 74 80            [12] 1060 	mov	a,#0x80
      0002EF A3               [24] 1061 	inc	dptr
      0002F0 F0               [24] 1062 	movx	@dptr,a
      0002F1 90 11 A2         [24] 1063 	mov	dptr,#(_BX_Tbl + 0x000a)
      0002F4 74 02            [12] 1064 	mov	a,#0x02
      0002F6 F0               [24] 1065 	movx	@dptr,a
      0002F7 90 11 A3         [24] 1066 	mov	dptr,#(_BX_Tbl + 0x000b)
      0002FA 74 51            [12] 1067 	mov	a,#_characterUUID
      0002FC F0               [24] 1068 	movx	@dptr,a
      0002FD 74 5B            [12] 1069 	mov	a,#(_characterUUID >> 8)
      0002FF A3               [24] 1070 	inc	dptr
      000300 F0               [24] 1071 	movx	@dptr,a
      000301 74 80            [12] 1072 	mov	a,#0x80
      000303 A3               [24] 1073 	inc	dptr
      000304 F0               [24] 1074 	movx	@dptr,a
      000305 90 11 A6         [24] 1075 	mov	dptr,#(_BX_Tbl + 0x000e)
      000308 23               [12] 1076 	rl	a
      000309 F0               [24] 1077 	movx	@dptr,a
      00030A 90 11 A7         [24] 1078 	mov	dptr,#(_BX_Tbl + 0x000f)
      00030D 74 00            [12] 1079 	mov	a,#0x00
      00030F F0               [24] 1080 	movx	@dptr,a
      000310 A3               [24] 1081 	inc	dptr
      000311 F0               [24] 1082 	movx	@dptr,a
      000312 90 11 A9         [24] 1083 	mov	dptr,#(_BX_Tbl + 0x0011)
      000315 74 72            [12] 1084 	mov	a,#_BXChar1Props
      000317 F0               [24] 1085 	movx	@dptr,a
      000318 74 11            [12] 1086 	mov	a,#(_BXChar1Props >> 8)
      00031A A3               [24] 1087 	inc	dptr
      00031B F0               [24] 1088 	movx	@dptr,a
      00031C 74 00            [12] 1089 	mov	a,#0x00
      00031E A3               [24] 1090 	inc	dptr
      00031F F0               [24] 1091 	movx	@dptr,a
      000320 90 11 AC         [24] 1092 	mov	dptr,#(_BX_Tbl + 0x0014)
      000323 74 02            [12] 1093 	mov	a,#0x02
      000325 F0               [24] 1094 	movx	@dptr,a
      000326 90 11 AD         [24] 1095 	mov	dptr,#(_BX_Tbl + 0x0015)
      000329 74 95            [12] 1096 	mov	a,#_BXchar1UUID
      00032B F0               [24] 1097 	movx	@dptr,a
      00032C 74 5B            [12] 1098 	mov	a,#(_BXchar1UUID >> 8)
      00032E A3               [24] 1099 	inc	dptr
      00032F F0               [24] 1100 	movx	@dptr,a
      000330 74 80            [12] 1101 	mov	a,#0x80
      000332 A3               [24] 1102 	inc	dptr
      000333 F0               [24] 1103 	movx	@dptr,a
      000334 90 11 B0         [24] 1104 	mov	dptr,#(_BX_Tbl + 0x0018)
      000337 74 03            [12] 1105 	mov	a,#0x03
      000339 F0               [24] 1106 	movx	@dptr,a
      00033A 90 11 B1         [24] 1107 	mov	dptr,#(_BX_Tbl + 0x0019)
      00033D 74 00            [12] 1108 	mov	a,#0x00
      00033F F0               [24] 1109 	movx	@dptr,a
      000340 A3               [24] 1110 	inc	dptr
      000341 F0               [24] 1111 	movx	@dptr,a
      000342 90 11 B3         [24] 1112 	mov	dptr,#(_BX_Tbl + 0x001b)
      000345 74 73            [12] 1113 	mov	a,#_BXChar1
      000347 F0               [24] 1114 	movx	@dptr,a
      000348 74 11            [12] 1115 	mov	a,#(_BXChar1 >> 8)
      00034A A3               [24] 1116 	inc	dptr
      00034B F0               [24] 1117 	movx	@dptr,a
      00034C 74 00            [12] 1118 	mov	a,#0x00
      00034E A3               [24] 1119 	inc	dptr
      00034F F0               [24] 1120 	movx	@dptr,a
      000350 90 11 B6         [24] 1121 	mov	dptr,#(_BX_Tbl + 0x001e)
      000353 74 02            [12] 1122 	mov	a,#0x02
      000355 F0               [24] 1123 	movx	@dptr,a
      000356 90 11 B7         [24] 1124 	mov	dptr,#(_BX_Tbl + 0x001f)
      000359 74 55            [12] 1125 	mov	a,#_charUserDescUUID
      00035B F0               [24] 1126 	movx	@dptr,a
      00035C 74 5B            [12] 1127 	mov	a,#(_charUserDescUUID >> 8)
      00035E A3               [24] 1128 	inc	dptr
      00035F F0               [24] 1129 	movx	@dptr,a
      000360 74 80            [12] 1130 	mov	a,#0x80
      000362 A3               [24] 1131 	inc	dptr
      000363 F0               [24] 1132 	movx	@dptr,a
      000364 90 11 BA         [24] 1133 	mov	dptr,#(_BX_Tbl + 0x0022)
      000367 23               [12] 1134 	rl	a
      000368 F0               [24] 1135 	movx	@dptr,a
      000369 90 11 BB         [24] 1136 	mov	dptr,#(_BX_Tbl + 0x0023)
      00036C 74 00            [12] 1137 	mov	a,#0x00
      00036E F0               [24] 1138 	movx	@dptr,a
      00036F A3               [24] 1139 	inc	dptr
      000370 F0               [24] 1140 	movx	@dptr,a
      000371 90 11 BD         [24] 1141 	mov	dptr,#(_BX_Tbl + 0x0025)
      000374 74 74            [12] 1142 	mov	a,#_BXChar1UserDesp
      000376 F0               [24] 1143 	movx	@dptr,a
      000377 74 11            [12] 1144 	mov	a,#(_BXChar1UserDesp >> 8)
      000379 A3               [24] 1145 	inc	dptr
      00037A F0               [24] 1146 	movx	@dptr,a
      00037B 74 00            [12] 1147 	mov	a,#0x00
      00037D A3               [24] 1148 	inc	dptr
      00037E F0               [24] 1149 	movx	@dptr,a
      00037F 90 11 C0         [24] 1150 	mov	dptr,#(_BX_Tbl + 0x0028)
      000382 74 02            [12] 1151 	mov	a,#0x02
      000384 F0               [24] 1152 	movx	@dptr,a
      000385 90 11 C1         [24] 1153 	mov	dptr,#(_BX_Tbl + 0x0029)
      000388 74 97            [12] 1154 	mov	a,#_BXchar2UUID
      00038A F0               [24] 1155 	movx	@dptr,a
      00038B 74 5B            [12] 1156 	mov	a,#(_BXchar2UUID >> 8)
      00038D A3               [24] 1157 	inc	dptr
      00038E F0               [24] 1158 	movx	@dptr,a
      00038F 74 80            [12] 1159 	mov	a,#0x80
      000391 A3               [24] 1160 	inc	dptr
      000392 F0               [24] 1161 	movx	@dptr,a
      000393 90 11 C4         [24] 1162 	mov	dptr,#(_BX_Tbl + 0x002c)
      000396 74 03            [12] 1163 	mov	a,#0x03
      000398 F0               [24] 1164 	movx	@dptr,a
      000399 90 11 C5         [24] 1165 	mov	dptr,#(_BX_Tbl + 0x002d)
      00039C 74 00            [12] 1166 	mov	a,#0x00
      00039E F0               [24] 1167 	movx	@dptr,a
      00039F A3               [24] 1168 	inc	dptr
      0003A0 F0               [24] 1169 	movx	@dptr,a
      0003A1 90 11 C7         [24] 1170 	mov	dptr,#(_BX_Tbl + 0x002f)
      0003A4 74 86            [12] 1171 	mov	a,#_BXChar2
      0003A6 F0               [24] 1172 	movx	@dptr,a
      0003A7 74 11            [12] 1173 	mov	a,#(_BXChar2 >> 8)
      0003A9 A3               [24] 1174 	inc	dptr
      0003AA F0               [24] 1175 	movx	@dptr,a
      0003AB 74 00            [12] 1176 	mov	a,#0x00
      0003AD A3               [24] 1177 	inc	dptr
      0003AE F0               [24] 1178 	movx	@dptr,a
                                   1179 ;--------------------------------------------------------
                                   1180 ; Home
                                   1181 ;--------------------------------------------------------
                                   1182 	.area HOME    (CODE)
                                   1183 	.area HOME    (CODE)
                                   1184 ;--------------------------------------------------------
                                   1185 ; code
                                   1186 ;--------------------------------------------------------
                                   1187 	.area CSEG    (CODE)
                                   1188 ;------------------------------------------------------------
                                   1189 ;Allocation info for local variables in function 'BX_AddService'
                                   1190 ;------------------------------------------------------------
                                   1191 ;services                  Allocated with name '_BX_AddService_services_1_297'
                                   1192 ;status                    Allocated with name '_BX_AddService_status_1_298'
                                   1193 ;------------------------------------------------------------
                                   1194 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:176: bStatus_t BX_AddService( uint32 services ){
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function BX_AddService
                                   1197 ;	-----------------------------------------
      004B1D                       1198 _BX_AddService:
                           000007  1199 	ar7 = 0x07
                           000006  1200 	ar6 = 0x06
                           000005  1201 	ar5 = 0x05
                           000004  1202 	ar4 = 0x04
                           000003  1203 	ar3 = 0x03
                           000002  1204 	ar2 = 0x02
                           000001  1205 	ar1 = 0x01
                           000000  1206 	ar0 = 0x00
      004B1D AF 82            [24] 1207 	mov	r7,dpl
      004B1F AE 83            [24] 1208 	mov	r6,dph
      004B21 AD F0            [24] 1209 	mov	r5,b
      004B23 FC               [12] 1210 	mov	r4,a
      004B24 90 11 CA         [24] 1211 	mov	dptr,#_BX_AddService_services_1_297
      004B27 EF               [12] 1212 	mov	a,r7
      004B28 F0               [24] 1213 	movx	@dptr,a
      004B29 EE               [12] 1214 	mov	a,r6
      004B2A A3               [24] 1215 	inc	dptr
      004B2B F0               [24] 1216 	movx	@dptr,a
      004B2C ED               [12] 1217 	mov	a,r5
      004B2D A3               [24] 1218 	inc	dptr
      004B2E F0               [24] 1219 	movx	@dptr,a
      004B2F EC               [12] 1220 	mov	a,r4
      004B30 A3               [24] 1221 	inc	dptr
      004B31 F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:177: uint8 status = SUCCESS;
      004B32 90 11 CE         [24] 1224 	mov	dptr,#_BX_AddService_status_1_298
      004B35 74 00            [12] 1225 	mov	a,#0x00
      004B37 F0               [24] 1226 	movx	@dptr,a
                                   1227 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:186: if ( services & BX_SERVICE )
      004B38 90 11 CA         [24] 1228 	mov	dptr,#_BX_AddService_services_1_297
      004B3B E0               [24] 1229 	movx	a,@dptr
      004B3C FC               [12] 1230 	mov	r4,a
      004B3D A3               [24] 1231 	inc	dptr
      004B3E E0               [24] 1232 	movx	a,@dptr
      004B3F FD               [12] 1233 	mov	r5,a
      004B40 A3               [24] 1234 	inc	dptr
      004B41 E0               [24] 1235 	movx	a,@dptr
      004B42 FE               [12] 1236 	mov	r6,a
      004B43 A3               [24] 1237 	inc	dptr
      004B44 E0               [24] 1238 	movx	a,@dptr
      004B45 FF               [12] 1239 	mov	r7,a
      004B46 EC               [12] 1240 	mov	a,r4
      004B47 20 E0 03         [24] 1241 	jb	acc.0,00108$
      004B4A 02 4B 77         [24] 1242 	ljmp	00102$
      004B4D                       1243 00108$:
                                   1244 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:189: status = GATTServApp_RegisterService( BX_Tbl, 
                                   1245 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:191: &BX_CBs );
      004B4D 90 11 DB         [24] 1246 	mov	dptr,#_GATTServApp_RegisterService_PARM_2
      004B50 74 05            [12] 1247 	mov	a,#0x05
      004B52 F0               [24] 1248 	movx	@dptr,a
      004B53 74 00            [12] 1249 	mov	a,#0x00
      004B55 A3               [24] 1250 	inc	dptr
      004B56 F0               [24] 1251 	movx	@dptr,a
      004B57 90 11 DD         [24] 1252 	mov	dptr,#_GATTServApp_RegisterService_PARM_3
      004B5A 74 8D            [12] 1253 	mov	a,#_BX_CBs
      004B5C F0               [24] 1254 	movx	@dptr,a
      004B5D 74 5B            [12] 1255 	mov	a,#(_BX_CBs >> 8)
      004B5F A3               [24] 1256 	inc	dptr
      004B60 F0               [24] 1257 	movx	@dptr,a
      004B61 74 80            [12] 1258 	mov	a,#0x80
      004B63 A3               [24] 1259 	inc	dptr
      004B64 F0               [24] 1260 	movx	@dptr,a
      004B65 75 82 98         [24] 1261 	mov	dpl,#_BX_Tbl
      004B68 75 83 11         [24] 1262 	mov	dph,#(_BX_Tbl >> 8)
      004B6B 75 F0 00         [24] 1263 	mov	b,#0x00
      004B6E 12 52 A9         [24] 1264 	lcall	_GATTServApp_RegisterService
      004B71 E5 82            [12] 1265 	mov	a,dpl
      004B73 90 11 CE         [24] 1266 	mov	dptr,#_BX_AddService_status_1_298
      004B76 F0               [24] 1267 	movx	@dptr,a
      004B77                       1268 00102$:
                                   1269 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:194: return ( status );
      004B77 90 11 CE         [24] 1270 	mov	dptr,#_BX_AddService_status_1_298
      004B7A E0               [24] 1271 	movx	a,@dptr
      004B7B FF               [12] 1272 	mov	r7,a
      004B7C 8F 82            [24] 1273 	mov	dpl,r7
      004B7E                       1274 00103$:
      004B7E 22               [24] 1275 	ret
                                   1276 ;------------------------------------------------------------
                                   1277 ;Allocation info for local variables in function 'BX_ReadAttrCB'
                                   1278 ;------------------------------------------------------------
                                   1279 ;pAttr                     Allocated to stack - _bp -5
                                   1280 ;pValue                    Allocated to stack - _bp -8
                                   1281 ;pLen                      Allocated to stack - _bp -11
                                   1282 ;offset                    Allocated to stack - _bp -13
                                   1283 ;maxLen                    Allocated to stack - _bp -14
                                   1284 ;connHandle                Allocated to registers 
                                   1285 ;status                    Allocated to registers r7 
                                   1286 ;uuid                      Allocated to registers r3 r2 
                                   1287 ;------------------------------------------------------------
                                   1288 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:280: static uint8 BX_ReadAttrCB( uint16 connHandle, gattAttribute_t *pAttr, 
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function BX_ReadAttrCB
                                   1291 ;	-----------------------------------------
      004B7F                       1292 _BX_ReadAttrCB:
      004B7F C0 1D            [24] 1293 	push	_bp
      004B81 85 81 1D         [24] 1294 	mov	_bp,sp
                                   1295 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:283: bStatus_t status = SUCCESS;
      004B84 7F 00            [12] 1296 	mov	r7,#0x00
                                   1297 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:318: if ( gattPermitAuthorRead( pAttr->permissions ) )
      004B86 E5 1D            [12] 1298 	mov	a,_bp
      004B88 24 FB            [12] 1299 	add	a,#0xfb
      004B8A F8               [12] 1300 	mov	r0,a
      004B8B 86 04            [24] 1301 	mov	ar4,@r0
      004B8D 08               [12] 1302 	inc	r0
      004B8E 86 05            [24] 1303 	mov	ar5,@r0
      004B90 08               [12] 1304 	inc	r0
      004B91 86 06            [24] 1305 	mov	ar6,@r0
      004B93 74 04            [12] 1306 	mov	a,#0x04
      004B95 2C               [12] 1307 	add	a,r4
      004B96 FC               [12] 1308 	mov	r4,a
      004B97 74 00            [12] 1309 	mov	a,#0x00
      004B99 3D               [12] 1310 	addc	a,r5
      004B9A FD               [12] 1311 	mov	r5,a
      004B9B 8C 82            [24] 1312 	mov	dpl,r4
      004B9D 8D 83            [24] 1313 	mov	dph,r5
      004B9F 8E F0            [24] 1314 	mov	b,r6
      004BA1 12 5B 16         [24] 1315 	lcall	__gptrget
      004BA4 FC               [12] 1316 	mov	r4,a
      004BA5 EC               [12] 1317 	mov	a,r4
      004BA6 20 E4 03         [24] 1318 	jb	acc.4,00129$
      004BA9 02 4B B2         [24] 1319 	ljmp	00102$
      004BAC                       1320 00129$:
                                   1321 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:321: return ( ATT_ERR_INSUFFICIENT_AUTHOR );
      004BAC 75 82 08         [24] 1322 	mov	dpl,#0x08
      004BAF 02 4D 51         [24] 1323 	ljmp	00112$
      004BB2                       1324 00102$:
                                   1325 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:325: if ( offset > 0 )
      004BB2 E5 1D            [12] 1326 	mov	a,_bp
      004BB4 24 F3            [12] 1327 	add	a,#0xf3
      004BB6 F8               [12] 1328 	mov	r0,a
      004BB7 E6               [12] 1329 	mov	a,@r0
      004BB8 08               [12] 1330 	inc	r0
      004BB9 46               [12] 1331 	orl	a,@r0
      004BBA 70 03            [24] 1332 	jnz	00130$
      004BBC 02 4B C5         [24] 1333 	ljmp	00104$
      004BBF                       1334 00130$:
                                   1335 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:327: return ( ATT_ERR_ATTR_NOT_LONG );
      004BBF 75 82 0B         [24] 1336 	mov	dpl,#0x0B
      004BC2 02 4D 51         [24] 1337 	ljmp	00112$
      004BC5                       1338 00104$:
                                   1339 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:331: if ( pAttr->type.len == ATT_BT_UUID_SIZE )
      004BC5 E5 1D            [12] 1340 	mov	a,_bp
      004BC7 24 FB            [12] 1341 	add	a,#0xfb
      004BC9 F8               [12] 1342 	mov	r0,a
      004BCA 86 04            [24] 1343 	mov	ar4,@r0
      004BCC 08               [12] 1344 	inc	r0
      004BCD 86 05            [24] 1345 	mov	ar5,@r0
      004BCF 08               [12] 1346 	inc	r0
      004BD0 86 06            [24] 1347 	mov	ar6,@r0
      004BD2 8C 82            [24] 1348 	mov	dpl,r4
      004BD4 8D 83            [24] 1349 	mov	dph,r5
      004BD6 8E F0            [24] 1350 	mov	b,r6
      004BD8 12 5B 16         [24] 1351 	lcall	__gptrget
      004BDB FC               [12] 1352 	mov	r4,a
      004BDC BC 02 02         [24] 1353 	cjne	r4,#0x02,00131$
      004BDF 80 03            [24] 1354 	sjmp	00132$
      004BE1                       1355 00131$:
      004BE1 02 4D 35         [24] 1356 	ljmp	00110$
      004BE4                       1357 00132$:
                                   1358 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:337: uint16 uuid = BUILD_UINT16( pAttr->type.uuid[0], pAttr->type.uuid[1]);
      004BE4 E5 1D            [12] 1359 	mov	a,_bp
      004BE6 24 FB            [12] 1360 	add	a,#0xfb
      004BE8 F8               [12] 1361 	mov	r0,a
      004BE9 86 04            [24] 1362 	mov	ar4,@r0
      004BEB 08               [12] 1363 	inc	r0
      004BEC 86 05            [24] 1364 	mov	ar5,@r0
      004BEE 08               [12] 1365 	inc	r0
      004BEF 86 06            [24] 1366 	mov	ar6,@r0
      004BF1 0C               [12] 1367 	inc	r4
      004BF2 BC 00 01         [24] 1368 	cjne	r4,#0x00,00133$
      004BF5 0D               [12] 1369 	inc	r5
      004BF6                       1370 00133$:
      004BF6 8C 82            [24] 1371 	mov	dpl,r4
      004BF8 8D 83            [24] 1372 	mov	dph,r5
      004BFA 8E F0            [24] 1373 	mov	b,r6
      004BFC 12 5B 16         [24] 1374 	lcall	__gptrget
      004BFF FC               [12] 1375 	mov	r4,a
      004C00 A3               [24] 1376 	inc	dptr
      004C01 12 5B 16         [24] 1377 	lcall	__gptrget
      004C04 FD               [12] 1378 	mov	r5,a
      004C05 A3               [24] 1379 	inc	dptr
      004C06 12 5B 16         [24] 1380 	lcall	__gptrget
      004C09 FE               [12] 1381 	mov	r6,a
      004C0A 8C 82            [24] 1382 	mov	dpl,r4
      004C0C 8D 83            [24] 1383 	mov	dph,r5
      004C0E 8E F0            [24] 1384 	mov	b,r6
      004C10 12 5B 16         [24] 1385 	lcall	__gptrget
      004C13 FB               [12] 1386 	mov	r3,a
      004C14 7A 00            [12] 1387 	mov	r2,#0x00
      004C16 0C               [12] 1388 	inc	r4
      004C17 BC 00 01         [24] 1389 	cjne	r4,#0x00,00134$
      004C1A 0D               [12] 1390 	inc	r5
      004C1B                       1391 00134$:
      004C1B 8C 82            [24] 1392 	mov	dpl,r4
      004C1D 8D 83            [24] 1393 	mov	dph,r5
      004C1F 8E F0            [24] 1394 	mov	b,r6
      004C21 12 5B 16         [24] 1395 	lcall	__gptrget
      004C24 FC               [12] 1396 	mov	r4,a
      004C25 7E 00            [12] 1397 	mov	r6,#0x00
      004C27 8C 06            [24] 1398 	mov	ar6,r4
      004C29 7C 00            [12] 1399 	mov	r4,#0x00
      004C2B EC               [12] 1400 	mov	a,r4
      004C2C 2B               [12] 1401 	add	a,r3
      004C2D FB               [12] 1402 	mov	r3,a
      004C2E EE               [12] 1403 	mov	a,r6
      004C2F 3A               [12] 1404 	addc	a,r2
      004C30 FA               [12] 1405 	mov	r2,a
                                   1406 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:339: switch ( uuid )
      004C31 BB D1 06         [24] 1407 	cjne	r3,#0xD1,00135$
      004C34 BA DD 03         [24] 1408 	cjne	r2,#0xDD,00135$
      004C37 02 4C 46         [24] 1409 	ljmp	00105$
      004C3A                       1410 00135$:
      004C3A BB D3 06         [24] 1411 	cjne	r3,#0xD3,00136$
      004C3D BA DD 03         [24] 1412 	cjne	r2,#0xDD,00136$
      004C40 02 4C AF         [24] 1413 	ljmp	00106$
      004C43                       1414 00136$:
      004C43 02 4D 18         [24] 1415 	ljmp	00107$
                                   1416 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:342: case BX_CHAR1_UUID:
      004C46                       1417 00105$:
                                   1418 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:344: *pLen = 1;
      004C46 C0 07            [24] 1419 	push	ar7
      004C48 E5 1D            [12] 1420 	mov	a,_bp
      004C4A 24 F5            [12] 1421 	add	a,#0xf5
      004C4C F8               [12] 1422 	mov	r0,a
      004C4D 86 04            [24] 1423 	mov	ar4,@r0
      004C4F 08               [12] 1424 	inc	r0
      004C50 86 05            [24] 1425 	mov	ar5,@r0
      004C52 08               [12] 1426 	inc	r0
      004C53 86 06            [24] 1427 	mov	ar6,@r0
      004C55 8C 82            [24] 1428 	mov	dpl,r4
      004C57 8D 83            [24] 1429 	mov	dph,r5
      004C59 8E F0            [24] 1430 	mov	b,r6
      004C5B 74 01            [12] 1431 	mov	a,#0x01
      004C5D 12 59 AA         [24] 1432 	lcall	__gptrput
                                   1433 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:345: pValue[0] = *pAttr->pValue;
      004C60 E5 1D            [12] 1434 	mov	a,_bp
      004C62 24 F8            [12] 1435 	add	a,#0xf8
      004C64 F8               [12] 1436 	mov	r0,a
      004C65 86 04            [24] 1437 	mov	ar4,@r0
      004C67 08               [12] 1438 	inc	r0
      004C68 86 05            [24] 1439 	mov	ar5,@r0
      004C6A 08               [12] 1440 	inc	r0
      004C6B 86 06            [24] 1441 	mov	ar6,@r0
      004C6D E5 1D            [12] 1442 	mov	a,_bp
      004C6F 24 FB            [12] 1443 	add	a,#0xfb
      004C71 F8               [12] 1444 	mov	r0,a
      004C72 86 02            [24] 1445 	mov	ar2,@r0
      004C74 08               [12] 1446 	inc	r0
      004C75 86 03            [24] 1447 	mov	ar3,@r0
      004C77 08               [12] 1448 	inc	r0
      004C78 86 07            [24] 1449 	mov	ar7,@r0
      004C7A 74 07            [12] 1450 	mov	a,#0x07
      004C7C 2A               [12] 1451 	add	a,r2
      004C7D FA               [12] 1452 	mov	r2,a
      004C7E 74 00            [12] 1453 	mov	a,#0x00
      004C80 3B               [12] 1454 	addc	a,r3
      004C81 FB               [12] 1455 	mov	r3,a
      004C82 8A 82            [24] 1456 	mov	dpl,r2
      004C84 8B 83            [24] 1457 	mov	dph,r3
      004C86 8F F0            [24] 1458 	mov	b,r7
      004C88 12 5B 16         [24] 1459 	lcall	__gptrget
      004C8B FA               [12] 1460 	mov	r2,a
      004C8C A3               [24] 1461 	inc	dptr
      004C8D 12 5B 16         [24] 1462 	lcall	__gptrget
      004C90 FB               [12] 1463 	mov	r3,a
      004C91 A3               [24] 1464 	inc	dptr
      004C92 12 5B 16         [24] 1465 	lcall	__gptrget
      004C95 FF               [12] 1466 	mov	r7,a
      004C96 8A 82            [24] 1467 	mov	dpl,r2
      004C98 8B 83            [24] 1468 	mov	dph,r3
      004C9A 8F F0            [24] 1469 	mov	b,r7
      004C9C 12 5B 16         [24] 1470 	lcall	__gptrget
      004C9F FA               [12] 1471 	mov	r2,a
      004CA0 8C 82            [24] 1472 	mov	dpl,r4
      004CA2 8D 83            [24] 1473 	mov	dph,r5
      004CA4 8E F0            [24] 1474 	mov	b,r6
      004CA6 EA               [12] 1475 	mov	a,r2
      004CA7 12 59 AA         [24] 1476 	lcall	__gptrput
                                   1477 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:348: break;
      004CAA D0 07            [24] 1478 	pop	ar7
      004CAC 02 4D 4F         [24] 1479 	ljmp	00111$
                                   1480 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:350: case BX_CHAR2_UUID:
      004CAF                       1481 00106$:
                                   1482 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:352: *pLen = 1;
      004CAF C0 07            [24] 1483 	push	ar7
      004CB1 E5 1D            [12] 1484 	mov	a,_bp
      004CB3 24 F5            [12] 1485 	add	a,#0xf5
      004CB5 F8               [12] 1486 	mov	r0,a
      004CB6 86 04            [24] 1487 	mov	ar4,@r0
      004CB8 08               [12] 1488 	inc	r0
      004CB9 86 05            [24] 1489 	mov	ar5,@r0
      004CBB 08               [12] 1490 	inc	r0
      004CBC 86 06            [24] 1491 	mov	ar6,@r0
      004CBE 8C 82            [24] 1492 	mov	dpl,r4
      004CC0 8D 83            [24] 1493 	mov	dph,r5
      004CC2 8E F0            [24] 1494 	mov	b,r6
      004CC4 74 01            [12] 1495 	mov	a,#0x01
      004CC6 12 59 AA         [24] 1496 	lcall	__gptrput
                                   1497 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:353: pValue[0] = *pAttr->pValue;
      004CC9 E5 1D            [12] 1498 	mov	a,_bp
      004CCB 24 F8            [12] 1499 	add	a,#0xf8
      004CCD F8               [12] 1500 	mov	r0,a
      004CCE 86 04            [24] 1501 	mov	ar4,@r0
      004CD0 08               [12] 1502 	inc	r0
      004CD1 86 05            [24] 1503 	mov	ar5,@r0
      004CD3 08               [12] 1504 	inc	r0
      004CD4 86 06            [24] 1505 	mov	ar6,@r0
      004CD6 E5 1D            [12] 1506 	mov	a,_bp
      004CD8 24 FB            [12] 1507 	add	a,#0xfb
      004CDA F8               [12] 1508 	mov	r0,a
      004CDB 86 02            [24] 1509 	mov	ar2,@r0
      004CDD 08               [12] 1510 	inc	r0
      004CDE 86 03            [24] 1511 	mov	ar3,@r0
      004CE0 08               [12] 1512 	inc	r0
      004CE1 86 07            [24] 1513 	mov	ar7,@r0
      004CE3 74 07            [12] 1514 	mov	a,#0x07
      004CE5 2A               [12] 1515 	add	a,r2
      004CE6 FA               [12] 1516 	mov	r2,a
      004CE7 74 00            [12] 1517 	mov	a,#0x00
      004CE9 3B               [12] 1518 	addc	a,r3
      004CEA FB               [12] 1519 	mov	r3,a
      004CEB 8A 82            [24] 1520 	mov	dpl,r2
      004CED 8B 83            [24] 1521 	mov	dph,r3
      004CEF 8F F0            [24] 1522 	mov	b,r7
      004CF1 12 5B 16         [24] 1523 	lcall	__gptrget
      004CF4 FA               [12] 1524 	mov	r2,a
      004CF5 A3               [24] 1525 	inc	dptr
      004CF6 12 5B 16         [24] 1526 	lcall	__gptrget
      004CF9 FB               [12] 1527 	mov	r3,a
      004CFA A3               [24] 1528 	inc	dptr
      004CFB 12 5B 16         [24] 1529 	lcall	__gptrget
      004CFE FF               [12] 1530 	mov	r7,a
      004CFF 8A 82            [24] 1531 	mov	dpl,r2
      004D01 8B 83            [24] 1532 	mov	dph,r3
      004D03 8F F0            [24] 1533 	mov	b,r7
      004D05 12 5B 16         [24] 1534 	lcall	__gptrget
      004D08 FA               [12] 1535 	mov	r2,a
      004D09 8C 82            [24] 1536 	mov	dpl,r4
      004D0B 8D 83            [24] 1537 	mov	dph,r5
      004D0D 8E F0            [24] 1538 	mov	b,r6
      004D0F EA               [12] 1539 	mov	a,r2
      004D10 12 59 AA         [24] 1540 	lcall	__gptrput
                                   1541 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:354: break;
      004D13 D0 07            [24] 1542 	pop	ar7
      004D15 02 4D 4F         [24] 1543 	ljmp	00111$
                                   1544 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:363: default:
      004D18                       1545 00107$:
                                   1546 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:365: *pLen = 0;
      004D18 E5 1D            [12] 1547 	mov	a,_bp
      004D1A 24 F5            [12] 1548 	add	a,#0xf5
      004D1C F8               [12] 1549 	mov	r0,a
      004D1D 86 04            [24] 1550 	mov	ar4,@r0
      004D1F 08               [12] 1551 	inc	r0
      004D20 86 05            [24] 1552 	mov	ar5,@r0
      004D22 08               [12] 1553 	inc	r0
      004D23 86 06            [24] 1554 	mov	ar6,@r0
      004D25 8C 82            [24] 1555 	mov	dpl,r4
      004D27 8D 83            [24] 1556 	mov	dph,r5
      004D29 8E F0            [24] 1557 	mov	b,r6
      004D2B 74 00            [12] 1558 	mov	a,#0x00
      004D2D 12 59 AA         [24] 1559 	lcall	__gptrput
                                   1560 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:366: status = ATT_ERR_ATTR_NOT_FOUND;
      004D30 7F 0A            [12] 1561 	mov	r7,#0x0A
                                   1562 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:368: }
      004D32 02 4D 4F         [24] 1563 	ljmp	00111$
      004D35                       1564 00110$:
                                   1565 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:373: *pLen = 0;
      004D35 E5 1D            [12] 1566 	mov	a,_bp
      004D37 24 F5            [12] 1567 	add	a,#0xf5
      004D39 F8               [12] 1568 	mov	r0,a
      004D3A 86 04            [24] 1569 	mov	ar4,@r0
      004D3C 08               [12] 1570 	inc	r0
      004D3D 86 05            [24] 1571 	mov	ar5,@r0
      004D3F 08               [12] 1572 	inc	r0
      004D40 86 06            [24] 1573 	mov	ar6,@r0
      004D42 8C 82            [24] 1574 	mov	dpl,r4
      004D44 8D 83            [24] 1575 	mov	dph,r5
      004D46 8E F0            [24] 1576 	mov	b,r6
      004D48 74 00            [12] 1577 	mov	a,#0x00
      004D4A 12 59 AA         [24] 1578 	lcall	__gptrput
                                   1579 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:374: status = ATT_ERR_INVALID_HANDLE;
      004D4D 7F 01            [12] 1580 	mov	r7,#0x01
      004D4F                       1581 00111$:
                                   1582 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:377: return ( status );
      004D4F 8F 82            [24] 1583 	mov	dpl,r7
      004D51                       1584 00112$:
      004D51 D0 1D            [24] 1585 	pop	_bp
      004D53 22               [24] 1586 	ret
                                   1587 ;------------------------------------------------------------
                                   1588 ;Allocation info for local variables in function 'BX_WriteAttrCB'
                                   1589 ;------------------------------------------------------------
                                   1590 ;pAttr                     Allocated to stack - _bp -5
                                   1591 ;pValue                    Allocated to stack - _bp -8
                                   1592 ;len                       Allocated to stack - _bp -9
                                   1593 ;offset                    Allocated to stack - _bp -11
                                   1594 ;connHandle                Allocated to registers 
                                   1595 ;status                    Allocated to registers r7 
                                   1596 ;uuid                      Allocated to registers r3 r2 
                                   1597 ;pCurValue                 Allocated to stack - _bp +1
                                   1598 ;pCurValue                 Allocated to stack - _bp +1
                                   1599 ;------------------------------------------------------------
                                   1600 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:383: static bStatus_t BX_WriteAttrCB( uint16 connHandle, gattAttribute_t *pAttr,
                                   1601 ;	-----------------------------------------
                                   1602 ;	 function BX_WriteAttrCB
                                   1603 ;	-----------------------------------------
      004D54                       1604 _BX_WriteAttrCB:
      004D54 C0 1D            [24] 1605 	push	_bp
      004D56 85 81 1D         [24] 1606 	mov	_bp,sp
      004D59 05 81            [12] 1607 	inc	sp
      004D5B 05 81            [12] 1608 	inc	sp
      004D5D 05 81            [12] 1609 	inc	sp
                                   1610 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:388: bStatus_t status = SUCCESS;
      004D5F 7F 00            [12] 1611 	mov	r7,#0x00
                                   1612 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:394: if ( gattPermitAuthorWrite( pAttr->permissions ) )
      004D61 E5 1D            [12] 1613 	mov	a,_bp
      004D63 24 FB            [12] 1614 	add	a,#0xfb
      004D65 F8               [12] 1615 	mov	r0,a
      004D66 86 04            [24] 1616 	mov	ar4,@r0
      004D68 08               [12] 1617 	inc	r0
      004D69 86 05            [24] 1618 	mov	ar5,@r0
      004D6B 08               [12] 1619 	inc	r0
      004D6C 86 06            [24] 1620 	mov	ar6,@r0
      004D6E 74 04            [12] 1621 	mov	a,#0x04
      004D70 2C               [12] 1622 	add	a,r4
      004D71 FC               [12] 1623 	mov	r4,a
      004D72 74 00            [12] 1624 	mov	a,#0x00
      004D74 3D               [12] 1625 	addc	a,r5
      004D75 FD               [12] 1626 	mov	r5,a
      004D76 8C 82            [24] 1627 	mov	dpl,r4
      004D78 8D 83            [24] 1628 	mov	dph,r5
      004D7A 8E F0            [24] 1629 	mov	b,r6
      004D7C 12 5B 16         [24] 1630 	lcall	__gptrget
      004D7F FC               [12] 1631 	mov	r4,a
      004D80 EC               [12] 1632 	mov	a,r4
      004D81 20 E5 03         [24] 1633 	jb	acc.5,00138$
      004D84 02 4D 8D         [24] 1634 	ljmp	00102$
      004D87                       1635 00138$:
                                   1636 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:397: return ( ATT_ERR_INSUFFICIENT_AUTHOR );
      004D87 75 82 08         [24] 1637 	mov	dpl,#0x08
      004D8A 02 4E F8         [24] 1638 	ljmp	00115$
      004D8D                       1639 00102$:
                                   1640 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:402: if ( pAttr->type.len == ATT_BT_UUID_SIZE )
      004D8D E5 1D            [12] 1641 	mov	a,_bp
      004D8F 24 FB            [12] 1642 	add	a,#0xfb
      004D91 F8               [12] 1643 	mov	r0,a
      004D92 86 04            [24] 1644 	mov	ar4,@r0
      004D94 08               [12] 1645 	inc	r0
      004D95 86 05            [24] 1646 	mov	ar5,@r0
      004D97 08               [12] 1647 	inc	r0
      004D98 86 06            [24] 1648 	mov	ar6,@r0
      004D9A 8C 82            [24] 1649 	mov	dpl,r4
      004D9C 8D 83            [24] 1650 	mov	dph,r5
      004D9E 8E F0            [24] 1651 	mov	b,r6
      004DA0 12 5B 16         [24] 1652 	lcall	__gptrget
      004DA3 FC               [12] 1653 	mov	r4,a
      004DA4 BC 02 02         [24] 1654 	cjne	r4,#0x02,00139$
      004DA7 80 03            [24] 1655 	sjmp	00140$
      004DA9                       1656 00139$:
      004DA9 02 4E F4         [24] 1657 	ljmp	00113$
      004DAC                       1658 00140$:
                                   1659 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:405: uint16 uuid = BUILD_UINT16( pAttr->type.uuid[0], pAttr->type.uuid[1]);
      004DAC E5 1D            [12] 1660 	mov	a,_bp
      004DAE 24 FB            [12] 1661 	add	a,#0xfb
      004DB0 F8               [12] 1662 	mov	r0,a
      004DB1 86 04            [24] 1663 	mov	ar4,@r0
      004DB3 08               [12] 1664 	inc	r0
      004DB4 86 05            [24] 1665 	mov	ar5,@r0
      004DB6 08               [12] 1666 	inc	r0
      004DB7 86 06            [24] 1667 	mov	ar6,@r0
      004DB9 0C               [12] 1668 	inc	r4
      004DBA BC 00 01         [24] 1669 	cjne	r4,#0x00,00141$
      004DBD 0D               [12] 1670 	inc	r5
      004DBE                       1671 00141$:
      004DBE 8C 82            [24] 1672 	mov	dpl,r4
      004DC0 8D 83            [24] 1673 	mov	dph,r5
      004DC2 8E F0            [24] 1674 	mov	b,r6
      004DC4 12 5B 16         [24] 1675 	lcall	__gptrget
      004DC7 FC               [12] 1676 	mov	r4,a
      004DC8 A3               [24] 1677 	inc	dptr
      004DC9 12 5B 16         [24] 1678 	lcall	__gptrget
      004DCC FD               [12] 1679 	mov	r5,a
      004DCD A3               [24] 1680 	inc	dptr
      004DCE 12 5B 16         [24] 1681 	lcall	__gptrget
      004DD1 FE               [12] 1682 	mov	r6,a
      004DD2 8C 82            [24] 1683 	mov	dpl,r4
      004DD4 8D 83            [24] 1684 	mov	dph,r5
      004DD6 8E F0            [24] 1685 	mov	b,r6
      004DD8 12 5B 16         [24] 1686 	lcall	__gptrget
      004DDB FB               [12] 1687 	mov	r3,a
      004DDC 7A 00            [12] 1688 	mov	r2,#0x00
      004DDE 0C               [12] 1689 	inc	r4
      004DDF BC 00 01         [24] 1690 	cjne	r4,#0x00,00142$
      004DE2 0D               [12] 1691 	inc	r5
      004DE3                       1692 00142$:
      004DE3 8C 82            [24] 1693 	mov	dpl,r4
      004DE5 8D 83            [24] 1694 	mov	dph,r5
      004DE7 8E F0            [24] 1695 	mov	b,r6
      004DE9 12 5B 16         [24] 1696 	lcall	__gptrget
      004DEC FC               [12] 1697 	mov	r4,a
      004DED 7E 00            [12] 1698 	mov	r6,#0x00
      004DEF 8C 06            [24] 1699 	mov	ar6,r4
      004DF1 7C 00            [12] 1700 	mov	r4,#0x00
      004DF3 EC               [12] 1701 	mov	a,r4
      004DF4 2B               [12] 1702 	add	a,r3
      004DF5 FB               [12] 1703 	mov	r3,a
      004DF6 EE               [12] 1704 	mov	a,r6
      004DF7 3A               [12] 1705 	addc	a,r2
      004DF8 FA               [12] 1706 	mov	r2,a
                                   1707 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:406: switch ( uuid )
      004DF9 BB 02 06         [24] 1708 	cjne	r3,#0x02,00143$
      004DFC BA 29 03         [24] 1709 	cjne	r2,#0x29,00143$
      004DFF 02 4E F6         [24] 1710 	ljmp	00114$
      004E02                       1711 00143$:
      004E02 BB D1 06         [24] 1712 	cjne	r3,#0xD1,00144$
      004E05 BA DD 03         [24] 1713 	cjne	r2,#0xDD,00144$
      004E08 02 4E 17         [24] 1714 	ljmp	00103$
      004E0B                       1715 00144$:
      004E0B BB D3 06         [24] 1716 	cjne	r3,#0xD3,00145$
      004E0E BA DD 03         [24] 1717 	cjne	r2,#0xDD,00145$
      004E11 02 4E 83         [24] 1718 	ljmp	00106$
      004E14                       1719 00145$:
      004E14 02 4E EF         [24] 1720 	ljmp	00110$
                                   1721 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:409: case BX_CHAR1_UUID:
      004E17                       1722 00103$:
                                   1723 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:413: if ( status == SUCCESS )
      004E17 EF               [12] 1724 	mov	a,r7
      004E18 60 03            [24] 1725 	jz	00146$
      004E1A 02 4E F6         [24] 1726 	ljmp	00114$
      004E1D                       1727 00146$:
                                   1728 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:418: uint8 *pCurValue = (uint8 *)pAttr->pValue;        
      004E1D C0 07            [24] 1729 	push	ar7
      004E1F E5 1D            [12] 1730 	mov	a,_bp
      004E21 24 FB            [12] 1731 	add	a,#0xfb
      004E23 F8               [12] 1732 	mov	r0,a
      004E24 86 04            [24] 1733 	mov	ar4,@r0
      004E26 08               [12] 1734 	inc	r0
      004E27 86 05            [24] 1735 	mov	ar5,@r0
      004E29 08               [12] 1736 	inc	r0
      004E2A 86 06            [24] 1737 	mov	ar6,@r0
      004E2C 74 07            [12] 1738 	mov	a,#0x07
      004E2E 2C               [12] 1739 	add	a,r4
      004E2F FC               [12] 1740 	mov	r4,a
      004E30 74 00            [12] 1741 	mov	a,#0x00
      004E32 3D               [12] 1742 	addc	a,r5
      004E33 FD               [12] 1743 	mov	r5,a
      004E34 8C 82            [24] 1744 	mov	dpl,r4
      004E36 8D 83            [24] 1745 	mov	dph,r5
      004E38 8E F0            [24] 1746 	mov	b,r6
      004E3A A8 1D            [24] 1747 	mov	r0,_bp
      004E3C 08               [12] 1748 	inc	r0
      004E3D 12 5B 16         [24] 1749 	lcall	__gptrget
      004E40 F6               [12] 1750 	mov	@r0,a
      004E41 A3               [24] 1751 	inc	dptr
      004E42 12 5B 16         [24] 1752 	lcall	__gptrget
      004E45 08               [12] 1753 	inc	r0
      004E46 F6               [12] 1754 	mov	@r0,a
      004E47 A3               [24] 1755 	inc	dptr
      004E48 12 5B 16         [24] 1756 	lcall	__gptrget
      004E4B 08               [12] 1757 	inc	r0
      004E4C F6               [12] 1758 	mov	@r0,a
                                   1759 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:422: *pCurValue = pValue[0];
      004E4D E5 1D            [12] 1760 	mov	a,_bp
      004E4F 24 F8            [12] 1761 	add	a,#0xf8
      004E51 F8               [12] 1762 	mov	r0,a
      004E52 86 02            [24] 1763 	mov	ar2,@r0
      004E54 08               [12] 1764 	inc	r0
      004E55 86 03            [24] 1765 	mov	ar3,@r0
      004E57 08               [12] 1766 	inc	r0
      004E58 86 07            [24] 1767 	mov	ar7,@r0
      004E5A 8A 82            [24] 1768 	mov	dpl,r2
      004E5C 8B 83            [24] 1769 	mov	dph,r3
      004E5E 8F F0            [24] 1770 	mov	b,r7
      004E60 12 5B 16         [24] 1771 	lcall	__gptrget
      004E63 FE               [12] 1772 	mov	r6,a
      004E64 A8 1D            [24] 1773 	mov	r0,_bp
      004E66 08               [12] 1774 	inc	r0
      004E67 86 82            [24] 1775 	mov	dpl,@r0
      004E69 08               [12] 1776 	inc	r0
      004E6A 86 83            [24] 1777 	mov	dph,@r0
      004E6C 08               [12] 1778 	inc	r0
      004E6D 86 F0            [24] 1779 	mov	b,@r0
      004E6F EE               [12] 1780 	mov	a,r6
      004E70 12 59 AA         [24] 1781 	lcall	__gptrput
                                   1782 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:423: FlashLed= pValue[0];
      004E73 8A 82            [24] 1783 	mov	dpl,r2
      004E75 8B 83            [24] 1784 	mov	dph,r3
      004E77 8F F0            [24] 1785 	mov	b,r7
      004E79 12 5B 16         [24] 1786 	lcall	__gptrget
      004E7C F5 C0            [12] 1787 	mov	_FlashLed,a
                                   1788 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:439: break;
      004E7E D0 07            [24] 1789 	pop	ar7
      004E80 02 4E F6         [24] 1790 	ljmp	00114$
                                   1791 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:441: case BX_CHAR2_UUID:
      004E83                       1792 00106$:
                                   1793 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:445: if ( status == SUCCESS )
      004E83 EF               [12] 1794 	mov	a,r7
      004E84 60 03            [24] 1795 	jz	00147$
      004E86 02 4E F6         [24] 1796 	ljmp	00114$
      004E89                       1797 00147$:
                                   1798 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:450: uint8 *pCurValue = (uint8 *)pAttr->pValue;        
      004E89 C0 07            [24] 1799 	push	ar7
      004E8B E5 1D            [12] 1800 	mov	a,_bp
      004E8D 24 FB            [12] 1801 	add	a,#0xfb
      004E8F F8               [12] 1802 	mov	r0,a
      004E90 86 04            [24] 1803 	mov	ar4,@r0
      004E92 08               [12] 1804 	inc	r0
      004E93 86 05            [24] 1805 	mov	ar5,@r0
      004E95 08               [12] 1806 	inc	r0
      004E96 86 06            [24] 1807 	mov	ar6,@r0
      004E98 74 07            [12] 1808 	mov	a,#0x07
      004E9A 2C               [12] 1809 	add	a,r4
      004E9B FC               [12] 1810 	mov	r4,a
      004E9C 74 00            [12] 1811 	mov	a,#0x00
      004E9E 3D               [12] 1812 	addc	a,r5
      004E9F FD               [12] 1813 	mov	r5,a
      004EA0 8C 82            [24] 1814 	mov	dpl,r4
      004EA2 8D 83            [24] 1815 	mov	dph,r5
      004EA4 8E F0            [24] 1816 	mov	b,r6
      004EA6 A8 1D            [24] 1817 	mov	r0,_bp
      004EA8 08               [12] 1818 	inc	r0
      004EA9 12 5B 16         [24] 1819 	lcall	__gptrget
      004EAC F6               [12] 1820 	mov	@r0,a
      004EAD A3               [24] 1821 	inc	dptr
      004EAE 12 5B 16         [24] 1822 	lcall	__gptrget
      004EB1 08               [12] 1823 	inc	r0
      004EB2 F6               [12] 1824 	mov	@r0,a
      004EB3 A3               [24] 1825 	inc	dptr
      004EB4 12 5B 16         [24] 1826 	lcall	__gptrget
      004EB7 08               [12] 1827 	inc	r0
      004EB8 F6               [12] 1828 	mov	@r0,a
                                   1829 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:453: *pCurValue = pValue[0];
      004EB9 E5 1D            [12] 1830 	mov	a,_bp
      004EBB 24 F8            [12] 1831 	add	a,#0xf8
      004EBD F8               [12] 1832 	mov	r0,a
      004EBE 86 02            [24] 1833 	mov	ar2,@r0
      004EC0 08               [12] 1834 	inc	r0
      004EC1 86 03            [24] 1835 	mov	ar3,@r0
      004EC3 08               [12] 1836 	inc	r0
      004EC4 86 07            [24] 1837 	mov	ar7,@r0
      004EC6 8A 82            [24] 1838 	mov	dpl,r2
      004EC8 8B 83            [24] 1839 	mov	dph,r3
      004ECA 8F F0            [24] 1840 	mov	b,r7
      004ECC 12 5B 16         [24] 1841 	lcall	__gptrget
      004ECF FE               [12] 1842 	mov	r6,a
      004ED0 A8 1D            [24] 1843 	mov	r0,_bp
      004ED2 08               [12] 1844 	inc	r0
      004ED3 86 82            [24] 1845 	mov	dpl,@r0
      004ED5 08               [12] 1846 	inc	r0
      004ED6 86 83            [24] 1847 	mov	dph,@r0
      004ED8 08               [12] 1848 	inc	r0
      004ED9 86 F0            [24] 1849 	mov	b,@r0
      004EDB EE               [12] 1850 	mov	a,r6
      004EDC 12 59 AA         [24] 1851 	lcall	__gptrput
                                   1852 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:454: MusicCtl= pValue[0];
      004EDF 8A 82            [24] 1853 	mov	dpl,r2
      004EE1 8B 83            [24] 1854 	mov	dph,r3
      004EE3 8F F0            [24] 1855 	mov	b,r7
      004EE5 12 5B 16         [24] 1856 	lcall	__gptrget
      004EE8 F5 C2            [12] 1857 	mov	_MusicCtl,a
                                   1858 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:462: break;
      004EEA D0 07            [24] 1859 	pop	ar7
      004EEC 02 4E F6         [24] 1860 	ljmp	00114$
                                   1861 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:470: default:
      004EEF                       1862 00110$:
                                   1863 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:472: status = ATT_ERR_ATTR_NOT_FOUND;
      004EEF 7F 0A            [12] 1864 	mov	r7,#0x0A
                                   1865 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:474: }
      004EF1 02 4E F6         [24] 1866 	ljmp	00114$
      004EF4                       1867 00113$:
                                   1868 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:479: status = ATT_ERR_INVALID_HANDLE;
      004EF4 7F 01            [12] 1869 	mov	r7,#0x01
      004EF6                       1870 00114$:
                                   1871 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:488: return ( status );
      004EF6 8F 82            [24] 1872 	mov	dpl,r7
      004EF8                       1873 00115$:
      004EF8 85 1D 81         [24] 1874 	mov	sp,_bp
      004EFB D0 1D            [24] 1875 	pop	_bp
      004EFD 22               [24] 1876 	ret
                                   1877 	.area CSEG    (CODE)
                                   1878 	.area CONST   (CODE)
      005B8D                       1879 _BX_CBs:
      005B8D 7F 4B                 1880 	.byte _BX_ReadAttrCB,(_BX_ReadAttrCB >> 8)
      005B8F 54 4D                 1881 	.byte _BX_WriteAttrCB,(_BX_WriteAttrCB >> 8)
      005B91 00 00                 1882 	.byte #0x00,#0x00
      005B93                       1883 _BXServUUID:
      005B93 DD                    1884 	.db #0xDD	; 221
      005B94 DD                    1885 	.db #0xDD	; 221
      005B95                       1886 _BXchar1UUID:
      005B95 D1                    1887 	.db #0xD1	; 209
      005B96 DD                    1888 	.db #0xDD	; 221
      005B97                       1889 _BXchar2UUID:
      005B97 D3                    1890 	.db #0xD3	; 211
      005B98 DD                    1891 	.db #0xDD	; 221
      005B99                       1892 _BXService:
      005B99 02                    1893 	.db #0x02	; 2
      005B9A 93 5B 80              1894 	.byte _BXServUUID,(_BXServUUID >> 8),#0x80
                                   1895 	.area CABS    (ABS,CODE)
