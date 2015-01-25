	.section	__TEXT,__text,regular,pure_instructions
	.section	__DWARF,__debug_frame,regular,debug
Lsection_debug_frame:
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.section	__DWARF,__debug_aranges,regular,debug
Lsection_aranges:
	.section	__DWARF,__debug_macinfo,regular,debug
Lsection_macinfo:
Lsection_line:
	.section	__DWARF,__debug_loc,regular,debug
Lsection_loc:
	.section	__DWARF,__debug_pubnames,regular,debug
Lsection_pubnames:
	.section	__DWARF,__debug_pubtypes,regular,debug
Lsection_pubtypes:
	.section	__DWARF,__debug_str,regular,debug
Lsection_str:
	.section	__DWARF,__debug_ranges,regular,debug
Lsection_ranges:
	.section	__TEXT,__text,regular,pure_instructions
Ltext_begin:
	.section	__DATA,__data
Ldata_begin:
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin1:
Lfunc_begin1:
Ltmp3:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
Ltmp4:
	subq	$16, %rsp
Ltmp2:
	movl	$0, -8(%rbp)
	jmp	LBB1_2
LBB1_1:
Ltmp5:
	leaq	L_.str(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
Ltmp6:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
LBB1_2:
	movl	-8(%rbp), %eax
	cmpl	$24, %eax
	jle	LBB1_1
Ltmp7:
	movl	$0, %eax
	movl	%eax, %edi
	callq	_exit
Ltmp8:
Lfunc_end1:
Leh_func_end1:

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "Welcome to CS 366"

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
	.globl	_main.eh
_main.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp9:
	.quad	Leh_func_begin1-Ltmp9
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

	.section	__TEXT,__text,regular,pure_instructions
Ltext_end:
	.section	__DATA,__data
Ldata_end:
	.section	__TEXT,__text,regular,pure_instructions
Lsection_end1:
	.section	__DWARF,__debug_frame,regular,debug
Ldebug_frame_common:
Lset6 = Ldebug_frame_common_end-Ldebug_frame_common_begin
	.long	Lset6
Ldebug_frame_common_begin:
	.long	4294967295
	.byte	1
	.byte	0
	.byte	1
	.byte	120
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	2
Ldebug_frame_common_end:
Lset7 = Ldebug_frame_end1-Ldebug_frame_begin1
	.long	Lset7
Ldebug_frame_begin1:
Lset8 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset8
	.quad	Lfunc_begin1
Lset9 = Lfunc_end1-Lfunc_begin1
	.quad	Lset9
	.byte	4
Lset10 = Ltmp0-Lfunc_begin1
	.long	Lset10
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset11 = Ltmp1-Ltmp0
	.long	Lset11
	.byte	13
	.byte	6
	.align	2
Ldebug_frame_end1:
	.section	__DWARF,__debug_info,regular,debug
Linfo_begin1:
	.long	218
	.short	2
Lset12 = Labbrev_begin-Lsection_abbrev
	.long	Lset12
	.byte	8
	.byte	1
	.ascii	 "4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.9.00)"
	.byte	0
	.byte	1
	.ascii	 "hw4.c"
	.byte	0
	.quad	0
	.long	0
	.ascii	 "/Users/williamm/Projects/workspace/366/HW4a/src/"
	.byte	0
	.byte	2
	.byte	5
	.ascii	 "int"
	.byte	0
	.byte	4
	.byte	3
	.ascii	 "main"
	.byte	0
	.ascii	 "main"
	.byte	0
	.byte	1
	.byte	10
	.byte	1
	.long	142
	.byte	1
	.quad	Lfunc_begin1
	.quad	Lfunc_end1
	.byte	1
	.byte	86
	.byte	4
	.quad	Ltmp4
	.quad	Ltmp8
	.byte	5
	.byte	105
	.byte	0
	.byte	1
	.byte	11
	.long	142
	.byte	2
	.byte	145
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
Linfo_end1:
	.section	__DWARF,__debug_abbrev,regular,debug
Labbrev_begin:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	8
	.byte	19
	.byte	11
	.byte	3
	.byte	8
	.byte	82
	.byte	1
	.byte	16
	.byte	6
	.byte	27
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.byte	36
	.byte	0
	.byte	62
	.byte	11
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	3
	.byte	46
	.byte	1
	.byte	3
	.byte	8
	.byte	135
	.byte	64
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	12
	.byte	73
	.byte	19
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.byte	0
	.byte	0
	.byte	4
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	5
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	0
Labbrev_end:
	.section	__DWARF,__debug_line,regular,debug
Lset13 = Lline_end-Lline_begin
	.long	Lset13
Lline_begin:
	.short	2
Lset14 = Lline_prolog_end-Lline_prolog_begin
	.long	Lset14
Lline_prolog_begin:
	.byte	1
	.byte	1
	.byte	246
	.byte	245
	.byte	10
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.asciz	 "/Users/williamm/Projects/workspace/366/HW4a/src/"
	.byte	0
	.asciz	 "hw4.c"
	.byte	1
	.byte	0
	.byte	0
	.byte	0
Lline_prolog_end:
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp3
	.byte	29
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp4
	.byte	21
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp5
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp6
	.byte	19
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp7
	.byte	23
	.byte	0
	.byte	9
	.byte	2
	.quad	Lsection_end1
	.byte	0
	.byte	1
	.byte	1
Lline_end:
	.section	__DWARF,__debug_pubnames,regular,debug
Lset15 = Lpubnames_end1-Lpubnames_begin1
	.long	Lset15
Lpubnames_begin1:
	.short	2
Lset16 = Linfo_begin1-Lsection_info
	.long	Lset16
Lset17 = Linfo_end1-Linfo_begin1
	.long	Lset17
	.long	149
	.asciz	 "main"
	.long	0
Lpubnames_end1:
	.section	__DWARF,__debug_pubtypes,regular,debug
Lset18 = Lpubtypes_end1-Lpubtypes_begin1
	.long	Lset18
Lpubtypes_begin1:
	.short	2
Lset19 = Linfo_begin1-Lsection_info
	.long	Lset19
Lset20 = Linfo_end1-Linfo_begin1
	.long	Lset20
	.long	0
Lpubtypes_end1:
	.section	__DWARF,__debug_aranges,regular,debug
	.section	__DWARF,__debug_ranges,regular,debug
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__debug_inlined,regular,debug
Lset21 = Ldebug_inlined_end1-Ldebug_inlined_begin1
	.long	Lset21
Ldebug_inlined_begin1:
	.short	2
	.byte	8
Ldebug_inlined_end1:

.subsections_via_symbols
