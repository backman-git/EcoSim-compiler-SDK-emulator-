                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:57 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module OSAL_Memory
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
                                    411 	.globl _osal_mem_init
                                    412 	.globl _osal_mem_kick
                                    413 	.globl _osal_mem_alloc
                                    414 	.globl _osal_mem_free
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
                                    657 	.area	OSEG    (OVR,DATA)
      00003A                        658 _osal_mem_alloc_sloc0_1_0:
      00003A                        659 	.ds 3
      00003D                        660 _osal_mem_alloc_sloc1_1_0:
      00003D                        661 	.ds 2
      00003F                        662 _osal_mem_alloc_sloc2_1_0:
      00003F                        663 	.ds 2
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
      000405                        864 _theHeap:
      000405                        865 	.ds 3072
      001005                        866 _ff1:
      001005                        867 	.ds 3
      001008                        868 _osalMemStat:
      001008                        869 	.ds 1
      001009                        870 _osal_mem_alloc_size_1_83:
      001009                        871 	.ds 2
      00100B                        872 _osal_mem_alloc_prev_1_84:
      00100B                        873 	.ds 3
      00100E                        874 _osal_mem_alloc_hdr_1_84:
      00100E                        875 	.ds 3
      001011                        876 _osal_mem_alloc_coal_1_84:
      001011                        877 	.ds 1
      001012                        878 _osal_mem_alloc_tmp_2_98:
      001012                        879 	.ds 2
      001014                        880 _osal_mem_free_ptr_1_102:
      001014                        881 	.ds 3
      001017                        882 _osal_mem_free_hdr_1_103:
      001017                        883 	.ds 3
      00101A                        884 _osal_mem_free_intState_1_103:
      00101A                        885 	.ds 1
                                    886 ;--------------------------------------------------------
                                    887 ; absolute external ram data
                                    888 ;--------------------------------------------------------
                                    889 	.area XABS    (ABS,XDATA)
                                    890 ;--------------------------------------------------------
                                    891 ; external initialized ram data
                                    892 ;--------------------------------------------------------
                                    893 	.area HOME    (CODE)
                                    894 	.area GSINIT0 (CODE)
                                    895 	.area GSINIT1 (CODE)
                                    896 	.area GSINIT2 (CODE)
                                    897 	.area GSINIT3 (CODE)
                                    898 	.area GSINIT4 (CODE)
                                    899 	.area GSINIT5 (CODE)
                                    900 	.area GSINIT  (CODE)
                                    901 	.area GSFINAL (CODE)
                                    902 	.area CSEG    (CODE)
                                    903 ;--------------------------------------------------------
                                    904 ; global & static initialisations
                                    905 ;--------------------------------------------------------
                                    906 	.area HOME    (CODE)
                                    907 	.area GSINIT  (CODE)
                                    908 	.area GSFINAL (CODE)
                                    909 	.area GSINIT  (CODE)
                                    910 ;--------------------------------------------------------
                                    911 ; Home
                                    912 ;--------------------------------------------------------
                                    913 	.area HOME    (CODE)
                                    914 	.area HOME    (CODE)
                                    915 ;--------------------------------------------------------
                                    916 ; code
                                    917 ;--------------------------------------------------------
                                    918 	.area CSEG    (CODE)
                                    919 ;------------------------------------------------------------
                                    920 ;Allocation info for local variables in function 'osal_mem_init'
                                    921 ;------------------------------------------------------------
                                    922 ;	../osal/common/OSAL_Memory.c:226: void osal_mem_init(void)
                                    923 ;	-----------------------------------------
                                    924 ;	 function osal_mem_init
                                    925 ;	-----------------------------------------
      001F3D                        926 _osal_mem_init:
                           000007   927 	ar7 = 0x07
                           000006   928 	ar6 = 0x06
                           000005   929 	ar5 = 0x05
                           000004   930 	ar4 = 0x04
                           000003   931 	ar3 = 0x03
                           000002   932 	ar2 = 0x02
                           000001   933 	ar1 = 0x01
                           000000   934 	ar0 = 0x00
                                    935 ;	../osal/common/OSAL_Memory.c:237: theHeap[OSALMEM_LASTBLK_IDX].val = 0;
      001F3D 90 10 03         [24]  936 	mov	dptr,#(_theHeap + 0x0bfe)
      001F40 74 00            [12]  937 	mov	a,#0x00
      001F42 F0               [24]  938 	movx	@dptr,a
      001F43 A3               [24]  939 	inc	dptr
      001F44 F0               [24]  940 	movx	@dptr,a
                                    941 ;	../osal/common/OSAL_Memory.c:240: ff1 = theHeap;
      001F45 90 10 05         [24]  942 	mov	dptr,#_ff1
      001F48 74 05            [12]  943 	mov	a,#_theHeap
      001F4A F0               [24]  944 	movx	@dptr,a
      001F4B 74 04            [12]  945 	mov	a,#(_theHeap >> 8)
      001F4D A3               [24]  946 	inc	dptr
      001F4E F0               [24]  947 	movx	@dptr,a
      001F4F 74 00            [12]  948 	mov	a,#0x00
      001F51 A3               [24]  949 	inc	dptr
      001F52 F0               [24]  950 	movx	@dptr,a
                                    951 ;	../osal/common/OSAL_Memory.c:241: ff1->val = OSALMEM_SMALLBLK_BUCKET;  
      001F53 90 04 05         [24]  952 	mov	dptr,#_theHeap
      001F56 74 48            [12]  953 	mov	a,#0x48
      001F58 F0               [24]  954 	movx	@dptr,a
      001F59 74 02            [12]  955 	mov	a,#0x02
      001F5B A3               [24]  956 	inc	dptr
      001F5C F0               [24]  957 	movx	@dptr,a
                                    958 ;	../osal/common/OSAL_Memory.c:247: theHeap[OSALMEM_SMALLBLK_HDRCNT].val = (OSALMEM_HDRSZ | OSALMEM_IN_USE);
      001F5D 90 06 4D         [24]  959 	mov	dptr,#(_theHeap + 0x0248)
      001F60 F0               [24]  960 	movx	@dptr,a
      001F61 74 80            [12]  961 	mov	a,#0x80
      001F63 A3               [24]  962 	inc	dptr
      001F64 F0               [24]  963 	movx	@dptr,a
                                    964 ;	../osal/common/OSAL_Memory.c:250: theHeap[OSALMEM_BIGBLK_IDX].val = OSALMEM_BIGBLK_SZ;  // Set 'len' & clear 'inUse' field.
      001F65 90 06 4F         [24]  965 	mov	dptr,#(_theHeap + 0x024a)
      001F68 74 B4            [12]  966 	mov	a,#0xB4
      001F6A F0               [24]  967 	movx	@dptr,a
      001F6B 74 09            [12]  968 	mov	a,#0x09
      001F6D A3               [24]  969 	inc	dptr
      001F6E F0               [24]  970 	movx	@dptr,a
      001F6F                        971 00101$:
      001F6F 22               [24]  972 	ret
                                    973 ;------------------------------------------------------------
                                    974 ;Allocation info for local variables in function 'osal_mem_kick'
                                    975 ;------------------------------------------------------------
                                    976 ;intState                  Allocated with name '_osal_mem_kick_intState_1_79'
                                    977 ;tmp                       Allocated with name '_osal_mem_kick_tmp_1_79'
                                    978 ;------------------------------------------------------------
                                    979 ;	../osal/common/OSAL_Memory.c:278: void osal_mem_kick(void)
                                    980 ;	-----------------------------------------
                                    981 ;	 function osal_mem_kick
                                    982 ;	-----------------------------------------
      001F70                        983 _osal_mem_kick:
                                    984 ;	../osal/common/OSAL_Memory.c:281: osalMemHdr_t *  tmp = osal_mem_alloc(1);
      001F70 75 82 01         [24]  985 	mov	dpl,#0x01
      001F73 75 83 00         [24]  986 	mov	dph,#0x00
      001F76 12 1F B4         [24]  987 	lcall	_osal_mem_alloc
      001F79 AD 82            [24]  988 	mov	r5,dpl
      001F7B AE 83            [24]  989 	mov	r6,dph
      001F7D AF F0            [24]  990 	mov	r7,b
                                    991 ;	../osal/common/OSAL_Memory.c:284: HAL_ENTER_CRITICAL_SECTION(intState);  // Hold off interrupts.
      001F7F A2 AF            [12]  992 	mov	c,_EA
      001F81 E4               [12]  993 	clr	a
      001F82 33               [12]  994 	rlc	a
      001F83 FC               [12]  995 	mov	r4,a
      001F84 C2 AF            [12]  996 	clr	_EA
                                    997 ;	../osal/common/OSAL_Memory.c:290: ff1 = tmp - 1;       // Set 'ff1' to point to the first available memory after the LL block.
      001F86 ED               [12]  998 	mov	a,r5
      001F87 24 FE            [12]  999 	add	a,#0xFE
      001F89 F9               [12] 1000 	mov	r1,a
      001F8A EE               [12] 1001 	mov	a,r6
      001F8B 34 FF            [12] 1002 	addc	a,#0xFF
      001F8D FA               [12] 1003 	mov	r2,a
      001F8E 8F 03            [24] 1004 	mov	ar3,r7
      001F90 90 10 05         [24] 1005 	mov	dptr,#_ff1
      001F93 E9               [12] 1006 	mov	a,r1
      001F94 F0               [24] 1007 	movx	@dptr,a
      001F95 EA               [12] 1008 	mov	a,r2
      001F96 A3               [24] 1009 	inc	dptr
      001F97 F0               [24] 1010 	movx	@dptr,a
      001F98 EB               [12] 1011 	mov	a,r3
      001F99 A3               [24] 1012 	inc	dptr
      001F9A F0               [24] 1013 	movx	@dptr,a
                                   1014 ;	../osal/common/OSAL_Memory.c:291: osal_mem_free(tmp);
      001F9B 8D 82            [24] 1015 	mov	dpl,r5
      001F9D 8E 83            [24] 1016 	mov	dph,r6
      001F9F 8F F0            [24] 1017 	mov	b,r7
      001FA1 C0 04            [24] 1018 	push	ar4
      001FA3 12 23 00         [24] 1019 	lcall	_osal_mem_free
      001FA6 D0 04            [24] 1020 	pop	ar4
                                   1021 ;	../osal/common/OSAL_Memory.c:292: osalMemStat = 0x01;  // Set 'osalMemStat' after the free because it enables memory profiling.
      001FA8 90 10 08         [24] 1022 	mov	dptr,#_osalMemStat
      001FAB 74 01            [12] 1023 	mov	a,#0x01
      001FAD F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	../osal/common/OSAL_Memory.c:294: HAL_EXIT_CRITICAL_SECTION(intState);  // Re-enable interrupts.
      001FAE EC               [12] 1026 	mov	a,r4
      001FAF 24 FF            [12] 1027 	add	a,#0xff
      001FB1 92 AF            [24] 1028 	mov	_EA,c
      001FB3                       1029 00110$:
      001FB3 22               [24] 1030 	ret
                                   1031 ;------------------------------------------------------------
                                   1032 ;Allocation info for local variables in function 'osal_mem_alloc'
                                   1033 ;------------------------------------------------------------
                                   1034 ;size                      Allocated with name '_osal_mem_alloc_size_1_83'
                                   1035 ;prev                      Allocated with name '_osal_mem_alloc_prev_1_84'
                                   1036 ;hdr                       Allocated with name '_osal_mem_alloc_hdr_1_84'
                                   1037 ;intState                  Allocated with name '_osal_mem_alloc_intState_1_84'
                                   1038 ;coal                      Allocated with name '_osal_mem_alloc_coal_1_84'
                                   1039 ;mod                       Allocated with name '_osal_mem_alloc_mod_2_86'
                                   1040 ;tmp                       Allocated with name '_osal_mem_alloc_tmp_2_98'
                                   1041 ;next                      Allocated with name '_osal_mem_alloc_next_3_99'
                                   1042 ;sloc0                     Allocated with name '_osal_mem_alloc_sloc0_1_0'
                                   1043 ;sloc1                     Allocated with name '_osal_mem_alloc_sloc1_1_0'
                                   1044 ;sloc2                     Allocated with name '_osal_mem_alloc_sloc2_1_0'
                                   1045 ;------------------------------------------------------------
                                   1046 ;	../osal/common/OSAL_Memory.c:315: void *osal_mem_alloc( uint16 size )
                                   1047 ;	-----------------------------------------
                                   1048 ;	 function osal_mem_alloc
                                   1049 ;	-----------------------------------------
      001FB4                       1050 _osal_mem_alloc:
      001FB4 AF 83            [24] 1051 	mov	r7,dph
      001FB6 E5 82            [12] 1052 	mov	a,dpl
      001FB8 90 10 09         [24] 1053 	mov	dptr,#_osal_mem_alloc_size_1_83
      001FBB F0               [24] 1054 	movx	@dptr,a
      001FBC EF               [12] 1055 	mov	a,r7
      001FBD A3               [24] 1056 	inc	dptr
      001FBE F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	../osal/common/OSAL_Memory.c:318: osalMemHdr_t*  prev = NULL;
      001FBF 90 10 0B         [24] 1059 	mov	dptr,#_osal_mem_alloc_prev_1_84
      001FC2 74 00            [12] 1060 	mov	a,#0x00
      001FC4 F0               [24] 1061 	movx	@dptr,a
      001FC5 A3               [24] 1062 	inc	dptr
      001FC6 F0               [24] 1063 	movx	@dptr,a
      001FC7 A3               [24] 1064 	inc	dptr
      001FC8 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	../osal/common/OSAL_Memory.c:321: uint8 coal = 0;
      001FC9 90 10 11         [24] 1067 	mov	dptr,#_osal_mem_alloc_coal_1_84
      001FCC F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	../osal/common/OSAL_Memory.c:323: size += OSALMEM_HDRSZ;
      001FCD 90 10 09         [24] 1070 	mov	dptr,#_osal_mem_alloc_size_1_83
      001FD0 E0               [24] 1071 	movx	a,@dptr
      001FD1 FE               [12] 1072 	mov	r6,a
      001FD2 A3               [24] 1073 	inc	dptr
      001FD3 E0               [24] 1074 	movx	a,@dptr
      001FD4 FF               [12] 1075 	mov	r7,a
      001FD5 90 10 09         [24] 1076 	mov	dptr,#_osal_mem_alloc_size_1_83
      001FD8 74 02            [12] 1077 	mov	a,#0x02
      001FDA 2E               [12] 1078 	add	a,r6
      001FDB F0               [24] 1079 	movx	@dptr,a
      001FDC 74 00            [12] 1080 	mov	a,#0x00
      001FDE 3F               [12] 1081 	addc	a,r7
      001FDF A3               [24] 1082 	inc	dptr
      001FE0 F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	../osal/common/OSAL_Memory.c:345: if ((osalMemStat == 0) || (size <= OSALMEM_SMALL_BLKSZ))    //BX OSALMEM_SMALL_BLKSZ 16 byte
      001FE1 90 10 08         [24] 1085 	mov	dptr,#_osalMemStat
      001FE4 E0               [24] 1086 	movx	a,@dptr
      001FE5 FF               [12] 1087 	mov	r7,a
      001FE6 EF               [12] 1088 	mov	a,r7
      001FE7 70 03            [24] 1089 	jnz	00170$
      001FE9 02 20 00         [24] 1090 	ljmp	00108$
      001FEC                       1091 00170$:
      001FEC 90 10 09         [24] 1092 	mov	dptr,#_osal_mem_alloc_size_1_83
      001FEF E0               [24] 1093 	movx	a,@dptr
      001FF0 FE               [12] 1094 	mov	r6,a
      001FF1 A3               [24] 1095 	inc	dptr
      001FF2 E0               [24] 1096 	movx	a,@dptr
      001FF3 FF               [12] 1097 	mov	r7,a
      001FF4 C3               [12] 1098 	clr	c
      001FF5 74 10            [12] 1099 	mov	a,#0x10
      001FF7 9E               [12] 1100 	subb	a,r6
      001FF8 74 00            [12] 1101 	mov	a,#0x00
      001FFA 9F               [12] 1102 	subb	a,r7
      001FFB 50 03            [24] 1103 	jnc	00171$
      001FFD 02 20 19         [24] 1104 	ljmp	00109$
      002000                       1105 00171$:
      002000                       1106 00108$:
                                   1107 ;	../osal/common/OSAL_Memory.c:347: hdr = ff1;
      002000 90 10 05         [24] 1108 	mov	dptr,#_ff1
      002003 E0               [24] 1109 	movx	a,@dptr
      002004 FD               [12] 1110 	mov	r5,a
      002005 A3               [24] 1111 	inc	dptr
      002006 E0               [24] 1112 	movx	a,@dptr
      002007 FE               [12] 1113 	mov	r6,a
      002008 A3               [24] 1114 	inc	dptr
      002009 E0               [24] 1115 	movx	a,@dptr
      00200A FF               [12] 1116 	mov	r7,a
      00200B 90 10 0E         [24] 1117 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      00200E ED               [12] 1118 	mov	a,r5
      00200F F0               [24] 1119 	movx	@dptr,a
      002010 EE               [12] 1120 	mov	a,r6
      002011 A3               [24] 1121 	inc	dptr
      002012 F0               [24] 1122 	movx	@dptr,a
      002013 EF               [12] 1123 	mov	a,r7
      002014 A3               [24] 1124 	inc	dptr
      002015 F0               [24] 1125 	movx	@dptr,a
      002016 02 20 27         [24] 1126 	ljmp	00142$
      002019                       1127 00109$:
                                   1128 ;	../osal/common/OSAL_Memory.c:353: hdr = (theHeap + OSALMEM_BIGBLK_IDX);
      002019 90 10 0E         [24] 1129 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      00201C 74 4F            [12] 1130 	mov	a,#(_theHeap + 0x024a)
      00201E F0               [24] 1131 	movx	@dptr,a
      00201F 74 06            [12] 1132 	mov	a,#((_theHeap + 0x024a) >> 8)
      002021 A3               [24] 1133 	inc	dptr
      002022 F0               [24] 1134 	movx	@dptr,a
      002023 74 00            [12] 1135 	mov	a,#0x00
      002025 A3               [24] 1136 	inc	dptr
      002026 F0               [24] 1137 	movx	@dptr,a
                                   1138 ;	../osal/common/OSAL_Memory.c:357: do
      002027                       1139 00142$:
      002027 90 10 09         [24] 1140 	mov	dptr,#_osal_mem_alloc_size_1_83
      00202A E0               [24] 1141 	movx	a,@dptr
      00202B FE               [12] 1142 	mov	r6,a
      00202C A3               [24] 1143 	inc	dptr
      00202D E0               [24] 1144 	movx	a,@dptr
      00202E FF               [12] 1145 	mov	r7,a
      00202F                       1146 00124$:
                                   1147 ;	../osal/common/OSAL_Memory.c:359: if ( hdr->hdr.inUse )
      00202F 90 10 0E         [24] 1148 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      002032 E0               [24] 1149 	movx	a,@dptr
      002033 FB               [12] 1150 	mov	r3,a
      002034 A3               [24] 1151 	inc	dptr
      002035 E0               [24] 1152 	movx	a,@dptr
      002036 FC               [12] 1153 	mov	r4,a
      002037 A3               [24] 1154 	inc	dptr
      002038 E0               [24] 1155 	movx	a,@dptr
      002039 FD               [12] 1156 	mov	r5,a
      00203A 0B               [12] 1157 	inc	r3
      00203B BB 00 01         [24] 1158 	cjne	r3,#0x00,00172$
      00203E 0C               [12] 1159 	inc	r4
      00203F                       1160 00172$:
      00203F 8B 82            [24] 1161 	mov	dpl,r3
      002041 8C 83            [24] 1162 	mov	dph,r4
      002043 8D F0            [24] 1163 	mov	b,r5
      002045 12 5B 16         [24] 1164 	lcall	__gptrget
      002048 20 E7 03         [24] 1165 	jb	acc.7,00173$
      00204B 02 20 57         [24] 1166 	ljmp	00120$
      00204E                       1167 00173$:
                                   1168 ;	../osal/common/OSAL_Memory.c:361: coal = 0;
      00204E 90 10 11         [24] 1169 	mov	dptr,#_osal_mem_alloc_coal_1_84
      002051 74 00            [12] 1170 	mov	a,#0x00
      002053 F0               [24] 1171 	movx	@dptr,a
      002054 02 21 50         [24] 1172 	ljmp	00121$
      002057                       1173 00120$:
                                   1174 ;	../osal/common/OSAL_Memory.c:365: if ( coal != 0 )
      002057 90 10 11         [24] 1175 	mov	dptr,#_osal_mem_alloc_coal_1_84
      00205A E0               [24] 1176 	movx	a,@dptr
      00205B FD               [12] 1177 	mov	r5,a
      00205C ED               [12] 1178 	mov	a,r5
      00205D 70 03            [24] 1179 	jnz	00174$
      00205F 02 21 0E         [24] 1180 	ljmp	00117$
      002062                       1181 00174$:
                                   1182 ;	../osal/common/OSAL_Memory.c:374: prev->hdr.len += hdr->hdr.len;
      002062 90 10 0B         [24] 1183 	mov	dptr,#_osal_mem_alloc_prev_1_84
      002065 E0               [24] 1184 	movx	a,@dptr
      002066 FB               [12] 1185 	mov	r3,a
      002067 A3               [24] 1186 	inc	dptr
      002068 E0               [24] 1187 	movx	a,@dptr
      002069 FC               [12] 1188 	mov	r4,a
      00206A A3               [24] 1189 	inc	dptr
      00206B E0               [24] 1190 	movx	a,@dptr
      00206C FD               [12] 1191 	mov	r5,a
      00206D 8B 3A            [24] 1192 	mov	_osal_mem_alloc_sloc0_1_0,r3
      00206F 8C 3B            [24] 1193 	mov	(_osal_mem_alloc_sloc0_1_0 + 1),r4
      002071 8D 3C            [24] 1194 	mov	(_osal_mem_alloc_sloc0_1_0 + 2),r5
      002073 8B 00            [24] 1195 	mov	ar0,r3
      002075 8C 01            [24] 1196 	mov	ar1,r4
      002077 8D 02            [24] 1197 	mov	ar2,r5
      002079 88 82            [24] 1198 	mov	dpl,r0
      00207B 89 83            [24] 1199 	mov	dph,r1
      00207D 8A F0            [24] 1200 	mov	b,r2
      00207F 12 5B 16         [24] 1201 	lcall	__gptrget
      002082 F5 3D            [12] 1202 	mov	_osal_mem_alloc_sloc1_1_0,a
      002084 A3               [24] 1203 	inc	dptr
      002085 12 5B 16         [24] 1204 	lcall	__gptrget
      002088 54 7F            [12] 1205 	anl	a,#0x7F
      00208A F5 3E            [12] 1206 	mov	(_osal_mem_alloc_sloc1_1_0 + 1),a
      00208C 90 10 0E         [24] 1207 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      00208F E0               [24] 1208 	movx	a,@dptr
      002090 F8               [12] 1209 	mov	r0,a
      002091 A3               [24] 1210 	inc	dptr
      002092 E0               [24] 1211 	movx	a,@dptr
      002093 F9               [12] 1212 	mov	r1,a
      002094 A3               [24] 1213 	inc	dptr
      002095 E0               [24] 1214 	movx	a,@dptr
      002096 FA               [12] 1215 	mov	r2,a
      002097 88 82            [24] 1216 	mov	dpl,r0
      002099 89 83            [24] 1217 	mov	dph,r1
      00209B 8A F0            [24] 1218 	mov	b,r2
      00209D 12 5B 16         [24] 1219 	lcall	__gptrget
      0020A0 F5 3F            [12] 1220 	mov	_osal_mem_alloc_sloc2_1_0,a
      0020A2 A3               [24] 1221 	inc	dptr
      0020A3 12 5B 16         [24] 1222 	lcall	__gptrget
      0020A6 54 7F            [12] 1223 	anl	a,#0x7F
      0020A8 F5 40            [12] 1224 	mov	(_osal_mem_alloc_sloc2_1_0 + 1),a
      0020AA A8 3F            [24] 1225 	mov	r0,_osal_mem_alloc_sloc2_1_0
      0020AC AA 40            [24] 1226 	mov	r2,(_osal_mem_alloc_sloc2_1_0 + 1)
      0020AE E8               [12] 1227 	mov	a,r0
      0020AF 25 3D            [12] 1228 	add	a,_osal_mem_alloc_sloc1_1_0
      0020B1 F8               [12] 1229 	mov	r0,a
      0020B2 EA               [12] 1230 	mov	a,r2
      0020B3 35 3E            [12] 1231 	addc	a,(_osal_mem_alloc_sloc1_1_0 + 1)
      0020B5 FA               [12] 1232 	mov	r2,a
      0020B6 85 3A 82         [24] 1233 	mov	dpl,_osal_mem_alloc_sloc0_1_0
      0020B9 85 3B 83         [24] 1234 	mov	dph,(_osal_mem_alloc_sloc0_1_0 + 1)
      0020BC 85 3C F0         [24] 1235 	mov	b,(_osal_mem_alloc_sloc0_1_0 + 2)
      0020BF E5 00            [12] 1236 	mov	a,ar0
      0020C1 12 59 AA         [24] 1237 	lcall	__gptrput
      0020C4 A3               [24] 1238 	inc	dptr
      0020C5 EA               [12] 1239 	mov	a,r2
      0020C6 54 7F            [12] 1240 	anl	a,#0x7F
      0020C8 C0 F0            [24] 1241 	push	b
      0020CA C0 E0            [24] 1242 	push	acc
      0020CC 12 5B 16         [24] 1243 	lcall	__gptrget
      0020CF D0 F0            [24] 1244 	pop	b
      0020D1 54 80            [12] 1245 	anl	a,#0x80
      0020D3 45 F0            [12] 1246 	orl	a,b
      0020D5 D0 F0            [24] 1247 	pop	b
      0020D7 12 59 AA         [24] 1248 	lcall	__gptrput
                                   1249 ;	../osal/common/OSAL_Memory.c:376: if ( prev->hdr.len >= size )
      0020DA 8B 82            [24] 1250 	mov	dpl,r3
      0020DC 8C 83            [24] 1251 	mov	dph,r4
      0020DE 8D F0            [24] 1252 	mov	b,r5
      0020E0 12 5B 16         [24] 1253 	lcall	__gptrget
      0020E3 FB               [12] 1254 	mov	r3,a
      0020E4 A3               [24] 1255 	inc	dptr
      0020E5 12 5B 16         [24] 1256 	lcall	__gptrget
      0020E8 54 7F            [12] 1257 	anl	a,#0x7F
      0020EA FC               [12] 1258 	mov	r4,a
      0020EB C3               [12] 1259 	clr	c
      0020EC EB               [12] 1260 	mov	a,r3
      0020ED 9E               [12] 1261 	subb	a,r6
      0020EE EC               [12] 1262 	mov	a,r4
      0020EF 9F               [12] 1263 	subb	a,r7
      0020F0 50 03            [24] 1264 	jnc	00175$
      0020F2 02 21 50         [24] 1265 	ljmp	00121$
      0020F5                       1266 00175$:
                                   1267 ;	../osal/common/OSAL_Memory.c:378: hdr = prev;
      0020F5 90 10 0B         [24] 1268 	mov	dptr,#_osal_mem_alloc_prev_1_84
      0020F8 E0               [24] 1269 	movx	a,@dptr
      0020F9 FB               [12] 1270 	mov	r3,a
      0020FA A3               [24] 1271 	inc	dptr
      0020FB E0               [24] 1272 	movx	a,@dptr
      0020FC FC               [12] 1273 	mov	r4,a
      0020FD A3               [24] 1274 	inc	dptr
      0020FE E0               [24] 1275 	movx	a,@dptr
      0020FF FD               [12] 1276 	mov	r5,a
      002100 90 10 0E         [24] 1277 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      002103 EB               [12] 1278 	mov	a,r3
      002104 F0               [24] 1279 	movx	@dptr,a
      002105 EC               [12] 1280 	mov	a,r4
      002106 A3               [24] 1281 	inc	dptr
      002107 F0               [24] 1282 	movx	@dptr,a
      002108 ED               [12] 1283 	mov	a,r5
      002109 A3               [24] 1284 	inc	dptr
      00210A F0               [24] 1285 	movx	@dptr,a
                                   1286 ;	../osal/common/OSAL_Memory.c:379: break;
      00210B 02 21 AE         [24] 1287 	ljmp	00126$
      00210E                       1288 00117$:
                                   1289 ;	../osal/common/OSAL_Memory.c:392: if ( (hdr->hdr.len) >= size )
      00210E 90 10 0E         [24] 1290 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      002111 E0               [24] 1291 	movx	a,@dptr
      002112 FB               [12] 1292 	mov	r3,a
      002113 A3               [24] 1293 	inc	dptr
      002114 E0               [24] 1294 	movx	a,@dptr
      002115 FC               [12] 1295 	mov	r4,a
      002116 A3               [24] 1296 	inc	dptr
      002117 E0               [24] 1297 	movx	a,@dptr
      002118 FD               [12] 1298 	mov	r5,a
      002119 8B 82            [24] 1299 	mov	dpl,r3
      00211B 8C 83            [24] 1300 	mov	dph,r4
      00211D 8D F0            [24] 1301 	mov	b,r5
      00211F 12 5B 16         [24] 1302 	lcall	__gptrget
      002122 FB               [12] 1303 	mov	r3,a
      002123 A3               [24] 1304 	inc	dptr
      002124 12 5B 16         [24] 1305 	lcall	__gptrget
      002127 54 7F            [12] 1306 	anl	a,#0x7F
      002129 FC               [12] 1307 	mov	r4,a
      00212A C3               [12] 1308 	clr	c
      00212B EB               [12] 1309 	mov	a,r3
      00212C 9E               [12] 1310 	subb	a,r6
      00212D EC               [12] 1311 	mov	a,r4
      00212E 9F               [12] 1312 	subb	a,r7
      00212F 40 03            [24] 1313 	jc	00176$
      002131 02 21 AE         [24] 1314 	ljmp	00126$
      002134                       1315 00176$:
                                   1316 ;	../osal/common/OSAL_Memory.c:400: coal = 1;
      002134 90 10 11         [24] 1317 	mov	dptr,#_osal_mem_alloc_coal_1_84
      002137 74 01            [12] 1318 	mov	a,#0x01
      002139 F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	../osal/common/OSAL_Memory.c:401: prev = hdr;
      00213A 90 10 0E         [24] 1321 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      00213D E0               [24] 1322 	movx	a,@dptr
      00213E FB               [12] 1323 	mov	r3,a
      00213F A3               [24] 1324 	inc	dptr
      002140 E0               [24] 1325 	movx	a,@dptr
      002141 FC               [12] 1326 	mov	r4,a
      002142 A3               [24] 1327 	inc	dptr
      002143 E0               [24] 1328 	movx	a,@dptr
      002144 FD               [12] 1329 	mov	r5,a
      002145 90 10 0B         [24] 1330 	mov	dptr,#_osal_mem_alloc_prev_1_84
      002148 EB               [12] 1331 	mov	a,r3
      002149 F0               [24] 1332 	movx	@dptr,a
      00214A EC               [12] 1333 	mov	a,r4
      00214B A3               [24] 1334 	inc	dptr
      00214C F0               [24] 1335 	movx	@dptr,a
      00214D ED               [12] 1336 	mov	a,r5
      00214E A3               [24] 1337 	inc	dptr
      00214F F0               [24] 1338 	movx	@dptr,a
      002150                       1339 00121$:
                                   1340 ;	../osal/common/OSAL_Memory.c:405: hdr = (osalMemHdr_t *)((uint8 *)hdr + hdr->hdr.len);
      002150 90 10 0E         [24] 1341 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      002153 E0               [24] 1342 	movx	a,@dptr
      002154 FB               [12] 1343 	mov	r3,a
      002155 A3               [24] 1344 	inc	dptr
      002156 E0               [24] 1345 	movx	a,@dptr
      002157 FC               [12] 1346 	mov	r4,a
      002158 A3               [24] 1347 	inc	dptr
      002159 E0               [24] 1348 	movx	a,@dptr
      00215A FD               [12] 1349 	mov	r5,a
      00215B 8B 00            [24] 1350 	mov	ar0,r3
      00215D 8C 01            [24] 1351 	mov	ar1,r4
      00215F 8D 02            [24] 1352 	mov	ar2,r5
      002161 8B 82            [24] 1353 	mov	dpl,r3
      002163 8C 83            [24] 1354 	mov	dph,r4
      002165 8D F0            [24] 1355 	mov	b,r5
      002167 12 5B 16         [24] 1356 	lcall	__gptrget
      00216A FB               [12] 1357 	mov	r3,a
      00216B A3               [24] 1358 	inc	dptr
      00216C 12 5B 16         [24] 1359 	lcall	__gptrget
      00216F 54 7F            [12] 1360 	anl	a,#0x7F
      002171 FC               [12] 1361 	mov	r4,a
      002172 EB               [12] 1362 	mov	a,r3
      002173 28               [12] 1363 	add	a,r0
      002174 F8               [12] 1364 	mov	r0,a
      002175 EC               [12] 1365 	mov	a,r4
      002176 39               [12] 1366 	addc	a,r1
      002177 F9               [12] 1367 	mov	r1,a
      002178 90 10 0E         [24] 1368 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      00217B E8               [12] 1369 	mov	a,r0
      00217C F0               [24] 1370 	movx	@dptr,a
      00217D E9               [12] 1371 	mov	a,r1
      00217E A3               [24] 1372 	inc	dptr
      00217F F0               [24] 1373 	movx	@dptr,a
      002180 EA               [12] 1374 	mov	a,r2
      002181 A3               [24] 1375 	inc	dptr
      002182 F0               [24] 1376 	movx	@dptr,a
                                   1377 ;	../osal/common/OSAL_Memory.c:408: if ( hdr->val == 0 )
      002183 90 10 0E         [24] 1378 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      002186 E0               [24] 1379 	movx	a,@dptr
      002187 FB               [12] 1380 	mov	r3,a
      002188 A3               [24] 1381 	inc	dptr
      002189 E0               [24] 1382 	movx	a,@dptr
      00218A FC               [12] 1383 	mov	r4,a
      00218B A3               [24] 1384 	inc	dptr
      00218C E0               [24] 1385 	movx	a,@dptr
      00218D FD               [12] 1386 	mov	r5,a
      00218E 8B 82            [24] 1387 	mov	dpl,r3
      002190 8C 83            [24] 1388 	mov	dph,r4
      002192 8D F0            [24] 1389 	mov	b,r5
      002194 12 5B 16         [24] 1390 	lcall	__gptrget
      002197 FB               [12] 1391 	mov	r3,a
      002198 A3               [24] 1392 	inc	dptr
      002199 12 5B 16         [24] 1393 	lcall	__gptrget
      00219C FC               [12] 1394 	mov	r4,a
      00219D EB               [12] 1395 	mov	a,r3
      00219E 4C               [12] 1396 	orl	a,r4
      00219F 60 03            [24] 1397 	jz	00177$
      0021A1 02 20 2F         [24] 1398 	ljmp	00124$
      0021A4                       1399 00177$:
                                   1400 ;	../osal/common/OSAL_Memory.c:410: hdr = NULL;
      0021A4 90 10 0E         [24] 1401 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      0021A7 74 00            [12] 1402 	mov	a,#0x00
      0021A9 F0               [24] 1403 	movx	@dptr,a
      0021AA A3               [24] 1404 	inc	dptr
      0021AB F0               [24] 1405 	movx	@dptr,a
      0021AC A3               [24] 1406 	inc	dptr
      0021AD F0               [24] 1407 	movx	@dptr,a
                                   1408 ;	../osal/common/OSAL_Memory.c:415: } while (1);
      0021AE                       1409 00126$:
                                   1410 ;	../osal/common/OSAL_Memory.c:417: if ( hdr != NULL )
      0021AE 90 10 0E         [24] 1411 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      0021B1 E0               [24] 1412 	movx	a,@dptr
      0021B2 FD               [12] 1413 	mov	r5,a
      0021B3 A3               [24] 1414 	inc	dptr
      0021B4 E0               [24] 1415 	movx	a,@dptr
      0021B5 FE               [12] 1416 	mov	r6,a
      0021B6 A3               [24] 1417 	inc	dptr
      0021B7 E0               [24] 1418 	movx	a,@dptr
      0021B8 FF               [12] 1419 	mov	r7,a
      0021B9 ED               [12] 1420 	mov	a,r5
      0021BA 4E               [12] 1421 	orl	a,r6
      0021BB 70 03            [24] 1422 	jnz	00178$
      0021BD 02 22 ED         [24] 1423 	ljmp	00134$
      0021C0                       1424 00178$:
                                   1425 ;	../osal/common/OSAL_Memory.c:419: uint16 tmp = hdr->hdr.len - size;
      0021C0 90 10 0E         [24] 1426 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      0021C3 E0               [24] 1427 	movx	a,@dptr
      0021C4 FD               [12] 1428 	mov	r5,a
      0021C5 A3               [24] 1429 	inc	dptr
      0021C6 E0               [24] 1430 	movx	a,@dptr
      0021C7 FE               [12] 1431 	mov	r6,a
      0021C8 A3               [24] 1432 	inc	dptr
      0021C9 E0               [24] 1433 	movx	a,@dptr
      0021CA FF               [12] 1434 	mov	r7,a
      0021CB 8D 82            [24] 1435 	mov	dpl,r5
      0021CD 8E 83            [24] 1436 	mov	dph,r6
      0021CF 8F F0            [24] 1437 	mov	b,r7
      0021D1 12 5B 16         [24] 1438 	lcall	__gptrget
      0021D4 FD               [12] 1439 	mov	r5,a
      0021D5 A3               [24] 1440 	inc	dptr
      0021D6 12 5B 16         [24] 1441 	lcall	__gptrget
      0021D9 54 7F            [12] 1442 	anl	a,#0x7F
      0021DB FE               [12] 1443 	mov	r6,a
      0021DC 90 10 09         [24] 1444 	mov	dptr,#_osal_mem_alloc_size_1_83
      0021DF E0               [24] 1445 	movx	a,@dptr
      0021E0 FC               [12] 1446 	mov	r4,a
      0021E1 A3               [24] 1447 	inc	dptr
      0021E2 E0               [24] 1448 	movx	a,@dptr
      0021E3 FF               [12] 1449 	mov	r7,a
      0021E4 ED               [12] 1450 	mov	a,r5
      0021E5 C3               [12] 1451 	clr	c
      0021E6 9C               [12] 1452 	subb	a,r4
      0021E7 FD               [12] 1453 	mov	r5,a
      0021E8 EE               [12] 1454 	mov	a,r6
      0021E9 9F               [12] 1455 	subb	a,r7
      0021EA FE               [12] 1456 	mov	r6,a
      0021EB 90 10 12         [24] 1457 	mov	dptr,#_osal_mem_alloc_tmp_2_98
      0021EE ED               [12] 1458 	mov	a,r5
      0021EF F0               [24] 1459 	movx	@dptr,a
      0021F0 EE               [12] 1460 	mov	a,r6
      0021F1 A3               [24] 1461 	inc	dptr
      0021F2 F0               [24] 1462 	movx	@dptr,a
                                   1463 ;	../osal/common/OSAL_Memory.c:422: if ( tmp >= OSALMEM_MIN_BLKSZ )
      0021F3 C3               [12] 1464 	clr	c
      0021F4 ED               [12] 1465 	mov	a,r5
      0021F5 94 04            [12] 1466 	subb	a,#0x04
      0021F7 EE               [12] 1467 	mov	a,r6
      0021F8 94 00            [12] 1468 	subb	a,#0x00
      0021FA 50 03            [24] 1469 	jnc	00179$
      0021FC 02 22 53         [24] 1470 	ljmp	00128$
      0021FF                       1471 00179$:
                                   1472 ;	../osal/common/OSAL_Memory.c:425: osalMemHdr_t *next = (osalMemHdr_t *)((uint8 *)hdr + size);
      0021FF 90 10 0E         [24] 1473 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      002202 E0               [24] 1474 	movx	a,@dptr
      002203 FD               [12] 1475 	mov	r5,a
      002204 A3               [24] 1476 	inc	dptr
      002205 E0               [24] 1477 	movx	a,@dptr
      002206 FE               [12] 1478 	mov	r6,a
      002207 A3               [24] 1479 	inc	dptr
      002208 E0               [24] 1480 	movx	a,@dptr
      002209 FF               [12] 1481 	mov	r7,a
      00220A 8D 02            [24] 1482 	mov	ar2,r5
      00220C 8E 03            [24] 1483 	mov	ar3,r6
      00220E 8F 04            [24] 1484 	mov	ar4,r7
      002210 90 10 09         [24] 1485 	mov	dptr,#_osal_mem_alloc_size_1_83
      002213 E0               [24] 1486 	movx	a,@dptr
      002214 F8               [12] 1487 	mov	r0,a
      002215 A3               [24] 1488 	inc	dptr
      002216 E0               [24] 1489 	movx	a,@dptr
      002217 F9               [12] 1490 	mov	r1,a
      002218 E8               [12] 1491 	mov	a,r0
      002219 2A               [12] 1492 	add	a,r2
      00221A FA               [12] 1493 	mov	r2,a
      00221B E9               [12] 1494 	mov	a,r1
      00221C 3B               [12] 1495 	addc	a,r3
      00221D FB               [12] 1496 	mov	r3,a
      00221E 8A 3A            [24] 1497 	mov	_osal_mem_alloc_sloc0_1_0,r2
      002220 8B 3B            [24] 1498 	mov	(_osal_mem_alloc_sloc0_1_0 + 1),r3
      002222 8C 3C            [24] 1499 	mov	(_osal_mem_alloc_sloc0_1_0 + 2),r4
                                   1500 ;	../osal/common/OSAL_Memory.c:426: next->val = tmp;                     // Set 'len' & clear 'inUse' field.
      002224 90 10 12         [24] 1501 	mov	dptr,#_osal_mem_alloc_tmp_2_98
      002227 E0               [24] 1502 	movx	a,@dptr
      002228 FB               [12] 1503 	mov	r3,a
      002229 A3               [24] 1504 	inc	dptr
      00222A E0               [24] 1505 	movx	a,@dptr
      00222B FC               [12] 1506 	mov	r4,a
      00222C 85 3A 82         [24] 1507 	mov	dpl,_osal_mem_alloc_sloc0_1_0
      00222F 85 3B 83         [24] 1508 	mov	dph,(_osal_mem_alloc_sloc0_1_0 + 1)
      002232 85 3C F0         [24] 1509 	mov	b,(_osal_mem_alloc_sloc0_1_0 + 2)
      002235 EB               [12] 1510 	mov	a,r3
      002236 12 59 AA         [24] 1511 	lcall	__gptrput
      002239 A3               [24] 1512 	inc	dptr
      00223A EC               [12] 1513 	mov	a,r4
      00223B 12 59 AA         [24] 1514 	lcall	__gptrput
                                   1515 ;	../osal/common/OSAL_Memory.c:427: hdr->val = (size | OSALMEM_IN_USE);  // Set 'len' & 'inUse' field.
      00223E 43 01 80         [24] 1516 	orl	ar1,#0x80
      002241 8D 82            [24] 1517 	mov	dpl,r5
      002243 8E 83            [24] 1518 	mov	dph,r6
      002245 8F F0            [24] 1519 	mov	b,r7
      002247 E8               [12] 1520 	mov	a,r0
      002248 12 59 AA         [24] 1521 	lcall	__gptrput
      00224B A3               [24] 1522 	inc	dptr
      00224C E9               [12] 1523 	mov	a,r1
      00224D 12 59 AA         [24] 1524 	lcall	__gptrput
      002250 02 22 71         [24] 1525 	ljmp	00129$
      002253                       1526 00128$:
                                   1527 ;	../osal/common/OSAL_Memory.c:445: hdr->hdr.inUse = TRUE;
      002253 90 10 0E         [24] 1528 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      002256 E0               [24] 1529 	movx	a,@dptr
      002257 FD               [12] 1530 	mov	r5,a
      002258 A3               [24] 1531 	inc	dptr
      002259 E0               [24] 1532 	movx	a,@dptr
      00225A FE               [12] 1533 	mov	r6,a
      00225B A3               [24] 1534 	inc	dptr
      00225C E0               [24] 1535 	movx	a,@dptr
      00225D FF               [12] 1536 	mov	r7,a
      00225E 0D               [12] 1537 	inc	r5
      00225F BD 00 01         [24] 1538 	cjne	r5,#0x00,00180$
      002262 0E               [12] 1539 	inc	r6
      002263                       1540 00180$:
      002263 8D 82            [24] 1541 	mov	dpl,r5
      002265 8E 83            [24] 1542 	mov	dph,r6
      002267 8F F0            [24] 1543 	mov	b,r7
      002269 12 5B 16         [24] 1544 	lcall	__gptrget
      00226C 44 80            [12] 1545 	orl	a,#0x80
      00226E 12 59 AA         [24] 1546 	lcall	__gptrput
      002271                       1547 00129$:
                                   1548 ;	../osal/common/OSAL_Memory.c:493: if ((osalMemStat != 0) && (ff1 == hdr))
      002271 90 10 08         [24] 1549 	mov	dptr,#_osalMemStat
      002274 E0               [24] 1550 	movx	a,@dptr
      002275 FF               [12] 1551 	mov	r7,a
      002276 EF               [12] 1552 	mov	a,r7
      002277 70 03            [24] 1553 	jnz	00181$
      002279 02 22 E1         [24] 1554 	ljmp	00131$
      00227C                       1555 00181$:
      00227C 90 10 05         [24] 1556 	mov	dptr,#_ff1
      00227F E0               [24] 1557 	movx	a,@dptr
      002280 FD               [12] 1558 	mov	r5,a
      002281 A3               [24] 1559 	inc	dptr
      002282 E0               [24] 1560 	movx	a,@dptr
      002283 FE               [12] 1561 	mov	r6,a
      002284 A3               [24] 1562 	inc	dptr
      002285 E0               [24] 1563 	movx	a,@dptr
      002286 FF               [12] 1564 	mov	r7,a
      002287 90 10 0E         [24] 1565 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      00228A E0               [24] 1566 	movx	a,@dptr
      00228B FA               [12] 1567 	mov	r2,a
      00228C A3               [24] 1568 	inc	dptr
      00228D E0               [24] 1569 	movx	a,@dptr
      00228E FB               [12] 1570 	mov	r3,a
      00228F A3               [24] 1571 	inc	dptr
      002290 E0               [24] 1572 	movx	a,@dptr
      002291 FC               [12] 1573 	mov	r4,a
      002292 C0 02            [24] 1574 	push	ar2
      002294 C0 03            [24] 1575 	push	ar3
      002296 C0 04            [24] 1576 	push	ar4
      002298 8D 82            [24] 1577 	mov	dpl,r5
      00229A 8E 83            [24] 1578 	mov	dph,r6
      00229C 8F F0            [24] 1579 	mov	b,r7
      00229E 12 00 06         [24] 1580 	lcall	___gptr_cmp
      0022A1 15 81            [12] 1581 	dec	sp
      0022A3 15 81            [12] 1582 	dec	sp
      0022A5 15 81            [12] 1583 	dec	sp
      0022A7 70 02            [24] 1584 	jnz	00182$
      0022A9 80 03            [24] 1585 	sjmp	00183$
      0022AB                       1586 00182$:
      0022AB 02 22 E1         [24] 1587 	ljmp	00131$
      0022AE                       1588 00183$:
                                   1589 ;	../osal/common/OSAL_Memory.c:495: ff1 = (osalMemHdr_t *)((uint8 *)hdr + hdr->hdr.len);
      0022AE 90 10 0E         [24] 1590 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      0022B1 E0               [24] 1591 	movx	a,@dptr
      0022B2 FD               [12] 1592 	mov	r5,a
      0022B3 A3               [24] 1593 	inc	dptr
      0022B4 E0               [24] 1594 	movx	a,@dptr
      0022B5 FE               [12] 1595 	mov	r6,a
      0022B6 A3               [24] 1596 	inc	dptr
      0022B7 E0               [24] 1597 	movx	a,@dptr
      0022B8 FF               [12] 1598 	mov	r7,a
      0022B9 8D 02            [24] 1599 	mov	ar2,r5
      0022BB 8E 03            [24] 1600 	mov	ar3,r6
      0022BD 8F 04            [24] 1601 	mov	ar4,r7
      0022BF 8D 82            [24] 1602 	mov	dpl,r5
      0022C1 8E 83            [24] 1603 	mov	dph,r6
      0022C3 8F F0            [24] 1604 	mov	b,r7
      0022C5 12 5B 16         [24] 1605 	lcall	__gptrget
      0022C8 FD               [12] 1606 	mov	r5,a
      0022C9 A3               [24] 1607 	inc	dptr
      0022CA 12 5B 16         [24] 1608 	lcall	__gptrget
      0022CD 54 7F            [12] 1609 	anl	a,#0x7F
      0022CF FE               [12] 1610 	mov	r6,a
      0022D0 ED               [12] 1611 	mov	a,r5
      0022D1 2A               [12] 1612 	add	a,r2
      0022D2 FA               [12] 1613 	mov	r2,a
      0022D3 EE               [12] 1614 	mov	a,r6
      0022D4 3B               [12] 1615 	addc	a,r3
      0022D5 FB               [12] 1616 	mov	r3,a
      0022D6 90 10 05         [24] 1617 	mov	dptr,#_ff1
      0022D9 EA               [12] 1618 	mov	a,r2
      0022DA F0               [24] 1619 	movx	@dptr,a
      0022DB EB               [12] 1620 	mov	a,r3
      0022DC A3               [24] 1621 	inc	dptr
      0022DD F0               [24] 1622 	movx	@dptr,a
      0022DE EC               [12] 1623 	mov	a,r4
      0022DF A3               [24] 1624 	inc	dptr
      0022E0 F0               [24] 1625 	movx	@dptr,a
      0022E1                       1626 00131$:
                                   1627 ;	../osal/common/OSAL_Memory.c:498: hdr++;
      0022E1 90 10 0E         [24] 1628 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      0022E4 E0               [24] 1629 	movx	a,@dptr
      0022E5 24 02            [12] 1630 	add	a,#0x02
      0022E7 F0               [24] 1631 	movx	@dptr,a
      0022E8 A3               [24] 1632 	inc	dptr
      0022E9 E0               [24] 1633 	movx	a,@dptr
      0022EA 34 00            [12] 1634 	addc	a,#0x00
      0022EC F0               [24] 1635 	movx	@dptr,a
      0022ED                       1636 00134$:
                                   1637 ;	../osal/common/OSAL_Memory.c:531: __endasm;
      0022ED C3               [12] 1638 	clr c;
                                   1639 ;	../osal/common/OSAL_Memory.c:536: return (void *)hdr;
      0022EE 90 10 0E         [24] 1640 	mov	dptr,#_osal_mem_alloc_hdr_1_84
      0022F1 E0               [24] 1641 	movx	a,@dptr
      0022F2 FD               [12] 1642 	mov	r5,a
      0022F3 A3               [24] 1643 	inc	dptr
      0022F4 E0               [24] 1644 	movx	a,@dptr
      0022F5 FE               [12] 1645 	mov	r6,a
      0022F6 A3               [24] 1646 	inc	dptr
      0022F7 E0               [24] 1647 	movx	a,@dptr
      0022F8 FF               [12] 1648 	mov	r7,a
      0022F9 8D 82            [24] 1649 	mov	dpl,r5
      0022FB 8E 83            [24] 1650 	mov	dph,r6
      0022FD 8F F0            [24] 1651 	mov	b,r7
      0022FF                       1652 00135$:
      0022FF 22               [24] 1653 	ret
                                   1654 ;------------------------------------------------------------
                                   1655 ;Allocation info for local variables in function 'osal_mem_free'
                                   1656 ;------------------------------------------------------------
                                   1657 ;ptr                       Allocated with name '_osal_mem_free_ptr_1_102'
                                   1658 ;hdr                       Allocated with name '_osal_mem_free_hdr_1_103'
                                   1659 ;intState                  Allocated with name '_osal_mem_free_intState_1_103'
                                   1660 ;------------------------------------------------------------
                                   1661 ;	../osal/common/OSAL_Memory.c:557: void osal_mem_free(void *ptr)
                                   1662 ;	-----------------------------------------
                                   1663 ;	 function osal_mem_free
                                   1664 ;	-----------------------------------------
      002300                       1665 _osal_mem_free:
      002300 AF F0            [24] 1666 	mov	r7,b
      002302 AE 83            [24] 1667 	mov	r6,dph
      002304 E5 82            [12] 1668 	mov	a,dpl
      002306 90 10 14         [24] 1669 	mov	dptr,#_osal_mem_free_ptr_1_102
      002309 F0               [24] 1670 	movx	@dptr,a
      00230A EE               [12] 1671 	mov	a,r6
      00230B A3               [24] 1672 	inc	dptr
      00230C F0               [24] 1673 	movx	@dptr,a
      00230D EF               [12] 1674 	mov	a,r7
      00230E A3               [24] 1675 	inc	dptr
      00230F F0               [24] 1676 	movx	@dptr,a
                                   1677 ;	../osal/common/OSAL_Memory.c:560: osalMemHdr_t *hdr = (osalMemHdr_t *)ptr - 1;
      002310 90 10 14         [24] 1678 	mov	dptr,#_osal_mem_free_ptr_1_102
      002313 E0               [24] 1679 	movx	a,@dptr
      002314 FD               [12] 1680 	mov	r5,a
      002315 A3               [24] 1681 	inc	dptr
      002316 E0               [24] 1682 	movx	a,@dptr
      002317 FE               [12] 1683 	mov	r6,a
      002318 A3               [24] 1684 	inc	dptr
      002319 E0               [24] 1685 	movx	a,@dptr
      00231A FF               [12] 1686 	mov	r7,a
      00231B ED               [12] 1687 	mov	a,r5
      00231C 24 FE            [12] 1688 	add	a,#0xFE
      00231E FA               [12] 1689 	mov	r2,a
      00231F EE               [12] 1690 	mov	a,r6
      002320 34 FF            [12] 1691 	addc	a,#0xFF
      002322 FB               [12] 1692 	mov	r3,a
      002323 8F 04            [24] 1693 	mov	ar4,r7
      002325 90 10 17         [24] 1694 	mov	dptr,#_osal_mem_free_hdr_1_103
      002328 EA               [12] 1695 	mov	a,r2
      002329 F0               [24] 1696 	movx	@dptr,a
      00232A EB               [12] 1697 	mov	a,r3
      00232B A3               [24] 1698 	inc	dptr
      00232C F0               [24] 1699 	movx	@dptr,a
      00232D EC               [12] 1700 	mov	a,r4
      00232E A3               [24] 1701 	inc	dptr
      00232F F0               [24] 1702 	movx	@dptr,a
                                   1703 ;	../osal/common/OSAL_Memory.c:570: HAL_ENTER_CRITICAL_SECTION( intState );  // Hold off interrupts.
      002330 90 10 1A         [24] 1704 	mov	dptr,#_osal_mem_free_intState_1_103
      002333 A2 AF            [12] 1705 	mov	c,_EA
      002335 E4               [12] 1706 	clr	a
      002336 33               [12] 1707 	rlc	a
      002337 F0               [24] 1708 	movx	@dptr,a
      002338 C2 AF            [12] 1709 	clr	_EA
                                   1710 ;	../osal/common/OSAL_Memory.c:571: hdr->hdr.inUse = FALSE;
      00233A 74 FF            [12] 1711 	mov	a,#0xFF
      00233C 2D               [12] 1712 	add	a,r5
      00233D FD               [12] 1713 	mov	r5,a
      00233E 74 FF            [12] 1714 	mov	a,#0xFF
      002340 3E               [12] 1715 	addc	a,r6
      002341 FE               [12] 1716 	mov	r6,a
      002342 8D 82            [24] 1717 	mov	dpl,r5
      002344 8E 83            [24] 1718 	mov	dph,r6
      002346 8F F0            [24] 1719 	mov	b,r7
      002348 12 5B 16         [24] 1720 	lcall	__gptrget
      00234B 54 7F            [12] 1721 	anl	a,#0x7F
      00234D 12 59 AA         [24] 1722 	lcall	__gptrput
                                   1723 ;	../osal/common/OSAL_Memory.c:573: if (ff1 > hdr)
      002350 90 10 05         [24] 1724 	mov	dptr,#_ff1
      002353 E0               [24] 1725 	movx	a,@dptr
      002354 FD               [12] 1726 	mov	r5,a
      002355 A3               [24] 1727 	inc	dptr
      002356 E0               [24] 1728 	movx	a,@dptr
      002357 FE               [12] 1729 	mov	r6,a
      002358 A3               [24] 1730 	inc	dptr
      002359 E0               [24] 1731 	movx	a,@dptr
      00235A FF               [12] 1732 	mov	r7,a
      00235B C0 05            [24] 1733 	push	ar5
      00235D C0 06            [24] 1734 	push	ar6
      00235F C0 07            [24] 1735 	push	ar7
      002361 8A 82            [24] 1736 	mov	dpl,r2
      002363 8B 83            [24] 1737 	mov	dph,r3
      002365 8C F0            [24] 1738 	mov	b,r4
      002367 12 00 06         [24] 1739 	lcall	___gptr_cmp
      00236A 15 81            [12] 1740 	dec	sp
      00236C 15 81            [12] 1741 	dec	sp
      00236E 15 81            [12] 1742 	dec	sp
      002370 40 03            [24] 1743 	jc	00117$
      002372 02 23 8B         [24] 1744 	ljmp	00109$
      002375                       1745 00117$:
                                   1746 ;	../osal/common/OSAL_Memory.c:575: ff1 = hdr;
      002375 90 10 17         [24] 1747 	mov	dptr,#_osal_mem_free_hdr_1_103
      002378 E0               [24] 1748 	movx	a,@dptr
      002379 FD               [12] 1749 	mov	r5,a
      00237A A3               [24] 1750 	inc	dptr
      00237B E0               [24] 1751 	movx	a,@dptr
      00237C FE               [12] 1752 	mov	r6,a
      00237D A3               [24] 1753 	inc	dptr
      00237E E0               [24] 1754 	movx	a,@dptr
      00237F FF               [12] 1755 	mov	r7,a
      002380 90 10 05         [24] 1756 	mov	dptr,#_ff1
      002383 ED               [12] 1757 	mov	a,r5
      002384 F0               [24] 1758 	movx	@dptr,a
      002385 EE               [12] 1759 	mov	a,r6
      002386 A3               [24] 1760 	inc	dptr
      002387 F0               [24] 1761 	movx	@dptr,a
      002388 EF               [12] 1762 	mov	a,r7
      002389 A3               [24] 1763 	inc	dptr
      00238A F0               [24] 1764 	movx	@dptr,a
                                   1765 ;	../osal/common/OSAL_Memory.c:603: HAL_EXIT_CRITICAL_SECTION( intState );  // Re-enable interrupts.
      00238B                       1766 00109$:
      00238B 90 10 1A         [24] 1767 	mov	dptr,#_osal_mem_free_intState_1_103
      00238E E0               [24] 1768 	movx	a,@dptr
      00238F FF               [12] 1769 	mov	r7,a
      002390 EF               [12] 1770 	mov	a,r7
      002391 24 FF            [12] 1771 	add	a,#0xff
      002393 92 AF            [24] 1772 	mov	_EA,c
      002395                       1773 00112$:
      002395 22               [24] 1774 	ret
                                   1775 	.area CSEG    (CODE)
                                   1776 	.area CONST   (CODE)
                                   1777 	.area CABS    (ABS,CODE)
