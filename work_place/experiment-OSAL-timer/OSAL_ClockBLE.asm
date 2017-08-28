;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Mon Jun 29 17:16:56 2015
;--------------------------------------------------------
	.module OSAL_ClockBLE
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ll_McuPrecisionCount
	.globl _osalTimerUpdate
	.globl _MODE
	.globl _RE
	.globl _SLAVE
	.globl _FE
	.globl _ERR
	.globl _RX_BYTE
	.globl _TX_BYTE
	.globl _ACTIVE
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _WDTIF
	.globl _P1IF
	.globl _UTX1IF
	.globl _UTX0IF
	.globl _P2IF
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _OVFIM
	.globl _T4CH1IF
	.globl _T4CH0IF
	.globl _T4OVFIF
	.globl _T3CH1IF
	.globl _T3CH0IF
	.globl _T3OVFIF
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _STIF
	.globl _P0IF
	.globl _T4IF
	.globl _T3IF
	.globl _T2IF
	.globl _T1IF
	.globl _DMAIF
	.globl _P0IE
	.globl _T4IE
	.globl _T3IE
	.globl _T2IE
	.globl _T1IE
	.globl _DMAIE
	.globl _EA
	.globl _STIE
	.globl _ENCIE
	.globl _URX1IE
	.globl _URX0IE
	.globl _ADCIE
	.globl _RFERRIE
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _ENCIF_1
	.globl _ENCIF_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _URX1IF
	.globl _ADCIF
	.globl _URX0IF
	.globl _IT1
	.globl _RFERRIF
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _APCFG
	.globl _PERCFG
	.globl _B
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _RFIRQF0
	.globl _IRCON2
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _RFST
	.globl _ACC
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _RFD
	.globl _TIMIF
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _PSW
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _WDCTL
	.globl _MEMCTR
	.globl _CLKCONCMD
	.globl _U0GCR
	.globl _U0UCR
	.globl _T2MSEL
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _IRCON
	.globl _RFERRF
	.globl _SLEEPCMD
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _IP1
	.globl _IEN1
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl _T1STAT
	.globl _PMUX
	.globl _STLOAD
	.globl _P2IEN
	.globl _P0IEN
	.globl _IP0
	.globl _IEN0
	.globl _T2IRQM
	.globl _T2MOVF2
	.globl _T2MOVF1
	.globl _T2MOVF0
	.globl _T2M1
	.globl _T2M0
	.globl _T2IRQF
	.globl _P2
	.globl _FMAP
	.globl _PSBANK
	.globl _CLKCONSTA
	.globl _SLEEPSTA
	.globl _T2EVTCFG
	.globl _S1CON
	.globl _IEN2
	.globl _S0CON
	.globl _ST2
	.globl _ST1
	.globl _ST0
	.globl _T2CTRL
	.globl __XPAGE
	.globl _MPAGE
	.globl _DPS
	.globl _RFIRQF1
	.globl _P1
	.globl _P0INP
	.globl _P1IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _TCON
	.globl _PCON
	.globl _U0CSR
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _osal_ConvertUTCTime_PARM_2
	.globl _OSAL_timeSeconds
	.globl _TXFILTCFG
	.globl _RFC_OBS_CTRL2
	.globl _RFC_OBS_CTRL1
	.globl _RFC_OBS_CTRL0
	.globl _CSPT
	.globl _CSPZ
	.globl _CSPY
	.globl _CSPX
	.globl _CSPSTAT
	.globl _CSPCTRL
	.globl _CSPPROG23
	.globl _CSPPROG22
	.globl _CSPPROG21
	.globl _CSPPROG20
	.globl _CSPPROG19
	.globl _CSPPROG18
	.globl _CSPPROG17
	.globl _CSPPROG16
	.globl _CSPPROG15
	.globl _CSPPROG14
	.globl _CSPPROG13
	.globl _CSPPROG12
	.globl _CSPPROG11
	.globl _CSPPROG10
	.globl _CSPPROG9
	.globl _CSPPROG8
	.globl _CSPPROG7
	.globl _CSPPROG6
	.globl _CSPPROG5
	.globl _CSPPROG4
	.globl _CSPPROG3
	.globl _CSPPROG2
	.globl _CSPPROG1
	.globl _CSPPROG0
	.globl _PTEST1
	.globl _PTEST0
	.globl _ATEST
	.globl _DACTEST2
	.globl _DACTEST1
	.globl _DACTEST0
	.globl _MDMTEST1
	.globl _MDMTEST0
	.globl _ADCTEST2
	.globl _ADCTEST1
	.globl _ADCTEST0
	.globl _AGCCTRL3
	.globl _AGCCTRL2
	.globl _AGCCTRL1
	.globl _AGCCTRL0
	.globl _FSCAL3
	.globl _FSCAL2
	.globl _FSCAL1
	.globl _FSCTRL
	.globl _RXCTRL
	.globl _FREQEST
	.globl _MDMCTRL1
	.globl _MDMCTRL0
	.globl _RFRND
	.globl _OPAMPMC
	.globl _RFERRM
	.globl _RFIRQM1
	.globl _RFIRQM0
	.globl _TXLAST_PTR
	.globl _TXFIRST_PTR
	.globl _RXP1_PTR
	.globl _RXLAST_PTR
	.globl _RXFIRST_PTR
	.globl _TXFIFOCNT
	.globl _RXFIFOCNT
	.globl _RXFIRST
	.globl _RSSISTAT
	.globl _RSSI
	.globl _CCACTRL1
	.globl _CCACTRL0
	.globl _FSMCTRL
	.globl _FIFOPCTRL
	.globl _FSMSTAT1
	.globl _FSMSTAT0
	.globl _TXCTRL
	.globl _TXPOWER
	.globl _FREQCTRL
	.globl _FREQTUNE
	.globl _RXMASKCLR
	.globl _RXMASKSET
	.globl _RXENABLE
	.globl _FRMCTRL1
	.globl _FRMCTRL0
	.globl _SRCEXTEN2
	.globl _SRCEXTEN1
	.globl _SRCEXTEN0
	.globl _SRCSHORTEN2
	.globl _SRCSHORTEN1
	.globl _SRCSHORTEN0
	.globl _SRCMATCH
	.globl _FRMFILT1
	.globl _FRMFILT0
	.globl _IEEE_ADDR
	.globl _PANIDL
	.globl _PANIDH
	.globl _SHORTADDRL
	.globl _SHORTADDRH
	.globl _USBF5
	.globl _USBF4
	.globl _USBF3
	.globl _USBF2
	.globl _USBF1
	.globl _USBF0
	.globl _USBCNTH
	.globl _USBCNTL
	.globl _USBCNT0
	.globl _USBCSOH
	.globl _USBCSOL
	.globl _USBMAXO
	.globl _USBCSIH
	.globl _USBCSIL
	.globl _USBCS0
	.globl _USBMAXI
	.globl _USBCTRL
	.globl _USBINDEX
	.globl _USBFRMH
	.globl _USBFRML
	.globl _USBCIE
	.globl _USBOIE
	.globl _USBIIE
	.globl _USBCIF
	.globl _USBOIF
	.globl _USBIIF
	.globl _USBPOW
	.globl _USBADDR
	.globl _CMPCTL
	.globl _OPAMPS
	.globl _OPAMPC
	.globl _STCV2
	.globl _STCV1
	.globl _STCV0
	.globl _STCS
	.globl _STCC
	.globl _T1CC4H
	.globl _T1CC4L
	.globl _T1CC3H
	.globl _T1CC3L
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _T1CCTL4
	.globl _T1CCTL3
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _CLD
	.globl _IRCTL
	.globl _CHIPINFO1
	.globl _CHIPINFO0
	.globl _FWDATA
	.globl _FADDRH
	.globl _FADDRL
	.globl _FCTL
	.globl _IVCTRL
	.globl _BATTMON
	.globl _SRCRC
	.globl _DBGDATA
	.globl _TESTREG0
	.globl _CHIPID
	.globl _CHVER
	.globl _OBSSEL5
	.globl _OBSSEL4
	.globl _OBSSEL3
	.globl _OBSSEL2
	.globl _OBSSEL1
	.globl _OBSSEL0
	.globl _I2CIO
	.globl _I2CWC
	.globl _I2CADDR
	.globl _I2CDATA
	.globl _I2CSTAT
	.globl _I2CCFG
	.globl _osalTimeUpdate
	.globl _osal_setClock
	.globl _osal_getClock
	.globl _osal_ConvertUTCTime
	.globl _osal_ConvertUTCSecs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_U0CSR	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P1IEN	=	0x008d
_P0INP	=	0x008f
_P1	=	0x0090
_RFIRQF1	=	0x0091
_DPS	=	0x0092
_MPAGE	=	0x0093
__XPAGE	=	0x0093
_T2CTRL	=	0x0094
_ST0	=	0x0095
_ST1	=	0x0096
_ST2	=	0x0097
_S0CON	=	0x0098
_IEN2	=	0x009a
_S1CON	=	0x009b
_T2EVTCFG	=	0x009c
_SLEEPSTA	=	0x009d
_CLKCONSTA	=	0x009e
_PSBANK	=	0x009f
_FMAP	=	0x009f
_P2	=	0x00a0
_T2IRQF	=	0x00a1
_T2M0	=	0x00a2
_T2M1	=	0x00a3
_T2MOVF0	=	0x00a4
_T2MOVF1	=	0x00a5
_T2MOVF2	=	0x00a6
_T2IRQM	=	0x00a7
_IEN0	=	0x00a8
_IP0	=	0x00a9
_P0IEN	=	0x00ab
_P2IEN	=	0x00ac
_STLOAD	=	0x00ad
_PMUX	=	0x00ae
_T1STAT	=	0x00af
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
_IEN1	=	0x00b8
_IP1	=	0x00b9
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_SLEEPCMD	=	0x00be
_RFERRF	=	0x00bf
_IRCON	=	0x00c0
_U0DBUF	=	0x00c1
_U0BAUD	=	0x00c2
_T2MSEL	=	0x00c3
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_CLKCONCMD	=	0x00c6
_MEMCTR	=	0x00c7
_WDCTL	=	0x00c9
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_PSW	=	0x00d0
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_TIMIF	=	0x00d8
_RFD	=	0x00d9
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_ACC	=	0x00e0
_RFST	=	0x00e1
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_IRCON2	=	0x00e8
_RFIRQF0	=	0x00e9
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_B	=	0x00f0
_PERCFG	=	0x00f1
_APCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_U1CSR	=	0x00f8
_U1DBUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_RFERRIF	=	0x0089
_IT1	=	0x008a
_URX0IF	=	0x008b
_ADCIF	=	0x008d
_URX1IF	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_ENCIF_0	=	0x0098
_ENCIF_1	=	0x0099
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_RFERRIE	=	0x00a8
_ADCIE	=	0x00a9
_URX0IE	=	0x00aa
_URX1IE	=	0x00ab
_ENCIE	=	0x00ac
_STIE	=	0x00ad
_EA	=	0x00af
_DMAIE	=	0x00b8
_T1IE	=	0x00b9
_T2IE	=	0x00ba
_T3IE	=	0x00bb
_T4IE	=	0x00bc
_P0IE	=	0x00bd
_DMAIF	=	0x00c0
_T1IF	=	0x00c1
_T2IF	=	0x00c2
_T3IF	=	0x00c3
_T4IF	=	0x00c4
_P0IF	=	0x00c5
_STIF	=	0x00c7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_T3OVFIF	=	0x00d8
_T3CH0IF	=	0x00d9
_T3CH1IF	=	0x00da
_T4OVFIF	=	0x00db
_T4CH0IF	=	0x00dc
_T4CH1IF	=	0x00dd
_OVFIM	=	0x00de
_ACC_0	=	0x00e0
_ACC_1	=	0x00e1
_ACC_2	=	0x00e2
_ACC_3	=	0x00e3
_ACC_4	=	0x00e4
_ACC_5	=	0x00e5
_ACC_6	=	0x00e6
_ACC_7	=	0x00e7
_P2IF	=	0x00e8
_UTX0IF	=	0x00e9
_UTX1IF	=	0x00ea
_P1IF	=	0x00eb
_WDTIF	=	0x00ec
_B_0	=	0x00f0
_B_1	=	0x00f1
_B_2	=	0x00f2
_B_3	=	0x00f3
_B_4	=	0x00f4
_B_5	=	0x00f5
_B_6	=	0x00f6
_B_7	=	0x00f7
_ACTIVE	=	0x00f8
_TX_BYTE	=	0x00f9
_RX_BYTE	=	0x00fa
_ERR	=	0x00fb
_FE	=	0x00fc
_SLAVE	=	0x00fd
_RE	=	0x00fe
_MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_osalClockUpdate_sloc0_1_0:
	.ds 4
_osal_ConvertUTCTime_sloc0_1_0:
	.ds 4
_osal_ConvertUTCTime_sloc1_1_0:
	.ds 4
_osal_ConvertUTCTime_sloc2_1_0:
	.ds 3
_osal_ConvertUTCSecs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_I2CCFG	=	0x6230
_I2CSTAT	=	0x6231
_I2CDATA	=	0x6232
_I2CADDR	=	0x6233
_I2CWC	=	0x6234
_I2CIO	=	0x6235
_OBSSEL0	=	0x6243
_OBSSEL1	=	0x6244
_OBSSEL2	=	0x6245
_OBSSEL3	=	0x6246
_OBSSEL4	=	0x6247
_OBSSEL5	=	0x6248
_CHVER	=	0x6249
_CHIPID	=	0x624a
_TESTREG0	=	0x624b
_DBGDATA	=	0x6260
_SRCRC	=	0x6262
_BATTMON	=	0x6264
_IVCTRL	=	0x6265
_FCTL	=	0x6270
_FADDRL	=	0x6271
_FADDRH	=	0x6272
_FWDATA	=	0x6273
_CHIPINFO0	=	0x6276
_CHIPINFO1	=	0x6277
_IRCTL	=	0x6281
_CLD	=	0x6290
_X_T1CCTL0	=	0x62a0
_X_T1CCTL1	=	0x62a1
_X_T1CCTL2	=	0x62a2
_T1CCTL3	=	0x62a3
_T1CCTL4	=	0x62a4
_X_T1CC0L	=	0x62a6
_X_T1CC0H	=	0x62a7
_X_T1CC1L	=	0x62a8
_X_T1CC1H	=	0x62a9
_X_T1CC2L	=	0x62aa
_X_T1CC2H	=	0x62ab
_T1CC3L	=	0x62ac
_T1CC3H	=	0x62ad
_T1CC4L	=	0x62ae
_T1CC4H	=	0x62af
_STCC	=	0x62b0
_STCS	=	0x62b1
_STCV0	=	0x62b2
_STCV1	=	0x62b3
_STCV2	=	0x62b4
_OPAMPC	=	0x62c0
_OPAMPS	=	0x62c1
_CMPCTL	=	0x62d0
_USBADDR	=	0x6200
_USBPOW	=	0x6201
_USBIIF	=	0x6202
_USBOIF	=	0x6204
_USBCIF	=	0x6206
_USBIIE	=	0x6207
_USBOIE	=	0x6209
_USBCIE	=	0x620b
_USBFRML	=	0x620c
_USBFRMH	=	0x620d
_USBINDEX	=	0x620e
_USBCTRL	=	0x620f
_USBMAXI	=	0x6210
_USBCS0	=	0x6211
_USBCSIL	=	0x6211
_USBCSIH	=	0x6212
_USBMAXO	=	0x6213
_USBCSOL	=	0x6214
_USBCSOH	=	0x6215
_USBCNT0	=	0x6216
_USBCNTL	=	0x6216
_USBCNTH	=	0x6217
_USBF0	=	0x6220
_USBF1	=	0x6222
_USBF2	=	0x6224
_USBF3	=	0x6226
_USBF4	=	0x6228
_USBF5	=	0x622a
_SHORTADDRH	=	0x6174
_SHORTADDRL	=	0x6175
_PANIDH	=	0x6172
_PANIDL	=	0x6173
_IEEE_ADDR	=	0x616a
_FRMFILT0	=	0x6180
_FRMFILT1	=	0x6181
_SRCMATCH	=	0x6182
_SRCSHORTEN0	=	0x6183
_SRCSHORTEN1	=	0x6184
_SRCSHORTEN2	=	0x6185
_SRCEXTEN0	=	0x6186
_SRCEXTEN1	=	0x6187
_SRCEXTEN2	=	0x6188
_FRMCTRL0	=	0x6189
_FRMCTRL1	=	0x618a
_RXENABLE	=	0x618b
_RXMASKSET	=	0x618c
_RXMASKCLR	=	0x618d
_FREQTUNE	=	0x618e
_FREQCTRL	=	0x618f
_TXPOWER	=	0x6190
_TXCTRL	=	0x6191
_FSMSTAT0	=	0x6192
_FSMSTAT1	=	0x6193
_FIFOPCTRL	=	0x6194
_FSMCTRL	=	0x6195
_CCACTRL0	=	0x6196
_CCACTRL1	=	0x6197
_RSSI	=	0x6198
_RSSISTAT	=	0x6199
_RXFIRST	=	0x619a
_RXFIFOCNT	=	0x619b
_TXFIFOCNT	=	0x619c
_RXFIRST_PTR	=	0x619d
_RXLAST_PTR	=	0x619e
_RXP1_PTR	=	0x619f
_TXFIRST_PTR	=	0x61a1
_TXLAST_PTR	=	0x61a2
_RFIRQM0	=	0x61a3
_RFIRQM1	=	0x61a4
_RFERRM	=	0x61a5
_OPAMPMC	=	0x61a6
_RFRND	=	0x61a7
_MDMCTRL0	=	0x61a8
_MDMCTRL1	=	0x61a9
_FREQEST	=	0x61aa
_RXCTRL	=	0x61ab
_FSCTRL	=	0x61ac
_FSCAL1	=	0x61ae
_FSCAL2	=	0x61af
_FSCAL3	=	0x61b0
_AGCCTRL0	=	0x61b1
_AGCCTRL1	=	0x61b2
_AGCCTRL2	=	0x61b3
_AGCCTRL3	=	0x61b4
_ADCTEST0	=	0x61b5
_ADCTEST1	=	0x61b6
_ADCTEST2	=	0x61b7
_MDMTEST0	=	0x61b8
_MDMTEST1	=	0x61b9
_DACTEST0	=	0x61ba
_DACTEST1	=	0x61bb
_DACTEST2	=	0x61bc
_ATEST	=	0x61bd
_PTEST0	=	0x61be
_PTEST1	=	0x61bf
_CSPPROG0	=	0x61c0
_CSPPROG1	=	0x61c1
_CSPPROG2	=	0x61c2
_CSPPROG3	=	0x61c3
_CSPPROG4	=	0x61c4
_CSPPROG5	=	0x61c5
_CSPPROG6	=	0x61c6
_CSPPROG7	=	0x61c7
_CSPPROG8	=	0x61c8
_CSPPROG9	=	0x61c9
_CSPPROG10	=	0x61ca
_CSPPROG11	=	0x61cb
_CSPPROG12	=	0x61cc
_CSPPROG13	=	0x61cd
_CSPPROG14	=	0x61ce
_CSPPROG15	=	0x61cf
_CSPPROG16	=	0x61d0
_CSPPROG17	=	0x61d1
_CSPPROG18	=	0x61d2
_CSPPROG19	=	0x61d3
_CSPPROG20	=	0x61d4
_CSPPROG21	=	0x61d5
_CSPPROG22	=	0x61d6
_CSPPROG23	=	0x61d7
_CSPCTRL	=	0x61e0
_CSPSTAT	=	0x61e1
_CSPX	=	0x61e2
_CSPY	=	0x61e3
_CSPZ	=	0x61e4
_CSPT	=	0x61e5
_RFC_OBS_CTRL0	=	0x61eb
_RFC_OBS_CTRL1	=	0x61ec
_RFC_OBS_CTRL2	=	0x61ed
_TXFILTCFG	=	0x61fa
_previousLLTimerTick:
	.ds 2
_remUsTicks:
	.ds 2
_timeMSec:
	.ds 2
_OSAL_timeSeconds::
	.ds 4
_osalTimeUpdate_tmp_1_77:
	.ds 2
_osalTimeUpdate_ticks625us_1_77:
	.ds 2
_osalTimeUpdate_elapsedMSec_1_77:
	.ds 2
_osalClockUpdate_elapsedMSec_1_81:
	.ds 2
_osal_setClock_newTime_1_84:
	.ds 4
_osal_ConvertUTCTime_PARM_2:
	.ds 4
_osal_ConvertUTCTime_tm_1_88:
	.ds 3
_osal_ConvertUTCTime_numDays_2_91:
	.ds 2
_monthLength_PARM_2:
	.ds 1
_monthLength_lpyr_1_94:
	.ds 1
_monthLength_days_1_95:
	.ds 1
_osal_ConvertUTCSecs_tm_1_100:
	.ds 3
_osal_ConvertUTCSecs_seconds_1_101:
	.ds 4
_osal_ConvertUTCSecs_days_2_102:
	.ds 2
_osal_ConvertUTCSecs_month_3_103:
	.ds 1
_osal_ConvertUTCSecs_year_3_105:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	../osal/common/OSAL_ClockBLE.c:99: static uint16 previousLLTimerTick = 0;
	mov	dptr,#_previousLLTimerTick
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:100: static uint16 remUsTicks = 0;
	mov	dptr,#_remUsTicks
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:101: static uint16 timeMSec = 0;
	mov	dptr,#_timeMSec
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:105: UTCTime OSAL_timeSeconds = 0;
	mov	dptr,#_OSAL_timeSeconds
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'll_McuPrecisionCount'
;------------------------------------------------------------
;tick                      Allocated with name '_ll_McuPrecisionCount_tick_1_73'
;------------------------------------------------------------
;	../osal/common/OSAL_ClockBLE.c:84: uint16 ll_McuPrecisionCount(void){
;	-----------------------------------------
;	 function ll_McuPrecisionCount
;	-----------------------------------------
_ll_McuPrecisionCount:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../osal/common/OSAL_ClockBLE.c:88: uint16 tick = T2M0 +(T2M1<<8);
	mov	r6,_T2M0
	mov	r7,#0x00
	mov	r4,_T2M1
	mov	r5,#0x00
	mov	ar5,r4
	mov	r4,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
;	../osal/common/OSAL_ClockBLE.c:90: return tick;
	mov	dpl,r6
	mov	dph,r7
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osalTimeUpdate'
;------------------------------------------------------------
;tmp                       Allocated with name '_osalTimeUpdate_tmp_1_77'
;ticks625us                Allocated with name '_osalTimeUpdate_ticks625us_1_77'
;elapsedMSec               Allocated with name '_osalTimeUpdate_elapsedMSec_1_77'
;------------------------------------------------------------
;	../osal/common/OSAL_ClockBLE.c:132: void osalTimeUpdate( void )
;	-----------------------------------------
;	 function osalTimeUpdate
;	-----------------------------------------
_osalTimeUpdate:
;	../osal/common/OSAL_ClockBLE.c:136: uint16 elapsedMSec = 0;
	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:139: tmp = ll_McuPrecisionCount();
	lcall	_ll_McuPrecisionCount
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_osalTimeUpdate_tmp_1_77
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:144: if ( tmp != previousLLTimerTick )
	mov	dptr,#_previousLLTimerTick
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00123$
	mov	a,r7
	cjne	a,ar5,00123$
	ljmp	00108$
00123$:
;	../osal/common/OSAL_ClockBLE.c:147: ticks625us = tmp - previousLLTimerTick;
	mov	dptr,#_previousLLTimerTick
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osalTimeUpdate_tmp_1_77
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
	mov	a,r4
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	a,r5
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:150: previousLLTimerTick = tmp;
	mov	dptr,#_previousLLTimerTick
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:155: while ( ticks625us > MAXCALCTICKS )
	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00101$:
	clr	c
	mov	a,#0x31
	subb	a,r6
	mov	a,#0x33
	subb	a,r7
	jc	00124$
	ljmp	00114$
00124$:
;	../osal/common/OSAL_ClockBLE.c:157: ticks625us -= MAXCALCTICKS;
	mov	a,r6
	add	a,#0xCF
	mov	r6,a
	mov	a,r7
	addc	a,#0xCC
	mov	r7,a
;	../osal/common/OSAL_ClockBLE.c:158: elapsedMSec += MAXCALCTICKS * 5 / 8;
	mov	a,#0xFE
	add	a,r4
	mov	r4,a
	mov	a,#0x1F
	addc	a,r5
	mov	r5,a
;	../osal/common/OSAL_ClockBLE.c:159: remUsTicks += MAXCALCTICKS * 5 % 8;
	mov	dptr,#_remUsTicks
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_remUsTicks
	mov	a,#0x05
	add	a,r2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00101$
00114$:
	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:164: tmp = (ticks625us * 5) + remUsTicks;
	mov	dptr,#_osalTimeUpdate_ticks625us_1_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x05
	mov	dph,#0x00
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_remUsTicks
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
;	../osal/common/OSAL_ClockBLE.c:167: elapsedMSec += tmp / 8;
	mov	ar4,r6
	mov	a,r7
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1F
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:168: remUsTicks = tmp % 8;
	mov	dptr,#_remUsTicks
	mov	a,#0x07
	anl	a,r6
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:171: if ( elapsedMSec )
	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jnz	00125$
	ljmp	00108$
00125$:
;	../osal/common/OSAL_ClockBLE.c:173: osalClockUpdate( elapsedMSec );
	mov	dptr,#_osalTimeUpdate_elapsedMSec_1_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_osalClockUpdate
	pop	ar6
	pop	ar7
;	../osal/common/OSAL_ClockBLE.c:177: osalTimerUpdate( elapsedMSec );
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_osalTimerUpdate
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osalClockUpdate'
;------------------------------------------------------------
;sloc0                     Allocated with name '_osalClockUpdate_sloc0_1_0'
;elapsedMSec               Allocated with name '_osalClockUpdate_elapsedMSec_1_81'
;------------------------------------------------------------
;	../osal/common/OSAL_ClockBLE.c:191: static void osalClockUpdate( uint16 elapsedMSec )
;	-----------------------------------------
;	 function osalClockUpdate
;	-----------------------------------------
_osalClockUpdate:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_osalClockUpdate_elapsedMSec_1_81
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:194: timeMSec += elapsedMSec;
	mov	dptr,#_osalClockUpdate_elapsedMSec_1_81
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_timeMSec
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_timeMSec
	mov	a,r6
	add	a,r4
	movx	@dptr,a
	mov	a,r7
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:197: if ( timeMSec >= 1000 )
	mov	dptr,#_timeMSec
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0xE8
	mov	a,r7
	subb	a,#0x03
	jnc	00108$
	ljmp	00103$
00108$:
;	../osal/common/OSAL_ClockBLE.c:199: OSAL_timeSeconds += timeMSec / 1000;
	mov	dptr,#_timeMSec
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divuint_PARM_2
	mov	a,#0xE8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_OSAL_timeSeconds
	movx	a,@dptr
	mov	_osalClockUpdate_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osalClockUpdate_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osalClockUpdate_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_osalClockUpdate_sloc0_1_0 + 3),a
	mov	ar2,r4
	mov	ar3,r5
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dptr,#_OSAL_timeSeconds
	mov	a,r2
	add	a,_osalClockUpdate_sloc0_1_0
	movx	@dptr,a
	mov	a,r3
	addc	a,(_osalClockUpdate_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(_osalClockUpdate_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	addc	a,(_osalClockUpdate_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:200: timeMSec = timeMSec % 1000;
	mov	dptr,#__moduint_PARM_2
	mov	a,#0xE8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_timeMSec
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_setClock'
;------------------------------------------------------------
;newTime                   Allocated with name '_osal_setClock_newTime_1_84'
;------------------------------------------------------------
;	../osal/common/OSAL_ClockBLE.c:215: void osal_setClock( UTCTime newTime )
;	-----------------------------------------
;	 function osal_setClock
;	-----------------------------------------
_osal_setClock:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_osal_setClock_newTime_1_84
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:217: OSAL_timeSeconds = newTime;
	mov	dptr,#_osal_setClock_newTime_1_84
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_OSAL_timeSeconds
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_getClock'
;------------------------------------------------------------
;	../osal/common/OSAL_ClockBLE.c:232: UTCTime osal_getClock( void )
;	-----------------------------------------
;	 function osal_getClock
;	-----------------------------------------
_osal_getClock:
;	../osal/common/OSAL_ClockBLE.c:234: return ( OSAL_timeSeconds );
	mov	dptr,#_OSAL_timeSeconds
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_ConvertUTCTime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_osal_ConvertUTCTime_sloc0_1_0'
;sloc1                     Allocated with name '_osal_ConvertUTCTime_sloc1_1_0'
;sloc2                     Allocated with name '_osal_ConvertUTCTime_sloc2_1_0'
;secTime                   Allocated with name '_osal_ConvertUTCTime_PARM_2'
;tm                        Allocated with name '_osal_ConvertUTCTime_tm_1_88'
;day                       Allocated with name '_osal_ConvertUTCTime_day_2_90'
;numDays                   Allocated with name '_osal_ConvertUTCTime_numDays_2_91'
;------------------------------------------------------------
;	../osal/common/OSAL_ClockBLE.c:249: void osal_ConvertUTCTime( UTCTimeStruct *tm, UTCTime secTime )
;	-----------------------------------------
;	 function osal_ConvertUTCTime
;	-----------------------------------------
_osal_ConvertUTCTime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:253: uint32 day = secTime % DAY;
	mov	dptr,#_osal_ConvertUTCTime_PARM_2
	movx	a,@dptr
	mov	_osal_ConvertUTCTime_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_ConvertUTCTime_sloc0_1_0 + 3),a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0x51
	inc	dptr
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:254: tm->seconds = day % 60UL;
	mov	dpl,_osal_ConvertUTCTime_sloc0_1_0
	mov	dph,(_osal_ConvertUTCTime_sloc0_1_0 + 1)
	mov	b,(_osal_ConvertUTCTime_sloc0_1_0 + 2)
	mov	a,(_osal_ConvertUTCTime_sloc0_1_0 + 3)
	lcall	__modulong
	mov	_osal_ConvertUTCTime_sloc1_1_0,dpl
	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 1),dph
	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 2),b
	mov	(_osal_ConvertUTCTime_sloc1_1_0 + 3),a
	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x3C
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	lcall	__modulong
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
;	../osal/common/OSAL_ClockBLE.c:255: tm->minutes = (day % 3600UL) / 60UL;
	mov	a,#0x01
	add	a,r5
	mov	_osal_ConvertUTCTime_sloc2_1_0,a
	mov	a,#0x00
	addc	a,r6
	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 1),a
	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 2),r7
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x0E
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	lcall	__modulong
	mov	r0,dpl
	mov	r1,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x3C
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	mov	a,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__divulong
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_osal_ConvertUTCTime_sloc2_1_0
	mov	dph,(_osal_ConvertUTCTime_sloc2_1_0 + 1)
	mov	b,(_osal_ConvertUTCTime_sloc2_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
;	../osal/common/OSAL_ClockBLE.c:256: tm->hour = day / 3600UL;
	mov	a,#0x02
	add	a,r5
	mov	_osal_ConvertUTCTime_sloc2_1_0,a
	mov	a,#0x00
	addc	a,r6
	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 1),a
	mov	(_osal_ConvertUTCTime_sloc2_1_0 + 2),r7
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x0E
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_osal_ConvertUTCTime_sloc1_1_0
	mov	dph,(_osal_ConvertUTCTime_sloc1_1_0 + 1)
	mov	b,(_osal_ConvertUTCTime_sloc1_1_0 + 2)
	mov	a,(_osal_ConvertUTCTime_sloc1_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	lcall	__divulong
	mov	r0,dpl
	mov	r1,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_osal_ConvertUTCTime_sloc2_1_0
	mov	dph,(_osal_ConvertUTCTime_sloc2_1_0 + 1)
	mov	b,(_osal_ConvertUTCTime_sloc2_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
;	../osal/common/OSAL_ClockBLE.c:261: uint16 numDays = secTime / DAY;
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0x51
	inc	dptr
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,_osal_ConvertUTCTime_sloc0_1_0
	mov	dph,(_osal_ConvertUTCTime_sloc0_1_0 + 1)
	mov	b,(_osal_ConvertUTCTime_sloc0_1_0 + 2)
	mov	a,(_osal_ConvertUTCTime_sloc0_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	lcall	__divulong
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:262: tm->year = BEGYEAR;
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xD0
	lcall	__gptrput
	inc	dptr
	mov	a,#0x07
	lcall	__gptrput
;	../osal/common/OSAL_ClockBLE.c:263: while ( numDays >= YearLength( tm->year ) )
	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__moduint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	cjne	a,#0x01,00173$
00173$:
	clr	a
	rlc	a
	mov	r3,a
	mov	a,r3
	jz	00174$
	ljmp	00112$
00174$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00175$
	ljmp	00109$
00175$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	anl	ar3,#0x03
	mov	r4,#0x00
	mov	a,r3
	orl	a,r4
	cjne	a,#0x01,00176$
00176$:
	clr	a
	rlc	a
	mov	r3,a
	mov	a,r3
	jnz	00177$
	ljmp	00109$
00177$:
00112$:
	mov	r3,#0x6E
	mov	r4,#0x01
	ljmp	00110$
00109$:
	mov	r3,#0x6D
	mov	r4,#0x01
00110$:
	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	subb	a,r4
	jnc	00178$
	ljmp	00103$
00178$:
;	../osal/common/OSAL_ClockBLE.c:265: numDays -= YearLength( tm->year );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__moduint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	cjne	a,#0x01,00179$
00179$:
	clr	a
	rlc	a
	mov	r3,a
	mov	a,r3
	jz	00180$
	ljmp	00120$
00180$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00181$
	ljmp	00117$
00181$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	anl	ar3,#0x03
	mov	r4,#0x00
	mov	a,r3
	orl	a,r4
	cjne	a,#0x01,00182$
00182$:
	clr	a
	rlc	a
	mov	r3,a
	mov	a,r3
	jnz	00183$
	ljmp	00117$
00183$:
00120$:
	mov	r3,#0x6E
	mov	r4,#0x01
	ljmp	00118$
00117$:
	mov	r3,#0x6D
	mov	r4,#0x01
00118$:
	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
	mov	a,r1
	clr	c
	subb	a,r3
	movx	@dptr,a
	mov	a,r2
	subb	a,r4
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:266: tm->year++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00184$
	inc	r4
00184$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	ljmp	00101$
00103$:
;	../osal/common/OSAL_ClockBLE.c:269: tm->month = 0;
	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
;	../osal/common/OSAL_ClockBLE.c:270: while ( numDays >= monthLength( IsLeapYear( tm->year ), tm->month ) )
	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
00104$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__moduint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	orl	a,r1
	cjne	a,#0x01,00185$
00185$:
	clr	a
	rlc	a
	mov	r0,a
	mov	a,r0
	jz	00186$
	ljmp	00126$
00186$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00187$
	ljmp	00125$
00187$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	anl	ar0,#0x03
	mov	r1,#0x00
	mov	a,r0
	orl	a,r1
	cjne	a,#0x01,00188$
00188$:
	clr	a
	rlc	a
	mov	r0,a
	mov	a,r0
	jz	00189$
	ljmp	00126$
00189$:
00125$:
	mov	r1,#0x00
	ljmp	00127$
00126$:
	mov	r1,#0x01
00127$:
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_monthLength_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_monthLength
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	clr	c
	mov	a,r0
	subb	a,r1
	mov	a,r4
	subb	a,r3
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00190$
	ljmp	00106$
00190$:
;	../osal/common/OSAL_ClockBLE.c:272: numDays -= monthLength( IsLeapYear( tm->year ), tm->month );
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__moduint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	orl	a,r1
	cjne	a,#0x01,00191$
00191$:
	clr	a
	rlc	a
	mov	r0,a
	mov	a,r0
	jz	00192$
	ljmp	00132$
00192$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00193$
	ljmp	00131$
00193$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	anl	ar0,#0x03
	mov	r1,#0x00
	mov	a,r0
	orl	a,r1
	cjne	a,#0x01,00194$
00194$:
	clr	a
	rlc	a
	mov	r0,a
	mov	a,r0
	jz	00195$
	ljmp	00132$
00195$:
00131$:
	mov	r1,#0x00
	ljmp	00133$
00132$:
	mov	r1,#0x01
00133$:
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_monthLength_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_monthLength
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar0,r1
	mov	r1,#0x00
	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
	mov	a,r3
	clr	c
	subb	a,r0
	movx	@dptr,a
	mov	a,r4
	subb	a,r1
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:273: tm->month++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00104$
00106$:
;	../osal/common/OSAL_ClockBLE.c:276: tm->day = numDays;
	mov	dptr,#_osal_ConvertUTCTime_tm_1_88
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dptr,#_osal_ConvertUTCTime_numDays_2_91
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'monthLength'
;------------------------------------------------------------
;mon                       Allocated with name '_monthLength_PARM_2'
;lpyr                      Allocated with name '_monthLength_lpyr_1_94'
;days                      Allocated with name '_monthLength_days_1_95'
;------------------------------------------------------------
;	../osal/common/OSAL_ClockBLE.c:289: static uint8 monthLength( uint8 lpyr, uint8 mon )
;	-----------------------------------------
;	 function monthLength
;	-----------------------------------------
_monthLength:
	mov	a,dpl
	mov	dptr,#_monthLength_lpyr_1_94
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:291: uint8 days = 31;
	mov	dptr,#_monthLength_days_1_95
	mov	a,#0x1F
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:293: if ( mon == 1 ) // feb
	mov	dptr,#_monthLength_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00119$
	sjmp	00120$
00119$:
	ljmp	00106$
00120$:
;	../osal/common/OSAL_ClockBLE.c:295: days = ( 28 + lpyr );
	mov	dptr,#_monthLength_lpyr_1_94
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_monthLength_days_1_95
	mov	a,#0x1C
	add	a,r7
	movx	@dptr,a
	ljmp	00107$
00106$:
;	../osal/common/OSAL_ClockBLE.c:299: if ( mon > 6 ) // aug-dec
	mov	dptr,#_monthLength_PARM_2
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x06
	subb	a,r7
	jc	00121$
	ljmp	00102$
00121$:
;	../osal/common/OSAL_ClockBLE.c:301: mon--;
	mov	dptr,#_monthLength_PARM_2
	movx	a,@dptr
	dec	a
	movx	@dptr,a
00102$:
;	../osal/common/OSAL_ClockBLE.c:304: if ( mon & 1 )
	mov	dptr,#_monthLength_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	jb	acc.0,00122$
	ljmp	00107$
00122$:
;	../osal/common/OSAL_ClockBLE.c:306: days = 30;
	mov	dptr,#_monthLength_days_1_95
	mov	a,#0x1E
	movx	@dptr,a
00107$:
;	../osal/common/OSAL_ClockBLE.c:310: return ( days );
	mov	dptr,#_monthLength_days_1_95
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r7
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_ConvertUTCSecs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_osal_ConvertUTCSecs_sloc0_1_0'
;tm                        Allocated with name '_osal_ConvertUTCSecs_tm_1_100'
;seconds                   Allocated with name '_osal_ConvertUTCSecs_seconds_1_101'
;days                      Allocated with name '_osal_ConvertUTCSecs_days_2_102'
;month                     Allocated with name '_osal_ConvertUTCSecs_month_3_103'
;year                      Allocated with name '_osal_ConvertUTCSecs_year_3_105'
;------------------------------------------------------------
;	../osal/common/OSAL_ClockBLE.c:322: UTCTime osal_ConvertUTCSecs( UTCTimeStruct *tm )
;	-----------------------------------------
;	 function osal_ConvertUTCSecs
;	-----------------------------------------
_osal_ConvertUTCSecs:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:327: seconds = (((tm->hour * 60UL) + tm->minutes) * 60UL) + tm->seconds;
	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x3C
	mov	dph,#0x00
	mov	b,#0x00
	mov	a,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	__mullong
	mov	_osal_ConvertUTCSecs_sloc0_1_0,dpl
	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 1),dph
	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 2),b
	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x01
	add	a,r5
	mov	r0,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dptr,#__mullong_PARM_2
	mov	a,r0
	add	a,_osal_ConvertUTCSecs_sloc0_1_0
	movx	@dptr,a
	mov	a,r4
	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x3C
	mov	dph,#0x00
	mov	b,#0x00
	mov	a,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	__mullong
	mov	_osal_ConvertUTCSecs_sloc0_1_0,dpl
	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 1),dph
	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 2),b
	mov	(_osal_ConvertUTCSecs_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
	mov	a,r0
	add	a,_osal_ConvertUTCSecs_sloc0_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(_osal_ConvertUTCSecs_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:332: uint16 days = tm->day;
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:336: int8 month = tm->month;
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_osal_ConvertUTCSecs_month_3_103
	mov	a,r5
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:337: while ( --month >= 0 )
	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dptr,#_osal_ConvertUTCSecs_month_3_103
	movx	a,@dptr
	mov	r4,a
00101$:
	dec	r4
	mov	a,r4
	jnb	acc.7,00149$
	ljmp	00103$
00149$:
;	../osal/common/OSAL_ClockBLE.c:339: days += monthLength( IsLeapYear( tm->year ), month );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	cjne	a,#0x01,00150$
00150$:
	clr	a
	rlc	a
	mov	r2,a
	mov	a,r2
	jz	00151$
	ljmp	00110$
00151$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00152$
	ljmp	00109$
00152$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	anl	ar2,#0x03
	mov	r3,#0x00
	mov	a,r2
	orl	a,r3
	cjne	a,#0x01,00153$
00153$:
	clr	a
	rlc	a
	mov	r2,a
	mov	a,r2
	jz	00154$
	ljmp	00110$
00154$:
00109$:
	mov	r3,#0x00
	ljmp	00111$
00110$:
	mov	r3,#0x01
00111$:
	mov	dptr,#_monthLength_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_monthLength
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r2,#0x00
	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
	mov	a,r3
	add	a,r0
	movx	@dptr,a
	mov	a,r2
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	ljmp	00101$
00103$:
;	../osal/common/OSAL_ClockBLE.c:345: uint16 year = tm->year;
	mov	dptr,#_osal_ConvertUTCSecs_tm_1_100
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_osal_ConvertUTCSecs_year_3_105
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:346: while ( --year >= BEGYEAR )
	mov	dptr,#_osal_ConvertUTCSecs_year_3_105
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00104$:
	dec	r6
	cjne	r6,#0xFF,00155$
	dec	r7
00155$:
	clr	c
	mov	a,r6
	subb	a,#0xD0
	mov	a,r7
	subb	a,#0x07
	jnc	00156$
	ljmp	00106$
00156$:
;	../osal/common/OSAL_ClockBLE.c:348: days += YearLength( year );
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	orl	a,r5
	cjne	a,#0x01,00157$
00157$:
	clr	a
	rlc	a
	mov	r4,a
	mov	a,r4
	jz	00158$
	ljmp	00118$
00158$:
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00159$
	ljmp	00115$
00159$:
	mov	a,#0x03
	anl	a,r6
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	a,r5
	cjne	a,#0x01,00160$
00160$:
	clr	a
	rlc	a
	mov	r4,a
	mov	a,r4
	jnz	00161$
	ljmp	00115$
00161$:
00118$:
	mov	r4,#0x6E
	mov	r5,#0x01
	ljmp	00116$
00115$:
	mov	r4,#0x6D
	mov	r5,#0x01
00116$:
	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00104$
00106$:
;	../osal/common/OSAL_ClockBLE.c:353: seconds += (days * DAY);
	mov	dptr,#_osal_ConvertUTCSecs_days_2_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x80
	mov	dph,#0x51
	mov	b,#0x01
	mov	a,#0x00
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
	mov	a,r4
	add	a,r0
	movx	@dptr,a
	mov	a,r5
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL_ClockBLE.c:356: return ( seconds );
	mov	dptr,#_osal_ConvertUTCSecs_seconds_1_101
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
00107$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
