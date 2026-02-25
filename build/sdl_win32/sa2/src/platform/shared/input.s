	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	GetXInputKeys
	.def	GetXInputKeys;	.scl	2;	.type	32;	.endef
	.seh_proc	GetXInputKeys
GetXInputKeys:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	pxor	xmm0, xmm0
	xor	ecx, ecx
	lea	rdx, 32[rsp]
	movups	XMMWORD PTR 32[rsp], xmm0
	call	XInputGetState
	mov	edx, eax
	xor	eax, eax
	test	edx, edx
	jne	.L2
	movzx	edx, WORD PTR 36[rsp]
	pxor	xmm1, xmm1
	movss	xmm2, DWORD PTR .LC0[rip]
	pxor	xmm0, xmm0
	mov	ecx, edx
	mov	eax, edx
	lea	r9d, [rdx+rdx]
	mov	r8d, edx
	sar	ecx, 12
	sar	eax, 13
	mov	r10d, r9d
	and	r9d, 16
	sar	r8d
	and	eax, 2
	and	ecx, 1
	and	r10d, 512
	or	ecx, eax
	mov	eax, r8d
	and	r8d, 256
	and	eax, 8
	or	ecx, eax
	mov	eax, edx
	sar	eax, 3
	and	eax, 4
	or	ecx, eax
	mov	eax, edx
	sal	edx, 3
	sal	eax, 6
	and	edx, 32
	and	eax, 192
	or	eax, r10d
	or	eax, edx
	movsx	edx, WORD PTR 40[rsp]
	or	eax, r9d
	cvtsi2ss	xmm1, edx
	movsx	edx, WORD PTR 42[rsp]
	or	eax, r8d
	or	eax, ecx
	cvtsi2ss	xmm0, edx
	divss	xmm1, xmm2
	divss	xmm0, xmm2
	movss	xmm2, DWORD PTR .LC1[rip]
	comiss	xmm2, xmm1
	jbe	.L16
	or	eax, 32
.L5:
	comiss	xmm2, xmm0
	jbe	.L17
.L19:
	or	al, -128
.L2:
	cmp	BYTE PTR 39[rsp], -86
	jbe	.L1
	or	eax, 65536
.L1:
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	comiss	xmm1, DWORD PTR .LC2[rip]
	jbe	.L5
	or	eax, 16
	comiss	xmm2, xmm0
	ja	.L19
.L17:
	comiss	xmm0, DWORD PTR .LC2[rip]
	jbe	.L2
	or	eax, 64
	jmp	.L2
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1191181824
	.align 4
.LC1:
	.long	-1090519040
	.align 4
.LC2:
	.long	1056964608
	.ident	"GCC: (GNU) 13-win32"
	.def	XInputGetState;	.scl	2;	.type	32;	.endef
