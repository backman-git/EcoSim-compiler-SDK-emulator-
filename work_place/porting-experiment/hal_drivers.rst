                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module hal_drivers
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _HalDriverInit
                                     13 	.globl _Hal_ProcessEvent
                                     14 	.globl _Hal_Init
                                     15 	.globl _Hal_ProcessEvent_PARM_2
                                     16 ;--------------------------------------------------------
                                     17 ; special function registers
                                     18 ;--------------------------------------------------------
                                     19 	.area RSEG    (ABS,DATA)
      000000                         20 	.org 0x0000
                                     21 ;--------------------------------------------------------
                                     22 ; special function bits
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; overlayable register banks
                                     28 ;--------------------------------------------------------
                                     29 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         30 	.ds 8
                                     31 ;--------------------------------------------------------
                                     32 ; internal ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DSEG    (DATA)
                                     35 ;--------------------------------------------------------
                                     36 ; overlayable items in internal ram 
                                     37 ;--------------------------------------------------------
                                     38 ;--------------------------------------------------------
                                     39 ; indirectly addressable internal ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area ISEG    (DATA)
                                     42 ;--------------------------------------------------------
                                     43 ; absolute internal ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area IABS    (ABS,DATA)
                                     46 	.area IABS    (ABS,DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; bit data
                                     49 ;--------------------------------------------------------
                                     50 	.area BSEG    (BIT)
                                     51 ;--------------------------------------------------------
                                     52 ; paged external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area PSEG    (PAG,XDATA)
                                     55 ;--------------------------------------------------------
                                     56 ; external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area XSEG    (XDATA)
      00121B                         59 _Hal_ProcessEvent_PARM_2:
      00121B                         60 	.ds 2
                                     61 ;--------------------------------------------------------
                                     62 ; absolute external ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area XABS    (ABS,XDATA)
                                     65 ;--------------------------------------------------------
                                     66 ; external initialized ram data
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME    (CODE)
                                     69 	.area GSINIT0 (CODE)
                                     70 	.area GSINIT1 (CODE)
                                     71 	.area GSINIT2 (CODE)
                                     72 	.area GSINIT3 (CODE)
                                     73 	.area GSINIT4 (CODE)
                                     74 	.area GSINIT5 (CODE)
                                     75 	.area GSINIT  (CODE)
                                     76 	.area GSFINAL (CODE)
                                     77 	.area CSEG    (CODE)
                                     78 ;--------------------------------------------------------
                                     79 ; global & static initialisations
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME    (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 	.area GSFINAL (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 ;--------------------------------------------------------
                                     86 ; Home
                                     87 ;--------------------------------------------------------
                                     88 	.area HOME    (CODE)
                                     89 	.area HOME    (CODE)
                                     90 ;--------------------------------------------------------
                                     91 ; code
                                     92 ;--------------------------------------------------------
                                     93 	.area CSEG    (CODE)
                                     94 ;------------------------------------------------------------
                                     95 ;Allocation info for local variables in function 'Hal_Init'
                                     96 ;------------------------------------------------------------
                                     97 ;task_id                   Allocated with name '_Hal_Init_task_id_1_1'
                                     98 ;------------------------------------------------------------
                                     99 ;	../hal/include/hal_drivers.c:4: void Hal_Init ( uint8 task_id ){;}
                                    100 ;	-----------------------------------------
                                    101 ;	 function Hal_Init
                                    102 ;	-----------------------------------------
      0054E2                        103 _Hal_Init:
                           000007   104 	ar7 = 0x07
                           000006   105 	ar6 = 0x06
                           000005   106 	ar5 = 0x05
                           000004   107 	ar4 = 0x04
                           000003   108 	ar3 = 0x03
                           000002   109 	ar2 = 0x02
                           000001   110 	ar1 = 0x01
                           000000   111 	ar0 = 0x00
      0054E2                        112 00101$:
      0054E2 22               [24]  113 	ret
                                    114 ;------------------------------------------------------------
                                    115 ;Allocation info for local variables in function 'Hal_ProcessEvent'
                                    116 ;------------------------------------------------------------
                                    117 ;events                    Allocated with name '_Hal_ProcessEvent_PARM_2'
                                    118 ;task_id                   Allocated with name '_Hal_ProcessEvent_task_id_1_3'
                                    119 ;------------------------------------------------------------
                                    120 ;	../hal/include/hal_drivers.c:6: uint16 Hal_ProcessEvent ( uint8 task_id, uint16 events ){;}
                                    121 ;	-----------------------------------------
                                    122 ;	 function Hal_ProcessEvent
                                    123 ;	-----------------------------------------
      0054E3                        124 _Hal_ProcessEvent:
      0054E3                        125 00101$:
      0054E3 22               [24]  126 	ret
                                    127 ;------------------------------------------------------------
                                    128 ;Allocation info for local variables in function 'HalDriverInit'
                                    129 ;------------------------------------------------------------
                                    130 ;	../hal/include/hal_drivers.c:8: void HalDriverInit (void){;}
                                    131 ;	-----------------------------------------
                                    132 ;	 function HalDriverInit
                                    133 ;	-----------------------------------------
      0054E4                        134 _HalDriverInit:
      0054E4                        135 00101$:
      0054E4 22               [24]  136 	ret
                                    137 	.area CSEG    (CODE)
                                    138 	.area CONST   (CODE)
                                    139 	.area CABS    (ABS,CODE)
