	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	InputBuffer_NewFrameInput
	.def	InputBuffer_NewFrameInput;	.scl	2;	.type	32;	.endef
	.seh_proc	InputBuffer_NewFrameInput
InputBuffer_NewFrameInput:
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.gFrameInputsBuf[rip]
	mov	r8d, edx
	mov	eax, ecx
	shr	dx, 6
	and	ax, 240
	and	r8d, 3
	and	edx, 4
	or	r8d, eax
	or	r8d, edx
	mov	rdx, QWORD PTR .refptr.gFrameInputsBufIndex[rip]
	movzx	r10d, r8w
	movzx	eax, BYTE PTR [rdx]
	add	eax, 1
	and	eax, 3
	mov	BYTE PTR [rdx], al
	movzx	edx, al
	and	eax, 3
	mov	BYTE PTR [r9+rax], r8b
	lea	eax, -1[rdx]
	mov	r8, QWORD PTR .refptr.gNewInputCountersIndex[rip]
	sub	edx, 2
	and	edx, 3
	and	eax, 3
	movzx	eax, BYTE PTR [r9+rax]
	or	al, BYTE PTR [r9+rdx]
	movzx	r9d, BYTE PTR [r8]
	mov	rdx, QWORD PTR .refptr.gNewInputCounters[rip]
	movzx	eax, al
	or	eax, r10d
	movzx	r10d, BYTE PTR [rdx+r9*4]
	and	ecx, eax
	mov	rax, r9
	cmp	r10d, ecx
	je	.L8
.L2:
	add	eax, 1
	and	eax, 31
	mov	BYTE PTR [r8], al
	and	eax, 31
	mov	BYTE PTR [rdx+rax*4], cl
	mov	BYTE PTR 1[rdx+rax*4], 0
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movzx	r10d, BYTE PTR 1[rdx+r9*4]
	cmp	r10b, -1
	je	.L2
	add	r10d, 1
	mov	BYTE PTR 1[rdx+r9*4], r10b
	ret
	.seh_endproc
	.p2align 4
	.globl	InputBuffer_HandleFrameInput
	.def	InputBuffer_HandleFrameInput;	.scl	2;	.type	32;	.endef
	.seh_proc	InputBuffer_HandleFrameInput
InputBuffer_HandleFrameInput:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
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
	mov	rbp, rcx
	test	DWORD PTR 36[rcx], 2097280
	jne	.L28
	movzx	ecx, WORD PTR 102[rcx]
	mov	edx, ecx
	call	InputBuffer_NewFrameInput
	cmp	BYTE PTR 120[rbp], 0
	je	.L9
	movsx	rdx, BYTE PTR 141[rbp]
	lea	rax, gUnknown_08C871D4[rip]
	mov	r14, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR [r14]
	cmp	rax, -1
	je	.L9
	movzx	r12d, BYTE PTR 1[rax]
	movzx	r15d, BYTE PTR 121[rbp]
	lea	rsi, 2[rax]
	movzx	ebx, BYTE PTR [rax]
	cmp	r12d, r15d
	je	.L9
	mov	rax, QWORD PTR .refptr.gNewInputCountersIndex[rip]
	mov	r8, QWORD PTR .refptr.gNewInputCounters[rip]
	xor	edi, edi
	movzx	r13d, BYTE PTR [rax]
	.p2align 4,,10
	.p2align 3
.L18:
	mov	eax, r13d
	.p2align 4,,10
	.p2align 3
.L12:
	test	ebx, ebx
	je	.L16
	sub	ebx, 1
	movzx	ebx, bx
	lea	ecx, [rbx+rbx*2]
	mov	rdx, rcx
	movzx	r11d, BYTE PTR [rsi+rcx]
	lea	ecx, 1[rcx]
	movzx	r10d, BYTE PTR [rsi+rcx]
	add	edx, 2
	movzx	ecx, al
	movzx	r9d, BYTE PTR [r8+rcx*4]
	movzx	edx, BYTE PTR [rsi+rdx]
	movzx	ecx, BYTE PTR 1[r8+rcx*4]
	and	r9d, r10d
	cmp	edx, ecx
	jl	.L13
	.p2align 4,,10
	.p2align 3
.L14:
	sub	eax, 1
	and	eax, 31
	cmp	r11b, r9b
	je	.L12
	sub	edx, 1
	sub	edx, ecx
	mov	rcx, rax
	and	ecx, 31
	movzx	r9d, BYTE PTR [r8+rcx*4]
	movzx	ecx, BYTE PTR 1[r8+rcx*4]
	and	r9d, r10d
	cmp	ecx, edx
	jle	.L14
.L13:
	test	ebx, ebx
	je	.L16
	add	edi, 1
	movzx	eax, di
	mov	rax, QWORD PTR [r14+rax*8]
	cmp	rax, -1
	je	.L9
	movzx	r12d, BYTE PTR 1[rax]
	movzx	ebx, BYTE PTR [rax]
	lea	rsi, 2[rax]
	cmp	r12d, r15d
	jne	.L18
.L9:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L28:
	xor	edx, edx
	xor	ecx, ecx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	InputBuffer_NewFrameInput
.L16:
	mov	BYTE PTR 121[rbp], r12b
	jmp	.L9
	.seh_endproc
	.p2align 4
	.globl	InitNewInputCounters
	.def	InitNewInputCounters;	.scl	2;	.type	32;	.endef
	.seh_proc	InitNewInputCounters
InitNewInputCounters:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gNewInputCountersIndex[rip]
	mov	r8, QWORD PTR .refptr.gNewInputCounters[rip]
	mov	ecx, 3
	mov	r9d, -2063597537
	mov	BYTE PTR [rax], 0
	lea	rdx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.globl	gUnknown_08C871D4
	.data
	.align 32
gUnknown_08C871D4:
	.quad	unk_8C87198
	.quad	unk_8C871A4
	.quad	unk_8C871B0
	.quad	unk_8C871BC
	.quad	unk_8C871C8
	.globl	unk_8C871C8
	.align 16
unk_8C871C8:
	.quad	gUnknown_080D52C4
	.quad	gUnknown_080D52D2
	.quad	-1
	.globl	unk_8C871BC
	.align 16
unk_8C871BC:
	.quad	gUnknown_080D52A8
	.quad	gUnknown_080D52B6
	.quad	-1
	.globl	unk_8C871B0
	.align 16
unk_8C871B0:
	.quad	gUnknown_080D528C
	.quad	gUnknown_080D529A
	.quad	-1
	.globl	unk_8C871A4
	.align 16
unk_8C871A4:
	.quad	gUnknown_080D5270
	.quad	gUnknown_080D527E
	.quad	-1
	.globl	unk_8C87198
	.align 16
unk_8C87198:
	.quad	pat1
	.quad	gUnknown_080D5262
	.quad	-1
	.globl	gUnknown_08c87098_unused
	.bss
	.align 32
gUnknown_08c87098_unused:
	.space 512
	.globl	gUnknown_080D52D2
	.section .rdata,"dr"
	.align 8
gUnknown_080D52D2:
	.ascii "\4\2\20\360\17\0\360\17\20\360\17\3\7\17"
	.globl	gUnknown_080D52C4
	.align 8
gUnknown_080D52C4:
	.ascii "\4\1\20\360\17\0\360\17\20\360\17\3\7\17"
	.globl	gUnknown_080D52B6
	.align 8
gUnknown_080D52B6:
	.ascii "\4\2\20\360\17\0\360\17\20\360\17\3\7\17"
	.globl	gUnknown_080D52A8
	.align 8
gUnknown_080D52A8:
	.ascii "\4\1\20\360\17\0\360\17\20\360\17\3\7\17"
	.globl	gUnknown_080D529A
	.align 8
gUnknown_080D529A:
	.ascii "\4\2\20\360\17\0\360\17\20\360\17\3\7\17"
	.globl	gUnknown_080D528C
	.align 8
gUnknown_080D528C:
	.ascii "\4\1\20\360\17\0\360\17\20\360\17\3\7\17"
	.globl	gUnknown_080D527E
	.align 8
gUnknown_080D527E:
	.ascii "\4\2\20\360\17\0\360\17\20\360\17\3\7\17"
	.globl	gUnknown_080D5270
	.align 8
gUnknown_080D5270:
	.ascii "\4\1\20\360\17\0\360\17\20\360\17\3\7\17"
	.globl	gUnknown_080D5262
	.align 8
gUnknown_080D5262:
	.ascii "\4\1\0\360\10 \360\10\0\360\10 \360\1"
	.align 8
pat1:
	.ascii "\4\1\0\360\10\20\360\10\0\360\10\20\360\1"
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gNewInputCounters, "dr"
	.globl	.refptr.gNewInputCounters
	.linkonce	discard
.refptr.gNewInputCounters:
	.quad	gNewInputCounters
	.section	.rdata$.refptr.gNewInputCountersIndex, "dr"
	.globl	.refptr.gNewInputCountersIndex
	.linkonce	discard
.refptr.gNewInputCountersIndex:
	.quad	gNewInputCountersIndex
	.section	.rdata$.refptr.gFrameInputsBuf, "dr"
	.globl	.refptr.gFrameInputsBuf
	.linkonce	discard
.refptr.gFrameInputsBuf:
	.quad	gFrameInputsBuf
	.section	.rdata$.refptr.gFrameInputsBufIndex, "dr"
	.globl	.refptr.gFrameInputsBufIndex
	.linkonce	discard
.refptr.gFrameInputsBufIndex:
	.quad	gFrameInputsBufIndex
