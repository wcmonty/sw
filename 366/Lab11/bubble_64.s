	.section	__TEXT,__text,regular,pure_instructions
	.globl	_bubble
	.align	4, 0x90
_bubble:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	LBB1_7
LBB1_1:
	movl	$0, -20(%rbp)
	jmp	LBB1_5
LBB1_2:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rdx
	movslq	%ecx, %rcx
	movl	(%rdx,%rcx,4), %ecx
	cmpl	%ecx, %eax
	jle	LBB1_4
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rax
	movl	(%rcx,%rax,4), %eax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rcx,%rax,4)
LBB1_4:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB1_5:
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	%ecx, %eax
	subl	$1, %eax
	movl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	LBB1_2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
LBB1_7:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	LBB1_1
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin2:
	pushq	%rbp
Ltmp2:
	movq	%rsp, %rbp
Ltmp3:
	subq	$432, %rsp
Ltmp4:
	leaq	L_.str(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
	leaq	-412(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str1(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movb	%dl, %al
	callq	_scanf
	movl	-412(%rbp), %ecx
	xorb	%dl, %dl
	leaq	L_.str2(%rip), %rdi
	movl	%ecx, %esi
	movb	%dl, %al
	callq	_printf
	movl	$0, -416(%rbp)
	jmp	LBB2_2
LBB2_1:
	movl	-416(%rbp), %eax
	movslq	%eax, %rax
	leaq	-408(%rbp), %rcx
	movabsq	$4, %rdx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	xorb	%al, %al
	leaq	L_.str1(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	_scanf
	movl	-416(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -416(%rbp)
LBB2_2:
	movl	-412(%rbp), %eax
	movl	-416(%rbp), %ecx
	cmpl	%eax, %ecx
	jl	LBB2_1
	movl	-412(%rbp), %eax
	leaq	-408(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_bubble
	leaq	L_.str3(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
	movl	$0, -416(%rbp)
	jmp	LBB2_5
LBB2_4:
	movl	-416(%rbp), %eax
	movslq	%eax, %rax
	movl	-408(%rbp,%rax,4), %eax
	xorb	%cl, %cl
	leaq	L_.str4(%rip), %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	movb	%cl, %al
	callq	_printf
	movl	-416(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -416(%rbp)
LBB2_5:
	movl	-412(%rbp), %eax
	movl	-416(%rbp), %ecx
	cmpl	%eax, %ecx
	jl	LBB2_4
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$432, %rsp
	popq	%rbp
	ret
Leh_func_end2:

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "Enter number of elements"

L_.str1:
	.asciz	 "%d"

L_.str2:
	.asciz	 "Enter %d integers\n"

	.align	3
L_.str3:
	.asciz	 "Sorted list in ascending order:"

L_.str4:
	.asciz	 "%d\n"

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_bubble.eh
_bubble.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp5:
	.quad	Leh_func_begin1-Ltmp5
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

	.globl	_main.eh
_main.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp6:
	.quad	Leh_func_begin2-Ltmp6
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp2-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp3-Ltmp2
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:


.subsections_via_symbols
