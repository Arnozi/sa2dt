	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_DummyFunc;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DummyFunc
Task_DummyFunc:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	DummyTaskOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	DummyTaskOnDestroy
DummyTaskOnDestroy:
	.seh_endprologue
	mov	QWORD PTR gDummyTask[rip], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateDummyTask
	.def	CreateDummyTask;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateDummyTask
CreateDummyTask:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, DummyTaskOnDestroy[rip]
	xor	r9d, r9d
	xor	edx, edx
	mov	r8d, 256
	lea	rcx, Task_DummyFunc[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	QWORD PTR gDummyTask[rip], rax
	add	rsp, 56
	ret
	.seh_endproc
	.globl	gDummyTask
	.bss
	.align 8
gDummyTask:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
