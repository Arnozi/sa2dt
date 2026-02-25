	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_CreateStageUI
	.def	TaskDestructor_CreateStageUI;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_CreateStageUI
TaskDestructor_CreateStageUI:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 72[rbx]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L4
.L2:
	mov	rcx, QWORD PTR 200[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rcx, QWORD PTR 136[rbx]
	call	VramFree
	jmp	.L2
	.seh_endproc
	.p2align 4
	.globl	Task_StageUIMain
	.def	Task_StageUIMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_StageUIMain
Task_StageUIMain:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rax]
	mov	edi, eax
	mov	WORD PTR 40[rsp], ax
	and	di, 1024
	jne	.L5
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 0
	je	.L8
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	rsi, QWORD PTR .refptr.iwram_end[rip]
	mov	QWORD PTR 40[rsp], rax
.L9:
	mov	ecx, 4
	call	OamMalloc
	cmp	rax, QWORD PTR [rsi]
	je	.L23
	movzx	ecx, WORD PTR 966[rbx]
	movabs	rdx, -140737488355328
	and	rdx, QWORD PTR [rax]
	movabs	r8, 105827994238973
	or	rdx, r8
	and	ch, -13
	mov	QWORD PTR [rax], rdx
	mov	WORD PTR 8[rax], cx
.L23:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	BYTE PTR 49[rbx], -1
	mov	rcx, rbx
	movzx	eax, WORD PTR 20[rax]
	sar	ax, 3
	add	ax, WORD PTR 960[rbx]
	add	eax, 64
	and	ax, 2047
	mov	WORD PTR 960[rbx], ax
	mov	BYTE PTR 48[rbx], ah
	call	UpdateSpriteAnimation
	mov	ecx, 3
	call	OamMalloc
	cmp	rax, QWORD PTR [rsi]
	je	.L24
	movzx	ecx, WORD PTR 962[rbx]
	movabs	rdx, -140737488355328
	and	rdx, QWORD PTR [rax]
	movabs	r8, 35184372613127
	or	rdx, r8
	and	ch, -13
	mov	QWORD PTR [rax], rdx
	mov	WORD PTR 8[rax], cx
.L24:
	mov	r12, QWORD PTR .refptr.gRingCount[rip]
	movzx	eax, WORD PTR [r12]
	cmp	ax, 999
	ja	.L46
	xor	r14d, r14d
	test	ax, ax
	je	.L47
.L27:
	shr	ax, 2
	mov	ecx, 3
	movzx	edi, ax
	imul	edi, edi, 5243
	shr	edi, 17
	call	OamMalloc
	cmp	rax, QWORD PTR [rsi]
	je	.L28
	movabs	rcx, -140737488355328
	mov	rdx, rdi
	and	rcx, QWORD PTR [rax]
	movabs	r8, 549755813916
	and	edx, 1023
	or	rcx, r8
	movzx	edx, WORD PTR 968[rbx+rdx*2]
	mov	QWORD PTR [rax], rcx
	mov	ecx, edx
	or	edx, r14d
	or	ecx, r14d
	and	dx, 1023
	and	cx, -4096
	or	edx, ecx
	mov	WORD PTR 8[rax], dx
.L28:
	lea	edi, [rdi+rdi*4]
	movzx	eax, WORD PTR [r12]
	mov	ecx, 3
	lea	edi, [rdi+rdi*4]
	sal	edi, 2
	movzx	edi, di
	sub	eax, edi
	movsx	r15, eax
	sar	eax, 31
	imul	r15, r15, 1717986919
	sar	r15, 34
	sub	r15d, eax
	call	OamMalloc
	movzx	r15d, r15w
	cmp	rax, QWORD PTR [rsi]
	je	.L29
	movabs	rcx, -140737488355328
	movsx	rdx, r15d
	and	rcx, QWORD PTR [rax]
	movabs	r8, 549755813924
	movzx	edx, WORD PTR 968[rbx+rdx*2]
	or	rcx, r8
	mov	QWORD PTR [rax], rcx
	mov	ecx, edx
	or	edx, r14d
	or	ecx, r14d
	and	dx, 1023
	and	cx, -4096
	or	edx, ecx
	mov	WORD PTR 8[rax], dx
.L29:
	mov	ecx, 3
	movzx	r12d, WORD PTR [r12]
	call	OamMalloc
	cmp	rax, QWORD PTR [rsi]
	je	.L26
	movabs	rcx, -140737488355328
	lea	edx, [r15+r15*4]
	and	rcx, QWORD PTR [rax]
	movabs	r8, 549755813932
	lea	edx, [rdi+rdx*2]
	or	rcx, r8
	sub	r12d, edx
	movzx	r12d, r12w
	movzx	edx, WORD PTR 968[rbx+r12*2]
	mov	QWORD PTR [rax], rcx
	mov	ecx, edx
	or	edx, r14d
	or	ecx, r14d
	and	dx, 1023
	and	cx, -4096
	or	edx, ecx
	mov	WORD PTR 8[rax], dx
.L26:
	mov	rax, QWORD PTR 40[rsp]
	mov	edi, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rax]
	test	ah, 2
	je	.L48
.L5:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	and	eax, 3
	cmp	al, 2
	jne	.L10
.L45:
	mov	rsi, QWORD PTR .refptr.iwram_end[rip]
.L13:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 5[rax], 0
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	QWORD PTR 40[rsp], rax
	jne	.L12
	mov	eax, DWORD PTR [rax]
	cmp	eax, 34799
	jbe	.L12
	imul	eax, eax, -286331153
	add	eax, 143165576
	ror	eax, 2
	cmp	eax, 71582788
	jbe	.L49
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	lea	r13, sOrdersOfMagnitude[rip]
	mov	r15d, 28
	mov	r14d, 100000
	mov	r8d, DWORD PTR [rax]
	mov	eax, 999999
	cmp	r8d, eax
	cmovle	eax, r8d
	mov	r12d, eax
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L50:
	mov	r14d, DWORD PTR 0[r13]
.L19:
	xor	ebp, ebp
	test	r14d, r14d
	je	.L16
	mov	eax, r12d
	cdq
	idiv	r14d
	imul	r14d, eax
	mov	ebp, eax
.L16:
	mov	ecx, 3
	call	OamMalloc
	mov	rcx, rax
	cmp	rax, QWORD PTR [rsi]
	je	.L17
	mov	WORD PTR [rax], r15w
	movsx	rax, ebp
	movzx	eax, WORD PTR 968[rbx+rax*2]
	mov	rdx, rax
	shr	ax, 12
	and	edx, 1023
	sal	rax, 60
	sal	rdx, 48
	or	rdx, 8388622
	or	rdx, rax
	movabs	rax, 281472829227008
	and	rax, QWORD PTR 2[rcx]
	or	rdx, rax
	mov	QWORD PTR 2[rcx], rdx
.L17:
	add	r15d, 8
	sub	r12d, r14d
	add	r13, 4
	cmp	r15w, 76
	jne	.L50
	mov	ecx, 3
	call	OamMalloc
	cmp	rax, QWORD PTR [rsi]
	je	.L20
	movzx	ecx, WORD PTR 964[rbx]
	movabs	rdx, -140737488355328
	and	rdx, QWORD PTR [rax]
	movabs	r8, 35184386637830
	or	rdx, r8
	mov	QWORD PTR [rax], rdx
	mov	edx, ecx
	and	dh, -13
	mov	WORD PTR 8[rax], dx
.L20:
	mov	rax, QWORD PTR .refptr.gNumLives[rip]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L21
	lea	edi, -1[rax]
	mov	eax, 9
	cmp	di, ax
	cmova	edi, eax
.L21:
	mov	ecx, 3
	call	OamMalloc
	cmp	rax, QWORD PTR [rsi]
	je	.L9
	movabs	rdx, -140737488355328
	movzx	edi, di
	and	rdx, QWORD PTR [rax]
	movabs	r8, 549770231838
	movzx	ecx, WORD PTR 968[rbx+rdi*2]
	or	rdx, r8
	mov	QWORD PTR [rax], rdx
	mov	edx, ecx
	and	dh, -13
	mov	WORD PTR 8[rax], dx
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L47:
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	mov	edx, DWORD PTR [rdx]
	and	edx, 16
	neg	edx
	sbb	r14d, r14d
	and	r14d, 28672
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L48:
	mov	ecx, 3
	call	OamMalloc
	cmp	rax, QWORD PTR [rsi]
	je	.L31
	movzx	edx, WORD PTR 988[rbx]
	movabs	rcx, -140737488355328
	and	rcx, QWORD PTR [rax]
	movabs	r8, 549755814080
	or	rcx, r8
	or	dh, 96
	mov	QWORD PTR [rax], rcx
	and	dh, -13
	mov	WORD PTR 8[rax], dx
.L31:
	mov	ecx, 3
	call	OamMalloc
	cmp	rax, QWORD PTR [rsi]
	je	.L32
	movzx	edx, WORD PTR 988[rbx]
	movabs	rcx, -140737488355328
	and	rcx, QWORD PTR [rax]
	movabs	r8, 549755814104
	or	rcx, r8
	or	dh, 96
	mov	QWORD PTR [rax], rcx
	and	dh, -13
	mov	WORD PTR 8[rax], dx
.L32:
	mov	eax, 35999
	mov	r12d, 2290649225
	lea	r8, sZoneTimeMinutesTable[rip]
	cmp	edi, eax
	cmova	edi, eax
	mov	eax, 2443359173
	xor	r14d, r14d
	mov	ebp, edi
	imul	r12, rbp
	imul	rbp, rax
	lea	rax, sZoneTimeSecondsTable[rip]
	shr	r12, 37
	shr	rbp, 43
	mov	edx, ebp
	movsx	ecx, WORD PTR [rax+rdx*2]
	movzx	edx, WORD PTR [r8+rdx*2]
	sub	r12d, ecx
	sub	edi, edx
	movsx	eax, WORD PTR [rax+r12*2]
	sub	edi, eax
	mov	rax, QWORD PTR 40[rsp]
	cmp	DWORD PTR [rax], 32400
	jbe	.L33
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r14d, DWORD PTR [rax]
	shr	r14d, 4
	and	r14d, 1
.L33:
	lea	r13, gMillisUnpackTable[rip]
	add	rbx, 192
	lea	rsi, gSecondsTable[rip]
	movsx	rbp, ebp
	movzx	eax, BYTE PTR 0[r13+rdi*2]
	sal	rbp, 6
	sal	rax, 6
	lea	rcx, [rbx+rax]
	mov	DWORD PTR 38[rbx+rax], 1048805
	mov	BYTE PTR 53[rcx], r14b
	call	DisplaySprite
	movzx	eax, BYTE PTR 1[r13+rdi*2]
	sal	rax, 6
	lea	rcx, [rbx+rax]
	mov	DWORD PTR 38[rbx+rax], 1048813
	mov	BYTE PTR 53[rcx], r14b
	call	DisplaySprite
	movzx	eax, BYTE PTR [rsi+r12*2]
	sal	rax, 6
	lea	rcx, [rbx+rax]
	mov	DWORD PTR 38[rbx+rax], 1048781
	mov	BYTE PTR 53[rcx], r14b
	call	DisplaySprite
	movzx	eax, BYTE PTR 1[rsi+r12*2]
	sal	rax, 6
	lea	rcx, [rbx+rax]
	mov	DWORD PTR 38[rbx+rax], 1048789
	mov	BYTE PTR 53[rcx], r14b
	call	DisplaySprite
	lea	rcx, [rbx+rbp]
	mov	DWORD PTR 38[rbx+rbp], 1048765
	mov	BYTE PTR 53[rcx], r14b
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L10:
	lea	rcx, 896[rbx]
	call	UpdateSpriteAnimation
	mov	r12, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [r12], 0
	je	.L45
	mov	rsi, QWORD PTR .refptr.iwram_end[rip]
	xor	r14d, r14d
	mov	r15d, 4
	movabs	r13, 281472829227008
	.p2align 4,,10
	.p2align 3
.L15:
	mov	ecx, 3
	call	OamMalloc
	mov	rdx, rax
	cmp	rax, QWORD PTR [rsi]
	je	.L14
	movzx	ecx, WORD PTR 990[rbx]
	mov	WORD PTR [rax], r15w
	mov	rax, rcx
	shr	cx, 12
	and	eax, 1023
	sal	rcx, 60
	sal	rax, 48
	or	rax, 31
	or	rax, rcx
	mov	rcx, QWORD PTR 2[rdx]
	and	rcx, r13
	or	rax, rcx
	mov	QWORD PTR 2[rdx], rax
.L14:
	movzx	eax, BYTE PTR [r12]
	add	r14d, 1
	add	r15d, 8
	cmp	r14w, ax
	jb	.L15
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L46:
	mov	DWORD PTR 806[rbx], 1048608
	lea	rdi, 768[rbx]
	mov	rcx, rdi
	call	DisplaySprite
	mov	rcx, rdi
	mov	DWORD PTR 806[rbx], 1048616
	call	DisplaySprite
	mov	rcx, rdi
	mov	DWORD PTR 806[rbx], 1048624
	call	DisplaySprite
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L49:
	mov	ecx, 139
	call	m4aSongNumStart
	jmp	.L12
	.seh_endproc
	.p2align 4
	.globl	CreateStageUI
	.def	CreateStageUI;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageUI
CreateStageUI:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_CreateStageUI[rip]
	xor	r9d, r9d
	mov	edx, 992
	mov	r8d, 8450
	lea	rcx, Task_StageUIMain[rip]
	lea	r13, sAnimsAsciiDigits[rip]
	xor	edi, edi
	lea	r12, 2[r13]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rbp, QWORD PTR 24[rax]
	mov	QWORD PTR gStageUITask[rip], rax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	lea	rbx, 192[rbp]
	mov	DWORD PTR 38[rbx], 0
	lea	rsi, 65536[rax]
	test	rdi, rdi
	je	.L59
	.p2align 4,,10
	.p2align 3
.L52:
	mov	rax, rdi
	sal	rax, 6
	add	rax, QWORD PTR 200[rbp]
	mov	QWORD PTR 8[rbx], rax
.L53:
	sub	rax, rsi
	xor	r11d, r11d
	shr	rax, 5
	and	ax, 1023
	or	ah, 96
	mov	WORD PTR 968[rbp+rdi*2], ax
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	movzx	eax, WORD PTR 0[r13+rdi*4]
	mov	WORD PTR 42[rbx], r11w
	mov	WORD PTR 18[rbx], ax
	movzx	eax, WORD PTR [r12+rdi*4]
	add	rdi, 1
	mov	BYTE PTR 49[rbx], -1
	mov	BYTE PTR 48[rbx], al
	xor	eax, eax
	mov	WORD PTR 36[rbx], ax
	xor	eax, eax
	mov	WORD PTR 44[rbx], ax
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 262144
	cmp	rdi, 12
	je	.L60
	mov	rcx, rbx
	add	rbx, 64
	call	UpdateSpriteAnimation
	mov	DWORD PTR 38[rbx], 0
	test	rdi, rdi
	jne	.L52
.L59:
	mov	ecx, 24
	call	VramMalloc
	mov	QWORD PTR 200[rbp], rax
	mov	rax, QWORD PTR 8[rbx]
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L60:
	mov	rbx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rbx], 2
	jbe	.L61
.L56:
	mov	DWORD PTR 102[rbp], 65536
	mov	ecx, 32
	call	VramMalloc
	movzx	ebx, WORD PTR .LC11[rip]
	mov	DWORD PTR 80[rbp], 73793536
	lea	rcx, 64[rbp]
	mov	QWORD PTR 72[rbp], rax
	sub	rax, rsi
	shr	rax, 5
	mov	DWORD PTR 106[rbp], 192
	and	ax, 1023
	mov	WORD PTR 112[rbp], bx
	or	ah, 96
	mov	BYTE PTR 114[rbp], 16
	mov	WORD PTR 966[rbp], ax
	xor	eax, eax
	mov	WORD PTR 100[rbp], ax
	mov	BYTE PTR 117[rbp], 0
	mov	DWORD PTR 120[rbp], -1
	mov	DWORD PTR 96[rbp], 0
	call	UpdateSpriteAnimation
	mov	DWORD PTR 38[rbp], 589831
	mov	ecx, 4
	call	VramMalloc
	xor	edx, edx
	mov	DWORD PTR 16[rbp], 73859072
	xor	ecx, ecx
	mov	QWORD PTR 8[rbp], rax
	sub	rax, rsi
	movdqu	xmm0, XMMWORD PTR sPalette1UpIcons[rip]
	shr	rax, 5
	movdqu	xmm1, XMMWORD PTR sPalette1UpIcons[rip+16]
	mov	WORD PTR 36[rbp], dx
	and	ax, 1023
	mov	DWORD PTR 42[rbp], 0
	or	ah, 96
	mov	WORD PTR 48[rbp], bx
	mov	WORD PTR 962[rbp], ax
	mov	rax, QWORD PTR .refptr.gObjPalette[rip]
	mov	BYTE PTR 50[rbp], 16
	mov	BYTE PTR 53[rbp], 0
	mov	DWORD PTR 32[rbp], 0
	mov	DWORD PTR 56[rbp], -1
	movups	XMMWORD PTR 224[rax], xmm0
	movups	XMMWORD PTR 240[rax], xmm1
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	WORD PTR 960[rbp], cx
	or	DWORD PTR [rax], 2
	mov	rax, QWORD PTR gStageUITask[rip]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	mov	rdi, QWORD PTR .refptr.gSelectedCharacter[rip]
	lea	r13, sAnims1UpIcons[rip]
	mov	DWORD PTR 166[rbp], 14548998
	lea	r12, 128[rbp]
	movsx	rax, BYTE PTR [rdi]
	lea	rax, [rax+rax*2]
	movzx	ecx, WORD PTR 0[r13+rax*2]
	call	VramMalloc
	movsx	rdx, BYTE PTR [rdi]
	xor	r8d, r8d
	xor	r9d, r9d
	mov	QWORD PTR 136[rbp], rax
	sub	rax, rsi
	mov	r10d, 4351
	lea	rdx, [rdx+rdx*2]
	shr	rax, 5
	mov	WORD PTR 144[rbp], r8w
	lea	rdx, 0[r13+rdx*2]
	and	ax, 1023
	cmp	BYTE PTR [rbx], 2
	mov	WORD PTR 164[rbp], r9w
	movzx	ecx, WORD PTR 2[rdx]
	movzx	edx, WORD PTR 4[rdx]
	mov	WORD PTR 964[rbp], ax
	mov	DWORD PTR 170[rbp], 256
	mov	WORD PTR 146[rbp], cx
	mov	BYTE PTR 176[rbp], dl
	mov	WORD PTR 177[rbp], r10w
	mov	BYTE PTR 181[rbp], 0
	mov	DWORD PTR 184[rbp], -1
	mov	DWORD PTR 160[rbp], 0
	jbe	.L58
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	edx, BYTE PTR 296[rdx]
	shr	dl, 4
	and	edx, 3
	mov	BYTE PTR 181[rbp], dl
	sal	edx, 12
	or	edx, eax
	mov	WORD PTR 964[rbp], dx
.L58:
	mov	rcx, r12
	call	UpdateSpriteAnimation
	jmp	.L56
	.seh_endproc
	.p2align 4
	.globl	StageUI_PrintIntegerAt
	.def	StageUI_PrintIntegerAt;	.scl	2;	.type	32;	.endef
	.seh_proc	StageUI_PrintIntegerAt
StageUI_PrintIntegerAt:
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
	mov	rax, QWORD PTR gStageUITask[rip]
	mov	r13d, 1
	mov	rbx, QWORD PTR 24[rax]
	add	rbx, 192
	mov	ebp, ecx
	mov	esi, r8d
	mov	edi, r9d
	movzx	r12d, dx
	cmp	ecx, 9
	jbe	.L64
	mov	r13d, 2
	cmp	ecx, 99
	ja	.L76
	.p2align 4,,10
	.p2align 3
.L64:
	movsx	rbp, ebp
	sub	r13d, 1
	mov	rcx, rbp
	imul	rbp, rbp, 1717986919
	mov	eax, ecx
	mov	ecx, ecx
	sar	eax, 31
	sar	rbp, 34
	sub	ebp, eax
	lea	eax, 0[rbp+rbp*4]
	add	eax, eax
	mov	eax, eax
	sub	rcx, rax
	sal	rcx, 6
	add	rcx, rbx
	or	DWORD PTR 32[rcx], 16384
	mov	WORD PTR 38[rcx], r12w
	sub	r12d, 8
	mov	WORD PTR 40[rcx], si
	mov	BYTE PTR 53[rcx], dil
	call	DisplaySprite
	test	ebp, ebp
	je	.L62
	test	r13d, r13d
	jne	.L64
.L62:
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
.L76:
	mov	r13d, 3
	cmp	ecx, 999
	jbe	.L64
	mov	r13d, 4
	cmp	ecx, 9999
	jbe	.L64
	mov	r13d, 5
	cmp	ecx, 99999
	jbe	.L64
	xor	r13d, r13d
	cmp	ecx, 999999
	seta	r13b
	add	r13d, 6
	jmp	.L64
	.seh_endproc
	.globl	sZoneTimeMinutesTable
	.section .rdata,"dr"
	.align 16
sZoneTimeMinutesTable:
	.word	0
	.word	3600
	.word	7200
	.word	10800
	.word	14400
	.word	18000
	.word	21600
	.word	25200
	.word	28800
	.word	32400
	.word	-29536
	.globl	sZoneTimeSecondsTable
	.align 32
sZoneTimeSecondsTable:
	.word	0
	.word	60
	.word	120
	.word	180
	.word	240
	.word	300
	.word	360
	.word	420
	.word	480
	.word	540
	.word	600
	.word	660
	.word	720
	.word	780
	.word	840
	.word	900
	.word	960
	.word	1020
	.word	1080
	.word	1140
	.word	1200
	.word	1260
	.word	1320
	.word	1380
	.word	1440
	.word	1500
	.word	1560
	.word	1620
	.word	1680
	.word	1740
	.word	1800
	.word	1860
	.word	1920
	.word	1980
	.word	2040
	.word	2100
	.word	2160
	.word	2220
	.word	2280
	.word	2340
	.word	2400
	.word	2460
	.word	2520
	.word	2580
	.word	2640
	.word	2700
	.word	2760
	.word	2820
	.word	2880
	.word	2940
	.word	3000
	.word	3060
	.word	3120
	.word	3180
	.word	3240
	.word	3300
	.word	3360
	.word	3420
	.word	3480
	.word	3540
	.word	3600
	.globl	gMillisUnpackTable
	.align 32
gMillisUnpackTable:
	.ascii "\0\0"
	.ascii "\0\2"
	.ascii "\0\3"
	.ascii "\0\5"
	.ascii "\0\7"
	.ascii "\0\10"
	.ascii "\1\0"
	.ascii "\1\2"
	.ascii "\1\3"
	.ascii "\1\5"
	.ascii "\1\7"
	.ascii "\1\10"
	.ascii "\2\0"
	.ascii "\2\2"
	.ascii "\2\3"
	.ascii "\2\5"
	.ascii "\2\7"
	.ascii "\2\10"
	.ascii "\3\0"
	.ascii "\3\2"
	.ascii "\3\3"
	.ascii "\3\5"
	.ascii "\3\7"
	.ascii "\3\10"
	.ascii "\4\0"
	.ascii "\4\2"
	.ascii "\4\3"
	.ascii "\4\5"
	.ascii "\4\7"
	.ascii "\4\10"
	.ascii "\5\0"
	.ascii "\5\2"
	.ascii "\5\3"
	.ascii "\5\5"
	.ascii "\5\7"
	.ascii "\5\10"
	.ascii "\6\0"
	.ascii "\6\2"
	.ascii "\6\3"
	.ascii "\6\5"
	.ascii "\6\7"
	.ascii "\6\10"
	.ascii "\7\0"
	.ascii "\7\2"
	.ascii "\7\3"
	.ascii "\7\5"
	.ascii "\7\7"
	.ascii "\7\10"
	.ascii "\10\0"
	.ascii "\10\2"
	.ascii "\10\3"
	.ascii "\10\5"
	.ascii "\10\7"
	.ascii "\10\10"
	.ascii "\11\0"
	.ascii "\11\2"
	.ascii "\11\3"
	.ascii "\11\5"
	.ascii "\11\7"
	.ascii "\11\11"
	.globl	gSecondsTable
	.align 32
gSecondsTable:
	.ascii "\0\0"
	.ascii "\0\1"
	.ascii "\0\2"
	.ascii "\0\3"
	.ascii "\0\4"
	.ascii "\0\5"
	.ascii "\0\6"
	.ascii "\0\7"
	.ascii "\0\10"
	.ascii "\0\11"
	.ascii "\1\0"
	.ascii "\1\1"
	.ascii "\1\2"
	.ascii "\1\3"
	.ascii "\1\4"
	.ascii "\1\5"
	.ascii "\1\6"
	.ascii "\1\7"
	.ascii "\1\10"
	.ascii "\1\11"
	.ascii "\2\0"
	.ascii "\2\1"
	.ascii "\2\2"
	.ascii "\2\3"
	.ascii "\2\4"
	.ascii "\2\5"
	.ascii "\2\6"
	.ascii "\2\7"
	.ascii "\2\10"
	.ascii "\2\11"
	.ascii "\3\0"
	.ascii "\3\1"
	.ascii "\3\2"
	.ascii "\3\3"
	.ascii "\3\4"
	.ascii "\3\5"
	.ascii "\3\6"
	.ascii "\3\7"
	.ascii "\3\10"
	.ascii "\3\11"
	.ascii "\4\0"
	.ascii "\4\1"
	.ascii "\4\2"
	.ascii "\4\3"
	.ascii "\4\4"
	.ascii "\4\5"
	.ascii "\4\6"
	.ascii "\4\7"
	.ascii "\4\10"
	.ascii "\4\11"
	.ascii "\5\0"
	.ascii "\5\1"
	.ascii "\5\2"
	.ascii "\5\3"
	.ascii "\5\4"
	.ascii "\5\5"
	.ascii "\5\6"
	.ascii "\5\7"
	.ascii "\5\10"
	.ascii "\5\11"
	.globl	sOrdersOfMagnitude
	.align 16
sOrdersOfMagnitude:
	.long	100000
	.long	10000
	.long	1000
	.long	100
	.long	10
	.long	1
	.globl	sPalette1UpIcons
	.align 32
sPalette1UpIcons:
	.word	384
	.word	223
	.word	155
	.word	83
	.word	12
	.word	32767
	.word	24377
	.word	14798
	.word	1057
	.word	32422
	.word	28104
	.word	21832
	.word	17670
	.word	959
	.word	767
	.word	575
	.globl	sAnims1UpIcons
	.align 16
sAnims1UpIcons:
	.word	4
	.word	1125
	.word	0
	.word	4
	.word	1125
	.word	3
	.word	4
	.word	1125
	.word	1
	.word	4
	.word	1125
	.word	2
	.word	4
	.word	1125
	.word	4
	.globl	sAnimsAsciiDigits
	.align 32
sAnimsAsciiDigits:
	.word	1119
	.word	16
	.word	1119
	.word	17
	.word	1119
	.word	18
	.word	1119
	.word	19
	.word	1119
	.word	20
	.word	1119
	.word	21
	.word	1119
	.word	22
	.word	1119
	.word	23
	.word	1119
	.word	24
	.word	1119
	.word	25
	.word	1119
	.word	26
	.word	1128
	.word	0
	.globl	gStageUITask
	.bss
	.align 8
gStageUITask:
	.space 8
	.section .rdata,"dr"
	.align 2
.LC11:
	.byte	0
	.byte	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	OamMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.iwram_end, "dr"
	.globl	.refptr.iwram_end
	.linkonce	discard
.refptr.iwram_end:
	.quad	iwram_end
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
