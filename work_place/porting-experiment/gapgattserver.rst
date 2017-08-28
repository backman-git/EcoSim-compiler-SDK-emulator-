                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:41 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module gapgattserver
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _GGS_AddService
                                     13 	.globl _GGS_SetParameter
                                     14 	.globl _GGS_SetParameter_PARM_3
                                     15 	.globl _GGS_SetParameter_PARM_2
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
      0011FC                         59 _GGS_SetParameter_PARM_2:
      0011FC                         60 	.ds 1
      0011FD                         61 _GGS_SetParameter_PARM_3:
      0011FD                         62 	.ds 3
                                     63 ;--------------------------------------------------------
                                     64 ; absolute external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XABS    (ABS,XDATA)
                                     67 ;--------------------------------------------------------
                                     68 ; external initialized ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area HOME    (CODE)
                                     71 	.area GSINIT0 (CODE)
                                     72 	.area GSINIT1 (CODE)
                                     73 	.area GSINIT2 (CODE)
                                     74 	.area GSINIT3 (CODE)
                                     75 	.area GSINIT4 (CODE)
                                     76 	.area GSINIT5 (CODE)
                                     77 	.area GSINIT  (CODE)
                                     78 	.area GSFINAL (CODE)
                                     79 	.area CSEG    (CODE)
                                     80 ;--------------------------------------------------------
                                     81 ; global & static initialisations
                                     82 ;--------------------------------------------------------
                                     83 	.area HOME    (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 	.area GSFINAL (CODE)
                                     86 	.area GSINIT  (CODE)
                                     87 ;--------------------------------------------------------
                                     88 ; Home
                                     89 ;--------------------------------------------------------
                                     90 	.area HOME    (CODE)
                                     91 	.area HOME    (CODE)
                                     92 ;--------------------------------------------------------
                                     93 ; code
                                     94 ;--------------------------------------------------------
                                     95 	.area CSEG    (CODE)
                                     96 ;------------------------------------------------------------
                                     97 ;Allocation info for local variables in function 'GGS_SetParameter'
                                     98 ;------------------------------------------------------------
                                     99 ;len                       Allocated with name '_GGS_SetParameter_PARM_2'
                                    100 ;value                     Allocated with name '_GGS_SetParameter_PARM_3'
                                    101 ;param                     Allocated with name '_GGS_SetParameter_param_1_1'
                                    102 ;------------------------------------------------------------
                                    103 ;	../fake_ble_stack/ble/include/gapgattserver.c:6: bStatus_t GGS_SetParameter( uint8 param, uint8 len, void *value ){;}
                                    104 ;	-----------------------------------------
                                    105 ;	 function GGS_SetParameter
                                    106 ;	-----------------------------------------
      00529C                        107 _GGS_SetParameter:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
      00529C                        116 00101$:
      00529C 22               [24]  117 	ret
                                    118 ;------------------------------------------------------------
                                    119 ;Allocation info for local variables in function 'GGS_AddService'
                                    120 ;------------------------------------------------------------
                                    121 ;services                  Allocated with name '_GGS_AddService_services_1_3'
                                    122 ;------------------------------------------------------------
                                    123 ;	../fake_ble_stack/ble/include/gapgattserver.c:8: bStatus_t GGS_AddService( uint32 services ){;}
                                    124 ;	-----------------------------------------
                                    125 ;	 function GGS_AddService
                                    126 ;	-----------------------------------------
      00529D                        127 _GGS_AddService:
      00529D                        128 00101$:
      00529D 22               [24]  129 	ret
                                    130 	.area CSEG    (CODE)
                                    131 	.area CONST   (CODE)
                                    132 	.area CABS    (ABS,CODE)
