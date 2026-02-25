	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8078688;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8078688
sub_8078688:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_80782FC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80782FC
sub_80782FC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, BYTE PTR 141[rdx]
	cmp	al, 2
	jg	.L4
	test	al, al
	jg	.L5
	je	.L6
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L5:
	mov	r8, QWORD PTR 168[rdx]
	movzx	ecx, WORD PTR 20[rbx]
	mov	eax, DWORD PTR 48[r8]
	sal	ecx, 12
	and	ah, -49
	or	eax, ecx
	mov	DWORD PTR 48[r8], eax
.L6:
	mov	rcx, QWORD PTR 160[rdx]
	movzx	edx, WORD PTR 18[rbx]
	mov	eax, DWORD PTR 48[rcx]
	sal	edx, 12
	and	ah, -49
	or	eax, edx
	mov	DWORD PTR 48[rcx], eax
.L7:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	lea	rbx, sub_8078414[rip]
	and	WORD PTR 80[rax], -2
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	sub	eax, 3
	cmp	al, 1
	ja	.L7
	jmp	.L6
	.seh_endproc
	.p2align 4
	.def	sub_807844C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807844C
sub_807844C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rbx]
	mov	r8, QWORD PTR 24[rax]
	test	BYTE PTR 36[rdx], -128
	jne	.L16
	movsx	eax, WORD PTR 20[rdx]
	mov	r9d, DWORD PTR 12[rdx]
	mov	ecx, eax
	lea	r10d, 768[r9]
	add	eax, r9d
	cmp	cx, 767
	mov	ecx, DWORD PTR [r8]
	cmovle	eax, r10d
	lea	r9d, 31[rcx]
	mov	DWORD PTR 12[rdx], eax
	sar	eax, 8
	cmp	r9d, eax
	jl	.L17
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	mov	eax, 512
	add	ecx, 32
	mov	WORD PTR 16[r8], ax
	mov	eax, DWORD PTR 4[r8]
	sal	ecx, 8
	mov	DWORD PTR 12[rdx], ecx
	add	ecx, 8192
	sal	eax, 8
	mov	DWORD PTR 8[r8], ecx
	mov	ecx, 293
	mov	DWORD PTR 12[r8], eax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_8077F7C[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	mov	rcx, r8
	add	rsp, 32
	pop	rbx
	jmp	sub_80782FC
	.seh_endproc
	.p2align 4
	.def	sub_8078634;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8078634
sub_8078634:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rdi, QWORD PTR 24[rax]
	test	BYTE PTR 36[rbx], -128
	jne	.L28
	movsx	eax, WORD PTR 22[rbx]
	movzx	edx, WORD PTR 4[rdi]
	add	eax, DWORD PTR 16[rbx]
	mov	DWORD PTR 16[rbx], eax
	sar	eax, 8
	sub	edx, eax
	mov	eax, edx
	neg	ax
	cmovs	eax, edx
	cmp	ax, 71
	ja	.L29
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	call	Player_ClearMovestate_IsInScriptedSequence
	movzx	eax, BYTE PTR 141[rbx]
	and	DWORD PTR 36[rbx], -4194305
	mov	BYTE PTR 117[rbx], 5
	cmp	al, 2
	jg	.L21
	test	al, al
	jg	.L22
	je	.L23
.L24:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, sub_8078414[rip]
	mov	QWORD PTR 40[rax], rcx
.L30:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rcx, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_80782FC
	.p2align 4,,10
	.p2align 3
.L21:
	sub	eax, 3
	cmp	al, 1
	ja	.L24
.L23:
	mov	rcx, QWORD PTR 160[rbx]
	movzx	edx, WORD PTR 18[rdi]
	mov	eax, DWORD PTR 48[rcx]
	sal	edx, 12
	and	ah, -49
	or	eax, edx
	mov	DWORD PTR 48[rcx], eax
	mov	rax, QWORD PTR [rsi]
	lea	rcx, sub_8078414[rip]
	mov	QWORD PTR 40[rax], rcx
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L22:
	mov	rcx, QWORD PTR 168[rbx]
	movzx	edx, WORD PTR 20[rdi]
	mov	eax, DWORD PTR 48[rcx]
	sal	edx, 12
	and	ah, -49
	or	eax, edx
	mov	DWORD PTR 48[rcx], eax
	jmp	.L23
	.seh_endproc
	.p2align 4
	.def	sub_8078414;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8078414
sub_8078414:
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
	mov	eax, DWORD PTR [rbx]
	mov	edx, DWORD PTR 4[rbx]
	mov	r8d, eax
	mov	ecx, edx
	test	BYTE PTR 36[rsi], -126
	je	.L42
.L32:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	esi, eax
	sub	si, WORD PTR [rdx]
	mov	r9d, DWORD PTR 4[rdx]
	mov	edx, esi
	add	edx, r8d
	cmp	dx, 682
	ja	.L37
	sub	eax, r9d
	add	eax, ecx
	cmp	ax, 496
	ja	.L37
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	mov	rax, QWORD PTR 32[rbx]
	movzx	edx, BYTE PTR 40[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L42:
	sub	ax, WORD PTR 13[rsi]
	sub	dx, WORD PTR 17[rsi]
	cwde
	movsx	edx, dx
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 144
	jg	.L32
	call	Player_SetMovestate_IsInScriptedSequence
	mov	eax, 4
	mov	ecx, 109
	or	DWORD PTR 36[rsi], 4194304
	mov	WORD PTR 108[rsi], ax
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 141[rsi]
	and	DWORD PTR 36[rsi], -2
	cmp	al, 2
	jg	.L33
	test	al, al
	jg	.L34
	je	.L35
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L34:
	mov	rcx, QWORD PTR 168[rsi]
	mov	eax, DWORD PTR 48[rcx]
	mov	edx, eax
	and	ah, -49
	shr	edx, 12
	or	ah, 16
	and	edx, 3
	mov	WORD PTR 20[rbx], dx
	mov	DWORD PTR 48[rcx], eax
.L35:
	mov	rcx, QWORD PTR 160[rsi]
	mov	eax, DWORD PTR 48[rcx]
	mov	edx, eax
	and	ah, -49
	shr	edx, 12
	or	ah, 16
	and	edx, 3
	mov	WORD PTR 18[rbx], dx
	mov	DWORD PTR 48[rcx], eax
.L36:
	xor	eax, eax
	cmp	WORD PTR 20[rsi], 2303
	lea	rcx, sub_807844C[rip]
	movzx	r8d, WORD PTR [rbx]
	setle	al
	mov	DWORD PTR 24[rbx], 0
	mov	WORD PTR 28[rbx], ax
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rcx
	movzx	ecx, WORD PTR 4[rbx]
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L33:
	sub	eax, 3
	cmp	al, 1
	ja	.L36
	jmp	.L35
	.seh_endproc
	.p2align 4
	.def	sub_8077F7C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8077F7C
sub_8077F7C:
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
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	test	BYTE PTR 36[r8], -128
	jne	.L59
	movzx	eax, WORD PTR 16[rcx]
	mov	r9d, DWORD PTR 24[rcx]
	lea	edx, -64[rax]
	mov	WORD PTR 16[rcx], dx
	shr	dx, 2
	test	r9d, r9d
	jne	.L45
	cmp	dl, 63
	jbe	.L60
.L45:
	movzx	edx, dl
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	mov	r10d, DWORD PTR 12[rcx]
	lea	esi, 0[0+rdx*4]
	mov	r11d, DWORD PTR 4[rcx]
	movq	xmm1, QWORD PTR 8[rcx]
	movsx	rax, esi
	add	esi, 256
	mov	ebp, r10d
	movsx	rsi, esi
	movzx	edi, WORD PTR [r9+rax*2]
	sar	ebp, 8
	movzx	eax, WORD PTR [r9+rsi*2]
	sar	di, 6
	sar	ax, 6
	cmp	WORD PTR 28[rcx], 1
	movsx	edi, di
	cwde
	je	.L61
	sub	r11d, ebp
	movzx	ebp, r11w
	lea	esi, [rbp+rbp]
	sub	ebp, 32
	and	esi, 254
	imul	ebp, edi
	movzx	esi, WORD PTR 512[r9+rsi*8]
	sar	si, 6
	sal	ebp, 6
	movsx	esi, si
	movd	xmm2, ebp
	imul	eax, esi
	sal	eax, 5
	movd	xmm0, eax
	punpckldq	xmm0, xmm2
	psrad	xmm0, 8
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[r8], xmm0
	cmp	edx, 127
	jg	.L50
	mov	eax, 128
	sub	eax, edx
	lea	edx, [rdx+rax*2]
.L50:
	mov	eax, 192
	sub	r10d, 64
	sub	eax, edx
	imul	eax, esi
	sar	eax, 8
	sub	eax, 64
	mov	BYTE PTR 40[r8], al
	movzx	eax, al
	lea	eax, 256[0+rax*4]
	movsx	rdx, eax
	sub	eax, 256
	cdqe
	movzx	edx, WORD PTR [r9+rdx*2]
	movzx	eax, WORD PTR [r9+rax*2]
	sal	eax, 16
	or	eax, edx
	movd	xmm0, eax
	mov	eax, -2560
	psraw	xmm0, 6
	movd	DWORD PTR 20[r8], xmm0
	mov	DWORD PTR 12[rcx], r10d
	cmp	r11w, 31
	ja	.L48
.L43:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	sub	ebp, r11d
	movzx	esi, bp
	lea	r11d, [rsi+rsi]
	and	r11d, 254
	movzx	r11d, WORD PTR 512[r9+r11*8]
	sar	r11w, 6
	movsx	r11d, r11w
	imul	eax, r11d
	sal	eax, 5
	movd	xmm0, eax
	mov	eax, 32
	sub	eax, esi
	imul	eax, edi
	sal	eax, 6
	movd	xmm3, eax
	mov	eax, 256
	sub	eax, edx
	cmp	edx, 128
	punpckldq	xmm0, xmm3
	cmovg	edx, eax
	mov	eax, 64
	add	r10d, 64
	psrad	xmm0, 8
	sub	eax, edx
	paddd	xmm0, xmm1
	imul	eax, r11d
	movq	QWORD PTR 12[r8], xmm0
	sar	eax, 8
	add	eax, 64
	mov	BYTE PTR 40[r8], al
	movzx	eax, al
	lea	eax, 256[0+rax*4]
	movsx	rdx, eax
	sub	eax, 256
	cdqe
	movzx	edx, WORD PTR [r9+rdx*2]
	movzx	eax, WORD PTR [r9+rax*2]
	sal	eax, 16
	or	eax, edx
	movd	xmm0, eax
	psraw	xmm0, 6
	movd	DWORD PTR 20[r8], xmm0
	mov	DWORD PTR 12[rcx], r10d
	cmp	bp, 31
	jbe	.L43
	mov	eax, 1536
.L48:
	mov	WORD PTR 22[r8], ax
	xor	eax, eax
	mov	ecx, 293
	mov	WORD PTR 20[r8], ax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	and	WORD PTR 80[rax], -2
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_8078634[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	sub_80782FC
	.p2align 4,,10
	.p2align 3
.L60:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	or	WORD PTR 80[rax], 1
	mov	DWORD PTR 24[rcx], 1
	jmp	.L45
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_FunnelSphere
	.def	CreateEntity_FunnelSphere;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_FunnelSphere
CreateEntity_FunnelSphere:
	push	r14
	.seh_pushreg	r14
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
	lea	rax, sub_8078688[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	r14d, edx
	mov	ebp, r9d
	mov	esi, r8d
	xor	r9d, r9d
	mov	r8d, 8208
	mov	ebx, ebp
	mov	edx, 48
	lea	rcx, sub_8078414[rip]
	movzx	esi, si
	call	TaskCreate
	sal	esi, 5
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 32[rdx], rdi
	movzx	eax, BYTE PTR [rdi]
	movzx	ecx, al
	mov	ch, bl
	movzx	ebx, r14w
	sal	ebx, 5
	mov	WORD PTR 40[rdx], cx
	add	ebx, eax
	sal	ebx, 3
	mov	DWORD PTR [rdx], ebx
	movzx	eax, BYTE PTR 1[rdi]
	add	esi, eax
	sal	esi, 3
	mov	DWORD PTR 4[rdx], esi
	mov	BYTE PTR [rdi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r14
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
