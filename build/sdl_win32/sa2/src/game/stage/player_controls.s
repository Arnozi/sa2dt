	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_802B584
	.def	sub_802B584;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802B584
sub_802B584:
	.seh_endprologue
	cmp	cx, 1
	je	.L2
	cmp	cx, 2
	je	.L3
	test	cx, cx
	je	.L4
.L5:
	cmp	dx, 1
	je	.L6
.L16:
	cmp	dx, 2
	je	.L7
	test	dx, dx
	jne	.L9
	mov	r9d, 2
	mov	WORD PTR gPlayerControls[rip], r9w
.L9:
	cmp	r8w, 1
	je	.L10
.L17:
	cmp	r8w, 2
	je	.L11
	test	r8w, r8w
	je	.L15
	movzx	r8d, WORD PTR gPlayerControls[rip]
	movzx	ecx, WORD PTR gPlayerControls[rip+2]
	movzx	edx, WORD PTR gPlayerControls[rip+4]
.L13:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	mov	WORD PTR 44[rax], r8w
	mov	WORD PTR 46[rax], cx
	mov	WORD PTR 48[rax], dx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	eax, 1
	mov	WORD PTR gPlayerControls[rip], ax
	cmp	dx, 1
	jne	.L16
.L6:
	mov	r10d, 2
	mov	WORD PTR gPlayerControls[rip+2], r10w
	cmp	r8w, 1
	jne	.L17
.L10:
	mov	edx, 256
	movzx	r8d, WORD PTR gPlayerControls[rip]
	mov	ecx, 256
	mov	WORD PTR gPlayerControls[rip+2], dx
	movzx	edx, WORD PTR gPlayerControls[rip+4]
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L7:
	mov	r11d, 2
	mov	WORD PTR gPlayerControls[rip+4], r11w
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L15:
	mov	ecx, 256
	movzx	edx, WORD PTR gPlayerControls[rip+4]
	mov	r8d, 256
	mov	WORD PTR gPlayerControls[rip], cx
	movzx	ecx, WORD PTR gPlayerControls[rip+2]
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L2:
	mov	eax, 1
	mov	WORD PTR gPlayerControls[rip+2], ax
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L3:
	mov	eax, 1
	mov	WORD PTR gPlayerControls[rip+4], ax
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L11:
	mov	eax, 256
	movzx	r8d, WORD PTR gPlayerControls[rip]
	mov	edx, 256
	movzx	ecx, WORD PTR gPlayerControls[rip+2]
	mov	WORD PTR gPlayerControls[rip+4], ax
	jmp	.L13
	.seh_endproc
	.p2align 4
	.globl	SetPlayerControls
	.def	SetPlayerControls;	.scl	2;	.type	32;	.endef
	.seh_proc	SetPlayerControls
SetPlayerControls:
	.seh_endprologue
	mov	WORD PTR gPlayerControls[rip], cx
	mov	WORD PTR gPlayerControls[rip+2], dx
	mov	WORD PTR gPlayerControls[rip+4], r8w
	ret
	.seh_endproc
	.globl	gPlayerControls
	.bss
	.align 2
gPlayerControls:
	.space 6
	.ident	"GCC: (GNU) 13-win32"
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
