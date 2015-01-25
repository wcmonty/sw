	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$200012, %esp
	call	L1$pb
L1$pb:
	popl	%eax
	movl	%eax, -200016(%ebp)
	xorl	%esi, %esi
	.align	4, 0x90
LBB1_1:
	call	_rand
	movl	%eax, -100012(%ebp,%esi,4)
	movl	%eax, -200012(%ebp,%esi,4)
	incl	%esi
	cmpl	$25000, %esi
	jne	LBB1_1
	movl	$24999, %eax
	leal	-100008(%ebp), %ecx
	.align	4, 0x90
LBB1_3:
	testl	%eax, %eax
	jle	LBB1_8
	movl	%eax, %edx
	movl	%ecx, %esi
	.align	4, 0x90
LBB1_5:
	movl	-4(%esi), %edi
	movl	(%esi), %ebx
	cmpl	%edi, %ebx
	jge	LBB1_7
	movl	%edi, (%esi)
	movl	%ebx, -4(%esi)
LBB1_7:
	addl	$4, %esi
	decl	%edx
	jne	LBB1_5
LBB1_8:
	decl	%eax
	jne	LBB1_3
	movl	$24999, %eax
	leal	-200008(%ebp), %ecx
	.align	4, 0x90
LBB1_10:
	testl	%eax, %eax
	jle	LBB1_15
	movl	%eax, %edx
	movl	%ecx, %esi
	.align	4, 0x90
LBB1_12:
	movl	-4(%esi), %edi
	movl	(%esi), %ebx
	cmpl	%edi, %ebx
	jge	LBB1_14
	movl	%edi, (%esi)
	movl	%ebx, -4(%esi)
LBB1_14:
	addl	$4, %esi
	decl	%edx
	jne	LBB1_12
LBB1_15:
	decl	%eax
	jne	LBB1_10
	xorl	%eax, %eax
	jmp	LBB1_20
LBB1_18:
	movl	-200016(%ebp), %eax
	leal	L_.str1-L1$pb(%eax), %eax
	movl	%eax, (%esp)
	call	_puts
	jmp	LBB1_21
	.align	4, 0x90
LBB1_17:
	movl	-200012(%ebp,%eax,4), %ecx
	cmpl	%ecx, -100012(%ebp,%eax,4)
	jne	LBB1_18
	incl	%eax
LBB1_20:
	cmpl	$25000, %eax
	jl	LBB1_17
LBB1_21:
	xorl	%eax, %eax
	addl	$200012, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret

	.globl	_bubble_a
	.align	4, 0x90
_bubble_a:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	12(%ebp), %eax
	decl	%eax
	testl	%eax, %eax
	jle	LBB2_8
	movl	8(%ebp), %ecx
	addl	$4, %ecx
	.align	4, 0x90
LBB2_6:
	testl	%eax, %eax
	jle	LBB2_5
	movl	%ecx, %edx
	movl	%eax, %esi
	.align	4, 0x90
LBB2_2:
	movl	-4(%edx), %edi
	movl	(%edx), %ebx
	cmpl	%edi, %ebx
	jge	LBB2_4
	movl	%edi, (%edx)
	movl	%ebx, -4(%edx)
LBB2_4:
	addl	$4, %edx
	decl	%esi
	jne	LBB2_2
LBB2_5:
	decl	%eax
	jne	LBB2_6
LBB2_8:
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret

	.globl	_bubble_p
	.align	4, 0x90
_bubble_p:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	12(%ebp), %eax
	decl	%eax
	testl	%eax, %eax
	jle	LBB3_8
	movl	8(%ebp), %ecx
	addl	$4, %ecx
	.align	4, 0x90
LBB3_6:
	testl	%eax, %eax
	jle	LBB3_5
	movl	%ecx, %edx
	movl	%eax, %esi
	.align	4, 0x90
LBB3_2:
	movl	-4(%edx), %edi
	movl	(%edx), %ebx
	cmpl	%edi, %ebx
	jge	LBB3_4
	movl	%edi, (%edx)
	movl	%ebx, -4(%edx)
LBB3_4:
	addl	$4, %edx
	decl	%esi
	jne	LBB3_2
LBB3_5:
	decl	%eax
	jne	LBB3_6
LBB3_8:
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret

	.globl	_print_array
	.align	4, 0x90
_print_array:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	call	L4$pb
L4$pb:
	popl	%eax
	movl	12(%ebp), %esi
	testl	%esi, %esi
	jle	LBB4_3
	movl	8(%ebp), %edi
	leal	L_.str-L4$pb(%eax), %ebx
	.align	4, 0x90
LBB4_2:
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_printf
	addl	$4, %edi
	decl	%esi
	jne	LBB4_2
LBB4_3:
	movl	$10, (%esp)
	call	_putchar
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "%d "

L_.str1:
	.asciz	 "The arrays are not equal"


.subsections_via_symbols
