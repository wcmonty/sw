	.section	__TEXT,__text,regular,pure_instructions
	.globl	_bubble
	.align	4, 0x90
_bubble:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -4(%ebp)
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
	jmp	LBB1_7
LBB1_1:
	movl	$0, -16(%ebp)
	jmp	LBB1_5
LBB1_2:
	movl	-4(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	addl	$1, %ecx
	movl	-4(%ebp), %edx
	movl	(%edx,%ecx,4), %ecx
	cmpl	%ecx, %eax
	jle	LBB1_4
	movl	-4(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	-4(%ebp), %ecx
	movl	(%ecx,%eax,4), %eax
	movl	-4(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	-4(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	%edx, (%ecx,%eax,4)
LBB1_4:
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
LBB1_5:
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	subl	%ecx, %eax
	subl	$1, %eax
	movl	-16(%ebp), %ecx
	cmpl	%ecx, %eax
	jg	LBB1_2
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
LBB1_7:
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movl	-12(%ebp), %ecx
	cmpl	%ecx, %eax
	jg	LBB1_1
	addl	$20, %esp
	popl	%ebp
	ret

	.globl	_main
	.align	4, 0x90
_main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$440, %esp
	call	L2$pb
L2$pb:
	popl	%eax
	leal	L_.str-L2$pb(%eax), %ecx
	movl	%ecx, (%esp)
	movl	%eax, -428(%ebp)
	call	_puts
	leal	-412(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, 4(%ecx)
	movl	-428(%ebp), %eax
	leal	L_.str1-L2$pb(%eax), %edx
	movl	%edx, (%ecx)
	call	_scanf
	movl	-412(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, 4(%ecx)
	movl	-428(%ebp), %eax
	leal	L_.str2-L2$pb(%eax), %edx
	movl	%edx, (%ecx)
	call	_printf
	movl	$0, -416(%ebp)
	jmp	LBB2_2
LBB2_1:
	movl	-416(%ebp), %eax
	leal	-408(%ebp), %ecx
	imull	$4, %eax, %eax
	addl	%eax, %ecx
	movl	%esp, %eax
	movl	%ecx, 4(%eax)
	movl	-428(%ebp), %ecx
	leal	L_.str1-L2$pb(%ecx), %edx
	movl	%edx, (%eax)
	call	_scanf
	movl	-416(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -416(%ebp)
LBB2_2:
	movl	-412(%ebp), %eax
	movl	-416(%ebp), %ecx
	cmpl	%eax, %ecx
	jl	LBB2_1
	movl	-412(%ebp), %eax
	leal	-408(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_bubble
	movl	-428(%ebp), %eax
	leal	L_.str3-L2$pb(%eax), %ecx
	movl	%ecx, (%esp)
	call	_puts
	movl	$0, -416(%ebp)
	jmp	LBB2_5
LBB2_4:
	movl	-416(%ebp), %eax
	movl	-408(%ebp,%eax,4), %eax
	movl	%esp, %ecx
	movl	%eax, 4(%ecx)
	movl	-428(%ebp), %eax
	leal	L_.str4-L2$pb(%eax), %edx
	movl	%edx, (%ecx)
	call	_printf
	movl	-416(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -416(%ebp)
LBB2_5:
	movl	-412(%ebp), %eax
	movl	-416(%ebp), %ecx
	cmpl	%eax, %ecx
	jl	LBB2_4
	movl	$0, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	$440, %esp
	popl	%ebp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "Enter number of elements"

L_.str1:
	.asciz	 "%d"

L_.str2:
	.asciz	 "Enter %d integers\n"

	.align	2
L_.str3:
	.asciz	 "Sorted list in ascending order:"

L_.str4:
	.asciz	 "%d\n"


.subsections_via_symbols
