                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module SimpleBLEPeripheral_Main
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _uartInit
                                     14 	.globl _osal_start_system
                                     15 	.globl _osal_init_system
                                     16 	.globl _MODE
                                     17 	.globl _RE
                                     18 	.globl _SLAVE
                                     19 	.globl _FE
                                     20 	.globl _ERR
                                     21 	.globl _RX_BYTE
                                     22 	.globl _TX_BYTE
                                     23 	.globl _ACTIVE
                                     24 	.globl _B_7
                                     25 	.globl _B_6
                                     26 	.globl _B_5
                                     27 	.globl _B_4
                                     28 	.globl _B_3
                                     29 	.globl _B_2
                                     30 	.globl _B_1
                                     31 	.globl _B_0
                                     32 	.globl _WDTIF
                                     33 	.globl _P1IF
                                     34 	.globl _UTX1IF
                                     35 	.globl _UTX0IF
                                     36 	.globl _P2IF
                                     37 	.globl _ACC_7
                                     38 	.globl _ACC_6
                                     39 	.globl _ACC_5
                                     40 	.globl _ACC_4
                                     41 	.globl _ACC_3
                                     42 	.globl _ACC_2
                                     43 	.globl _ACC_1
                                     44 	.globl _ACC_0
                                     45 	.globl _OVFIM
                                     46 	.globl _T4CH1IF
                                     47 	.globl _T4CH0IF
                                     48 	.globl _T4OVFIF
                                     49 	.globl _T3CH1IF
                                     50 	.globl _T3CH0IF
                                     51 	.globl _T3OVFIF
                                     52 	.globl _CY
                                     53 	.globl _AC
                                     54 	.globl _F0
                                     55 	.globl _RS1
                                     56 	.globl _RS0
                                     57 	.globl _OV
                                     58 	.globl _F1
                                     59 	.globl _P
                                     60 	.globl _STIF
                                     61 	.globl _P0IF
                                     62 	.globl _T4IF
                                     63 	.globl _T3IF
                                     64 	.globl _T2IF
                                     65 	.globl _T1IF
                                     66 	.globl _DMAIF
                                     67 	.globl _P0IE
                                     68 	.globl _T4IE
                                     69 	.globl _T3IE
                                     70 	.globl _T2IE
                                     71 	.globl _T1IE
                                     72 	.globl _DMAIE
                                     73 	.globl _EA
                                     74 	.globl _STIE
                                     75 	.globl _ENCIE
                                     76 	.globl _URX1IE
                                     77 	.globl _URX0IE
                                     78 	.globl _ADCIE
                                     79 	.globl _RFERRIE
                                     80 	.globl _P2_7
                                     81 	.globl _P2_6
                                     82 	.globl _P2_5
                                     83 	.globl _P2_4
                                     84 	.globl _P2_3
                                     85 	.globl _P2_2
                                     86 	.globl _P2_1
                                     87 	.globl _P2_0
                                     88 	.globl _ENCIF_1
                                     89 	.globl _ENCIF_0
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _URX1IF
                                     99 	.globl _ADCIF
                                    100 	.globl _URX0IF
                                    101 	.globl _IT1
                                    102 	.globl _RFERRIF
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _P2DIR
                                    113 	.globl _P1DIR
                                    114 	.globl _P0DIR
                                    115 	.globl _U1GCR
                                    116 	.globl _U1UCR
                                    117 	.globl _U1BAUD
                                    118 	.globl _U1DBUF
                                    119 	.globl _U1CSR
                                    120 	.globl _P2INP
                                    121 	.globl _P1INP
                                    122 	.globl _P2SEL
                                    123 	.globl _P1SEL
                                    124 	.globl _P0SEL
                                    125 	.globl _APCFG
                                    126 	.globl _PERCFG
                                    127 	.globl _B
                                    128 	.globl _T4CC1
                                    129 	.globl _T4CCTL1
                                    130 	.globl _T4CC0
                                    131 	.globl _T4CCTL0
                                    132 	.globl _T4CTL
                                    133 	.globl _T4CNT
                                    134 	.globl _RFIRQF0
                                    135 	.globl _IRCON2
                                    136 	.globl _T1CCTL2
                                    137 	.globl _T1CCTL1
                                    138 	.globl _T1CCTL0
                                    139 	.globl _T1CTL
                                    140 	.globl _T1CNTH
                                    141 	.globl _T1CNTL
                                    142 	.globl _RFST
                                    143 	.globl _ACC
                                    144 	.globl _T1CC2H
                                    145 	.globl _T1CC2L
                                    146 	.globl _T1CC1H
                                    147 	.globl _T1CC1L
                                    148 	.globl _T1CC0H
                                    149 	.globl _T1CC0L
                                    150 	.globl _RFD
                                    151 	.globl _TIMIF
                                    152 	.globl _DMAREQ
                                    153 	.globl _DMAARM
                                    154 	.globl _DMA0CFGH
                                    155 	.globl _DMA0CFGL
                                    156 	.globl _DMA1CFGH
                                    157 	.globl _DMA1CFGL
                                    158 	.globl _DMAIRQ
                                    159 	.globl _PSW
                                    160 	.globl _T3CC1
                                    161 	.globl _T3CCTL1
                                    162 	.globl _T3CC0
                                    163 	.globl _T3CCTL0
                                    164 	.globl _T3CTL
                                    165 	.globl _T3CNT
                                    166 	.globl _WDCTL
                                    167 	.globl _MEMCTR
                                    168 	.globl _CLKCONCMD
                                    169 	.globl _U0GCR
                                    170 	.globl _U0UCR
                                    171 	.globl _T2MSEL
                                    172 	.globl _U0BAUD
                                    173 	.globl _U0DBUF
                                    174 	.globl _IRCON
                                    175 	.globl _RFERRF
                                    176 	.globl _SLEEPCMD
                                    177 	.globl _RNDH
                                    178 	.globl _RNDL
                                    179 	.globl _ADCH
                                    180 	.globl _ADCL
                                    181 	.globl _IP1
                                    182 	.globl _IEN1
                                    183 	.globl _ADCCON3
                                    184 	.globl _ADCCON2
                                    185 	.globl _ADCCON1
                                    186 	.globl _ENCCS
                                    187 	.globl _ENCDO
                                    188 	.globl _ENCDI
                                    189 	.globl _T1STAT
                                    190 	.globl _PMUX
                                    191 	.globl _STLOAD
                                    192 	.globl _P2IEN
                                    193 	.globl _P0IEN
                                    194 	.globl _IP0
                                    195 	.globl _IEN0
                                    196 	.globl _T2IRQM
                                    197 	.globl _T2MOVF2
                                    198 	.globl _T2MOVF1
                                    199 	.globl _T2MOVF0
                                    200 	.globl _T2M1
                                    201 	.globl _T2M0
                                    202 	.globl _T2IRQF
                                    203 	.globl _P2
                                    204 	.globl _FMAP
                                    205 	.globl _PSBANK
                                    206 	.globl _CLKCONSTA
                                    207 	.globl _SLEEPSTA
                                    208 	.globl _T2EVTCFG
                                    209 	.globl _S1CON
                                    210 	.globl _IEN2
                                    211 	.globl _S0CON
                                    212 	.globl _ST2
                                    213 	.globl _ST1
                                    214 	.globl _ST0
                                    215 	.globl _T2CTRL
                                    216 	.globl __XPAGE
                                    217 	.globl _MPAGE
                                    218 	.globl _DPS
                                    219 	.globl _RFIRQF1
                                    220 	.globl _P1
                                    221 	.globl _P0INP
                                    222 	.globl _P1IEN
                                    223 	.globl _PICTL
                                    224 	.globl _P2IFG
                                    225 	.globl _P1IFG
                                    226 	.globl _P0IFG
                                    227 	.globl _TCON
                                    228 	.globl _PCON
                                    229 	.globl _U0CSR
                                    230 	.globl _DPH1
                                    231 	.globl _DPL1
                                    232 	.globl _DPH0
                                    233 	.globl _DPL0
                                    234 	.globl _SP
                                    235 	.globl _P0
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
                                    658 ; Stack segment in internal ram 
                                    659 ;--------------------------------------------------------
                                    660 	.area	SSEG
      000042                        661 __start__stack:
      000042                        662 	.ds	1
                                    663 
                                    664 ;--------------------------------------------------------
                                    665 ; indirectly addressable internal ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area ISEG    (DATA)
                                    668 ;--------------------------------------------------------
                                    669 ; absolute internal ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area IABS    (ABS,DATA)
                                    672 	.area IABS    (ABS,DATA)
                                    673 ;--------------------------------------------------------
                                    674 ; bit data
                                    675 ;--------------------------------------------------------
                                    676 	.area BSEG    (BIT)
                                    677 ;--------------------------------------------------------
                                    678 ; paged external ram data
                                    679 ;--------------------------------------------------------
                                    680 	.area PSEG    (PAG,XDATA)
                                    681 ;--------------------------------------------------------
                                    682 ; external ram data
                                    683 ;--------------------------------------------------------
                                    684 	.area XSEG    (XDATA)
                           006230   685 _I2CCFG	=	0x6230
                           006231   686 _I2CSTAT	=	0x6231
                           006232   687 _I2CDATA	=	0x6232
                           006233   688 _I2CADDR	=	0x6233
                           006234   689 _I2CWC	=	0x6234
                           006235   690 _I2CIO	=	0x6235
                           006243   691 _OBSSEL0	=	0x6243
                           006244   692 _OBSSEL1	=	0x6244
                           006245   693 _OBSSEL2	=	0x6245
                           006246   694 _OBSSEL3	=	0x6246
                           006247   695 _OBSSEL4	=	0x6247
                           006248   696 _OBSSEL5	=	0x6248
                           006249   697 _CHVER	=	0x6249
                           00624A   698 _CHIPID	=	0x624a
                           00624B   699 _TESTREG0	=	0x624b
                           006260   700 _DBGDATA	=	0x6260
                           006262   701 _SRCRC	=	0x6262
                           006264   702 _BATTMON	=	0x6264
                           006265   703 _IVCTRL	=	0x6265
                           006270   704 _FCTL	=	0x6270
                           006271   705 _FADDRL	=	0x6271
                           006272   706 _FADDRH	=	0x6272
                           006273   707 _FWDATA	=	0x6273
                           006276   708 _CHIPINFO0	=	0x6276
                           006277   709 _CHIPINFO1	=	0x6277
                           006281   710 _IRCTL	=	0x6281
                           006290   711 _CLD	=	0x6290
                           0062A0   712 _X_T1CCTL0	=	0x62a0
                           0062A1   713 _X_T1CCTL1	=	0x62a1
                           0062A2   714 _X_T1CCTL2	=	0x62a2
                           0062A3   715 _T1CCTL3	=	0x62a3
                           0062A4   716 _T1CCTL4	=	0x62a4
                           0062A6   717 _X_T1CC0L	=	0x62a6
                           0062A7   718 _X_T1CC0H	=	0x62a7
                           0062A8   719 _X_T1CC1L	=	0x62a8
                           0062A9   720 _X_T1CC1H	=	0x62a9
                           0062AA   721 _X_T1CC2L	=	0x62aa
                           0062AB   722 _X_T1CC2H	=	0x62ab
                           0062AC   723 _T1CC3L	=	0x62ac
                           0062AD   724 _T1CC3H	=	0x62ad
                           0062AE   725 _T1CC4L	=	0x62ae
                           0062AF   726 _T1CC4H	=	0x62af
                           0062B0   727 _STCC	=	0x62b0
                           0062B1   728 _STCS	=	0x62b1
                           0062B2   729 _STCV0	=	0x62b2
                           0062B3   730 _STCV1	=	0x62b3
                           0062B4   731 _STCV2	=	0x62b4
                           0062C0   732 _OPAMPC	=	0x62c0
                           0062C1   733 _OPAMPS	=	0x62c1
                           0062D0   734 _CMPCTL	=	0x62d0
                           006200   735 _USBADDR	=	0x6200
                           006201   736 _USBPOW	=	0x6201
                           006202   737 _USBIIF	=	0x6202
                           006204   738 _USBOIF	=	0x6204
                           006206   739 _USBCIF	=	0x6206
                           006207   740 _USBIIE	=	0x6207
                           006209   741 _USBOIE	=	0x6209
                           00620B   742 _USBCIE	=	0x620b
                           00620C   743 _USBFRML	=	0x620c
                           00620D   744 _USBFRMH	=	0x620d
                           00620E   745 _USBINDEX	=	0x620e
                           00620F   746 _USBCTRL	=	0x620f
                           006210   747 _USBMAXI	=	0x6210
                           006211   748 _USBCS0	=	0x6211
                           006211   749 _USBCSIL	=	0x6211
                           006212   750 _USBCSIH	=	0x6212
                           006213   751 _USBMAXO	=	0x6213
                           006214   752 _USBCSOL	=	0x6214
                           006215   753 _USBCSOH	=	0x6215
                           006216   754 _USBCNT0	=	0x6216
                           006216   755 _USBCNTL	=	0x6216
                           006217   756 _USBCNTH	=	0x6217
                           006220   757 _USBF0	=	0x6220
                           006222   758 _USBF1	=	0x6222
                           006224   759 _USBF2	=	0x6224
                           006226   760 _USBF3	=	0x6226
                           006228   761 _USBF4	=	0x6228
                           00622A   762 _USBF5	=	0x622a
                           006174   763 _SHORTADDRH	=	0x6174
                           006175   764 _SHORTADDRL	=	0x6175
                           006172   765 _PANIDH	=	0x6172
                           006173   766 _PANIDL	=	0x6173
                           00616A   767 _IEEE_ADDR	=	0x616a
                           006180   768 _FRMFILT0	=	0x6180
                           006181   769 _FRMFILT1	=	0x6181
                           006182   770 _SRCMATCH	=	0x6182
                           006183   771 _SRCSHORTEN0	=	0x6183
                           006184   772 _SRCSHORTEN1	=	0x6184
                           006185   773 _SRCSHORTEN2	=	0x6185
                           006186   774 _SRCEXTEN0	=	0x6186
                           006187   775 _SRCEXTEN1	=	0x6187
                           006188   776 _SRCEXTEN2	=	0x6188
                           006189   777 _FRMCTRL0	=	0x6189
                           00618A   778 _FRMCTRL1	=	0x618a
                           00618B   779 _RXENABLE	=	0x618b
                           00618C   780 _RXMASKSET	=	0x618c
                           00618D   781 _RXMASKCLR	=	0x618d
                           00618E   782 _FREQTUNE	=	0x618e
                           00618F   783 _FREQCTRL	=	0x618f
                           006190   784 _TXPOWER	=	0x6190
                           006191   785 _TXCTRL	=	0x6191
                           006192   786 _FSMSTAT0	=	0x6192
                           006193   787 _FSMSTAT1	=	0x6193
                           006194   788 _FIFOPCTRL	=	0x6194
                           006195   789 _FSMCTRL	=	0x6195
                           006196   790 _CCACTRL0	=	0x6196
                           006197   791 _CCACTRL1	=	0x6197
                           006198   792 _RSSI	=	0x6198
                           006199   793 _RSSISTAT	=	0x6199
                           00619A   794 _RXFIRST	=	0x619a
                           00619B   795 _RXFIFOCNT	=	0x619b
                           00619C   796 _TXFIFOCNT	=	0x619c
                           00619D   797 _RXFIRST_PTR	=	0x619d
                           00619E   798 _RXLAST_PTR	=	0x619e
                           00619F   799 _RXP1_PTR	=	0x619f
                           0061A1   800 _TXFIRST_PTR	=	0x61a1
                           0061A2   801 _TXLAST_PTR	=	0x61a2
                           0061A3   802 _RFIRQM0	=	0x61a3
                           0061A4   803 _RFIRQM1	=	0x61a4
                           0061A5   804 _RFERRM	=	0x61a5
                           0061A6   805 _OPAMPMC	=	0x61a6
                           0061A7   806 _RFRND	=	0x61a7
                           0061A8   807 _MDMCTRL0	=	0x61a8
                           0061A9   808 _MDMCTRL1	=	0x61a9
                           0061AA   809 _FREQEST	=	0x61aa
                           0061AB   810 _RXCTRL	=	0x61ab
                           0061AC   811 _FSCTRL	=	0x61ac
                           0061AE   812 _FSCAL1	=	0x61ae
                           0061AF   813 _FSCAL2	=	0x61af
                           0061B0   814 _FSCAL3	=	0x61b0
                           0061B1   815 _AGCCTRL0	=	0x61b1
                           0061B2   816 _AGCCTRL1	=	0x61b2
                           0061B3   817 _AGCCTRL2	=	0x61b3
                           0061B4   818 _AGCCTRL3	=	0x61b4
                           0061B5   819 _ADCTEST0	=	0x61b5
                           0061B6   820 _ADCTEST1	=	0x61b6
                           0061B7   821 _ADCTEST2	=	0x61b7
                           0061B8   822 _MDMTEST0	=	0x61b8
                           0061B9   823 _MDMTEST1	=	0x61b9
                           0061BA   824 _DACTEST0	=	0x61ba
                           0061BB   825 _DACTEST1	=	0x61bb
                           0061BC   826 _DACTEST2	=	0x61bc
                           0061BD   827 _ATEST	=	0x61bd
                           0061BE   828 _PTEST0	=	0x61be
                           0061BF   829 _PTEST1	=	0x61bf
                           0061C0   830 _CSPPROG0	=	0x61c0
                           0061C1   831 _CSPPROG1	=	0x61c1
                           0061C2   832 _CSPPROG2	=	0x61c2
                           0061C3   833 _CSPPROG3	=	0x61c3
                           0061C4   834 _CSPPROG4	=	0x61c4
                           0061C5   835 _CSPPROG5	=	0x61c5
                           0061C6   836 _CSPPROG6	=	0x61c6
                           0061C7   837 _CSPPROG7	=	0x61c7
                           0061C8   838 _CSPPROG8	=	0x61c8
                           0061C9   839 _CSPPROG9	=	0x61c9
                           0061CA   840 _CSPPROG10	=	0x61ca
                           0061CB   841 _CSPPROG11	=	0x61cb
                           0061CC   842 _CSPPROG12	=	0x61cc
                           0061CD   843 _CSPPROG13	=	0x61cd
                           0061CE   844 _CSPPROG14	=	0x61ce
                           0061CF   845 _CSPPROG15	=	0x61cf
                           0061D0   846 _CSPPROG16	=	0x61d0
                           0061D1   847 _CSPPROG17	=	0x61d1
                           0061D2   848 _CSPPROG18	=	0x61d2
                           0061D3   849 _CSPPROG19	=	0x61d3
                           0061D4   850 _CSPPROG20	=	0x61d4
                           0061D5   851 _CSPPROG21	=	0x61d5
                           0061D6   852 _CSPPROG22	=	0x61d6
                           0061D7   853 _CSPPROG23	=	0x61d7
                           0061E0   854 _CSPCTRL	=	0x61e0
                           0061E1   855 _CSPSTAT	=	0x61e1
                           0061E2   856 _CSPX	=	0x61e2
                           0061E3   857 _CSPY	=	0x61e3
                           0061E4   858 _CSPZ	=	0x61e4
                           0061E5   859 _CSPT	=	0x61e5
                           0061EB   860 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   861 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   862 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   863 _TXFILTCFG	=	0x61fa
                                    864 ;--------------------------------------------------------
                                    865 ; absolute external ram data
                                    866 ;--------------------------------------------------------
                                    867 	.area XABS    (ABS,XDATA)
                                    868 ;--------------------------------------------------------
                                    869 ; external initialized ram data
                                    870 ;--------------------------------------------------------
                                    871 	.area HOME    (CODE)
                                    872 	.area GSINIT0 (CODE)
                                    873 	.area GSINIT1 (CODE)
                                    874 	.area GSINIT2 (CODE)
                                    875 	.area GSINIT3 (CODE)
                                    876 	.area GSINIT4 (CODE)
                                    877 	.area GSINIT5 (CODE)
                                    878 	.area GSINIT  (CODE)
                                    879 	.area GSFINAL (CODE)
                                    880 	.area CSEG    (CODE)
                                    881 ;--------------------------------------------------------
                                    882 ; interrupt vector 
                                    883 ;--------------------------------------------------------
                                    884 	.area HOME    (CODE)
      000000                        885 __interrupt_vect:
      000000 02 00 34         [24]  886 	ljmp	__sdcc_gsinit_startup
                                    887 ;--------------------------------------------------------
                                    888 ; global & static initialisations
                                    889 ;--------------------------------------------------------
                                    890 	.area HOME    (CODE)
                                    891 	.area GSINIT  (CODE)
                                    892 	.area GSFINAL (CODE)
                                    893 	.area GSINIT  (CODE)
                                    894 	.globl __sdcc_gsinit_startup
                                    895 	.globl __sdcc_program_startup
                                    896 	.globl __start__stack
                                    897 	.globl __mcs51_genRAMCLEAR
                                    898 	.area GSFINAL (CODE)
      0003D9 02 00 03         [24]  899 	ljmp	__sdcc_program_startup
                                    900 ;--------------------------------------------------------
                                    901 ; Home
                                    902 ;--------------------------------------------------------
                                    903 	.area HOME    (CODE)
                                    904 	.area HOME    (CODE)
      000003                        905 __sdcc_program_startup:
      000003 02 03 DC         [24]  906 	ljmp	_main
                                    907 ;	return from main will return to caller
                                    908 ;--------------------------------------------------------
                                    909 ; code
                                    910 ;--------------------------------------------------------
                                    911 	.area CSEG    (CODE)
                                    912 ;------------------------------------------------------------
                                    913 ;Allocation info for local variables in function 'main'
                                    914 ;------------------------------------------------------------
                                    915 ;	./source/SimpleBLEPeripheral_Main.c:80: int main(void)
                                    916 ;	-----------------------------------------
                                    917 ;	 function main
                                    918 ;	-----------------------------------------
      0003DC                        919 _main:
                           000007   920 	ar7 = 0x07
                           000006   921 	ar6 = 0x06
                           000005   922 	ar5 = 0x05
                           000004   923 	ar4 = 0x04
                           000003   924 	ar3 = 0x03
                           000002   925 	ar2 = 0x02
                           000001   926 	ar1 = 0x01
                           000000   927 	ar0 = 0x00
                                    928 ;	./source/SimpleBLEPeripheral_Main.c:86: SP=0x49;
      0003DC 75 81 49         [24]  929 	mov	_SP,#0x49
                                    930 ;	./source/SimpleBLEPeripheral_Main.c:90: uartInit(HAL_UART_BR_9600);
      0003DF 75 82 00         [24]  931 	mov	dpl,#0x00
      0003E2 75 83 00         [24]  932 	mov	dph,#0x00
      0003E5 12 3C 01         [24]  933 	lcall	_uartInit
                                    934 ;	./source/SimpleBLEPeripheral_Main.c:112: osal_init_system();
      0003E8 12 1A A0         [24]  935 	lcall	_osal_init_system
                                    936 ;	./source/SimpleBLEPeripheral_Main.c:130: osal_start_system(); // No Return from here
      0003EB 12 1A B7         [24]  937 	lcall	_osal_start_system
                                    938 ;	./source/SimpleBLEPeripheral_Main.c:139: return 0;
      0003EE 75 82 00         [24]  939 	mov	dpl,#0x00
      0003F1 75 83 00         [24]  940 	mov	dph,#0x00
      0003F4                        941 00101$:
      0003F4 22               [24]  942 	ret
                                    943 	.area CSEG    (CODE)
                                    944 	.area CONST   (CODE)
                                    945 	.area CABS    (ABS,CODE)
