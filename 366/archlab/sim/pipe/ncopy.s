	.section	__TEXT,__text,regular,pure_instructions
	.globl	_ncopy
	.align	4, 0x90
_ncopy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$28, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	%ecx, -8(%ebp)
	movl	%eax, -12(%ebp)
	movl	$0, -24(%ebp)
	jmp	LBB1_4
LBB1_1:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-4(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -8(%ebp)
	movl	-28(%ebp), %eax
	cmpl	$0, %eax
	jle	LBB1_3
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
LBB1_3:
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
LBB1_4:
	movl	-12(%ebp), %eax
	cmpl	$0, %eax
	jg	LBB1_1
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	addl	$28, %esp
	popl	%ebp
	ret

	.globl	_main
	.align	4, 0x90
_main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$36, %esp
	call	L2$pb
L2$pb:
	popl	%eax
	movl	$0, -12(%ebp)
	movl	%eax, -20(%ebp)
	jmp	LBB2_2
LBB2_1:
	movl	-12(%ebp), %eax
	movl	-12(%ebp), %ecx
	addl	$1, %ecx
	movl	-20(%ebp), %edx
	movl	L_src$non_lazy_ptr-L2$pb(%edx), %esi
	leal	(%esi), %esi
	movl	%ecx, (%esi,%eax,4)
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
LBB2_2:
	movl	-12(%ebp), %eax
	cmpl	$7, %eax
	jle	LBB2_1
	movl	-20(%ebp), %eax
	movl	L_src$non_lazy_ptr-L2$pb(%eax), %ecx
	leal	(%ecx), %ecx
	movl	L_dst$non_lazy_ptr-L2$pb(%eax), %edx
	leal	(%edx), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	$8, 8(%esp)
	call	_ncopy
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, 4(%ecx)
	movl	-20(%ebp), %eax
	leal	L_.str-L2$pb(%eax), %edx
	movl	%edx, (%ecx)
	call	_printf
	movl	$0, (%esp)
	call	_exit

	.comm	_src,32,5
	.comm	_dst,32,5
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "count=%d\n"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L_dst$non_lazy_ptr:
.indirect_symbol _dst
	.long	0
L_src$non_lazy_ptr:
.indirect_symbol _src
	.long	0

.subsections_via_symbols
