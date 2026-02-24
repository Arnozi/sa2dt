	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TrkVolPitSet
	.def	TrkVolPitSet;	.scl	2;	.type	32;	.endef
	.seh_proc	TrkVolPitSet
TrkVolPitSet:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, rdx
	movzx	edx, BYTE PTR [rdx]
	test	dl, 1
	je	.L2
	movzx	ecx, BYTE PTR 19[rax]
	movzx	r8d, BYTE PTR 18[rax]
	movsx	r10d, BYTE PTR 20[rax]
	movzx	r9d, BYTE PTR 24[rax]
	imul	r8d, ecx
	movsx	ecx, BYTE PTR 21[rax]
	lea	ecx, [rcx+r10*2]
	shr	r8d, 5
	cmp	r9b, 1
	je	.L14
	cmp	r9b, 2
	jne	.L4
	movsx	r9d, BYTE PTR 22[rax]
	add	ecx, r9d
.L4:
	mov	r9d, 127
	cmp	ecx, r9d
	cmovg	ecx, r9d
	mov	r9d, -128
	cmp	ecx, r9d
	cmovl	ecx, r9d
	mov	r9d, 127
	sub	r9d, ecx
	lea	ebx, 128[rcx]
	mov	ecx, r9d
	imul	ebx, r8d
	imul	ecx, r8d
	mov	BYTE PTR 16[rax], bh
	mov	BYTE PTR 17[rax], ch
.L2:
	test	dl, 4
	je	.L5
	movzx	r8d, BYTE PTR 15[rax]
	movsx	ecx, BYTE PTR 14[rax]
	imul	ecx, r8d
	movsx	r8d, BYTE PTR 12[rax]
	add	ecx, r8d
	movsx	r8d, BYTE PTR 10[rax]
	sal	r8d, 8
	lea	ecx, [r8+rcx*4]
	movsx	r8d, BYTE PTR 11[rax]
	sal	r8d, 8
	add	ecx, r8d
	movzx	r8d, BYTE PTR 13[rax]
	add	ecx, r8d
	cmp	BYTE PTR 24[rax], 0
	je	.L15
.L6:
	rol	cx, 8
	mov	WORD PTR 8[rax], cx
.L5:
	and	edx, -6
	mov	BYTE PTR [rax], dl
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	movsx	r8d, BYTE PTR 22[rax]
	sal	r8d, 4
	add	ecx, r8d
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L14:
	movsx	r9d, BYTE PTR 22[rax]
	sub	r9d, -128
	imul	r8d, r9d
	shr	r8d, 7
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_memacc
	.def	MP2K_event_memacc;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_memacc
MP2K_event_memacc:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	r9, 1[rax]
	lea	r10, 2[rax]
	mov	r8, rcx
	movzx	ecx, BYTE PTR [rax]
	mov	QWORD PTR 80[rdx], r9
	mov	rbx, QWORD PTR 32[r8]
	movzx	r9d, BYTE PTR 1[rax]
	mov	QWORD PTR 80[rdx], r10
	lea	r10, 3[rax]
	movzx	r11d, BYTE PTR 2[rax]
	mov	QWORD PTR 80[rdx], r10
	add	r9, rbx
	cmp	cl, 17
	ja	.L16
	lea	r10, .L19[rip]
	movsx	rcx, DWORD PTR [r10+rcx*4]
	add	rcx, r10
	jmp	rcx
	.section .rdata,"dr"
	.align 4
.L19:
	.long	.L36-.L19
	.long	.L35-.L19
	.long	.L34-.L19
	.long	.L33-.L19
	.long	.L32-.L19
	.long	.L31-.L19
	.long	.L30-.L19
	.long	.L29-.L19
	.long	.L28-.L19
	.long	.L27-.L19
	.long	.L26-.L19
	.long	.L25-.L19
	.long	.L24-.L19
	.long	.L23-.L19
	.long	.L22-.L19
	.long	.L21-.L19
	.long	.L20-.L19
	.long	.L18-.L19
	.text
	.p2align 4,,10
	.p2align 3
.L30:
	cmp	BYTE PTR [r9], r11b
	je	.L37
	.p2align 4,,10
	.p2align 3
.L38:
	add	rax, 7
	mov	QWORD PTR 80[rdx], rax
.L16:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	movzx	ecx, BYTE PTR [r9]
	cmp	BYTE PTR [rbx+r11], cl
	jb	.L38
.L37:
	mov	rcx, r8
	pop	rbx
	rex.W jmp	[QWORD PTR gMPlayJumpTable[rip+8]]
	.p2align 4,,10
	.p2align 3
.L18:
	movzx	ebx, BYTE PTR [rbx+r11]
	cmp	BYTE PTR [r9], bl
	jnb	.L38
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L36:
	mov	BYTE PTR [r9], r11b
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	add	BYTE PTR [r9], r11b
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	sub	BYTE PTR [r9], r11b
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	movzx	eax, BYTE PTR [rbx+r11]
	mov	BYTE PTR [r9], al
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	movzx	eax, BYTE PTR [rbx+r11]
	add	BYTE PTR [r9], al
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	movzx	eax, BYTE PTR [rbx+r11]
	sub	BYTE PTR [r9], al
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	cmp	BYTE PTR [r9], r11b
	jne	.L37
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L28:
	cmp	r11b, BYTE PTR [r9]
	jb	.L37
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L24:
	movzx	ebx, BYTE PTR [rbx+r11]
	cmp	BYTE PTR [r9], bl
	jne	.L38
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L23:
	movzx	ebx, BYTE PTR [rbx+r11]
	cmp	BYTE PTR [r9], bl
	jne	.L37
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L22:
	movzx	ecx, BYTE PTR [r9]
	cmp	BYTE PTR [rbx+r11], cl
	jb	.L37
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L21:
	movzx	ebx, BYTE PTR [rbx+r11]
	cmp	BYTE PTR [r9], bl
	jnb	.L37
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L26:
	cmp	r11b, BYTE PTR [r9]
	jnb	.L37
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L25:
	cmp	BYTE PTR [r9], r11b
	jb	.L37
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L27:
	cmp	BYTE PTR [r9], r11b
	jnb	.L37
	jmp	.L38
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xcmd
	.def	MP2K_event_xcmd;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xcmd
MP2K_event_xcmd:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	r8d, BYTE PTR [rax]
	add	rax, 1
	mov	QWORD PTR 80[rdx], rax
	mov	eax, r8d
	mov	r8, QWORD PTR .refptr.gXcmdTable[rip]
	rex.W jmp	[QWORD PTR [r8+rax*8]]
	.seh_endproc
	.p2align 4
	.def	MP2K_event_null;	.scl	3;	.type	32;	.endef
	.seh_proc	MP2K_event_null
MP2K_event_null:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	CgbOscOff
	.def	CgbOscOff;	.scl	2;	.type	32;	.endef
	.seh_proc	CgbOscOff
CgbOscOff:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	cmp	cl, 2
	je	.L42
	cmp	cl, 3
	je	.L43
	cmp	cl, 1
	jne	.L44
	mov	BYTE PTR 111[rax], 8
	mov	BYTE PTR 113[rax], -128
.L45:
	sub	ecx, 1
	mov	edx, 8
	movzx	ebx, cl
	mov	ecx, ebx
	call	cgb_set_envelope
	mov	ecx, ebx
	add	rsp, 32
	pop	rbx
	jmp	cgb_trigger_note
	.p2align 4,,10
	.p2align 3
.L43:
	mov	BYTE PTR 124[rax], 0
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L42:
	mov	BYTE PTR 117[rax], 8
	mov	BYTE PTR 121[rax], -128
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L44:
	mov	BYTE PTR 133[rax], 8
	mov	BYTE PTR 137[rax], -128
	jmp	.L45
	.seh_endproc
	.p2align 4
	.globl	FadeOutBody
	.def	FadeOutBody;	.scl	2;	.type	32;	.endef
	.seh_proc	FadeOutBody
FadeOutBody:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	edx, WORD PTR 48[rcx]
	mov	rsi, rcx
	test	dx, dx
	je	.L46
	movzx	eax, WORD PTR 50[rcx]
	sub	ax, 1
	jne	.L69
	movzx	eax, WORD PTR 52[rcx]
	mov	rbx, QWORD PTR 56[rcx]
	mov	WORD PTR 50[rcx], dx
	movzx	edx, BYTE PTR 12[rcx]
	test	al, 2
	je	.L51
	add	eax, 16
	cmp	ax, 255
	jbe	.L52
	mov	ecx, 256
	xor	r8d, r8d
	mov	WORD PTR 52[rsi], cx
	mov	WORD PTR 48[rsi], r8w
.L53:
	test	dl, dl
	je	.L46
	movzx	eax, dl
	lea	rdx, 0[0+rax*8]
	sub	rdx, rax
	sal	rdx, 4
	add	rdx, rbx
	.p2align 4,,10
	.p2align 3
.L61:
	movzx	eax, BYTE PTR [rbx]
	test	al, al
	jns	.L60
	movzx	ecx, WORD PTR 52[rsi]
	or	eax, 3
	mov	BYTE PTR [rbx], al
	shr	cx, 2
	mov	BYTE PTR 19[rbx], cl
.L60:
	add	rbx, 112
	cmp	rdx, rbx
	jne	.L61
.L46:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L69:
	mov	WORD PTR 50[rcx], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	sub	eax, 16
	mov	WORD PTR 52[rcx], ax
	test	ax, ax
	jg	.L53
	test	dl, dl
	je	.L55
	lea	rdi, 0[0+rdx*8]
	sub	rdi, rdx
	sal	rdi, 4
	add	rdi, rbx
	.p2align 4,,10
	.p2align 3
.L57:
	mov	rdx, rbx
	mov	rcx, rsi
	call	TrackStop
	movzx	eax, WORD PTR 52[rsi]
	and	ax, 1
	jne	.L56
	mov	BYTE PTR [rbx], 0
.L56:
	add	rbx, 112
	cmp	rbx, rdi
	jne	.L57
.L58:
	mov	edx, -2147483648
	test	ax, ax
	je	.L59
	mov	edx, DWORD PTR 8[rsi]
	or	edx, -2147483648
.L59:
	xor	eax, eax
	mov	DWORD PTR 8[rsi], edx
	mov	WORD PTR 48[rsi], ax
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L52:
	mov	WORD PTR 52[rcx], ax
	jmp	.L53
.L55:
	and	eax, 1
	jmp	.L58
	.seh_endproc
	.p2align 4
	.globl	MidiKeyToCgbFreq
	.def	MidiKeyToCgbFreq;	.scl	2;	.type	32;	.endef
	.seh_proc	MidiKeyToCgbFreq
MidiKeyToCgbFreq:
	.seh_endprologue
	cmp	cl, 4
	je	.L78
	cmp	dl, 35
	ja	.L79
	xor	r8d, r8d
	mov	r9d, 1
	xor	edx, edx
.L74:
	mov	r11, QWORD PTR .refptr.gCgbScaleTable[rip]
	mov	r10, QWORD PTR .refptr.gCgbFreqTable[rip]
	movsx	r9, r9d
	movzx	eax, BYTE PTR [r11+rdx]
	mov	ecx, eax
	and	eax, 15
	movsx	edx, WORD PTR [r10+rax*2]
	movzx	eax, BYTE PTR [r11+r9]
	shr	cl, 4
	sar	edx, cl
	mov	ecx, eax
	and	eax, 15
	movsx	eax, WORD PTR [r10+rax*2]
	shr	cl, 4
	sar	eax, cl
	sub	eax, edx
	imul	eax, r8d
	sar	eax, 8
	lea	eax, 2048[rdx+rax]
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	sub	edx, 36
	cmp	dl, -126
	jbe	.L80
	mov	r8d, 255
	mov	r9d, 131
	mov	edx, 130
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L78:
	xor	eax, eax
	cmp	dl, 20
	ja	.L81
	mov	rdx, QWORD PTR .refptr.gNoiseTable[rip]
	movzx	eax, BYTE PTR [rdx+rax]
.L82:
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	mov	eax, 59
	sub	edx, 21
	cmp	dl, al
	cmova	edx, eax
	movzx	eax, dl
	mov	rdx, QWORD PTR .refptr.gNoiseTable[rip]
	movzx	eax, BYTE PTR [rdx+rax]
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L80:
	movzx	edx, dl
	movzx	r8d, r8b
	lea	r9d, 1[rdx]
	jmp	.L74
	.seh_endproc
	.p2align 4
	.def	MPlayOpen.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	MPlayOpen.part.0
MPlayOpen.part.0:
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
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	mov	rbp, QWORD PTR [rax]
	cmp	DWORD PTR 0[rbp], 1752395091
	mov	rdi, rcx
	mov	rbx, rdx
	jne	.L83
	mov	eax, 16
	mov	DWORD PTR 0[rbp], 1752395092
	cmp	r8b, al
	cmovbe	eax, r8d
	mov	esi, eax
	call	[QWORD PTR gMPlayJumpTable[rip+280]]
	movzx	r8d, sil
	mov	QWORD PTR 56[rdi], rbx
	lea	rax, 0[0+r8*8]
	mov	BYTE PTR 12[rdi], sil
	sub	rax, r8
	mov	DWORD PTR 8[rdi], -2147483648
	sal	rax, 4
	lea	rdx, [rbx+rax]
	test	al, 16
	je	.L85
	mov	BYTE PTR [rbx], 0
	add	rbx, 112
	cmp	rbx, rdx
	je	.L96
	.p2align 4,,10
	.p2align 3
.L85:
	mov	BYTE PTR [rbx], 0
	add	rbx, 224
	mov	BYTE PTR -112[rbx], 0
	cmp	rbx, rdx
	jne	.L85
.L96:
	mov	rax, QWORD PTR 40[rbp]
	test	rax, rax
	je	.L86
	mov	QWORD PTR 80[rdi], rax
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR 88[rdi], rax
.L86:
	mov	rax, QWORD PTR .refptr.MP2KPlayerMain[rip]
	mov	QWORD PTR 48[rbp], rdi
	mov	DWORD PTR 0[rbp], 1752395091
	mov	QWORD PTR 40[rbp], rax
	mov	DWORD PTR 72[rdi], 1752395091
.L83:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	SampleFreqSet
	.def	SampleFreqSet;	.scl	2;	.type	32;	.endef
	.seh_proc	SampleFreqSet
SampleFreqSet:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	xor	r10d, r10d
	mov	r11d, -351
	mov	rdx, QWORD PTR .LC0[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 16[rax], rdx
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	BYTE PTR 11[rax], 6
	shr	ecx, 16
	mov	DWORD PTR 24[rax], 0x37aec33e
	and	ecx, 15
	mov	BYTE PTR 8[rax], cl
	mov	ecx, DWORD PTR [rax]
	mov	WORD PTR 258[rdx], r10w
	mov	WORD PTR 256[rdx], r11w
	cmp	ecx, 1752395091
	je	.L98
	mov	r8d, -18944
	mov	r9d, -18944
	sub	ecx, 10
	mov	WORD PTR 198[rdx], r8w
	mov	WORD PTR 210[rdx], r9w
	mov	BYTE PTR 4[rax], 0
	mov	DWORD PTR [rax], ecx
.L98:
	mov	eax, 128
	mov	WORD PTR 258[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	MidiKeyToFreq
	.def	MidiKeyToFreq;	.scl	2;	.type	32;	.endef
	.seh_proc	MidiKeyToFreq
MidiKeyToFreq:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, rcx
	cmp	dl, -78
	ja	.L104
	movzx	edx, dl
	sal	r8d, 24
	lea	r9d, 1[rdx]
.L103:
	mov	r10, QWORD PTR .refptr.gScaleTable[rip]
	movsx	r9, r9d
	movzx	eax, BYTE PTR [r10+rdx]
	mov	rdx, QWORD PTR .refptr.gFreqTable[rip]
	mov	ecx, eax
	and	eax, 15
	mov	ebx, DWORD PTR [rdx+rax*4]
	movzx	eax, BYTE PTR [r10+r9]
	shr	cl, 4
	shr	ebx, cl
	mov	ecx, eax
	and	eax, 15
	mov	eax, DWORD PTR [rdx+rax*4]
	shr	cl, 4
	mov	edx, r8d
	shr	eax, cl
	mov	ecx, eax
	sub	ecx, ebx
	call	umul3232H32
	mov	ecx, DWORD PTR 4[rsi]
	lea	edx, [rax+rbx]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	umul3232H32
	.p2align 4,,10
	.p2align 3
.L104:
	mov	r9d, 179
	mov	edx, 178
	mov	r8d, -16777216
	jmp	.L103
	.seh_endproc
	.p2align 4
	.globl	MPlayContinue
	.def	MPlayContinue;	.scl	2;	.type	32;	.endef
	.seh_proc	MPlayContinue
MPlayContinue:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	je	.L107
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	and	DWORD PTR 8[rcx], 2147483647
	ret
	.seh_endproc
	.p2align 4
	.globl	MPlayFadeOut
	.def	MPlayFadeOut;	.scl	2;	.type	32;	.endef
	.seh_proc	MPlayFadeOut
MPlayFadeOut:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	movd	xmm0, edx
	je	.L110
	ret
	.p2align 4,,10
	.p2align 3
.L110:
	pshuflw	xmm0, xmm0, 0
	mov	eax, 256
	mov	WORD PTR 52[rcx], ax
	movd	DWORD PTR 48[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aSoundMain
	.def	m4aSoundMain;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSoundMain
m4aSoundMain:
	.seh_endprologue
	jmp	SoundMain
	.seh_endproc
	.p2align 4
	.globl	m4aSongNumStop
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSongNumStop
m4aSongNumStop:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	ecx, cx
	sal	rcx, 4
	add	rcx, QWORD PTR .refptr.gSongTable[rip]
	movzx	eax, WORD PTR 8[rcx]
	lea	rdx, [rax+rax*2]
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rsi, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR [rcx]
	cmp	QWORD PTR [rsi], rax
	je	.L120
.L112:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L120:
	cmp	DWORD PTR 72[rsi], 1752395091
	jne	.L112
	movzx	eax, BYTE PTR 12[rsi]
	mov	rbx, QWORD PTR 56[rsi]
	mov	DWORD PTR 72[rsi], 1752395092
	or	DWORD PTR 8[rsi], -2147483648
	test	al, al
	je	.L114
	lea	rdi, 0[0+rax*8]
	sub	rdi, rax
	sal	rdi, 4
	add	rdi, rbx
	.p2align 4,,10
	.p2align 3
.L115:
	mov	rdx, rbx
	mov	rcx, rsi
	add	rbx, 112
	call	TrackStop
	cmp	rbx, rdi
	jne	.L115
.L114:
	mov	DWORD PTR 72[rsi], 1752395091
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aSongNumContinue
	.def	m4aSongNumContinue;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSongNumContinue
m4aSongNumContinue:
	.seh_endprologue
	movzx	ecx, cx
	sal	rcx, 4
	add	rcx, QWORD PTR .refptr.gSongTable[rip]
	movzx	eax, WORD PTR 8[rcx]
	lea	rdx, [rax+rax*2]
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rdx, QWORD PTR [rcx]
	cmp	QWORD PTR [rax], rdx
	je	.L123
.L121:
	ret
	.p2align 4,,10
	.p2align 3
.L123:
	cmp	DWORD PTR 72[rax], 1752395091
	jne	.L121
	and	DWORD PTR 8[rax], 2147483647
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayAllStop
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayAllStop
m4aMPlayAllStop:
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
	mov	rbp, QWORD PTR .refptr.gMPlayTable[rip]
	lea	r12, 96[rbp]
.L128:
	mov	rsi, QWORD PTR 0[rbp]
	cmp	DWORD PTR 72[rsi], 1752395091
	jne	.L125
	movzx	eax, BYTE PTR 12[rsi]
	mov	rbx, QWORD PTR 56[rsi]
	mov	DWORD PTR 72[rsi], 1752395092
	or	DWORD PTR 8[rsi], -2147483648
	test	al, al
	je	.L126
	lea	rdi, 0[0+rax*8]
	sub	rdi, rax
	sal	rdi, 4
	add	rdi, rbx
	.p2align 4,,10
	.p2align 3
.L127:
	mov	rdx, rbx
	mov	rcx, rsi
	add	rbx, 112
	call	TrackStop
	cmp	rbx, rdi
	jne	.L127
.L126:
	mov	DWORD PTR 72[rsi], 1752395091
.L125:
	add	rbp, 24
	cmp	rbp, r12
	jne	.L128
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayContinue
	.def	m4aMPlayContinue;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayContinue
m4aMPlayContinue:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	je	.L136
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	and	DWORD PTR 8[rcx], 2147483647
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayAllContinue
	.def	m4aMPlayAllContinue;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayAllContinue
m4aMPlayAllContinue:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	lea	rcx, 96[rax]
.L139:
	mov	rdx, QWORD PTR [rax]
	cmp	DWORD PTR 72[rdx], 1752395091
	jne	.L138
	and	DWORD PTR 8[rdx], 2147483647
.L138:
	add	rax, 24
	cmp	rax, rcx
	jne	.L139
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayFadeOut
	.def	m4aMPlayFadeOut;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayFadeOut
m4aMPlayFadeOut:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	movd	xmm0, edx
	je	.L143
	ret
	.p2align 4,,10
	.p2align 3
.L143:
	pshuflw	xmm0, xmm0, 0
	mov	eax, 256
	mov	WORD PTR 52[rcx], ax
	movd	DWORD PTR 48[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayFadeOutTemporarily
	.def	m4aMPlayFadeOutTemporarily;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayFadeOutTemporarily
m4aMPlayFadeOutTemporarily:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	movd	xmm0, edx
	je	.L146
	ret
	.p2align 4,,10
	.p2align 3
.L146:
	pshuflw	xmm0, xmm0, 0
	mov	eax, 257
	mov	WORD PTR 52[rcx], ax
	movd	DWORD PTR 48[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayFadeIn
	.def	m4aMPlayFadeIn;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayFadeIn
m4aMPlayFadeIn:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	movd	xmm0, edx
	je	.L149
	ret
	.p2align 4,,10
	.p2align 3
.L149:
	and	DWORD PTR 8[rcx], 2147483647
	pshuflw	xmm0, xmm0, 0
	mov	eax, 2
	mov	WORD PTR 52[rcx], ax
	movd	DWORD PTR 48[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayImmInit
	.def	m4aMPlayImmInit;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayImmInit
m4aMPlayImmInit:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, BYTE PTR 12[rcx]
	mov	rbx, QWORD PTR 56[rcx]
	test	al, al
	je	.L150
	lea	rsi, 0[0+rax*8]
	sub	rsi, rax
	sal	rsi, 4
	add	rsi, rbx
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L152:
	add	rbx, 112
	cmp	rbx, rsi
	je	.L150
.L153:
	movzx	eax, BYTE PTR [rbx]
	test	al, al
	jns	.L152
	test	al, 64
	je	.L152
	mov	rcx, rbx
	add	rbx, 112
	call	[QWORD PTR gMPlayJumpTable[rip+280]]
	mov	BYTE PTR -112[rbx], -128
	mov	BYTE PTR -97[rbx], 2
	mov	BYTE PTR -93[rbx], 64
	mov	BYTE PTR -87[rbx], 22
	mov	BYTE PTR -72[rbx], 1
	cmp	rbx, rsi
	jne	.L153
.L150:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	MPlayExtender
	.def	MPlayExtender;	.scl	2;	.type	32;	.endef
	.seh_proc	MPlayExtender
MPlayExtender:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 143
	xor	ebx, ebx
	mov	WORD PTR 144[rax], dx
	mov	rsi, rcx
	xor	ecx, ecx
	mov	WORD PTR 140[rax], cx
	mov	BYTE PTR 111[rax], 8
	mov	BYTE PTR 117[rax], 8
	mov	BYTE PTR 133[rax], 8
	mov	BYTE PTR 113[rax], -128
	mov	BYTE PTR 121[rax], -128
	mov	BYTE PTR 137[rax], -128
	mov	BYTE PTR 124[rax], 0
	mov	BYTE PTR 140[rax], 119
.L162:
	mov	ecx, ebx
	mov	edx, 8
	call	cgb_set_envelope
	mov	ecx, ebx
	add	ebx, 1
	call	cgb_trigger_note
	cmp	ebx, 4
	jne	.L162
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	mov	rbx, QWORD PTR [rax]
	cmp	DWORD PTR [rbx], 1752395091
	je	.L165
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L165:
	lea	rax, MP2K_event_memacc[rip]
	mov	DWORD PTR [rbx], 1752395092
	lea	rcx, 44[rsp]
	mov	r8d, 83886168
	mov	QWORD PTR gMPlayJumpTable[rip+64], rax
	mov	rax, QWORD PTR .refptr.MP2K_event_lfos[rip]
	lea	rdx, MP2K_event_xcmd[rip]
	movq	xmm0, rdx
	lea	rdx, SampleFreqSet[rip]
	mov	DWORD PTR 44[rsp], 0
	mov	QWORD PTR gMPlayJumpTable[rip+136], rax
	mov	rax, QWORD PTR .refptr.MP2K_event_mod[rip]
	mov	QWORD PTR gMPlayJumpTable[rip+152], rax
	lea	rax, MP2K_event_endtie[rip]
	movq	xmm1, rax
	lea	rax, TrackStop[rip]
	punpcklqdq	xmm0, xmm1
	movq	xmm2, rax
	lea	rax, TrkVolPitSet[rip]
	movups	XMMWORD PTR gMPlayJumpTable[rip+224], xmm0
	movq	xmm0, rdx
	lea	rdx, FadeOutBody[rip]
	movq	xmm3, rax
	punpcklqdq	xmm0, xmm2
	lea	rax, CgbOscOff[rip]
	movups	XMMWORD PTR gMPlayJumpTable[rip+240], xmm0
	movq	xmm0, rdx
	movq	xmm4, rax
	lea	rdx, CgbSound[rip]
	punpcklqdq	xmm0, xmm3
	lea	rax, MidiKeyToCgbFreq[rip]
	movups	XMMWORD PTR gMPlayJumpTable[rip+256], xmm0
	movq	xmm0, rdx
	mov	rdx, rsi
	mov	QWORD PTR 32[rbx], rsi
	punpcklqdq	xmm0, xmm4
	mov	QWORD PTR 72[rbx], rax
	mov	BYTE PTR 12[rbx], 0
	movups	XMMWORD PTR 56[rbx], xmm0
	call	CpuSet
	mov	BYTE PTR 1[rsi], 1
	mov	BYTE PTR 28[rsi], 17
	mov	BYTE PTR 89[rsi], 2
	mov	BYTE PTR 116[rsi], 34
	mov	BYTE PTR 177[rsi], 3
	mov	BYTE PTR 204[rsi], 68
	mov	BYTE PTR 265[rsi], 4
	mov	BYTE PTR 292[rsi], -120
	mov	DWORD PTR [rbx], 1752395091
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	ClearChain
	.def	ClearChain;	.scl	2;	.type	32;	.endef
	.seh_proc	ClearChain
ClearChain:
	.seh_endprologue
	rex.W jmp	[QWORD PTR gMPlayJumpTable[rip+272]]
	.seh_endproc
	.p2align 4
	.globl	Clear64byte
	.def	Clear64byte;	.scl	2;	.type	32;	.endef
	.seh_proc	Clear64byte
Clear64byte:
	.seh_endprologue
	rex.W jmp	[QWORD PTR gMPlayJumpTable[rip+280]]
	.seh_endproc
	.p2align 4
	.globl	SoundInit
	.def	SoundInit;	.scl	2;	.type	32;	.endef
	.seh_proc	SoundInit
SoundInit:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	movups	XMMWORD PTR 64[rsp], xmm7
	.seh_savexmm	xmm7, 64
	movups	XMMWORD PTR 80[rsp], xmm8
	.seh_savexmm	xmm8, 80
	.seh_endprologue
	lea	rax, MP2K_event_null[rip]
	mov	r8d, 83896192
	lea	rsi, gMPlayJumpTable[rip]
	movq	xmm7, rax
	lea	rax, MP2K_event_nxx[rip]
	movq	xmm6, rax
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	movdqu	xmm8, xmm7
	punpcklqdq	xmm6, xmm7
	punpcklqdq	xmm8, xmm8
	mov	DWORD PTR [rcx], 0
	mov	rbx, rcx
	mov	rdx, rbx
	mov	QWORD PTR [rax], rcx
	lea	rcx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	call	CpuSet
	mov	eax, 3848
	movups	XMMWORD PTR 88[rbx], xmm6
	mov	rcx, rsi
	mov	WORD PTR 6[rbx], ax
	movups	XMMWORD PTR 56[rbx], xmm8
	movq	QWORD PTR 72[rbx], xmm7
	call	MPlayJumpTableCopy
	mov	QWORD PTR 80[rbx], rsi
	mov	ecx, 786432
	call	SampleFreqSet
	mov	DWORD PTR [rbx], 1752395091
	movups	xmm6, XMMWORD PTR 48[rsp]
	movups	xmm7, XMMWORD PTR 64[rsp]
	movups	xmm8, XMMWORD PTR 80[rsp]
	add	rsp, 104
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	SoundClear
	.def	SoundClear;	.scl	2;	.type	32;	.endef
	.seh_proc	SoundClear
SoundClear:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	mov	rsi, QWORD PTR [rax]
	cmp	DWORD PTR [rsi], 1752395091
	jne	.L169
	mov	DWORD PTR [rsi], 1752395092
	lea	rax, 136[rsi]
	lea	rdx, 1192[rsi]
	.p2align 4,,10
	.p2align 3
.L171:
	mov	BYTE PTR [rax], 0
	add	rax, 88
	cmp	rdx, rax
	jne	.L171
	mov	rdi, QWORD PTR 32[rsi]
	test	rdi, rdi
	je	.L172
	mov	ebx, 1
.L173:
	mov	ecx, ebx
	add	ebx, 1
	add	rdi, 88
	call	[QWORD PTR 64[rsi]]
	mov	BYTE PTR -88[rdi], 0
	cmp	ebx, 5
	jne	.L173
.L172:
	mov	DWORD PTR [rsi], 1752395091
.L169:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aSoundVSyncOff
	.def	m4aSoundVSyncOff;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSoundVSyncOff
m4aSoundVSyncOff:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR [rdx]
	lea	ecx, -1752395091[rax]
	cmp	ecx, 1
	jbe	.L189
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L189:
	add	eax, 10
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	ecx, DWORD PTR 196[rax]
	and	ecx, 33554432
	je	.L181
	mov	DWORD PTR 196[rax], -2076180476
.L181:
	mov	ecx, DWORD PTR 208[rax]
	and	ecx, 33554432
	je	.L182
	mov	DWORD PTR 208[rax], -2076180476
.L182:
	mov	ecx, 1024
	mov	r8d, 1024
	add	rdx, 1192
	mov	WORD PTR 198[rax], cx
	lea	rcx, 44[rsp]
	mov	WORD PTR 210[rax], r8w
	mov	r8d, 83895894
	mov	DWORD PTR 44[rsp], 0
	call	CpuSet
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aSoundMode
	.def	m4aSoundMode;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSoundMode
m4aSoundMode:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	mov	rbx, QWORD PTR [rax]
	cmp	DWORD PTR [rbx], 1752395091
	jne	.L190
	mov	DWORD PTR [rbx], 1752395092
	test	cl, cl
	je	.L192
	mov	eax, ecx
	and	eax, 127
	mov	BYTE PTR 5[rbx], al
.L192:
	mov	eax, ecx
	and	eax, 3840
	je	.L193
	mov	BYTE PTR 6[rbx], ah
	lea	rdx, 1192[rbx]
	lea	rax, 136[rbx]
	.p2align 4,,10
	.p2align 3
.L194:
	mov	BYTE PTR [rax], 0
	add	rax, 176
	mov	BYTE PTR -88[rax], 0
	cmp	rax, rdx
	jne	.L194
.L193:
	mov	eax, ecx
	and	eax, 61440
	je	.L195
	shr	eax, 12
	mov	BYTE PTR 7[rbx], al
.L195:
	mov	eax, ecx
	and	eax, 11534336
	je	.L196
	mov	r8, QWORD PTR .refptr.REG_BASE[rip]
	shr	eax, 14
	mov	edx, eax
	movzx	eax, BYTE PTR 149[r8]
	and	eax, 63
	or	eax, edx
	mov	BYTE PTR 149[r8], al
.L196:
	mov	esi, ecx
	and	esi, 983040
	jne	.L215
.L197:
	mov	DWORD PTR [rbx], 1752395091
.L190:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	call	m4aSoundVSyncOff
	mov	ecx, esi
	call	SampleFreqSet
	jmp	.L197
	.seh_endproc
	.p2align 4
	.globl	m4aSoundInit
	.def	m4aSoundInit;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSoundInit
m4aSoundInit:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	movups	XMMWORD PTR 64[rsp], xmm7
	.seh_savexmm	xmm7, 64
	movups	XMMWORD PTR 80[rsp], xmm8
	.seh_savexmm	xmm8, 80
	.seh_endprologue
	lea	rax, MP2K_event_null[rip]
	lea	rdx, gSoundInfo[rip]
	mov	r8d, 83896192
	movq	xmm7, rax
	lea	rax, MP2K_event_nxx[rip]
	lea	rbx, gMPlayJumpTable[rip]
	mov	DWORD PTR gSoundInfo[rip], 0
	movq	xmm6, rax
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	movdqu	xmm8, xmm7
	lea	rdi, gMPlayMemAccArea[rip]
	punpcklqdq	xmm6, xmm7
	punpcklqdq	xmm8, xmm8
	mov	QWORD PTR [rax], rdx
	lea	rcx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	call	CpuSet
	mov	eax, 3848
	mov	rcx, rbx
	movups	XMMWORD PTR gSoundInfo[rip+56], xmm8
	mov	WORD PTR gSoundInfo[rip+6], ax
	movq	QWORD PTR gSoundInfo[rip+72], xmm7
	movups	XMMWORD PTR gSoundInfo[rip+88], xmm6
	call	MPlayJumpTableCopy
	mov	ecx, 786432
	mov	QWORD PTR gSoundInfo[rip+80], rbx
	call	SampleFreqSet
	lea	rcx, gCgbChans[rip]
	mov	DWORD PTR gSoundInfo[rip], 1752395091
	call	MPlayExtender
	mov	ecx, 9696512
	call	m4aSoundMode
	mov	rbx, QWORD PTR .refptr.gMPlayTable[rip]
	lea	rbp, 96[rbx]
.L218:
	movzx	r8d, BYTE PTR 16[rbx]
	mov	rsi, QWORD PTR [rbx]
	test	r8b, r8b
	je	.L217
	mov	rdx, QWORD PTR 8[rbx]
	mov	rcx, rsi
	call	MPlayOpen.part.0
.L217:
	movzx	eax, WORD PTR 18[rbx]
	add	rbx, 24
	mov	QWORD PTR 32[rsi], rdi
	mov	BYTE PTR 15[rsi], al
	cmp	rbx, rbp
	jne	.L218
	movups	xmm6, XMMWORD PTR 48[rsp]
	movups	xmm7, XMMWORD PTR 64[rsp]
	movups	xmm8, XMMWORD PTR 80[rsp]
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	MPlayStart.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	MPlayStart.part.0
MPlayStart.part.0:
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
	cmp	BYTE PTR 15[rcx], 0
	movzx	eax, BYTE PTR 2[rdx]
	mov	rdi, rcx
	mov	r12, rdx
	je	.L224
	cmp	QWORD PTR [rcx], 0
	je	.L225
	mov	rdx, QWORD PTR 56[rcx]
	test	BYTE PTR [rdx], 64
	jne	.L226
.L225:
	mov	edx, DWORD PTR 8[rdi]
	test	dx, dx
	jne	.L246
	.p2align 4,,10
	.p2align 3
.L224:
	mov	rdx, QWORD PTR 8[r12]
	mov	BYTE PTR 13[rdi], al
	xor	esi, esi
	lea	rbp, 16[r12]
	mov	rax, QWORD PTR .LC6[rip]
	mov	DWORD PTR 72[rdi], 1752395092
	mov	DWORD PTR 8[rdi], 0
	mov	rbx, QWORD PTR 56[rdi]
	mov	QWORD PTR 40[rdi], rax
	xor	eax, eax
	mov	WORD PTR 48[rdi], ax
	movzx	eax, BYTE PTR 12[rdi]
	mov	QWORD PTR [rdi], r12
	mov	QWORD PTR 64[rdi], rdx
	mov	DWORD PTR 16[rdi], 0
	cmp	BYTE PTR [r12], 0
	jne	.L230
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L231:
	mov	rdx, rbx
	mov	rcx, rdi
	add	esi, 1
	add	rbx, 112
	call	TrackStop
	mov	BYTE PTR -112[rbx], -64
	mov	rax, QWORD PTR 0[rbp]
	add	rbp, 8
	mov	QWORD PTR -80[rbx], 0
	mov	QWORD PTR -32[rbx], rax
	movzx	eax, BYTE PTR [r12]
	cmp	esi, eax
	jge	.L244
.L230:
	movzx	eax, BYTE PTR 12[rdi]
	cmp	eax, esi
	jg	.L231
	movzx	ecx, BYTE PTR 3[r12]
	test	cl, cl
	js	.L247
.L235:
	mov	DWORD PTR 72[rdi], 1752395091
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L233:
	mov	rdx, rbx
	mov	rcx, rdi
	add	esi, 1
	add	rbx, 112
	call	TrackStop
	mov	BYTE PTR -112[rbx], 0
.L244:
	movzx	eax, BYTE PTR 12[rdi]
.L243:
	cmp	esi, eax
	jl	.L233
	movzx	ecx, BYTE PTR 3[r12]
	test	cl, cl
	jns	.L235
.L247:
	call	m4aSoundMode
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L246:
	test	edx, edx
	js	.L224
.L226:
	cmp	al, BYTE PTR 13[rdi]
	jnb	.L224
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aSongNumStart
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSongNumStart
m4aSongNumStart:
	.seh_endprologue
	movzx	ecx, cx
	sal	rcx, 4
	add	rcx, QWORD PTR .refptr.gSongTable[rip]
	movzx	eax, WORD PTR 8[rcx]
	lea	rdx, [rax+rax*2]
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rax, QWORD PTR [rax+rdx*8]
	cmp	DWORD PTR 72[rax], 1752395091
	jne	.L248
	mov	rdx, QWORD PTR [rcx]
	mov	rcx, rax
	jmp	MPlayStart.part.0
	.p2align 4,,10
	.p2align 3
.L248:
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aSongNumStartOrChange
	.def	m4aSongNumStartOrChange;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSongNumStartOrChange
m4aSongNumStartOrChange:
	.seh_endprologue
	movzx	ecx, cx
	sal	rcx, 4
	add	rcx, QWORD PTR .refptr.gSongTable[rip]
	movzx	eax, WORD PTR 8[rcx]
	lea	rdx, [rax+rax*2]
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rdx, QWORD PTR [rcx]
	cmp	QWORD PTR [rax], rdx
	je	.L251
.L253:
	cmp	DWORD PTR 72[rax], 1752395091
	je	.L260
	ret
	.p2align 4,,10
	.p2align 3
.L260:
	mov	rcx, rax
	jmp	MPlayStart.part.0
	.p2align 4,,10
	.p2align 3
.L251:
	mov	ecx, DWORD PTR 8[rax]
	test	cx, cx
	je	.L253
	test	ecx, ecx
	js	.L253
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aSongNumStartOrContinue
	.def	m4aSongNumStartOrContinue;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSongNumStartOrContinue
m4aSongNumStartOrContinue:
	.seh_endprologue
	movzx	ecx, cx
	sal	rcx, 4
	add	rcx, QWORD PTR .refptr.gSongTable[rip]
	movzx	eax, WORD PTR 8[rcx]
	lea	rdx, [rax+rax*2]
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rdx, QWORD PTR [rcx]
	cmp	QWORD PTR [rax], rdx
	je	.L262
.L267:
	cmp	DWORD PTR 72[rax], 1752395091
	je	.L268
.L261:
	ret
	.p2align 4,,10
	.p2align 3
.L268:
	mov	rcx, rax
	jmp	MPlayStart.part.0
	.p2align 4,,10
	.p2align 3
.L262:
	mov	ecx, DWORD PTR 8[rax]
	test	cx, cx
	je	.L267
	test	ecx, ecx
	jns	.L261
	cmp	DWORD PTR 72[rax], 1752395091
	jne	.L261
	and	ecx, 2147483647
	mov	DWORD PTR 8[rax], ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aSoundVSyncOn
	.def	m4aSoundVSyncOn;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSoundVSyncOn
m4aSoundVSyncOn:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR [rdx]
	cmp	eax, 1752395091
	je	.L269
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8d, -18944
	mov	r9d, -18944
	sub	eax, 10
	mov	WORD PTR 198[rcx], r8w
	mov	WORD PTR 210[rcx], r9w
	mov	BYTE PTR 4[rdx], 0
	mov	DWORD PTR [rdx], eax
.L269:
	ret
	.seh_endproc
	.p2align 4
	.globl	MPlayOpen
	.def	MPlayOpen;	.scl	2;	.type	32;	.endef
	.seh_proc	MPlayOpen
MPlayOpen:
	.seh_endprologue
	test	r8b, r8b
	je	.L274
	movzx	r8d, r8b
	jmp	MPlayOpen.part.0
	.p2align 4,,10
	.p2align 3
.L274:
	ret
	.seh_endproc
	.p2align 4
	.globl	MPlayStart
	.def	MPlayStart;	.scl	2;	.type	32;	.endef
	.seh_proc	MPlayStart
MPlayStart:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	jne	.L276
	jmp	MPlayStart.part.0
	.p2align 4,,10
	.p2align 3
.L276:
	ret
	.seh_endproc
	.p2align 4
	.globl	MPlayStop
	.def	MPlayStop;	.scl	2;	.type	32;	.endef
	.seh_proc	MPlayStop
MPlayStop:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	mov	rsi, rcx
	jne	.L278
	movzx	eax, BYTE PTR 12[rcx]
	mov	rbx, QWORD PTR 56[rcx]
	mov	DWORD PTR 72[rcx], 1752395092
	or	DWORD PTR 8[rcx], -2147483648
	test	al, al
	je	.L280
	lea	rdi, 0[0+rax*8]
	sub	rdi, rax
	sal	rdi, 4
	add	rdi, rbx
	.p2align 4,,10
	.p2align 3
.L281:
	mov	rdx, rbx
	mov	rcx, rsi
	add	rbx, 112
	call	TrackStop
	cmp	rbx, rdi
	jne	.L281
.L280:
	mov	DWORD PTR 72[rsi], 1752395091
.L278:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CgbModVol
	.def	CgbModVol;	.scl	2;	.type	32;	.endef
	.seh_proc	CgbModVol
CgbModVol:
	.seh_endprologue
	mov	rax, rcx
	movzx	ecx, BYTE PTR 2[rcx]
	movzx	edx, BYTE PTR 3[rax]
	cmp	ecx, edx
	jb	.L287
	mov	r8d, ecx
	shr	r8d
	cmp	r8d, edx
	jnb	.L294
.L289:
	add	edx, ecx
	mov	r8d, -1
	shr	edx, 4
	mov	BYTE PTR 10[rax], dl
.L290:
	movzx	ecx, BYTE PTR 6[rax]
	imul	edx, ecx
	add	edx, 15
	sar	edx, 4
	mov	BYTE PTR 25[rax], dl
	movzx	edx, BYTE PTR 28[rax]
	and	edx, r8d
	mov	BYTE PTR 27[rax], dl
	ret
	.p2align 4,,10
	.p2align 3
.L287:
	mov	r8d, edx
	shr	r8d
	cmp	r8d, ecx
	jb	.L289
	add	ecx, edx
	mov	r8d, -16
	mov	edx, ecx
	shr	edx, 4
	cmp	ecx, 255
	ja	.L291
.L295:
	mov	BYTE PTR 10[rax], dl
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L294:
	add	ecx, edx
	mov	r8d, 15
	mov	edx, ecx
	shr	edx, 4
	cmp	ecx, 255
	jbe	.L295
.L291:
	mov	BYTE PTR 10[rax], 15
	mov	edx, 15
	jmp	.L290
	.seh_endproc
	.p2align 4
	.globl	CgbSound
	.def	CgbSound;	.scl	2;	.type	32;	.endef
	.seh_proc	CgbSound
CgbSound:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.SOUND_INFO_PTR[rip]
	mov	esi, 1
	mov	r15, QWORD PTR [rax]
	movzx	edx, BYTE PTR 10[r15]
	mov	rbx, QWORD PTR 32[r15]
	lea	eax, -1[rdx]
	test	dl, dl
	mov	edx, 14
	cmove	eax, edx
	mov	BYTE PTR 10[r15], al
.L341:
	movzx	eax, BYTE PTR [rbx]
	test	al, -57
	je	.L298
	mov	rdi, QWORD PTR .refptr.REG_BASE[rip]
	cmp	esi, 2
	je	.L344
	cmp	esi, 3
	je	.L345
	cmp	esi, 1
	jne	.L384
	lea	rcx, 108[rdi]
	lea	rbp, 113[rdi]
	mov	QWORD PTR 48[rsp], rcx
	lea	r12, 112[rdi]
	lea	r13, 111[rdi]
	lea	r10, 110[rdi]
.L299:
	movzx	ecx, BYTE PTR 10[r15]
	movzx	r14d, BYTE PTR 0[r13]
	mov	DWORD PTR 44[rsp], ecx
	test	al, al
	js	.L385
	test	al, 4
	je	.L312
	movzx	eax, BYTE PTR 13[rbx]
	sub	eax, 1
	mov	BYTE PTR 13[rbx], al
	test	al, al
	jle	.L301
.L383:
	movzx	eax, BYTE PTR 29[rbx]
.L313:
	test	al, 2
	je	.L332
	mov	eax, DWORD PTR 32[rbx]
	cmp	esi, 4
	je	.L333
.L323:
	test	BYTE PTR 1[rbx], 8
	je	.L334
	movzx	edx, BYTE PTR 149[rdi]
	cmp	edx, 63
	jle	.L386
	cmp	edx, 127
	jg	.L334
	add	eax, 1
	and	eax, 2046
	mov	DWORD PTR 32[rbx], eax
	.p2align 4,,10
	.p2align 3
.L334:
	mov	BYTE PTR [r12], al
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L301:
	mov	ecx, esi
	call	CgbOscOff
	mov	BYTE PTR [rbx], 0
.L314:
	mov	BYTE PTR 29[rbx], 0
.L298:
	add	esi, 1
	add	rbx, 88
	cmp	esi, 5
	jne	.L341
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L384:
	lea	rcx, 125[rdi]
	lea	rbp, 137[rdi]
	mov	QWORD PTR 48[rsp], rcx
	lea	r12, 136[rdi]
	lea	r13, 133[rdi]
	lea	r10, 132[rdi]
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L385:
	test	al, 64
	jne	.L301
	mov	BYTE PTR [rbx], 3
	mov	rcx, rbx
	mov	BYTE PTR 29[rbx], 3
	call	CgbModVol
	cmp	esi, 2
	je	.L302
	cmp	esi, 3
	je	.L303
	cmp	esi, 1
	jne	.L304
	movzx	ecx, BYTE PTR 31[rbx]
	mov	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR 56[rsp], r10
	mov	BYTE PTR [rax], cl
	call	cgb_set_sweep
	mov	r10, QWORD PTR 56[rsp]
.L302:
	movzx	eax, BYTE PTR 40[rbx]
	sal	eax, 6
	add	al, BYTE PTR 30[rbx]
	mov	BYTE PTR [r10], al
.L305:
	movzx	edx, BYTE PTR 30[rbx]
	movzx	r14d, BYTE PTR 4[rbx]
	add	r14d, 8
	test	dl, dl
	setne	al
	sal	eax, 6
	mov	BYTE PTR 26[rbx], al
.L308:
	lea	ecx, -1[rsi]
	call	cgb_set_length
	movzx	eax, BYTE PTR 4[rbx]
	mov	BYTE PTR 11[rbx], al
	test	al, al
	jne	.L309
	movzx	eax, BYTE PTR [rbx]
.L310:
	movzx	edx, BYTE PTR 5[rbx]
	sub	eax, 1
	mov	BYTE PTR [rbx], al
	mov	BYTE PTR 11[rbx], dl
	test	dl, dl
	je	.L329
	movzx	eax, BYTE PTR 10[rbx]
	or	BYTE PTR 29[rbx], 1
	cmp	esi, 3
	cmovne	r14d, edx
	mov	BYTE PTR 9[rbx], al
	lea	eax, -1[rdx]
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L333:
	movzx	edx, BYTE PTR [r12]
	and	edx, 8
	or	eax, edx
	mov	BYTE PTR [r12], al
.L336:
	movzx	eax, BYTE PTR 26[rbx]
	and	eax, -64
	add	al, BYTE PTR 33[rbx]
	mov	BYTE PTR 26[rbx], al
	mov	BYTE PTR 0[rbp], al
	movzx	eax, BYTE PTR 29[rbx]
.L332:
	test	al, 1
	je	.L314
	movzx	eax, BYTE PTR 28[rbx]
	movzx	edx, BYTE PTR 141[rdi]
	not	eax
	and	eax, edx
	or	al, BYTE PTR 27[rbx]
	mov	BYTE PTR 141[rdi], al
	cmp	esi, 3
	je	.L342
	movzx	eax, BYTE PTR 9[rbx]
	and	r14d, 15
	sal	eax, 4
	add	eax, r14d
	mov	BYTE PTR 0[r13], al
	movzx	eax, BYTE PTR 26[rbx]
	or	eax, -128
	mov	BYTE PTR 0[rbp], al
	cmp	esi, 1
	je	.L387
.L339:
	lea	edi, -1[rsi]
	movzx	edx, BYTE PTR 0[r13]
	mov	ecx, edi
	call	cgb_set_envelope
	movzx	edx, BYTE PTR 0[rbp]
	mov	ecx, edi
	and	edx, 64
	call	cgb_toggle_length
	mov	ecx, edi
	call	cgb_trigger_note
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L312:
	test	al, 64
	je	.L315
	test	al, 3
	je	.L315
	movzx	edx, BYTE PTR 7[rbx]
	and	eax, -4
	mov	BYTE PTR [rbx], al
	mov	BYTE PTR 11[rbx], dl
	test	dl, dl
	je	.L318
	or	BYTE PTR 29[rbx], 1
	cmp	esi, 3
	lea	eax, -1[rdx]
	cmovne	r14d, edx
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L315:
	movzx	eax, BYTE PTR 11[rbx]
.L317:
	test	al, al
	jne	.L382
	cmp	esi, 3
	je	.L388
.L320:
	mov	rcx, rbx
	call	CgbModVol
	movzx	eax, BYTE PTR [rbx]
	mov	edx, eax
	and	edx, 3
	jne	.L321
	movzx	eax, BYTE PTR 9[rbx]
	sub	eax, 1
	mov	BYTE PTR 9[rbx], al
	test	al, al
	jle	.L318
	movzx	eax, BYTE PTR 7[rbx]
	sub	eax, 1
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L321:
	cmp	dl, 1
	je	.L326
	movzx	ecx, BYTE PTR 9[rbx]
	cmp	dl, 2
	je	.L389
	add	ecx, 1
	mov	BYTE PTR 9[rbx], cl
	cmp	cl, BYTE PTR 10[rbx]
	jnb	.L310
	movzx	eax, BYTE PTR 4[rbx]
	.p2align 4,,10
	.p2align 3
.L382:
	sub	eax, 1
.L311:
	mov	edx, DWORD PTR 44[rsp]
	mov	BYTE PTR 11[rbx], al
	test	edx, edx
	jne	.L383
	mov	DWORD PTR 44[rsp], -1
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L345:
	lea	rcx, 124[rdi]
	lea	rbp, 129[rdi]
	mov	QWORD PTR 48[rsp], rcx
	lea	r12, 128[rdi]
	lea	r13, 127[rdi]
	lea	r10, 126[rdi]
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L344:
	lea	rcx, 109[rdi]
	lea	rbp, 121[rdi]
	mov	QWORD PTR 48[rsp], rcx
	lea	r12, 120[rdi]
	lea	r13, 117[rdi]
	lea	r10, 116[rdi]
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L303:
	mov	rax, QWORD PTR 48[rbx]
	cmp	QWORD PTR 40[rbx], rax
	je	.L306
	mov	rax, QWORD PTR 48[rsp]
	mov	QWORD PTR 56[rsp], r10
	mov	BYTE PTR [rax], 64
	mov	rax, QWORD PTR 40[rbx]
	mov	edx, DWORD PTR [rax]
	mov	DWORD PTR 156[rdi], edx
	mov	edx, DWORD PTR 4[rax]
	mov	DWORD PTR 160[rdi], edx
	mov	edx, DWORD PTR 8[rax]
	mov	DWORD PTR 164[rdi], edx
	mov	edx, DWORD PTR 12[rax]
	mov	DWORD PTR 168[rdi], edx
	mov	QWORD PTR 48[rbx], rax
	call	cgb_set_wavram
	mov	r10, QWORD PTR 56[rsp]
.L306:
	mov	rax, QWORD PTR 48[rsp]
	mov	BYTE PTR [rax], 0
	movzx	edx, BYTE PTR 30[rbx]
	cmp	dl, 1
	mov	BYTE PTR [r10], dl
	sbb	eax, eax
	and	eax, -64
	sub	eax, 64
	mov	BYTE PTR 26[rbx], al
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L329:
	cmp	BYTE PTR 6[rbx], 0
	jne	.L330
	and	eax, -4
	mov	BYTE PTR [rbx], al
.L318:
	movzx	eax, BYTE PTR 10[rbx]
	movzx	edx, BYTE PTR 12[rbx]
	imul	eax, edx
	add	eax, 255
	sar	eax, 8
	mov	BYTE PTR 9[rbx], al
	je	.L301
	movzx	edx, BYTE PTR 29[rbx]
	or	BYTE PTR [rbx], 4
	mov	eax, edx
	or	eax, 1
	mov	BYTE PTR 29[rbx], al
	cmp	esi, 3
	jne	.L347
	and	edx, 2
	jne	.L390
	movzx	eax, BYTE PTR 28[rbx]
	movzx	edx, BYTE PTR 141[rdi]
	not	eax
	and	eax, edx
	or	al, BYTE PTR 27[rbx]
	mov	BYTE PTR 141[rdi], al
	.p2align 4,,10
	.p2align 3
.L342:
	movzx	eax, BYTE PTR 9[rbx]
	mov	rdx, QWORD PTR .refptr.gCgb3Vol[rip]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR 0[r13], al
	cmp	BYTE PTR 26[rbx], 0
	jns	.L339
	mov	rax, QWORD PTR 48[rsp]
	mov	BYTE PTR [rax], -128
	movzx	eax, BYTE PTR 26[rbx]
	mov	BYTE PTR 0[rbp], al
	and	eax, 127
	mov	BYTE PTR 26[rbx], al
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L309:
	mov	BYTE PTR 9[rbx], 0
	sub	eax, 1
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L304:
	movzx	eax, BYTE PTR 30[rbx]
	mov	BYTE PTR [r10], al
	movzx	eax, BYTE PTR 40[rbx]
	sal	eax, 3
	mov	BYTE PTR [r12], al
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L330:
	sub	eax, 1
	or	BYTE PTR 29[rbx], 1
	cmp	esi, 3
	mov	BYTE PTR [rbx], al
	mov	eax, 8
	cmovne	r14d, eax
.L326:
	movzx	eax, BYTE PTR 25[rbx]
	mov	BYTE PTR 9[rbx], al
	mov	eax, 6
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L347:
	mov	r14d, 8
	jmp	.L313
	.p2align 4,,10
	.p2align 3
.L386:
	add	eax, 2
	and	eax, 2044
	mov	DWORD PTR 32[rbx], eax
	jmp	.L334
.L389:
	sub	ecx, 1
	mov	BYTE PTR 9[rbx], cl
	cmp	cl, BYTE PTR 25[rbx]
	jle	.L329
	movzx	eax, BYTE PTR 5[rbx]
	sub	eax, 1
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L388:
	or	BYTE PTR 29[rbx], 1
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L387:
	mov	rax, QWORD PTR 48[rsp]
	movzx	eax, BYTE PTR [rax]
	test	al, 8
	jne	.L339
	movzx	eax, BYTE PTR 26[rbx]
	or	eax, -128
	mov	BYTE PTR 0[rbp], al
	jmp	.L339
.L390:
	mov	eax, DWORD PTR 32[rbx]
	jmp	.L323
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayTempoControl
	.def	m4aMPlayTempoControl;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayTempoControl
m4aMPlayTempoControl:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	je	.L393
	ret
	.p2align 4,,10
	.p2align 3
.L393:
	movzx	eax, WORD PTR 40[rcx]
	mov	WORD PTR 42[rcx], dx
	movzx	edx, dx
	imul	eax, edx
	sar	eax, 8
	mov	WORD PTR 44[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayVolumeControl
	.def	m4aMPlayVolumeControl;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayVolumeControl
m4aMPlayVolumeControl:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	mov	r11, rcx
	jne	.L394
	movzx	ecx, BYTE PTR 12[rcx]
	mov	rax, QWORD PTR 56[r11]
	test	cl, cl
	je	.L399
	lea	r9, 0[0+rcx*8]
	shr	r8w, 2
	movzx	edx, dx
	sub	r9, rcx
	mov	ecx, 1
	sal	r9, 4
	add	r9, rax
	.p2align 4,,10
	.p2align 3
.L398:
	test	edx, ecx
	je	.L397
	movzx	r10d, BYTE PTR [rax]
	test	r10b, r10b
	jns	.L397
	or	r10d, 3
	mov	BYTE PTR 19[rax], r8b
	mov	BYTE PTR [rax], r10b
.L397:
	add	rax, 112
	add	ecx, ecx
	cmp	r9, rax
	jne	.L398
.L399:
	mov	DWORD PTR 72[r11], 1752395091
.L394:
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayPitchControl
	.def	m4aMPlayPitchControl;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayPitchControl
m4aMPlayPitchControl:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	mov	r11, rcx
	mov	r10d, edx
	mov	ebx, r8d
	jne	.L404
	movzx	ecx, BYTE PTR 12[rcx]
	mov	rax, QWORD PTR 56[r11]
	test	cl, cl
	je	.L409
	lea	r9, 0[0+rcx*8]
	mov	edx, r8d
	sub	r9, rcx
	movzx	edx, dh
	mov	ecx, 1
	sal	r9, 4
	mov	r8d, edx
	movzx	edx, r10w
	add	r9, rax
	.p2align 4,,10
	.p2align 3
.L408:
	test	edx, ecx
	je	.L407
	movzx	r10d, BYTE PTR [rax]
	test	r10b, r10b
	jns	.L407
	or	r10d, 12
	mov	BYTE PTR 11[rax], r8b
	mov	BYTE PTR 13[rax], bl
	mov	BYTE PTR [rax], r10b
.L407:
	add	rax, 112
	add	ecx, ecx
	cmp	r9, rax
	jne	.L408
.L409:
	mov	DWORD PTR 72[r11], 1752395091
.L404:
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayPanpotControl
	.def	m4aMPlayPanpotControl;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayPanpotControl
m4aMPlayPanpotControl:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	mov	r11, rcx
	jne	.L414
	movzx	ecx, BYTE PTR 12[rcx]
	mov	rax, QWORD PTR 56[r11]
	test	cl, cl
	je	.L419
	lea	r9, 0[0+rcx*8]
	movzx	edx, dx
	sub	r9, rcx
	mov	ecx, 1
	sal	r9, 4
	add	r9, rax
	.p2align 4,,10
	.p2align 3
.L418:
	test	edx, ecx
	je	.L417
	movzx	r10d, BYTE PTR [rax]
	test	r10b, r10b
	jns	.L417
	or	r10d, 3
	mov	BYTE PTR 21[rax], r8b
	mov	BYTE PTR [rax], r10b
.L417:
	add	rax, 112
	add	ecx, ecx
	cmp	r9, rax
	jne	.L418
.L419:
	mov	DWORD PTR 72[r11], 1752395091
.L414:
	ret
	.seh_endproc
	.p2align 4
	.globl	ClearModM
	.def	ClearModM;	.scl	2;	.type	32;	.endef
	.seh_proc	ClearModM
ClearModM:
	.seh_endprologue
	movzx	edx, BYTE PTR [rcx]
	mov	eax, edx
	or	eax, 3
	cmp	BYTE PTR 24[rcx], 0
	mov	BYTE PTR 26[rcx], 0
	mov	BYTE PTR 22[rcx], 0
	jne	.L426
	mov	eax, edx
	or	eax, 12
.L426:
	mov	BYTE PTR [rcx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayModDepthSet
	.def	m4aMPlayModDepthSet;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayModDepthSet
m4aMPlayModDepthSet:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	mov	r10, rcx
	jne	.L427
	movzx	ecx, BYTE PTR 12[rcx]
	mov	rax, QWORD PTR 56[r10]
	test	cl, cl
	je	.L435
	lea	r9, 0[0+rcx*8]
	movzx	edx, dx
	sub	r9, rcx
	mov	ecx, 1
	sal	r9, 4
	add	r9, rax
	jmp	.L434
	.p2align 4,,10
	.p2align 3
.L431:
	add	rax, 112
	add	ecx, ecx
	cmp	rax, r9
	je	.L435
.L434:
	test	edx, ecx
	je	.L431
	movzx	r11d, BYTE PTR [rax]
	test	r11b, r11b
	jns	.L431
	mov	BYTE PTR 23[rax], r8b
	test	r8b, r8b
	jne	.L431
	cmp	BYTE PTR 24[rax], 0
	mov	BYTE PTR 26[rax], 0
	mov	BYTE PTR 22[rax], 0
	jne	.L433
	or	r11d, 12
	add	rax, 112
	add	ecx, ecx
	mov	BYTE PTR -112[rax], r11b
	cmp	rax, r9
	jne	.L434
	.p2align 4,,10
	.p2align 3
.L435:
	mov	DWORD PTR 72[r10], 1752395091
.L427:
	ret
	.p2align 4,,10
	.p2align 3
.L433:
	or	r11d, 3
	mov	BYTE PTR [rax], r11b
	jmp	.L431
	.seh_endproc
	.p2align 4
	.globl	m4aMPlayLFOSpeedSet
	.def	m4aMPlayLFOSpeedSet;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aMPlayLFOSpeedSet
m4aMPlayLFOSpeedSet:
	.seh_endprologue
	cmp	DWORD PTR 72[rcx], 1752395091
	mov	r10, rcx
	jne	.L437
	movzx	ecx, BYTE PTR 12[rcx]
	mov	rax, QWORD PTR 56[r10]
	test	cl, cl
	je	.L445
	lea	r9, 0[0+rcx*8]
	movzx	edx, dx
	sub	r9, rcx
	mov	ecx, 1
	sal	r9, 4
	add	r9, rax
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L441:
	add	rax, 112
	add	ecx, ecx
	cmp	rax, r9
	je	.L445
.L444:
	test	edx, ecx
	je	.L441
	movzx	r11d, BYTE PTR [rax]
	test	r11b, r11b
	jns	.L441
	mov	BYTE PTR 25[rax], r8b
	test	r8b, r8b
	jne	.L441
	cmp	BYTE PTR 24[rax], 0
	mov	BYTE PTR 26[rax], 0
	mov	BYTE PTR 22[rax], 0
	jne	.L443
	or	r11d, 12
	add	rax, 112
	add	ecx, ecx
	mov	BYTE PTR -112[rax], r11b
	cmp	rax, r9
	jne	.L444
	.p2align 4,,10
	.p2align 3
.L445:
	mov	DWORD PTR 72[r10], 1752395091
.L437:
	ret
	.p2align 4,,10
	.p2align 3
.L443:
	or	r11d, 3
	mov	BYTE PTR [rax], r11b
	jmp	.L441
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xxx
	.def	MP2K_event_xxx;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xxx
MP2K_event_xxx:
	.seh_endprologue
	rex.W jmp	[QWORD PTR gMPlayJumpTable[rip]]
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xwave
	.def	MP2K_event_xwave;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xwave
MP2K_event_xwave:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	mov	ecx, DWORD PTR [rax]
	add	rax, 8
	mov	QWORD PTR 48[rdx], rcx
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xtype
	.def	MP2K_event_xtype;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xtype
MP2K_event_xtype:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 40[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xatta
	.def	MP2K_event_xatta;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xatta
MP2K_event_xatta:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 56[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xdeca
	.def	MP2K_event_xdeca;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xdeca
MP2K_event_xdeca:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 57[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xsust
	.def	MP2K_event_xsust;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xsust
MP2K_event_xsust:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 58[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xrele
	.def	MP2K_event_xrele;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xrele
MP2K_event_xrele:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 59[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xiecv
	.def	MP2K_event_xiecv;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xiecv
MP2K_event_xiecv:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 30[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xiecl
	.def	MP2K_event_xiecl;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xiecl
MP2K_event_xiecl:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 31[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xleng
	.def	MP2K_event_xleng;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xleng
MP2K_event_xleng:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 42[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_xswee
	.def	MP2K_event_xswee;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_xswee
MP2K_event_xswee:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	add	rax, 1
	mov	BYTE PTR 43[rdx], cl
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.globl	gMPlayInfo_SE3
	.bss
	.align 32
gMPlayInfo_SE3:
	.space 96
	.globl	gMPlayMemAccArea
	.align 32
gMPlayMemAccArea:
	.space 32
	.globl	gMPlayInfo_SE2
	.align 32
gMPlayInfo_SE2:
	.space 96
	.globl	gMPlayInfo_SE1
	.align 32
gMPlayInfo_SE1:
	.space 96
	.globl	gMPlayInfo_BGM
	.align 32
gMPlayInfo_BGM:
	.space 96
	.globl	gCgbChans
	.align 32
gCgbChans:
	.space 352
	.globl	gMPlayJumpTable
	.align 32
gMPlayJumpTable:
	.space 288
	.globl	gSoundInfo
	.align 32
gSoundInfo:
	.space 40448
	.globl	gMPlayTrack_SE3
	.align 32
gMPlayTrack_SE3:
	.space 1792
	.globl	gMPlayTrack_SE2
	.align 32
gMPlayTrack_SE2:
	.space 1792
	.globl	gMPlayTrack_SE1
	.align 32
gMPlayTrack_SE1:
	.space 1792
	.globl	gMPlayTrack_BGM
	.align 32
gMPlayTrack_BGM:
	.space 1792
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	800
	.long	48000
	.align 8
.LC6:
	.word	150
	.word	256
	.word	150
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	cgb_set_envelope;	.scl	2;	.type	32;	.endef
	.def	cgb_trigger_note;	.scl	2;	.type	32;	.endef
	.def	TrackStop;	.scl	2;	.type	32;	.endef
	.def	umul3232H32;	.scl	2;	.type	32;	.endef
	.def	SoundMain;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_endtie;	.scl	2;	.type	32;	.endef
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_nxx;	.scl	2;	.type	32;	.endef
	.def	MPlayJumpTableCopy;	.scl	2;	.type	32;	.endef
	.def	cgb_set_sweep;	.scl	2;	.type	32;	.endef
	.def	cgb_set_length;	.scl	2;	.type	32;	.endef
	.def	cgb_toggle_length;	.scl	2;	.type	32;	.endef
	.def	cgb_set_wavram;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCgb3Vol, "dr"
	.globl	.refptr.gCgb3Vol
	.linkonce	discard
.refptr.gCgb3Vol:
	.quad	gCgb3Vol
	.section	.rdata$.refptr.MP2K_event_nxx, "dr"
	.globl	.refptr.MP2K_event_nxx
	.linkonce	discard
.refptr.MP2K_event_nxx:
	.quad	MP2K_event_nxx
	.section	.rdata$.refptr.TrackStop, "dr"
	.globl	.refptr.TrackStop
	.linkonce	discard
.refptr.TrackStop:
	.quad	TrackStop
	.section	.rdata$.refptr.MP2K_event_endtie, "dr"
	.globl	.refptr.MP2K_event_endtie
	.linkonce	discard
.refptr.MP2K_event_endtie:
	.quad	MP2K_event_endtie
	.section	.rdata$.refptr.MP2K_event_mod, "dr"
	.globl	.refptr.MP2K_event_mod
	.linkonce	discard
.refptr.MP2K_event_mod:
	.quad	MP2K_event_mod
	.section	.rdata$.refptr.MP2K_event_lfos, "dr"
	.globl	.refptr.MP2K_event_lfos
	.linkonce	discard
.refptr.MP2K_event_lfos:
	.quad	MP2K_event_lfos
	.section	.rdata$.refptr.gMPlayTable, "dr"
	.globl	.refptr.gMPlayTable
	.linkonce	discard
.refptr.gMPlayTable:
	.quad	gMPlayTable
	.section	.rdata$.refptr.gSongTable, "dr"
	.globl	.refptr.gSongTable
	.linkonce	discard
.refptr.gSongTable:
	.quad	gSongTable
	.section	.rdata$.refptr.gFreqTable, "dr"
	.globl	.refptr.gFreqTable
	.linkonce	discard
.refptr.gFreqTable:
	.quad	gFreqTable
	.section	.rdata$.refptr.gScaleTable, "dr"
	.globl	.refptr.gScaleTable
	.linkonce	discard
.refptr.gScaleTable:
	.quad	gScaleTable
	.section	.rdata$.refptr.MP2KPlayerMain, "dr"
	.globl	.refptr.MP2KPlayerMain
	.linkonce	discard
.refptr.MP2KPlayerMain:
	.quad	MP2KPlayerMain
	.section	.rdata$.refptr.SOUND_INFO_PTR, "dr"
	.globl	.refptr.SOUND_INFO_PTR
	.linkonce	discard
.refptr.SOUND_INFO_PTR:
	.quad	SOUND_INFO_PTR
	.section	.rdata$.refptr.gCgbFreqTable, "dr"
	.globl	.refptr.gCgbFreqTable
	.linkonce	discard
.refptr.gCgbFreqTable:
	.quad	gCgbFreqTable
	.section	.rdata$.refptr.gCgbScaleTable, "dr"
	.globl	.refptr.gCgbScaleTable
	.linkonce	discard
.refptr.gCgbScaleTable:
	.quad	gCgbScaleTable
	.section	.rdata$.refptr.gNoiseTable, "dr"
	.globl	.refptr.gNoiseTable
	.linkonce	discard
.refptr.gNoiseTable:
	.quad	gNoiseTable
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gXcmdTable, "dr"
	.globl	.refptr.gXcmdTable
	.linkonce	discard
.refptr.gXcmdTable:
	.quad	gXcmdTable
