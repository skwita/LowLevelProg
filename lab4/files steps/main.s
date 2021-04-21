	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"array: "
	.align	3
.LC1:
	.string	"%i, "
	.align	3
.LC2:
	.string	"median = %i"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	puts
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	addi	s2,s0,40
	lui	s1,%hi(.LC1)
.L2:
	lw	a1,0(s0)
	addi	a0,s1,%lo(.LC1)
	call	printf
	addi	s0,s0,4
	bne	s0,s2,.L2
	li	a0,10
	call	putchar
	li	a1,10
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	median
	mv	a1,a0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
	li	a0,0
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.data
	.align	3
	.set	.LANCHOR0,. + 0
	.type	array, @object
	.size	array, 40
array:
	.word	2
	.word	9
	.word	10
	.word	5
	.word	6
	.word	7
	.word	3
	.word	4
	.word	1
	.word	8
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
