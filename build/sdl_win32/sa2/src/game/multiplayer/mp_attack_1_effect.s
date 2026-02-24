	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_MPAttackEffect
	.def	TaskDestructor_MPAttackEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_MPAttackEffect
TaskDestructor_MPAttackEffect:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80871C4
	.def	sub_80871C4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80871C4
sub_80871C4:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	edi, -17
	mov	ebx, edx
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	r11d, ecx
	mov	rcx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	r9d, ebx
	lea	r10d, [r8+rbx]
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movsx	r10d, r10w
	add	rax, 64
	mov	QWORD PTR [rcx], rax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	ecx, r8d
	sub	ecx, ebx
	movsx	ebx, bx
	or	DWORD PTR [rax], 4
	sub	r9w, r8w
	mov	eax, 0
	cmovns	ecx, eax
	movsx	r9d, r9w
	add	rdx, 2
	xor	eax, eax
	xor	esi, esi
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L26:
	cmp	r10d, eax
	jle	.L5
	lea	r8d, [rcx+r11]
	lea	ebp, -1[r8]
	cmp	ebx, eax
	jle	.L6
	cmp	bp, 238
	jbe	.L8
	test	r8w, r8w
	mov	r8d, edi
	cmovle	r8d, esi
.L8:
	mov	BYTE PTR -2[rdx], r8b
	mov	r8d, r11d
	sub	r8d, ecx
	lea	ebp, -1[r8]
	cmp	bp, 238
	jbe	.L10
	cmp	r8w, 239
	mov	r8d, esi
	cmovg	r8d, edi
.L10:
	mov	BYTE PTR -1[rdx], r8b
	xor	r8d, r8d
	cmp	cx, 240
	setl	r8b
	add	ecx, r8d
.L12:
	add	eax, 1
	add	rdx, 2
	cmp	eax, 160
	je	.L25
.L18:
	cmp	r9d, eax
	jle	.L26
.L5:
	xor	r8d, r8d
	add	eax, 1
	add	rdx, 2
	mov	WORD PTR -4[rdx], r8w
	cmp	eax, 160
	jne	.L18
.L25:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	cmp	bp, 238
	jbe	.L14
	test	r8w, r8w
	mov	r8d, edi
	cmovle	r8d, esi
.L14:
	mov	BYTE PTR -2[rdx], r8b
	mov	r8d, r11d
	sub	r8d, ecx
	lea	ebp, -1[r8]
	cmp	bp, 238
	jbe	.L16
	cmp	r8w, 239
	mov	r8d, esi
	cmovg	r8d, edi
.L16:
	mov	BYTE PTR -1[rdx], r8b
	xor	r8d, r8d
	test	cx, cx
	setg	r8b
	sub	ecx, r8d
	jmp	.L12
	.seh_endproc
	.p2align 4
	.globl	Task_MPAttackEffect
	.def	Task_MPAttackEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_MPAttackEffect
Task_MPAttackEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 240
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rbx]
	movzx	edx, WORD PTR 17[rcx]
	movzx	ecx, WORD PTR 13[rcx]
	mov	rsi, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR [rsi]
	sub	r8d, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movsx	r8d, r8w
	sub	dx, WORD PTR 4[rax]
	sub	cx, WORD PTR [rax]
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_80871C4
	movzx	eax, BYTE PTR [rsi]
	add	eax, 4
	mov	BYTE PTR [rsi], al
	cmp	al, 50
	jbe	.L27
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_8087088[rip]
	mov	QWORD PTR 40[rax], rbx
.L27:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8087088
	.def	sub_8087088;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8087088
sub_8087088:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, 110
	mov	rax, QWORD PTR [rbx]
	movzx	edx, WORD PTR 17[rcx]
	movzx	ecx, WORD PTR 13[rcx]
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	dx, WORD PTR 4[rax]
	sub	cx, WORD PTR [rax]
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_80871C4
	movzx	eax, BYTE PTR [rsi]
	add	eax, 1
	cmp	al, 120
	ja	.L30
	mov	BYTE PTR [rsi], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	mov	BYTE PTR [rsi], 50
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_80870E8[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80870E8
	.def	sub_80870E8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80870E8
sub_80870E8:
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
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	lea	r9, gUnknown_080E02DC[rip]
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	r8d, 160
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	movzx	edx, BYTE PTR [rsi]
	mov	eax, edx
	sub	r8d, edx
	movzx	edx, WORD PTR 17[rdi]
	sub	dx, WORD PTR 4[r10]
	and	eax, 7
	movsx	r8d, r8w
	movsx	cx, BYTE PTR 1[r9+rax*2]
	movsx	ax, BYTE PTR [r9+rax*2]
	add	edx, ecx
	movzx	ecx, WORD PTR 13[rdi]
	sub	cx, WORD PTR [r10]
	add	ecx, eax
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_80871C4
	movzx	eax, BYTE PTR [rsi]
	mov	rbp, QWORD PTR .refptr.gBldRegs[rip]
	mov	edx, eax
	add	eax, 1
	shr	dl, 4
	add	edx, 4
	movzx	edx, dl
	mov	WORD PTR 4[rbp], dx
	mov	BYTE PTR [rsi], al
	cmp	al, -96
	jbe	.L32
	test	DWORD PTR 36[rdi], 1080033280
	jne	.L35
	test	BYTE PTR 59[rdi], -126
	je	.L40
.L35:
	xor	eax, eax
	mov	rcx, QWORD PTR [rbx]
	mov	WORD PTR 4[rbp], ax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	and	WORD PTR [rax], -8193
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L32:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	mov	rcx, rdi
	call	Coll_DamagePlayer
	test	eax, eax
	je	.L35
	mov	ecx, 154
	call	m4aSongNumStart
	jmp	.L35
	.seh_endproc
	.p2align 4
	.globl	CreateMPAttackEffect
	.def	CreateMPAttackEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMPAttackEffect
CreateMPAttackEffect:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_MPAttackEffect[rip]
	xor	r9d, r9d
	mov	edx, 1
	mov	r8d, 32768
	lea	rcx, Task_MPAttackEffect[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	ecx, 16319
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	r8d, 4
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	WORD PTR [rdx], cx
	mov	ecx, 219
	mov	WORD PTR 4[rdx], r8w
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	or	DWORD PTR 20[rax], 63
	or	WORD PTR [rdx], 8192
	mov	DWORD PTR 16[rax], 31
	mov	DWORD PTR [rax], 426
	mov	DWORD PTR 8[rax], 240
	add	rsp, 56
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	InitGraphicsForMPAttackEffect
	.def	InitGraphicsForMPAttackEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	InitGraphicsForMPAttackEffect
InitGraphicsForMPAttackEffect:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	ecx, 16319
	mov	r8d, 4
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	WORD PTR [rdx], cx
	mov	WORD PTR 4[rdx], r8w
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	or	DWORD PTR 20[rax], 63
	or	WORD PTR [rdx], 8192
	mov	DWORD PTR 16[rax], 31
	mov	DWORD PTR [rax], 426
	mov	DWORD PTR 8[rax], 240
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
gUnknown_080E02DC:
	.ascii "\0\0"
	.ascii "\3\377"
	.ascii "\376\374"
	.ascii "\0\3"
	.ascii "\374\376"
	.ascii "\3\374"
	.ascii "\1\3"
	.ascii "\376\2"
	.globl	gShouldSpawnMPAttackEffect
	.bss
gShouldSpawnMPAttackEffect:
	.space 1
	.globl	gUnused_03005B78
	.align 8
gUnused_03005B78:
	.space 4
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
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
	.section	.rdata$.refptr.gHBlankCopySize, "dr"
	.globl	.refptr.gHBlankCopySize
	.linkonce	discard
.refptr.gHBlankCopySize:
	.quad	gHBlankCopySize
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
