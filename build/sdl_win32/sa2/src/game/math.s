	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_80832FC
	.def	sub_80832FC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80832FC
sub_80832FC:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808343C
	.def	sub_808343C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808343C
sub_808343C:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8083504
	.def	sub_8083504;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083504
sub_8083504:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r11d, DWORD PTR 8[rcx]
	mov	rax, rdx
	movsx	edx, WORD PTR 2[rdx]
	cmp	dx, 1024
	je	.L5
	movsx	r9d, WORD PTR 2[rcx]
	imul	r11d, edx
	imul	edx, r9d
	sar	r11d, 10
	sar	edx, 10
	mov	WORD PTR 2[r8], dx
.L5:
	movsx	edx, WORD PTR 4[rax]
	mov	r10d, DWORD PTR 12[rcx]
	cmp	dx, 1024
	je	.L6
	movsx	r9d, WORD PTR 4[rcx]
	imul	r10d, edx
	imul	edx, r9d
	sar	r10d, 10
	sar	edx, 10
	mov	WORD PTR 4[r8], dx
.L6:
	movzx	edx, WORD PTR [rax]
	mov	ebx, DWORD PTR 8[rax]
	mov	esi, DWORD PTR 12[rax]
	test	dx, dx
	je	.L7
	movzx	eax, dx
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	lea	r9d, 256[rax]
	movsx	r9, r9d
	movzx	eax, WORD PTR [rdi+rax*2]
	movzx	r9d, WORD PTR [rdi+r9*2]
	sar	ax, 6
	sar	r9w, 6
	cwde
	movsx	r9d, r9w
	mov	ebp, eax
	mov	edi, r9d
	imul	ebp, r10d
	imul	edi, r11d
	imul	eax, r11d
	imul	r9d, r10d
	sar	ebp, 8
	sar	edi, 8
	sar	eax, 8
	sub	edi, ebp
	sar	r9d, 8
	add	ebx, edi
	add	eax, r9d
	add	eax, esi
.L8:
	add	dx, WORD PTR [rcx]
	mov	DWORD PTR 12[r8], eax
	and	dx, 1023
	mov	DWORD PTR 8[r8], ebx
	mov	WORD PTR [r8], dx
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	add	ebx, r11d
	lea	eax, [r10+rsi]
	jmp	.L8
	.seh_endproc
	.p2align 4
	.globl	sub_80835E0
	.def	sub_80835E0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80835E0
sub_80835E0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, rcx
	movsx	ecx, WORD PTR 2[rdx]
	mov	r10d, DWORD PTR 8[rax]
	cmp	cx, 1024
	je	.L16
	movsx	r8d, WORD PTR 2[rax]
	imul	r10d, ecx
	imul	ecx, r8d
	sar	r10d, 10
	sar	ecx, 10
	mov	WORD PTR 2[rax], cx
.L16:
	movsx	ecx, WORD PTR 4[rdx]
	mov	r9d, DWORD PTR 12[rax]
	cmp	cx, 1024
	je	.L17
	movsx	r8d, WORD PTR 4[rax]
	imul	r9d, ecx
	imul	ecx, r8d
	sar	r9d, 10
	sar	ecx, 10
	mov	WORD PTR 4[rax], cx
.L17:
	movzx	ecx, WORD PTR [rdx]
	mov	r11d, DWORD PTR 8[rdx]
	mov	ebx, DWORD PTR 12[rdx]
	test	cx, cx
	je	.L18
	movzx	edx, cx
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	lea	r8d, 256[rdx]
	movsx	r8, r8d
	movzx	edx, WORD PTR [rsi+rdx*2]
	movzx	r8d, WORD PTR [rsi+r8*2]
	sar	dx, 6
	sar	r8w, 6
	movsx	edx, dx
	movsx	r8d, r8w
	mov	edi, edx
	mov	esi, r8d
	imul	edi, r9d
	imul	esi, r10d
	imul	edx, r10d
	imul	r8d, r9d
	sar	edi, 8
	sar	esi, 8
	sar	edx, 8
	sub	esi, edi
	sar	r8d, 8
	add	r11d, esi
	add	edx, r8d
	add	edx, ebx
.L19:
	add	cx, WORD PTR [rax]
	mov	DWORD PTR 12[rax], edx
	and	cx, 1023
	mov	DWORD PTR 8[rax], r11d
	mov	WORD PTR [rax], cx
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	add	r11d, r10d
	lea	edx, [r9+rbx]
	jmp	.L19
	.seh_endproc
	.p2align 4
	.globl	sub_80836BC
	.def	sub_80836BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80836BC
sub_80836BC:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r11d, DWORD PTR 8[rcx]
	mov	rax, rdx
	movsx	edx, WORD PTR 2[rdx]
	cmp	dx, 1024
	je	.L27
	movsx	r8d, WORD PTR 2[rcx]
	imul	r11d, edx
	imul	edx, r8d
	sar	r11d, 10
	sar	edx, 10
	mov	WORD PTR 2[rax], dx
.L27:
	movsx	edx, WORD PTR 4[rax]
	mov	r10d, DWORD PTR 12[rcx]
	cmp	dx, 1024
	je	.L28
	movsx	r8d, WORD PTR 4[rcx]
	imul	r10d, edx
	imul	edx, r8d
	sar	r10d, 10
	sar	edx, 10
	mov	WORD PTR 4[rax], dx
.L28:
	movzx	edx, WORD PTR [rax]
	mov	ebx, DWORD PTR 8[rax]
	mov	esi, DWORD PTR 12[rax]
	test	dx, dx
	je	.L29
	movzx	r8d, dx
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	lea	r9d, 256[r8]
	movsx	r9, r9d
	movzx	r8d, WORD PTR [rdi+r8*2]
	movzx	r9d, WORD PTR [rdi+r9*2]
	sar	r8w, 6
	sar	r9w, 6
	movsx	r8d, r8w
	movsx	r9d, r9w
	mov	ebp, r8d
	mov	edi, r9d
	imul	ebp, r10d
	imul	edi, r11d
	imul	r8d, r11d
	imul	r9d, r10d
	sar	ebp, 8
	sar	edi, 8
	sar	r8d, 8
	sub	edi, ebp
	sar	r9d, 8
	add	ebx, edi
	add	r8d, r9d
	add	r8d, esi
.L30:
	add	dx, WORD PTR [rcx]
	mov	DWORD PTR 12[rax], r8d
	and	dx, 1023
	mov	DWORD PTR 8[rax], ebx
	mov	WORD PTR [rax], dx
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	add	ebx, r11d
	lea	r8d, [r10+rsi]
	jmp	.L30
	.seh_endproc
	.p2align 4
	.globl	sub_8083798
	.def	sub_8083798;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083798
sub_8083798:
	.seh_endprologue
	movzx	edx, WORD PTR 2[rcx]
	mov	r10d, DWORD PTR 8[rcx]
	cmp	dx, 1024
	je	.L38
	xor	eax, eax
	test	dx, dx
	jne	.L56
.L39:
	imul	eax, r10d
	mov	WORD PTR 2[rcx], dx
	sar	eax, 10
	mov	r10d, eax
.L38:
	movzx	edx, WORD PTR 4[rcx]
	mov	r9d, DWORD PTR 12[rcx]
	cmp	dx, 1024
	je	.L40
	xor	eax, eax
	test	dx, dx
	jne	.L57
.L41:
	imul	r9d, eax
	mov	WORD PTR 4[rcx], dx
	sar	r9d, 10
.L40:
	movzx	edx, WORD PTR [rcx]
	neg	r10d
	neg	r9d
	neg	edx
	and	dx, 1023
	mov	WORD PTR [rcx], dx
	test	dx, dx
	je	.L42
	movzx	edx, dx
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movzx	edx, WORD PTR [r8+rdx*2]
	movzx	eax, WORD PTR [r8+rax*2]
	sar	dx, 6
	sar	ax, 6
	movsx	edx, dx
	cwde
	mov	r8d, edx
	mov	r11d, eax
	imul	r8d, r9d
	imul	r11d, r10d
	imul	edx, r10d
	imul	eax, r9d
	sar	r8d, 8
	sar	r11d, 8
	sar	edx, 8
	sub	r11d, r8d
	sar	eax, 8
	mov	r10d, r11d
	lea	r9d, [rdx+rax]
.L42:
	mov	DWORD PTR 8[rcx], r10d
	mov	DWORD PTR 12[rcx], r9d
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	movsx	r8d, dx
	mov	eax, 1048576
	xor	edx, edx
	idiv	r8d
	mov	edx, eax
	cwde
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L56:
	movsx	r8d, dx
	mov	eax, 1048576
	xor	edx, edx
	idiv	r8d
	mov	edx, eax
	cwde
	jmp	.L39
	.seh_endproc
	.p2align 4
	.globl	sub_8083858
	.def	sub_8083858;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083858
sub_8083858:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80838CC
	.def	sub_80838CC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80838CC
sub_80838CC:
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
	.seh_endprologue
	movsx	edi, WORD PTR 6[rdx]
	mov	r9, rcx
	mov	rcx, rdx
	movsx	edx, WORD PTR 4[rdx]
	movsx	eax, WORD PTR 6[r9]
	movsx	r10d, WORD PTR [rcx]
	movsx	esi, WORD PTR [r9]
	movsx	ebx, WORD PTR 2[r9]
	mov	r12d, edx
	imul	r10d, eax
	movsx	ebp, WORD PTR 4[r9]
	movsx	r11d, WORD PTR 2[rcx]
	imul	esi, edi
	add	r10d, esi
	mov	esi, ebx
	imul	esi, edx
	imul	ebx, edi
	imul	edx, eax
	add	r10d, esi
	mov	esi, ebp
	imul	esi, r11d
	imul	r11d, eax
	imul	eax, edi
	sub	r10d, esi
	sar	r10d, 10
	mov	WORD PTR [r8], r10w
	movsx	r10d, WORD PTR [r9]
	movsx	esi, WORD PTR [rcx]
	imul	r12d, r10d
	sub	r11d, r12d
	mov	r12d, r10d
	add	r11d, ebx
	imul	r10d, esi
	mov	ebx, ebp
	imul	ebx, esi
	imul	ebp, edi
	sub	eax, r10d
	add	r11d, ebx
	sar	r11d, 10
	mov	WORD PTR 2[r8], r11w
	movsx	r11d, WORD PTR 2[rcx]
	movsx	ebx, WORD PTR 2[r9]
	imul	r12d, r11d
	imul	r11d, ebx
	add	edx, r12d
	mov	r12d, esi
	imul	r12d, ebx
	sub	eax, r11d
	sub	edx, r12d
	add	edx, ebp
	sar	edx, 10
	mov	WORD PTR 4[r8], dx
	movsx	edx, WORD PTR 4[r9]
	movsx	ecx, WORD PTR 4[rcx]
	imul	edx, ecx
	sub	eax, edx
	sar	eax, 10
	mov	WORD PTR 6[r8], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808399C
	.def	sub_808399C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808399C
sub_808399C:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	movsx	r10d, WORD PTR [rcx]
	movsx	edi, WORD PTR 6[rdx]
	movsx	eax, WORD PTR 6[rcx]
	movsx	r9d, WORD PTR 2[rcx]
	mov	ebp, r10d
	movsx	r11d, WORD PTR 4[rcx]
	imul	ebp, edi
	mov	r8, rdx
	movsx	edx, WORD PTR 4[rdx]
	movsx	esi, WORD PTR [r8]
	movsx	ebx, WORD PTR 2[r8]
	imul	esi, eax
	add	esi, ebp
	mov	ebp, r9d
	imul	ebp, edx
	add	esi, ebp
	mov	ebp, r11d
	imul	ebp, ebx
	imul	ebx, eax
	sub	esi, ebp
	mov	ebp, r10d
	imul	ebp, edx
	sar	esi, 10
	mov	WORD PTR [rcx], si
	movsx	esi, WORD PTR [r8]
	imul	edx, eax
	imul	eax, edi
	sub	ebx, ebp
	mov	ebp, edi
	imul	ebp, r9d
	add	ebx, ebp
	mov	ebp, r11d
	imul	ebp, esi
	add	ebx, ebp
	mov	ebp, r10d
	sar	ebx, 10
	imul	r10d, esi
	mov	WORD PTR 2[rcx], bx
	movsx	ebx, WORD PTR 2[r8]
	imul	ebp, ebx
	sub	eax, r10d
	add	edx, ebp
	mov	ebp, r9d
	imul	ebp, esi
	imul	r9d, ebx
	sub	edx, ebp
	mov	ebp, edi
	imul	ebp, r11d
	sub	eax, r9d
	add	edx, ebp
	sar	edx, 10
	mov	WORD PTR 4[rcx], dx
	movsx	edx, WORD PTR 4[r8]
	imul	edx, r11d
	sub	eax, edx
	sar	eax, 10
	mov	WORD PTR 6[rcx], ax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8083A48
	.def	sub_8083A48;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083A48
sub_8083A48:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8083B10
	.def	sub_8083B10;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083B10
sub_8083B10:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8083B88
	.def	sub_8083B88;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083B88
sub_8083B88:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8083E44
	.def	sub_8083E44;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083E44
sub_8083E44:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8084090
	.def	sub_8084090;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8084090
sub_8084090:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80842E4
	.def	sub_80842E4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80842E4
sub_80842E4:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808442C
	.def	sub_808442C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808442C
sub_808442C:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808458C
	.def	sub_808458C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808458C
sub_808458C:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808477C
	.def	sub_808477C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808477C
sub_808477C:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8084904
	.def	sub_8084904;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8084904
sub_8084904:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	r8d, 1024
	mov	r9d, 1024
	movups	XMMWORD PTR [rcx], xmm0
	mov	rax, rcx
	movzx	edx, dx
	movups	XMMWORD PTR 16[rcx], xmm0
	mov	ecx, 1024
	mov	WORD PTR 50[rax], cx
	lea	ecx, 256[rdx]
	mov	WORD PTR 42[rax], r8w
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	movsx	rcx, ecx
	mov	WORD PTR 34[rax], r9w
	movzx	ecx, WORD PTR [r8+rcx*2]
	movzx	edx, WORD PTR [r8+rdx*2]
	movzx	r8d, cx
	sal	edx, 16
	or	edx, r8d
	sar	cx, 4
	movd	xmm0, edx
	mov	WORD PTR 18[rax], cx
	psraw	xmm0, 4
	pextrw	edx, xmm0, 1
	movd	DWORD PTR 10[rax], xmm0
	neg	edx
	mov	WORD PTR 16[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8084964
	.def	sub_8084964;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8084964
sub_8084964:
	.seh_endprologue
	mov	eax, 1024
	mov	r8d, 1024
	pxor	xmm0, xmm0
	mov	r9d, 1024
	mov	WORD PTR 50[rcx], ax
	mov	rax, QWORD PTR .refptr.gSineTable[rip]
	mov	WORD PTR 42[rcx], r8w
	movzx	r8d, dx
	movzx	edx, dx
	movzx	r8d, WORD PTR [rax+r8*2]
	movzx	eax, WORD PTR 512[rax+rdx*2]
	movups	XMMWORD PTR [rcx], xmm0
	movups	XMMWORD PTR 16[rcx], xmm0
	sar	r8w, 4
	sar	ax, 4
	mov	WORD PTR 34[rcx], r9w
	mov	edx, r8d
	mov	WORD PTR 2[rcx], ax
	neg	edx
	mov	WORD PTR 14[rcx], r8w
	mov	WORD PTR 6[rcx], dx
	mov	WORD PTR 18[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80849C4
	.def	sub_80849C4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80849C4
sub_80849C4:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	r8d, 1024
	mov	r9d, 1024
	mov	rax, rcx
	movups	XMMWORD PTR [rcx], xmm0
	movzx	edx, dx
	movups	XMMWORD PTR 16[rcx], xmm0
	mov	ecx, 1024
	mov	WORD PTR 42[rax], r8w
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	WORD PTR 50[rax], cx
	lea	ecx, 256[rdx]
	movsx	rcx, ecx
	movzx	edx, WORD PTR [r8+rdx*2]
	mov	WORD PTR 34[rax], r9w
	movzx	ecx, WORD PTR [r8+rcx*2]
	sal	edx, 16
	or	edx, ecx
	movd	xmm0, edx
	psraw	xmm0, 4
	pextrw	edx, xmm0, 1
	movd	DWORD PTR 2[rax], xmm0
	neg	edx
	mov	WORD PTR 8[rax], dx
	pextrw	edx, xmm0, 0
	mov	WORD PTR 10[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8084A24
	.def	sub_8084A24;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8084A24
sub_8084A24:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8084B54
	.def	sub_8084B54;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8084B54
sub_8084B54:
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
	.seh_endprologue
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, dx
	mov	rbx, rcx
	movzx	r9d, r9w
	movzx	eax, r8w
	lea	ecx, 256[rdx]
	movzx	edi, WORD PTR [r11+rax*2]
	lea	eax, 256[r9]
	movzx	edx, WORD PTR [r11+rdx*2]
	movsx	rcx, ecx
	cdqe
	movzx	r8d, r8w
	mov	DWORD PTR 28[rbx], 0
	movzx	r10d, WORD PTR [r11+rcx*2]
	movzx	ecx, WORD PTR [r11+r9*2]
	sar	di, 4
	sar	dx, 4
	movsx	r12d, di
	movzx	eax, WORD PTR [r11+rax*2]
	movsx	edx, dx
	movzx	r11d, WORD PTR 512[r11+r8*2]
	sar	cx, 4
	sar	r10w, 4
	mov	r13d, edx
	mov	QWORD PTR 20[rbx], 0
	sar	ax, 4
	movsx	ecx, cx
	movsx	r10d, r10w
	sar	r11w, 4
	mov	esi, ecx
	cwde
	movsx	r11d, r11w
	mov	ebp, ecx
	imul	esi, r12d
	mov	r8d, eax
	imul	r8d, r10d
	imul	r12d, eax
	sar	esi, 10
	imul	ebp, r11d
	mov	r9d, esi
	sar	r8d, 10
	imul	esi, r10d
	imul	r9d, edx
	sar	r12d, 10
	imul	r13d, r12d
	sar	ebp, 10
	sar	esi, 10
	sar	r9d, 10
	add	r8d, r9d
	mov	r9d, eax
	sar	r13d, 10
	neg	r9d
	imul	eax, r11d
	movd	xmm1, r8d
	imul	r9d, edx
	pinsrw	xmm1, ebp, 1
	sar	eax, 10
	sar	r9d, 10
	movd	xmm2, eax
	add	r9d, esi
	mov	esi, ecx
	neg	esi
	imul	ecx, edx
	movd	xmm3, r9d
	imul	esi, r10d
	sar	esi, 10
	add	esi, r13d
	sar	ecx, 10
	imul	r12d, r10d
	neg	edi
	imul	edx, r11d
	pinsrw	xmm3, esi, 1
	imul	r10d, r11d
	punpckldq	xmm1, xmm3
	sar	r12d, 10
	sar	edx, 10
	add	ecx, r12d
	movd	xmm0, edx
	pinsrw	xmm2, ecx, 1
	sar	r10d, 10
	pinsrw	xmm0, edi, 1
	mov	WORD PTR 18[rbx], r10w
	punpckldq	xmm2, xmm0
	movdqu	xmm0, xmm1
	punpcklqdq	xmm0, xmm2
	movups	XMMWORD PTR 2[rbx], xmm0
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8084C70
	.def	sub_8084C70;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8084C70
sub_8084C70:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8084EAC
	.def	sub_8084EAC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8084EAC
sub_8084EAC:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8084EE0
	.def	sub_8084EE0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8084EE0
sub_8084EE0:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80851E0
	.def	sub_80851E0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80851E0
sub_80851E0:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085314
	.def	sub_8085314;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085314
sub_8085314:
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
	.seh_endprologue
	mov	r11d, 1024
	mov	r9d, r11d
	mov	rsi, rdx
	mov	rax, rcx
	movsx	edx, WORD PTR [rdx]
	movsx	r8d, WORD PTR 2[rsi]
	movsx	ecx, WORD PTR 4[rsi]
	mov	r12d, edx
	lea	edi, [rdx+rdx]
	lea	ebp, [rcx+rcx]
	lea	r13d, [r8+r8]
	imul	r8d, r13d
	imul	ecx, ebp
	imul	r12d, r13d
	sal	r8d, 6
	sal	ecx, 6
	sar	r8d, 16
	sar	ecx, 16
	sal	r12d, 6
	lea	r10d, [rcx+r8]
	sar	r12d, 16
	sub	r9d, r10d
	mov	ebx, r12d
	mov	WORD PTR 2[rax], r9w
	movsx	r9d, WORD PTR 6[rsi]
	mov	r10d, r9d
	imul	r9d, r13d
	imul	r10d, ebp
	sal	r9d, 6
	sal	r10d, 6
	sar	r9d, 16
	sar	r10d, 16
	sub	ebx, r10d
	add	r10d, r12d
	mov	WORD PTR 4[rax], bx
	mov	ebx, edx
	imul	edx, edi
	imul	ebx, ebp
	mov	WORD PTR 8[rax], r10w
	mov	r10d, r11d
	sal	edx, 6
	sar	edx, 16
	sal	ebx, 6
	add	ecx, edx
	sar	ebx, 16
	sub	r10d, ecx
	lea	r13d, [r9+rbx]
	mov	WORD PTR 10[rax], r10w
	movsx	r10d, WORD PTR 2[rsi]
	mov	WORD PTR 6[rax], r13w
	movsx	ecx, WORD PTR 6[rsi]
	imul	r10d, ebp
	mov	DWORD PTR 28[rax], 0
	imul	ecx, edi
	mov	QWORD PTR 20[rax], 0
	sal	r10d, 6
	sar	r10d, 16
	sal	ecx, 6
	sar	ecx, 16
	mov	esi, r10d
	sub	esi, ecx
	add	edx, r8d
	sub	ebx, r9d
	add	ecx, r10d
	sub	r11d, edx
	mov	WORD PTR 12[rax], si
	mov	WORD PTR 14[rax], bx
	mov	WORD PTR 16[rax], cx
	mov	WORD PTR 18[rax], r11w
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80853F8
	.def	sub_80853F8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80853F8
sub_80853F8:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	esi, DWORD PTR 16[rcx]
	mov	rbx, rcx
	lea	rax, 56[rcx]
	test	sil, 1
	jne	.L81
	cmp	DWORD PTR 20[rcx], 1
	je	.L85
.L82:
	or	esi, 1
	mov	DWORD PTR 16[rbx], esi
.L81:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	movzx	edx, WORD PTR 88[rcx]
	movzx	r8d, WORD PTR 90[rcx]
	mov	QWORD PTR 40[rsp], rax
	movzx	r9d, WORD PTR 92[rcx]
	mov	rcx, rax
	call	sub_8084B54
	movzx	r8d, WORD PTR 96[rbx]
	movzx	edx, WORD PTR 98[rbx]
	movsx	ecx, WORD PTR 100[rbx]
	movdqu	xmm4, XMMWORD PTR 58[rbx]
	movd	xmm0, r8d
	mov	rax, QWORD PTR 40[rsp]
	movdqu	xmm1, xmm0
	movdqu	xmm2, xmm0
	movd	xmm3, ecx
	movd	xmm0, edx
	pinsrw	xmm2, edx, 1
	pinsrw	xmm1, r8d, 1
	pinsrw	xmm0, edx, 1
	pinsrw	xmm3, ecx, 1
	punpckldq	xmm1, xmm2
	movdqu	xmm2, XMMWORD PTR 58[rbx]
	punpckldq	xmm0, xmm3
	movsx	edx, WORD PTR 74[rbx]
	punpcklqdq	xmm1, xmm0
	pmullw	xmm2, xmm1
	pmulhw	xmm1, xmm4
	imul	edx, ecx
	sar	edx, 10
	movdqu	xmm0, xmm2
	punpckhwd	xmm2, xmm1
	mov	WORD PTR 74[rbx], dx
	mov	rdx, QWORD PTR 104[rbx]
	punpcklwd	xmm0, xmm1
	movdqu	xmm1, xmm2
	psrad	xmm1, 10
	psrad	xmm0, 10
	mov	QWORD PTR 76[rbx], rdx
	mov	edx, DWORD PTR 112[rbx]
	movdqu	xmm2, xmm0
	punpcklwd	xmm0, xmm1
	punpckhwd	xmm2, xmm1
	movdqu	xmm1, xmm0
	mov	DWORD PTR 84[rbx], edx
	punpckhwd	xmm1, xmm2
	punpcklwd	xmm0, xmm2
	punpcklwd	xmm0, xmm1
	movups	XMMWORD PTR 58[rbx], xmm0
	jmp	.L82
	.seh_endproc
	.p2align 4
	.globl	Random
	.def	Random;	.scl	2;	.type	32;	.endef
	.seh_proc	Random
Random:
	.seh_endprologue
	mov	eax, DWORD PTR gRngValue[rip]
	mov	edx, DWORD PTR gRngPrevValue[rip]
	mov	DWORD PTR gRngPrevValue[rip], eax
	lea	eax, 923898737[rax+rdx]
	mov	DWORD PTR gRngValue[rip], eax
	shr	eax, 16
	ret
	.seh_endproc
	.p2align 4
	.globl	SeedRng
	.def	SeedRng;	.scl	2;	.type	32;	.endef
	.seh_proc	SeedRng
SeedRng:
	.seh_endprologue
	mov	DWORD PTR gRngPrevValue[rip], ecx
	mov	DWORD PTR gRngValue[rip], edx
	ret
	.seh_endproc
	.p2align 4
	.globl	AbsMax
	.def	AbsMax;	.scl	2;	.type	32;	.endef
	.seh_proc	AbsMax
AbsMax:
	.seh_endprologue
	mov	r8d, ecx
	mov	ecx, edx
	mov	eax, r8d
	neg	eax
	cmovs	eax, r8d
	neg	edx
	cmovs	edx, ecx
	cmp	eax, edx
	cmovl	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085530
	.def	sub_8085530;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085530
sub_8085530:
	.seh_endprologue
	mov	eax, ecx
	neg	eax
	cmovs	eax, ecx
	mov	ecx, edx
	neg	ecx
	cmovs	ecx, edx
	movsx	r8, eax
	movsx	rdx, ecx
	cmp	ecx, eax
	jge	.L92
	imul	r8, r8, 246
	imul	rax, rdx, 102
	add	rax, r8
	shr	rax, 8
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	imul	rax, rdx, 246
	imul	r8, r8, 102
	add	rax, r8
	shr	rax, 8
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808558C
	.def	sub_808558C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808558C
sub_808558C:
	.seh_endprologue
	mov	eax, 1
	mov	r9d, ecx
	mov	ecx, r8d
	sal	eax, cl
	mov	ecx, eax
	mov	eax, edx
	sub	eax, r9d
	lea	edx, -1[rcx]
	mov	r9d, ecx
	and	edx, eax
	shr	r9d
	movzx	r8d, dx
	mov	eax, edx
	sub	eax, ecx
	cmp	r9d, r8d
	cmovnb	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80855C0
	.def	sub_80855C0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80855C0
sub_80855C0:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	movsx	r8, r8d
	mov	edx, eax
	sub	edx, ecx
	mov	ecx, r9d
	movsx	rdx, edx
	imul	r8, rdx
	sar	r8, cl
	sub	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80855F8
	.def	sub_80855F8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80855F8
sub_80855F8:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, r8d
	mov	r8d, 1
	movsx	r9d, r9w
	sal	r8d, cl
	sub	edx, eax
	lea	ecx, -1[r8]
	mov	r11d, r8d
	and	edx, ecx
	shr	r11d
	mov	ecx, edx
	movzx	r10d, dx
	movsx	edx, dx
	sub	ecx, r8d
	cmp	r11d, r10d
	movsx	ecx, cx
	cmovb	edx, ecx
	movzx	ecx, BYTE PTR 40[rsp]
	sub	r8d, 1
	neg	edx
	imul	edx, r9d
	sar	edx, cl
	sub	eax, edx
	and	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085654
	.def	sub_8085654;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085654
sub_8085654:
	.seh_endprologue
	movzx	r11d, BYTE PTR 40[rsp]
	mov	r10d, ecx
	movsx	r8, r8d
	movzx	ecx, r9b
	.p2align 4,,10
	.p2align 3
.L102:
	mov	eax, r10d
	sub	r11d, 1
	sub	eax, edx
	cdqe
	imul	rax, r8
	sar	rax, cl
	sub	r10d, eax
	cmp	r11b, -1
	jne	.L102
	mov	eax, r10d
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085698
	.def	sub_8085698;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085698
sub_8085698:
	.seh_endprologue
	movzx	r10d, BYTE PTR 40[rsp]
	mov	r11d, ecx
	movsx	r8, r8d
	movzx	ecx, r9b
	.p2align 4,,10
	.p2align 3
.L105:
	mov	eax, r11d
	sub	r10d, 1
	sub	eax, edx
	mov	edx, r11d
	cdqe
	imul	rax, r8
	sar	rax, cl
	sub	edx, eax
	cmp	r10b, -1
	jne	.L105
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80856DC
	.def	sub_80856DC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80856DC
sub_80856DC:
	.seh_endprologue
	lea	eax, 0[0+rcx*8]
	lea	edx, [rdx+rdx*2]
	sub	eax, ecx
	lea	edx, [rax+rdx*2]
	sub	edx, r8d
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 715827883
	sar	rax, 33
	sub	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80856F8
	.def	sub_80856F8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80856F8
sub_80856F8:
	.seh_endprologue
	lea	eax, [rdx+rdx*2]
	add	eax, eax
	sub	eax, ecx
	lea	edx, [rax+r8*8]
	sub	edx, r8d
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 715827883
	sar	rax, 33
	sub	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085714
	.def	sub_8085714;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085714
sub_8085714:
	.seh_endprologue
	lea	eax, [rcx+rdx*8]
	sub	eax, r8d
	sar	eax, 3
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085720
	.def	sub_8085720;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085720
sub_8085720:
	.seh_endprologue
	sal	edx, 3
	sub	edx, ecx
	lea	eax, [rdx+r8]
	sar	eax, 3
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808572C
	.def	sub_808572C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808572C
sub_808572C:
	.seh_endprologue
	mov	eax, 1
	mov	r9d, ecx
	movzx	ecx, BYTE PTR 48[rsp]
	sub	edx, r9d
	sal	eax, cl
	movsx	rdx, edx
	sub	eax, r8d
	cdqe
	imul	rax, rdx
	sar	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085758
	.def	sub_8085758;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085758
sub_8085758:
	.seh_endprologue
	mov	eax, edx
	sub	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808575C
	.def	sub_808575C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808575C
sub_808575C:
	.seh_endprologue
	sub	r8d, ecx
	sar	edx
	movzx	ecx, BYTE PTR 56[rsp]
	mov	eax, r8d
	sar	eax
	add	eax, r8d
	sub	eax, edx
	mov	edx, 1
	sal	edx, cl
	cdqe
	sub	edx, r9d
	movsx	rdx, edx
	imul	rax, rdx
	sar	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085798
	.def	sub_8085798;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085798
sub_8085798:
	.seh_endprologue
	sub	r8d, ecx
	sar	edx
	mov	eax, r8d
	sar	eax
	add	eax, r8d
	sub	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80857A4
	.def	sub_80857A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80857A4
sub_80857A4:
	.seh_endprologue
	sub	r8d, ecx
	sar	edx
	movzx	ecx, BYTE PTR 56[rsp]
	mov	eax, r8d
	sar	eax
	add	eax, r8d
	sub	eax, edx
	mov	edx, 1
	sal	edx, cl
	cdqe
	sub	edx, r9d
	movsx	rdx, edx
	imul	rax, rdx
	sar	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80857E0
	.def	sub_80857E0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80857E0
sub_80857E0:
	.seh_endprologue
	sub	r8d, ecx
	sar	edx
	mov	eax, r8d
	sar	eax
	add	eax, r8d
	sub	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80857EC
	.def	sub_80857EC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80857EC
sub_80857EC:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	ebx, 1
	mov	r10d, ebx
	movzx	r11d, BYTE PTR 80[rsp]
	mov	esi, DWORD PTR 72[rsp]
	mov	edi, ecx
	mov	ecx, r11d
	mov	eax, edx
	sub	r8d, edx
	sal	r10d, cl
	sub	eax, edi
	movsx	rdx, r8d
	lea	ecx, [r10+rsi]
	cdqe
	movsx	rcx, ecx
	imul	rax, rcx
	mov	ecx, r11d
	sar	rax, cl
	mov	ecx, r10d
	sub	r10d, r9d
	sub	ecx, esi
	movsx	r10, r10d
	movsx	rcx, ecx
	imul	rdx, rcx
	mov	ecx, r11d
	sar	rdx, cl
	lea	ecx, -1[r11]
	sal	ebx, cl
	mov	ecx, DWORD PTR 64[rsp]
	sub	edx, eax
	cdqe
	movsx	rdx, edx
	sar	ecx
	add	ebx, ecx
	mov	ecx, r11d
	movsx	rbx, ebx
	imul	rdx, rbx
	sar	rdx, cl
	add	rax, rdx
	imul	rax, r10
	sar	rax, cl
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80858A4
	.def	sub_80858A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80858A4
sub_80858A4:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	ebx, 1
	mov	r10d, ebx
	movzx	r11d, BYTE PTR 80[rsp]
	mov	esi, DWORD PTR 72[rsp]
	mov	edi, ecx
	mov	ecx, r11d
	mov	eax, edx
	sub	r8d, edx
	sal	r10d, cl
	sub	eax, edi
	movsx	rdx, r8d
	lea	ecx, [r10+rsi]
	cdqe
	movsx	rcx, ecx
	imul	rax, rcx
	mov	ecx, r11d
	sar	rax, cl
	mov	ecx, r10d
	sub	r10d, r9d
	sub	ecx, esi
	movsx	r10, r10d
	movsx	rcx, ecx
	imul	rdx, rcx
	mov	ecx, r11d
	sar	rdx, cl
	lea	ecx, -1[r11]
	sal	ebx, cl
	mov	ecx, DWORD PTR 64[rsp]
	sub	edx, eax
	cdqe
	movsx	rdx, edx
	sar	ecx
	sub	ebx, ecx
	mov	ecx, r11d
	movsx	rbx, ebx
	imul	rdx, rbx
	sar	rdx, cl
	add	rax, rdx
	imul	rax, r10
	sar	rax, cl
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808595C
	.def	sub_808595C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808595C
sub_808595C:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, r8d
	sub	eax, edx
	sub	eax, ecx
	sar	eax
	add	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085968
	.def	sub_8085968;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085968
sub_8085968:
	.seh_endprologue
	mov	eax, 4095
	movzx	edx, dx
	mov	r8, rcx
	sub	eax, edx
	mov	r10d, edx
	mov	r11d, eax
	imul	r10d, edx
	imul	r11d, eax
	sar	r10d, 12
	sar	r11d, 12
	imul	r11d, eax
	mov	eax, edx
	imul	eax, r10d
	sar	r11d, 12
	mov	r9d, eax
	sar	eax, 13
	mov	ecx, eax
	movsx	eax, WORD PTR 2[r8]
	sar	r9d, 12
	sub	ecx, r10d
	add	ecx, 2730
	imul	ecx, eax
	movsx	eax, WORD PTR 6[r8]
	imul	eax, r9d
	imul	eax, eax, 171
	sar	eax, 10
	add	ecx, eax
	movsx	eax, WORD PTR [r8]
	imul	eax, r11d
	imul	eax, eax, 171
	sar	eax, 10
	add	ecx, eax
	lea	eax, [rdx+r10]
	movsx	edx, WORD PTR 4[r8]
	sub	eax, r9d
	sar	eax
	add	eax, 682
	imul	eax, edx
	add	eax, ecx
	shr	eax, 12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80859F4
	.def	sub_80859F4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80859F4
sub_80859F4:
	.seh_endprologue
	mov	eax, edx
	and	edx, 4095
	shr	ax, 12
	mov	r10d, edx
	movzx	eax, ax
	imul	r10d, edx
	lea	r8, [rcx+rax*2]
	mov	eax, 4095
	sub	eax, edx
	mov	r11d, eax
	sar	r10d, 12
	imul	r11d, eax
	sar	r11d, 12
	imul	r11d, eax
	mov	eax, edx
	imul	eax, r10d
	sar	r11d, 12
	mov	r9d, eax
	sar	eax, 13
	mov	ecx, eax
	movsx	eax, WORD PTR 2[r8]
	sar	r9d, 12
	sub	ecx, r10d
	add	ecx, 2730
	imul	ecx, eax
	movsx	eax, WORD PTR 6[r8]
	imul	eax, r9d
	imul	eax, eax, 171
	sar	eax, 10
	add	ecx, eax
	movsx	eax, WORD PTR [r8]
	imul	eax, r11d
	imul	eax, eax, 171
	sar	eax, 10
	add	ecx, eax
	lea	eax, [rdx+r10]
	movsx	edx, WORD PTR 4[r8]
	sub	eax, r9d
	sar	eax
	add	eax, 682
	imul	eax, edx
	add	eax, ecx
	shr	eax, 12
	and	ax, 1023
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085A88
	.def	sub_8085A88;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085A88
sub_8085A88:
	.seh_endprologue
	mov	eax, 1024
	mov	DWORD PTR [rcx], 67108864
	mov	WORD PTR 4[rcx], ax
	mov	QWORD PTR 8[rcx], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085A9C
	.def	sub_8085A9C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085A9C
sub_8085A9C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	mov	esi, edx
	movsx	ecx, WORD PTR [rcx]
	movsx	edx, WORD PTR 2[rbx]
	movsx	eax, WORD PTR 4[rbx]
	movzx	esi, sil
	imul	ecx, ecx
	imul	edx, edx
	imul	eax, eax
	add	ecx, edx
	add	ecx, eax
	call	Sqrt
	lea	ecx, [rsi+rsi]
	mov	edx, eax
	mov	eax, 1
	sal	eax, cl
	movzx	ecx, dx
	cdq
	idiv	ecx
	movsx	edx, WORD PTR [rbx]
	mov	ecx, esi
	imul	edx, eax
	sar	edx, cl
	mov	WORD PTR [rbx], dx
	movsx	edx, WORD PTR 2[rbx]
	imul	edx, eax
	sar	edx, cl
	mov	WORD PTR 2[rbx], dx
	movsx	edx, WORD PTR 4[rbx]
	imul	eax, edx
	sar	eax, cl
	mov	WORD PTR 4[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085B00
	.def	sub_8085B00;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085B00
sub_8085B00:
	.seh_endprologue
	movsx	eax, WORD PTR [rcx]
	mov	r9, rcx
	movsx	ecx, WORD PTR [rdx]
	movsx	r10d, WORD PTR 2[r9]
	movsx	r9d, WORD PTR 4[r9]
	imul	eax, ecx
	movsx	ecx, WORD PTR 2[rdx]
	movsx	edx, WORD PTR 4[rdx]
	imul	r10d, ecx
	mov	ecx, r8d
	imul	edx, r9d
	add	eax, r10d
	add	eax, edx
	sar	eax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085B34
	.def	sub_8085B34;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085B34
sub_8085B34:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r10, rcx
	mov	r11, rdx
	mov	ecx, r9d
	movsx	r9d, WORD PTR 4[rdx]
	movsx	eax, WORD PTR 4[r10]
	movsx	edx, WORD PTR 2[r10]
	movsx	ebx, WORD PTR 2[r11]
	imul	edx, r9d
	imul	ebx, eax
	sub	edx, ebx
	sar	edx, cl
	mov	WORD PTR [r8], dx
	movsx	edx, WORD PTR [r10]
	movsx	ebx, WORD PTR [r11]
	imul	r9d, edx
	imul	eax, ebx
	sub	eax, r9d
	sar	eax, cl
	mov	WORD PTR 2[r8], ax
	movsx	eax, WORD PTR 2[r11]
	imul	eax, edx
	movsx	edx, WORD PTR 2[r10]
	imul	edx, ebx
	sub	eax, edx
	sar	eax, cl
	mov	WORD PTR 4[r8], ax
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085B90
	.def	sub_8085B90;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085B90
sub_8085B90:
	.seh_endprologue
	mov	rax, QWORD PTR .LC1[rip]
	mov	QWORD PTR [rcx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085BA0
	.def	sub_8085BA0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085BA0
sub_8085BA0:
	.seh_endprologue
	pxor	xmm0, xmm0
	movd	xmm1, DWORD PTR [rcx]
	neg	WORD PTR 4[rcx]
	psubw	xmm0, xmm1
	movd	DWORD PTR [rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085BB4
	.def	sub_8085BB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085BB4
sub_8085BB4:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	shr	dx
	mov	DWORD PTR 2[rcx], 0
	mov	rax, rdx
	add	dx, 256
	and	eax, 32767
	movzx	edx, dx
	movzx	eax, WORD PTR [r8+rax*2]
	sar	ax, 4
	mov	WORD PTR [rcx], ax
	movzx	eax, WORD PTR [r8+rdx*2]
	sar	ax, 4
	mov	WORD PTR 6[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085BEC
	.def	sub_8085BEC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085BEC
sub_8085BEC:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	xor	r9d, r9d
	xor	r10d, r10d
	shr	dx
	mov	WORD PTR [rcx], r9w
	mov	rax, rdx
	add	dx, 256
	mov	WORD PTR 4[rcx], r10w
	and	eax, 32767
	movzx	edx, dx
	movzx	eax, WORD PTR [r8+rax*2]
	sar	ax, 4
	mov	WORD PTR 2[rcx], ax
	movzx	eax, WORD PTR [r8+rdx*2]
	sar	ax, 4
	mov	WORD PTR 6[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085C24
	.def	sub_8085C24;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085C24
sub_8085C24:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	shr	dx
	mov	DWORD PTR [rcx], 0
	mov	r9, rdx
	add	dx, 256
	movzx	edx, dx
	and	r9d, 32767
	movzx	eax, WORD PTR [r8+rdx*2]
	movzx	edx, WORD PTR [r8+r9*2]
	sal	eax, 16
	or	eax, edx
	movd	xmm0, eax
	psraw	xmm0, 4
	movd	DWORD PTR 4[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085C5C
	.def	sub_8085C5C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085C5C
sub_8085C5C:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movsx	r11d, WORD PTR 2[r8]
	mov	eax, edx
	mov	r9, rcx
	movsx	ecx, WORD PTR 4[r8]
	shr	ax
	mov	rdx, rax
	add	ax, 256
	and	edx, 32767
	movzx	eax, ax
	movzx	r10d, WORD PTR [rbx+rdx*2]
	movzx	eax, WORD PTR [rbx+rax*2]
	movsx	edx, WORD PTR [r8]
	sar	r10w, 4
	sar	ax, 4
	movsx	r10d, r10w
	movzx	eax, ax
	imul	ecx, r10d
	sal	rax, 16
	imul	r11d, r10d
	imul	edx, r10d
	sar	ecx, 10
	movzx	ecx, cx
	sar	r11d, 10
	or	rax, rcx
	movzx	r11d, r11w
	sar	edx, 10
	sal	rax, 16
	movzx	edx, dx
	or	rax, r11
	sal	rax, 16
	or	rax, rdx
	mov	QWORD PTR [r9], rax
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085CA8
	.def	sub_8085CA8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085CA8
sub_8085CA8:
	.seh_endprologue
	pxor	xmm0, xmm0
	movups	XMMWORD PTR [rcx], xmm0
	movups	XMMWORD PTR 16[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085CC0
	.def	sub_8085CC0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085CC0
sub_8085CC0:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	eax, 1024
	mov	edx, 1024
	mov	r8d, 1024
	mov	WORD PTR 50[rcx], ax
	mov	WORD PTR 42[rcx], dx
	mov	WORD PTR 34[rcx], r8w
	movups	XMMWORD PTR [rcx], xmm0
	movups	XMMWORD PTR 16[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085CE4
	.def	sub_8085CE4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085CE4
sub_8085CE4:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	eax, 1024
	mov	r10d, 1024
	mov	r11d, 1024
	movups	XMMWORD PTR 16[rcx], xmm0
	mov	WORD PTR 50[rcx], ax
	mov	WORD PTR 42[rcx], r10w
	mov	WORD PTR 34[rcx], r11w
	mov	DWORD PTR 20[rcx], edx
	mov	DWORD PTR 24[rcx], r8d
	mov	DWORD PTR 28[rcx], r9d
	movups	XMMWORD PTR [rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085D14
	.def	sub_8085D14;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085D14
sub_8085D14:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	eax, 1024
	mov	r10d, 1024
	mov	r11d, 1024
	movups	XMMWORD PTR [rcx], xmm0
	movups	XMMWORD PTR 16[rcx], xmm0
	mov	WORD PTR 50[rcx], ax
	mov	WORD PTR 42[rcx], r10w
	mov	WORD PTR 34[rcx], r11w
	mov	WORD PTR 2[rcx], dx
	mov	WORD PTR 10[rcx], r8w
	mov	WORD PTR 18[rcx], r9w
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085D44
	.def	sub_8085D44;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085D44
sub_8085D44:
	.seh_endprologue
	pxor	xmm0, xmm0
	movups	XMMWORD PTR [rcx], xmm0
	movups	XMMWORD PTR 16[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085D50
	.def	sub_8085D50;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085D50
sub_8085D50:
	.seh_endprologue
	.p2align 4,,10
	.p2align 3
.L138:
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	test	rcx, rcx
	jne	.L138
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085D64
	.def	sub_8085D64;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085D64
sub_8085D64:
	.seh_endprologue
	mov	rdx, QWORD PTR [rcx]
	test	rdx, rdx
	je	.L140
	mov	rax, QWORD PTR 8[rdx]
	test	rax, rax
	je	.L140
	mov	r8, QWORD PTR 16[rax]
	cmp	rcx, rax
	jne	.L143
	mov	QWORD PTR 8[rdx], r8
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L146:
	cmp	rcx, rax
	je	.L153
.L143:
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	jne	.L146
.L140:
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	mov	rax, QWORD PTR 16[rcx]
	mov	QWORD PTR 16[rdx], rax
.L145:
	mov	QWORD PTR [rcx], 0
	mov	QWORD PTR 16[rcx], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085D78
	.def	sub_8085D78;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085D78
sub_8085D78:
	.seh_endprologue
	mov	r8, QWORD PTR [rdx]
	test	r8, r8
	je	.L155
	mov	rax, QWORD PTR 8[r8]
	test	rax, rax
	je	.L155
	mov	r9, QWORD PTR 16[rax]
	cmp	rdx, rax
	jne	.L157
	mov	QWORD PTR 8[r8], r9
.L155:
	mov	rax, QWORD PTR 8[rcx]
	mov	QWORD PTR [rdx], rcx
	mov	QWORD PTR 16[rdx], rax
	mov	QWORD PTR 8[rcx], rdx
	ret
	.p2align 4,,10
	.p2align 3
.L159:
	cmp	rdx, rax
	je	.L166
.L157:
	mov	r8, rax
	mov	rax, QWORD PTR 16[rax]
	test	rax, rax
	jne	.L159
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L166:
	mov	rax, QWORD PTR 16[rdx]
	mov	QWORD PTR 16[r8], rax
	mov	rax, QWORD PTR 8[rcx]
	mov	QWORD PTR [rdx], rcx
	mov	QWORD PTR 16[rdx], rax
	mov	QWORD PTR 8[rcx], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085DD0
	.def	sub_8085DD0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085DD0
sub_8085DD0:
	.seh_endprologue
	xor	edx, edx
	mov	rax, QWORD PTR 8[rcx]
	test	rax, rax
	je	.L167
	.p2align 4,,10
	.p2align 3
.L169:
	mov	rax, QWORD PTR 16[rax]
	add	edx, 1
	test	rax, rax
	jne	.L169
.L167:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085DEC
	.def	sub_8085DEC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085DEC
sub_8085DEC:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L172
	test	dx, dx
	je	.L172
	.p2align 4,,10
	.p2align 3
.L174:
	mov	rax, QWORD PTR 16[rax]
	sub	ecx, 1
	test	rax, rax
	je	.L172
	test	cx, cx
	jne	.L174
.L172:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085E10
	.def	sub_8085E10;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085E10
sub_8085E10:
	.seh_endprologue
	movdqu	xmm0, XMMWORD PTR 20[rcx]
	movups	XMMWORD PTR [rdx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085E24
	.def	sub_8085E24;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085E24
sub_8085E24:
	.seh_endprologue
	movdqu	xmm0, XMMWORD PTR [rdx]
	movups	XMMWORD PTR 20[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085E38
	.def	sub_8085E38;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085E38
sub_8085E38:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movdqu	xmm0, XMMWORD PTR 20[rcx]
	movups	XMMWORD PTR [rdx], xmm0
	mov	rbx, QWORD PTR [rcx]
	mov	rsi, rdx
	test	rbx, rbx
	je	.L188
	.p2align 4,,10
	.p2align 3
.L190:
	lea	rdx, 20[rbx]
	mov	rcx, rsi
	call	sub_80835E0
	mov	rbx, QWORD PTR [rbx]
	test	rbx, rbx
	jne	.L190
.L188:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085E64
	.def	sub_8085E64;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085E64
sub_8085E64:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	eax, 1024
	mov	edx, 1024
	mov	r8d, 1024
	or	DWORD PTR 16[rcx], 1
	mov	DWORD PTR 20[rcx], 0
	mov	WORD PTR 106[rcx], ax
	mov	WORD PTR 98[rcx], dx
	mov	WORD PTR 90[rcx], r8w
	movups	XMMWORD PTR 56[rcx], xmm0
	movups	XMMWORD PTR 72[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085E94
	.def	sub_8085E94;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085E94
sub_8085E94:
	.seh_endprologue
	xor	eax, eax
	mov	edx, 1024
	mov	DWORD PTR 20[rcx], 1
	mov	WORD PTR 92[rcx], ax
	mov	DWORD PTR 88[rcx], 0
	mov	DWORD PTR 112[rcx], 0
	mov	QWORD PTR 104[rcx], 0
	mov	WORD PTR 100[rcx], dx
	mov	DWORD PTR 96[rcx], 67109888
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085EC4
	.def	sub_8085EC4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085EC4
sub_8085EC4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	cmp	QWORD PTR [rcx], 0
	mov	rbx, rcx
	je	.L207
	call	sub_8085EC4
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, edx
	not	ecx
	and	ecx, 3
	je	.L208
.L199:
	and	edx, 1
	je	.L209
.L202:
	lea	rax, 24[rbx]
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L209:
	mov	rcx, rbx
	call	sub_80853F8
	mov	eax, DWORD PTR 16[rbx]
	and	eax, -3
	or	eax, 1
	mov	DWORD PTR 16[rbx], eax
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L207:
	mov	edx, DWORD PTR 16[rcx]
	mov	eax, edx
	not	eax
	test	al, 3
	jne	.L199
	xor	eax, eax
.L210:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L208:
	test	rax, rax
	jne	.L202
	xor	eax, eax
	jmp	.L210
	.seh_endproc
	.p2align 4
	.globl	sub_8085F1C
	.def	sub_8085F1C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085F1C
sub_8085F1C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	cmp	QWORD PTR [rcx], 0
	mov	rbx, rcx
	je	.L212
	call	sub_8085EC4
.L212:
	mov	eax, DWORD PTR 16[rbx]
	mov	edx, eax
	not	edx
	and	edx, 3
	je	.L213
	test	al, 1
	je	.L217
.L213:
	lea	rax, 24[rbx]
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L217:
	mov	rcx, rbx
	call	sub_80853F8
	mov	eax, DWORD PTR 16[rbx]
	and	eax, -3
	or	eax, 1
	mov	DWORD PTR 16[rbx], eax
	lea	rax, 24[rbx]
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8085F84
	.def	sub_8085F84;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8085F84
sub_8085F84:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	gUnknown_080E0290
	.section .rdata,"dr"
	.align 2
gUnknown_080E0290:
	.word	2730
	.word	682
	.globl	gRngValue
	.bss
	.align 4
gRngValue:
	.space 4
	.globl	gRngPrevValue
	.align 4
gRngPrevValue:
	.space 4
	.section .rdata,"dr"
	.align 8
.LC1:
	.word	0
	.word	0
	.word	0
	.word	1024
	.ident	"GCC: (GNU) 13-win32"
	.def	Sqrt;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
