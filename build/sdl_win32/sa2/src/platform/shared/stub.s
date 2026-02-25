	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.globl	gMaxLines
	.bss
	.align 4
gMaxLines:
	.space 4
	.globl	gNumMusicPlayers
	.data
gNumMusicPlayers:
	.byte	4
	.globl	iwram_end
	.bss
	.align 8
iwram_end:
	.space 8
	.globl	ewram_end
	.align 8
ewram_end:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
