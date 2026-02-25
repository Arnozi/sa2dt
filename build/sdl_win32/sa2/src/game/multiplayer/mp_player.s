	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_HandleLaunchPlayer
	.def	Task_HandleLaunchPlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_HandleLaunchPlayer
Task_HandleLaunchPlayer:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 160[rbx]
	test	BYTE PTR 49[rax], 64
	jne	.L6
	cmp	WORD PTR 108[rbx], 109
	jne	.L7
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	and	DWORD PTR 36[rbx], -10485761
	mov	rcx, QWORD PTR [rax]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, rbx
	mov	rdx, QWORD PTR [rsi]
	mov	rdi, QWORD PTR 24[rdx]
	mov	edx, DWORD PTR 36[rbx]
	and	edx, -10486025
	or	edx, 2
	mov	DWORD PTR 36[rbx], edx
	mov	edx, 38
	mov	WORD PTR 108[rbx], dx
	mov	edx, 14
	mov	BYTE PTR 65[rax], -1
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 3590
	mov	WORD PTR 26[rbx], cx
	mov	ecx, 153
	call	m4aSongNumStart
	movzx	eax, WORD PTR [rdi]
	mov	rcx, QWORD PTR [rsi]
	mov	WORD PTR 22[rbx], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_MultiplayerPlayer
	.def	TaskDestructor_MultiplayerPlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_MultiplayerPlayer
TaskDestructor_MultiplayerPlayer:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	rax, QWORD PTR 24[rcx]
	movzx	ecx, BYTE PTR 102[rax]
	mov	QWORD PTR [rdx+rcx*8], 0
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerPlayer
	.def	CreateMultiplayerPlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerPlayer
CreateMultiplayerPlayer:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_MultiplayerPlayer[rip]
	xor	r9d, r9d
	mov	edx, 128
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], rax
	mov	esi, ecx
	lea	rcx, Task_CreateMultiplayerPlayer[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	xor	r10d, r10d
	mov	r9d, 64
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, rax
	mov	ecx, 30
	mov	BYTE PTR 102[rbx], sil
	mov	WORD PTR 100[rbx], r9w
	mov	QWORD PTR 84[rbx], 0
	mov	DWORD PTR 118[rbx], 0
	mov	WORD PTR 122[rbx], r10w
	movzx	eax, BYTE PTR 296[rdx]
	mov	BYTE PTR 103[rbx], -128
	shr	al, 4
	mov	BYTE PTR 113[rbx], 0
	and	eax, 3
	mov	DWORD PTR 108[rbx], 0
	cmp	al, sil
	mov	eax, 0
	mov	BYTE PTR 116[rbx], sil
	cmovne	eax, ecx
	mov	BYTE PTR 112[rbx], al
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 5
	je	.L20
	xor	ecx, ecx
	mov	DWORD PTR 108[rbx], 2
	mov	WORD PTR 98[rbx], cx
	cmp	al, 4
	ja	.L12
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rax, QWORD PTR .refptr.gSpawnPositions[rip]
	movsx	rcx, BYTE PTR [rcx]
	movzx	r8d, WORD PTR [rax+rcx*4]
	movzx	eax, WORD PTR 2[rax+rcx*4]
	mov	WORD PTR 96[rbx], r8w
.L13:
	xor	ecx, ecx
	mov	WORD PTR 98[rbx], ax
	mov	eax, -256
	mov	r8d, 256
	mov	WORD PTR 44[rbx], cx
	mov	rcx, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	WORD PTR 48[rbx], ax
	movzx	eax, sil
	mov	DWORD PTR 16[rbx], 0
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], sil
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 40[rbx], 67108864
	mov	WORD PTR 76[rbx], r8w
	movsx	rcx, BYTE PTR [rcx+rax]
	mov	rax, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	mov	QWORD PTR 32[rbx], 8192
	movzx	eax, WORD PTR [rax+rcx*2]
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 296[rdx]
	shr	al, 4
	and	eax, 3
	cmp	al, sil
	jne	.L21
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 65536
	mov	QWORD PTR 8[rbx], rax
.L18:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	movzx	edx, BYTE PTR 102[rbx]
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	QWORD PTR [rax+rdx*8], rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	xor	r8d, r8d
	mov	WORD PTR 98[rbx], r8w
.L12:
	movzx	eax, BYTE PTR 296[rdx]
	shr	al, 4
	and	eax, 3
	cmp	al, 2
	je	.L14
	cmp	al, 3
	je	.L15
	cmp	al, 1
	je	.L16
	mov	eax, 232
	mov	WORD PTR 96[rbx], ax
	mov	eax, 829
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L21:
	mov	ecx, 64
	call	VramMalloc
	or	DWORD PTR 32[rbx], 512
	mov	QWORD PTR 8[rbx], rax
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L16:
	mov	r11d, 1585
	mov	eax, 279
	mov	WORD PTR 96[rbx], r11w
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L14:
	mov	r10d, 1585
	mov	eax, 926
	mov	WORD PTR 96[rbx], r10w
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L15:
	mov	r9d, 232
	mov	eax, 348
	mov	WORD PTR 96[rbx], r9w
	jmp	.L13
	.seh_endproc
	.p2align 4
	.globl	sub_8017F34
	.def	sub_8017F34;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8017F34
sub_8017F34:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, eax
	neg	edx
	cmovs	edx, eax
	cmp	edx, 128
	jg	.L23
	mov	r8d, DWORD PTR 88[rbx]
	mov	edx, r8d
	neg	edx
	cmovs	edx, r8d
	cmp	edx, 128
	jg	.L23
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	rcx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movzx	edx, BYTE PTR 296[rdx]
	shr	dl, 4
	and	edx, 3
	mov	rdx, QWORD PTR [rcx+rdx*8]
	mov	rdx, QWORD PTR 24[rdx]
	movzx	edx, WORD PTR 100[rdx]
	xor	dx, WORD PTR 100[rbx]
	and	edx, 128
	jne	.L44
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, eax
	mov	r9, QWORD PTR .refptr.gStageFlags[rip]
	sal	edx, 8
	add	edx, DWORD PTR 12[rsi]
	mov	ecx, DWORD PTR 16[rsi]
	mov	DWORD PTR 12[rsi], edx
	test	BYTE PTR [r9], -128
	je	.L45
	lea	r9d, -2[r8]
	sal	r9d, 8
	add	ecx, r9d
.L28:
	mov	DWORD PTR 16[rsi], ecx
	test	r8d, r8d
	js	.L46
	jne	.L47
.L31:
	test	eax, eax
	js	.L48
	je	.L22
	mov	ecx, DWORD PTR 12[rsi]
	movsx	eax, BYTE PTR 26[rsi]
	mov	r9d, 8
	mov	edx, DWORD PTR 16[rsi]
	movzx	r8d, BYTE PTR 60[rsi]
	sar	ecx, 8
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EB44[rip]
	sar	edx, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jns	.L22
	sal	eax, 8
	add	DWORD PTR 12[rsi], eax
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	BYTE PTR 112[rbx], 30
	mov	eax, DWORD PTR 36[rdx]
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rdx], eax
.L22:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	lea	r9d, 1[r8]
	sal	r9d, 8
	add	ecx, r9d
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L44:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rax], -9
	mov	QWORD PTR 64[rax], -1
	movzx	eax, BYTE PTR 102[rbx]
	mov	BYTE PTR 116[rbx], al
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	movsx	eax, BYTE PTR 27[rsi]
	sar	ecx, 8
	movzx	r8d, BYTE PTR 60[rsi]
	sar	edx, 8
	mov	r9d, -8
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	js	.L30
.L42:
	mov	eax, DWORD PTR 84[rbx]
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L47:
	movsx	eax, BYTE PTR 27[rsi]
	sar	ecx, 8
	movzx	r8d, BYTE PTR 60[rsi]
	sar	edx, 8
	mov	r9d, 8
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jns	.L42
	sal	eax, 8
	add	DWORD PTR 16[rsi], eax
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L30:
	sal	eax, 8
	sub	DWORD PTR 16[rsi], eax
.L43:
	mov	eax, DWORD PTR 36[rsi]
	mov	BYTE PTR 112[rbx], 30
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rsi], eax
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L48:
	mov	ecx, DWORD PTR 12[rsi]
	movsx	eax, BYTE PTR 26[rsi]
	mov	r9d, -8
	mov	edx, DWORD PTR 16[rsi]
	movzx	r8d, BYTE PTR 60[rsi]
	sar	ecx, 8
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EB44[rip]
	sar	edx, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jns	.L22
	sal	eax, 8
	sub	DWORD PTR 12[rsi], eax
	jmp	.L22
	.seh_endproc
	.p2align 4
	.globl	sub_80181E0
	.def	sub_80181E0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80181E0
sub_80181E0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 160[rsi]
	cmp	DWORD PTR 80[rax], -1
	je	.L50
	cmp	DWORD PTR 64[rbx], -1
	jne	.L70
.L50:
	mov	eax, DWORD PTR 36[rsi]
	test	al, 8
	jne	.L71
.L55:
	xor	edx, edx
	mov	eax, edx
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	cmp	QWORD PTR 64[rsi], rbx
	jne	.L55
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rsi], eax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L70:
	movzx	eax, BYTE PTR 100[rbx]
	movsx	edx, WORD PTR 96[rbx]
	mov	rcx, rbx
	movsx	r9d, WORD PTR 118[rbx]
	movsx	r8d, WORD PTR 98[rbx]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rbx]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800DA4C
	mov	edx, eax
	and	edx, 1
	je	.L50
	cmp	BYTE PTR 105[rsi], 0
	jne	.L51
	test	eax, 131072
	jne	.L72
	test	eax, 262144
	je	.L51
	movzx	ecx, WORD PTR 20[rsi]
	test	cx, cx
	jns	.L51
.L69:
	neg	ecx
	neg	WORD PTR 24[rsi]
	mov	WORD PTR 20[rsi], cx
	.p2align 4,,10
	.p2align 3
.L51:
	test	eax, 1048576
	je	.L53
	movzx	eax, WORD PTR 22[rsi]
	test	ax, ax
	jle	.L53
	neg	eax
	mov	WORD PTR 22[rsi], ax
.L53:
	mov	eax, edx
	mov	BYTE PTR 112[rbx], 30
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	movzx	ecx, WORD PTR 20[rsi]
	test	cx, cx
	jg	.L69
	jmp	.L51
	.seh_endproc
	.p2align 4
	.globl	sub_8018300
	.def	sub_8018300;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8018300
sub_8018300:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdi, QWORD PTR 160[rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 112[rbx]
	test	al, al
	je	.L154
	sub	eax, 1
	mov	BYTE PTR 112[rbx], al
	test	BYTE PTR 36[rsi], 8
	je	.L96
	cmp	QWORD PTR 64[rsi], rbx
	je	.L155
.L96:
	xor	eax, eax
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L154:
	movzx	eax, BYTE PTR 100[rbx]
	movsx	r9d, WORD PTR 118[rbx]
	mov	rcx, rbx
	movsx	r8d, WORD PTR 98[rbx]
	movsx	edx, WORD PTR 96[rbx]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rbx]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800DA4C
	mov	r12, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r12], 5
	je	.L156
.L75:
	mov	edx, eax
	and	edx, 2
	test	al, 1
	jne	.L157
	mov	ebp, DWORD PTR 36[rsi]
	test	edx, edx
	je	.L141
	mov	eax, DWORD PTR 12[rsi]
	movsx	ecx, WORD PTR 96[rbx]
	mov	edx, ebp
	and	ebp, -2
	or	edx, 1
	sar	eax, 8
	cmp	ecx, eax
	mov	rcx, rsi
	cmovl	ebp, edx
	mov	DWORD PTR 36[rsi], ebp
	call	sub_800DD54
.L87:
	mov	BYTE PTR 112[rbx], 30
.L81:
	mov	eax, 1
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	cmp	BYTE PTR 105[rsi], 0
	jne	.L78
	test	eax, 131072
	je	.L79
	movzx	ecx, WORD PTR 20[rsi]
	test	cx, cx
	jle	.L78
.L143:
	neg	ecx
	neg	WORD PTR 24[rsi]
	mov	WORD PTR 20[rsi], cx
	.p2align 4,,10
	.p2align 3
.L78:
	test	eax, 1048576
	je	.L80
	movzx	eax, WORD PTR 22[rsi]
	test	ax, ax
	jle	.L80
	neg	eax
	mov	WORD PTR 22[rsi], ax
.L80:
	mov	BYTE PTR 112[rbx], 30
	test	edx, edx
	je	.L81
	mov	eax, DWORD PTR 36[rsi]
	mov	edx, DWORD PTR 12[rsi]
	movsx	r8d, WORD PTR 96[rbx]
	sar	edx, 8
	mov	ecx, eax
	and	eax, -2
	or	ecx, 1
	cmp	r8d, edx
	cmovge	eax, ecx
	mov	rcx, rsi
	mov	DWORD PTR 36[rsi], eax
	call	sub_800DE44
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L155:
	movsx	edx, WORD PTR 96[rbx]
	movsx	r9d, WORD PTR 118[rbx]
	mov	rcx, rbx
	movsx	r8d, WORD PTR 98[rbx]
	mov	DWORD PTR 48[rsp], 0
	movzx	eax, BYTE PTR 100[rbx]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rbx]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 5
	jne	.L91
	test	eax, eax
	je	.L158
.L91:
	test	BYTE PTR 92[rbx], 32
	je	.L93
	test	al, 32
	je	.L159
.L93:
	mov	DWORD PTR 92[rbx], eax
	test	eax, 2097152
	je	.L96
	mov	BYTE PTR 112[rbx], 30
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L79:
	test	eax, 262144
	je	.L78
	movzx	ecx, WORD PTR 20[rsi]
	test	cx, cx
	jns	.L78
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L141:
	cmp	DWORD PTR 80[rdi], -1
	je	.L160
.L90:
	test	bpl, 8
	je	.L97
	cmp	QWORD PTR 64[rsi], rbx
	je	.L161
.L97:
	test	BYTE PTR 92[rbx], 32
	je	.L96
	and	DWORD PTR 36[rsi], -33
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L156:
	test	al, 3
	jne	.L75
	movzx	ecx, BYTE PTR 100[rbx]
	movzx	eax, WORD PTR 96[rbx]
	movsx	r10d, WORD PTR 120[rbx]
	movsx	r9d, WORD PTR 118[rbx]
	shr	cl, 7
	movzx	r8d, WORD PTR 98[rbx]
	movzx	ecx, cl
	cmp	ax, 960
	jg	.L162
	add	r8w, 864
	add	ax, 1440
.L142:
	mov	DWORD PTR 40[rsp], ecx
	movsx	edx, ax
	movsx	r8d, r8w
	mov	rcx, rbx
	mov	DWORD PTR 32[rsp], r10d
	call	sub_800DA4C
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L159:
	and	DWORD PTR 36[rsi], -33
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L162:
	sub	r8w, 864
	sub	ax, 1440
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L161:
	and	ebp, -9
	or	ebp, 2
	mov	DWORD PTR 36[rsi], ebp
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L160:
	cmp	DWORD PTR 64[rbx], -1
	jne	.L90
	mov	rdi, QWORD PTR 64[rsi]
	movsx	r9d, WORD PTR 118[rbx]
	mov	rcx, rbx
	movsx	r8d, WORD PTR 98[rbx]
	movsx	edx, WORD PTR 96[rbx]
	mov	DWORD PTR 48[rsp], 0
	movzx	eax, BYTE PTR 100[rbx]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rbx]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	cmp	BYTE PTR [r12], 5
	jne	.L91
	test	eax, eax
	jne	.L91
	movzx	ecx, BYTE PTR 100[rbx]
	movzx	eax, WORD PTR 96[rbx]
	mov	DWORD PTR 36[rsi], ebp
	mov	QWORD PTR 64[rsi], rdi
	shr	cl, 7
	movzx	ecx, cl
	.p2align 4,,10
	.p2align 3
.L153:
	movsx	r10d, WORD PTR 120[rbx]
	movsx	r9d, WORD PTR 118[rbx]
	movzx	edx, WORD PTR 98[rbx]
	cmp	ax, 960
	jle	.L92
	lea	r8d, -864[rdx]
	sub	ax, 1440
.L144:
	mov	DWORD PTR 40[rsp], ecx
	movsx	edx, ax
	movsx	r8d, r8w
	mov	rcx, rbx
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 32[rsp], r10d
	call	sub_800D0A0
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L158:
	movzx	edx, BYTE PTR 100[rbx]
	movzx	eax, WORD PTR 96[rbx]
	shr	dl, 7
	movzx	ecx, dl
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L92:
	lea	r8d, 864[rdx]
	add	ax, 1440
	jmp	.L144
	.seh_endproc
	.p2align 4
	.globl	sub_8016D20
	.def	sub_8016D20;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8016D20
sub_8016D20:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdi, QWORD PTR 160[rbx]
	mov	rsi, QWORD PTR 24[rax]
	test	BYTE PTR 36[rbx], 8
	je	.L164
	cmp	QWORD PTR 64[rbx], rsi
	je	.L233
.L164:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	jne	.L165
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	ecx, BYTE PTR 102[rsi]
	movzx	r10d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	r9d, BYTE PTR 296[rax]
	movzx	edx, BYTE PTR 296[rax]
	mov	eax, 16
	mov	r8d, eax
	sal	r8d, cl
	shr	r9b, 4
	add	ecx, 4
	and	r9d, 3
	and	r8d, r10d
	shr	dl, 4
	sar	r8d, cl
	mov	ecx, r9d
	and	edx, 3
	sal	eax, cl
	lea	ecx, 4[rdx]
	and	eax, r10d
	sar	eax, cl
	cmp	r8d, eax
	je	.L166
.L165:
	call	sub_8018300
	test	eax, eax
	je	.L163
	test	BYTE PTR 92[rsi], 32
	jne	.L234
.L163:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	and	DWORD PTR 36[rbx], -33
	mov	DWORD PTR 92[rsi], 0
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L166:
	movzx	eax, BYTE PTR 112[rsi]
	test	al, al
	je	.L235
	sub	eax, 1
	mov	BYTE PTR 112[rsi], al
	test	BYTE PTR 36[rbx], 8
	je	.L163
	cmp	QWORD PTR 64[rbx], rsi
	jne	.L163
	movsx	r9d, WORD PTR 118[rsi]
	movsx	r8d, WORD PTR 98[rsi]
	mov	rcx, rsi
	movsx	edx, WORD PTR 96[rsi]
	mov	DWORD PTR 48[rsp], 0
	movzx	eax, BYTE PTR 100[rsi]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rsi]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	test	BYTE PTR 92[rsi], 32
	je	.L187
	test	al, 32
	jne	.L187
	and	DWORD PTR 36[rbx], -33
.L187:
	mov	DWORD PTR 92[rsi], eax
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L233:
	call	sub_8017F34
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L235:
	call	sub_80181E0
	test	eax, eax
	jne	.L236
	cmp	DWORD PTR 80[rdi], -1
	je	.L178
	cmp	DWORD PTR 64[rsi], -1
	jne	.L163
.L178:
	cmp	BYTE PTR 105[rbx], 0
	je	.L179
	movzx	eax, BYTE PTR 141[rbx]
	sub	eax, 2
	cmp	al, 1
	jbe	.L163
.L179:
	movsx	r9d, WORD PTR 118[rsi]
	movsx	r8d, WORD PTR 98[rsi]
	mov	rcx, rsi
	movsx	edx, WORD PTR 96[rsi]
	mov	DWORD PTR 48[rsp], 1
	movzx	eax, BYTE PTR 100[rsi]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rsi]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	test	BYTE PTR 92[rsi], 32
	je	.L180
	test	al, 32
	jne	.L180
	and	DWORD PTR 36[rbx], -33
.L180:
	mov	DWORD PTR 92[rsi], eax
	test	eax, 2097152
	je	.L181
	mov	BYTE PTR 112[rsi], 30
.L181:
	test	eax, 65576
	je	.L163
.L232:
	cmp	WORD PTR 18[rsi], 3
	jne	.L163
	mov	eax, 9
	xor	edx, edx
	mov	WORD PTR 108[rbx], ax
	mov	rax, QWORD PTR .refptr.Player_TouchGround[rip]
	mov	WORD PTR 105[rbx], dx
	mov	QWORD PTR [rbx], rax
	mov	eax, DWORD PTR 36[rbx]
	test	al, 8
	je	.L182
	cmp	QWORD PTR 64[rbx], rsi
	je	.L237
.L182:
	mov	eax, DWORD PTR 16[rbx]
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movsx	ecx, WORD PTR 98[rsi]
	sar	eax, 8
	test	BYTE PTR [rdx], -128
	je	.L238
	cmp	eax, ecx
	jl	.L219
.L184:
	mov	eax, DWORD PTR 36[rbx]
	test	BYTE PTR 33[rsi], 4
	je	.L185
	and	eax, -34
	mov	edx, 3072
.L186:
	mov	DWORD PTR 36[rbx], eax
	mov	WORD PTR 24[rbx], dx
	mov	WORD PTR 20[rbx], dx
.L219:
	mov	BYTE PTR 112[rsi], 30
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L236:
	test	BYTE PTR 92[rsi], 32
	je	.L232
	and	DWORD PTR 36[rbx], -33
	mov	DWORD PTR 92[rsi], 0
	jmp	.L232
.L238:
	cmp	eax, ecx
	jle	.L184
	jmp	.L219
.L185:
	and	eax, -33
	mov	edx, -3072
	or	eax, 1
	jmp	.L186
.L237:
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	jmp	.L182
	.seh_endproc
	.p2align 4
	.globl	sub_801707C
	.def	sub_801707C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801707C
sub_801707C:
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
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	ebp, ebp
	mov	rax, QWORD PTR [rax]
	mov	edi, DWORD PTR 36[rbx]
	mov	r12, QWORD PTR 160[rbx]
	mov	rsi, QWORD PTR 24[rax]
	test	dil, 8
	je	.L240
	cmp	QWORD PTR 64[rbx], rsi
	je	.L318
.L240:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	jne	.L241
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	ecx, BYTE PTR 102[rsi]
	movzx	r10d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	r8d, BYTE PTR 296[rax]
	movzx	edx, BYTE PTR 296[rax]
	mov	eax, 16
	mov	r9d, eax
	sal	r9d, cl
	shr	r8b, 4
	add	ecx, 4
	and	r8d, 3
	and	r9d, r10d
	shr	dl, 4
	sar	r9d, cl
	mov	ecx, r8d
	and	edx, 3
	sal	eax, cl
	lea	ecx, 4[rdx]
	and	eax, r10d
	sar	eax, cl
	cmp	r9d, eax
	je	.L242
.L241:
	call	sub_8018300
	test	eax, eax
	je	.L239
.L317:
	test	BYTE PTR 92[rsi], 32
	jne	.L319
.L239:
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L319:
	and	DWORD PTR 36[rbx], -33
	mov	DWORD PTR 92[rsi], 0
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L242:
	cmp	BYTE PTR 105[rbx], 0
	je	.L245
	cmp	BYTE PTR 141[rbx], 3
	je	.L239
.L245:
	movzx	eax, BYTE PTR 112[rsi]
	test	al, al
	je	.L246
	test	BYTE PTR 108[rsi], 4
	jne	.L246
	sub	eax, 1
	mov	BYTE PTR 112[rsi], al
	test	BYTE PTR 36[rbx], 8
	je	.L239
	cmp	QWORD PTR 64[rbx], rsi
	jne	.L239
	movsx	r9d, WORD PTR 118[rsi]
	movsx	r8d, WORD PTR 98[rsi]
	mov	rcx, rsi
	movsx	edx, WORD PTR 96[rsi]
	mov	DWORD PTR 48[rsp], 0
	movzx	eax, BYTE PTR 100[rsi]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rsi]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	test	BYTE PTR 92[rsi], 32
	je	.L277
	test	al, 32
	jne	.L277
	and	DWORD PTR 36[rbx], -33
.L277:
	mov	DWORD PTR 92[rsi], eax
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L318:
	call	sub_8017F34
	mov	ebp, 1
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L246:
	movzx	eax, WORD PTR 18[rsi]
	mov	BYTE PTR 112[rsi], 0
	sub	ax, 202
	cmp	ax, 2
	ja	.L248
.L252:
	mov	r12d, DWORD PTR 36[rbx]
	movsx	r9d, WORD PTR 118[rsi]
	mov	rcx, rsi
	movsx	r8d, WORD PTR 98[rsi]
	movsx	edx, WORD PTR 96[rsi]
	mov	DWORD PTR 48[rsp], 1
	movzx	eax, BYTE PTR 100[rsi]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rsi]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	test	BYTE PTR 92[rsi], 32
	je	.L250
	test	al, 32
	jne	.L250
	and	DWORD PTR 36[rbx], -33
	.p2align 4,,10
	.p2align 3
.L250:
	mov	DWORD PTR 92[rsi], eax
	test	eax, 2097152
	jne	.L320
.L253:
	test	BYTE PTR 108[rsi], 4
	jne	.L321
	and	r12d, 2
	jne	.L281
	test	bpl, bpl
	je	.L239
.L281:
	test	eax, 65576
	je	.L239
	movzx	eax, WORD PTR 18[rsi]
	sub	ax, 202
	cmp	ax, 2
	ja	.L239
	mov	rbp, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR 100[rsi]
	movzx	edx, WORD PTR 0[rbp]
	and	dx, 128
	setne	cl
	shr	ax, 3
	xor	eax, 1
	and	eax, 1
	cmp	cl, al
	je	.L239
	mov	r10d, DWORD PTR 12[rbx]
	mov	ecx, DWORD PTR 16[rbx]
	movzx	r8d, BYTE PTR 60[rbx]
	movsx	eax, WORD PTR 98[rsi]
	movsx	r9d, BYTE PTR 27[rbx]
	sar	r10d, 8
	sar	ecx, 8
	test	dx, dx
	jne	.L258
	cmp	eax, ecx
	mov	edx, r10d
	cmovl	eax, ecx
	lea	ecx, [rax+r9]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, 8
	mov	QWORD PTR 40[rsp], rax
	lea	rax, 79[rsp]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
.L259:
	movsx	edx, BYTE PTR 27[rbx]
	cmp	eax, edx
	jg	.L322
.L260:
	test	BYTE PTR 108[rsi], 4
	je	.L239
.L262:
	mov	r12, QWORD PTR .refptr.Player_TouchGround[rip]
	xor	r11d, r11d
	xor	eax, eax
	mov	rcx, rbx
	or	DWORD PTR 36[rbx], 2
	mov	WORD PTR 108[rbx], r11w
	mov	QWORD PTR [rbx], r12
	mov	WORD PTR 105[rbx], ax
	call	Player_TryJump
	test	eax, eax
	je	.L323
	and	DWORD PTR 36[rbx], -4194305
	and	DWORD PTR 108[rsi], -5
	mov	BYTE PTR 112[rsi], 30
.L275:
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 8
	movzx	edx, BYTE PTR 102[rsi]
	mov	BYTE PTR 2[rax], 0
	mov	BYTE PTR 1[rax], dl
	mov	eax, DWORD PTR 108[rsi]
.L274:
	mov	edx, eax
	and	ah, -2
	or	dh, 1
	test	BYTE PTR 0[rbp], -128
	cmovne	eax, edx
	mov	DWORD PTR 108[rsi], eax
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L320:
	mov	BYTE PTR 112[rsi], 30
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L248:
	call	sub_80181E0
	test	eax, eax
	jne	.L317
	movzx	eax, WORD PTR 18[rsi]
	sub	ax, 202
	cmp	ax, 2
	jbe	.L252
	cmp	DWORD PTR 80[r12], -1
	je	.L252
	cmp	DWORD PTR 64[rsi], -1
	jne	.L239
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L323:
	movzx	r9d, WORD PTR 0[rbp]
	movzx	eax, WORD PTR 100[rsi]
	movzx	ecx, WORD PTR 18[rsi]
	mov	r8d, DWORD PTR 108[rsi]
	and	r9w, 128
	mov	edx, DWORD PTR 36[rbx]
	sete	r10b
	shr	ax, 3
	sub	cx, 202
	xor	eax, 1
	and	eax, 1
	cmp	cx, 2
	ja	.L264
	mov	ecx, DWORD PTR 12[rbx]
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	sar	ecx, 8
	cmp	ecx, DWORD PTR 48[r11]
	jle	.L264
	cmp	ecx, DWORD PTR 52[r11]
	jge	.L264
	cmp	r10b, al
	je	.L324
.L266:
	mov	eax, r8d
	and	edx, -4194305
	mov	QWORD PTR [rbx], r12
	and	eax, -5
	mov	DWORD PTR 36[rbx], edx
	mov	DWORD PTR 108[rsi], eax
	xor	eax, eax
	mov	WORD PTR 108[rbx], ax
	.p2align 4,,10
	.p2align 3
.L269:
	mov	ecx, 60
	mov	WORD PTR 48[rbx], cx
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L264:
	and	edx, -4194305
	xor	r9d, r9d
	mov	QWORD PTR [rbx], r12
	mov	DWORD PTR 36[rbx], edx
	mov	edx, r8d
	and	edx, -5
	mov	DWORD PTR 108[rsi], edx
	mov	WORD PTR 108[rbx], r9w
	cmp	r10b, al
	jne	.L269
	mov	r11d, r8d
	shr	r11d, 8
	xor	r11d, 1
	and	r11d, 1
.L278:
	cmp	r11b, r10b
	jne	.L269
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L321:
	mov	rbp, QWORD PTR .refptr.gStageFlags[rip]
	jmp	.L262
.L258:
	cmp	eax, ecx
	mov	edx, r10d
	cmovle	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	QWORD PTR 40[rsp], rax
	lea	rax, 79[rsp]
	sub	ecx, r9d
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	jmp	.L259
.L322:
	mov	eax, DWORD PTR 36[rbx]
	or	DWORD PTR 108[rsi], 4
	mov	edx, 14
	mov	rcx, rbx
	and	eax, -9
	or	eax, 4194304
	mov	DWORD PTR 36[rbx], eax
	call	Player_HandleSpriteYOffsetChange
	mov	r10d, 3590
	mov	WORD PTR 26[rbx], r10w
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 8
	movzx	edx, BYTE PTR 102[rsi]
	mov	BYTE PTR 2[rax], 1
	mov	BYTE PTR 1[rax], dl
	test	BYTE PTR 0[rbp], -128
	jne	.L261
	and	DWORD PTR 108[rsi], -257
	jmp	.L260
.L324:
	mov	r11d, r8d
	shr	r11d, 8
	xor	r11d, 1
	and	r11d, 1
	cmp	r11b, r10b
	jne	.L266
	and	dil, 32
	je	.L325
	mov	eax, r8d
	and	edx, -4194305
	mov	QWORD PTR [rbx], r12
	and	eax, -5
	mov	DWORD PTR 36[rbx], edx
	mov	DWORD PTR 108[rsi], eax
	mov	WORD PTR 108[rbx], 0
	jmp	.L278
.L261:
	or	DWORD PTR 108[rsi], 256
	jmp	.L260
.L325:
	test	dl, 8
	je	.L270
	mov	eax, r8d
	and	edx, -4194305
	and	eax, -5
	mov	DWORD PTR 36[rbx], edx
	mov	DWORD PTR 108[rsi], eax
	jmp	.L275
.L270:
	mov	eax, r8d
	movsx	r12d, WORD PTR 96[rsi]
	movsx	r10d, WORD PTR 98[rsi]
	or	eax, 4
	movzx	r8d, BYTE PTR 60[rbx]
	movsx	edx, BYTE PTR 27[rbx]
	mov	DWORD PTR 108[rsi], eax
	mov	eax, DWORD PTR 16[rbx]
	sal	r12d, 8
	sar	eax, 8
	test	r9w, r9w
	jne	.L271
	add	eax, edx
	mov	rdx, QWORD PTR .refptr.sub_801EE64[rip]
	movsx	r9d, BYTE PTR 63[rsi]
	mov	QWORD PTR 40[rsp], rdx
	lea	rdx, 79[rsp]
	lea	edi, 17[r10+r9]
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], rdx
	mov	edx, ecx
	mov	ecx, eax
	sal	edi, 8
	call	sub_801E4E4
	test	eax, eax
	js	.L326
.L272:
	mov	eax, DWORD PTR 108[rsi]
	mov	DWORD PTR 12[rbx], r12d
	mov	DWORD PTR 16[rbx], edi
	test	al, 4
	je	.L275
	xor	edx, edx
	and	DWORD PTR 36[rbx], -33
	mov	DWORD PTR 20[rbx], edx
	jmp	.L274
.L271:
	sub	eax, edx
	mov	rdx, QWORD PTR .refptr.sub_801EE64[rip]
	movsx	r9d, BYTE PTR 61[rsi]
	mov	QWORD PTR 40[rsp], rdx
	lea	rdx, 79[rsp]
	lea	edi, -17[r10+r9]
	mov	r9d, -8
	mov	QWORD PTR 32[rsp], rdx
	mov	edx, ecx
	mov	ecx, eax
	sal	edi, 8
	call	sub_801E4E4
	test	eax, eax
	jns	.L272
	sal	eax, 8
	sub	edi, eax
.L315:
	mov	eax, DWORD PTR 36[rbx]
	and	DWORD PTR 108[rsi], -5
	and	eax, -4194305
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	jmp	.L272
.L326:
	sal	eax, 8
	add	edi, eax
	jmp	.L315
	.seh_endproc
	.p2align 4
	.globl	sub_8017670
	.def	sub_8017670;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8017670
sub_8017670:
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
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	edi, DWORD PTR 36[rbx]
	mov	rax, QWORD PTR [rax]
	mov	rbp, QWORD PTR 160[rbx]
	mov	rsi, QWORD PTR 24[rax]
	test	dil, 8
	je	.L328
	cmp	QWORD PTR 64[rbx], rsi
	je	.L404
.L328:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	jne	.L329
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	ecx, BYTE PTR 102[rsi]
	movzx	r10d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	r9d, BYTE PTR 296[rax]
	movzx	edx, BYTE PTR 296[rax]
	mov	eax, 16
	mov	r8d, eax
	sal	r8d, cl
	shr	r9b, 4
	add	ecx, 4
	and	r9d, 3
	and	r8d, r10d
	shr	dl, 4
	sar	r8d, cl
	mov	ecx, r9d
	and	edx, 3
	sal	eax, cl
	lea	ecx, 4[rdx]
	and	eax, r10d
	sar	eax, cl
	cmp	r8d, eax
	je	.L330
.L329:
	call	sub_8018300
	test	eax, eax
	je	.L327
.L403:
	test	BYTE PTR 92[rsi], 32
	jne	.L405
.L327:
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L405:
	and	DWORD PTR 36[rbx], -33
	mov	DWORD PTR 92[rsi], 0
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L330:
	cmp	BYTE PTR 105[rbx], 0
	je	.L334
	cmp	BYTE PTR 141[rbx], 2
	je	.L327
.L334:
	movzx	eax, BYTE PTR 112[rsi]
	test	al, al
	je	.L335
	test	BYTE PTR 108[rsi], 4
	jne	.L335
	sub	eax, 1
	mov	BYTE PTR 112[rsi], al
	test	BYTE PTR 36[rbx], 8
	je	.L327
	cmp	QWORD PTR 64[rbx], rsi
	jne	.L327
	movsx	r9d, WORD PTR 118[rsi]
	movsx	r8d, WORD PTR 98[rsi]
	mov	rcx, rsi
	movsx	edx, WORD PTR 96[rsi]
	mov	DWORD PTR 48[rsp], 0
	movzx	eax, BYTE PTR 100[rsi]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rsi]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	test	BYTE PTR 92[rsi], 32
	je	.L373
	test	al, 32
	jne	.L373
	and	DWORD PTR 36[rbx], -33
.L373:
	mov	DWORD PTR 92[rsi], eax
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L404:
	call	sub_8017F34
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L335:
	movzx	eax, WORD PTR 18[rsi]
	mov	BYTE PTR 112[rsi], 0
	sub	ax, 292
	cmp	ax, 2
	jbe	.L341
	call	sub_80181E0
	test	eax, eax
	jne	.L403
	movzx	eax, WORD PTR 18[rsi]
	sub	ax, 292
	cmp	ax, 2
	jbe	.L341
	cmp	DWORD PTR 80[rbp], -1
	je	.L341
	cmp	DWORD PTR 64[rsi], -1
	jne	.L327
	.p2align 4,,10
	.p2align 3
.L341:
	movzx	eax, BYTE PTR 27[rbx]
	movzx	edx, BYTE PTR 26[rbx]
	movsx	r9d, WORD PTR 118[rsi]
	mov	r8d, eax
	sal	eax, 8
	mov	ecx, edx
	neg	r8d
	or	eax, edx
	neg	ecx
	movzx	edx, r8b
	sal	eax, 8
	movsx	r8d, WORD PTR 98[rsi]
	or	eax, edx
	movzx	edx, cl
	mov	rcx, rsi
	sal	eax, 8
	or	eax, edx
	movsx	edx, WORD PTR 96[rsi]
	mov	DWORD PTR 48[rsp], 1
	mov	DWORD PTR 76[rsp], eax
	movzx	eax, BYTE PTR 100[rsi]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rsi]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	test	BYTE PTR 92[rsi], 32
	je	.L339
	test	al, 32
	jne	.L339
	and	DWORD PTR 36[rbx], -33
.L339:
	mov	DWORD PTR 92[rsi], eax
	test	eax, 2097152
	je	.L342
	mov	BYTE PTR 112[rsi], 30
.L342:
	lea	rax, 76[rsp]
	movsx	r8d, WORD PTR 98[rsi]
	movsx	edx, WORD PTR 96[rsi]
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], rax
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	call	Coll_Player_Entity_RectIntersection
	test	eax, eax
	je	.L400
	movzx	eax, WORD PTR 100[rsi]
	mov	edx, eax
	shr	dl, 7
	cmp	BYTE PTR 60[rbx], dl
	jne	.L400
	movzx	edx, WORD PTR 18[rsi]
	sub	dx, 292
	cmp	dx, 2
	ja	.L400
	mov	rbp, QWORD PTR .refptr.gStageFlags[rip]
	movzx	edx, WORD PTR 0[rbp]
	and	dx, 128
	setne	cl
	shr	ax, 3
	xor	eax, 1
	and	eax, 1
	cmp	cl, al
	je	.L400
	mov	eax, DWORD PTR 16[rbx]
	movsx	ecx, WORD PTR 98[rsi]
	sar	eax, 8
	test	dx, dx
	je	.L406
	cmp	eax, ecx
	jge	.L400
.L349:
	mov	rcx, rbx
	mov	edx, 14
	or	DWORD PTR 36[rbx], 4194304
	call	Player_HandleSpriteYOffsetChange
	xor	r9d, r9d
	xor	ecx, ecx
	xor	r8d, r8d
	mov	WORD PTR 105[rbx], r9w
	test	BYTE PTR 33[rsi], 4
	mov	DWORD PTR 24[rbx], 235274240
	mov	eax, DWORD PTR 36[rbx]
	mov	WORD PTR 20[rbx], cx
	mov	WORD PTR 108[rbx], r8w
	je	.L350
	and	eax, -2
.L351:
	mov	DWORD PTR 36[rbx], eax
	mov	eax, DWORD PTR 108[rsi]
	test	al, 4
	je	.L407
.L352:
	or	eax, 4
	mov	DWORD PTR 108[rsi], eax
	.p2align 4,,10
	.p2align 3
.L354:
	mov	rcx, rbx
	call	Player_TryJump
	test	eax, eax
	jne	.L408
	mov	rbp, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR 100[rsi]
	movzx	ecx, WORD PTR 18[rsi]
	mov	r8d, DWORD PTR 108[rsi]
	movzx	edx, WORD PTR 0[rbp]
	and	dx, 128
	sete	r9b
	shr	ax, 3
	sub	cx, 292
	xor	eax, 1
	and	eax, 1
	cmp	cx, 2
	ja	.L358
	mov	ecx, DWORD PTR 12[rbx]
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sar	ecx, 8
	cmp	ecx, DWORD PTR 48[r10]
	jle	.L358
	cmp	ecx, DWORD PTR 52[r10]
	jge	.L358
	cmp	r9b, al
	jne	.L359
	mov	eax, r8d
	shr	eax, 8
	xor	eax, 1
	and	eax, 1
	cmp	al, r9b
	jne	.L359
	and	edi, 32
	jne	.L409
	movsx	r10d, WORD PTR 96[rsi]
	movsx	r9d, BYTE PTR 27[rbx]
	movsx	r11d, WORD PTR 98[rsi]
	movsx	ecx, BYTE PTR 79[rsp]
	mov	edi, r10d
	movzx	r8d, BYTE PTR 60[rbx]
	sal	edi, 8
	test	dx, dx
	jne	.L366
	movsx	eax, BYTE PTR 61[rsi]
	mov	edx, r10d
	add	eax, r11d
	sub	eax, ecx
	mov	r12d, eax
	sub	eax, r9d
	mov	r9d, -8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	sal	r12d, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	js	.L410
.L367:
	mov	eax, DWORD PTR 108[rsi]
	mov	DWORD PTR 12[rbx], edi
	mov	DWORD PTR 16[rbx], r12d
	test	al, 4
	je	.L368
	mov	edx, DWORD PTR 36[rbx]
	mov	QWORD PTR 64[rbx], rsi
	mov	WORD PTR 22[rbx], 0
	mov	ecx, edx
	and	edx, -8
	and	ecx, -7
	or	edx, 8
	or	ecx, 9
	test	BYTE PTR 33[rsi], 4
	cmove	edx, ecx
	mov	DWORD PTR 36[rbx], edx
.L370:
	mov	edx, eax
	or	ah, 1
	and	dh, -2
	test	BYTE PTR 0[rbp], -128
	cmove	eax, edx
	mov	DWORD PTR 108[rsi], eax
	jmp	.L327
.L406:
	cmp	eax, ecx
	jg	.L349
	.p2align 4,,10
	.p2align 3
.L400:
	mov	eax, DWORD PTR 108[rsi]
	and	eax, 4
	test	eax, eax
	je	.L327
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L358:
	mov	edx, r8d
	and	DWORD PTR 36[rbx], -4194305
	and	edx, -5
	mov	DWORD PTR 108[rsi], edx
	xor	edx, edx
	mov	WORD PTR 108[rbx], dx
	cmp	r9b, al
	je	.L411
.L364:
	mov	BYTE PTR 112[rsi], 30
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L408:
	and	DWORD PTR 36[rbx], -4194305
	and	DWORD PTR 108[rsi], -5
	mov	BYTE PTR 112[rsi], 30
	jmp	.L327
.L411:
	shr	r8d, 8
	xor	r8d, 1
	mov	eax, r8d
	and	eax, 1
.L374:
	cmp	al, r9b
	jne	.L364
	jmp	.L327
.L359:
	and	r8d, -5
	xor	eax, eax
	and	DWORD PTR 36[rbx], -4194305
	mov	DWORD PTR 108[rsi], r8d
	mov	WORD PTR 108[rbx], ax
	jmp	.L364
.L350:
	or	eax, 1
	jmp	.L351
.L407:
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 8
	movzx	edx, BYTE PTR 102[rsi]
	mov	BYTE PTR 2[rax], 1
	mov	BYTE PTR 1[rax], dl
	mov	eax, DWORD PTR 108[rsi]
	test	BYTE PTR 0[rbp], -128
	jne	.L353
	and	ah, -2
	jmp	.L352
.L409:
	and	r8d, -5
	and	DWORD PTR 36[rbx], -4194305
	mov	DWORD PTR 108[rsi], r8d
	mov	WORD PTR 108[rbx], 0
	jmp	.L374
.L366:
	movsx	eax, BYTE PTR 63[rsi]
	mov	edx, r10d
	add	eax, r11d
	add	eax, ecx
	mov	r12d, eax
	lea	ecx, [rax+r9]
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	r9d, 8
	sal	r12d, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jns	.L367
	sal	eax, 8
	add	r12d, eax
.L401:
	mov	eax, DWORD PTR 36[rbx]
	and	DWORD PTR 108[rsi], -5
	and	eax, -4194305
	or	eax, 2
	mov	DWORD PTR 36[rbx], eax
	jmp	.L367
.L368:
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 8
	movzx	edx, BYTE PTR 102[rsi]
	mov	BYTE PTR 2[rax], 0
	mov	BYTE PTR 1[rax], dl
	mov	eax, DWORD PTR 108[rsi]
	jmp	.L370
.L410:
	sal	eax, 8
	sub	r12d, eax
	jmp	.L401
.L353:
	or	ah, 1
	jmp	.L352
	.seh_endproc
	.p2align 4
	.globl	sub_8018120
	.def	sub_8018120;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8018120
sub_8018120:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 36[rbx]
	test	al, 8
	je	.L414
	cmp	QWORD PTR 64[rbx], rsi
	je	.L426
.L414:
	call	sub_8018300
	test	eax, eax
	je	.L412
	test	BYTE PTR 92[rsi], 32
	je	.L412
	and	DWORD PTR 36[rbx], -33
	mov	DWORD PTR 92[rsi], 0
.L412:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L426:
	mov	ecx, DWORD PTR 84[rsi]
	movq	xmm1, QWORD PTR 12[rbx]
	sal	ecx, 8
	movd	xmm0, ecx
	mov	ecx, DWORD PTR 88[rsi]
	lea	edx, 1[rcx]
	mov	rcx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	sal	edx, 8
	movd	xmm2, edx
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	punpckldq	xmm0, xmm2
	movzx	edx, BYTE PTR 296[rdx]
	paddd	xmm0, xmm1
	shr	dl, 4
	and	edx, 3
	movq	QWORD PTR 12[rbx], xmm0
	mov	rdx, QWORD PTR [rcx+rdx*8]
	mov	rdx, QWORD PTR 24[rdx]
	movzx	edx, WORD PTR 100[rdx]
	xor	dx, WORD PTR 100[rsi]
	and	edx, 128
	je	.L414
	and	eax, -9
	mov	QWORD PTR 64[rbx], -1
	mov	DWORD PTR 36[rbx], eax
	movzx	eax, BYTE PTR 102[rsi]
	mov	BYTE PTR 116[rsi], al
	jmp	.L414
	.seh_endproc
	.p2align 4
	.globl	sub_8018818
	.def	sub_8018818;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8018818
sub_8018818:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L427
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	lea	rcx, 32[rax]
.L430:
	mov	rdx, QWORD PTR [rax]
	test	rdx, rdx
	je	.L429
	mov	rdx, QWORD PTR 24[rdx]
	add	rax, 8
	and	DWORD PTR 108[rdx], -3
	cmp	rax, rcx
	jne	.L430
.L429:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, 120
	and	BYTE PTR 59[rax], 127
	mov	WORD PTR 48[rax], dx
.L427:
	ret
	.seh_endproc
	.p2align 4
	.globl	LaunchPlayer
	.def	LaunchPlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	LaunchPlayer
LaunchPlayer:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 2
	mov	QWORD PTR 32[rsp], 0
	mov	ebx, ecx
	lea	rcx, Task_HandleLaunchPlayer[rip]
	call	TaskCreate
	xor	edx, edx
	mov	ecx, 109
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR [rax], bx
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 10485760
	mov	WORD PTR 100[rax], dx
	mov	WORD PTR 108[rax], cx
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8017C28
	.def	sub_8017C28;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8017C28
sub_8017C28:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	test	BYTE PTR 36[rbx], 8
	je	.L437
	cmp	QWORD PTR 64[rbx], rsi
	je	.L497
.L437:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	jne	.L438
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	ecx, BYTE PTR 102[rsi]
	movzx	r10d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	r9d, BYTE PTR 296[rax]
	movzx	edx, BYTE PTR 296[rax]
	mov	eax, 16
	mov	r8d, eax
	sal	r8d, cl
	shr	r9b, 4
	add	ecx, 4
	and	r9d, 3
	and	r8d, r10d
	shr	dl, 4
	sar	r8d, cl
	mov	ecx, r9d
	and	edx, 3
	sal	eax, cl
	lea	ecx, 4[rdx]
	and	eax, r10d
	sar	eax, cl
	cmp	r8d, eax
	je	.L439
.L438:
	call	sub_8018300
	test	eax, eax
	je	.L436
	test	BYTE PTR 92[rsi], 32
	jne	.L498
.L436:
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L498:
	and	DWORD PTR 36[rbx], -33
	mov	DWORD PTR 92[rsi], 0
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L439:
	movzx	eax, BYTE PTR 112[rsi]
	test	al, al
	jne	.L443
	cmp	DWORD PTR 64[rsi], -1
	movzx	eax, BYTE PTR 105[rbx]
	je	.L499
	test	al, al
	je	.L447
	movzx	eax, BYTE PTR 141[rbx]
	sub	eax, 2
	cmp	al, 1
	jbe	.L436
.L447:
	movzx	eax, BYTE PTR 100[rsi]
	movsx	r9d, WORD PTR 118[rsi]
	mov	rcx, rsi
	movsx	r8d, WORD PTR 98[rsi]
	movsx	edx, WORD PTR 96[rsi]
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rsi]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800DA4C
	test	al, 2
	je	.L448
	test	BYTE PTR 36[rbx], 2
	jne	.L448
	cmp	BYTE PTR 40[rbx], 0
	jne	.L448
	movzx	edx, WORD PTR 18[rsi]
	cmp	dx, 378
	je	.L500
	cmp	dx, 383
	je	.L501
	.p2align 4,,10
	.p2align 3
.L448:
	test	al, 1
	je	.L450
	test	eax, 131072
	je	.L451
	movzx	edx, WORD PTR 20[rbx]
	test	dx, dx
	jle	.L452
.L489:
	neg	edx
	neg	WORD PTR 24[rbx]
	mov	WORD PTR 20[rbx], dx
.L452:
	test	eax, 1048576
	je	.L453
	movzx	eax, WORD PTR 22[rbx]
	test	ax, ax
	jle	.L453
	neg	eax
	mov	WORD PTR 22[rbx], ax
.L453:
	mov	BYTE PTR 112[rsi], 30
	jmp	.L436
	.p2align 4,,10
	.p2align 3
.L497:
	call	sub_8017F34
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L443:
	sub	eax, 1
	mov	BYTE PTR 112[rsi], al
	test	BYTE PTR 36[rbx], 8
	je	.L436
	cmp	QWORD PTR 64[rbx], rsi
	jne	.L436
	movsx	r9d, WORD PTR 118[rsi]
	movsx	r8d, WORD PTR 98[rsi]
	movsx	edx, WORD PTR 96[rsi]
	mov	DWORD PTR 48[rsp], 0
.L495:
	movzx	eax, BYTE PTR 100[rsi]
	mov	rcx, rsi
	shr	al, 7
	movzx	eax, al
	mov	DWORD PTR 40[rsp], eax
	movsx	eax, WORD PTR 120[rsi]
	mov	DWORD PTR 32[rsp], eax
	call	sub_800D0A0
	test	BYTE PTR 92[rsi], 32
	je	.L455
	test	al, 32
	jne	.L455
	and	DWORD PTR 36[rbx], -33
.L455:
	mov	DWORD PTR 92[rsi], eax
	jmp	.L436
	.p2align 4,,10
	.p2align 3
.L499:
	test	al, al
	je	.L450
	movzx	eax, BYTE PTR 141[rbx]
	sub	eax, 2
	cmp	al, 1
	jbe	.L436
.L450:
	movsx	r9d, WORD PTR 118[rsi]
	movsx	r8d, WORD PTR 98[rsi]
	movsx	edx, WORD PTR 96[rsi]
	mov	DWORD PTR 48[rsp], 1
	jmp	.L495
	.p2align 4,,10
	.p2align 3
.L451:
	test	eax, 262144
	je	.L452
	movzx	edx, WORD PTR 20[rbx]
	test	dx, dx
	jns	.L452
	jmp	.L489
.L500:
	mov	ecx, -1920
	call	LaunchPlayer
	mov	BYTE PTR 112[rsi], 30
	jmp	.L436
.L501:
	mov	ecx, -2688
	call	LaunchPlayer
	mov	BYTE PTR 112[rsi], 30
	jmp	.L436
	.seh_endproc
	.p2align 4
	.globl	Task_CreateMultiplayerPlayer
	.def	Task_CreateMultiplayerPlayer;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_CreateMultiplayerPlayer
Task_CreateMultiplayerPlayer:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, 1
	movzx	edx, BYTE PTR 102[rbx]
	movd	xmm1, DWORD PTR 96[rbx]
	lea	rsi, 72[rbx]
	movsx	r10d, WORD PTR 96[rbx]
	movsx	r9d, WORD PTR 98[rbx]
	mov	ecx, edx
	sal	eax, cl
	and	eax, DWORD PTR [r8]
	je	.L503
	movsx	rdi, edx
	mov	r13, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	BYTE PTR 113[rbx], 0
	lea	rax, [rdi+rdi*4]
	sal	rax, 2
	lea	r8, 0[r13+rax]
	cmp	WORD PTR [r8], 20480
	jne	.L577
	mov	r11d, DWORD PTR 2[r13+rax]
	mov	rbp, QWORD PTR .refptr.gGameMode[rip]
	movsx	eax, WORD PTR 2[r8]
	movsx	r8d, WORD PTR 4[r8]
	sub	eax, r10d
	sub	r8d, r9d
	cmp	BYTE PTR 0[rbp], 5
	mov	DWORD PTR 84[rbx], eax
	mov	DWORD PTR 88[rbx], r8d
	je	.L505
.L506:
	lea	r8d, 64[rax]
	mov	DWORD PTR 96[rbx], r11d
	cmp	r8d, 128
	jbe	.L508
.L511:
	xor	eax, eax
	xor	r8d, r8d
.L512:
	mov	r14, QWORD PTR .refptr.REG_BASE[rip]
	mov	WORD PTR 118[rbx], ax
	lea	rax, [rdi+rdi*4]
	mov	WORD PTR 120[rbx], r8w
	movzx	r8d, BYTE PTR 16[r13+rax*4]
	movzx	eax, BYTE PTR 296[r14]
	shr	al, 4
	and	eax, 3
	cmp	cl, al
	je	.L620
.L513:
	lea	rax, [rdi+rdi*4]
	mov	BYTE PTR 103[rbx], r8b
	movzx	edx, WORD PTR 8[r13+rax*4]
	mov	WORD PTR 100[rbx], dx
	movzx	eax, BYTE PTR 296[r14]
	shr	al, 4
	and	eax, 3
	cmp	al, cl
	je	.L517
	shr	edx, 9
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	and	edx, 3
	mov	BYTE PTR 116[rbx], dl
.L518:
	lea	rax, [rdi+rdi*4]
	cmp	BYTE PTR 0[rbp], 5
	movzx	r15d, WORD PTR 6[r13+rax*4]
	mov	eax, r15d
	mov	r8d, r15d
	jne	.L522
	movzx	edx, BYTE PTR 102[rbx]
	mov	r8, QWORD PTR .refptr.gMultiplayerCharRings[rip]
	movzx	ecx, ah
	mov	BYTE PTR [r8+rdx], cl
	mov	rdx, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	movsx	rcx, r15d
	mov	WORD PTR 122[rbx], r15w
	movzx	r15d, WORD PTR [rdx+rcx*2]
	mov	r8d, r15d
.L522:
	movzx	r9d, WORD PTR 18[rbx]
	lea	rdx, [rdi+rdi*4]
	movzx	edx, BYTE PTR 11[r13+rdx*4]
	cmp	r9d, r15d
	je	.L621
.L523:
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 64[rbx], -1
.L524:
	movzx	ecx, WORD PTR 100[rbx]
	test	cl, 4
	je	.L526
	mov	r10d, DWORD PTR 108[rbx]
	mov	r9d, DWORD PTR 36[r12]
	test	r10b, 4
	je	.L527
	and	r9d, -4194305
	and	r10d, -5
	mov	DWORD PTR 36[r12], r9d
	mov	DWORD PTR 108[rbx], r10d
.L527:
	test	r9b, 8
	je	.L526
	cmp	QWORD PTR 64[r12], rbx
	je	.L622
	.p2align 4,,10
	.p2align 3
.L526:
	mov	BYTE PTR 48[rbx], al
	lea	rax, [rdi+rdi*4]
	shr	dl, 4
	movd	xmm0, DWORD PTR 96[rbx]
	lea	rax, 0[r13+rax*4]
	mov	BYTE PTR 104[rbx], dl
	movzx	edx, BYTE PTR 12[rax]
	mov	WORD PTR 18[rbx], r8w
	mov	BYTE PTR 50[rbx], dl
	movzx	eax, BYTE PTR 13[rax]
	sal	eax, 2
	mov	WORD PTR 72[rbx], ax
	jmp	.L529
	.p2align 4,,10
	.p2align 3
.L503:
	movzx	eax, BYTE PTR 113[rbx]
	lea	edx, 1[rax]
.L504:
	movd	xmm0, DWORD PTR 118[rbx]
	mov	BYTE PTR 113[rbx], dl
	psraw	xmm0, 8
	paddw	xmm0, xmm1
	movd	DWORD PTR 96[rbx], xmm0
	cmp	al, 30
	ja	.L623
	movzx	ecx, WORD PTR 100[rbx]
	mov	rbp, QWORD PTR .refptr.gGameMode[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
.L529:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 4[rdi]
	movzx	edx, WORD PTR [rdi]
	sal	eax, 16
	or	eax, edx
	movd	xmm2, eax
	psubw	xmm0, xmm2
	movd	DWORD PTR 38[rbx], xmm0
	movd	DWORD PTR 78[rbx], xmm0
	and	ch, 8
	jne	.L624
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 0[rbp], 4
	je	.L625
.L532:
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	r8d, WORD PTR 100[rbx]
	movzx	edx, BYTE PTR 59[r12]
	test	BYTE PTR [rax], 1
	jne	.L536
	test	r8b, 4
	jne	.L536
	test	dl, dl
	js	.L544
	cmp	WORD PTR 48[r12], 0
	jne	.L544
	mov	eax, DWORD PTR 108[rbx]
	mov	edx, DWORD PTR 36[r12]
	and	eax, 1
	and	edx, 4194432
	or	eax, edx
	jne	.L544
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	cmp	BYTE PTR 0[rbp], 5
	movzx	edx, BYTE PTR 102[rbx]
	movzx	eax, BYTE PTR 296[rax]
	je	.L538
	shr	al, 4
	and	eax, 3
	cmp	al, dl
	je	.L544
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 3
	je	.L539
	jg	.L540
	cmp	al, 2
	jne	.L626
	call	sub_801707C
	movzx	r8d, WORD PTR 100[rbx]
	.p2align 4,,10
	.p2align 3
.L544:
	mov	ecx, r8d
	and	ecx, 2
	test	r8b, 1
	je	.L547
	mov	r9, QWORD PTR .refptr.gOamMatrixIndex[rip]
	movzx	eax, BYTE PTR [r9]
	lea	r10d, 1[rax]
	or	eax, 31
	cmp	cx, 1
	movzx	edx, al
	sbb	eax, eax
	mov	BYTE PTR [r9], r10b
	and	ax, 512
	mov	DWORD PTR 32[rbx], edx
	mov	rdx, rsi
	sub	ax, 256
	mov	ecx, eax
	neg	ecx
	and	r8d, 8
	cmovne	eax, ecx
	mov	rcx, rbx
	mov	WORD PTR 74[rbx], ax
	call	TransformSprite
	movzx	r8d, WORD PTR 100[rbx]
	mov	eax, DWORD PTR 32[rbx]
.L550:
	mov	edx, r8d
	and	ah, -49
	sal	edx, 8
	and	edx, 12288
	or	eax, edx
	mov	DWORD PTR 32[rbx], eax
	test	r8b, 64
	jne	.L555
	movzx	edx, BYTE PTR 103[rbx]
	mov	rcx, QWORD PTR .refptr.gStageTime[rip]
	and	edx, 32
	test	BYTE PTR [rcx], 2
	jne	.L556
	test	dl, dl
	je	.L627
	test	r8b, -128
	jne	.L573
	mov	r9d, 1024
	and	eax, -385
	mov	WORD PTR 42[rbx], r9w
	mov	DWORD PTR 32[rbx], eax
.L561:
	cmp	BYTE PTR 0[rbp], 4
	movzx	edx, WORD PTR 38[rbx]
	je	.L628
.L563:
	cmp	BYTE PTR 112[rbx], 0
	jne	.L562
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	ecx, BYTE PTR 296[rcx]
	shr	cl, 4
	and	ecx, 3
	cmp	BYTE PTR 102[rbx], cl
	je	.L562
	or	ah, 1
	mov	DWORD PTR 32[rbx], eax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rax], -32768
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR 20[rax], 2111
	.p2align 4,,10
	.p2align 3
.L562:
	lea	eax, 63[rdx]
	cmp	ax, 552
	ja	.L566
	movzx	eax, WORD PTR 40[rbx]
	add	eax, 63
	cmp	ax, 366
	jbe	.L569
.L566:
	cmp	BYTE PTR 0[rbp], 5
	jne	.L555
	movsx	ecx, dx
	add	ecx, DWORD PTR [rdi]
	movd	xmm0, DWORD PTR 78[rbx]
	movzx	eax, WORD PTR 40[rbx]
	cmp	ecx, 960
	jg	.L567
	movd	xmm1, DWORD PTR .LC2[rip]
	add	dx, 1440
	add	ax, 864
	paddw	xmm0, xmm1
.L568:
	mov	WORD PTR 38[rbx], dx
	add	edx, 63
	mov	WORD PTR 40[rbx], ax
	movd	DWORD PTR 78[rbx], xmm0
	cmp	dx, 552
	ja	.L555
	add	eax, 63
	cmp	ax, 366
	jbe	.L629
	.p2align 4,,10
	.p2align 3
.L555:
	mov	rbx, QWORD PTR .refptr.gShouldSpawnMPAttackEffect[rip]
	cmp	BYTE PTR [rbx], 0
	jne	.L630
.L570:
	cmp	BYTE PTR gShouldSpawnMPAttack2Effect[rip], 0
	jne	.L631
.L502:
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
.L536:
	mov	eax, DWORD PTR 36[r12]
	test	dl, dl
	js	.L545
	cmp	BYTE PTR 103[rbx], 0
	js	.L545
	cmp	WORD PTR 50[r12], 0
	je	.L545
	test	al, -128
	jne	.L545
	movzx	edx, BYTE PTR 102[rbx]
	mov	rcx, QWORD PTR .refptr.gMultiplayerRanks[rip]
	cmp	BYTE PTR [rcx+rdx], -1
	je	.L544
	.p2align 4,,10
	.p2align 3
.L545:
	mov	edx, eax
	and	edx, 8
	cmp	BYTE PTR 0[rbp], 5
	je	.L546
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	ecx, BYTE PTR 296[rcx]
	test	edx, edx
	je	.L544
	cmp	QWORD PTR 64[r12], rbx
	jne	.L544
	and	eax, -10
	mov	BYTE PTR 112[rbx], 30
	or	eax, 2
	mov	DWORD PTR 36[r12], eax
	jmp	.L544
	.p2align 4,,10
	.p2align 3
.L624:
	mov	BYTE PTR 49[rbx], -1
	mov	rcx, rbx
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 64[rbx], -1
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 0[rbp], 4
	jne	.L532
.L625:
	mov	r14, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, QWORD PTR .refptr.gMultiplayerRanks[rip]
	movzx	eax, BYTE PTR 296[r14]
	shr	al, 4
	and	eax, 3
	cmp	BYTE PTR [rdx+rax], -1
	jne	.L532
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	xor	edx, edx
	mov	r13d, 16
	movzx	r15d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	QWORD PTR 40[rsp], rax
.L535:
	mov	rax, QWORD PTR 40[rsp]
	mov	r10, QWORD PTR [rax+rdx*8]
	test	r10, r10
	je	.L533
	movzx	r8d, BYTE PTR 296[r14]
	mov	ecx, edx
	mov	r9d, r13d
	mov	r11d, r13d
	sal	r9d, cl
	movzx	eax, BYTE PTR 296[r14]
	lea	ecx, 4[rdx]
	shr	r8b, 4
	and	r9d, r15d
	sar	r9d, cl
	and	r8d, 3
	shr	al, 4
	mov	ecx, r8d
	and	eax, 3
	sal	r11d, cl
	lea	ecx, 4[rax]
	mov	r8d, r11d
	and	r8d, r15d
	sar	r8d, cl
	cmp	r9d, r8d
	je	.L534
	mov	rax, QWORD PTR 24[r10]
	test	BYTE PTR 101[rax], 1
	je	.L532
.L534:
	add	rdx, 1
	cmp	rdx, 4
	jne	.L535
.L533:
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 7
	jmp	.L532
	.p2align 4,,10
	.p2align 3
.L577:
	mov	edx, 1
	xor	eax, eax
	jmp	.L504
	.p2align 4,,10
	.p2align 3
.L546:
	test	edx, edx
	je	.L544
	cmp	QWORD PTR 64[r12], rbx
	jne	.L544
	and	eax, -19
	mov	BYTE PTR 112[rbx], 30
	or	eax, 2
	mov	DWORD PTR 36[r12], eax
	jmp	.L544
	.p2align 4,,10
	.p2align 3
.L547:
	mov	eax, DWORD PTR 32[rbx]
	mov	edx, eax
	and	eax, -1073
	and	edx, -49
	or	dh, 4
	test	cx, cx
	cmovne	eax, edx
	mov	edx, eax
	and	ah, -9
	or	dh, 8
	test	r8b, 8
	cmovne	eax, edx
	jmp	.L550
	.p2align 4,,10
	.p2align 3
.L631:
	call	CreateMPAttack2Effect
	mov	BYTE PTR gShouldSpawnMPAttack2Effect[rip], 0
	jmp	.L502
	.p2align 4,,10
	.p2align 3
.L630:
	call	CreateMPAttackEffect
	mov	BYTE PTR [rbx], 0
	jmp	.L570
	.p2align 4,,10
	.p2align 3
.L556:
	mov	ecx, r8d
	and	cx, 128
	cmp	cx, 1
	sbb	ecx, ecx
	and	eax, -385
	and	ecx, -64
	mov	DWORD PTR 32[rbx], eax
	add	cx, 1088
	mov	WORD PTR 42[rbx], cx
	test	dl, dl
	jne	.L561
.L619:
	movzx	edx, WORD PTR 38[rbx]
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L627:
	mov	edx, DWORD PTR 108[rbx]
	test	dl, 1
	jne	.L558
	movzx	ecx, BYTE PTR 102[rbx]
	mov	r9, QWORD PTR .refptr.gMultiplayerRanks[rip]
	cmp	BYTE PTR [r9+rcx], -1
	je	.L632
.L558:
	test	r8b, -128
	je	.L633
	mov	ecx, 1088
	and	eax, -385
	mov	WORD PTR 42[rbx], cx
	mov	DWORD PTR 32[rbx], eax
	jmp	.L619
	.p2align 4,,10
	.p2align 3
.L505:
	mov	r9d, eax
	neg	r9d
	cmovs	r9d, eax
	cmp	r9d, 15
	jle	.L634
	test	eax, eax
	jle	.L509
	test	r8d, r8d
	jle	.L506
	sub	eax, 1440
	sub	r8d, 864
	mov	DWORD PTR 84[rbx], eax
	mov	DWORD PTR 88[rbx], r8d
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L634:
	mov	DWORD PTR 96[rbx], r11d
.L508:
	mov	r8d, DWORD PTR 88[rbx]
	mov	r9d, r8d
	neg	r9d
	cmovs	r9d, r8d
	cmp	r9d, 63
	jle	.L511
	sal	eax, 8
	sal	r8d, 8
	jmp	.L512
	.p2align 4,,10
	.p2align 3
.L628:
	mov	r9, QWORD PTR .refptr.REG_BASE[rip]
	mov	rcx, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r12d, BYTE PTR 296[r9]
	movzx	r13d, BYTE PTR [rcx]
	movzx	r10d, BYTE PTR 296[r9]
	movzx	ecx, BYTE PTR 102[rbx]
	mov	r9d, 16
	mov	r11d, r9d
	shr	r12b, 4
	sal	r11d, cl
	and	r12d, 3
	add	ecx, 4
	shr	r10b, 4
	and	r11d, r13d
	and	r10d, 3
	sar	r11d, cl
	mov	ecx, r12d
	sal	r9d, cl
	lea	ecx, 4[r10]
	and	r9d, r13d
	sar	r9d, cl
	cmp	r11d, r9d
	jne	.L563
	add	edx, 63
	cmp	dx, 552
	ja	.L555
	movzx	eax, WORD PTR 40[rbx]
	add	eax, 63
	cmp	ax, 366
	ja	.L555
	.p2align 4,,10
	.p2align 3
.L569:
	mov	rcx, rbx
	call	DisplaySprite
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L623:
	mov	edx, 65535
	xor	ecx, ecx
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	LinkCommunicationError
	.p2align 4,,10
	.p2align 3
.L621:
	mov	ecx, edx
	and	ecx, 15
	cmp	BYTE PTR 48[rbx], cl
	jne	.L523
	jmp	.L524
	.p2align 4,,10
	.p2align 3
.L517:
	movzx	eax, BYTE PTR 296[r14]
	movzx	edx, BYTE PTR 116[rbx]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	shr	al, 4
	and	eax, 3
	cmp	al, dl
	je	.L518
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	r15, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 296[r14]
	shr	al, 4
	and	eax, 3
	cmp	al, BYTE PTR 116[r15]
	jne	.L518
	movzx	eax, BYTE PTR 296[r14]
	mov	edx, 14
	mov	rcx, r12
	xor	r14d, r14d
	shr	al, 4
	and	eax, 3
	mov	BYTE PTR 116[r15], al
	mov	eax, DWORD PTR 36[r12]
	and	eax, -1341
	or	eax, 2
	mov	DWORD PTR 36[r12], eax
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 9
	mov	r11d, 3590
	mov	WORD PTR 105[r12], r14w
	mov	WORD PTR 108[r12], ax
	mov	rax, QWORD PTR .refptr.Player_TouchGround[rip]
	and	DWORD PTR 108[rbx], -5
	mov	QWORD PTR [r12], rax
	mov	eax, DWORD PTR 36[r12]
	mov	WORD PTR 26[r12], r11w
	and	eax, -4194305
	or	eax, 8388608
	mov	DWORD PTR 36[r12], eax
	mov	eax, DWORD PTR 108[r15]
	test	al, 4
	je	.L518
	and	eax, -5
	mov	DWORD PTR 108[r15], eax
	jmp	.L518
	.p2align 4,,10
	.p2align 3
.L620:
	movzx	eax, BYTE PTR 103[rbx]
	mov	r12d, eax
	not	r12d
	and	r12d, r8d
	test	r12b, 2
	je	.L514
	test	al, 2
	jne	.L513
	mov	ecx, edx
	call	CreateItemTask_Invincibility
	movzx	ecx, BYTE PTR 102[rbx]
.L514:
	and	r12d, 80
	je	.L618
	test	BYTE PTR 103[rbx], 2
	jne	.L618
	movsx	ecx, cl
	call	CreateItemTask_Confusion
	lea	rax, [rdi+rdi*4]
	movzx	ecx, BYTE PTR 102[rbx]
	movzx	r8d, BYTE PTR 16[r13+rax*4]
	jmp	.L513
	.p2align 4,,10
	.p2align 3
.L567:
	movd	xmm1, DWORD PTR .LC3[rip]
	sub	dx, 1440
	sub	ax, 864
	paddw	xmm0, xmm1
	jmp	.L568
	.p2align 4,,10
	.p2align 3
.L573:
	and	eax, -385
	mov	r10d, 1088
	mov	WORD PTR 42[rbx], r10w
	mov	DWORD PTR 32[rbx], eax
	jmp	.L561
	.p2align 4,,10
	.p2align 3
.L633:
	mov	edx, 1024
	and	eax, -385
	mov	WORD PTR 42[rbx], dx
	movzx	edx, WORD PTR 38[rbx]
	mov	DWORD PTR 32[rbx], eax
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L629:
	and	r8d, 1
	je	.L569
	mov	rdx, rsi
	mov	rcx, rbx
	call	TransformSprite
	jmp	.L569
	.p2align 4,,10
	.p2align 3
.L618:
	lea	rax, [rdi+rdi*4]
	movzx	r8d, BYTE PTR 16[r13+rax*4]
	jmp	.L513
	.p2align 4,,10
	.p2align 3
.L622:
	and	r9d, -9
	or	r9d, 2
	mov	DWORD PTR 36[r12], r9d
	jmp	.L526
	.p2align 4,,10
	.p2align 3
.L632:
	cmp	BYTE PTR 112[rbx], 0
	jne	.L555
	test	r8b, 4
	jne	.L555
	and	edx, 2
	je	.L558
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L509:
	test	r8d, r8d
	jns	.L506
	sub	eax, 1440
	sub	r8d, 864
	mov	DWORD PTR 96[rbx], r11d
	mov	DWORD PTR 84[rbx], eax
	mov	DWORD PTR 88[rbx], r8d
	jmp	.L511
.L538:
	shr	al, 4
	and	eax, 3
	cmp	al, dl
	je	.L544
	call	sub_8018120
	movzx	r8d, WORD PTR 100[rbx]
	jmp	.L544
.L540:
	cmp	al, 4
	jne	.L544
	call	sub_8017C28
	movzx	r8d, WORD PTR 100[rbx]
	jmp	.L544
.L626:
	test	al, al
	js	.L544
	call	sub_8016D20
	movzx	r8d, WORD PTR 100[rbx]
	jmp	.L544
.L539:
	call	sub_8017670
	movzx	r8d, WORD PTR 100[rbx]
	jmp	.L544
	.seh_endproc
	.globl	gShouldSpawnMPAttack2Effect
	.bss
gShouldSpawnMPAttack2Effect:
	.space 1
	.globl	unused_3005838
	.align 4
unused_3005838:
	.space 4
	.section .rdata,"dr"
	.align 4
.LC2:
	.word	1440
	.word	864
	.align 4
.LC3:
	.word	-1440
	.word	-864
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	sub_800DA4C;	.scl	2;	.type	32;	.endef
	.def	sub_800DD54;	.scl	2;	.type	32;	.endef
	.def	sub_800DE44;	.scl	2;	.type	32;	.endef
	.def	sub_800D0A0;	.scl	2;	.type	32;	.endef
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.def	Player_TryJump;	.scl	2;	.type	32;	.endef
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_RectIntersection;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	CreateMPAttack2Effect;	.scl	2;	.type	32;	.endef
	.def	CreateMPAttackEffect;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.def	CreateItemTask_Invincibility;	.scl	2;	.type	32;	.endef
	.def	CreateItemTask_Confusion;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gShouldSpawnMPAttackEffect, "dr"
	.globl	.refptr.gShouldSpawnMPAttackEffect
	.linkonce	discard
.refptr.gShouldSpawnMPAttackEffect:
	.quad	gShouldSpawnMPAttackEffect
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
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.gVramGraphicsCopyQueueIndex, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueIndex
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueIndex:
	.quad	gVramGraphicsCopyQueueIndex
	.section	.rdata$.refptr.gVramGraphicsCopyCursor, "dr"
	.globl	.refptr.gVramGraphicsCopyCursor
	.linkonce	discard
.refptr.gVramGraphicsCopyCursor:
	.quad	gVramGraphicsCopyCursor
	.section	.rdata$.refptr.gBgSpritesCount, "dr"
	.globl	.refptr.gBgSpritesCount
	.linkonce	discard
.refptr.gBgSpritesCount:
	.quad	gBgSpritesCount
	.section	.rdata$.refptr.gBackgroundsCopyQueueIndex, "dr"
	.globl	.refptr.gBackgroundsCopyQueueIndex
	.linkonce	discard
.refptr.gBackgroundsCopyQueueIndex:
	.quad	gBackgroundsCopyQueueIndex
	.section	.rdata$.refptr.gBackgroundsCopyQueueCursor, "dr"
	.globl	.refptr.gBackgroundsCopyQueueCursor
	.linkonce	discard
.refptr.gBackgroundsCopyQueueCursor:
	.quad	gBackgroundsCopyQueueCursor
	.section	.rdata$.refptr.gMultiplayerCharRings, "dr"
	.globl	.refptr.gMultiplayerCharRings
	.linkonce	discard
.refptr.gMultiplayerCharRings:
	.quad	gMultiplayerCharRings
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
	.section	.rdata$.refptr.gMultiSioStatusFlags, "dr"
	.globl	.refptr.gMultiSioStatusFlags
	.linkonce	discard
.refptr.gMultiSioStatusFlags:
	.quad	gMultiSioStatusFlags
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.Player_TouchGround, "dr"
	.globl	.refptr.Player_TouchGround
	.linkonce	discard
.refptr.Player_TouchGround:
	.quad	Player_TouchGround
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.sub_801EB44, "dr"
	.globl	.refptr.sub_801EB44
	.linkonce	discard
.refptr.sub_801EB44:
	.quad	sub_801EB44
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gPlayerCharacterIdleAnims, "dr"
	.globl	.refptr.gPlayerCharacterIdleAnims
	.linkonce	discard
.refptr.gPlayerCharacterIdleAnims:
	.quad	gPlayerCharacterIdleAnims
	.section	.rdata$.refptr.gSpawnPositions, "dr"
	.globl	.refptr.gSpawnPositions
	.linkonce	discard
.refptr.gSpawnPositions:
	.quad	gSpawnPositions
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
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
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
