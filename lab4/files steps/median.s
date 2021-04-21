	.file	"median.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	median
	.type	median, @function
median:
	beq	a1,zero,.L8
	slli	a6,a1,2
	add	a6,a6,a0
	mv	t1,a0
	li	a7,0
	li	t4,0
	li	t3,1
	j	.L3
.L5:
	addi	a5,a5,4
	beq	a5,a6,.L11
.L6:
	lw	a4,0(a5)
	bgeu	a2,a4,.L4
	addiw	a3,a3,1
.L4:
	bleu	a2,a4,.L5
	addiw	a3,a3,-1
	j	.L5
.L11:
	sext.w	a3,a3
	bleu	a3,t3,.L12
	addi	a7,a7,1
	addi	t1,t1,4
	beq	a1,a7,.L9
.L3:
	lw	a2,0(t1)
	mv	a5,a0
	mv	a3,t4
	j	.L6
.L12:
	slli	a7,a7,2
	add	a7,a0,a7
	lw	a0,0(a7)
	ret
.L8:
	li	a0,-1
	ret
.L9:
	li	a0,-1
	ret
	.size	median, .-median
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
