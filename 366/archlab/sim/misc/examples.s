	.text
	.align 4,0x90
.globl _sum_list
_sum_list:
LFB2:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	L4
	.align 4,0x90
L5:
	addl	(%rdi), %eax
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	jne	L5
L4:
	leave
	ret
LFE2:
	.align 4,0x90
.globl _rsum_list
_rsum_list:
LFB3:
	pushq	%rbp
LCFI2:
	movq	%rsp, %rbp
LCFI3:
	xorl	%edx, %edx
	testq	%rdi, %rdi
	je	L13
	.align 4,0x90
L14:
	movl	(%rdi), %eax
	movq	8(%rdi), %rdi
	addl	%eax, %edx
	testq	%rdi, %rdi
	jne	L14
L13:
	movl	%edx, %eax
	leave
	ret
LFE3:
	.align 4,0x90
.globl _copy_block
_copy_block:
LFB4:
	pushq	%rbp
LCFI4:
	movq	%rsp, %rbp
LCFI5:
	xorl	%ecx, %ecx
	testl	%edx, %edx
	jle	L20
	.align 4,0x90
L21:
	movl	(%rdi), %eax
	addq	$4, %rdi
	movl	%eax, (%rsi)
	addq	$4, %rsi
	xorl	%eax, %ecx
	decl	%edx
	jne	L21
L20:
	movl	%ecx, %eax
	leave
	ret
LFE4:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
.globl _sum_list.eh
_sum_list.eh:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB2-.
	.set L$set$2,LFE2-LFB2
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI0-LFB2
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE1:
.globl _rsum_list.eh
_rsum_list.eh:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB3-.
	.set L$set$6,LFE3-LFB3
	.quad L$set$6
	.byte	0x0
	.byte	0x4
	.set L$set$7,LCFI2-LFB3
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE3:
.globl _copy_block.eh
_copy_block.eh:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB4-.
	.set L$set$10,LFE4-LFB4
	.quad L$set$10
	.byte	0x0
	.byte	0x4
	.set L$set$11,LCFI4-LFB4
	.long L$set$11
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE5:
	.subsections_via_symbols
