	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_NoteBlock;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_NoteBlock
TaskDestructor_NoteBlock:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_NoteBlock;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_NoteBlock
Task_NoteBlock:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	test	BYTE PTR 36[rsi], -128
	jne	.L4
	mov	eax, DWORD PTR 12[rsi]
	mov	ecx, DWORD PTR 16[rsi]
	sar	eax, 8
	sar	ecx, 8
	add	eax, 24
	add	ecx, 16
	sub	eax, edx
	cmp	ax, 48
	ja	.L4
	sub	ecx, r8d
	cmp	cx, 32
	jbe	.L23
	.p2align 4,,10
	.p2align 3
.L4:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	lea	eax, 128[rdx]
	lea	ecx, 128[r8]
	mov	r10d, DWORD PTR [r9]
	mov	r9d, DWORD PTR 4[r9]
	sub	eax, r10d
	cmp	ax, 682
	ja	.L15
	sub	ecx, r9d
	cmp	cx, 496
	ja	.L15
	movzx	eax, WORD PTR 89[rbx]
	or	DWORD PTR 48[rbx], 1024
	lea	rsi, 16[rbx]
	mov	rcx, rsi
	sub	eax, r10d
	add	eax, edx
	mov	WORD PTR 54[rbx], ax
	movzx	eax, WORD PTR 93[rbx]
	sub	eax, r9d
	add	eax, r8d
	mov	WORD PTR 56[rbx], ax
	call	DisplaySprite
	and	DWORD PTR 48[rbx], -1025
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L15:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L23:
	lea	r12, 16[rbx]
	mov	r9, rsi
	movzx	ebp, WORD PTR 24[rsi]
	mov	rcx, r12
	call	Coll_Player_Interactable
	test	eax, eax
	je	.L22
	movzx	edx, BYTE PTR 96[rbx]
	test	eax, 65536
	jne	.L24
	test	eax, 262144
	je	.L8
	xor	al, al
	cwde
	add	DWORD PTR 12[rsi], eax
	lea	rax, gUnknown_080E001A[rip]
	movzx	eax, WORD PTR [rax+rdx*8]
	mov	WORD PTR 20[rsi], ax
	mov	eax, -128
.L7:
	mov	ecx, 4
	mov	BYTE PTR 117[rsi], 5
	mov	WORD PTR 108[rsi], cx
	mov	BYTE PTR 97[rbx], al
	mov	eax, DWORD PTR 36[rsi]
	test	al, 2
	je	.L10
	and	ah, -2
	mov	DWORD PTR 36[rsi], eax
.L11:
	cmp	r12, QWORD PTR 64[rsi]
	je	.L25
.L12:
	lea	rax, sTecBasBlockSfx[rip]
	mov	BYTE PTR 98[rbx], 0
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdx, sub_80799FC[rip]
	mov	QWORD PTR 40[rax], rdx
.L22:
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L24:
	sal	eax, 8
	cwde
	add	DWORD PTR 16[rsi], eax
	lea	rax, gUnknown_080E001A[rip]
	movzx	eax, WORD PTR 2[rax+rdx*8]
	mov	WORD PTR 22[rsi], ax
	mov	eax, -64
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L10:
	mov	eax, 4
	mov	WORD PTR 24[rsi], bp
	mov	WORD PTR 108[rsi], ax
	mov	BYTE PTR 117[rsi], 5
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L25:
	and	DWORD PTR 36[rsi], -9
	mov	QWORD PTR 64[rsi], 0
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L8:
	test	eax, 524288
	je	.L9
	xor	al, al
	cwde
	add	DWORD PTR 12[rsi], eax
	lea	rax, gUnknown_080E001A[rip]
	movzx	eax, WORD PTR 4[rax+rdx*8]
	mov	WORD PTR 20[rsi], ax
	xor	eax, eax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L9:
	sal	eax, 8
	cwde
	add	DWORD PTR 16[rsi], eax
	lea	rax, gUnknown_080E001A[rip]
	movzx	eax, WORD PTR 6[rax+rdx*8]
	mov	WORD PTR 22[rsi], ax
	mov	eax, 64
	jmp	.L7
	.seh_endproc
	.p2align 4
	.def	sub_80799FC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80799FC
sub_80799FC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	eax, BYTE PTR 98[rbx]
	lea	edx, 1[rax]
	mov	BYTE PTR 98[rbx], dl
	cmp	al, 4
	je	.L27
	cmp	al, 6
	je	.L28
	test	al, al
	jne	.L29
	movzx	eax, BYTE PTR 97[rbx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[0+rax*4]
	movsx	rdx, eax
	sub	eax, 256
	cdqe
	movzx	edx, WORD PTR [rcx+rdx*2]
	movzx	eax, WORD PTR [rcx+rax*2]
	sar	dx, 6
	sar	ax, 6
	movsx	edx, dx
	cwde
	sal	edx, 3
	sal	eax, 3
	mov	DWORD PTR 88[rbx], edx
	mov	DWORD PTR 92[rbx], eax
.L30:
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	ecx, DWORD PTR 80[rbx]
	sar	edx, 8
	sar	eax, 8
	or	DWORD PTR 48[rbx], 1024
	lea	rsi, 16[rbx]
	sub	cx, WORD PTR [r8]
	add	edx, ecx
	mov	rcx, rsi
	mov	WORD PTR 54[rbx], dx
	mov	edx, DWORD PTR 84[rbx]
	sub	dx, WORD PTR 4[r8]
	add	eax, edx
	mov	WORD PTR 56[rbx], ax
	call	DisplaySprite
	and	DWORD PTR 48[rbx], -1025
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	QWORD PTR 88[rbx], 0
	mov	BYTE PTR [rax], dl
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L27:
	movzx	eax, BYTE PTR 97[rbx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[0+rax*4]
	movsx	rdx, eax
	sub	eax, 256
	cdqe
	movzx	edx, WORD PTR [rcx+rdx*2]
	movzx	eax, WORD PTR [rcx+rax*2]
	sar	dx, 6
	sar	ax, 6
	movsx	edx, dx
	cwde
	neg	edx
	neg	eax
	add	edx, edx
	add	eax, eax
	mov	DWORD PTR 88[rbx], edx
	mov	DWORD PTR 92[rbx], eax
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L29:
	mov	edx, DWORD PTR 88[rbx]
	mov	eax, DWORD PTR 92[rbx]
	jmp	.L30
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_BounceBlock
	.def	CreateEntity_BounceBlock;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_BounceBlock
CreateEntity_BounceBlock:
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
	lea	rax, TaskDestructor_NoteBlock[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	ebx, edx
	mov	esi, r8d
	mov	ebp, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 104
	lea	rcx, Task_NoteBlock[rip]
	call	TaskCreate
	movzx	r10d, BYTE PTR 3[rdi]
	mov	edx, ebp
	mov	r9, QWORD PTR .refptr.VRAM[rip]
	mov	rcx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rcx], bx
	movzx	ebx, bx
	add	rcx, 16
	mov	WORD PTR -6[rcx], si
	sal	ebx, 5
	movzx	esi, si
	mov	QWORD PTR 72[rcx], 0
	sal	esi, 5
	mov	BYTE PTR 80[rcx], r10b
	mov	QWORD PTR -16[rcx], rdi
	movzx	r11d, BYTE PTR [rdi]
	mov	DWORD PTR 42[rcx], 1152
	movzx	r8d, r11b
	mov	BYTE PTR 53[rcx], 0
	mov	eax, r8d
	mov	r8d, 4351
	mov	DWORD PTR 56[rcx], -1
	mov	ah, dl
	mov	WORD PTR 49[rcx], r8w
	xor	edx, edx
	mov	WORD PTR -4[rcx], ax
	xor	eax, eax
	mov	WORD PTR 16[rcx], ax
	movzx	eax, r10b
	lea	r8, [rax+rax*2]
	lea	rax, sNoteBlockAssets[rip]
	mov	WORD PTR 36[rcx], dx
	movzx	edx, r11b
	lea	r8, [rax+r8*2]
	add	ebx, edx
	mov	DWORD PTR 32[rcx], 8192
	movzx	eax, WORD PTR 4[r8]
	sal	ebx, 3
	mov	DWORD PTR 64[rcx], ebx
	sal	eax, 5
	cdqe
	lea	rax, 65536[rax+r9]
	mov	QWORD PTR 8[rcx], rax
	movzx	eax, WORD PTR [r8]
	mov	WORD PTR 18[rcx], ax
	movzx	eax, WORD PTR 2[r8]
	mov	BYTE PTR 48[rcx], al
	movzx	eax, BYTE PTR 1[rdi]
	add	eax, esi
	sal	eax, 3
	mov	DWORD PTR 68[rcx], eax
	mov	BYTE PTR [rdi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.section .rdata,"dr"
	.align 2
sTecBasBlockSfx:
	.word	294
	.word	294
	.word	294
	.align 16
gUnknown_080E001A:
	.word	1536
	.word	-1536
	.word	-1536
	.word	1536
	.word	1792
	.word	-1792
	.word	-1792
	.word	1792
	.word	2048
	.word	-2048
	.word	-2048
	.word	2048
	.align 4
sNoteBlockAssets:
	.word	598
	.word	0
	.word	332
	.word	598
	.word	1
	.word	340
	.word	598
	.word	2
	.word	348
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Interactable;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
