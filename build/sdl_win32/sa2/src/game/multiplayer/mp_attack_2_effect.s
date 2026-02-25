	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_MPAttackEffect2;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_MPAttackEffect2
TaskDestructor_MPAttackEffect2:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	xor	edx, edx
	movq	xmm1, QWORD PTR .LC0[rip]
	mov	QWORD PTR gMPAttackEffect2Regs[rip], 0
	movq	xmm0, QWORD PTR [rax]
	pand	xmm0, xmm1
	movq	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR .refptr.gMosaicReg[rip]
	mov	WORD PTR [rax], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_MPAttackEffect2;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MPAttackEffect2
Task_MPAttackEffect2:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	movzx	ecx, WORD PTR 2[rax]
	add	WORD PTR [rax], 1
	movzx	edx, WORD PTR 6[rax]
	test	cx, cx
	je	.L4
	cmp	dx, 14
	jbe	.L10
	sub	ecx, 1
	and	edx, 15
	mov	WORD PTR 2[rax], cx
.L6:
	movq	xmm1, QWORD PTR .LC1[rip]
	mov	ecx, edx
	sal	ecx, 4
	lea	eax, [rcx+rdx]
	sal	eax, 8
	or	eax, ecx
	or	eax, edx
	mov	rdx, QWORD PTR .refptr.gMosaicReg[rip]
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	movq	xmm0, QWORD PTR [rax]
	por	xmm0, xmm1
	movq	QWORD PTR [rax], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	test	dx, dx
	je	.L11
	movzx	ecx, WORD PTR 4[rax]
	add	ecx, 1
	mov	WORD PTR 4[rax], cx
	cmp	cx, 3
	jbe	.L9
	sub	edx, 1
	xor	ecx, ecx
	mov	WORD PTR 6[rax], dx
	mov	WORD PTR 4[rax], cx
.L9:
	and	edx, 15
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L10:
	movzx	ecx, WORD PTR 4[rax]
	add	ecx, 1
	mov	WORD PTR 4[rax], cx
	cmp	cx, 3
	jbe	.L6
	add	edx, 1
	xor	r8d, r8d
	mov	WORD PTR 6[rax], dx
	mov	WORD PTR 4[rax], r8w
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L11:
	mov	rcx, r8
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateMPAttack2Effect
	.def	CreateMPAttack2Effect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMPAttack2Effect
CreateMPAttack2Effect:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L12
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L12
	cmp	al, 28
	je	.L23
	cmp	al, 29
	je	.L12
.L15:
	mov	rax, QWORD PTR gMPAttackEffect2Regs[rip]
	test	rax, rax
	je	.L16
	mov	ecx, 600
	mov	WORD PTR 2[rax], cx
.L12:
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rax, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L15
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L16:
	lea	rax, TaskDestructor_MPAttackEffect2[rip]
	mov	edx, 8
	xor	r9d, r9d
	mov	r8d, 57344
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_MPAttackEffect2[rip]
	call	TaskCreate
	xor	edx, edx
	movq	xmm1, QWORD PTR .LC1[rip]
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR gMPAttackEffect2Regs[rip], rax
	mov	QWORD PTR [rax], 39321600
	mov	rax, QWORD PTR .refptr.gMosaicReg[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	movq	xmm0, QWORD PTR [rax]
	por	xmm0, xmm1
	movq	QWORD PTR [rax], xmm0
	jmp	.L12
	.seh_endproc
	.globl	gMPAttackEffect2Regs
	.bss
	.align 16
gMPAttackEffect2Regs:
	.space 8
	.section .rdata,"dr"
	.align 8
.LC0:
	.word	-65
	.word	-65
	.word	-65
	.word	-65
	.align 8
.LC1:
	.word	64
	.word	64
	.word	64
	.word	64
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gFinalBossActive, "dr"
	.globl	.refptr.gFinalBossActive
	.linkonce	discard
.refptr.gFinalBossActive:
	.quad	gFinalBossActive
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gMosaicReg, "dr"
	.globl	.refptr.gMosaicReg
	.linkonce	discard
.refptr.gMosaicReg:
	.quad	gMosaicReg
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
