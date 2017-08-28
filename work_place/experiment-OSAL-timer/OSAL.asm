;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Mon Jun 29 17:16:56 2015
;--------------------------------------------------------
	.module OSAL
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __itoa
	.globl _osalTimeUpdate
	.globl _osalInitTasks
	.globl _osalTimerInit
	.globl _osal_mem_free
	.globl _osal_mem_alloc
	.globl _osal_mem_init
	.globl _strlen
	.globl _memset
	.globl _strcat
	.globl _strcpy
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
	.globl _osal_isbufset_PARM_3
	.globl _osal_isbufset_PARM_2
	.globl _osal_buffer_uint24_PARM_2
	.globl _osal_buffer_uint32_PARM_2
	.globl _osal_isr_register_PARM_2
	.globl _osal_clear_event_PARM_2
	.globl _osal_set_event_PARM_2
	.globl _osal_msg_enqueue_max_PARM_3
	.globl _osal_msg_enqueue_max_PARM_2
	.globl _osal_msg_extract_PARM_3
	.globl _osal_msg_extract_PARM_2
	.globl _osal_msg_push_PARM_2
	.globl _osal_msg_enqueue_PARM_2
	.globl _osal_msg_find_PARM_2
	.globl _osal_msg_push_front_PARM_2
	.globl _osal_msg_send_PARM_2
	.globl __ltoa_PARM_3
	.globl __ltoa_PARM_2
	.globl _osal_build_uint32_PARM_2
	.globl _osal_memset_PARM_3
	.globl _osal_memset_PARM_2
	.globl _osal_memcmp_PARM_3
	.globl _osal_memcmp_PARM_2
	.globl _osal_memdup_PARM_2
	.globl _osal_revmemcpy_PARM_3
	.globl _osal_revmemcpy_PARM_2
	.globl _osal_memcpy_PARM_3
	.globl _osal_memcpy_PARM_2
	.globl _osal_qHead
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
	.globl _osal_strlen
	.globl _osal_memcpy
	.globl _osal_revmemcpy
	.globl _osal_memdup
	.globl _osal_memcmp
	.globl _osal_memset
	.globl _osal_build_uint16
	.globl _osal_build_uint32
	.globl __ltoa
	.globl _osal_rand
	.globl _osal_msg_allocate
	.globl _osal_msg_deallocate
	.globl _osal_msg_send
	.globl _osal_msg_push_front
	.globl _osal_msg_receive
	.globl _osal_msg_find
	.globl _osal_msg_enqueue
	.globl _osal_msg_dequeue
	.globl _osal_msg_push
	.globl _osal_msg_extract
	.globl _osal_msg_enqueue_max
	.globl _osal_set_event
	.globl _osal_clear_event
	.globl _osal_isr_register
	.globl _osal_int_enable
	.globl _osal_int_disable
	.globl _osal_init_system
	.globl _osal_start_system
	.globl _osal_run_system
	.globl _osal_buffer_uint32
	.globl _osal_buffer_uint24
	.globl _osal_isbufset
	.globl _osal_self
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_osal_memcpy_sloc0_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
_osal_revmemcpy_sloc0_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
_osal_memcmp_sloc0_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
_osal_build_uint32_sloc0_1_0:
	.ds 4
	.area	OSEG    (OVR,DATA)
_osal_msg_dequeue_sloc0_1_0:
	.ds 3
	.area	OSEG    (OVR,DATA)
_osal_msg_push_sloc0_1_0:
	.ds 1
_osal_msg_push_sloc1_1_0:
	.ds 3
_osal_msg_push_sloc2_1_0:
	.ds 3
	.area	OSEG    (OVR,DATA)
_osal_buffer_uint32_sloc0_1_0:
	.ds 3
	.area	OSEG    (OVR,DATA)
_osal_buffer_uint24_sloc0_1_0:
	.ds 3
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
_osal_qHead::
	.ds 3
_activeTaskID:
	.ds 1
_osal_strlen_pString_1_111:
	.ds 3
_osal_memcpy_PARM_2:
	.ds 3
_osal_memcpy_PARM_3:
	.ds 2
_osal_memcpy_dst_1_113:
	.ds 3
_osal_memcpy_pDst_1_114:
	.ds 3
_osal_memcpy_pSrc_1_114:
	.ds 3
_osal_revmemcpy_PARM_2:
	.ds 3
_osal_revmemcpy_PARM_3:
	.ds 2
_osal_revmemcpy_dst_1_115:
	.ds 3
_osal_revmemcpy_pDst_1_116:
	.ds 3
_osal_revmemcpy_pSrc_1_116:
	.ds 3
_osal_memdup_PARM_2:
	.ds 2
_osal_memdup_src_1_117:
	.ds 3
_osal_memdup_pDst_1_118:
	.ds 3
_osal_memcmp_PARM_2:
	.ds 3
_osal_memcmp_PARM_3:
	.ds 2
_osal_memcmp_src1_1_120:
	.ds 3
_osal_memcmp_pSrc1_1_121:
	.ds 3
_osal_memcmp_pSrc2_1_121:
	.ds 3
_osal_memset_PARM_2:
	.ds 1
_osal_memset_PARM_3:
	.ds 2
_osal_memset_dest_1_123:
	.ds 3
_osal_build_uint16_swapped_1_125:
	.ds 3
_osal_build_uint32_PARM_2:
	.ds 1
_osal_build_uint32_swapped_1_127:
	.ds 3
__ltoa_PARM_2:
	.ds 3
__ltoa_PARM_3:
	.ds 1
__ltoa_l_1_129:
	.ds 4
__ltoa_tmp1_1_130:
	.ds 10
__ltoa_tmp2_1_130:
	.ds 10
__ltoa_tmp3_1_130:
	.ds 10
__ltoa_num1_1_130:
	.ds 2
__ltoa_num2_1_130:
	.ds 2
__ltoa_num3_1_130:
	.ds 2
__ltoa_i_1_130:
	.ds 1
_osal_msg_allocate_len_1_138:
	.ds 2
_osal_msg_allocate_hdr_1_139:
	.ds 3
_osal_msg_deallocate_msg_ptr_1_141:
	.ds 3
_osal_msg_send_PARM_2:
	.ds 3
_osal_msg_send_destination_task_1_143:
	.ds 1
_osal_msg_push_front_PARM_2:
	.ds 3
_osal_msg_push_front_destination_task_1_145:
	.ds 1
_osal_msg_enqueue_push_PARM_2:
	.ds 3
_osal_msg_enqueue_push_PARM_3:
	.ds 1
_osal_msg_enqueue_push_destination_task_1_147:
	.ds 1
_osal_msg_receive_task_id_1_154:
	.ds 1
_osal_msg_receive_listHdr_1_155:
	.ds 3
_osal_msg_receive_prevHdr_1_155:
	.ds 3
_osal_msg_receive_foundHdr_1_155:
	.ds 3
_osal_msg_receive_intState_1_155:
	.ds 1
_osal_msg_find_PARM_2:
	.ds 1
_osal_msg_find_task_id_1_167:
	.ds 1
_osal_msg_find_pHdr_1_168:
	.ds 3
_osal_msg_find_intState_1_168:
	.ds 1
_osal_msg_enqueue_PARM_2:
	.ds 3
_osal_msg_enqueue_q_ptr_1_174:
	.ds 3
_osal_msg_enqueue_list_1_175:
	.ds 3
_osal_msg_enqueue_intState_1_175:
	.ds 1
_osal_msg_dequeue_q_ptr_1_181:
	.ds 3
_osal_msg_dequeue_msg_ptr_1_182:
	.ds 3
_osal_msg_dequeue_intState_1_182:
	.ds 1
_osal_msg_push_PARM_2:
	.ds 3
_osal_msg_push_q_ptr_1_187:
	.ds 3
_osal_msg_extract_PARM_2:
	.ds 3
_osal_msg_extract_PARM_3:
	.ds 3
_osal_msg_extract_q_ptr_1_192:
	.ds 3
_osal_msg_extract_intState_1_193:
	.ds 1
_osal_msg_enqueue_max_PARM_2:
	.ds 3
_osal_msg_enqueue_max_PARM_3:
	.ds 1
_osal_msg_enqueue_max_q_ptr_1_199:
	.ds 3
_osal_msg_enqueue_max_list_1_200:
	.ds 3
_osal_msg_enqueue_max_ret_1_200:
	.ds 1
_osal_msg_enqueue_max_intState_1_200:
	.ds 1
_osal_set_event_PARM_2:
	.ds 2
_osal_set_event_task_id_1_208:
	.ds 1
_osal_clear_event_PARM_2:
	.ds 2
_osal_clear_event_task_id_1_212:
	.ds 1
_osal_isr_register_PARM_2:
	.ds 2
_osal_int_enable_interrupt_id_1_222:
	.ds 1
_osal_int_disable_interrupt_id_1_227:
	.ds 1
_osal_run_system_idx_1_238:
	.ds 1
_osal_run_system_events_2_241:
	.ds 2
_osal_buffer_uint32_PARM_2:
	.ds 4
_osal_buffer_uint32_buf_1_242:
	.ds 3
_osal_buffer_uint24_PARM_2:
	.ds 4
_osal_buffer_uint24_buf_1_244:
	.ds 3
_osal_isbufset_PARM_2:
	.ds 1
_osal_isbufset_PARM_3:
	.ds 1
_osal_isbufset_buf_1_246:
	.ds 3
_osal_isbufset_x_1_247:
	.ds 1
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
;	../osal/common/OSAL.c:102: static uint8 activeTaskID = TASK_NO_TASK;
	mov	dptr,#_activeTaskID
	mov	a,#0xFF
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
;Allocation info for local variables in function 'osal_strlen'
;------------------------------------------------------------
;pString                   Allocated with name '_osal_strlen_pString_1_111'
;------------------------------------------------------------
;	../osal/common/OSAL.c:133: int osal_strlen( char *pString )
;	-----------------------------------------
;	 function osal_strlen
;	-----------------------------------------
_osal_strlen:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_strlen_pString_1_111
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:135: return (int)( strlen( pString ) );
	mov	dptr,#_osal_strlen_pString_1_111
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strlen
	mov	r6,dpl
	mov	r7,dph
	mov	dpl,r6
	mov	dph,r7
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_memcpy'
;------------------------------------------------------------
;src                       Allocated with name '_osal_memcpy_PARM_2'
;len                       Allocated with name '_osal_memcpy_PARM_3'
;dst                       Allocated with name '_osal_memcpy_dst_1_113'
;pDst                      Allocated with name '_osal_memcpy_pDst_1_114'
;pSrc                      Allocated with name '_osal_memcpy_pSrc_1_114'
;sloc0                     Allocated with name '_osal_memcpy_sloc0_1_0'
;------------------------------------------------------------
;	../osal/common/OSAL.c:155: void *osal_memcpy( void *dst, const void GENERIC *src, unsigned int len )
;	-----------------------------------------
;	 function osal_memcpy
;	-----------------------------------------
_osal_memcpy:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_memcpy_dst_1_113
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:160: pSrc = src;
	mov	dptr,#_osal_memcpy_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcpy_pSrc_1_114
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:161: pDst = dst;
	mov	dptr,#_osal_memcpy_dst_1_113
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcpy_pDst_1_114
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:163: while ( len-- )
	mov	dptr,#_osal_memcpy_pSrc_1_114
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcpy_pDst_1_114
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_osal_memcpy_PARM_3
	movx	a,@dptr
	mov	_osal_memcpy_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_memcpy_sloc0_1_0 + 1),a
00101$:
	mov	r0,_osal_memcpy_sloc0_1_0
	mov	r1,(_osal_memcpy_sloc0_1_0 + 1)
	dec	_osal_memcpy_sloc0_1_0
	mov	a,#0xFF
	cjne	a,_osal_memcpy_sloc0_1_0,00113$
	dec	(_osal_memcpy_sloc0_1_0 + 1)
00113$:
	mov	a,r0
	orl	a,r1
	jnz	00114$
	ljmp	00108$
00114$:
;	../osal/common/OSAL.c:164: *pDst++ = *pSrc++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	ljmp	00101$
00108$:
	mov	dptr,#_osal_memcpy_pDst_1_114
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:166: return ( pDst );
	mov	dptr,#_osal_memcpy_pDst_1_114
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_revmemcpy'
;------------------------------------------------------------
;src                       Allocated with name '_osal_revmemcpy_PARM_2'
;len                       Allocated with name '_osal_revmemcpy_PARM_3'
;dst                       Allocated with name '_osal_revmemcpy_dst_1_115'
;pDst                      Allocated with name '_osal_revmemcpy_pDst_1_116'
;pSrc                      Allocated with name '_osal_revmemcpy_pSrc_1_116'
;sloc0                     Allocated with name '_osal_revmemcpy_sloc0_1_0'
;------------------------------------------------------------
;	../osal/common/OSAL.c:186: void *osal_revmemcpy( void *dst, const void GENERIC *src, unsigned int len )
;	-----------------------------------------
;	 function osal_revmemcpy
;	-----------------------------------------
_osal_revmemcpy:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_revmemcpy_dst_1_115
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:191: pSrc = src;
	mov	dptr,#_osal_revmemcpy_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../osal/common/OSAL.c:192: pSrc += (len-1);
	mov	dptr,#_osal_revmemcpy_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	dec	r3
	cjne	r3,#0xFF,00113$
	dec	r4
00113$:
	mov	dptr,#_osal_revmemcpy_pSrc_1_116
	mov	a,r3
	add	a,r5
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:193: pDst = dst;
	mov	dptr,#_osal_revmemcpy_dst_1_115
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_revmemcpy_pDst_1_116
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:195: while ( len-- )
	mov	dptr,#_osal_revmemcpy_pSrc_1_116
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_revmemcpy_pDst_1_116
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_osal_revmemcpy_PARM_3
	movx	a,@dptr
	mov	_osal_revmemcpy_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_revmemcpy_sloc0_1_0 + 1),a
00101$:
	mov	r0,_osal_revmemcpy_sloc0_1_0
	mov	r1,(_osal_revmemcpy_sloc0_1_0 + 1)
	dec	_osal_revmemcpy_sloc0_1_0
	mov	a,#0xFF
	cjne	a,_osal_revmemcpy_sloc0_1_0,00114$
	dec	(_osal_revmemcpy_sloc0_1_0 + 1)
00114$:
	mov	a,r0
	orl	a,r1
	jnz	00115$
	ljmp	00108$
00115$:
;	../osal/common/OSAL.c:196: *pDst++ = *pSrc--;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	dec	r5
	cjne	r5,#0xFF,00116$
	dec	r6
00116$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	ljmp	00101$
00108$:
	mov	dptr,#_osal_revmemcpy_pDst_1_116
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:198: return ( pDst );
	mov	dptr,#_osal_revmemcpy_pDst_1_116
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_memdup'
;------------------------------------------------------------
;len                       Allocated with name '_osal_memdup_PARM_2'
;src                       Allocated with name '_osal_memdup_src_1_117'
;pDst                      Allocated with name '_osal_memdup_pDst_1_118'
;------------------------------------------------------------
;	../osal/common/OSAL.c:213: void *osal_memdup( const void GENERIC *src, unsigned int len )
;	-----------------------------------------
;	 function osal_memdup
;	-----------------------------------------
_osal_memdup:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_memdup_src_1_117
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:217: pDst = osal_mem_alloc( len );
	mov	dptr,#_osal_memdup_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_osal_mem_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_osal_memdup_pDst_1_118
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:218: if ( pDst )
	mov	a,r5
	orl	a,r6
	jnz	00108$
	ljmp	00102$
00108$:
;	../osal/common/OSAL.c:220: VOID osal_memcpy( pDst, src, len );
	mov	dptr,#_osal_memdup_pDst_1_118
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memdup_src_1_117
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_osal_memdup_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_osal_memcpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_memcpy_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_memcpy
00102$:
;	../osal/common/OSAL.c:223: return ( (void *)pDst );
	mov	dptr,#_osal_memdup_pDst_1_118
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_memcmp'
;------------------------------------------------------------
;src2                      Allocated with name '_osal_memcmp_PARM_2'
;len                       Allocated with name '_osal_memcmp_PARM_3'
;src1                      Allocated with name '_osal_memcmp_src1_1_120'
;pSrc1                     Allocated with name '_osal_memcmp_pSrc1_1_121'
;pSrc2                     Allocated with name '_osal_memcmp_pSrc2_1_121'
;sloc0                     Allocated with name '_osal_memcmp_sloc0_1_0'
;------------------------------------------------------------
;	../osal/common/OSAL.c:239: uint8 osal_memcmp( const void GENERIC *src1, const void GENERIC *src2, unsigned int len )
;	-----------------------------------------
;	 function osal_memcmp
;	-----------------------------------------
_osal_memcmp:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_memcmp_src1_1_120
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:244: pSrc1 = src1;
	mov	dptr,#_osal_memcmp_src1_1_120
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcmp_pSrc1_1_121
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:245: pSrc2 = src2;
	mov	dptr,#_osal_memcmp_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcmp_pSrc2_1_121
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:247: while ( len-- )
	mov	dptr,#_osal_memcmp_pSrc1_1_121
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memcmp_pSrc2_1_121
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_osal_memcmp_PARM_3
	movx	a,@dptr
	mov	_osal_memcmp_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_memcmp_sloc0_1_0 + 1),a
00103$:
	mov	r0,_osal_memcmp_sloc0_1_0
	mov	r1,(_osal_memcmp_sloc0_1_0 + 1)
	dec	_osal_memcmp_sloc0_1_0
	mov	a,#0xFF
	cjne	a,_osal_memcmp_sloc0_1_0,00117$
	dec	(_osal_memcmp_sloc0_1_0 + 1)
00117$:
	mov	a,r0
	orl	a,r1
	jnz	00118$
	ljmp	00105$
00118$:
;	../osal/common/OSAL.c:249: if( *pSrc1++ != *pSrc2++ )
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,r1
	cjne	a,ar0,00119$
	ljmp	00103$
00119$:
;	../osal/common/OSAL.c:250: return FALSE;
	mov	dpl,#0x00
	ljmp	00106$
00105$:
;	../osal/common/OSAL.c:252: return TRUE;
	mov	dpl,#0x01
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_memset'
;------------------------------------------------------------
;value                     Allocated with name '_osal_memset_PARM_2'
;len                       Allocated with name '_osal_memset_PARM_3'
;dest                      Allocated with name '_osal_memset_dest_1_123'
;------------------------------------------------------------
;	../osal/common/OSAL.c:269: void *osal_memset( void *dest, uint8 value, int len )
;	-----------------------------------------
;	 function osal_memset
;	-----------------------------------------
_osal_memset:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_memset_dest_1_123
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:271: return memset( dest, value, len );
	mov	dptr,#_osal_memset_dest_1_123
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_memset_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_osal_memset_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_memset_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_build_uint16'
;------------------------------------------------------------
;swapped                   Allocated with name '_osal_build_uint16_swapped_1_125'
;------------------------------------------------------------
;	../osal/common/OSAL.c:285: uint16 osal_build_uint16( uint8 *swapped )
;	-----------------------------------------
;	 function osal_build_uint16
;	-----------------------------------------
_osal_build_uint16:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_build_uint16_swapped_1_125
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:287: return ( BUILD_UINT16( swapped[0], swapped[1] ) );
	mov	dptr,#_osal_build_uint16_swapped_1_125
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	ar7,r5
	mov	r5,#0x00
	mov	a,r5
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_build_uint32'
;------------------------------------------------------------
;len                       Allocated with name '_osal_build_uint32_PARM_2'
;swapped                   Allocated with name '_osal_build_uint32_swapped_1_127'
;sloc0                     Allocated with name '_osal_build_uint32_sloc0_1_0'
;------------------------------------------------------------
;	../osal/common/OSAL.c:302: uint32 osal_build_uint32( uint8 *swapped, uint8 len )
;	-----------------------------------------
;	 function osal_build_uint32
;	-----------------------------------------
_osal_build_uint32:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_build_uint32_swapped_1_127
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:304: if ( len == 2 )
	mov	dptr,#_osal_build_uint32_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00121$
	sjmp	00122$
00121$:
	ljmp	00108$
00122$:
;	../osal/common/OSAL.c:305: return ( BUILD_UINT32( swapped[0], swapped[1], 0L, 0L ) );
	mov	dptr,#_osal_build_uint32_swapped_1_127
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	ar1,r4
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	inc	r5
	cjne	r5,#0x00,00123$
	inc	r6
00123$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	ar0,r5
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	ar7,r6
	mov	ar6,r5
	mov	ar5,r0
	mov	r0,#0x00
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	ljmp	00110$
00108$:
;	../osal/common/OSAL.c:306: else if ( len == 3 )
	mov	dptr,#_osal_build_uint32_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00124$
	sjmp	00125$
00124$:
	ljmp	00105$
00125$:
;	../osal/common/OSAL.c:307: return ( BUILD_UINT32( swapped[0], swapped[1], swapped[2], 0L ) );
	mov	dptr,#_osal_build_uint32_swapped_1_127
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	_osal_build_uint32_sloc0_1_0,r4
	mov	(_osal_build_uint32_sloc0_1_0 + 1),#0x00
	mov	(_osal_build_uint32_sloc0_1_0 + 2),#0x00
	mov	(_osal_build_uint32_sloc0_1_0 + 3),#0x00
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
	mov	ar2,r3
	mov	ar3,r4
	mov	ar4,r0
	mov	r0,#0x00
	mov	a,r0
	add	a,_osal_build_uint32_sloc0_1_0
	mov	r0,a
	mov	a,r4
	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
	mov	r4,a
	mov	a,r3
	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
	mov	r3,a
	mov	a,r2
	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
	mov	r2,a
	mov	a,#0x02
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
	mov	ar1,r5
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	ar7,r5
	mov	ar6,r1
	mov	r5,#0x00
	mov	r1,#0x00
	mov	a,r1
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r2
	mov	r2,a
	mov	dpl,r0
	mov	dph,r4
	mov	b,r3
	mov	a,r2
	ljmp	00110$
00105$:
;	../osal/common/OSAL.c:308: else if ( len == 4 )
	mov	dptr,#_osal_build_uint32_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00126$
	sjmp	00127$
00126$:
	ljmp	00102$
00127$:
;	../osal/common/OSAL.c:309: return ( BUILD_UINT32( swapped[0], swapped[1], swapped[2], swapped[3] ) );
	mov	dptr,#_osal_build_uint32_swapped_1_127
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	_osal_build_uint32_sloc0_1_0,r4
	mov	(_osal_build_uint32_sloc0_1_0 + 1),#0x00
	mov	(_osal_build_uint32_sloc0_1_0 + 2),#0x00
	mov	(_osal_build_uint32_sloc0_1_0 + 3),#0x00
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
	mov	ar2,r3
	mov	ar3,r4
	mov	ar4,r0
	mov	r0,#0x00
	mov	a,r0
	add	a,_osal_build_uint32_sloc0_1_0
	mov	_osal_build_uint32_sloc0_1_0,a
	mov	a,r4
	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
	mov	(_osal_build_uint32_sloc0_1_0 + 1),a
	mov	a,r3
	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
	mov	(_osal_build_uint32_sloc0_1_0 + 2),a
	mov	a,r2
	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
	mov	(_osal_build_uint32_sloc0_1_0 + 3),a
	mov	a,#0x02
	add	a,r5
	mov	r1,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	mov	ar2,r4
	mov	ar3,r1
	mov	r4,#0x00
	mov	r1,#0x00
	mov	a,r1
	add	a,_osal_build_uint32_sloc0_1_0
	mov	r1,a
	mov	a,r4
	addc	a,(_osal_build_uint32_sloc0_1_0 + 1)
	mov	r4,a
	mov	a,r3
	addc	a,(_osal_build_uint32_sloc0_1_0 + 2)
	mov	r3,a
	mov	a,r2
	addc	a,(_osal_build_uint32_sloc0_1_0 + 3)
	mov	r2,a
	mov	a,#0x03
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
	mov	ar0,r5
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	ar7,r0
	mov	r0,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r4
	mov	b,r3
	mov	a,r2
	ljmp	00110$
00102$:
;	../osal/common/OSAL.c:311: return ( (uint32)swapped[0] );
	mov	dptr,#_osal_build_uint32_swapped_1_127
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r7
	mov	b,r6
	mov	a,r4
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_ltoa'
;------------------------------------------------------------
;buf                       Allocated with name '__ltoa_PARM_2'
;radix                     Allocated with name '__ltoa_PARM_3'
;l                         Allocated with name '__ltoa_l_1_129'
;tmp1                      Allocated with name '__ltoa_tmp1_1_130'
;tmp2                      Allocated with name '__ltoa_tmp2_1_130'
;tmp3                      Allocated with name '__ltoa_tmp3_1_130'
;num1                      Allocated with name '__ltoa_num1_1_130'
;num2                      Allocated with name '__ltoa_num2_1_130'
;num3                      Allocated with name '__ltoa_num3_1_130'
;i                         Allocated with name '__ltoa_i_1_130'
;------------------------------------------------------------
;	../osal/common/OSAL.c:328: unsigned char * _ltoa(unsigned long l, unsigned char *buf, unsigned char radix)
;	-----------------------------------------
;	 function _ltoa
;	-----------------------------------------
__ltoa:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#__ltoa_l_1_129
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
;	../osal/common/OSAL.c:332: unsigned char tmp1[10] = "", tmp2[10] = "", tmp3[10] = "";
	mov	dptr,#__ltoa_tmp1_1_130
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#__ltoa_tmp2_1_130
	movx	@dptr,a
	mov	dptr,#__ltoa_tmp3_1_130
	movx	@dptr,a
;	../osal/common/OSAL.c:336: buf[0] = '\0';
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
;	../osal/common/OSAL.c:338: if ( radix == 10 )
	mov	dptr,#__ltoa_PARM_3
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00211$
	sjmp	00212$
00211$:
	ljmp	00132$
00212$:
;	../osal/common/OSAL.c:340: num1 = l % 10000;
	mov	dptr,#__ltoa_l_1_129
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
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#__ltoa_num1_1_130
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:341: num2 = (l / 10000) % 10000;
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divulong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#__ltoa_num2_1_130
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:342: num3 = (unsigned short)(l / 100000000);
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	mov	a,#0xE1
	inc	dptr
	movx	@dptr,a
	mov	a,#0xF5
	inc	dptr
	movx	@dptr,a
	mov	a,#0x05
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__ltoa_num3_1_130
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:344: if (num3) _itoa(num3, tmp3, 10);
	mov	a,r4
	orl	a,r5
	jnz	00213$
	ljmp	00102$
00213$:
	mov	dptr,#__ltoa_num3_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__itoa_PARM_2
	mov	a,#__ltoa_tmp3_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp3_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__itoa_PARM_3
	mov	a,#0x0A
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__itoa
00102$:
;	../osal/common/OSAL.c:345: if (num2) _itoa(num2, tmp2, 10);
	mov	dptr,#__ltoa_num2_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jnz	00214$
	ljmp	00104$
00214$:
	mov	dptr,#__ltoa_num2_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__itoa_PARM_2
	mov	a,#__ltoa_tmp2_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp2_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__itoa_PARM_3
	mov	a,#0x0A
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__itoa
00104$:
;	../osal/common/OSAL.c:346: if (num1) _itoa(num1, tmp1, 10);
	mov	dptr,#__ltoa_num1_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jnz	00215$
	ljmp	00106$
00215$:
	mov	dptr,#__ltoa_num1_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__itoa_PARM_2
	mov	a,#__ltoa_tmp1_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp1_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__itoa_PARM_3
	mov	a,#0x0A
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__itoa
00106$:
;	../osal/common/OSAL.c:348: if (num3)
	mov	dptr,#__ltoa_num3_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jnz	00216$
	ljmp	00109$
00216$:
;	../osal/common/OSAL.c:350: strcpy((char*)buf, (char const*)tmp3);
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcpy_PARM_2
	mov	a,#__ltoa_tmp3_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp3_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcpy
;	../osal/common/OSAL.c:351: for (i = 0; i < 4 - strlen((char const*)tmp2); i++)
	mov	dptr,#__ltoa_i_1_130
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__ltoa_i_1_130
	movx	a,@dptr
	mov	r4,a
00135$:
	mov	dpl,#__ltoa_tmp2_1_130
	mov	dph,#(__ltoa_tmp2_1_130 >> 8)
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_strlen
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x04
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0x00
	subb	a,r3
	mov	r3,a
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jc	00217$
	ljmp	00109$
00217$:
;	../osal/common/OSAL.c:352: strcat((char*)buf, "0");
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_strcat
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../osal/common/OSAL.c:351: for (i = 0; i < 4 - strlen((char const*)tmp2); i++)
	inc	r4
	ljmp	00135$
00109$:
;	../osal/common/OSAL.c:354: strcat((char*)buf, (char const*)tmp2);
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcat_PARM_2
	mov	a,#__ltoa_tmp2_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp2_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcat
;	../osal/common/OSAL.c:355: if (num3 || num2)
	mov	dptr,#__ltoa_num3_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jz	00218$
	ljmp	00111$
00218$:
	mov	dptr,#__ltoa_num2_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jnz	00219$
	ljmp	00112$
00219$:
00111$:
;	../osal/common/OSAL.c:357: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
	mov	dptr,#__ltoa_i_1_130
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__ltoa_i_1_130
	movx	a,@dptr
	mov	r4,a
00138$:
	mov	dpl,#__ltoa_tmp1_1_130
	mov	dph,#(__ltoa_tmp1_1_130 >> 8)
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_strlen
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x04
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0x00
	subb	a,r3
	mov	r3,a
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jc	00220$
	ljmp	00112$
00220$:
;	../osal/common/OSAL.c:358: strcat((char*)buf, "0");
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_strcat
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../osal/common/OSAL.c:357: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
	inc	r4
	ljmp	00138$
00112$:
;	../osal/common/OSAL.c:360: strcat((char*)buf, (char const*)tmp1);
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcat_PARM_2
	mov	a,#__ltoa_tmp1_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp1_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcat
;	../osal/common/OSAL.c:361: if (!num3 && !num2 && !num1)
	mov	dptr,#__ltoa_num3_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jz	00221$
	ljmp	00133$
00221$:
	mov	dptr,#__ltoa_num2_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jz	00222$
	ljmp	00133$
00222$:
	mov	dptr,#__ltoa_num1_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jz	00223$
	ljmp	00133$
00223$:
;	../osal/common/OSAL.c:362: strcpy((char*)buf, "0");
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcpy
	ljmp	00133$
00132$:
;	../osal/common/OSAL.c:364: else if ( radix == 16 )
	mov	dptr,#__ltoa_PARM_3
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00224$
	sjmp	00225$
00224$:
	ljmp	00129$
00225$:
;	../osal/common/OSAL.c:366: num1 = l & 0x0000FFFF;
	mov	dptr,#__ltoa_l_1_129
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
	mov	ar0,r4
	mov	ar1,r5
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dptr,#__ltoa_num1_1_130
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:367: num2 = l >> 16;
	mov	ar4,r6
	mov	ar5,r7
	mov	dptr,#__ltoa_num2_1_130
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:369: if (num2) _itoa(num2, tmp2, 16);
	mov	a,r4
	orl	a,r5
	jnz	00226$
	ljmp	00119$
00226$:
	mov	dptr,#__ltoa_num2_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__itoa_PARM_2
	mov	a,#__ltoa_tmp2_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp2_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__itoa_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__itoa
00119$:
;	../osal/common/OSAL.c:370: if (num1) _itoa(num1, tmp1, 16);
	mov	dptr,#__ltoa_num1_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jnz	00227$
	ljmp	00121$
00227$:
	mov	dptr,#__ltoa_num1_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__itoa_PARM_2
	mov	a,#__ltoa_tmp1_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp1_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__itoa_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__itoa
00121$:
;	../osal/common/OSAL.c:372: if (num2)
	mov	dptr,#__ltoa_num2_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jnz	00228$
	ljmp	00124$
00228$:
;	../osal/common/OSAL.c:374: strcpy((char*)buf,(char const*)tmp2);
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcpy_PARM_2
	mov	a,#__ltoa_tmp2_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp2_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcpy
;	../osal/common/OSAL.c:375: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
	mov	dptr,#__ltoa_i_1_130
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__ltoa_i_1_130
	movx	a,@dptr
	mov	r4,a
00141$:
	mov	dpl,#__ltoa_tmp1_1_130
	mov	dph,#(__ltoa_tmp1_1_130 >> 8)
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_strlen
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x04
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0x00
	subb	a,r3
	mov	r3,a
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jc	00229$
	ljmp	00124$
00229$:
;	../osal/common/OSAL.c:376: strcat((char*)buf, "0");
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_strcat
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../osal/common/OSAL.c:375: for (i = 0; i < 4 - strlen((char const*)tmp1); i++)
	inc	r4
	ljmp	00141$
00124$:
;	../osal/common/OSAL.c:378: strcat((char*)buf, (char const*)tmp1);
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcat_PARM_2
	mov	a,#__ltoa_tmp1_1_130
	movx	@dptr,a
	mov	a,#(__ltoa_tmp1_1_130 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcat
;	../osal/common/OSAL.c:379: if (!num2 && !num1)
	mov	dptr,#__ltoa_num2_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jz	00230$
	ljmp	00133$
00230$:
	mov	dptr,#__ltoa_num1_1_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jz	00231$
	ljmp	00133$
00231$:
;	../osal/common/OSAL.c:380: strcpy((char*)buf, "0");
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcpy
	ljmp	00133$
00129$:
;	../osal/common/OSAL.c:383: return NULL;
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	ljmp	00143$
00133$:
;	../osal/common/OSAL.c:385: return buf;
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00143$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_rand'
;------------------------------------------------------------
;	../osal/common/OSAL.c:400: uint16 osal_rand( void )
;	-----------------------------------------
;	 function osal_rand
;	-----------------------------------------
_osal_rand:
;	../osal/common/OSAL.c:404: }
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_allocate'
;------------------------------------------------------------
;len                       Allocated with name '_osal_msg_allocate_len_1_138'
;hdr                       Allocated with name '_osal_msg_allocate_hdr_1_139'
;------------------------------------------------------------
;	../osal/common/OSAL.c:432: uint8 * osal_msg_allocate( uint16 len )
;	-----------------------------------------
;	 function osal_msg_allocate
;	-----------------------------------------
_osal_msg_allocate:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_osal_msg_allocate_len_1_138
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:436: if ( len == 0 )
	mov	dptr,#_osal_msg_allocate_len_1_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	orl	a,r7
	jz	00114$
	ljmp	00102$
00114$:
;	../osal/common/OSAL.c:437: return ( NULL );
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	ljmp	00106$
00102$:
;	../osal/common/OSAL.c:439: hdr = (osal_msg_hdr_t *) osal_mem_alloc( (short)(len + sizeof( osal_msg_hdr_t )) );
	mov	dptr,#_osal_msg_allocate_len_1_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	mov	a,#0x00
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_osal_mem_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_osal_msg_allocate_hdr_1_139
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:440: if ( hdr )
	mov	a,r5
	orl	a,r6
	jnz	00115$
	ljmp	00104$
00115$:
;	../osal/common/OSAL.c:442: hdr->next = NULL;
	mov	dptr,#_osal_msg_allocate_hdr_1_139
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../osal/common/OSAL.c:443: hdr->len = len;
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_osal_msg_allocate_len_1_138
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	../osal/common/OSAL.c:444: hdr->dest_id = TASK_NO_TASK;
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xFF
	lcall	__gptrput
;	../osal/common/OSAL.c:445: return ( (uint8 *) (hdr + 1) );
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	00106$
00104$:
;	../osal/common/OSAL.c:448: return ( NULL );
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_deallocate'
;------------------------------------------------------------
;msg_ptr                   Allocated with name '_osal_msg_deallocate_msg_ptr_1_141'
;x                         Allocated with name '_osal_msg_deallocate_x_1_142'
;------------------------------------------------------------
;	../osal/common/OSAL.c:465: uint8 osal_msg_deallocate( uint8 *msg_ptr )
;	-----------------------------------------
;	 function osal_msg_deallocate
;	-----------------------------------------
_osal_msg_deallocate:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:469: if ( msg_ptr == NULL )
	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00113$
	ljmp	00102$
00113$:
;	../osal/common/OSAL.c:470: return ( INVALID_MSG_POINTER );
	mov	dpl,#0x05
	ljmp	00105$
00102$:
;	../osal/common/OSAL.c:473: if ( OSAL_MSG_ID( msg_ptr ) != TASK_NO_TASK )
	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xFF
	add	a,r5
	mov	r5,a
	mov	a,#0xFF
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xFF,00114$
	ljmp	00104$
00114$:
;	../osal/common/OSAL.c:474: return ( MSG_BUFFER_NOT_AVAIL );
	mov	dpl,#0x04
	ljmp	00105$
00104$:
;	../osal/common/OSAL.c:476: x = (uint8 *)((uint8 *)msg_ptr - sizeof( osal_msg_hdr_t ));
	mov	dptr,#_osal_msg_deallocate_msg_ptr_1_141
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
;	../osal/common/OSAL.c:478: osal_mem_free( (void *)x );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_mem_free
;	../osal/common/OSAL.c:480: return ( SUCCESS );
	mov	dpl,#0x00
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_send'
;------------------------------------------------------------
;msg_ptr                   Allocated with name '_osal_msg_send_PARM_2'
;destination_task          Allocated with name '_osal_msg_send_destination_task_1_143'
;------------------------------------------------------------
;	../osal/common/OSAL.c:500: uint8 osal_msg_send( uint8 destination_task, uint8 *msg_ptr )
;	-----------------------------------------
;	 function osal_msg_send
;	-----------------------------------------
_osal_msg_send:
	mov	a,dpl
	mov	dptr,#_osal_msg_send_destination_task_1_143
	movx	@dptr,a
;	../osal/common/OSAL.c:502: return ( osal_msg_enqueue_push( destination_task, msg_ptr, FALSE ) );
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_send_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_msg_enqueue_push_PARM_3
	mov	a,#0x00
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_msg_enqueue_push
	mov	r7,dpl
	mov	dpl,r7
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_push_front'
;------------------------------------------------------------
;msg_ptr                   Allocated with name '_osal_msg_push_front_PARM_2'
;destination_task          Allocated with name '_osal_msg_push_front_destination_task_1_145'
;------------------------------------------------------------
;	../osal/common/OSAL.c:521: uint8 osal_msg_push_front( uint8 destination_task, uint8 *msg_ptr )
;	-----------------------------------------
;	 function osal_msg_push_front
;	-----------------------------------------
_osal_msg_push_front:
	mov	a,dpl
	mov	dptr,#_osal_msg_push_front_destination_task_1_145
	movx	@dptr,a
;	../osal/common/OSAL.c:523: return ( osal_msg_enqueue_push( destination_task, msg_ptr, TRUE ) );
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_push_front_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_msg_enqueue_push_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_msg_enqueue_push
	mov	r7,dpl
	mov	dpl,r7
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_enqueue_push'
;------------------------------------------------------------
;msg_ptr                   Allocated with name '_osal_msg_enqueue_push_PARM_2'
;push                      Allocated with name '_osal_msg_enqueue_push_PARM_3'
;destination_task          Allocated with name '_osal_msg_enqueue_push_destination_task_1_147'
;------------------------------------------------------------
;	../osal/common/OSAL.c:544: static uint8 osal_msg_enqueue_push( uint8 destination_task, uint8 *msg_ptr, uint8 push )
;	-----------------------------------------
;	 function osal_msg_enqueue_push
;	-----------------------------------------
_osal_msg_enqueue_push:
	mov	a,dpl
	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
	movx	@dptr,a
;	../osal/common/OSAL.c:546: if ( msg_ptr == NULL )
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00125$
	ljmp	00102$
00125$:
;	../osal/common/OSAL.c:548: return ( INVALID_MSG_POINTER );
	mov	dpl,#0x05
	ljmp	00111$
00102$:
;	../osal/common/OSAL.c:551: if ( destination_task >= tasksCnt )
	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_tasksCnt
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00126$
	ljmp	00104$
00126$:
;	../osal/common/OSAL.c:553: osal_msg_deallocate( msg_ptr );
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_msg_deallocate
;	../osal/common/OSAL.c:554: return ( INVALID_TASK );
	mov	dpl,#0x03
	ljmp	00111$
00104$:
;	../osal/common/OSAL.c:558: if ( OSAL_MSG_NEXT( msg_ptr ) != NULL ||
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00127$
	ljmp	00105$
00127$:
;	../osal/common/OSAL.c:559: OSAL_MSG_ID( msg_ptr ) != TASK_NO_TASK )
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xFF
	add	a,r5
	mov	r5,a
	mov	a,#0xFF
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xFF,00128$
	ljmp	00106$
00128$:
00105$:
;	../osal/common/OSAL.c:561: osal_msg_deallocate( msg_ptr );
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_osal_msg_deallocate
;	../osal/common/OSAL.c:562: return ( INVALID_MSG_POINTER );
	mov	dpl,#0x05
	ljmp	00111$
00106$:
;	../osal/common/OSAL.c:565: OSAL_MSG_ID( msg_ptr ) = destination_task;
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xFF
	add	a,r5
	mov	r5,a
	mov	a,#0xFF
	addc	a,r6
	mov	r6,a
	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../osal/common/OSAL.c:567: if ( push == TRUE )
	mov	dptr,#_osal_msg_enqueue_push_PARM_3
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00129$
	sjmp	00130$
00129$:
	ljmp	00109$
00130$:
;	../osal/common/OSAL.c:570: osal_msg_push( &osal_qHead, msg_ptr );
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_push_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,#_osal_qHead
	mov	dph,#(_osal_qHead >> 8)
	mov	b,#0x00
	lcall	_osal_msg_push
	ljmp	00110$
00109$:
;	../osal/common/OSAL.c:575: osal_msg_enqueue( &osal_qHead, msg_ptr );
	mov	dptr,#_osal_msg_enqueue_push_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_enqueue_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,#_osal_qHead
	mov	dph,#(_osal_qHead >> 8)
	mov	b,#0x00
	lcall	_osal_msg_enqueue
00110$:
;	../osal/common/OSAL.c:579: osal_set_event( destination_task, SYS_EVENT_MSG );
	mov	dptr,#_osal_msg_enqueue_push_destination_task_1_147
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_set_event_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_set_event
;	../osal/common/OSAL.c:581: return ( SUCCESS );
	mov	dpl,#0x00
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_receive'
;------------------------------------------------------------
;task_id                   Allocated with name '_osal_msg_receive_task_id_1_154'
;listHdr                   Allocated with name '_osal_msg_receive_listHdr_1_155'
;prevHdr                   Allocated with name '_osal_msg_receive_prevHdr_1_155'
;foundHdr                  Allocated with name '_osal_msg_receive_foundHdr_1_155'
;intState                  Allocated with name '_osal_msg_receive_intState_1_155'
;------------------------------------------------------------
;	../osal/common/OSAL.c:597: uint8 *osal_msg_receive( uint8 task_id )
;	-----------------------------------------
;	 function osal_msg_receive
;	-----------------------------------------
_osal_msg_receive:
	mov	a,dpl
	mov	dptr,#_osal_msg_receive_task_id_1_154
	movx	@dptr,a
;	../osal/common/OSAL.c:600: osal_msg_hdr_t *prevHdr = NULL;
	mov	dptr,#_osal_msg_receive_prevHdr_1_155
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:601: osal_msg_hdr_t *foundHdr = NULL;
	mov	dptr,#_osal_msg_receive_foundHdr_1_155
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:605: HAL_ENTER_CRITICAL_SECTION(intState);
	mov	dptr,#_osal_msg_receive_intState_1_155
	mov	c,_EA
	clr	a
	rlc	a
	movx	@dptr,a
	clr	_EA
;	../osal/common/OSAL.c:608: listHdr = osal_qHead;
	mov	dptr,#_osal_qHead
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_receive_listHdr_1_155
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:611: while ( listHdr != NULL )
	mov	dptr,#_osal_msg_receive_task_id_1_154
	movx	a,@dptr
	mov	r7,a
00114$:
	mov	dptr,#_osal_msg_receive_listHdr_1_155
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r4
	orl	a,r5
	jnz	00148$
	ljmp	00116$
00148$:
;	../osal/common/OSAL.c:613: if ( (listHdr - 1)->dest_id == task_id )
	mov	dptr,#_osal_msg_receive_listHdr_1_155
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0xFF
	add	a,r4
	mov	r4,a
	mov	a,#0xFF
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r4
	cjne	a,ar7,00149$
	sjmp	00150$
00149$:
	ljmp	00111$
00150$:
;	../osal/common/OSAL.c:615: if ( foundHdr == NULL )
	mov	dptr,#_osal_msg_receive_foundHdr_1_155
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r4
	orl	a,r5
	jz	00151$
	ljmp	00116$
00151$:
;	../osal/common/OSAL.c:618: foundHdr = listHdr;
	mov	dptr,#_osal_msg_receive_listHdr_1_155
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_osal_msg_receive_foundHdr_1_155
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:623: break;
00111$:
;	../osal/common/OSAL.c:626: if ( foundHdr == NULL )
	mov	dptr,#_osal_msg_receive_foundHdr_1_155
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r4
	orl	a,r5
	jz	00152$
	ljmp	00113$
00152$:
;	../osal/common/OSAL.c:628: prevHdr = listHdr;
	mov	dptr,#_osal_msg_receive_listHdr_1_155
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_osal_msg_receive_prevHdr_1_155
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00113$:
;	../osal/common/OSAL.c:630: listHdr = OSAL_MSG_NEXT( listHdr );
	mov	dptr,#_osal_msg_receive_listHdr_1_155
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r4
	add	a,#0xFA
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_osal_msg_receive_listHdr_1_155
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00114$
00116$:
;	../osal/common/OSAL.c:634: if ( listHdr != NULL )
	mov	dptr,#_osal_msg_receive_listHdr_1_155
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00153$
	ljmp	00118$
00153$:
;	../osal/common/OSAL.c:637: osal_set_event( task_id, SYS_EVENT_MSG );
	mov	dptr,#_osal_msg_receive_task_id_1_154
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_set_event_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_set_event
	ljmp	00119$
00118$:
;	../osal/common/OSAL.c:642: osal_clear_event( task_id, SYS_EVENT_MSG );
	mov	dptr,#_osal_msg_receive_task_id_1_154
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_clear_event_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_osal_clear_event
00119$:
;	../osal/common/OSAL.c:646: if ( foundHdr != NULL )
	mov	dptr,#_osal_msg_receive_foundHdr_1_155
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00154$
	ljmp	00122$
00154$:
;	../osal/common/OSAL.c:649: osal_msg_extract( &osal_qHead, foundHdr, prevHdr );
	mov	dptr,#_osal_msg_receive_foundHdr_1_155
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_receive_prevHdr_1_155
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_osal_msg_extract_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_osal_msg_extract_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,#_osal_qHead
	mov	dph,#(_osal_qHead >> 8)
	mov	b,#0x00
	lcall	_osal_msg_extract
;	../osal/common/OSAL.c:653: HAL_EXIT_CRITICAL_SECTION(intState);
00122$:
	mov	dptr,#_osal_msg_receive_intState_1_155
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	../osal/common/OSAL.c:655: return ( (uint8*) foundHdr );
	mov	dptr,#_osal_msg_receive_foundHdr_1_155
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00125$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_find'
;------------------------------------------------------------
;event                     Allocated with name '_osal_msg_find_PARM_2'
;task_id                   Allocated with name '_osal_msg_find_task_id_1_167'
;pHdr                      Allocated with name '_osal_msg_find_pHdr_1_168'
;intState                  Allocated with name '_osal_msg_find_intState_1_168'
;------------------------------------------------------------
;	../osal/common/OSAL.c:676: osal_event_hdr_t *osal_msg_find(uint8 task_id, uint8 event)
;	-----------------------------------------
;	 function osal_msg_find
;	-----------------------------------------
_osal_msg_find:
	mov	a,dpl
	mov	dptr,#_osal_msg_find_task_id_1_167
	movx	@dptr,a
;	../osal/common/OSAL.c:681: HAL_ENTER_CRITICAL_SECTION(intState);  // Hold off interrupts.
	mov	dptr,#_osal_msg_find_intState_1_168
	mov	c,_EA
	clr	a
	rlc	a
	movx	@dptr,a
	clr	_EA
;	../osal/common/OSAL.c:683: pHdr = osal_qHead;  // Point to the top of the queue.
	mov	dptr,#_osal_qHead
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_find_pHdr_1_168
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:686: while (pHdr != NULL)
	mov	dptr,#_osal_msg_find_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_find_task_id_1_167
	movx	a,@dptr
	mov	r6,a
00110$:
	mov	dptr,#_osal_msg_find_pHdr_1_168
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jnz	00127$
	ljmp	00113$
00127$:
;	../osal/common/OSAL.c:688: if (((pHdr-1)->dest_id == task_id) && (((osal_event_hdr_t *)pHdr)->event == event))
	mov	dptr,#_osal_msg_find_pHdr_1_168
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0xFF
	add	a,r3
	mov	r3,a
	mov	a,#0xFF
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r3
	cjne	a,ar6,00128$
	sjmp	00129$
00128$:
	ljmp	00108$
00129$:
	mov	dptr,#_osal_msg_find_pHdr_1_168
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r3
	cjne	a,ar7,00130$
	ljmp	00113$
00130$:
;	../osal/common/OSAL.c:690: break;
00108$:
;	../osal/common/OSAL.c:693: pHdr = OSAL_MSG_NEXT(pHdr);
	mov	dptr,#_osal_msg_find_pHdr_1_168
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	add	a,#0xFA
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_osal_msg_find_pHdr_1_168
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00110$
;	../osal/common/OSAL.c:696: HAL_EXIT_CRITICAL_SECTION(intState);  // Release interrupts.
00113$:
	mov	dptr,#_osal_msg_find_intState_1_168
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	../osal/common/OSAL.c:698: return (osal_event_hdr_t *)pHdr;
	mov	dptr,#_osal_msg_find_pHdr_1_168
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00116$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_enqueue'
;------------------------------------------------------------
;msg_ptr                   Allocated with name '_osal_msg_enqueue_PARM_2'
;q_ptr                     Allocated with name '_osal_msg_enqueue_q_ptr_1_174'
;list                      Allocated with name '_osal_msg_enqueue_list_1_175'
;intState                  Allocated with name '_osal_msg_enqueue_intState_1_175'
;------------------------------------------------------------
;	../osal/common/OSAL.c:713: void osal_msg_enqueue( osal_msg_q_t *q_ptr, void *msg_ptr )
;	-----------------------------------------
;	 function osal_msg_enqueue
;	-----------------------------------------
_osal_msg_enqueue:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:719: HAL_ENTER_CRITICAL_SECTION(intState);
	mov	dptr,#_osal_msg_enqueue_intState_1_175
	mov	c,_EA
	clr	a
	rlc	a
	movx	@dptr,a
	clr	_EA
;	../osal/common/OSAL.c:721: OSAL_MSG_NEXT( msg_ptr ) = NULL;
	mov	dptr,#_osal_msg_enqueue_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../osal/common/OSAL.c:723: if ( *q_ptr == NULL )
	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00128$
	ljmp	00109$
00128$:
;	../osal/common/OSAL.c:725: *q_ptr = msg_ptr;
	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_enqueue_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	ljmp	00111$
00109$:
;	../osal/common/OSAL.c:730: for ( list = *q_ptr; OSAL_MSG_NEXT( list ) != NULL; list = OSAL_MSG_NEXT( list ) );
	mov	dptr,#_osal_msg_enqueue_q_ptr_1_174
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_osal_msg_enqueue_list_1_175
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00115$:
	mov	dptr,#_osal_msg_enqueue_list_1_175
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00129$
	ljmp	00107$
00129$:
	mov	dptr,#_osal_msg_enqueue_list_1_175
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_osal_msg_enqueue_list_1_175
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00115$
00107$:
;	../osal/common/OSAL.c:733: OSAL_MSG_NEXT( list ) = msg_ptr;
	mov	dptr,#_osal_msg_enqueue_list_1_175
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dptr,#_osal_msg_enqueue_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../osal/common/OSAL.c:737: HAL_EXIT_CRITICAL_SECTION(intState);
00111$:
	mov	dptr,#_osal_msg_enqueue_intState_1_175
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_dequeue'
;------------------------------------------------------------
;q_ptr                     Allocated with name '_osal_msg_dequeue_q_ptr_1_181'
;msg_ptr                   Allocated with name '_osal_msg_dequeue_msg_ptr_1_182'
;intState                  Allocated with name '_osal_msg_dequeue_intState_1_182'
;sloc0                     Allocated with name '_osal_msg_dequeue_sloc0_1_0'
;------------------------------------------------------------
;	../osal/common/OSAL.c:751: void *osal_msg_dequeue( osal_msg_q_t *q_ptr )
;	-----------------------------------------
;	 function osal_msg_dequeue
;	-----------------------------------------
_osal_msg_dequeue:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:753: void *msg_ptr = NULL;
	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:757: HAL_ENTER_CRITICAL_SECTION(intState);
	mov	dptr,#_osal_msg_dequeue_intState_1_182
	mov	c,_EA
	clr	a
	rlc	a
	movx	@dptr,a
	clr	_EA
;	../osal/common/OSAL.c:759: if ( *q_ptr != NULL )
	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00117$
	ljmp	00109$
00117$:
;	../osal/common/OSAL.c:762: msg_ptr = *q_ptr;
	mov	dptr,#_osal_msg_dequeue_q_ptr_1_181
	movx	a,@dptr
	mov	_osal_msg_dequeue_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_msg_dequeue_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_msg_dequeue_sloc0_1_0 + 2),a
	mov	dpl,_osal_msg_dequeue_sloc0_1_0
	mov	dph,(_osal_msg_dequeue_sloc0_1_0 + 1)
	mov	b,(_osal_msg_dequeue_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:763: *q_ptr = OSAL_MSG_NEXT( msg_ptr );
	mov	ar0,r2
	mov	ar1,r3
	mov	ar7,r4
	mov	a,r0
	add	a,#0xFA
	mov	r0,a
	mov	a,r1
	addc	a,#0xFF
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,_osal_msg_dequeue_sloc0_1_0
	mov	dph,(_osal_msg_dequeue_sloc0_1_0 + 1)
	mov	b,(_osal_msg_dequeue_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../osal/common/OSAL.c:764: OSAL_MSG_NEXT( msg_ptr ) = NULL;
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../osal/common/OSAL.c:765: OSAL_MSG_ID( msg_ptr ) = TASK_NO_TASK;
	dec	a
	add	a,r2
	mov	r2,a
	mov	a,#0xFF
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xFF
	lcall	__gptrput
;	../osal/common/OSAL.c:769: HAL_EXIT_CRITICAL_SECTION(intState);
00109$:
	mov	dptr,#_osal_msg_dequeue_intState_1_182
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	../osal/common/OSAL.c:771: return msg_ptr;
	mov	dptr,#_osal_msg_dequeue_msg_ptr_1_182
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_push'
;------------------------------------------------------------
;msg_ptr                   Allocated with name '_osal_msg_push_PARM_2'
;q_ptr                     Allocated with name '_osal_msg_push_q_ptr_1_187'
;intState                  Allocated with name '_osal_msg_push_intState_1_188'
;sloc0                     Allocated with name '_osal_msg_push_sloc0_1_0'
;sloc1                     Allocated with name '_osal_msg_push_sloc1_1_0'
;sloc2                     Allocated with name '_osal_msg_push_sloc2_1_0'
;------------------------------------------------------------
;	../osal/common/OSAL.c:787: void osal_msg_push( osal_msg_q_t *q_ptr, void *msg_ptr )
;	-----------------------------------------
;	 function osal_msg_push
;	-----------------------------------------
_osal_msg_push:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_msg_push_q_ptr_1_187
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:792: HAL_ENTER_CRITICAL_SECTION(intState);
	mov	c,_EA
	clr	a
	rlc	a
	mov	_osal_msg_push_sloc0_1_0,a
	clr	_EA
;	../osal/common/OSAL.c:795: OSAL_MSG_NEXT( msg_ptr ) = *q_ptr;
	mov	dptr,#_osal_msg_push_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar1,r4
	mov	ar2,r5
	mov	ar3,r6
	mov	a,r1
	add	a,#0xFA
	mov	_osal_msg_push_sloc1_1_0,a
	mov	a,r2
	addc	a,#0xFF
	mov	(_osal_msg_push_sloc1_1_0 + 1),a
	mov	(_osal_msg_push_sloc1_1_0 + 2),r3
	mov	dptr,#_osal_msg_push_q_ptr_1_187
	movx	a,@dptr
	mov	_osal_msg_push_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_msg_push_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_msg_push_sloc2_1_0 + 2),a
	mov	dpl,_osal_msg_push_sloc2_1_0
	mov	dph,(_osal_msg_push_sloc2_1_0 + 1)
	mov	b,(_osal_msg_push_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,_osal_msg_push_sloc1_1_0
	mov	dph,(_osal_msg_push_sloc1_1_0 + 1)
	mov	b,(_osal_msg_push_sloc1_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../osal/common/OSAL.c:796: *q_ptr = msg_ptr;
	mov	dpl,_osal_msg_push_sloc2_1_0
	mov	dph,(_osal_msg_push_sloc2_1_0 + 1)
	mov	b,(_osal_msg_push_sloc2_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	../osal/common/OSAL.c:799: HAL_EXIT_CRITICAL_SECTION(intState);
	mov	a,_osal_msg_push_sloc0_1_0
	add	a,#0xff
	mov	_EA,c
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_extract'
;------------------------------------------------------------
;msg_ptr                   Allocated with name '_osal_msg_extract_PARM_2'
;prev_ptr                  Allocated with name '_osal_msg_extract_PARM_3'
;q_ptr                     Allocated with name '_osal_msg_extract_q_ptr_1_192'
;intState                  Allocated with name '_osal_msg_extract_intState_1_193'
;------------------------------------------------------------
;	../osal/common/OSAL.c:816: void osal_msg_extract( osal_msg_q_t *q_ptr, void *msg_ptr, void *prev_ptr )
;	-----------------------------------------
;	 function osal_msg_extract
;	-----------------------------------------
_osal_msg_extract:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_msg_extract_q_ptr_1_192
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:821: HAL_ENTER_CRITICAL_SECTION(intState);
	mov	dptr,#_osal_msg_extract_intState_1_193
	mov	c,_EA
	clr	a
	rlc	a
	movx	@dptr,a
	clr	_EA
;	../osal/common/OSAL.c:823: if ( msg_ptr == *q_ptr )
	mov	dptr,#_osal_msg_extract_q_ptr_1_192
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_osal_msg_extract_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00118$
	sjmp	00119$
00118$:
	ljmp	00108$
00119$:
;	../osal/common/OSAL.c:826: *q_ptr = OSAL_MSG_NEXT( msg_ptr );
	mov	dptr,#_osal_msg_extract_q_ptr_1_192
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_extract_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	add	a,#0xFA
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	ljmp	00109$
00108$:
;	../osal/common/OSAL.c:831: OSAL_MSG_NEXT( prev_ptr ) = OSAL_MSG_NEXT( msg_ptr );
	mov	dptr,#_osal_msg_extract_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dptr,#_osal_msg_extract_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	add	a,#0xFA
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00109$:
;	../osal/common/OSAL.c:833: OSAL_MSG_NEXT( msg_ptr ) = NULL;
	mov	dptr,#_osal_msg_extract_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	a,r2
	add	a,#0xFA
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../osal/common/OSAL.c:834: OSAL_MSG_ID( msg_ptr ) = TASK_NO_TASK;
	dec	a
	add	a,r5
	mov	r5,a
	mov	a,#0xFF
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xFF
	lcall	__gptrput
;	../osal/common/OSAL.c:837: HAL_EXIT_CRITICAL_SECTION(intState);
	mov	dptr,#_osal_msg_extract_intState_1_193
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_msg_enqueue_max'
;------------------------------------------------------------
;msg_ptr                   Allocated with name '_osal_msg_enqueue_max_PARM_2'
;max                       Allocated with name '_osal_msg_enqueue_max_PARM_3'
;q_ptr                     Allocated with name '_osal_msg_enqueue_max_q_ptr_1_199'
;list                      Allocated with name '_osal_msg_enqueue_max_list_1_200'
;ret                       Allocated with name '_osal_msg_enqueue_max_ret_1_200'
;intState                  Allocated with name '_osal_msg_enqueue_max_intState_1_200'
;------------------------------------------------------------
;	../osal/common/OSAL.c:854: uint8 osal_msg_enqueue_max( osal_msg_q_t *q_ptr, void *msg_ptr, uint8 max )
;	-----------------------------------------
;	 function osal_msg_enqueue_max
;	-----------------------------------------
_osal_msg_enqueue_max:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:857: uint8 ret = FALSE;
	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
	mov	a,#0x00
	movx	@dptr,a
;	../osal/common/OSAL.c:861: HAL_ENTER_CRITICAL_SECTION(intState);
	mov	dptr,#_osal_msg_enqueue_max_intState_1_200
	mov	c,_EA
	clr	a
	rlc	a
	movx	@dptr,a
	clr	_EA
;	../osal/common/OSAL.c:864: if ( *q_ptr == NULL )
	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00137$
	ljmp	00114$
00137$:
;	../osal/common/OSAL.c:866: *q_ptr = msg_ptr;
	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_msg_enqueue_max_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../osal/common/OSAL.c:867: ret = TRUE;
	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00116$
00114$:
;	../osal/common/OSAL.c:872: list = *q_ptr;
	mov	dptr,#_osal_msg_enqueue_max_q_ptr_1_199
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_osal_msg_enqueue_max_list_1_200
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:873: max--;
	mov	dptr,#_osal_msg_enqueue_max_PARM_3
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	../osal/common/OSAL.c:874: while ( (OSAL_MSG_NEXT( list ) != NULL) && (max > 0) )
	movx	a,@dptr
	mov	r7,a
00108$:
	mov	dptr,#_osal_msg_enqueue_max_list_1_200
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r4
	add	a,#0xFA
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r4
	orl	a,r5
	jnz	00138$
	ljmp	00126$
00138$:
	mov	a,r7
	jnz	00139$
	ljmp	00126$
00139$:
;	../osal/common/OSAL.c:876: list = OSAL_MSG_NEXT( list );
	mov	dptr,#_osal_msg_enqueue_max_list_1_200
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r4
	add	a,#0xFA
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_osal_msg_enqueue_max_list_1_200
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:877: max--;
	dec	r7
	ljmp	00108$
00126$:
	mov	dptr,#_osal_msg_enqueue_max_PARM_3
	mov	a,r7
	movx	@dptr,a
;	../osal/common/OSAL.c:881: if ( max != 0 )
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	jnz	00140$
	ljmp	00116$
00140$:
;	../osal/common/OSAL.c:883: OSAL_MSG_NEXT( list ) = msg_ptr;
	mov	dptr,#_osal_msg_enqueue_max_list_1_200
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,#0xFA
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dptr,#_osal_msg_enqueue_max_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../osal/common/OSAL.c:884: ret = TRUE;
	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
	mov	a,#0x01
	movx	@dptr,a
;	../osal/common/OSAL.c:889: HAL_EXIT_CRITICAL_SECTION(intState);
00116$:
	mov	dptr,#_osal_msg_enqueue_max_intState_1_200
	movx	a,@dptr
	mov	r7,a
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	../osal/common/OSAL.c:891: return ret;
	mov	dptr,#_osal_msg_enqueue_max_ret_1_200
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r7
00119$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_set_event'
;------------------------------------------------------------
;event_flag                Allocated with name '_osal_set_event_PARM_2'
;task_id                   Allocated with name '_osal_set_event_task_id_1_208'
;intState                  Allocated with name '_osal_set_event_intState_2_210'
;------------------------------------------------------------
;	../osal/common/OSAL.c:907: uint8 osal_set_event( uint8 task_id, uint16 event_flag )
;	-----------------------------------------
;	 function osal_set_event
;	-----------------------------------------
_osal_set_event:
	mov	a,dpl
	mov	dptr,#_osal_set_event_task_id_1_208
	movx	@dptr,a
;	../osal/common/OSAL.c:909: if ( task_id < tasksCnt )
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_tasksCnt
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00109$
	ljmp	00102$
00109$:
;	../osal/common/OSAL.c:913: tasksEvents[task_id] |= event_flag;  // Stuff the event bit(s)
	mov	dptr,#_tasksEvents
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_set_event_task_id_1_208
	movx	a,@dptr
	mov	r4,a
	mov	a,r4
	mov	b,#0x02
	mul	ab
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_osal_set_event_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	orl	ar3,a
	mov	a,r2
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../osal/common/OSAL.c:915: return ( SUCCESS );
	mov	dpl,#0x00
	ljmp	00104$
00102$:
;	../osal/common/OSAL.c:919: return ( INVALID_TASK );
	mov	dpl,#0x03
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_clear_event'
;------------------------------------------------------------
;event_flag                Allocated with name '_osal_clear_event_PARM_2'
;task_id                   Allocated with name '_osal_clear_event_task_id_1_212'
;intState                  Allocated with name '_osal_clear_event_intState_2_214'
;------------------------------------------------------------
;	../osal/common/OSAL.c:936: uint8 osal_clear_event( uint8 task_id, uint16 event_flag )
;	-----------------------------------------
;	 function osal_clear_event
;	-----------------------------------------
_osal_clear_event:
	mov	a,dpl
	mov	dptr,#_osal_clear_event_task_id_1_212
	movx	@dptr,a
;	../osal/common/OSAL.c:938: if ( task_id < tasksCnt )
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_tasksCnt
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00118$
	ljmp	00111$
00118$:
;	../osal/common/OSAL.c:941: HAL_ENTER_CRITICAL_SECTION(intState);    // Hold off interrupts
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
	clr	_EA
;	../osal/common/OSAL.c:942: tasksEvents[task_id] &= ~(event_flag);   // Clear the event bit(s)
	mov	dptr,#_tasksEvents
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_osal_clear_event_task_id_1_212
	movx	a,@dptr
	mov	r3,a
	mov	a,r3
	mov	b,#0x02
	mul	ab
	add	a,r4
	mov	r4,a
	mov	a,r5
	addc	a,b
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_osal_clear_event_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	cpl	a
	mov	r0,a
	mov	a,r1
	cpl	a
	mov	r1,a
	mov	a,r0
	anl	ar2,a
	mov	a,r1
	anl	ar3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../osal/common/OSAL.c:943: HAL_EXIT_CRITICAL_SECTION(intState);     // Release interrupts
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	../osal/common/OSAL.c:944: return ( SUCCESS );
	mov	dpl,#0x00
	ljmp	00113$
00111$:
;	../osal/common/OSAL.c:948: return ( INVALID_TASK );
	mov	dpl,#0x03
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_isr_register'
;------------------------------------------------------------
;isr_ptr                   Allocated with name '_osal_isr_register_PARM_2'
;interrupt_id              Allocated with name '_osal_isr_register_interrupt_id_1_219'
;------------------------------------------------------------
;	../osal/common/OSAL.c:965: uint8 osal_isr_register( uint8 interrupt_id, void (*isr_ptr)( uint8* ) )
;	-----------------------------------------
;	 function osal_isr_register
;	-----------------------------------------
_osal_isr_register:
;	../osal/common/OSAL.c:970: return ( SUCCESS );
	mov	dpl,#0x00
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_int_enable'
;------------------------------------------------------------
;interrupt_id              Allocated with name '_osal_int_enable_interrupt_id_1_222'
;------------------------------------------------------------
;	../osal/common/OSAL.c:990: uint8 osal_int_enable( uint8 interrupt_id )
;	-----------------------------------------
;	 function osal_int_enable
;	-----------------------------------------
_osal_int_enable:
	mov	a,dpl
	mov	dptr,#_osal_int_enable_interrupt_id_1_222
	movx	@dptr,a
;	../osal/common/OSAL.c:993: if ( interrupt_id == INTS_ALL )
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,00112$
	sjmp	00113$
00112$:
	ljmp	00105$
00113$:
;	../osal/common/OSAL.c:995: HAL_ENABLE_INTERRUPTS();
	setb	_EA
;	../osal/common/OSAL.c:996: return ( SUCCESS );
	mov	dpl,#0x00
	ljmp	00107$
00105$:
;	../osal/common/OSAL.c:1000: return ( INVALID_INTERRUPT_ID );
	mov	dpl,#0x07
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_int_disable'
;------------------------------------------------------------
;interrupt_id              Allocated with name '_osal_int_disable_interrupt_id_1_227'
;------------------------------------------------------------
;	../osal/common/OSAL.c:1020: uint8 osal_int_disable( uint8 interrupt_id )
;	-----------------------------------------
;	 function osal_int_disable
;	-----------------------------------------
_osal_int_disable:
	mov	a,dpl
	mov	dptr,#_osal_int_disable_interrupt_id_1_227
	movx	@dptr,a
;	../osal/common/OSAL.c:1023: if ( interrupt_id == INTS_ALL )
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,00112$
	sjmp	00113$
00112$:
	ljmp	00105$
00113$:
;	../osal/common/OSAL.c:1025: HAL_DISABLE_INTERRUPTS();
	clr	_EA
;	../osal/common/OSAL.c:1026: return ( SUCCESS );
	mov	dpl,#0x00
	ljmp	00107$
00105$:
;	../osal/common/OSAL.c:1030: return ( INVALID_INTERRUPT_ID );
	mov	dpl,#0x07
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_init_system'
;------------------------------------------------------------
;	../osal/common/OSAL.c:1046: uint8 osal_init_system( void )
;	-----------------------------------------
;	 function osal_init_system
;	-----------------------------------------
_osal_init_system:
;	../osal/common/OSAL.c:1049: osal_mem_init();
	lcall	_osal_mem_init
;	../osal/common/OSAL.c:1052: osal_qHead = NULL;
	mov	dptr,#_osal_qHead
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1055: osalTimerInit();
	lcall	_osalTimerInit
;	../osal/common/OSAL.c:1061: osalInitTasks();
	lcall	_osalInitTasks
;	../osal/common/OSAL.c:1066: return ( SUCCESS );
	mov	dpl,#0x00
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_start_system'
;------------------------------------------------------------
;	../osal/common/OSAL.c:1081: void osal_start_system( void )
;	-----------------------------------------
;	 function osal_start_system
;	-----------------------------------------
_osal_start_system:
00102$:
;	../osal/common/OSAL.c:1087: osal_run_system();
	lcall	_osal_run_system
	ljmp	00102$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_run_system'
;------------------------------------------------------------
;idx                       Allocated with name '_osal_run_system_idx_1_238'
;events                    Allocated with name '_osal_run_system_events_2_241'
;------------------------------------------------------------
;	../osal/common/OSAL.c:1105: void osal_run_system( void )
;	-----------------------------------------
;	 function osal_run_system
;	-----------------------------------------
_osal_run_system:
;	../osal/common/OSAL.c:1107: uint8 idx = 0;
	mov	dptr,#_osal_run_system_idx_1_238
	mov	a,#0x00
	movx	@dptr,a
;	../osal/common/OSAL.c:1110: osalTimeUpdate();
	lcall	_osalTimeUpdate
;	../osal/common/OSAL.c:1115: do {
	mov	dptr,#_osal_run_system_idx_1_238
	movx	a,@dptr
	mov	r7,a
00103$:
;	../osal/common/OSAL.c:1116: if (tasksEvents[idx])  // Task is highest priority that is ready.
	mov	dptr,#_tasksEvents
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,r4
	mov	r4,a
	mov	a,r5
	addc	a,b
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r4
	orl	a,r5
	jz	00120$
	ljmp	00113$
00120$:
;	../osal/common/OSAL.c:1120: } while (++idx < tasksCnt);
	inc	r7
	mov	dptr,#_tasksCnt
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00121$
	ljmp	00103$
00121$:
00113$:
	mov	dptr,#_osal_run_system_idx_1_238
	mov	a,r7
	movx	@dptr,a
;	../osal/common/OSAL.c:1132: if (idx < tasksCnt)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_tasksCnt
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00122$
	ljmp	00108$
00122$:
;	../osal/common/OSAL.c:1138: events = tasksEvents[idx];
	mov	dptr,#_tasksEvents
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_run_system_idx_1_238
	movx	a,@dptr
	mov	r4,a
	mov	a,r4
	mov	b,#0x02
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_osal_run_system_events_2_241
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1139: tasksEvents[idx] = 0;  // Clear the Events for this task.
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../osal/common/OSAL.c:1152: activeTaskID = idx;
	mov	dptr,#_activeTaskID
	mov	a,r4
	movx	@dptr,a
;	../osal/common/OSAL.c:1153: events = (tasksArr[idx])( idx, events );
	mov	a,r2
	add	a,#_tasksArr
	mov	dpl,a
	mov	a,r3
	addc	a,#(_tasksArr >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar3
	push	ar2
	mov	dptr,#_osal_run_system_events_2_241
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	lcall	00123$
	ljmp	00124$
00123$:
	push	ar6
	push	ar7
	mov	dpl,r4
	ret
00124$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
;	../osal/common/OSAL.c:1154: activeTaskID = TASK_NO_TASK;
	mov	dptr,#_activeTaskID
	mov	a,#0xFF
	movx	@dptr,a
;	../osal/common/OSAL.c:1162: tasksEvents[idx] |= events;  // Add back unprocessed events to the current task.
	mov	dptr,#_tasksEvents
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	add	a,r1
	mov	r1,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dpl,r1
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	dpl,r1
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_buffer_uint32'
;------------------------------------------------------------
;val                       Allocated with name '_osal_buffer_uint32_PARM_2'
;buf                       Allocated with name '_osal_buffer_uint32_buf_1_242'
;sloc0                     Allocated with name '_osal_buffer_uint32_sloc0_1_0'
;------------------------------------------------------------
;	../osal/common/OSAL.c:1192: uint8* osal_buffer_uint32( uint8 *buf, uint32 val )
;	-----------------------------------------
;	 function osal_buffer_uint32
;	-----------------------------------------
_osal_buffer_uint32:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1194: *buf++ = BREAK_UINT32( val, 0 );
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	movx	a,@dptr
	mov	_osal_buffer_uint32_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
	mov	dptr,#_osal_buffer_uint32_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar0,r1
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,_osal_buffer_uint32_sloc0_1_0
	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	mov	a,#0x01
	add	a,_osal_buffer_uint32_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1195: *buf++ = BREAK_UINT32( val, 1 );
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	movx	a,@dptr
	mov	_osal_buffer_uint32_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
	mov	ar0,r2
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,_osal_buffer_uint32_sloc0_1_0
	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	mov	a,#0x01
	add	a,_osal_buffer_uint32_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1196: *buf++ = BREAK_UINT32( val, 2 );
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	movx	a,@dptr
	mov	_osal_buffer_uint32_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint32_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint32_sloc0_1_0 + 2),a
	mov	ar0,r3
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,_osal_buffer_uint32_sloc0_1_0
	mov	dph,(_osal_buffer_uint32_sloc0_1_0 + 1)
	mov	b,(_osal_buffer_uint32_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	mov	a,#0x01
	add	a,_osal_buffer_uint32_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_osal_buffer_uint32_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_osal_buffer_uint32_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1197: *buf++ = BREAK_UINT32( val, 3 );
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar1,r4
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	mov	a,#0x00
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1199: return buf;
	mov	dptr,#_osal_buffer_uint32_buf_1_242
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_buffer_uint24'
;------------------------------------------------------------
;val                       Allocated with name '_osal_buffer_uint24_PARM_2'
;buf                       Allocated with name '_osal_buffer_uint24_buf_1_244'
;sloc0                     Allocated with name '_osal_buffer_uint24_sloc0_1_0'
;------------------------------------------------------------
;	../osal/common/OSAL.c:1215: uint8* osal_buffer_uint24( uint8 *buf, uint24 val )
;	-----------------------------------------
;	 function osal_buffer_uint24
;	-----------------------------------------
_osal_buffer_uint24:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_buffer_uint24_buf_1_244
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1217: *buf++ = BREAK_UINT32( val, 0 );
	mov	dptr,#_osal_buffer_uint24_buf_1_244
	movx	a,@dptr
	mov	_osal_buffer_uint24_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint24_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint24_sloc0_1_0 + 2),a
	mov	dptr,#_osal_buffer_uint24_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar0,r1
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,_osal_buffer_uint24_sloc0_1_0
	mov	dph,(_osal_buffer_uint24_sloc0_1_0 + 1)
	mov	b,(_osal_buffer_uint24_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_osal_buffer_uint24_buf_1_244
	mov	a,#0x01
	add	a,_osal_buffer_uint24_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_osal_buffer_uint24_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_osal_buffer_uint24_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1218: *buf++ = BREAK_UINT32( val, 1 );
	mov	dptr,#_osal_buffer_uint24_buf_1_244
	movx	a,@dptr
	mov	_osal_buffer_uint24_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint24_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_osal_buffer_uint24_sloc0_1_0 + 2),a
	mov	ar0,r2
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,_osal_buffer_uint24_sloc0_1_0
	mov	dph,(_osal_buffer_uint24_sloc0_1_0 + 1)
	mov	b,(_osal_buffer_uint24_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_osal_buffer_uint24_buf_1_244
	mov	a,#0x01
	add	a,_osal_buffer_uint24_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_osal_buffer_uint24_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_osal_buffer_uint24_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1219: *buf++ = BREAK_UINT32( val, 2 );
	mov	dptr,#_osal_buffer_uint24_buf_1_244
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar1,r3
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	mov	dptr,#_osal_buffer_uint24_buf_1_244
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	mov	a,#0x00
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1221: return buf;
	mov	dptr,#_osal_buffer_uint24_buf_1_244
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_isbufset'
;------------------------------------------------------------
;val                       Allocated with name '_osal_isbufset_PARM_2'
;len                       Allocated with name '_osal_isbufset_PARM_3'
;buf                       Allocated with name '_osal_isbufset_buf_1_246'
;x                         Allocated with name '_osal_isbufset_x_1_247'
;------------------------------------------------------------
;	../osal/common/OSAL.c:1238: uint8 osal_isbufset( uint8 *buf, uint8 val, uint8 len )
;	-----------------------------------------
;	 function osal_isbufset
;	-----------------------------------------
_osal_isbufset:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_osal_isbufset_buf_1_246
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../osal/common/OSAL.c:1242: if ( buf == NULL )
	mov	dptr,#_osal_isbufset_buf_1_246
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00123$
	ljmp	00102$
00123$:
;	../osal/common/OSAL.c:1244: return ( FALSE );
	mov	dpl,#0x00
	ljmp	00109$
00102$:
;	../osal/common/OSAL.c:1247: for ( x = 0; x < len; x++ )
	mov	dptr,#_osal_isbufset_x_1_247
	mov	a,#0x00
	movx	@dptr,a
	mov	dptr,#_osal_isbufset_buf_1_246
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_osal_isbufset_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_osal_isbufset_PARM_3
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_osal_isbufset_x_1_247
	movx	a,@dptr
	mov	r2,a
00107$:
	clr	c
	mov	a,r2
	subb	a,r3
	jc	00124$
	ljmp	00105$
00124$:
;	../osal/common/OSAL.c:1250: if ( buf[x] != val )
	push	ar3
	mov	a,r2
	add	a,r5
	mov	r0,a
	mov	a,#0x00
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	a,r0
	cjne	a,ar4,00125$
	pop	ar3
	ljmp	00108$
00125$:
	pop	ar3
;	../osal/common/OSAL.c:1252: return ( FALSE );
	mov	dpl,#0x00
	ljmp	00109$
00108$:
;	../osal/common/OSAL.c:1247: for ( x = 0; x < len; x++ )
	inc	r2
	ljmp	00107$
00105$:
;	../osal/common/OSAL.c:1255: return ( TRUE );
	mov	dpl,#0x01
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'osal_self'
;------------------------------------------------------------
;	../osal/common/OSAL.c:1269: uint8 osal_self( void )
;	-----------------------------------------
;	 function osal_self
;	-----------------------------------------
_osal_self:
;	../osal/common/OSAL.c:1271: return ( activeTaskID );
	mov	dptr,#_activeTaskID
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r7
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "0"
	.db 0x00
	.area CABS    (ABS,CODE)
