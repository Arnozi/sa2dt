	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_8052264
	.def	TaskDestructor_8052264;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_8052264
TaskDestructor_8052264:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 152[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_KuraKura
	.def	CreateEntity_KuraKura;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_KuraKura
CreateEntity_KuraKura:
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
	lea	rax, TaskDestructor_8052264[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 16464
	xor	r9d, r9d
	mov	edx, 232
	lea	rcx, Task_8052024[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], bp
	sal	esi, 5
	movzx	ebp, bp
	mov	QWORD PTR 224[rbx], 0
	sal	ebp, 5
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	add	esi, eax
	movzx	edx, al
	mov	eax, esi
	mov	dh, cl
	movzx	esi, si
	mov	ecx, 8
	sal	eax, 11
	mov	WORD PTR 12[rbx], dx
	mov	DWORD PTR 216[rbx], eax
	movzx	eax, BYTE PTR 1[rdi]
	lea	r8d, [rax+rbp]
	mov	eax, r8d
	sal	r8d, 16
	or	r8d, esi
	sal	eax, 11
	movd	xmm0, r8d
	mov	DWORD PTR 220[rbx], eax
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	movzx	esi, WORD PTR .LC1[rip]
	mov	DWORD PTR 32[rbx], 31784960
	mov	ecx, 1
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], si
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	mov	DWORD PTR 118[rbx], 0
	call	VramMalloc
	xor	edx, edx
	lea	rcx, 80[rbx]
	mov	DWORD PTR 96[rbx], 31850496
	mov	WORD PTR 116[rbx], dx
	mov	QWORD PTR 88[rbx], rax
	mov	DWORD PTR 122[rbx], 1088
	mov	WORD PTR 128[rbx], si
	mov	BYTE PTR 130[rbx], 16
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 112[rbx], 8192
	call	UpdateSpriteAnimation
	mov	ecx, 4
	mov	DWORD PTR 182[rbx], 0
	call	VramMalloc
	xor	ecx, ecx
	mov	DWORD PTR 160[rbx], 31916032
	mov	QWORD PTR 152[rbx], rax
	mov	WORD PTR 180[rbx], cx
	mov	DWORD PTR 186[rbx], 1024
	mov	WORD PTR 192[rbx], si
	mov	BYTE PTR 194[rbx], 16
	mov	BYTE PTR 197[rbx], 0
	mov	DWORD PTR 200[rbx], -1
	mov	DWORD PTR 176[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_805213C
	.def	sub_805213C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_805213C
sub_805213C:
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
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r13, QWORD PTR .refptr.gSineTable[rip]
	mov	r12d, 11
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR [rax]
	sal	eax, 2
	and	eax, 1020
	movzx	eax, WORD PTR 0[r13+rax*2]
	mov	rbx, rcx
	lea	rdi, 80[rcx]
	lea	rsi, 144[rcx]
	sar	ax, 7
	and	eax, 1023
	mov	DWORD PTR 224[rcx], eax
.L6:
	movsx	rcx, eax
	add	eax, 256
	movzx	edx, WORD PTR 217[rbx]
	sub	dx, WORD PTR 0[rbp]
	movsx	r8d, WORD PTR 0[r13+rcx*2]
	cdqe
	mov	ecx, r12d
	movsx	eax, WORD PTR 0[r13+rax*2]
	sar	r8d, cl
	add	edx, r8d
	sar	eax, cl
	mov	rcx, rdi
	mov	WORD PTR 118[rbx], dx
	movzx	edx, WORD PTR 221[rbx]
	sub	dx, WORD PTR 4[rbp]
	add	edx, eax
	mov	WORD PTR 120[rbx], dx
	call	DisplaySprite
	cmp	r12d, 10
	je	.L5
	mov	eax, DWORD PTR 224[rbx]
	mov	r12d, 10
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L5:
	movsx	rdx, DWORD PTR 224[rbx]
	movzx	ecx, WORD PTR 0[r13+rdx*2]
	mov	rax, rdx
	mov	edx, DWORD PTR 216[rbx]
	add	eax, 256
	mov	r8d, ecx
	cdqe
	sar	edx, 8
	sar	r8w, 9
	movzx	eax, WORD PTR 0[r13+rax*2]
	sar	cx, 11
	movsx	r8d, r8w
	movsx	ecx, cx
	add	edx, r8d
	mov	r8d, DWORD PTR 220[rbx]
	sub	edx, ecx
	mov	ecx, eax
	sar	ax, 11
	sar	cx, 9
	sar	r8d, 8
	cwde
	movsx	ecx, cx
	add	r8d, ecx
	mov	rcx, rsi
	sub	r8d, eax
	mov	eax, edx
	sub	ax, WORD PTR 0[rbp]
	mov	WORD PTR 182[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 184[rbx], ax
	call	Coll_Player_Projectile
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	Task_8052024
	.def	Task_8052024;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8052024
Task_8052024:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r13, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[r13]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 216[rbx]
	mov	edi, DWORD PTR 220[rbx]
	lea	r12, 16[rbx]
	and	DWORD PTR 48[rbx], -1025
	mov	rcx, r12
	mov	r14, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	eax, esi
	sub	ax, WORD PTR 0[rbp]
	mov	r8d, edi
	mov	edx, esi
	mov	WORD PTR 54[rbx], ax
	mov	eax, edi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L12
	mov	eax, DWORD PTR 0[rbp]
	lea	edx, 554[rax]
	cmp	esi, edx
	jle	.L13
.L9:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L11
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L10
.L11:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
.L12:
	mov	rcx, QWORD PTR 0[r13]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L13:
	add	eax, -128
	cmp	esi, eax
	jl	.L9
	mov	eax, DWORD PTR 4[rbp]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L9
	add	eax, -128
	cmp	edi, eax
	jl	.L9
.L10:
	mov	edx, DWORD PTR 220[rbx]
	mov	ecx, DWORD PTR 216[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	or	DWORD PTR 48[rbx], 1024
	mov	rcx, r12
	call	DisplaySprite
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	sub_805213C
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC1:
	.byte	0
	.byte	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
