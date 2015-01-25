	.file	"hwk11b.c"
.globl S
	.section	.rodata
	.align 4
	.type	S, @object
	.size	S, 4
S:
	.long	5
	.text
.globl func1
	.type	func1, @function
func1:
.LFB2:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L3:
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	movl	$0, -8(%rbp)
	jmp	.L6
.L7:
	movl	-16(%rbp), %eax
	movslq	%eax,%rdx
	movl	S(%rip), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	addq	-24(%rbp), %rcx
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %eax
	movslq	%eax,%rdx
	movl	S(%rip), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	addq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	-16(%rbp), %eax
	movslq	%eax,%rdx
	movl	S(%rip), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	addq	-32(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm2
	movl	-8(%rbp), %eax
	movslq	%eax,%rdx
	movl	S(%rip), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	addq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movslq	%esi,%rax
	movss	%xmm0, (%rcx,%rax,4)
	addl	$1, -8(%rbp)
.L6:
	movl	S(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L7
	addl	$1, -12(%rbp)
.L4:
	movl	S(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L5
	addl	$1, -16(%rbp)
.L2:
	movl	S(%rip), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L3
	leave
	ret
.LFE2:
	.size	func1, .-func1
	.section	.rodata
.LC3:
	.string	"%f "
	.align 8
.LC0:
	.long	2576980378
	.long	1071225241
	.align 8
.LC1:
	.long	1717986918
	.long	1073899110
	.text
.globl main
	.type	main, @function
main:
.LFB3:
	pushq	%rbp
.LCFI2:
	movq	%rsp, %rbp
.LCFI3:
	subq	$112, %rsp
.LCFI4:
	movq	%rsp, %rax
	movq	%rax, -56(%rbp)
	movl	S(%rip), %eax
	cltq
	salq	$2, %rax
	movq	%rax, -104(%rbp)
	movl	S(%rip), %eax
	movslq	%eax,%rdx
	movl	S(%rip), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	S(%rip), %eax
	cltq
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movl	S(%rip), %eax
	movslq	%eax,%rdx
	movl	S(%rip), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	S(%rip), %eax
	cltq
	salq	$2, %rax
	movq	%rax, -72(%rbp)
	movl	S(%rip), %eax
	movslq	%eax,%rdx
	movl	S(%rip), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L13
.L14:
	movl	$0, -20(%rbp)
	jmp	.L15
.L16:
	movq	-88(%rbp), %rdi
	shrq	$2, %rdi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rcx
	movslq	%edx,%rdx
	movslq	%esi,%rax
	imulq	%rdi, %rax
	leaq	(%rdx,%rax), %rax
	movss	%xmm0, (%rcx,%rax,4)
	movq	-72(%rbp), %rdi
	shrq	$2, %rdi
	movl	-24(%rbp), %r8d
	movl	-20(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	subl	%edx, %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-32(%rbp), %rcx
	movslq	%esi,%rdx
	movslq	%r8d,%rax
	imulq	%rdi, %rax
	leaq	(%rdx,%rax), %rax
	movss	%xmm0, (%rcx,%rax,4)
	movq	-104(%rbp), %rsi
	shrq	$2, %rsi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rdi
	movslq	%eax,%rdx
	movslq	%ecx,%rax
	imulq	%rsi, %rax
	addq	%rax, %rdx
	movl	$0x00000000, %eax
	movl	%eax, (%rdi,%rdx,4)
	addl	$1, -20(%rbp)
.L15:
	movl	S(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L16
	addl	$1, -24(%rbp)
.L13:
	movl	S(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L14
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdi
	call	func1
	movl	$0, -24(%rbp)
	jmp	.L19
.L20:
	movl	$0, -20(%rbp)
	jmp	.L21
.L22:
	movq	-104(%rbp), %rdi
	shrq	$2, %rdi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rsi
	movslq	%eax,%rdx
	movslq	%ecx,%rax
	imulq	%rdi, %rax
	leaq	(%rdx,%rax), %rax
	movss	(%rsi,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -20(%rbp)
.L21:
	movl	S(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L22
	movl	$10, %edi
	call	putchar
	addl	$1, -24(%rbp)
.L19:
	movl	S(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L20
	movq	-56(%rbp), %rsp
	leave
	ret
.LFE3:
	.size	main, .-main
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	"zR"
	.uleb128 0x1
	.sleb128 -8
	.byte	0x10
	.uleb128 0x1
	.byte	0x3
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE3:
	.ident	"GCC: (GNU) 4.1.2 20080704 (Red Hat 4.1.2-54)"
	.section	.note.GNU-stack,"",@progbits
