                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Fri Jul 17 12:02:40 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module epl_acc_lis331dl
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _accRead_PARM_3
                                     13 	.globl _accRead_PARM_2
                                     14 	.globl _accInit
                                     15 	.globl _accRead
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
                           000289    59 _flag	=	0x0289
                           000290    60 _ACCx	=	0x0290
                           000291    61 _ACCy	=	0x0291
                           000292    62 _ACCz	=	0x0292
      0011E6                         63 _accRead_PARM_2:
      0011E6                         64 	.ds 3
      0011E9                         65 _accRead_PARM_3:
      0011E9                         66 	.ds 3
      0011EC                         67 _accRead_pXVal_1_12:
      0011EC                         68 	.ds 3
                                     69 ;--------------------------------------------------------
                                     70 ; absolute external ram data
                                     71 ;--------------------------------------------------------
                                     72 	.area XABS    (ABS,XDATA)
                                     73 ;--------------------------------------------------------
                                     74 ; external initialized ram data
                                     75 ;--------------------------------------------------------
                                     76 	.area HOME    (CODE)
                                     77 	.area GSINIT0 (CODE)
                                     78 	.area GSINIT1 (CODE)
                                     79 	.area GSINIT2 (CODE)
                                     80 	.area GSINIT3 (CODE)
                                     81 	.area GSINIT4 (CODE)
                                     82 	.area GSINIT5 (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 	.area GSFINAL (CODE)
                                     85 	.area CSEG    (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; global & static initialisations
                                     88 ;--------------------------------------------------------
                                     89 	.area HOME    (CODE)
                                     90 	.area GSINIT  (CODE)
                                     91 	.area GSFINAL (CODE)
                                     92 	.area GSINIT  (CODE)
                                     93 ;--------------------------------------------------------
                                     94 ; Home
                                     95 ;--------------------------------------------------------
                                     96 	.area HOME    (CODE)
                                     97 	.area HOME    (CODE)
                                     98 ;--------------------------------------------------------
                                     99 ; code
                                    100 ;--------------------------------------------------------
                                    101 	.area CSEG    (CODE)
                                    102 ;------------------------------------------------------------
                                    103 ;Allocation info for local variables in function 'accInit'
                                    104 ;------------------------------------------------------------
                                    105 ;	../ACC/epl_acc_lis331dl.c:16: void accInit(void){
                                    106 ;	-----------------------------------------
                                    107 ;	 function accInit
                                    108 ;	-----------------------------------------
      00522C                        109 _accInit:
                           000007   110 	ar7 = 0x07
                           000006   111 	ar6 = 0x06
                           000005   112 	ar5 = 0x05
                           000004   113 	ar4 = 0x04
                           000003   114 	ar3 = 0x03
                           000002   115 	ar2 = 0x02
                           000001   116 	ar1 = 0x01
                           000000   117 	ar0 = 0x00
                                    118 ;	../ACC/epl_acc_lis331dl.c:19: flag=0xba;
      00522C 90 02 89         [24]  119 	mov	dptr,#_flag
      00522F 74 BA            [12]  120 	mov	a,#0xBA
      005231 F0               [24]  121 	movx	@dptr,a
      005232                        122 00101$:
      005232 22               [24]  123 	ret
                                    124 ;------------------------------------------------------------
                                    125 ;Allocation info for local variables in function 'accRead'
                                    126 ;------------------------------------------------------------
                                    127 ;pYVal                     Allocated with name '_accRead_PARM_2'
                                    128 ;pZVal                     Allocated with name '_accRead_PARM_3'
                                    129 ;pXVal                     Allocated with name '_accRead_pXVal_1_12'
                                    130 ;------------------------------------------------------------
                                    131 ;	../ACC/epl_acc_lis331dl.c:25: void accRead(int8 *pXVal, int8 *pYVal, int8 *pZVal){
                                    132 ;	-----------------------------------------
                                    133 ;	 function accRead
                                    134 ;	-----------------------------------------
      005233                        135 _accRead:
      005233 AF F0            [24]  136 	mov	r7,b
      005235 AE 83            [24]  137 	mov	r6,dph
      005237 E5 82            [12]  138 	mov	a,dpl
      005239 90 11 EC         [24]  139 	mov	dptr,#_accRead_pXVal_1_12
      00523C F0               [24]  140 	movx	@dptr,a
      00523D EE               [12]  141 	mov	a,r6
      00523E A3               [24]  142 	inc	dptr
      00523F F0               [24]  143 	movx	@dptr,a
      005240 EF               [12]  144 	mov	a,r7
      005241 A3               [24]  145 	inc	dptr
      005242 F0               [24]  146 	movx	@dptr,a
                                    147 ;	../ACC/epl_acc_lis331dl.c:29: *pXVal=ACCx;
      005243 90 11 EC         [24]  148 	mov	dptr,#_accRead_pXVal_1_12
      005246 E0               [24]  149 	movx	a,@dptr
      005247 FD               [12]  150 	mov	r5,a
      005248 A3               [24]  151 	inc	dptr
      005249 E0               [24]  152 	movx	a,@dptr
      00524A FE               [12]  153 	mov	r6,a
      00524B A3               [24]  154 	inc	dptr
      00524C E0               [24]  155 	movx	a,@dptr
      00524D FF               [12]  156 	mov	r7,a
      00524E 90 02 90         [24]  157 	mov	dptr,#_ACCx
      005251 E0               [24]  158 	movx	a,@dptr
      005252 FC               [12]  159 	mov	r4,a
      005253 8D 82            [24]  160 	mov	dpl,r5
      005255 8E 83            [24]  161 	mov	dph,r6
      005257 8F F0            [24]  162 	mov	b,r7
      005259 EC               [12]  163 	mov	a,r4
      00525A 12 5B F4         [24]  164 	lcall	__gptrput
                                    165 ;	../ACC/epl_acc_lis331dl.c:30: *pYVal=ACCy;
      00525D 90 11 E6         [24]  166 	mov	dptr,#_accRead_PARM_2
      005260 E0               [24]  167 	movx	a,@dptr
      005261 FD               [12]  168 	mov	r5,a
      005262 A3               [24]  169 	inc	dptr
      005263 E0               [24]  170 	movx	a,@dptr
      005264 FE               [12]  171 	mov	r6,a
      005265 A3               [24]  172 	inc	dptr
      005266 E0               [24]  173 	movx	a,@dptr
      005267 FF               [12]  174 	mov	r7,a
      005268 90 02 91         [24]  175 	mov	dptr,#_ACCy
      00526B E0               [24]  176 	movx	a,@dptr
      00526C FC               [12]  177 	mov	r4,a
      00526D 8D 82            [24]  178 	mov	dpl,r5
      00526F 8E 83            [24]  179 	mov	dph,r6
      005271 8F F0            [24]  180 	mov	b,r7
      005273 EC               [12]  181 	mov	a,r4
      005274 12 5B F4         [24]  182 	lcall	__gptrput
                                    183 ;	../ACC/epl_acc_lis331dl.c:31: *pZVal=ACCz;
      005277 90 11 E9         [24]  184 	mov	dptr,#_accRead_PARM_3
      00527A E0               [24]  185 	movx	a,@dptr
      00527B FD               [12]  186 	mov	r5,a
      00527C A3               [24]  187 	inc	dptr
      00527D E0               [24]  188 	movx	a,@dptr
      00527E FE               [12]  189 	mov	r6,a
      00527F A3               [24]  190 	inc	dptr
      005280 E0               [24]  191 	movx	a,@dptr
      005281 FF               [12]  192 	mov	r7,a
      005282 90 02 92         [24]  193 	mov	dptr,#_ACCz
      005285 E0               [24]  194 	movx	a,@dptr
      005286 FC               [12]  195 	mov	r4,a
      005287 8D 82            [24]  196 	mov	dpl,r5
      005289 8E 83            [24]  197 	mov	dph,r6
      00528B 8F F0            [24]  198 	mov	b,r7
      00528D EC               [12]  199 	mov	a,r4
      00528E 12 5B F4         [24]  200 	lcall	__gptrput
      005291                        201 00101$:
      005291 22               [24]  202 	ret
                                    203 	.area CSEG    (CODE)
                                    204 	.area CONST   (CODE)
                                    205 	.area CABS    (ABS,CODE)
