                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14549 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module test3threads
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
                                     18 	.globl _Producer2
                                     19 	.globl _Producer1
                                     20 	.globl _ThreadCreate
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _buffer_tail
                                    118 	.globl _buffer_head
                                    119 	.globl _buffer
                                    120 	.globl _p2
                                    121 	.globl _p1
                                    122 	.globl _empty
                                    123 	.globl _full
                                    124 	.globl _mutex
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                                    151 ;--------------------------------------------------------
                                    152 ; special function bits
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0_0	=	0x0080
                           000081   157 _P0_1	=	0x0081
                           000082   158 _P0_2	=	0x0082
                           000083   159 _P0_3	=	0x0083
                           000084   160 _P0_4	=	0x0084
                           000085   161 _P0_5	=	0x0085
                           000086   162 _P0_6	=	0x0086
                           000087   163 _P0_7	=	0x0087
                           000088   164 _IT0	=	0x0088
                           000089   165 _IE0	=	0x0089
                           00008A   166 _IT1	=	0x008a
                           00008B   167 _IE1	=	0x008b
                           00008C   168 _TR0	=	0x008c
                           00008D   169 _TF0	=	0x008d
                           00008E   170 _TR1	=	0x008e
                           00008F   171 _TF1	=	0x008f
                           000090   172 _P1_0	=	0x0090
                           000091   173 _P1_1	=	0x0091
                           000092   174 _P1_2	=	0x0092
                           000093   175 _P1_3	=	0x0093
                           000094   176 _P1_4	=	0x0094
                           000095   177 _P1_5	=	0x0095
                           000096   178 _P1_6	=	0x0096
                           000097   179 _P1_7	=	0x0097
                           000098   180 _RI	=	0x0098
                           000099   181 _TI	=	0x0099
                           00009A   182 _RB8	=	0x009a
                           00009B   183 _TB8	=	0x009b
                           00009C   184 _REN	=	0x009c
                           00009D   185 _SM2	=	0x009d
                           00009E   186 _SM1	=	0x009e
                           00009F   187 _SM0	=	0x009f
                           0000A0   188 _P2_0	=	0x00a0
                           0000A1   189 _P2_1	=	0x00a1
                           0000A2   190 _P2_2	=	0x00a2
                           0000A3   191 _P2_3	=	0x00a3
                           0000A4   192 _P2_4	=	0x00a4
                           0000A5   193 _P2_5	=	0x00a5
                           0000A6   194 _P2_6	=	0x00a6
                           0000A7   195 _P2_7	=	0x00a7
                           0000A8   196 _EX0	=	0x00a8
                           0000A9   197 _ET0	=	0x00a9
                           0000AA   198 _EX1	=	0x00aa
                           0000AB   199 _ET1	=	0x00ab
                           0000AC   200 _ES	=	0x00ac
                           0000AF   201 _EA	=	0x00af
                           0000B0   202 _P3_0	=	0x00b0
                           0000B1   203 _P3_1	=	0x00b1
                           0000B2   204 _P3_2	=	0x00b2
                           0000B3   205 _P3_3	=	0x00b3
                           0000B4   206 _P3_4	=	0x00b4
                           0000B5   207 _P3_5	=	0x00b5
                           0000B6   208 _P3_6	=	0x00b6
                           0000B7   209 _P3_7	=	0x00b7
                           0000B0   210 _RXD	=	0x00b0
                           0000B1   211 _TXD	=	0x00b1
                           0000B2   212 _INT0	=	0x00b2
                           0000B3   213 _INT1	=	0x00b3
                           0000B4   214 _T0	=	0x00b4
                           0000B5   215 _T1	=	0x00b5
                           0000B6   216 _WR	=	0x00b6
                           0000B7   217 _RD	=	0x00b7
                           0000B8   218 _PX0	=	0x00b8
                           0000B9   219 _PT0	=	0x00b9
                           0000BA   220 _PX1	=	0x00ba
                           0000BB   221 _PT1	=	0x00bb
                           0000BC   222 _PS	=	0x00bc
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable register banks
                                    233 ;--------------------------------------------------------
                                    234 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        235 	.ds 8
                                    236 ;--------------------------------------------------------
                                    237 ; internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area DSEG    (DATA)
                           000020   240 _mutex	=	0x0020
                           000022   241 _full	=	0x0022
                           000024   242 _empty	=	0x0024
                           000028   243 _p1	=	0x0028
                           000029   244 _p2	=	0x0029
                           00003D   245 _buffer	=	0x003d
                           000030   246 _buffer_head	=	0x0030
                           000031   247 _buffer_tail	=	0x0031
                                    248 ;--------------------------------------------------------
                                    249 ; overlayable items in internal ram
                                    250 ;--------------------------------------------------------
                                    251 ;--------------------------------------------------------
                                    252 ; Stack segment in internal ram
                                    253 ;--------------------------------------------------------
                                    254 	.area SSEG
      000021                        255 __start__stack:
      000021                        256 	.ds	1
                                    257 
                                    258 ;--------------------------------------------------------
                                    259 ; indirectly addressable internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area ISEG    (DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute internal ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area IABS    (ABS,DATA)
                           000033   266 _Producer1_buffer_next_10000_7	=	0x0033
                           000027   267 _Producer2_buffer_next2_10000_15	=	0x0027
                                    268 	.area IABS    (ABS,DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; bit data
                                    271 ;--------------------------------------------------------
                                    272 	.area BSEG    (BIT)
      000000                        273 _Producer1_sloc0_1_0:
      000000                        274 	.ds 1
      000001                        275 _Producer2_sloc0_1_0:
      000001                        276 	.ds 1
      000002                        277 _Consumer_sloc0_1_0:
      000002                        278 	.ds 1
                                    279 ;--------------------------------------------------------
                                    280 ; paged external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area PSEG    (PAG,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; uninitialized external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XSEG    (XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XABS    (ABS,XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; initialized external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XISEG   (XDATA)
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT0 (CODE)
                                    297 	.area GSINIT1 (CODE)
                                    298 	.area GSINIT2 (CODE)
                                    299 	.area GSINIT3 (CODE)
                                    300 	.area GSINIT4 (CODE)
                                    301 	.area GSINIT5 (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area CSEG    (CODE)
                                    305 ;--------------------------------------------------------
                                    306 ; interrupt vector
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
      000000                        309 __interrupt_vect:
      000000 02 01 2F         [24]  310 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  311 	reti
      000004                        312 	.ds	7
      00000B 02 01 36         [24]  313 	ljmp	_timer0_ISR
                                    314 ;--------------------------------------------------------
                                    315 ; global & static initialisations
                                    316 ;--------------------------------------------------------
                                    317 	.area HOME    (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.area GSFINAL (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.globl __sdcc_gsinit_startup
                                    322 	.globl __sdcc_program_startup
                                    323 	.globl __start__stack
                                    324 	.globl __mcs51_genXINIT
                                    325 	.globl __mcs51_genXRAMCLEAR
                                    326 	.globl __mcs51_genRAMCLEAR
                                    327 ;------------------------------------------------------------
                                    328 ;Allocation info for local variables in function 'Producer1'
                                    329 ;------------------------------------------------------------
                                    330 ;	test3threads.c:37: static __data __at (0x33) char buffer_next = 'A';
      000011 75 33 41         [24]  331 	mov	_Producer1_buffer_next_10000_7,#0x41
                                    332 ;------------------------------------------------------------
                                    333 ;Allocation info for local variables in function 'Producer2'
                                    334 ;------------------------------------------------------------
                                    335 ;	test3threads.c:69: static __data __at (0x27) char buffer_next2 = '0';
      000014 75 27 30         [24]  336 	mov	_Producer2_buffer_next2_10000_15,#0x30
                                    337 	.area GSFINAL (CODE)
      000017 02 00 0E         [24]  338 	ljmp	__sdcc_program_startup
                                    339 ;--------------------------------------------------------
                                    340 ; Home
                                    341 ;--------------------------------------------------------
                                    342 	.area HOME    (CODE)
                                    343 	.area HOME    (CODE)
      00000E                        344 __sdcc_program_startup:
      00000E 02 00 FB         [24]  345 	ljmp	_main
                                    346 ;	return from main will return to caller
                                    347 ;--------------------------------------------------------
                                    348 ; code
                                    349 ;--------------------------------------------------------
                                    350 	.area CSEG    (CODE)
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function 'Producer1'
                                    353 ;------------------------------------------------------------
                                    354 ;	test3threads.c:31: void Producer1(void) { // A to Z
                                    355 ;	-----------------------------------------
                                    356 ;	 function Producer1
                                    357 ;	-----------------------------------------
      00001A                        358 _Producer1:
                           000007   359 	ar7 = 0x07
                           000006   360 	ar6 = 0x06
                           000005   361 	ar5 = 0x05
                           000004   362 	ar4 = 0x04
                           000003   363 	ar3 = 0x03
                           000002   364 	ar2 = 0x02
                           000001   365 	ar1 = 0x01
                           000000   366 	ar0 = 0x00
                                    367 ;	test3threads.c:39: while (1) {
      00001A                        368 00106$:
                                    369 ;	test3threads.c:46: SemaphoreWait(empty);
      00001A                        370 0$:
      00001A E5 24            [12]  371 	MOV A, _empty 
      00001C 60 FC            [24]  372 	JZ 0$ 
      00001E 20 E7 F9         [24]  373 	JB ACC.7, 0$ 
      000021 15 24            [12]  374 	DEC _empty 
                                    375 ;	test3threads.c:47: SemaphoreWait(mutex);
      000023                        376 1$:
      000023 E5 20            [12]  377 	MOV A, _mutex 
      000025 60 FC            [24]  378 	JZ 1$ 
      000027 20 E7 F9         [24]  379 	JB ACC.7, 1$ 
      00002A 15 20            [12]  380 	DEC _mutex 
                                    381 ;	test3threads.c:55: }
      00002C D2 00            [12]  382 	setb	_Producer1_sloc0_1_0
      00002E 10 AF 02         [24]  383 	jbc	ea,00128$
      000031 C2 00            [12]  384 	clr	_Producer1_sloc0_1_0
      000033                        385 00128$:
                                    386 ;	test3threads.c:50: buffer[buffer_tail] = buffer_next;
      000033 E5 31            [12]  387 	mov	a,_buffer_tail
      000035 24 3D            [12]  388 	add	a, #_buffer
      000037 F8               [12]  389 	mov	r0,a
      000038 A6 33            [24]  390 	mov	@r0,_Producer1_buffer_next_10000_7
                                    391 ;	test3threads.c:51: buffer_tail++;
      00003A E5 31            [12]  392 	mov	a,_buffer_tail
      00003C 04               [12]  393 	inc	a
      00003D F5 31            [12]  394 	mov	_buffer_tail,a
                                    395 ;	test3threads.c:52: if (buffer_tail > 2) buffer_tail = 0;  
      00003F E5 31            [12]  396 	mov	a,_buffer_tail
      000041 24 FD            [12]  397 	add	a,#0xff - 0x02
      000043 50 03            [24]  398 	jnc	00102$
      000045 75 31 00         [24]  399 	mov	_buffer_tail,#0x00
      000048                        400 00102$:
                                    401 ;	test3threads.c:53: buffer_next++;
      000048 E5 33            [12]  402 	mov	a,_Producer1_buffer_next_10000_7
      00004A 04               [12]  403 	inc	a
      00004B F5 33            [12]  404 	mov	_Producer1_buffer_next_10000_7,a
                                    405 ;	test3threads.c:54: if(buffer_next > 'Z') buffer_next = 'A';
      00004D E5 33            [12]  406 	mov	a,_Producer1_buffer_next_10000_7
      00004F 24 A5            [12]  407 	add	a,#0xff - 0x5a
      000051 50 03            [24]  408 	jnc	00104$
      000053 75 33 41         [24]  409 	mov	_Producer1_buffer_next_10000_7,#0x41
      000056                        410 00104$:
      000056 A2 00            [12]  411 	mov	c,_Producer1_sloc0_1_0
      000058 92 AF            [24]  412 	mov	ea,c
                                    413 ;	test3threads.c:57: SemaphoreSignal(mutex);
      00005A 05 20            [12]  414 	INC _mutex 
                                    415 ;	test3threads.c:58: SemaphoreSignal(full);
      00005C 05 22            [12]  416 	INC _full 
                                    417 ;	test3threads.c:61: }
      00005E 80 BA            [24]  418 	sjmp	00106$
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'Producer2'
                                    421 ;------------------------------------------------------------
                                    422 ;	test3threads.c:63: void Producer2(void) { // 0 to 9
                                    423 ;	-----------------------------------------
                                    424 ;	 function Producer2
                                    425 ;	-----------------------------------------
      000060                        426 _Producer2:
                                    427 ;	test3threads.c:71: while (1) {
      000060                        428 00106$:
                                    429 ;	test3threads.c:78: SemaphoreWait(empty);
      000060                        430 2$:
      000060 E5 24            [12]  431 	MOV A, _empty 
      000062 60 FC            [24]  432 	JZ 2$ 
      000064 20 E7 F9         [24]  433 	JB ACC.7, 2$ 
      000067 15 24            [12]  434 	DEC _empty 
                                    435 ;	test3threads.c:79: SemaphoreWait(mutex);
      000069                        436 3$:
      000069 E5 20            [12]  437 	MOV A, _mutex 
      00006B 60 FC            [24]  438 	JZ 3$ 
      00006D 20 E7 F9         [24]  439 	JB ACC.7, 3$ 
      000070 15 20            [12]  440 	DEC _mutex 
                                    441 ;	test3threads.c:87: }
      000072 D2 01            [12]  442 	setb	_Producer2_sloc0_1_0
      000074 10 AF 02         [24]  443 	jbc	ea,00128$
      000077 C2 01            [12]  444 	clr	_Producer2_sloc0_1_0
      000079                        445 00128$:
                                    446 ;	test3threads.c:82: buffer[buffer_tail] = buffer_next2;
      000079 E5 31            [12]  447 	mov	a,_buffer_tail
      00007B 24 3D            [12]  448 	add	a, #_buffer
      00007D F8               [12]  449 	mov	r0,a
      00007E A6 27            [24]  450 	mov	@r0,_Producer2_buffer_next2_10000_15
                                    451 ;	test3threads.c:83: buffer_tail++;
      000080 E5 31            [12]  452 	mov	a,_buffer_tail
      000082 04               [12]  453 	inc	a
      000083 F5 31            [12]  454 	mov	_buffer_tail,a
                                    455 ;	test3threads.c:84: if (buffer_tail > 2) buffer_tail = 0;  
      000085 E5 31            [12]  456 	mov	a,_buffer_tail
      000087 24 FD            [12]  457 	add	a,#0xff - 0x02
      000089 50 03            [24]  458 	jnc	00102$
      00008B 75 31 00         [24]  459 	mov	_buffer_tail,#0x00
      00008E                        460 00102$:
                                    461 ;	test3threads.c:85: buffer_next2++;
      00008E E5 27            [12]  462 	mov	a,_Producer2_buffer_next2_10000_15
      000090 04               [12]  463 	inc	a
      000091 F5 27            [12]  464 	mov	_Producer2_buffer_next2_10000_15,a
                                    465 ;	test3threads.c:86: if(buffer_next2 > '9') buffer_next2 = '0';
      000093 E5 27            [12]  466 	mov	a,_Producer2_buffer_next2_10000_15
      000095 24 C6            [12]  467 	add	a,#0xff - 0x39
      000097 50 03            [24]  468 	jnc	00104$
      000099 75 27 30         [24]  469 	mov	_Producer2_buffer_next2_10000_15,#0x30
      00009C                        470 00104$:
      00009C A2 01            [12]  471 	mov	c,_Producer2_sloc0_1_0
      00009E 92 AF            [24]  472 	mov	ea,c
                                    473 ;	test3threads.c:89: SemaphoreSignal(mutex);
      0000A0 05 20            [12]  474 	INC _mutex 
                                    475 ;	test3threads.c:90: SemaphoreSignal(full);
      0000A2 05 22            [12]  476 	INC _full 
                                    477 ;	test3threads.c:93: }
      0000A4 80 BA            [24]  478 	sjmp	00106$
                                    479 ;------------------------------------------------------------
                                    480 ;Allocation info for local variables in function 'Consumer'
                                    481 ;------------------------------------------------------------
                                    482 ;	test3threads.c:100: void Consumer(void) {
                                    483 ;	-----------------------------------------
                                    484 ;	 function Consumer
                                    485 ;	-----------------------------------------
      0000A6                        486 _Consumer:
                                    487 ;	test3threads.c:102: EA = 0;
                                    488 ;	assignBit
      0000A6 C2 AF            [12]  489 	clr	_EA
                                    490 ;	test3threads.c:103: TMOD |= 0x20;
      0000A8 43 89 20         [24]  491 	orl	_TMOD,#0x20
                                    492 ;	test3threads.c:104: TH1 = -6;
      0000AB 75 8D FA         [24]  493 	mov	_TH1,#0xfa
                                    494 ;	test3threads.c:105: SCON = 0x50;
      0000AE 75 98 50         [24]  495 	mov	_SCON,#0x50
                                    496 ;	test3threads.c:106: TR1 = 1;
                                    497 ;	assignBit
      0000B1 D2 8E            [12]  498 	setb	_TR1
                                    499 ;	test3threads.c:107: TI = 1;
                                    500 ;	assignBit
      0000B3 D2 99            [12]  501 	setb	_TI
                                    502 ;	test3threads.c:108: EA = 1;
                                    503 ;	assignBit
      0000B5 D2 AF            [12]  504 	setb	_EA
                                    505 ;	test3threads.c:109: while (1) {
      0000B7                        506 00107$:
                                    507 ;	test3threads.c:116: SemaphoreWait(full);
      0000B7                        508 4$:
      0000B7 E5 22            [12]  509 	MOV A, _full 
      0000B9 60 FC            [24]  510 	JZ 4$ 
      0000BB 20 E7 F9         [24]  511 	JB ACC.7, 4$ 
      0000BE 15 22            [12]  512 	DEC _full 
                                    513 ;	test3threads.c:117: SemaphoreWait(mutex);
      0000C0                        514 5$:
      0000C0 E5 20            [12]  515 	MOV A, _mutex 
      0000C2 60 FC            [24]  516 	JZ 5$ 
      0000C4 20 E7 F9         [24]  517 	JB ACC.7, 5$ 
      0000C7 15 20            [12]  518 	DEC _mutex 
                                    519 ;	test3threads.c:119: while (!TI);
      0000C9                        520 00101$:
      0000C9 30 99 FD         [24]  521 	jnb	_TI,00101$
                                    522 ;	test3threads.c:126: }
      0000CC D2 02            [12]  523 	setb	_Consumer_sloc0_1_0
      0000CE 10 AF 02         [24]  524 	jbc	ea,00136$
      0000D1 C2 02            [12]  525 	clr	_Consumer_sloc0_1_0
      0000D3                        526 00136$:
                                    527 ;	test3threads.c:121: SBUF = buffer[buffer_head];
      0000D3 E5 30            [12]  528 	mov	a,_buffer_head
      0000D5 24 3D            [12]  529 	add	a, #_buffer
      0000D7 F9               [12]  530 	mov	r1,a
      0000D8 87 99            [24]  531 	mov	_SBUF,@r1
                                    532 ;	test3threads.c:122: buffer[buffer_head] = ' ';
      0000DA E5 30            [12]  533 	mov	a,_buffer_head
      0000DC 24 3D            [12]  534 	add	a, #_buffer
      0000DE F8               [12]  535 	mov	r0,a
      0000DF 76 20            [12]  536 	mov	@r0,#0x20
                                    537 ;	test3threads.c:123: buffer_head++;
      0000E1 E5 30            [12]  538 	mov	a,_buffer_head
      0000E3 04               [12]  539 	inc	a
      0000E4 F5 30            [12]  540 	mov	_buffer_head,a
                                    541 ;	test3threads.c:124: if(buffer_head > 2) buffer_head = 0;
      0000E6 E5 30            [12]  542 	mov	a,_buffer_head
      0000E8 24 FD            [12]  543 	add	a,#0xff - 0x02
      0000EA 50 03            [24]  544 	jnc	00105$
      0000EC 75 30 00         [24]  545 	mov	_buffer_head,#0x00
      0000EF                        546 00105$:
                                    547 ;	test3threads.c:125: TI = 0;
                                    548 ;	assignBit
      0000EF C2 99            [12]  549 	clr	_TI
      0000F1 A2 02            [12]  550 	mov	c,_Consumer_sloc0_1_0
      0000F3 92 AF            [24]  551 	mov	ea,c
                                    552 ;	test3threads.c:128: SemaphoreSignal(mutex);
      0000F5 05 20            [12]  553 	INC _mutex 
                                    554 ;	test3threads.c:129: SemaphoreSignal(empty);
      0000F7 05 24            [12]  555 	INC _empty 
                                    556 ;	test3threads.c:131: }
      0000F9 80 BC            [24]  557 	sjmp	00107$
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'main'
                                    560 ;------------------------------------------------------------
                                    561 ;	test3threads.c:138: void main(void) {
                                    562 ;	-----------------------------------------
                                    563 ;	 function main
                                    564 ;	-----------------------------------------
      0000FB                        565 _main:
                                    566 ;	test3threads.c:146: SemaphoreCreate(mutex, 1);
      0000FB 75 20 01         [24]  567 	mov	_mutex,#0x01
                                    568 ;	test3threads.c:147: SemaphoreCreate(full, 0);
      0000FE E4               [12]  569 	clr	a
      0000FF F5 21            [12]  570 	mov	(_mutex + 1),a
      000101 F5 22            [12]  571 	mov	_full,a
      000103 F5 23            [12]  572 	mov	(_full + 1),a
                                    573 ;	test3threads.c:148: SemaphoreCreate(empty,3);
      000105 75 24 03         [24]  574 	mov	_empty,#0x03
      000108 F5 25            [12]  575 	mov	(_empty + 1),a
                                    576 ;	test3threads.c:149: SemaphoreCreate(p1, 1);
      00010A 75 28 01         [24]  577 	mov	_p1,#0x01
      00010D F5 29            [12]  578 	mov	(_p1 + 1),a
                                    579 ;	test3threads.c:150: SemaphoreCreate(p2, 0);
      00010F F5 29            [12]  580 	mov	_p2,a
      000111 F5 2A            [12]  581 	mov	(_p2 + 1),a
                                    582 ;	test3threads.c:153: buffer[0] = ' ';
      000113 75 3D 20         [24]  583 	mov	_buffer,#0x20
                                    584 ;	test3threads.c:154: buffer[1] = ' ';
      000116 75 3E 20         [24]  585 	mov	(_buffer + 0x0001),#0x20
                                    586 ;	test3threads.c:155: buffer[2] = ' ';
      000119 75 3F 20         [24]  587 	mov	(_buffer + 0x0002),#0x20
                                    588 ;	test3threads.c:156: buffer_head = 0;
      00011C F5 30            [12]  589 	mov	_buffer_head,a
                                    590 ;	test3threads.c:157: buffer_tail = 0;
      00011E F5 31            [12]  591 	mov	_buffer_tail,a
                                    592 ;	test3threads.c:159: ThreadCreate(Producer1);
      000120 90 00 1A         [24]  593 	mov	dptr,#_Producer1
      000123 12 01 66         [24]  594 	lcall	_ThreadCreate
                                    595 ;	test3threads.c:160: ThreadCreate(Producer2);
      000126 90 00 60         [24]  596 	mov	dptr,#_Producer2
      000129 12 01 66         [24]  597 	lcall	_ThreadCreate
                                    598 ;	test3threads.c:161: Consumer();
                                    599 ;	test3threads.c:162: }
      00012C 02 00 A6         [24]  600 	ljmp	_Consumer
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    603 ;------------------------------------------------------------
                                    604 ;	test3threads.c:164: void _sdcc_gsinit_startup(void) {
                                    605 ;	-----------------------------------------
                                    606 ;	 function _sdcc_gsinit_startup
                                    607 ;	-----------------------------------------
      00012F                        608 __sdcc_gsinit_startup:
                                    609 ;	test3threads.c:167: __endasm;
      00012F 02 01 3A         [24]  610 	ljmp	_Bootstrap
                                    611 ;	test3threads.c:168: }
      000132 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    615 ;------------------------------------------------------------
                                    616 ;	test3threads.c:169: void _mcs51_genRAMCLEAR(void) {}
                                    617 ;	-----------------------------------------
                                    618 ;	 function _mcs51_genRAMCLEAR
                                    619 ;	-----------------------------------------
      000133                        620 __mcs51_genRAMCLEAR:
      000133 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    624 ;------------------------------------------------------------
                                    625 ;	test3threads.c:170: void _mcs51_genXINIT(void) {}
                                    626 ;	-----------------------------------------
                                    627 ;	 function _mcs51_genXINIT
                                    628 ;	-----------------------------------------
      000134                        629 __mcs51_genXINIT:
      000134 22               [24]  630 	ret
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    633 ;------------------------------------------------------------
                                    634 ;	test3threads.c:171: void _mcs51_genXRAMCLEAR(void) {}
                                    635 ;	-----------------------------------------
                                    636 ;	 function _mcs51_genXRAMCLEAR
                                    637 ;	-----------------------------------------
      000135                        638 __mcs51_genXRAMCLEAR:
      000135 22               [24]  639 	ret
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'timer0_ISR'
                                    642 ;------------------------------------------------------------
                                    643 ;	test3threads.c:173: void timer0_ISR(void) __interrupt(1) {
                                    644 ;	-----------------------------------------
                                    645 ;	 function timer0_ISR
                                    646 ;	-----------------------------------------
      000136                        647 _timer0_ISR:
                                    648 ;	test3threads.c:176: __endasm;
      000136 02 02 E2         [24]  649 	ljmp	_myTimer0Handler
                                    650 ;	test3threads.c:177: }
      000139 32               [24]  651 	reti
                                    652 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    653 ;	eliminated unneeded push/pop not_psw
                                    654 ;	eliminated unneeded push/pop dpl
                                    655 ;	eliminated unneeded push/pop dph
                                    656 ;	eliminated unneeded push/pop b
                                    657 ;	eliminated unneeded push/pop acc
                                    658 	.area CSEG    (CODE)
                                    659 	.area CONST   (CODE)
                                    660 	.area XINIT   (CODE)
                                    661 	.area CABS    (ABS,CODE)
