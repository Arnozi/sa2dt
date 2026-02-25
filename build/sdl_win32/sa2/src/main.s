	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	AgbMain
	.def	AgbMain;	.scl	2;	.type	32;	.endef
	.seh_proc	AgbMain
AgbMain:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	EngineInit
	call	GameInit
	nop
	add	rsp, 40
	jmp	EngineMainLoop
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	EngineInit;	.scl	2;	.type	32;	.endef
	.def	GameInit;	.scl	2;	.type	32;	.endef
	.def	EngineMainLoop;	.scl	2;	.type	32;	.endef
