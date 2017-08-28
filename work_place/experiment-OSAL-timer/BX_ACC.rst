                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
                                      4 ; This file was generated Mon Jun 29 17:16:57 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module BX_ACC
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
                           000294    61 _ACCy	=	0x0294
                           000298    62 _ACCz	=	0x0298
      0011E5                         63 _accRead_PARM_2:
      0011E5                         64 	.ds 3
      0011E8                         65 _accRead_PARM_3:
      0011E8                         66 	.ds 3
      0011EB                         67 _accRead_pXVal_1_12:
      0011EB                         68 	.ds 3
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
                                    105 ;	../ACC/BX_ACC.c:16: void accInit(void){
                                    106 ;	-----------------------------------------
                                    107 ;	 function accInit
                                    108 ;	-----------------------------------------
      005356                        109 _accInit:
                           000007   110 	ar7 = 0x07
                           000006   111 	ar6 = 0x06
                           000005   112 	ar5 = 0x05
                           000004   113 	ar4 = 0x04
                           000003   114 	ar3 = 0x03
                           000002   115 	ar2 = 0x02
                           000001   116 	ar1 = 0x01
                           000000   117 	ar0 = 0x00
                                    118 ;	../ACC/BX_ACC.c:19: flag=0xba;
      005356 90 02 89         [24]  119 	mov	dptr,#_flag
      005359 74 BA            [12]  120 	mov	a,#0xBA
      00535B F0               [24]  121 	movx	@dptr,a
      00535C                        122 00101$:
      00535C 22               [24]  123 	ret
                                    124 ;------------------------------------------------------------
                                    125 ;Allocation info for local variables in function 'accRead'
                                    126 ;------------------------------------------------------------
                                    127 ;pYVal                     Allocated with name '_accRead_PARM_2'
                                    128 ;pZVal                     Allocated with name '_accRead_PARM_3'
                                    129 ;pXVal                     Allocated with name '_accRead_pXVal_1_12'
                                    130 ;------------------------------------------------------------
                                    131 ;	../ACC/BX_ACC.c:25: void accRead(double *pXVal, double *pYVal, double *pZVal){
                                    132 ;	-----------------------------------------
                                    133 ;	 function accRead
                                    134 ;	-----------------------------------------
      00535D                        135 _accRead:
      00535D AF F0            [24]  136 	mov	r7,b
      00535F AE 83            [24]  137 	mov	r6,dph
      005361 E5 82            [12]  138 	mov	a,dpl
      005363 90 11 EB         [24]  139 	mov	dptr,#_accRead_pXVal_1_12
      005366 F0               [24]  140 	movx	@dptr,a
      005367 EE               [12]  141 	mov	a,r6
      005368 A3               [24]  142 	inc	dptr
      005369 F0               [24]  143 	movx	@dptr,a
      00536A EF               [12]  144 	mov	a,r7
      00536B A3               [24]  145 	inc	dptr
      00536C F0               [24]  146 	movx	@dptr,a
                                    147 ;	../ACC/BX_ACC.c:29: *pXVal=ACCx;
      00536D 90 11 EB         [24]  148 	mov	dptr,#_accRead_pXVal_1_12
      005370 E0               [24]  149 	movx	a,@dptr
      005371 FD               [12]  150 	mov	r5,a
      005372 A3               [24]  151 	inc	dptr
      005373 E0               [24]  152 	movx	a,@dptr
      005374 FE               [12]  153 	mov	r6,a
      005375 A3               [24]  154 	inc	dptr
      005376 E0               [24]  155 	movx	a,@dptr
      005377 FF               [12]  156 	mov	r7,a
      005378 90 02 90         [24]  157 	mov	dptr,#_ACCx
      00537B E0               [24]  158 	movx	a,@dptr
      00537C F9               [12]  159 	mov	r1,a
      00537D A3               [24]  160 	inc	dptr
      00537E E0               [24]  161 	movx	a,@dptr
      00537F FA               [12]  162 	mov	r2,a
      005380 A3               [24]  163 	inc	dptr
      005381 E0               [24]  164 	movx	a,@dptr
      005382 FB               [12]  165 	mov	r3,a
      005383 A3               [24]  166 	inc	dptr
      005384 E0               [24]  167 	movx	a,@dptr
      005385 FC               [12]  168 	mov	r4,a
      005386 8D 82            [24]  169 	mov	dpl,r5
      005388 8E 83            [24]  170 	mov	dph,r6
      00538A 8F F0            [24]  171 	mov	b,r7
      00538C E9               [12]  172 	mov	a,r1
      00538D 12 59 AA         [24]  173 	lcall	__gptrput
      005390 A3               [24]  174 	inc	dptr
      005391 EA               [12]  175 	mov	a,r2
      005392 12 59 AA         [24]  176 	lcall	__gptrput
      005395 A3               [24]  177 	inc	dptr
      005396 EB               [12]  178 	mov	a,r3
      005397 12 59 AA         [24]  179 	lcall	__gptrput
      00539A A3               [24]  180 	inc	dptr
      00539B EC               [12]  181 	mov	a,r4
      00539C 12 59 AA         [24]  182 	lcall	__gptrput
                                    183 ;	../ACC/BX_ACC.c:30: *pYVal=ACCy;
      00539F 90 11 E5         [24]  184 	mov	dptr,#_accRead_PARM_2
      0053A2 E0               [24]  185 	movx	a,@dptr
      0053A3 FD               [12]  186 	mov	r5,a
      0053A4 A3               [24]  187 	inc	dptr
      0053A5 E0               [24]  188 	movx	a,@dptr
      0053A6 FE               [12]  189 	mov	r6,a
      0053A7 A3               [24]  190 	inc	dptr
      0053A8 E0               [24]  191 	movx	a,@dptr
      0053A9 FF               [12]  192 	mov	r7,a
      0053AA 90 02 94         [24]  193 	mov	dptr,#_ACCy
      0053AD E0               [24]  194 	movx	a,@dptr
      0053AE F9               [12]  195 	mov	r1,a
      0053AF A3               [24]  196 	inc	dptr
      0053B0 E0               [24]  197 	movx	a,@dptr
      0053B1 FA               [12]  198 	mov	r2,a
      0053B2 A3               [24]  199 	inc	dptr
      0053B3 E0               [24]  200 	movx	a,@dptr
      0053B4 FB               [12]  201 	mov	r3,a
      0053B5 A3               [24]  202 	inc	dptr
      0053B6 E0               [24]  203 	movx	a,@dptr
      0053B7 FC               [12]  204 	mov	r4,a
      0053B8 8D 82            [24]  205 	mov	dpl,r5
      0053BA 8E 83            [24]  206 	mov	dph,r6
      0053BC 8F F0            [24]  207 	mov	b,r7
      0053BE E9               [12]  208 	mov	a,r1
      0053BF 12 59 AA         [24]  209 	lcall	__gptrput
      0053C2 A3               [24]  210 	inc	dptr
      0053C3 EA               [12]  211 	mov	a,r2
      0053C4 12 59 AA         [24]  212 	lcall	__gptrput
      0053C7 A3               [24]  213 	inc	dptr
      0053C8 EB               [12]  214 	mov	a,r3
      0053C9 12 59 AA         [24]  215 	lcall	__gptrput
      0053CC A3               [24]  216 	inc	dptr
      0053CD EC               [12]  217 	mov	a,r4
      0053CE 12 59 AA         [24]  218 	lcall	__gptrput
                                    219 ;	../ACC/BX_ACC.c:31: *pZVal=ACCz;
      0053D1 90 11 E8         [24]  220 	mov	dptr,#_accRead_PARM_3
      0053D4 E0               [24]  221 	movx	a,@dptr
      0053D5 FD               [12]  222 	mov	r5,a
      0053D6 A3               [24]  223 	inc	dptr
      0053D7 E0               [24]  224 	movx	a,@dptr
      0053D8 FE               [12]  225 	mov	r6,a
      0053D9 A3               [24]  226 	inc	dptr
      0053DA E0               [24]  227 	movx	a,@dptr
      0053DB FF               [12]  228 	mov	r7,a
      0053DC 90 02 98         [24]  229 	mov	dptr,#_ACCz
      0053DF E0               [24]  230 	movx	a,@dptr
      0053E0 F9               [12]  231 	mov	r1,a
      0053E1 A3               [24]  232 	inc	dptr
      0053E2 E0               [24]  233 	movx	a,@dptr
      0053E3 FA               [12]  234 	mov	r2,a
      0053E4 A3               [24]  235 	inc	dptr
      0053E5 E0               [24]  236 	movx	a,@dptr
      0053E6 FB               [12]  237 	mov	r3,a
      0053E7 A3               [24]  238 	inc	dptr
      0053E8 E0               [24]  239 	movx	a,@dptr
      0053E9 FC               [12]  240 	mov	r4,a
      0053EA 8D 82            [24]  241 	mov	dpl,r5
      0053EC 8E 83            [24]  242 	mov	dph,r6
      0053EE 8F F0            [24]  243 	mov	b,r7
      0053F0 E9               [12]  244 	mov	a,r1
      0053F1 12 59 AA         [24]  245 	lcall	__gptrput
      0053F4 A3               [24]  246 	inc	dptr
      0053F5 EA               [12]  247 	mov	a,r2
      0053F6 12 59 AA         [24]  248 	lcall	__gptrput
      0053F9 A3               [24]  249 	inc	dptr
      0053FA EB               [12]  250 	mov	a,r3
      0053FB 12 59 AA         [24]  251 	lcall	__gptrput
      0053FE A3               [24]  252 	inc	dptr
      0053FF EC               [12]  253 	mov	a,r4
      005400 12 59 AA         [24]  254 	lcall	__gptrput
      005403                        255 00101$:
      005403 22               [24]  256 	ret
                                    257 	.area CSEG    (CODE)
                                    258 	.area CONST   (CODE)
                                    259 	.area CABS    (ABS,CODE)
