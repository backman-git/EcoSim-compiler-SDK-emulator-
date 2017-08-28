                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module task2
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _BX_SetParameter
                                     13 	.globl _osal_set_event
                                     14 	.globl _osal_start_timerEx
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
                                    235 	.globl _TXFILTCFG
                                    236 	.globl _RFC_OBS_CTRL2
                                    237 	.globl _RFC_OBS_CTRL1
                                    238 	.globl _RFC_OBS_CTRL0
                                    239 	.globl _CSPT
                                    240 	.globl _CSPZ
                                    241 	.globl _CSPY
                                    242 	.globl _CSPX
                                    243 	.globl _CSPSTAT
                                    244 	.globl _CSPCTRL
                                    245 	.globl _CSPPROG23
                                    246 	.globl _CSPPROG22
                                    247 	.globl _CSPPROG21
                                    248 	.globl _CSPPROG20
                                    249 	.globl _CSPPROG19
                                    250 	.globl _CSPPROG18
                                    251 	.globl _CSPPROG17
                                    252 	.globl _CSPPROG16
                                    253 	.globl _CSPPROG15
                                    254 	.globl _CSPPROG14
                                    255 	.globl _CSPPROG13
                                    256 	.globl _CSPPROG12
                                    257 	.globl _CSPPROG11
                                    258 	.globl _CSPPROG10
                                    259 	.globl _CSPPROG9
                                    260 	.globl _CSPPROG8
                                    261 	.globl _CSPPROG7
                                    262 	.globl _CSPPROG6
                                    263 	.globl _CSPPROG5
                                    264 	.globl _CSPPROG4
                                    265 	.globl _CSPPROG3
                                    266 	.globl _CSPPROG2
                                    267 	.globl _CSPPROG1
                                    268 	.globl _CSPPROG0
                                    269 	.globl _PTEST1
                                    270 	.globl _PTEST0
                                    271 	.globl _ATEST
                                    272 	.globl _DACTEST2
                                    273 	.globl _DACTEST1
                                    274 	.globl _DACTEST0
                                    275 	.globl _MDMTEST1
                                    276 	.globl _MDMTEST0
                                    277 	.globl _ADCTEST2
                                    278 	.globl _ADCTEST1
                                    279 	.globl _ADCTEST0
                                    280 	.globl _AGCCTRL3
                                    281 	.globl _AGCCTRL2
                                    282 	.globl _AGCCTRL1
                                    283 	.globl _AGCCTRL0
                                    284 	.globl _FSCAL3
                                    285 	.globl _FSCAL2
                                    286 	.globl _FSCAL1
                                    287 	.globl _FSCTRL
                                    288 	.globl _RXCTRL
                                    289 	.globl _FREQEST
                                    290 	.globl _MDMCTRL1
                                    291 	.globl _MDMCTRL0
                                    292 	.globl _RFRND
                                    293 	.globl _OPAMPMC
                                    294 	.globl _RFERRM
                                    295 	.globl _RFIRQM1
                                    296 	.globl _RFIRQM0
                                    297 	.globl _TXLAST_PTR
                                    298 	.globl _TXFIRST_PTR
                                    299 	.globl _RXP1_PTR
                                    300 	.globl _RXLAST_PTR
                                    301 	.globl _RXFIRST_PTR
                                    302 	.globl _TXFIFOCNT
                                    303 	.globl _RXFIFOCNT
                                    304 	.globl _RXFIRST
                                    305 	.globl _RSSISTAT
                                    306 	.globl _RSSI
                                    307 	.globl _CCACTRL1
                                    308 	.globl _CCACTRL0
                                    309 	.globl _FSMCTRL
                                    310 	.globl _FIFOPCTRL
                                    311 	.globl _FSMSTAT1
                                    312 	.globl _FSMSTAT0
                                    313 	.globl _TXCTRL
                                    314 	.globl _TXPOWER
                                    315 	.globl _FREQCTRL
                                    316 	.globl _FREQTUNE
                                    317 	.globl _RXMASKCLR
                                    318 	.globl _RXMASKSET
                                    319 	.globl _RXENABLE
                                    320 	.globl _FRMCTRL1
                                    321 	.globl _FRMCTRL0
                                    322 	.globl _SRCEXTEN2
                                    323 	.globl _SRCEXTEN1
                                    324 	.globl _SRCEXTEN0
                                    325 	.globl _SRCSHORTEN2
                                    326 	.globl _SRCSHORTEN1
                                    327 	.globl _SRCSHORTEN0
                                    328 	.globl _SRCMATCH
                                    329 	.globl _FRMFILT1
                                    330 	.globl _FRMFILT0
                                    331 	.globl _IEEE_ADDR
                                    332 	.globl _PANIDL
                                    333 	.globl _PANIDH
                                    334 	.globl _SHORTADDRL
                                    335 	.globl _SHORTADDRH
                                    336 	.globl _USBF5
                                    337 	.globl _USBF4
                                    338 	.globl _USBF3
                                    339 	.globl _USBF2
                                    340 	.globl _USBF1
                                    341 	.globl _USBF0
                                    342 	.globl _USBCNTH
                                    343 	.globl _USBCNTL
                                    344 	.globl _USBCNT0
                                    345 	.globl _USBCSOH
                                    346 	.globl _USBCSOL
                                    347 	.globl _USBMAXO
                                    348 	.globl _USBCSIH
                                    349 	.globl _USBCSIL
                                    350 	.globl _USBCS0
                                    351 	.globl _USBMAXI
                                    352 	.globl _USBCTRL
                                    353 	.globl _USBINDEX
                                    354 	.globl _USBFRMH
                                    355 	.globl _USBFRML
                                    356 	.globl _USBCIE
                                    357 	.globl _USBOIE
                                    358 	.globl _USBIIE
                                    359 	.globl _USBCIF
                                    360 	.globl _USBOIF
                                    361 	.globl _USBIIF
                                    362 	.globl _USBPOW
                                    363 	.globl _USBADDR
                                    364 	.globl _CMPCTL
                                    365 	.globl _OPAMPS
                                    366 	.globl _OPAMPC
                                    367 	.globl _STCV2
                                    368 	.globl _STCV1
                                    369 	.globl _STCV0
                                    370 	.globl _STCS
                                    371 	.globl _STCC
                                    372 	.globl _T1CC4H
                                    373 	.globl _T1CC4L
                                    374 	.globl _T1CC3H
                                    375 	.globl _T1CC3L
                                    376 	.globl _X_T1CC2H
                                    377 	.globl _X_T1CC2L
                                    378 	.globl _X_T1CC1H
                                    379 	.globl _X_T1CC1L
                                    380 	.globl _X_T1CC0H
                                    381 	.globl _X_T1CC0L
                                    382 	.globl _T1CCTL4
                                    383 	.globl _T1CCTL3
                                    384 	.globl _X_T1CCTL2
                                    385 	.globl _X_T1CCTL1
                                    386 	.globl _X_T1CCTL0
                                    387 	.globl _CLD
                                    388 	.globl _IRCTL
                                    389 	.globl _CHIPINFO1
                                    390 	.globl _CHIPINFO0
                                    391 	.globl _FWDATA
                                    392 	.globl _FADDRH
                                    393 	.globl _FADDRL
                                    394 	.globl _FCTL
                                    395 	.globl _IVCTRL
                                    396 	.globl _BATTMON
                                    397 	.globl _SRCRC
                                    398 	.globl _DBGDATA
                                    399 	.globl _TESTREG0
                                    400 	.globl _CHIPID
                                    401 	.globl _CHVER
                                    402 	.globl _OBSSEL5
                                    403 	.globl _OBSSEL4
                                    404 	.globl _OBSSEL3
                                    405 	.globl _OBSSEL2
                                    406 	.globl _OBSSEL1
                                    407 	.globl _OBSSEL0
                                    408 	.globl _I2CIO
                                    409 	.globl _I2CWC
                                    410 	.globl _I2CADDR
                                    411 	.globl _I2CDATA
                                    412 	.globl _I2CSTAT
                                    413 	.globl _I2CCFG
                                    414 	.globl _Task2_Init
                                    415 	.globl _Task2_ProcessEvent
                                    416 ;--------------------------------------------------------
                                    417 ; special function registers
                                    418 ;--------------------------------------------------------
                                    419 	.area RSEG    (ABS,DATA)
      000000                        420 	.org 0x0000
                           000080   421 _P0	=	0x0080
                           000081   422 _SP	=	0x0081
                           000082   423 _DPL0	=	0x0082
                           000083   424 _DPH0	=	0x0083
                           000084   425 _DPL1	=	0x0084
                           000085   426 _DPH1	=	0x0085
                           000086   427 _U0CSR	=	0x0086
                           000087   428 _PCON	=	0x0087
                           000088   429 _TCON	=	0x0088
                           000089   430 _P0IFG	=	0x0089
                           00008A   431 _P1IFG	=	0x008a
                           00008B   432 _P2IFG	=	0x008b
                           00008C   433 _PICTL	=	0x008c
                           00008D   434 _P1IEN	=	0x008d
                           00008F   435 _P0INP	=	0x008f
                           000090   436 _P1	=	0x0090
                           000091   437 _RFIRQF1	=	0x0091
                           000092   438 _DPS	=	0x0092
                           000093   439 _MPAGE	=	0x0093
                           000093   440 __XPAGE	=	0x0093
                           000094   441 _T2CTRL	=	0x0094
                           000095   442 _ST0	=	0x0095
                           000096   443 _ST1	=	0x0096
                           000097   444 _ST2	=	0x0097
                           000098   445 _S0CON	=	0x0098
                           00009A   446 _IEN2	=	0x009a
                           00009B   447 _S1CON	=	0x009b
                           00009C   448 _T2EVTCFG	=	0x009c
                           00009D   449 _SLEEPSTA	=	0x009d
                           00009E   450 _CLKCONSTA	=	0x009e
                           00009F   451 _PSBANK	=	0x009f
                           00009F   452 _FMAP	=	0x009f
                           0000A0   453 _P2	=	0x00a0
                           0000A1   454 _T2IRQF	=	0x00a1
                           0000A2   455 _T2M0	=	0x00a2
                           0000A3   456 _T2M1	=	0x00a3
                           0000A4   457 _T2MOVF0	=	0x00a4
                           0000A5   458 _T2MOVF1	=	0x00a5
                           0000A6   459 _T2MOVF2	=	0x00a6
                           0000A7   460 _T2IRQM	=	0x00a7
                           0000A8   461 _IEN0	=	0x00a8
                           0000A9   462 _IP0	=	0x00a9
                           0000AB   463 _P0IEN	=	0x00ab
                           0000AC   464 _P2IEN	=	0x00ac
                           0000AD   465 _STLOAD	=	0x00ad
                           0000AE   466 _PMUX	=	0x00ae
                           0000AF   467 _T1STAT	=	0x00af
                           0000B1   468 _ENCDI	=	0x00b1
                           0000B2   469 _ENCDO	=	0x00b2
                           0000B3   470 _ENCCS	=	0x00b3
                           0000B4   471 _ADCCON1	=	0x00b4
                           0000B5   472 _ADCCON2	=	0x00b5
                           0000B6   473 _ADCCON3	=	0x00b6
                           0000B8   474 _IEN1	=	0x00b8
                           0000B9   475 _IP1	=	0x00b9
                           0000BA   476 _ADCL	=	0x00ba
                           0000BB   477 _ADCH	=	0x00bb
                           0000BC   478 _RNDL	=	0x00bc
                           0000BD   479 _RNDH	=	0x00bd
                           0000BE   480 _SLEEPCMD	=	0x00be
                           0000BF   481 _RFERRF	=	0x00bf
                           0000C0   482 _IRCON	=	0x00c0
                           0000C1   483 _U0DBUF	=	0x00c1
                           0000C2   484 _U0BAUD	=	0x00c2
                           0000C3   485 _T2MSEL	=	0x00c3
                           0000C4   486 _U0UCR	=	0x00c4
                           0000C5   487 _U0GCR	=	0x00c5
                           0000C6   488 _CLKCONCMD	=	0x00c6
                           0000C7   489 _MEMCTR	=	0x00c7
                           0000C9   490 _WDCTL	=	0x00c9
                           0000CA   491 _T3CNT	=	0x00ca
                           0000CB   492 _T3CTL	=	0x00cb
                           0000CC   493 _T3CCTL0	=	0x00cc
                           0000CD   494 _T3CC0	=	0x00cd
                           0000CE   495 _T3CCTL1	=	0x00ce
                           0000CF   496 _T3CC1	=	0x00cf
                           0000D0   497 _PSW	=	0x00d0
                           0000D1   498 _DMAIRQ	=	0x00d1
                           0000D2   499 _DMA1CFGL	=	0x00d2
                           0000D3   500 _DMA1CFGH	=	0x00d3
                           0000D4   501 _DMA0CFGL	=	0x00d4
                           0000D5   502 _DMA0CFGH	=	0x00d5
                           0000D6   503 _DMAARM	=	0x00d6
                           0000D7   504 _DMAREQ	=	0x00d7
                           0000D8   505 _TIMIF	=	0x00d8
                           0000D9   506 _RFD	=	0x00d9
                           0000DA   507 _T1CC0L	=	0x00da
                           0000DB   508 _T1CC0H	=	0x00db
                           0000DC   509 _T1CC1L	=	0x00dc
                           0000DD   510 _T1CC1H	=	0x00dd
                           0000DE   511 _T1CC2L	=	0x00de
                           0000DF   512 _T1CC2H	=	0x00df
                           0000E0   513 _ACC	=	0x00e0
                           0000E1   514 _RFST	=	0x00e1
                           0000E2   515 _T1CNTL	=	0x00e2
                           0000E3   516 _T1CNTH	=	0x00e3
                           0000E4   517 _T1CTL	=	0x00e4
                           0000E5   518 _T1CCTL0	=	0x00e5
                           0000E6   519 _T1CCTL1	=	0x00e6
                           0000E7   520 _T1CCTL2	=	0x00e7
                           0000E8   521 _IRCON2	=	0x00e8
                           0000E9   522 _RFIRQF0	=	0x00e9
                           0000EA   523 _T4CNT	=	0x00ea
                           0000EB   524 _T4CTL	=	0x00eb
                           0000EC   525 _T4CCTL0	=	0x00ec
                           0000ED   526 _T4CC0	=	0x00ed
                           0000EE   527 _T4CCTL1	=	0x00ee
                           0000EF   528 _T4CC1	=	0x00ef
                           0000F0   529 _B	=	0x00f0
                           0000F1   530 _PERCFG	=	0x00f1
                           0000F2   531 _APCFG	=	0x00f2
                           0000F3   532 _P0SEL	=	0x00f3
                           0000F4   533 _P1SEL	=	0x00f4
                           0000F5   534 _P2SEL	=	0x00f5
                           0000F6   535 _P1INP	=	0x00f6
                           0000F7   536 _P2INP	=	0x00f7
                           0000F8   537 _U1CSR	=	0x00f8
                           0000F9   538 _U1DBUF	=	0x00f9
                           0000FA   539 _U1BAUD	=	0x00fa
                           0000FB   540 _U1UCR	=	0x00fb
                           0000FC   541 _U1GCR	=	0x00fc
                           0000FD   542 _P0DIR	=	0x00fd
                           0000FE   543 _P1DIR	=	0x00fe
                           0000FF   544 _P2DIR	=	0x00ff
                                    545 ;--------------------------------------------------------
                                    546 ; special function bits
                                    547 ;--------------------------------------------------------
                                    548 	.area RSEG    (ABS,DATA)
      000000                        549 	.org 0x0000
                           000080   550 _P0_0	=	0x0080
                           000081   551 _P0_1	=	0x0081
                           000082   552 _P0_2	=	0x0082
                           000083   553 _P0_3	=	0x0083
                           000084   554 _P0_4	=	0x0084
                           000085   555 _P0_5	=	0x0085
                           000086   556 _P0_6	=	0x0086
                           000087   557 _P0_7	=	0x0087
                           000088   558 _IT0	=	0x0088
                           000089   559 _RFERRIF	=	0x0089
                           00008A   560 _IT1	=	0x008a
                           00008B   561 _URX0IF	=	0x008b
                           00008D   562 _ADCIF	=	0x008d
                           00008F   563 _URX1IF	=	0x008f
                           000090   564 _P1_0	=	0x0090
                           000091   565 _P1_1	=	0x0091
                           000092   566 _P1_2	=	0x0092
                           000093   567 _P1_3	=	0x0093
                           000094   568 _P1_4	=	0x0094
                           000095   569 _P1_5	=	0x0095
                           000096   570 _P1_6	=	0x0096
                           000097   571 _P1_7	=	0x0097
                           000098   572 _ENCIF_0	=	0x0098
                           000099   573 _ENCIF_1	=	0x0099
                           0000A0   574 _P2_0	=	0x00a0
                           0000A1   575 _P2_1	=	0x00a1
                           0000A2   576 _P2_2	=	0x00a2
                           0000A3   577 _P2_3	=	0x00a3
                           0000A4   578 _P2_4	=	0x00a4
                           0000A5   579 _P2_5	=	0x00a5
                           0000A6   580 _P2_6	=	0x00a6
                           0000A7   581 _P2_7	=	0x00a7
                           0000A8   582 _RFERRIE	=	0x00a8
                           0000A9   583 _ADCIE	=	0x00a9
                           0000AA   584 _URX0IE	=	0x00aa
                           0000AB   585 _URX1IE	=	0x00ab
                           0000AC   586 _ENCIE	=	0x00ac
                           0000AD   587 _STIE	=	0x00ad
                           0000AF   588 _EA	=	0x00af
                           0000B8   589 _DMAIE	=	0x00b8
                           0000B9   590 _T1IE	=	0x00b9
                           0000BA   591 _T2IE	=	0x00ba
                           0000BB   592 _T3IE	=	0x00bb
                           0000BC   593 _T4IE	=	0x00bc
                           0000BD   594 _P0IE	=	0x00bd
                           0000C0   595 _DMAIF	=	0x00c0
                           0000C1   596 _T1IF	=	0x00c1
                           0000C2   597 _T2IF	=	0x00c2
                           0000C3   598 _T3IF	=	0x00c3
                           0000C4   599 _T4IF	=	0x00c4
                           0000C5   600 _P0IF	=	0x00c5
                           0000C7   601 _STIF	=	0x00c7
                           0000D0   602 _P	=	0x00d0
                           0000D1   603 _F1	=	0x00d1
                           0000D2   604 _OV	=	0x00d2
                           0000D3   605 _RS0	=	0x00d3
                           0000D4   606 _RS1	=	0x00d4
                           0000D5   607 _F0	=	0x00d5
                           0000D6   608 _AC	=	0x00d6
                           0000D7   609 _CY	=	0x00d7
                           0000D8   610 _T3OVFIF	=	0x00d8
                           0000D9   611 _T3CH0IF	=	0x00d9
                           0000DA   612 _T3CH1IF	=	0x00da
                           0000DB   613 _T4OVFIF	=	0x00db
                           0000DC   614 _T4CH0IF	=	0x00dc
                           0000DD   615 _T4CH1IF	=	0x00dd
                           0000DE   616 _OVFIM	=	0x00de
                           0000E0   617 _ACC_0	=	0x00e0
                           0000E1   618 _ACC_1	=	0x00e1
                           0000E2   619 _ACC_2	=	0x00e2
                           0000E3   620 _ACC_3	=	0x00e3
                           0000E4   621 _ACC_4	=	0x00e4
                           0000E5   622 _ACC_5	=	0x00e5
                           0000E6   623 _ACC_6	=	0x00e6
                           0000E7   624 _ACC_7	=	0x00e7
                           0000E8   625 _P2IF	=	0x00e8
                           0000E9   626 _UTX0IF	=	0x00e9
                           0000EA   627 _UTX1IF	=	0x00ea
                           0000EB   628 _P1IF	=	0x00eb
                           0000EC   629 _WDTIF	=	0x00ec
                           0000F0   630 _B_0	=	0x00f0
                           0000F1   631 _B_1	=	0x00f1
                           0000F2   632 _B_2	=	0x00f2
                           0000F3   633 _B_3	=	0x00f3
                           0000F4   634 _B_4	=	0x00f4
                           0000F5   635 _B_5	=	0x00f5
                           0000F6   636 _B_6	=	0x00f6
                           0000F7   637 _B_7	=	0x00f7
                           0000F8   638 _ACTIVE	=	0x00f8
                           0000F9   639 _TX_BYTE	=	0x00f9
                           0000FA   640 _RX_BYTE	=	0x00fa
                           0000FB   641 _ERR	=	0x00fb
                           0000FC   642 _FE	=	0x00fc
                           0000FD   643 _SLAVE	=	0x00fd
                           0000FE   644 _RE	=	0x00fe
                           0000FF   645 _MODE	=	0x00ff
                                    646 ;--------------------------------------------------------
                                    647 ; overlayable register banks
                                    648 ;--------------------------------------------------------
                                    649 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        650 	.ds 8
                                    651 ;--------------------------------------------------------
                                    652 ; internal ram data
                                    653 ;--------------------------------------------------------
                                    654 	.area DSEG    (DATA)
                                    655 ;--------------------------------------------------------
                                    656 ; overlayable items in internal ram 
                                    657 ;--------------------------------------------------------
                                    658 ;--------------------------------------------------------
                                    659 ; indirectly addressable internal ram data
                                    660 ;--------------------------------------------------------
                                    661 	.area ISEG    (DATA)
                                    662 ;--------------------------------------------------------
                                    663 ; absolute internal ram data
                                    664 ;--------------------------------------------------------
                                    665 	.area IABS    (ABS,DATA)
                                    666 	.area IABS    (ABS,DATA)
                                    667 ;--------------------------------------------------------
                                    668 ; bit data
                                    669 ;--------------------------------------------------------
                                    670 	.area BSEG    (BIT)
                                    671 ;--------------------------------------------------------
                                    672 ; paged external ram data
                                    673 ;--------------------------------------------------------
                                    674 	.area PSEG    (PAG,XDATA)
                                    675 ;--------------------------------------------------------
                                    676 ; external ram data
                                    677 ;--------------------------------------------------------
                                    678 	.area XSEG    (XDATA)
                           006230   679 _I2CCFG	=	0x6230
                           006231   680 _I2CSTAT	=	0x6231
                           006232   681 _I2CDATA	=	0x6232
                           006233   682 _I2CADDR	=	0x6233
                           006234   683 _I2CWC	=	0x6234
                           006235   684 _I2CIO	=	0x6235
                           006243   685 _OBSSEL0	=	0x6243
                           006244   686 _OBSSEL1	=	0x6244
                           006245   687 _OBSSEL2	=	0x6245
                           006246   688 _OBSSEL3	=	0x6246
                           006247   689 _OBSSEL4	=	0x6247
                           006248   690 _OBSSEL5	=	0x6248
                           006249   691 _CHVER	=	0x6249
                           00624A   692 _CHIPID	=	0x624a
                           00624B   693 _TESTREG0	=	0x624b
                           006260   694 _DBGDATA	=	0x6260
                           006262   695 _SRCRC	=	0x6262
                           006264   696 _BATTMON	=	0x6264
                           006265   697 _IVCTRL	=	0x6265
                           006270   698 _FCTL	=	0x6270
                           006271   699 _FADDRL	=	0x6271
                           006272   700 _FADDRH	=	0x6272
                           006273   701 _FWDATA	=	0x6273
                           006276   702 _CHIPINFO0	=	0x6276
                           006277   703 _CHIPINFO1	=	0x6277
                           006281   704 _IRCTL	=	0x6281
                           006290   705 _CLD	=	0x6290
                           0062A0   706 _X_T1CCTL0	=	0x62a0
                           0062A1   707 _X_T1CCTL1	=	0x62a1
                           0062A2   708 _X_T1CCTL2	=	0x62a2
                           0062A3   709 _T1CCTL3	=	0x62a3
                           0062A4   710 _T1CCTL4	=	0x62a4
                           0062A6   711 _X_T1CC0L	=	0x62a6
                           0062A7   712 _X_T1CC0H	=	0x62a7
                           0062A8   713 _X_T1CC1L	=	0x62a8
                           0062A9   714 _X_T1CC1H	=	0x62a9
                           0062AA   715 _X_T1CC2L	=	0x62aa
                           0062AB   716 _X_T1CC2H	=	0x62ab
                           0062AC   717 _T1CC3L	=	0x62ac
                           0062AD   718 _T1CC3H	=	0x62ad
                           0062AE   719 _T1CC4L	=	0x62ae
                           0062AF   720 _T1CC4H	=	0x62af
                           0062B0   721 _STCC	=	0x62b0
                           0062B1   722 _STCS	=	0x62b1
                           0062B2   723 _STCV0	=	0x62b2
                           0062B3   724 _STCV1	=	0x62b3
                           0062B4   725 _STCV2	=	0x62b4
                           0062C0   726 _OPAMPC	=	0x62c0
                           0062C1   727 _OPAMPS	=	0x62c1
                           0062D0   728 _CMPCTL	=	0x62d0
                           006200   729 _USBADDR	=	0x6200
                           006201   730 _USBPOW	=	0x6201
                           006202   731 _USBIIF	=	0x6202
                           006204   732 _USBOIF	=	0x6204
                           006206   733 _USBCIF	=	0x6206
                           006207   734 _USBIIE	=	0x6207
                           006209   735 _USBOIE	=	0x6209
                           00620B   736 _USBCIE	=	0x620b
                           00620C   737 _USBFRML	=	0x620c
                           00620D   738 _USBFRMH	=	0x620d
                           00620E   739 _USBINDEX	=	0x620e
                           00620F   740 _USBCTRL	=	0x620f
                           006210   741 _USBMAXI	=	0x6210
                           006211   742 _USBCS0	=	0x6211
                           006211   743 _USBCSIL	=	0x6211
                           006212   744 _USBCSIH	=	0x6212
                           006213   745 _USBMAXO	=	0x6213
                           006214   746 _USBCSOL	=	0x6214
                           006215   747 _USBCSOH	=	0x6215
                           006216   748 _USBCNT0	=	0x6216
                           006216   749 _USBCNTL	=	0x6216
                           006217   750 _USBCNTH	=	0x6217
                           006220   751 _USBF0	=	0x6220
                           006222   752 _USBF1	=	0x6222
                           006224   753 _USBF2	=	0x6224
                           006226   754 _USBF3	=	0x6226
                           006228   755 _USBF4	=	0x6228
                           00622A   756 _USBF5	=	0x622a
                           006174   757 _SHORTADDRH	=	0x6174
                           006175   758 _SHORTADDRL	=	0x6175
                           006172   759 _PANIDH	=	0x6172
                           006173   760 _PANIDL	=	0x6173
                           00616A   761 _IEEE_ADDR	=	0x616a
                           006180   762 _FRMFILT0	=	0x6180
                           006181   763 _FRMFILT1	=	0x6181
                           006182   764 _SRCMATCH	=	0x6182
                           006183   765 _SRCSHORTEN0	=	0x6183
                           006184   766 _SRCSHORTEN1	=	0x6184
                           006185   767 _SRCSHORTEN2	=	0x6185
                           006186   768 _SRCEXTEN0	=	0x6186
                           006187   769 _SRCEXTEN1	=	0x6187
                           006188   770 _SRCEXTEN2	=	0x6188
                           006189   771 _FRMCTRL0	=	0x6189
                           00618A   772 _FRMCTRL1	=	0x618a
                           00618B   773 _RXENABLE	=	0x618b
                           00618C   774 _RXMASKSET	=	0x618c
                           00618D   775 _RXMASKCLR	=	0x618d
                           00618E   776 _FREQTUNE	=	0x618e
                           00618F   777 _FREQCTRL	=	0x618f
                           006190   778 _TXPOWER	=	0x6190
                           006191   779 _TXCTRL	=	0x6191
                           006192   780 _FSMSTAT0	=	0x6192
                           006193   781 _FSMSTAT1	=	0x6193
                           006194   782 _FIFOPCTRL	=	0x6194
                           006195   783 _FSMCTRL	=	0x6195
                           006196   784 _CCACTRL0	=	0x6196
                           006197   785 _CCACTRL1	=	0x6197
                           006198   786 _RSSI	=	0x6198
                           006199   787 _RSSISTAT	=	0x6199
                           00619A   788 _RXFIRST	=	0x619a
                           00619B   789 _RXFIFOCNT	=	0x619b
                           00619C   790 _TXFIFOCNT	=	0x619c
                           00619D   791 _RXFIRST_PTR	=	0x619d
                           00619E   792 _RXLAST_PTR	=	0x619e
                           00619F   793 _RXP1_PTR	=	0x619f
                           0061A1   794 _TXFIRST_PTR	=	0x61a1
                           0061A2   795 _TXLAST_PTR	=	0x61a2
                           0061A3   796 _RFIRQM0	=	0x61a3
                           0061A4   797 _RFIRQM1	=	0x61a4
                           0061A5   798 _RFERRM	=	0x61a5
                           0061A6   799 _OPAMPMC	=	0x61a6
                           0061A7   800 _RFRND	=	0x61a7
                           0061A8   801 _MDMCTRL0	=	0x61a8
                           0061A9   802 _MDMCTRL1	=	0x61a9
                           0061AA   803 _FREQEST	=	0x61aa
                           0061AB   804 _RXCTRL	=	0x61ab
                           0061AC   805 _FSCTRL	=	0x61ac
                           0061AE   806 _FSCAL1	=	0x61ae
                           0061AF   807 _FSCAL2	=	0x61af
                           0061B0   808 _FSCAL3	=	0x61b0
                           0061B1   809 _AGCCTRL0	=	0x61b1
                           0061B2   810 _AGCCTRL1	=	0x61b2
                           0061B3   811 _AGCCTRL2	=	0x61b3
                           0061B4   812 _AGCCTRL3	=	0x61b4
                           0061B5   813 _ADCTEST0	=	0x61b5
                           0061B6   814 _ADCTEST1	=	0x61b6
                           0061B7   815 _ADCTEST2	=	0x61b7
                           0061B8   816 _MDMTEST0	=	0x61b8
                           0061B9   817 _MDMTEST1	=	0x61b9
                           0061BA   818 _DACTEST0	=	0x61ba
                           0061BB   819 _DACTEST1	=	0x61bb
                           0061BC   820 _DACTEST2	=	0x61bc
                           0061BD   821 _ATEST	=	0x61bd
                           0061BE   822 _PTEST0	=	0x61be
                           0061BF   823 _PTEST1	=	0x61bf
                           0061C0   824 _CSPPROG0	=	0x61c0
                           0061C1   825 _CSPPROG1	=	0x61c1
                           0061C2   826 _CSPPROG2	=	0x61c2
                           0061C3   827 _CSPPROG3	=	0x61c3
                           0061C4   828 _CSPPROG4	=	0x61c4
                           0061C5   829 _CSPPROG5	=	0x61c5
                           0061C6   830 _CSPPROG6	=	0x61c6
                           0061C7   831 _CSPPROG7	=	0x61c7
                           0061C8   832 _CSPPROG8	=	0x61c8
                           0061C9   833 _CSPPROG9	=	0x61c9
                           0061CA   834 _CSPPROG10	=	0x61ca
                           0061CB   835 _CSPPROG11	=	0x61cb
                           0061CC   836 _CSPPROG12	=	0x61cc
                           0061CD   837 _CSPPROG13	=	0x61cd
                           0061CE   838 _CSPPROG14	=	0x61ce
                           0061CF   839 _CSPPROG15	=	0x61cf
                           0061D0   840 _CSPPROG16	=	0x61d0
                           0061D1   841 _CSPPROG17	=	0x61d1
                           0061D2   842 _CSPPROG18	=	0x61d2
                           0061D3   843 _CSPPROG19	=	0x61d3
                           0061D4   844 _CSPPROG20	=	0x61d4
                           0061D5   845 _CSPPROG21	=	0x61d5
                           0061D6   846 _CSPPROG22	=	0x61d6
                           0061D7   847 _CSPPROG23	=	0x61d7
                           0061E0   848 _CSPCTRL	=	0x61e0
                           0061E1   849 _CSPSTAT	=	0x61e1
                           0061E2   850 _CSPX	=	0x61e2
                           0061E3   851 _CSPY	=	0x61e3
                           0061E4   852 _CSPZ	=	0x61e4
                           0061E5   853 _CSPT	=	0x61e5
                           0061EB   854 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   855 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   856 _RFC_OBS_CTRL2	=	0x61ed
                           0061FA   857 _TXFILTCFG	=	0x61fa
      001221                        858 _TaskID:
      001221                        859 	.ds 1
      001222                        860 _flag:
      001222                        861 	.ds 1
      001223                        862 _i:
      001223                        863 	.ds 1
      001224                        864 _Task2_Init_task_id_1_70:
      001224                        865 	.ds 1
      001225                        866 _performPeriodicTask_sloc0_1_0:
      001225                        867 	.ds 1
                                    868 ;--------------------------------------------------------
                                    869 ; absolute external ram data
                                    870 ;--------------------------------------------------------
                                    871 	.area XABS    (ABS,XDATA)
                                    872 ;--------------------------------------------------------
                                    873 ; external initialized ram data
                                    874 ;--------------------------------------------------------
                                    875 	.area HOME    (CODE)
                                    876 	.area GSINIT0 (CODE)
                                    877 	.area GSINIT1 (CODE)
                                    878 	.area GSINIT2 (CODE)
                                    879 	.area GSINIT3 (CODE)
                                    880 	.area GSINIT4 (CODE)
                                    881 	.area GSINIT5 (CODE)
                                    882 	.area GSINIT  (CODE)
                                    883 	.area GSFINAL (CODE)
                                    884 	.area CSEG    (CODE)
                                    885 ;--------------------------------------------------------
                                    886 ; global & static initialisations
                                    887 ;--------------------------------------------------------
                                    888 	.area HOME    (CODE)
                                    889 	.area GSINIT  (CODE)
                                    890 	.area GSFINAL (CODE)
                                    891 	.area GSINIT  (CODE)
                                    892 ;	./Source/task2.c:14: static bool flag=false;
      0003CF 90 12 22         [24]  893 	mov	dptr,#_flag
      0003D2 74 00            [12]  894 	mov	a,#0x00
      0003D4 F0               [24]  895 	movx	@dptr,a
                                    896 ;	./Source/task2.c:16: static uint8 i=0;
      0003D5 90 12 23         [24]  897 	mov	dptr,#_i
      0003D8 F0               [24]  898 	movx	@dptr,a
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
                                    909 ;Allocation info for local variables in function 'Task2_Init'
                                    910 ;------------------------------------------------------------
                                    911 ;task_id                   Allocated with name '_Task2_Init_task_id_1_70'
                                    912 ;------------------------------------------------------------
                                    913 ;	./Source/task2.c:19: void Task2_Init(uint8 task_id) {
                                    914 ;	-----------------------------------------
                                    915 ;	 function Task2_Init
                                    916 ;	-----------------------------------------
      00553E                        917 _Task2_Init:
                           000007   918 	ar7 = 0x07
                           000006   919 	ar6 = 0x06
                           000005   920 	ar5 = 0x05
                           000004   921 	ar4 = 0x04
                           000003   922 	ar3 = 0x03
                           000002   923 	ar2 = 0x02
                           000001   924 	ar1 = 0x01
                           000000   925 	ar0 = 0x00
      00553E E5 82            [12]  926 	mov	a,dpl
      005540 90 12 24         [24]  927 	mov	dptr,#_Task2_Init_task_id_1_70
      005543 F0               [24]  928 	movx	@dptr,a
                                    929 ;	./Source/task2.c:23: TaskID=task_id;
      005544 E0               [24]  930 	movx	a,@dptr
      005545 FF               [12]  931 	mov	r7,a
      005546 90 12 21         [24]  932 	mov	dptr,#_TaskID
      005549 EF               [12]  933 	mov	a,r7
      00554A F0               [24]  934 	movx	@dptr,a
                                    935 ;	./Source/task2.c:28: osal_set_event( TaskID, T2_start );
      00554B 90 03 C6         [24]  936 	mov	dptr,#_osal_set_event_PARM_2
      00554E 74 01            [12]  937 	mov	a,#0x01
      005550 F0               [24]  938 	movx	@dptr,a
      005551 74 00            [12]  939 	mov	a,#0x00
      005553 A3               [24]  940 	inc	dptr
      005554 F0               [24]  941 	movx	@dptr,a
      005555 8F 82            [24]  942 	mov	dpl,r7
      005557 12 19 84         [24]  943 	lcall	_osal_set_event
      00555A                        944 00101$:
      00555A 22               [24]  945 	ret
                                    946 ;------------------------------------------------------------
                                    947 ;Allocation info for local variables in function 'Task2_ProcessEvent'
                                    948 ;------------------------------------------------------------
                                    949 ;events                    Allocated to stack - _bp -4
                                    950 ;task_id                   Allocated to registers 
                                    951 ;------------------------------------------------------------
                                    952 ;	./Source/task2.c:40: uint16 Task2_ProcessEvent( uint8 task_id, uint16 events ) __reentrant{
                                    953 ;	-----------------------------------------
                                    954 ;	 function Task2_ProcessEvent
                                    955 ;	-----------------------------------------
      00555B                        956 _Task2_ProcessEvent:
      00555B C0 1D            [24]  957 	push	_bp
      00555D 85 81 1D         [24]  958 	mov	_bp,sp
                                    959 ;	./Source/task2.c:45: if ( events & T2_start ){
      005560 E5 1D            [12]  960 	mov	a,_bp
      005562 24 FC            [12]  961 	add	a,#0xfc
      005564 F8               [12]  962 	mov	r0,a
      005565 E6               [12]  963 	mov	a,@r0
      005566 20 E0 03         [24]  964 	jb	acc.0,00115$
      005569 02 55 A1         [24]  965 	ljmp	00102$
      00556C                        966 00115$:
                                    967 ;	./Source/task2.c:51: osal_start_timerEx( TaskID, T2_PERIODIC_EVT, T2_PERIODIC_EVT_PERIOD );
      00556C 90 12 21         [24]  968 	mov	dptr,#_TaskID
      00556F E0               [24]  969 	movx	a,@dptr
      005570 FF               [12]  970 	mov	r7,a
      005571 90 10 38         [24]  971 	mov	dptr,#_osal_start_timerEx_PARM_2
      005574 74 02            [12]  972 	mov	a,#0x02
      005576 F0               [24]  973 	movx	@dptr,a
      005577 74 00            [12]  974 	mov	a,#0x00
      005579 A3               [24]  975 	inc	dptr
      00557A F0               [24]  976 	movx	@dptr,a
      00557B 90 10 3A         [24]  977 	mov	dptr,#_osal_start_timerEx_PARM_3
      00557E 74 64            [12]  978 	mov	a,#0x64
      005580 F0               [24]  979 	movx	@dptr,a
      005581 74 00            [12]  980 	mov	a,#0x00
      005583 A3               [24]  981 	inc	dptr
      005584 F0               [24]  982 	movx	@dptr,a
      005585 A3               [24]  983 	inc	dptr
      005586 F0               [24]  984 	movx	@dptr,a
      005587 A3               [24]  985 	inc	dptr
      005588 F0               [24]  986 	movx	@dptr,a
      005589 8F 82            [24]  987 	mov	dpl,r7
      00558B 12 27 00         [24]  988 	lcall	_osal_start_timerEx
                                    989 ;	./Source/task2.c:56: return ( events ^ T2_start );
      00558E E5 1D            [12]  990 	mov	a,_bp
      005590 24 FC            [12]  991 	add	a,#0xfc
      005592 F8               [12]  992 	mov	r0,a
      005593 74 01            [12]  993 	mov	a,#0x01
      005595 66               [12]  994 	xrl	a,@r0
      005596 FE               [12]  995 	mov	r6,a
      005597 08               [12]  996 	inc	r0
      005598 86 07            [24]  997 	mov	ar7,@r0
      00559A 8E 82            [24]  998 	mov	dpl,r6
      00559C 8F 83            [24]  999 	mov	dph,r7
      00559E 02 55 EB         [24] 1000 	ljmp	00107$
      0055A1                       1001 00102$:
                                   1002 ;	./Source/task2.c:60: if( events & T2_PERIODIC_EVT ){
      0055A1 E5 1D            [12] 1003 	mov	a,_bp
      0055A3 24 FC            [12] 1004 	add	a,#0xfc
      0055A5 F8               [12] 1005 	mov	r0,a
      0055A6 E6               [12] 1006 	mov	a,@r0
      0055A7 20 E1 03         [24] 1007 	jb	acc.1,00116$
      0055AA 02 55 E5         [24] 1008 	ljmp	00106$
      0055AD                       1009 00116$:
                                   1010 ;	./Source/task2.c:68: osal_start_timerEx( TaskID, T2_PERIODIC_EVT, T2_PERIODIC_EVT_PERIOD );
      0055AD 90 12 21         [24] 1011 	mov	dptr,#_TaskID
      0055B0 E0               [24] 1012 	movx	a,@dptr
      0055B1 FF               [12] 1013 	mov	r7,a
      0055B2 90 10 38         [24] 1014 	mov	dptr,#_osal_start_timerEx_PARM_2
      0055B5 74 02            [12] 1015 	mov	a,#0x02
      0055B7 F0               [24] 1016 	movx	@dptr,a
      0055B8 74 00            [12] 1017 	mov	a,#0x00
      0055BA A3               [24] 1018 	inc	dptr
      0055BB F0               [24] 1019 	movx	@dptr,a
      0055BC 90 10 3A         [24] 1020 	mov	dptr,#_osal_start_timerEx_PARM_3
      0055BF 74 64            [12] 1021 	mov	a,#0x64
      0055C1 F0               [24] 1022 	movx	@dptr,a
      0055C2 74 00            [12] 1023 	mov	a,#0x00
      0055C4 A3               [24] 1024 	inc	dptr
      0055C5 F0               [24] 1025 	movx	@dptr,a
      0055C6 A3               [24] 1026 	inc	dptr
      0055C7 F0               [24] 1027 	movx	@dptr,a
      0055C8 A3               [24] 1028 	inc	dptr
      0055C9 F0               [24] 1029 	movx	@dptr,a
      0055CA 8F 82            [24] 1030 	mov	dpl,r7
      0055CC 12 27 00         [24] 1031 	lcall	_osal_start_timerEx
                                   1032 ;	./Source/task2.c:73: performPeriodicTask();
      0055CF 12 55 EE         [24] 1033 	lcall	_performPeriodicTask
                                   1034 ;	./Source/task2.c:78: return( events ^ T2_PERIODIC_EVT);
      0055D2 E5 1D            [12] 1035 	mov	a,_bp
      0055D4 24 FC            [12] 1036 	add	a,#0xfc
      0055D6 F8               [12] 1037 	mov	r0,a
      0055D7 74 02            [12] 1038 	mov	a,#0x02
      0055D9 66               [12] 1039 	xrl	a,@r0
      0055DA FE               [12] 1040 	mov	r6,a
      0055DB 08               [12] 1041 	inc	r0
      0055DC 86 07            [24] 1042 	mov	ar7,@r0
      0055DE 8E 82            [24] 1043 	mov	dpl,r6
      0055E0 8F 83            [24] 1044 	mov	dph,r7
      0055E2 02 55 EB         [24] 1045 	ljmp	00107$
      0055E5                       1046 00106$:
                                   1047 ;	./Source/task2.c:86: return 0;
      0055E5 75 82 00         [24] 1048 	mov	dpl,#0x00
      0055E8 75 83 00         [24] 1049 	mov	dph,#0x00
      0055EB                       1050 00107$:
      0055EB D0 1D            [24] 1051 	pop	_bp
      0055ED 22               [24] 1052 	ret
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'performPeriodicTask'
                                   1055 ;------------------------------------------------------------
                                   1056 ;sloc0                     Allocated with name '_performPeriodicTask_sloc0_1_0'
                                   1057 ;------------------------------------------------------------
                                   1058 ;	./Source/task2.c:94: static void performPeriodicTask( void ){
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function performPeriodicTask
                                   1061 ;	-----------------------------------------
      0055EE                       1062 _performPeriodicTask:
                                   1063 ;	./Source/task2.c:103: P2=P1;
      0055EE 85 90 A0         [24] 1064 	mov	_P2,_P1
                                   1065 ;	./Source/task2.c:108: if(flag==true){
      0055F1 90 12 22         [24] 1066 	mov	dptr,#_flag
      0055F4 E0               [24] 1067 	movx	a,@dptr
      0055F5 FF               [12] 1068 	mov	r7,a
      0055F6 BF 01 02         [24] 1069 	cjne	r7,#0x01,00109$
      0055F9 80 03            [24] 1070 	sjmp	00110$
      0055FB                       1071 00109$:
      0055FB 02 56 37         [24] 1072 	ljmp	00102$
      0055FE                       1073 00110$:
                                   1074 ;	./Source/task2.c:110: flag=false;
      0055FE 90 12 22         [24] 1075 	mov	dptr,#_flag
      005601 74 00            [12] 1076 	mov	a,#0x00
      005603 F0               [24] 1077 	movx	@dptr,a
                                   1078 ;	./Source/task2.c:111: P0_1|=0x01;
      005604 90 12 25         [24] 1079 	mov	dptr,#_performPeriodicTask_sloc0_1_0
      005607 04               [12] 1080 	inc	a
      005608 F0               [24] 1081 	movx	@dptr,a
      005609 A2 81            [12] 1082 	mov	c,_P0_1
      00560B 90 12 25         [24] 1083 	mov	dptr,#_performPeriodicTask_sloc0_1_0
      00560E E0               [24] 1084 	movx	a,@dptr
      00560F 24 FF            [12] 1085 	add	a,#0xff
      005611 92 81            [24] 1086 	mov	_P0_1,c
                                   1087 ;	./Source/task2.c:112: i++;
      005613 90 12 23         [24] 1088 	mov	dptr,#_i
      005616 E0               [24] 1089 	movx	a,@dptr
      005617 24 01            [12] 1090 	add	a,#0x01
      005619 F0               [24] 1091 	movx	@dptr,a
                                   1092 ;	./Source/task2.c:113: BX_SetParameter(BX_CHAR1,sizeof(uint8),&i);
      00561A 90 11 C5         [24] 1093 	mov	dptr,#_BX_SetParameter_PARM_2
      00561D 74 01            [12] 1094 	mov	a,#0x01
      00561F F0               [24] 1095 	movx	@dptr,a
      005620 90 11 C6         [24] 1096 	mov	dptr,#_BX_SetParameter_PARM_3
      005623 74 23            [12] 1097 	mov	a,#_i
      005625 F0               [24] 1098 	movx	@dptr,a
      005626 74 12            [12] 1099 	mov	a,#(_i >> 8)
      005628 A3               [24] 1100 	inc	dptr
      005629 F0               [24] 1101 	movx	@dptr,a
      00562A 74 00            [12] 1102 	mov	a,#0x00
      00562C A3               [24] 1103 	inc	dptr
      00562D F0               [24] 1104 	movx	@dptr,a
      00562E 75 82 00         [24] 1105 	mov	dpl,#0x00
      005631 12 49 B6         [24] 1106 	lcall	_BX_SetParameter
      005634 02 56 4D         [24] 1107 	ljmp	00104$
      005637                       1108 00102$:
                                   1109 ;	./Source/task2.c:123: flag=true;
      005637 90 12 22         [24] 1110 	mov	dptr,#_flag
      00563A 74 01            [12] 1111 	mov	a,#0x01
      00563C F0               [24] 1112 	movx	@dptr,a
                                   1113 ;	./Source/task2.c:124: P0_1&=~0x01;
      00563D 90 12 25         [24] 1114 	mov	dptr,#_performPeriodicTask_sloc0_1_0
      005640 74 00            [12] 1115 	mov	a,#0x00
      005642 F0               [24] 1116 	movx	@dptr,a
      005643 A2 81            [12] 1117 	mov	c,_P0_1
      005645 90 12 25         [24] 1118 	mov	dptr,#_performPeriodicTask_sloc0_1_0
      005648 E0               [24] 1119 	movx	a,@dptr
      005649 24 FF            [12] 1120 	add	a,#0xff
      00564B 92 81            [24] 1121 	mov	_P0_1,c
      00564D                       1122 00104$:
      00564D 22               [24] 1123 	ret
                                   1124 	.area CSEG    (CODE)
                                   1125 	.area CONST   (CODE)
                                   1126 	.area CABS    (ABS,CODE)
