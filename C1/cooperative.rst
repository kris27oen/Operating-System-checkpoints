                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14549 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module cooperative
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Bootstrap
                                     12 	.globl _main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _threadMask
                                    110 	.globl _threadCount
                                    111 	.globl _currentThread
                                    112 	.globl _sp
                                    113 	.globl _ThreadCreate
                                    114 	.globl _ThreadYield
                                    115 	.globl _ThreadExit
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 _P0	=	0x0080
                           000081   122 _SP	=	0x0081
                           000082   123 _DPL	=	0x0082
                           000083   124 _DPH	=	0x0083
                           000087   125 _PCON	=	0x0087
                           000088   126 _TCON	=	0x0088
                           000089   127 _TMOD	=	0x0089
                           00008A   128 _TL0	=	0x008a
                           00008B   129 _TL1	=	0x008b
                           00008C   130 _TH0	=	0x008c
                           00008D   131 _TH1	=	0x008d
                           000090   132 _P1	=	0x0090
                           000098   133 _SCON	=	0x0098
                           000099   134 _SBUF	=	0x0099
                           0000A0   135 _P2	=	0x00a0
                           0000A8   136 _IE	=	0x00a8
                           0000B0   137 _P3	=	0x00b0
                           0000B8   138 _IP	=	0x00b8
                           0000D0   139 _PSW	=	0x00d0
                           0000E0   140 _ACC	=	0x00e0
                           0000F0   141 _B	=	0x00f0
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000088   155 _IT0	=	0x0088
                           000089   156 _IE0	=	0x0089
                           00008A   157 _IT1	=	0x008a
                           00008B   158 _IE1	=	0x008b
                           00008C   159 _TR0	=	0x008c
                           00008D   160 _TF0	=	0x008d
                           00008E   161 _TR1	=	0x008e
                           00008F   162 _TF1	=	0x008f
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           000098   171 _RI	=	0x0098
                           000099   172 _TI	=	0x0099
                           00009A   173 _RB8	=	0x009a
                           00009B   174 _TB8	=	0x009b
                           00009C   175 _REN	=	0x009c
                           00009D   176 _SM2	=	0x009d
                           00009E   177 _SM1	=	0x009e
                           00009F   178 _SM0	=	0x009f
                           0000A0   179 _P2_0	=	0x00a0
                           0000A1   180 _P2_1	=	0x00a1
                           0000A2   181 _P2_2	=	0x00a2
                           0000A3   182 _P2_3	=	0x00a3
                           0000A4   183 _P2_4	=	0x00a4
                           0000A5   184 _P2_5	=	0x00a5
                           0000A6   185 _P2_6	=	0x00a6
                           0000A7   186 _P2_7	=	0x00a7
                           0000A8   187 _EX0	=	0x00a8
                           0000A9   188 _ET0	=	0x00a9
                           0000AA   189 _EX1	=	0x00aa
                           0000AB   190 _ET1	=	0x00ab
                           0000AC   191 _ES	=	0x00ac
                           0000AF   192 _EA	=	0x00af
                           0000B0   193 _P3_0	=	0x00b0
                           0000B1   194 _P3_1	=	0x00b1
                           0000B2   195 _P3_2	=	0x00b2
                           0000B3   196 _P3_3	=	0x00b3
                           0000B4   197 _P3_4	=	0x00b4
                           0000B5   198 _P3_5	=	0x00b5
                           0000B6   199 _P3_6	=	0x00b6
                           0000B7   200 _P3_7	=	0x00b7
                           0000B0   201 _RXD	=	0x00b0
                           0000B1   202 _TXD	=	0x00b1
                           0000B2   203 _INT0	=	0x00b2
                           0000B3   204 _INT1	=	0x00b3
                           0000B4   205 _T0	=	0x00b4
                           0000B5   206 _T1	=	0x00b5
                           0000B6   207 _WR	=	0x00b6
                           0000B7   208 _RD	=	0x00b7
                           0000B8   209 _PX0	=	0x00b8
                           0000B9   210 _PT0	=	0x00b9
                           0000BA   211 _PX1	=	0x00ba
                           0000BB   212 _PT1	=	0x00bb
                           0000BC   213 _PS	=	0x00bc
                           0000D0   214 _P	=	0x00d0
                           0000D1   215 _F1	=	0x00d1
                           0000D2   216 _OV	=	0x00d2
                           0000D3   217 _RS0	=	0x00d3
                           0000D4   218 _RS1	=	0x00d4
                           0000D5   219 _F0	=	0x00d5
                           0000D6   220 _AC	=	0x00d6
                           0000D7   221 _CY	=	0x00d7
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable register banks
                                    224 ;--------------------------------------------------------
                                    225 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        226 	.ds 8
                                    227 ;--------------------------------------------------------
                                    228 ; internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area DSEG    (DATA)
                           000034   231 _sp	=	0x0034
                           000038   232 _currentThread	=	0x0038
                           000039   233 _threadCount	=	0x0039
                           00003A   234 _threadMask	=	0x003a
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram
                                    237 ;--------------------------------------------------------
                                    238 	.area	OSEG    (OVR,DATA)
                           00003B   239 _ThreadCreate_newThreadID_10001_12	=	0x003b
                           00003C   240 _ThreadCreate_address_10001_12	=	0x003c
                           00003D   241 _ThreadCreate_SPtemp_10001_12	=	0x003d
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; uninitialized external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; initialized external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; global & static initialisations
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; Home
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area HOME    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; code
                                    295 ;--------------------------------------------------------
                                    296 	.area CSEG    (CODE)
                                    297 ;------------------------------------------------------------
                                    298 ;Allocation info for local variables in function 'Bootstrap'
                                    299 ;------------------------------------------------------------
                                    300 ;	cooperative.c:69: void Bootstrap(void) {
                                    301 ;	-----------------------------------------
                                    302 ;	 function Bootstrap
                                    303 ;	-----------------------------------------
      00006D                        304 _Bootstrap:
                           000007   305 	ar7 = 0x07
                           000006   306 	ar6 = 0x06
                           000005   307 	ar5 = 0x05
                           000004   308 	ar4 = 0x04
                           000003   309 	ar3 = 0x03
                           000002   310 	ar2 = 0x02
                           000001   311 	ar1 = 0x01
                           000000   312 	ar0 = 0x00
                                    313 ;	cooperative.c:82: threadCount = 0;
      00006D 75 39 00         [24]  314 	mov	_threadCount,#0x00
                                    315 ;	cooperative.c:83: threadMask = 0;
      000070 75 3A 00         [24]  316 	mov	_threadMask,#0x00
                                    317 ;	cooperative.c:84: currentThread = 0;
      000073 75 38 00         [24]  318 	mov	_currentThread,#0x00
                                    319 ;	cooperative.c:85: currentThread = ThreadCreate(main);
      000076 90 00 57         [24]  320 	mov	dptr,#_main
      000079 12 00 91         [24]  321 	lcall	_ThreadCreate
      00007C 85 82 38         [24]  322 	mov	_currentThread,dpl
                                    323 ;	cooperative.c:86: RESTORESTATE;
      00007F E5 38            [12]  324 	mov	a,_currentThread
      000081 24 34            [12]  325 	add	a, #_sp
      000083 F9               [12]  326 	mov	r1,a
      000084 87 81            [24]  327 	mov	_SP,@r1
      000086 D0 D0            [24]  328 	POP PSW 
      000088 D0 83            [24]  329 	POP DPH 
      00008A D0 82            [24]  330 	POP DPL 
      00008C D0 F0            [24]  331 	POP B 
      00008E D0 E0            [24]  332 	POP ACC 
                                    333 ;	cooperative.c:87: }
      000090 22               [24]  334 	ret
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'ThreadCreate'
                                    337 ;------------------------------------------------------------
                                    338 ;fp                        Allocated to registers 
                                    339 ;newThreadID               Allocated with name '_ThreadCreate_newThreadID_10001_12'
                                    340 ;address                   Allocated with name '_ThreadCreate_address_10001_12'
                                    341 ;SPtemp                    Allocated with name '_ThreadCreate_SPtemp_10001_12'
                                    342 ;------------------------------------------------------------
                                    343 ;	cooperative.c:95: ThreadID ThreadCreate(FunctionPtr fp) {
                                    344 ;	-----------------------------------------
                                    345 ;	 function ThreadCreate
                                    346 ;	-----------------------------------------
      000091                        347 _ThreadCreate:
                                    348 ;	cooperative.c:101: if (threadCount >= MAXTHREADS){
      000091 74 FC            [12]  349 	mov	a,#0x100 - 0x04
      000093 25 39            [12]  350 	add	a,_threadCount
      000095 50 04            [24]  351 	jnc	00102$
                                    352 ;	cooperative.c:102: return -1;
      000097 75 82 FF         [24]  353 	mov	dpl, #0xff
      00009A 22               [24]  354 	ret
      00009B                        355 00102$:
                                    356 ;	cooperative.c:146: __data __at (0x3C) char address = 0;
      00009B 75 3C 00         [24]  357 	mov	_ThreadCreate_address_10001_12,#0x00
                                    358 ;	cooperative.c:147: __data __at (0x3D) char SPtemp = 0;
      00009E 75 3D 00         [24]  359 	mov	_ThreadCreate_SPtemp_10001_12,#0x00
                                    360 ;	cooperative.c:150: for(newThreadID = 0; newThreadID < MAXTHREADS; newThreadID++){
      0000A1 75 3B 00         [24]  361 	mov	_ThreadCreate_newThreadID_10001_12,#0x00
      0000A4                        362 00107$:
      0000A4 74 FC            [12]  363 	mov	a,#0x100 - 0x04
      0000A6 25 3B            [12]  364 	add	a,_ThreadCreate_newThreadID_10001_12
      0000A8 40 39            [24]  365 	jc	00105$
                                    366 ;	cooperative.c:151: if(!((threadMask >> newThreadID) & 1)){
      0000AA 85 3B F0         [24]  367 	mov	b,_ThreadCreate_newThreadID_10001_12
      0000AD 05 F0            [12]  368 	inc	b
      0000AF E5 3A            [12]  369 	mov	a,_threadMask
      0000B1 80 02            [24]  370 	sjmp	00138$
      0000B3                        371 00137$:
      0000B3 C3               [12]  372 	clr	c
      0000B4 13               [12]  373 	rrc	a
      0000B5                        374 00138$:
      0000B5 D5 F0 FB         [24]  375 	djnz	b,00137$
      0000B8 20 E0 21         [24]  376 	jb	acc.0,00108$
                                    377 ;	cooperative.c:152: threadMask |= (1 << newThreadID); //a. update the bit mask 
      0000BB 85 3B F0         [24]  378 	mov	b,_ThreadCreate_newThreadID_10001_12
      0000BE 05 F0            [12]  379 	inc	b
      0000C0 74 01            [12]  380 	mov	a,#0x01
      0000C2 80 02            [24]  381 	sjmp	00141$
      0000C4                        382 00140$:
      0000C4 25 E0            [12]  383 	add	a,acc
      0000C6                        384 00141$:
      0000C6 D5 F0 FB         [24]  385 	djnz	b,00140$
      0000C9 42 3A            [12]  386 	orl	_threadMask,a
                                    387 ;	cooperative.c:153: threadCount++; //increment threadcount
      0000CB E5 39            [12]  388 	mov	a,_threadCount
      0000CD 04               [12]  389 	inc	a
      0000CE F5 39            [12]  390 	mov	_threadCount,a
                                    391 ;	cooperative.c:154: address = (newThreadID * 0x10) + 0x3F; //b. calculate the starting stack location for new thread
      0000D0 E5 3B            [12]  392 	mov	a,_ThreadCreate_newThreadID_10001_12
      0000D2 C4               [12]  393 	swap	a
      0000D3 54 F0            [12]  394 	anl	a,#0xf0
      0000D5 FF               [12]  395 	mov	r7,a
      0000D6 24 3F            [12]  396 	add	a,#0x3f
      0000D8 F5 3C            [12]  397 	mov	_ThreadCreate_address_10001_12,a
                                    398 ;	cooperative.c:155: break;
      0000DA 80 07            [24]  399 	sjmp	00105$
      0000DC                        400 00108$:
                                    401 ;	cooperative.c:150: for(newThreadID = 0; newThreadID < MAXTHREADS; newThreadID++){
      0000DC E5 3B            [12]  402 	mov	a,_ThreadCreate_newThreadID_10001_12
      0000DE 04               [12]  403 	inc	a
      0000DF F5 3B            [12]  404 	mov	_ThreadCreate_newThreadID_10001_12,a
      0000E1 80 C1            [24]  405 	sjmp	00107$
      0000E3                        406 00105$:
                                    407 ;	cooperative.c:178: SAVESTATE; 
      0000E3 C0 E0            [24]  408 	PUSH ACC 
      0000E5 C0 F0            [24]  409 	PUSH B 
      0000E7 C0 82            [24]  410 	PUSH DPL 
      0000E9 C0 83            [24]  411 	PUSH DPH 
      0000EB C0 D0            [24]  412 	PUSH PSW 
      0000ED E5 38            [12]  413 	mov	a,_currentThread
      0000EF 24 34            [12]  414 	add	a, #_sp
      0000F1 F8               [12]  415 	mov	r0,a
      0000F2 A6 81            [24]  416 	mov	@r0,_SP
                                    417 ;	cooperative.c:179: SPtemp = SP; //c. save the current SP in a temporary
      0000F4 85 81 3D         [24]  418 	mov	_ThreadCreate_SPtemp_10001_12,_SP
                                    419 ;	cooperative.c:180: SP = address; //set SP to the starting location for the new thread
      0000F7 85 3C 81         [24]  420 	mov	_SP,_ThreadCreate_address_10001_12
                                    421 ;	cooperative.c:185: __endasm; 
      0000FA C0 82            [24]  422 	PUSH	DPL
      0000FC C0 83            [24]  423 	PUSH	DPH
                                    424 ;	cooperative.c:194: __endasm; 
      0000FE 74 00            [12]  425 	MOV	A, #0
      000100 C0 E0            [24]  426 	PUSH	ACC
      000102 C0 F0            [24]  427 	PUSH	B
      000104 C0 82            [24]  428 	PUSH	DPL
      000106 C0 83            [24]  429 	PUSH	DPH
                                    430 ;	cooperative.c:197: PSW = (newThreadID << 3);
      000108 E5 3B            [12]  431 	mov	a,_ThreadCreate_newThreadID_10001_12
      00010A FF               [12]  432 	mov	r7,a
      00010B C4               [12]  433 	swap	a
      00010C 03               [12]  434 	rr	a
      00010D 54 F8            [12]  435 	anl	a,#0xf8
      00010F F5 D0            [12]  436 	mov	_PSW,a
                                    437 ;	cooperative.c:200: __endasm;
      000111 C0 D0            [24]  438 	PUSH	PSW
                                    439 ;	cooperative.c:203: sp[newThreadID] = SP;
      000113 E5 3B            [12]  440 	mov	a,_ThreadCreate_newThreadID_10001_12
      000115 24 34            [12]  441 	add	a, #_sp
      000117 F8               [12]  442 	mov	r0,a
      000118 A6 81            [24]  443 	mov	@r0,_SP
                                    444 ;	cooperative.c:206: SP = SPtemp; 
      00011A 85 3D 81         [24]  445 	mov	_SP,_ThreadCreate_SPtemp_10001_12
                                    446 ;	cooperative.c:208: RESTORESTATE;
      00011D E5 38            [12]  447 	mov	a,_currentThread
      00011F 24 34            [12]  448 	add	a, #_sp
      000121 F9               [12]  449 	mov	r1,a
      000122 87 81            [24]  450 	mov	_SP,@r1
      000124 D0 D0            [24]  451 	POP PSW 
      000126 D0 83            [24]  452 	POP DPH 
      000128 D0 82            [24]  453 	POP DPL 
      00012A D0 F0            [24]  454 	POP B 
      00012C D0 E0            [24]  455 	POP ACC 
                                    456 ;	cooperative.c:210: return newThreadID; //i. finally, return the newly created thread ID.
      00012E 85 3B 82         [24]  457 	mov	dpl, _ThreadCreate_newThreadID_10001_12
                                    458 ;	cooperative.c:211: }
      000131 22               [24]  459 	ret
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'ThreadYield'
                                    462 ;------------------------------------------------------------
                                    463 ;	cooperative.c:219: void ThreadYield(void) {
                                    464 ;	-----------------------------------------
                                    465 ;	 function ThreadYield
                                    466 ;	-----------------------------------------
      000132                        467 _ThreadYield:
                                    468 ;	cooperative.c:220: SAVESTATE;
      000132 C0 E0            [24]  469 	PUSH ACC 
      000134 C0 F0            [24]  470 	PUSH B 
      000136 C0 82            [24]  471 	PUSH DPL 
      000138 C0 83            [24]  472 	PUSH DPH 
      00013A C0 D0            [24]  473 	PUSH PSW 
      00013C E5 38            [12]  474 	mov	a,_currentThread
      00013E 24 34            [12]  475 	add	a, #_sp
      000140 F8               [12]  476 	mov	r0,a
      000141 A6 81            [24]  477 	mov	@r0,_SP
                                    478 ;	cooperative.c:221: do {
      000143                        479 00101$:
                                    480 ;	cooperative.c:232: currentThread = (currentThread + 1) % MAXTHREADS;
      000143 AE 38            [24]  481 	mov	r6,_currentThread
      000145 7F 00            [12]  482 	mov	r7,#0x00
      000147 8E 82            [24]  483 	mov	dpl,r6
      000149 8F 83            [24]  484 	mov	dph,r7
      00014B A3               [24]  485 	inc	dptr
      00014C 75 08 04         [24]  486 	mov	__modsint_PARM_2,#0x04
      00014F 8F 09            [24]  487 	mov	(__modsint_PARM_2 + 1),r7
      000151 12 02 39         [24]  488 	lcall	__modsint
      000154 AE 82            [24]  489 	mov	r6, dpl
      000156 AF 83            [24]  490 	mov	r7, dph
      000158 8E 38            [24]  491 	mov	_currentThread,r6
                                    492 ;	cooperative.c:233: } while (!((threadMask >> currentThread) & 1));
      00015A 85 38 F0         [24]  493 	mov	b,_currentThread
      00015D 05 F0            [12]  494 	inc	b
      00015F E5 3A            [12]  495 	mov	a,_threadMask
      000161 80 02            [24]  496 	sjmp	00119$
      000163                        497 00118$:
      000163 C3               [12]  498 	clr	c
      000164 13               [12]  499 	rrc	a
      000165                        500 00119$:
      000165 D5 F0 FB         [24]  501 	djnz	b,00118$
      000168 30 E0 D8         [24]  502 	jnb	acc.0,00101$
                                    503 ;	cooperative.c:236: RESTORESTATE;
      00016B E5 38            [12]  504 	mov	a,_currentThread
      00016D 24 34            [12]  505 	add	a, #_sp
      00016F F9               [12]  506 	mov	r1,a
      000170 87 81            [24]  507 	mov	_SP,@r1
      000172 D0 D0            [24]  508 	POP PSW 
      000174 D0 83            [24]  509 	POP DPH 
      000176 D0 82            [24]  510 	POP DPL 
      000178 D0 F0            [24]  511 	POP B 
      00017A D0 E0            [24]  512 	POP ACC 
                                    513 ;	cooperative.c:237: }
      00017C 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'ThreadExit'
                                    517 ;------------------------------------------------------------
                                    518 ;	cooperative.c:244: void ThreadExit(void) {
                                    519 ;	-----------------------------------------
                                    520 ;	 function ThreadExit
                                    521 ;	-----------------------------------------
      00017D                        522 _ThreadExit:
                                    523 ;	cooperative.c:251: threadMask = threadMask & ~(1 << currentThread + 1) % (MAXTHREADS);
      00017D E5 38            [12]  524 	mov	a,_currentThread
      00017F 04               [12]  525 	inc	a
      000180 FF               [12]  526 	mov	r7,a
      000181 8F F0            [24]  527 	mov	b,r7
      000183 05 F0            [12]  528 	inc	b
      000185 7F 01            [12]  529 	mov	r7,#0x01
      000187 7E 00            [12]  530 	mov	r6,#0x00
      000189 80 06            [24]  531 	sjmp	00119$
      00018B                        532 00118$:
      00018B EF               [12]  533 	mov	a,r7
      00018C 2F               [12]  534 	add	a,r7
      00018D FF               [12]  535 	mov	r7,a
      00018E EE               [12]  536 	mov	a,r6
      00018F 33               [12]  537 	rlc	a
      000190 FE               [12]  538 	mov	r6,a
      000191                        539 00119$:
      000191 D5 F0 F7         [24]  540 	djnz	b,00118$
      000194 EF               [12]  541 	mov	a,r7
      000195 F4               [12]  542 	cpl	a
      000196 F5 82            [12]  543 	mov	dpl,a
      000198 EE               [12]  544 	mov	a,r6
      000199 F4               [12]  545 	cpl	a
      00019A F5 83            [12]  546 	mov	dph,a
      00019C 75 08 04         [24]  547 	mov	__modsint_PARM_2,#0x04
      00019F 75 09 00         [24]  548 	mov	(__modsint_PARM_2 + 1),#0x00
      0001A2 12 02 39         [24]  549 	lcall	__modsint
      0001A5 AE 82            [24]  550 	mov	r6, dpl
      0001A7 AD 3A            [24]  551 	mov	r5,_threadMask
      0001A9 EE               [12]  552 	mov	a,r6
      0001AA 5D               [12]  553 	anl	a,r5
      0001AB F5 3A            [12]  554 	mov	_threadMask,a
                                    555 ;	cooperative.c:252: threadCount--;
      0001AD E5 39            [12]  556 	mov	a,_threadCount
      0001AF 14               [12]  557 	dec	a
      0001B0 F5 39            [12]  558 	mov	_threadCount,a
                                    559 ;	cooperative.c:254: do{
      0001B2                        560 00101$:
                                    561 ;	cooperative.c:255: currentThread = (currentThread + 1) % (MAXTHREADS-1);
      0001B2 AE 38            [24]  562 	mov	r6,_currentThread
      0001B4 7F 00            [12]  563 	mov	r7,#0x00
      0001B6 8E 82            [24]  564 	mov	dpl,r6
      0001B8 8F 83            [24]  565 	mov	dph,r7
      0001BA A3               [24]  566 	inc	dptr
      0001BB 75 08 03         [24]  567 	mov	__modsint_PARM_2,#0x03
      0001BE 8F 09            [24]  568 	mov	(__modsint_PARM_2 + 1),r7
      0001C0 12 02 39         [24]  569 	lcall	__modsint
      0001C3 AE 82            [24]  570 	mov	r6, dpl
      0001C5 AF 83            [24]  571 	mov	r7, dph
      0001C7 8E 38            [24]  572 	mov	_currentThread,r6
                                    573 ;	cooperative.c:256: } while (!((threadMask >> currentThread) & 1));
      0001C9 85 38 F0         [24]  574 	mov	b,_currentThread
      0001CC 05 F0            [12]  575 	inc	b
      0001CE E5 3A            [12]  576 	mov	a,_threadMask
      0001D0 80 02            [24]  577 	sjmp	00121$
      0001D2                        578 00120$:
      0001D2 C3               [12]  579 	clr	c
      0001D3 13               [12]  580 	rrc	a
      0001D4                        581 00121$:
      0001D4 D5 F0 FB         [24]  582 	djnz	b,00120$
      0001D7 30 E0 D8         [24]  583 	jnb	acc.0,00101$
                                    584 ;	cooperative.c:258: RESTORESTATE;
      0001DA E5 38            [12]  585 	mov	a,_currentThread
      0001DC 24 34            [12]  586 	add	a, #_sp
      0001DE F9               [12]  587 	mov	r1,a
      0001DF 87 81            [24]  588 	mov	_SP,@r1
      0001E1 D0 D0            [24]  589 	POP PSW 
      0001E3 D0 83            [24]  590 	POP DPH 
      0001E5 D0 82            [24]  591 	POP DPL 
      0001E7 D0 F0            [24]  592 	POP B 
      0001E9 D0 E0            [24]  593 	POP ACC 
                                    594 ;	cooperative.c:259: }
      0001EB 22               [24]  595 	ret
                                    596 	.area CSEG    (CODE)
                                    597 	.area CONST   (CODE)
                                    598 	.area XINIT   (CODE)
                                    599 	.area CABS    (ABS,CODE)
