                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module hci_tl
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _HCI_ProcessEvent
                                     13 	.globl _HCI_Init
                                     14 	.globl _HCI_ProcessEvent_PARM_2
                                     15 ;--------------------------------------------------------
                                     16 ; special function registers
                                     17 ;--------------------------------------------------------
                                     18 	.area RSEG    (ABS,DATA)
      000000                         19 	.org 0x0000
                                     20 ;--------------------------------------------------------
                                     21 ; special function bits
                                     22 ;--------------------------------------------------------
                                     23 	.area RSEG    (ABS,DATA)
      000000                         24 	.org 0x0000
                                     25 ;--------------------------------------------------------
                                     26 ; overlayable register banks
                                     27 ;--------------------------------------------------------
                                     28 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         29 	.ds 8
                                     30 ;--------------------------------------------------------
                                     31 ; internal ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DSEG    (DATA)
                                     34 ;--------------------------------------------------------
                                     35 ; overlayable items in internal ram 
                                     36 ;--------------------------------------------------------
                                     37 ;--------------------------------------------------------
                                     38 ; indirectly addressable internal ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area ISEG    (DATA)
                                     41 ;--------------------------------------------------------
                                     42 ; absolute internal ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area IABS    (ABS,DATA)
                                     45 	.area IABS    (ABS,DATA)
                                     46 ;--------------------------------------------------------
                                     47 ; bit data
                                     48 ;--------------------------------------------------------
                                     49 	.area BSEG    (BIT)
                                     50 ;--------------------------------------------------------
                                     51 ; paged external ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area PSEG    (PAG,XDATA)
                                     54 ;--------------------------------------------------------
                                     55 ; external ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area XSEG    (XDATA)
      001214                         58 _HCI_ProcessEvent_PARM_2:
      001214                         59 	.ds 2
                                     60 ;--------------------------------------------------------
                                     61 ; absolute external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XABS    (ABS,XDATA)
                                     64 ;--------------------------------------------------------
                                     65 ; external initialized ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME    (CODE)
                                     68 	.area GSINIT0 (CODE)
                                     69 	.area GSINIT1 (CODE)
                                     70 	.area GSINIT2 (CODE)
                                     71 	.area GSINIT3 (CODE)
                                     72 	.area GSINIT4 (CODE)
                                     73 	.area GSINIT5 (CODE)
                                     74 	.area GSINIT  (CODE)
                                     75 	.area GSFINAL (CODE)
                                     76 	.area CSEG    (CODE)
                                     77 ;--------------------------------------------------------
                                     78 ; global & static initialisations
                                     79 ;--------------------------------------------------------
                                     80 	.area HOME    (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; Home
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area HOME    (CODE)
                                     89 ;--------------------------------------------------------
                                     90 ; code
                                     91 ;--------------------------------------------------------
                                     92 	.area CSEG    (CODE)
                                     93 ;------------------------------------------------------------
                                     94 ;Allocation info for local variables in function 'HCI_Init'
                                     95 ;------------------------------------------------------------
                                     96 ;taskID                    Allocated with name '_HCI_Init_taskID_1_1'
                                     97 ;------------------------------------------------------------
                                     98 ;	../fake_ble_stack/ble/hci/hci_tl.c:4: void HCI_Init( uint8 taskID ){;}
                                     99 ;	-----------------------------------------
                                    100 ;	 function HCI_Init
                                    101 ;	-----------------------------------------
      0054D7                        102 _HCI_Init:
                           000007   103 	ar7 = 0x07
                           000006   104 	ar6 = 0x06
                           000005   105 	ar5 = 0x05
                           000004   106 	ar4 = 0x04
                           000003   107 	ar3 = 0x03
                           000002   108 	ar2 = 0x02
                           000001   109 	ar1 = 0x01
                           000000   110 	ar0 = 0x00
      0054D7                        111 00101$:
      0054D7 22               [24]  112 	ret
                                    113 ;------------------------------------------------------------
                                    114 ;Allocation info for local variables in function 'HCI_ProcessEvent'
                                    115 ;------------------------------------------------------------
                                    116 ;events                    Allocated with name '_HCI_ProcessEvent_PARM_2'
                                    117 ;task_id                   Allocated with name '_HCI_ProcessEvent_task_id_1_3'
                                    118 ;------------------------------------------------------------
                                    119 ;	../fake_ble_stack/ble/hci/hci_tl.c:7: uint16 HCI_ProcessEvent( uint8  task_id,
                                    120 ;	-----------------------------------------
                                    121 ;	 function HCI_ProcessEvent
                                    122 ;	-----------------------------------------
      0054D8                        123 _HCI_ProcessEvent:
                                    124 ;	../fake_ble_stack/ble/hci/hci_tl.c:8: uint16 events ){;}
      0054D8                        125 00101$:
      0054D8 22               [24]  126 	ret
                                    127 	.area CSEG    (CODE)
                                    128 	.area CONST   (CODE)
                                    129 	.area CABS    (ABS,CODE)
