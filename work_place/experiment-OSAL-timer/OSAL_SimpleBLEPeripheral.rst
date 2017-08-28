                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:57 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module OSAL_SimpleBLEPeripheral
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _tasksCnt
                                     13 	.globl _tasksArr
                                     14 	.globl _Task1_Init
                                     15 	.globl _SimpleBLEPeripheral_Init
                                     16 	.globl _GAPRole_Init
                                     17 	.globl _GATTServApp_Init
                                     18 	.globl _osal_memset
                                     19 	.globl _osal_mem_alloc
                                     20 	.globl _tasksEvents
                                     21 	.globl _osalInitTasks
                                     22 ;--------------------------------------------------------
                                     23 ; special function registers
                                     24 ;--------------------------------------------------------
                                     25 	.area RSEG    (ABS,DATA)
      000000                         26 	.org 0x0000
                                     27 ;--------------------------------------------------------
                                     28 ; special function bits
                                     29 ;--------------------------------------------------------
                                     30 	.area RSEG    (ABS,DATA)
      000000                         31 	.org 0x0000
                                     32 ;--------------------------------------------------------
                                     33 ; overlayable register banks
                                     34 ;--------------------------------------------------------
                                     35 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         36 	.ds 8
                                     37 ;--------------------------------------------------------
                                     38 ; internal ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DSEG    (DATA)
                                     41 ;--------------------------------------------------------
                                     42 ; overlayable items in internal ram 
                                     43 ;--------------------------------------------------------
                                     44 ;--------------------------------------------------------
                                     45 ; indirectly addressable internal ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area ISEG    (DATA)
                                     48 ;--------------------------------------------------------
                                     49 ; absolute internal ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area IABS    (ABS,DATA)
                                     52 	.area IABS    (ABS,DATA)
                                     53 ;--------------------------------------------------------
                                     54 ; bit data
                                     55 ;--------------------------------------------------------
                                     56 	.area BSEG    (BIT)
                                     57 ;--------------------------------------------------------
                                     58 ; paged external ram data
                                     59 ;--------------------------------------------------------
                                     60 	.area PSEG    (PAG,XDATA)
                                     61 ;--------------------------------------------------------
                                     62 ; external ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area XSEG    (XDATA)
      001072                         65 _tasksEvents::
      001072                         66 	.ds 3
                                     67 ;--------------------------------------------------------
                                     68 ; absolute external ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area XABS    (ABS,XDATA)
                                     71 ;--------------------------------------------------------
                                     72 ; external initialized ram data
                                     73 ;--------------------------------------------------------
                                     74 	.area HOME    (CODE)
                                     75 	.area GSINIT0 (CODE)
                                     76 	.area GSINIT1 (CODE)
                                     77 	.area GSINIT2 (CODE)
                                     78 	.area GSINIT3 (CODE)
                                     79 	.area GSINIT4 (CODE)
                                     80 	.area GSINIT5 (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area CSEG    (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; global & static initialisations
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area GSINIT  (CODE)
                                     89 	.area GSFINAL (CODE)
                                     90 	.area GSINIT  (CODE)
                                     91 ;--------------------------------------------------------
                                     92 ; Home
                                     93 ;--------------------------------------------------------
                                     94 	.area HOME    (CODE)
                                     95 	.area HOME    (CODE)
                                     96 ;--------------------------------------------------------
                                     97 ; code
                                     98 ;--------------------------------------------------------
                                     99 	.area CSEG    (CODE)
                                    100 ;------------------------------------------------------------
                                    101 ;Allocation info for local variables in function 'osalInitTasks'
                                    102 ;------------------------------------------------------------
                                    103 ;taskID                    Allocated with name '_osalInitTasks_taskID_1_227'
                                    104 ;------------------------------------------------------------
                                    105 ;	./Source/OSAL_SimpleBLEPeripheral.c:139: void osalInitTasks( void )
                                    106 ;	-----------------------------------------
                                    107 ;	 function osalInitTasks
                                    108 ;	-----------------------------------------
      002FE6                        109 _osalInitTasks:
                           000007   110 	ar7 = 0x07
                           000006   111 	ar6 = 0x06
                           000005   112 	ar5 = 0x05
                           000004   113 	ar4 = 0x04
                           000003   114 	ar3 = 0x03
                           000002   115 	ar2 = 0x02
                           000001   116 	ar1 = 0x01
                           000000   117 	ar0 = 0x00
                                    118 ;	./Source/OSAL_SimpleBLEPeripheral.c:143: tasksEvents = (uint16 *)osal_mem_alloc( sizeof( uint16 ) * tasksCnt);
      002FE6 90 5B 42         [24]  119 	mov	dptr,#_tasksCnt
      002FE9 E4               [12]  120 	clr	a
      002FEA 93               [24]  121 	movc	a,@a+dptr
      002FEB FF               [12]  122 	mov	r7,a
      002FEC EF               [12]  123 	mov	a,r7
      002FED 75 F0 02         [24]  124 	mov	b,#0x02
      002FF0 A4               [48]  125 	mul	ab
      002FF1 FF               [12]  126 	mov	r7,a
      002FF2 AE F0            [24]  127 	mov	r6,b
      002FF4 8F 82            [24]  128 	mov	dpl,r7
      002FF6 8E 83            [24]  129 	mov	dph,r6
      002FF8 12 1F B4         [24]  130 	lcall	_osal_mem_alloc
      002FFB AD 82            [24]  131 	mov	r5,dpl
      002FFD AE 83            [24]  132 	mov	r6,dph
      002FFF AF F0            [24]  133 	mov	r7,b
      003001 90 10 72         [24]  134 	mov	dptr,#_tasksEvents
      003004 ED               [12]  135 	mov	a,r5
      003005 F0               [24]  136 	movx	@dptr,a
      003006 EE               [12]  137 	mov	a,r6
      003007 A3               [24]  138 	inc	dptr
      003008 F0               [24]  139 	movx	@dptr,a
      003009 EF               [12]  140 	mov	a,r7
      00300A A3               [24]  141 	inc	dptr
      00300B F0               [24]  142 	movx	@dptr,a
                                    143 ;	./Source/OSAL_SimpleBLEPeripheral.c:144: osal_memset( tasksEvents, 0, (sizeof( uint16 ) * tasksCnt));
      00300C 90 5B 42         [24]  144 	mov	dptr,#_tasksCnt
      00300F E4               [12]  145 	clr	a
      003010 93               [24]  146 	movc	a,@a+dptr
      003011 FC               [12]  147 	mov	r4,a
      003012 EC               [12]  148 	mov	a,r4
      003013 75 F0 02         [24]  149 	mov	b,#0x02
      003016 A4               [48]  150 	mul	ab
      003017 FC               [12]  151 	mov	r4,a
      003018 AB F0            [24]  152 	mov	r3,b
      00301A 90 03 39         [24]  153 	mov	dptr,#_osal_memset_PARM_2
      00301D 74 00            [12]  154 	mov	a,#0x00
      00301F F0               [24]  155 	movx	@dptr,a
      003020 90 03 3A         [24]  156 	mov	dptr,#_osal_memset_PARM_3
      003023 EC               [12]  157 	mov	a,r4
      003024 F0               [24]  158 	movx	@dptr,a
      003025 EB               [12]  159 	mov	a,r3
      003026 A3               [24]  160 	inc	dptr
      003027 F0               [24]  161 	movx	@dptr,a
      003028 8D 82            [24]  162 	mov	dpl,r5
      00302A 8E 83            [24]  163 	mov	dph,r6
      00302C 8F F0            [24]  164 	mov	b,r7
      00302E 12 06 8D         [24]  165 	lcall	_osal_memset
                                    166 ;	./Source/OSAL_SimpleBLEPeripheral.c:146: GAPRole_Init( taskID++ );
      003031 75 82 00         [24]  167 	mov	dpl,#0x00
      003034 12 48 70         [24]  168 	lcall	_GAPRole_Init
                                    169 ;	./Source/OSAL_SimpleBLEPeripheral.c:147: GATTServApp_Init( taskID++ );
      003037 75 82 01         [24]  170 	mov	dpl,#0x01
      00303A 12 4E FE         [24]  171 	lcall	_GATTServApp_Init
                                    172 ;	./Source/OSAL_SimpleBLEPeripheral.c:148: SimpleBLEPeripheral_Init(taskID++);
      00303D 75 82 02         [24]  173 	mov	dpl,#0x02
      003040 12 1D FE         [24]  174 	lcall	_SimpleBLEPeripheral_Init
                                    175 ;	./Source/OSAL_SimpleBLEPeripheral.c:149: Task1_Init(taskID++);
      003043 75 82 03         [24]  176 	mov	dpl,#0x03
      003046 12 3E 7E         [24]  177 	lcall	_Task1_Init
      003049                        178 00101$:
      003049 22               [24]  179 	ret
                                    180 	.area CSEG    (CODE)
                                    181 	.area CONST   (CODE)
      005B38                        182 _tasksArr:
      005B38 E2 48                  183 	.byte _GAPRole_ProcessEvent,(_GAPRole_ProcessEvent >> 8)
      005B3A 22 4F                  184 	.byte _GATTServApp_ProcessEvent,(_GATTServApp_ProcessEvent >> 8)
      005B3C 4F 1E                  185 	.byte _SimpleBLEPeripheral_ProcessEvent,(_SimpleBLEPeripheral_ProcessEvent >> 8)
      005B3E A3 3E                  186 	.byte _Task1_ProcessEvent,(_Task1_ProcessEvent >> 8)
      005B40 93 3F                  187 	.byte _Task2_ProcessEvent,(_Task2_ProcessEvent >> 8)
      005B42                        188 _tasksCnt:
      005B42 05                     189 	.db #0x05	; 5
                                    190 	.area CABS    (ABS,CODE)
