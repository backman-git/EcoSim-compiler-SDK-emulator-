                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module hci
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _HCI_EXT_SetBDADDRCmd
                                     13 	.globl _HCI_EXT_ClkDivOnHaltCmd
                                     14 ;--------------------------------------------------------
                                     15 ; special function registers
                                     16 ;--------------------------------------------------------
                                     17 	.area RSEG    (ABS,DATA)
      000000                         18 	.org 0x0000
                                     19 ;--------------------------------------------------------
                                     20 ; special function bits
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; overlayable register banks
                                     26 ;--------------------------------------------------------
                                     27 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         28 	.ds 8
                                     29 ;--------------------------------------------------------
                                     30 ; internal ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DSEG    (DATA)
                                     33 ;--------------------------------------------------------
                                     34 ; overlayable items in internal ram 
                                     35 ;--------------------------------------------------------
                                     36 ;--------------------------------------------------------
                                     37 ; indirectly addressable internal ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area ISEG    (DATA)
                                     40 ;--------------------------------------------------------
                                     41 ; absolute internal ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area IABS    (ABS,DATA)
                                     44 	.area IABS    (ABS,DATA)
                                     45 ;--------------------------------------------------------
                                     46 ; bit data
                                     47 ;--------------------------------------------------------
                                     48 	.area BSEG    (BIT)
                                     49 ;--------------------------------------------------------
                                     50 ; paged external ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area PSEG    (PAG,XDATA)
                                     53 ;--------------------------------------------------------
                                     54 ; external ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area XSEG    (XDATA)
                                     57 ;--------------------------------------------------------
                                     58 ; absolute external ram data
                                     59 ;--------------------------------------------------------
                                     60 	.area XABS    (ABS,XDATA)
                                     61 ;--------------------------------------------------------
                                     62 ; external initialized ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area HOME    (CODE)
                                     65 	.area GSINIT0 (CODE)
                                     66 	.area GSINIT1 (CODE)
                                     67 	.area GSINIT2 (CODE)
                                     68 	.area GSINIT3 (CODE)
                                     69 	.area GSINIT4 (CODE)
                                     70 	.area GSINIT5 (CODE)
                                     71 	.area GSINIT  (CODE)
                                     72 	.area GSFINAL (CODE)
                                     73 	.area CSEG    (CODE)
                                     74 ;--------------------------------------------------------
                                     75 ; global & static initialisations
                                     76 ;--------------------------------------------------------
                                     77 	.area HOME    (CODE)
                                     78 	.area GSINIT  (CODE)
                                     79 	.area GSFINAL (CODE)
                                     80 	.area GSINIT  (CODE)
                                     81 ;--------------------------------------------------------
                                     82 ; Home
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME    (CODE)
                                     85 	.area HOME    (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; code
                                     88 ;--------------------------------------------------------
                                     89 	.area CSEG    (CODE)
                                     90 ;------------------------------------------------------------
                                     91 ;Allocation info for local variables in function 'HCI_EXT_SetBDADDRCmd'
                                     92 ;------------------------------------------------------------
                                     93 ;bdAddr                    Allocated with name '_HCI_EXT_SetBDADDRCmd_bdAddr_1_141'
                                     94 ;------------------------------------------------------------
                                     95 ;	../fake_ble_stack/ble/include/hci.c:4: hciStatus_t HCI_EXT_SetBDADDRCmd( uint8 *bdAddr ){
                                     96 ;	-----------------------------------------
                                     97 ;	 function HCI_EXT_SetBDADDRCmd
                                     98 ;	-----------------------------------------
      005296                         99 _HCI_EXT_SetBDADDRCmd:
                           000007   100 	ar7 = 0x07
                           000006   101 	ar6 = 0x06
                           000005   102 	ar5 = 0x05
                           000004   103 	ar4 = 0x04
                           000003   104 	ar3 = 0x03
                           000002   105 	ar2 = 0x02
                           000001   106 	ar1 = 0x01
                           000000   107 	ar0 = 0x00
                                    108 ;	../fake_ble_stack/ble/include/hci.c:7: }
      005296                        109 00101$:
      005296 22               [24]  110 	ret
                                    111 ;------------------------------------------------------------
                                    112 ;Allocation info for local variables in function 'HCI_EXT_ClkDivOnHaltCmd'
                                    113 ;------------------------------------------------------------
                                    114 ;control                   Allocated with name '_HCI_EXT_ClkDivOnHaltCmd_control_1_143'
                                    115 ;------------------------------------------------------------
                                    116 ;	../fake_ble_stack/ble/include/hci.c:9: hciStatus_t HCI_EXT_ClkDivOnHaltCmd( uint8 control ){;}
                                    117 ;	-----------------------------------------
                                    118 ;	 function HCI_EXT_ClkDivOnHaltCmd
                                    119 ;	-----------------------------------------
      005297                        120 _HCI_EXT_ClkDivOnHaltCmd:
      005297                        121 00101$:
      005297 22               [24]  122 	ret
                                    123 	.area CSEG    (CODE)
                                    124 	.area CONST   (CODE)
                                    125 	.area CABS    (ABS,CODE)
