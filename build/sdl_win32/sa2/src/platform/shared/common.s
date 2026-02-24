	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	IntrMain
	.def	IntrMain;	.scl	2;	.type	32;	.endef
	.seh_proc	IntrMain
IntrMain:
	.seh_endprologue
	movzx	eax, WORD PTR REG_BASE[rip+512]
	movzx	edx, WORD PTR REG_BASE[rip+514]
	and	eax, edx
	xor	edx, edx
	mov	ecx, eax
	and	cx, 192
	jne	.L2
	mov	ecx, eax
	mov	edx, 1
	and	cx, 1
	jne	.L2
	test	al, 2
	jne	.L5
	test	al, 4
	jne	.L6
	test	al, 8
	jne	.L7
	test	al, 16
	jne	.L8
	test	al, 32
	jne	.L9
	test	ah, 1
	jne	.L10
	test	ah, 2
	jne	.L11
	test	ah, 4
	jne	.L12
	test	ah, 8
	jne	.L13
	test	ah, 16
	jne	.L14
	and	ax, 8192
	mov	edx, 13
	mov	ecx, eax
	je	.L2
	mov	edx, 12
	mov	ecx, 8192
.L2:
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	mov	WORD PTR REG_BASE[rip+514], cx
	rex.W jmp	[QWORD PTR [rax+rdx*8]]
	.p2align 4,,10
	.p2align 3
.L6:
	mov	edx, 3
	mov	ecx, 4
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L5:
	mov	edx, 2
	mov	ecx, 2
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L7:
	mov	edx, 4
	mov	ecx, 8
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L10:
	mov	edx, 7
	mov	ecx, 256
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L8:
	mov	edx, 5
	mov	ecx, 16
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L9:
	mov	edx, 6
	mov	ecx, 32
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L11:
	mov	edx, 8
	mov	ecx, 512
	jmp	.L2
.L12:
	mov	edx, 9
	mov	ecx, 1024
	jmp	.L2
.L13:
	mov	edx, 10
	mov	ecx, 2048
	jmp	.L2
.L14:
	mov	edx, 11
	mov	ecx, 4096
	jmp	.L2
	.seh_endproc
	.globl	INTR_VECTOR
	.data
	.align 8
INTR_VECTOR:
	.quad	IntrMain
	.globl	INTR_CHECK
	.bss
	.align 2
INTR_CHECK:
	.space 2
	.globl	FLASH_BASE
	.align 256
FLASH_BASE:
	.space 2097152
	.globl	OAM
	.align 256
OAM:
	.space 1536
	.globl	VRAM
	.align 256
VRAM:
	.space 122880
	.globl	PLTT
	.align 256
PLTT:
	.space 1024
	.globl	REG_BASE
	.align 256
REG_BASE:
	.space 1024
	.globl	IWRAM_START
	.align 256
IWRAM_START:
	.space 32256
	.globl	EWRAM_START
	.align 256
EWRAM_START:
	.space 262144
	.ident	"GCC: (GNU) 13-win32"
	.section	.rdata$.refptr.gIntrTable, "dr"
	.globl	.refptr.gIntrTable
	.linkonce	discard
.refptr.gIntrTable:
	.quad	gIntrTable
