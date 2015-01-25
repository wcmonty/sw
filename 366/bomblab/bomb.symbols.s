
bomb:     file format elf32-i386

SYMBOL TABLE:
08048134 l    d  .interp	00000000              .interp
08048148 l    d  .note.ABI-tag	00000000              .note.ABI-tag
08048168 l    d  .gnu.hash	00000000              .gnu.hash
08048198 l    d  .dynsym	00000000              .dynsym
080483c8 l    d  .dynstr	00000000              .dynstr
08048514 l    d  .gnu.version	00000000              .gnu.version
0804855c l    d  .gnu.version_r	00000000              .gnu.version_r
0804859c l    d  .rel.dyn	00000000              .rel.dyn
080485bc l    d  .rel.plt	00000000              .rel.plt
080486ac l    d  .init	00000000              .init
080486c4 l    d  .plt	00000000              .plt
080488c0 l    d  .text	00000000              .text
0804a0c8 l    d  .fini	00000000              .fini
0804a100 l    d  .rodata	00000000              .rodata
0804a6fc l    d  .eh_frame_hdr	00000000              .eh_frame_hdr
0804a718 l    d  .eh_frame	00000000              .eh_frame
0804b000 l    d  .ctors	00000000              .ctors
0804b008 l    d  .dtors	00000000              .dtors
0804b010 l    d  .jcr	00000000              .jcr
0804b014 l    d  .dynamic	00000000              .dynamic
0804b0dc l    d  .got	00000000              .got
0804b0e0 l    d  .got.plt	00000000              .got.plt
0804b180 l    d  .data	00000000              .data
0804b8c0 l    d  .bss	00000000              .bss
00000000 l    d  .comment	00000000              .comment
00000000 l    d  .debug_aranges	00000000              .debug_aranges
00000000 l    d  .debug_pubnames	00000000              .debug_pubnames
00000000 l    d  .debug_info	00000000              .debug_info
00000000 l    d  .debug_abbrev	00000000              .debug_abbrev
00000000 l    d  .debug_line	00000000              .debug_line
00000000 l    d  .debug_frame	00000000              .debug_frame
00000000 l    d  .debug_str	00000000              .debug_str
00000000 l    d  .debug_loc	00000000              .debug_loc
080488e4 l     F .text	00000000              call_gmon_start
00000000 l    df *ABS*	00000000              crtstuff.c
0804b000 l     O .ctors	00000000              __CTOR_LIST__
0804b008 l     O .dtors	00000000              __DTOR_LIST__
0804b010 l     O .jcr	00000000              __JCR_LIST__
0804b8cc l     O .bss	00000004              dtor_idx.5808
0804b8d0 l     O .bss	00000001              completed.5806
08048910 l     F .text	00000000              __do_global_dtors_aux
08048970 l     F .text	00000000              frame_dummy
00000000 l    df *ABS*	00000000              crtstuff.c
0804b004 l     O .ctors	00000000              __CTOR_END__
0804a76c l     O .eh_frame	00000000              __FRAME_END__
0804b010 l     O .jcr	00000000              __JCR_END__
0804a0a0 l     F .text	00000000              __do_global_ctors_aux
00000000 l    df *ABS*	00000000              bomb.c
00000000 l    df *ABS*	00000000              phases.c
0804a2c0 l     O .rodata	00000040              array.2981
00000000 l    df *ABS*	00000000              support.c
08049449 l     F .text	0000005b              sig_handler
00000000 l    df *ABS*	00000000              driverlib.c
080496be l     F .text	000000e2              rio_readlineb
0804b000 l       .ctors	00000000              .hidden __preinit_array_start
0804b000 l       .ctors	00000000              .hidden __fini_array_end
0804b0e0 l     O .got.plt	00000000              .hidden _GLOBAL_OFFSET_TABLE_
0804b000 l       .ctors	00000000              .hidden __preinit_array_end
0804b000 l       .ctors	00000000              .hidden __fini_array_start
0804b000 l       .ctors	00000000              .hidden __init_array_end
0804b000 l       .ctors	00000000              .hidden __init_array_start
0804b014 l     O .dynamic	00000000              .hidden _DYNAMIC
0804b180  w      .data	00000000              data_start
00000000       F *UND*	0000001d              __errno_location@@GLIBC_2.0
08049f54 g     F .text	00000097              driver_post
00000000       F *UND*	00000034              sprintf@@GLIBC_2.0
00000000       F *UND*	00000076              connect@@GLIBC_2.0
0804b6b0 g     O .data	0000000c              n1
0804a020 g     F .text	00000005              __libc_csu_fini
080488c0 g     F .text	00000000              _start
0804b698 g     O .data	0000000c              n22
0804b68c g     O .data	0000000c              n32
08048fc2 g     F .text	00000005              initialize_bomb_solve
00000000       F *UND*	000000d7              signal@@GLIBC_2.0
00000000  w      *UND*	00000000              __gmon_start__
00000000  w      *UND*	00000000              _Jv_RegisterClasses
0804a100 g     O .rodata	00000004              _fp_hw
08049197 g     F .text	0000004f              read_six_numbers
0804b650 g     O .data	0000000c              n41
0804b65c g     O .data	0000000c              n45
00000000       F *UND*	000000ef              getenv@@GLIBC_2.0
0804b1a0 g     O .data	00000004              bomb_id
0804a0c8 g     F .fini	00000000              _fini
08048f60 g     F .text	00000062              strings_not_equal
00000000       F *UND*	0000007a              write@@GLIBC_2.0
08048c2b g     F .text	000000f0              phase_6
00000000       F *UND*	00000171              fgets@@GLIBC_2.0
00000000       F *UND*	00000043              memset@@GLIBC_2.0
08048d1b g     F .text	0000004c              phase_2
0804b5e4 g     O .data	0000000c              node3
00000000       F *UND*	00000045              __strtol_internal@@GLIBC_2.0
00000000       F *UND*	0000019f              __libc_start_main@@GLIBC_2.0
00000000       F *UND*	0000007a              read@@GLIBC_2.0
0804a104 g     O .rodata	00000004              _IO_stdin_used
0804b680 g     O .data	0000000c              n33
0804b1c0 g     O .data	00000400              userid
0804b180 g       .data	00000000              __data_start
00000000       F *UND*	000000f8              fflush@@GLIBC_2.0
08048b6c g     F .text	00000051              fun7
08048bbd g     F .text	0000006e              secret_phase
00000000       F *UND*	0000003c              socket@@GLIBC_2.0
00000000       F *UND*	0000003c              __ctype_b_loc@@GLIBC_2.3
0804b614 g     O .data	0000000c              n46
0804b62c g     O .data	0000000c              n42
00000000       F *UND*	000000a0              bcopy@@GLIBC_2.0
08049155 g     F .text	00000042              explode_bomb
0804b8c0 g     O .bss	00000004              stderr@@GLIBC_2.0
00000000       F *UND*	00000027              memcpy@@GLIBC_2.0
08048e47 g     F .text	000000c2              phase_3
0804b5f0 g     O .data	0000000c              node2
08049265 g     F .text	00000113              read_line
00000000       F *UND*	00000032              fopen@@GLIBC_2.1
00000000       F *UND*	00000039              alarm@@GLIBC_2.0
0804a108 g     O .rodata	00000000              .hidden __dso_handle
08049685 g     F .text	00000039              init_timeout
00000000       F *UND*	00000022              strcpy@@GLIBC_2.0
0804b00c g     O .dtors	00000000              .hidden __DTOR_END__
0804a030 g     F .text	00000069              __libc_csu_init
0804b8e0 g     O .bss	00000640              input_strings
00000000       F *UND*	00000039              printf@@GLIBC_2.0
0804b5c0 g     O .data	0000000c              node6
08049378 g     F .text	000000d1              initialize_bomb
0804b668 g     O .data	0000000c              n34
080490bc g     F .text	00000099              phase_defused
00000000       F *UND*	00000062              strcasecmp@@GLIBC_2.0
080491e6 g     F .text	00000035              blank_line
0804921b g     F .text	0000004a              skip
00000000       F *UND*	0000006f              close@@GLIBC_2.0
0804b6c0 g     O .data	00000200              host_table
00000000       F *UND*	00000024              fprintf@@GLIBC_2.0
0804b644 g     O .data	0000000c              n47
0804b8d8 g     O .bss	00000004              infile
0804b620 g     O .data	0000000c              n43
0804b8c0 g       *ABS*	00000000              __bss_start
08048fec g     F .text	000000d0              send_msg
08048dd9 g     F .text	0000006e              phase_4
0804bf20 g     O .bss	00000050              scratch
00000000       F *UND*	0000008b              gethostname@@GLIBC_2.0
0804b8d4 g     O .bss	00000004              num_input_strings
0804b8c4 g     O .bss	00000004              stdin@@GLIBC_2.0
0804b674 g     O .data	0000000c              n31
08048fc7 g     F .text	00000025              invalid_phase
00000000       F *UND*	00000268              sleep@@GLIBC_2.0
0804b5fc g     O .data	0000000c              node1
0804b6a4 g     O .data	0000000c              n21
0804bf70 g       *ABS*	00000000              _end
0804b8c8 g     O .bss	00000004              stdout@@GLIBC_2.0
00000000       F *UND*	0000018f              puts@@GLIBC_2.0
080494b0 g     F .text	000001d5              init_driver
0804b5cc g     O .data	0000000c              node5
08049feb g     F .text	0000002f              sigalrm_handler
00000000       F *UND*	00000034              sscanf@@GLIBC_2.0
0804b8c0 g       *ABS*	00000000              _edata
0804b638 g     O .data	0000000c              n44
08048d67 g     F .text	00000072              phase_5
0804b608 g     O .data	0000000c              n48
00000000       F *UND*	000001a5              gethostbyname@@GLIBC_2.0
08048f40 g     F .text	00000020              string_length
00000000       F *UND*	000000f4              exit@@GLIBC_2.0
080497a0 g     F .text	000007b4              submitr
0804a099 g     F .text	00000000              .hidden __i686.get_pc_thunk.bx
08048b00 g     F .text	0000006c              func4
0804b5d8 g     O .data	0000000c              node4
08048994 g     F .text	00000160              main
080486ac g     F .init	00000000              _init
08048f09 g     F .text	00000028              phase_1


