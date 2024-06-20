	.file	"5_1.c"
	.text
	.comm	global,4,4
	.globl	func_op
	.type	func_op, @function
func_op:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func_op, .-func_op
	.globl	func
	.type	func, @function
func:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movabsq	$-18765284782900, %rax
	movq	%rax, -8(%rbp)
	movl	$21845, global(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -44(%rbp)
	movabsq	$8031924123371070824, %rax
	movl	$6581362, %edx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	func_op(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	$43981, -44(%rbp)
	cmpl	$4660, -44(%rbp)
	je	.L6
	movl	$0, -44(%rbp)
	jmp	.L6
.L7:
	addl	$1, -44(%rbp)
.L6:
	movl	$0, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L7
	call	func
	movq	-40(%rbp), %rax
	call	*%rax
	movl	%eax, -44(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L8
.L9:
	movl	-44(%rbp), %eax
	movzbl	-32(%rbp,%rax), %eax
	movb	%al, -45(%rbp)
	addl	$1, -44(%rbp)
.L8:
	cmpl	$15, -44(%rbp)
	jbe	.L9
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
