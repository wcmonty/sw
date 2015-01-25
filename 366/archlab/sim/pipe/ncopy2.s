	.section	__TEXT,__text,regular,pure_instructions
	.globl	_ncopy
	.align	4, 0x90
_ncopy:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	16(%ebp), %eax
	leal	-3(%eax), %eax
	movl	%eax, -28(%ebp)
	testl	%eax, %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	jg	LBB1_2
	xorl	%esi, %esi
	movl	%esi, %eax
	jmp	LBB1_5
LBB1_2:
	xorl	%esi, %esi
	movl	%esi, %eax
	.align	4, 0x90
LBB1_3:
	movl	4(%edx), %edi
	movl	%edi, 4(%ecx)
	movl	8(%edx), %ebx
	movl	%ebx, -20(%ebp)
	movl	%ebx, 8(%ecx)
	movl	12(%edx), %ebx
	movl	%ebx, -16(%ebp)
	movl	%ebx, 12(%ecx)
	movl	16(%edx), %ebx
	movl	%ebx, -24(%ebp)
	movl	%ebx, 16(%ecx)
	testl	%edi, %edi
	setg	%bl
	movzbl	%bl, %edi
	addl	%eax, %edi
	cmpl	$0, -20(%ebp)
	setg	%al
	movzbl	%al, %eax
	addl	%edi, %eax
	cmpl	$0, -16(%ebp)
	setg	%bl
	movzbl	%bl, %edi
	addl	%eax, %edi
	cmpl	$0, -24(%ebp)
	setg	%al
	movzbl	%al, %eax
	addl	%edi, %eax
	addl	$4, %edx
	addl	$4, %ecx
	addl	$8, %esi
	cmpl	-28(%ebp), %esi
	jl	LBB1_3
	jmp	LBB1_5
	.align	4, 0x90
LBB1_4:
	movl	(%edx), %edi
	movl	%edi, (%ecx)
	testl	%edi, %edi
	setg	%bl
	movzbl	%bl, %edi
	addl	%edi, %eax
	addl	$4, %edx
	addl	$4, %ecx
	addl	$2, %esi
LBB1_5:
	cmpl	16(%ebp), %esi
	jl	LBB1_4
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret


.subsections_via_symbols
