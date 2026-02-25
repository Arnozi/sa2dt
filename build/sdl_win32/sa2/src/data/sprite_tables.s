	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.globl	gSpriteTables
	.section .rdata,"dr"
	.align 32
gSpriteTables:
	.quad	gAnimations
	.quad	gSpriteDimensions
	.quad	gSpriteOamData
	.quad	gSpritePalettes
	.quad	gObjTiles_4bpp
	.quad	gObjTiles_8bpp
	.ident	"GCC: (GNU) 13-win32"
