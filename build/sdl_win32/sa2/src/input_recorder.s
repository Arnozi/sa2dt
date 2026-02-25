	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_InputRecorder;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_InputRecorder
Task_InputRecorder:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	InputRecorderEject;	.scl	3;	.type	32;	.endef
	.seh_proc	InputRecorderEject
InputRecorderEject:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rcx, QWORD PTR gInputRecorderTapeBuffer[rip]
	call	EwramFree
	mov	BYTE PTR gInputRecorder[rip+8], 0
	mov	QWORD PTR gInputRecorder[rip], 0
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	InputRecorderResetRecordHead
	.def	InputRecorderResetRecordHead;	.scl	2;	.type	32;	.endef
	.seh_proc	InputRecorderResetRecordHead
InputRecorderResetRecordHead:
	.seh_endprologue
	mov	DWORD PTR gInputRecorder[rip+4], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	InputRecorderResetPlaybackHead
	.def	InputRecorderResetPlaybackHead;	.scl	2;	.type	32;	.endef
	.seh_proc	InputRecorderResetPlaybackHead
InputRecorderResetPlaybackHead:
	.seh_endprologue
	mov	DWORD PTR gInputRecorder[rip], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	InputRecorderLoadTape
	.def	InputRecorderLoadTape;	.scl	2;	.type	32;	.endef
	.seh_proc	InputRecorderLoadTape
InputRecorderLoadTape:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	ecx, 4096
	mov	BYTE PTR gInputRecorder[rip+8], 0
	call	EwramMalloc
	mov	rdx, rax
	mov	QWORD PTR gInputRecorderTapeBuffer[rip], rax
	mov	rax, QWORD PTR .refptr.gInputPlaybackData[rip]
	mov	rcx, QWORD PTR [rax]
	call	LZ77UnCompWram
	xor	r9d, r9d
	mov	r8d, 8192
	xor	edx, edx
	lea	rax, InputRecorderEject[rip]
	lea	rcx, Task_InputRecorder[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	QWORD PTR gInputRecorder[rip], 0
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	InputRecorderRead
	.def	InputRecorderRead;	.scl	2;	.type	32;	.endef
	.seh_proc	InputRecorderRead
InputRecorderRead:
	.seh_endprologue
	movsx	rax, DWORD PTR gInputRecorder[rip]
	xor	edx, edx
	cmp	eax, 2047
	jg	.L7
	lea	edx, 1[rax]
	mov	DWORD PTR gInputRecorder[rip], edx
	mov	rdx, QWORD PTR gInputRecorderTapeBuffer[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
.L7:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	InputRecorderWrite
	.def	InputRecorderWrite;	.scl	2;	.type	32;	.endef
	.seh_proc	InputRecorderWrite
InputRecorderWrite:
	.seh_endprologue
	movsx	rax, DWORD PTR gInputRecorder[rip+4]
	cmp	eax, 2047
	jg	.L10
	lea	edx, 1[rax]
	mov	DWORD PTR gInputRecorder[rip+4], edx
	mov	rdx, QWORD PTR gInputRecorderTapeBuffer[rip]
	mov	WORD PTR [rdx+rax*2], cx
.L10:
	ret
	.seh_endproc
	.globl	gInputRecorderTapeBuffer
	.bss
	.align 8
gInputRecorderTapeBuffer:
	.space 8
	.globl	gInputRecorder
	.align 8
gInputRecorder:
	.space 12
	.ident	"GCC: (GNU) 13-win32"
	.def	EwramFree;	.scl	2;	.type	32;	.endef
	.def	EwramMalloc;	.scl	2;	.type	32;	.endef
	.def	LZ77UnCompWram;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gInputPlaybackData, "dr"
	.globl	.refptr.gInputPlaybackData
	.linkonce	discard
.refptr.gInputPlaybackData:
	.quad	gInputPlaybackData
