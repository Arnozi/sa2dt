	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_MultiplayerEventMgr_Receive
	.def	Task_MultiplayerEventMgr_Receive;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_MultiplayerEventMgr_Receive
Task_MultiplayerEventMgr_Receive:
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
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	xor	ebx, ebx
	mov	r13d, 1
	mov	rsi, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rbp, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	edi, BYTE PTR 296[rax]
	mov	r12, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	shr	dil, 4
	and	edi, 3
.L5:
	cmp	dil, bl
	je	.L2
	movzx	eax, BYTE PTR 0[rbp]
	mov	edx, ebx
	bt	eax, ebx
	jnc	.L1
	mov	eax, r13d
	mov	ecx, ebx
	sal	eax, cl
	and	eax, DWORD PTR [r12]
	je	.L2
	cmp	WORD PTR [rsi], 20480
	je	.L15
.L2:
	add	rbx, 1
	add	rsi, 20
	cmp	rbx, 4
	jne	.L5
.L1:
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
	.p2align 4,,10
	.p2align 3
.L15:
	mov	r15, QWORD PTR .refptr.gMultiSioSend[rip]
	movzx	eax, WORD PTR 8[rsi]
	mov	r14d, 4096
	sal	r14d, cl
	movzx	r8d, WORD PTR 8[r15]
	xor	eax, r8d
	movzx	eax, ax
	test	eax, r14d
	je	.L2
	movzx	eax, BYTE PTR 14[rsi]
	lea	ecx, -1[rax]
	cmp	cl, 7
	ja	.L4
	sub	eax, 1
	lea	r8, gRoomEventHandlers[rip]
	mov	rcx, rsi
	cdqe
	call	[QWORD PTR [r8+rax*8]]
	movzx	r8d, WORD PTR 8[r15]
.L4:
	xor	r8d, r14d
	mov	WORD PTR 8[r15], r8w
	jmp	.L2
	.seh_endproc
	.p2align 4
	.globl	Task_MultiplayerEventMgr_Send
	.def	Task_MultiplayerEventMgr_Send;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_MultiplayerEventMgr_Send
Task_MultiplayerEventMgr_Send:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rsi, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ebx, 4096
	movzx	ecx, BYTE PTR 296[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r9d, WORD PTR 8[rsi]
	shr	cl, 4
	movzx	r10d, BYTE PTR [rax]
	and	ecx, 3
	sal	ebx, cl
	and	r9d, ebx
	test	r10b, 1
	je	.L17
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	r8d, DWORD PTR [rax]
	mov	eax, r8d
	and	eax, 1
	je	.L16
	mov	rdx, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	r11d, 1
.L19:
	cmp	WORD PTR [rdx], 20480
	je	.L35
	cmp	eax, 4
	je	.L17
.L36:
	bt	r10d, eax
	mov	ecx, eax
	jnc	.L17
	mov	edi, r11d
	add	eax, 1
	add	rdx, 20
	sal	edi, cl
	test	edi, r8d
	jne	.L19
.L16:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	movzx	ecx, WORD PTR 8[rdx]
	test	r9d, r9d
	sete	dil
	test	ecx, ebx
	sete	cl
	cmp	dil, cl
	jne	.L16
	cmp	eax, 4
	jne	.L36
.L17:
	mov	rdi, QWORD PTR .refptr.gRoomEventQueueSendPos[rip]
	mov	rdx, QWORD PTR .refptr.gRoomEventQueueWritePos[rip]
	movzx	eax, BYTE PTR [rdi]
	cmp	BYTE PTR [rdx], al
	je	.L37
	mov	rdx, QWORD PTR .refptr.gRoomEventQueue[rip]
	mov	r9d, -2147483645
	lea	r8, 14[rsi]
	mov	ecx, 3
	lea	rdx, [rdx+rax*8]
	call	DmaSet
	movzx	eax, BYTE PTR [rdi]
	xor	WORD PTR 8[rsi], bx
	add	eax, 1
	and	eax, 15
	mov	BYTE PTR [rdi], al
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	xor	eax, eax
	lea	rdx, 46[rsp]
	lea	r8, 14[rsi]
	mov	ecx, 3
	mov	r9d, -2130706429
	mov	WORD PTR 46[rsp], ax
	call	DmaSet
	nop
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	ReceiveRoomEvent_ItemEffect
	.def	ReceiveRoomEvent_ItemEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	ReceiveRoomEvent_ItemEffect
ReceiveRoomEvent_ItemEffect:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[r9]
	shr	al, 4
	and	eax, 3
	mov	r8d, edx
	mov	rdx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	rax, QWORD PTR [rdx+rax*8]
	mov	rax, QWORD PTR 24[rax]
	test	BYTE PTR 108[rax], 1
	jne	.L38
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r10d, DWORD PTR 36[rbx]
	test	r10b, -128
	jne	.L38
	movzx	eax, BYTE PTR 296[r9]
	mov	r11, QWORD PTR .refptr.gMultiplayerRanks[rip]
	shr	al, 4
	and	eax, 3
	cmp	BYTE PTR [r11+rax], -1
	je	.L51
.L38:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	movzx	r11d, r8b
	movzx	r8d, r8b
	cmp	BYTE PTR 15[rcx], 4
	mov	rax, QWORD PTR [rdx+r8*8]
	mov	rsi, QWORD PTR 24[rax]
	ja	.L38
	movzx	eax, BYTE PTR 15[rcx]
	lea	rdx, .L41[rip]
	movsx	rax, DWORD PTR [rdx+rax*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L41:
	.long	.L45-.L41
	.long	.L44-.L41
	.long	.L43-.L41
	.long	.L42-.L41
	.long	.L40-.L41
	.text
	.p2align 4,,10
	.p2align 3
.L42:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	jne	.L48
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR 296[r9]
	mov	ecx, r11d
	movzx	edx, BYTE PTR 296[r9]
	movzx	ebx, BYTE PTR [rax]
	mov	eax, 16
	shr	r10b, 4
	mov	r8d, eax
	and	r10d, 3
	shr	dl, 4
	sal	r8d, cl
	lea	ecx, 4[r11]
	and	edx, 3
	and	r8d, ebx
	sar	r8d, cl
	mov	ecx, r10d
	sal	eax, cl
	lea	ecx, 4[rdx]
	and	eax, ebx
	sar	eax, cl
	cmp	r8d, eax
	je	.L38
.L48:
	mov	rax, QWORD PTR .refptr.gShouldSpawnMPAttackEffect[rip]
	mov	ecx, 219
	mov	BYTE PTR [rax], 1
.L50:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L43:
	and	r10d, 1073741824
	jne	.L38
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	jne	.L47
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR 296[r9]
	mov	ecx, r11d
	movzx	edx, BYTE PTR 296[r9]
	movzx	esi, BYTE PTR [rax]
	mov	eax, 16
	shr	r10b, 4
	mov	r8d, eax
	and	r10d, 3
	shr	dl, 4
	sal	r8d, cl
	lea	ecx, 4[r11]
	and	edx, 3
	and	r8d, esi
	sar	r8d, cl
	mov	ecx, r10d
	sal	eax, cl
	lea	ecx, 4[rdx]
	and	eax, esi
	sar	eax, cl
	cmp	r8d, eax
	je	.L38
.L47:
	mov	eax, 600
	movsx	ecx, BYTE PTR 141[rbx]
	mov	WORD PTR 52[rbx], ax
	movzx	eax, BYTE PTR 59[rbx]
	and	eax, -5
	or	eax, 16
	mov	BYTE PTR 59[rbx], al
	call	CreateItemTask_Confusion
	mov	ecx, 217
	call	m4aSongNumStart
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 128
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aMPlayTempoControl
	.p2align 4,,10
	.p2align 3
.L44:
	movzx	eax, BYTE PTR 296[r9]
	shr	al, 4
	and	eax, 3
	cmp	al, BYTE PTR 16[rcx]
	jne	.L38
	cmp	BYTE PTR 59[rbx], 0
	js	.L38
	and	r10d, 1080033280
	jne	.L38
	mov	rcx, rbx
	call	InitializePlayer
	movsx	eax, WORD PTR 96[rsi]
	movsx	edx, BYTE PTR 104[rsi]
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	movd	xmm0, eax
	movsx	eax, WORD PTR 98[rsi]
	sub	eax, edx
	mov	edx, 256
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	pslld	xmm0, 8
	movq	QWORD PTR 12[rbx], xmm0
	call	m4aMPlayTempoControl
	movq	xmm0, QWORD PTR 12[rbx]
	mov	ecx, 218
	mov	rdx, QWORD PTR 160[rbx]
	mov	DWORD PTR 36[rbx], 2
	mov	eax, DWORD PTR 48[rdx]
	psrad	xmm0, 8
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	mov	rdx, QWORD PTR 168[rbx]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 32
	mov	DWORD PTR 48[rdx], eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movzx	edx, BYTE PTR 100[rsi]
	mov	BYTE PTR 112[rsi], 30
	movq	xmm1, QWORD PTR 24[rax]
	and	WORD PTR 80[rax], -4
	shr	dl, 7
	mov	WORD PTR 48[rbx], 120
	paddd	xmm0, xmm1
	mov	BYTE PTR 60[rbx], dl
	movq	xmm1, QWORD PTR .LC0[rip]
	paddd	xmm0, xmm1
	movq	QWORD PTR [rax], xmm0
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L45:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	jne	.L46
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR 296[r9]
	mov	ecx, r11d
	movzx	edx, BYTE PTR 296[r9]
	movzx	esi, BYTE PTR [rax]
	mov	eax, 16
	shr	r10b, 4
	mov	r8d, eax
	and	r10d, 3
	shr	dl, 4
	sal	r8d, cl
	lea	ecx, 4[r11]
	and	edx, 3
	and	r8d, esi
	sar	r8d, cl
	mov	ecx, r10d
	sal	eax, cl
	lea	ecx, 4[rdx]
	and	eax, esi
	sar	eax, cl
	cmp	r8d, eax
	je	.L38
.L46:
	movsx	ecx, BYTE PTR 141[rbx]
	mov	edx, 600
	or	BYTE PTR 59[rbx], 64
	mov	WORD PTR 54[rbx], dx
	call	CreateItemTask_Confusion
	mov	ecx, 217
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L40:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	jne	.L49
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR 296[r9]
	mov	ecx, r11d
	movzx	edx, BYTE PTR 296[r9]
	movzx	ebx, BYTE PTR [rax]
	mov	eax, 16
	shr	r10b, 4
	mov	r8d, eax
	and	r10d, 3
	shr	dl, 4
	sal	r8d, cl
	lea	ecx, 4[r11]
	and	edx, 3
	and	r8d, ebx
	sar	r8d, cl
	mov	ecx, r10d
	sal	eax, cl
	lea	ecx, 4[rdx]
	and	eax, ebx
	sar	eax, cl
	cmp	r8d, eax
	je	.L38
.L49:
	mov	rax, QWORD PTR .refptr.gShouldSpawnMPAttack2Effect[rip]
	mov	ecx, 216
	mov	BYTE PTR [rax], 1
	jmp	.L50
	.seh_endproc
	.p2align 4
	.globl	ReceiveRoomEvent_ReachedStageGoal
	.def	ReceiveRoomEvent_ReachedStageGoal;	.scl	2;	.type	32;	.endef
	.seh_proc	ReceiveRoomEvent_ReachedStageGoal
ReceiveRoomEvent_ReachedStageGoal:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	xor	edi, edi
	xor	ebp, ebp
	mov	rsi, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	r12d, 16
	movzx	r8d, dl
	mov	r14d, edx
	movzx	edx, dl
	mov	rax, QWORD PTR [rbx+rdx*8]
	mov	DWORD PTR 44[rsp], r8d
	mov	QWORD PTR 48[rsp], rdx
	mov	r13, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r11d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r15d, BYTE PTR [rax]
	xor	eax, eax
.L56:
	mov	rcx, QWORD PTR [rbx+rax*8]
	test	rcx, rcx
	je	.L53
	cmp	r11b, 4
	je	.L54
	mov	rcx, QWORD PTR 24[rcx]
	test	BYTE PTR 108[rcx], 1
	je	.L55
	cmp	BYTE PTR [rax+rsi], -1
	je	.L55
	add	edi, 1
	add	ebp, 1
.L55:
	add	rax, 1
	cmp	rax, 4
	jne	.L56
	mov	r8d, DWORD PTR 44[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	mov	eax, 3
	mov	DWORD PTR 44[rsp], 4
.L57:
	cmp	BYTE PTR [rsi+rdx], -1
	mov	r12d, 1
	je	.L89
.L58:
	cmp	r11b, 4
	je	.L78
.L65:
	or	DWORD PTR 108[r13], 1
	test	ebp, ebp
	jne	.L61
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	edx, WORD PTR [rcx]
	test	dl, 1
	je	.L90
.L61:
	add	edi, 1
	cmp	edi, eax
	jnb	.L80
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	je	.L80
.L52:
	add	rsp, 72
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
.L80:
	xor	edi, edi
.L74:
	mov	rax, QWORD PTR [rbx+rdi*8]
	test	rax, rax
	je	.L75
	cmp	BYTE PTR [rdi+rsi], -1
	je	.L91
.L72:
	add	rdi, 1
	cmp	rdi, 4
	jne	.L74
.L75:
	test	r12b, r12b
	jne	.L52
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	CreateMultiplayerFinishHandler
	.p2align 4,,10
	.p2align 3
.L54:
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	ecx, eax
	mov	r10d, r12d
	sal	r10d, cl
	lea	ecx, 4[rax]
	movzx	r9d, BYTE PTR 296[rdx]
	and	r10d, r15d
	movzx	r8d, BYTE PTR 296[rdx]
	mov	edx, r12d
	sar	r10d, cl
	shr	r9b, 4
	shr	r8b, 4
	and	r9d, 3
	and	r8d, 3
	mov	ecx, r9d
	sal	edx, cl
	lea	ecx, 4[r8]
	mov	r9d, edx
	and	r9d, r15d
	sar	r9d, cl
	cmp	r10d, r9d
	je	.L55
	cmp	BYTE PTR [rax+rsi], 0
	mov	ecx, 1
	cmove	ebp, ecx
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L91:
	mov	rbp, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	ecx, edi
	cmp	BYTE PTR [rax], 4
	je	.L92
	movzx	eax, BYTE PTR 44[rsp]
	lea	edx, -1[rax]
	movzx	edx, dl
	call	CreateMultiplayerFinishResult
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	xor	edx, edx
	or	DWORD PTR 108[rbp], 1
	mov	rcx, QWORD PTR .refptr.gRoomEventQueueWritePos[rip]
	mov	WORD PTR 100[rax], dx
	or	DWORD PTR 36[rax], 2097152
	movzx	eax, BYTE PTR [rcx]
	lea	edx, 1[rax]
	and	edx, 15
	mov	BYTE PTR [rcx], dl
	mov	rdx, QWORD PTR .refptr.gRoomEventQueue[rip]
	mov	BYTE PTR [rdx+rax*8], 7
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L90:
	or	edx, 4
	mov	WORD PTR [rcx], dx
	mov	rdx, QWORD PTR .refptr.gCourseTime[rip]
	mov	DWORD PTR [rdx], 3600
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L92:
	mov	edx, 1
	call	CreateMultiplayerFinishResult
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L78:
	xor	r15d, r15d
	movzx	r10d, r14b
.L59:
	cmp	QWORD PTR [rbx+r15*8], 0
	mov	r14d, r15d
	je	.L65
	cmp	r10d, r15d
	je	.L63
	cmp	BYTE PTR [r15+rsi], -1
	je	.L93
.L63:
	add	r15, 1
	cmp	r15, 4
	jne	.L59
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L93:
	mov	rcx, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	edx, 16
	mov	r9d, edx
	movzx	r11d, BYTE PTR [rcx]
	mov	ecx, r14d
	sal	r9d, cl
	lea	ecx, 4[r14]
	and	r9d, r11d
	sar	r9d, cl
	mov	ecx, r8d
	sal	edx, cl
	lea	ecx, 4[r8]
	and	edx, r11d
	sar	edx, cl
	cmp	r9d, edx
	jne	.L63
	movzx	edx, bpl
	mov	ecx, r14d
	mov	DWORD PTR 60[rsp], r10d
	mov	DWORD PTR 56[rsp], eax
	mov	DWORD PTR 48[rsp], r8d
	call	CreateMultiplayerFinishResult
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8d, DWORD PTR 48[rsp]
	mov	eax, DWORD PTR 56[rsp]
	mov	r10d, DWORD PTR 60[rsp]
	movzx	edx, BYTE PTR 296[rdx]
	shr	dl, 4
	and	edx, 3
	cmp	edx, r14d
	jne	.L63
	mov	r14, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, r14
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, DWORD PTR 36[r14]
	mov	ecx, 20
	mov	WORD PTR 108[r14], cx
	mov	rcx, r14
	and	edx, -1341
	or	edx, 2
	mov	DWORD PTR 36[r14], edx
	mov	edx, 14
	call	Player_HandleSpriteYOffsetChange
	xor	r8d, r8d
	xor	r10d, r10d
	xor	r9d, r9d
	mov	r11d, 28
	mov	WORD PTR 105[r14], r8w
	mov	eax, DWORD PTR 56[rsp]
	mov	WORD PTR 100[r14], r10w
	mov	r8d, DWORD PTR 48[rsp]
	or	DWORD PTR 36[r14], 10485761
	mov	r10d, DWORD PTR 60[rsp]
	mov	DWORD PTR 24[r14], 235274240
	mov	WORD PTR 20[r14], r9w
	mov	WORD PTR 108[r14], r11w
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L89:
	mov	ecx, r8d
	movzx	edx, bpl
	mov	DWORD PTR 56[rsp], eax
	xor	r12d, r12d
	mov	DWORD PTR 48[rsp], r8d
	call	CreateMultiplayerFinishResult
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	r8d, DWORD PTR 48[rsp]
	movzx	r11d, BYTE PTR [rax]
	mov	eax, DWORD PTR 56[rsp]
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L53:
	mov	r8d, DWORD PTR 44[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	mov	DWORD PTR 44[rsp], eax
	sub	eax, 1
	jmp	.L57
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerSendEventMgr
	.def	CreateMultiplayerSendEventMgr;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerSendEventMgr
CreateMultiplayerSendEventMgr:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	xor	r9d, r9d
	xor	edx, edx
	mov	r8d, 65534
	lea	rcx, Task_MultiplayerEventMgr_Send[rip]
	mov	QWORD PTR 32[rsp], 0
	lea	rsi, 60[rsp]
	call	TaskCreate
	mov	r8, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	rdx, rsi
	mov	r9d, -2063597563
	mov	ecx, 3
	mov	rbx, rax
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rdx, rsi
	mov	r9d, -2063597548
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gRoomEventQueue[rip]
	mov	r9d, -2063597536
	mov	rdx, rsi
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gRoomEventQueueSendPos[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gRoomEventQueueWritePos[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, rbx
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerReceiveEventMgr
	.def	CreateMultiplayerReceiveEventMgr;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerReceiveEventMgr
CreateMultiplayerReceiveEventMgr:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	xor	r9d, r9d
	xor	edx, edx
	mov	r8d, 1
	lea	rcx, Task_MultiplayerEventMgr_Receive[rip]
	mov	QWORD PTR 32[rsp], 0
	lea	rsi, 60[rsp]
	call	TaskCreate
	mov	r8, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	rdx, rsi
	mov	r9d, -2063597563
	mov	ecx, 3
	mov	rbx, rax
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rdx, rsi
	mov	r9d, -2063597548
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gRoomEventQueue[rip]
	mov	r9d, -2063597536
	mov	rdx, rsi
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gRoomEventQueueSendPos[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gRoomEventQueueWritePos[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, rbx
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	gRoomEventHandlers
	.section .rdata,"dr"
	.align 32
gRoomEventHandlers:
	.quad	ReceiveRoomEvent_PlatformChange
	.quad	ReceiveRoomEvent_ItemBoxBreak
	.quad	ReceiveRoomEvent_EnemyDestroyed
	.quad	ReceiveRoomEvent_PlayerRingLoss
	.quad	ReceiveRoomEvent_MysteryItemBoxBreak
	.quad	ReceiveRoomEvent_ItemEffect
	.quad	ReceiveRoomEvent_ReachedStageGoal
	.quad	ReceiveRoomEvent_Unknown
	.quad	0
	.align 8
.LC0:
	.long	-213
	.long	-120
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateItemTask_Confusion;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayTempoControl;	.scl	2;	.type	32;	.endef
	.def	InitializePlayer;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerFinishHandler;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerFinishResult;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	ReceiveRoomEvent_PlatformChange;	.scl	2;	.type	32;	.endef
	.def	ReceiveRoomEvent_ItemBoxBreak;	.scl	2;	.type	32;	.endef
	.def	ReceiveRoomEvent_EnemyDestroyed;	.scl	2;	.type	32;	.endef
	.def	ReceiveRoomEvent_PlayerRingLoss;	.scl	2;	.type	32;	.endef
	.def	ReceiveRoomEvent_MysteryItemBoxBreak;	.scl	2;	.type	32;	.endef
	.def	ReceiveRoomEvent_Unknown;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gShouldSpawnMPAttack2Effect, "dr"
	.globl	.refptr.gShouldSpawnMPAttack2Effect
	.linkonce	discard
.refptr.gShouldSpawnMPAttack2Effect:
	.quad	gShouldSpawnMPAttack2Effect
	.section	.rdata$.refptr.gShouldSpawnMPAttackEffect, "dr"
	.globl	.refptr.gShouldSpawnMPAttackEffect
	.linkonce	discard
.refptr.gShouldSpawnMPAttackEffect:
	.quad	gShouldSpawnMPAttackEffect
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
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
	.section	.rdata$.refptr.gRoomEventQueueSendPos, "dr"
	.globl	.refptr.gRoomEventQueueSendPos
	.linkonce	discard
.refptr.gRoomEventQueueSendPos:
	.quad	gRoomEventQueueSendPos
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
	.section	.rdata$.refptr.gMultiSioStatusFlags, "dr"
	.globl	.refptr.gMultiSioStatusFlags
	.linkonce	discard
.refptr.gMultiSioStatusFlags:
	.quad	gMultiSioStatusFlags
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
