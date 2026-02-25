	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Sqrt
	.def	Sqrt;	.scl	2;	.type	32;	.endef
	.seh_proc	Sqrt
Sqrt:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	mov	ecx, ecx
	cvtsi2sd	xmm0, rcx
	ucomisd	xmm1, xmm0
	ja	.L8
	sqrtsd	xmm0, xmm0
.L6:
	cvttsd2si	eax, xmm0
	add	rsp, 40
	ret
.L8:
	call	sqrt
	jmp	.L6
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	sqrt;	.scl	2;	.type	32;	.endef
