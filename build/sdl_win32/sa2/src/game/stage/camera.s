	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	StageBgUpdate_Zone2Acts12
	.def	StageBgUpdate_Zone2Acts12;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone2Acts12
StageBgUpdate_Zone2Acts12:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ebp, ecx
	test	BYTE PTR 39[rax], 8
	je	.L2
	mov	rcx, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [rcx], 6
	ja	.L21
.L2:
	test	edx, edx
	lea	r8d, 15[rdx]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmovns	r8d, edx
	sar	r8d, 4
	cmp	BYTE PTR [rax], 2
	jbe	.L4
	mov	edx, 256
	sar	ebp, 4
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	cmp	r8w, dx
	cmovg	r8d, edx
	mov	WORD PTR 12[rax], bp
	mov	WORD PTR 14[rax], r8w
.L1:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movsx	eax, r8w
	cmp	eax, 153
	ja	.L14
	lea	edi, 0[0+rax*8]
.L6:
	movsx	rcx, ebp
	mov	edx, ebp
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	lea	ebx, 0[rbp+rbp*4]
	imul	rcx, rcx, -1677082467
	sar	edx, 31
	mov	r9, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	lea	r10d, -110[rax]
	shr	rcx, 32
	add	ecx, ebp
	sar	ecx, 6
	sub	ecx, edx
	mov	edx, 256
	cmp	cx, dx
	cmovg	ecx, edx
	shr	bx, 4
	imul	r10d, ebp
	xor	r11d, r11d
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	and	bx, 255
	or	DWORD PTR [rdx], 4
	lea	rdx, 28[rsi]
	mov	QWORD PTR [r9], rdx
	mov	rdx, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	r9, QWORD PTR .refptr.gStageTime[rip]
	mov	BYTE PTR [rdx], 4
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	esi, DWORD PTR [r9]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	mov	rdx, QWORD PTR [rdx]
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L22:
	mov	ecx, r10d
	sar	ecx, 5
	movzx	ecx, cl
.L8:
	mov	WORD PTR -4[rdx], cx
	mov	WORD PTR -2[rdx], r8w
.L13:
	add	r11d, 1
	add	eax, 1
	add	edi, 8
	add	r10d, ebp
	cmp	r11b, -17
	je	.L1
.L10:
	lea	r12d, -111[rax]
	add	rdx, 4
	cmp	r12d, 9
	jbe	.L22
	cmp	eax, 120
	jle	.L8
	mov	ecx, edi
	mov	WORD PTR -4[rdx], bx
	and	ecx, 1023
	mov	WORD PTR -2[rdx], r8w
	movzx	ecx, WORD PTR [r9+rcx*2]
	sar	cx, 12
	movsx	ecx, cx
	add	ecx, eax
	cmp	ecx, 177
	jg	.L9
	mov	ecx, ebx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L14:
	mov	edi, 1224
	mov	r8d, 153
	mov	eax, 153
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L21:
	mov	r8, QWORD PTR .refptr.gBgScrollRegs[rip]
	movzx	ecx, WORD PTR 12[r8]
	test	cx, cx
	cmove	ecx, ebp
	movsx	bp, BYTE PTR 25[rax]
	add	ebp, ecx
	mov	WORD PTR 12[r8], bp
	movsx	ebp, bp
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L9:
	mov	edi, -17
	movzx	r10d, r11b
	lea	ebp, [rsi+rsi]
	xor	ecx, ecx
	sub	edi, r11d
	lea	r10d, [rsi+r10*8]
	xor	r11d, r11d
	sal	esi, 4
	movzx	edi, dil
	.p2align 4,,10
	.p2align 3
.L11:
	lea	eax, 8[r11]
	mov	r11d, eax
	and	eax, 1023
	and	r11d, 1023
	movzx	eax, WORD PTR [r9+rax*2]
	lea	r12d, [r11+rbp]
	and	r12d, 1023
	mov	r13d, eax
	sar	ax, 12
	movzx	r12d, WORD PTR 512[r9+r12*2]
	sar	r13w, 13
	add	eax, r8d
	sar	r12w, 11
	add	r12d, r13d
	lea	r13d, [rsi+r10*8]
	and	r13d, 1016
	add	r12d, ebx
	movzx	r13d, WORD PTR [r9+r13*2]
	sar	r13w, 13
	add	r12d, r13d
	mov	WORD PTR [rdx+rcx*4], r12w
	mov	r12d, ecx
	shr	r12b
	movzx	r12d, r12b
	add	eax, r12d
	mov	r12, r10
	add	r10d, 8
	and	r12d, 1023
	movzx	r12d, WORD PTR 512[r9+r12*2]
	sar	r12w, 10
	add	eax, r12d
	mov	WORD PTR 2[rdx+rcx*4], ax
	add	rcx, 1
	cmp	rcx, rdi
	jne	.L11
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone3Acts12
	.def	StageBgUpdate_Zone3Acts12;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone3Acts12
StageBgUpdate_Zone3Acts12:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	rax, QWORD PTR [rax]
	mov	r11d, ecx
	movsx	rcx, edx
	imul	rcx, rcx, -2004318071
	shr	rcx, 32
	add	ecx, edx
	sar	edx, 31
	sar	ecx, 5
	sub	ecx, edx
	mov	edx, 16
	cmp	cx, dx
	cmovle	edx, ecx
	mov	WORD PTR 2[r8], dx
	mov	WORD PTR 14[r8], dx
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r8], 2
	ja	.L23
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	xor	r8d, r8d
	test	BYTE PTR 39[r9], 8
	jne	.L35
.L25:
	mov	WORD PTR sUnknown_03000408[rip], r8w
	cmp	cx, 13
	lea	r9, gUnknown_080D5B20[rip+1]
	mov	rsi, rsp
	setg	cl
	mov	r10, rsi
	lea	rbx, 48[r9]
	.p2align 4,,10
	.p2align 3
.L27:
	movzx	r8d, BYTE PTR [r9]
	add	r9, 3
	add	r10, 4
	imul	r8d, r11d
	sar	r8d, 5
	and	r8w, 255
	mov	WORD PTR -4[r10], r8w
	movzx	r8d, BYTE PTR -2[r9]
	imul	r8d, r11d
	sar	r8d, 5
	and	r8w, 255
	mov	WORD PTR -2[r10], r8w
	cmp	rbx, r9
	jne	.L27
	movzx	r8d, cl
	sal	rcx, 63
	lea	r9, gUnknown_080D5B20[rip]
	sar	rcx, 63
	lea	r8, [rsi+r8*4]
	and	ecx, 3
	add	rcx, r9
	lea	r9, 956[rax]
	.p2align 4,,10
	.p2align 3
.L29:
	movd	xmm0, DWORD PTR [r8]
	add	rax, 4
	pshuflw	xmm0, xmm0, 225
	movd	DWORD PTR -4[rax], xmm0
	cmp	dl, BYTE PTR [rcx]
	jb	.L28
	add	rcx, 3
	add	r8, 4
.L28:
	add	edx, 1
	cmp	rax, r9
	jne	.L29
	mov	rdx, QWORD PTR .refptr.gNumHBlankCallbacks[rip]
	lea	rsi, HBlankCB_801E454[rip]
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	mov	BYTE PTR [rdx], cl
	mov	rdx, QWORD PTR .refptr.gHBlankCallbacks[rip]
	mov	QWORD PTR [rdx+rax*8], rsi
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 8
.L23:
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
.L35:
	mov	r10, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [r10], 6
	jbe	.L25
	movzx	r10d, WORD PTR sUnknown_03000408[rip]
	movsx	r8w, BYTE PTR 25[r9]
	test	r10w, r10w
	cmove	r10d, r11d
	add	r8d, r10d
	movsx	r11d, r8w
	jmp	.L25
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone5Acts12
	.def	StageBgUpdate_Zone5Acts12;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone5Acts12
StageBgUpdate_Zone5Acts12:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	xor	r9d, r9d
	add	WORD PTR [rax], 1
	mov	WORD PTR 12[rax], r9w
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L36
	mov	r12, QWORD PTR .refptr.gFlags[rip]
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ebp, DWORD PTR [r12]
	mov	ebx, DWORD PTR [rax]
	mov	eax, ebp
	or	eax, 4
	mov	DWORD PTR [r12], eax
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 28
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], 2
	cmp	BYTE PTR [rdx], 18
	je	.L38
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	mov	r8, QWORD PTR .LC0[rip]
	movdqu	xmm0, XMMWORD PTR .LC1[rip]
	or	WORD PTR [rdx], 8448
	mov	rdx, QWORD PTR .refptr.gWinRegs[rip]
	movups	XMMWORD PTR [rdx], xmm0
	mov	QWORD PTR 16[rdx], r8
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	r8d, 7
	mov	WORD PTR 4[rdx], r8w
	mov	DWORD PTR [rdx], 269500225
.L38:
	add	ebx, ebx
	mov	BYTE PTR [rax], 4
	add	rcx, 4
	movss	xmm2, DWORD PTR .LC3[rip]
	movsx	rax, ebx
	mov	edx, ebx
	mov	edi, ebx
	mov	r8d, ebx
	imul	r9, rax, -1840700269
	sar	edx, 31
	sar	edi, 2
	movss	xmm1, DWORD PTR .LC4[rip]
	imul	rsi, rax, 1431655766
	sar	r8d, 3
	imul	r11, rax, 1717986919
	imul	r10, rax, 715827883
	mov	rax, r9
	shr	rax, 32
	shr	rsi, 32
	lea	r9d, [rbx+rax]
	sar	r11, 33
	sub	esi, edx
	shr	r10, 32
	sar	r9d, 2
	sub	r11d, edx
	sub	r10d, edx
	sub	r9d, edx
	xor	edx, edx
	.p2align 4,,10
	.p2align 3
.L48:
	movzx	eax, dx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	divss	xmm0, xmm2
	mulss	xmm0, xmm1
	cvttss2si	eax, xmm0
	cmp	eax, 159
	jle	.L54
.L39:
	mov	eax, 159
	.p2align 4,,10
	.p2align 3
.L53:
	sub	eax, edx
	xor	r13d, r13d
.L41:
	add	edx, 1
	mov	WORD PTR -4[rcx], r13w
	add	rcx, 4
	mov	WORD PTR -6[rcx], ax
	cmp	dx, 239
	jne	.L48
	mov	rdx, QWORD PTR .refptr.gNumHBlankCallbacks[rip]
	lea	rsi, HBlankCB_FixCloudRendering[rip]
	or	ebp, 12
	mov	DWORD PTR [r12], ebp
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	mov	BYTE PTR [rdx], cl
	mov	rdx, QWORD PTR .refptr.gHBlankCallbacks[rip]
	mov	QWORD PTR [rdx+rax*8], rsi
.L36:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	cmp	eax, 95
	jle	.L53
	cmp	eax, 99
	jg	.L42
	sub	eax, edx
	mov	r13d, r8d
	jmp	.L41
.L42:
	cmp	eax, 103
	jg	.L43
	sub	eax, edx
	mov	r13d, r9d
	jmp	.L41
.L43:
	cmp	eax, 111
	jg	.L44
	sub	eax, edx
	mov	r13d, r10d
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L44:
	cmp	eax, 119
	jg	.L45
	sub	eax, edx
	mov	r13d, r11d
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L45:
	cmp	eax, 127
	jg	.L46
	sub	eax, edx
	mov	r13d, edi
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L46:
	cmp	eax, 143
	jg	.L47
	sub	eax, edx
	mov	r13d, esi
	jmp	.L41
.L47:
	cmp	eax, 159
	je	.L39
	mov	r13d, ebx
	sub	eax, edx
	sar	r13d
	jmp	.L41
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_Camera
	.def	TaskDestructor_Camera;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_Camera
TaskDestructor_Camera:
	.seh_endprologue
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	pxor	xmm0, xmm0
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	mov	QWORD PTR gCamera[rip+96], 0
	cmp	BYTE PTR [rcx], 29
	movups	XMMWORD PTR [rax], xmm0
	mov	eax, DWORD PTR [rdx]
	je	.L60
.L56:
	and	eax, -5
	mov	DWORD PTR [rdx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	test	al, 64
	je	.L56
	mov	rcx, QWORD PTR .refptr.gIntrTableTemplate[rip]
	and	eax, -65
	and	eax, -5
	mov	r8, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR .refptr.gIntrTable[rip]
	mov	DWORD PTR [rdx], eax
	mov	QWORD PTR 24[rcx], r8
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_CallUpdateCamera
	.def	Task_CallUpdateCamera;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_CallUpdateCamera
Task_CallUpdateCamera:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	movzx	edx, WORD PTR [rax]
	mov	ecx, edx
	or	ch, 30
	mov	WORD PTR [rax], cx
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rcx], 29
	jne	.L62
	and	dh, -9
	or	dh, 22
	mov	WORD PTR [rax], dx
.L62:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 5
	jne	.L63
	and	WORD PTR [rax], -8193
.L63:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, Task_UpdateCamera[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Default
	.def	CreateStageBg_Default;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Default
CreateStageBg_Default:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR 12[rax], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Dummy
	.def	CreateStageBg_Dummy;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Dummy
CreateStageBg_Dummy:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Dummy
	.def	StageBgUpdate_Dummy;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Dummy
StageBgUpdate_Dummy:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone1ActBoss
	.def	StageBgUpdate_Zone1ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone1ActBoss
StageBgUpdate_Zone1ActBoss:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR [rdx]
	test	BYTE PTR 36[rcx], -128
	je	.L68
	sub	eax, 1
	mov	DWORD PTR [rdx], eax
.L68:
	add	eax, 4
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	shr	eax, 3
	and	ax, 255
	mov	WORD PTR [rdx], ax
	mov	eax, DWORD PTR gCamera[rip+4]
	sar	eax, 9
	mov	WORD PTR 2[rdx], ax
	mov	rdx, QWORD PTR .refptr.gNumHBlankCallbacks[rip]
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	mov	BYTE PTR [rdx], cl
	mov	rdx, QWORD PTR .refptr.gHBlankCallbacks[rip]
	lea	rcx, HBlankCB_801E434[rip]
	mov	QWORD PTR [rdx+rax*8], rcx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 8
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone2ActBoss
	.def	StageBgUpdate_Zone2ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone2ActBoss
StageBgUpdate_Zone2ActBoss:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR [rax]
	test	BYTE PTR 36[rdx], -128
	je	.L73
	sub	ecx, 1
	mov	DWORD PTR [rax], ecx
.L73:
	mov	edx, 4000
	jmp	StageBgUpdate_Zone2Acts12
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone3ActBoss
	.def	StageBgUpdate_Zone3ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone3ActBoss
StageBgUpdate_Zone3ActBoss:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR 12[rax], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone5ActBoss
	.def	StageBgUpdate_Zone5ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone5ActBoss
StageBgUpdate_Zone5ActBoss:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rdx, QWORD PTR .refptr.gNumHBlankCallbacks[rip]
	and	WORD PTR [rax], -513
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	add	WORD PTR [rax], 1
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	mov	BYTE PTR [rdx], cl
	mov	rdx, QWORD PTR .refptr.gHBlankCallbacks[rip]
	lea	rcx, HBlankCB_BgUpdateZone5ActBoss[rip]
	mov	QWORD PTR [rdx+rax*8], rcx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 8
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone6ActBoss
	.def	StageBgUpdate_Zone6ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone6ActBoss
StageBgUpdate_Zone6ActBoss:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gBgCntRegs[rip]
	movd	xmm1, DWORD PTR .LC6[rip]
	movd	xmm2, DWORD PTR .LC7[rip]
	movzx	eax, WORD PTR 6[rdx]
	or	WORD PTR [rdx], 3
	and	eax, -4
	or	eax, 2
	mov	WORD PTR 6[rdx], ax
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm0, DWORD PTR [rax]
	paddw	xmm0, xmm1
	pand	xmm0, xmm2
	movd	DWORD PTR [rax], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_ZoneFinalActXX
	.def	StageBgUpdate_ZoneFinalActXX;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_ZoneFinalActXX
StageBgUpdate_ZoneFinalActXX:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rax], -128
	je	.L81
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	sub	DWORD PTR [rax], 1
.L81:
	mov	rdx, QWORD PTR .refptr.gNumHBlankCallbacks[rip]
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	mov	BYTE PTR [rdx], cl
	mov	rdx, QWORD PTR .refptr.gHBlankCallbacks[rip]
	lea	rcx, HBlankCB_BgUpdateZoneFinalActXX[rip]
	mov	QWORD PTR [rdx+rax*8], rcx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 8
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Zone1
	.def	CreateStageBg_Zone1;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Zone1
CreateStageBg_Zone1:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r8d, 6927
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+288]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+304]
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+320]
	or	WORD PTR [rax], 256
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+336]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+352]
	movups	XMMWORD PTR gStageBackgroundsRam[rip], xmm0
	mov	WORD PTR [rax], r8w
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+368]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+16], xmm1
	cmp	BYTE PTR [rax], 5
	movups	XMMWORD PTR gStageBackgroundsRam[rip+32], xmm2
	movups	XMMWORD PTR gStageBackgroundsRam[rip+48], xmm3
	movups	XMMWORD PTR gStageBackgroundsRam[rip+64], xmm4
	movups	XMMWORD PTR gStageBackgroundsRam[rip+80], xmm5
	je	.L86
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 113
	mov	WORD PTR gStageBackgroundsRam[rip+48], cx
	add	rax, 55296
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rax
.L87:
	lea	rcx, gStageBackgroundsRam[rip]
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L86:
	mov	eax, 2
	mov	edx, 30
	mov	WORD PTR gStageBackgroundsRam[rip+48], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR gStageBackgroundsRam[rip+60], dx
	add	rax, 55296
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rax
	jmp	.L87
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Zone3
	.def	CreateStageBg_Zone3;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Zone3
CreateStageBg_Zone3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 6927
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+336]
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+288]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+304]
	mov	ecx, 369
	or	WORD PTR [rax], 256
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+320]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+352]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+48], xmm3
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+368]
	mov	WORD PTR gStageBackgroundsRam[rip+48], cx
	lea	rcx, gStageBackgroundsRam[rip]
	add	rax, 55296
	movups	XMMWORD PTR gStageBackgroundsRam[rip+16], xmm1
	movups	XMMWORD PTR gStageBackgroundsRam[rip], xmm0
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rax
	movups	XMMWORD PTR gStageBackgroundsRam[rip+32], xmm2
	movups	XMMWORD PTR gStageBackgroundsRam[rip+64], xmm4
	movups	XMMWORD PTR gStageBackgroundsRam[rip+80], xmm5
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR 12[rax], 0
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Zone5
	.def	CreateStageBg_Zone5;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Zone5
CreateStageBg_Zone5:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L91
.L90:
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], -5242880
	mov	DWORD PTR 12[rax], 0
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L91:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 6924
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+336]
	mov	ecx, 370
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+288]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+304]
	or	WORD PTR [rax], 256
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+320]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+352]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+48], xmm3
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+368]
	mov	WORD PTR gStageBackgroundsRam[rip+48], cx
	lea	rcx, gStageBackgroundsRam[rip]
	add	rax, 55296
	movups	XMMWORD PTR gStageBackgroundsRam[rip+16], xmm1
	movups	XMMWORD PTR gStageBackgroundsRam[rip], xmm0
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rax
	movups	XMMWORD PTR gStageBackgroundsRam[rip+32], xmm2
	movups	XMMWORD PTR gStageBackgroundsRam[rip+64], xmm4
	movups	XMMWORD PTR gStageBackgroundsRam[rip+80], xmm5
	call	DrawBackground
	jmp	.L90
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Zone7
	.def	CreateStageBg_Zone7;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Zone7
CreateStageBg_Zone7:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 5696
	mov	rbx, QWORD PTR .refptr.gBgCntRegs[rip]
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+288]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+304]
	mov	ecx, 5647
	mov	r8d, 209
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, 20
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+320]
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+336]
	mov	WORD PTR [rbx], cx
	lea	rcx, gStageBackgroundsRam[rip]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+352]
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+368]
	add	rax, 45056
	movups	XMMWORD PTR gStageBackgroundsRam[rip+16], xmm1
	movups	XMMWORD PTR gStageBackgroundsRam[rip+48], xmm3
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rax
	mov	WORD PTR gStageBackgroundsRam[rip+48], r8w
	mov	WORD PTR gStageBackgroundsRam[rip+60], r9w
	movups	XMMWORD PTR gStageBackgroundsRam[rip], xmm0
	movups	XMMWORD PTR gStageBackgroundsRam[rip+32], xmm2
	movups	XMMWORD PTR gStageBackgroundsRam[rip+64], xmm4
	movups	XMMWORD PTR gStageBackgroundsRam[rip+80], xmm5
	call	DrawBackground
	or	WORD PTR 6[rbx], 3
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_ZoneFinal_0
	.def	CreateStageBg_ZoneFinal_0;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_ZoneFinal_0
CreateStageBg_ZoneFinal_0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 4417
	mov	rsi, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rbx, QWORD PTR .refptr.VRAM[rip]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+192]
	mov	ecx, 6793
	mov	r8d, 375
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	r9d, 23
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+208]
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+224]
	mov	WORD PTR 4[rsi], cx
	lea	rcx, gStageBackgroundsRam[rip+192]
	mov	BYTE PTR 2[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+240]
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+256]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+208], xmm2
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+272]
	mov	DWORD PTR 8[rax], 553582592
	lea	rax, 53248[rbx]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+240], xmm4
	movups	XMMWORD PTR gStageBackgroundsRam[rip+256], xmm5
	mov	WORD PTR gStageBackgroundsRam[rip+240], r8w
	mov	WORD PTR gStageBackgroundsRam[rip+258], r9w
	mov	QWORD PTR gStageBackgroundsRam[rip+216], rax
	movups	XMMWORD PTR gStageBackgroundsRam[rip+192], xmm1
	movups	XMMWORD PTR gStageBackgroundsRam[rip+224], xmm3
	movups	XMMWORD PTR gStageBackgroundsRam[rip+272], xmm0
	mov	DWORD PTR gStageBackgroundsRam[rip+250], 589834
	call	DrawBackground
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+304]
	lea	rax, 16384[rbx]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+288]
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+320]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+336]
	mov	r10d, 7687
	add	rbx, 61440
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+352]
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+368]
	mov	WORD PTR [rsi], r10w
	xor	esi, esi
	movups	XMMWORD PTR gStageBackgroundsRam[rip+16], xmm2
	mov	r11d, 372
	lea	rcx, gStageBackgroundsRam[rip]
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rbx
	mov	ebx, 20
	movups	XMMWORD PTR gStageBackgroundsRam[rip+48], xmm4
	movups	XMMWORD PTR gStageBackgroundsRam[rip], xmm1
	movups	XMMWORD PTR gStageBackgroundsRam[rip+64], xmm5
	mov	WORD PTR gStageBackgroundsRam[rip+48], r11w
	mov	QWORD PTR gStageBackgroundsRam[rip+8], rax
	mov	WORD PTR gStageBackgroundsRam[rip+60], bx
	mov	WORD PTR gStageBackgroundsRam[rip+66], si
	movups	XMMWORD PTR gStageBackgroundsRam[rip+32], xmm3
	movups	XMMWORD PTR gStageBackgroundsRam[rip+80], xmm0
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	pxor	xmm0, xmm0
	movdqu	xmm1, XMMWORD PTR gUnknown_080D5CC2[rip]
	movdqu	xmm2, XMMWORD PTR gUnknown_080D5CC2[rip+16]
	movups	XMMWORD PTR [rax], xmm0
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	movups	XMMWORD PTR [rax], xmm1
	movups	XMMWORD PTR 16[rax], xmm2
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone4Acts12
	.def	StageBgUpdate_Zone4Acts12;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone4Acts12
StageBgUpdate_Zone4Acts12:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	xor	eax, eax
	mov	ebx, edx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	esi, ecx
	test	BYTE PTR 39[rdx], 8
	je	.L95
	mov	rcx, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [rcx], 6
	ja	.L103
.L95:
	mov	WORD PTR sCameraShiftX[rip], ax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L97
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rax]
	test	ah, 1
	je	.L104
.L97:
	lea	rdi, gStageBackgroundsRam[rip]
	mov	rcx, rdi
	call	UpdateBgAnimationTiles
	mov	rcx, rdi
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	test	BYTE PTR [rax], 15
	jne	.L98
	movd	xmm0, DWORD PTR [rdx]
	movd	xmm1, DWORD PTR .LC14[rip]
	movd	xmm2, DWORD PTR .LC7[rip]
	paddw	xmm0, xmm1
	pand	xmm0, xmm2
	movd	DWORD PTR [rdx], xmm0
.L98:
	mov	eax, ebx
	mov	ecx, 16
	sar	esi, 4
	sar	eax, 6
	mov	WORD PTR 12[rdx], si
	cmp	eax, ecx
	cmovg	eax, ecx
	mov	WORD PTR 14[rdx], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC12[rip]
	movdqu	xmm0, XMMWORD PTR .LC1[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	edx, 7
	movups	XMMWORD PTR [rax], xmm0
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], dx
	mov	DWORD PTR [rax], 202129217
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L103:
	movzx	ecx, WORD PTR sCameraShiftX[rip]
	movsx	ax, BYTE PTR 25[rdx]
	test	cx, cx
	cmove	ecx, esi
	add	eax, ecx
	movsx	esi, ax
	jmp	.L95
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Zone4
	.def	CreateStageBg_Zone4;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Zone4
CreateStageBg_Zone4:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	edx, 6927
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+336]
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+288]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+304]
	mov	ecx, 371
	mov	r8d, 19
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+320]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+352]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+48], xmm3
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+368]
	add	rax, 55296
	mov	WORD PTR gStageBackgroundsRam[rip+48], cx
	lea	rcx, gStageBackgroundsRam[rip]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+16], xmm1
	movups	XMMWORD PTR gStageBackgroundsRam[rip+64], xmm4
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rax
	mov	WORD PTR gStageBackgroundsRam[rip+66], r8w
	movups	XMMWORD PTR gStageBackgroundsRam[rip], xmm0
	movups	XMMWORD PTR gStageBackgroundsRam[rip+32], xmm2
	movups	XMMWORD PTR gStageBackgroundsRam[rip+80], xmm5
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR 12[rax], 0
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L107
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	add	rsp, 40
	jmp	CreateSpotLightBeams
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Zone6_Boss
	.def	CreateStageBg_Zone6_Boss;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Zone6_Boss
CreateStageBg_Zone6_Boss:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 6671
	mov	rbx, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, -2063597544
	mov	ecx, 3
	or	WORD PTR [rax], 256
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	lea	r8, 49152[rbx]
	add	rbx, 53248
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	lea	rdx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	mov	DWORD PTR [rax], 553582592
	call	DmaSet
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+336]
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	ecx, 168
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+288]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+304]
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+320]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+352]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+48], xmm3
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+368]
	mov	WORD PTR gStageBackgroundsRam[rip+48], cx
	lea	rcx, gStageBackgroundsRam[rip]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+16], xmm1
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR 12[rax], 0
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rbx
	movups	XMMWORD PTR gStageBackgroundsRam[rip], xmm0
	movups	XMMWORD PTR gStageBackgroundsRam[rip+32], xmm2
	movups	XMMWORD PTR gStageBackgroundsRam[rip+64], xmm4
	movups	XMMWORD PTR gStageBackgroundsRam[rip+80], xmm5
	add	rsp, 48
	pop	rbx
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.globl	CreateStageBg_Zone6_Acts
	.def	CreateStageBg_Zone6_Acts;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageBg_Zone6_Acts
CreateStageBg_Zone6_Acts:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rbx, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	r9d, -2063597544
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 3
	or	WORD PTR [rax], 256
	mov	eax, 6671
	mov	WORD PTR [rbx], ax
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	add	r8, 49152
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	lea	rdx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	mov	DWORD PTR [rax], 553582592
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR 12[rax], 0
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	DWORD PTR [rax], 896
	call	CreateStageBg_Zone6_Boss
	movzx	eax, WORD PTR 6[rbx]
	and	eax, -4
	or	eax, 2
	mov	WORD PTR 6[rbx], ax
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone1Acts12
	.def	StageBgUpdate_Zone1Acts12;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone1Acts12
StageBgUpdate_Zone1Acts12:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	je	.L110
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 36[rax]
	test	ecx, 134217728
	jne	.L135
	mov	eax, DWORD PTR gCamera[rip]
	mov	r9, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	r8, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	edx, eax
	sar	edx, 6
	and	dx, 255
	mov	WORD PTR [r9], dx
	mov	edx, DWORD PTR gCamera[rip+4]
	mov	ecx, edx
	sar	ecx, 9
	mov	WORD PTR 2[r9], cx
	mov	rcx, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rcx], 4
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	add	rcx, 28
	mov	QWORD PTR [r8], rcx
	mov	rcx, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rcx], 4
	mov	rcx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8, QWORD PTR [rcx]
.L117:
	sar	eax, 7
	mov	ecx, eax
.L120:
	mov	WORD PTR 12[r9], ax
	test	r8, r8
	je	.L110
	mov	r9, r8
	lea	rax, 288[r8]
	pxor	xmm0, xmm0
	.p2align 4,,10
	.p2align 3
.L122:
	movups	XMMWORD PTR [r9], xmm0
	add	r9, 32
	movups	XMMWORD PTR -16[r9], xmm0
	cmp	rax, r9
	jne	.L122
	sar	edx, 8
	add	r8, 636
	.p2align 4,,10
	.p2align 3
.L123:
	mov	WORD PTR [rax], cx
	add	rax, 4
	mov	WORD PTR -2[rax], dx
	cmp	rax, r8
	jne	.L123
.L110:
	ret
.L135:
	mov	r10, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [r10], 6
	jbe	.L113
	mov	eax, ecx
	mov	r10, QWORD PTR .refptr.gStageTime[rip]
	mov	r9, QWORD PTR .refptr.gBgScrollRegs[rip]
	and	eax, 67108864
	mov	r8, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	cmp	eax, 1
	mov	edx, DWORD PTR [r10]
	sbb	eax, eax
	and	eax, 8
	add	eax, 7
	and	edx, eax
	cmp	edx, eax
	mov	edx, DWORD PTR gCamera[rip+4]
	sete	al
	movzx	eax, al
	add	ax, WORD PTR [r9]
	and	ax, 255
	mov	WORD PTR [r9], ax
	mov	eax, edx
	sar	eax, 9
	mov	WORD PTR 2[r9], ax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 28
	mov	QWORD PTR [r8], rax
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8, QWORD PTR [rax]
.L116:
	and	ecx, 67108864
	cmp	ecx, 1
	mov	ecx, DWORD PTR [r10]
	sbb	eax, eax
	and	eax, 16
	add	eax, 15
	and	ecx, eax
	cmp	ecx, eax
	sete	al
	movzx	eax, al
	add	ax, WORD PTR 12[r9]
	movzx	eax, al
	mov	ecx, eax
	jmp	.L120
.L113:
	mov	eax, DWORD PTR gCamera[rip]
	mov	r9, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	r11, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, eax
	sar	edx, 6
	and	dx, 255
	mov	WORD PTR [r9], dx
	mov	edx, DWORD PTR gCamera[rip+4]
	mov	r8d, edx
	sar	r8d, 9
	mov	WORD PTR 2[r9], r8w
	mov	r8, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [r8], 4
	lea	r8, 28[r11]
	mov	r11, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	cmp	BYTE PTR [r10], 6
	mov	QWORD PTR [r11], r8
	mov	r8, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [r8], 4
	mov	r8, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8, QWORD PTR [r8]
	jbe	.L117
	mov	r10, QWORD PTR .refptr.gStageTime[rip]
	jmp	.L116
	.seh_endproc
	.p2align 4
	.globl	HBlankCB_FixCloudRendering
	.def	HBlankCB_FixCloudRendering;	.scl	2;	.type	32;	.endef
	.seh_proc	HBlankCB_FixCloudRendering
HBlankCB_FixCloudRendering:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	cmp	cx, 79
	jbe	.L140
	cmp	cx, 239
	je	.L140
	mov	edx, -80
	mov	WORD PTR 18[rax], dx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	edx, -80
	mov	WORD PTR 2[rax], dx
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	xor	ecx, ecx
	xor	edx, edx
	mov	WORD PTR 18[rax], cx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	WORD PTR 2[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_ZoneFinalActTA53
	.def	StageBgUpdate_ZoneFinalActTA53;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_ZoneFinalActTA53
StageBgUpdate_ZoneFinalActTA53:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L141
	mov	rax, QWORD PTR 24[rax]
	test	BYTE PTR 16[rax], 1
	je	.L141
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 20
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	edx, DWORD PTR [rdx]
	mov	rax, QWORD PTR [rax]
	lea	ecx, [rdx+rdx*4]
	sal	ecx, 3
	lea	r9, 478[rax]
	.p2align 4,,10
	.p2align 3
.L143:
	mov	edx, ecx
	add	rax, 2
	add	ecx, 40
	and	edx, 1016
	movzx	edx, WORD PTR [r8+rdx*2]
	sar	dx, 12
	mov	WORD PTR -2[rax], dx
	cmp	rax, r9
	jne	.L143
.L141:
	ret
	.seh_endproc
	.p2align 4
	.globl	HBlankCB_801E434
	.def	HBlankCB_801E434;	.scl	2;	.type	32;	.endef
	.seh_proc	HBlankCB_801E434
HBlankCB_801E434:
	.seh_endprologue
	cmp	cx, 73
	je	.L153
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax, 4
	mov	WORD PTR 28[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	HBlankCB_801E454
	.def	HBlankCB_801E454;	.scl	2;	.type	32;	.endef
	.seh_proc	HBlankCB_801E454
HBlankCB_801E454:
	.seh_endprologue
	test	cx, cx
	je	.L154
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankSecondary[rip]
	lea	rax, 0[0+rcx*4]
	and	eax, 262140
	add	rax, QWORD PTR [rdx]
	movzx	edx, WORD PTR 2[rax]
	cmp	dx, WORD PTR -2[rax]
	je	.L157
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	mov	WORD PTR 28[rcx], dx
.L157:
	movzx	edx, WORD PTR [rax]
	cmp	dx, WORD PTR -4[rax]
	je	.L154
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	WORD PTR 16[rax], dx
.L154:
	ret
	.seh_endproc
	.p2align 4
	.globl	HBlankCB_BgUpdateZone5ActBoss
	.def	HBlankCB_BgUpdateZone5ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	HBlankCB_BgUpdateZone5ActBoss
HBlankCB_BgUpdateZone5ActBoss:
	.seh_endprologue
	cmp	cx, 105
	jbe	.L159
	lea	rax, gUnknown_080D5B50[rip]
	movzx	ecx, cx
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	ecx, BYTE PTR [rax+rcx]
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	eax, DWORD PTR [rax]
	sub	ecx, 1
	shr	eax, cl
	mov	WORD PTR 28[rdx], ax
.L159:
	ret
	.seh_endproc
	.p2align 4
	.globl	HBlankCB_BgUpdateZoneFinalActXX
	.def	HBlankCB_BgUpdateZoneFinalActXX;	.scl	2;	.type	32;	.endef
	.seh_proc	HBlankCB_BgUpdateZoneFinalActXX
HBlankCB_BgUpdateZoneFinalActXX:
	.seh_endprologue
	cmp	cx, 88
	je	.L163
	ret
	.p2align 4,,10
	.p2align 3
.L163:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	WORD PTR 28[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	InitCamera
	.def	InitCamera;	.scl	2;	.type	32;	.endef
	.seh_proc	InitCamera
InitCamera:
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, sStageBgDimensions[rip]
	mov	edx, 15936
	mov	r9d, 14145
	mov	rdi, QWORD PTR .refptr.gBgCntRegs[rip]
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip]
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+16]
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+32]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+48]
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+64]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+96], xmm1
	mov	rsi, QWORD PTR .refptr.gDispCnt[rip]
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+160]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+112], xmm2
	movups	XMMWORD PTR gStageBackgroundsRam[rip+144], xmm4
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+96]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+128]
	mov	ebx, ecx
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+80]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+128], xmm3
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+112]
	lea	rax, [rax+rbx*4]
	cmp	ebx, 29
	movups	XMMWORD PTR gStageBackgroundsRam[rip+160], xmm5
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+144]
	movsx	r10w, BYTE PTR 1[rax]
	cmovne	r9d, edx
	movsx	ebp, BYTE PTR [rax]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+192], xmm2
	movsx	edx, BYTE PTR 3[rax]
	movsx	r12d, BYTE PTR 2[rax]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+208], xmm3
	movsx	eax, r10b
	mov	r11d, ebp
	add	ebp, 31
	movups	XMMWORD PTR gStageBackgroundsRam[rip+224], xmm4
	add	eax, 31
	sar	ebp, 6
	mov	ecx, r12d
	movups	XMMWORD PTR gStageBackgroundsRam[rip+240], xmm5
	sar	eax, 6
	sal	r12d, 2
	movups	XMMWORD PTR gStageBackgroundsRam[rip+256], xmm0
	add	eax, eax
	mov	DWORD PTR 2[rdi], -134024191
	or	eax, ebp
	mov	ebp, edx
	movups	XMMWORD PTR gStageBackgroundsRam[rip+176], xmm1
	sal	ebp, 8
	sal	eax, 14
	or	ebp, r12d
	or	eax, ebp
	or	eax, 3
	cmp	ebx, 29
	mov	WORD PTR 6[rdi], ax
	mov	eax, 13889
	cmove	r9d, eax
	lea	eax, [rbx+rbx*2]
	sal	ecx, 14
	mov	WORD PTR gStageBackgroundsRam[rip+144], ax
	sal	edx, 11
	movsx	rcx, ecx
	mov	WORD PTR [rsi], r9w
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+176]
	lea	r9d, 1[rax]
	add	eax, 2
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+240]
	movsx	rdx, edx
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+208]
	mov	WORD PTR gStageBackgroundsRam[rip+240], r9w
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	movdqu	xmm2, XMMWORD PTR gStageCameraBgTemplates[rip+192]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+272], xmm1
	movups	XMMWORD PTR gStageBackgroundsRam[rip+336], xmm5
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+224]
	movdqu	xmm0, XMMWORD PTR gStageCameraBgTemplates[rip+256]
	mov	WORD PTR gStageBackgroundsRam[rip+336], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR gStageBackgroundsRam[rip+346], r11w
	xor	r11d, r11d
	movdqu	xmm1, XMMWORD PTR gStageCameraBgTemplates[rip+272]
	add	rdx, rax
	add	rcx, rax
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+304], xmm3
	mov	QWORD PTR gStageBackgroundsRam[rip+312], rdx
	mov	rdx, QWORD PTR .LC17[rip]
	mov	WORD PTR 1[rax], r11w
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	cmp	BYTE PTR [rsi], 5
	movups	XMMWORD PTR gStageBackgroundsRam[rip+288], xmm2
	mov	WORD PTR gStageBackgroundsRam[rip+348], r10w
	mov	QWORD PTR gStageBackgroundsRam[rip+296], rcx
	mov	QWORD PTR 4[rax], rdx
	movups	XMMWORD PTR gStageBackgroundsRam[rip+320], xmm4
	movups	XMMWORD PTR gStageBackgroundsRam[rip+352], xmm0
	movups	XMMWORD PTR gStageBackgroundsRam[rip+368], xmm1
	je	.L186
	cmp	ebx, 29
	jne	.L177
.L178:
	mov	rax, QWORD PTR .refptr.gCollisionTable[rip]
	mov	rax, QWORD PTR [rax+rbx*8]
.L169:
	mov	rdx, QWORD PTR .refptr.gRefCollision[rip]
	mov	DWORD PTR gCamera[rip+40], 0
	mov	DWORD PTR gCamera[rip+48], 0
	mov	QWORD PTR [rdx], rax
	mov	edx, DWORD PTR 56[rax]
	mov	eax, DWORD PTR 52[rax]
	mov	DWORD PTR gCamera[rip+44], edx
	mov	DWORD PTR gCamera[rip+52], eax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L170
	cmp	al, 28
	je	.L187
	cmp	al, 29
	je	.L174
.L173:
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, 0
	mov	edx, DWORD PTR 16[rcx]
	mov	eax, DWORD PTR 12[rcx]
	sar	edx, 8
	sar	eax, 8
	sub	edx, 124
	sub	eax, 213
	cmovs	eax, r8d
	test	edx, edx
	cmovs	edx, r8d
	movd	xmm0, eax
	mov	DWORD PTR gCamera[rip], eax
	movsx	ax, BYTE PTR 27[rcx]
	movd	xmm2, edx
	mov	DWORD PTR gCamera[rip+4], edx
	punpckldq	xmm0, xmm2
	sub	eax, 4
	movq	QWORD PTR gCamera[rip+16], xmm0
.L175:
	mov	WORD PTR gCamera[rip+108], ax
	pxor	xmm0, xmm0
	xor	r9d, r9d
	xor	edx, edx
	mov	rax, QWORD PTR .LC20[rip]
	mov	r8d, 3840
	lea	rcx, Task_CallUpdateCamera[rip]
	mov	QWORD PTR gCamera[rip+68], 8
	mov	DWORD PTR gCamera[rip+76], 0
	mov	QWORD PTR gCamera[rip+8], rax
	xor	eax, eax
	mov	WORD PTR gCamera[rip+64], ax
	lea	rax, TaskDestructor_Camera[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR gCamera[rip+80], 0
	mov	DWORD PTR gCamera[rip+104], 0
	movups	XMMWORD PTR gCamera[rip+24], xmm0
	call	TaskCreate
	mov	QWORD PTR gCamera[rip+96], rax
	lea	rax, sStageBgUpdateFuncs[rip]
	mov	rax, QWORD PTR [rax+rbx*8]
	mov	QWORD PTR gCamera[rip+88], rax
	lea	rax, sStageBgInitProcedures[rip]
	mov	rax, QWORD PTR [rax+rbx*8]
	test	rax, rax
	je	.L164
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	rex.W jmp	rax
	.p2align 4,,10
	.p2align 3
.L186:
	mov	r9d, 633
	mov	r10d, 618
	mov	WORD PTR gStageBackgroundsRam[rip+162], r9w
	mov	WORD PTR gStageBackgroundsRam[rip+258], r10w
	cmp	ebx, 29
	je	.L168
.L177:
	lea	rcx, gStageBackgroundsRam[rip+96]
	call	DrawBackground
	lea	rcx, gStageBackgroundsRam[rip+192]
	call	DrawBackground
	lea	rcx, gStageBackgroundsRam[rip+288]
	call	DrawBackground
	cmp	BYTE PTR [rsi], 5
	jne	.L178
.L168:
	mov	rax, QWORD PTR .refptr.EWRAM_START[rip]
	mov	rax, QWORD PTR 208900[rax]
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L187:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L173
.L172:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 12[rdx]
	sar	eax, 8
	mov	DWORD PTR gCamera[rip], eax
	sub	eax, 480
	mov	DWORD PTR gCamera[rip+16], eax
	mov	eax, DWORD PTR 16[rdx]
	sar	eax, 8
	sub	eax, 124
	mov	DWORD PTR gCamera[rip+4], eax
	mov	DWORD PTR gCamera[rip+20], eax
	movsx	ax, BYTE PTR 27[rdx]
	sub	eax, 4
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L170:
	cmp	al, 29
	jne	.L172
	.p2align 4,,10
	.p2align 3
.L174:
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, 16[rcx]
	add	rcx, 12
	call	SuperSonicGetPos
	mov	edx, 32
	mov	ecx, 344
	mov	rax, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	mov	QWORD PTR gCamera[rip+16], 213
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	mov	QWORD PTR gCamera[rip], 600
	mov	WORD PTR [rax], cx
	mov	eax, -4
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L164:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	UpdateCamera
	.def	UpdateCamera;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateCamera
UpdateCamera:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	eax, DWORD PTR gCamera[rip+48]
	movq	xmm0, QWORD PTR gCamera[rip]
	movd	r8d, xmm0
	pshufd	xmm3, xmm0, 0xe5
	mov	ebx, eax
	movd	r10d, xmm3
	movq	QWORD PTR gCamera[rip+56], xmm0
	cmp	eax, r8d
	jg	.L189
	mov	ebx, DWORD PTR gCamera[rip+52]
	lea	edx, -426[rbx]
	sub	ebx, 427
	cmp	edx, r8d
	cmovg	ebx, r8d
.L189:
	mov	edx, DWORD PTR gCamera[rip+40]
	mov	esi, edx
	cmp	edx, r10d
	jg	.L190
	mov	ecx, DWORD PTR gCamera[rip+44]
	lea	r9d, -240[rcx]
	sub	ecx, 241
	mov	esi, ecx
	cmp	r9d, r10d
	cmovg	esi, r10d
.L190:
	mov	rbp, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	movzx	ecx, BYTE PTR 0[rbp]
	mov	r9d, DWORD PTR 36[rdi]
	mov	r11d, ecx
	and	r11d, 3
	cmp	r11b, 2
	je	.L191
	cmp	cl, 28
	je	.L262
	cmp	cl, 29
	je	.L263
.L194:
	movzx	ecx, WORD PTR gCamera[rip+64]
	test	cx, cx
	je	.L212
	sub	ecx, 1
	mov	r8d, DWORD PTR gCamera[rip+20]
	mov	WORD PTR gCamera[rip+64], cx
	mov	ecx, DWORD PTR gCamera[rip+16]
.L213:
	mov	r11d, DWORD PTR gCamera[rip+68]
	sub	ecx, ebx
	mov	r10d, DWORD PTR gCamera[rip+8]
	cmp	ecx, r11d
	jle	.L222
	sub	ecx, r11d
	mov	r11d, r10d
	sar	r11d, 8
	cmp	ecx, r11d
	cmovg	ecx, r11d
	add	ebx, ecx
.L223:
	cmp	eax, ebx
	jg	.L247
	mov	ecx, DWORD PTR gCamera[rip+52]
	lea	r11d, -425[rcx]
	sub	ecx, 426
	cmp	r11d, ebx
	cmovle	ebx, ecx
.L224:
	cmp	r10d, 4095
	jg	.L225
	add	r10d, 32
	mov	DWORD PTR gCamera[rip+8], r10d
.L225:
	and	r9d, 2
	je	.L226
	cmp	BYTE PTR 141[rdi], 3
	je	.L264
.L227:
	mov	edi, DWORD PTR gCamera[rip+72]
	mov	r9d, 24
	lea	ecx, 4[rdi]
	cmp	ecx, r9d
	cmovg	ecx, r9d
	sub	r8d, esi
	mov	DWORD PTR gCamera[rip+72], ecx
	cmp	r8d, ecx
	jle	.L229
.L268:
	sub	r8d, ecx
	mov	ecx, DWORD PTR gCamera[rip+12]
	cmp	r8d, ecx
	cmovg	r8d, ecx
	add	esi, r8d
.L230:
	cmp	edx, esi
	jle	.L231
	cmp	eax, ebx
	jle	.L232
	mov	ecx, DWORD PTR gCamera[rip+44]
	lea	r8d, -239[rcx]
.L233:
	sub	ecx, 240
	cmp	edx, r8d
	cmovge	edx, ecx
.L236:
	movsx	r9d, WORD PTR gCamera[rip+104]
	movsx	ecx, WORD PTR gCamera[rip+106]
	movd	xmm1, eax
	movd	xmm5, edx
	punpckldq	xmm1, xmm5
	movd	xmm2, r9d
	movd	xmm5, ecx
	lea	r8d, [r9+rax]
	punpckldq	xmm2, xmm5
	lea	eax, [rcx+rdx]
	paddd	xmm1, xmm2
	psubd	xmm0, xmm1
	pshufd	xmm4, xmm1, 0xe5
	movd	esi, xmm1
	movd	edi, xmm4
	movq	QWORD PTR gCamera[rip], xmm1
	movq	QWORD PTR gCamera[rip+56], xmm0
.L211:
	mov	ebx, eax
	movzx	edx, r8w
	mov	r12d, DWORD PTR .LC25[rip]
	mov	rbp, QWORD PTR .refptr.gBgScrollRegs[rip]
	sal	ebx, 16
	lea	r13, gStageBackgroundsRam[rip+96]
	mov	WORD PTR gStageBackgroundsRam[rip+166], ax
	or	ebx, edx
	mov	rcx, r13
	mov	WORD PTR gStageBackgroundsRam[rip+164], r8w
	and	r12d, ebx
	mov	DWORD PTR 4[rbp], r12d
	call	DrawBackground
	mov	rcx, r13
	call	UpdateBgAnimationTiles
	lea	rcx, 96[r13]
	mov	DWORD PTR 8[rbp], r12d
	mov	DWORD PTR gStageBackgroundsRam[rip+260], ebx
	call	DrawBackground
	mov	rax, QWORD PTR gCamera[rip+88]
	test	rax, rax
	jne	.L265
.L188:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L262:
	mov	r11, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [r11], 0
	jne	.L194
	and	r9d, 128
	jne	.L195
.L197:
	mov	r9d, DWORD PTR gCamera[rip+16]
	mov	eax, DWORD PTR 12[rdi]
	lea	r10d, 219[rbx]
	lea	r8d, 5[rbx]
	lea	edx, 5[r9]
	sar	eax, 8
	mov	DWORD PTR gCamera[rip+16], edx
	cmp	r10d, eax
	jge	.L201
	lea	edx, 124[r9]
	cmp	edx, r8d
	jl	.L202
	sub	eax, 213
	mov	r10d, eax
	sub	r10d, r8d
	mov	r8d, eax
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L191:
	and	r9d, 128
	jne	.L195
	cmp	cl, 29
	jne	.L197
	.p2align 4,,10
	.p2align 3
.L196:
	lea	rcx, 12[rdi]
	lea	rdx, 16[rdi]
	call	SuperSonicGetPos
	movzx	ecx, BYTE PTR 0[rbp]
	movq	xmm0, QWORD PTR gCamera[rip+56]
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L263:
	and	r9d, 128
	je	.L196
.L195:
	mov	rax, QWORD PTR gCamera[rip+88]
	test	rax, rax
	je	.L188
	mov	edx, r10d
	mov	ecx, r8d
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	rex.W jmp	rax
	.p2align 4,,10
	.p2align 3
.L201:
	lea	r9d, -96[rax]
	add	ebx, 100
	xor	r10d, r10d
	cmp	r9d, edx
	cmovl	r9d, edx
	cmp	eax, ebx
	cmovle	r8d, r9d
.L203:
	mov	eax, DWORD PTR 16[rdi]
	mov	DWORD PTR gCamera[rip+24], r10d
	sar	eax, 8
	mov	edx, eax
	sub	edx, esi
	cmp	cl, 29
	je	.L266
	cmp	edx, 48
	jg	.L208
.L259:
	mov	DWORD PTR gCamera[rip+28], 0
	lea	esi, -48[rax]
	xor	edx, edx
.L206:
	mov	rax, QWORD PTR .refptr.gBossCameraClampYLower[rip]
	movzx	eax, WORD PTR [rax]
	cmp	eax, esi
	jg	.L209
	mov	rax, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	movzx	eax, WORD PTR [rax]
	lea	r9d, -239[rax]
	sub	eax, 240
	cmp	r9d, esi
	cmovg	eax, esi
.L209:
	add	eax, edx
	movsx	r9d, WORD PTR gCamera[rip+104]
	movsx	edx, WORD PTR gCamera[rip+106]
	movd	xmm1, r8d
	movd	xmm4, eax
	movd	xmm2, r9d
	movd	xmm5, edx
	punpckldq	xmm1, xmm4
	add	r8d, r9d
	punpckldq	xmm2, xmm5
	add	eax, edx
	paddd	xmm1, xmm2
	psubd	xmm0, xmm1
	pshufd	xmm4, xmm1, 0xe5
	movd	esi, xmm1
	movd	edi, xmm4
	movq	QWORD PTR gCamera[rip], xmm1
	movq	QWORD PTR gCamera[rip+56], xmm0
	cmp	cl, 29
	jne	.L211
	mov	rax, QWORD PTR gCamera[rip+88]
	test	rax, rax
	je	.L188
.L265:
	mov	edx, edi
	mov	ecx, esi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	rex.W jmp	rax
	.p2align 4,,10
	.p2align 3
.L212:
	movzx	r8d, WORD PTR gCamera[rip+80]
	mov	ecx, DWORD PTR gCamera[rip+16]
	test	r8b, 1
	jne	.L215
	movsx	r11d, WORD PTR gCamera[rip+86]
	mov	r10d, DWORD PTR 12[rdi]
	mov	ecx, r11d
	sar	r10d, 8
	add	r10d, DWORD PTR gCamera[rip+24]
	sal	ecx, 4
	sub	ecx, r11d
	movsx	r11d, WORD PTR 20[rdi]
	add	ecx, r11d
	sar	ecx, 4
	mov	WORD PTR gCamera[rip+86], cx
	sar	cx, 5
	movsx	ecx, cx
	lea	ecx, -213[r10+rcx]
	mov	DWORD PTR gCamera[rip+16], ecx
.L215:
	and	r8d, 2
	mov	r8d, DWORD PTR gCamera[rip+20]
	jne	.L213
	movsx	r11d, BYTE PTR 27[rdi]
	mov	r8d, 4
	movsx	r10d, WORD PTR gCamera[rip+108]
	sub	r8d, r11d
	lea	ebp, -4[r11]
	mov	r11, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [r11], -128
	cmove	r8d, ebp
	cmp	r8d, r10d
	je	.L219
	jg	.L267
	sub	r10d, 5
	cmp	r10d, r8d
	cmovl	r10d, r8d
.L221:
	mov	WORD PTR gCamera[rip+108], r10w
.L219:
	mov	r8d, DWORD PTR 16[rdi]
	mov	r11d, DWORD PTR gCamera[rip+76]
	sar	r8d, 8
	add	r8d, DWORD PTR gCamera[rip+28]
	lea	r8d, -120[r8+r11]
	add	r8d, r10d
	mov	DWORD PTR gCamera[rip+20], r8d
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L208:
	add	esi, 2
.L260:
	mov	edx, DWORD PTR gCamera[rip+28]
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L202:
	lea	r8d, 125[r9]
	xor	r10d, r10d
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L264:
	cmp	BYTE PTR 105[rdi], 9
	jne	.L227
	.p2align 4,,10
	.p2align 3
.L226:
	mov	edi, DWORD PTR gCamera[rip+72]
	xor	r9d, r9d
	lea	ecx, -4[rdi]
	test	ecx, ecx
	cmovs	ecx, r9d
	sub	r8d, esi
	mov	DWORD PTR gCamera[rip+72], ecx
	cmp	r8d, ecx
	jg	.L268
.L229:
	mov	r9d, ecx
	neg	r9d
	cmp	r8d, r9d
	jge	.L230
	mov	r9d, DWORD PTR gCamera[rip+12]
	add	r8d, ecx
	neg	r9d
	cmp	r9d, r8d
	cmovl	r9d, r8d
	add	esi, r9d
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L247:
	mov	ebx, eax
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L222:
	mov	ebp, r11d
	neg	ebp
	cmp	ecx, ebp
	jge	.L223
	mov	ebp, r10d
	add	ecx, r11d
	sar	ebp, 8
	neg	ebp
	cmp	ebp, ecx
	cmovl	ebp, ecx
	add	ebx, ebp
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L231:
	mov	ecx, DWORD PTR gCamera[rip+44]
	lea	r8d, -239[rcx]
	cmp	r8d, esi
	jg	.L234
	lea	esi, -240[rcx]
	cmp	eax, ebx
	jle	.L269
.L235:
	cmp	edx, esi
	jg	.L236
	mov	edx, esi
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L266:
	cmp	edx, 48
	jle	.L259
	mov	r9, QWORD PTR .refptr.gBossCameraClampYUpper[rip]
	movzx	r9d, WORD PTR [r9]
	sub	r9d, 208
	cmp	r9d, edx
	jg	.L260
	mov	DWORD PTR gCamera[rip+28], 0
	lea	esi, -112[rax]
	xor	edx, edx
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L234:
	cmp	eax, ebx
	jg	.L249
	mov	eax, DWORD PTR gCamera[rip+52]
	lea	r8d, -425[rax]
	cmp	ebx, r8d
	jl	.L270
.L240:
	sub	eax, 426
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L232:
	mov	eax, DWORD PTR gCamera[rip+52]
	lea	ecx, -425[rax]
	cmp	ebx, ecx
	jge	.L271
	mov	ecx, DWORD PTR gCamera[rip+44]
	mov	eax, ebx
	lea	r8d, -239[rcx]
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L271:
	mov	ecx, DWORD PTR gCamera[rip+44]
	sub	eax, 426
.L239:
	lea	r8d, -239[rcx]
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L267:
	add	r10d, 5
	cmp	r10d, r8d
	cmovg	r10d, r8d
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L249:
	mov	edx, esi
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L269:
	mov	eax, DWORD PTR gCamera[rip+52]
	lea	r8d, -425[rax]
	cmp	r8d, ebx
	jle	.L240
	mov	eax, ebx
	jmp	.L235
.L270:
	mov	edx, esi
	mov	eax, ebx
	jmp	.L239
	.seh_endproc
	.p2align 4
	.globl	Task_UpdateCamera
	.def	Task_UpdateCamera;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_UpdateCamera
Task_UpdateCamera:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	UpdateCamera
	mov	rax, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	BYTE PTR [rax], 4
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	RenderMetatileLayers
	.def	RenderMetatileLayers;	.scl	2;	.type	32;	.endef
	.seh_proc	RenderMetatileLayers
RenderMetatileLayers:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 29
	jne	.L275
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	mov	ebx, edx
	movzx	eax, cx
	mov	edi, DWORD PTR .LC25[rip]
	mov	rsi, QWORD PTR .refptr.gBgScrollRegs[rip]
	sal	ebx, 16
	lea	rbp, gStageBackgroundsRam[rip+96]
	mov	WORD PTR gStageBackgroundsRam[rip+164], cx
	or	ebx, eax
	mov	rcx, rbp
	mov	WORD PTR gStageBackgroundsRam[rip+166], dx
	and	edi, ebx
	mov	DWORD PTR 4[rsi], edi
	call	DrawBackground
	mov	rcx, rbp
	call	UpdateBgAnimationTiles
	lea	rcx, 96[rbp]
	mov	DWORD PTR 8[rsi], edi
	mov	DWORD PTR gStageBackgroundsRam[rip+260], ebx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.globl	sub_801D24C
	.def	sub_801D24C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801D24C
sub_801D24C:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gFlags[rip]
	mov	ebp, 239
	mov	rsi, QWORD PTR .refptr.gBldRegs[rip]
	mov	r13d, 16193
	mov	r14d, 160
	mov	r11d, DWORD PTR [rbx]
	mov	WORD PTR [rsi], r13w
	mov	WORD PTR 4[rsi], r14w
	mov	eax, r11d
	or	eax, 4
	mov	DWORD PTR [rbx], eax
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edi, ecx
	mov	ecx, edx
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	movsx	r9d, cx
	add	ecx, ecx
	add	rax, 16
	sub	ebp, ecx
	mov	ecx, r9d
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	sar	ecx
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	sub	ebp, ecx
	mov	ecx, 239
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	r10d, DWORD PTR [rdx]
	mov	DWORD PTR 20[rax], 63
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	edx, r10d
	shr	r10d
	and	edx, 1023
	and	r10d, 1023
	cmp	bp, cx
	mov	rax, QWORD PTR [rax]
	cmovle	ecx, ebp
	test	r8b, r8b
	je	.L277
	sar	r9d, 4
	mov	r8d, 16
	sub	r8d, r9d
	sal	r8d, 8
	or	r8d, 16
	mov	WORD PTR 2[rsi], r8w
	test	bp, bp
	jle	.L290
	xor	r9d, r9d
	mov	esi, 241
	.p2align 4,,10
	.p2align 3
.L279:
	mov	r8d, esi
	xor	r12d, r12d
	sub	r8d, r9d
	mov	WORD PTR [rax+r9*4], r12w
	mov	WORD PTR 2[rax+r9*4], r8w
	add	r9, 1
	cmp	cx, r9w
	jg	.L279
	movzx	r8d, cx
	mov	esi, ecx
	lea	rax, [rax+r8*4]
	cmp	bp, 238
	jg	.L284
.L278:
	movsx	r9d, si
	lea	r8d, [rdx+r10]
	mov	r13d, r10d
	movsx	ecx, cx
	mov	r10d, r9d
	mov	ebp, esi
	mov	r12d, 1
	sal	esi, 2
	sub	r10d, ecx
	sal	ebp, 4
	sub	r12d, r9d
	sub	esi, eax
	lea	r10d, -120[0+r10*8]
	add	ebp, r8d
	lea	esi, -4[rsi+rdx]
	add	r8w, 3824
	sub	r12d, r10d
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L298:
	mov	edx, r12d
	and	dx, 254
.L282:
	add	ebp, 16
	mov	WORD PTR -2[rax], dx
	add	r9d, 1
	sub	r12d, 9
	cmp	r8w, bp
	je	.L284
.L283:
	mov	rdx, rbp
	lea	r14d, [r9+r9]
	add	rax, 4
	and	edx, 1023
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 7
	add	edx, 1
	sub	edx, r14d
	movzx	edx, dl
	mov	WORD PTR -4[rax], dx
	lea	edx, -14[r9]
	cmp	ecx, edx
	jge	.L298
	lea	edx, [rsi+rax]
	and	edx, 1023
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 7
	lea	edx, 1[r13+rdx]
	sub	edx, r9d
	movzx	edx, dl
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L277:
	sar	r9d, 5
	mov	r8d, 16
	sub	r8d, r9d
	sal	r8d, 8
	or	r8d, 16
	mov	WORD PTR 2[rsi], r8w
	test	bp, bp
	jle	.L292
	mov	r12d, r10d
	lea	esi, [r10+rdx]
	mov	r8d, r10d
	xor	r9d, r9d
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	.p2align 4,,10
	.p2align 3
.L286:
	mov	rdx, rsi
	lea	r13d, [r9+r9]
	add	esi, 16
	and	edx, 1023
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 7
	add	edx, 1
	sub	edx, r13d
	movzx	edx, dl
	mov	WORD PTR [rax+r9*4], dx
	mov	rdx, r8
	add	r8d, 4
	and	edx, 1023
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 7
	lea	edx, 1[r12+rdx]
	sub	edx, r13d
	and	dx, 255
	mov	WORD PTR 2[rax+r9*4], dx
	add	r9, 1
	cmp	cx, r9w
	jg	.L286
	movzx	edx, cx
	lea	rax, [rax+rdx*4]
	cmp	bp, 238
	jg	.L284
	mov	r10d, ecx
.L285:
	mov	r9d, r10d
	mov	r8d, 1
	lea	edx, -14[r10]
	mov	esi, -13
	sub	r9d, ecx
	sub	r8d, r10d
	lea	r9d, -120[r8+r9*8]
	.p2align 4,,10
	.p2align 3
.L289:
	xor	r8d, r8d
	add	rax, 4
	movzx	r10d, r9b
	mov	WORD PTR -4[rax], r8w
	mov	r8d, esi
	sub	r8d, edx
	cmp	cx, dx
	movzx	r8d, r8b
	cmovge	r8d, r10d
	add	edx, 1
	add	r9d, 7
	mov	WORD PTR -2[rax], r8w
	cmp	dx, 225
	jne	.L289
.L284:
	mov	r8d, 16
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	lea	rcx, gUnknown_080D5C02[rip+48]
	cmp	dil, r8b
	lea	r10, 48[rcx]
	cmovbe	r8d, edi
	lea	r9, 480[rax]
	movzx	r8d, r8b
	.p2align 4,,10
	.p2align 3
.L280:
	movzx	edx, BYTE PTR 1[rcx]
	movzx	eax, BYTE PTR 2[rcx]
	add	rcx, 3
	add	r9, 2
	movzx	esi, BYTE PTR -3[rcx]
	imul	edx, r8d
	imul	eax, r8d
	imul	esi, r8d
	sar	edx, 4
	sar	eax, 4
	and	edx, 31
	sar	esi, 4
	and	eax, 31
	sal	edx, 5
	sal	eax, 10
	and	esi, 31
	or	eax, edx
	or	eax, esi
	mov	WORD PTR -2[r9], ax
	cmp	r10, rcx
	jne	.L280
	or	r11d, 5
	mov	DWORD PTR [rbx], r11d
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
.L290:
	xor	esi, esi
	jmp	.L278
.L292:
	xor	r10d, r10d
	jmp	.L285
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone6Acts12
	.def	StageBgUpdate_Zone6Acts12;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone6Acts12
StageBgUpdate_Zone6Acts12:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r9, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	r10, QWORD PTR .refptr.gFlags[rip]
	movsx	rax, DWORD PTR [rax]
	mov	rdx, rax
	imul	rax, rax, 1321528399
	sar	ecx, 4
	mov	WORD PTR 12[r9], cx
	mov	ecx, edx
	sar	rax, 41
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 1664
	mov	eax, edx
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	movzx	r8d, BYTE PTR [rdx]
	mov	edx, DWORD PTR [r10]
	sub	eax, ecx
	mov	ecx, eax
	or	edx, 1
	cmp	ax, 1472
	jbe	.L300
	cmp	r8b, 2
	jbe	.L308
.L301:
	mov	r8, QWORD PTR .refptr.gBgPalette[rip]
	mov	DWORD PTR [r10], edx
	xor	ecx, ecx
	lea	rdx, gUnknown_080D5C02[rip]
	lea	r10, 48[rdx]
	mov	WORD PTR [r8], cx
	add	r8, 480
.L305:
	movzx	eax, BYTE PTR 1[rdx]
	movzx	ecx, BYTE PTR 2[rdx]
	add	rdx, 3
	add	r8, 2
	sal	ecx, 5
	sal	eax, 10
	or	eax, ecx
	movzx	ecx, BYTE PTR -3[rdx]
	or	eax, ecx
	mov	WORD PTR -2[r8], ax
	cmp	r10, rdx
	jne	.L305
	movd	xmm0, DWORD PTR [r9]
	movd	xmm1, DWORD PTR .LC6[rip]
	movd	xmm2, DWORD PTR .LC7[rip]
	paddw	xmm0, xmm1
	pand	xmm0, xmm2
	movd	DWORD PTR [r9], xmm0
.L299:
	ret
	.p2align 4,,10
	.p2align 3
.L300:
	cmp	r8b, 2
	ja	.L301
	mov	r8, QWORD PTR .refptr.gBgPalette[rip]
	xor	r9d, r9d
	mov	DWORD PTR [r10], edx
	mov	WORD PTR [r8], r9w
	cmp	ax, 1
	je	.L309
	jbe	.L299
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rdx], 256
	mov	rdx, QWORD PTR .refptr.gBgCntRegs[rip]
	or	WORD PTR [rdx], 3
	or	WORD PTR 6[rdx], 3
	mov	edx, 63
	cmp	al, dl
	cmova	eax, edx
	mov	edx, 63
	shr	cx, 2
	xor	r8d, r8d
	movzx	ecx, cl
	movzx	eax, al
	sub	edx, eax
	movzx	edx, dx
	jmp	sub_801D24C
	.p2align 4,,10
	.p2align 3
.L308:
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	pxor	xmm0, xmm0
	xor	r11d, r11d
	mov	DWORD PTR [r10], edx
	mov	WORD PTR [rax], r11w
	movups	XMMWORD PTR 480[rax], xmm0
	movups	XMMWORD PTR 496[rax], xmm0
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	and	WORD PTR [rax], -257
	ret
	.p2align 4,,10
	.p2align 3
.L309:
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+288]
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+304]
	mov	eax, 167
	lea	rcx, gStageBackgroundsRam[rip]
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+320]
	movups	XMMWORD PTR gStageBackgroundsRam[rip], xmm3
	movdqu	xmm3, XMMWORD PTR gStageCameraBgTemplates[rip+336]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+16], xmm4
	movdqu	xmm4, XMMWORD PTR gStageCameraBgTemplates[rip+352]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+48], xmm3
	mov	WORD PTR gStageBackgroundsRam[rip+48], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	movups	XMMWORD PTR gStageBackgroundsRam[rip+32], xmm5
	movdqu	xmm5, XMMWORD PTR gStageCameraBgTemplates[rip+368]
	add	rax, 53248
	movups	XMMWORD PTR gStageBackgroundsRam[rip+64], xmm4
	mov	QWORD PTR gStageBackgroundsRam[rip+24], rax
	movups	XMMWORD PTR gStageBackgroundsRam[rip+80], xmm5
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.globl	Zone7BgUpdate_Inside
	.def	Zone7BgUpdate_Inside;	.scl	2;	.type	32;	.endef
	.seh_proc	Zone7BgUpdate_Inside
Zone7BgUpdate_Inside:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	r10d, edx
	test	BYTE PTR 39[rax], 8
	je	.L311
	mov	rdx, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [rdx], 6
	ja	.L396
.L311:
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	mov	r15, QWORD PTR .refptr.gFlags[rip]
	mov	r8, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	movdqu	xmm0, XMMWORD PTR .LC28[rip]
	movzx	eax, WORD PTR [rdx]
	and	ah, -2
	or	ah, 8
	mov	WORD PTR [rdx], ax
	mov	edx, DWORD PTR [r15]
	mov	eax, edx
	or	eax, 4
	mov	DWORD PTR [r15], eax
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 28
	mov	QWORD PTR [r8], rax
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, r8
	lea	r9, 160[r8]
	.p2align 4,,10
	.p2align 3
.L313:
	movups	XMMWORD PTR [rax], xmm0
	add	rax, 32
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rax, r9
	jne	.L313
	test	ecx, ecx
	lea	r9d, 15[rcx]
	lea	r11, 636[r8]
	cmovns	r9d, ecx
	sar	r9d, 4
	movzx	r9d, r9b
	.p2align 4,,10
	.p2align 3
.L314:
	mov	WORD PTR [rax], r9w
	mov	ebx, 17
	add	rax, 4
	mov	WORD PTR -2[rax], bx
	cmp	rax, r11
	jne	.L314
	mov	edi, 64
	mov	ebp, 2
	xor	ebx, ebx
	mov	r14d, edx
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r11d, DWORD PTR [rax]
	mov	eax, r10d
	sar	eax, 4
	add	r11d, ecx
	sub	edi, eax
	mov	r9d, r11d
	mov	DWORD PTR 8[rsp], r11d
	shr	r9d, 3
	movzx	r9d, r9b
.L323:
	neg	ebx
	and	ebx, 100
	lea	r11d, [rbx+rdi]
	movzx	r12d, r11b
	cmp	r11b, -17
	ja	.L315
	movzx	edx, r11b
	lea	eax, 0[0+rdx*4]
	cdqe
	add	rax, r8
	cmp	r11b, 80
	ja	.L316
.L318:
	mov	ebx, 240
	xor	r11d, r11d
	sub	ebx, r12d
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L397:
	cmp	r11b, 15
	ja	.L343
.L317:
	mov	WORD PTR [rax], r9w
	add	edx, 1
	add	rax, 4
	add	r11d, 1
	mov	WORD PTR -2[rax], bx
	cmp	edx, 239
	jle	.L397
.L343:
	cmp	edx, 79
	jle	.L322
.L325:
	mov	ebx, 1
	cmp	ebp, 1
	je	.L398
.L342:
	mov	ebp, 1
	jmp	.L323
.L315:
	movzx	r11d, r11b
	mov	ebx, 495
	lea	eax, -239[r11]
	sub	ebx, r12d
	lea	rdx, [r8+rax*4]
	mov	rax, r8
	.p2align 4,,10
	.p2align 3
.L328:
	mov	WORD PTR [rax], r9w
	add	rax, 4
	mov	WORD PTR -2[rax], bx
	cmp	rax, rdx
	jne	.L328
	mov	r11d, 439
	mov	ebx, 1
	sub	r11d, r12d
	movzx	r11d, r11w
	mov	rdx, r11
	sal	rdx, 32
	or	rdx, r11
	sal	rdx, 16
	mov	QWORD PTR [rax], rdx
	mov	QWORD PTR 8[rax], rdx
	cmp	ebp, 1
	jne	.L342
.L398:
	mov	r11d, DWORD PTR 8[rsp]
	sar	r10d
	mov	edx, r14d
	neg	r10d
	shr	r11d
	movzx	esi, r10b
	movzx	r11d, r11b
	cmp	r10b, -33
	ja	.L329
	movzx	r9d, r10b
	mov	edi, 208
	lea	eax, 0[0+r9*4]
	sub	edi, esi
	cdqe
	add	rax, r8
	cmp	r10b, 80
	jbe	.L332
	lea	r10d, -80[r9]
	mov	ebx, r9d
	sar	r10d, 4
	sub	ebx, r10d
	mov	r12d, r10d
	lea	ebp, 159[r10]
	add	ebx, ebx
	movsx	rbx, ebx
	lea	r8, [r8+rbx*2]
	test	r10b, r10b
	je	.L332
	cmp	ebp, r9d
	jl	.L332
	mov	r10d, r9d
	xor	ebx, ebx
	jmp	.L333
	.p2align 4,,10
	.p2align 3
.L399:
	cmp	bl, r12b
	jnb	.L332
.L333:
	xor	r13d, r13d
	add	r8, 4
	add	r10d, 1
	add	ebx, 1
	mov	WORD PTR -4[r8], r13w
	mov	WORD PTR -2[r8], di
	cmp	r10d, ebp
	jle	.L399
.L332:
	xor	r8d, r8d
	jmp	.L331
	.p2align 4,,10
	.p2align 3
.L400:
	cmp	r8b, 31
	ja	.L344
.L331:
	mov	WORD PTR [rax], r11w
	add	r9d, 1
	add	rax, 4
	add	r8d, 1
	mov	WORD PTR -2[rax], di
	cmp	r9d, 239
	jle	.L400
.L344:
	cmp	r9d, 79
	jg	.L338
	mov	r8d, 80
	sub	r8d, r9d
	sar	r8d, 4
	mov	r11d, r8d
	test	r8b, r8b
	je	.L338
	mov	r10d, 168
	xor	r8d, r8d
	sub	r10d, esi
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L401:
	cmp	r8b, r11b
	jnb	.L338
.L339:
	xor	ebx, ebx
	add	rax, 4
	add	r9d, 1
	add	r8d, 1
	mov	WORD PTR -4[rax], bx
	mov	WORD PTR -2[rax], r10w
	cmp	r9d, 159
	jle	.L401
	jmp	.L338
.L329:
	movzx	r10d, r10b
	mov	eax, 463
	lea	r9d, -223[r10]
	sub	eax, esi
	lea	r9, [r8+r9*4]
	.p2align 4,,10
	.p2align 3
.L341:
	mov	WORD PTR [r8], r11w
	add	r8, 4
	mov	WORD PTR -2[r8], ax
	cmp	r8, r9
	jne	.L341
	mov	r9d, 423
	sub	r9d, esi
	movzx	r9d, r9w
	mov	rax, r9
	sal	rax, 32
	or	rax, r9
	sal	rax, 16
	mov	QWORD PTR [r8], rax
	mov	QWORD PTR 8[r8], rax
.L338:
	mov	r9, QWORD PTR .refptr.gBgPalette[rip]
	sar	ecx, 4
	lea	r10, sPalette_Zone7BgCeiling[rip]
	movzx	ecx, cx
	lea	rax, 418[r9]
	add	r9, 434
	.p2align 4,,10
	.p2align 3
.L337:
	mov	r8d, ecx
	add	rax, 2
	sub	ecx, 1
	and	r8d, 7
	movzx	r8d, WORD PTR 2[r10+r8*2]
	mov	WORD PTR -2[rax], r8w
	cmp	rax, r9
	jne	.L337
	or	edx, 5
	mov	DWORD PTR [r15], edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L396:
	mov	r8, QWORD PTR .refptr.gBgScrollRegs[rip]
	movzx	edx, WORD PTR 12[r8]
	test	dx, dx
	cmove	edx, ecx
	movsx	cx, BYTE PTR 25[rax]
	add	ecx, edx
	mov	WORD PTR 12[r8], cx
	movsx	ecx, cx
	jmp	.L311
.L316:
	lea	ebx, -80[rdx]
	mov	r11d, edx
	sar	ebx, 4
	sub	r11d, ebx
	mov	BYTE PTR 15[rsp], bl
	lea	esi, 159[rbx]
	add	r11d, r11d
	movsx	r11, r11d
	lea	r11, [r8+r11*2]
	test	bl, bl
	je	.L318
	mov	DWORD PTR 16[rsp], esi
	cmp	esi, edx
	jl	.L318
	mov	r13d, 208
	mov	DWORD PTR 20[rsp], r14d
	mov	esi, edx
	xor	ebx, ebx
	mov	QWORD PTR 24[rsp], rax
	mov	r14d, DWORD PTR 16[rsp]
	sub	r13d, r12d
	movzx	eax, BYTE PTR 15[rsp]
	jmp	.L319
	.p2align 4,,10
	.p2align 3
.L402:
	cmp	esi, r14d
	jg	.L391
.L319:
	mov	WORD PTR [r11], 0
	add	ebx, 1
	add	r11, 4
	add	esi, 1
	mov	WORD PTR -2[r11], r13w
	cmp	bl, al
	jb	.L402
.L391:
	mov	r14d, DWORD PTR 20[rsp]
	mov	rax, QWORD PTR 24[rsp]
	jmp	.L318
.L322:
	mov	r11d, 80
	sub	r11d, edx
	sar	r11d, 4
	mov	esi, r11d
	test	r11b, r11b
	je	.L325
	mov	ebx, 184
	xor	r11d, r11d
	sub	ebx, r12d
	jmp	.L326
	.p2align 4,,10
	.p2align 3
.L403:
	cmp	r11b, sil
	jnb	.L325
.L326:
	xor	r12d, r12d
	add	rax, 4
	add	edx, 1
	add	r11d, 1
	mov	WORD PTR -4[rax], r12w
	mov	WORD PTR -2[rax], bx
	cmp	edx, 239
	jle	.L403
	jmp	.L325
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone7ActBoss
	.def	StageBgUpdate_Zone7ActBoss;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone7ActBoss
StageBgUpdate_Zone7ActBoss:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR [rax]
	test	BYTE PTR 36[rdx], -128
	je	.L405
	sub	ecx, 1
	mov	DWORD PTR [rax], ecx
.L405:
	mov	edx, 945
	jmp	Zone7BgUpdate_Inside
	.seh_endproc
	.p2align 4
	.globl	Zone7BgUpdate_Outside
	.def	Zone7BgUpdate_Outside;	.scl	2;	.type	32;	.endef
	.seh_proc	Zone7BgUpdate_Outside
Zone7BgUpdate_Outside:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	lea	r10, gUnknown_080D5C62[rip]
	movzx	eax, WORD PTR [rdx]
	and	ah, -9
	or	ah, 1
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	rbx, rsp
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 16
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	edx, 1
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r11d, DWORD PTR [rax]
	lea	r9d, 0[0+r11*4]
	mov	eax, r11d
	sub	eax, r9d
	sub	eax, 64
	and	ax, 255
	mov	WORD PTR [rsp], ax
	.p2align 4,,10
	.p2align 3
.L410:
	mov	rcx, rdx
	and	ecx, 7
	movsx	eax, WORD PTR [r10+rcx*4]
	imul	eax, r11d
	shr	eax, 8
	add	ax, WORD PTR 2[r10+rcx*4]
	and	ax, 255
	mov	WORD PTR [rbx+rdx*2], ax
	add	rdx, 1
	cmp	rdx, 32
	jne	.L410
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	xor	ecx, ecx
	mov	r11d, 160
	movss	xmm2, DWORD PTR .LC3[rip]
	movss	xmm1, DWORD PTR .LC4[rip]
	mov	BYTE PTR [rax], 4
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L418:
	lea	edx, [r9+rax*2]
	mov	ebx, eax
	and	edx, 1022
	and	ebx, 31
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 9
	add	dx, WORD PTR [rsp+rbx*2]
	imul	ebx, eax, 20607
.L416:
	shr	ebx, 5
	sub	eax, ecx
	add	r8, 4
	and	ebx, 1023
	mov	WORD PTR -2[r8], ax
	movzx	ebx, WORD PTR 512[r10+rbx*2]
	sar	bx, 10
	add	edx, ebx
	and	dx, 255
	mov	WORD PTR -4[r8], dx
.L412:
	add	ecx, 1
	cmp	cx, 240
	je	.L417
.L413:
	movzx	eax, cx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	divss	xmm0, xmm2
	mulss	xmm0, xmm1
	cvttss2si	eax, xmm0
	cmp	eax, 79
	jle	.L418
	cmp	eax, 159
	jg	.L412
	lea	edx, [r9+rax*2]
	mov	ebx, eax
	and	edx, 1022
	and	ebx, 31
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	dx, 9
	add	dx, WORD PTR [rsp+rbx*2]
	mov	ebx, r11d
	sub	ebx, eax
	imul	ebx, ebx, 20607
	jmp	.L416
.L417:
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	StageBgUpdate_Zone7Acts12
	.def	StageBgUpdate_Zone7Acts12;	.scl	2;	.type	32;	.endef
	.seh_proc	StageBgUpdate_Zone7Acts12
StageBgUpdate_Zone7Acts12:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	r9, sZone7BgTransitionRegions[rip]
	cmp	BYTE PTR [rax], 24
	setne	al
	movzx	eax, al
	mov	r8d, ecx
	setne	cl
	sal	rax, 4
	movzx	eax, WORD PTR [r9+rax]
	cmp	eax, r8d
	jg	.L420
	movzx	ecx, cl
	mov	eax, 1
	sal	rcx, 4
	add	rcx, r9
	jmp	.L421
	.p2align 4,,10
	.p2align 3
.L429:
	movzx	r9d, WORD PTR [rcx+rax*2]
	lea	r10, 1[rax]
	cmp	r9d, r8d
	jg	.L428
	mov	rax, r10
.L421:
	cmp	rax, 8
	jne	.L429
.L420:
	mov	ecx, r8d
	call	Zone7BgUpdate_Inside
	xor	edx, edx
.L423:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	BYTE PTR 191[rax], dl
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L428:
	test	al, 1
	je	.L420
	mov	ecx, r8d
	call	Zone7BgUpdate_Outside
	mov	edx, 1
	jmp	.L423
	.seh_endproc
	.p2align 4
	.globl	DestroyCameraMovementTask
	.def	DestroyCameraMovementTask;	.scl	2;	.type	32;	.endef
	.seh_proc	DestroyCameraMovementTask
DestroyCameraMovementTask:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rcx, QWORD PTR gCamera[rip+96]
	call	TaskDestroy
	mov	QWORD PTR gCamera[rip+96], 0
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_801E3F0
	.def	sub_801E3F0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801E3F0
sub_801E3F0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 1
	je	.L431
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	sar	eax, 16
	or	eax, -8
	mov	DWORD PTR gCamera[rip+28], eax
.L431:
	ret
	.seh_endproc
	.p2align 4
	.globl	nullsub_801E494
	.def	nullsub_801E494;	.scl	2;	.type	32;	.endef
	.seh_proc	nullsub_801E494
nullsub_801E494:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	gUnknown_080D5CC2
	.section .rdata,"dr"
	.align 32
gUnknown_080D5CC2:
	.word	14720
	.word	32767
	.word	7903
	.word	31983
	.word	22603
	.word	2116
	.word	32697
	.word	26356
	.word	19916
	.word	12582
	.word	15368
	.word	4575
	.word	283
	.word	151
	.word	144
	.word	138
	.globl	sZone7BgTransitionRegions
	.align 32
sZone7BgTransitionRegions:
	.word	697
	.word	1849
	.word	8857
	.word	11832
	.word	18553
	.word	22009
	.word	25369
	.word	27673
	.word	1344
	.word	2616
	.word	9432
	.word	15192
	.word	18552
	.word	19892
	.word	23158
	.word	25848
	.align 32
sPalette_Zone7BgCeiling:
	.word	31775
	.word	5249
	.word	3302
	.word	3302
	.word	3302
	.word	3302
	.word	3302
	.word	3302
	.word	3302
	.word	23574
	.word	32384
	.word	20085
	.word	10994
	.word	32376
	.word	5567
	.word	17931
	.globl	gUnknown_080D5C62
	.align 32
gUnknown_080D5C62:
	.word	-768
	.word	-64
	.word	-384
	.word	0
	.word	-768
	.word	-64
	.word	-256
	.word	-22
	.word	-768
	.word	-64
	.word	-384
	.word	0
	.word	-768
	.word	-64
	.word	-192
	.word	-32
	.globl	gUnknown_080D5C02
	.align 32
gUnknown_080D5C02:
	.ascii "\37\0\37"
	.ascii "\1\7\24"
	.ascii "\1\11\24"
	.ascii "\0\12\23"
	.ascii "\0\14\23"
	.ascii "\0\15\22"
	.ascii "\0\17\22"
	.ascii "\0\20\21"
	.ascii "\0\22\20"
	.ascii "\0\23\20"
	.ascii "\0\25\17"
	.ascii "\0\26\17"
	.ascii "\0\30\16"
	.ascii "\0\31\16"
	.ascii "\0\33\15"
	.ascii "\37\7\0"
	.ascii "\37\0\0"
	.ascii "\17\0\33"
	.ascii "\16\0\31"
	.ascii "\15\1\27"
	.ascii "\14\1\25"
	.ascii "\13\2\23"
	.ascii "\12\2\21"
	.ascii "\10\3\17"
	.ascii "\7\3\15"
	.ascii "\6\4\13"
	.ascii "\5\4\11"
	.ascii "\4\5\7"
	.ascii "\3\5\5"
	.ascii "\2\6\3"
	.ascii "\1\6\1"
	.ascii "\0\7\0"
	.globl	gUnknown_080D5BF0
	.align 16
gUnknown_080D5BF0:
	.word	0
	.word	64
	.word	576
	.word	640
	.word	896
	.word	928
	.word	1440
	.word	1472
	.word	1728
.lcomm sCameraShiftX,2,2
.lcomm sUnknown_03000408,2,2
	.globl	gUnknown_080D5B50
	.align 32
gUnknown_080D5B50:
	.ascii "\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\10\10\10\10\7\7\7\7\6\6\6\6\6\6\6\6\5\5\5\5\5\5\5\5\4\4\4\4\4\4\4\4\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\2\2\2\2\2\2\2\2\2\2\2\2\2\2\2\2\0\0"
	.space 79
	.globl	gUnknown_080D5B20
	.align 32
gUnknown_080D5B20:
	.ascii "\16\0\1"
	.ascii "\26\0\3"
	.ascii "\36\0\2"
	.ascii "&\0\1"
	.ascii ".\0\3"
	.ascii ">\0\1"
	.ascii "F\0\2"
	.ascii "V\0\1"
	.ascii "^\0\2"
	.ascii "~\0\1"
	.ascii "\250\1\1"
	.ascii "\256\1\2"
	.ascii "\266\2\3"
	.ascii "\306\3\4"
	.ascii "\336\4\5"
	.ascii "\377\5\6"
	.align 32
sStageBgDimensions:
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii " @\2"
	.ascii "0"
	.ascii " @\2"
	.ascii "0"
	.ascii " @\2"
	.ascii "0"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii " @\2"
	.ascii "0"
	.ascii " @\2"
	.ascii "0"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii " @\2"
	.ascii "0"
	.ascii "@ \2"
	.ascii "0"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "0"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "0"
	.ascii "  \2"
	.ascii "2"
	.ascii "  \2"
	.ascii "2"
	.ascii " @\2"
	.ascii "0"
	.ascii "  \2"
	.ascii "2"
	.ascii "@ \2"
	.ascii "0"
	.align 32
sStageBgUpdateFuncs:
	.quad	StageBgUpdate_Zone1Acts12
	.quad	StageBgUpdate_Zone1Acts12
	.quad	StageBgUpdate_Zone1ActBoss
	.quad	StageBgUpdate_Dummy
	.quad	StageBgUpdate_Zone2Acts12
	.quad	StageBgUpdate_Zone2Acts12
	.quad	StageBgUpdate_Zone2ActBoss
	.quad	StageBgUpdate_Dummy
	.quad	StageBgUpdate_Zone3Acts12
	.quad	StageBgUpdate_Zone3Acts12
	.quad	StageBgUpdate_Zone3ActBoss
	.quad	StageBgUpdate_Dummy
	.quad	StageBgUpdate_Zone4Acts12
	.quad	StageBgUpdate_Zone4Acts12
	.quad	StageBgUpdate_Dummy
	.quad	StageBgUpdate_Dummy
	.quad	StageBgUpdate_Zone5Acts12
	.quad	StageBgUpdate_Zone5Acts12
	.quad	StageBgUpdate_Zone5ActBoss
	.quad	StageBgUpdate_Dummy
	.quad	StageBgUpdate_Zone6ActBoss
	.quad	StageBgUpdate_Zone6ActBoss
	.quad	StageBgUpdate_Zone6ActBoss
	.quad	StageBgUpdate_Dummy
	.quad	StageBgUpdate_Zone7Acts12
	.quad	StageBgUpdate_Zone7Acts12
	.quad	StageBgUpdate_Zone7ActBoss
	.quad	StageBgUpdate_Dummy
	.quad	StageBgUpdate_ZoneFinalActXX
	.quad	StageBgUpdate_ZoneFinalActTA53
	.quad	StageBgUpdate_Zone1Acts12
	.quad	StageBgUpdate_Zone2Acts12
	.quad	StageBgUpdate_Zone1Acts12
	.quad	StageBgUpdate_Zone6Acts12
	.align 32
sStageBgInitProcedures:
	.quad	CreateStageBg_Zone1
	.quad	CreateStageBg_Zone1
	.quad	CreateStageBg_Zone1
	.quad	0
	.quad	CreateStageBg_Default
	.quad	CreateStageBg_Default
	.quad	CreateStageBg_Default
	.quad	0
	.quad	CreateStageBg_Zone3
	.quad	CreateStageBg_Zone3
	.quad	CreateStageBg_Zone3
	.quad	0
	.quad	CreateStageBg_Zone4
	.quad	CreateStageBg_Zone4
	.quad	CreateStageBg_Dummy
	.quad	0
	.quad	CreateStageBg_Zone5
	.quad	CreateStageBg_Zone5
	.quad	0
	.quad	0
	.quad	CreateStageBg_Zone6_Acts
	.quad	CreateStageBg_Zone6_Acts
	.quad	CreateStageBg_Zone6_Boss
	.quad	0
	.quad	CreateStageBg_Zone7
	.quad	CreateStageBg_Zone7
	.quad	CreateStageBg_Zone7
	.quad	0
	.quad	0
	.quad	CreateStageBg_ZoneFinal_0
	.quad	CreateStageBg_Zone1
	.quad	0
	.quad	0
	.quad	0
	.globl	gBossCameraYClamps
	.align 32
gBossCameraYClamps:
	.word	32
	.word	296
	.word	32
	.word	284
	.word	32
	.word	296
	.word	32
	.word	288
	.word	32
	.word	288
	.word	32
	.word	312
	.word	32
	.word	344
	.word	32
	.word	344
	.word	32
	.word	344
	.globl	gStageCameraBgTemplates
	.align 32
gStageCameraBgTemplates:
	.quad	0
	.quad	VRAM
	.word	0
	.word	0
	.space 4
	.quad	VRAM+106496
	.quad	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	54
	.word	31
	.byte	0
	.byte	0
	.byte	0
	.space 1
	.word	121
	.word	0
	.word	0
	.word	32767
	.word	32767
	.space 4
	.quad	0
	.word	0
	.word	0
	.space 4
	.quad	0
	.quad	VRAM
	.word	0
	.word	0
	.space 4
	.quad	VRAM+114688
	.quad	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	54
	.word	31
	.byte	0
	.byte	0
	.byte	0
	.space 1
	.word	98
	.word	0
	.word	0
	.word	32767
	.word	32767
	.space 4
	.quad	0
	.word	0
	.word	0
	.space 4
	.quad	0
	.quad	VRAM+32768
	.word	0
	.word	0
	.space 4
	.quad	VRAM+102400
	.quad	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.word	32
	.byte	0
	.byte	0
	.byte	0
	.space 1
	.word	19
	.word	0
	.word	0
	.word	32767
	.word	32767
	.space 4
	.quad	0
	.word	0
	.word	0
	.space 4
	.quad	0
	.quad	VRAM+49152
	.word	0
	.word	0
	.space 4
	.quad	VRAM+98304
	.quad	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.word	32
	.byte	0
	.byte	0
	.byte	0
	.space 1
	.word	16
	.word	0
	.word	0
	.word	32767
	.word	32767
	.space 4
	.quad	0
	.word	0
	.word	0
	.space 4
	.globl	gCamera
	.bss
	.align 16
gCamera:
	.space 112
	.globl	unused_3005950
	.align 8
unused_3005950:
	.space 12
	.globl	gStageBackgroundsRam
	.align 16
gStageBackgroundsRam:
	.space 384
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	16191
	.long	63
	.align 16
.LC1:
	.long	426
	.long	426
	.long	240
	.long	240
	.align 4
.LC3:
	.long	1131413504
	.align 4
.LC4:
	.long	1126170624
	.align 4
.LC6:
	.word	-2
	.word	1
	.align 4
.LC7:
	.word	255
	.word	255
	.align 8
.LC12:
	.long	16191
	.long	62
	.align 4
.LC14:
	.word	-1
	.word	-1
	.align 8
.LC17:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.align 8
.LC20:
	.long	4096
	.long	12
	.align 4
.LC25:
	.word	7
	.word	7
	.align 16
.LC28:
	.word	8
	.word	16
	.word	8
	.word	16
	.word	8
	.word	16
	.word	8
	.word	16
	.ident	"GCC: (GNU) 13-win32"
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	UpdateBgAnimationTiles;	.scl	2;	.type	32;	.endef
	.def	CreateSpotLightBeams;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	SuperSonicGetPos;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gBossCameraClampYUpper, "dr"
	.globl	.refptr.gBossCameraClampYUpper
	.linkonce	discard
.refptr.gBossCameraClampYUpper:
	.quad	gBossCameraClampYUpper
	.section	.rdata$.refptr.gBossCameraClampYLower, "dr"
	.globl	.refptr.gBossCameraClampYLower
	.linkonce	discard
.refptr.gBossCameraClampYLower:
	.quad	gBossCameraClampYLower
	.section	.rdata$.refptr.gFinalBossActive, "dr"
	.globl	.refptr.gFinalBossActive
	.linkonce	discard
.refptr.gFinalBossActive:
	.quad	gFinalBossActive
	.section	.rdata$.refptr.gRefCollision, "dr"
	.globl	.refptr.gRefCollision
	.linkonce	discard
.refptr.gRefCollision:
	.quad	gRefCollision
	.section	.rdata$.refptr.EWRAM_START, "dr"
	.globl	.refptr.EWRAM_START
	.linkonce	discard
.refptr.EWRAM_START:
	.quad	EWRAM_START
	.section	.rdata$.refptr.gCollisionTable, "dr"
	.globl	.refptr.gCollisionTable
	.linkonce	discard
.refptr.gCollisionTable:
	.quad	gCollisionTable
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gBgOffsetsHBlankSecondary, "dr"
	.globl	.refptr.gBgOffsetsHBlankSecondary
	.linkonce	discard
.refptr.gBgOffsetsHBlankSecondary:
	.quad	gBgOffsetsHBlankSecondary
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gBgSprites_Unknown2, "dr"
	.globl	.refptr.gBgSprites_Unknown2
	.linkonce	discard
.refptr.gBgSprites_Unknown2:
	.quad	gBgSprites_Unknown2
	.section	.rdata$.refptr.gBgSprites_Unknown1, "dr"
	.globl	.refptr.gBgSprites_Unknown1
	.linkonce	discard
.refptr.gBgSprites_Unknown1:
	.quad	gBgSprites_Unknown1
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gIntrTableTemplate, "dr"
	.globl	.refptr.gIntrTableTemplate
	.linkonce	discard
.refptr.gIntrTableTemplate:
	.quad	gIntrTableTemplate
	.section	.rdata$.refptr.gIntrTable, "dr"
	.globl	.refptr.gIntrTable
	.linkonce	discard
.refptr.gIntrTable:
	.quad	gIntrTable
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gHBlankCallbacks, "dr"
	.globl	.refptr.gHBlankCallbacks
	.linkonce	discard
.refptr.gHBlankCallbacks:
	.quad	gHBlankCallbacks
	.section	.rdata$.refptr.gNumHBlankCallbacks, "dr"
	.globl	.refptr.gNumHBlankCallbacks
	.linkonce	discard
.refptr.gNumHBlankCallbacks:
	.quad	gNumHBlankCallbacks
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
	.section	.rdata$.refptr.gHBlankCopySize, "dr"
	.globl	.refptr.gHBlankCopySize
	.linkonce	discard
.refptr.gHBlankCopySize:
	.quad	gHBlankCopySize
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gHBlankCopyTarget, "dr"
	.globl	.refptr.gHBlankCopyTarget
	.linkonce	discard
.refptr.gHBlankCopyTarget:
	.quad	gHBlankCopyTarget
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
