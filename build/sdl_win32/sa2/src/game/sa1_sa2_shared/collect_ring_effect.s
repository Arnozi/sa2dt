	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_CollectRingEffect
	.def	Task_CollectRingEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_CollectRingEffect
Task_CollectRingEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	movd	xmm6, DWORD PTR 38[rbx]
	sal	eax, 16
	mov	rcx, rbx
	or	eax, edx
	movd	xmm1, eax
	movdqu	xmm0, xmm6
	psubw	xmm0, xmm1
	movd	DWORD PTR 38[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	test	eax, eax
	je	.L4
	call	DisplaySprite
	movd	DWORD PTR 38[rbx], xmm6
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gActiveCollectRingEffectCount[rip]
	mov	rcx, QWORD PTR [rsi]
	sub	BYTE PTR [rax], 1
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateCollectRingEffect
	.def	CreateCollectRingEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCollectRingEffect
CreateCollectRingEffect:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gActiveCollectRingEffectCount[rip]
	cmp	BYTE PTR [rdi], 7
	mov	esi, ecx
	mov	ebx, edx
	jbe	.L9
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	xor	r9d, r9d
	mov	edx, 72
	mov	QWORD PTR 32[rsp], 0
	lea	rcx, Task_CollectRingEffect[rip]
	mov	r8d, 8192
	call	TaskCreate
	mov	ecx, -256
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 38[rax], si
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	BYTE PTR 65[rax], 0
	lea	rdx, 73984[rsi]
	mov	WORD PTR 40[rax], bx
	mov	QWORD PTR 8[rax], rdx
	xor	edx, edx
	mov	WORD PTR 36[rax], dx
	mov	rdx, QWORD PTR .refptr.gRingCount[rip]
	mov	DWORD PTR 16[rax], 47644672
	movzx	edx, WORD PTR [rdx]
	mov	DWORD PTR 42[rax], 960
	mov	WORD PTR 48[rax], cx
	and	edx, 1
	mov	BYTE PTR 50[rax], 16
	test	dl, dl
	mov	BYTE PTR 64[rax], dl
	mov	rdx, QWORD PTR .refptr.se_ring_copy[rip]
	mov	BYTE PTR 53[rax], 0
	mov	DWORD PTR 32[rax], 8192
	jne	.L10
	mov	rbx, QWORD PTR .refptr.gMPlayInfo_SE1[rip]
	mov	rcx, rbx
	call	MPlayStart
	mov	rcx, rbx
	call	m4aMPlayImmInit
	mov	r8d, 128
	mov	edx, 65535
	mov	rcx, rbx
	call	m4aMPlayVolumeControl
	mov	r8d, 64
	mov	edx, 65535
	mov	rcx, rbx
	call	m4aMPlayPanpotControl
.L8:
	add	BYTE PTR [rdi], 1
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	mov	rbx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	mov	rcx, rbx
	call	MPlayStart
	mov	rcx, rbx
	call	m4aMPlayImmInit
	mov	rcx, rbx
	mov	r8d, 128
	mov	edx, 65535
	call	m4aMPlayVolumeControl
	mov	r8d, -64
	mov	edx, 65535
	mov	rcx, rbx
	call	m4aMPlayPanpotControl
	jmp	.L8
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	MPlayStart;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayImmInit;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayVolumeControl;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayPanpotControl;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMPlayInfo_SE1, "dr"
	.globl	.refptr.gMPlayInfo_SE1
	.linkonce	discard
.refptr.gMPlayInfo_SE1:
	.quad	gMPlayInfo_SE1
	.section	.rdata$.refptr.gMPlayInfo_SE2, "dr"
	.globl	.refptr.gMPlayInfo_SE2
	.linkonce	discard
.refptr.gMPlayInfo_SE2:
	.quad	gMPlayInfo_SE2
	.section	.rdata$.refptr.se_ring_copy, "dr"
	.globl	.refptr.se_ring_copy
	.linkonce	discard
.refptr.se_ring_copy:
	.quad	se_ring_copy
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gActiveCollectRingEffectCount, "dr"
	.globl	.refptr.gActiveCollectRingEffectCount
	.linkonce	discard
.refptr.gActiveCollectRingEffectCount:
	.quad	gActiveCollectRingEffectCount
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
