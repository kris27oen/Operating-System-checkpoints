                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14549 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module testpreempt
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer0_ISR
                                     12 	.globl __mcs51_genXRAMCLEAR
                                     13 	.globl __mcs51_genXINIT
                                     14 	.globl __mcs51_genRAMCLEAR
                                     15 	.globl __sdcc_gsinit_startup
                                     16 	.globl _main
                                     17 	.globl _Consumer
                                     18 	.globl _Producer
                                     19 	.globl _ThreadCreate
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _buffer_tail
                                    117 	.globl _buffer_head
                                    118 	.globl _buffer
                                    119 	.globl _empty
                                    120 	.globl _full
                                    121 	.globl _mutex
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
                           000020   237 _mutex	=	0x0020
                           000022   238 _full	=	0x0022
                           000024   239 _empty	=	0x0024
                           00003D   240 _buffer	=	0x003d
                           000030   241 _buffer_head	=	0x0030
                           000031   242 _buffer_tail	=	0x0031
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable items in internal ram
                                    245 ;--------------------------------------------------------
                                    246 ;--------------------------------------------------------
                                    247 ; Stack segment in internal ram
                                    248 ;--------------------------------------------------------
                                    249 	.area SSEG
      000021                        250 __start__stack:
      000021                        251 	.ds	1
                                    252 
                                    253 ;--------------------------------------------------------
                                    254 ; indirectly addressable internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area ISEG    (DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; absolute internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area IABS    (ABS,DATA)
                           000033   261 _Producer_buffer_next_10000_7	=	0x0033
                                    262 	.area IABS    (ABS,DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; bit data
                                    265 ;--------------------------------------------------------
                                    266 	.area BSEG    (BIT)
      000000                        267 _Producer_sloc0_1_0:
      000000                        268 	.ds 1
      000001                        269 _Consumer_sloc0_1_0:
      000001                        270 	.ds 1
                                    271 ;--------------------------------------------------------
                                    272 ; paged external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area PSEG    (PAG,XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; uninitialized external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XSEG    (XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; absolute external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XABS    (ABS,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; initialized external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XISEG   (XDATA)
                                    287 	.area HOME    (CODE)
                                    288 	.area GSINIT0 (CODE)
                                    289 	.area GSINIT1 (CODE)
                                    290 	.area GSINIT2 (CODE)
                                    291 	.area GSINIT3 (CODE)
                                    292 	.area GSINIT4 (CODE)
                                    293 	.area GSINIT5 (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area CSEG    (CODE)
                                    297 ;--------------------------------------------------------
                                    298 ; interrupt vector
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
      000000                        301 __interrupt_vect:
      000000 02 00 D7         [24]  302 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  303 	reti
      000004                        304 	.ds	7
      00000B 02 00 DE         [24]  305 	ljmp	_timer0_ISR
                                    306 ;--------------------------------------------------------
                                    307 ; global & static initialisations
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area GSINIT  (CODE)
                                    311 	.area GSFINAL (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.globl __sdcc_gsinit_startup
                                    314 	.globl __sdcc_program_startup
                                    315 	.globl __start__stack
                                    316 	.globl __mcs51_genXINIT
                                    317 	.globl __mcs51_genXRAMCLEAR
                                    318 	.globl __mcs51_genRAMCLEAR
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'Producer'
                                    321 ;------------------------------------------------------------
                                    322 ;	testpreempt.c:35: static __data __at (0x33) char buffer_next = 'A';
      000011 75 33 41         [24]  323 	mov	_Producer_buffer_next_10000_7,#0x41
                                    324 	.area GSFINAL (CODE)
      000014 02 00 0E         [24]  325 	ljmp	__sdcc_program_startup
                                    326 ;--------------------------------------------------------
                                    327 ; Home
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
                                    330 	.area HOME    (CODE)
      00000E                        331 __sdcc_program_startup:
      00000E 02 00 B2         [24]  332 	ljmp	_main
                                    333 ;	return from main will return to caller
                                    334 ;--------------------------------------------------------
                                    335 ; code
                                    336 ;--------------------------------------------------------
                                    337 	.area CSEG    (CODE)
                                    338 ;------------------------------------------------------------
                                    339 ;Allocation info for local variables in function 'Producer'
                                    340 ;------------------------------------------------------------
                                    341 ;	testpreempt.c:29: void Producer(void) {
                                    342 ;	-----------------------------------------
                                    343 ;	 function Producer
                                    344 ;	-----------------------------------------
      000017                        345 _Producer:
                           000007   346 	ar7 = 0x07
                           000006   347 	ar6 = 0x06
                           000005   348 	ar5 = 0x05
                           000004   349 	ar4 = 0x04
                           000003   350 	ar3 = 0x03
                           000002   351 	ar2 = 0x02
                           000001   352 	ar1 = 0x01
                           000000   353 	ar0 = 0x00
                                    354 ;	testpreempt.c:37: while (1) {
      000017                        355 00106$:
                                    356 ;	testpreempt.c:43: SemaphoreWait(empty);
      000017                        357 0$:
      000017 E5 24            [12]  358 	MOV A, _empty 
      000019 60 FC            [24]  359 	JZ 0$ 
      00001B 20 E7 F9         [24]  360 	JB ACC.7, 0$ 
      00001E 15 24            [12]  361 	DEC _empty 
                                    362 ;	testpreempt.c:44: SemaphoreWait(mutex);
      000020                        363 1$:
      000020 E5 20            [12]  364 	MOV A, _mutex 
      000022 60 FC            [24]  365 	JZ 1$ 
      000024 20 E7 F9         [24]  366 	JB ACC.7, 1$ 
      000027 15 20            [12]  367 	DEC _mutex 
                                    368 ;	testpreempt.c:52: }
      000029 D2 00            [12]  369 	setb	_Producer_sloc0_1_0
      00002B 10 AF 02         [24]  370 	jbc	ea,00128$
      00002E C2 00            [12]  371 	clr	_Producer_sloc0_1_0
      000030                        372 00128$:
                                    373 ;	testpreempt.c:47: buffer[buffer_tail] = buffer_next;
      000030 E5 31            [12]  374 	mov	a,_buffer_tail
      000032 24 3D            [12]  375 	add	a, #_buffer
      000034 F8               [12]  376 	mov	r0,a
      000035 A6 33            [24]  377 	mov	@r0,_Producer_buffer_next_10000_7
                                    378 ;	testpreempt.c:48: buffer_tail++;
      000037 E5 31            [12]  379 	mov	a,_buffer_tail
      000039 04               [12]  380 	inc	a
      00003A F5 31            [12]  381 	mov	_buffer_tail,a
                                    382 ;	testpreempt.c:49: if (buffer_tail > 2) buffer_tail = 0;  
      00003C E5 31            [12]  383 	mov	a,_buffer_tail
      00003E 24 FD            [12]  384 	add	a,#0xff - 0x02
      000040 50 03            [24]  385 	jnc	00102$
      000042 75 31 00         [24]  386 	mov	_buffer_tail,#0x00
      000045                        387 00102$:
                                    388 ;	testpreempt.c:50: buffer_next++;
      000045 E5 33            [12]  389 	mov	a,_Producer_buffer_next_10000_7
      000047 04               [12]  390 	inc	a
      000048 F5 33            [12]  391 	mov	_Producer_buffer_next_10000_7,a
                                    392 ;	testpreempt.c:51: if(buffer_next > 'Z') buffer_next = 'A';
      00004A E5 33            [12]  393 	mov	a,_Producer_buffer_next_10000_7
      00004C 24 A5            [12]  394 	add	a,#0xff - 0x5a
      00004E 50 03            [24]  395 	jnc	00104$
      000050 75 33 41         [24]  396 	mov	_Producer_buffer_next_10000_7,#0x41
      000053                        397 00104$:
      000053 A2 00            [12]  398 	mov	c,_Producer_sloc0_1_0
      000055 92 AF            [24]  399 	mov	ea,c
                                    400 ;	testpreempt.c:54: SemaphoreSignal(mutex);
      000057 05 20            [12]  401 	INC _mutex 
                                    402 ;	testpreempt.c:55: SemaphoreSignal(full);
      000059 05 22            [12]  403 	INC _full 
                                    404 ;	testpreempt.c:57: }
      00005B 80 BA            [24]  405 	sjmp	00106$
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'Consumer'
                                    408 ;------------------------------------------------------------
                                    409 ;	testpreempt.c:64: void Consumer(void) {
                                    410 ;	-----------------------------------------
                                    411 ;	 function Consumer
                                    412 ;	-----------------------------------------
      00005D                        413 _Consumer:
                                    414 ;	testpreempt.c:66: EA = 0;
                                    415 ;	assignBit
      00005D C2 AF            [12]  416 	clr	_EA
                                    417 ;	testpreempt.c:67: TMOD |= 0x20;
      00005F 43 89 20         [24]  418 	orl	_TMOD,#0x20
                                    419 ;	testpreempt.c:68: TH1 = -6;
      000062 75 8D FA         [24]  420 	mov	_TH1,#0xfa
                                    421 ;	testpreempt.c:69: SCON = 0x50;
      000065 75 98 50         [24]  422 	mov	_SCON,#0x50
                                    423 ;	testpreempt.c:70: TR1 = 1;
                                    424 ;	assignBit
      000068 D2 8E            [12]  425 	setb	_TR1
                                    426 ;	testpreempt.c:71: TI = 1;
                                    427 ;	assignBit
      00006A D2 99            [12]  428 	setb	_TI
                                    429 ;	testpreempt.c:72: EA = 1;
                                    430 ;	assignBit
      00006C D2 AF            [12]  431 	setb	_EA
                                    432 ;	testpreempt.c:73: while (1) {
      00006E                        433 00107$:
                                    434 ;	testpreempt.c:80: SemaphoreWait(full);
      00006E                        435 2$:
      00006E E5 22            [12]  436 	MOV A, _full 
      000070 60 FC            [24]  437 	JZ 2$ 
      000072 20 E7 F9         [24]  438 	JB ACC.7, 2$ 
      000075 15 22            [12]  439 	DEC _full 
                                    440 ;	testpreempt.c:81: SemaphoreWait(mutex);
      000077                        441 3$:
      000077 E5 20            [12]  442 	MOV A, _mutex 
      000079 60 FC            [24]  443 	JZ 3$ 
      00007B 20 E7 F9         [24]  444 	JB ACC.7, 3$ 
      00007E 15 20            [12]  445 	DEC _mutex 
                                    446 ;	testpreempt.c:83: while (!TI);
      000080                        447 00101$:
      000080 30 99 FD         [24]  448 	jnb	_TI,00101$
                                    449 ;	testpreempt.c:90: }
      000083 D2 01            [12]  450 	setb	_Consumer_sloc0_1_0
      000085 10 AF 02         [24]  451 	jbc	ea,00136$
      000088 C2 01            [12]  452 	clr	_Consumer_sloc0_1_0
      00008A                        453 00136$:
                                    454 ;	testpreempt.c:85: SBUF = buffer[buffer_head];
      00008A E5 30            [12]  455 	mov	a,_buffer_head
      00008C 24 3D            [12]  456 	add	a, #_buffer
      00008E F9               [12]  457 	mov	r1,a
      00008F 87 99            [24]  458 	mov	_SBUF,@r1
                                    459 ;	testpreempt.c:86: buffer[buffer_head] = ' ';
      000091 E5 30            [12]  460 	mov	a,_buffer_head
      000093 24 3D            [12]  461 	add	a, #_buffer
      000095 F8               [12]  462 	mov	r0,a
      000096 76 20            [12]  463 	mov	@r0,#0x20
                                    464 ;	testpreempt.c:87: buffer_head++;
      000098 E5 30            [12]  465 	mov	a,_buffer_head
      00009A 04               [12]  466 	inc	a
      00009B F5 30            [12]  467 	mov	_buffer_head,a
                                    468 ;	testpreempt.c:88: if(buffer_head > 2) buffer_head = 0;
      00009D E5 30            [12]  469 	mov	a,_buffer_head
      00009F 24 FD            [12]  470 	add	a,#0xff - 0x02
      0000A1 50 03            [24]  471 	jnc	00105$
      0000A3 75 30 00         [24]  472 	mov	_buffer_head,#0x00
      0000A6                        473 00105$:
                                    474 ;	testpreempt.c:89: TI = 0;
                                    475 ;	assignBit
      0000A6 C2 99            [12]  476 	clr	_TI
      0000A8 A2 01            [12]  477 	mov	c,_Consumer_sloc0_1_0
      0000AA 92 AF            [24]  478 	mov	ea,c
                                    479 ;	testpreempt.c:92: SemaphoreSignal(mutex);
      0000AC 05 20            [12]  480 	INC _mutex 
                                    481 ;	testpreempt.c:93: SemaphoreSignal(empty);
      0000AE 05 24            [12]  482 	INC _empty 
                                    483 ;	testpreempt.c:95: }
      0000B0 80 BC            [24]  484 	sjmp	00107$
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'main'
                                    487 ;------------------------------------------------------------
                                    488 ;	testpreempt.c:102: void main(void) {
                                    489 ;	-----------------------------------------
                                    490 ;	 function main
                                    491 ;	-----------------------------------------
      0000B2                        492 _main:
                                    493 ;	testpreempt.c:110: SemaphoreCreate(mutex, 1);
      0000B2 75 20 01         [24]  494 	mov	_mutex,#0x01
                                    495 ;	testpreempt.c:111: SemaphoreCreate(full, 0);
      0000B5 E4               [12]  496 	clr	a
      0000B6 F5 21            [12]  497 	mov	(_mutex + 1),a
      0000B8 F5 22            [12]  498 	mov	_full,a
      0000BA F5 23            [12]  499 	mov	(_full + 1),a
                                    500 ;	testpreempt.c:112: SemaphoreCreate(empty,3);
      0000BC 75 24 03         [24]  501 	mov	_empty,#0x03
      0000BF F5 25            [12]  502 	mov	(_empty + 1),a
                                    503 ;	testpreempt.c:115: buffer[0] = ' ';
      0000C1 75 3D 20         [24]  504 	mov	_buffer,#0x20
                                    505 ;	testpreempt.c:116: buffer[1] = ' ';
      0000C4 75 3E 20         [24]  506 	mov	(_buffer + 0x0001),#0x20
                                    507 ;	testpreempt.c:117: buffer[2] = ' ';
      0000C7 75 3F 20         [24]  508 	mov	(_buffer + 0x0002),#0x20
                                    509 ;	testpreempt.c:118: buffer_head = 0;
      0000CA F5 30            [12]  510 	mov	_buffer_head,a
                                    511 ;	testpreempt.c:119: buffer_tail = 0;
      0000CC F5 31            [12]  512 	mov	_buffer_tail,a
                                    513 ;	testpreempt.c:121: ThreadCreate(Producer);
      0000CE 90 00 17         [24]  514 	mov	dptr,#_Producer
      0000D1 12 01 0E         [24]  515 	lcall	_ThreadCreate
                                    516 ;	testpreempt.c:122: Consumer();
                                    517 ;	testpreempt.c:123: }
      0000D4 02 00 5D         [24]  518 	ljmp	_Consumer
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    521 ;------------------------------------------------------------
                                    522 ;	testpreempt.c:125: void _sdcc_gsinit_startup(void) {
                                    523 ;	-----------------------------------------
                                    524 ;	 function _sdcc_gsinit_startup
                                    525 ;	-----------------------------------------
      0000D7                        526 __sdcc_gsinit_startup:
                                    527 ;	testpreempt.c:128: __endasm;
      0000D7 02 00 E2         [24]  528 	ljmp	_Bootstrap
                                    529 ;	testpreempt.c:129: }
      0000DA 22               [24]  530 	ret
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    533 ;------------------------------------------------------------
                                    534 ;	testpreempt.c:130: void _mcs51_genRAMCLEAR(void) {}
                                    535 ;	-----------------------------------------
                                    536 ;	 function _mcs51_genRAMCLEAR
                                    537 ;	-----------------------------------------
      0000DB                        538 __mcs51_genRAMCLEAR:
      0000DB 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    542 ;------------------------------------------------------------
                                    543 ;	testpreempt.c:131: void _mcs51_genXINIT(void) {}
                                    544 ;	-----------------------------------------
                                    545 ;	 function _mcs51_genXINIT
                                    546 ;	-----------------------------------------
      0000DC                        547 __mcs51_genXINIT:
      0000DC 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    551 ;------------------------------------------------------------
                                    552 ;	testpreempt.c:132: void _mcs51_genXRAMCLEAR(void) {}
                                    553 ;	-----------------------------------------
                                    554 ;	 function _mcs51_genXRAMCLEAR
                                    555 ;	-----------------------------------------
      0000DD                        556 __mcs51_genXRAMCLEAR:
      0000DD 22               [24]  557 	ret
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'timer0_ISR'
                                    560 ;------------------------------------------------------------
                                    561 ;	testpreempt.c:134: void timer0_ISR(void) __interrupt(1) {
                                    562 ;	-----------------------------------------
                                    563 ;	 function timer0_ISR
                                    564 ;	-----------------------------------------
      0000DE                        565 _timer0_ISR:
                                    566 ;	testpreempt.c:137: __endasm;
      0000DE 02 02 8A         [24]  567 	ljmp	_myTimer0Handler
                                    568 ;	testpreempt.c:138: }
      0000E1 32               [24]  569 	reti
                                    570 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    571 ;	eliminated unneeded push/pop not_psw
                                    572 ;	eliminated unneeded push/pop dpl
                                    573 ;	eliminated unneeded push/pop dph
                                    574 ;	eliminated unneeded push/pop b
                                    575 ;	eliminated unneeded push/pop acc
                                    576 	.area CSEG    (CODE)
                                    577 	.area CONST   (CODE)
                                    578 	.area XINIT   (CODE)
                                    579 	.area CABS    (ABS,CODE)
