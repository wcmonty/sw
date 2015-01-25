objdump -d bufbomb

bufbomb:     file format elf32-i386

Disassembly of section .init:

080486f8 <_init>:
 80486f8:	55                   	push   %ebp
 80486f9:	89 e5                	mov    %esp,%ebp
 80486fb:	83 ec 08             	sub    $0x8,%esp
 80486fe:	e8 61 02 00 00       	call   8048964 <call_gmon_start>
 8048703:	e8 e8 02 00 00       	call   80489f0 <frame_dummy>
 8048708:	e8 e3 17 00 00       	call   8049ef0 <__do_global_ctors_aux>
 804870d:	c9                   	leave  
 804870e:	c3                   	ret    
Disassembly of section .plt:

08048710 <__errno_location@plt-0x10>:
 8048710:	ff 35 e4 b0 04 08    	pushl  0x804b0e4
 8048716:	ff 25 e8 b0 04 08    	jmp    *0x804b0e8
 804871c:	00 00                	add    %al,(%eax)
	...

08048720 <__errno_location@plt>:
 8048720:	ff 25 ec b0 04 08    	jmp    *0x804b0ec
 8048726:	68 00 00 00 00       	push   $0x0
 804872b:	e9 e0 ff ff ff       	jmp    8048710 <_init+0x18>

08048730 <sprintf@plt>:
 8048730:	ff 25 f0 b0 04 08    	jmp    *0x804b0f0
 8048736:	68 08 00 00 00       	push   $0x8
 804873b:	e9 d0 ff ff ff       	jmp    8048710 <_init+0x18>

08048740 <srand@plt>:
 8048740:	ff 25 f4 b0 04 08    	jmp    *0x804b0f4
 8048746:	68 10 00 00 00       	push   $0x10
 804874b:	e9 c0 ff ff ff       	jmp    8048710 <_init+0x18>

08048750 <connect@plt>:
 8048750:	ff 25 f8 b0 04 08    	jmp    *0x804b0f8
 8048756:	68 18 00 00 00       	push   $0x18
 804875b:	e9 b0 ff ff ff       	jmp    8048710 <_init+0x18>

08048760 <mmap@plt>:
 8048760:	ff 25 fc b0 04 08    	jmp    *0x804b0fc
 8048766:	68 20 00 00 00       	push   $0x20
 804876b:	e9 a0 ff ff ff       	jmp    8048710 <_init+0x18>

08048770 <getpid@plt>:
 8048770:	ff 25 00 b1 04 08    	jmp    *0x804b100
 8048776:	68 28 00 00 00       	push   $0x28
 804877b:	e9 90 ff ff ff       	jmp    8048710 <_init+0x18>

08048780 <random@plt>:
 8048780:	ff 25 04 b1 04 08    	jmp    *0x804b104
 8048786:	68 30 00 00 00       	push   $0x30
 804878b:	e9 80 ff ff ff       	jmp    8048710 <_init+0x18>

08048790 <signal@plt>:
 8048790:	ff 25 08 b1 04 08    	jmp    *0x804b108
 8048796:	68 38 00 00 00       	push   $0x38
 804879b:	e9 70 ff ff ff       	jmp    8048710 <_init+0x18>

080487a0 <__gmon_start__@plt>:
 80487a0:	ff 25 0c b1 04 08    	jmp    *0x804b10c
 80487a6:	68 40 00 00 00       	push   $0x40
 80487ab:	e9 60 ff ff ff       	jmp    8048710 <_init+0x18>

080487b0 <calloc@plt>:
 80487b0:	ff 25 10 b1 04 08    	jmp    *0x804b110
 80487b6:	68 48 00 00 00       	push   $0x48
 80487bb:	e9 50 ff ff ff       	jmp    8048710 <_init+0x18>

080487c0 <write@plt>:
 80487c0:	ff 25 14 b1 04 08    	jmp    *0x804b114
 80487c6:	68 50 00 00 00       	push   $0x50
 80487cb:	e9 40 ff ff ff       	jmp    8048710 <_init+0x18>

080487d0 <memset@plt>:
 80487d0:	ff 25 18 b1 04 08    	jmp    *0x804b118
 80487d6:	68 58 00 00 00       	push   $0x58
 80487db:	e9 30 ff ff ff       	jmp    8048710 <_init+0x18>

080487e0 <__libc_start_main@plt>:
 80487e0:	ff 25 1c b1 04 08    	jmp    *0x804b11c
 80487e6:	68 60 00 00 00       	push   $0x60
 80487eb:	e9 20 ff ff ff       	jmp    8048710 <_init+0x18>

080487f0 <_IO_getc@plt>:
 80487f0:	ff 25 20 b1 04 08    	jmp    *0x804b120
 80487f6:	68 68 00 00 00       	push   $0x68
 80487fb:	e9 10 ff ff ff       	jmp    8048710 <_init+0x18>

08048800 <read@plt>:
 8048800:	ff 25 24 b1 04 08    	jmp    *0x804b124
 8048806:	68 70 00 00 00       	push   $0x70
 804880b:	e9 00 ff ff ff       	jmp    8048710 <_init+0x18>

08048810 <socket@plt>:
 8048810:	ff 25 28 b1 04 08    	jmp    *0x804b128
 8048816:	68 78 00 00 00       	push   $0x78
 804881b:	e9 f0 fe ff ff       	jmp    8048710 <_init+0x18>

08048820 <bcopy@plt>:
 8048820:	ff 25 2c b1 04 08    	jmp    *0x804b12c
 8048826:	68 80 00 00 00       	push   $0x80
 804882b:	e9 e0 fe ff ff       	jmp    8048710 <_init+0x18>

08048830 <getopt@plt>:
 8048830:	ff 25 30 b1 04 08    	jmp    *0x804b130
 8048836:	68 88 00 00 00       	push   $0x88
 804883b:	e9 d0 fe ff ff       	jmp    8048710 <_init+0x18>

08048840 <memcpy@plt>:
 8048840:	ff 25 34 b1 04 08    	jmp    *0x804b134
 8048846:	68 90 00 00 00       	push   $0x90
 804884b:	e9 c0 fe ff ff       	jmp    8048710 <_init+0x18>

08048850 <alarm@plt>:
 8048850:	ff 25 38 b1 04 08    	jmp    *0x804b138
 8048856:	68 98 00 00 00       	push   $0x98
 804885b:	e9 b0 fe ff ff       	jmp    8048710 <_init+0x18>

08048860 <strcpy@plt>:
 8048860:	ff 25 3c b1 04 08    	jmp    *0x804b13c
 8048866:	68 a0 00 00 00       	push   $0xa0
 804886b:	e9 a0 fe ff ff       	jmp    8048710 <_init+0x18>

08048870 <printf@plt>:
 8048870:	ff 25 40 b1 04 08    	jmp    *0x804b140
 8048876:	68 a8 00 00 00       	push   $0xa8
 804887b:	e9 90 fe ff ff       	jmp    8048710 <_init+0x18>

08048880 <strcasecmp@plt>:
 8048880:	ff 25 44 b1 04 08    	jmp    *0x804b144
 8048886:	68 b0 00 00 00       	push   $0xb0
 804888b:	e9 80 fe ff ff       	jmp    8048710 <_init+0x18>

08048890 <srandom@plt>:
 8048890:	ff 25 48 b1 04 08    	jmp    *0x804b148
 8048896:	68 b8 00 00 00       	push   $0xb8
 804889b:	e9 70 fe ff ff       	jmp    8048710 <_init+0x18>

080488a0 <close@plt>:
 80488a0:	ff 25 4c b1 04 08    	jmp    *0x804b14c
 80488a6:	68 c0 00 00 00       	push   $0xc0
 80488ab:	e9 60 fe ff ff       	jmp    8048710 <_init+0x18>

080488b0 <fwrite@plt>:
 80488b0:	ff 25 50 b1 04 08    	jmp    *0x804b150
 80488b6:	68 c8 00 00 00       	push   $0xc8
 80488bb:	e9 50 fe ff ff       	jmp    8048710 <_init+0x18>

080488c0 <gethostname@plt>:
 80488c0:	ff 25 54 b1 04 08    	jmp    *0x804b154
 80488c6:	68 d0 00 00 00       	push   $0xd0
 80488cb:	e9 40 fe ff ff       	jmp    8048710 <_init+0x18>

080488d0 <puts@plt>:
 80488d0:	ff 25 58 b1 04 08    	jmp    *0x804b158
 80488d6:	68 d8 00 00 00       	push   $0xd8
 80488db:	e9 30 fe ff ff       	jmp    8048710 <_init+0x18>

080488e0 <rand@plt>:
 80488e0:	ff 25 5c b1 04 08    	jmp    *0x804b15c
 80488e6:	68 e0 00 00 00       	push   $0xe0
 80488eb:	e9 20 fe ff ff       	jmp    8048710 <_init+0x18>

080488f0 <sscanf@plt>:
 80488f0:	ff 25 60 b1 04 08    	jmp    *0x804b160
 80488f6:	68 e8 00 00 00       	push   $0xe8
 80488fb:	e9 10 fe ff ff       	jmp    8048710 <_init+0x18>

08048900 <munmap@plt>:
 8048900:	ff 25 64 b1 04 08    	jmp    *0x804b164
 8048906:	68 f0 00 00 00       	push   $0xf0
 804890b:	e9 00 fe ff ff       	jmp    8048710 <_init+0x18>

08048910 <gethostbyname@plt>:
 8048910:	ff 25 68 b1 04 08    	jmp    *0x804b168
 8048916:	68 f8 00 00 00       	push   $0xf8
 804891b:	e9 f0 fd ff ff       	jmp    8048710 <_init+0x18>

08048920 <__strdup@plt>:
 8048920:	ff 25 6c b1 04 08    	jmp    *0x804b16c
 8048926:	68 00 01 00 00       	push   $0x100
 804892b:	e9 e0 fd ff ff       	jmp    8048710 <_init+0x18>

08048930 <exit@plt>:
 8048930:	ff 25 70 b1 04 08    	jmp    *0x804b170
 8048936:	68 08 01 00 00       	push   $0x108
 804893b:	e9 d0 fd ff ff       	jmp    8048710 <_init+0x18>
Disassembly of section .text:

08048940 <_start>:
 8048940:	31 ed                	xor    %ebp,%ebp
 8048942:	5e                   	pop    %esi
 8048943:	89 e1                	mov    %esp,%ecx
 8048945:	83 e4 f0             	and    $0xfffffff0,%esp
 8048948:	50                   	push   %eax
 8048949:	54                   	push   %esp
 804894a:	52                   	push   %edx
 804894b:	68 70 9e 04 08       	push   $0x8049e70
 8048950:	68 80 9e 04 08       	push   $0x8049e80
 8048955:	51                   	push   %ecx
 8048956:	56                   	push   %esi
 8048957:	68 e7 8d 04 08       	push   $0x8048de7
 804895c:	e8 7f fe ff ff       	call   80487e0 <__libc_start_main@plt>
 8048961:	f4                   	hlt    
 8048962:	90                   	nop    
 8048963:	90                   	nop    

08048964 <call_gmon_start>:
 8048964:	55                   	push   %ebp
 8048965:	89 e5                	mov    %esp,%ebp
 8048967:	53                   	push   %ebx
 8048968:	83 ec 04             	sub    $0x4,%esp
 804896b:	e8 00 00 00 00       	call   8048970 <call_gmon_start+0xc>
 8048970:	5b                   	pop    %ebx
 8048971:	81 c3 70 27 00 00    	add    $0x2770,%ebx
 8048977:	8b 93 fc ff ff ff    	mov    0xfffffffc(%ebx),%edx
 804897d:	85 d2                	test   %edx,%edx
 804897f:	74 05                	je     8048986 <call_gmon_start+0x22>
 8048981:	e8 1a fe ff ff       	call   80487a0 <__gmon_start__@plt>
 8048986:	58                   	pop    %eax
 8048987:	5b                   	pop    %ebx
 8048988:	c9                   	leave  
 8048989:	c3                   	ret    
 804898a:	90                   	nop    
 804898b:	90                   	nop    
 804898c:	90                   	nop    
 804898d:	90                   	nop    
 804898e:	90                   	nop    
 804898f:	90                   	nop    

08048990 <__do_global_dtors_aux>:
 8048990:	55                   	push   %ebp
 8048991:	89 e5                	mov    %esp,%ebp
 8048993:	53                   	push   %ebx
 8048994:	83 ec 04             	sub    $0x4,%esp
 8048997:	80 3d d0 c1 04 08 00 	cmpb   $0x0,0x804c1d0
 804899e:	75 3f                	jne    80489df <__do_global_dtors_aux+0x4f>
 80489a0:	b8 0c b0 04 08       	mov    $0x804b00c,%eax
 80489a5:	2d 08 b0 04 08       	sub    $0x804b008,%eax
 80489aa:	c1 f8 02             	sar    $0x2,%eax
 80489ad:	8d 58 ff             	lea    0xffffffff(%eax),%ebx
 80489b0:	a1 cc c1 04 08       	mov    0x804c1cc,%eax
 80489b5:	39 c3                	cmp    %eax,%ebx
 80489b7:	76 1f                	jbe    80489d8 <__do_global_dtors_aux+0x48>
 80489b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi),%esi
 80489c0:	83 c0 01             	add    $0x1,%eax
 80489c3:	a3 cc c1 04 08       	mov    %eax,0x804c1cc
 80489c8:	ff 14 85 08 b0 04 08 	call   *0x804b008(,%eax,4)
 80489cf:	a1 cc c1 04 08       	mov    0x804c1cc,%eax
 80489d4:	39 c3                	cmp    %eax,%ebx
 80489d6:	77 e8                	ja     80489c0 <__do_global_dtors_aux+0x30>
 80489d8:	c6 05 d0 c1 04 08 01 	movb   $0x1,0x804c1d0
 80489df:	83 c4 04             	add    $0x4,%esp
 80489e2:	5b                   	pop    %ebx
 80489e3:	5d                   	pop    %ebp
 80489e4:	c3                   	ret    
 80489e5:	8d 74 26 00          	lea    0x0(%esi),%esi
 80489e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

080489f0 <frame_dummy>:
 80489f0:	55                   	push   %ebp
 80489f1:	89 e5                	mov    %esp,%ebp
 80489f3:	83 ec 08             	sub    $0x8,%esp
 80489f6:	a1 10 b0 04 08       	mov    0x804b010,%eax
 80489fb:	85 c0                	test   %eax,%eax
 80489fd:	74 12                	je     8048a11 <frame_dummy+0x21>
 80489ff:	b8 00 00 00 00       	mov    $0x0,%eax
 8048a04:	85 c0                	test   %eax,%eax
 8048a06:	74 09                	je     8048a11 <frame_dummy+0x21>
 8048a08:	c7 04 24 10 b0 04 08 	movl   $0x804b010,(%esp)
 8048a0f:	ff d0                	call   *%eax
 8048a11:	c9                   	leave  
 8048a12:	c3                   	ret    
 8048a13:	90                   	nop    
 8048a14:	90                   	nop    
 8048a15:	90                   	nop    
 8048a16:	90                   	nop    
 8048a17:	90                   	nop    
 8048a18:	90                   	nop    
 8048a19:	90                   	nop    
 8048a1a:	90                   	nop    
 8048a1b:	90                   	nop    
 8048a1c:	90                   	nop    
 8048a1d:	90                   	nop    
 8048a1e:	90                   	nop    
 8048a1f:	90                   	nop    

08048a20 <illegalhandler>:
 8048a20:	55                   	push   %ebp
 8048a21:	89 e5                	mov    %esp,%ebp
 8048a23:	83 ec 08             	sub    $0x8,%esp
 8048a26:	c7 04 24 40 9f 04 08 	movl   $0x8049f40,(%esp)
 8048a2d:	e8 9e fe ff ff       	call   80488d0 <puts@plt>
 8048a32:	c7 04 24 20 a1 04 08 	movl   $0x804a120,(%esp)
 8048a39:	e8 92 fe ff ff       	call   80488d0 <puts@plt>
 8048a3e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048a45:	e8 e6 fe ff ff       	call   8048930 <exit@plt>

08048a4a <seghandler>:
 8048a4a:	55                   	push   %ebp
 8048a4b:	89 e5                	mov    %esp,%ebp
 8048a4d:	83 ec 08             	sub    $0x8,%esp
 8048a50:	c7 04 24 6c 9f 04 08 	movl   $0x8049f6c,(%esp)
 8048a57:	e8 74 fe ff ff       	call   80488d0 <puts@plt>
 8048a5c:	c7 04 24 20 a1 04 08 	movl   $0x804a120,(%esp)
 8048a63:	e8 68 fe ff ff       	call   80488d0 <puts@plt>
 8048a68:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048a6f:	e8 bc fe ff ff       	call   8048930 <exit@plt>

08048a74 <bushandler>:
 8048a74:	55                   	push   %ebp
 8048a75:	89 e5                	mov    %esp,%ebp
 8048a77:	83 ec 08             	sub    $0x8,%esp
 8048a7a:	c7 04 24 94 9f 04 08 	movl   $0x8049f94,(%esp)
 8048a81:	e8 4a fe ff ff       	call   80488d0 <puts@plt>
 8048a86:	c7 04 24 20 a1 04 08 	movl   $0x804a120,(%esp)
 8048a8d:	e8 3e fe ff ff       	call   80488d0 <puts@plt>
 8048a92:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048a99:	e8 92 fe ff ff       	call   8048930 <exit@plt>

08048a9e <usage>:
 8048a9e:	55                   	push   %ebp
 8048a9f:	89 e5                	mov    %esp,%ebp
 8048aa1:	83 ec 08             	sub    $0x8,%esp
 8048aa4:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048aa8:	c7 04 24 36 a1 04 08 	movl   $0x804a136,(%esp)
 8048aaf:	e8 bc fd ff ff       	call   8048870 <printf@plt>
 8048ab4:	c7 04 24 54 a1 04 08 	movl   $0x804a154,(%esp)
 8048abb:	e8 10 fe ff ff       	call   80488d0 <puts@plt>
 8048ac0:	c7 04 24 6a a1 04 08 	movl   $0x804a16a,(%esp)
 8048ac7:	e8 04 fe ff ff       	call   80488d0 <puts@plt>
 8048acc:	c7 04 24 b4 9f 04 08 	movl   $0x8049fb4,(%esp)
 8048ad3:	e8 f8 fd ff ff       	call   80488d0 <puts@plt>
 8048ad8:	c7 04 24 f0 9f 04 08 	movl   $0x8049ff0,(%esp)
 8048adf:	e8 ec fd ff ff       	call   80488d0 <puts@plt>
 8048ae4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048aeb:	e8 40 fe ff ff       	call   8048930 <exit@plt>

08048af0 <uniqueval>:
 8048af0:	55                   	push   %ebp
 8048af1:	89 e5                	mov    %esp,%ebp
 8048af3:	83 ec 08             	sub    $0x8,%esp
 8048af6:	e8 75 fc ff ff       	call   8048770 <getpid@plt>
 8048afb:	89 04 24             	mov    %eax,(%esp)
 8048afe:	e8 8d fd ff ff       	call   8048890 <srandom@plt>
 8048b03:	e8 78 fc ff ff       	call   8048780 <random@plt>
 8048b08:	c9                   	leave  
 8048b09:	c3                   	ret    

08048b0a <Gets>:
 8048b0a:	55                   	push   %ebp
 8048b0b:	89 e5                	mov    %esp,%ebp
 8048b0d:	57                   	push   %edi
 8048b0e:	56                   	push   %esi
 8048b0f:	53                   	push   %ebx
 8048b10:	83 ec 0c             	sub    $0xc,%esp
 8048b13:	8b 7d 08             	mov    0x8(%ebp),%edi
 8048b16:	c7 05 f0 c1 04 08 00 	movl   $0x0,0x804c1f0
 8048b1d:	00 00 00 
 8048b20:	89 fe                	mov    %edi,%esi
 8048b22:	eb 4a                	jmp    8048b6e <Gets+0x64>
 8048b24:	89 c2                	mov    %eax,%edx
 8048b26:	88 06                	mov    %al,(%esi)
 8048b28:	8b 1d f0 c1 04 08    	mov    0x804c1f0,%ebx
 8048b2e:	81 fb ff 03 00 00    	cmp    $0x3ff,%ebx
 8048b34:	7f 35                	jg     8048b6b <Gets+0x61>
 8048b36:	8d 0c 5b             	lea    (%ebx,%ebx,2),%ecx
 8048b39:	c0 f8 04             	sar    $0x4,%al
 8048b3c:	83 e0 0f             	and    $0xf,%eax
 8048b3f:	0f b6 80 98 a2 04 08 	movzbl 0x804a298(%eax),%eax
 8048b46:	88 81 00 c2 04 08    	mov    %al,0x804c200(%ecx)
 8048b4c:	83 e2 0f             	and    $0xf,%edx
 8048b4f:	0f b6 82 98 a2 04 08 	movzbl 0x804a298(%edx),%eax
 8048b56:	88 81 01 c2 04 08    	mov    %al,0x804c201(%ecx)
 8048b5c:	c6 81 02 c2 04 08 20 	movb   $0x20,0x804c202(%ecx)
 8048b63:	8d 43 01             	lea    0x1(%ebx),%eax
 8048b66:	a3 f0 c1 04 08       	mov    %eax,0x804c1f0
 8048b6b:	83 c6 01             	add    $0x1,%esi
 8048b6e:	a1 e0 c1 04 08       	mov    0x804c1e0,%eax
 8048b73:	89 04 24             	mov    %eax,(%esp)
 8048b76:	e8 75 fc ff ff       	call   80487f0 <_IO_getc@plt>
 8048b7b:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048b7e:	74 05                	je     8048b85 <Gets+0x7b>
 8048b80:	83 f8 0a             	cmp    $0xa,%eax
 8048b83:	75 9f                	jne    8048b24 <Gets+0x1a>
 8048b85:	c6 06 00             	movb   $0x0,(%esi)
 8048b88:	a1 f0 c1 04 08       	mov    0x804c1f0,%eax
 8048b8d:	c6 84 40 00 c2 04 08 	movb   $0x0,0x804c200(%eax,%eax,2)
 8048b94:	00 
 8048b95:	89 f8                	mov    %edi,%eax
 8048b97:	83 c4 0c             	add    $0xc,%esp
 8048b9a:	5b                   	pop    %ebx
 8048b9b:	5e                   	pop    %esi
 8048b9c:	5f                   	pop    %edi
 8048b9d:	5d                   	pop    %ebp
 8048b9e:	c3                   	ret    

08048b9f <getbufn>:
 8048b9f:	55                   	push   %ebp
 8048ba0:	89 e5                	mov    %esp,%ebp
 8048ba2:	81 ec 08 02 00 00    	sub    $0x208,%esp
 8048ba8:	8d 85 00 fe ff ff    	lea    0xfffffe00(%ebp),%eax
 8048bae:	89 04 24             	mov    %eax,(%esp)
 8048bb1:	e8 54 ff ff ff       	call   8048b0a <Gets>
 8048bb6:	b8 01 00 00 00       	mov    $0x1,%eax
 8048bbb:	c9                   	leave  
 8048bbc:	c3                   	ret    

08048bbd <getbuf>:
 8048bbd:	55                   	push   %ebp
 8048bbe:	89 e5                	mov    %esp,%ebp
 8048bc0:	83 ec 28             	sub    $0x28,%esp
 8048bc3:	8d 45 e0             	lea    0xffffffe0(%ebp),%eax
 8048bc6:	89 04 24             	mov    %eax,(%esp)
 8048bc9:	e8 3c ff ff ff       	call   8048b0a <Gets>
 8048bce:	b8 01 00 00 00       	mov    $0x1,%eax
 8048bd3:	c9                   	leave  
 8048bd4:	c3                   	ret    

08048bd5 <testn>:
 8048bd5:	55                   	push   %ebp
 8048bd6:	89 e5                	mov    %esp,%ebp
 8048bd8:	83 ec 18             	sub    $0x18,%esp
 8048bdb:	c7 45 fc ef be ad de 	movl   $0xdeadbeef,0xfffffffc(%ebp)
 8048be2:	e8 b8 ff ff ff       	call   8048b9f <getbufn>
 8048be7:	89 c2                	mov    %eax,%edx
 8048be9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 8048bec:	3d ef be ad de       	cmp    $0xdeadbeef,%eax
 8048bf1:	74 0e                	je     8048c01 <testn+0x2c>
 8048bf3:	c7 04 24 18 a0 04 08 	movl   $0x804a018,(%esp)
 8048bfa:	e8 d1 fc ff ff       	call   80488d0 <puts@plt>
 8048bff:	eb 36                	jmp    8048c37 <testn+0x62>
 8048c01:	3b 15 e4 c1 04 08    	cmp    0x804c1e4,%edx
 8048c07:	75 1e                	jne    8048c27 <testn+0x52>
 8048c09:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048c0d:	c7 04 24 44 a0 04 08 	movl   $0x804a044,(%esp)
 8048c14:	e8 57 fc ff ff       	call   8048870 <printf@plt>
 8048c19:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048c20:	e8 7b 04 00 00       	call   80490a0 <validate>
 8048c25:	eb 10                	jmp    8048c37 <testn+0x62>
 8048c27:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048c2b:	c7 04 24 83 a1 04 08 	movl   $0x804a183,(%esp)
 8048c32:	e8 39 fc ff ff       	call   8048870 <printf@plt>
 8048c37:	c9                   	leave  
 8048c38:	c3                   	ret    

08048c39 <test>:
 8048c39:	55                   	push   %ebp
 8048c3a:	89 e5                	mov    %esp,%ebp
 8048c3c:	53                   	push   %ebx
 8048c3d:	83 ec 24             	sub    $0x24,%esp
 8048c40:	e8 ab fe ff ff       	call   8048af0 <uniqueval>
 8048c45:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 8048c48:	e8 70 ff ff ff       	call   8048bbd <getbuf>
 8048c4d:	89 c3                	mov    %eax,%ebx
 8048c4f:	e8 9c fe ff ff       	call   8048af0 <uniqueval>
 8048c54:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
 8048c57:	39 d0                	cmp    %edx,%eax
 8048c59:	74 0e                	je     8048c69 <test+0x30>
 8048c5b:	c7 04 24 18 a0 04 08 	movl   $0x804a018,(%esp)
 8048c62:	e8 69 fc ff ff       	call   80488d0 <puts@plt>
 8048c67:	eb 36                	jmp    8048c9f <test+0x66>
 8048c69:	3b 1d e4 c1 04 08    	cmp    0x804c1e4,%ebx
 8048c6f:	75 1e                	jne    8048c8f <test+0x56>
 8048c71:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048c75:	c7 04 24 9f a1 04 08 	movl   $0x804a19f,(%esp)
 8048c7c:	e8 ef fb ff ff       	call   8048870 <printf@plt>
 8048c81:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048c88:	e8 13 04 00 00       	call   80490a0 <validate>
 8048c8d:	eb 10                	jmp    8048c9f <test+0x66>
 8048c8f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048c93:	c7 04 24 bc a1 04 08 	movl   $0x804a1bc,(%esp)
 8048c9a:	e8 d1 fb ff ff       	call   8048870 <printf@plt>
 8048c9f:	83 c4 24             	add    $0x24,%esp
 8048ca2:	5b                   	pop    %ebx
 8048ca3:	5d                   	pop    %ebp
 8048ca4:	c3                   	ret    

08048ca5 <launch>:
 8048ca5:	55                   	push   %ebp
 8048ca6:	89 e5                	mov    %esp,%ebp
 8048ca8:	53                   	push   %ebx
 8048ca9:	83 ec 54             	sub    $0x54,%esp
 8048cac:	89 c3                	mov    %eax,%ebx
 8048cae:	8d 4d bc             	lea    0xffffffbc(%ebp),%ecx
 8048cb1:	81 e1 f0 3f 00 00    	and    $0x3ff0,%ecx
 8048cb7:	8d 54 0a 1e          	lea    0x1e(%edx,%ecx,1),%edx
 8048cbb:	83 e2 f0             	and    $0xfffffff0,%edx
 8048cbe:	29 d4                	sub    %edx,%esp
 8048cc0:	8d 44 24 1b          	lea    0x1b(%esp),%eax
 8048cc4:	83 e0 f0             	and    $0xfffffff0,%eax
 8048cc7:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8048ccb:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 8048cd2:	00 
 8048cd3:	89 04 24             	mov    %eax,(%esp)
 8048cd6:	e8 f5 fa ff ff       	call   80487d0 <memset@plt>
 8048cdb:	c7 04 24 d7 a1 04 08 	movl   $0x804a1d7,(%esp)
 8048ce2:	e8 89 fb ff ff       	call   8048870 <printf@plt>
 8048ce7:	85 db                	test   %ebx,%ebx
 8048ce9:	74 07                	je     8048cf2 <launch+0x4d>
 8048ceb:	e8 e5 fe ff ff       	call   8048bd5 <testn>
 8048cf0:	eb 05                	jmp    8048cf7 <launch+0x52>
 8048cf2:	e8 42 ff ff ff       	call   8048c39 <test>
 8048cf7:	83 3d e8 c1 04 08 00 	cmpl   $0x0,0x804c1e8
 8048cfe:	66 90                	xchg   %ax,%ax
 8048d00:	75 16                	jne    8048d18 <launch+0x73>
 8048d02:	c7 04 24 20 a1 04 08 	movl   $0x804a120,(%esp)
 8048d09:	e8 c2 fb ff ff       	call   80488d0 <puts@plt>
 8048d0e:	c7 05 e8 c1 04 08 00 	movl   $0x0,0x804c1e8
 8048d15:	00 00 00 
 8048d18:	8b 5d fc             	mov    0xfffffffc(%ebp),%ebx
 8048d1b:	c9                   	leave  
 8048d1c:	c3                   	ret    

08048d1d <launcher>:
 8048d1d:	55                   	push   %ebp
 8048d1e:	89 e5                	mov    %esp,%ebp
 8048d20:	83 ec 18             	sub    $0x18,%esp
 8048d23:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d26:	a3 f4 c1 04 08       	mov    %eax,0x804c1f4
 8048d2b:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d2e:	a3 f8 c1 04 08       	mov    %eax,0x804c1f8
 8048d33:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8048d3a:	00 
 8048d3b:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8048d42:	00 
 8048d43:	c7 44 24 0c 32 01 00 	movl   $0x132,0xc(%esp)
 8048d4a:	00 
 8048d4b:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
 8048d52:	00 
 8048d53:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048d5a:	00 
 8048d5b:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 8048d62:	e8 f9 f9 ff ff       	call   8048760 <mmap@plt>
 8048d67:	3d 00 60 58 55       	cmp    $0x55586000,%eax
 8048d6c:	74 31                	je     8048d9f <launcher+0x82>
 8048d6e:	a1 c0 c1 04 08       	mov    0x804c1c0,%eax
 8048d73:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048d77:	c7 44 24 08 47 00 00 	movl   $0x47,0x8(%esp)
 8048d7e:	00 
 8048d7f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048d86:	00 
 8048d87:	c7 04 24 64 a0 04 08 	movl   $0x804a064,(%esp)
 8048d8e:	e8 1d fb ff ff       	call   80488b0 <fwrite@plt>
 8048d93:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048d9a:	e8 91 fb ff ff       	call   8048930 <exit@plt>
 8048d9f:	c7 05 04 ce 04 08 f8 	movl   $0x55685ff8,0x804ce04
 8048da6:	5f 68 55 
 8048da9:	ba f8 5f 68 55       	mov    $0x55685ff8,%edx
 8048dae:	89 e0                	mov    %esp,%eax
 8048db0:	89 d4                	mov    %edx,%esp
 8048db2:	89 c2                	mov    %eax,%edx
 8048db4:	89 15 fc c1 04 08    	mov    %edx,0x804c1fc
 8048dba:	8b 15 f8 c1 04 08    	mov    0x804c1f8,%edx
 8048dc0:	a1 f4 c1 04 08       	mov    0x804c1f4,%eax
 8048dc5:	e8 db fe ff ff       	call   8048ca5 <launch>
 8048dca:	a1 fc c1 04 08       	mov    0x804c1fc,%eax
 8048dcf:	89 c4                	mov    %eax,%esp
 8048dd1:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048dd8:	00 
 8048dd9:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 8048de0:	e8 1b fb ff ff       	call   8048900 <munmap@plt>
 8048de5:	c9                   	leave  
 8048de6:	c3                   	ret    

08048de7 <main>:
 8048de7:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048deb:	83 e4 f0             	and    $0xfffffff0,%esp
 8048dee:	ff 71 fc             	pushl  0xfffffffc(%ecx)
 8048df1:	55                   	push   %ebp
 8048df2:	89 e5                	mov    %esp,%ebp
 8048df4:	57                   	push   %edi
 8048df5:	56                   	push   %esi
 8048df6:	53                   	push   %ebx
 8048df7:	51                   	push   %ecx
 8048df8:	83 ec 18             	sub    $0x18,%esp
 8048dfb:	8b 31                	mov    (%ecx),%esi
 8048dfd:	8b 59 04             	mov    0x4(%ecx),%ebx
 8048e00:	c7 44 24 04 4a 8a 04 	movl   $0x8048a4a,0x4(%esp)
 8048e07:	08 
 8048e08:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 8048e0f:	e8 7c f9 ff ff       	call   8048790 <signal@plt>
 8048e14:	c7 44 24 04 74 8a 04 	movl   $0x8048a74,0x4(%esp)
 8048e1b:	08 
 8048e1c:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 8048e23:	e8 68 f9 ff ff       	call   8048790 <signal@plt>
 8048e28:	c7 44 24 04 20 8a 04 	movl   $0x8048a20,0x4(%esp)
 8048e2f:	08 
 8048e30:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048e37:	e8 54 f9 ff ff       	call   8048790 <signal@plt>
 8048e3c:	a1 c4 c1 04 08       	mov    0x804c1c4,%eax
 8048e41:	a3 e0 c1 04 08       	mov    %eax,0x804c1e0
 8048e46:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
 8048e4d:	c7 45 ec 01 00 00 00 	movl   $0x1,0xffffffec(%ebp)
 8048e54:	eb 6c                	jmp    8048ec2 <main+0xdb>
 8048e56:	83 e8 67             	sub    $0x67,%eax
 8048e59:	3c 0e                	cmp    $0xe,%al
 8048e5b:	77 5e                	ja     8048ebb <main+0xd4>
 8048e5d:	0f b6 c0             	movzbl %al,%eax
 8048e60:	ff 24 85 5c a2 04 08 	jmp    *0x804a25c(,%eax,4)
 8048e67:	c7 45 e8 01 00 00 00 	movl   $0x1,0xffffffe8(%ebp)
 8048e6e:	c7 45 ec 05 00 00 00 	movl   $0x5,0xffffffec(%ebp)
 8048e75:	eb 4b                	jmp    8048ec2 <main+0xdb>
 8048e77:	8b 03                	mov    (%ebx),%eax
 8048e79:	e8 20 fc ff ff       	call   8048a9e <usage>
 8048e7e:	66 90                	xchg   %ax,%ax
 8048e80:	eb 40                	jmp    8048ec2 <main+0xdb>
 8048e82:	a1 c8 c1 04 08       	mov    0x804c1c8,%eax
 8048e87:	89 04 24             	mov    %eax,(%esp)
 8048e8a:	e8 91 fa ff ff       	call   8048920 <__strdup@plt>
 8048e8f:	a3 d4 c1 04 08       	mov    %eax,0x804c1d4
 8048e94:	89 04 24             	mov    %eax,(%esp)
 8048e97:	e8 95 0f 00 00       	call   8049e31 <gencookie>
 8048e9c:	a3 e4 c1 04 08       	mov    %eax,0x804c1e4
 8048ea1:	eb 1f                	jmp    8048ec2 <main+0xdb>
 8048ea3:	c7 05 d8 c1 04 08 01 	movl   $0x1,0x804c1d8
 8048eaa:	00 00 00 
 8048ead:	eb 13                	jmp    8048ec2 <main+0xdb>
 8048eaf:	c7 05 dc c1 04 08 01 	movl   $0x1,0x804c1dc
 8048eb6:	00 00 00 
 8048eb9:	eb 07                	jmp    8048ec2 <main+0xdb>
 8048ebb:	8b 03                	mov    (%ebx),%eax
 8048ebd:	e8 dc fb ff ff       	call   8048a9e <usage>
 8048ec2:	c7 44 24 08 e4 a1 04 	movl   $0x804a1e4,0x8(%esp)
 8048ec9:	08 
 8048eca:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048ece:	89 34 24             	mov    %esi,(%esp)
 8048ed1:	e8 5a f9 ff ff       	call   8048830 <getopt@plt>
 8048ed6:	3c ff                	cmp    $0xff,%al
 8048ed8:	0f 85 78 ff ff ff    	jne    8048e56 <main+0x6f>
 8048ede:	83 3d d4 c1 04 08 00 	cmpl   $0x0,0x804c1d4
 8048ee5:	75 19                	jne    8048f00 <main+0x119>
 8048ee7:	8b 03                	mov    (%ebx),%eax
 8048ee9:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048eed:	c7 04 24 ac a0 04 08 	movl   $0x804a0ac,(%esp)
 8048ef4:	e8 77 f9 ff ff       	call   8048870 <printf@plt>
 8048ef9:	8b 03                	mov    (%ebx),%eax
 8048efb:	e8 9e fb ff ff       	call   8048a9e <usage>
 8048f00:	e8 e2 02 00 00       	call   80491e7 <initialize_bomb>
 8048f05:	a1 d4 c1 04 08       	mov    0x804c1d4,%eax
 8048f0a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f0e:	c7 04 24 eb a1 04 08 	movl   $0x804a1eb,(%esp)
 8048f15:	e8 56 f9 ff ff       	call   8048870 <printf@plt>
 8048f1a:	a1 e4 c1 04 08       	mov    0x804c1e4,%eax
 8048f1f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f23:	c7 04 24 f7 a1 04 08 	movl   $0x804a1f7,(%esp)
 8048f2a:	e8 41 f9 ff ff       	call   8048870 <printf@plt>
 8048f2f:	a1 e4 c1 04 08       	mov    0x804c1e4,%eax
 8048f34:	89 04 24             	mov    %eax,(%esp)
 8048f37:	e8 54 f9 ff ff       	call   8048890 <srandom@plt>
 8048f3c:	e8 3f f8 ff ff       	call   8048780 <random@plt>
 8048f41:	25 f0 0f 00 00       	and    $0xff0,%eax
 8048f46:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 8048f49:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 8048f50:	00 
 8048f51:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 8048f54:	89 04 24             	mov    %eax,(%esp)
 8048f57:	e8 54 f8 ff ff       	call   80487b0 <calloc@plt>
 8048f5c:	89 c6                	mov    %eax,%esi
 8048f5e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8048f64:	83 7d ec 01          	cmpl   $0x1,0xffffffec(%ebp)
 8048f68:	7e 25                	jle    8048f8f <main+0x1a8>
 8048f6a:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048f6f:	bf 80 00 00 00       	mov    $0x80,%edi
 8048f74:	e8 07 f8 ff ff       	call   8048780 <random@plt>
 8048f79:	25 f0 00 00 00       	and    $0xf0,%eax
 8048f7e:	89 fa                	mov    %edi,%edx
 8048f80:	29 c2                	sub    %eax,%edx
 8048f82:	89 14 9e             	mov    %edx,(%esi,%ebx,4)
 8048f85:	83 c3 01             	add    $0x1,%ebx
 8048f88:	3b 5d ec             	cmp    0xffffffec(%ebp),%ebx
 8048f8b:	74 2e                	je     8048fbb <main+0x1d4>
 8048f8d:	eb e5                	jmp    8048f74 <main+0x18d>
 8048f8f:	83 7d ec 01          	cmpl   $0x1,0xffffffec(%ebp)
 8048f93:	75 2d                	jne    8048fc2 <main+0x1db>
 8048f95:	eb 24                	jmp    8048fbb <main+0x1d4>
 8048f97:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
 8048f9a:	05 00 01 00 00       	add    $0x100,%eax
 8048f9f:	03 45 e4             	add    0xffffffe4(%ebp),%eax
 8048fa2:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048fa6:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 8048fa9:	89 04 24             	mov    %eax,(%esp)
 8048fac:	e8 6c fd ff ff       	call   8048d1d <launcher>
 8048fb1:	83 c3 01             	add    $0x1,%ebx
 8048fb4:	3b 5d ec             	cmp    0xffffffec(%ebp),%ebx
 8048fb7:	7d 09                	jge    8048fc2 <main+0x1db>
 8048fb9:	eb dc                	jmp    8048f97 <main+0x1b0>
 8048fbb:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048fc0:	eb d5                	jmp    8048f97 <main+0x1b0>
 8048fc2:	b8 00 00 00 00       	mov    $0x0,%eax
 8048fc7:	83 c4 18             	add    $0x18,%esp
 8048fca:	59                   	pop    %ecx
 8048fcb:	5b                   	pop    %ebx
 8048fcc:	5e                   	pop    %esi
 8048fcd:	5f                   	pop    %edi
 8048fce:	5d                   	pop    %ebp
 8048fcf:	8d 61 fc             	lea    0xfffffffc(%ecx),%esp
 8048fd2:	c3                   	ret    

08048fd3 <bang>:
 8048fd3:	55                   	push   %ebp
 8048fd4:	89 e5                	mov    %esp,%ebp
 8048fd6:	83 ec 08             	sub    $0x8,%esp
 8048fd9:	a1 ec c1 04 08       	mov    0x804c1ec,%eax
 8048fde:	3b 05 e4 c1 04 08    	cmp    0x804c1e4,%eax
 8048fe4:	75 1e                	jne    8049004 <bang+0x31>
 8048fe6:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048fea:	c7 04 24 d8 a0 04 08 	movl   $0x804a0d8,(%esp)
 8048ff1:	e8 7a f8 ff ff       	call   8048870 <printf@plt>
 8048ff6:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048ffd:	e8 9e 00 00 00       	call   80490a0 <validate>
 8049002:	eb 10                	jmp    8049014 <bang+0x41>
 8049004:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049008:	c7 04 24 05 a2 04 08 	movl   $0x804a205,(%esp)
 804900f:	e8 5c f8 ff ff       	call   8048870 <printf@plt>
 8049014:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804901b:	e8 10 f9 ff ff       	call   8048930 <exit@plt>

08049020 <fizz>:
 8049020:	55                   	push   %ebp
 8049021:	89 e5                	mov    %esp,%ebp
 8049023:	83 ec 08             	sub    $0x8,%esp
 8049026:	8b 45 08             	mov    0x8(%ebp),%eax
 8049029:	3b 05 e4 c1 04 08    	cmp    0x804c1e4,%eax
 804902f:	75 1e                	jne    804904f <fizz+0x2f>
 8049031:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049035:	c7 04 24 23 a2 04 08 	movl   $0x804a223,(%esp)
 804903c:	e8 2f f8 ff ff       	call   8048870 <printf@plt>
 8049041:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049048:	e8 53 00 00 00       	call   80490a0 <validate>
 804904d:	eb 10                	jmp    804905f <fizz+0x3f>
 804904f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049053:	c7 04 24 00 a1 04 08 	movl   $0x804a100,(%esp)
 804905a:	e8 11 f8 ff ff       	call   8048870 <printf@plt>
 804905f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049066:	e8 c5 f8 ff ff       	call   8048930 <exit@plt>

0804906b <smoke>:
 804906b:	55                   	push   %ebp
 804906c:	89 e5                	mov    %esp,%ebp
 804906e:	83 ec 08             	sub    $0x8,%esp
 8049071:	c7 04 24 41 a2 04 08 	movl   $0x804a241,(%esp)
 8049078:	e8 53 f8 ff ff       	call   80488d0 <puts@plt>
 804907d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049084:	e8 17 00 00 00       	call   80490a0 <validate>
 8049089:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049090:	e8 9b f8 ff ff       	call   8048930 <exit@plt>
 8049095:	90                   	nop    
 8049096:	90                   	nop    
 8049097:	90                   	nop    
 8049098:	90                   	nop    
 8049099:	90                   	nop    
 804909a:	90                   	nop    
 804909b:	90                   	nop    
 804909c:	90                   	nop    
 804909d:	90                   	nop    
 804909e:	90                   	nop    
 804909f:	90                   	nop    

080490a0 <validate>:
 80490a0:	55                   	push   %ebp
 80490a1:	89 e5                	mov    %esp,%ebp
 80490a3:	81 ec 28 40 00 00    	sub    $0x4028,%esp
 80490a9:	89 5d f8             	mov    %ebx,0xfffffff8(%ebp)
 80490ac:	89 7d fc             	mov    %edi,0xfffffffc(%ebp)
 80490af:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80490b2:	83 3d d4 c1 04 08 00 	cmpl   $0x0,0x804c1d4
 80490b9:	75 11                	jne    80490cc <validate+0x2c>
 80490bb:	c7 04 24 a8 a2 04 08 	movl   $0x804a2a8,(%esp)
 80490c2:	e8 09 f8 ff ff       	call   80488d0 <puts@plt>
 80490c7:	e9 11 01 00 00       	jmp    80491dd <validate+0x13d>
 80490cc:	83 fb 04             	cmp    $0x4,%ebx
 80490cf:	76 11                	jbe    80490e2 <validate+0x42>
 80490d1:	c7 04 24 d4 a2 04 08 	movl   $0x804a2d4,(%esp)
 80490d8:	e8 f3 f7 ff ff       	call   80488d0 <puts@plt>
 80490dd:	e9 fb 00 00 00       	jmp    80491dd <validate+0x13d>
 80490e2:	c7 05 e8 c1 04 08 01 	movl   $0x1,0x804c1e8
 80490e9:	00 00 00 
 80490ec:	8b 04 9d a0 c1 04 08 	mov    0x804c1a0(,%ebx,4),%eax
 80490f3:	83 e8 01             	sub    $0x1,%eax
 80490f6:	89 04 9d a0 c1 04 08 	mov    %eax,0x804c1a0(,%ebx,4)
 80490fd:	85 c0                	test   %eax,%eax
 80490ff:	7e 11                	jle    8049112 <validate+0x72>
 8049101:	c7 04 24 17 a4 04 08 	movl   $0x804a417,(%esp)
 8049108:	e8 c3 f7 ff ff       	call   80488d0 <puts@plt>
 804910d:	e9 cb 00 00 00       	jmp    80491dd <validate+0x13d>
 8049112:	c7 04 24 22 a4 04 08 	movl   $0x804a422,(%esp)
 8049119:	e8 b2 f7 ff ff       	call   80488d0 <puts@plt>
 804911e:	83 3d d8 c1 04 08 00 	cmpl   $0x0,0x804c1d8
 8049125:	0f 84 a6 00 00 00    	je     80491d1 <validate+0x131>
 804912b:	bf 00 c2 04 08       	mov    $0x804c200,%edi
 8049130:	fc                   	cld    
 8049131:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049136:	b8 00 00 00 00       	mov    $0x0,%eax
 804913b:	f2 ae                	repnz scas %es:(%edi),%al
 804913d:	f7 d1                	not    %ecx
 804913f:	83 c1 1f             	add    $0x1f,%ecx
 8049142:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 8049148:	76 11                	jbe    804915b <validate+0xbb>
 804914a:	c7 04 24 fc a2 04 08 	movl   $0x804a2fc,(%esp)
 8049151:	e8 7a f7 ff ff       	call   80488d0 <puts@plt>
 8049156:	e9 82 00 00 00       	jmp    80491dd <validate+0x13d>
 804915b:	c7 44 24 10 00 c2 04 	movl   $0x804c200,0x10(%esp)
 8049162:	08 
 8049163:	a1 e4 c1 04 08       	mov    0x804c1e4,%eax
 8049168:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804916c:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049170:	c7 44 24 04 28 a4 04 	movl   $0x804a428,0x4(%esp)
 8049177:	08 
 8049178:	8d 9d f8 df ff ff    	lea    0xffffdff8(%ebp),%ebx
 804917e:	89 1c 24             	mov    %ebx,(%esp)
 8049181:	e8 aa f5 ff ff       	call   8048730 <sprintf@plt>
 8049186:	8d 85 f8 bf ff ff    	lea    0xffffbff8(%ebp),%eax
 804918c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049190:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049197:	00 
 8049198:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804919c:	a1 d4 c1 04 08       	mov    0x804c1d4,%eax
 80491a1:	89 04 24             	mov    %eax,(%esp)
 80491a4:	e8 63 0b 00 00       	call   8049d0c <driver_post>
 80491a9:	85 c0                	test   %eax,%eax
 80491ab:	75 0e                	jne    80491bb <validate+0x11b>
 80491ad:	c7 04 24 34 a3 04 08 	movl   $0x804a334,(%esp)
 80491b4:	e8 17 f7 ff ff       	call   80488d0 <puts@plt>
 80491b9:	eb 16                	jmp    80491d1 <validate+0x131>
 80491bb:	8d 85 f8 bf ff ff    	lea    0xffffbff8(%ebp),%eax
 80491c1:	89 44 24 04          	mov    %eax,0x4(%esp)
 80491c5:	c7 04 24 64 a3 04 08 	movl   $0x804a364,(%esp)
 80491cc:	e8 9f f6 ff ff       	call   8048870 <printf@plt>
 80491d1:	c7 04 24 31 a4 04 08 	movl   $0x804a431,(%esp)
 80491d8:	e8 f3 f6 ff ff       	call   80488d0 <puts@plt>
 80491dd:	8b 5d f8             	mov    0xfffffff8(%ebp),%ebx
 80491e0:	8b 7d fc             	mov    0xfffffffc(%ebp),%edi
 80491e3:	89 ec                	mov    %ebp,%esp
 80491e5:	5d                   	pop    %ebp
 80491e6:	c3                   	ret    

080491e7 <initialize_bomb>:
 80491e7:	55                   	push   %ebp
 80491e8:	89 e5                	mov    %esp,%ebp
 80491ea:	56                   	push   %esi
 80491eb:	53                   	push   %ebx
 80491ec:	81 ec 10 24 00 00    	sub    $0x2410,%esp
 80491f2:	83 3d dc c1 04 08 00 	cmpl   $0x0,0x804c1dc
 80491f9:	74 0c                	je     8049207 <initialize_bomb+0x20>
 80491fb:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8049202:	e8 a8 02 00 00       	call   80494af <init_timeout>
 8049207:	83 3d d8 c1 04 08 00 	cmpl   $0x0,0x804c1d8
 804920e:	0f 84 e9 00 00 00    	je     80492fd <initialize_bomb+0x116>
 8049214:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
 804921b:	00 
 804921c:	8d 85 f8 fb ff ff    	lea    0xfffffbf8(%ebp),%eax
 8049222:	89 04 24             	mov    %eax,(%esp)
 8049225:	e8 96 f6 ff ff       	call   80488c0 <gethostname@plt>
 804922a:	85 c0                	test   %eax,%eax
 804922c:	75 19                	jne    8049247 <initialize_bomb+0x60>
 804922e:	a1 a0 b1 04 08       	mov    0x804b1a0,%eax
 8049233:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049238:	8d b5 f8 fb ff ff    	lea    0xfffffbf8(%ebp),%esi
 804923e:	85 c0                	test   %eax,%eax
 8049240:	75 1d                	jne    804925f <initialize_bomb+0x78>
 8049242:	e9 90 00 00 00       	jmp    80492d7 <initialize_bomb+0xf0>
 8049247:	c7 04 24 a4 a3 04 08 	movl   $0x804a3a4,(%esp)
 804924e:	e8 7d f6 ff ff       	call   80488d0 <puts@plt>
 8049253:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804925a:	e8 d1 f6 ff ff       	call   8048930 <exit@plt>
 804925f:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049263:	89 04 24             	mov    %eax,(%esp)
 8049266:	e8 15 f6 ff ff       	call   8048880 <strcasecmp@plt>
 804926b:	85 c0                	test   %eax,%eax
 804926d:	74 10                	je     804927f <initialize_bomb+0x98>
 804926f:	83 c3 01             	add    $0x1,%ebx
 8049272:	8b 04 9d a0 b1 04 08 	mov    0x804b1a0(,%ebx,4),%eax
 8049279:	85 c0                	test   %eax,%eax
 804927b:	74 5a                	je     80492d7 <initialize_bomb+0xf0>
 804927d:	eb e0                	jmp    804925f <initialize_bomb+0x78>
 804927f:	8d 85 f8 db ff ff    	lea    0xffffdbf8(%ebp),%eax
 8049285:	89 04 24             	mov    %eax,(%esp)
 8049288:	e8 83 00 00 00       	call   8049310 <init_driver>
 804928d:	85 c0                	test   %eax,%eax
 804928f:	79 6c                	jns    80492fd <initialize_bomb+0x116>
 8049291:	eb 22                	jmp    80492b5 <initialize_bomb+0xce>
 8049293:	89 04 24             	mov    %eax,(%esp)
 8049296:	e8 35 f6 ff ff       	call   80488d0 <puts@plt>
 804929b:	83 c3 01             	add    $0x1,%ebx
 804929e:	8b 04 9d a0 b1 04 08 	mov    0x804b1a0(,%ebx,4),%eax
 80492a5:	85 c0                	test   %eax,%eax
 80492a7:	75 ea                	jne    8049293 <initialize_bomb+0xac>
 80492a9:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80492b0:	e8 7b f6 ff ff       	call   8048930 <exit@plt>
 80492b5:	8d 85 f8 db ff ff    	lea    0xffffdbf8(%ebp),%eax
 80492bb:	89 44 24 04          	mov    %eax,0x4(%esp)
 80492bf:	c7 04 24 3b a4 04 08 	movl   $0x804a43b,(%esp)
 80492c6:	e8 a5 f5 ff ff       	call   8048870 <printf@plt>
 80492cb:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80492d2:	e8 59 f6 ff ff       	call   8048930 <exit@plt>
 80492d7:	8d 85 f8 fb ff ff    	lea    0xfffffbf8(%ebp),%eax
 80492dd:	89 44 24 04          	mov    %eax,0x4(%esp)
 80492e1:	c7 04 24 dc a3 04 08 	movl   $0x804a3dc,(%esp)
 80492e8:	e8 83 f5 ff ff       	call   8048870 <printf@plt>
 80492ed:	a1 a0 b1 04 08       	mov    0x804b1a0,%eax
 80492f2:	bb 00 00 00 00       	mov    $0x0,%ebx
 80492f7:	85 c0                	test   %eax,%eax
 80492f9:	75 98                	jne    8049293 <initialize_bomb+0xac>
 80492fb:	eb ac                	jmp    80492a9 <initialize_bomb+0xc2>
 80492fd:	81 c4 10 24 00 00    	add    $0x2410,%esp
 8049303:	5b                   	pop    %ebx
 8049304:	5e                   	pop    %esi
 8049305:	5d                   	pop    %ebp
 8049306:	c3                   	ret    
 8049307:	90                   	nop    
 8049308:	90                   	nop    
 8049309:	90                   	nop    
 804930a:	90                   	nop    
 804930b:	90                   	nop    
 804930c:	90                   	nop    
 804930d:	90                   	nop    
 804930e:	90                   	nop    
 804930f:	90                   	nop    

08049310 <init_driver>:
 8049310:	55                   	push   %ebp
 8049311:	89 e5                	mov    %esp,%ebp
 8049313:	57                   	push   %edi
 8049314:	56                   	push   %esi
 8049315:	53                   	push   %ebx
 8049316:	83 ec 2c             	sub    $0x2c,%esp
 8049319:	8b 7d 08             	mov    0x8(%ebp),%edi
 804931c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049323:	00 
 8049324:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 804932b:	e8 60 f4 ff ff       	call   8048790 <signal@plt>
 8049330:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049337:	00 
 8049338:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 804933f:	e8 4c f4 ff ff       	call   8048790 <signal@plt>
 8049344:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804934b:	00 
 804934c:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049353:	e8 38 f4 ff ff       	call   8048790 <signal@plt>
 8049358:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804935f:	00 
 8049360:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049367:	00 
 8049368:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804936f:	e8 9c f4 ff ff       	call   8048810 <socket@plt>
 8049374:	89 c6                	mov    %eax,%esi
 8049376:	85 c0                	test   %eax,%eax
 8049378:	79 4e                	jns    80493c8 <init_driver+0xb8>
 804937a:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
 8049380:	c7 47 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edi)
 8049387:	c7 47 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edi)
 804938e:	c7 47 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edi)
 8049395:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
 804939c:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
 80493a3:	c7 47 18 63 72 65 61 	movl   $0x61657263,0x18(%edi)
 80493aa:	c7 47 1c 74 65 20 73 	movl   $0x73206574,0x1c(%edi)
 80493b1:	c7 47 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%edi)
 80493b8:	66 c7 47 24 74 00    	movw   $0x74,0x24(%edi)
 80493be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80493c3:	e9 df 00 00 00       	jmp    80494a7 <init_driver+0x197>
 80493c8:	c7 04 24 50 a4 04 08 	movl   $0x804a450,(%esp)
 80493cf:	e8 3c f5 ff ff       	call   8048910 <gethostbyname@plt>
 80493d4:	89 c1                	mov    %eax,%ecx
 80493d6:	85 c0                	test   %eax,%eax
 80493d8:	75 2a                	jne    8049404 <init_driver+0xf4>
 80493da:	c7 44 24 08 50 a4 04 	movl   $0x804a450,0x8(%esp)
 80493e1:	08 
 80493e2:	c7 44 24 04 b4 a4 04 	movl   $0x804a4b4,0x4(%esp)
 80493e9:	08 
 80493ea:	89 3c 24             	mov    %edi,(%esp)
 80493ed:	e8 3e f3 ff ff       	call   8048730 <sprintf@plt>
 80493f2:	89 34 24             	mov    %esi,(%esp)
 80493f5:	e8 a6 f4 ff ff       	call   80488a0 <close@plt>
 80493fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80493ff:	e9 a3 00 00 00       	jmp    80494a7 <init_driver+0x197>
 8049404:	8d 5d e4             	lea    0xffffffe4(%ebp),%ebx
 8049407:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
 804940e:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
 8049415:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 804941c:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
 8049423:	66 c7 45 e4 02 00    	movw   $0x2,0xffffffe4(%ebp)
 8049429:	8d 55 e8             	lea    0xffffffe8(%ebp),%edx
 804942c:	8b 40 0c             	mov    0xc(%eax),%eax
 804942f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049433:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049437:	8b 41 10             	mov    0x10(%ecx),%eax
 804943a:	8b 00                	mov    (%eax),%eax
 804943c:	89 04 24             	mov    %eax,(%esp)
 804943f:	e8 dc f3 ff ff       	call   8048820 <bcopy@plt>
 8049444:	66 c7 45 e6 3b 6e    	movw   $0x6e3b,0xffffffe6(%ebp)
 804944a:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049451:	00 
 8049452:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049456:	89 34 24             	mov    %esi,(%esp)
 8049459:	e8 f2 f2 ff ff       	call   8048750 <connect@plt>
 804945e:	85 c0                	test   %eax,%eax
 8049460:	79 2f                	jns    8049491 <init_driver+0x181>
 8049462:	c7 44 24 0c 6e 3b 00 	movl   $0x3b6e,0xc(%esp)
 8049469:	00 
 804946a:	c7 44 24 08 50 a4 04 	movl   $0x804a450,0x8(%esp)
 8049471:	08 
 8049472:	c7 44 24 04 e0 a4 04 	movl   $0x804a4e0,0x4(%esp)
 8049479:	08 
 804947a:	89 3c 24             	mov    %edi,(%esp)
 804947d:	e8 ae f2 ff ff       	call   8048730 <sprintf@plt>
 8049482:	89 34 24             	mov    %esi,(%esp)
 8049485:	e8 16 f4 ff ff       	call   80488a0 <close@plt>
 804948a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804948f:	eb 16                	jmp    80494a7 <init_driver+0x197>
 8049491:	89 34 24             	mov    %esi,(%esp)
 8049494:	e8 07 f4 ff ff       	call   80488a0 <close@plt>
 8049499:	66 c7 07 4f 4b       	movw   $0x4b4f,(%edi)
 804949e:	c6 47 02 00          	movb   $0x0,0x2(%edi)
 80494a2:	b8 00 00 00 00       	mov    $0x0,%eax
 80494a7:	83 c4 2c             	add    $0x2c,%esp
 80494aa:	5b                   	pop    %ebx
 80494ab:	5e                   	pop    %esi
 80494ac:	5f                   	pop    %edi
 80494ad:	5d                   	pop    %ebp
 80494ae:	c3                   	ret    

080494af <init_timeout>:
 80494af:	55                   	push   %ebp
 80494b0:	89 e5                	mov    %esp,%ebp
 80494b2:	53                   	push   %ebx
 80494b3:	83 ec 14             	sub    $0x14,%esp
 80494b6:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80494b9:	85 db                	test   %ebx,%ebx
 80494bb:	74 25                	je     80494e2 <init_timeout+0x33>
 80494bd:	85 db                	test   %ebx,%ebx
 80494bf:	79 05                	jns    80494c6 <init_timeout+0x17>
 80494c1:	bb 05 00 00 00       	mov    $0x5,%ebx
 80494c6:	c7 44 24 04 a3 9d 04 	movl   $0x8049da3,0x4(%esp)
 80494cd:	08 
 80494ce:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 80494d5:	e8 b6 f2 ff ff       	call   8048790 <signal@plt>
 80494da:	89 1c 24             	mov    %ebx,(%esp)
 80494dd:	e8 6e f3 ff ff       	call   8048850 <alarm@plt>
 80494e2:	83 c4 14             	add    $0x14,%esp
 80494e5:	5b                   	pop    %ebx
 80494e6:	5d                   	pop    %ebp
 80494e7:	c3                   	ret    

080494e8 <rio_readlineb>:
 80494e8:	55                   	push   %ebp
 80494e9:	89 e5                	mov    %esp,%ebp
 80494eb:	57                   	push   %edi
 80494ec:	56                   	push   %esi
 80494ed:	53                   	push   %ebx
 80494ee:	83 ec 2c             	sub    $0x2c,%esp
 80494f1:	89 c3                	mov    %eax,%ebx
 80494f3:	89 4d d8             	mov    %ecx,0xffffffd8(%ebp)
 80494f6:	89 55 e0             	mov    %edx,0xffffffe0(%ebp)
 80494f9:	89 55 dc             	mov    %edx,0xffffffdc(%ebp)
 80494fc:	bf 01 00 00 00       	mov    $0x1,%edi
 8049501:	83 f9 01             	cmp    $0x1,%ecx
 8049504:	77 3f                	ja     8049545 <rio_readlineb+0x5d>
 8049506:	e9 a1 00 00 00       	jmp    80495ac <rio_readlineb+0xc4>
 804950b:	8d 73 0c             	lea    0xc(%ebx),%esi
 804950e:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049515:	00 
 8049516:	89 74 24 04          	mov    %esi,0x4(%esp)
 804951a:	8b 03                	mov    (%ebx),%eax
 804951c:	89 04 24             	mov    %eax,(%esp)
 804951f:	e8 dc f2 ff ff       	call   8048800 <read@plt>
 8049524:	89 43 04             	mov    %eax,0x4(%ebx)
 8049527:	85 c0                	test   %eax,%eax
 8049529:	79 11                	jns    804953c <rio_readlineb+0x54>
 804952b:	e8 f0 f1 ff ff       	call   8048720 <__errno_location@plt>
 8049530:	83 38 04             	cmpl   $0x4,(%eax)
 8049533:	74 10                	je     8049545 <rio_readlineb+0x5d>
 8049535:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804953a:	eb 48                	jmp    8049584 <rio_readlineb+0x9c>
 804953c:	85 c0                	test   %eax,%eax
 804953e:	66 90                	xchg   %ax,%ax
 8049540:	74 7d                	je     80495bf <rio_readlineb+0xd7>
 8049542:	89 73 08             	mov    %esi,0x8(%ebx)
 8049545:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
 8049549:	7e c0                	jle    804950b <rio_readlineb+0x23>
 804954b:	8d 55 f3             	lea    0xfffffff3(%ebp),%edx
 804954e:	8b 43 08             	mov    0x8(%ebx),%eax
 8049551:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8049558:	00 
 8049559:	89 44 24 04          	mov    %eax,0x4(%esp)
 804955d:	89 14 24             	mov    %edx,(%esp)
 8049560:	e8 db f2 ff ff       	call   8048840 <memcpy@plt>
 8049565:	83 43 08 01          	addl   $0x1,0x8(%ebx)
 8049569:	83 6b 04 01          	subl   $0x1,0x4(%ebx)
 804956d:	0f b6 45 f3          	movzbl 0xfffffff3(%ebp),%eax
 8049571:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
 8049574:	88 44 17 ff          	mov    %al,0xffffffff(%edi,%edx,1)
 8049578:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
 804957c:	80 7d f3 0a          	cmpb   $0xa,0xfffffff3(%ebp)
 8049580:	75 20                	jne    80495a2 <rio_readlineb+0xba>
 8049582:	eb 33                	jmp    80495b7 <rio_readlineb+0xcf>
 8049584:	85 c0                	test   %eax,%eax
 8049586:	74 0a                	je     8049592 <rio_readlineb+0xaa>
 8049588:	bf ff ff ff ff       	mov    $0xffffffff,%edi
 804958d:	8d 76 00             	lea    0x0(%esi),%esi
 8049590:	eb 34                	jmp    80495c6 <rio_readlineb+0xde>
 8049592:	83 ff 01             	cmp    $0x1,%edi
 8049595:	75 20                	jne    80495b7 <rio_readlineb+0xcf>
 8049597:	66 bf 00 00          	mov    $0x0,%di
 804959b:	90                   	nop    
 804959c:	8d 74 26 00          	lea    0x0(%esi),%esi
 80495a0:	eb 24                	jmp    80495c6 <rio_readlineb+0xde>
 80495a2:	83 c7 01             	add    $0x1,%edi
 80495a5:	3b 7d d8             	cmp    0xffffffd8(%ebp),%edi
 80495a8:	75 9b                	jne    8049545 <rio_readlineb+0x5d>
 80495aa:	eb 0b                	jmp    80495b7 <rio_readlineb+0xcf>
 80495ac:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 80495af:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
 80495b2:	bf 01 00 00 00       	mov    $0x1,%edi
 80495b7:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
 80495ba:	c6 02 00             	movb   $0x0,(%edx)
 80495bd:	eb 07                	jmp    80495c6 <rio_readlineb+0xde>
 80495bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80495c4:	eb be                	jmp    8049584 <rio_readlineb+0x9c>
 80495c6:	89 f8                	mov    %edi,%eax
 80495c8:	83 c4 2c             	add    $0x2c,%esp
 80495cb:	5b                   	pop    %ebx
 80495cc:	5e                   	pop    %esi
 80495cd:	5f                   	pop    %edi
 80495ce:	5d                   	pop    %ebp
 80495cf:	c3                   	ret    

080495d0 <submitr>:
 80495d0:	55                   	push   %ebp
 80495d1:	89 e5                	mov    %esp,%ebp
 80495d3:	57                   	push   %edi
 80495d4:	56                   	push   %esi
 80495d5:	53                   	push   %ebx
 80495d6:	81 ec 5c a0 00 00    	sub    $0xa05c,%esp
 80495dc:	8b 75 08             	mov    0x8(%ebp),%esi
 80495df:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80495e2:	c7 85 d4 7f ff ff 00 	movl   $0x0,0xffff7fd4(%ebp)
 80495e9:	00 00 00 
 80495ec:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80495f3:	00 
 80495f4:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80495fb:	00 
 80495fc:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049603:	e8 08 f2 ff ff       	call   8048810 <socket@plt>
 8049608:	89 85 bc 5f ff ff    	mov    %eax,0xffff5fbc(%ebp)
 804960e:	85 c0                	test   %eax,%eax
 8049610:	79 51                	jns    8049663 <submitr+0x93>
 8049612:	8b 45 20             	mov    0x20(%ebp),%eax
 8049615:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804961b:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049622:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049629:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049630:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049637:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804963e:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049645:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804964c:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049653:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 8049659:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804965e:	e9 9c 06 00 00       	jmp    8049cff <submitr+0x72f>
 8049663:	89 34 24             	mov    %esi,(%esp)
 8049666:	e8 a5 f2 ff ff       	call   8048910 <gethostbyname@plt>
 804966b:	89 c1                	mov    %eax,%ecx
 804966d:	85 c0                	test   %eax,%eax
 804966f:	75 2f                	jne    80496a0 <submitr+0xd0>
 8049671:	89 74 24 08          	mov    %esi,0x8(%esp)
 8049675:	c7 44 24 04 b4 a4 04 	movl   $0x804a4b4,0x4(%esp)
 804967c:	08 
 804967d:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049680:	89 0c 24             	mov    %ecx,(%esp)
 8049683:	e8 a8 f0 ff ff       	call   8048730 <sprintf@plt>
 8049688:	8b 9d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ebx
 804968e:	89 1c 24             	mov    %ebx,(%esp)
 8049691:	e8 0a f2 ff ff       	call   80488a0 <close@plt>
 8049696:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804969b:	e9 5f 06 00 00       	jmp    8049cff <submitr+0x72f>
 80496a0:	8d 5d e4             	lea    0xffffffe4(%ebp),%ebx
 80496a3:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
 80496aa:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
 80496b1:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 80496b8:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
 80496bf:	66 c7 45 e4 02 00    	movw   $0x2,0xffffffe4(%ebp)
 80496c5:	8d 55 e8             	lea    0xffffffe8(%ebp),%edx
 80496c8:	8b 40 0c             	mov    0xc(%eax),%eax
 80496cb:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496cf:	89 54 24 04          	mov    %edx,0x4(%esp)
 80496d3:	8b 41 10             	mov    0x10(%ecx),%eax
 80496d6:	8b 00                	mov    (%eax),%eax
 80496d8:	89 04 24             	mov    %eax,(%esp)
 80496db:	e8 40 f1 ff ff       	call   8048820 <bcopy@plt>
 80496e0:	89 f8                	mov    %edi,%eax
 80496e2:	66 c1 c8 08          	ror    $0x8,%ax
 80496e6:	66 89 45 e6          	mov    %ax,0xffffffe6(%ebp)
 80496ea:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 80496f1:	00 
 80496f2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80496f6:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 80496fc:	89 04 24             	mov    %eax,(%esp)
 80496ff:	e8 4c f0 ff ff       	call   8048750 <connect@plt>
 8049704:	85 c0                	test   %eax,%eax
 8049706:	79 2f                	jns    8049737 <submitr+0x167>
 8049708:	89 74 24 08          	mov    %esi,0x8(%esp)
 804970c:	c7 44 24 04 0c a5 04 	movl   $0x804a50c,0x4(%esp)
 8049713:	08 
 8049714:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049717:	89 0c 24             	mov    %ecx,(%esp)
 804971a:	e8 11 f0 ff ff       	call   8048730 <sprintf@plt>
 804971f:	8b 9d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ebx
 8049725:	89 1c 24             	mov    %ebx,(%esp)
 8049728:	e8 73 f1 ff ff       	call   80488a0 <close@plt>
 804972d:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049732:	e9 c8 05 00 00       	jmp    8049cff <submitr+0x72f>
 8049737:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 804973c:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 804973f:	fc                   	cld    
 8049740:	89 d9                	mov    %ebx,%ecx
 8049742:	b8 00 00 00 00       	mov    $0x0,%eax
 8049747:	f2 ae                	repnz scas %es:(%edi),%al
 8049749:	89 ce                	mov    %ecx,%esi
 804974b:	f7 d6                	not    %esi
 804974d:	8b 7d 10             	mov    0x10(%ebp),%edi
 8049750:	89 d9                	mov    %ebx,%ecx
 8049752:	f2 ae                	repnz scas %es:(%edi),%al
 8049754:	89 ca                	mov    %ecx,%edx
 8049756:	f7 d2                	not    %edx
 8049758:	8b 7d 14             	mov    0x14(%ebp),%edi
 804975b:	89 d9                	mov    %ebx,%ecx
 804975d:	f2 ae                	repnz scas %es:(%edi),%al
 804975f:	f7 d1                	not    %ecx
 8049761:	89 8d b8 5f ff ff    	mov    %ecx,0xffff5fb8(%ebp)
 8049767:	8b 7d 18             	mov    0x18(%ebp),%edi
 804976a:	89 d9                	mov    %ebx,%ecx
 804976c:	f2 ae                	repnz scas %es:(%edi),%al
 804976e:	f7 d1                	not    %ecx
 8049770:	8b 9d b8 5f ff ff    	mov    0xffff5fb8(%ebp),%ebx
 8049776:	8d 44 13 7e          	lea    0x7e(%ebx,%edx,1),%eax
 804977a:	8d 4c 01 ff          	lea    0xffffffff(%ecx,%eax,1),%ecx
 804977e:	8d 44 76 fd          	lea    0xfffffffd(%esi,%esi,2),%eax
 8049782:	01 c1                	add    %eax,%ecx
 8049784:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 804978a:	76 7c                	jbe    8049808 <submitr+0x238>
 804978c:	8b 45 20             	mov    0x20(%ebp),%eax
 804978f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049795:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804979c:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 80497a3:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 80497aa:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 80497b1:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 80497b8:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 80497bf:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 80497c6:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 80497cd:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 80497d4:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 80497db:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 80497e2:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 80497e9:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 80497f0:	8b 8d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ecx
 80497f6:	89 0c 24             	mov    %ecx,(%esp)
 80497f9:	e8 a2 f0 ff ff       	call   80488a0 <close@plt>
 80497fe:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049803:	e9 f7 04 00 00       	jmp    8049cff <submitr+0x72f>
 8049808:	8d 9d d8 9f ff ff    	lea    0xffff9fd8(%ebp),%ebx
 804980e:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049815:	00 
 8049816:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804981d:	00 
 804981e:	89 1c 24             	mov    %ebx,(%esp)
 8049821:	e8 aa ef ff ff       	call   80487d0 <memset@plt>
 8049826:	8b 45 1c             	mov    0x1c(%ebp),%eax
 8049829:	89 85 c0 5f ff ff    	mov    %eax,0xffff5fc0(%ebp)
 804982f:	89 c7                	mov    %eax,%edi
 8049831:	fc                   	cld    
 8049832:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049837:	b8 00 00 00 00       	mov    $0x0,%eax
 804983c:	f2 ae                	repnz scas %es:(%edi),%al
 804983e:	f7 d1                	not    %ecx
 8049840:	89 cf                	mov    %ecx,%edi
 8049842:	83 ef 01             	sub    $0x1,%edi
 8049845:	0f 84 ef 03 00 00    	je     8049c3a <submitr+0x66a>
 804984b:	be 00 00 00 00       	mov    $0x0,%esi
 8049850:	8b 8d c0 5f ff ff    	mov    0xffff5fc0(%ebp),%ecx
 8049856:	0f b6 14 0e          	movzbl (%esi,%ecx,1),%edx
 804985a:	80 fa 2a             	cmp    $0x2a,%dl
 804985d:	74 28                	je     8049887 <submitr+0x2b7>
 804985f:	80 fa 2d             	cmp    $0x2d,%dl
 8049862:	74 23                	je     8049887 <submitr+0x2b7>
 8049864:	80 fa 2e             	cmp    $0x2e,%dl
 8049867:	74 1e                	je     8049887 <submitr+0x2b7>
 8049869:	80 fa 5f             	cmp    $0x5f,%dl
 804986c:	8d 74 26 00          	lea    0x0(%esi),%esi
 8049870:	74 15                	je     8049887 <submitr+0x2b7>
 8049872:	8d 42 d0             	lea    0xffffffd0(%edx),%eax
 8049875:	3c 09                	cmp    $0x9,%al
 8049877:	76 0e                	jbe    8049887 <submitr+0x2b7>
 8049879:	8d 42 bf             	lea    0xffffffbf(%edx),%eax
 804987c:	3c 19                	cmp    $0x19,%al
 804987e:	76 07                	jbe    8049887 <submitr+0x2b7>
 8049880:	8d 42 9f             	lea    0xffffff9f(%edx),%eax
 8049883:	3c 19                	cmp    $0x19,%al
 8049885:	77 07                	ja     804988e <submitr+0x2be>
 8049887:	88 13                	mov    %dl,(%ebx)
 8049889:	83 c3 01             	add    $0x1,%ebx
 804988c:	eb 56                	jmp    80498e4 <submitr+0x314>
 804988e:	80 fa 20             	cmp    $0x20,%dl
 8049891:	75 08                	jne    804989b <submitr+0x2cb>
 8049893:	c6 03 2b             	movb   $0x2b,(%ebx)
 8049896:	83 c3 01             	add    $0x1,%ebx
 8049899:	eb 49                	jmp    80498e4 <submitr+0x314>
 804989b:	8d 42 e0             	lea    0xffffffe0(%edx),%eax
 804989e:	3c 5f                	cmp    $0x5f,%al
 80498a0:	76 05                	jbe    80498a7 <submitr+0x2d7>
 80498a2:	80 fa 09             	cmp    $0x9,%dl
 80498a5:	75 4d                	jne    80498f4 <submitr+0x324>
 80498a7:	0f b6 c2             	movzbl %dl,%eax
 80498aa:	89 44 24 08          	mov    %eax,0x8(%esp)
 80498ae:	c7 44 24 04 71 a4 04 	movl   $0x804a471,0x4(%esp)
 80498b5:	08 
 80498b6:	8d 85 cc 5f ff ff    	lea    0xffff5fcc(%ebp),%eax
 80498bc:	89 04 24             	mov    %eax,(%esp)
 80498bf:	e8 6c ee ff ff       	call   8048730 <sprintf@plt>
 80498c4:	0f b6 85 cc 5f ff ff 	movzbl 0xffff5fcc(%ebp),%eax
 80498cb:	88 03                	mov    %al,(%ebx)
 80498cd:	0f b6 85 cd 5f ff ff 	movzbl 0xffff5fcd(%ebp),%eax
 80498d4:	88 43 01             	mov    %al,0x1(%ebx)
 80498d7:	0f b6 85 ce 5f ff ff 	movzbl 0xffff5fce(%ebp),%eax
 80498de:	88 43 02             	mov    %al,0x2(%ebx)
 80498e1:	83 c3 03             	add    $0x3,%ebx
 80498e4:	83 c6 01             	add    $0x1,%esi
 80498e7:	39 fe                	cmp    %edi,%esi
 80498e9:	0f 84 4b 03 00 00    	je     8049c3a <submitr+0x66a>
 80498ef:	e9 5c ff ff ff       	jmp    8049850 <submitr+0x280>
 80498f4:	c7 44 24 08 43 00 00 	movl   $0x43,0x8(%esp)
 80498fb:	00 
 80498fc:	c7 44 24 04 34 a5 04 	movl   $0x804a534,0x4(%esp)
 8049903:	08 
 8049904:	8b 5d 20             	mov    0x20(%ebp),%ebx
 8049907:	89 1c 24             	mov    %ebx,(%esp)
 804990a:	e8 31 ef ff ff       	call   8048840 <memcpy@plt>
 804990f:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 8049915:	89 04 24             	mov    %eax,(%esp)
 8049918:	e8 83 ef ff ff       	call   80488a0 <close@plt>
 804991d:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049922:	e9 d8 03 00 00       	jmp    8049cff <submitr+0x72f>
 8049927:	01 c6                	add    %eax,%esi
 8049929:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804992d:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049931:	8b 8d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ecx
 8049937:	89 0c 24             	mov    %ecx,(%esp)
 804993a:	e8 81 ee ff ff       	call   80487c0 <write@plt>
 804993f:	85 c0                	test   %eax,%eax
 8049941:	7f 0f                	jg     8049952 <submitr+0x382>
 8049943:	e8 d8 ed ff ff       	call   8048720 <__errno_location@plt>
 8049948:	83 38 04             	cmpl   $0x4,(%eax)
 804994b:	75 0d                	jne    804995a <submitr+0x38a>
 804994d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049952:	29 c3                	sub    %eax,%ebx
 8049954:	75 d1                	jne    8049927 <submitr+0x357>
 8049956:	85 ff                	test   %edi,%edi
 8049958:	79 67                	jns    80499c1 <submitr+0x3f1>
 804995a:	8b 5d 20             	mov    0x20(%ebp),%ebx
 804995d:	c7 03 45 72 72 6f    	movl   $0x6f727245,(%ebx)
 8049963:	c7 43 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ebx)
 804996a:	c7 43 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ebx)
 8049971:	c7 43 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ebx)
 8049978:	c7 43 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ebx)
 804997f:	c7 43 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ebx)
 8049986:	c7 43 18 77 72 69 74 	movl   $0x74697277,0x18(%ebx)
 804998d:	c7 43 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%ebx)
 8049994:	c7 43 20 20 74 68 65 	movl   $0x65687420,0x20(%ebx)
 804999b:	c7 43 24 20 73 65 72 	movl   $0x72657320,0x24(%ebx)
 80499a2:	c7 43 28 76 65 72 00 	movl   $0x726576,0x28(%ebx)
 80499a9:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 80499af:	89 04 24             	mov    %eax,(%esp)
 80499b2:	e8 e9 ee ff ff       	call   80488a0 <close@plt>
 80499b7:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80499bc:	e9 3e 03 00 00       	jmp    8049cff <submitr+0x72f>
 80499c1:	8b 8d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ecx
 80499c7:	89 8d d8 df ff ff    	mov    %ecx,0xffffdfd8(%ebp)
 80499cd:	c7 85 dc df ff ff 00 	movl   $0x0,0xffffdfdc(%ebp)
 80499d4:	00 00 00 
 80499d7:	8d 85 d8 df ff ff    	lea    0xffffdfd8(%ebp),%eax
 80499dd:	8d 95 e4 df ff ff    	lea    0xffffdfe4(%ebp),%edx
 80499e3:	89 95 e0 df ff ff    	mov    %edx,0xffffdfe0(%ebp)
 80499e9:	8d 95 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%edx
 80499ef:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80499f4:	e8 ef fa ff ff       	call   80494e8 <rio_readlineb>
 80499f9:	85 c0                	test   %eax,%eax
 80499fb:	7f 7b                	jg     8049a78 <submitr+0x4a8>
 80499fd:	8b 5d 20             	mov    0x20(%ebp),%ebx
 8049a00:	c7 03 45 72 72 6f    	movl   $0x6f727245,(%ebx)
 8049a06:	c7 43 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ebx)
 8049a0d:	c7 43 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ebx)
 8049a14:	c7 43 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ebx)
 8049a1b:	c7 43 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ebx)
 8049a22:	c7 43 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ebx)
 8049a29:	c7 43 18 72 65 61 64 	movl   $0x64616572,0x18(%ebx)
 8049a30:	c7 43 1c 20 66 69 72 	movl   $0x72696620,0x1c(%ebx)
 8049a37:	c7 43 20 73 74 20 68 	movl   $0x68207473,0x20(%ebx)
 8049a3e:	c7 43 24 65 61 64 65 	movl   $0x65646165,0x24(%ebx)
 8049a45:	c7 43 28 72 20 66 72 	movl   $0x72662072,0x28(%ebx)
 8049a4c:	c7 43 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%ebx)
 8049a53:	c7 43 30 65 72 76 65 	movl   $0x65767265,0x30(%ebx)
 8049a5a:	66 c7 43 34 72 00    	movw   $0x72,0x34(%ebx)
 8049a60:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 8049a66:	89 04 24             	mov    %eax,(%esp)
 8049a69:	e8 32 ee ff ff       	call   80488a0 <close@plt>
 8049a6e:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049a73:	e9 87 02 00 00       	jmp    8049cff <submitr+0x72f>
 8049a78:	8d 9d d4 5f ff ff    	lea    0xffff5fd4(%ebp),%ebx
 8049a7e:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 8049a82:	8d 85 d4 7f ff ff    	lea    0xffff7fd4(%ebp),%eax
 8049a88:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049a8c:	8d 85 d8 7f ff ff    	lea    0xffff7fd8(%ebp),%eax
 8049a92:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049a96:	c7 44 24 04 78 a4 04 	movl   $0x804a478,0x4(%esp)
 8049a9d:	08 
 8049a9e:	8d 85 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%eax
 8049aa4:	89 04 24             	mov    %eax,(%esp)
 8049aa7:	e8 44 ee ff ff       	call   80488f0 <sscanf@plt>
 8049aac:	8b 85 d4 7f ff ff    	mov    0xffff7fd4(%ebp),%eax
 8049ab2:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049ab7:	74 51                	je     8049b0a <submitr+0x53a>
 8049ab9:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8049abd:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049ac1:	c7 44 24 04 78 a5 04 	movl   $0x804a578,0x4(%esp)
 8049ac8:	08 
 8049ac9:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049acc:	89 0c 24             	mov    %ecx,(%esp)
 8049acf:	e8 5c ec ff ff       	call   8048730 <sprintf@plt>
 8049ad4:	8b 9d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ebx
 8049ada:	89 1c 24             	mov    %ebx,(%esp)
 8049add:	e8 be ed ff ff       	call   80488a0 <close@plt>
 8049ae2:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049ae7:	e9 13 02 00 00       	jmp    8049cff <submitr+0x72f>
 8049aec:	8d 95 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%edx
 8049af2:	8d 85 d8 df ff ff    	lea    0xffffdfd8(%ebp),%eax
 8049af8:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049afd:	e8 e6 f9 ff ff       	call   80494e8 <rio_readlineb>
 8049b02:	85 c0                	test   %eax,%eax
 8049b04:	0f 8e 88 01 00 00    	jle    8049c92 <submitr+0x6c2>
 8049b0a:	8d 9d d8 bf ff ff    	lea    0xffffbfd8(%ebp),%ebx
 8049b10:	0f b6 95 d8 bf ff ff 	movzbl 0xffffbfd8(%ebp),%edx
 8049b17:	0f b6 05 89 a4 04 08 	movzbl 0x804a489,%eax
 8049b1e:	39 c2                	cmp    %eax,%edx
 8049b20:	75 ca                	jne    8049aec <submitr+0x51c>
 8049b22:	0f b6 95 d9 bf ff ff 	movzbl 0xffffbfd9(%ebp),%edx
 8049b29:	0f b6 05 8a a4 04 08 	movzbl 0x804a48a,%eax
 8049b30:	39 c2                	cmp    %eax,%edx
 8049b32:	75 b8                	jne    8049aec <submitr+0x51c>
 8049b34:	0f b6 95 da bf ff ff 	movzbl 0xffffbfda(%ebp),%edx
 8049b3b:	0f b6 05 8b a4 04 08 	movzbl 0x804a48b,%eax
 8049b42:	39 c2                	cmp    %eax,%edx
 8049b44:	75 a6                	jne    8049aec <submitr+0x51c>
 8049b46:	8d 85 d8 df ff ff    	lea    0xffffdfd8(%ebp),%eax
 8049b4c:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049b51:	89 da                	mov    %ebx,%edx
 8049b53:	e8 90 f9 ff ff       	call   80494e8 <rio_readlineb>
 8049b58:	85 c0                	test   %eax,%eax
 8049b5a:	7f 7c                	jg     8049bd8 <submitr+0x608>
 8049b5c:	8b 45 20             	mov    0x20(%ebp),%eax
 8049b5f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049b65:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049b6c:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049b73:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049b7a:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049b81:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049b88:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049b8f:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049b96:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049b9d:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049ba4:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049bab:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049bb2:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049bb9:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049bc0:	8b 8d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ecx
 8049bc6:	89 0c 24             	mov    %ecx,(%esp)
 8049bc9:	e8 d2 ec ff ff       	call   80488a0 <close@plt>
 8049bce:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049bd3:	e9 27 01 00 00       	jmp    8049cff <submitr+0x72f>
 8049bd8:	8d 85 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%eax
 8049bde:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049be2:	8b 5d 20             	mov    0x20(%ebp),%ebx
 8049be5:	89 1c 24             	mov    %ebx,(%esp)
 8049be8:	e8 73 ec ff ff       	call   8048860 <strcpy@plt>
 8049bed:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 8049bf3:	89 04 24             	mov    %eax,(%esp)
 8049bf6:	e8 a5 ec ff ff       	call   80488a0 <close@plt>
 8049bfb:	0f b6 13             	movzbl (%ebx),%edx
 8049bfe:	0f b6 05 8c a4 04 08 	movzbl 0x804a48c,%eax
 8049c05:	39 c2                	cmp    %eax,%edx
 8049c07:	75 27                	jne    8049c30 <submitr+0x660>
 8049c09:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 8049c0d:	0f b6 05 8d a4 04 08 	movzbl 0x804a48d,%eax
 8049c14:	39 c2                	cmp    %eax,%edx
 8049c16:	75 18                	jne    8049c30 <submitr+0x660>
 8049c18:	0f b6 53 02          	movzbl 0x2(%ebx),%edx
 8049c1c:	0f b6 05 8e a4 04 08 	movzbl 0x804a48e,%eax
 8049c23:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049c28:	39 c2                	cmp    %eax,%edx
 8049c2a:	0f 84 cf 00 00 00    	je     8049cff <submitr+0x72f>
 8049c30:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049c35:	e9 c5 00 00 00       	jmp    8049cff <submitr+0x72f>
 8049c3a:	8d 85 d8 9f ff ff    	lea    0xffff9fd8(%ebp),%eax
 8049c40:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049c44:	8b 4d 18             	mov    0x18(%ebp),%ecx
 8049c47:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 8049c4b:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8049c4e:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8049c52:	8b 45 10             	mov    0x10(%ebp),%eax
 8049c55:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049c59:	c7 44 24 04 a8 a5 04 	movl   $0x804a5a8,0x4(%esp)
 8049c60:	08 
 8049c61:	8d b5 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%esi
 8049c67:	89 34 24             	mov    %esi,(%esp)
 8049c6a:	e8 c1 ea ff ff       	call   8048730 <sprintf@plt>
 8049c6f:	89 f7                	mov    %esi,%edi
 8049c71:	fc                   	cld    
 8049c72:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049c77:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c7c:	f2 ae                	repnz scas %es:(%edi),%al
 8049c7e:	f7 d1                	not    %ecx
 8049c80:	89 cf                	mov    %ecx,%edi
 8049c82:	83 ef 01             	sub    $0x1,%edi
 8049c85:	0f 84 36 fd ff ff    	je     80499c1 <submitr+0x3f1>
 8049c8b:	89 fb                	mov    %edi,%ebx
 8049c8d:	e9 97 fc ff ff       	jmp    8049929 <submitr+0x359>
 8049c92:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049c95:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 8049c9b:	c7 41 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ecx)
 8049ca2:	c7 41 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ecx)
 8049ca9:	c7 41 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ecx)
 8049cb0:	c7 41 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ecx)
 8049cb7:	c7 41 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ecx)
 8049cbe:	c7 41 18 72 65 61 64 	movl   $0x64616572,0x18(%ecx)
 8049cc5:	c7 41 1c 20 68 65 61 	movl   $0x61656820,0x1c(%ecx)
 8049ccc:	c7 41 20 64 65 72 73 	movl   $0x73726564,0x20(%ecx)
 8049cd3:	c7 41 24 20 66 72 6f 	movl   $0x6f726620,0x24(%ecx)
 8049cda:	c7 41 28 6d 20 73 65 	movl   $0x6573206d,0x28(%ecx)
 8049ce1:	c7 41 2c 72 76 65 72 	movl   $0x72657672,0x2c(%ecx)
 8049ce8:	c6 41 30 00          	movb   $0x0,0x30(%ecx)
 8049cec:	8b 9d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ebx
 8049cf2:	89 1c 24             	mov    %ebx,(%esp)
 8049cf5:	e8 a6 eb ff ff       	call   80488a0 <close@plt>
 8049cfa:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049cff:	89 c8                	mov    %ecx,%eax
 8049d01:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
 8049d07:	5b                   	pop    %ebx
 8049d08:	5e                   	pop    %esi
 8049d09:	5f                   	pop    %edi
 8049d0a:	5d                   	pop    %ebp
 8049d0b:	c3                   	ret    

08049d0c <driver_post>:
 8049d0c:	55                   	push   %ebp
 8049d0d:	89 e5                	mov    %esp,%ebp
 8049d0f:	83 ec 28             	sub    $0x28,%esp
 8049d12:	89 5d f8             	mov    %ebx,0xfffffff8(%ebp)
 8049d15:	89 75 fc             	mov    %esi,0xfffffffc(%ebp)
 8049d18:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049d1b:	8b 75 0c             	mov    0xc(%ebp),%esi
 8049d1e:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8049d21:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 8049d25:	74 20                	je     8049d47 <driver_post+0x3b>
 8049d27:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049d2b:	c7 04 24 8f a4 04 08 	movl   $0x804a48f,(%esp)
 8049d32:	e8 39 eb ff ff       	call   8048870 <printf@plt>
 8049d37:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049d3c:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049d40:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d45:	eb 52                	jmp    8049d99 <driver_post+0x8d>
 8049d47:	85 c9                	test   %ecx,%ecx
 8049d49:	74 40                	je     8049d8b <driver_post+0x7f>
 8049d4b:	0f b6 11             	movzbl (%ecx),%edx
 8049d4e:	0f b6 05 8b a4 04 08 	movzbl 0x804a48b,%eax
 8049d55:	39 c2                	cmp    %eax,%edx
 8049d57:	74 32                	je     8049d8b <driver_post+0x7f>
 8049d59:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8049d5d:	89 74 24 14          	mov    %esi,0x14(%esp)
 8049d61:	c7 44 24 10 a6 a4 04 	movl   $0x804a4a6,0x10(%esp)
 8049d68:	08 
 8049d69:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049d6d:	c7 44 24 08 ad a4 04 	movl   $0x804a4ad,0x8(%esp)
 8049d74:	08 
 8049d75:	c7 44 24 04 6e 3b 00 	movl   $0x3b6e,0x4(%esp)
 8049d7c:	00 
 8049d7d:	c7 04 24 50 a4 04 08 	movl   $0x804a450,(%esp)
 8049d84:	e8 47 f8 ff ff       	call   80495d0 <submitr>
 8049d89:	eb 0e                	jmp    8049d99 <driver_post+0x8d>
 8049d8b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049d90:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049d94:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d99:	8b 5d f8             	mov    0xfffffff8(%ebp),%ebx
 8049d9c:	8b 75 fc             	mov    0xfffffffc(%ebp),%esi
 8049d9f:	89 ec                	mov    %ebp,%esp
 8049da1:	5d                   	pop    %ebp
 8049da2:	c3                   	ret    

08049da3 <sigalrm_handler>:
 8049da3:	55                   	push   %ebp
 8049da4:	89 e5                	mov    %esp,%ebp
 8049da6:	83 ec 08             	sub    $0x8,%esp
 8049da9:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 8049db0:	00 
 8049db1:	c7 04 24 f4 a5 04 08 	movl   $0x804a5f4,(%esp)
 8049db8:	e8 b3 ea ff ff       	call   8048870 <printf@plt>
 8049dbd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049dc4:	e8 67 eb ff ff       	call   8048930 <exit@plt>
 8049dc9:	90                   	nop    
 8049dca:	90                   	nop    
 8049dcb:	90                   	nop    
 8049dcc:	90                   	nop    
 8049dcd:	90                   	nop    
 8049dce:	90                   	nop    
 8049dcf:	90                   	nop    

08049dd0 <hash>:
 8049dd0:	55                   	push   %ebp
 8049dd1:	89 e5                	mov    %esp,%ebp
 8049dd3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049dd6:	0f b6 11             	movzbl (%ecx),%edx
 8049dd9:	b8 00 00 00 00       	mov    $0x0,%eax
 8049dde:	84 d2                	test   %dl,%dl
 8049de0:	74 19                	je     8049dfb <hash+0x2b>
 8049de2:	b8 00 00 00 00       	mov    $0x0,%eax
 8049de7:	0f be d2             	movsbl %dl,%edx
 8049dea:	6b c0 67             	imul   $0x67,%eax,%eax
 8049ded:	8d 04 02             	lea    (%edx,%eax,1),%eax
 8049df0:	0f b6 51 01          	movzbl 0x1(%ecx),%edx
 8049df4:	83 c1 01             	add    $0x1,%ecx
 8049df7:	84 d2                	test   %dl,%dl
 8049df9:	75 ec                	jne    8049de7 <hash+0x17>
 8049dfb:	5d                   	pop    %ebp
 8049dfc:	c3                   	ret    

08049dfd <check>:
 8049dfd:	55                   	push   %ebp
 8049dfe:	89 e5                	mov    %esp,%ebp
 8049e00:	8b 55 08             	mov    0x8(%ebp),%edx
 8049e03:	89 d0                	mov    %edx,%eax
 8049e05:	c1 e8 1c             	shr    $0x1c,%eax
 8049e08:	85 c0                	test   %eax,%eax
 8049e0a:	74 1c                	je     8049e28 <check+0x2b>
 8049e0c:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049e11:	89 d0                	mov    %edx,%eax
 8049e13:	d3 e8                	shr    %cl,%eax
 8049e15:	3c 0a                	cmp    $0xa,%al
 8049e17:	74 0f                	je     8049e28 <check+0x2b>
 8049e19:	83 c1 08             	add    $0x8,%ecx
 8049e1c:	83 f9 20             	cmp    $0x20,%ecx
 8049e1f:	75 f0                	jne    8049e11 <check+0x14>
 8049e21:	b8 01 00 00 00       	mov    $0x1,%eax
 8049e26:	eb 05                	jmp    8049e2d <check+0x30>
 8049e28:	b8 00 00 00 00       	mov    $0x0,%eax
 8049e2d:	5d                   	pop    %ebp
 8049e2e:	66 90                	xchg   %ax,%ax
 8049e30:	c3                   	ret    

08049e31 <gencookie>:
 8049e31:	55                   	push   %ebp
 8049e32:	89 e5                	mov    %esp,%ebp
 8049e34:	53                   	push   %ebx
 8049e35:	83 ec 04             	sub    $0x4,%esp
 8049e38:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e3b:	89 04 24             	mov    %eax,(%esp)
 8049e3e:	e8 8d ff ff ff       	call   8049dd0 <hash>
 8049e43:	89 04 24             	mov    %eax,(%esp)
 8049e46:	e8 f5 e8 ff ff       	call   8048740 <srand@plt>
 8049e4b:	e8 90 ea ff ff       	call   80488e0 <rand@plt>
 8049e50:	89 c3                	mov    %eax,%ebx
 8049e52:	89 04 24             	mov    %eax,(%esp)
 8049e55:	e8 a3 ff ff ff       	call   8049dfd <check>
 8049e5a:	85 c0                	test   %eax,%eax
 8049e5c:	74 ed                	je     8049e4b <gencookie+0x1a>
 8049e5e:	89 d8                	mov    %ebx,%eax
 8049e60:	83 c4 04             	add    $0x4,%esp
 8049e63:	5b                   	pop    %ebx
 8049e64:	5d                   	pop    %ebp
 8049e65:	c3                   	ret    
 8049e66:	90                   	nop    
 8049e67:	90                   	nop    
 8049e68:	90                   	nop    
 8049e69:	90                   	nop    
 8049e6a:	90                   	nop    
 8049e6b:	90                   	nop    
 8049e6c:	90                   	nop    
 8049e6d:	90                   	nop    
 8049e6e:	90                   	nop    
 8049e6f:	90                   	nop    

08049e70 <__libc_csu_fini>:
 8049e70:	55                   	push   %ebp
 8049e71:	89 e5                	mov    %esp,%ebp
 8049e73:	5d                   	pop    %ebp
 8049e74:	c3                   	ret    
 8049e75:	8d 74 26 00          	lea    0x0(%esi),%esi
 8049e79:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

08049e80 <__libc_csu_init>:
 8049e80:	55                   	push   %ebp
 8049e81:	89 e5                	mov    %esp,%ebp
 8049e83:	57                   	push   %edi
 8049e84:	56                   	push   %esi
 8049e85:	53                   	push   %ebx
 8049e86:	e8 5e 00 00 00       	call   8049ee9 <__i686.get_pc_thunk.bx>
 8049e8b:	81 c3 55 12 00 00    	add    $0x1255,%ebx
 8049e91:	83 ec 1c             	sub    $0x1c,%esp
 8049e94:	e8 5f e8 ff ff       	call   80486f8 <_init>
 8049e99:	8d 83 20 ff ff ff    	lea    0xffffff20(%ebx),%eax
 8049e9f:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 8049ea2:	8d 83 20 ff ff ff    	lea    0xffffff20(%ebx),%eax
 8049ea8:	29 45 f0             	sub    %eax,0xfffffff0(%ebp)
 8049eab:	c1 7d f0 02          	sarl   $0x2,0xfffffff0(%ebp)
 8049eaf:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 8049eb2:	85 d2                	test   %edx,%edx
 8049eb4:	74 2b                	je     8049ee1 <__libc_csu_init+0x61>
 8049eb6:	31 ff                	xor    %edi,%edi
 8049eb8:	89 c6                	mov    %eax,%esi
 8049eba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049ec0:	8b 45 10             	mov    0x10(%ebp),%eax
 8049ec3:	83 c7 01             	add    $0x1,%edi
 8049ec6:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049eca:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ecd:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049ed1:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ed4:	89 04 24             	mov    %eax,(%esp)
 8049ed7:	ff 16                	call   *(%esi)
 8049ed9:	83 c6 04             	add    $0x4,%esi
 8049edc:	39 7d f0             	cmp    %edi,0xfffffff0(%ebp)
 8049edf:	75 df                	jne    8049ec0 <__libc_csu_init+0x40>
 8049ee1:	83 c4 1c             	add    $0x1c,%esp
 8049ee4:	5b                   	pop    %ebx
 8049ee5:	5e                   	pop    %esi
 8049ee6:	5f                   	pop    %edi
 8049ee7:	5d                   	pop    %ebp
 8049ee8:	c3                   	ret    

08049ee9 <__i686.get_pc_thunk.bx>:
 8049ee9:	8b 1c 24             	mov    (%esp),%ebx
 8049eec:	c3                   	ret    
 8049eed:	90                   	nop    
 8049eee:	90                   	nop    
 8049eef:	90                   	nop    

08049ef0 <__do_global_ctors_aux>:
 8049ef0:	55                   	push   %ebp
 8049ef1:	89 e5                	mov    %esp,%ebp
 8049ef3:	53                   	push   %ebx
 8049ef4:	bb 00 b0 04 08       	mov    $0x804b000,%ebx
 8049ef9:	83 ec 04             	sub    $0x4,%esp
 8049efc:	a1 00 b0 04 08       	mov    0x804b000,%eax
 8049f01:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049f04:	74 0c                	je     8049f12 <__do_global_ctors_aux+0x22>
 8049f06:	83 eb 04             	sub    $0x4,%ebx
 8049f09:	ff d0                	call   *%eax
 8049f0b:	8b 03                	mov    (%ebx),%eax
 8049f0d:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049f10:	75 f4                	jne    8049f06 <__do_global_ctors_aux+0x16>
 8049f12:	83 c4 04             	add    $0x4,%esp
 8049f15:	5b                   	pop    %ebx
 8049f16:	5d                   	pop    %ebp
 8049f17:	c3                   	ret    
Disassembly of section .fini:

08049f18 <_fini>:
 8049f18:	55                   	push   %ebp
 8049f19:	89 e5                	mov    %esp,%ebp
 8049f1b:	53                   	push   %ebx
 8049f1c:	83 ec 04             	sub    $0x4,%esp
 8049f1f:	e8 00 00 00 00       	call   8049f24 <_fini+0xc>
 8049f24:	5b                   	pop    %ebx
 8049f25:	81 c3 bc 11 00 00    	add    $0x11bc,%ebx
 8049f2b:	e8 60 ea ff ff       	call   8048990 <__do_global_dtors_aux>
 8049f30:	59                   	pop    %ecx
 8049f31:	5b                   	pop    %ebx
 8049f32:	c9                   	leave  
 8049f33:	c3                   	ret    
