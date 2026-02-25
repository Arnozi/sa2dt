	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable_DashRing;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable_DashRing
TaskDestructor_Interactable_DashRing:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 72[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	DashRing_PlayerIsColliding.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	DashRing_PlayerIsColliding.part.0
DashRing_PlayerIsColliding.part.0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movzx	r9d, WORD PTR 13[r8]
	mov	eax, DWORD PTR [rdx]
	movzx	ebx, WORD PTR 17[r8]
	mov	edx, DWORD PTR 4[rdx]
	mov	r10d, DWORD PTR 148[rcx]
	mov	r8d, DWORD PTR 144[rcx]
	sub	r9d, eax
	sub	ebx, edx
	movsx	esi, r9w
	sub	r8d, eax
	sub	r10d, edx
	lea	rax, 128[rcx]
	add	rcx, 140
	sub	r10d, 12
	sub	r8d, 12
.L6:
	movzx	edx, WORD PTR [rax]
	add	edx, r8d
	cmp	r9w, dx
	jl	.L4
	movzx	r11d, WORD PTR 2[rax]
	movsx	edx, dx
	add	edx, 24
	add	r11d, r10d
	cmp	edx, esi
	jl	.L4
	cmp	bx, r11w
	jge	.L15
	.p2align 4,,10
	.p2align 3
.L4:
	add	rax, 4
	cmp	rcx, rax
	jne	.L6
	xor	eax, eax
.L3:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	movsx	r11d, r11w
	movsx	edx, bx
	add	r11d, 24
	cmp	r11d, edx
	jl	.L4
	mov	eax, 1
	jmp	.L3
	.seh_endproc
	.p2align 4
	.def	Task_Interactable_DashRing_AfterAcceleration;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable_DashRing_AfterAcceleration
Task_Interactable_DashRing_AfterAcceleration:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 144[rbx]
	mov	eax, DWORD PTR 148[rbx]
	sub	dx, WORD PTR [rcx]
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 40[rbx], ax
	mov	WORD PTR 104[rbx], ax
	mov	WORD PTR 38[rbx], dx
	mov	WORD PTR 102[rbx], dx
	call	DisplaySprite
	lea	rcx, 64[rbx]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rax], -128
	jne	.L17
	mov	rcx, rbx
	call	DashRing_PlayerIsColliding.part.0
	test	eax, eax
	je	.L17
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_Interactable_DashRing[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Interactable_DashRing;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable_DashRing
Task_Interactable_DashRing:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	ebp, DWORD PTR 36[rsi]
	mov	rbx, QWORD PTR 24[rax]
	test	bpl, -128
	jne	.L20
	mov	rcx, rbx
	call	DashRing_PlayerIsColliding.part.0
	test	eax, eax
	je	.L20
	mov	edx, DWORD PTR 144[rbx]
	movzx	eax, WORD PTR 140[rbx]
	mov	BYTE PTR 117[rsi], 24
	sal	edx, 8
	mov	DWORD PTR 12[rsi], edx
	mov	edx, DWORD PTR 148[rbx]
	sal	edx, 8
	mov	DWORD PTR 16[rsi], edx
	mov	edx, 16
	mov	WORD PTR 122[rsi], dx
	cmp	ax, 7
	ja	.L21
	lea	rdx, .L23[rip]
	movsx	rax, DWORD PTR [rdx+rax*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L23:
	.long	.L30-.L23
	.long	.L29-.L23
	.long	.L28-.L23
	.long	.L27-.L23
	.long	.L26-.L23
	.long	.L25-.L23
	.long	.L24-.L23
	.long	.L22-.L23
	.text
	.p2align 4,,10
	.p2align 3
.L24:
	mov	edx, 40
	or	ebp, 1
	mov	WORD PTR 108[rsi], dx
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	DWORD PTR 36[rsi], ebp
	movzx	eax, WORD PTR 1024[rdx]
	movzx	edx, WORD PTR 1536[rdx]
	.p2align 4,,10
	.p2align 3
.L36:
	sal	eax, 16
	or	eax, edx
	movd	xmm0, eax
	psraw	xmm0, 6
	psllw	xmm0, 3
	movd	DWORD PTR 20[rsi], xmm0
.L21:
	mov	ecx, 277
	lea	rsi, Task_Interactable_DashRing_AfterAcceleration[rip]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rsi
.L20:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 144[rbx]
	mov	edx, DWORD PTR 148[rbx]
	sub	ax, WORD PTR [rcx]
	mov	r8d, DWORD PTR 4[rcx]
	lea	ecx, 140[rax]
	cmp	cx, 706
	ja	.L31
	sub	edx, r8d
	lea	ecx, 140[rdx]
	cmp	cx, 520
	ja	.L31
	mov	WORD PTR 38[rbx], ax
	mov	rcx, rbx
	mov	WORD PTR 40[rbx], dx
	mov	WORD PTR 102[rbx], ax
	mov	WORD PTR 104[rbx], dx
	call	DisplaySprite
	lea	rcx, 64[rbx]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L31:
	mov	rax, QWORD PTR 152[rbx]
	movzx	edx, BYTE PTR 160[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L22:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	eax, 38
	or	ebp, 1
	mov	WORD PTR 108[rsi], ax
	mov	DWORD PTR 36[rsi], ebp
	movzx	eax, WORD PTR 1280[rdx]
	movzx	edx, WORD PTR 1792[rdx]
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	ebp, 38
	mov	WORD PTR 108[rsi], bp
	movzx	eax, WORD PTR 1536[rdx]
	movzx	edx, WORD PTR 2048[rdx]
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L29:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	and	ebp, -2
	mov	r11d, 38
	mov	DWORD PTR 36[rsi], ebp
	movzx	eax, WORD PTR 1792[rdx]
	mov	WORD PTR 108[rsi], r11w
	movzx	edx, WORD PTR 2304[rdx]
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	and	ebp, -2
	mov	r10d, 40
	mov	DWORD PTR 36[rsi], ebp
	movzx	eax, WORD PTR [rdx]
	movzx	edx, WORD PTR 512[rdx]
	mov	WORD PTR 108[rsi], r10w
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L27:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	and	ebp, -2
	mov	r9d, 14
	mov	DWORD PTR 36[rsi], ebp
	movzx	eax, WORD PTR 256[rdx]
	mov	WORD PTR 108[rsi], r9w
	movzx	edx, WORD PTR 768[rdx]
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L26:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	r8d, 14
	mov	WORD PTR 108[rsi], r8w
	movzx	eax, WORD PTR 512[rdx]
	movzx	edx, WORD PTR 1024[rdx]
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	or	ebp, 1
	mov	ecx, 14
	mov	DWORD PTR 36[rsi], ebp
	movzx	eax, WORD PTR 768[rdx]
	mov	WORD PTR 108[rsi], cx
	movzx	edx, WORD PTR 1280[rdx]
	jmp	.L36
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_DashRing
	.def	CreateEntity_DashRing;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_DashRing
CreateEntity_DashRing:
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
	lea	rax, TaskDestructor_Interactable_DashRing[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	r12, rcx
	mov	ebp, r9d
	mov	esi, edx
	xor	r9d, r9d
	mov	edi, r8d
	mov	edx, 168
	movzx	esi, si
	mov	r8d, 8208
	lea	rcx, Task_Interactable_DashRing[rip]
	sal	esi, 5
	movzx	edi, di
	call	TaskCreate
	sal	edi, 5
	mov	r8d, 4351
	mov	rbx, QWORD PTR 24[rax]
	movsx	ax, BYTE PTR 3[r12]
	mov	WORD PTR 140[rbx], ax
	movzx	edx, BYTE PTR [r12]
	movzx	eax, ax
	lea	rax, [rax+rax*2]
	add	esi, edx
	mov	ecx, edx
	sal	esi, 3
	mov	DWORD PTR 144[rbx], esi
	movzx	edx, BYTE PTR 1[r12]
	mov	WORD PTR 49[rbx], r8w
	add	edi, edx
	movzx	edx, cl
	mov	ecx, ebp
	mov	BYTE PTR 53[rbx], 0
	mov	dh, cl
	sal	edi, 3
	mov	ecx, 0
	mov	QWORD PTR 152[rbx], r12
	mov	WORD PTR 160[rbx], dx
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	DWORD PTR 148[rbx], edi
	lea	rdi, sAnimInfoDashRing[rip]
	movzx	edx, BYTE PTR [rdx]
	mov	WORD PTR 36[rbx], cx
	mov	DWORD PTR 42[rbx], 384
	sar	dl, 2
	mov	DWORD PTR 56[rbx], -1
	cmp	dl, 5
	mov	edx, 0
	mov	DWORD PTR 32[rbx], 8192
	mov	WORD PTR 16[rbx], dx
	sete	dl
	movzx	edx, dl
	lea	rsi, [rdx+rdx*2]
	sal	rsi, 6
	lea	rax, [rsi+rax*8]
	add	rax, rdi
	movzx	edx, WORD PTR [rax]
	movzx	ecx, WORD PTR 4[rax]
	mov	WORD PTR 18[rbx], dx
	movzx	edx, WORD PTR 2[rax]
	mov	BYTE PTR 48[rbx], dl
	call	VramMalloc
	xor	r9d, r9d
	xor	r10d, r10d
	mov	BYTE PTR 117[rbx], 0
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, WORD PTR 140[rbx]
	mov	r11d, 4351
	mov	WORD PTR 80[rbx], r9w
	lea	rax, [rax+rax*2]
	mov	WORD PTR 100[rbx], r10w
	lea	rax, [rsi+rax*8]
	mov	WORD PTR 113[rbx], r11w
	add	rax, rdi
	mov	DWORD PTR 106[rbx], 1152
	movzx	edx, WORD PTR 6[rax]
	movzx	ecx, WORD PTR 16[rax]
	mov	DWORD PTR 120[rbx], -1
	or	DWORD PTR 32[rbx], edx
	movzx	edx, WORD PTR 12[rax]
	mov	DWORD PTR 96[rbx], 8192
	mov	WORD PTR 82[rbx], dx
	movzx	edx, WORD PTR 14[rax]
	mov	BYTE PTR 112[rbx], dl
	call	VramMalloc
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 144[rbx]
	mov	QWORD PTR 72[rbx], rax
	movzx	eax, WORD PTR 140[rbx]
	sub	dx, WORD PTR [rcx]
	lea	rax, [rax+rax*2]
	mov	WORD PTR 38[rbx], dx
	lea	rax, [rsi+rax*8]
	mov	WORD PTR 102[rbx], dx
	movzx	eax, WORD PTR 18[rdi+rax]
	or	DWORD PTR 96[rbx], eax
	mov	eax, DWORD PTR 148[rbx]
	sub	ax, WORD PTR 4[rcx]
	mov	rcx, rbx
	mov	WORD PTR 40[rbx], ax
	mov	WORD PTR 104[rbx], ax
	call	UpdateSpriteAnimation
	lea	rcx, 64[rbx]
	call	UpdateSpriteAnimation
	mov	BYTE PTR [r12], -2
	movzx	eax, WORD PTR 140[rbx]
	lea	rdx, sUnknown_080DFB90[rip]
	lea	rax, [rax+rax*2]
	sal	rax, 2
	mov	rcx, QWORD PTR [rdx+rax]
	mov	QWORD PTR 128[rbx], rcx
	mov	eax, DWORD PTR 8[rdx+rax]
	mov	DWORD PTR 136[rbx], eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	DashRing_ShouldDespawn
	.def	DashRing_ShouldDespawn;	.scl	2;	.type	32;	.endef
	.seh_proc	DashRing_ShouldDespawn
DashRing_ShouldDespawn:
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 140
	mov	r8d, 1
	mov	edx, eax
	sub	dx, WORD PTR [r9]
	add	dx, WORD PTR 144[rcx]
	cmp	dx, 706
	ja	.L38
	sub	ax, WORD PTR 4[r9]
	add	ax, WORD PTR 148[rcx]
	xor	r8d, r8d
	cmp	ax, 520
	seta	r8b
.L38:
	mov	eax, r8d
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sUnknown_080DFB90:
	.space 96
	.align 32
sAnimInfoDashRing:
	.word	584
	.word	2
	.word	12
	.word	0
	.word	0
	.word	0
	.word	584
	.word	3
	.word	6
	.word	0
	.word	0
	.word	0
	.word	584
	.word	4
	.word	36
	.word	1024
	.word	0
	.word	0
	.word	584
	.word	5
	.word	25
	.word	1024
	.word	0
	.word	0
	.word	584
	.word	0
	.word	12
	.word	0
	.word	0
	.word	0
	.word	584
	.word	1
	.word	6
	.word	0
	.word	0
	.word	0
	.word	584
	.word	4
	.word	36
	.word	3072
	.word	0
	.word	0
	.word	584
	.word	5
	.word	25
	.word	3072
	.word	0
	.word	0
	.word	584
	.word	2
	.word	12
	.word	2048
	.word	0
	.word	0
	.word	584
	.word	3
	.word	6
	.word	2048
	.word	0
	.word	0
	.word	584
	.word	4
	.word	36
	.word	2048
	.word	0
	.word	0
	.word	584
	.word	5
	.word	25
	.word	2048
	.word	0
	.word	0
	.word	584
	.word	0
	.word	12
	.word	1024
	.word	0
	.word	0
	.word	584
	.word	1
	.word	6
	.word	1024
	.word	0
	.word	0
	.word	584
	.word	4
	.word	36
	.word	0
	.word	0
	.word	0
	.word	584
	.word	5
	.word	25
	.word	0
	.word	0
	.word	0
	.word	605
	.word	2
	.word	12
	.word	0
	.word	0
	.word	0
	.word	605
	.word	3
	.word	6
	.word	0
	.word	0
	.word	0
	.word	605
	.word	4
	.word	36
	.word	1024
	.word	0
	.word	0
	.word	605
	.word	5
	.word	25
	.word	1024
	.word	0
	.word	0
	.word	605
	.word	0
	.word	12
	.word	0
	.word	0
	.word	0
	.word	605
	.word	1
	.word	6
	.word	0
	.word	0
	.word	0
	.word	605
	.word	4
	.word	36
	.word	3072
	.word	0
	.word	0
	.word	605
	.word	5
	.word	25
	.word	3072
	.word	0
	.word	0
	.word	605
	.word	2
	.word	12
	.word	2048
	.word	0
	.word	0
	.word	605
	.word	3
	.word	6
	.word	2048
	.word	0
	.word	0
	.word	605
	.word	4
	.word	36
	.word	2048
	.word	0
	.word	0
	.word	605
	.word	5
	.word	25
	.word	2048
	.word	0
	.word	0
	.word	605
	.word	0
	.word	12
	.word	1024
	.word	0
	.word	0
	.word	605
	.word	1
	.word	6
	.word	1024
	.word	0
	.word	0
	.word	605
	.word	4
	.word	36
	.word	0
	.word	0
	.word	0
	.word	605
	.word	5
	.word	25
	.word	0
	.word	0
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
