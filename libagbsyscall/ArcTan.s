	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	ArcTan
	.def	ArcTan;	.scl	2;	.type	32;	.endef
	.seh_proc	ArcTan
ArcTan:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	pxor	xmm0, xmm0
	movsx	ecx, cx
	cvtsi2ss	xmm0, ecx
	call	atanf
	cvttss2si	eax, xmm0
	add	rsp, 40
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	atanf;	.scl	2;	.type	32;	.endef
