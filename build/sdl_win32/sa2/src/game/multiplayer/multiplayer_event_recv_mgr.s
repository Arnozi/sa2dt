	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	CreateRoomEvent
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateRoomEvent
CreateRoomEvent:
	.seh_endprologue
	mov	rcx, QWORD PTR .refptr.gRoomEventQueueWritePos[rip]
	movzx	eax, BYTE PTR [rcx]
	lea	edx, 1[rax]
	and	edx, 15
	mov	BYTE PTR [rcx], dl
	mov	rdx, QWORD PTR .refptr.gRoomEventQueue[rip]
	lea	rax, [rdx+rax*8]
	ret
	.seh_endproc
	.p2align 4
	.globl	ReceiveRoomEvent_PlatformChange
	.def	ReceiveRoomEvent_PlatformChange;	.scl	2;	.type	32;	.endef
	.seh_proc	ReceiveRoomEvent_PlatformChange
ReceiveRoomEvent_PlatformChange:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gEntitiesManagerTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rcx
	test	rax, rax
	je	.L3
	mov	rax, QWORD PTR 24[rax]
	movzx	r8d, BYTE PTR 16[rdx]
	mov	rax, QWORD PTR [rax]
	lea	rcx, 12[rax]
	movzx	eax, WORD PTR 4[rax]
	imul	eax, r8d
	movzx	r8d, BYTE PTR 15[rdx]
	cdqe
	add	rax, r8
	mov	r8d, DWORD PTR [rcx+rax*4]
	test	r8d, r8d
	je	.L3
	movzx	r9d, BYTE PTR 17[rdx]
	sub	r8d, 8
	lea	rax, 0[0+r9*8]
	sub	rax, r9
	add	rax, r8
	add	rcx, rax
	movzx	eax, BYTE PTR 18[rdx]
	test	al, al
	je	.L5
	cmp	al, 1
	jne	.L3
	cmp	BYTE PTR [rcx], -2
	je	.L5
.L3:
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	mov	BYTE PTR [rcx], -3
	ret
	.seh_endproc
	.p2align 4
	.globl	ReceiveRoomEvent_ItemBoxBreak
	.def	ReceiveRoomEvent_ItemBoxBreak;	.scl	2;	.type	32;	.endef
	.seh_proc	ReceiveRoomEvent_ItemBoxBreak
ReceiveRoomEvent_ItemBoxBreak:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gEntitiesManagerTask[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L15
	mov	rax, QWORD PTR 24[rax]
	movzx	r8d, BYTE PTR 16[rcx]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 12[rax]
	movzx	eax, WORD PTR 4[rax]
	imul	eax, r8d
	movzx	r8d, BYTE PTR 15[rcx]
	cdqe
	add	rax, r8
	mov	eax, DWORD PTR [rdx+rax*4]
	test	eax, eax
	je	.L15
	movzx	ecx, BYTE PTR 17[rcx]
	sub	eax, 8
	lea	rcx, [rcx+rcx*2]
	add	rdx, rcx
	mov	BYTE PTR [rdx+rax], -3
.L15:
	ret
	.seh_endproc
	.p2align 4
	.globl	ReceiveRoomEvent_EnemyDestroyed
	.def	ReceiveRoomEvent_EnemyDestroyed;	.scl	2;	.type	32;	.endef
	.seh_proc	ReceiveRoomEvent_EnemyDestroyed
ReceiveRoomEvent_EnemyDestroyed:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gEntitiesManagerTask[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L23
	mov	rax, QWORD PTR 24[rax]
	movzx	r8d, BYTE PTR 16[rcx]
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, 12[rax]
	movzx	eax, WORD PTR 4[rax]
	imul	eax, r8d
	movzx	r8d, BYTE PTR 15[rcx]
	cdqe
	add	rax, r8
	mov	eax, DWORD PTR [rdx+rax*4]
	test	eax, eax
	je	.L23
	movzx	ecx, BYTE PTR 17[rcx]
	lea	r8d, -8[rax]
	lea	rax, [rdx+rcx*8]
	sub	rax, rcx
	mov	BYTE PTR [rax+r8], -3
.L23:
	ret
	.seh_endproc
	.p2align 4
	.globl	ReceiveRoomEvent_PlayerRingLoss
	.def	ReceiveRoomEvent_PlayerRingLoss;	.scl	2;	.type	32;	.endef
	.seh_proc	ReceiveRoomEvent_PlayerRingLoss
ReceiveRoomEvent_PlayerRingLoss:
	.seh_endprologue
	movsx	eax, WORD PTR 2[rcx]
	movsx	edx, WORD PTR 4[rcx]
	movzx	r8d, BYTE PTR 15[rcx]
	mov	ecx, eax
	jmp	InitScatteringRings
	.seh_endproc
	.p2align 4
	.globl	ReceiveRoomEvent_MysteryItemBoxBreak
	.def	ReceiveRoomEvent_MysteryItemBoxBreak;	.scl	2;	.type	32;	.endef
	.seh_proc	ReceiveRoomEvent_MysteryItemBoxBreak
ReceiveRoomEvent_MysteryItemBoxBreak:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gEntitiesManagerTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rcx
	test	rax, rax
	je	.L32
	mov	rax, QWORD PTR 24[rax]
	movzx	r8d, BYTE PTR 16[rdx]
	mov	rax, QWORD PTR [rax]
	lea	rcx, 12[rax]
	movzx	eax, WORD PTR 4[rax]
	imul	eax, r8d
	movzx	r8d, BYTE PTR 15[rdx]
	cdqe
	add	rax, r8
	mov	eax, DWORD PTR [rcx+rax*4]
	test	eax, eax
	je	.L32
	movzx	r8d, BYTE PTR 17[rdx]
	lea	r9d, -8[rax]
	movzx	edx, BYTE PTR 18[rdx]
	lea	rax, [rcx+r8*8]
	sub	rax, r8
	mov	BYTE PTR 4[r9+rax], dl
.L32:
	ret
	.seh_endproc
	.p2align 4
	.globl	ReceiveRoomEvent_Unknown
	.def	ReceiveRoomEvent_Unknown;	.scl	2;	.type	32;	.endef
	.seh_proc	ReceiveRoomEvent_Unknown
ReceiveRoomEvent_Unknown:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	eax, DWORD PTR 296[rax]
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	InitScatteringRings;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gEntitiesManagerTask, "dr"
	.globl	.refptr.gEntitiesManagerTask
	.linkonce	discard
.refptr.gEntitiesManagerTask:
	.quad	gEntitiesManagerTask
	.section	.rdata$.refptr.gRoomEventQueue, "dr"
	.globl	.refptr.gRoomEventQueue
	.linkonce	discard
.refptr.gRoomEventQueue:
	.quad	gRoomEventQueue
	.section	.rdata$.refptr.gRoomEventQueueWritePos, "dr"
	.globl	.refptr.gRoomEventQueueWritePos
	.linkonce	discard
.refptr.gRoomEventQueueWritePos:
	.quad	gRoomEventQueueWritePos
