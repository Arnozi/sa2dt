	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_ItemBox
	.def	TaskDestructor_ItemBox;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_ItemBox
TaskDestructor_ItemBox:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	Task_ItemBoxIconMain_Rise_MP
	.def	Task_ItemBoxIconMain_Rise_MP;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ItemBoxIconMain_Rise_MP
Task_ItemBoxIconMain_Rise_MP:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[r8]
	movzx	edx, BYTE PTR 155[rcx]
	lea	eax, 1[rdx]
	mov	BYTE PTR 155[rcx], al
	movzx	eax, WORD PTR 152[rcx]
	cmp	dl, 59
	jbe	.L4
	lea	rdx, Task_ItemBoxIconMain_Idle[rip]
	mov	BYTE PTR 155[rcx], 0
	mov	QWORD PTR 40[r8], rdx
.L5:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	sar	ax, 8
	add	rcx, 80
	mov	edx, DWORD PTR 68[rcx]
	mov	r8d, DWORD PTR 64[rcx]
	sub	dx, WORD PTR 4[r9]
	sub	r8w, WORD PTR [r9]
	add	eax, edx
	mov	WORD PTR -26[rcx], r8w
	mov	WORD PTR -24[rcx], dx
	mov	WORD PTR 38[rcx], r8w
	mov	WORD PTR 40[rcx], ax
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L4:
	sub	ax, 256
	mov	WORD PTR 152[rcx], ax
	jmp	.L5
	.seh_endproc
	.p2align 4
	.globl	Task_ItemBoxIconMain_Idle
	.def	Task_ItemBoxIconMain_Idle;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ItemBoxIconMain_Idle
Task_ItemBoxIconMain_Idle:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rdx]
	movzx	eax, BYTE PTR 155[rcx]
	lea	r8d, 1[rax]
	mov	BYTE PTR 155[rcx], r8b
	cmp	al, 29
	jbe	.L7
	mov	rcx, rdx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L7:
	mov	edx, DWORD PTR 144[rcx]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	add	rcx, 80
	mov	eax, DWORD PTR 68[rcx]
	sub	dx, WORD PTR [r8]
	sub	ax, WORD PTR 4[r8]
	mov	WORD PTR -26[rcx], dx
	mov	WORD PTR 38[rcx], dx
	movsx	dx, BYTE PTR 73[rcx]
	mov	WORD PTR -24[rcx], ax
	add	eax, edx
	mov	WORD PTR 40[rcx], ax
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	BreakItemBox
	.def	BreakItemBox;	.scl	2;	.type	32;	.endef
	.seh_proc	BreakItemBox
BreakItemBox:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	BYTE PTR 156[rcx], 1
	mov	rbx, rcx
	je	.L16
.L9:
	mov	edx, -768
	mov	DWORD PTR 108[rax], -65498
	mov	WORD PTR 22[rax], dx
	mov	BYTE PTR 117[rax], 5
.L10:
	mov	ecx, 150
	call	m4aSongNumStart
	movsx	edx, WORD PTR 148[rbx]
	movsx	ecx, WORD PTR 144[rbx]
	call	CreateDustCloud
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR 155[rbx], 0
	cmp	BYTE PTR [rax], 2
	ja	.L17
.L11:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, Task_ItemBoxIconMain_Rising[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	test	BYTE PTR 36[rax], 2
	je	.L10
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L17:
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 2
	movzx	edx, WORD PTR 8[rbx]
	mov	BYTE PTR 1[rax], dl
	movzx	edx, WORD PTR 10[rbx]
	mov	BYTE PTR 2[rax], dl
	movzx	edx, BYTE PTR 13[rbx]
	mov	BYTE PTR 3[rax], dl
	jmp	.L11
	.seh_endproc
	.p2align 4
	.globl	ApplyItemboxEffect
	.def	ApplyItemboxEffect;	.scl	2;	.type	32;	.endef
	.seh_proc	ApplyItemboxEffect
ApplyItemboxEffect:
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
	cmp	BYTE PTR 154[rcx], 12
	mov	rbx, rcx
	ja	.L19
	movzx	eax, BYTE PTR 154[rcx]
	lea	rdx, .L21[rip]
	movsx	rax, DWORD PTR [rdx+rax*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L21:
	.long	.L33-.L21
	.long	.L32-.L21
	.long	.L31-.L21
	.long	.L30-.L21
	.long	.L29-.L21
	.long	.L28-.L21
	.long	.L27-.L21
	.long	.L26-.L21
	.long	.L25-.L21
	.long	.L24-.L21
	.long	.L23-.L21
	.long	.L22-.L21
	.long	.L20-.L21
	.text
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r9d, 3435973837
	imul	edx, DWORD PTR [rax], 1663525
	lea	ecx, 1013904223[rdx]
	mov	DWORD PTR [rax], ecx
	mov	rdx, rcx
	imul	rcx, r9
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	r8d, WORD PTR [rax]
	shr	rcx, 34
	lea	ecx, [rcx+rcx*4]
	sub	edx, ecx
	lea	rcx, ItemBox_ringAmountTable[rip]
	movzx	ecx, BYTE PTR [rcx+rdx]
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	movzx	r9d, BYTE PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	add	ecx, r8d
	mov	WORD PTR [rax], cx
	cmp	BYTE PTR [rdx], 29
	je	.L39
	mov	edx, ecx
	imul	r8, r8, 1374389535
	shr	dx, 2
	movzx	edx, dx
	imul	edx, edx, 5243
	shr	r8, 37
	shr	edx, 17
	cmp	r8d, edx
	je	.L39
	test	r9b, r9b
	jne	.L39
.L74:
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [rdx]
	mov	eax, ecx
	add	eax, 1
	cmp	ecx, 255
	mov	ecx, -1
	cmove	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L41:
	mov	ecx, 117
	call	m4aSongNumStart
.L19:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdi, Task_ItemBoxIconMain_Idle[rip]
	mov	BYTE PTR 155[rbx], 0
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	call	CreateRoomEvent
	mov	ecx, 774
	mov	WORD PTR [rax], cx
	mov	ecx, 219
	call	m4aSongNumStart
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L20:
	call	CreateRoomEvent
	mov	edx, 1030
	mov	ecx, 216
	mov	WORD PTR [rax], dx
	call	m4aSongNumStart
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	movzx	ecx, BYTE PTR [rdx]
	mov	eax, ecx
	add	eax, 1
	cmp	ecx, 255
	mov	ecx, -1
	cmove	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L32:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, BYTE PTR 59[rdx]
	test	al, 1
	jne	.L19
	mov	ecx, eax
	and	ecx, -9
	or	ecx, 1
	mov	BYTE PTR 59[rdx], cl
	test	al, 2
	jne	.L19
	movsx	ecx, BYTE PTR 104[rdx]
	call	CreateItemTask_Shield_Normal
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L31:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, BYTE PTR 59[rdx]
	test	al, 8
	jne	.L19
	mov	ecx, eax
	and	ecx, -2
	or	ecx, 8
	mov	BYTE PTR 59[rdx], cl
	test	al, 2
	jne	.L19
	movsx	ecx, BYTE PTR 104[rdx]
	call	CreateItemTask_Shield_Magnetic
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ebp, 1200
	cmp	BYTE PTR [rcx], 2
	movzx	edx, BYTE PTR 59[rax]
	mov	WORD PTR 50[rax], bp
	jbe	.L38
	test	dl, 2
	jne	.L19
.L38:
	movsx	ecx, BYTE PTR 104[rax]
	or	edx, 2
	mov	BYTE PTR 59[rax], dl
	call	CreateItemTask_Invincibility
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 2[rax], 16
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L29:
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	edi, 1200
	mov	edx, 512
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	or	BYTE PTR 59[rsi], 4
	mov	WORD PTR 52[rsi], di
	call	m4aMPlayTempoControl
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L19
	and	BYTE PTR 59[rsi], -17
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L27:
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	lea	r8d, 5[rdx]
.L80:
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	mov	WORD PTR [rax], r8w
	movzx	r9d, BYTE PTR [rcx]
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rcx], 29
	je	.L48
	mov	ecx, r8d
	imul	rdx, rdx, 1374389535
	shr	cx, 2
	movzx	ecx, cx
	imul	ecx, ecx, 5243
	shr	rdx, 37
	shr	ecx, 17
	cmp	edx, ecx
	je	.L48
	test	r9b, r9b
	je	.L74
.L48:
	cmp	r8w, 255
	jbe	.L41
	cmp	r9b, 5
	jne	.L41
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L26:
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	lea	r8d, 10[rdx]
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L24:
	call	CreateRoomEvent
	mov	r9d, 6
	mov	ecx, 217
	mov	WORD PTR [rax], r9w
	call	m4aSongNumStart
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L23:
	call	CreateRoomEvent
	mov	r8d, 518
	mov	ecx, 217
	mov	WORD PTR [rax], r8w
	call	m4aSongNumStart
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	r11, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	xor	edx, edx
	xor	esi, esi
	mov	rdi, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8d, -1
	mov	r10d, DWORD PTR 12[rax]
	mov	r9d, DWORD PTR 16[rax]
	sar	r10d, 8
	sar	r9d, 8
.L34:
	mov	rcx, QWORD PTR [r11+rdx*8]
	test	rcx, rcx
	je	.L52
	movzx	eax, BYTE PTR 296[rdi]
	shr	al, 4
	and	eax, 3
	cmp	al, dl
	je	.L51
	mov	rcx, QWORD PTR 24[rcx]
	mov	eax, r10d
	movsx	ebp, WORD PTR 96[rcx]
	sub	eax, ebp
	movsx	ebp, WORD PTR 98[rcx]
	mov	ecx, r9d
	imul	eax, eax
	sub	ecx, ebp
	imul	ecx, ecx
	add	eax, ecx
	cmp	eax, r8d
	cmovg	esi, edx
	cmovg	r8d, eax
.L51:
	add	rdx, 1
	cmp	rdx, 4
	jne	.L34
.L52:
	call	CreateRoomEvent
	mov	r10d, 262
	mov	ecx, 218
	mov	WORD PTR [rax], r10w
	mov	BYTE PTR 2[rax], sil
	call	m4aSongNumStart
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L39:
	cmp	r9b, 5
	jne	.L41
	cmp	cx, 255
	jbe	.L41
.L42:
	mov	r11d, 255
	mov	WORD PTR [rax], r11w
	jmp	.L41
	.seh_endproc
	.p2align 4
	.globl	Task_ItemBoxIconMain_Rising
	.def	Task_ItemBoxIconMain_Rising;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ItemBoxIconMain_Rising
Task_ItemBoxIconMain_Rising:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 155[rbx]
	lea	edx, 1[rax]
	mov	BYTE PTR 155[rbx], dl
	cmp	al, 59
	ja	.L84
	movzx	eax, WORD PTR 152[rbx]
	sub	ax, 256
	mov	WORD PTR 152[rbx], ax
.L83:
	mov	ecx, DWORD PTR 144[rbx]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	sar	ax, 8
	mov	edx, DWORD PTR 148[rbx]
	sub	cx, WORD PTR [r8]
	sub	dx, WORD PTR 4[r8]
	mov	WORD PTR 54[rbx], cx
	add	eax, edx
	mov	WORD PTR 118[rbx], cx
	lea	rcx, 80[rbx]
	mov	WORD PTR 56[rbx], dx
	mov	WORD PTR 120[rbx], ax
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L84:
	mov	rcx, rbx
	call	ApplyItemboxEffect
	movzx	eax, WORD PTR 152[rbx]
	jmp	.L83
	.seh_endproc
	.p2align 4
	.globl	InitItemBoxGraphics
	.def	InitItemBoxGraphics;	.scl	2;	.type	32;	.endef
	.seh_proc	InitItemBoxGraphics
InitItemBoxGraphics:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 4
	ja	.L86
	cmp	al, 2
	ja	.L110
	test	edx, edx
	je	.L85
	movzx	eax, BYTE PTR 154[rcx]
	test	al, al
	jne	.L91
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	rax, BYTE PTR [rax]
	lea	rdx, [rax+rax*2]
	lea	rax, ItemBox_1UpIcons[rip]
	lea	rdx, [rax+rdx*2]
	movzx	eax, WORD PTR [rdx]
	movzx	edx, BYTE PTR 2[rdx]
.L92:
	mov	BYTE PTR 128[rcx], dl
	add	rcx, 80
	mov	WORD PTR 18[rcx], ax
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L110:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR [rax]
	test	edx, edx
	je	.L111
.L93:
	shr	eax, 5
	lea	rdx, ItemBox_randTypeTable[rip]
	and	eax, 7
	movzx	eax, WORD PTR [rdx+rax*2]
	cmp	eax, 13
	je	.L112
.L94:
	mov	BYTE PTR 154[rcx], al
.L108:
	lea	rdx, [rax+rax*2]
	lea	rax, ItemBox_MysteryIcons[rip]
	add	rcx, 80
	lea	rax, [rax+rdx*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 18[rcx], dx
	mov	BYTE PTR 48[rcx], al
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L86:
	cmp	al, 5
	jne	.L85
	test	edx, edx
	jne	.L113
.L85:
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	test	al, 31
	je	.L93
	ret
	.p2align 4,,10
	.p2align 3
.L113:
	movzx	eax, BYTE PTR 154[rcx]
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L112:
	mov	rax, QWORD PTR .refptr.gMultiplayerPseudoRandom[rip]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	r9, ItemBox_subRandTypeTable[rip]
	mov	r8d, DWORD PTR [rax]
	movzx	edx, BYTE PTR [rdx]
	mov	eax, r8d
	sar	dl, 2
	and	eax, 3
	movzx	eax, WORD PTR [r9+rax*2]
	cmp	dl, 6
	jne	.L94
	cmp	eax, 8
	jne	.L94
	shr	r8d, 2
	mov	edx, 2863311531
	mov	eax, r8d
	imul	rax, rdx
	shr	rax, 33
	lea	eax, [rax+rax*2]
	sub	r8d, eax
	lea	eax, 1[r8]
	cdqe
	movzx	eax, WORD PTR [r9+rax*2]
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L91:
	lea	rdx, [rax+rax*2]
	lea	rax, ItemBox_MysteryIcons[rip]
	lea	rdx, [rax+rdx*2]
	movzx	eax, WORD PTR [rdx]
	movzx	edx, BYTE PTR 2[rdx]
	jmp	.L92
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_ItemBox
	.def	CreateEntity_ItemBox;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_ItemBox
CreateEntity_ItemBox:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	sub	eax, 1
	mov	rsi, rcx
	mov	r12d, edx
	mov	ebp, r8d
	mov	edi, r9d
	cmp	al, 1
	ja	.L115
	movzx	eax, BYTE PTR 2[rcx]
	test	al, al
	je	.L116
	cmp	al, 5
	je	.L120
.L115:
	lea	rax, TaskDestructor_ItemBox[rip]
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 160
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_ItemBoxMain[rip]
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2[rsi]
	mov	BYTE PTR 154[rbx], al
	xor	eax, eax
	mov	WORD PTR 152[rbx], ax
	movzx	eax, r12w
	movzx	edx, BYTE PTR [rsi]
	sal	eax, 5
	add	eax, edx
	mov	ecx, edx
	movzx	edx, bp
	sal	eax, 3
	sal	edx, 5
	mov	DWORD PTR 144[rbx], eax
	movzx	eax, BYTE PTR 1[rsi]
	mov	WORD PTR 8[rbx], r12w
	add	eax, edx
	mov	edx, edi
	mov	WORD PTR 10[rbx], bp
	sal	eax, 3
	mov	QWORD PTR [rbx], rsi
	mov	DWORD PTR 148[rbx], eax
	movzx	eax, cl
	mov	ecx, -256
	mov	ah, dl
	xor	edx, edx
	mov	WORD PTR 64[rbx], cx
	mov	ecx, 16
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 12[rbx], ax
	mov	DWORD PTR 58[rbx], 1216
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8704
	mov	DWORD PTR 32[rbx], 47448064
	call	VramMalloc
	lea	rcx, 16[rbx]
	mov	QWORD PTR 24[rbx], rax
	call	UpdateSpriteAnimation
	xor	r8d, r8d
	xor	r9d, r9d
	mov	ecx, 4
	mov	r10d, 4351
	mov	WORD PTR 96[rbx], r8w
	mov	WORD PTR 116[rbx], r9w
	mov	DWORD PTR 122[rbx], 1280
	mov	WORD PTR 129[rbx], r10w
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 112[rbx], 8704
	call	VramMalloc
	mov	edx, 1
	mov	rcx, rbx
	mov	QWORD PTR 88[rbx], rax
	call	InitItemBoxGraphics
.L116:
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L120:
	mov	BYTE PTR 2[rcx], 7
	jmp	.L115
	.seh_endproc
	.p2align 4
	.globl	MultiplayerItemBoxBreak
	.def	MultiplayerItemBoxBreak;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiplayerItemBoxBreak
MultiplayerItemBoxBreak:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	ecx, 150
	call	m4aSongNumStart
	movsx	edx, WORD PTR 148[rbx]
	movsx	ecx, WORD PTR 144[rbx]
	call	CreateDustCloud
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, Task_ItemBoxIconMain_Rise_MP[rip]
	mov	BYTE PTR 155[rbx], 0
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	DrawItemBox
	.def	DrawItemBox;	.scl	2;	.type	32;	.endef
	.seh_proc	DrawItemBox
DrawItemBox:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	r8d, edx
	mov	edx, DWORD PTR 144[rcx]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 148[rbx]
	sub	dx, WORD PTR [rcx]
	sub	ax, WORD PTR 4[rcx]
	mov	WORD PTR 54[rbx], dx
	mov	WORD PTR 118[rbx], dx
	movsx	dx, BYTE PTR 153[rbx]
	mov	WORD PTR 56[rbx], ax
	add	eax, edx
	mov	WORD PTR 120[rbx], ax
	test	r8d, r8d
	je	.L124
	lea	rcx, 80[rbx]
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L124:
	lea	rcx, 16[rbx]
	call	DisplaySprite
	lea	rcx, 80[rbx]
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CheckItemBoxOutOfBounds
	.def	CheckItemBoxOutOfBounds;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckItemBoxOutOfBounds
CheckItemBoxOutOfBounds:
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	r8d, 1
	mov	edx, eax
	sub	dx, WORD PTR [r9]
	add	dx, WORD PTR 144[rcx]
	cmp	dx, 682
	ja	.L125
	sub	ax, WORD PTR 4[r9]
	add	ax, WORD PTR 148[rcx]
	xor	r8d, r8d
	cmp	ax, 496
	seta	r8b
.L125:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	CheckItemBoxPlayerCollision
	.def	CheckItemBoxPlayerCollision;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckItemBoxPlayerCollision
CheckItemBoxPlayerCollision:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rbx, rcx
	test	BYTE PTR 36[rsi], -128
	jne	.L133
	mov	edx, DWORD PTR 144[rcx]
	mov	r8d, DWORD PTR 148[rcx]
	lea	rdi, 16[rcx]
	mov	rcx, rdi
	call	Coll_Player_ItemBox
	test	eax, eax
	je	.L131
	mov	BYTE PTR 156[rbx], 1
.L132:
	mov	eax, 1
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	mov	edx, DWORD PTR 144[rbx]
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	rcx, rdi
	mov	DWORD PTR 40[rsp], 0
	mov	r8d, DWORD PTR 148[rbx]
	call	Coll_Player_Entity_HitboxN
	test	eax, eax
	jne	.L137
.L133:
	xor	eax, eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L137:
	mov	BYTE PTR 156[rbx], 0
	jmp	.L132
	.seh_endproc
	.p2align 4
	.globl	Task_ItemBoxMain
	.def	Task_ItemBoxMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ItemBoxMain
Task_ItemBoxMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L139
	mov	rax, QWORD PTR [rbx]
	cmp	BYTE PTR [rax], -3
	je	.L145
.L139:
	mov	rcx, rbx
	call	CheckItemBoxPlayerCollision
	test	eax, eax
	jne	.L146
	xor	edx, edx
	mov	rcx, rbx
	call	InitItemBoxGraphics
.L142:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 144[rbx]
	mov	edx, DWORD PTR 148[rbx]
	sub	ax, WORD PTR [rcx]
	mov	r8d, DWORD PTR 4[rcx]
	lea	ecx, 128[rax]
	cmp	cx, 682
	ja	.L143
	sub	edx, r8d
	lea	ecx, 128[rdx]
	cmp	cx, 496
	ja	.L143
	mov	WORD PTR 54[rbx], ax
	lea	rcx, 16[rbx]
	mov	WORD PTR 118[rbx], ax
	movsx	ax, BYTE PTR 153[rbx]
	mov	WORD PTR 56[rbx], dx
	add	eax, edx
	mov	WORD PTR 120[rbx], ax
	call	DisplaySprite
	lea	rcx, 80[rbx]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L146:
	mov	rcx, rbx
	call	BreakItemBox
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L143:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L145:
	mov	ecx, 150
	call	m4aSongNumStart
	movsx	edx, WORD PTR 148[rbx]
	movsx	ecx, WORD PTR 144[rbx]
	call	CreateDustCloud
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_ItemBoxIconMain_Rise_MP[rip]
	mov	BYTE PTR 155[rbx], 0
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	FinishItemBoxRise_MP
	.def	FinishItemBoxRise_MP;	.scl	2;	.type	32;	.endef
	.seh_proc	FinishItemBoxRise_MP
FinishItemBoxRise_MP:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, Task_ItemBoxIconMain_Idle[rip]
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR 155[rcx], 0
	mov	QWORD PTR 40[rax], rdx
	ret
	.seh_endproc
	.globl	ItemBox_ringAmountTable
	.section .rdata,"dr"
ItemBox_ringAmountTable:
	.ascii "\1\5\12\36"
	.ascii "2"
	.globl	ItemBox_subRandTypeTable
	.align 8
ItemBox_subRandTypeTable:
	.word	8
	.word	9
	.word	10
	.word	11
	.globl	ItemBox_randTypeTable
	.align 16
ItemBox_randTypeTable:
	.word	5
	.word	13
	.word	4
	.word	13
	.word	3
	.word	13
	.word	6
	.word	13
	.globl	ItemBox_1UpIcons
	.align 16
ItemBox_1UpIcons:
	.word	725
	.word	0
	.word	4
	.word	725
	.word	1
	.word	4
	.word	725
	.word	2
	.word	4
	.word	725
	.word	3
	.word	4
	.word	725
	.word	4
	.word	4
	.globl	ItemBox_MysteryIcons
	.align 32
ItemBox_MysteryIcons:
	.word	725
	.word	0
	.word	4
	.word	725
	.word	5
	.word	4
	.word	725
	.word	6
	.word	4
	.word	725
	.word	7
	.word	4
	.word	725
	.word	8
	.word	4
	.word	725
	.word	9
	.word	4
	.word	725
	.word	10
	.word	4
	.word	725
	.word	11
	.word	4
	.word	725
	.word	13
	.word	4
	.word	725
	.word	14
	.word	4
	.word	725
	.word	15
	.word	4
	.word	725
	.word	16
	.word	4
	.word	725
	.word	12
	.word	4
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateDustCloud;	.scl	2;	.type	32;	.endef
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.def	CreateItemTask_Shield_Normal;	.scl	2;	.type	32;	.endef
	.def	CreateItemTask_Shield_Magnetic;	.scl	2;	.type	32;	.endef
	.def	CreateItemTask_Invincibility;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayTempoControl;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_ItemBox;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMultiplayerPseudoRandom, "dr"
	.globl	.refptr.gMultiplayerPseudoRandom
	.linkonce	discard
.refptr.gMultiplayerPseudoRandom:
	.quad	gMultiplayerPseudoRandom
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
