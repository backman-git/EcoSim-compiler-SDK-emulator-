                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:40 2015
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
                                    243 	.globl _BX_GetParameter_PARM_2
                                    244 	.globl _BX_SetParameter_PARM_3
                                    245 	.globl _BX_SetParameter_PARM_2
                                    246 	.globl _TXFILTCFG
                                    247 	.globl _RFC_OBS_CTRL2
                                    248 	.globl _RFC_OBS_CTRL1
                                    249 	.globl _RFC_OBS_CTRL0
                                    250 	.globl _CSPT
                                    251 	.globl _CSPZ
                                    252 	.globl _CSPY
                                    253 	.globl _CSPX
                                    254 	.globl _CSPSTAT
                                    255 	.globl _CSPCTRL
                                    256 	.globl _CSPPROG23
                                    257 	.globl _CSPPROG22
                                    258 	.globl _CSPPROG21
                                    259 	.globl _CSPPROG20
                                    260 	.globl _CSPPROG19
                                    261 	.globl _CSPPROG18
                                    262 	.globl _CSPPROG17
                                    263 	.globl _CSPPROG16
                                    264 	.globl _CSPPROG15
                                    265 	.globl _CSPPROG14
                                    266 	.globl _CSPPROG13
                                    267 	.globl _CSPPROG12
                                    268 	.globl _CSPPROG11
                                    269 	.globl _CSPPROG10
                                    270 	.globl _CSPPROG9
                                    271 	.globl _CSPPROG8
                                    272 	.globl _CSPPROG7
                                    273 	.globl _CSPPROG6
                                    274 	.globl _CSPPROG5
                                    275 	.globl _CSPPROG4
                                    276 	.globl _CSPPROG3
                                    277 	.globl _CSPPROG2
                                    278 	.globl _CSPPROG1
                                    279 	.globl _CSPPROG0
                                    280 	.globl _PTEST1
                                    281 	.globl _PTEST0
                                    282 	.globl _ATEST
                                    283 	.globl _DACTEST2
                                    284 	.globl _DACTEST1
                                    285 	.globl _DACTEST0
                                    286 	.globl _MDMTEST1
                                    287 	.globl _MDMTEST0
                                    288 	.globl _ADCTEST2
                                    289 	.globl _ADCTEST1
                                    290 	.globl _ADCTEST0
                                    291 	.globl _AGCCTRL3
                                    292 	.globl _AGCCTRL2
                                    293 	.globl _AGCCTRL1
                                    294 	.globl _AGCCTRL0
                                    295 	.globl _FSCAL3
                                    296 	.globl _FSCAL2
                                    297 	.globl _FSCAL1
                                    298 	.globl _FSCTRL
                                    299 	.globl _RXCTRL
                                    300 	.globl _FREQEST
                                    301 	.globl _MDMCTRL1
                                    302 	.globl _MDMCTRL0
                                    303 	.globl _RFRND
                                    304 	.globl _OPAMPMC
                                    305 	.globl _RFERRM
                                    306 	.globl _RFIRQM1
                                    307 	.globl _RFIRQM0
                                    308 	.globl _TXLAST_PTR
                                    309 	.globl _TXFIRST_PTR
                                    310 	.globl _RXP1_PTR
                                    311 	.globl _RXLAST_PTR
                                    312 	.globl _RXFIRST_PTR
                                    313 	.globl _TXFIFOCNT
                                    314 	.globl _RXFIFOCNT
                                    315 	.globl _RXFIRST
                                    316 	.globl _RSSISTAT
                                    317 	.globl _RSSI
                                    318 	.globl _CCACTRL1
                                    319 	.globl _CCACTRL0
                                    320 	.globl _FSMCTRL
                                    321 	.globl _FIFOPCTRL
                                    322 	.globl _FSMSTAT1
                                    323 	.globl _FSMSTAT0
                                    324 	.globl _TXCTRL
                                    325 	.globl _TXPOWER
                                    326 	.globl _FREQCTRL
                                    327 	.globl _FREQTUNE
                                    328 	.globl _RXMASKCLR
                                    329 	.globl _RXMASKSET
                                    330 	.globl _RXENABLE
                                    331 	.globl _FRMCTRL1
                                    332 	.globl _FRMCTRL0
                                    333 	.globl _SRCEXTEN2
                                    334 	.globl _SRCEXTEN1
                                    335 	.globl _SRCEXTEN0
                                    336 	.globl _SRCSHORTEN2
                                    337 	.globl _SRCSHORTEN1
                                    338 	.globl _SRCSHORTEN0
                                    339 	.globl _SRCMATCH
                                    340 	.globl _FRMFILT1
                                    341 	.globl _FRMFILT0
                                    342 	.globl _IEEE_ADDR
                                    343 	.globl _PANIDL
                                    344 	.globl _PANIDH
                                    345 	.globl _SHORTADDRL
                                    346 	.globl _SHORTADDRH
                                    347 	.globl _USBF5
                                    348 	.globl _USBF4
                                    349 	.globl _USBF3
                                    350 	.globl _USBF2
                                    351 	.globl _USBF1
                                    352 	.globl _USBF0
                                    353 	.globl _USBCNTH
                                    354 	.globl _USBCNTL
                                    355 	.globl _USBCNT0
                                    356 	.globl _USBCSOH
                                    357 	.globl _USBCSOL
                                    358 	.globl _USBMAXO
                                    359 	.globl _USBCSIH
                                    360 	.globl _USBCSIL
                                    361 	.globl _USBCS0
                                    362 	.globl _USBMAXI
                                    363 	.globl _USBCTRL
                                    364 	.globl _USBINDEX
                                    365 	.globl _USBFRMH
                                    366 	.globl _USBFRML
                                    367 	.globl _USBCIE
                                    368 	.globl _USBOIE
                                    369 	.globl _USBIIE
                                    370 	.globl _USBCIF
                                    371 	.globl _USBOIF
                                    372 	.globl _USBIIF
                                    373 	.globl _USBPOW
                                    374 	.globl _USBADDR
                                    375 	.globl _CMPCTL
                                    376 	.globl _OPAMPS
                                    377 	.globl _OPAMPC
                                    378 	.globl _STCV2
                                    379 	.globl _STCV1
                                    380 	.globl _STCV0
                                    381 	.globl _STCS
                                    382 	.globl _STCC
                                    383 	.globl _T1CC4H
                                    384 	.globl _T1CC4L
                                    385 	.globl _T1CC3H
                                    386 	.globl _T1CC3L
                                    387 	.globl _X_T1CC2H
                                    388 	.globl _X_T1CC2L
                                    389 	.globl _X_T1CC1H
                                    390 	.globl _X_T1CC1L
                                    391 	.globl _X_T1CC0H
                                    392 	.globl _X_T1CC0L
                                    393 	.globl _T1CCTL4
                                    394 	.globl _T1CCTL3
                                    395 	.globl _X_T1CCTL2
                                    396 	.globl _X_T1CCTL1
                                    397 	.globl _X_T1CCTL0
                                    398 	.globl _CLD
                                    399 	.globl _IRCTL
                                    400 	.globl _CHIPINFO1
                                    401 	.globl _CHIPINFO0
                                    402 	.globl _FWDATA
                                    403 	.globl _FADDRH
                                    404 	.globl _FADDRL
                                    405 	.globl _FCTL
                                    406 	.globl _IVCTRL
                                    407 	.globl _BATTMON
                                    408 	.globl _SRCRC
                                    409 	.globl _DBGDATA
                                    410 	.globl _TESTREG0
                                    411 	.globl _CHIPID
                                    412 	.globl _CHVER
                                    413 	.globl _OBSSEL5
                                    414 	.globl _OBSSEL4
                                    415 	.globl _OBSSEL3
                                    416 	.globl _OBSSEL2
                                    417 	.globl _OBSSEL1
                                    418 	.globl _OBSSEL0
                                    419 	.globl _I2CIO
                                    420 	.globl _I2CWC
                                    421 	.globl _I2CADDR
                                    422 	.globl _I2CDATA
                                    423 	.globl _I2CSTAT
                                    424 	.globl _I2CCFG
                                    425 	.globl _BX_AddService
                                    426 	.globl _BX_SetParameter
                                    427 	.globl _BX_GetParameter
                                    428 ;--------------------------------------------------------
                                    429 ; special function registers
                                    430 ;--------------------------------------------------------
                                    431 	.area RSEG    (ABS,DATA)
      000000                        432 	.org 0x0000
                           000080   433 _P0	=	0x0080
                           000081   434 _SP	=	0x0081
                           000082   435 _DPL0	=	0x0082
                           000083   436 _DPH0	=	0x0083
                           000084   437 _DPL1	=	0x0084
                           000085   438 _DPH1	=	0x0085
                           000086   439 _U0CSR	=	0x0086
                           000087   440 _PCON	=	0x0087
                           000088   441 _TCON	=	0x0088
                           000089   442 _P0IFG	=	0x0089
                           00008A   443 _P1IFG	=	0x008a
                           00008B   444 _P2IFG	=	0x008b
                           00008C   445 _PICTL	=	0x008c
                           00008D   446 _P1IEN	=	0x008d
                           00008F   447 _P0INP	=	0x008f
                           000090   448 _P1	=	0x0090
                           000091   449 _RFIRQF1	=	0x0091
                           000092   450 _DPS	=	0x0092
                           000093   451 _MPAGE	=	0x0093
                           000093   452 __XPAGE	=	0x0093
                           000094   453 _T2CTRL	=	0x0094
                           000095   454 _ST0	=	0x0095
                           000096   455 _ST1	=	0x0096
                           000097   456 _ST2	=	0x0097
                           000098   457 _S0CON	=	0x0098
                           00009A   458 _IEN2	=	0x009a
                           00009B   459 _S1CON	=	0x009b
                           00009C   460 _T2EVTCFG	=	0x009c
                           00009D   461 _SLEEPSTA	=	0x009d
                           00009E   462 _CLKCONSTA	=	0x009e
                           00009F   463 _PSBANK	=	0x009f
                           00009F   464 _FMAP	=	0x009f
                           0000A0   465 _P2	=	0x00a0
                           0000A1   466 _T2IRQF	=	0x00a1
                           0000A2   467 _T2M0	=	0x00a2
                           0000A3   468 _T2M1	=	0x00a3
                           0000A4   469 _T2MOVF0	=	0x00a4
                           0000A5   470 _T2MOVF1	=	0x00a5
                           0000A6   471 _T2MOVF2	=	0x00a6
                           0000A7   472 _T2IRQM	=	0x00a7
                           0000A8   473 _IEN0	=	0x00a8
                           0000A9   474 _IP0	=	0x00a9
                           0000AB   475 _P0IEN	=	0x00ab
                           0000AC   476 _P2IEN	=	0x00ac
                           0000AD   477 _STLOAD	=	0x00ad
                           0000AE   478 _PMUX	=	0x00ae
                           0000AF   479 _T1STAT	=	0x00af
                           0000B1   480 _ENCDI	=	0x00b1
                           0000B2   481 _ENCDO	=	0x00b2
                           0000B3   482 _ENCCS	=	0x00b3
                           0000B4   483 _ADCCON1	=	0x00b4
                           0000B5   484 _ADCCON2	=	0x00b5
                           0000B6   485 _ADCCON3	=	0x00b6
                           0000B8   486 _IEN1	=	0x00b8
                           0000B9   487 _IP1	=	0x00b9
                           0000BA   488 _ADCL	=	0x00ba
                           0000BB   489 _ADCH	=	0x00bb
                           0000BC   490 _RNDL	=	0x00bc
                           0000BD   491 _RNDH	=	0x00bd
                           0000BE   492 _SLEEPCMD	=	0x00be
                           0000BF   493 _RFERRF	=	0x00bf
                           0000C0   494 _IRCON	=	0x00c0
                           0000C1   495 _U0DBUF	=	0x00c1
                           0000C2   496 _U0BAUD	=	0x00c2
                           0000C3   497 _T2MSEL	=	0x00c3
                           0000C4   498 _U0UCR	=	0x00c4
                           0000C5   499 _U0GCR	=	0x00c5
                           0000C6   500 _CLKCONCMD	=	0x00c6
                           0000C7   501 _MEMCTR	=	0x00c7
                           0000C9   502 _WDCTL	=	0x00c9
                           0000CA   503 _T3CNT	=	0x00ca
                           0000CB   504 _T3CTL	=	0x00cb
                           0000CC   505 _T3CCTL0	=	0x00cc
                           0000CD   506 _T3CC0	=	0x00cd
                           0000CE   507 _T3CCTL1	=	0x00ce
                           0000CF   508 _T3CC1	=	0x00cf
                           0000D0   509 _PSW	=	0x00d0
                           0000D1   510 _DMAIRQ	=	0x00d1
                           0000D2   511 _DMA1CFGL	=	0x00d2
                           0000D3   512 _DMA1CFGH	=	0x00d3
                           0000D4   513 _DMA0CFGL	=	0x00d4
                           0000D5   514 _DMA0CFGH	=	0x00d5
                           0000D6   515 _DMAARM	=	0x00d6
                           0000D7   516 _DMAREQ	=	0x00d7
                           0000D8   517 _TIMIF	=	0x00d8
                           0000D9   518 _RFD	=	0x00d9
                           0000DA   519 _T1CC0L	=	0x00da
                           0000DB   520 _T1CC0H	=	0x00db
                           0000DC   521 _T1CC1L	=	0x00dc
                           0000DD   522 _T1CC1H	=	0x00dd
                           0000DE   523 _T1CC2L	=	0x00de
                           0000DF   524 _T1CC2H	=	0x00df
                           0000E0   525 _ACC	=	0x00e0
                           0000E1   526 _RFST	=	0x00e1
                           0000E2   527 _T1CNTL	=	0x00e2
                           0000E3   528 _T1CNTH	=	0x00e3
                           0000E4   529 _T1CTL	=	0x00e4
                           0000E5   530 _T1CCTL0	=	0x00e5
                           0000E6   531 _T1CCTL1	=	0x00e6
                           0000E7   532 _T1CCTL2	=	0x00e7
                           0000E8   533 _IRCON2	=	0x00e8
                           0000E9   534 _RFIRQF0	=	0x00e9
                           0000EA   535 _T4CNT	=	0x00ea
                           0000EB   536 _T4CTL	=	0x00eb
                           0000EC   537 _T4CCTL0	=	0x00ec
                           0000ED   538 _T4CC0	=	0x00ed
                           0000EE   539 _T4CCTL1	=	0x00ee
                           0000EF   540 _T4CC1	=	0x00ef
                           0000F0   541 _B	=	0x00f0
                           0000F1   542 _PERCFG	=	0x00f1
                           0000F2   543 _APCFG	=	0x00f2
                           0000F3   544 _P0SEL	=	0x00f3
                           0000F4   545 _P1SEL	=	0x00f4
                           0000F5   546 _P2SEL	=	0x00f5
                           0000F6   547 _P1INP	=	0x00f6
                           0000F7   548 _P2INP	=	0x00f7
                           0000F8   549 _U1CSR	=	0x00f8
                           0000F9   550 _U1DBUF	=	0x00f9
                           0000FA   551 _U1BAUD	=	0x00fa
                           0000FB   552 _U1UCR	=	0x00fb
                           0000FC   553 _U1GCR	=	0x00fc
                           0000FD   554 _P0DIR	=	0x00fd
                           0000FE   555 _P1DIR	=	0x00fe
                           0000FF   556 _P2DIR	=	0x00ff
                           0000AA   557 _BleOpr	=	0x00aa
                           00008E   558 _BleFeedback	=	0x008e
                           0000B0   559 _ServNH	=	0x00b0
                           0000B7   560 _ServNL	=	0x00b7
                           0000C0   561 _FlashLed	=	0x00c0
                           0000C2   562 _MusicCtl	=	0x00c2
                                    563 ;--------------------------------------------------------
                                    564 ; special function bits
                                    565 ;--------------------------------------------------------
                                    566 	.area RSEG    (ABS,DATA)
      000000                        567 	.org 0x0000
                           000080   568 _P0_0	=	0x0080
                           000081   569 _P0_1	=	0x0081
                           000082   570 _P0_2	=	0x0082
                           000083   571 _P0_3	=	0x0083
                           000084   572 _P0_4	=	0x0084
                           000085   573 _P0_5	=	0x0085
                           000086   574 _P0_6	=	0x0086
                           000087   575 _P0_7	=	0x0087
                           000088   576 _IT0	=	0x0088
                           000089   577 _RFERRIF	=	0x0089
                           00008A   578 _IT1	=	0x008a
                           00008B   579 _URX0IF	=	0x008b
                           00008D   580 _ADCIF	=	0x008d
                           00008F   581 _URX1IF	=	0x008f
                           000090   582 _P1_0	=	0x0090
                           000091   583 _P1_1	=	0x0091
                           000092   584 _P1_2	=	0x0092
                           000093   585 _P1_3	=	0x0093
                           000094   586 _P1_4	=	0x0094
                           000095   587 _P1_5	=	0x0095
                           000096   588 _P1_6	=	0x0096
                           000097   589 _P1_7	=	0x0097
                           000098   590 _ENCIF_0	=	0x0098
                           000099   591 _ENCIF_1	=	0x0099
                           0000A0   592 _P2_0	=	0x00a0
                           0000A1   593 _P2_1	=	0x00a1
                           0000A2   594 _P2_2	=	0x00a2
                           0000A3   595 _P2_3	=	0x00a3
                           0000A4   596 _P2_4	=	0x00a4
                           0000A5   597 _P2_5	=	0x00a5
                           0000A6   598 _P2_6	=	0x00a6
                           0000A7   599 _P2_7	=	0x00a7
                           0000A8   600 _RFERRIE	=	0x00a8
                           0000A9   601 _ADCIE	=	0x00a9
                           0000AA   602 _URX0IE	=	0x00aa
                           0000AB   603 _URX1IE	=	0x00ab
                           0000AC   604 _ENCIE	=	0x00ac
                           0000AD   605 _STIE	=	0x00ad
                           0000AF   606 _EA	=	0x00af
                           0000B8   607 _DMAIE	=	0x00b8
                           0000B9   608 _T1IE	=	0x00b9
                           0000BA   609 _T2IE	=	0x00ba
                           0000BB   610 _T3IE	=	0x00bb
                           0000BC   611 _T4IE	=	0x00bc
                           0000BD   612 _P0IE	=	0x00bd
                           0000C0   613 _DMAIF	=	0x00c0
                           0000C1   614 _T1IF	=	0x00c1
                           0000C2   615 _T2IF	=	0x00c2
                           0000C3   616 _T3IF	=	0x00c3
                           0000C4   617 _T4IF	=	0x00c4
                           0000C5   618 _P0IF	=	0x00c5
                           0000C7   619 _STIF	=	0x00c7
                           0000D0   620 _P	=	0x00d0
                           0000D1   621 _F1	=	0x00d1
                           0000D2   622 _OV	=	0x00d2
                           0000D3   623 _RS0	=	0x00d3
                           0000D4   624 _RS1	=	0x00d4
                           0000D5   625 _F0	=	0x00d5
                           0000D6   626 _AC	=	0x00d6
                           0000D7   627 _CY	=	0x00d7
                           0000D8   628 _T3OVFIF	=	0x00d8
                           0000D9   629 _T3CH0IF	=	0x00d9
                           0000DA   630 _T3CH1IF	=	0x00da
                           0000DB   631 _T4OVFIF	=	0x00db
                           0000DC   632 _T4CH0IF	=	0x00dc
                           0000DD   633 _T4CH1IF	=	0x00dd
                           0000DE   634 _OVFIM	=	0x00de
                           0000E0   635 _ACC_0	=	0x00e0
                           0000E1   636 _ACC_1	=	0x00e1
                           0000E2   637 _ACC_2	=	0x00e2
                           0000E3   638 _ACC_3	=	0x00e3
                           0000E4   639 _ACC_4	=	0x00e4
                           0000E5   640 _ACC_5	=	0x00e5
                           0000E6   641 _ACC_6	=	0x00e6
                           0000E7   642 _ACC_7	=	0x00e7
                           0000E8   643 _P2IF	=	0x00e8
                           0000E9   644 _UTX0IF	=	0x00e9
                           0000EA   645 _UTX1IF	=	0x00ea
                           0000EB   646 _P1IF	=	0x00eb
                           0000EC   647 _WDTIF	=	0x00ec
                           0000F0   648 _B_0	=	0x00f0
                           0000F1   649 _B_1	=	0x00f1
                           0000F2   650 _B_2	=	0x00f2
                           0000F3   651 _B_3	=	0x00f3
                           0000F4   652 _B_4	=	0x00f4
                           0000F5   653 _B_5	=	0x00f5
                           0000F6   654 _B_6	=	0x00f6
                           0000F7   655 _B_7	=	0x00f7
                           0000F8   656 _ACTIVE	=	0x00f8
                           0000F9   657 _TX_BYTE	=	0x00f9
                           0000FA   658 _RX_BYTE	=	0x00fa
                           0000FB   659 _ERR	=	0x00fb
                           0000FC   660 _FE	=	0x00fc
                           0000FD   661 _SLAVE	=	0x00fd
                           0000FE   662 _RE	=	0x00fe
                           0000FF   663 _MODE	=	0x00ff
                                    664 ;--------------------------------------------------------
                                    665 ; overlayable register banks
                                    666 ;--------------------------------------------------------
                                    667 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        668 	.ds 8
                                    669 ;--------------------------------------------------------
                                    670 ; internal ram data
                                    671 ;--------------------------------------------------------
                                    672 	.area DSEG    (DATA)
                                    673 ;--------------------------------------------------------
                                    674 ; overlayable items in internal ram 
                                    675 ;--------------------------------------------------------
                                    676 ;--------------------------------------------------------
                                    677 ; indirectly addressable internal ram data
                                    678 ;--------------------------------------------------------
                                    679 	.area ISEG    (DATA)
                                    680 ;--------------------------------------------------------
                                    681 ; absolute internal ram data
                                    682 ;--------------------------------------------------------
                                    683 	.area IABS    (ABS,DATA)
                                    684 	.area IABS    (ABS,DATA)
                                    685 ;--------------------------------------------------------
                                    686 ; bit data
                                    687 ;--------------------------------------------------------
                                    688 	.area BSEG    (BIT)
                                    689 ;--------------------------------------------------------
                                    690 ; paged external ram data
                                    691 ;--------------------------------------------------------
                                    692 	.area PSEG    (PAG,XDATA)
                                    693 ;--------------------------------------------------------
                                    694 ; external ram data
                                    695 ;--------------------------------------------------------
                                    696 	.area XSEG    (XDATA)
                           006230   697 _I2CCFG	=	0x6230
                           006231   698 _I2CSTAT	=	0x6231
                           006232   699 _I2CDATA	=	0x6232
                           006233   700 _I2CADDR	=	0x6233
                           006234   701 _I2CWC	=	0x6234
                           006235   702 _I2CIO	=	0x6235
                           006243   703 _OBSSEL0	=	0x6243
                           006244   704 _OBSSEL1	=	0x6244
                           006245   705 _OBSSEL2	=	0x6245
                           006246   706 _OBSSEL3	=	0x6246
                           006247   707 _OBSSEL4	=	0x6247
                           006248   708 _OBSSEL5	=	0x6248
                           006249   709 _CHVER	=	0x6249
                           00624A   710 _CHIPID	=	0x624a
                           00624B   711 _TESTREG0	=	0x624b
                           006260   712 _DBGDATA	=	0x6260
                           006262   713 _SRCRC	=	0x6262
                           006264   714 _BATTMON	=	0x6264
                           006265   715 _IVCTRL	=	0x6265
                           006270   716 _FCTL	=	0x6270
                           006271   717 _FADDRL	=	0x6271
                           006272   718 _FADDRH	=	0x6272
                           006273   719 _FWDATA	=	0x6273
                           006276   720 _CHIPINFO0	=	0x6276
                           006277   721 _CHIPINFO1	=	0x6277
                           006281   722 _IRCTL	=	0x6281
                           006290   723 _CLD	=	0x6290
                           0062A0   724 _X_T1CCTL0	=	0x62a0
                           0062A1   725 _X_T1CCTL1	=	0x62a1
                           0062A2   726 _X_T1CCTL2	=	0x62a2
                           0062A3   727 _T1CCTL3	=	0x62a3
                           0062A4   728 _T1CCTL4	=	0x62a4
                           0062A6   729 _X_T1CC0L	=	0x62a6
                           0062A7   730 _X_T1CC0H	=	0x62a7
                           0062A8   731 _X_T1CC1L	=	0x62a8
                           0062A9   732 _X_T1CC1H	=	0x62a9
                           0062AA   733 _X_T1CC2L	=	0x62aa
                           0062AB   734 _X_T1CC2H	=	0x62ab
                           0062AC   735 _T1CC3L	=	0x62ac
                           0062AD   736 _T1CC3H	=	0x62ad
                           0062AE   737 _T1CC4L	=	0x62ae
                           0062AF   738 _T1CC4H	=	0x62af
                           0062B0   739 _STCC	=	0x62b0
                           0062B1   740 _STCS	=	0x62b1
                           0062B2   741 _STCV0	=	0x62b2
                           0062B3   742 _STCV1	=	0x62b3
                           0062B4   743 _STCV2	=	0x62b4
                           0062C0   744 _OPAMPC	=	0x62c0
                           0062C1   745 _OPAMPS	=	0x62c1
                           0062D0   746 _CMPCTL	=	0x62d0
                           006200   747 _USBADDR	=	0x6200
                           006201   748 _USBPOW	=	0x6201
                           006202   749 _USBIIF	=	0x6202
                           006204   750 _USBOIF	=	0x6204
                           006206   751 _USBCIF	=	0x6206
                           006207   752 _USBIIE	=	0x6207
                           006209   753 _USBOIE	=	0x6209
                           00620B   754 _USBCIE	=	0x620b
                           00620C   755 _USBFRML	=	0x620c
                           00620D   756 _USBFRMH	=	0x620d
                           00620E   757 _USBINDEX	=	0x620e
                           00620F   758 _USBCTRL	=	0x620f
                           006210   759 _USBMAXI	=	0x6210
                           006211   760 _USBCS0	=	0x6211
                           006211   761 _USBCSIL	=	0x6211
                           006212   762 _USBCSIH	=	0x6212
                           006213   763 _USBMAXO	=	0x6213
                           006214   764 _USBCSOL	=	0x6214
                           006215   765 _USBCSOH	=	0x6215
                           006216   766 _USBCNT0	=	0x6216
                           006216   767 _USBCNTL	=	0x6216
                           006217   768 _USBCNTH	=	0x6217
                           006220   769 _USBF0	=	0x6220
                           006222   770 _USBF1	=	0x6222
                           006224   771 _USBF2	=	0x6224
                           006226   772 _USBF3	=	0x6226
                           006228   773 _USBF4	=	0x6228
                           00622A   774 _USBF5	=	0x622a
                           006174   775 _SHORTADDRH	=	0x6174
                           006175   776 _SHORTADDRL	=	0x6175
                           006172   777 _PANIDH	=	0x6172
                           006173   778 _PANIDL	=	0x6173
                           00616A   779 _IEEE_ADDR	=	0x616a
                           006180   780 _FRMFILT0	=	0x6180
                           006181   781 _FRMFILT1	=	0x6181
                           006182   782 _SRCMATCH	=	0x6182
                           006183   783 _SRCSHORTEN0	=	0x6183
                           006184   784 _SRCSHORTEN1	=	0x6184
                           006185   785 _SRCSHORTEN2	=	0x6185
                           006186   786 _SRCEXTEN0	=	0x6186
                           006187   787 _SRCEXTEN1	=	0x6187
                           006188   788 _SRCEXTEN2	=	0x6188
                           006189   789 _FRMCTRL0	=	0x6189
                           00618A   790 _FRMCTRL1	=	0x618a
                           00618B   791 _RXENABLE	=	0x618b
                           00618C   792 _RXMASKSET	=	0x618c
                           00618D   793 _RXMASKCLR	=	0x618d
                           00618E   794 _FREQTUNE	=	0x618e
                           00618F   795 _FREQCTRL	=	0x618f
                           006190   796 _TXPOWER	=	0x6190
                           006191   797 _TXCTRL	=	0x6191
                           006192   798 _FSMSTAT0	=	0x6192
                           006193   799 _FSMSTAT1	=	0x6193
                           006194   800 _FIFOPCTRL	=	0x6194
                           006195   801 _FSMCTRL	=	0x6195
                           006196   802 _CCACTRL0	=	0x6196
                           006197   803 _CCACTRL1	=	0x6197
                           006198   804 _RSSI	=	0x6198
                           006199   805 _RSSISTAT	=	0x6199
                           00619A   806 _RXFIRST	=	0x619a
                           00619B   807 _RXFIFOCNT	=	0x619b
                           00619C   808 _TXFIFOCNT	=	0x619c
                           00619D   809 _RXFIRST_PTR	=	0x619d
                           00619E   810 _RXLAST_PTR	=	0x619e
                           00619F   811 _RXP1_PTR	=	0x619f
                           0061A1   812 _TXFIRST_PTR	=	0x61a1
                           0061A2   813 _TXLAST_PTR	=	0x61a2
                           0061A3   814 _RFIRQM0	=	0x61a3
                           0061A4   815 _RFIRQM1	=	0x61a4
                           0061A5   816 _RFERRM	=	0x61a5
                           0061A6   817 _OPAMPMC	=	0x61a6
                           0061A7   818 _RFRND	=	0x61a7
                           0061A8   819 _MDMCTRL0	=	0x61a8
                           0061A9   820 _MDMCTRL1	=	0x61a9
                           0061AA   821 _FREQEST	=	0x61aa
                           0061AB   822 _RXCTRL	=	0x61ab
                           0061AC   823 _FSCTRL	=	0x61ac
                           0061AE   824 _FSCAL1	=	0x61ae
                           0061AF   825 _FSCAL2	=	0x61af
                           0061B0   826 _FSCAL3	=	0x61b0
                           0061B1   827 _AGCCTRL0	=	0x61b1
                           0061B2   828 _AGCCTRL1	=	0x61b2
                           0061B3   829 _AGCCTRL2	=	0x61b3
                           0061B4   830 _AGCCTRL3	=	0x61b4
                           0061B5   831 _ADCTEST0	=	0x61b5
                           0061B6   832 _ADCTEST1	=	0x61b6
                           0061B7   833 _ADCTEST2	=	0x61b7
                           0061B8   834 _MDMTEST0	=	0x61b8
                           0061B9   835 _MDMTEST1	=	0x61b9
                           0061BA   836 _DACTEST0	=	0x61ba
                           0061BB   837 _DACTEST1	=	0x61bb
                           0061BC   838 _DACTEST2	=	0x61bc
                           0061BD   839 _ATEST	=	0x61bd
                           0061BE   840 _PTEST0	=	0x61be
                           0061BF   841 _PTEST1	=	0x61bf
                           0061C0   842 _CSPPROG0	=	0x61c0
                           0061C1   843 _CSPPROG1	=	0x61c1
                           0061C2   844 _CSPPROG2	=	0x61c2
                           0061C3   845 _CSPPROG3	=	0x61c3
                           0061C4   846 _CSPPROG4	=	0x61c4
                           0061C5   847 _CSPPROG5	=	0x61c5
                           0061C6   848 _CSPPROG6	=	0x61c6
                           0061C7   849 _CSPPROG7	=	0x61c7
                           0061C8   850 _CSPPROG8	=	0x61c8
                           0061C9   851 _CSPPROG9	=	0x61c9
                           0061CA   852 _CSPPROG10	=	0x61ca
                           0061CB   853 _CSPPROG11	=	0x61cb
                           0061CC   854 _CSPPROG12	=	0x61cc
                           0061CD   855 _CSPPROG13	=	0x61cd
                           0061CE   856 _CSPPROG14	=	0x61ce
                           0061CF   857 _CSPPROG15	=	0x61cf
                           0061D0   858 _CSPPROG16	=	0x61d0
                           0061D1   859 _CSPPROG17	=	0x61d1
                           0061D2   860 _CSPPROG18	=	0x61d2
                           0061D3   861 _CSPPROG19	=	0x61d3
                           0061D4   862 _CSPPROG20	=	0x61d4
                           0061D5   863 _CSPPROG21	=	0x61d5
                           0061D6   864 _CSPPROG22	=	0x61d6
                           0061D7   865 _CSPPROG23	=	0x61d7
                           0061E0   866 _CSPCTRL	=	0x61e0
                           0061E1   867 _CSPSTAT	=	0x61e1
                           0061E2   868 _CSPX	=	0x61e2
                           0061E3   869 _CSPY	=	0x61e3
                           0061E4   870 _CSPZ	=	0x61e4
                           0061E5   871 _CSPT	=	0x61e5
                           0061EB   872 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   873 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   874 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   875 _TXFILTCFG	=	0x61fa
      001168                        876 _BXChar1Props:
      001168                        877 	.ds 1
      001169                        878 _BXChar1:
      001169                        879 	.ds 1
      00116A                        880 _BXChar1UserDesp:
      00116A                        881 	.ds 17
      00117B                        882 _BXChar2Props:
      00117B                        883 	.ds 1
      00117C                        884 _BXChar2:
      00117C                        885 	.ds 1
      00117D                        886 _BXChar2UserDesp:
      00117D                        887 	.ds 17
      00118E                        888 _BX_Tbl:
      00118E                        889 	.ds 50
      0011C0                        890 _BX_AddService_services_1_298:
      0011C0                        891 	.ds 4
      0011C4                        892 _BX_AddService_status_1_299:
      0011C4                        893 	.ds 1
      0011C5                        894 _BX_SetParameter_PARM_2:
      0011C5                        895 	.ds 1
      0011C6                        896 _BX_SetParameter_PARM_3:
      0011C6                        897 	.ds 3
      0011C9                        898 _BX_SetParameter_param_1_301:
      0011C9                        899 	.ds 1
      0011CA                        900 _BX_SetParameter_ret_1_302:
      0011CA                        901 	.ds 1
      0011CB                        902 _BX_GetParameter_PARM_2:
      0011CB                        903 	.ds 3
      0011CE                        904 _BX_GetParameter_param_1_306:
      0011CE                        905 	.ds 1
      0011CF                        906 _BX_GetParameter_ret_1_307:
      0011CF                        907 	.ds 1
                                    908 ;--------------------------------------------------------
                                    909 ; absolute external ram data
                                    910 ;--------------------------------------------------------
                                    911 	.area XABS    (ABS,XDATA)
                                    912 ;--------------------------------------------------------
                                    913 ; external initialized ram data
                                    914 ;--------------------------------------------------------
                                    915 	.area HOME    (CODE)
                                    916 	.area GSINIT0 (CODE)
                                    917 	.area GSINIT1 (CODE)
                                    918 	.area GSINIT2 (CODE)
                                    919 	.area GSINIT3 (CODE)
                                    920 	.area GSINIT4 (CODE)
                                    921 	.area GSINIT5 (CODE)
                                    922 	.area GSINIT  (CODE)
                                    923 	.area GSFINAL (CODE)
                                    924 	.area CSEG    (CODE)
                                    925 ;--------------------------------------------------------
                                    926 ; global & static initialisations
                                    927 ;--------------------------------------------------------
                                    928 	.area HOME    (CODE)
                                    929 	.area GSINIT  (CODE)
                                    930 	.area GSFINAL (CODE)
                                    931 	.area GSINIT  (CODE)
                                    932 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:78: static uint8 BXChar1Props = GATT_PROP_READ | GATT_PROP_WRITE;
      0001D4 90 11 68         [24]  933 	mov	dptr,#_BXChar1Props
      0001D7 74 0A            [12]  934 	mov	a,#0x0A
      0001D9 F0               [24]  935 	movx	@dptr,a
                                    936 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:80: static uint8 BXChar1 = 0x00;
      0001DA 90 11 69         [24]  937 	mov	dptr,#_BXChar1
      0001DD 74 00            [12]  938 	mov	a,#0x00
      0001DF F0               [24]  939 	movx	@dptr,a
                                    940 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:82: static uint8 BXChar1UserDesp[17] = "Characteristic 1\0";
      0001E0 90 11 6A         [24]  941 	mov	dptr,#_BXChar1UserDesp
      0001E3 74 43            [12]  942 	mov	a,#0x43
      0001E5 F0               [24]  943 	movx	@dptr,a
      0001E6 90 11 6B         [24]  944 	mov	dptr,#(_BXChar1UserDesp + 0x0001)
      0001E9 74 68            [12]  945 	mov	a,#0x68
      0001EB F0               [24]  946 	movx	@dptr,a
      0001EC 90 11 6C         [24]  947 	mov	dptr,#(_BXChar1UserDesp + 0x0002)
      0001EF 74 61            [12]  948 	mov	a,#0x61
      0001F1 F0               [24]  949 	movx	@dptr,a
      0001F2 90 11 6D         [24]  950 	mov	dptr,#(_BXChar1UserDesp + 0x0003)
      0001F5 74 72            [12]  951 	mov	a,#0x72
      0001F7 F0               [24]  952 	movx	@dptr,a
      0001F8 90 11 6E         [24]  953 	mov	dptr,#(_BXChar1UserDesp + 0x0004)
      0001FB 74 61            [12]  954 	mov	a,#0x61
      0001FD F0               [24]  955 	movx	@dptr,a
      0001FE 90 11 6F         [24]  956 	mov	dptr,#(_BXChar1UserDesp + 0x0005)
      000201 74 63            [12]  957 	mov	a,#0x63
      000203 F0               [24]  958 	movx	@dptr,a
      000204 90 11 70         [24]  959 	mov	dptr,#(_BXChar1UserDesp + 0x0006)
      000207 74 74            [12]  960 	mov	a,#0x74
      000209 F0               [24]  961 	movx	@dptr,a
      00020A 90 11 71         [24]  962 	mov	dptr,#(_BXChar1UserDesp + 0x0007)
      00020D 74 65            [12]  963 	mov	a,#0x65
      00020F F0               [24]  964 	movx	@dptr,a
      000210 90 11 72         [24]  965 	mov	dptr,#(_BXChar1UserDesp + 0x0008)
      000213 74 72            [12]  966 	mov	a,#0x72
      000215 F0               [24]  967 	movx	@dptr,a
      000216 90 11 73         [24]  968 	mov	dptr,#(_BXChar1UserDesp + 0x0009)
      000219 74 69            [12]  969 	mov	a,#0x69
      00021B F0               [24]  970 	movx	@dptr,a
      00021C 90 11 74         [24]  971 	mov	dptr,#(_BXChar1UserDesp + 0x000a)
      00021F 74 73            [12]  972 	mov	a,#0x73
      000221 F0               [24]  973 	movx	@dptr,a
      000222 90 11 75         [24]  974 	mov	dptr,#(_BXChar1UserDesp + 0x000b)
      000225 04               [12]  975 	inc	a
      000226 F0               [24]  976 	movx	@dptr,a
      000227 90 11 76         [24]  977 	mov	dptr,#(_BXChar1UserDesp + 0x000c)
      00022A 74 69            [12]  978 	mov	a,#0x69
      00022C F0               [24]  979 	movx	@dptr,a
      00022D 90 11 77         [24]  980 	mov	dptr,#(_BXChar1UserDesp + 0x000d)
      000230 74 63            [12]  981 	mov	a,#0x63
      000232 F0               [24]  982 	movx	@dptr,a
      000233 90 11 78         [24]  983 	mov	dptr,#(_BXChar1UserDesp + 0x000e)
      000236 74 20            [12]  984 	mov	a,#0x20
      000238 F0               [24]  985 	movx	@dptr,a
      000239 90 11 79         [24]  986 	mov	dptr,#(_BXChar1UserDesp + 0x000f)
      00023C 74 31            [12]  987 	mov	a,#0x31
      00023E F0               [24]  988 	movx	@dptr,a
      00023F 90 11 7A         [24]  989 	mov	dptr,#(_BXChar1UserDesp + 0x0010)
      000242 74 00            [12]  990 	mov	a,#0x00
      000244 F0               [24]  991 	movx	@dptr,a
                                    992 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:85: static uint8 BXChar2Props = GATT_PROP_READ |GATT_PROP_WRITE;
      000245 90 11 7B         [24]  993 	mov	dptr,#_BXChar2Props
      000248 74 0A            [12]  994 	mov	a,#0x0A
      00024A F0               [24]  995 	movx	@dptr,a
                                    996 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:87: static uint8 BXChar2 = 0x00;
      00024B 90 11 7C         [24]  997 	mov	dptr,#_BXChar2
      00024E 74 00            [12]  998 	mov	a,#0x00
      000250 F0               [24]  999 	movx	@dptr,a
                                   1000 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:89: static uint8 BXChar2UserDesp[17] = "Characteristic 2\0";
      000251 90 11 7D         [24] 1001 	mov	dptr,#_BXChar2UserDesp
      000254 74 43            [12] 1002 	mov	a,#0x43
      000256 F0               [24] 1003 	movx	@dptr,a
      000257 90 11 7E         [24] 1004 	mov	dptr,#(_BXChar2UserDesp + 0x0001)
      00025A 74 68            [12] 1005 	mov	a,#0x68
      00025C F0               [24] 1006 	movx	@dptr,a
      00025D 90 11 7F         [24] 1007 	mov	dptr,#(_BXChar2UserDesp + 0x0002)
      000260 74 61            [12] 1008 	mov	a,#0x61
      000262 F0               [24] 1009 	movx	@dptr,a
      000263 90 11 80         [24] 1010 	mov	dptr,#(_BXChar2UserDesp + 0x0003)
      000266 74 72            [12] 1011 	mov	a,#0x72
      000268 F0               [24] 1012 	movx	@dptr,a
      000269 90 11 81         [24] 1013 	mov	dptr,#(_BXChar2UserDesp + 0x0004)
      00026C 74 61            [12] 1014 	mov	a,#0x61
      00026E F0               [24] 1015 	movx	@dptr,a
      00026F 90 11 82         [24] 1016 	mov	dptr,#(_BXChar2UserDesp + 0x0005)
      000272 74 63            [12] 1017 	mov	a,#0x63
      000274 F0               [24] 1018 	movx	@dptr,a
      000275 90 11 83         [24] 1019 	mov	dptr,#(_BXChar2UserDesp + 0x0006)
      000278 74 74            [12] 1020 	mov	a,#0x74
      00027A F0               [24] 1021 	movx	@dptr,a
      00027B 90 11 84         [24] 1022 	mov	dptr,#(_BXChar2UserDesp + 0x0007)
      00027E 74 65            [12] 1023 	mov	a,#0x65
      000280 F0               [24] 1024 	movx	@dptr,a
      000281 90 11 85         [24] 1025 	mov	dptr,#(_BXChar2UserDesp + 0x0008)
      000284 74 72            [12] 1026 	mov	a,#0x72
      000286 F0               [24] 1027 	movx	@dptr,a
      000287 90 11 86         [24] 1028 	mov	dptr,#(_BXChar2UserDesp + 0x0009)
      00028A 74 69            [12] 1029 	mov	a,#0x69
      00028C F0               [24] 1030 	movx	@dptr,a
      00028D 90 11 87         [24] 1031 	mov	dptr,#(_BXChar2UserDesp + 0x000a)
      000290 74 73            [12] 1032 	mov	a,#0x73
      000292 F0               [24] 1033 	movx	@dptr,a
      000293 90 11 88         [24] 1034 	mov	dptr,#(_BXChar2UserDesp + 0x000b)
      000296 04               [12] 1035 	inc	a
      000297 F0               [24] 1036 	movx	@dptr,a
      000298 90 11 89         [24] 1037 	mov	dptr,#(_BXChar2UserDesp + 0x000c)
      00029B 74 69            [12] 1038 	mov	a,#0x69
      00029D F0               [24] 1039 	movx	@dptr,a
      00029E 90 11 8A         [24] 1040 	mov	dptr,#(_BXChar2UserDesp + 0x000d)
      0002A1 74 63            [12] 1041 	mov	a,#0x63
      0002A3 F0               [24] 1042 	movx	@dptr,a
      0002A4 90 11 8B         [24] 1043 	mov	dptr,#(_BXChar2UserDesp + 0x000e)
      0002A7 74 20            [12] 1044 	mov	a,#0x20
      0002A9 F0               [24] 1045 	movx	@dptr,a
      0002AA 90 11 8C         [24] 1046 	mov	dptr,#(_BXChar2UserDesp + 0x000f)
      0002AD 74 32            [12] 1047 	mov	a,#0x32
      0002AF F0               [24] 1048 	movx	@dptr,a
      0002B0 90 11 8D         [24] 1049 	mov	dptr,#(_BXChar2UserDesp + 0x0010)
      0002B3 74 00            [12] 1050 	mov	a,#0x00
      0002B5 F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:115: static gattAttribute_t BX_Tbl[SERVAPP_NUM_ATTR_SUPPORTED] = 
      0002B6 90 11 8E         [24] 1053 	mov	dptr,#_BX_Tbl
      0002B9 74 02            [12] 1054 	mov	a,#0x02
      0002BB F0               [24] 1055 	movx	@dptr,a
      0002BC 90 11 8F         [24] 1056 	mov	dptr,#(_BX_Tbl + 0x0001)
      0002BF 74 93            [12] 1057 	mov	a,#_primaryServiceUUID
      0002C1 F0               [24] 1058 	movx	@dptr,a
      0002C2 74 5D            [12] 1059 	mov	a,#(_primaryServiceUUID >> 8)
      0002C4 A3               [24] 1060 	inc	dptr
      0002C5 F0               [24] 1061 	movx	@dptr,a
      0002C6 74 80            [12] 1062 	mov	a,#0x80
      0002C8 A3               [24] 1063 	inc	dptr
      0002C9 F0               [24] 1064 	movx	@dptr,a
      0002CA 90 11 92         [24] 1065 	mov	dptr,#(_BX_Tbl + 0x0004)
      0002CD 23               [12] 1066 	rl	a
      0002CE F0               [24] 1067 	movx	@dptr,a
      0002CF 90 11 93         [24] 1068 	mov	dptr,#(_BX_Tbl + 0x0005)
      0002D2 74 00            [12] 1069 	mov	a,#0x00
      0002D4 F0               [24] 1070 	movx	@dptr,a
      0002D5 A3               [24] 1071 	inc	dptr
      0002D6 F0               [24] 1072 	movx	@dptr,a
      0002D7 90 11 95         [24] 1073 	mov	dptr,#(_BX_Tbl + 0x0007)
      0002DA 74 E1            [12] 1074 	mov	a,#_BXService
      0002DC F0               [24] 1075 	movx	@dptr,a
      0002DD 74 5D            [12] 1076 	mov	a,#(_BXService >> 8)
      0002DF A3               [24] 1077 	inc	dptr
      0002E0 F0               [24] 1078 	movx	@dptr,a
      0002E1 74 80            [12] 1079 	mov	a,#0x80
      0002E3 A3               [24] 1080 	inc	dptr
      0002E4 F0               [24] 1081 	movx	@dptr,a
      0002E5 90 11 98         [24] 1082 	mov	dptr,#(_BX_Tbl + 0x000a)
      0002E8 74 02            [12] 1083 	mov	a,#0x02
      0002EA F0               [24] 1084 	movx	@dptr,a
      0002EB 90 11 99         [24] 1085 	mov	dptr,#(_BX_Tbl + 0x000b)
      0002EE 74 99            [12] 1086 	mov	a,#_characterUUID
      0002F0 F0               [24] 1087 	movx	@dptr,a
      0002F1 74 5D            [12] 1088 	mov	a,#(_characterUUID >> 8)
      0002F3 A3               [24] 1089 	inc	dptr
      0002F4 F0               [24] 1090 	movx	@dptr,a
      0002F5 74 80            [12] 1091 	mov	a,#0x80
      0002F7 A3               [24] 1092 	inc	dptr
      0002F8 F0               [24] 1093 	movx	@dptr,a
      0002F9 90 11 9C         [24] 1094 	mov	dptr,#(_BX_Tbl + 0x000e)
      0002FC 23               [12] 1095 	rl	a
      0002FD F0               [24] 1096 	movx	@dptr,a
      0002FE 90 11 9D         [24] 1097 	mov	dptr,#(_BX_Tbl + 0x000f)
      000301 74 00            [12] 1098 	mov	a,#0x00
      000303 F0               [24] 1099 	movx	@dptr,a
      000304 A3               [24] 1100 	inc	dptr
      000305 F0               [24] 1101 	movx	@dptr,a
      000306 90 11 9F         [24] 1102 	mov	dptr,#(_BX_Tbl + 0x0011)
      000309 74 68            [12] 1103 	mov	a,#_BXChar1Props
      00030B F0               [24] 1104 	movx	@dptr,a
      00030C 74 11            [12] 1105 	mov	a,#(_BXChar1Props >> 8)
      00030E A3               [24] 1106 	inc	dptr
      00030F F0               [24] 1107 	movx	@dptr,a
      000310 74 00            [12] 1108 	mov	a,#0x00
      000312 A3               [24] 1109 	inc	dptr
      000313 F0               [24] 1110 	movx	@dptr,a
      000314 90 11 A2         [24] 1111 	mov	dptr,#(_BX_Tbl + 0x0014)
      000317 74 02            [12] 1112 	mov	a,#0x02
      000319 F0               [24] 1113 	movx	@dptr,a
      00031A 90 11 A3         [24] 1114 	mov	dptr,#(_BX_Tbl + 0x0015)
      00031D 74 DD            [12] 1115 	mov	a,#_BXchar1UUID
      00031F F0               [24] 1116 	movx	@dptr,a
      000320 74 5D            [12] 1117 	mov	a,#(_BXchar1UUID >> 8)
      000322 A3               [24] 1118 	inc	dptr
      000323 F0               [24] 1119 	movx	@dptr,a
      000324 74 80            [12] 1120 	mov	a,#0x80
      000326 A3               [24] 1121 	inc	dptr
      000327 F0               [24] 1122 	movx	@dptr,a
      000328 90 11 A6         [24] 1123 	mov	dptr,#(_BX_Tbl + 0x0018)
      00032B 74 03            [12] 1124 	mov	a,#0x03
      00032D F0               [24] 1125 	movx	@dptr,a
      00032E 90 11 A7         [24] 1126 	mov	dptr,#(_BX_Tbl + 0x0019)
      000331 74 00            [12] 1127 	mov	a,#0x00
      000333 F0               [24] 1128 	movx	@dptr,a
      000334 A3               [24] 1129 	inc	dptr
      000335 F0               [24] 1130 	movx	@dptr,a
      000336 90 11 A9         [24] 1131 	mov	dptr,#(_BX_Tbl + 0x001b)
      000339 74 69            [12] 1132 	mov	a,#_BXChar1
      00033B F0               [24] 1133 	movx	@dptr,a
      00033C 74 11            [12] 1134 	mov	a,#(_BXChar1 >> 8)
      00033E A3               [24] 1135 	inc	dptr
      00033F F0               [24] 1136 	movx	@dptr,a
      000340 74 00            [12] 1137 	mov	a,#0x00
      000342 A3               [24] 1138 	inc	dptr
      000343 F0               [24] 1139 	movx	@dptr,a
      000344 90 11 AC         [24] 1140 	mov	dptr,#(_BX_Tbl + 0x001e)
      000347 74 02            [12] 1141 	mov	a,#0x02
      000349 F0               [24] 1142 	movx	@dptr,a
      00034A 90 11 AD         [24] 1143 	mov	dptr,#(_BX_Tbl + 0x001f)
      00034D 74 9D            [12] 1144 	mov	a,#_charUserDescUUID
      00034F F0               [24] 1145 	movx	@dptr,a
      000350 74 5D            [12] 1146 	mov	a,#(_charUserDescUUID >> 8)
      000352 A3               [24] 1147 	inc	dptr
      000353 F0               [24] 1148 	movx	@dptr,a
      000354 74 80            [12] 1149 	mov	a,#0x80
      000356 A3               [24] 1150 	inc	dptr
      000357 F0               [24] 1151 	movx	@dptr,a
      000358 90 11 B0         [24] 1152 	mov	dptr,#(_BX_Tbl + 0x0022)
      00035B 23               [12] 1153 	rl	a
      00035C F0               [24] 1154 	movx	@dptr,a
      00035D 90 11 B1         [24] 1155 	mov	dptr,#(_BX_Tbl + 0x0023)
      000360 74 00            [12] 1156 	mov	a,#0x00
      000362 F0               [24] 1157 	movx	@dptr,a
      000363 A3               [24] 1158 	inc	dptr
      000364 F0               [24] 1159 	movx	@dptr,a
      000365 90 11 B3         [24] 1160 	mov	dptr,#(_BX_Tbl + 0x0025)
      000368 74 6A            [12] 1161 	mov	a,#_BXChar1UserDesp
      00036A F0               [24] 1162 	movx	@dptr,a
      00036B 74 11            [12] 1163 	mov	a,#(_BXChar1UserDesp >> 8)
      00036D A3               [24] 1164 	inc	dptr
      00036E F0               [24] 1165 	movx	@dptr,a
      00036F 74 00            [12] 1166 	mov	a,#0x00
      000371 A3               [24] 1167 	inc	dptr
      000372 F0               [24] 1168 	movx	@dptr,a
      000373 90 11 B6         [24] 1169 	mov	dptr,#(_BX_Tbl + 0x0028)
      000376 74 02            [12] 1170 	mov	a,#0x02
      000378 F0               [24] 1171 	movx	@dptr,a
      000379 90 11 B7         [24] 1172 	mov	dptr,#(_BX_Tbl + 0x0029)
      00037C 74 DF            [12] 1173 	mov	a,#_BXchar2UUID
      00037E F0               [24] 1174 	movx	@dptr,a
      00037F 74 5D            [12] 1175 	mov	a,#(_BXchar2UUID >> 8)
      000381 A3               [24] 1176 	inc	dptr
      000382 F0               [24] 1177 	movx	@dptr,a
      000383 74 80            [12] 1178 	mov	a,#0x80
      000385 A3               [24] 1179 	inc	dptr
      000386 F0               [24] 1180 	movx	@dptr,a
      000387 90 11 BA         [24] 1181 	mov	dptr,#(_BX_Tbl + 0x002c)
      00038A 74 03            [12] 1182 	mov	a,#0x03
      00038C F0               [24] 1183 	movx	@dptr,a
      00038D 90 11 BB         [24] 1184 	mov	dptr,#(_BX_Tbl + 0x002d)
      000390 74 00            [12] 1185 	mov	a,#0x00
      000392 F0               [24] 1186 	movx	@dptr,a
      000393 A3               [24] 1187 	inc	dptr
      000394 F0               [24] 1188 	movx	@dptr,a
      000395 90 11 BD         [24] 1189 	mov	dptr,#(_BX_Tbl + 0x002f)
      000398 74 7C            [12] 1190 	mov	a,#_BXChar2
      00039A F0               [24] 1191 	movx	@dptr,a
      00039B 74 11            [12] 1192 	mov	a,#(_BXChar2 >> 8)
      00039D A3               [24] 1193 	inc	dptr
      00039E F0               [24] 1194 	movx	@dptr,a
      00039F 74 00            [12] 1195 	mov	a,#0x00
      0003A1 A3               [24] 1196 	inc	dptr
      0003A2 F0               [24] 1197 	movx	@dptr,a
                                   1198 ;--------------------------------------------------------
                                   1199 ; Home
                                   1200 ;--------------------------------------------------------
                                   1201 	.area HOME    (CODE)
                                   1202 	.area HOME    (CODE)
                                   1203 ;--------------------------------------------------------
                                   1204 ; code
                                   1205 ;--------------------------------------------------------
                                   1206 	.area CSEG    (CODE)
                                   1207 ;------------------------------------------------------------
                                   1208 ;Allocation info for local variables in function 'BX_AddService'
                                   1209 ;------------------------------------------------------------
                                   1210 ;services                  Allocated with name '_BX_AddService_services_1_298'
                                   1211 ;status                    Allocated with name '_BX_AddService_status_1_299'
                                   1212 ;------------------------------------------------------------
                                   1213 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:176: bStatus_t BX_AddService( uint32 services ){
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function BX_AddService
                                   1216 ;	-----------------------------------------
      004954                       1217 _BX_AddService:
                           000007  1218 	ar7 = 0x07
                           000006  1219 	ar6 = 0x06
                           000005  1220 	ar5 = 0x05
                           000004  1221 	ar4 = 0x04
                           000003  1222 	ar3 = 0x03
                           000002  1223 	ar2 = 0x02
                           000001  1224 	ar1 = 0x01
                           000000  1225 	ar0 = 0x00
      004954 AF 82            [24] 1226 	mov	r7,dpl
      004956 AE 83            [24] 1227 	mov	r6,dph
      004958 AD F0            [24] 1228 	mov	r5,b
      00495A FC               [12] 1229 	mov	r4,a
      00495B 90 11 C0         [24] 1230 	mov	dptr,#_BX_AddService_services_1_298
      00495E EF               [12] 1231 	mov	a,r7
      00495F F0               [24] 1232 	movx	@dptr,a
      004960 EE               [12] 1233 	mov	a,r6
      004961 A3               [24] 1234 	inc	dptr
      004962 F0               [24] 1235 	movx	@dptr,a
      004963 ED               [12] 1236 	mov	a,r5
      004964 A3               [24] 1237 	inc	dptr
      004965 F0               [24] 1238 	movx	@dptr,a
      004966 EC               [12] 1239 	mov	a,r4
      004967 A3               [24] 1240 	inc	dptr
      004968 F0               [24] 1241 	movx	@dptr,a
                                   1242 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:177: uint8 status = SUCCESS;
      004969 90 11 C4         [24] 1243 	mov	dptr,#_BX_AddService_status_1_299
      00496C 74 00            [12] 1244 	mov	a,#0x00
      00496E F0               [24] 1245 	movx	@dptr,a
                                   1246 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:186: if ( services & BX_SERVICE )
      00496F 90 11 C0         [24] 1247 	mov	dptr,#_BX_AddService_services_1_298
      004972 E0               [24] 1248 	movx	a,@dptr
      004973 FC               [12] 1249 	mov	r4,a
      004974 A3               [24] 1250 	inc	dptr
      004975 E0               [24] 1251 	movx	a,@dptr
      004976 FD               [12] 1252 	mov	r5,a
      004977 A3               [24] 1253 	inc	dptr
      004978 E0               [24] 1254 	movx	a,@dptr
      004979 FE               [12] 1255 	mov	r6,a
      00497A A3               [24] 1256 	inc	dptr
      00497B E0               [24] 1257 	movx	a,@dptr
      00497C FF               [12] 1258 	mov	r7,a
      00497D EC               [12] 1259 	mov	a,r4
      00497E 20 E0 03         [24] 1260 	jb	acc.0,00108$
      004981 02 49 AE         [24] 1261 	ljmp	00102$
      004984                       1262 00108$:
                                   1263 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:189: status = GATTServApp_RegisterService( BX_Tbl, 
                                   1264 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:191: &BX_CBs );
      004984 90 11 DC         [24] 1265 	mov	dptr,#_GATTServApp_RegisterService_PARM_2
      004987 74 05            [12] 1266 	mov	a,#0x05
      004989 F0               [24] 1267 	movx	@dptr,a
      00498A 74 00            [12] 1268 	mov	a,#0x00
      00498C A3               [24] 1269 	inc	dptr
      00498D F0               [24] 1270 	movx	@dptr,a
      00498E 90 11 DE         [24] 1271 	mov	dptr,#_GATTServApp_RegisterService_PARM_3
      004991 74 D5            [12] 1272 	mov	a,#_BX_CBs
      004993 F0               [24] 1273 	movx	@dptr,a
      004994 74 5D            [12] 1274 	mov	a,#(_BX_CBs >> 8)
      004996 A3               [24] 1275 	inc	dptr
      004997 F0               [24] 1276 	movx	@dptr,a
      004998 74 80            [12] 1277 	mov	a,#0x80
      00499A A3               [24] 1278 	inc	dptr
      00499B F0               [24] 1279 	movx	@dptr,a
      00499C 75 82 8E         [24] 1280 	mov	dpl,#_BX_Tbl
      00499F 75 83 11         [24] 1281 	mov	dph,#(_BX_Tbl >> 8)
      0049A2 75 F0 00         [24] 1282 	mov	b,#0x00
      0049A5 12 51 7F         [24] 1283 	lcall	_GATTServApp_RegisterService
      0049A8 E5 82            [12] 1284 	mov	a,dpl
      0049AA 90 11 C4         [24] 1285 	mov	dptr,#_BX_AddService_status_1_299
      0049AD F0               [24] 1286 	movx	@dptr,a
      0049AE                       1287 00102$:
                                   1288 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:194: return ( status );
      0049AE 90 11 C4         [24] 1289 	mov	dptr,#_BX_AddService_status_1_299
      0049B1 E0               [24] 1290 	movx	a,@dptr
      0049B2 FF               [12] 1291 	mov	r7,a
      0049B3 8F 82            [24] 1292 	mov	dpl,r7
      0049B5                       1293 00103$:
      0049B5 22               [24] 1294 	ret
                                   1295 ;------------------------------------------------------------
                                   1296 ;Allocation info for local variables in function 'BX_SetParameter'
                                   1297 ;------------------------------------------------------------
                                   1298 ;len                       Allocated with name '_BX_SetParameter_PARM_2'
                                   1299 ;value                     Allocated with name '_BX_SetParameter_PARM_3'
                                   1300 ;param                     Allocated with name '_BX_SetParameter_param_1_301'
                                   1301 ;ret                       Allocated with name '_BX_SetParameter_ret_1_302'
                                   1302 ;------------------------------------------------------------
                                   1303 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:200: bStatus_t BX_SetParameter( uint8 param, uint8 len, void *value )
                                   1304 ;	-----------------------------------------
                                   1305 ;	 function BX_SetParameter
                                   1306 ;	-----------------------------------------
      0049B6                       1307 _BX_SetParameter:
      0049B6 E5 82            [12] 1308 	mov	a,dpl
      0049B8 90 11 C9         [24] 1309 	mov	dptr,#_BX_SetParameter_param_1_301
      0049BB F0               [24] 1310 	movx	@dptr,a
                                   1311 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:202: bStatus_t ret = SUCCESS;
      0049BC 90 11 CA         [24] 1312 	mov	dptr,#_BX_SetParameter_ret_1_302
      0049BF 74 00            [12] 1313 	mov	a,#0x00
      0049C1 F0               [24] 1314 	movx	@dptr,a
                                   1315 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:203: switch ( param )
      0049C2 90 11 C9         [24] 1316 	mov	dptr,#_BX_SetParameter_param_1_301
      0049C5 E0               [24] 1317 	movx	a,@dptr
      0049C6 FF               [12] 1318 	mov	r7,a
      0049C7 BF 00 02         [24] 1319 	cjne	r7,#0x00,00115$
      0049CA 80 03            [24] 1320 	sjmp	00116$
      0049CC                       1321 00115$:
      0049CC 02 4A 02         [24] 1322 	ljmp	00105$
      0049CF                       1323 00116$:
                                   1324 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:206: if ( len == sizeof ( uint8 ) ) 
      0049CF 90 11 C5         [24] 1325 	mov	dptr,#_BX_SetParameter_PARM_2
      0049D2 E0               [24] 1326 	movx	a,@dptr
      0049D3 FF               [12] 1327 	mov	r7,a
      0049D4 BF 01 02         [24] 1328 	cjne	r7,#0x01,00117$
      0049D7 80 03            [24] 1329 	sjmp	00118$
      0049D9                       1330 00117$:
      0049D9 02 49 F9         [24] 1331 	ljmp	00103$
      0049DC                       1332 00118$:
                                   1333 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:208: BXChar1 = *((uint8*)value);
      0049DC 90 11 C6         [24] 1334 	mov	dptr,#_BX_SetParameter_PARM_3
      0049DF E0               [24] 1335 	movx	a,@dptr
      0049E0 FD               [12] 1336 	mov	r5,a
      0049E1 A3               [24] 1337 	inc	dptr
      0049E2 E0               [24] 1338 	movx	a,@dptr
      0049E3 FE               [12] 1339 	mov	r6,a
      0049E4 A3               [24] 1340 	inc	dptr
      0049E5 E0               [24] 1341 	movx	a,@dptr
      0049E6 FF               [12] 1342 	mov	r7,a
      0049E7 8D 82            [24] 1343 	mov	dpl,r5
      0049E9 8E 83            [24] 1344 	mov	dph,r6
      0049EB 8F F0            [24] 1345 	mov	b,r7
      0049ED 12 5D 60         [24] 1346 	lcall	__gptrget
      0049F0 FD               [12] 1347 	mov	r5,a
      0049F1 90 11 69         [24] 1348 	mov	dptr,#_BXChar1
      0049F4 ED               [12] 1349 	mov	a,r5
      0049F5 F0               [24] 1350 	movx	@dptr,a
      0049F6 02 4A 08         [24] 1351 	ljmp	00106$
      0049F9                       1352 00103$:
                                   1353 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:212: ret = bleInvalidRange;
      0049F9 90 11 CA         [24] 1354 	mov	dptr,#_BX_SetParameter_ret_1_302
      0049FC 74 18            [12] 1355 	mov	a,#0x18
      0049FE F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:214: break;
      0049FF 02 4A 08         [24] 1358 	ljmp	00106$
                                   1359 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:218: default:
      004A02                       1360 00105$:
                                   1361 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:219: ret = INVALIDPARAMETER;
      004A02 90 11 CA         [24] 1362 	mov	dptr,#_BX_SetParameter_ret_1_302
      004A05 74 02            [12] 1363 	mov	a,#0x02
      004A07 F0               [24] 1364 	movx	@dptr,a
                                   1365 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:221: }
      004A08                       1366 00106$:
                                   1367 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:223: return ( ret );
      004A08 90 11 CA         [24] 1368 	mov	dptr,#_BX_SetParameter_ret_1_302
      004A0B E0               [24] 1369 	movx	a,@dptr
      004A0C FF               [12] 1370 	mov	r7,a
      004A0D 8F 82            [24] 1371 	mov	dpl,r7
      004A0F                       1372 00107$:
      004A0F 22               [24] 1373 	ret
                                   1374 ;------------------------------------------------------------
                                   1375 ;Allocation info for local variables in function 'BX_GetParameter'
                                   1376 ;------------------------------------------------------------
                                   1377 ;value                     Allocated with name '_BX_GetParameter_PARM_2'
                                   1378 ;param                     Allocated with name '_BX_GetParameter_param_1_306'
                                   1379 ;ret                       Allocated with name '_BX_GetParameter_ret_1_307'
                                   1380 ;------------------------------------------------------------
                                   1381 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:230: bStatus_t BX_GetParameter( uint8 param, void *value )
                                   1382 ;	-----------------------------------------
                                   1383 ;	 function BX_GetParameter
                                   1384 ;	-----------------------------------------
      004A10                       1385 _BX_GetParameter:
      004A10 E5 82            [12] 1386 	mov	a,dpl
      004A12 90 11 CE         [24] 1387 	mov	dptr,#_BX_GetParameter_param_1_306
      004A15 F0               [24] 1388 	movx	@dptr,a
                                   1389 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:232: bStatus_t ret = SUCCESS;
      004A16 90 11 CF         [24] 1390 	mov	dptr,#_BX_GetParameter_ret_1_307
      004A19 74 00            [12] 1391 	mov	a,#0x00
      004A1B F0               [24] 1392 	movx	@dptr,a
                                   1393 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:233: switch ( param )
      004A1C 90 11 CE         [24] 1394 	mov	dptr,#_BX_GetParameter_param_1_306
      004A1F E0               [24] 1395 	movx	a,@dptr
      004A20 FF               [12] 1396 	mov	r7,a
      004A21 BF 00 02         [24] 1397 	cjne	r7,#0x00,00109$
      004A24 80 03            [24] 1398 	sjmp	00110$
      004A26                       1399 00109$:
      004A26 02 4A 46         [24] 1400 	ljmp	00102$
      004A29                       1401 00110$:
                                   1402 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:236: *((uint8*)value) = BXChar1;
      004A29 90 11 CB         [24] 1403 	mov	dptr,#_BX_GetParameter_PARM_2
      004A2C E0               [24] 1404 	movx	a,@dptr
      004A2D FD               [12] 1405 	mov	r5,a
      004A2E A3               [24] 1406 	inc	dptr
      004A2F E0               [24] 1407 	movx	a,@dptr
      004A30 FE               [12] 1408 	mov	r6,a
      004A31 A3               [24] 1409 	inc	dptr
      004A32 E0               [24] 1410 	movx	a,@dptr
      004A33 FF               [12] 1411 	mov	r7,a
      004A34 90 11 69         [24] 1412 	mov	dptr,#_BXChar1
      004A37 E0               [24] 1413 	movx	a,@dptr
      004A38 FC               [12] 1414 	mov	r4,a
      004A39 8D 82            [24] 1415 	mov	dpl,r5
      004A3B 8E 83            [24] 1416 	mov	dph,r6
      004A3D 8F F0            [24] 1417 	mov	b,r7
      004A3F EC               [12] 1418 	mov	a,r4
      004A40 12 5B F4         [24] 1419 	lcall	__gptrput
                                   1420 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:237: break;
      004A43 02 4A 4C         [24] 1421 	ljmp	00103$
                                   1422 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:241: default:
      004A46                       1423 00102$:
                                   1424 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:242: ret = INVALIDPARAMETER;
      004A46 90 11 CF         [24] 1425 	mov	dptr,#_BX_GetParameter_ret_1_307
      004A49 74 02            [12] 1426 	mov	a,#0x02
      004A4B F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:244: }
      004A4C                       1429 00103$:
                                   1430 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:246: return ( ret );
      004A4C 90 11 CF         [24] 1431 	mov	dptr,#_BX_GetParameter_ret_1_307
      004A4F E0               [24] 1432 	movx	a,@dptr
      004A50 FF               [12] 1433 	mov	r7,a
      004A51 8F 82            [24] 1434 	mov	dpl,r7
      004A53                       1435 00104$:
      004A53 22               [24] 1436 	ret
                                   1437 ;------------------------------------------------------------
                                   1438 ;Allocation info for local variables in function 'BX_ReadAttrCB'
                                   1439 ;------------------------------------------------------------
                                   1440 ;pAttr                     Allocated to stack - _bp -5
                                   1441 ;pValue                    Allocated to stack - _bp -8
                                   1442 ;pLen                      Allocated to stack - _bp -11
                                   1443 ;offset                    Allocated to stack - _bp -13
                                   1444 ;maxLen                    Allocated to stack - _bp -14
                                   1445 ;connHandle                Allocated to registers 
                                   1446 ;status                    Allocated to registers r7 
                                   1447 ;uuid                      Allocated to registers r3 r2 
                                   1448 ;------------------------------------------------------------
                                   1449 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:279: static uint8 BX_ReadAttrCB( uint16 connHandle, gattAttribute_t *pAttr, 
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function BX_ReadAttrCB
                                   1452 ;	-----------------------------------------
      004A54                       1453 _BX_ReadAttrCB:
      004A54 C0 1D            [24] 1454 	push	_bp
      004A56 85 81 1D         [24] 1455 	mov	_bp,sp
                                   1456 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:282: bStatus_t status = SUCCESS;
      004A59 7F 00            [12] 1457 	mov	r7,#0x00
                                   1458 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:317: if ( gattPermitAuthorRead( pAttr->permissions ) )
      004A5B E5 1D            [12] 1459 	mov	a,_bp
      004A5D 24 FB            [12] 1460 	add	a,#0xfb
      004A5F F8               [12] 1461 	mov	r0,a
      004A60 86 04            [24] 1462 	mov	ar4,@r0
      004A62 08               [12] 1463 	inc	r0
      004A63 86 05            [24] 1464 	mov	ar5,@r0
      004A65 08               [12] 1465 	inc	r0
      004A66 86 06            [24] 1466 	mov	ar6,@r0
      004A68 74 04            [12] 1467 	mov	a,#0x04
      004A6A 2C               [12] 1468 	add	a,r4
      004A6B FC               [12] 1469 	mov	r4,a
      004A6C 74 00            [12] 1470 	mov	a,#0x00
      004A6E 3D               [12] 1471 	addc	a,r5
      004A6F FD               [12] 1472 	mov	r5,a
      004A70 8C 82            [24] 1473 	mov	dpl,r4
      004A72 8D 83            [24] 1474 	mov	dph,r5
      004A74 8E F0            [24] 1475 	mov	b,r6
      004A76 12 5D 60         [24] 1476 	lcall	__gptrget
      004A79 FC               [12] 1477 	mov	r4,a
      004A7A EC               [12] 1478 	mov	a,r4
      004A7B 20 E4 03         [24] 1479 	jb	acc.4,00129$
      004A7E 02 4A 87         [24] 1480 	ljmp	00102$
      004A81                       1481 00129$:
                                   1482 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:320: return ( ATT_ERR_INSUFFICIENT_AUTHOR );
      004A81 75 82 08         [24] 1483 	mov	dpl,#0x08
      004A84 02 4C 26         [24] 1484 	ljmp	00112$
      004A87                       1485 00102$:
                                   1486 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:324: if ( offset > 0 )
      004A87 E5 1D            [12] 1487 	mov	a,_bp
      004A89 24 F3            [12] 1488 	add	a,#0xf3
      004A8B F8               [12] 1489 	mov	r0,a
      004A8C E6               [12] 1490 	mov	a,@r0
      004A8D 08               [12] 1491 	inc	r0
      004A8E 46               [12] 1492 	orl	a,@r0
      004A8F 70 03            [24] 1493 	jnz	00130$
      004A91 02 4A 9A         [24] 1494 	ljmp	00104$
      004A94                       1495 00130$:
                                   1496 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:326: return ( ATT_ERR_ATTR_NOT_LONG );
      004A94 75 82 0B         [24] 1497 	mov	dpl,#0x0B
      004A97 02 4C 26         [24] 1498 	ljmp	00112$
      004A9A                       1499 00104$:
                                   1500 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:330: if ( pAttr->type.len == ATT_BT_UUID_SIZE )
      004A9A E5 1D            [12] 1501 	mov	a,_bp
      004A9C 24 FB            [12] 1502 	add	a,#0xfb
      004A9E F8               [12] 1503 	mov	r0,a
      004A9F 86 04            [24] 1504 	mov	ar4,@r0
      004AA1 08               [12] 1505 	inc	r0
      004AA2 86 05            [24] 1506 	mov	ar5,@r0
      004AA4 08               [12] 1507 	inc	r0
      004AA5 86 06            [24] 1508 	mov	ar6,@r0
      004AA7 8C 82            [24] 1509 	mov	dpl,r4
      004AA9 8D 83            [24] 1510 	mov	dph,r5
      004AAB 8E F0            [24] 1511 	mov	b,r6
      004AAD 12 5D 60         [24] 1512 	lcall	__gptrget
      004AB0 FC               [12] 1513 	mov	r4,a
      004AB1 BC 02 02         [24] 1514 	cjne	r4,#0x02,00131$
      004AB4 80 03            [24] 1515 	sjmp	00132$
      004AB6                       1516 00131$:
      004AB6 02 4C 0A         [24] 1517 	ljmp	00110$
      004AB9                       1518 00132$:
                                   1519 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:336: uint16 uuid = BUILD_UINT16( pAttr->type.uuid[0], pAttr->type.uuid[1]);
      004AB9 E5 1D            [12] 1520 	mov	a,_bp
      004ABB 24 FB            [12] 1521 	add	a,#0xfb
      004ABD F8               [12] 1522 	mov	r0,a
      004ABE 86 04            [24] 1523 	mov	ar4,@r0
      004AC0 08               [12] 1524 	inc	r0
      004AC1 86 05            [24] 1525 	mov	ar5,@r0
      004AC3 08               [12] 1526 	inc	r0
      004AC4 86 06            [24] 1527 	mov	ar6,@r0
      004AC6 0C               [12] 1528 	inc	r4
      004AC7 BC 00 01         [24] 1529 	cjne	r4,#0x00,00133$
      004ACA 0D               [12] 1530 	inc	r5
      004ACB                       1531 00133$:
      004ACB 8C 82            [24] 1532 	mov	dpl,r4
      004ACD 8D 83            [24] 1533 	mov	dph,r5
      004ACF 8E F0            [24] 1534 	mov	b,r6
      004AD1 12 5D 60         [24] 1535 	lcall	__gptrget
      004AD4 FC               [12] 1536 	mov	r4,a
      004AD5 A3               [24] 1537 	inc	dptr
      004AD6 12 5D 60         [24] 1538 	lcall	__gptrget
      004AD9 FD               [12] 1539 	mov	r5,a
      004ADA A3               [24] 1540 	inc	dptr
      004ADB 12 5D 60         [24] 1541 	lcall	__gptrget
      004ADE FE               [12] 1542 	mov	r6,a
      004ADF 8C 82            [24] 1543 	mov	dpl,r4
      004AE1 8D 83            [24] 1544 	mov	dph,r5
      004AE3 8E F0            [24] 1545 	mov	b,r6
      004AE5 12 5D 60         [24] 1546 	lcall	__gptrget
      004AE8 FB               [12] 1547 	mov	r3,a
      004AE9 7A 00            [12] 1548 	mov	r2,#0x00
      004AEB 0C               [12] 1549 	inc	r4
      004AEC BC 00 01         [24] 1550 	cjne	r4,#0x00,00134$
      004AEF 0D               [12] 1551 	inc	r5
      004AF0                       1552 00134$:
      004AF0 8C 82            [24] 1553 	mov	dpl,r4
      004AF2 8D 83            [24] 1554 	mov	dph,r5
      004AF4 8E F0            [24] 1555 	mov	b,r6
      004AF6 12 5D 60         [24] 1556 	lcall	__gptrget
      004AF9 FC               [12] 1557 	mov	r4,a
      004AFA 7E 00            [12] 1558 	mov	r6,#0x00
      004AFC 8C 06            [24] 1559 	mov	ar6,r4
      004AFE 7C 00            [12] 1560 	mov	r4,#0x00
      004B00 EC               [12] 1561 	mov	a,r4
      004B01 2B               [12] 1562 	add	a,r3
      004B02 FB               [12] 1563 	mov	r3,a
      004B03 EE               [12] 1564 	mov	a,r6
      004B04 3A               [12] 1565 	addc	a,r2
      004B05 FA               [12] 1566 	mov	r2,a
                                   1567 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:338: switch ( uuid )
      004B06 BB F1 06         [24] 1568 	cjne	r3,#0xF1,00135$
      004B09 BA BA 03         [24] 1569 	cjne	r2,#0xBA,00135$
      004B0C 02 4B 1B         [24] 1570 	ljmp	00105$
      004B0F                       1571 00135$:
      004B0F BB F9 06         [24] 1572 	cjne	r3,#0xF9,00136$
      004B12 BA BA 03         [24] 1573 	cjne	r2,#0xBA,00136$
      004B15 02 4B 84         [24] 1574 	ljmp	00106$
      004B18                       1575 00136$:
      004B18 02 4B ED         [24] 1576 	ljmp	00107$
                                   1577 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:341: case BX_CHAR1_UUID:
      004B1B                       1578 00105$:
                                   1579 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:343: *pLen = 1;
      004B1B C0 07            [24] 1580 	push	ar7
      004B1D E5 1D            [12] 1581 	mov	a,_bp
      004B1F 24 F5            [12] 1582 	add	a,#0xf5
      004B21 F8               [12] 1583 	mov	r0,a
      004B22 86 04            [24] 1584 	mov	ar4,@r0
      004B24 08               [12] 1585 	inc	r0
      004B25 86 05            [24] 1586 	mov	ar5,@r0
      004B27 08               [12] 1587 	inc	r0
      004B28 86 06            [24] 1588 	mov	ar6,@r0
      004B2A 8C 82            [24] 1589 	mov	dpl,r4
      004B2C 8D 83            [24] 1590 	mov	dph,r5
      004B2E 8E F0            [24] 1591 	mov	b,r6
      004B30 74 01            [12] 1592 	mov	a,#0x01
      004B32 12 5B F4         [24] 1593 	lcall	__gptrput
                                   1594 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:344: pValue[0] = *pAttr->pValue;
      004B35 E5 1D            [12] 1595 	mov	a,_bp
      004B37 24 F8            [12] 1596 	add	a,#0xf8
      004B39 F8               [12] 1597 	mov	r0,a
      004B3A 86 04            [24] 1598 	mov	ar4,@r0
      004B3C 08               [12] 1599 	inc	r0
      004B3D 86 05            [24] 1600 	mov	ar5,@r0
      004B3F 08               [12] 1601 	inc	r0
      004B40 86 06            [24] 1602 	mov	ar6,@r0
      004B42 E5 1D            [12] 1603 	mov	a,_bp
      004B44 24 FB            [12] 1604 	add	a,#0xfb
      004B46 F8               [12] 1605 	mov	r0,a
      004B47 86 02            [24] 1606 	mov	ar2,@r0
      004B49 08               [12] 1607 	inc	r0
      004B4A 86 03            [24] 1608 	mov	ar3,@r0
      004B4C 08               [12] 1609 	inc	r0
      004B4D 86 07            [24] 1610 	mov	ar7,@r0
      004B4F 74 07            [12] 1611 	mov	a,#0x07
      004B51 2A               [12] 1612 	add	a,r2
      004B52 FA               [12] 1613 	mov	r2,a
      004B53 74 00            [12] 1614 	mov	a,#0x00
      004B55 3B               [12] 1615 	addc	a,r3
      004B56 FB               [12] 1616 	mov	r3,a
      004B57 8A 82            [24] 1617 	mov	dpl,r2
      004B59 8B 83            [24] 1618 	mov	dph,r3
      004B5B 8F F0            [24] 1619 	mov	b,r7
      004B5D 12 5D 60         [24] 1620 	lcall	__gptrget
      004B60 FA               [12] 1621 	mov	r2,a
      004B61 A3               [24] 1622 	inc	dptr
      004B62 12 5D 60         [24] 1623 	lcall	__gptrget
      004B65 FB               [12] 1624 	mov	r3,a
      004B66 A3               [24] 1625 	inc	dptr
      004B67 12 5D 60         [24] 1626 	lcall	__gptrget
      004B6A FF               [12] 1627 	mov	r7,a
      004B6B 8A 82            [24] 1628 	mov	dpl,r2
      004B6D 8B 83            [24] 1629 	mov	dph,r3
      004B6F 8F F0            [24] 1630 	mov	b,r7
      004B71 12 5D 60         [24] 1631 	lcall	__gptrget
      004B74 FA               [12] 1632 	mov	r2,a
      004B75 8C 82            [24] 1633 	mov	dpl,r4
      004B77 8D 83            [24] 1634 	mov	dph,r5
      004B79 8E F0            [24] 1635 	mov	b,r6
      004B7B EA               [12] 1636 	mov	a,r2
      004B7C 12 5B F4         [24] 1637 	lcall	__gptrput
                                   1638 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:347: break;
      004B7F D0 07            [24] 1639 	pop	ar7
      004B81 02 4C 24         [24] 1640 	ljmp	00111$
                                   1641 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:349: case BX_CHAR2_UUID:
      004B84                       1642 00106$:
                                   1643 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:351: *pLen = 1;
      004B84 C0 07            [24] 1644 	push	ar7
      004B86 E5 1D            [12] 1645 	mov	a,_bp
      004B88 24 F5            [12] 1646 	add	a,#0xf5
      004B8A F8               [12] 1647 	mov	r0,a
      004B8B 86 04            [24] 1648 	mov	ar4,@r0
      004B8D 08               [12] 1649 	inc	r0
      004B8E 86 05            [24] 1650 	mov	ar5,@r0
      004B90 08               [12] 1651 	inc	r0
      004B91 86 06            [24] 1652 	mov	ar6,@r0
      004B93 8C 82            [24] 1653 	mov	dpl,r4
      004B95 8D 83            [24] 1654 	mov	dph,r5
      004B97 8E F0            [24] 1655 	mov	b,r6
      004B99 74 01            [12] 1656 	mov	a,#0x01
      004B9B 12 5B F4         [24] 1657 	lcall	__gptrput
                                   1658 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:352: pValue[0] = *pAttr->pValue;
      004B9E E5 1D            [12] 1659 	mov	a,_bp
      004BA0 24 F8            [12] 1660 	add	a,#0xf8
      004BA2 F8               [12] 1661 	mov	r0,a
      004BA3 86 04            [24] 1662 	mov	ar4,@r0
      004BA5 08               [12] 1663 	inc	r0
      004BA6 86 05            [24] 1664 	mov	ar5,@r0
      004BA8 08               [12] 1665 	inc	r0
      004BA9 86 06            [24] 1666 	mov	ar6,@r0
      004BAB E5 1D            [12] 1667 	mov	a,_bp
      004BAD 24 FB            [12] 1668 	add	a,#0xfb
      004BAF F8               [12] 1669 	mov	r0,a
      004BB0 86 02            [24] 1670 	mov	ar2,@r0
      004BB2 08               [12] 1671 	inc	r0
      004BB3 86 03            [24] 1672 	mov	ar3,@r0
      004BB5 08               [12] 1673 	inc	r0
      004BB6 86 07            [24] 1674 	mov	ar7,@r0
      004BB8 74 07            [12] 1675 	mov	a,#0x07
      004BBA 2A               [12] 1676 	add	a,r2
      004BBB FA               [12] 1677 	mov	r2,a
      004BBC 74 00            [12] 1678 	mov	a,#0x00
      004BBE 3B               [12] 1679 	addc	a,r3
      004BBF FB               [12] 1680 	mov	r3,a
      004BC0 8A 82            [24] 1681 	mov	dpl,r2
      004BC2 8B 83            [24] 1682 	mov	dph,r3
      004BC4 8F F0            [24] 1683 	mov	b,r7
      004BC6 12 5D 60         [24] 1684 	lcall	__gptrget
      004BC9 FA               [12] 1685 	mov	r2,a
      004BCA A3               [24] 1686 	inc	dptr
      004BCB 12 5D 60         [24] 1687 	lcall	__gptrget
      004BCE FB               [12] 1688 	mov	r3,a
      004BCF A3               [24] 1689 	inc	dptr
      004BD0 12 5D 60         [24] 1690 	lcall	__gptrget
      004BD3 FF               [12] 1691 	mov	r7,a
      004BD4 8A 82            [24] 1692 	mov	dpl,r2
      004BD6 8B 83            [24] 1693 	mov	dph,r3
      004BD8 8F F0            [24] 1694 	mov	b,r7
      004BDA 12 5D 60         [24] 1695 	lcall	__gptrget
      004BDD FA               [12] 1696 	mov	r2,a
      004BDE 8C 82            [24] 1697 	mov	dpl,r4
      004BE0 8D 83            [24] 1698 	mov	dph,r5
      004BE2 8E F0            [24] 1699 	mov	b,r6
      004BE4 EA               [12] 1700 	mov	a,r2
      004BE5 12 5B F4         [24] 1701 	lcall	__gptrput
                                   1702 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:353: break;
      004BE8 D0 07            [24] 1703 	pop	ar7
      004BEA 02 4C 24         [24] 1704 	ljmp	00111$
                                   1705 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:362: default:
      004BED                       1706 00107$:
                                   1707 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:364: *pLen = 0;
      004BED E5 1D            [12] 1708 	mov	a,_bp
      004BEF 24 F5            [12] 1709 	add	a,#0xf5
      004BF1 F8               [12] 1710 	mov	r0,a
      004BF2 86 04            [24] 1711 	mov	ar4,@r0
      004BF4 08               [12] 1712 	inc	r0
      004BF5 86 05            [24] 1713 	mov	ar5,@r0
      004BF7 08               [12] 1714 	inc	r0
      004BF8 86 06            [24] 1715 	mov	ar6,@r0
      004BFA 8C 82            [24] 1716 	mov	dpl,r4
      004BFC 8D 83            [24] 1717 	mov	dph,r5
      004BFE 8E F0            [24] 1718 	mov	b,r6
      004C00 74 00            [12] 1719 	mov	a,#0x00
      004C02 12 5B F4         [24] 1720 	lcall	__gptrput
                                   1721 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:365: status = ATT_ERR_ATTR_NOT_FOUND;
      004C05 7F 0A            [12] 1722 	mov	r7,#0x0A
                                   1723 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:367: }
      004C07 02 4C 24         [24] 1724 	ljmp	00111$
      004C0A                       1725 00110$:
                                   1726 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:372: *pLen = 0;
      004C0A E5 1D            [12] 1727 	mov	a,_bp
      004C0C 24 F5            [12] 1728 	add	a,#0xf5
      004C0E F8               [12] 1729 	mov	r0,a
      004C0F 86 04            [24] 1730 	mov	ar4,@r0
      004C11 08               [12] 1731 	inc	r0
      004C12 86 05            [24] 1732 	mov	ar5,@r0
      004C14 08               [12] 1733 	inc	r0
      004C15 86 06            [24] 1734 	mov	ar6,@r0
      004C17 8C 82            [24] 1735 	mov	dpl,r4
      004C19 8D 83            [24] 1736 	mov	dph,r5
      004C1B 8E F0            [24] 1737 	mov	b,r6
      004C1D 74 00            [12] 1738 	mov	a,#0x00
      004C1F 12 5B F4         [24] 1739 	lcall	__gptrput
                                   1740 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:373: status = ATT_ERR_INVALID_HANDLE;
      004C22 7F 01            [12] 1741 	mov	r7,#0x01
      004C24                       1742 00111$:
                                   1743 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:376: return ( status );
      004C24 8F 82            [24] 1744 	mov	dpl,r7
      004C26                       1745 00112$:
      004C26 D0 1D            [24] 1746 	pop	_bp
      004C28 22               [24] 1747 	ret
                                   1748 ;------------------------------------------------------------
                                   1749 ;Allocation info for local variables in function 'BX_WriteAttrCB'
                                   1750 ;------------------------------------------------------------
                                   1751 ;pAttr                     Allocated to stack - _bp -5
                                   1752 ;pValue                    Allocated to stack - _bp -8
                                   1753 ;len                       Allocated to stack - _bp -9
                                   1754 ;offset                    Allocated to stack - _bp -11
                                   1755 ;connHandle                Allocated to registers 
                                   1756 ;status                    Allocated to registers r7 
                                   1757 ;uuid                      Allocated to registers r3 r2 
                                   1758 ;pCurValue                 Allocated to stack - _bp +1
                                   1759 ;pCurValue                 Allocated to stack - _bp +1
                                   1760 ;------------------------------------------------------------
                                   1761 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:382: static bStatus_t BX_WriteAttrCB( uint16 connHandle, gattAttribute_t *pAttr,
                                   1762 ;	-----------------------------------------
                                   1763 ;	 function BX_WriteAttrCB
                                   1764 ;	-----------------------------------------
      004C29                       1765 _BX_WriteAttrCB:
      004C29 C0 1D            [24] 1766 	push	_bp
      004C2B 85 81 1D         [24] 1767 	mov	_bp,sp
      004C2E 05 81            [12] 1768 	inc	sp
      004C30 05 81            [12] 1769 	inc	sp
      004C32 05 81            [12] 1770 	inc	sp
                                   1771 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:387: bStatus_t status = SUCCESS;
      004C34 7F 00            [12] 1772 	mov	r7,#0x00
                                   1773 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:393: if ( gattPermitAuthorWrite( pAttr->permissions ) )
      004C36 E5 1D            [12] 1774 	mov	a,_bp
      004C38 24 FB            [12] 1775 	add	a,#0xfb
      004C3A F8               [12] 1776 	mov	r0,a
      004C3B 86 04            [24] 1777 	mov	ar4,@r0
      004C3D 08               [12] 1778 	inc	r0
      004C3E 86 05            [24] 1779 	mov	ar5,@r0
      004C40 08               [12] 1780 	inc	r0
      004C41 86 06            [24] 1781 	mov	ar6,@r0
      004C43 74 04            [12] 1782 	mov	a,#0x04
      004C45 2C               [12] 1783 	add	a,r4
      004C46 FC               [12] 1784 	mov	r4,a
      004C47 74 00            [12] 1785 	mov	a,#0x00
      004C49 3D               [12] 1786 	addc	a,r5
      004C4A FD               [12] 1787 	mov	r5,a
      004C4B 8C 82            [24] 1788 	mov	dpl,r4
      004C4D 8D 83            [24] 1789 	mov	dph,r5
      004C4F 8E F0            [24] 1790 	mov	b,r6
      004C51 12 5D 60         [24] 1791 	lcall	__gptrget
      004C54 FC               [12] 1792 	mov	r4,a
      004C55 EC               [12] 1793 	mov	a,r4
      004C56 20 E5 03         [24] 1794 	jb	acc.5,00138$
      004C59 02 4C 62         [24] 1795 	ljmp	00102$
      004C5C                       1796 00138$:
                                   1797 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:396: return ( ATT_ERR_INSUFFICIENT_AUTHOR );
      004C5C 75 82 08         [24] 1798 	mov	dpl,#0x08
      004C5F 02 4D CD         [24] 1799 	ljmp	00115$
      004C62                       1800 00102$:
                                   1801 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:401: if ( pAttr->type.len == ATT_BT_UUID_SIZE )
      004C62 E5 1D            [12] 1802 	mov	a,_bp
      004C64 24 FB            [12] 1803 	add	a,#0xfb
      004C66 F8               [12] 1804 	mov	r0,a
      004C67 86 04            [24] 1805 	mov	ar4,@r0
      004C69 08               [12] 1806 	inc	r0
      004C6A 86 05            [24] 1807 	mov	ar5,@r0
      004C6C 08               [12] 1808 	inc	r0
      004C6D 86 06            [24] 1809 	mov	ar6,@r0
      004C6F 8C 82            [24] 1810 	mov	dpl,r4
      004C71 8D 83            [24] 1811 	mov	dph,r5
      004C73 8E F0            [24] 1812 	mov	b,r6
      004C75 12 5D 60         [24] 1813 	lcall	__gptrget
      004C78 FC               [12] 1814 	mov	r4,a
      004C79 BC 02 02         [24] 1815 	cjne	r4,#0x02,00139$
      004C7C 80 03            [24] 1816 	sjmp	00140$
      004C7E                       1817 00139$:
      004C7E 02 4D C9         [24] 1818 	ljmp	00113$
      004C81                       1819 00140$:
                                   1820 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:404: uint16 uuid = BUILD_UINT16( pAttr->type.uuid[0], pAttr->type.uuid[1]);
      004C81 E5 1D            [12] 1821 	mov	a,_bp
      004C83 24 FB            [12] 1822 	add	a,#0xfb
      004C85 F8               [12] 1823 	mov	r0,a
      004C86 86 04            [24] 1824 	mov	ar4,@r0
      004C88 08               [12] 1825 	inc	r0
      004C89 86 05            [24] 1826 	mov	ar5,@r0
      004C8B 08               [12] 1827 	inc	r0
      004C8C 86 06            [24] 1828 	mov	ar6,@r0
      004C8E 0C               [12] 1829 	inc	r4
      004C8F BC 00 01         [24] 1830 	cjne	r4,#0x00,00141$
      004C92 0D               [12] 1831 	inc	r5
      004C93                       1832 00141$:
      004C93 8C 82            [24] 1833 	mov	dpl,r4
      004C95 8D 83            [24] 1834 	mov	dph,r5
      004C97 8E F0            [24] 1835 	mov	b,r6
      004C99 12 5D 60         [24] 1836 	lcall	__gptrget
      004C9C FC               [12] 1837 	mov	r4,a
      004C9D A3               [24] 1838 	inc	dptr
      004C9E 12 5D 60         [24] 1839 	lcall	__gptrget
      004CA1 FD               [12] 1840 	mov	r5,a
      004CA2 A3               [24] 1841 	inc	dptr
      004CA3 12 5D 60         [24] 1842 	lcall	__gptrget
      004CA6 FE               [12] 1843 	mov	r6,a
      004CA7 8C 82            [24] 1844 	mov	dpl,r4
      004CA9 8D 83            [24] 1845 	mov	dph,r5
      004CAB 8E F0            [24] 1846 	mov	b,r6
      004CAD 12 5D 60         [24] 1847 	lcall	__gptrget
      004CB0 FB               [12] 1848 	mov	r3,a
      004CB1 7A 00            [12] 1849 	mov	r2,#0x00
      004CB3 0C               [12] 1850 	inc	r4
      004CB4 BC 00 01         [24] 1851 	cjne	r4,#0x00,00142$
      004CB7 0D               [12] 1852 	inc	r5
      004CB8                       1853 00142$:
      004CB8 8C 82            [24] 1854 	mov	dpl,r4
      004CBA 8D 83            [24] 1855 	mov	dph,r5
      004CBC 8E F0            [24] 1856 	mov	b,r6
      004CBE 12 5D 60         [24] 1857 	lcall	__gptrget
      004CC1 FC               [12] 1858 	mov	r4,a
      004CC2 7E 00            [12] 1859 	mov	r6,#0x00
      004CC4 8C 06            [24] 1860 	mov	ar6,r4
      004CC6 7C 00            [12] 1861 	mov	r4,#0x00
      004CC8 EC               [12] 1862 	mov	a,r4
      004CC9 2B               [12] 1863 	add	a,r3
      004CCA FB               [12] 1864 	mov	r3,a
      004CCB EE               [12] 1865 	mov	a,r6
      004CCC 3A               [12] 1866 	addc	a,r2
      004CCD FA               [12] 1867 	mov	r2,a
                                   1868 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:405: switch ( uuid )
      004CCE BB 02 06         [24] 1869 	cjne	r3,#0x02,00143$
      004CD1 BA 29 03         [24] 1870 	cjne	r2,#0x29,00143$
      004CD4 02 4D CB         [24] 1871 	ljmp	00114$
      004CD7                       1872 00143$:
      004CD7 BB F1 06         [24] 1873 	cjne	r3,#0xF1,00144$
      004CDA BA BA 03         [24] 1874 	cjne	r2,#0xBA,00144$
      004CDD 02 4C EC         [24] 1875 	ljmp	00103$
      004CE0                       1876 00144$:
      004CE0 BB F9 06         [24] 1877 	cjne	r3,#0xF9,00145$
      004CE3 BA BA 03         [24] 1878 	cjne	r2,#0xBA,00145$
      004CE6 02 4D 58         [24] 1879 	ljmp	00106$
      004CE9                       1880 00145$:
      004CE9 02 4D C4         [24] 1881 	ljmp	00110$
                                   1882 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:408: case BX_CHAR1_UUID:
      004CEC                       1883 00103$:
                                   1884 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:412: if ( status == SUCCESS )
      004CEC EF               [12] 1885 	mov	a,r7
      004CED 60 03            [24] 1886 	jz	00146$
      004CEF 02 4D CB         [24] 1887 	ljmp	00114$
      004CF2                       1888 00146$:
                                   1889 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:417: uint8 *pCurValue = (uint8 *)pAttr->pValue;        
      004CF2 C0 07            [24] 1890 	push	ar7
      004CF4 E5 1D            [12] 1891 	mov	a,_bp
      004CF6 24 FB            [12] 1892 	add	a,#0xfb
      004CF8 F8               [12] 1893 	mov	r0,a
      004CF9 86 04            [24] 1894 	mov	ar4,@r0
      004CFB 08               [12] 1895 	inc	r0
      004CFC 86 05            [24] 1896 	mov	ar5,@r0
      004CFE 08               [12] 1897 	inc	r0
      004CFF 86 06            [24] 1898 	mov	ar6,@r0
      004D01 74 07            [12] 1899 	mov	a,#0x07
      004D03 2C               [12] 1900 	add	a,r4
      004D04 FC               [12] 1901 	mov	r4,a
      004D05 74 00            [12] 1902 	mov	a,#0x00
      004D07 3D               [12] 1903 	addc	a,r5
      004D08 FD               [12] 1904 	mov	r5,a
      004D09 8C 82            [24] 1905 	mov	dpl,r4
      004D0B 8D 83            [24] 1906 	mov	dph,r5
      004D0D 8E F0            [24] 1907 	mov	b,r6
      004D0F A8 1D            [24] 1908 	mov	r0,_bp
      004D11 08               [12] 1909 	inc	r0
      004D12 12 5D 60         [24] 1910 	lcall	__gptrget
      004D15 F6               [12] 1911 	mov	@r0,a
      004D16 A3               [24] 1912 	inc	dptr
      004D17 12 5D 60         [24] 1913 	lcall	__gptrget
      004D1A 08               [12] 1914 	inc	r0
      004D1B F6               [12] 1915 	mov	@r0,a
      004D1C A3               [24] 1916 	inc	dptr
      004D1D 12 5D 60         [24] 1917 	lcall	__gptrget
      004D20 08               [12] 1918 	inc	r0
      004D21 F6               [12] 1919 	mov	@r0,a
                                   1920 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:421: *pCurValue = pValue[0];
      004D22 E5 1D            [12] 1921 	mov	a,_bp
      004D24 24 F8            [12] 1922 	add	a,#0xf8
      004D26 F8               [12] 1923 	mov	r0,a
      004D27 86 02            [24] 1924 	mov	ar2,@r0
      004D29 08               [12] 1925 	inc	r0
      004D2A 86 03            [24] 1926 	mov	ar3,@r0
      004D2C 08               [12] 1927 	inc	r0
      004D2D 86 07            [24] 1928 	mov	ar7,@r0
      004D2F 8A 82            [24] 1929 	mov	dpl,r2
      004D31 8B 83            [24] 1930 	mov	dph,r3
      004D33 8F F0            [24] 1931 	mov	b,r7
      004D35 12 5D 60         [24] 1932 	lcall	__gptrget
      004D38 FE               [12] 1933 	mov	r6,a
      004D39 A8 1D            [24] 1934 	mov	r0,_bp
      004D3B 08               [12] 1935 	inc	r0
      004D3C 86 82            [24] 1936 	mov	dpl,@r0
      004D3E 08               [12] 1937 	inc	r0
      004D3F 86 83            [24] 1938 	mov	dph,@r0
      004D41 08               [12] 1939 	inc	r0
      004D42 86 F0            [24] 1940 	mov	b,@r0
      004D44 EE               [12] 1941 	mov	a,r6
      004D45 12 5B F4         [24] 1942 	lcall	__gptrput
                                   1943 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:422: FlashLed= pValue[0];
      004D48 8A 82            [24] 1944 	mov	dpl,r2
      004D4A 8B 83            [24] 1945 	mov	dph,r3
      004D4C 8F F0            [24] 1946 	mov	b,r7
      004D4E 12 5D 60         [24] 1947 	lcall	__gptrget
      004D51 F5 C0            [12] 1948 	mov	_FlashLed,a
                                   1949 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:438: break;
      004D53 D0 07            [24] 1950 	pop	ar7
      004D55 02 4D CB         [24] 1951 	ljmp	00114$
                                   1952 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:440: case BX_CHAR2_UUID:
      004D58                       1953 00106$:
                                   1954 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:444: if ( status == SUCCESS )
      004D58 EF               [12] 1955 	mov	a,r7
      004D59 60 03            [24] 1956 	jz	00147$
      004D5B 02 4D CB         [24] 1957 	ljmp	00114$
      004D5E                       1958 00147$:
                                   1959 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:449: uint8 *pCurValue = (uint8 *)pAttr->pValue;        
      004D5E C0 07            [24] 1960 	push	ar7
      004D60 E5 1D            [12] 1961 	mov	a,_bp
      004D62 24 FB            [12] 1962 	add	a,#0xfb
      004D64 F8               [12] 1963 	mov	r0,a
      004D65 86 04            [24] 1964 	mov	ar4,@r0
      004D67 08               [12] 1965 	inc	r0
      004D68 86 05            [24] 1966 	mov	ar5,@r0
      004D6A 08               [12] 1967 	inc	r0
      004D6B 86 06            [24] 1968 	mov	ar6,@r0
      004D6D 74 07            [12] 1969 	mov	a,#0x07
      004D6F 2C               [12] 1970 	add	a,r4
      004D70 FC               [12] 1971 	mov	r4,a
      004D71 74 00            [12] 1972 	mov	a,#0x00
      004D73 3D               [12] 1973 	addc	a,r5
      004D74 FD               [12] 1974 	mov	r5,a
      004D75 8C 82            [24] 1975 	mov	dpl,r4
      004D77 8D 83            [24] 1976 	mov	dph,r5
      004D79 8E F0            [24] 1977 	mov	b,r6
      004D7B A8 1D            [24] 1978 	mov	r0,_bp
      004D7D 08               [12] 1979 	inc	r0
      004D7E 12 5D 60         [24] 1980 	lcall	__gptrget
      004D81 F6               [12] 1981 	mov	@r0,a
      004D82 A3               [24] 1982 	inc	dptr
      004D83 12 5D 60         [24] 1983 	lcall	__gptrget
      004D86 08               [12] 1984 	inc	r0
      004D87 F6               [12] 1985 	mov	@r0,a
      004D88 A3               [24] 1986 	inc	dptr
      004D89 12 5D 60         [24] 1987 	lcall	__gptrget
      004D8C 08               [12] 1988 	inc	r0
      004D8D F6               [12] 1989 	mov	@r0,a
                                   1990 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:452: *pCurValue = pValue[0];
      004D8E E5 1D            [12] 1991 	mov	a,_bp
      004D90 24 F8            [12] 1992 	add	a,#0xf8
      004D92 F8               [12] 1993 	mov	r0,a
      004D93 86 02            [24] 1994 	mov	ar2,@r0
      004D95 08               [12] 1995 	inc	r0
      004D96 86 03            [24] 1996 	mov	ar3,@r0
      004D98 08               [12] 1997 	inc	r0
      004D99 86 07            [24] 1998 	mov	ar7,@r0
      004D9B 8A 82            [24] 1999 	mov	dpl,r2
      004D9D 8B 83            [24] 2000 	mov	dph,r3
      004D9F 8F F0            [24] 2001 	mov	b,r7
      004DA1 12 5D 60         [24] 2002 	lcall	__gptrget
      004DA4 FE               [12] 2003 	mov	r6,a
      004DA5 A8 1D            [24] 2004 	mov	r0,_bp
      004DA7 08               [12] 2005 	inc	r0
      004DA8 86 82            [24] 2006 	mov	dpl,@r0
      004DAA 08               [12] 2007 	inc	r0
      004DAB 86 83            [24] 2008 	mov	dph,@r0
      004DAD 08               [12] 2009 	inc	r0
      004DAE 86 F0            [24] 2010 	mov	b,@r0
      004DB0 EE               [12] 2011 	mov	a,r6
      004DB1 12 5B F4         [24] 2012 	lcall	__gptrput
                                   2013 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:453: MusicCtl= pValue[0];
      004DB4 8A 82            [24] 2014 	mov	dpl,r2
      004DB6 8B 83            [24] 2015 	mov	dph,r3
      004DB8 8F F0            [24] 2016 	mov	b,r7
      004DBA 12 5D 60         [24] 2017 	lcall	__gptrget
      004DBD F5 C2            [12] 2018 	mov	_MusicCtl,a
                                   2019 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:461: break;
      004DBF D0 07            [24] 2020 	pop	ar7
      004DC1 02 4D CB         [24] 2021 	ljmp	00114$
                                   2022 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:469: default:
      004DC4                       2023 00110$:
                                   2024 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:471: status = ATT_ERR_ATTR_NOT_FOUND;
      004DC4 7F 0A            [12] 2025 	mov	r7,#0x0A
                                   2026 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:473: }
      004DC6 02 4D CB         [24] 2027 	ljmp	00114$
      004DC9                       2028 00113$:
                                   2029 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:478: status = ATT_ERR_INVALID_HANDLE;
      004DC9 7F 01            [12] 2030 	mov	r7,#0x01
      004DCB                       2031 00114$:
                                   2032 ;	../fake_ble_stack/Profiles/BXprofile/BXprof.c:487: return ( status );
      004DCB 8F 82            [24] 2033 	mov	dpl,r7
      004DCD                       2034 00115$:
      004DCD 85 1D 81         [24] 2035 	mov	sp,_bp
      004DD0 D0 1D            [24] 2036 	pop	_bp
      004DD2 22               [24] 2037 	ret
                                   2038 	.area CSEG    (CODE)
                                   2039 	.area CONST   (CODE)
      005DD5                       2040 _BX_CBs:
      005DD5 54 4A                 2041 	.byte _BX_ReadAttrCB,(_BX_ReadAttrCB >> 8)
      005DD7 29 4C                 2042 	.byte _BX_WriteAttrCB,(_BX_WriteAttrCB >> 8)
      005DD9 00 00                 2043 	.byte #0x00,#0x00
      005DDB                       2044 _BXServUUID:
      005DDB F0                    2045 	.db #0xF0	; 240
      005DDC BA                    2046 	.db #0xBA	; 186
      005DDD                       2047 _BXchar1UUID:
      005DDD F1                    2048 	.db #0xF1	; 241
      005DDE BA                    2049 	.db #0xBA	; 186
      005DDF                       2050 _BXchar2UUID:
      005DDF F9                    2051 	.db #0xF9	; 249
      005DE0 BA                    2052 	.db #0xBA	; 186
      005DE1                       2053 _BXService:
      005DE1 02                    2054 	.db #0x02	; 2
      005DE2 DB 5D 80              2055 	.byte _BXServUUID,(_BXServUUID >> 8),#0x80
                                   2056 	.area CABS    (ABS,CODE)
