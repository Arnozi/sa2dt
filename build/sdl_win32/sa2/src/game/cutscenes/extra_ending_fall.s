	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8091480
	.def	sub_8091480;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091480
sub_8091480:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8091468
	.def	sub_8091468;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091468
sub_8091468:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	CreateExtraEndingSlidesCutScene
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 40
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	sub_8090CA0.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8090CA0.part.0
sub_8090CA0.part.0:
	.seh_endprologue
	lea	r9, gUnknown_080E143C[rip]
	xor	r8d, r8d
	add	rcx, 1720
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L12:
	sub	edx, r10d
.L8:
	mov	DWORD PTR [rcx], edx
	mov	edx, eax
	sar	edx, 7
	sub	DWORD PTR 4[rcx], edx
	add	eax, DWORD PTR 8[r9]
	mov	DWORD PTR 8[rcx], eax
.L6:
	add	r8d, 1
	add	rcx, 12
	add	r9, 12
	cmp	r8b, 6
	je	.L11
.L9:
	mov	edx, DWORD PTR [rcx]
	lea	eax, 2559[rdx]
	cmp	eax, 66558
	jbe	.L5
	mov	eax, DWORD PTR 4[rcx]
	add	eax, 2559
	cmp	eax, 46078
	ja	.L6
.L5:
	mov	eax, DWORD PTR 8[rcx]
	mov	r10d, eax
	sar	r10d, 6
	cmp	r8b, 2
	jbe	.L12
	add	edx, r10d
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L11:
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateExtraEndingFallCutScene
	.def	CreateExtraEndingFallCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateExtraEndingFallCutScene
CreateExtraEndingFallCutScene:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	edx, 65535
	xor	ecx, ecx
	mov	ebx, -25597
	xor	esi, esi
	call	SeedRng
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r11d, 4416
	mov	WORD PTR [rax], r11w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR [rax], bx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 1090453504
	call	m4aMPlayAllStop
	mov	ecx, 43
	call	m4aSongNumStart
	lea	rax, sub_8091480[rip]
	xor	r9d, r9d
	lea	rcx, sub_8090480[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	r8d, 12544
	mov	edx, 1792
	call	TaskCreate
	pxor	xmm0, xmm0
	xor	r10d, r10d
	xor	ecx, ecx
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC2[rip]
	lea	r9, gUnknown_080E1484[rip+72]
	mov	QWORD PTR 1224[rbx], 0
	mov	DWORD PTR 1196[rbx], 50344448
	mov	BYTE PTR 1200[rbx], 5
	mov	QWORD PTR 1214[rbx], rax
	mov	WORD PTR 1222[rbx], si
	mov	QWORD PTR 1296[rbx], 0
	mov	DWORD PTR 1304[rbx], 0
	mov	QWORD PTR 1444[rbx], 0
	movups	XMMWORD PTR 1232[rbx], xmm0
	movups	XMMWORD PTR 1248[rbx], xmm0
	movups	XMMWORD PTR 1264[rbx], xmm0
	movups	XMMWORD PTR 1280[rbx], xmm0
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rdx, rbx
	lea	rax, gUnknown_080E1484[rip]
	sub	rdx, r10
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L15:
	cmp	rcx, 2
	je	.L37
	mov	DWORD PTR 1456[rdx], 0
.L16:
	add	rax, 12
	add	rdx, 20
	cmp	rax, r9
	je	.L38
.L18:
	cmp	rcx, 1
	ja	.L15
	mov	r8d, DWORD PTR [rax+rcx*4]
	add	rax, 12
	add	rdx, 20
	sal	r8d, 8
	mov	DWORD PTR 1436[rdx], r8d
	cmp	rax, r9
	jne	.L18
.L38:
	add	rcx, 1
	sub	r10, 4
	cmp	rcx, 5
	jne	.L14
	xor	eax, eax
	lea	rcx, gUnknown_080E13AC[rip]
	.p2align 4,,10
	.p2align 3
.L19:
	mov	edx, DWORD PTR [rcx+rax]
	sal	edx, 8
	mov	DWORD PTR 1576[rbx+rax], edx
	add	rax, 12
	cmp	rax, 144
	jne	.L19
	mov	DWORD PTR 1720[rbx], 30720
	xor	eax, eax
	lea	rcx, gUnknown_080E13AC[rip+4]
	mov	DWORD PTR 1732[rbx], 30720
	mov	DWORD PTR 1744[rbx], 30720
	mov	DWORD PTR 1756[rbx], 30720
	mov	DWORD PTR 1768[rbx], 30720
	mov	DWORD PTR 1780[rbx], 30720
	.p2align 4,,10
	.p2align 3
.L20:
	mov	edx, DWORD PTR [rcx+rax]
	sal	edx, 8
	mov	DWORD PTR 1580[rbx+rax], edx
	add	rax, 12
	cmp	rax, 144
	jne	.L20
	xor	eax, eax
	lea	rcx, gUnknown_080E143C[rip+4]
	.p2align 4,,10
	.p2align 3
.L21:
	mov	edx, DWORD PTR [rcx+rax]
	sal	edx, 8
	mov	DWORD PTR 1724[rbx+rax], edx
	add	rax, 12
	cmp	rax, 72
	jne	.L21
	xor	eax, eax
	lea	rcx, gUnknown_080E13AC[rip+8]
	.p2align 4,,10
	.p2align 3
.L22:
	mov	edx, DWORD PTR [rcx+rax]
	mov	DWORD PTR 1584[rbx+rax], edx
	add	rax, 12
	cmp	rax, 144
	jne	.L22
	mov	DWORD PTR 1728[rbx], 704
	mov	edi, 1
	lea	rsi, 1308[rbx]
	lea	rbp, 1428[rbx]
	mov	DWORD PTR 1740[rbx], 448
	mov	DWORD PTR 1752[rbx], 640
	mov	DWORD PTR 1764[rbx], 768
	mov	DWORD PTR 1776[rbx], 512
	mov	DWORD PTR 1788[rbx], 480
	mov	QWORD PTR 1201[rbx], 0
	mov	DWORD PTR 1209[rbx], 0
	.p2align 4,,10
	.p2align 3
.L23:
	call	Random
	mov	DWORD PTR 4[rsi], 0
	add	rsi, 12
	movzx	eax, al
	mov	DWORD PTR -12[rsi], eax
	call	Random
	and	eax, 3
	lea	ecx, 11[rax]
	mov	eax, edi
	sal	eax, cl
	mov	DWORD PTR -4[rsi], eax
	cmp	rbp, rsi
	jne	.L23
	mov	r10d, 1
	mov	ebp, 64
	xor	edi, edi
	mov	rax, QWORD PTR .LC3[rip]
	mov	r12, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 1184[rbx], r10w
	lea	r14, gUnknown_080E12FC[rip+28]
	lea	rsi, 864[rbx]
	mov	DWORD PTR 1452[rbx], -1
	lea	r13, 2[r14]
	mov	QWORD PTR 1188[rbx], rax
	lea	rax, 65536[r12]
.L26:
	mov	QWORD PTR 8[rsi], rax
	add	rax, 2560
	mov	QWORD PTR 1224[rbx], rax
	movzx	eax, WORD PTR [r14+rdi*8]
	mov	BYTE PTR 49[rsi], -1
	mov	WORD PTR 18[rsi], ax
	movzx	eax, BYTE PTR 0[r13+rdi*8]
	mov	DWORD PTR 38[rsi], 0
	mov	BYTE PTR 48[rsi], al
	cmp	rdi, 1
	jbe	.L24
	xor	ecx, ecx
	xor	r8d, r8d
	xor	r9d, r9d
	mov	DWORD PTR 32[rsi], 0
	lea	eax, 576[rbp]
	mov	WORD PTR 16[rsi], cx
	mov	rcx, rsi
	mov	WORD PTR 42[rsi], ax
	mov	WORD PTR 36[rsi], r8w
	mov	WORD PTR 44[rsi], r9w
	mov	BYTE PTR 50[rsi], 16
	mov	BYTE PTR 53[rsi], 0
	mov	DWORD PTR 56[rsi], -1
	call	UpdateSpriteAnimation
	cmp	rdi, 3
	je	.L25
	add	ebp, 64
	add	rsi, 64
	mov	edi, 3
.L28:
	mov	rax, QWORD PTR 1224[rbx]
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L37:
	mov	r8d, DWORD PTR 8[rax]
	mov	DWORD PTR 1464[rdx+r10], r8d
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L24:
	xor	eax, eax
	xor	edx, edx
	xor	ecx, ecx
	mov	WORD PTR 42[rsi], bp
	mov	WORD PTR 44[rsi], cx
	mov	rcx, rsi
	add	rdi, 1
	add	ebp, 64
	mov	DWORD PTR 32[rsi], 0
	add	rsi, 64
	mov	WORD PTR -48[rsi], ax
	mov	WORD PTR -28[rsi], dx
	mov	BYTE PTR -14[rsi], 16
	mov	BYTE PTR -11[rsi], 0
	mov	DWORD PTR -8[rsi], -1
	call	UpdateSpriteAnimation
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rax, QWORD PTR 1224[rbx]
	movzx	r13d, WORD PTR .LC4[rip]
	mov	DWORD PTR 112[rbx], 53608448
	lea	rcx, 96[rbx]
	mov	BYTE PTR 146[rbx], 16
	lea	rdi, gUnknown_080E12FC[rip]
	lea	rsi, 288[rbx]
	mov	QWORD PTR 104[rbx], rax
	add	rax, 1344
	lea	rbp, 672[rbx]
	mov	QWORD PTR 1224[rbx], rax
	xor	eax, eax
	mov	WORD PTR 144[rbx], r13w
	mov	BYTE PTR 149[rbx], 0
	mov	QWORD PTR 128[rbx], 0
	mov	DWORD PTR 136[rbx], 16777216
	mov	WORD PTR 140[rbx], ax
	mov	DWORD PTR 152[rbx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1224[rbx]
	mov	WORD PTR 208[rbx], r13w
	lea	rcx, 160[rbx]
	mov	DWORD PTR 176[rbx], 53805056
	mov	QWORD PTR 168[rbx], rax
	sub	rax, -128
	mov	QWORD PTR 1224[rbx], rax
	xor	eax, eax
	mov	BYTE PTR 210[rbx], 16
	mov	BYTE PTR 213[rbx], 0
	mov	QWORD PTR 192[rbx], 0
	mov	DWORD PTR 200[rbx], 29360128
	mov	WORD PTR 204[rbx], ax
	mov	DWORD PTR 216[rbx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1224[rbx]
	xor	edx, edx
	mov	WORD PTR 272[rbx], r13w
	mov	BYTE PTR 274[rbx], 16
	lea	rcx, 224[rbx]
	mov	QWORD PTR 232[rbx], rax
	add	rax, 2048
	mov	QWORD PTR 1224[rbx], rax
	mov	DWORD PTR 240[rbx], 51838976
	mov	BYTE PTR 277[rbx], 0
	mov	QWORD PTR 256[rbx], 0
	mov	DWORD PTR 264[rbx], 37748736
	mov	WORD PTR 268[rbx], dx
	mov	DWORD PTR 280[rbx], -1
	call	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L27:
	mov	rdx, QWORD PTR 1224[rbx]
	mov	r14d, 384
	mov	rcx, rsi
	add	rsi, 64
	add	rdi, 8
	mov	QWORD PTR -56[rsi], rdx
	mov	eax, DWORD PTR 96[rdi]
	sal	eax, 5
	add	rdx, rax
	movzx	eax, WORD PTR 100[rdi]
	mov	QWORD PTR 1224[rbx], rdx
	mov	WORD PTR -46[rsi], ax
	movzx	eax, BYTE PTR 102[rdi]
	mov	BYTE PTR -15[rsi], -1
	mov	BYTE PTR -16[rsi], al
	xor	eax, eax
	mov	WORD PTR -48[rsi], ax
	xor	eax, eax
	mov	WORD PTR -28[rsi], ax
	xor	eax, eax
	mov	DWORD PTR -26[rsi], 0
	mov	WORD PTR -22[rsi], r14w
	mov	WORD PTR -20[rsi], ax
	mov	BYTE PTR -14[rsi], 16
	mov	BYTE PTR -11[rsi], 0
	mov	DWORD PTR -32[rsi], 0
	mov	DWORD PTR -8[rsi], -1
	call	UpdateSpriteAnimation
	cmp	rbp, rsi
	jne	.L27
	mov	rax, QWORD PTR 1224[rbx]
	xor	r8d, r8d
	mov	rcx, rbp
	xor	esi, esi
	mov	WORD PTR 716[rbx], r8w
	mov	edi, 64
	xor	ebp, ebp
	mov	QWORD PTR 680[rbx], rax
	sub	rax, -128
	mov	QWORD PTR 1224[rbx], rax
	mov	WORD PTR 720[rbx], r13w
	mov	DWORD PTR 688[rbx], 52297728
	mov	BYTE PTR 722[rbx], 16
	mov	BYTE PTR 725[rbx], 1
	mov	QWORD PTR 704[rbx], 0
	mov	DWORD PTR 712[rbx], 20971520
	mov	DWORD PTR 728[rbx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1224[rbx]
	xor	r9d, r9d
	mov	WORD PTR 784[rbx], r13w
	mov	WORD PTR 780[rbx], r9w
	lea	rcx, 736[rbx]
	mov	QWORD PTR 744[rbx], rax
	add	rax, 768
	mov	QWORD PTR 1224[rbx], rax
	mov	DWORD PTR 752[rbx], 52363264
	mov	BYTE PTR 786[rbx], 16
	mov	BYTE PTR 789[rbx], 0
	mov	QWORD PTR 768[rbx], 0
	mov	DWORD PTR 776[rbx], 12582912
	mov	DWORD PTR 792[rbx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1224[rbx]
	xor	r10d, r10d
	mov	WORD PTR 1168[rbx], r13w
	mov	WORD PTR 1164[rbx], r10w
	lea	rcx, 1120[rbx]
	mov	QWORD PTR 1128[rbx], rax
	add	rax, 960
	mov	QWORD PTR 1224[rbx], rax
	mov	DWORD PTR 1136[rbx], 53936128
	mov	BYTE PTR 1170[rbx], 16
	mov	BYTE PTR 1173[rbx], 0
	mov	QWORD PTR 1152[rbx], 0
	mov	DWORD PTR 1160[rbx], 0
	mov	DWORD PTR 1176[rbx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1224[rbx]
	xor	r11d, r11d
	mov	WORD PTR 848[rbx], r13w
	mov	BYTE PTR 850[rbx], 16
	lea	rcx, 800[rbx]
	mov	QWORD PTR 808[rbx], rax
	add	rax, 1120
	mov	QWORD PTR 1224[rbx], rax
	mov	DWORD PTR 816[rbx], 53739520
	mov	BYTE PTR 853[rbx], 0
	mov	QWORD PTR 832[rbx], 0
	mov	DWORD PTR 840[rbx], 33554432
	mov	WORD PTR 844[rbx], r11w
	mov	DWORD PTR 856[rbx], -1
	call	UpdateSpriteAnimation
	movdqu	xmm0, XMMWORD PTR .LC12[rip]
	mov	QWORD PTR 8[rbx], r12
	mov	rcx, rbx
	add	r12, 57344
	mov	WORD PTR 18[rbx], si
	mov	QWORD PTR 24[rbx], r12
	mov	WORD PTR 60[rbx], di
	mov	BYTE PTR 62[rbx], 0
	mov	WORD PTR 66[rbx], bp
	movups	XMMWORD PTR 44[rbx], xmm0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.globl	sub_809066C
	.def	sub_809066C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_809066C
sub_809066C:
	.seh_endprologue
	movzx	edx, BYTE PTR 1196[rcx]
	mov	rax, rcx
	cmp	dl, 12
	ja	.L40
	mov	DWORD PTR 1304[rcx], 20480
	mov	edx, DWORD PTR 1428[rcx]
	sal	edx, 8
	mov	DWORD PTR 1300[rcx], edx
.L39:
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	mov	r8d, DWORD PTR 1304[rcx]
	cmp	dl, 13
	je	.L60
	cmp	dl, 15
	je	.L61
	cmp	dl, 16
	ja	.L48
	movzx	r10d, WORD PTR 1220[rcx]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	ecx, 0[0+r10*8]
	and	ecx, 1016
	movzx	r9d, WORD PTR [r9+rcx*2]
	sar	r9w, 6
	cmp	r10w, 219
	setbe	cl
	movsx	r9d, r9w
	sar	r9d, cl
	add	r9d, r8d
	mov	DWORD PTR 1304[rax], r9d
	cmp	r10w, 299
	ja	.L49
	add	r10d, 1
	mov	WORD PTR 1220[rax], r10w
.L45:
	lea	rcx, 1300[rax]
	mov	r8d, 2
	mov	edx, 30720
	jmp	sub_808E95C
	.p2align 4,,10
	.p2align 3
.L48:
	mov	ecx, DWORD PTR 1448[rcx]
	lea	r9d, -15359[rcx]
	cmp	r9d, r8d
	jg	.L50
	cmp	dl, 17
	je	.L62
.L50:
	sub	ecx, 10240
	cmp	ecx, r8d
	jle	.L45
	add	r8d, 256
	cmp	BYTE PTR 1196[rax], 13
	mov	DWORD PTR 1304[rax], r8d
	ja	.L45
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	cmp	r8d, -12799
	jl	.L43
	sub	r8d, 256
	mov	DWORD PTR 1304[rcx], r8d
	mov	ecx, DWORD PTR 1300[rcx]
	cmp	ecx, 43519
	jg	.L39
	movzx	edx, WORD PTR 1214[rax]
	cmp	dx, 1023
	ja	.L44
	add	edx, 1
	mov	WORD PTR 1214[rax], dx
.L44:
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, dx
	movsx	edx, WORD PTR [r8+rdx*2]
	add	edx, ecx
	mov	DWORD PTR 1300[rax], edx
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	cmp	r8d, 21759
	jg	.L47
	add	r8d, 80
	mov	DWORD PTR 1304[rcx], r8d
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L43:
	mov	DWORD PTR 1300[rcx], 30720
	mov	BYTE PTR 1196[rcx], 14
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L47:
	mov	edx, 60
	mov	BYTE PTR 1196[rcx], 16
	mov	WORD PTR 1220[rcx], dx
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L49:
	add	edx, 1
	mov	BYTE PTR 1196[rax], dl
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L62:
	mov	BYTE PTR 1196[rax], 18
	jmp	.L50
	.seh_endproc
	.p2align 4
	.globl	sub_8090800
	.def	sub_8090800;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090800
sub_8090800:
	.seh_endprologue
	movzx	eax, BYTE PTR 1196[rcx]
	cmp	al, 12
	ja	.L64
	mov	rax, QWORD PTR .LC16[rip]
	mov	QWORD PTR 1444[rcx], rax
.L63:
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	mov	r8d, DWORD PTR 1448[rcx]
	cmp	al, 13
	je	.L78
	cmp	al, 14
	je	.L79
	cmp	al, 16
	jbe	.L80
	sub	r8d, 8
.L72:
	movzx	edx, WORD PTR 1222[rcx]
	cmp	dx, 1023
	ja	.L76
	add	edx, 32
	movzx	eax, dl
	sal	eax, 2
.L73:
	mov	WORD PTR 1222[rcx], dx
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	cdqe
	movzx	eax, WORD PTR [rdx+rax*2]
	sar	ax, 6
	cwde
	add	eax, r8d
	mov	DWORD PTR 1448[rcx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	cmp	r8d, 35839
	jg	.L63
	sub	r8d, -128
	mov	DWORD PTR 1448[rcx], r8d
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	cmp	r8d, 21760
	jle	.L68
	sub	r8d, 64
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L76:
	xor	eax, eax
	xor	edx, edx
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L68:
	mov	BYTE PTR 1196[rcx], 15
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L80:
	cmp	r8d, 34559
	jg	.L72
	add	r8d, 64
	jmp	.L72
	.seh_endproc
	.p2align 4
	.globl	sub_8090904
	.def	sub_8090904;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090904
sub_8090904:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	movzx	eax, BYTE PTR 1196[rcx]
	mov	rdx, rcx
	lea	ecx, -13[rax]
	cmp	cl, 1
	jbe	.L82
	cmp	al, 14
	jbe	.L81
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	lea	rcx, 1201[rdx]
	lea	rax, 1456[rdx]
	xor	r9d, r9d
	.p2align 4,,10
	.p2align 3
.L107:
	movzx	r8d, BYTE PTR [rcx]
	cmp	r8b, 16
	ja	.L90
	mov	r10d, DWORD PTR 1444[rdx]
	mov	ebx, DWORD PTR [rax]
	cmp	r9b, 2
	ja	.L91
	add	r10d, 15359
	cmp	r10d, ebx
	jl	.L92
	mov	r8d, DWORD PTR 8[rax]
	sal	r8d, 7
	add	r8d, ebx
	mov	DWORD PTR [rax], r8d
	movzx	r10d, BYTE PTR [rcx]
	test	r10b, 1
	jne	.L125
.L93:
	mov	r8d, DWORD PTR 1448[rdx]
	mov	ebx, DWORD PTR 4[rax]
	sub	r8d, 7680
	cmp	ebx, r8d
	jl	.L126
	or	r10d, 1
	mov	BYTE PTR [rcx], r10b
.L96:
	mov	r8d, 2
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L92:
	mov	r10d, r8d
	or	r10d, 16
	and	r8d, 1
	mov	BYTE PTR [rcx], r10b
	je	.L93
.L113:
	mov	r8d, r10d
	.p2align 4,,10
	.p2align 3
.L90:
	mov	ebx, DWORD PTR 8[rax]
	mov	r10d, DWORD PTR 12[rax]
	lea	ebx, [r10+rbx*2]
	cmp	ebx, 261888
	jg	.L110
	mov	r10d, ebx
	and	r10d, 1020
	add	r10d, 256
.L103:
	movsx	r10, r10d
	mov	DWORD PTR 12[rax], ebx
	movsx	ebx, BYTE PTR 1[r11+r10*2]
	mov	r10d, ebx
	not	r10d
	shr	r10w, 15
	add	r10d, 1
	mov	BYTE PTR 6[rcx], r10b
	add	DWORD PTR [rax], ebx
.L102:
	and	r8d, 1
	jne	.L108
.L105:
	add	r9d, 1
	add	rcx, 1
	add	rax, 20
	cmp	r9b, 6
	jne	.L107
.L81:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L125:
	cmp	r10b, 15
	ja	.L113
	.p2align 4,,10
	.p2align 3
.L108:
	mov	r10d, DWORD PTR 8[rax]
	mov	r8d, DWORD PTR 16[rax]
	lea	r10d, [r8+r10*2]
	cmp	r10d, 261888
	jg	.L112
	movzx	r8d, r10b
	sal	r8d, 2
.L106:
	movsx	r8, r8d
	mov	DWORD PTR 16[rax], r10d
	mov	r10d, DWORD PTR 1448[rdx]
	movzx	r8d, WORD PTR [r11+r8*2]
	sar	r8w, 6
	movsx	r8d, r8w
	lea	r8d, -7680[r10+r8*8]
	mov	DWORD PTR 4[rax], r8d
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L110:
	mov	r10d, 256
	xor	ebx, ebx
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L91:
	sub	r10d, 15359
	cmp	r10d, ebx
	jle	.L127
	or	r8d, 16
	mov	BYTE PTR [rcx], r8b
.L99:
	test	r8b, 1
	jne	.L100
	mov	r10d, DWORD PTR 1448[rdx]
	mov	ebx, DWORD PTR 4[rax]
	sub	r10d, 7680
	cmp	ebx, r10d
	jge	.L101
	mov	r8d, DWORD PTR 8[rax]
	sal	r8d, 7
	add	r8d, ebx
	mov	DWORD PTR 4[rax], r8d
.L100:
	mov	r8d, 1
.L97:
	mov	BYTE PTR 6[rcx], r8b
	movzx	r8d, BYTE PTR [rcx]
	cmp	r8b, 15
	jbe	.L102
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L112:
	xor	r8d, r8d
	xor	r10d, r10d
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L127:
	mov	r8d, DWORD PTR 8[rax]
	sal	r8d, 7
	sub	ebx, r8d
	mov	DWORD PTR [rax], ebx
	movzx	r8d, BYTE PTR [rcx]
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L82:
	lea	rax, 1456[rdx]
	xor	r8d, r8d
.L89:
	mov	edx, DWORD PTR [rax]
	lea	ecx, 2559[rdx]
	cmp	ecx, 66558
	jbe	.L85
.L128:
	mov	ebx, DWORD PTR 4[rax]
	lea	ecx, 2559[rbx]
	cmp	ecx, 46078
	jbe	.L85
.L86:
	add	r8d, 1
	cmp	r8b, 6
	je	.L81
	mov	edx, DWORD PTR 20[rax]
	add	rax, 20
	lea	ecx, 2559[rdx]
	cmp	ecx, 66558
	ja	.L128
.L85:
	mov	ecx, DWORD PTR 8[rax]
	sal	ecx, 8
	cmp	r8b, 2
	ja	.L87
	sub	edx, ecx
	sub	DWORD PTR 4[rax], ecx
	add	r8d, 1
	add	rax, 20
	mov	DWORD PTR -20[rax], edx
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L87:
	add	edx, ecx
	sub	DWORD PTR 4[rax], ecx
	mov	DWORD PTR [rax], edx
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L126:
	mov	r8d, DWORD PTR 8[rax]
	sal	r8d, 7
	add	r8d, ebx
	mov	DWORD PTR 4[rax], r8d
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L101:
	or	r8d, 1
	mov	BYTE PTR [rcx], r8b
	jmp	.L100
	.seh_endproc
	.p2align 4
	.globl	sub_8090C24
	.def	sub_8090C24;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090C24
sub_8090C24:
	.seh_endprologue
	movzx	eax, BYTE PTR 1196[rcx]
	cmp	al, 12
	ja	.L130
	mov	rdx, QWORD PTR .LC17[rip]
	mov	QWORD PTR 1428[rcx], rdx
	movzx	edx, WORD PTR 1216[rcx]
	test	dx, dx
	je	.L131
	sub	edx, 1
	mov	WORD PTR 1216[rcx], dx
.L132:
	add	rcx, 1428
	mov	r8d, 2
	mov	edx, 120
	jmp	sub_808E8F8
	.p2align 4,,10
	.p2align 3
.L130:
	mov	eax, DWORD PTR 1432[rcx]
	cmp	eax, -49
	jl	.L132
	sub	eax, 1
	mov	DWORD PTR 1432[rcx], eax
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L131:
	add	eax, 1
	lea	rdx, gUnknown_080E1514[rip]
	mov	BYTE PTR 1196[rcx], al
	movzx	eax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 1216[rcx], ax
	jmp	.L132
	.seh_endproc
	.p2align 4
	.globl	sub_8090CA0
	.def	sub_8090CA0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090CA0
sub_8090CA0:
	.seh_endprologue
	cmp	BYTE PTR 1196[rcx], 12
	jbe	.L133
	jmp	sub_8090CA0.part.0
	.p2align 4,,10
	.p2align 3
.L133:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8090D60
	.def	sub_8090D60;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090D60
sub_8090D60:
	.seh_endprologue
	movzx	eax, BYTE PTR 1196[rcx]
	lea	edx, -1[rax]
	cmp	dl, 11
	ja	.L135
	lea	rdx, gUnknown_080E13AC[rip]
	lea	rax, [rax+rax*2]
	add	rcx, 1576
	lea	r9, [rdx+rax*4]
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L141:
	mov	r8d, DWORD PTR [rdx]
	sal	r8d, 8
	mov	DWORD PTR [rcx], r8d
	mov	r8d, DWORD PTR 8[rcx]
	mov	r10d, r8d
	add	r8d, DWORD PTR 8[rdx]
	sar	r10d, 3
	sub	eax, r10d
.L138:
	add	rdx, 12
	mov	DWORD PTR 8[rcx], r8d
	add	rcx, 12
	mov	DWORD PTR -8[rcx], eax
	cmp	rdx, r9
	je	.L135
.L139:
	mov	eax, DWORD PTR 4[rcx]
	lea	r8d, 2559[rax]
	cmp	r8d, 46078
	jbe	.L141
	mov	eax, DWORD PTR 4[rdx]
	xor	r8d, r8d
	sal	eax, 8
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L135:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8090E18
	.def	sub_8090E18;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090E18
sub_8090E18:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, 4
	mov	edx, 10
	mov	esi, 1
	cmp	BYTE PTR 1196[rcx], 13
	cmovne	rax, rdx
	lea	rax, [rax+rax*2]
	lea	rbx, 1308[rcx]
	lea	rdi, [rbx+rax*4]
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L144:
	sub	eax, DWORD PTR 8[rbx]
	add	rbx, 12
	mov	DWORD PTR -8[rbx], eax
	cmp	rbx, rdi
	je	.L148
.L145:
	mov	eax, DWORD PTR 4[rbx]
	cmp	eax, -23040
	jge	.L144
	mov	DWORD PTR 4[rbx], 58880
	add	rbx, 12
	call	Random
	and	eax, 3
	lea	ecx, 11[rax]
	mov	eax, esi
	sal	eax, cl
	add	eax, 256
	mov	DWORD PTR -4[rbx], eax
	call	Random
	movzx	eax, al
	mov	DWORD PTR -12[rbx], eax
	mov	eax, DWORD PTR -8[rbx]
	sub	eax, DWORD PTR -4[rbx]
	mov	DWORD PTR -8[rbx], eax
	cmp	rbx, rdi
	jne	.L145
.L148:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8090EB4
	.def	sub_8090EB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090EB4
sub_8090EB4:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	lea	r9, gUnknown_080E15A8[rip]
	mov	ebx, 61440
	movzx	r10d, BYTE PTR 1196[rcx]
	lea	rax, 1240[rcx]
	lea	r11, 1304[rcx]
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L153:
	cmp	r10b, 15
	jne	.L154
	cmp	DWORD PTR 1448[rcx], 35839
	jg	.L154
	add	edx, 32
	mov	DWORD PTR [rax], edx
.L154:
	add	rax, 8
	add	r9, 4
	cmp	rax, r11
	je	.L157
.L155:
	mov	edx, DWORD PTR [rax]
	cmp	edx, -20
	jge	.L150
	mov	edx, DWORD PTR -4[rax]
	mov	DWORD PTR [rax], 58880
	sub	edx, 20480
	cmovs	edx, ebx
	mov	DWORD PTR -4[rax], edx
	mov	edx, 58880
.L150:
	mov	r8d, DWORD PTR [r9]
	add	r8d, r8d
	sub	edx, r8d
	mov	DWORD PTR [rax], edx
	cmp	r10b, 14
	jne	.L153
	cmp	DWORD PTR 1448[rcx], 20480
	jle	.L154
	sub	edx, 64
	add	rax, 8
	add	r9, 4
	mov	DWORD PTR -8[rax], edx
	cmp	rax, r11
	jne	.L155
.L157:
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8090F6C
	.def	sub_8090F6C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090F6C
sub_8090F6C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	edx, BYTE PTR 1196[rcx]
	mov	rbx, rcx
	cmp	dl, 12
	ja	.L158
	movzx	ecx, BYTE PTR 1197[rcx]
	movzx	eax, BYTE PTR 1198[rbx]
	test	cl, cl
	jne	.L170
.L161:
	movzx	ecx, BYTE PTR 1199[rbx]
	test	cl, cl
	je	.L162
	sub	ecx, 1
	mov	BYTE PTR 1199[rbx], cl
	cmp	al, 3
	jbe	.L171
	mov	edx, 6
	sub	edx, eax
	lea	rax, gUnknown_080E15C8[rip]
	movsx	rdx, edx
	sal	rdx, 5
.L169:
	mov	r8, QWORD PTR .refptr.gObjPalette[rip]
	add	rdx, rax
	mov	r9d, -2080374776
	mov	ecx, 3
	add	r8, 96
	call	DmaSet
	movzx	eax, BYTE PTR 1198[rbx]
	cmp	al, 7
	je	.L172
.L158:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L170:
	test	al, al
	jne	.L161
	sub	ecx, 1
	mov	BYTE PTR 1197[rbx], cl
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L162:
	lea	r8, gUnknown_080E154A[rip]
	add	eax, 1
	movzx	edx, BYTE PTR [r8+rdx]
	movzx	ecx, al
	mov	ch, dl
	mov	WORD PTR 1198[rbx], cx
	cmp	al, 7
	jne	.L158
.L172:
	movzx	edx, BYTE PTR 1196[rbx]
	lea	rax, gUnknown_080E1530[rip]
	mov	BYTE PTR 1198[rbx], 0
	movzx	eax, WORD PTR [rax+rdx*2]
	mov	BYTE PTR 1197[rbx], al
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	movzx	edx, al
	mov	rax, rdx
	lea	rdx, gUnknown_080E15C8[rip]
	sal	rax, 5
	jmp	.L169
	.seh_endproc
	.p2align 4
	.globl	sub_8091044
	.def	sub_8091044;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091044
sub_8091044:
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
	mov	eax, 10
	mov	edx, 4
	cmp	BYTE PTR 1196[rcx], 13
	cmove	rax, rdx
	lea	rax, [rax+rax*2]
	lea	rsi, 1308[rcx]
	mov	rbx, rcx
	lea	rbp, 1120[rcx]
	lea	rdi, [rsi+rax*4]
	.p2align 4,,10
	.p2align 3
.L176:
	mov	BYTE PTR 1168[rbx], 0
	mov	eax, DWORD PTR [rsi]
	mov	r10d, 823
	mov	rcx, rbp
	mov	WORD PTR 1138[rbx], r10w
	add	rsi, 12
	mov	WORD PTR 1158[rbx], ax
	mov	eax, DWORD PTR -8[rsi]
	sar	eax, 8
	mov	WORD PTR 1160[rbx], ax
	call	DisplaySprite
	cmp	rdi, rsi
	jne	.L176
	mov	rbp, QWORD PTR .refptr.gBgScrollRegs[rip]
	cmp	WORD PTR 2[rbp], 109
	jle	.L177
	xor	esi, esi
	mov	r9d, 3
	mov	ecx, 824
	xor	r12d, r12d
	lea	rdi, gUnknown_080E12FC[rip]
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L210:
	mov	ecx, r12d
	mov	rax, rdx
	movzx	edx, WORD PTR 1237[rbx+rsi*8]
	neg	ecx
	and	ecx, 100
	sub	edx, ecx
	mov	rcx, r8
	mov	WORD PTR 902[rax], dx
	mov	edx, DWORD PTR 1240[rbx+rsi*8]
	sar	edx, 8
	mov	WORD PTR 904[rax], dx
	call	DisplaySprite
	lea	eax, 1[rsi]
	add	rsi, 1
.L179:
	and	eax, 3
	add	rax, 3
	movzx	ecx, WORD PTR 4[rdi+rax*8]
	movzx	r9d, BYTE PTR 6[rdi+rax*8]
.L180:
	mov	rax, rsi
	and	eax, 3
	sal	rax, 6
	mov	rdx, rax
	lea	r8, 864[rbx+rax]
	add	rdx, rbx
	mov	WORD PTR 882[rdx], cx
	mov	BYTE PTR 912[rdx], r9b
	cmp	rsi, 4
	jbe	.L210
	mov	edx, DWORD PTR 1236[rbx+rsi*8]
	add	rax, rbx
	mov	rcx, r8
	sar	edx, 8
	sub	edx, 100
	mov	WORD PTR 902[rax], dx
	mov	edx, DWORD PTR 1240[rbx+rsi*8]
	sar	edx, 8
	mov	WORD PTR 904[rax], dx
	call	DisplaySprite
	lea	eax, 1[rsi]
	add	rsi, 1
	cmp	rsi, 8
	je	.L177
	mov	r12d, 1
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L177:
	movzx	eax, BYTE PTR 1196[rbx]
	lea	rsi, 96[rbx]
	cmp	al, 13
	je	.L211
	lea	edx, -14[rax]
	cmp	dl, 2
	ja	.L183
	mov	r8d, 822
	mov	BYTE PTR 144[rbx], 0
	mov	WORD PTR 114[rbx], r8w
.L182:
	mov	eax, DWORD PTR 1300[rbx]
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 134[rbx], ax
	mov	eax, DWORD PTR 1304[rbx]
	sar	eax, 8
	mov	WORD PTR 136[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, BYTE PTR 1196[rbx]
	cmp	al, 13
	ja	.L184
	mov	edx, DWORD PTR 1428[rbx]
	lea	rsi, 224[rbx]
	mov	WORD PTR 262[rbx], dx
	mov	edx, DWORD PTR 1432[rbx]
	mov	WORD PTR 264[rbx], dx
	cmp	al, 10
	je	.L212
	cmp	al, 13
	je	.L213
.L186:
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, BYTE PTR 1196[rbx]
	cmp	al, 12
	ja	.L184
	lea	r12, 672[rbx]
	test	al, al
	je	.L187
	lea	rsi, 1576[rbx]
	xor	edi, edi
	.p2align 4,,10
	.p2align 3
.L188:
	mov	eax, DWORD PTR [rsi]
	mov	rcx, r12
	add	edi, 1
	add	rsi, 12
	sar	eax, 8
	mov	WORD PTR 710[rbx], ax
	mov	eax, DWORD PTR -8[rsi]
	sar	eax, 8
	mov	WORD PTR 712[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	cmp	dil, BYTE PTR 1196[rbx]
	jb	.L188
	cmp	WORD PTR 2[rbp], 109
	jle	.L201
.L191:
	movzx	ecx, BYTE PTR 1196[rbx]
	cmp	cl, 12
	jbe	.L173
	xor	esi, esi
	lea	rdi, 160[rbx]
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L215:
	movzx	eax, BYTE PTR 1207[rbx+rsi]
	cmp	al, 1
	je	.L214
	cmp	al, 2
	jne	.L197
	or	DWORD PTR 192[rbx], 1024
	.p2align 4,,10
	.p2align 3
.L197:
	mov	rcx, rdi
	add	rsi, 1
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	cmp	rsi, 6
	je	.L200
.L199:
	movzx	ecx, BYTE PTR 1196[rbx]
.L193:
	lea	rax, [rsi+rsi*4]
	sal	rax, 2
	mov	edx, DWORD PTR 1456[rbx+rax]
	mov	eax, DWORD PTR 1460[rbx+rax]
	sar	edx, 8
	sar	eax, 8
	mov	WORD PTR 198[rbx], dx
	mov	WORD PTR 200[rbx], ax
	cmp	cl, 14
	ja	.L215
	mov	eax, DWORD PTR 192[rbx]
	cmp	rsi, 2
	ja	.L198
	and	ah, -5
	mov	rcx, rdi
	add	rsi, 1
	mov	DWORD PTR 192[rbx], eax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L183:
	cmp	al, 16
	jbe	.L182
	mov	ecx, 822
	mov	BYTE PTR 144[rbx], 1
	mov	WORD PTR 114[rbx], cx
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L198:
	or	ah, 4
	mov	DWORD PTR 192[rbx], eax
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L214:
	and	DWORD PTR 192[rbx], -1025
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L200:
	mov	eax, DWORD PTR 1444[rbx]
	lea	rsi, 800[rbx]
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 838[rbx], ax
	mov	eax, DWORD PTR 1448[rbx]
	sar	eax, 8
	mov	WORD PTR 840[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
.L187:
	cmp	WORD PTR 2[rbp], 109
	jle	.L201
.L173:
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
.L184:
	lea	r12, gUnknown_080E12FC[rip]
	lea	rdi, 1720[rbx]
	lea	rsi, 288[rbx]
	lea	r13, 1792[rbx]
	.p2align 4,,10
	.p2align 3
.L190:
	movzx	eax, WORD PTR 108[r12]
	mov	rcx, rsi
	add	rdi, 12
	add	r12, 8
	add	rsi, 64
	mov	WORD PTR -46[rsi], ax
	movzx	eax, BYTE PTR 102[r12]
	mov	BYTE PTR -16[rsi], al
	mov	eax, DWORD PTR -12[rdi]
	sar	eax, 8
	mov	WORD PTR -26[rsi], ax
	mov	eax, DWORD PTR -8[rdi]
	sar	eax, 8
	mov	WORD PTR -24[rsi], ax
	call	DisplaySprite
	cmp	r13, rdi
	jne	.L190
	cmp	WORD PTR 2[rbp], 109
	jg	.L191
.L201:
	mov	eax, DWORD PTR 1428[rbx]
	lea	rsi, 736[rbx]
	mov	rcx, rsi
	mov	WORD PTR 774[rbx], ax
	movzx	eax, WORD PTR 1432[rbx]
	add	eax, 30
	mov	WORD PTR 776[rbx], ax
	call	UpdateSpriteAnimation
	movzx	eax, BYTE PTR 1200[rbx]
	test	al, al
	jne	.L216
	mov	BYTE PTR 1200[rbx], 2
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L211:
	mov	r9d, 819
	mov	BYTE PTR 144[rbx], 0
	mov	WORD PTR 114[rbx], r9w
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L216:
	sub	eax, 1
	mov	rcx, rsi
	mov	BYTE PTR 1200[rbx], al
	call	DisplaySprite
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L212:
	mov	edx, 791
	mov	BYTE PTR 272[rbx], 1
	mov	rcx, rsi
	mov	WORD PTR 242[rbx], dx
	call	UpdateSpriteAnimation
	jmp	.L186
.L213:
	mov	eax, 791
	mov	BYTE PTR 272[rbx], 2
	mov	rcx, rsi
	mov	WORD PTR 242[rbx], ax
	call	UpdateSpriteAnimation
	jmp	.L186
	.seh_endproc
	.p2align 4
	.globl	sub_8090480
	.def	sub_8090480;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090480
sub_8090480:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 2
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 1186[rbx], dx
	mov	rcx, rbx
	lea	rdi, 1184[rbx]
	call	sub_8090E18
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	eax, DWORD PTR 1232[rbx]
	cmp	WORD PTR 2[rdx], 351
	jg	.L219
	add	eax, 32
	mov	DWORD PTR 1232[rbx], eax
.L219:
	sar	eax, 8
	mov	WORD PTR 2[rdx], ax
	cmp	ax, 109
	jg	.L224
.L220:
	mov	rcx, rbx
	call	sub_809066C
	mov	rcx, rbx
	call	sub_8090904
	mov	rcx, rbx
	call	sub_8090800
	cmp	BYTE PTR 1196[rbx], 14
	jbe	.L225
.L221:
	mov	rcx, rbx
	call	sub_8091044
	mov	rcx, rbx
	call	sub_8090F6C
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L217
	xor	eax, eax
	lea	rdi, sub_80913DC[rip]
	mov	WORD PTR 1188[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
.L217:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L225:
	call	sub_8090C24
	cmp	BYTE PTR 1196[rbx], 12
	jbe	.L222
	mov	rcx, rbx
	call	sub_8090CA0.part.0
.L222:
	mov	rcx, rbx
	call	sub_8090D60
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L224:
	mov	rcx, rbx
	call	sub_8090EB4
	jmp	.L220
	.seh_endproc
	.p2align 4
	.globl	sub_8090520
	.def	sub_8090520;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8090520
sub_8090520:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 16383
	mov	ecx, 1
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 1192[rbx], dx
	lea	rdi, 1184[rbx]
	mov	WORD PTR 1186[rbx], cx
	mov	rcx, rbx
	call	sub_8090E18
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	eax, DWORD PTR 1232[rbx]
	cmp	WORD PTR 2[rdx], 351
	jg	.L228
	add	eax, 32
	mov	DWORD PTR 1232[rbx], eax
.L228:
	sar	eax, 8
	mov	WORD PTR 2[rdx], ax
	cmp	ax, 109
	jg	.L233
.L229:
	mov	rcx, rbx
	call	sub_809066C
	mov	rcx, rbx
	call	sub_8090904
	mov	rcx, rbx
	call	sub_8090800
	cmp	BYTE PTR 1196[rbx], 14
	jbe	.L234
.L230:
	mov	rcx, rbx
	call	sub_8091044
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L226
	xor	eax, eax
	lea	rdi, sub_8091468[rip]
	mov	WORD PTR 1188[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
.L226:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	call	sub_8090C24
	cmp	BYTE PTR 1196[rbx], 12
	jbe	.L231
	mov	rcx, rbx
	call	sub_8090CA0.part.0
.L231:
	mov	rcx, rbx
	call	sub_8090D60
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L233:
	mov	rcx, rbx
	call	sub_8090EB4
	jmp	.L229
	.seh_endproc
	.p2align 4
	.globl	sub_80905C0
	.def	sub_80905C0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80905C0
sub_80905C0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	sub_8090E18
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	eax, DWORD PTR 1232[rbx]
	cmp	WORD PTR 2[rdx], 351
	jg	.L237
	add	eax, 32
	mov	DWORD PTR 1232[rbx], eax
.L237:
	sar	eax, 8
	mov	WORD PTR 2[rdx], ax
	cmp	ax, 109
	jg	.L243
.L238:
	mov	rcx, rbx
	call	sub_809066C
	mov	rcx, rbx
	call	sub_8090904
	mov	rcx, rbx
	call	sub_8090800
	cmp	BYTE PTR 1196[rbx], 14
	jbe	.L244
.L239:
	mov	rcx, rbx
	call	sub_8091044
	mov	rcx, rbx
	call	sub_8090F6C
	movzx	eax, WORD PTR 1216[rbx]
	test	ax, ax
	jne	.L245
	movzx	eax, BYTE PTR 1196[rbx]
	lea	rdx, gUnknown_080E1514[rip]
	add	eax, 1
	mov	BYTE PTR 1196[rbx], al
	movzx	eax, al
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 1216[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_80913DC[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	sub	eax, 1
	mov	WORD PTR 1216[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L244:
	call	sub_8090C24
	cmp	BYTE PTR 1196[rbx], 12
	jbe	.L240
	mov	rcx, rbx
	call	sub_8090CA0.part.0
.L240:
	mov	rcx, rbx
	call	sub_8090D60
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L243:
	mov	rcx, rbx
	call	sub_8090EB4
	jmp	.L238
	.seh_endproc
	.p2align 4
	.globl	sub_80913DC
	.def	sub_80913DC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80913DC
sub_80913DC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	sub_8090E18
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	eax, DWORD PTR 1232[rbx]
	cmp	WORD PTR 2[rdx], 351
	jg	.L248
	add	eax, 32
	mov	DWORD PTR 1232[rbx], eax
.L248:
	sar	eax, 8
	mov	WORD PTR 2[rdx], ax
	cmp	ax, 109
	jg	.L253
.L249:
	mov	rcx, rbx
	call	sub_809066C
	mov	rcx, rbx
	call	sub_8090904
	mov	rcx, rbx
	call	sub_8090800
	cmp	BYTE PTR 1196[rbx], 14
	jbe	.L254
.L250:
	mov	rcx, rbx
	call	sub_8091044
	mov	rcx, rbx
	call	sub_8090F6C
	cmp	BYTE PTR 1196[rbx], 18
	je	.L255
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L253:
	mov	rcx, rbx
	call	sub_8090EB4
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L254:
	call	sub_8090C24
	cmp	BYTE PTR 1196[rbx], 12
	jbe	.L251
	mov	rcx, rbx
	call	sub_8090CA0.part.0
.L251:
	mov	rcx, rbx
	call	sub_8090D60
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L255:
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8090520[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8091484
	.def	sub_8091484;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091484
sub_8091484:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	cmp	WORD PTR 2[rdx], 351
	mov	eax, DWORD PTR 1232[rcx]
	jg	.L257
	add	eax, 32
	mov	DWORD PTR 1232[rcx], eax
.L257:
	sar	eax, 8
	mov	WORD PTR 2[rdx], ax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
gUnknown_080E15C8:
	.ascii "`n\177\1^\2\327\1U\0D\10\377\177\10!{o\20B\326Z\277\3\377\2"
	.ascii "9gsN\214"
	.ascii "1"
	.ascii "`n?\1\37\2\235\1\33\0\12\0\277s\316\24?c\326"
	.ascii "5\234N\177\3\277\2\377Z9BR%"
	.ascii "`n\377\0\337\1_\1\37\0\20\0\177g\224\10\377V\234)_B?\3\177\2\277N\377"
	.ascii "5\30\31"
	.ascii "`n\277\0\237\1\37\1\37\0\26\0?[Z\0\277J_\35\37"
	.ascii "6\377\2?\2\177B\277)\336\14"
	.align 32
gUnknown_080E15A8:
	.long	512
	.long	256
	.long	128
	.long	64
	.long	640
	.long	192
	.long	96
	.long	32
	.align 16
gUnknown_080E154A:
	.ascii "\3\3\3\2\2\2\2\1\1\1\1\1\1\0\0\1\0\0"
	.align 16
gUnknown_080E1530:
	.word	50
	.word	50
	.word	30
	.word	20
	.word	15
	.word	15
	.word	10
	.word	10
	.word	8
	.word	8
	.word	6
	.word	6
	.word	5
	.align 16
gUnknown_080E1514:
	.word	100
	.word	100
	.word	90
	.word	80
	.word	75
	.word	75
	.word	60
	.word	60
	.word	56
	.word	56
	.word	10
	.word	38
	.word	150
	.word	300
	.align 32
gUnknown_080E1484:
	.long	110
	.long	80
	.long	3
	.long	115
	.long	80
	.long	3
	.long	120
	.long	80
	.long	2
	.long	125
	.long	80
	.long	3
	.long	130
	.long	80
	.long	2
	.long	135
	.long	80
	.long	3
	.long	140
	.long	80
	.long	2
	.long	135
	.long	80
	.long	5
	.long	130
	.long	80
	.long	4
	.long	125
	.long	80
	.long	3
	.long	120
	.long	80
	.long	4
	.long	115
	.long	80
	.long	2
	.align 32
gUnknown_080E143C:
	.long	120
	.long	80
	.long	704
	.long	120
	.long	80
	.long	448
	.long	120
	.long	80
	.long	640
	.long	120
	.long	80
	.long	768
	.long	120
	.long	80
	.long	512
	.long	120
	.long	80
	.long	480
	.align 32
gUnknown_080E13AC:
	.long	110
	.long	90
	.long	704
	.long	110
	.long	75
	.long	448
	.long	125
	.long	98
	.long	640
	.long	130
	.long	80
	.long	768
	.long	128
	.long	82
	.long	512
	.long	132
	.long	85
	.long	480
	.long	130
	.long	70
	.long	320
	.long	135
	.long	76
	.long	640
	.long	130
	.long	63
	.long	448
	.long	135
	.long	71
	.long	480
	.long	130
	.long	68
	.long	404
	.long	125
	.long	87
	.long	768
	.align 32
gUnknown_080E12FC:
	.long	24
	.word	818
	.byte	0
	.space 1
	.long	30
	.word	819
	.byte	0
	.space 1
	.long	35
	.word	822
	.byte	0
	.space 1
	.long	80
	.word	824
	.byte	3
	.space 1
	.long	30
	.word	824
	.byte	2
	.space 1
	.long	21
	.word	824
	.byte	1
	.space 1
	.long	10
	.word	824
	.byte	0
	.space 1
	.long	4
	.word	821
	.byte	0
	.space 1
	.long	35
	.word	820
	.byte	0
	.space 1
	.long	15
	.word	823
	.byte	0
	.space 1
	.long	42
	.word	791
	.byte	0
	.space 1
	.long	42
	.word	791
	.byte	1
	.space 1
	.long	64
	.word	791
	.byte	2
	.space 1
	.long	15
	.word	792
	.byte	0
	.space 1
	.long	6
	.word	793
	.byte	0
	.space 1
	.long	6
	.word	794
	.byte	0
	.space 1
	.long	15
	.word	795
	.byte	0
	.space 1
	.long	6
	.word	796
	.byte	0
	.space 1
	.long	6
	.word	797
	.byte	0
	.space 1
	.long	4
	.word	798
	.byte	0
	.space 1
	.long	24
	.word	799
	.byte	0
	.space 1
	.long	42
	.word	822
	.byte	1
	.space 1
	.align 8
.LC2:
	.word	3
	.word	100
	.word	160
	.word	0
	.align 8
.LC3:
	.word	0
	.word	128
	.word	16319
	.word	0
	.align 2
.LC4:
	.byte	0
	.byte	-1
	.align 16
.LC12:
	.word	0
	.word	0
	.word	170
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 8
.LC16:
	.long	30720
	.long	17920
	.align 8
.LC17:
	.long	120
	.long	80
	.ident	"GCC: (GNU) 13-win32"
	.def	CreateExtraEndingSlidesCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	SeedRng;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	Random;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	sub_808E95C;	.scl	2;	.type	32;	.endef
	.def	sub_808E8F8;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
