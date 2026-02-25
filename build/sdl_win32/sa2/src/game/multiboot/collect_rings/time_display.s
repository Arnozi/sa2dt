	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_80832E0
	.def	sub_80832E0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80832E0
sub_80832E0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 72[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateCollectRingsTimeDisplay
	.def	CreateCollectRingsTimeDisplay;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCollectRingsTimeDisplay
CreateCollectRingsTimeDisplay:
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
	lea	rax, sub_80832E0[rip]
	xor	r9d, r9d
	mov	edx, 768
	mov	r8d, 8450
	lea	rcx, sub_808328C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	r9d, r9d
	xor	r10d, r10d
	mov	r11d, 4351
	mov	DWORD PTR gCollectRingsLastLapTime[rip], 0
	mov	rdi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	WORD PTR 16[rdi], r9w
	cmp	BYTE PTR [rax], 5
	mov	WORD PTR 36[rdi], r10w
	mov	DWORD PTR 42[rdi], 320
	mov	WORD PTR 49[rdi], r11w
	mov	BYTE PTR 53[rdi], 0
	mov	DWORD PTR 32[rdi], 262144
	je	.L9
.L4:
	mov	rcx, rdi
	lea	rbx, 64[rdi]
	xor	esi, esi
	call	UpdateSpriteAnimation
	mov	ebp, DWORD PTR .LC1[rip]
	.p2align 4,,10
	.p2align 3
.L8:
	mov	eax, 256
	xor	edx, edx
	xor	ecx, ecx
	mov	DWORD PTR 38[rbx], 0
	mov	WORD PTR 42[rbx], ax
	lea	eax, 16[rsi]
	mov	DWORD PTR 16[rbx], ebp
	mov	BYTE PTR 48[rbx], al
	mov	WORD PTR 36[rbx], dx
	mov	WORD PTR 44[rbx], cx
	mov	BYTE PTR 49[rbx], -1
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 0
	test	rsi, rsi
	je	.L10
	mov	rax, rsi
	mov	rcx, rbx
	add	rsi, 1
	add	rbx, 64
	sal	rax, 6
	add	rax, QWORD PTR 72[rdi]
	mov	QWORD PTR -56[rbx], rax
	call	UpdateSpriteAnimation
	cmp	rsi, 11
	jne	.L8
	mov	rax, QWORD PTR .refptr.gObjPalette[rip]
	movdqu	xmm0, XMMWORD PTR gUnknown_080E0270[rip]
	movdqu	xmm1, XMMWORD PTR gUnknown_080E0270[rip+16]
	movups	XMMWORD PTR 224[rax], xmm0
	movups	XMMWORD PTR 240[rax], xmm1
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	mov	ecx, 22
	mov	esi, 1
	call	VramMalloc
	mov	rcx, rbx
	add	rbx, 64
	mov	QWORD PTR 72[rdi], rax
	call	UpdateSpriteAnimation
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L9:
	mov	ecx, 9
	call	VramMalloc
	mov	r8d, 729
	mov	BYTE PTR 48[rdi], 0
	mov	QWORD PTR 8[rdi], rax
	mov	WORD PTR 18[rdi], r8w
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	sub_8082E9C
	.def	sub_8082E9C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082E9C
sub_8082E9C:
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
	mov	rbp, QWORD PTR .refptr.gCourseTime[rip]
	mov	esi, 2290649225
	movsx	rax, DWORD PTR 0[rbp]
	mov	rdx, rax
	imul	rax, rax, -2004318071
	mov	rbx, rcx
	mov	ecx, edx
	shr	rax, 32
	sar	ecx, 31
	add	eax, edx
	sar	eax, 5
	sub	eax, ecx
	mov	ecx, eax
	movzx	r13d, ax
	sal	ecx, 4
	imul	rsi, r13
	mov	r8, r13
	sub	ecx, eax
	lea	eax, 0[0+rcx*4]
	sub	edx, eax
	shr	rsi, 37
	lea	rax, gUnknown_080E0234[rip]
	movzx	edx, dx
	movzx	edi, BYTE PTR [rax+rdx]
	imul	eax, esi, 60
	sub	r8d, eax
	movzx	ecx, r8w
	call	Base10DigitsToHexNibbles
	mov	r12d, eax
	mov	eax, 2443359173
	imul	r13, rax
	shr	r13, 43
	mov	eax, r13d
	sal	eax, 4
	sub	eax, r13d
	sal	eax, 2
	sub	esi, eax
	movzx	ecx, si
	xor	esi, esi
	call	Base10DigitsToHexNibbles
	cmp	DWORD PTR 0[rbp], 3599
	ja	.L12
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	mov	esi, DWORD PTR [rdx]
	shr	esi, 4
	and	esi, 1
.L12:
	mov	edx, eax
	and	eax, 15
	lea	rbp, 704[rbx]
	and	edx, 15
	lea	rcx, 1[rax]
	sal	rdx, 6
	sal	rcx, 6
	mov	DWORD PTR 102[rbx+rdx], 2490376
	add	rcx, rbx
	mov	BYTE PTR 117[rbx+rdx], sil
	call	DisplaySprite
	mov	BYTE PTR 757[rbx], 0
	mov	rcx, rbp
	mov	DWORD PTR 742[rbx], 2490384
	call	DisplaySprite
	mov	eax, r12d
	shr	ax, 4
	mov	rdx, rax
	and	eax, 15
	and	edx, 15
	lea	rcx, 1[rax]
	sal	rdx, 6
	sal	rcx, 6
	mov	DWORD PTR 102[rbx+rdx], 2490392
	add	rcx, rbx
	mov	BYTE PTR 117[rbx+rdx], sil
	call	DisplaySprite
	mov	eax, r12d
	and	r12d, 15
	and	eax, 15
	lea	rcx, 1[r12]
	sal	rax, 6
	sal	rcx, 6
	mov	DWORD PTR 102[rbx+rax], 2490400
	add	rcx, rbx
	mov	BYTE PTR 117[rbx+rax], sil
	call	DisplaySprite
	mov	BYTE PTR 757[rbx], 0
	mov	rcx, rbp
	mov	DWORD PTR 742[rbx], 2490408
	call	DisplaySprite
	mov	eax, edi
	shr	al, 4
	mov	rdx, rax
	lea	ecx, 1[rax]
	and	edx, 15
	movzx	ecx, cl
	sal	rdx, 6
	sal	rcx, 6
	mov	DWORD PTR 102[rbx+rdx], 2490416
	add	rcx, rbx
	mov	BYTE PTR 117[rbx+rdx], sil
	call	DisplaySprite
	mov	rax, rdi
	and	edi, 15
	and	eax, 15
	sal	rax, 6
	mov	DWORD PTR 102[rbx+rax], 2490424
	mov	BYTE PTR 117[rbx+rax], sil
	lea	rax, 1[rdi]
	sal	rax, 6
	lea	rcx, [rbx+rax]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_8083040
	.def	sub_8083040;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083040
sub_8083040:
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
	mov	r12, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	r14, rcx
	test	BYTE PTR [r12], 1
	je	.L14
	mov	rbp, QWORD PTR .refptr.gMultiplayerCharRings[rip]
	xor	edi, edi
	xor	esi, esi
.L17:
	xor	eax, eax
	mov	WORD PTR 38[r14], di
	mov	rcx, r14
	mov	WORD PTR 40[r14], ax
	mov	BYTE PTR 53[r14], sil
	call	DisplaySprite
	movzx	ecx, BYTE PTR 0[rbp]
	call	Base10DigitsToHexNibbles
	mov	r13d, eax
	movzx	eax, WORD PTR 38[r14]
	lea	r15d, 23[rax]
	movzx	eax, WORD PTR 40[r14]
	lea	ebx, 19[rax]
	.p2align 4,,10
	.p2align 3
.L16:
	mov	rax, r13
	and	eax, 15
	sal	rax, 6
	add	rax, r14
	mov	WORD PTR 102[rax], r15w
	sub	r15d, 8
	mov	WORD PTR 104[rax], bx
	mov	BYTE PTR 117[rax], 0
	mov	rax, r13
	and	eax, 15
	lea	rcx, 1[rax]
	sal	rcx, 6
	add	rcx, r14
	call	DisplaySprite
	mov	eax, r13d
	shr	r13w, 4
	cmp	ax, 15
	ja	.L16
	cmp	esi, 3
	je	.L14
	movzx	eax, BYTE PTR [r12]
	add	esi, 1
	add	edi, 26
	add	rbp, 1
	bt	eax, esi
	jc	.L17
.L14:
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
	.seh_endproc
	.p2align 4
	.globl	sub_8083104
	.def	sub_8083104;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8083104
sub_8083104:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movsx	rax, DWORD PTR gCollectRingsLastLapTime[rip]
	mov	esi, 2290649225
	mov	rdx, rax
	imul	rax, rax, -2004318071
	shr	rax, 32
	mov	rbx, rcx
	add	eax, edx
	mov	ecx, edx
	sar	ecx, 31
	sar	eax, 5
	sub	eax, ecx
	mov	ecx, eax
	movzx	ebp, ax
	sal	ecx, 4
	imul	rsi, rbp
	mov	r8, rbp
	sub	ecx, eax
	lea	eax, 0[0+rcx*4]
	sub	edx, eax
	shr	rsi, 37
	lea	rax, gUnknown_080E0234[rip]
	movzx	edx, dx
	movzx	edi, BYTE PTR [rax+rdx]
	imul	eax, esi, 60
	sub	r8d, eax
	movzx	ecx, r8w
	call	Base10DigitsToHexNibbles
	mov	r12d, eax
	mov	eax, 2443359173
	imul	rbp, rax
	shr	rbp, 43
	mov	eax, ebp
	sal	eax, 4
	sub	eax, ebp
	sal	eax, 2
	sub	esi, eax
	movzx	ecx, si
	lea	rsi, 704[rbx]
	call	Base10DigitsToHexNibbles
	mov	edx, eax
	and	eax, 15
	and	edx, 15
	lea	rcx, 1[rax]
	sal	rdx, 6
	sal	rcx, 6
	mov	DWORD PTR 102[rbx+rdx], 3538952
	add	rcx, rbx
	mov	BYTE PTR 117[rbx+rdx], 1
	call	DisplaySprite
	mov	BYTE PTR 757[rbx], 0
	mov	rcx, rsi
	mov	DWORD PTR 742[rbx], 3538960
	call	DisplaySprite
	mov	eax, r12d
	shr	ax, 4
	mov	rdx, rax
	and	eax, 15
	and	edx, 15
	lea	rcx, 1[rax]
	sal	rdx, 6
	sal	rcx, 6
	mov	DWORD PTR 102[rbx+rdx], 3538968
	add	rcx, rbx
	mov	BYTE PTR 117[rbx+rdx], 1
	call	DisplaySprite
	mov	eax, r12d
	and	r12d, 15
	and	eax, 15
	lea	rcx, 1[r12]
	sal	rax, 6
	sal	rcx, 6
	mov	DWORD PTR 102[rbx+rax], 3538976
	add	rcx, rbx
	mov	BYTE PTR 117[rbx+rax], 1
	call	DisplaySprite
	mov	BYTE PTR 757[rbx], 0
	mov	rcx, rsi
	mov	DWORD PTR 742[rbx], 3538984
	call	DisplaySprite
	mov	eax, edi
	shr	al, 4
	mov	rdx, rax
	lea	ecx, 1[rax]
	and	edx, 15
	movzx	ecx, cl
	sal	rdx, 6
	sal	rcx, 6
	mov	DWORD PTR 102[rbx+rdx], 3538992
	add	rcx, rbx
	mov	BYTE PTR 117[rbx+rdx], 1
	call	DisplaySprite
	mov	rax, rdi
	and	edi, 15
	and	eax, 15
	sal	rax, 6
	mov	DWORD PTR 102[rbx+rax], 3539000
	mov	BYTE PTR 117[rbx+rax], 1
	lea	rax, 1[rdi]
	sal	rax, 6
	lea	rcx, [rbx+rax]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_808328C
	.def	sub_808328C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808328C
sub_808328C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rax]
	test	ah, 4
	jne	.L27
	mov	rdx, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rdx]
	mov	rbx, QWORD PTR 24[rdx]
	test	ah, 2
	je	.L32
.L30:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_8083040
	.p2align 4,,10
	.p2align 3
.L27:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	mov	rcx, rbx
	call	sub_8082E9C
	mov	eax, DWORD PTR gCollectRingsLastLapTime[rip]
	test	eax, eax
	je	.L30
	mov	rcx, rbx
	call	sub_8083104
	jmp	.L30
	.seh_endproc
	.globl	gUnknown_080E0270
	.section .rdata,"dr"
	.align 32
gUnknown_080E0270:
	.word	384
	.word	223
	.word	155
	.word	83
	.word	12
	.word	32767
	.word	24377
	.word	14798
	.word	1057
	.word	32422
	.word	28104
	.word	21832
	.word	17670
	.word	959
	.word	767
	.word	575
	.globl	gUnknown_080E0234
	.align 32
gUnknown_080E0234:
	.ascii "\0\2\3\5\7\10\20\22\23\25\27\30 \"#%'(023578@BCEGHPRSUWX`bceghprsuwx\200\202\203\205\207\210\220\222\223\225\227\230"
	.globl	gCollectRingsLastLapTime
	.bss
	.align 4
gCollectRingsLastLapTime:
	.space 4
	.section .rdata,"dr"
	.align 4
.LC1:
	.word	0
	.word	1119
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	Base10DigitsToHexNibbles;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gMultiplayerCharRings, "dr"
	.globl	.refptr.gMultiplayerCharRings
	.linkonce	discard
.refptr.gMultiplayerCharRings:
	.quad	gMultiplayerCharRings
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
