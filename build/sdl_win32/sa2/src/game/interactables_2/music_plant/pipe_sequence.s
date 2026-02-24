	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	PipeSegmentHandler_Translate;	.scl	3;	.type	32;	.endef
	.seh_proc	PipeSegmentHandler_Translate
PipeSegmentHandler_Translate:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	movsx	esi, WORD PTR 26[rcx]
	movq	xmm1, QWORD PTR 8[rcx]
	movdqu	xmm2, xmm1
	mov	r9, rdx
	movzx	edx, WORD PTR 24[rcx]
	mov	rax, rcx
	mov	ecx, esi
	lea	r11, [r9+rdx*8]
	mov	r8, rdx
	movsx	r10d, WORD PTR 4[r11]
	movsx	ebx, WORD PTR 6[r11]
	add	cx, WORD PTR 2[r11]
	mov	edx, r10d
	neg	edx
	imul	edx, esi
	movd	xmm0, edx
	mov	edx, ebx
	neg	edx
	imul	edx, esi
	movd	xmm3, edx
	mov	edx, ecx
	punpckldq	xmm0, xmm3
	psrad	xmm0, 10
	psubd	xmm2, xmm0
	movq	QWORD PTR 16[rax], xmm2
	cmp	cx, 1023
	ja	.L2
	mov	WORD PTR 26[rax], cx
.L1:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	movd	xmm0, r10d
	movd	xmm4, ebx
	add	r8d, 1
	sub	dx, 1024
	punpckldq	xmm0, xmm4
	mov	WORD PTR 24[rax], r8w
	movzx	r8d, r8w
	paddd	xmm0, xmm1
	cmp	WORD PTR [r9+r8*8], -1
	mov	WORD PTR 26[rax], dx
	movq	QWORD PTR 8[rax], xmm0
	jne	.L1
	mov	edx, -1
	mov	WORD PTR 24[rax], dx
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_1;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_1
Handler_MusicPlant_Pipe_1:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	ebp, 256
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	esi, DWORD PTR 12[rcx]
	mov	r9, rax
	lea	rbx, [rdx+rax*8]
	mov	r10, rdx
	movzx	edx, WORD PTR 26[rcx]
	mov	r8d, DWORD PTR 4[rbx]
	mov	eax, edx
	add	dx, WORD PTR 2[rbx]
	shr	ax, 2
	sub	ebp, eax
	and	ebp, 1023
	lea	eax, 256[rbp]
	cdqe
	movzx	eax, WORD PTR [r11+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, edi
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [r11+rbp*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, esi
	sub	eax, r8d
	mov	DWORD PTR 20[rcx], eax
	cmp	dx, 1023
	ja	.L7
	mov	WORD PTR 26[rcx], dx
.L6:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movzx	eax, WORD PTR 512[r11]
	add	r9d, 1
	sub	dx, 1024
	mov	WORD PTR 24[rcx], r9w
	movzx	r9d, r9w
	sar	ax, 6
	mov	WORD PTR 26[rcx], dx
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, edi
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR [r11]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, esi
	sub	eax, r8d
	cmp	WORD PTR [r10+r9*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L6
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_2;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_2
Handler_MusicPlant_Pipe_2:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	esi, DWORD PTR 12[rcx]
	mov	r9, rax
	lea	rbx, [rdx+rax*8]
	mov	r10, rdx
	movzx	edx, WORD PTR 26[rcx]
	mov	r8d, DWORD PTR 4[rbx]
	mov	ebp, edx
	add	dx, WORD PTR 2[rbx]
	shr	bp, 2
	add	bp, 768
	and	ebp, 1023
	lea	eax, 256[rbp]
	cdqe
	movzx	eax, WORD PTR [r11+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, edi
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [r11+rbp*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, esi
	add	eax, r8d
	mov	DWORD PTR 20[rcx], eax
	cmp	dx, 1023
	ja	.L11
	mov	WORD PTR 26[rcx], dx
.L10:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	movzx	eax, WORD PTR 512[r11]
	add	r9d, 1
	sub	dx, 1024
	mov	WORD PTR 24[rcx], r9w
	movzx	r9d, r9w
	sar	ax, 6
	mov	WORD PTR 26[rcx], dx
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, edi
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR [r11]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, esi
	add	eax, r8d
	cmp	WORD PTR [r10+r9*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L10
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_3;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_3
Handler_MusicPlant_Pipe_3:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	ebp, DWORD PTR 12[rcx]
	mov	r10, rax
	lea	rsi, [rdx+rax*8]
	mov	r11, rdx
	movzx	edx, WORD PTR 26[rcx]
	mov	r9d, DWORD PTR 4[rsi]
	mov	r8d, edx
	add	dx, WORD PTR 2[rsi]
	shr	r8w, 2
	and	r8d, 1023
	lea	eax, 256[r8]
	cdqe
	movzx	eax, WORD PTR [rbx+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	sub	eax, r9d
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [rbx+r8*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	mov	DWORD PTR 20[rcx], eax
	cmp	dx, 1023
	ja	.L15
	mov	WORD PTR 26[rcx], dx
.L14:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	movzx	eax, WORD PTR 1024[rbx]
	add	r10d, 1
	sub	dx, 1024
	mov	WORD PTR 24[rcx], r10w
	movzx	r10d, r10w
	sar	ax, 6
	mov	WORD PTR 26[rcx], dx
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	sub	eax, r9d
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR 512[rbx]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	cmp	WORD PTR [r11+r10*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L14
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_4;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_4
Handler_MusicPlant_Pipe_4:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	movzx	r8d, WORD PTR 26[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	ebp, DWORD PTR 12[rcx]
	mov	r10, rax
	lea	rsi, [rdx+rax*8]
	mov	eax, r8d
	mov	r11, rdx
	mov	edx, 512
	shr	ax, 2
	mov	r9d, DWORD PTR 4[rsi]
	add	r8w, WORD PTR 2[rsi]
	sub	edx, eax
	and	edx, 1023
	lea	eax, 256[rdx]
	cdqe
	movzx	eax, WORD PTR [rbx+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	add	eax, r9d
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [rbx+rdx*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	mov	DWORD PTR 20[rcx], eax
	cmp	r8w, 1023
	ja	.L19
	mov	WORD PTR 26[rcx], r8w
.L18:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	movzx	eax, WORD PTR 1024[rbx]
	add	r10d, 1
	sub	r8w, 1024
	mov	WORD PTR 24[rcx], r10w
	movzx	r10d, r10w
	sar	ax, 6
	mov	WORD PTR 26[rcx], r8w
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	add	eax, r9d
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR 512[rbx]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	cmp	WORD PTR [r11+r10*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L18
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_5;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_5
Handler_MusicPlant_Pipe_5:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	esi, DWORD PTR 12[rcx]
	mov	r9, rax
	lea	rbx, [rdx+rax*8]
	mov	r10, rdx
	movzx	edx, WORD PTR 26[rcx]
	mov	r8d, DWORD PTR 4[rbx]
	mov	ebp, edx
	add	dx, WORD PTR 2[rbx]
	shr	bp, 2
	add	bp, 256
	and	ebp, 1023
	lea	eax, 256[rbp]
	cdqe
	movzx	eax, WORD PTR [r11+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, edi
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [r11+rbp*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, esi
	sub	eax, r8d
	mov	DWORD PTR 20[rcx], eax
	cmp	dx, 1023
	ja	.L23
	mov	WORD PTR 26[rcx], dx
.L22:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	movzx	eax, WORD PTR 1536[r11]
	add	r9d, 1
	sub	dx, 1024
	mov	WORD PTR 24[rcx], r9w
	movzx	r9d, r9w
	sar	ax, 6
	mov	WORD PTR 26[rcx], dx
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, edi
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR 1024[r11]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, esi
	sub	eax, r8d
	cmp	WORD PTR [r10+r9*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L22
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_6;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_6
Handler_MusicPlant_Pipe_6:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	ebp, 768
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	esi, DWORD PTR 12[rcx]
	mov	r9, rax
	lea	rbx, [rdx+rax*8]
	mov	r10, rdx
	movzx	edx, WORD PTR 26[rcx]
	mov	r8d, DWORD PTR 4[rbx]
	mov	eax, edx
	add	dx, WORD PTR 2[rbx]
	shr	ax, 2
	sub	ebp, eax
	and	ebp, 1023
	lea	eax, 256[rbp]
	cdqe
	movzx	eax, WORD PTR [r11+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, edi
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [r11+rbp*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, esi
	add	eax, r8d
	mov	DWORD PTR 20[rcx], eax
	cmp	dx, 1023
	ja	.L27
	mov	WORD PTR 26[rcx], dx
.L26:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	movzx	eax, WORD PTR 1536[r11]
	add	r9d, 1
	sub	dx, 1024
	mov	WORD PTR 24[rcx], r9w
	movzx	r9d, r9w
	sar	ax, 6
	mov	WORD PTR 26[rcx], dx
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, edi
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR 1024[r11]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	add	eax, esi
	add	eax, r8d
	cmp	WORD PTR [r10+r9*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L26
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_7;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_7
Handler_MusicPlant_Pipe_7:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	movzx	r8d, WORD PTR 26[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	ebp, DWORD PTR 12[rcx]
	mov	r10, rax
	lea	rsi, [rdx+rax*8]
	mov	r11, rdx
	mov	edx, r8d
	shr	dx, 2
	mov	r9d, DWORD PTR 4[rsi]
	add	r8w, WORD PTR 2[rsi]
	neg	edx
	and	edx, 1023
	lea	eax, 256[rdx]
	cdqe
	movzx	eax, WORD PTR [rbx+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	sub	eax, r9d
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [rbx+rdx*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	mov	DWORD PTR 20[rcx], eax
	cmp	r8w, 1023
	ja	.L31
	mov	WORD PTR 26[rcx], r8w
.L30:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	movzx	eax, WORD PTR 2048[rbx]
	add	r10d, 1
	sub	r8w, 1024
	mov	WORD PTR 24[rcx], r10w
	movzx	r10d, r10w
	sar	ax, 6
	mov	WORD PTR 26[rcx], r8w
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	sub	eax, r9d
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR 1536[rbx]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	cmp	WORD PTR [r11+r10*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L30
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_8;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_8
Handler_MusicPlant_Pipe_8:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	movzx	r8d, WORD PTR 26[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	ebp, DWORD PTR 12[rcx]
	mov	r10, rax
	lea	rsi, [rdx+rax*8]
	mov	r11, rdx
	mov	edx, r8d
	shr	dx, 2
	mov	r9d, DWORD PTR 4[rsi]
	add	r8w, WORD PTR 2[rsi]
	add	dx, 512
	and	edx, 1023
	lea	eax, 256[rdx]
	cdqe
	movzx	eax, WORD PTR [rbx+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	add	eax, r9d
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [rbx+rdx*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	mov	DWORD PTR 20[rcx], eax
	cmp	r8w, 1023
	ja	.L35
	mov	WORD PTR 26[rcx], r8w
.L34:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	movzx	eax, WORD PTR 2048[rbx]
	add	r10d, 1
	sub	r8w, 1024
	mov	WORD PTR 24[rcx], r10w
	movzx	r10d, r10w
	sar	ax, 6
	mov	WORD PTR 26[rcx], r8w
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	add	eax, r9d
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR 1536[rbx]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	cmp	WORD PTR [r11+r10*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L34
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_9;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_9
Handler_MusicPlant_Pipe_9:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	movzx	r8d, WORD PTR 26[rcx]
	movzx	eax, WORD PTR 24[rcx]
	movzx	r9d, WORD PTR 256[r10]
	movq	xmm1, QWORD PTR 8[rcx]
	mov	ebp, r8d
	mov	r11, rax
	shr	bp, 3
	sar	r9w, 6
	add	bp, 896
	lea	rdi, [rdx+rax*8]
	mov	rsi, rdx
	movsx	r9d, r9w
	and	ebp, 1023
	movzx	edx, WORD PTR 768[r10]
	mov	ebx, DWORD PTR 4[rdi]
	lea	eax, 256[rbp]
	add	r8w, WORD PTR 2[rdi]
	cdqe
	sar	dx, 6
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	edx, dx
	imul	edx, ebx
	sar	ax, 6
	cwde
	imul	eax, ebx
	sub	eax, edx
	movd	xmm0, eax
	movzx	eax, WORD PTR [r10+rbp*2]
	sar	ax, 6
	cwde
	add	eax, r9d
	imul	eax, ebx
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	psrad	xmm0, 8
	paddd	xmm0, xmm1
	movq	QWORD PTR 16[rcx], xmm0
	cmp	r8w, 1023
	ja	.L39
	mov	WORD PTR 26[rcx], r8w
.L38:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	movzx	eax, WORD PTR 512[r10]
	add	r11d, 1
	sub	r8w, 1024
	mov	WORD PTR 24[rcx], r11w
	movzx	r11d, r11w
	sar	ax, 6
	mov	WORD PTR 26[rcx], r8w
	cwde
	imul	eax, ebx
	sub	eax, edx
	movd	xmm0, eax
	movzx	eax, WORD PTR [r10]
	sar	ax, 6
	cwde
	add	eax, r9d
	imul	eax, ebx
	cmp	WORD PTR [rsi+r11*8], -1
	movd	xmm3, eax
	punpckldq	xmm0, xmm3
	psrad	xmm0, 8
	paddd	xmm0, xmm1
	movq	QWORD PTR 8[rcx], xmm0
	jne	.L38
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Handler_MusicPlant_Pipe_10;	.scl	3;	.type	32;	.endef
	.seh_proc	Handler_MusicPlant_Pipe_10
Handler_MusicPlant_Pipe_10:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 24[rcx]
	movzx	r8d, WORD PTR 26[rcx]
	mov	edi, DWORD PTR 8[rcx]
	mov	ebp, DWORD PTR 12[rcx]
	mov	r10, rax
	lea	rsi, [rdx+rax*8]
	mov	r11, rdx
	mov	edx, r8d
	shr	dx, 3
	mov	r9d, DWORD PTR 4[rsi]
	add	r8w, WORD PTR 2[rsi]
	add	dx, 512
	and	edx, 1023
	lea	eax, 256[rdx]
	cdqe
	movzx	eax, WORD PTR [rbx+rax*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	add	eax, r9d
	mov	DWORD PTR 16[rcx], eax
	movzx	eax, WORD PTR [rbx+rdx*2]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	mov	DWORD PTR 20[rcx], eax
	cmp	r8w, 1023
	ja	.L43
	mov	WORD PTR 26[rcx], r8w
.L42:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	movzx	eax, WORD PTR 1792[rbx]
	add	r10d, 1
	sub	r8w, 1024
	mov	WORD PTR 24[rcx], r10w
	movzx	r10d, r10w
	sar	ax, 6
	mov	WORD PTR 26[rcx], r8w
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, edi
	add	eax, r9d
	mov	DWORD PTR 8[rcx], eax
	movzx	eax, WORD PTR 1280[rbx]
	sar	ax, 6
	cwde
	imul	eax, r9d
	sar	eax, 8
	add	eax, ebp
	cmp	WORD PTR [r11+r10*8], -1
	mov	DWORD PTR 12[rcx], eax
	jne	.L42
	mov	eax, -1
	mov	WORD PTR 24[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	InitPipeSequence
	.def	InitPipeSequence;	.scl	2;	.type	32;	.endef
	.seh_proc	InitPipeSequence
InitPipeSequence:
	.seh_endprologue
	movd	xmm1, edx
	movd	xmm0, r8d
	mov	DWORD PTR 16[rcx], edx
	movdqu	xmm2, xmm1
	mov	DWORD PTR 20[rcx], r8d
	punpckldq	xmm2, xmm0
	mov	DWORD PTR 24[rcx], 0
	punpcklqdq	xmm2, xmm2
	movups	XMMWORD PTR [rcx], xmm2
	ret
	.seh_endproc
	.p2align 4
	.globl	IncrementPipeSequence
	.def	IncrementPipeSequence;	.scl	2;	.type	32;	.endef
	.seh_proc	IncrementPipeSequence
IncrementPipeSequence:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	xor	eax, eax
	mov	rbx, rcx
	movzx	ecx, WORD PTR 24[rcx]
	cmp	cx, -1
	je	.L47
	movzx	r8d, WORD PTR [rdx+rcx*8]
	lea	rax, sHandlers[rip]
	mov	rcx, rbx
	call	[QWORD PTR [rax+r8*8]]
	movzx	eax, WORD PTR 24[rbx]
	not	eax
	movzx	eax, ax
	neg	eax
	shr	eax, 31
.L47:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sHandlers:
	.quad	PipeSegmentHandler_Translate
	.quad	Handler_MusicPlant_Pipe_1
	.quad	Handler_MusicPlant_Pipe_2
	.quad	Handler_MusicPlant_Pipe_3
	.quad	Handler_MusicPlant_Pipe_4
	.quad	Handler_MusicPlant_Pipe_5
	.quad	Handler_MusicPlant_Pipe_6
	.quad	Handler_MusicPlant_Pipe_7
	.quad	Handler_MusicPlant_Pipe_8
	.quad	Handler_MusicPlant_Pipe_9
	.quad	Handler_MusicPlant_Pipe_10
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 13-win32"
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
