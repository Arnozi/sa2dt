	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rsi, 88[rsp]
	mov	QWORD PTR 88[rsp], rdx
	mov	rbx, rcx
	mov	ecx, 1
	mov	QWORD PTR 96[rsp], r8
	mov	QWORD PTR 104[rsp], r9
	mov	QWORD PTR 40[rsp], rsi
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	__mingw_vfprintf
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "LZDecompress(%p, %p) stored 0x%X bytes.\12\0"
	.text
	.p2align 4
	.globl	Platform_LZDecompress
	.def	Platform_LZDecompress;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_LZDecompress
Platform_LZDecompress:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	r8, 44[rsp]
	mov	rsi, rcx
	mov	DWORD PTR 44[rsp], 0
	call	LZDecompress
	mov	r9d, DWORD PTR 44[rsp]
	mov	rdx, rsi
	lea	rcx, .LC0[rip]
	mov	rbx, rax
	mov	r8, rax
	call	printf
	mov	rax, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "RLDecompress(%p, %p) stored 0x%X bytes.\12\0"
	.text
	.p2align 4
	.globl	Platform_RLDecompress
	.def	Platform_RLDecompress;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_RLDecompress
Platform_RLDecompress:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	r8, 44[rsp]
	mov	rsi, rcx
	mov	DWORD PTR 44[rsp], 0
	call	RLDecompress
	mov	r9d, DWORD PTR 44[rsp]
	mov	rdx, rsi
	lea	rcx, .LC1[rip]
	mov	rbx, rax
	mov	r8, rax
	call	printf
	mov	rax, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Platform_LZFree
	.def	Platform_LZFree;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_LZFree
Platform_LZFree:
	.seh_endprologue
	jmp	free
	.seh_endproc
	.p2align 4
	.globl	Platform_RLFree
	.def	Platform_RLFree;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_RLFree
Platform_RLFree:
	.seh_endprologue
	jmp	free
	.seh_endproc
	.p2align 4
	.globl	Platform_LZDecompressUnsafe
	.def	Platform_LZDecompressUnsafe;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_LZDecompressUnsafe
Platform_LZDecompressUnsafe:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	r8, 44[rsp]
	mov	rbx, rcx
	mov	rsi, rdx
	mov	DWORD PTR 44[rsp], 0
	call	LZDecompressUnsafe
	mov	r9d, DWORD PTR 44[rsp]
	mov	r8, rsi
	mov	rdx, rbx
	lea	rcx, .LC0[rip]
	call	printf
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Platform_RLDecompressUnsafe
	.def	Platform_RLDecompressUnsafe;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_RLDecompressUnsafe
Platform_RLDecompressUnsafe:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	r8, 44[rsp]
	mov	rbx, rcx
	mov	rsi, rdx
	mov	DWORD PTR 44[rsp], 0
	call	RLDecompressUnsafe
	mov	r9d, DWORD PTR 44[rsp]
	mov	r8, rsi
	mov	rdx, rbx
	lea	rcx, .LC1[rip]
	call	printf
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	LZDecompress;	.scl	2;	.type	32;	.endef
	.def	RLDecompress;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	LZDecompressUnsafe;	.scl	2;	.type	32;	.endef
	.def	RLDecompressUnsafe;	.scl	2;	.type	32;	.endef
