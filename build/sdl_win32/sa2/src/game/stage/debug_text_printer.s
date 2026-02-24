	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_802D4B4
	.def	Task_802D4B4;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_802D4B4
Task_802D4B4:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_802D4B8
	.def	TaskDestructor_802D4B8;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_802D4B8
TaskDestructor_802D4B8:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	call	VramFree
	mov	QWORD PTR sDebugUITask[rip], 0
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	Debug_CreateAsciiTask
	.def	Debug_CreateAsciiTask;	.scl	2;	.type	32;	.endef
	.seh_proc	Debug_CreateAsciiTask
Debug_CreateAsciiTask:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_802D4B8[rip]
	xor	r9d, r9d
	mov	edx, 6016
	mov	r8d, 57600
	lea	rcx, Task_802D4B4[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	edi, DWORD PTR .LC0[rip]
	mov	rsi, QWORD PTR 24[rax]
	mov	rbp, rax
	xor	eax, eax
	lea	rbx, 8[rsi]
	.p2align 4,,10
	.p2align 3
.L8:
	mov	DWORD PTR 30[rbx], 0
	test	rax, rax
	je	.L9
	mov	rdx, rax
	xor	ecx, ecx
	xor	r8d, r8d
	add	rbx, 64
	sal	rdx, 6
	add	rdx, QWORD PTR 8[rsi]
	mov	DWORD PTR -56[rbx], edi
	mov	QWORD PTR -64[rbx], rdx
	xor	edx, edx
	mov	WORD PTR -30[rbx], dx
	lea	edx, 1[rax]
	add	rax, 1
	mov	BYTE PTR -24[rbx], dl
	mov	WORD PTR -36[rbx], cx
	mov	WORD PTR -28[rbx], r8w
	mov	BYTE PTR -23[rbx], -1
	mov	BYTE PTR -22[rbx], 16
	mov	BYTE PTR -19[rbx], 0
	mov	DWORD PTR -16[rbx], -1
	mov	DWORD PTR -40[rbx], 0
	cmp	rax, 94
	jne	.L8
	mov	rax, rbp
	mov	QWORD PTR sDebugUITask[rip], rbp
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	mov	ecx, 188
	add	rbx, 64
	call	VramMalloc
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	mov	QWORD PTR 8[rsi], rax
	mov	eax, 1
	mov	WORD PTR -30[rbx], r9w
	mov	DWORD PTR -56[rbx], edi
	mov	BYTE PTR -24[rbx], 1
	mov	WORD PTR -36[rbx], r10w
	mov	WORD PTR -28[rbx], r11w
	mov	BYTE PTR -23[rbx], -1
	mov	BYTE PTR -22[rbx], 16
	mov	BYTE PTR -19[rbx], 0
	mov	DWORD PTR -16[rbx], -1
	mov	DWORD PTR -40[rbx], 0
	jmp	.L8
	.seh_endproc
	.p2align 4
	.globl	Debug_PrintIntegerAt
	.def	Debug_PrintIntegerAt;	.scl	2;	.type	32;	.endef
	.seh_proc	Debug_PrintIntegerAt
Debug_PrintIntegerAt:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR sDebugUITask[rip]
	mov	r13d, 1
	mov	rbp, QWORD PTR 24[rax]
	add	rbp, 960
	mov	esi, ecx
	movzx	r12d, dx
	cmp	ecx, 9
	jbe	.L11
	mov	r13d, 2
	cmp	ecx, 99
	ja	.L24
.L11:
	mov	edi, r8d
	.p2align 4,,10
	.p2align 3
.L12:
	movsx	rsi, esi
	sub	r13d, 1
	mov	rbx, rsi
	imul	rsi, rsi, 1717986919
	mov	eax, ebx
	mov	ebx, ebx
	sar	eax, 31
	sar	rsi, 34
	sub	esi, eax
	lea	eax, [rsi+rsi*4]
	add	eax, eax
	mov	eax, eax
	sub	rbx, rax
	sal	rbx, 6
	add	rbx, rbp
	mov	WORD PTR 38[rbx], r12w
	mov	rcx, rbx
	sub	r12d, 8
	mov	WORD PTR 40[rbx], di
	call	UpdateSpriteAnimation
	or	DWORD PTR 32[rbx], 16384
	mov	rcx, rbx
	call	DisplaySprite
	test	esi, esi
	je	.L10
	test	r13d, r13d
	jne	.L12
.L10:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	mov	r13d, 3
	cmp	ecx, 999
	jbe	.L11
	mov	r13d, 4
	cmp	ecx, 9999
	jbe	.L11
	mov	r13d, 5
	cmp	ecx, 99999
	jbe	.L11
	xor	r13d, r13d
	cmp	ecx, 999999
	seta	r13b
	add	r13d, 6
	jmp	.L11
	.seh_endproc
	.p2align 4
	.globl	Debug_PrintTextAt
	.def	Debug_PrintTextAt;	.scl	2;	.type	32;	.endef
	.seh_proc	Debug_PrintTextAt
Debug_PrintTextAt:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR sDebugUITask[rip]
	mov	rbp, QWORD PTR 24[rax]
	sub	rbp, 2112
	mov	r13, rcx
	movsx	rcx, BYTE PTR [rcx]
	mov	edi, edx
	mov	r12d, r8d
	test	cl, cl
	je	.L25
	xor	esi, esi
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L27:
	add	esi, 1
	add	edi, 8
	movzx	eax, sil
	movsx	rcx, BYTE PTR 0[r13+rax]
	test	cl, cl
	je	.L25
.L28:
	cmp	cl, 32
	jle	.L27
	sal	rcx, 6
	lea	rbx, 0[rbp+rcx]
	mov	WORD PTR 38[rbx], di
	mov	rcx, rbx
	mov	WORD PTR 40[rbx], r12w
	call	UpdateSpriteAnimation
	or	DWORD PTR 32[rbx], 16384
	mov	rcx, rbx
	call	DisplaySprite
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L25:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	Debug_TextPrinterDestroy
	.def	Debug_TextPrinterDestroy;	.scl	2;	.type	32;	.endef
	.seh_proc	Debug_TextPrinterDestroy
Debug_TextPrinterDestroy:
	.seh_endprologue
	mov	rcx, QWORD PTR sDebugUITask[rip]
	test	rcx, rcx
	je	.L33
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L33:
	ret
	.seh_endproc
.lcomm sDebugUITask,8,8
	.section .rdata,"dr"
	.align 4
.LC0:
	.word	0
	.word	1119
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
