	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8070BEC
	.def	sub_8070BEC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8070BEC
sub_8070BEC:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	RenderScoresAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderScoresAnim
RenderScoresAnim:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	mov	rbx, QWORD PTR [rsi]
	movsx	rax, DWORD PTR 2160[rbx]
	mov	r8d, DWORD PTR 2164[rbx]
	mov	edx, DWORD PTR 2168[rbx]
	mov	rcx, rax
	imul	rax, rax, 1717986919
	mov	r9d, ecx
	sar	r9d, 31
	sar	rax, 34
	sub	eax, r9d
	lea	r9d, [rax+rax*4]
	movsx	r11, eax
	add	r9d, r9d
	imul	r11, r11, 1717986919
	sub	ecx, r9d
	mov	WORD PTR 40[rsp], cx
	mov	ecx, eax
	sar	ecx, 31
	sar	r11, 34
	sub	r11d, ecx
	movsx	r10, r11d
	mov	ecx, r11d
	imul	r10, r10, 1717986919
	sar	ecx, 31
	sar	r10, 34
	sub	r10d, ecx
	movsx	rcx, r10d
	mov	r9d, r10d
	imul	rcx, rcx, 1717986919
	sar	r9d, 31
	sar	rcx, 34
	sub	ecx, r9d
	movsx	r9, ecx
	mov	edi, ecx
	imul	r9, r9, 1717986919
	sar	edi, 31
	sar	r9, 34
	sub	r9d, edi
	lea	edi, [r9+r9*4]
	mov	r9d, ecx
	add	edi, edi
	sub	r9d, edi
	lea	edi, [rcx+rcx*4]
	mov	ecx, r10d
	add	edi, edi
	sub	ecx, edi
	lea	edi, [r10+r10*4]
	mov	r10d, r11d
	lea	r11d, [r11+r11*4]
	add	edi, edi
	movzx	ecx, cx
	add	r11d, r11d
	sub	r10d, edi
	sub	eax, r11d
	movzx	r10d, r10w
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, rcx
	movzx	ecx, r9w
	sal	rax, 16
	or	rax, rcx
	mov	ecx, r8d
	mov	QWORD PTR 32[rsp], rax
	movsx	rax, r8d
	sar	ecx, 31
	imul	rax, rax, 1717986919
	sar	rax, 34
	sub	eax, ecx
	movsx	r10, eax
	lea	ecx, [rax+rax*4]
	imul	r10, r10, 1717986919
	add	ecx, ecx
	sub	r8d, ecx
	mov	ecx, eax
	sar	ecx, 31
	mov	WORD PTR 56[rsp], r8w
	sar	r10, 34
	sub	r10d, ecx
	movsx	rcx, r10d
	mov	r8d, r10d
	imul	rcx, rcx, 1717986919
	sar	r8d, 31
	sar	rcx, 34
	sub	ecx, r8d
	movsx	r8, ecx
	mov	r9d, ecx
	imul	r8, r8, 1717986919
	sar	r9d, 31
	sar	r8, 34
	sub	r8d, r9d
	movsx	r9, r8d
	mov	r11d, r8d
	imul	r9, r9, 1717986919
	sar	r11d, 31
	sar	r9, 34
	sub	r9d, r11d
	lea	r11d, [r9+r9*4]
	mov	r9d, r8d
	add	r11d, r11d
	sub	r9d, r11d
	lea	r11d, [r8+r8*4]
	mov	r8d, ecx
	add	r11d, r11d
	sub	r8d, r11d
	lea	r11d, [rcx+rcx*4]
	mov	ecx, r10d
	add	r11d, r11d
	lea	r10d, [r10+r10*4]
	sub	ecx, r11d
	add	r10d, r10d
	sub	eax, r10d
	movzx	ecx, cx
	movzx	eax, ax
	sal	rax, 16
	or	rax, rcx
	movzx	ecx, r8w
	sal	rax, 16
	or	rax, rcx
	movzx	ecx, r9w
	sal	rax, 16
	or	rax, rcx
	mov	ecx, edx
	mov	QWORD PTR 48[rsp], rax
	movsx	rax, edx
	sar	ecx, 31
	imul	rax, rax, 1717986919
	sar	rax, 34
	sub	eax, ecx
	lea	ecx, [rax+rax*4]
	add	ecx, ecx
	sub	edx, ecx
	mov	ecx, eax
	mov	WORD PTR 72[rsp], dx
	movsx	rdx, eax
	sar	ecx, 31
	imul	rdx, rdx, 1717986919
	sar	rdx, 34
	sub	edx, ecx
	movsx	rcx, edx
	mov	r8d, edx
	imul	rcx, rcx, 1717986919
	sar	r8d, 31
	sar	rcx, 34
	sub	ecx, r8d
	movsx	r8, ecx
	mov	r9d, ecx
	imul	r8, r8, 1717986919
	sar	r9d, 31
	sar	r8, 34
	sub	r8d, r9d
	movsx	r9, r8d
	mov	r10d, r8d
	imul	r9, r9, 1717986919
	sar	r10d, 31
	sar	r9, 34
	sub	r9d, r10d
	lea	r10d, [r9+r9*4]
	mov	r9d, r8d
	add	r10d, r10d
	sub	r9d, r10d
	lea	r10d, [r8+r8*4]
	mov	r8d, ecx
	add	r10d, r10d
	sub	r8d, r10d
	lea	r10d, [rcx+rcx*4]
	mov	ecx, edx
	lea	edx, [rdx+rdx*4]
	add	r10d, r10d
	add	edx, edx
	sub	ecx, r10d
	sub	eax, edx
	movzx	edx, cx
	lea	rcx, 8[rsi]
	movzx	eax, ax
	sal	rax, 16
	or	rax, rdx
	movzx	edx, r8w
	sal	rax, 16
	or	rax, rdx
	movzx	edx, r9w
	sal	rax, 16
	or	rax, rdx
	mov	QWORD PTR 64[rsp], rax
	call	DisplaySprite
	cmp	BYTE PTR 2189[rbx], 0
	jne	.L24
.L4:
	lea	rbx, 136[rsi]
	lea	rdi, 584[rsi]
	.p2align 4,,10
	.p2align 3
.L5:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	rdi, rbx
	jne	.L5
	mov	rcx, rdi
	lea	rbp, 32[rsp]
	xor	r12d, r12d
	call	DisplaySprite
	lea	rcx, 648[rsi]
	lea	rbx, 776[rsi]
	call	DisplaySprite
	lea	rcx, 712[rsi]
	call	DisplaySprite
	cmp	WORD PTR 0[rbp], 0
	jne	.L23
.L21:
	cmp	r12w, 4
	je	.L23
	add	rbp, 2
	add	r12d, 1
	add	rbx, 64
	cmp	WORD PTR 0[rbp], 0
	je	.L21
.L23:
	lea	rdi, sValueSprites[rip]
.L16:
	movsx	rax, WORD PTR 0[rbp]
	mov	rcx, rbx
	add	r12d, 1
	add	rbp, 2
	movzx	edx, WORD PTR [rdi+rax*8]
	movzx	eax, WORD PTR 2[rdi+rax*8]
	mov	WORD PTR 18[rbx], dx
	mov	BYTE PTR 48[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	r12w, 5
	jne	.L16
	lea	rbp, 48[rsp]
	xor	r12d, r12d
	lea	rbx, 1096[rsi]
	cmp	WORD PTR 0[rbp], 0
	jne	.L15
.L25:
	cmp	r12w, 4
	je	.L15
	add	rbp, 2
	add	r12d, 1
	add	rbx, 64
	cmp	WORD PTR 0[rbp], 0
	je	.L25
	.p2align 4,,10
	.p2align 3
.L15:
	movsx	rax, WORD PTR 0[rbp]
	mov	rcx, rbx
	add	r12d, 1
	add	rbp, 2
	movzx	edx, WORD PTR [rdi+rax*8]
	movzx	eax, WORD PTR 2[rdi+rax*8]
	mov	WORD PTR 18[rbx], dx
	mov	BYTE PTR 48[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	r12w, 5
	jne	.L15
	lea	rbp, 64[rsp]
	lea	rbx, 1416[rsi]
	xor	esi, esi
	cmp	WORD PTR 0[rbp], 0
	jne	.L14
.L26:
	cmp	si, 4
	je	.L14
	add	rbp, 2
	add	esi, 1
	add	rbx, 64
	cmp	WORD PTR 0[rbp], 0
	je	.L26
	.p2align 4,,10
	.p2align 3
.L14:
	movsx	rax, WORD PTR 0[rbp]
	mov	rcx, rbx
	add	esi, 1
	add	rbp, 2
	movzx	edx, WORD PTR [rdi+rax*8]
	movzx	eax, WORD PTR 2[rdi+rax*8]
	mov	WORD PTR 18[rbx], dx
	mov	BYTE PTR 48[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	si, 5
	jne	.L14
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	lea	rcx, 72[rsi]
	call	DisplaySprite
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	Task_ResultsScreenNewEmeraldSequencePart1
	.def	Task_ResultsScreenNewEmeraldSequencePart1;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ResultsScreenNewEmeraldSequencePart1
Task_ResultsScreenNewEmeraldSequencePart1:
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
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rbx]
	movzx	esi, BYTE PTR 2176[rax]
	call	RenderScoresAnim
	movzx	eax, WORD PTR 1736[rbx]
	add	eax, 1
	mov	WORD PTR 1736[rbx], ax
	cmp	ax, 11
	jle	.L27
	movzx	eax, sil
	mov	rdx, rax
	sal	rdx, 6
	add	rbx, rdx
	lea	rdx, sChaosEmeraldUnlockedSprites[rip]
	movzx	ecx, WORD PTR [rdx+rax*8]
	movzx	eax, WORD PTR 2[rdx+rax*8]
	mov	BYTE PTR 184[rbx], al
	mov	rax, QWORD PTR [rdi]
	mov	WORD PTR 154[rbx], cx
	lea	rcx, Task_ResultsScreenNewEmeraldSequencePart2[rip]
	mov	QWORD PTR 40[rax], rcx
.L27:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ResultsScreenStartNewEmeraldSequence;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ResultsScreenStartNewEmeraldSequence
Task_ResultsScreenStartNewEmeraldSequence:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 895
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rbx]
	movzx	eax, BYTE PTR 2176[rax]
	sal	rax, 6
	add	rax, rbx
	mov	WORD PTR 154[rax], dx
	mov	BYTE PTR 184[rax], 8
	call	RenderScoresAnim
	mov	rax, QWORD PTR [rsi]
	xor	ecx, ecx
	lea	rdx, Task_ResultsScreenNewEmeraldSequencePart1[rip]
	mov	WORD PTR 1736[rbx], cx
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_ResultsScreenSequencePart2
	.def	Task_ResultsScreenSequencePart2;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ResultsScreenSequencePart2
Task_ResultsScreenSequencePart2:
	.seh_endprologue
	jmp	RenderScoresAnim
	.seh_endproc
	.p2align 4
	.globl	SpecialStageResultsScreenOnDestroy
	.def	SpecialStageResultsScreenOnDestroy;	.scl	2;	.type	32;	.endef
	.seh_proc	SpecialStageResultsScreenOnDestroy
SpecialStageResultsScreenOnDestroy:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_ResultsScreenNewEmeraldSequencePart2
	.def	Task_ResultsScreenNewEmeraldSequencePart2;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ResultsScreenNewEmeraldSequencePart2
Task_ResultsScreenNewEmeraldSequencePart2:
	.seh_endprologue
	jmp	RenderScoresAnim
	.seh_endproc
	.p2align 4
	.globl	Task_ResultsScreenSequencePart1
	.def	Task_ResultsScreenSequencePart1;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ResultsScreenSequencePart1
Task_ResultsScreenSequencePart1:
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
	movzx	ecx, WORD PTR 1736[rbx]
	cmp	cx, 11
	jle	.L51
	lea	eax, -8[rcx]
	cmp	ax, 11
	jbe	.L37
	lea	eax, -16[rcx]
	cmp	ax, 11
	jbe	.L52
.L50:
	lea	eax, -24[rcx]
	cmp	ax, 11
	jbe	.L42
.L48:
	sub	ecx, 32
	cmp	cx, 11
	ja	.L44
	movzx	ecx, cx
	mov	edx, 11
	sub	edx, ecx
	lea	eax, [rdx+rdx*4]
	lea	eax, [rdx+rax*2]
	add	eax, eax
	lea	edx, 141[rax]
	mov	WORD PTR 1746[rbx], ax
	mov	WORD PTR 750[rbx], dx
	lea	edx, 251[rax]
	mov	WORD PTR 1454[rbx], dx
	lea	edx, 259[rax]
	mov	WORD PTR 1518[rbx], dx
	lea	edx, 267[rax]
	mov	WORD PTR 1582[rbx], dx
	lea	edx, 275[rax]
	add	ax, 283
	mov	WORD PTR 1646[rbx], dx
	mov	WORD PTR 1710[rbx], ax
.L44:
	call	RenderScoresAnim
	movzx	eax, WORD PTR 1736[rbx]
	add	eax, 1
	mov	WORD PTR 1736[rbx], ax
	cmp	ax, 43
	jle	.L33
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_ResultsScreenSequencePart2[rip]
	mov	QWORD PTR 40[rax], rsi
.L33:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	movzx	eax, ax
	mov	edx, 11
	sub	edx, eax
	lea	eax, [rdx+rdx*4]
	lea	eax, [rdx+rax*2]
	add	eax, eax
	lea	edx, 141[rax]
	mov	WORD PTR 1742[rbx], ax
	mov	WORD PTR 622[rbx], dx
	lea	edx, 251[rax]
	mov	WORD PTR 814[rbx], dx
	lea	edx, 259[rax]
	mov	WORD PTR 878[rbx], dx
	lea	edx, 267[rax]
	mov	WORD PTR 942[rbx], dx
	lea	edx, 275[rax]
	add	ax, 283
	mov	WORD PTR 1070[rbx], ax
	lea	eax, -24[rcx]
	mov	WORD PTR 1006[rbx], dx
	cmp	ax, 11
	ja	.L44
.L42:
	movzx	eax, ax
	mov	edx, 11
	sub	edx, eax
	lea	eax, [rdx+rdx*4]
	lea	eax, [rdx+rax*2]
	add	eax, eax
	lea	edx, 141[rax]
	mov	WORD PTR 1744[rbx], ax
	mov	WORD PTR 686[rbx], dx
	lea	edx, 251[rax]
	mov	WORD PTR 1134[rbx], dx
	lea	edx, 259[rax]
	mov	WORD PTR 1198[rbx], dx
	lea	edx, 267[rax]
	mov	WORD PTR 1262[rbx], dx
	lea	edx, 275[rax]
	add	ax, 283
	mov	WORD PTR 1326[rbx], dx
	mov	WORD PTR 1390[rbx], ax
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L51:
	movsx	eax, cx
	mov	edx, 11
	mov	r8, QWORD PTR [rbx]
	sub	edx, eax
	lea	eax, [rdx+rdx*4]
	lea	eax, [rdx+rax*2]
	add	eax, eax
	mov	WORD PTR 1738[rbx], ax
	cmp	BYTE PTR 2189[r8], 0
	jne	.L53
	add	ax, 141
	mov	WORD PTR 46[rbx], ax
.L36:
	lea	eax, -8[rcx]
	cmp	ax, 11
	ja	.L48
.L37:
	movzx	eax, ax
	mov	r8d, 11
	sub	r8d, eax
	lea	rax, 174[rbx]
	lea	edx, [r8+r8*4]
	lea	edx, [r8+rdx*2]
	lea	r8, 622[rbx]
	add	edx, edx
	mov	WORD PTR 1740[rbx], dx
	add	dx, 129
	.p2align 4,,10
	.p2align 3
.L40:
	mov	WORD PTR [rax], dx
	add	rax, 64
	add	edx, 24
	cmp	rax, r8
	jne	.L40
	lea	eax, -16[rcx]
	cmp	ax, 11
	ja	.L50
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L53:
	lea	edx, 169[rax]
	add	eax, 97
	mov	WORD PTR 46[rbx], dx
	mov	WORD PTR 110[rbx], ax
	jmp	.L36
	.seh_endproc
	.p2align 4
	.globl	UpdateRingCounters
	.def	UpdateRingCounters;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateRingCounters
UpdateRingCounters:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdi, sValueSprites[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, QWORD PTR [rbx]
	lea	rcx, 264[rbx]
	movsx	rax, BYTE PTR 2183[rsi]
	movzx	edx, WORD PTR [rdi+rax*8]
	movzx	eax, WORD PTR 2[rdi+rax*8]
	mov	WORD PTR 282[rbx], dx
	mov	BYTE PTR 312[rbx], al
	call	UpdateSpriteAnimation
	movsx	rax, BYTE PTR 2184[rsi]
	lea	rcx, 328[rbx]
	movzx	edx, WORD PTR [rdi+rax*8]
	movzx	eax, WORD PTR 2[rdi+rax*8]
	mov	WORD PTR 346[rbx], dx
	mov	BYTE PTR 376[rbx], al
	call	UpdateSpriteAnimation
	movsx	rax, BYTE PTR 2185[rsi]
	lea	rcx, 392[rbx]
	movzx	edx, WORD PTR [rdi+rax*8]
	movzx	eax, WORD PTR 2[rdi+rax*8]
	mov	WORD PTR 410[rbx], dx
	mov	BYTE PTR 440[rbx], al
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 2189[rsi], 0
	movzx	eax, WORD PTR 2158[rsi]
	je	.L58
	cmp	WORD PTR 2156[rsi], ax
	jge	.L57
	mov	eax, 888
	mov	BYTE PTR 2189[rsi], 0
	mov	WORD PTR 474[rbx], ax
	mov	BYTE PTR 504[rbx], 0
.L57:
	lea	rcx, 456[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L58:
	cmp	WORD PTR 2156[rsi], ax
	jge	.L59
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	mov	BYTE PTR 2189[rsi], 1
	mov	ecx, 53
	call	m4aSongNumStart
	mov	edx, 30721
	mov	ecx, 888
	mov	WORD PTR 2191[rsi], dx
	mov	WORD PTR 474[rbx], cx
	mov	BYTE PTR 504[rbx], 1
	jmp	.L57
	.seh_endproc
	.p2align 4
	.globl	RenderRingCounters
	.def	RenderRingCounters;	.scl	2;	.type	32;	.endef
	.seh_proc	RenderRingCounters
RenderRingCounters:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, QWORD PTR [rbx]
	cmp	BYTE PTR 2178[rsi], 0
	je	.L68
.L61:
	cmp	BYTE PTR 2183[rsi], 0
	jne	.L62
.L65:
	cmp	BYTE PTR 2184[rsi], 0
	jne	.L63
.L64:
	lea	rcx, 392[rbx]
	call	DisplaySprite
	lea	rcx, 456[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 2186[rsi], 0
	jne	.L69
.L66:
	cmp	WORD PTR 2186[rsi], 0
	jne	.L70
.L67:
	lea	rcx, 648[rbx]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L62:
	lea	rcx, 264[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 2183[rsi], 0
	je	.L65
.L63:
	lea	rcx, 328[rbx]
	call	DisplaySprite
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L68:
	call	UpdateRingCounters
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L70:
	lea	rcx, 584[rbx]
	call	DisplaySprite
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L69:
	lea	rcx, 520[rbx]
	call	DisplaySprite
	jmp	.L66
	.seh_endproc
	.p2align 4
	.globl	sub_807061C
	.def	sub_807061C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807061C
sub_807061C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 11
	mov	rax, QWORD PTR [rax]
	mov	r8, QWORD PTR 24[rax]
	movsx	ecx, cx
	mov	r9, QWORD PTR [r8]
	sub	edx, ecx
	lea	eax, [rdx+rdx*4]
	lea	eax, [rdx+rax*2]
	add	eax, eax
	mov	WORD PTR 1738[r8], ax
	cmp	BYTE PTR 2189[r9], 0
	lea	edx, 141[rax]
	je	.L73
	lea	edx, 169[rax]
	add	eax, 97
	mov	WORD PTR 110[r8], ax
.L73:
	mov	WORD PTR 46[r8], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8070680
	.def	sub_8070680;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8070680
sub_8070680:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	edx, ecx
	mov	rcx, QWORD PTR 24[rax]
	mov	eax, 11
	movsx	edx, dx
	sub	eax, edx
	lea	edx, [rax+rax*4]
	lea	edx, [rax+rdx*2]
	lea	rax, 174[rcx]
	add	rcx, 622
	add	edx, edx
	mov	WORD PTR 1118[rcx], dx
	add	dx, 129
	.p2align 4,,10
	.p2align 3
.L75:
	mov	WORD PTR [rax], dx
	add	rax, 64
	add	edx, 24
	cmp	rcx, rax
	jne	.L75
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80706D8
	.def	sub_80706D8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80706D8
sub_80706D8:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 11
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	movsx	ecx, cx
	sub	r8d, ecx
	lea	eax, [r8+r8*4]
	lea	eax, [r8+rax*2]
	add	eax, eax
	lea	ecx, 141[rax]
	mov	WORD PTR 1742[rdx], ax
	mov	WORD PTR 622[rdx], cx
	lea	ecx, 251[rax]
	mov	WORD PTR 814[rdx], cx
	lea	ecx, 259[rax]
	mov	WORD PTR 878[rdx], cx
	lea	ecx, 267[rax]
	mov	WORD PTR 942[rdx], cx
	lea	ecx, 275[rax]
	add	ax, 283
	mov	WORD PTR 1006[rdx], cx
	mov	WORD PTR 1070[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8070740
	.def	sub_8070740;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8070740
sub_8070740:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 11
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	movsx	ecx, cx
	sub	r8d, ecx
	lea	eax, [r8+r8*4]
	lea	eax, [r8+rax*2]
	add	eax, eax
	lea	ecx, 141[rax]
	mov	WORD PTR 1744[rdx], ax
	mov	WORD PTR 686[rdx], cx
	lea	ecx, 251[rax]
	mov	WORD PTR 1134[rdx], cx
	lea	ecx, 259[rax]
	mov	WORD PTR 1198[rdx], cx
	lea	ecx, 267[rax]
	mov	WORD PTR 1262[rdx], cx
	lea	ecx, 275[rax]
	add	ax, 283
	mov	WORD PTR 1326[rdx], cx
	mov	WORD PTR 1390[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80707A8
	.def	sub_80707A8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80707A8
sub_80707A8:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 11
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	movsx	ecx, cx
	sub	r8d, ecx
	lea	eax, [r8+r8*4]
	lea	eax, [r8+rax*2]
	add	eax, eax
	lea	ecx, 141[rax]
	mov	WORD PTR 1746[rdx], ax
	mov	WORD PTR 750[rdx], cx
	lea	ecx, 251[rax]
	mov	WORD PTR 1454[rdx], cx
	lea	ecx, 259[rax]
	mov	WORD PTR 1518[rdx], cx
	lea	ecx, 267[rax]
	mov	WORD PTR 1582[rdx], cx
	lea	ecx, 275[rax]
	add	ax, 283
	mov	WORD PTR 1646[rdx], cx
	mov	WORD PTR 1710[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateSpecialStageUI
	.def	CreateSpecialStageUI;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpecialStageUI
CreateSpecialStageUI:
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
	sub	rsp, 152
	.seh_stackalloc	152
	.seh_endprologue
	lea	rax, sub_8070BEC[rip]
	xor	r9d, r9d
	mov	edx, 928
	mov	r8d, 53248
	mov	QWORD PTR 32[rsp], rax
	mov	rbx, rcx
	lea	rcx, sub_806FB04[rip]
	call	TaskCreate
	xor	edx, edx
	mov	r9d, 887
	mov	r8d, 1
	mov	rsi, QWORD PTR 24[rax]
	mov	r12, rax
	xor	eax, eax
	mov	QWORD PTR [rsi], rbx
	lea	rcx, 8[rsi]
	mov	WORD PTR 912[rsi], ax
	mov	QWORD PTR 904[rsi], 0
	movzx	r13d, BYTE PTR 2179[rbx]
	movzx	ebp, BYTE PTR 2180[rbx]
	movzx	edi, BYTE PTR 2181[rbx]
	mov	DWORD PTR 72[rsp], 0
	lea	rbx, sValueSprites[rip]
	mov	DWORD PTR 64[rsp], 0
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 48[rsp], 14
	mov	DWORD PTR 40[rsp], 378
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	movsx	rax, r13b
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 72[rsi]
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 48[rsp], 18
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 390
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	movsx	rax, bpl
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 136[rsi]
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 48[rsp], 18
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 398
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	movsx	rax, dil
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 200[rsi]
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 48[rsp], 18
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 406
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	lea	rcx, 80[rsp]
	mov	DWORD PTR 64[rsp], 0
	xor	edx, edx
	mov	r9d, 889
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	mov	rdi, QWORD PTR [rsi]
	lea	rcx, 264[rsi]
	movsx	rax, BYTE PTR 2183[rdi]
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 56[rsp], 1
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 48[rsp], 16
	mov	DWORD PTR 40[rsp], 193
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	movsx	rax, BYTE PTR 2184[rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 328[rsi]
	mov	DWORD PTR 56[rsp], 1
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 48[rsp], 16
	mov	DWORD PTR 40[rsp], 201
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	movsx	rax, BYTE PTR 2185[rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 392[rsi]
	mov	DWORD PTR 56[rsp], 1
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 48[rsp], 16
	mov	DWORD PTR 40[rsp], 209
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 456[rsi]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 888
	mov	r8d, 8
	mov	DWORD PTR 56[rsp], 2
	mov	DWORD PTR 48[rsp], 14
	mov	DWORD PTR 40[rsp], 213
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	movsx	rax, BYTE PTR 2186[rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 520[rsi]
	mov	DWORD PTR 56[rsp], 1
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 48[rsp], 24
	mov	DWORD PTR 40[rsp], 217
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	movsx	rax, BYTE PTR 2187[rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 584[rsi]
	mov	DWORD PTR 56[rsp], 1
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 48[rsp], 24
	mov	DWORD PTR 40[rsp], 225
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	movsx	rax, BYTE PTR 2188[rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 648[rsi]
	mov	DWORD PTR 56[rsp], 1
	movzx	edx, BYTE PTR 2[rbx+rax*8]
	mov	DWORD PTR 48[rsp], 24
	mov	DWORD PTR 40[rsp], 233
	movzx	r9d, WORD PTR [rbx+rax*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rbx+rax*8]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 712[rsi]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 885
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 2
	mov	DWORD PTR 48[rsp], 140
	mov	DWORD PTR 40[rsp], 205
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	mov	rax, r12
	add	rsp, 152
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateSpecialStageResultsScreen
	.def	CreateSpecialStageResultsScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpecialStageResultsScreen
CreateSpecialStageResultsScreen:
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
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	lea	rax, SpecialStageResultsScreenOnDestroy[rip]
	xor	r9d, r9d
	mov	edx, 1752
	mov	r8d, 53248
	mov	QWORD PTR 32[rsp], rax
	mov	rbx, rcx
	lea	rcx, Task_ResultsScreenSequencePart1[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR 2208[rbx]
	mov	rdi, QWORD PTR 24[rax]
	mov	rbp, rax
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	QWORD PTR [rdi], rbx
	mov	rax, QWORD PTR [rax]
	lea	rcx, 8[rdi]
	movzx	esi, BYTE PTR 2174[rbx]
	cmp	BYTE PTR 2189[rbx], 0
	movzx	r12d, BYTE PTR 12[rax+rsi]
	mov	rax, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gSpecialStageSubMenuVramPointer[rip]
	mov	QWORD PTR [rax], 0
	mov	DWORD PTR 72[rsp], 0
	je	.L82
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 893
	mov	r8d, 40
	mov	edx, 1
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 72
	mov	DWORD PTR 40[rsp], 583
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	lea	rax, gUnknown_080DF880[rip]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 72[rdi]
	movzx	edx, BYTE PTR 2[rax+rsi*8]
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 64
	movzx	r9d, WORD PTR [rax+rsi*8]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rax+rsi*8]
	mov	edx, 1
	mov	DWORD PTR 40[rsp], 583
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
.L83:
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 584[rdi]
	mov	r9d, 894
	mov	r8d, 22
	mov	DWORD PTR 64[rsp], 0
	mov	edx, 1
	lea	rsi, 776[rdi]
	mov	ebx, 693
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 112
	mov	DWORD PTR 40[rsp], 583
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 648[rdi]
	mov	r9d, 894
	mov	DWORD PTR 64[rsp], 1
	mov	r8d, 22
	mov	edx, 1
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 132
	mov	DWORD PTR 40[rsp], 583
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 712[rdi]
	mov	r9d, 894
	mov	DWORD PTR 64[rsp], 2
	mov	r8d, 22
	mov	edx, 1
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 152
	mov	DWORD PTR 40[rsp], 583
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	.p2align 4,,10
	.p2align 3
.L84:
	mov	DWORD PTR 40[rsp], ebx
	mov	rcx, rsi
	add	ebx, 8
	mov	r9d, 1119
	mov	DWORD PTR 72[rsp], 0
	mov	r8d, 2
	add	rsi, 64
	mov	edx, 1
	mov	DWORD PTR 64[rsp], 16
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 128
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	cmp	ebx, 733
	jne	.L84
	lea	rsi, 1096[rdi]
	mov	ebx, 693
	.p2align 4,,10
	.p2align 3
.L85:
	mov	DWORD PTR 40[rsp], ebx
	mov	rcx, rsi
	add	ebx, 8
	mov	r9d, 1119
	mov	DWORD PTR 72[rsp], 0
	mov	r8d, 2
	add	rsi, 64
	mov	edx, 1
	mov	DWORD PTR 64[rsp], 16
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 148
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	cmp	ebx, 733
	jne	.L85
	lea	rsi, 1416[rdi]
	mov	ebx, 693
	.p2align 4,,10
	.p2align 3
.L86:
	mov	DWORD PTR 40[rsp], ebx
	mov	rcx, rsi
	add	ebx, 8
	mov	r9d, 1119
	mov	DWORD PTR 72[rsp], 0
	mov	r8d, 2
	add	rsi, 64
	mov	edx, 1
	mov	DWORD PTR 64[rsp], 16
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 168
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	cmp	ebx, 733
	jne	.L86
	lea	r14, sChaosEmeraldUnlockedSprites[rip+2]
	lea	rsi, 136[rdi]
	xor	ebx, ebx
	lea	r13, -2[r14]
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L95:
	movzx	edx, BYTE PTR [r14+rbx*8]
	movzx	r9d, WORD PTR 0[r13+rbx*8]
.L87:
	lea	eax, [rax+rax*2]
	mov	DWORD PTR 64[rsp], edx
	mov	rcx, rsi
	mov	r8d, 9
	mov	DWORD PTR 72[rsp], 0
	add	rbx, 1
	add	rsi, 64
	lea	eax, 478[0+rax*8]
	mov	DWORD PTR 56[rsp], 0
	mov	edx, 1
	mov	DWORD PTR 48[rsp], 92
	mov	DWORD PTR 40[rsp], eax
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	cmp	rbx, 7
	je	.L94
.L88:
	bt	r12d, ebx
	mov	eax, ebx
	jc	.L95
	mov	r9d, 895
	mov	edx, 7
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L94:
	movabs	rax, 124413838110621696
	mov	DWORD PTR 1744[rdi], 28967354
	mov	QWORD PTR 1736[rdi], rax
	mov	rax, rbp
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 893
	mov	r8d, 32
	mov	edx, 1
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 72
	mov	DWORD PTR 40[rsp], 583
	mov	DWORD PTR 32[rsp], 0
	call	sub_806CA88
	jmp	.L83
	.seh_endproc
	.p2align 4
	.globl	SpecialStageResultsScreenNewEmeraldSequence
	.def	SpecialStageResultsScreenNewEmeraldSequence;	.scl	2;	.type	32;	.endef
	.seh_proc	SpecialStageResultsScreenNewEmeraldSequence
SpecialStageResultsScreenNewEmeraldSequence:
	.seh_endprologue
	lea	rdx, Task_ResultsScreenStartNewEmeraldSequence[rip]
	mov	rax, QWORD PTR 32[rcx]
	mov	QWORD PTR 40[rax], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	RenderTime
	.def	RenderTime;	.scl	2;	.type	32;	.endef
	.seh_proc	RenderTime
RenderTime:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, QWORD PTR [rbx]
	lea	rbp, 200[rbx]
	movzx	edi, BYTE PTR 2178[rsi]
	test	dil, dil
	je	.L124
.L98:
	lea	rcx, 8[rbx]
	call	DisplaySprite
	movzx	eax, BYTE PTR 2179[rsi]
	test	al, al
	jne	.L125
.L104:
	or	al, BYTE PTR 2180[rsi]
	jne	.L126
.L105:
	mov	rcx, rbp
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L124:
	movzx	eax, WORD PTR 914[rbx]
	movsx	rdx, BYTE PTR 2179[rsi]
	movsx	r13, BYTE PTR 2180[rsi]
	movzx	ebp, BYTE PTR 2181[rsi]
	add	eax, 1
	movzx	ecx, al
	mov	WORD PTR 914[rbx], cx
	mov	ecx, edx
	or	cl, r13b
	je	.L127
	movsx	cx, dl
	test	cx, cx
	jne	.L101
	cmp	r13b, 2
	jg	.L101
	test	al, 16
	mov	eax, 3
	lea	r12, sValueSprites[rip]
	cmove	edi, eax
.L103:
	movzx	eax, WORD PTR [r12+r13*8]
	mov	BYTE PTR 189[rbx], dil
	lea	rcx, 136[rbx]
	or	DWORD PTR 168[rbx], 262144
	mov	WORD PTR 154[rbx], ax
	movzx	eax, WORD PTR 2[r12+r13*8]
	mov	BYTE PTR 184[rbx], al
	call	UpdateSpriteAnimation
.L100:
	movsx	rax, bpl
	mov	BYTE PTR 253[rbx], dil
	lea	rbp, 200[rbx]
	movzx	edx, WORD PTR [r12+rax*8]
	movzx	eax, WORD PTR 2[r12+rax*8]
	mov	rcx, rbp
	or	DWORD PTR 232[rbx], 262144
	mov	WORD PTR 218[rbx], dx
	mov	BYTE PTR 248[rbx], al
	call	UpdateSpriteAnimation
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L126:
	lea	rcx, 136[rbx]
	call	DisplaySprite
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L125:
	lea	rcx, 72[rbx]
	call	DisplaySprite
	movzx	eax, BYTE PTR 2179[rsi]
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L127:
	test	al, 8
	mov	eax, 3
	lea	r12, sValueSprites[rip]
	cmove	edi, eax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L101:
	lea	r12, sValueSprites[rip]
	test	cx, cx
	je	.L103
	movzx	eax, WORD PTR [r12+rdx*8]
	or	DWORD PTR 104[rbx], 262144
	lea	rcx, 72[rbx]
	mov	BYTE PTR 125[rbx], 0
	mov	WORD PTR 90[rbx], ax
	movzx	eax, WORD PTR 2[r12+rdx*8]
	mov	BYTE PTR 120[rbx], al
	call	UpdateSpriteAnimation
	jmp	.L103
	.seh_endproc
	.p2align 4
	.globl	RenderMultiplier
	.def	RenderMultiplier;	.scl	2;	.type	32;	.endef
	.seh_proc	RenderMultiplier
RenderMultiplier:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR [rdx]
	mov	rax, QWORD PTR 24[rcx]
	mov	rax, QWORD PTR 24[rax]
	movsx	eax, WORD PTR 260[rax]
	cmp	ax, 1
	jle	.L128
	cmp	BYTE PTR 2178[rcx], 0
	lea	rbx, 712[rdx]
	je	.L131
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L128:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	add	eax, 9
	lea	rcx, sValueSprites[rip]
	cdqe
	movzx	r8d, WORD PTR [rcx+rax*8]
	movzx	eax, WORD PTR 2[rcx+rax*8]
	mov	rcx, rbx
	mov	WORD PTR 730[rdx], r8w
	mov	BYTE PTR 760[rdx], al
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_806FB04
	.def	sub_806FB04;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806FB04
sub_806FB04:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	add	rsp, -128
	.seh_stackalloc	128
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, QWORD PTR [rbx]
	call	RenderTime
	call	RenderRingCounters
	call	RenderMultiplier
	cmp	BYTE PTR 912[rbx], 0
	je	.L133
.L138:
	cmp	WORD PTR 2172[rsi], 4
	je	.L157
	mov	rdx, QWORD PTR 904[rbx]
	mov	rax, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	mov	QWORD PTR 904[rbx], 0
	mov	BYTE PTR 912[rbx], 0
	mov	QWORD PTR [rax], rdx
.L137:
	cmp	BYTE PTR 913[rbx], 0
	movzx	eax, BYTE PTR 2178[rsi]
	je	.L141
.L146:
	cmp	BYTE PTR 2178[rsi], 0
	jne	.L158
	mov	rax, QWORD PTR .refptr.gSpecialStageSubMenuVramPointer[rip]
	mov	BYTE PTR 913[rbx], 0
	mov	QWORD PTR [rax], 0
	sub	rsp, -128
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	m4aMPlayAllContinue
	.p2align 4,,10
	.p2align 3
.L133:
	cmp	WORD PTR 2172[rsi], 4
	jne	.L137
	mov	rax, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	mov	BYTE PTR 912[rbx], 1
	xor	edx, edx
	lea	rcx, 776[rbx]
	mov	r9d, 886
	mov	r8d, 20
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 904[rbx], rax
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 0
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 48[rsp], 120
	mov	DWORD PTR 40[rsp], 213
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	cmp	BYTE PTR 912[rbx], 0
	jne	.L138
	cmp	BYTE PTR 913[rbx], 0
	movzx	eax, BYTE PTR 2178[rsi]
	jne	.L146
	.p2align 4,,10
	.p2align 3
.L141:
	test	al, al
	jne	.L159
	sub	rsp, -128
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L158:
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR .refptr.PLTT[rip]
	lea	rdi, 840[rbx]
	cmp	BYTE PTR 2190[rax], 0
	je	.L160
	lea	r8, 1010[rsi]
	add	rsi, 1016
.L148:
	lea	rdx, 922[rbx]
	mov	r9d, -2147483645
	mov	ecx, 3
	call	DmaSet
	lea	rdx, 916[rbx]
	mov	r9d, -2147483645
	mov	r8, rsi
	mov	ecx, 3
	call	DmaSet
	mov	rcx, rdi
	sub	rsp, -128
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L157:
	movzx	eax, WORD PTR 2154[rsi]
	cmp	ax, 29
	jle	.L140
	test	al, 2
	je	.L137
.L140:
	lea	rcx, 776[rbx]
	call	DisplaySprite
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L159:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	movdqu	xmm0, XMMWORD PTR .LC1[rip]
	mov	DWORD PTR 112[rsp], 1071
	lea	rcx, 840[rbx]
	mov	rax, QWORD PTR [rax]
	movups	XMMWORD PTR 80[rsp], xmm0
	movdqu	xmm0, XMMWORD PTR .LC2[rip]
	movzx	eax, BYTE PTR 6[rax]
	movups	XMMWORD PTR 96[rsp], xmm0
	mov	DWORD PTR 72[rsp], 0
	sub	eax, 1
	movsx	rax, ax
	lea	rax, [rax+rax*2]
	movzx	edx, BYTE PTR 84[rsp+rax*2]
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 120
	mov	DWORD PTR 64[rsp], edx
	mov	edx, 1
	mov	DWORD PTR 40[rsp], 213
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR 82[rsp+rax*2]
	movzx	r8d, WORD PTR 80[rsp+rax*2]
	call	sub_806CA88
	mov	r9d, -2147483645
	mov	ecx, 3
	mov	rdi, QWORD PTR .refptr.gObjPalette[rip]
	lea	r8, 916[rbx]
	lea	rdx, 498[rdi]
	call	DmaSet
	mov	r9d, -2147483645
	mov	ecx, 3
	lea	r8, 922[rbx]
	lea	rdx, 504[rdi]
	call	DmaSet
	mov	BYTE PTR 913[rbx], 1
	call	m4aMPlayAllStop
	mov	ecx, 142
	call	m4aSongNumStart
	cmp	BYTE PTR 913[rbx], 0
	jne	.L146
	sub	rsp, -128
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	lea	r8, 1016[rsi]
	add	rsi, 1010
	jmp	.L148
	.seh_endproc
	.p2align 4
	.globl	CreateStartText
	.def	CreateStartText;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStartText
CreateStartText:
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	mov	r9d, 886
	xor	edx, edx
	mov	r8d, 20
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR 912[rcx], 1
	add	rcx, 776
	mov	QWORD PTR 128[rcx], rax
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 0
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 48[rsp], 120
	mov	DWORD PTR 40[rsp], 213
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806CA88
	nop
	add	rsp, 88
	ret
	.seh_endproc
	.p2align 4
	.globl	RenderStartText
	.def	RenderStartText;	.scl	2;	.type	32;	.endef
	.seh_proc	RenderStartText
RenderStartText:
	.seh_endprologue
	add	rcx, 776
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8070DE0
	.def	sub_8070DE0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8070DE0
sub_8070DE0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	mov	rdx, QWORD PTR 904[rcx]
	mov	QWORD PTR [rax], rdx
	mov	QWORD PTR 904[rcx], 0
	mov	BYTE PTR 912[rcx], 0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sChaosEmeraldUnlockedSprites:
	.word	895
	.word	0
	.word	9
	.byte	0
	.byte	0
	.word	895
	.word	1
	.word	9
	.byte	0
	.byte	0
	.word	895
	.word	2
	.word	9
	.byte	0
	.byte	0
	.word	895
	.word	3
	.word	9
	.byte	0
	.byte	0
	.word	895
	.word	4
	.word	9
	.byte	0
	.byte	0
	.word	895
	.word	5
	.word	9
	.byte	0
	.byte	0
	.word	895
	.word	6
	.word	9
	.byte	0
	.byte	0
	.word	895
	.word	7
	.word	9
	.byte	0
	.byte	0
	.word	895
	.word	8
	.word	9
	.byte	0
	.byte	0
	.align 32
gUnknown_080DF880:
	.word	1121
	.word	0
	.word	24
	.byte	0
	.byte	0
	.word	1121
	.word	4
	.word	27
	.byte	0
	.byte	0
	.word	1121
	.word	1
	.word	24
	.byte	0
	.byte	0
	.word	1121
	.word	2
	.word	27
	.byte	0
	.byte	0
	.word	1121
	.word	3
	.word	18
	.byte	0
	.byte	0
	.align 32
sValueSprites:
	.word	1119
	.word	16
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	17
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	18
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	19
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	20
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	21
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	22
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	23
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	24
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	25
	.word	2
	.byte	0
	.byte	0
	.word	1119
	.word	26
	.word	2
	.byte	0
	.byte	0
	.word	885
	.word	0
	.word	2
	.byte	0
	.byte	0
	.word	885
	.word	1
	.word	2
	.byte	0
	.byte	0
	.word	885
	.word	2
	.word	2
	.byte	0
	.byte	0
	.word	885
	.word	3
	.word	2
	.byte	0
	.byte	0
	.word	885
	.word	4
	.word	2
	.byte	0
	.byte	0
	.word	885
	.word	5
	.word	2
	.byte	0
	.byte	0
	.word	885
	.word	6
	.word	2
	.byte	0
	.byte	0
	.word	885
	.word	7
	.word	2
	.byte	0
	.byte	0
	.align 16
.LC1:
	.word	40
	.word	1066
	.word	0
	.word	40
	.word	1067
	.word	0
	.word	40
	.word	1068
	.align 16
.LC2:
	.word	0
	.word	40
	.word	1069
	.word	0
	.word	40
	.word	1070
	.word	0
	.word	40
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	sub_806CA88;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllContinue;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
	.section	.rdata$.refptr.gSpecialStageSubMenuVramPointer, "dr"
	.globl	.refptr.gSpecialStageSubMenuVramPointer
	.linkonce	discard
.refptr.gSpecialStageSubMenuVramPointer:
	.quad	gSpecialStageSubMenuVramPointer
	.section	.rdata$.refptr.gSpecialStageVramPointer, "dr"
	.globl	.refptr.gSpecialStageVramPointer
	.linkonce	discard
.refptr.gSpecialStageVramPointer:
	.quad	gSpecialStageVramPointer
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
