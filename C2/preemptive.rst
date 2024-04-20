                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14549 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module preemptive
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
                                    116 	.globl _myTimer0Handler
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
                           000034   232 _sp	=	0x0034
                           000038   233 _currentThread	=	0x0038
                           000039   234 _threadCount	=	0x0039
                           00003A   235 _threadMask	=	0x003a
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram
                                    238 ;--------------------------------------------------------
                                    239 	.area	OSEG    (OVR,DATA)
                           00003B   240 _ThreadCreate_newThreadID_10001_13	=	0x003b
                           00003C   241 _ThreadCreate_address_10001_13	=	0x003c
                           00003D   242 _ThreadCreate_SPtemp_10001_13	=	0x003d
                                    243 ;--------------------------------------------------------
                                    244 ; indirectly addressable internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area ISEG    (DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area IABS    (ABS,DATA)
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
      000002                        256 _ThreadCreate_sloc0_1_0:
      000002                        257 	.ds 1
      000003                        258 _ThreadYield_sloc0_1_0:
      000003                        259 	.ds 1
      000004                        260 _ThreadExit_sloc0_1_0:
      000004                        261 	.ds 1
      000005                        262 _myTimer0Handler_sloc0_1_0:
      000005                        263 	.ds 1
                                    264 ;--------------------------------------------------------
                                    265 ; paged external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area PSEG    (PAG,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; uninitialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XSEG    (XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; absolute external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XABS    (ABS,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; initialized external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XISEG   (XDATA)
                                    280 	.area HOME    (CODE)
                                    281 	.area GSINIT0 (CODE)
                                    282 	.area GSINIT1 (CODE)
                                    283 	.area GSINIT2 (CODE)
                                    284 	.area GSINIT3 (CODE)
                                    285 	.area GSINIT4 (CODE)
                                    286 	.area GSINIT5 (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area CSEG    (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 ;--------------------------------------------------------
                                    298 ; Home
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area HOME    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; code
                                    304 ;--------------------------------------------------------
                                    305 	.area CSEG    (CODE)
                                    306 ;------------------------------------------------------------
                                    307 ;Allocation info for local variables in function 'Bootstrap'
                                    308 ;------------------------------------------------------------
                                    309 ;	preemptive.c:69: void Bootstrap(void) {
                                    310 ;	-----------------------------------------
                                    311 ;	 function Bootstrap
                                    312 ;	-----------------------------------------
      000089                        313 _Bootstrap:
                           000007   314 	ar7 = 0x07
                           000006   315 	ar6 = 0x06
                           000005   316 	ar5 = 0x05
                           000004   317 	ar4 = 0x04
                           000003   318 	ar3 = 0x03
                           000002   319 	ar2 = 0x02
                           000001   320 	ar1 = 0x01
                           000000   321 	ar0 = 0x00
                                    322 ;	preemptive.c:82: TMOD = 0; // timer 0 mode 0
      000089 75 89 00         [24]  323 	mov	_TMOD,#0x00
                                    324 ;	preemptive.c:83: IE = 0x82; // enable timer 0 interrupt,
      00008C 75 A8 82         [24]  325 	mov	_IE,#0x82
                                    326 ;	preemptive.c:84: TR0 = 1; // start running timer0
                                    327 ;	assignBit
      00008F D2 8C            [12]  328 	setb	_TR0
                                    329 ;	preemptive.c:85: threadCount = 0;
      000091 75 39 00         [24]  330 	mov	_threadCount,#0x00
                                    331 ;	preemptive.c:86: threadMask = 0;
      000094 75 3A 00         [24]  332 	mov	_threadMask,#0x00
                                    333 ;	preemptive.c:87: currentThread = 0;
      000097 75 38 00         [24]  334 	mov	_currentThread,#0x00
                                    335 ;	preemptive.c:88: currentThread = ThreadCreate(main);
      00009A 90 00 6F         [24]  336 	mov	dptr,#_main
      00009D 12 00 B5         [24]  337 	lcall	_ThreadCreate
      0000A0 85 82 38         [24]  338 	mov	_currentThread,dpl
                                    339 ;	preemptive.c:89: RESTORESTATE;
      0000A3 E5 38            [12]  340 	mov	a,_currentThread
      0000A5 24 34            [12]  341 	add	a, #_sp
      0000A7 F9               [12]  342 	mov	r1,a
      0000A8 87 81            [24]  343 	mov	_SP,@r1
      0000AA D0 D0            [24]  344 	POP PSW 
      0000AC D0 83            [24]  345 	POP DPH 
      0000AE D0 82            [24]  346 	POP DPL 
      0000B0 D0 F0            [24]  347 	POP B 
      0000B2 D0 E0            [24]  348 	POP ACC 
                                    349 ;	preemptive.c:90: }
      0000B4 22               [24]  350 	ret
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function 'ThreadCreate'
                                    353 ;------------------------------------------------------------
                                    354 ;fp                        Allocated to registers 
                                    355 ;newThreadID               Allocated with name '_ThreadCreate_newThreadID_10001_13'
                                    356 ;address                   Allocated with name '_ThreadCreate_address_10001_13'
                                    357 ;SPtemp                    Allocated with name '_ThreadCreate_SPtemp_10001_13'
                                    358 ;------------------------------------------------------------
                                    359 ;	preemptive.c:98: ThreadID ThreadCreate(FunctionPtr fp) {
                                    360 ;	-----------------------------------------
                                    361 ;	 function ThreadCreate
                                    362 ;	-----------------------------------------
      0000B5                        363 _ThreadCreate:
                                    364 ;	preemptive.c:104: if (threadCount >= MAXTHREADS){
      0000B5 74 FC            [12]  365 	mov	a,#0x100 - 0x04
      0000B7 25 39            [12]  366 	add	a,_threadCount
      0000B9 50 04            [24]  367 	jnc	00102$
                                    368 ;	preemptive.c:105: return -1;
      0000BB 75 82 FF         [24]  369 	mov	dpl, #0xff
      0000BE 22               [24]  370 	ret
      0000BF                        371 00102$:
                                    372 ;	preemptive.c:149: __data __at (0x3C) char address = 0;
      0000BF 75 3C 00         [24]  373 	mov	_ThreadCreate_address_10001_13,#0x00
                                    374 ;	preemptive.c:150: __data __at (0x3D) char SPtemp = 0;
      0000C2 75 3D 00         [24]  375 	mov	_ThreadCreate_SPtemp_10001_13,#0x00
                                    376 ;	preemptive.c:193: }
      0000C5 D2 02            [12]  377 	setb	_ThreadCreate_sloc0_1_0
      0000C7 10 AF 02         [24]  378 	jbc	ea,00136$
      0000CA C2 02            [12]  379 	clr	_ThreadCreate_sloc0_1_0
      0000CC                        380 00136$:
                                    381 ;	preemptive.c:153: for(newThreadID = 0; newThreadID < MAXTHREADS; newThreadID++){
      0000CC 75 3B 00         [24]  382 	mov	_ThreadCreate_newThreadID_10001_13,#0x00
      0000CF                        383 00107$:
      0000CF 74 FC            [12]  384 	mov	a,#0x100 - 0x04
      0000D1 25 3B            [12]  385 	add	a,_ThreadCreate_newThreadID_10001_13
      0000D3 40 39            [24]  386 	jc	00105$
                                    387 ;	preemptive.c:154: if(!((threadMask >> newThreadID) & 1)){
      0000D5 85 3B F0         [24]  388 	mov	b,_ThreadCreate_newThreadID_10001_13
      0000D8 05 F0            [12]  389 	inc	b
      0000DA E5 3A            [12]  390 	mov	a,_threadMask
      0000DC 80 02            [24]  391 	sjmp	00139$
      0000DE                        392 00138$:
      0000DE C3               [12]  393 	clr	c
      0000DF 13               [12]  394 	rrc	a
      0000E0                        395 00139$:
      0000E0 D5 F0 FB         [24]  396 	djnz	b,00138$
      0000E3 20 E0 21         [24]  397 	jb	acc.0,00108$
                                    398 ;	preemptive.c:155: threadMask |= (1 << newThreadID); //a. update the bit mask 
      0000E6 85 3B F0         [24]  399 	mov	b,_ThreadCreate_newThreadID_10001_13
      0000E9 05 F0            [12]  400 	inc	b
      0000EB 74 01            [12]  401 	mov	a,#0x01
      0000ED 80 02            [24]  402 	sjmp	00142$
      0000EF                        403 00141$:
      0000EF 25 E0            [12]  404 	add	a,acc
      0000F1                        405 00142$:
      0000F1 D5 F0 FB         [24]  406 	djnz	b,00141$
      0000F4 42 3A            [12]  407 	orl	_threadMask,a
                                    408 ;	preemptive.c:156: threadCount++; //increment threadcount
      0000F6 E5 39            [12]  409 	mov	a,_threadCount
      0000F8 04               [12]  410 	inc	a
      0000F9 F5 39            [12]  411 	mov	_threadCount,a
                                    412 ;	preemptive.c:157: address = (newThreadID * 0x10) + 0x3F; //b. calculate the starting stack location for new thread
      0000FB E5 3B            [12]  413 	mov	a,_ThreadCreate_newThreadID_10001_13
      0000FD C4               [12]  414 	swap	a
      0000FE 54 F0            [12]  415 	anl	a,#0xf0
      000100 FF               [12]  416 	mov	r7,a
      000101 24 3F            [12]  417 	add	a,#0x3f
      000103 F5 3C            [12]  418 	mov	_ThreadCreate_address_10001_13,a
                                    419 ;	preemptive.c:158: break;
      000105 80 07            [24]  420 	sjmp	00105$
      000107                        421 00108$:
                                    422 ;	preemptive.c:153: for(newThreadID = 0; newThreadID < MAXTHREADS; newThreadID++){
      000107 E5 3B            [12]  423 	mov	a,_ThreadCreate_newThreadID_10001_13
      000109 04               [12]  424 	inc	a
      00010A F5 3B            [12]  425 	mov	_ThreadCreate_newThreadID_10001_13,a
      00010C 80 C1            [24]  426 	sjmp	00107$
      00010E                        427 00105$:
                                    428 ;	preemptive.c:162: SAVESTATE; 
      00010E C0 E0            [24]  429 	PUSH ACC 
      000110 C0 F0            [24]  430 	PUSH B 
      000112 C0 82            [24]  431 	PUSH DPL 
      000114 C0 83            [24]  432 	PUSH DPH 
      000116 C0 D0            [24]  433 	PUSH PSW 
      000118 E5 38            [12]  434 	mov	a,_currentThread
      00011A 24 34            [12]  435 	add	a, #_sp
      00011C F8               [12]  436 	mov	r0,a
      00011D A6 81            [24]  437 	mov	@r0,_SP
                                    438 ;	preemptive.c:163: SPtemp = SP; //c. save the current SP in a temporary
      00011F 85 81 3D         [24]  439 	mov	_ThreadCreate_SPtemp_10001_13,_SP
                                    440 ;	preemptive.c:164: SP = address; //set SP to the starting location for the new thread
      000122 85 3C 81         [24]  441 	mov	_SP,_ThreadCreate_address_10001_13
                                    442 ;	preemptive.c:169: __endasm; 
      000125 C0 82            [24]  443 	PUSH	DPL
      000127 C0 83            [24]  444 	PUSH	DPH
                                    445 ;	preemptive.c:178: __endasm; 
      000129 74 00            [12]  446 	MOV	A, #0
      00012B C0 E0            [24]  447 	PUSH	ACC
      00012D C0 F0            [24]  448 	PUSH	B
      00012F C0 82            [24]  449 	PUSH	DPL
      000131 C0 83            [24]  450 	PUSH	DPH
                                    451 ;	preemptive.c:181: PSW = (newThreadID << 3);
      000133 E5 3B            [12]  452 	mov	a,_ThreadCreate_newThreadID_10001_13
      000135 FF               [12]  453 	mov	r7,a
      000136 C4               [12]  454 	swap	a
      000137 03               [12]  455 	rr	a
      000138 54 F8            [12]  456 	anl	a,#0xf8
      00013A F5 D0            [12]  457 	mov	_PSW,a
                                    458 ;	preemptive.c:184: __endasm;
      00013C C0 D0            [24]  459 	PUSH	PSW
                                    460 ;	preemptive.c:187: sp[newThreadID] = SP;
      00013E E5 3B            [12]  461 	mov	a,_ThreadCreate_newThreadID_10001_13
      000140 24 34            [12]  462 	add	a, #_sp
      000142 F8               [12]  463 	mov	r0,a
      000143 A6 81            [24]  464 	mov	@r0,_SP
                                    465 ;	preemptive.c:190: SP = SPtemp; 
      000145 85 3D 81         [24]  466 	mov	_SP,_ThreadCreate_SPtemp_10001_13
                                    467 ;	preemptive.c:192: RESTORESTATE;
      000148 E5 38            [12]  468 	mov	a,_currentThread
      00014A 24 34            [12]  469 	add	a, #_sp
      00014C F9               [12]  470 	mov	r1,a
      00014D 87 81            [24]  471 	mov	_SP,@r1
      00014F D0 D0            [24]  472 	POP PSW 
      000151 D0 83            [24]  473 	POP DPH 
      000153 D0 82            [24]  474 	POP DPL 
      000155 D0 F0            [24]  475 	POP B 
      000157 D0 E0            [24]  476 	POP ACC 
      000159 A2 02            [12]  477 	mov	c,_ThreadCreate_sloc0_1_0
      00015B 92 AF            [24]  478 	mov	ea,c
                                    479 ;	preemptive.c:195: return newThreadID; //i. finally, return the newly created thread ID.
      00015D 85 3B 82         [24]  480 	mov	dpl, _ThreadCreate_newThreadID_10001_13
                                    481 ;	preemptive.c:196: }
      000160 22               [24]  482 	ret
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'ThreadYield'
                                    485 ;------------------------------------------------------------
                                    486 ;	preemptive.c:204: void ThreadYield(void) {
                                    487 ;	-----------------------------------------
                                    488 ;	 function ThreadYield
                                    489 ;	-----------------------------------------
      000161                        490 _ThreadYield:
                                    491 ;	preemptive.c:221: }
      000161 D2 03            [12]  492 	setb	_ThreadYield_sloc0_1_0
      000163 10 AF 02         [24]  493 	jbc	ea,00118$
      000166 C2 03            [12]  494 	clr	_ThreadYield_sloc0_1_0
      000168                        495 00118$:
                                    496 ;	preemptive.c:206: SAVESTATE;
      000168 C0 E0            [24]  497 	PUSH ACC 
      00016A C0 F0            [24]  498 	PUSH B 
      00016C C0 82            [24]  499 	PUSH DPL 
      00016E C0 83            [24]  500 	PUSH DPH 
      000170 C0 D0            [24]  501 	PUSH PSW 
      000172 E5 38            [12]  502 	mov	a,_currentThread
      000174 24 34            [12]  503 	add	a, #_sp
      000176 F8               [12]  504 	mov	r0,a
      000177 A6 81            [24]  505 	mov	@r0,_SP
                                    506 ;	preemptive.c:207: do {
      000179                        507 00101$:
                                    508 ;	preemptive.c:217: currentThread = (currentThread + 1) % MAXTHREADS;
      000179 AE 38            [24]  509 	mov	r6,_currentThread
      00017B 7F 00            [12]  510 	mov	r7,#0x00
      00017D 8E 82            [24]  511 	mov	dpl,r6
      00017F 8F 83            [24]  512 	mov	dph,r7
      000181 A3               [24]  513 	inc	dptr
      000182 75 08 04         [24]  514 	mov	__modsint_PARM_2,#0x04
      000185 8F 09            [24]  515 	mov	(__modsint_PARM_2 + 1),r7
      000187 12 03 01         [24]  516 	lcall	__modsint
      00018A AE 82            [24]  517 	mov	r6, dpl
      00018C AF 83            [24]  518 	mov	r7, dph
      00018E 8E 38            [24]  519 	mov	_currentThread,r6
                                    520 ;	preemptive.c:218: } while (!((threadMask >> currentThread) & 1));
      000190 85 38 F0         [24]  521 	mov	b,_currentThread
      000193 05 F0            [12]  522 	inc	b
      000195 E5 3A            [12]  523 	mov	a,_threadMask
      000197 80 02            [24]  524 	sjmp	00120$
      000199                        525 00119$:
      000199 C3               [12]  526 	clr	c
      00019A 13               [12]  527 	rrc	a
      00019B                        528 00120$:
      00019B D5 F0 FB         [24]  529 	djnz	b,00119$
      00019E 30 E0 D8         [24]  530 	jnb	acc.0,00101$
                                    531 ;	preemptive.c:220: RESTORESTATE;
      0001A1 E5 38            [12]  532 	mov	a,_currentThread
      0001A3 24 34            [12]  533 	add	a, #_sp
      0001A5 F9               [12]  534 	mov	r1,a
      0001A6 87 81            [24]  535 	mov	_SP,@r1
      0001A8 D0 D0            [24]  536 	POP PSW 
      0001AA D0 83            [24]  537 	POP DPH 
      0001AC D0 82            [24]  538 	POP DPL 
      0001AE D0 F0            [24]  539 	POP B 
      0001B0 D0 E0            [24]  540 	POP ACC 
      0001B2 A2 03            [12]  541 	mov	c,_ThreadYield_sloc0_1_0
      0001B4 92 AF            [24]  542 	mov	ea,c
                                    543 ;	preemptive.c:222: }
      0001B6 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'ThreadExit'
                                    547 ;------------------------------------------------------------
                                    548 ;	preemptive.c:229: void ThreadExit(void) {
                                    549 ;	-----------------------------------------
                                    550 ;	 function ThreadExit
                                    551 ;	-----------------------------------------
      0001B7                        552 _ThreadExit:
                                    553 ;	preemptive.c:245: }
      0001B7 D2 04            [12]  554 	setb	_ThreadExit_sloc0_1_0
      0001B9 10 AF 02         [24]  555 	jbc	ea,00118$
      0001BC C2 04            [12]  556 	clr	_ThreadExit_sloc0_1_0
      0001BE                        557 00118$:
                                    558 ;	preemptive.c:237: threadMask = threadMask & ~(1 << currentThread + 1) % MAXTHREADS;
      0001BE E5 38            [12]  559 	mov	a,_currentThread
      0001C0 04               [12]  560 	inc	a
      0001C1 FF               [12]  561 	mov	r7,a
      0001C2 8F F0            [24]  562 	mov	b,r7
      0001C4 05 F0            [12]  563 	inc	b
      0001C6 7F 01            [12]  564 	mov	r7,#0x01
      0001C8 7E 00            [12]  565 	mov	r6,#0x00
      0001CA 80 06            [24]  566 	sjmp	00120$
      0001CC                        567 00119$:
      0001CC EF               [12]  568 	mov	a,r7
      0001CD 2F               [12]  569 	add	a,r7
      0001CE FF               [12]  570 	mov	r7,a
      0001CF EE               [12]  571 	mov	a,r6
      0001D0 33               [12]  572 	rlc	a
      0001D1 FE               [12]  573 	mov	r6,a
      0001D2                        574 00120$:
      0001D2 D5 F0 F7         [24]  575 	djnz	b,00119$
      0001D5 EF               [12]  576 	mov	a,r7
      0001D6 F4               [12]  577 	cpl	a
      0001D7 F5 82            [12]  578 	mov	dpl,a
      0001D9 EE               [12]  579 	mov	a,r6
      0001DA F4               [12]  580 	cpl	a
      0001DB F5 83            [12]  581 	mov	dph,a
      0001DD 75 08 04         [24]  582 	mov	__modsint_PARM_2,#0x04
      0001E0 75 09 00         [24]  583 	mov	(__modsint_PARM_2 + 1),#0x00
      0001E3 12 03 01         [24]  584 	lcall	__modsint
      0001E6 AE 82            [24]  585 	mov	r6, dpl
      0001E8 AD 3A            [24]  586 	mov	r5,_threadMask
      0001EA EE               [12]  587 	mov	a,r6
      0001EB 5D               [12]  588 	anl	a,r5
      0001EC F5 3A            [12]  589 	mov	_threadMask,a
                                    590 ;	preemptive.c:238: threadCount--;
      0001EE E5 39            [12]  591 	mov	a,_threadCount
      0001F0 14               [12]  592 	dec	a
      0001F1 F5 39            [12]  593 	mov	_threadCount,a
                                    594 ;	preemptive.c:240: do{
      0001F3                        595 00101$:
                                    596 ;	preemptive.c:241: currentThread = (currentThread + 1) % MAXTHREADS;
      0001F3 AE 38            [24]  597 	mov	r6,_currentThread
      0001F5 7F 00            [12]  598 	mov	r7,#0x00
      0001F7 8E 82            [24]  599 	mov	dpl,r6
      0001F9 8F 83            [24]  600 	mov	dph,r7
      0001FB A3               [24]  601 	inc	dptr
      0001FC 75 08 04         [24]  602 	mov	__modsint_PARM_2,#0x04
      0001FF 8F 09            [24]  603 	mov	(__modsint_PARM_2 + 1),r7
      000201 12 03 01         [24]  604 	lcall	__modsint
      000204 AE 82            [24]  605 	mov	r6, dpl
      000206 AF 83            [24]  606 	mov	r7, dph
      000208 8E 38            [24]  607 	mov	_currentThread,r6
                                    608 ;	preemptive.c:242: } while (!((threadMask >> currentThread) & 1));
      00020A 85 38 F0         [24]  609 	mov	b,_currentThread
      00020D 05 F0            [12]  610 	inc	b
      00020F E5 3A            [12]  611 	mov	a,_threadMask
      000211 80 02            [24]  612 	sjmp	00122$
      000213                        613 00121$:
      000213 C3               [12]  614 	clr	c
      000214 13               [12]  615 	rrc	a
      000215                        616 00122$:
      000215 D5 F0 FB         [24]  617 	djnz	b,00121$
      000218 30 E0 D8         [24]  618 	jnb	acc.0,00101$
                                    619 ;	preemptive.c:244: RESTORESTATE;
      00021B E5 38            [12]  620 	mov	a,_currentThread
      00021D 24 34            [12]  621 	add	a, #_sp
      00021F F9               [12]  622 	mov	r1,a
      000220 87 81            [24]  623 	mov	_SP,@r1
      000222 D0 D0            [24]  624 	POP PSW 
      000224 D0 83            [24]  625 	POP DPH 
      000226 D0 82            [24]  626 	POP DPL 
      000228 D0 F0            [24]  627 	POP B 
      00022A D0 E0            [24]  628 	POP ACC 
      00022C A2 04            [12]  629 	mov	c,_ThreadExit_sloc0_1_0
      00022E 92 AF            [24]  630 	mov	ea,c
                                    631 ;	preemptive.c:246: }
      000230 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'myTimer0Handler'
                                    635 ;------------------------------------------------------------
                                    636 ;	preemptive.c:248: void myTimer0Handler(void){
                                    637 ;	-----------------------------------------
                                    638 ;	 function myTimer0Handler
                                    639 ;	-----------------------------------------
      000231                        640 _myTimer0Handler:
                                    641 ;	preemptive.c:291: }
      000231 D2 05            [12]  642 	setb	_myTimer0Handler_sloc0_1_0
      000233 10 AF 02         [24]  643 	jbc	ea,00118$
      000236 C2 05            [12]  644 	clr	_myTimer0Handler_sloc0_1_0
      000238                        645 00118$:
                                    646 ;	preemptive.c:250: SAVESTATE; //saved interupt because r0-r7 might change
      000238 C0 E0            [24]  647 	PUSH ACC 
      00023A C0 F0            [24]  648 	PUSH B 
      00023C C0 82            [24]  649 	PUSH DPL 
      00023E C0 83            [24]  650 	PUSH DPH 
      000240 C0 D0            [24]  651 	PUSH PSW 
      000242 E5 38            [12]  652 	mov	a,_currentThread
      000244 24 34            [12]  653 	add	a, #_sp
      000246 F8               [12]  654 	mov	r0,a
      000247 A6 81            [24]  655 	mov	@r0,_SP
                                    656 ;	preemptive.c:265: __endasm;
      000249 88 F0            [24]  657 	MOV	B, R0
      00024B 89 82            [24]  658 	MOV	DPL, R1
      00024D 8A 83            [24]  659 	MOV	DPH, R2
      00024F EB               [12]  660 	MOV	A, R3
      000250 C0 E0            [24]  661 	PUSH	ACC
      000252 EC               [12]  662 	MOV	A, R4
      000253 C0 E0            [24]  663 	PUSH	ACC
      000255 ED               [12]  664 	MOV	A, R5
      000256 C0 E0            [24]  665 	PUSH	ACC
      000258 EE               [12]  666 	MOV	A, R6
      000259 C0 E0            [24]  667 	PUSH	ACC
      00025B EF               [12]  668 	MOV	A, R7
      00025C C0 E0            [24]  669 	PUSH	ACC
                                    670 ;	preemptive.c:267: do {
      00025E                        671 00101$:
                                    672 ;	preemptive.c:269: currentThread = (currentThread + 1) % MAXTHREADS;
      00025E AE 38            [24]  673 	mov	r6,_currentThread
      000260 7F 00            [12]  674 	mov	r7,#0x00
      000262 8E 82            [24]  675 	mov	dpl,r6
      000264 8F 83            [24]  676 	mov	dph,r7
      000266 A3               [24]  677 	inc	dptr
      000267 75 08 04         [24]  678 	mov	__modsint_PARM_2,#0x04
      00026A 8F 09            [24]  679 	mov	(__modsint_PARM_2 + 1),r7
      00026C 12 03 01         [24]  680 	lcall	__modsint
      00026F AE 82            [24]  681 	mov	r6, dpl
      000271 AF 83            [24]  682 	mov	r7, dph
      000273 8E 38            [24]  683 	mov	_currentThread,r6
                                    684 ;	preemptive.c:270: } while (!((threadMask >> currentThread) & 1));
      000275 85 38 F0         [24]  685 	mov	b,_currentThread
      000278 05 F0            [12]  686 	inc	b
      00027A E5 3A            [12]  687 	mov	a,_threadMask
      00027C 80 02            [24]  688 	sjmp	00120$
      00027E                        689 00119$:
      00027E C3               [12]  690 	clr	c
      00027F 13               [12]  691 	rrc	a
      000280                        692 00120$:
      000280 D5 F0 FB         [24]  693 	djnz	b,00119$
      000283 30 E0 D8         [24]  694 	jnb	acc.0,00101$
                                    695 ;	preemptive.c:288: __endasm;
      000286 D0 E0            [24]  696 	POP	ACC
      000288 FF               [12]  697 	MOV	R7, A
      000289 D0 E0            [24]  698 	POP	ACC
      00028B FE               [12]  699 	MOV	R6, A
      00028C D0 E0            [24]  700 	POP	ACC
      00028E FD               [12]  701 	MOV	R5, A
      00028F D0 E0            [24]  702 	POP	ACC
      000291 FC               [12]  703 	MOV	R4, A
      000292 D0 E0            [24]  704 	POP	ACC
      000294 FB               [12]  705 	MOV	R3, A
      000295 D0 E0            [24]  706 	POP	ACC
      000297 AA 83            [24]  707 	MOV	R2, DPH
      000299 A9 82            [24]  708 	MOV	R1, DPL
      00029B A8 F0            [24]  709 	MOV	R0, B
                                    710 ;	preemptive.c:290: RESTORESTATE;
      00029D E5 38            [12]  711 	mov	a,_currentThread
      00029F 24 34            [12]  712 	add	a, #_sp
      0002A1 F9               [12]  713 	mov	r1,a
      0002A2 87 81            [24]  714 	mov	_SP,@r1
      0002A4 D0 D0            [24]  715 	POP PSW 
      0002A6 D0 83            [24]  716 	POP DPH 
      0002A8 D0 82            [24]  717 	POP DPL 
      0002AA D0 F0            [24]  718 	POP B 
      0002AC D0 E0            [24]  719 	POP ACC 
      0002AE A2 05            [12]  720 	mov	c,_myTimer0Handler_sloc0_1_0
      0002B0 92 AF            [24]  721 	mov	ea,c
                                    722 ;	preemptive.c:294: __endasm;
      0002B2 32               [24]  723 	RETI
                                    724 ;	preemptive.c:295: }
      0002B3 22               [24]  725 	ret
                                    726 	.area CSEG    (CODE)
                                    727 	.area CONST   (CODE)
                                    728 	.area XINIT   (CODE)
                                    729 	.area CABS    (ABS,CODE)
