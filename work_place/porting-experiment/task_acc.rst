                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module task_acc
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _BX_SetParameter
                                     13 	.globl _uartWriteU16
                                     14 	.globl _uartWriteString
                                     15 	.globl _uartInit
                                     16 	.globl _osal_set_event
                                     17 	.globl _osal_start_timerEx
                                     18 	.globl _accInit
                                     19 	.globl _accRead
                                     20 	.globl _spiInit
                                     21 	.globl _MODE
                                     22 	.globl _RE
                                     23 	.globl _SLAVE
                                     24 	.globl _FE
                                     25 	.globl _ERR
                                     26 	.globl _RX_BYTE
                                     27 	.globl _TX_BYTE
                                     28 	.globl _ACTIVE
                                     29 	.globl _B_7
                                     30 	.globl _B_6
                                     31 	.globl _B_5
                                     32 	.globl _B_4
                                     33 	.globl _B_3
                                     34 	.globl _B_2
                                     35 	.globl _B_1
                                     36 	.globl _B_0
                                     37 	.globl _WDTIF
                                     38 	.globl _P1IF
                                     39 	.globl _UTX1IF
                                     40 	.globl _UTX0IF
                                     41 	.globl _P2IF
                                     42 	.globl _ACC_7
                                     43 	.globl _ACC_6
                                     44 	.globl _ACC_5
                                     45 	.globl _ACC_4
                                     46 	.globl _ACC_3
                                     47 	.globl _ACC_2
                                     48 	.globl _ACC_1
                                     49 	.globl _ACC_0
                                     50 	.globl _OVFIM
                                     51 	.globl _T4CH1IF
                                     52 	.globl _T4CH0IF
                                     53 	.globl _T4OVFIF
                                     54 	.globl _T3CH1IF
                                     55 	.globl _T3CH0IF
                                     56 	.globl _T3OVFIF
                                     57 	.globl _CY
                                     58 	.globl _AC
                                     59 	.globl _F0
                                     60 	.globl _RS1
                                     61 	.globl _RS0
                                     62 	.globl _OV
                                     63 	.globl _F1
                                     64 	.globl _P
                                     65 	.globl _STIF
                                     66 	.globl _P0IF
                                     67 	.globl _T4IF
                                     68 	.globl _T3IF
                                     69 	.globl _T2IF
                                     70 	.globl _T1IF
                                     71 	.globl _DMAIF
                                     72 	.globl _P0IE
                                     73 	.globl _T4IE
                                     74 	.globl _T3IE
                                     75 	.globl _T2IE
                                     76 	.globl _T1IE
                                     77 	.globl _DMAIE
                                     78 	.globl _EA
                                     79 	.globl _STIE
                                     80 	.globl _ENCIE
                                     81 	.globl _URX1IE
                                     82 	.globl _URX0IE
                                     83 	.globl _ADCIE
                                     84 	.globl _RFERRIE
                                     85 	.globl _P2_7
                                     86 	.globl _P2_6
                                     87 	.globl _P2_5
                                     88 	.globl _P2_4
                                     89 	.globl _P2_3
                                     90 	.globl _P2_2
                                     91 	.globl _P2_1
                                     92 	.globl _P2_0
                                     93 	.globl _ENCIF_1
                                     94 	.globl _ENCIF_0
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _URX1IF
                                    104 	.globl _ADCIF
                                    105 	.globl _URX0IF
                                    106 	.globl _IT1
                                    107 	.globl _RFERRIF
                                    108 	.globl _IT0
                                    109 	.globl _P0_7
                                    110 	.globl _P0_6
                                    111 	.globl _P0_5
                                    112 	.globl _P0_4
                                    113 	.globl _P0_3
                                    114 	.globl _P0_2
                                    115 	.globl _P0_1
                                    116 	.globl _P0_0
                                    117 	.globl _P2DIR
                                    118 	.globl _P1DIR
                                    119 	.globl _P0DIR
                                    120 	.globl _U1GCR
                                    121 	.globl _U1UCR
                                    122 	.globl _U1BAUD
                                    123 	.globl _U1DBUF
                                    124 	.globl _U1CSR
                                    125 	.globl _P2INP
                                    126 	.globl _P1INP
                                    127 	.globl _P2SEL
                                    128 	.globl _P1SEL
                                    129 	.globl _P0SEL
                                    130 	.globl _APCFG
                                    131 	.globl _PERCFG
                                    132 	.globl _B
                                    133 	.globl _T4CC1
                                    134 	.globl _T4CCTL1
                                    135 	.globl _T4CC0
                                    136 	.globl _T4CCTL0
                                    137 	.globl _T4CTL
                                    138 	.globl _T4CNT
                                    139 	.globl _RFIRQF0
                                    140 	.globl _IRCON2
                                    141 	.globl _T1CCTL2
                                    142 	.globl _T1CCTL1
                                    143 	.globl _T1CCTL0
                                    144 	.globl _T1CTL
                                    145 	.globl _T1CNTH
                                    146 	.globl _T1CNTL
                                    147 	.globl _RFST
                                    148 	.globl _ACC
                                    149 	.globl _T1CC2H
                                    150 	.globl _T1CC2L
                                    151 	.globl _T1CC1H
                                    152 	.globl _T1CC1L
                                    153 	.globl _T1CC0H
                                    154 	.globl _T1CC0L
                                    155 	.globl _RFD
                                    156 	.globl _TIMIF
                                    157 	.globl _DMAREQ
                                    158 	.globl _DMAARM
                                    159 	.globl _DMA0CFGH
                                    160 	.globl _DMA0CFGL
                                    161 	.globl _DMA1CFGH
                                    162 	.globl _DMA1CFGL
                                    163 	.globl _DMAIRQ
                                    164 	.globl _PSW
                                    165 	.globl _T3CC1
                                    166 	.globl _T3CCTL1
                                    167 	.globl _T3CC0
                                    168 	.globl _T3CCTL0
                                    169 	.globl _T3CTL
                                    170 	.globl _T3CNT
                                    171 	.globl _WDCTL
                                    172 	.globl _MEMCTR
                                    173 	.globl _CLKCONCMD
                                    174 	.globl _U0GCR
                                    175 	.globl _U0UCR
                                    176 	.globl _T2MSEL
                                    177 	.globl _U0BAUD
                                    178 	.globl _U0DBUF
                                    179 	.globl _IRCON
                                    180 	.globl _RFERRF
                                    181 	.globl _SLEEPCMD
                                    182 	.globl _RNDH
                                    183 	.globl _RNDL
                                    184 	.globl _ADCH
                                    185 	.globl _ADCL
                                    186 	.globl _IP1
                                    187 	.globl _IEN1
                                    188 	.globl _ADCCON3
                                    189 	.globl _ADCCON2
                                    190 	.globl _ADCCON1
                                    191 	.globl _ENCCS
                                    192 	.globl _ENCDO
                                    193 	.globl _ENCDI
                                    194 	.globl _T1STAT
                                    195 	.globl _PMUX
                                    196 	.globl _STLOAD
                                    197 	.globl _P2IEN
                                    198 	.globl _P0IEN
                                    199 	.globl _IP0
                                    200 	.globl _IEN0
                                    201 	.globl _T2IRQM
                                    202 	.globl _T2MOVF2
                                    203 	.globl _T2MOVF1
                                    204 	.globl _T2MOVF0
                                    205 	.globl _T2M1
                                    206 	.globl _T2M0
                                    207 	.globl _T2IRQF
                                    208 	.globl _P2
                                    209 	.globl _FMAP
                                    210 	.globl _PSBANK
                                    211 	.globl _CLKCONSTA
                                    212 	.globl _SLEEPSTA
                                    213 	.globl _T2EVTCFG
                                    214 	.globl _S1CON
                                    215 	.globl _IEN2
                                    216 	.globl _S0CON
                                    217 	.globl _ST2
                                    218 	.globl _ST1
                                    219 	.globl _ST0
                                    220 	.globl _T2CTRL
                                    221 	.globl __XPAGE
                                    222 	.globl _MPAGE
                                    223 	.globl _DPS
                                    224 	.globl _RFIRQF1
                                    225 	.globl _P1
                                    226 	.globl _P0INP
                                    227 	.globl _P1IEN
                                    228 	.globl _PICTL
                                    229 	.globl _P2IFG
                                    230 	.globl _P1IFG
                                    231 	.globl _P0IFG
                                    232 	.globl _TCON
                                    233 	.globl _PCON
                                    234 	.globl _U0CSR
                                    235 	.globl _DPH1
                                    236 	.globl _DPL1
                                    237 	.globl _DPH0
                                    238 	.globl _DPL0
                                    239 	.globl _SP
                                    240 	.globl _P0
                                    241 	.globl _pre_sym
                                    242 	.globl _c_frequency
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
                                    422 	.globl _ACC_Init
                                    423 	.globl _ACC_ProcessEvent
                                    424 	.globl _counter
                                    425 ;--------------------------------------------------------
                                    426 ; special function registers
                                    427 ;--------------------------------------------------------
                                    428 	.area RSEG    (ABS,DATA)
      000000                        429 	.org 0x0000
                           000080   430 _P0	=	0x0080
                           000081   431 _SP	=	0x0081
                           000082   432 _DPL0	=	0x0082
                           000083   433 _DPH0	=	0x0083
                           000084   434 _DPL1	=	0x0084
                           000085   435 _DPH1	=	0x0085
                           000086   436 _U0CSR	=	0x0086
                           000087   437 _PCON	=	0x0087
                           000088   438 _TCON	=	0x0088
                           000089   439 _P0IFG	=	0x0089
                           00008A   440 _P1IFG	=	0x008a
                           00008B   441 _P2IFG	=	0x008b
                           00008C   442 _PICTL	=	0x008c
                           00008D   443 _P1IEN	=	0x008d
                           00008F   444 _P0INP	=	0x008f
                           000090   445 _P1	=	0x0090
                           000091   446 _RFIRQF1	=	0x0091
                           000092   447 _DPS	=	0x0092
                           000093   448 _MPAGE	=	0x0093
                           000093   449 __XPAGE	=	0x0093
                           000094   450 _T2CTRL	=	0x0094
                           000095   451 _ST0	=	0x0095
                           000096   452 _ST1	=	0x0096
                           000097   453 _ST2	=	0x0097
                           000098   454 _S0CON	=	0x0098
                           00009A   455 _IEN2	=	0x009a
                           00009B   456 _S1CON	=	0x009b
                           00009C   457 _T2EVTCFG	=	0x009c
                           00009D   458 _SLEEPSTA	=	0x009d
                           00009E   459 _CLKCONSTA	=	0x009e
                           00009F   460 _PSBANK	=	0x009f
                           00009F   461 _FMAP	=	0x009f
                           0000A0   462 _P2	=	0x00a0
                           0000A1   463 _T2IRQF	=	0x00a1
                           0000A2   464 _T2M0	=	0x00a2
                           0000A3   465 _T2M1	=	0x00a3
                           0000A4   466 _T2MOVF0	=	0x00a4
                           0000A5   467 _T2MOVF1	=	0x00a5
                           0000A6   468 _T2MOVF2	=	0x00a6
                           0000A7   469 _T2IRQM	=	0x00a7
                           0000A8   470 _IEN0	=	0x00a8
                           0000A9   471 _IP0	=	0x00a9
                           0000AB   472 _P0IEN	=	0x00ab
                           0000AC   473 _P2IEN	=	0x00ac
                           0000AD   474 _STLOAD	=	0x00ad
                           0000AE   475 _PMUX	=	0x00ae
                           0000AF   476 _T1STAT	=	0x00af
                           0000B1   477 _ENCDI	=	0x00b1
                           0000B2   478 _ENCDO	=	0x00b2
                           0000B3   479 _ENCCS	=	0x00b3
                           0000B4   480 _ADCCON1	=	0x00b4
                           0000B5   481 _ADCCON2	=	0x00b5
                           0000B6   482 _ADCCON3	=	0x00b6
                           0000B8   483 _IEN1	=	0x00b8
                           0000B9   484 _IP1	=	0x00b9
                           0000BA   485 _ADCL	=	0x00ba
                           0000BB   486 _ADCH	=	0x00bb
                           0000BC   487 _RNDL	=	0x00bc
                           0000BD   488 _RNDH	=	0x00bd
                           0000BE   489 _SLEEPCMD	=	0x00be
                           0000BF   490 _RFERRF	=	0x00bf
                           0000C0   491 _IRCON	=	0x00c0
                           0000C1   492 _U0DBUF	=	0x00c1
                           0000C2   493 _U0BAUD	=	0x00c2
                           0000C3   494 _T2MSEL	=	0x00c3
                           0000C4   495 _U0UCR	=	0x00c4
                           0000C5   496 _U0GCR	=	0x00c5
                           0000C6   497 _CLKCONCMD	=	0x00c6
                           0000C7   498 _MEMCTR	=	0x00c7
                           0000C9   499 _WDCTL	=	0x00c9
                           0000CA   500 _T3CNT	=	0x00ca
                           0000CB   501 _T3CTL	=	0x00cb
                           0000CC   502 _T3CCTL0	=	0x00cc
                           0000CD   503 _T3CC0	=	0x00cd
                           0000CE   504 _T3CCTL1	=	0x00ce
                           0000CF   505 _T3CC1	=	0x00cf
                           0000D0   506 _PSW	=	0x00d0
                           0000D1   507 _DMAIRQ	=	0x00d1
                           0000D2   508 _DMA1CFGL	=	0x00d2
                           0000D3   509 _DMA1CFGH	=	0x00d3
                           0000D4   510 _DMA0CFGL	=	0x00d4
                           0000D5   511 _DMA0CFGH	=	0x00d5
                           0000D6   512 _DMAARM	=	0x00d6
                           0000D7   513 _DMAREQ	=	0x00d7
                           0000D8   514 _TIMIF	=	0x00d8
                           0000D9   515 _RFD	=	0x00d9
                           0000DA   516 _T1CC0L	=	0x00da
                           0000DB   517 _T1CC0H	=	0x00db
                           0000DC   518 _T1CC1L	=	0x00dc
                           0000DD   519 _T1CC1H	=	0x00dd
                           0000DE   520 _T1CC2L	=	0x00de
                           0000DF   521 _T1CC2H	=	0x00df
                           0000E0   522 _ACC	=	0x00e0
                           0000E1   523 _RFST	=	0x00e1
                           0000E2   524 _T1CNTL	=	0x00e2
                           0000E3   525 _T1CNTH	=	0x00e3
                           0000E4   526 _T1CTL	=	0x00e4
                           0000E5   527 _T1CCTL0	=	0x00e5
                           0000E6   528 _T1CCTL1	=	0x00e6
                           0000E7   529 _T1CCTL2	=	0x00e7
                           0000E8   530 _IRCON2	=	0x00e8
                           0000E9   531 _RFIRQF0	=	0x00e9
                           0000EA   532 _T4CNT	=	0x00ea
                           0000EB   533 _T4CTL	=	0x00eb
                           0000EC   534 _T4CCTL0	=	0x00ec
                           0000ED   535 _T4CC0	=	0x00ed
                           0000EE   536 _T4CCTL1	=	0x00ee
                           0000EF   537 _T4CC1	=	0x00ef
                           0000F0   538 _B	=	0x00f0
                           0000F1   539 _PERCFG	=	0x00f1
                           0000F2   540 _APCFG	=	0x00f2
                           0000F3   541 _P0SEL	=	0x00f3
                           0000F4   542 _P1SEL	=	0x00f4
                           0000F5   543 _P2SEL	=	0x00f5
                           0000F6   544 _P1INP	=	0x00f6
                           0000F7   545 _P2INP	=	0x00f7
                           0000F8   546 _U1CSR	=	0x00f8
                           0000F9   547 _U1DBUF	=	0x00f9
                           0000FA   548 _U1BAUD	=	0x00fa
                           0000FB   549 _U1UCR	=	0x00fb
                           0000FC   550 _U1GCR	=	0x00fc
                           0000FD   551 _P0DIR	=	0x00fd
                           0000FE   552 _P1DIR	=	0x00fe
                           0000FF   553 _P2DIR	=	0x00ff
                                    554 ;--------------------------------------------------------
                                    555 ; special function bits
                                    556 ;--------------------------------------------------------
                                    557 	.area RSEG    (ABS,DATA)
      000000                        558 	.org 0x0000
                           000080   559 _P0_0	=	0x0080
                           000081   560 _P0_1	=	0x0081
                           000082   561 _P0_2	=	0x0082
                           000083   562 _P0_3	=	0x0083
                           000084   563 _P0_4	=	0x0084
                           000085   564 _P0_5	=	0x0085
                           000086   565 _P0_6	=	0x0086
                           000087   566 _P0_7	=	0x0087
                           000088   567 _IT0	=	0x0088
                           000089   568 _RFERRIF	=	0x0089
                           00008A   569 _IT1	=	0x008a
                           00008B   570 _URX0IF	=	0x008b
                           00008D   571 _ADCIF	=	0x008d
                           00008F   572 _URX1IF	=	0x008f
                           000090   573 _P1_0	=	0x0090
                           000091   574 _P1_1	=	0x0091
                           000092   575 _P1_2	=	0x0092
                           000093   576 _P1_3	=	0x0093
                           000094   577 _P1_4	=	0x0094
                           000095   578 _P1_5	=	0x0095
                           000096   579 _P1_6	=	0x0096
                           000097   580 _P1_7	=	0x0097
                           000098   581 _ENCIF_0	=	0x0098
                           000099   582 _ENCIF_1	=	0x0099
                           0000A0   583 _P2_0	=	0x00a0
                           0000A1   584 _P2_1	=	0x00a1
                           0000A2   585 _P2_2	=	0x00a2
                           0000A3   586 _P2_3	=	0x00a3
                           0000A4   587 _P2_4	=	0x00a4
                           0000A5   588 _P2_5	=	0x00a5
                           0000A6   589 _P2_6	=	0x00a6
                           0000A7   590 _P2_7	=	0x00a7
                           0000A8   591 _RFERRIE	=	0x00a8
                           0000A9   592 _ADCIE	=	0x00a9
                           0000AA   593 _URX0IE	=	0x00aa
                           0000AB   594 _URX1IE	=	0x00ab
                           0000AC   595 _ENCIE	=	0x00ac
                           0000AD   596 _STIE	=	0x00ad
                           0000AF   597 _EA	=	0x00af
                           0000B8   598 _DMAIE	=	0x00b8
                           0000B9   599 _T1IE	=	0x00b9
                           0000BA   600 _T2IE	=	0x00ba
                           0000BB   601 _T3IE	=	0x00bb
                           0000BC   602 _T4IE	=	0x00bc
                           0000BD   603 _P0IE	=	0x00bd
                           0000C0   604 _DMAIF	=	0x00c0
                           0000C1   605 _T1IF	=	0x00c1
                           0000C2   606 _T2IF	=	0x00c2
                           0000C3   607 _T3IF	=	0x00c3
                           0000C4   608 _T4IF	=	0x00c4
                           0000C5   609 _P0IF	=	0x00c5
                           0000C7   610 _STIF	=	0x00c7
                           0000D0   611 _P	=	0x00d0
                           0000D1   612 _F1	=	0x00d1
                           0000D2   613 _OV	=	0x00d2
                           0000D3   614 _RS0	=	0x00d3
                           0000D4   615 _RS1	=	0x00d4
                           0000D5   616 _F0	=	0x00d5
                           0000D6   617 _AC	=	0x00d6
                           0000D7   618 _CY	=	0x00d7
                           0000D8   619 _T3OVFIF	=	0x00d8
                           0000D9   620 _T3CH0IF	=	0x00d9
                           0000DA   621 _T3CH1IF	=	0x00da
                           0000DB   622 _T4OVFIF	=	0x00db
                           0000DC   623 _T4CH0IF	=	0x00dc
                           0000DD   624 _T4CH1IF	=	0x00dd
                           0000DE   625 _OVFIM	=	0x00de
                           0000E0   626 _ACC_0	=	0x00e0
                           0000E1   627 _ACC_1	=	0x00e1
                           0000E2   628 _ACC_2	=	0x00e2
                           0000E3   629 _ACC_3	=	0x00e3
                           0000E4   630 _ACC_4	=	0x00e4
                           0000E5   631 _ACC_5	=	0x00e5
                           0000E6   632 _ACC_6	=	0x00e6
                           0000E7   633 _ACC_7	=	0x00e7
                           0000E8   634 _P2IF	=	0x00e8
                           0000E9   635 _UTX0IF	=	0x00e9
                           0000EA   636 _UTX1IF	=	0x00ea
                           0000EB   637 _P1IF	=	0x00eb
                           0000EC   638 _WDTIF	=	0x00ec
                           0000F0   639 _B_0	=	0x00f0
                           0000F1   640 _B_1	=	0x00f1
                           0000F2   641 _B_2	=	0x00f2
                           0000F3   642 _B_3	=	0x00f3
                           0000F4   643 _B_4	=	0x00f4
                           0000F5   644 _B_5	=	0x00f5
                           0000F6   645 _B_6	=	0x00f6
                           0000F7   646 _B_7	=	0x00f7
                           0000F8   647 _ACTIVE	=	0x00f8
                           0000F9   648 _TX_BYTE	=	0x00f9
                           0000FA   649 _RX_BYTE	=	0x00fa
                           0000FB   650 _ERR	=	0x00fb
                           0000FC   651 _FE	=	0x00fc
                           0000FD   652 _SLAVE	=	0x00fd
                           0000FE   653 _RE	=	0x00fe
                           0000FF   654 _MODE	=	0x00ff
                                    655 ;--------------------------------------------------------
                                    656 ; overlayable register banks
                                    657 ;--------------------------------------------------------
                                    658 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        659 	.ds 8
                                    660 ;--------------------------------------------------------
                                    661 ; overlayable bit register bank
                                    662 ;--------------------------------------------------------
                                    663 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        664 bits:
      000021                        665 	.ds 1
                           008000   666 	b0 = bits[0]
                           008100   667 	b1 = bits[1]
                           008200   668 	b2 = bits[2]
                           008300   669 	b3 = bits[3]
                           008400   670 	b4 = bits[4]
                           008500   671 	b5 = bits[5]
                           008600   672 	b6 = bits[6]
                           008700   673 	b7 = bits[7]
                                    674 ;--------------------------------------------------------
                                    675 ; internal ram data
                                    676 ;--------------------------------------------------------
                                    677 	.area DSEG    (DATA)
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
      001204                        881 _ACC_TaskID:
      001204                        882 	.ds 1
      001205                        883 _flag:
      001205                        884 	.ds 1
      001206                        885 _time_stamp:
      001206                        886 	.ds 2
      001208                        887 _ACC_Init_task_id_1_83:
      001208                        888 	.ds 1
      001209                        889 _c_frequency::
      001209                        890 	.ds 2
      00120B                        891 _pre_sym::
      00120B                        892 	.ds 1
      00120C                        893 _sw:
      00120C                        894 	.ds 1
      00120D                        895 _step:
      00120D                        896 	.ds 2
      00120F                        897 _acc_time_stamp_pXVal_1_95:
      00120F                        898 	.ds 1
      001210                        899 _acc_time_stamp_pYVal_1_95:
      001210                        900 	.ds 1
      001211                        901 _acc_time_stamp_pZVal_1_95:
      001211                        902 	.ds 1
                                    903 ;--------------------------------------------------------
                                    904 ; absolute external ram data
                                    905 ;--------------------------------------------------------
                                    906 	.area XABS    (ABS,XDATA)
                                    907 ;--------------------------------------------------------
                                    908 ; external initialized ram data
                                    909 ;--------------------------------------------------------
                                    910 	.area HOME    (CODE)
                                    911 	.area GSINIT0 (CODE)
                                    912 	.area GSINIT1 (CODE)
                                    913 	.area GSINIT2 (CODE)
                                    914 	.area GSINIT3 (CODE)
                                    915 	.area GSINIT4 (CODE)
                                    916 	.area GSINIT5 (CODE)
                                    917 	.area GSINIT  (CODE)
                                    918 	.area GSFINAL (CODE)
                                    919 	.area CSEG    (CODE)
                                    920 ;--------------------------------------------------------
                                    921 ; global & static initialisations
                                    922 ;--------------------------------------------------------
                                    923 	.area HOME    (CODE)
                                    924 	.area GSINIT  (CODE)
                                    925 	.area GSFINAL (CODE)
                                    926 	.area GSINIT  (CODE)
                                    927 ;	./Source/task_acc.c:18: static bool flag=false;
      0003AB 90 12 05         [24]  928 	mov	dptr,#_flag
      0003AE 74 00            [12]  929 	mov	a,#0x00
      0003B0 F0               [24]  930 	movx	@dptr,a
                                    931 ;	./Source/task_acc.c:180: int  c_frequency=0;
      0003B1 90 12 09         [24]  932 	mov	dptr,#_c_frequency
      0003B4 F0               [24]  933 	movx	@dptr,a
      0003B5 A3               [24]  934 	inc	dptr
      0003B6 F0               [24]  935 	movx	@dptr,a
                                    936 ;	./Source/task_acc.c:182: char pre_sym=' ';
      0003B7 90 12 0B         [24]  937 	mov	dptr,#_pre_sym
      0003BA 74 20            [12]  938 	mov	a,#0x20
      0003BC F0               [24]  939 	movx	@dptr,a
                                    940 ;	./Source/task_acc.c:187: static bool sw=false;
      0003BD 90 12 0C         [24]  941 	mov	dptr,#_sw
      0003C0 74 00            [12]  942 	mov	a,#0x00
      0003C2 F0               [24]  943 	movx	@dptr,a
                                    944 ;	./Source/task_acc.c:188: static int step=0;
      0003C3 90 12 0D         [24]  945 	mov	dptr,#_step
      0003C6 F0               [24]  946 	movx	@dptr,a
      0003C7 A3               [24]  947 	inc	dptr
      0003C8 F0               [24]  948 	movx	@dptr,a
                                    949 ;--------------------------------------------------------
                                    950 ; Home
                                    951 ;--------------------------------------------------------
                                    952 	.area HOME    (CODE)
                                    953 	.area HOME    (CODE)
                                    954 ;--------------------------------------------------------
                                    955 ; code
                                    956 ;--------------------------------------------------------
                                    957 	.area CSEG    (CODE)
                                    958 ;------------------------------------------------------------
                                    959 ;Allocation info for local variables in function 'ACC_Init'
                                    960 ;------------------------------------------------------------
                                    961 ;task_id                   Allocated with name '_ACC_Init_task_id_1_83'
                                    962 ;------------------------------------------------------------
                                    963 ;	./Source/task_acc.c:40: void  ACC_Init(uint8 task_id){
                                    964 ;	-----------------------------------------
                                    965 ;	 function ACC_Init
                                    966 ;	-----------------------------------------
      0052A1                        967 _ACC_Init:
                           000007   968 	ar7 = 0x07
                           000006   969 	ar6 = 0x06
                           000005   970 	ar5 = 0x05
                           000004   971 	ar4 = 0x04
                           000003   972 	ar3 = 0x03
                           000002   973 	ar2 = 0x02
                           000001   974 	ar1 = 0x01
                           000000   975 	ar0 = 0x00
      0052A1 E5 82            [12]  976 	mov	a,dpl
      0052A3 90 12 08         [24]  977 	mov	dptr,#_ACC_Init_task_id_1_83
      0052A6 F0               [24]  978 	movx	@dptr,a
                                    979 ;	./Source/task_acc.c:46: ACC_TaskID= task_id;
      0052A7 E0               [24]  980 	movx	a,@dptr
      0052A8 FF               [12]  981 	mov	r7,a
      0052A9 90 12 04         [24]  982 	mov	dptr,#_ACC_TaskID
      0052AC EF               [12]  983 	mov	a,r7
      0052AD F0               [24]  984 	movx	@dptr,a
                                    985 ;	./Source/task_acc.c:48: spiInit(SPI_MASTER);
      0052AE 75 82 01         [24]  986 	mov	dpl,#0x01
      0052B1 12 54 DD         [24]  987 	lcall	_spiInit
                                    988 ;	./Source/task_acc.c:50: accInit();
      0052B4 12 52 2C         [24]  989 	lcall	_accInit
                                    990 ;	./Source/task_acc.c:52: uartInit( HAL_UART_BR_57600 );
      0052B7 75 82 03         [24]  991 	mov	dpl,#0x03
      0052BA 75 83 00         [24]  992 	mov	dph,#0x00
      0052BD 12 3C 01         [24]  993 	lcall	_uartInit
                                    994 ;	./Source/task_acc.c:57: time_stamp=0;
      0052C0 90 12 06         [24]  995 	mov	dptr,#_time_stamp
      0052C3 74 00            [12]  996 	mov	a,#0x00
      0052C5 F0               [24]  997 	movx	@dptr,a
      0052C6 A3               [24]  998 	inc	dptr
      0052C7 F0               [24]  999 	movx	@dptr,a
                                   1000 ;	./Source/task_acc.c:64: osal_set_event( ACC_TaskID, start_acc );
      0052C8 90 12 04         [24] 1001 	mov	dptr,#_ACC_TaskID
      0052CB E0               [24] 1002 	movx	a,@dptr
      0052CC FF               [12] 1003 	mov	r7,a
      0052CD 90 03 C6         [24] 1004 	mov	dptr,#_osal_set_event_PARM_2
      0052D0 74 01            [12] 1005 	mov	a,#0x01
      0052D2 F0               [24] 1006 	movx	@dptr,a
      0052D3 74 00            [12] 1007 	mov	a,#0x00
      0052D5 A3               [24] 1008 	inc	dptr
      0052D6 F0               [24] 1009 	movx	@dptr,a
      0052D7 8F 82            [24] 1010 	mov	dpl,r7
      0052D9 12 19 84         [24] 1011 	lcall	_osal_set_event
      0052DC                       1012 00101$:
      0052DC 22               [24] 1013 	ret
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'ACC_ProcessEvent'
                                   1016 ;------------------------------------------------------------
                                   1017 ;events                    Allocated to stack - _bp -4
                                   1018 ;task_id                   Allocated to registers 
                                   1019 ;------------------------------------------------------------
                                   1020 ;	./Source/task_acc.c:70: uint16 ACC_ProcessEvent( uint8 task_id, uint16 events )__reentrant{
                                   1021 ;	-----------------------------------------
                                   1022 ;	 function ACC_ProcessEvent
                                   1023 ;	-----------------------------------------
      0052DD                       1024 _ACC_ProcessEvent:
      0052DD C0 1D            [24] 1025 	push	_bp
      0052DF 85 81 1D         [24] 1026 	mov	_bp,sp
                                   1027 ;	./Source/task_acc.c:77: if ( events & start_acc )
      0052E2 E5 1D            [12] 1028 	mov	a,_bp
      0052E4 24 FC            [12] 1029 	add	a,#0xfc
      0052E6 F8               [12] 1030 	mov	r0,a
      0052E7 E6               [12] 1031 	mov	a,@r0
      0052E8 20 E0 03         [24] 1032 	jb	acc.0,00128$
      0052EB 02 53 47         [24] 1033 	ljmp	00102$
      0052EE                       1034 00128$:
                                   1035 ;	./Source/task_acc.c:83: osal_start_timerEx( ACC_TaskID, ACC_PERIODIC_EVT, ACC_PERIODIC_EVT_PERIOD );    //ms
      0052EE 90 12 04         [24] 1036 	mov	dptr,#_ACC_TaskID
      0052F1 E0               [24] 1037 	movx	a,@dptr
      0052F2 FF               [12] 1038 	mov	r7,a
      0052F3 90 10 38         [24] 1039 	mov	dptr,#_osal_start_timerEx_PARM_2
      0052F6 74 04            [12] 1040 	mov	a,#0x04
      0052F8 F0               [24] 1041 	movx	@dptr,a
      0052F9 74 00            [12] 1042 	mov	a,#0x00
      0052FB A3               [24] 1043 	inc	dptr
      0052FC F0               [24] 1044 	movx	@dptr,a
      0052FD 90 10 3A         [24] 1045 	mov	dptr,#_osal_start_timerEx_PARM_3
      005300 74 0A            [12] 1046 	mov	a,#0x0A
      005302 F0               [24] 1047 	movx	@dptr,a
      005303 74 00            [12] 1048 	mov	a,#0x00
      005305 A3               [24] 1049 	inc	dptr
      005306 F0               [24] 1050 	movx	@dptr,a
      005307 A3               [24] 1051 	inc	dptr
      005308 F0               [24] 1052 	movx	@dptr,a
      005309 A3               [24] 1053 	inc	dptr
      00530A F0               [24] 1054 	movx	@dptr,a
      00530B 8F 82            [24] 1055 	mov	dpl,r7
      00530D 12 27 00         [24] 1056 	lcall	_osal_start_timerEx
                                   1057 ;	./Source/task_acc.c:84: osal_start_timerEx( ACC_TaskID, sample_blink_EVT,  ACC_PERIODIC_EVT_PERIOD2 );
      005310 90 12 04         [24] 1058 	mov	dptr,#_ACC_TaskID
      005313 E0               [24] 1059 	movx	a,@dptr
      005314 FF               [12] 1060 	mov	r7,a
      005315 90 10 38         [24] 1061 	mov	dptr,#_osal_start_timerEx_PARM_2
      005318 74 02            [12] 1062 	mov	a,#0x02
      00531A F0               [24] 1063 	movx	@dptr,a
      00531B 74 00            [12] 1064 	mov	a,#0x00
      00531D A3               [24] 1065 	inc	dptr
      00531E F0               [24] 1066 	movx	@dptr,a
      00531F 90 10 3A         [24] 1067 	mov	dptr,#_osal_start_timerEx_PARM_3
      005322 74 B8            [12] 1068 	mov	a,#0xB8
      005324 F0               [24] 1069 	movx	@dptr,a
      005325 74 0B            [12] 1070 	mov	a,#0x0B
      005327 A3               [24] 1071 	inc	dptr
      005328 F0               [24] 1072 	movx	@dptr,a
      005329 74 00            [12] 1073 	mov	a,#0x00
      00532B A3               [24] 1074 	inc	dptr
      00532C F0               [24] 1075 	movx	@dptr,a
      00532D A3               [24] 1076 	inc	dptr
      00532E F0               [24] 1077 	movx	@dptr,a
      00532F 8F 82            [24] 1078 	mov	dpl,r7
      005331 12 27 00         [24] 1079 	lcall	_osal_start_timerEx
                                   1080 ;	./Source/task_acc.c:90: return ( events ^ start_acc );
      005334 E5 1D            [12] 1081 	mov	a,_bp
      005336 24 FC            [12] 1082 	add	a,#0xfc
      005338 F8               [12] 1083 	mov	r0,a
      005339 74 01            [12] 1084 	mov	a,#0x01
      00533B 66               [12] 1085 	xrl	a,@r0
      00533C FE               [12] 1086 	mov	r6,a
      00533D 08               [12] 1087 	inc	r0
      00533E 86 07            [24] 1088 	mov	ar7,@r0
      005340 8E 82            [24] 1089 	mov	dpl,r6
      005342 8F 83            [24] 1090 	mov	dph,r7
      005344 02 54 03         [24] 1091 	ljmp	00114$
      005347                       1092 00102$:
                                   1093 ;	./Source/task_acc.c:95: if ( events & sample_blink_EVT )
      005347 E5 1D            [12] 1094 	mov	a,_bp
      005349 24 FC            [12] 1095 	add	a,#0xfc
      00534B F8               [12] 1096 	mov	r0,a
      00534C E6               [12] 1097 	mov	a,@r0
      00534D 20 E1 03         [24] 1098 	jb	acc.1,00129$
      005350 02 53 B9         [24] 1099 	ljmp	00109$
      005353                       1100 00129$:
                                   1101 ;	./Source/task_acc.c:108: if(flag==true){
      005353 90 12 05         [24] 1102 	mov	dptr,#_flag
      005356 E0               [24] 1103 	movx	a,@dptr
      005357 FF               [12] 1104 	mov	r7,a
      005358 BF 01 02         [24] 1105 	cjne	r7,#0x01,00130$
      00535B 80 03            [24] 1106 	sjmp	00131$
      00535D                       1107 00130$:
      00535D 02 53 71         [24] 1108 	ljmp	00104$
      005360                       1109 00131$:
                                   1110 ;	./Source/task_acc.c:110: flag=false;
      005360 90 12 05         [24] 1111 	mov	dptr,#_flag
      005363 74 00            [12] 1112 	mov	a,#0x00
      005365 F0               [24] 1113 	movx	@dptr,a
                                   1114 ;	./Source/task_acc.c:111: P0_0|=0x01;
      005366 D2 08            [12] 1115 	setb	b0
      005368 A2 80            [12] 1116 	mov	c,_P0_0
      00536A A2 08            [12] 1117 	mov	c,b0
      00536C 92 80            [24] 1118 	mov	_P0_0,c
      00536E 02 53 7F         [24] 1119 	ljmp	00106$
      005371                       1120 00104$:
                                   1121 ;	./Source/task_acc.c:121: flag=true;
      005371 90 12 05         [24] 1122 	mov	dptr,#_flag
      005374 74 01            [12] 1123 	mov	a,#0x01
      005376 F0               [24] 1124 	movx	@dptr,a
                                   1125 ;	./Source/task_acc.c:122: P0_0&=~0x01;
      005377 C2 08            [12] 1126 	clr	b0
      005379 A2 80            [12] 1127 	mov	c,_P0_0
      00537B A2 08            [12] 1128 	mov	c,b0
      00537D 92 80            [24] 1129 	mov	_P0_0,c
                                   1130 ;	./Source/task_acc.c:137: if ( ACC_PERIODIC_EVT_PERIOD2 )
      00537F                       1131 00106$:
                                   1132 ;	./Source/task_acc.c:139: osal_start_timerEx( ACC_TaskID, sample_blink_EVT, ACC_PERIODIC_EVT_PERIOD2 );
      00537F 90 12 04         [24] 1133 	mov	dptr,#_ACC_TaskID
      005382 E0               [24] 1134 	movx	a,@dptr
      005383 FF               [12] 1135 	mov	r7,a
      005384 90 10 38         [24] 1136 	mov	dptr,#_osal_start_timerEx_PARM_2
      005387 74 02            [12] 1137 	mov	a,#0x02
      005389 F0               [24] 1138 	movx	@dptr,a
      00538A 74 00            [12] 1139 	mov	a,#0x00
      00538C A3               [24] 1140 	inc	dptr
      00538D F0               [24] 1141 	movx	@dptr,a
      00538E 90 10 3A         [24] 1142 	mov	dptr,#_osal_start_timerEx_PARM_3
      005391 74 B8            [12] 1143 	mov	a,#0xB8
      005393 F0               [24] 1144 	movx	@dptr,a
      005394 74 0B            [12] 1145 	mov	a,#0x0B
      005396 A3               [24] 1146 	inc	dptr
      005397 F0               [24] 1147 	movx	@dptr,a
      005398 74 00            [12] 1148 	mov	a,#0x00
      00539A A3               [24] 1149 	inc	dptr
      00539B F0               [24] 1150 	movx	@dptr,a
      00539C A3               [24] 1151 	inc	dptr
      00539D F0               [24] 1152 	movx	@dptr,a
      00539E 8F 82            [24] 1153 	mov	dpl,r7
      0053A0 12 27 00         [24] 1154 	lcall	_osal_start_timerEx
                                   1155 ;	./Source/task_acc.c:145: counter();
      0053A3 12 54 8B         [24] 1156 	lcall	_counter
                                   1157 ;	./Source/task_acc.c:148: return ( events ^ sample_blink_EVT);
      0053A6 E5 1D            [12] 1158 	mov	a,_bp
      0053A8 24 FC            [12] 1159 	add	a,#0xfc
      0053AA F8               [12] 1160 	mov	r0,a
      0053AB 74 02            [12] 1161 	mov	a,#0x02
      0053AD 66               [12] 1162 	xrl	a,@r0
      0053AE FE               [12] 1163 	mov	r6,a
      0053AF 08               [12] 1164 	inc	r0
      0053B0 86 07            [24] 1165 	mov	ar7,@r0
      0053B2 8E 82            [24] 1166 	mov	dpl,r6
      0053B4 8F 83            [24] 1167 	mov	dph,r7
      0053B6 02 54 03         [24] 1168 	ljmp	00114$
      0053B9                       1169 00109$:
                                   1170 ;	./Source/task_acc.c:153: if ( events & ACC_PERIODIC_EVT )
      0053B9 E5 1D            [12] 1171 	mov	a,_bp
      0053BB 24 FC            [12] 1172 	add	a,#0xfc
      0053BD F8               [12] 1173 	mov	r0,a
      0053BE E6               [12] 1174 	mov	a,@r0
      0053BF 20 E2 03         [24] 1175 	jb	acc.2,00132$
      0053C2 02 53 FD         [24] 1176 	ljmp	00113$
      0053C5                       1177 00132$:
                                   1178 ;	./Source/task_acc.c:158: osal_start_timerEx( ACC_TaskID, ACC_PERIODIC_EVT, ACC_PERIODIC_EVT_PERIOD );
      0053C5 90 12 04         [24] 1179 	mov	dptr,#_ACC_TaskID
      0053C8 E0               [24] 1180 	movx	a,@dptr
      0053C9 FF               [12] 1181 	mov	r7,a
      0053CA 90 10 38         [24] 1182 	mov	dptr,#_osal_start_timerEx_PARM_2
      0053CD 74 04            [12] 1183 	mov	a,#0x04
      0053CF F0               [24] 1184 	movx	@dptr,a
      0053D0 74 00            [12] 1185 	mov	a,#0x00
      0053D2 A3               [24] 1186 	inc	dptr
      0053D3 F0               [24] 1187 	movx	@dptr,a
      0053D4 90 10 3A         [24] 1188 	mov	dptr,#_osal_start_timerEx_PARM_3
      0053D7 74 0A            [12] 1189 	mov	a,#0x0A
      0053D9 F0               [24] 1190 	movx	@dptr,a
      0053DA 74 00            [12] 1191 	mov	a,#0x00
      0053DC A3               [24] 1192 	inc	dptr
      0053DD F0               [24] 1193 	movx	@dptr,a
      0053DE A3               [24] 1194 	inc	dptr
      0053DF F0               [24] 1195 	movx	@dptr,a
      0053E0 A3               [24] 1196 	inc	dptr
      0053E1 F0               [24] 1197 	movx	@dptr,a
      0053E2 8F 82            [24] 1198 	mov	dpl,r7
      0053E4 12 27 00         [24] 1199 	lcall	_osal_start_timerEx
                                   1200 ;	./Source/task_acc.c:166: acc_time_stamp();
      0053E7 12 54 06         [24] 1201 	lcall	_acc_time_stamp
                                   1202 ;	./Source/task_acc.c:168: return (events ^ ACC_PERIODIC_EVT);
      0053EA E5 1D            [12] 1203 	mov	a,_bp
      0053EC 24 FC            [12] 1204 	add	a,#0xfc
      0053EE F8               [12] 1205 	mov	r0,a
      0053EF 74 04            [12] 1206 	mov	a,#0x04
      0053F1 66               [12] 1207 	xrl	a,@r0
      0053F2 FE               [12] 1208 	mov	r6,a
      0053F3 08               [12] 1209 	inc	r0
      0053F4 86 07            [24] 1210 	mov	ar7,@r0
      0053F6 8E 82            [24] 1211 	mov	dpl,r6
      0053F8 8F 83            [24] 1212 	mov	dph,r7
      0053FA 02 54 03         [24] 1213 	ljmp	00114$
      0053FD                       1214 00113$:
                                   1215 ;	./Source/task_acc.c:178: return 0;
      0053FD 75 82 00         [24] 1216 	mov	dpl,#0x00
      005400 75 83 00         [24] 1217 	mov	dph,#0x00
      005403                       1218 00114$:
      005403 D0 1D            [24] 1219 	pop	_bp
      005405 22               [24] 1220 	ret
                                   1221 ;------------------------------------------------------------
                                   1222 ;Allocation info for local variables in function 'acc_time_stamp'
                                   1223 ;------------------------------------------------------------
                                   1224 ;pXVal                     Allocated with name '_acc_time_stamp_pXVal_1_95'
                                   1225 ;pYVal                     Allocated with name '_acc_time_stamp_pYVal_1_95'
                                   1226 ;pZVal                     Allocated with name '_acc_time_stamp_pZVal_1_95'
                                   1227 ;------------------------------------------------------------
                                   1228 ;	./Source/task_acc.c:190: static void acc_time_stamp( void ){
                                   1229 ;	-----------------------------------------
                                   1230 ;	 function acc_time_stamp
                                   1231 ;	-----------------------------------------
      005406                       1232 _acc_time_stamp:
                                   1233 ;	./Source/task_acc.c:193: int8 pXVal=0;
      005406 90 12 0F         [24] 1234 	mov	dptr,#_acc_time_stamp_pXVal_1_95
      005409 74 00            [12] 1235 	mov	a,#0x00
      00540B F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	./Source/task_acc.c:194: int8 pYVal=0;
      00540C 90 12 10         [24] 1238 	mov	dptr,#_acc_time_stamp_pYVal_1_95
      00540F F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	./Source/task_acc.c:195: int8 pZVal=0;
      005410 90 12 11         [24] 1241 	mov	dptr,#_acc_time_stamp_pZVal_1_95
      005413 F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	./Source/task_acc.c:199: accRead( &pXVal, &pYVal, &pZVal);
      005414 90 11 E6         [24] 1244 	mov	dptr,#_accRead_PARM_2
      005417 74 10            [12] 1245 	mov	a,#_acc_time_stamp_pYVal_1_95
      005419 F0               [24] 1246 	movx	@dptr,a
      00541A 74 12            [12] 1247 	mov	a,#(_acc_time_stamp_pYVal_1_95 >> 8)
      00541C A3               [24] 1248 	inc	dptr
      00541D F0               [24] 1249 	movx	@dptr,a
      00541E 74 00            [12] 1250 	mov	a,#0x00
      005420 A3               [24] 1251 	inc	dptr
      005421 F0               [24] 1252 	movx	@dptr,a
      005422 90 11 E9         [24] 1253 	mov	dptr,#_accRead_PARM_3
      005425 74 11            [12] 1254 	mov	a,#_acc_time_stamp_pZVal_1_95
      005427 F0               [24] 1255 	movx	@dptr,a
      005428 74 12            [12] 1256 	mov	a,#(_acc_time_stamp_pZVal_1_95 >> 8)
      00542A A3               [24] 1257 	inc	dptr
      00542B F0               [24] 1258 	movx	@dptr,a
      00542C 74 00            [12] 1259 	mov	a,#0x00
      00542E A3               [24] 1260 	inc	dptr
      00542F F0               [24] 1261 	movx	@dptr,a
      005430 75 82 0F         [24] 1262 	mov	dpl,#_acc_time_stamp_pXVal_1_95
      005433 75 83 12         [24] 1263 	mov	dph,#(_acc_time_stamp_pXVal_1_95 >> 8)
      005436 75 F0 00         [24] 1264 	mov	b,#0x00
      005439 12 52 33         [24] 1265 	lcall	_accRead
                                   1266 ;	./Source/task_acc.c:211: if(pXVal > 0x0010){
      00543C 90 12 0F         [24] 1267 	mov	dptr,#_acc_time_stamp_pXVal_1_95
      00543F E0               [24] 1268 	movx	a,@dptr
      005440 FF               [12] 1269 	mov	r7,a
      005441 C3               [12] 1270 	clr	c
      005442 74 10            [12] 1271 	mov	a,#0x10
      005444 64 80            [12] 1272 	xrl	a,#0x80
      005446 8F F0            [24] 1273 	mov	b,r7
      005448 63 F0 80         [24] 1274 	xrl	b,#0x80
      00544B 95 F0            [12] 1275 	subb	a,b
      00544D 40 03            [24] 1276 	jc	00119$
      00544F 02 54 5B         [24] 1277 	ljmp	00106$
      005452                       1278 00119$:
                                   1279 ;	./Source/task_acc.c:214: sw=true;
      005452 90 12 0C         [24] 1280 	mov	dptr,#_sw
      005455 74 01            [12] 1281 	mov	a,#0x01
      005457 F0               [24] 1282 	movx	@dptr,a
      005458 02 54 8A         [24] 1283 	ljmp	00108$
      00545B                       1284 00106$:
                                   1285 ;	./Source/task_acc.c:217: else if(pXVal <-16){
      00545B 90 12 0F         [24] 1286 	mov	dptr,#_acc_time_stamp_pXVal_1_95
      00545E E0               [24] 1287 	movx	a,@dptr
      00545F FF               [12] 1288 	mov	r7,a
      005460 C3               [12] 1289 	clr	c
      005461 EF               [12] 1290 	mov	a,r7
      005462 64 80            [12] 1291 	xrl	a,#0x80
      005464 94 70            [12] 1292 	subb	a,#0x70
      005466 40 03            [24] 1293 	jc	00120$
      005468 02 54 8A         [24] 1294 	ljmp	00108$
      00546B                       1295 00120$:
                                   1296 ;	./Source/task_acc.c:220: if(sw==true){
      00546B 90 12 0C         [24] 1297 	mov	dptr,#_sw
      00546E E0               [24] 1298 	movx	a,@dptr
      00546F FF               [12] 1299 	mov	r7,a
      005470 BF 01 02         [24] 1300 	cjne	r7,#0x01,00121$
      005473 80 03            [24] 1301 	sjmp	00122$
      005475                       1302 00121$:
      005475 02 54 8A         [24] 1303 	ljmp	00108$
      005478                       1304 00122$:
                                   1305 ;	./Source/task_acc.c:222: sw=false;
      005478 90 12 0C         [24] 1306 	mov	dptr,#_sw
      00547B 74 00            [12] 1307 	mov	a,#0x00
      00547D F0               [24] 1308 	movx	@dptr,a
                                   1309 ;	./Source/task_acc.c:224: step++;
      00547E 90 12 0D         [24] 1310 	mov	dptr,#_step
      005481 E0               [24] 1311 	movx	a,@dptr
      005482 24 01            [12] 1312 	add	a,#0x01
      005484 F0               [24] 1313 	movx	@dptr,a
      005485 A3               [24] 1314 	inc	dptr
      005486 E0               [24] 1315 	movx	a,@dptr
      005487 34 00            [12] 1316 	addc	a,#0x00
      005489 F0               [24] 1317 	movx	@dptr,a
      00548A                       1318 00108$:
      00548A 22               [24] 1319 	ret
                                   1320 ;------------------------------------------------------------
                                   1321 ;Allocation info for local variables in function 'counter'
                                   1322 ;------------------------------------------------------------
                                   1323 ;	./Source/task_acc.c:273: void counter(void){
                                   1324 ;	-----------------------------------------
                                   1325 ;	 function counter
                                   1326 ;	-----------------------------------------
      00548B                       1327 _counter:
                                   1328 ;	./Source/task_acc.c:275: uartWriteString("step: ");
      00548B 75 82 E5         [24] 1329 	mov	dpl,#___str_0
      00548E 75 83 5D         [24] 1330 	mov	dph,#(___str_0 >> 8)
      005491 75 F0 80         [24] 1331 	mov	b,#0x80
      005494 12 3C D4         [24] 1332 	lcall	_uartWriteString
                                   1333 ;	./Source/task_acc.c:276: uartWriteU16(step);
      005497 90 12 0D         [24] 1334 	mov	dptr,#_step
      00549A E0               [24] 1335 	movx	a,@dptr
      00549B FE               [12] 1336 	mov	r6,a
      00549C A3               [24] 1337 	inc	dptr
      00549D E0               [24] 1338 	movx	a,@dptr
      00549E FF               [12] 1339 	mov	r7,a
      00549F 8E 82            [24] 1340 	mov	dpl,r6
      0054A1 8F 83            [24] 1341 	mov	dph,r7
      0054A3 12 3D 95         [24] 1342 	lcall	_uartWriteU16
                                   1343 ;	./Source/task_acc.c:277: uartWriteString("\r\n");   
      0054A6 75 82 EC         [24] 1344 	mov	dpl,#___str_1
      0054A9 75 83 5D         [24] 1345 	mov	dph,#(___str_1 >> 8)
      0054AC 75 F0 80         [24] 1346 	mov	b,#0x80
      0054AF 12 3C D4         [24] 1347 	lcall	_uartWriteString
                                   1348 ;	./Source/task_acc.c:281: BX_SetParameter(BX_CHAR1,sizeof(char),&step);
      0054B2 90 11 C5         [24] 1349 	mov	dptr,#_BX_SetParameter_PARM_2
      0054B5 74 01            [12] 1350 	mov	a,#0x01
      0054B7 F0               [24] 1351 	movx	@dptr,a
      0054B8 90 11 C6         [24] 1352 	mov	dptr,#_BX_SetParameter_PARM_3
      0054BB 74 0D            [12] 1353 	mov	a,#_step
      0054BD F0               [24] 1354 	movx	@dptr,a
      0054BE 74 12            [12] 1355 	mov	a,#(_step >> 8)
      0054C0 A3               [24] 1356 	inc	dptr
      0054C1 F0               [24] 1357 	movx	@dptr,a
      0054C2 74 00            [12] 1358 	mov	a,#0x00
      0054C4 A3               [24] 1359 	inc	dptr
      0054C5 F0               [24] 1360 	movx	@dptr,a
      0054C6 75 82 00         [24] 1361 	mov	dpl,#0x00
      0054C9 12 49 B6         [24] 1362 	lcall	_BX_SetParameter
                                   1363 ;	./Source/task_acc.c:284: step=0;
      0054CC 90 12 0D         [24] 1364 	mov	dptr,#_step
      0054CF 74 00            [12] 1365 	mov	a,#0x00
      0054D1 F0               [24] 1366 	movx	@dptr,a
      0054D2 A3               [24] 1367 	inc	dptr
      0054D3 F0               [24] 1368 	movx	@dptr,a
      0054D4                       1369 00101$:
      0054D4 22               [24] 1370 	ret
                                   1371 	.area CSEG    (CODE)
                                   1372 	.area CONST   (CODE)
      005DE5                       1373 ___str_0:
      005DE5 73 74 65 70 3A 20     1374 	.ascii "step: "
      005DEB 00                    1375 	.db 0x00
      005DEC                       1376 ___str_1:
      005DEC 0D                    1377 	.db 0x0D
      005DED 0A                    1378 	.db 0x0A
      005DEE 00                    1379 	.db 0x00
                                   1380 	.area CABS    (ABS,CODE)
