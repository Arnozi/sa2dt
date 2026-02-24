	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	ArcTan2
	.def	ArcTan2;	.scl	2;	.type	32;	.endef
	.seh_proc	ArcTan2
ArcTan2:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	movsx	edx, dx
	movsx	ecx, cx
	cvtsi2ss	xmm0, ecx
	cvtsi2ss	xmm1, edx
	call	atan2f
	cvttss2si	eax, xmm0
	add	rsp, 40
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	atan2f;	.scl	2;	.type	32;	.endef
