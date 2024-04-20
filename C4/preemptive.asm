;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14549 (MINGW64)
;--------------------------------------------------------
	.module preemptive
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bootstrap
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _threadMask
	.globl _threadCount
	.globl _currentThread
	.globl _sp
	.globl _ThreadCreate
	.globl _ThreadYield
	.globl _ThreadExit
	.globl _myTimer0Handler
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_sp	=	0x0034
_currentThread	=	0x0038
_threadCount	=	0x0026
_threadMask	=	0x0039
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_ThreadCreate_newThreadID_10001_13	=	0x003a
_ThreadCreate_address_10001_13	=	0x003b
_ThreadCreate_SPtemp_10001_13	=	0x003c
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_ThreadCreate_sloc0_1_0:
	.ds 1
_ThreadYield_sloc0_1_0:
	.ds 1
_ThreadExit_sloc0_1_0:
	.ds 1
_myTimer0Handler_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	preemptive.c:69: void Bootstrap(void) {
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	preemptive.c:82: TMOD = 0; // timer 0 mode 0
	mov	_TMOD,#0x00
;	preemptive.c:83: IE = 0x82; // enable timer 0 interrupt,
	mov	_IE,#0x82
;	preemptive.c:84: TR0 = 1; // start running timer0
;	assignBit
	setb	_TR0
;	preemptive.c:85: threadCount = 0;
	mov	_threadCount,#0x00
;	preemptive.c:86: threadMask = 0;
	mov	_threadMask,#0x00
;	preemptive.c:87: currentThread = 0;
	mov	_currentThread,#0x00
;	preemptive.c:88: currentThread = ThreadCreate(main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_currentThread,dpl
;	preemptive.c:89: RESTORESTATE;
	mov	a,_currentThread
	add	a, #_sp
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;newThreadID               Allocated with name '_ThreadCreate_newThreadID_10001_13'
;address                   Allocated with name '_ThreadCreate_address_10001_13'
;SPtemp                    Allocated with name '_ThreadCreate_SPtemp_10001_13'
;------------------------------------------------------------
;	preemptive.c:98: ThreadID ThreadCreate(FunctionPtr fp) {
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	preemptive.c:104: if (threadCount >= MAXTHREADS){
	mov	a,#0x100 - 0x04
	add	a,_threadCount
	jnc	00102$
;	preemptive.c:105: return -1;
	mov	dpl, #0xff
	ret
00102$:
;	preemptive.c:149: __data __at (0x3B) char address = 0;
	mov	_ThreadCreate_address_10001_13,#0x00
;	preemptive.c:150: __data __at (0x3C) char SPtemp = 0;
	mov	_ThreadCreate_SPtemp_10001_13,#0x00
;	preemptive.c:193: }
	setb	_ThreadCreate_sloc0_1_0
	jbc	ea,00136$
	clr	_ThreadCreate_sloc0_1_0
00136$:
;	preemptive.c:153: for(newThreadID = 0; newThreadID < MAXTHREADS; newThreadID++){
	mov	_ThreadCreate_newThreadID_10001_13,#0x00
00107$:
	mov	a,#0x100 - 0x04
	add	a,_ThreadCreate_newThreadID_10001_13
	jc	00105$
;	preemptive.c:154: if(!((threadMask >> newThreadID) & 1)){
	mov	b,_ThreadCreate_newThreadID_10001_13
	inc	b
	mov	a,_threadMask
	sjmp	00139$
00138$:
	clr	c
	rrc	a
00139$:
	djnz	b,00138$
	jb	acc.0,00108$
;	preemptive.c:155: threadMask |= (1 << newThreadID); //a. update the bit mask 
	mov	b,_ThreadCreate_newThreadID_10001_13
	inc	b
	mov	a,#0x01
	sjmp	00142$
00141$:
	add	a,acc
00142$:
	djnz	b,00141$
	orl	_threadMask,a
;	preemptive.c:156: threadCount++; //increment threadcount
	mov	a,_threadCount
	inc	a
	mov	_threadCount,a
;	preemptive.c:157: address = (newThreadID * 0x10) + 0x3F; //b. calculate the starting stack location for new thread
	mov	a,_ThreadCreate_newThreadID_10001_13
	swap	a
	anl	a,#0xf0
	mov	r7,a
	add	a,#0x3f
	mov	_ThreadCreate_address_10001_13,a
;	preemptive.c:158: break;
	sjmp	00105$
00108$:
;	preemptive.c:153: for(newThreadID = 0; newThreadID < MAXTHREADS; newThreadID++){
	mov	a,_ThreadCreate_newThreadID_10001_13
	inc	a
	mov	_ThreadCreate_newThreadID_10001_13,a
	sjmp	00107$
00105$:
;	preemptive.c:162: SAVESTATE; 
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currentThread
	add	a, #_sp
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:163: SPtemp = SP; //c. save the current SP in a temporary
	mov	_ThreadCreate_SPtemp_10001_13,_SP
;	preemptive.c:164: SP = address; //set SP to the starting location for the new thread
	mov	_SP,_ThreadCreate_address_10001_13
;	preemptive.c:169: __endasm; 
	PUSH	DPL
	PUSH	DPH
;	preemptive.c:178: __endasm; 
	MOV	A, #0
	PUSH	ACC
	PUSH	B
	PUSH	DPL
	PUSH	DPH
;	preemptive.c:181: PSW = (newThreadID << 3);
	mov	a,_ThreadCreate_newThreadID_10001_13
	mov	r7,a
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_PSW,a
;	preemptive.c:184: __endasm;
	PUSH	PSW
;	preemptive.c:187: sp[newThreadID] = SP;
	mov	a,_ThreadCreate_newThreadID_10001_13
	add	a, #_sp
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:190: SP = SPtemp; 
	mov	_SP,_ThreadCreate_SPtemp_10001_13
;	preemptive.c:192: RESTORESTATE;
	mov	a,_currentThread
	add	a, #_sp
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	mov	c,_ThreadCreate_sloc0_1_0
	mov	ea,c
;	preemptive.c:195: return newThreadID; //i. finally, return the newly created thread ID.
	mov	dpl, _ThreadCreate_newThreadID_10001_13
;	preemptive.c:196: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	preemptive.c:204: void ThreadYield(void) {
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	preemptive.c:221: }
	setb	_ThreadYield_sloc0_1_0
	jbc	ea,00118$
	clr	_ThreadYield_sloc0_1_0
00118$:
;	preemptive.c:206: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currentThread
	add	a, #_sp
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:207: do {
00101$:
;	preemptive.c:217: currentThread = (currentThread + 1) % MAXTHREADS;
	mov	r6,_currentThread
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	mov	_currentThread,r6
;	preemptive.c:218: } while (!((threadMask >> currentThread) & 1));
	mov	b,_currentThread
	inc	b
	mov	a,_threadMask
	sjmp	00120$
00119$:
	clr	c
	rrc	a
00120$:
	djnz	b,00119$
	jnb	acc.0,00101$
;	preemptive.c:220: RESTORESTATE;
	mov	a,_currentThread
	add	a, #_sp
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	mov	c,_ThreadYield_sloc0_1_0
	mov	ea,c
;	preemptive.c:222: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	preemptive.c:229: void ThreadExit(void) {
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	preemptive.c:245: }
	setb	_ThreadExit_sloc0_1_0
	jbc	ea,00118$
	clr	_ThreadExit_sloc0_1_0
00118$:
;	preemptive.c:237: threadMask = threadMask & ~(1 << currentThread + 1) % MAXTHREADS;
	mov	a,_currentThread
	inc	a
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r7,#0x01
	mov	r6,#0x00
	sjmp	00120$
00119$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
00120$:
	djnz	b,00119$
	mov	a,r7
	cpl	a
	mov	dpl,a
	mov	a,r6
	cpl	a
	mov	dph,a
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6, dpl
	mov	r5,_threadMask
	mov	a,r6
	anl	a,r5
	mov	_threadMask,a
;	preemptive.c:238: threadCount--;
	mov	a,_threadCount
	dec	a
	mov	_threadCount,a
;	preemptive.c:240: do{
00101$:
;	preemptive.c:241: currentThread = (currentThread + 1) % MAXTHREADS;
	mov	r6,_currentThread
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	mov	_currentThread,r6
;	preemptive.c:242: } while (!((threadMask >> currentThread) & 1));
	mov	b,_currentThread
	inc	b
	mov	a,_threadMask
	sjmp	00122$
00121$:
	clr	c
	rrc	a
00122$:
	djnz	b,00121$
	jnb	acc.0,00101$
;	preemptive.c:244: RESTORESTATE;
	mov	a,_currentThread
	add	a, #_sp
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	mov	c,_ThreadExit_sloc0_1_0
	mov	ea,c
;	preemptive.c:246: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;	preemptive.c:248: void myTimer0Handler(void){
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:291: }
	setb	_myTimer0Handler_sloc0_1_0
	jbc	ea,00118$
	clr	_myTimer0Handler_sloc0_1_0
00118$:
;	preemptive.c:250: SAVESTATE; //saved interupt because r0-r7 might change
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currentThread
	add	a, #_sp
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:265: __endasm;
	MOV	B, R0
	MOV	DPL, R1
	MOV	DPH, R2
	MOV	A, R3
	PUSH	ACC
	MOV	A, R4
	PUSH	ACC
	MOV	A, R5
	PUSH	ACC
	MOV	A, R6
	PUSH	ACC
	MOV	A, R7
	PUSH	ACC
;	preemptive.c:267: do {
00101$:
;	preemptive.c:269: currentThread = (currentThread + 1) % MAXTHREADS;
	mov	r6,_currentThread
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	mov	_currentThread,r6
;	preemptive.c:270: } while (!((threadMask >> currentThread) & 1));
	mov	b,_currentThread
	inc	b
	mov	a,_threadMask
	sjmp	00120$
00119$:
	clr	c
	rrc	a
00120$:
	djnz	b,00119$
	jnb	acc.0,00101$
;	preemptive.c:288: __endasm;
	POP	ACC
	MOV	R7, A
	POP	ACC
	MOV	R6, A
	POP	ACC
	MOV	R5, A
	POP	ACC
	MOV	R4, A
	POP	ACC
	MOV	R3, A
	POP	ACC
	MOV	R2, DPH
	MOV	R1, DPL
	MOV	R0, B
;	preemptive.c:290: RESTORESTATE;
	mov	a,_currentThread
	add	a, #_sp
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	mov	c,_myTimer0Handler_sloc0_1_0
	mov	ea,c
;	preemptive.c:294: __endasm;
	RETI
;	preemptive.c:295: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
