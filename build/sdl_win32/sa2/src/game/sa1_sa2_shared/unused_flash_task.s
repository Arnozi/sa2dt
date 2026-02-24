	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_UnusedFlashTask
	.def	Task_UnusedFlashTask;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_UnusedFlashTask
Task_UnusedFlashTask:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	lea	rax, sTxtFlash[rip]
	mov	rdx, QWORD PTR .refptr.Tileset_DebugAscii[rip]
	mov	r9d, 10
	mov	r8d, 1
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 32[rsp], 2
	lea	rcx, 32[rax]
	call	RenderText
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 1
	jne	.L4
	add	rsp, 72
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR 2[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 8[rax], 553582592
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	call	TaskDestroy
	nop
	add	rsp, 72
	jmp	CreateTitleScreen
	.seh_endproc
	.p2align 4
	.globl	CreateUnusedFlashTask
	.def	CreateUnusedFlashTask;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateUnusedFlashTask
CreateUnusedFlashTask:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 1088
	mov	ecx, 7681
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, -2063597552
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR 4[rax], cx
	mov	ecx, 3
	lea	rdx, 60[rsp]
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	xor	r9d, r9d
	mov	r8d, 4096
	xor	edx, edx
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	lea	rcx, Task_UnusedFlashTask[rip]
	mov	BYTE PTR 2[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 8[rax], 1090453504
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	mov	r8d, 32767
	mov	WORD PTR 2[rax], r8w
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	add	rsp, 72
	ret
	.seh_endproc
	.p2align 4
	.globl	DestroyUnusedFlashTask
	.def	DestroyUnusedFlashTask;	.scl	2;	.type	32;	.endef
	.seh_proc	DestroyUnusedFlashTask
DestroyUnusedFlashTask:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR 2[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 8[rax], 553582592
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	call	TaskDestroy
	nop
	add	rsp, 40
	jmp	CreateTitleScreen
	.seh_endproc
	.section .rdata,"dr"
	.align 4
sTxtFlash:
	.ascii "FLASH\305\262\304,\276\260\314\336\303\336\267\305\262\303\336\275"
	.ident	"GCC: (GNU) 13-win32"
	.def	RenderText;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreen;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gBgSprites_Unknown2, "dr"
	.globl	.refptr.gBgSprites_Unknown2
	.linkonce	discard
.refptr.gBgSprites_Unknown2:
	.quad	gBgSprites_Unknown2
	.section	.rdata$.refptr.gBgSprites_Unknown1, "dr"
	.globl	.refptr.gBgSprites_Unknown1
	.linkonce	discard
.refptr.gBgSprites_Unknown1:
	.quad	gBgSprites_Unknown1
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.Tileset_DebugAscii, "dr"
	.globl	.refptr.Tileset_DebugAscii
	.linkonce	discard
.refptr.Tileset_DebugAscii:
	.quad	Tileset_DebugAscii
