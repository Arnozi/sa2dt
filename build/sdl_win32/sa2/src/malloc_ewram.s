	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	EwramInitHeap
	.def	EwramInitHeap;	.scl	2;	.type	32;	.endef
	.seh_proc	EwramInitHeap
EwramInitHeap:
	.seh_endprologue
	mov	QWORD PTR gEwramHeap[rip], 0
	mov	DWORD PTR gEwramHeap[rip+8], 131200
	ret
	.seh_endproc
	.p2align 4
	.globl	EwramMalloc
	.def	EwramMalloc;	.scl	2;	.type	32;	.endef
	.seh_proc	EwramMalloc
EwramMalloc:
	.seh_endprologue
	test	ecx, ecx
	je	.L4
	mov	ecx, ecx
	jmp	Platform_malloc
	.p2align 4,,10
	.p2align 3
.L4:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	EwramFree
	.def	EwramFree;	.scl	2;	.type	32;	.endef
	.seh_proc	EwramFree
EwramFree:
	.seh_endprologue
	test	rcx, rcx
	je	.L5
	jmp	Platform_free
	.p2align 4,,10
	.p2align 3
.L5:
	ret
	.seh_endproc
	.globl	gEwramHeap
	.bss
	.align 32
gEwramHeap:
	.space 131200
	.ident	"GCC: (GNU) 13-win32"
	.def	Platform_malloc;	.scl	2;	.type	32;	.endef
	.def	Platform_free;	.scl	2;	.type	32;	.endef
