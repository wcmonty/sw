
bomb:     file format elf32-i386

Disassembly of section .init:

080486ac <_init>:
 80486ac:	55                   	push   %ebp
 80486ad:	89 e5                	mov    %esp,%ebp
 80486af:	83 ec 08             	sub    $0x8,%esp
 80486b2:	e8 2d 02 00 00       	call   80488e4 <call_gmon_start>
 80486b7:	e8 b4 02 00 00       	call   8048970 <frame_dummy>
 80486bc:	e8 df 19 00 00       	call   804a0a0 <__do_global_ctors_aux>
 80486c1:	c9                   	leave  
 80486c2:	c3                   	ret    
Disassembly of section .plt:

080486c4 <__errno_location@plt-0x10>:
 80486c4:	ff 35 e4 b0 04 08    	pushl  0x804b0e4
 80486ca:	ff 25 e8 b0 04 08    	jmp    *0x804b0e8
 80486d0:	00 00                	add    %al,(%eax)
	...

080486d4 <__errno_location@plt>:
 80486d4:	ff 25 ec b0 04 08    	jmp    *0x804b0ec
 80486da:	68 00 00 00 00       	push   $0x0
 80486df:	e9 e0 ff ff ff       	jmp    80486c4 <_init+0x18>

080486e4 <sprintf@plt>:
 80486e4:	ff 25 f0 b0 04 08    	jmp    *0x804b0f0
 80486ea:	68 08 00 00 00       	push   $0x8
 80486ef:	e9 d0 ff ff ff       	jmp    80486c4 <_init+0x18>

080486f4 <connect@plt>:
 80486f4:	ff 25 f4 b0 04 08    	jmp    *0x804b0f4
 80486fa:	68 10 00 00 00       	push   $0x10
 80486ff:	e9 c0 ff ff ff       	jmp    80486c4 <_init+0x18>

08048704 <signal@plt>:
 8048704:	ff 25 f8 b0 04 08    	jmp    *0x804b0f8
 804870a:	68 18 00 00 00       	push   $0x18
 804870f:	e9 b0 ff ff ff       	jmp    80486c4 <_init+0x18>

08048714 <__gmon_start__@plt>:
 8048714:	ff 25 fc b0 04 08    	jmp    *0x804b0fc
 804871a:	68 20 00 00 00       	push   $0x20
 804871f:	e9 a0 ff ff ff       	jmp    80486c4 <_init+0x18>

08048724 <getenv@plt>:
 8048724:	ff 25 00 b1 04 08    	jmp    *0x804b100
 804872a:	68 28 00 00 00       	push   $0x28
 804872f:	e9 90 ff ff ff       	jmp    80486c4 <_init+0x18>

08048734 <write@plt>:
 8048734:	ff 25 04 b1 04 08    	jmp    *0x804b104
 804873a:	68 30 00 00 00       	push   $0x30
 804873f:	e9 80 ff ff ff       	jmp    80486c4 <_init+0x18>

08048744 <fgets@plt>:
 8048744:	ff 25 08 b1 04 08    	jmp    *0x804b108
 804874a:	68 38 00 00 00       	push   $0x38
 804874f:	e9 70 ff ff ff       	jmp    80486c4 <_init+0x18>

08048754 <memset@plt>:
 8048754:	ff 25 0c b1 04 08    	jmp    *0x804b10c
 804875a:	68 40 00 00 00       	push   $0x40
 804875f:	e9 60 ff ff ff       	jmp    80486c4 <_init+0x18>

08048764 <__strtol_internal@plt>:
 8048764:	ff 25 10 b1 04 08    	jmp    *0x804b110
 804876a:	68 48 00 00 00       	push   $0x48
 804876f:	e9 50 ff ff ff       	jmp    80486c4 <_init+0x18>

08048774 <__libc_start_main@plt>:
 8048774:	ff 25 14 b1 04 08    	jmp    *0x804b114
 804877a:	68 50 00 00 00       	push   $0x50
 804877f:	e9 40 ff ff ff       	jmp    80486c4 <_init+0x18>

08048784 <read@plt>:
 8048784:	ff 25 18 b1 04 08    	jmp    *0x804b118
 804878a:	68 58 00 00 00       	push   $0x58
 804878f:	e9 30 ff ff ff       	jmp    80486c4 <_init+0x18>

08048794 <fflush@plt>:
 8048794:	ff 25 1c b1 04 08    	jmp    *0x804b11c
 804879a:	68 60 00 00 00       	push   $0x60
 804879f:	e9 20 ff ff ff       	jmp    80486c4 <_init+0x18>

080487a4 <socket@plt>:
 80487a4:	ff 25 20 b1 04 08    	jmp    *0x804b120
 80487aa:	68 68 00 00 00       	push   $0x68
 80487af:	e9 10 ff ff ff       	jmp    80486c4 <_init+0x18>

080487b4 <__ctype_b_loc@plt>:
 80487b4:	ff 25 24 b1 04 08    	jmp    *0x804b124
 80487ba:	68 70 00 00 00       	push   $0x70
 80487bf:	e9 00 ff ff ff       	jmp    80486c4 <_init+0x18>

080487c4 <bcopy@plt>:
 80487c4:	ff 25 28 b1 04 08    	jmp    *0x804b128
 80487ca:	68 78 00 00 00       	push   $0x78
 80487cf:	e9 f0 fe ff ff       	jmp    80486c4 <_init+0x18>

080487d4 <memcpy@plt>:
 80487d4:	ff 25 2c b1 04 08    	jmp    *0x804b12c
 80487da:	68 80 00 00 00       	push   $0x80
 80487df:	e9 e0 fe ff ff       	jmp    80486c4 <_init+0x18>

080487e4 <fopen@plt>:
 80487e4:	ff 25 30 b1 04 08    	jmp    *0x804b130
 80487ea:	68 88 00 00 00       	push   $0x88
 80487ef:	e9 d0 fe ff ff       	jmp    80486c4 <_init+0x18>

080487f4 <alarm@plt>:
 80487f4:	ff 25 34 b1 04 08    	jmp    *0x804b134
 80487fa:	68 90 00 00 00       	push   $0x90
 80487ff:	e9 c0 fe ff ff       	jmp    80486c4 <_init+0x18>

08048804 <strcpy@plt>:
 8048804:	ff 25 38 b1 04 08    	jmp    *0x804b138
 804880a:	68 98 00 00 00       	push   $0x98
 804880f:	e9 b0 fe ff ff       	jmp    80486c4 <_init+0x18>

08048814 <printf@plt>:
 8048814:	ff 25 3c b1 04 08    	jmp    *0x804b13c
 804881a:	68 a0 00 00 00       	push   $0xa0
 804881f:	e9 a0 fe ff ff       	jmp    80486c4 <_init+0x18>

08048824 <strcasecmp@plt>:
 8048824:	ff 25 40 b1 04 08    	jmp    *0x804b140
 804882a:	68 a8 00 00 00       	push   $0xa8
 804882f:	e9 90 fe ff ff       	jmp    80486c4 <_init+0x18>

08048834 <close@plt>:
 8048834:	ff 25 44 b1 04 08    	jmp    *0x804b144
 804883a:	68 b0 00 00 00       	push   $0xb0
 804883f:	e9 80 fe ff ff       	jmp    80486c4 <_init+0x18>

08048844 <fprintf@plt>:
 8048844:	ff 25 48 b1 04 08    	jmp    *0x804b148
 804884a:	68 b8 00 00 00       	push   $0xb8
 804884f:	e9 70 fe ff ff       	jmp    80486c4 <_init+0x18>

08048854 <gethostname@plt>:
 8048854:	ff 25 4c b1 04 08    	jmp    *0x804b14c
 804885a:	68 c0 00 00 00       	push   $0xc0
 804885f:	e9 60 fe ff ff       	jmp    80486c4 <_init+0x18>

08048864 <sleep@plt>:
 8048864:	ff 25 50 b1 04 08    	jmp    *0x804b150
 804886a:	68 c8 00 00 00       	push   $0xc8
 804886f:	e9 50 fe ff ff       	jmp    80486c4 <_init+0x18>

08048874 <puts@plt>:
 8048874:	ff 25 54 b1 04 08    	jmp    *0x804b154
 804887a:	68 d0 00 00 00       	push   $0xd0
 804887f:	e9 40 fe ff ff       	jmp    80486c4 <_init+0x18>

08048884 <sscanf@plt>:
 8048884:	ff 25 58 b1 04 08    	jmp    *0x804b158
 804888a:	68 d8 00 00 00       	push   $0xd8
 804888f:	e9 30 fe ff ff       	jmp    80486c4 <_init+0x18>

08048894 <gethostbyname@plt>:
 8048894:	ff 25 5c b1 04 08    	jmp    *0x804b15c
 804889a:	68 e0 00 00 00       	push   $0xe0
 804889f:	e9 20 fe ff ff       	jmp    80486c4 <_init+0x18>

080488a4 <exit@plt>:
 80488a4:	ff 25 60 b1 04 08    	jmp    *0x804b160
 80488aa:	68 e8 00 00 00       	push   $0xe8
 80488af:	e9 10 fe ff ff       	jmp    80486c4 <_init+0x18>
Disassembly of section .text:

080488c0 <_start>:
 80488c0:	31 ed                	xor    %ebp,%ebp
 80488c2:	5e                   	pop    %esi
 80488c3:	89 e1                	mov    %esp,%ecx
 80488c5:	83 e4 f0             	and    $0xfffffff0,%esp
 80488c8:	50                   	push   %eax
 80488c9:	54                   	push   %esp
 80488ca:	52                   	push   %edx
 80488cb:	68 20 a0 04 08       	push   $0x804a020
 80488d0:	68 30 a0 04 08       	push   $0x804a030
 80488d5:	51                   	push   %ecx
 80488d6:	56                   	push   %esi
 80488d7:	68 94 89 04 08       	push   $0x8048994
 80488dc:	e8 93 fe ff ff       	call   8048774 <__libc_start_main@plt>
 80488e1:	f4                   	hlt    
 80488e2:	90                   	nop    
 80488e3:	90                   	nop    

080488e4 <call_gmon_start>:
 80488e4:	55                   	push   %ebp
 80488e5:	89 e5                	mov    %esp,%ebp
 80488e7:	53                   	push   %ebx
 80488e8:	83 ec 04             	sub    $0x4,%esp
 80488eb:	e8 00 00 00 00       	call   80488f0 <call_gmon_start+0xc>
 80488f0:	5b                   	pop    %ebx
 80488f1:	81 c3 f0 27 00 00    	add    $0x27f0,%ebx
 80488f7:	8b 93 fc ff ff ff    	mov    0xfffffffc(%ebx),%edx
 80488fd:	85 d2                	test   %edx,%edx
 80488ff:	74 05                	je     8048906 <call_gmon_start+0x22>
 8048901:	e8 0e fe ff ff       	call   8048714 <__gmon_start__@plt>
 8048906:	58                   	pop    %eax
 8048907:	5b                   	pop    %ebx
 8048908:	c9                   	leave  
 8048909:	c3                   	ret    
 804890a:	90                   	nop    
 804890b:	90                   	nop    
 804890c:	90                   	nop    
 804890d:	90                   	nop    
 804890e:	90                   	nop    
 804890f:	90                   	nop    

08048910 <__do_global_dtors_aux>:
 8048910:	55                   	push   %ebp
 8048911:	89 e5                	mov    %esp,%ebp
 8048913:	53                   	push   %ebx
 8048914:	83 ec 04             	sub    $0x4,%esp
 8048917:	80 3d d0 b8 04 08 00 	cmpb   $0x0,0x804b8d0
 804891e:	75 3f                	jne    804895f <__do_global_dtors_aux+0x4f>
 8048920:	b8 0c b0 04 08       	mov    $0x804b00c,%eax
 8048925:	2d 08 b0 04 08       	sub    $0x804b008,%eax
 804892a:	c1 f8 02             	sar    $0x2,%eax
 804892d:	8d 58 ff             	lea    0xffffffff(%eax),%ebx
 8048930:	a1 cc b8 04 08       	mov    0x804b8cc,%eax
 8048935:	39 c3                	cmp    %eax,%ebx
 8048937:	76 1f                	jbe    8048958 <__do_global_dtors_aux+0x48>
 8048939:	8d b4 26 00 00 00 00 	lea    0x0(%esi),%esi
 8048940:	83 c0 01             	add    $0x1,%eax
 8048943:	a3 cc b8 04 08       	mov    %eax,0x804b8cc
 8048948:	ff 14 85 08 b0 04 08 	call   *0x804b008(,%eax,4)
 804894f:	a1 cc b8 04 08       	mov    0x804b8cc,%eax
 8048954:	39 c3                	cmp    %eax,%ebx
 8048956:	77 e8                	ja     8048940 <__do_global_dtors_aux+0x30>
 8048958:	c6 05 d0 b8 04 08 01 	movb   $0x1,0x804b8d0
 804895f:	83 c4 04             	add    $0x4,%esp
 8048962:	5b                   	pop    %ebx
 8048963:	5d                   	pop    %ebp
 8048964:	c3                   	ret    
 8048965:	8d 74 26 00          	lea    0x0(%esi),%esi
 8048969:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

08048970 <frame_dummy>:
 8048970:	55                   	push   %ebp
 8048971:	89 e5                	mov    %esp,%ebp
 8048973:	83 ec 08             	sub    $0x8,%esp
 8048976:	a1 10 b0 04 08       	mov    0x804b010,%eax
 804897b:	85 c0                	test   %eax,%eax
 804897d:	74 12                	je     8048991 <frame_dummy+0x21>
 804897f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048984:	85 c0                	test   %eax,%eax
 8048986:	74 09                	je     8048991 <frame_dummy+0x21>
 8048988:	c7 04 24 10 b0 04 08 	movl   $0x804b010,(%esp)
 804898f:	ff d0                	call   *%eax
 8048991:	c9                   	leave  
 8048992:	c3                   	ret    
 8048993:	90                   	nop    

08048994 <main>:
 8048994:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048998:	83 e4 f0             	and    $0xfffffff0,%esp
 804899b:	ff 71 fc             	pushl  0xfffffffc(%ecx)
 804899e:	55                   	push   %ebp
 804899f:	89 e5                	mov    %esp,%ebp
 80489a1:	53                   	push   %ebx
 80489a2:	51                   	push   %ecx
 80489a3:	83 ec 10             	sub    $0x10,%esp
 80489a6:	8b 01                	mov    (%ecx),%eax
 80489a8:	8b 59 04             	mov    0x4(%ecx),%ebx
 80489ab:	83 f8 01             	cmp    $0x1,%eax
 80489ae:	75 0c                	jne    80489bc <main+0x28>
 80489b0:	a1 c4 b8 04 08       	mov    0x804b8c4,%eax
 80489b5:	a3 d8 b8 04 08       	mov    %eax,0x804b8d8
 80489ba:	eb 64                	jmp    8048a20 <main+0x8c>
 80489bc:	83 f8 02             	cmp    $0x2,%eax
 80489bf:	75 41                	jne    8048a02 <main+0x6e>
 80489c1:	c7 44 24 04 0c a1 04 	movl   $0x804a10c,0x4(%esp)
 80489c8:	08 
 80489c9:	8b 43 04             	mov    0x4(%ebx),%eax
 80489cc:	89 04 24             	mov    %eax,(%esp)
 80489cf:	e8 10 fe ff ff       	call   80487e4 <fopen@plt>
 80489d4:	a3 d8 b8 04 08       	mov    %eax,0x804b8d8
 80489d9:	85 c0                	test   %eax,%eax
 80489db:	75 43                	jne    8048a20 <main+0x8c>
 80489dd:	8b 43 04             	mov    0x4(%ebx),%eax
 80489e0:	89 44 24 08          	mov    %eax,0x8(%esp)
 80489e4:	8b 03                	mov    (%ebx),%eax
 80489e6:	89 44 24 04          	mov    %eax,0x4(%esp)
 80489ea:	c7 04 24 0e a1 04 08 	movl   $0x804a10e,(%esp)
 80489f1:	e8 1e fe ff ff       	call   8048814 <printf@plt>
 80489f6:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80489fd:	e8 a2 fe ff ff       	call   80488a4 <exit@plt>
 8048a02:	8b 03                	mov    (%ebx),%eax
 8048a04:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048a08:	c7 04 24 2b a1 04 08 	movl   $0x804a12b,(%esp)
 8048a0f:	e8 00 fe ff ff       	call   8048814 <printf@plt>
 8048a14:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a1b:	e8 84 fe ff ff       	call   80488a4 <exit@plt>
 8048a20:	e8 53 09 00 00       	call   8049378 <initialize_bomb>
 8048a25:	c7 04 24 90 a1 04 08 	movl   $0x804a190,(%esp)
 8048a2c:	e8 43 fe ff ff       	call   8048874 <puts@plt>
 8048a31:	c7 04 24 cc a1 04 08 	movl   $0x804a1cc,(%esp)
 8048a38:	e8 37 fe ff ff       	call   8048874 <puts@plt>
 8048a3d:	e8 23 08 00 00       	call   8049265 <read_line>
 8048a42:	89 04 24             	mov    %eax,(%esp)
 8048a45:	e8 bf 04 00 00       	call   8048f09 <phase_1>
 8048a4a:	e8 6d 06 00 00       	call   80490bc <phase_defused>
 8048a4f:	c7 04 24 f8 a1 04 08 	movl   $0x804a1f8,(%esp)
 8048a56:	e8 19 fe ff ff       	call   8048874 <puts@plt>
 8048a5b:	e8 05 08 00 00       	call   8049265 <read_line>
 8048a60:	89 04 24             	mov    %eax,(%esp)
 8048a63:	e8 b3 02 00 00       	call   8048d1b <phase_2>
 8048a68:	e8 4f 06 00 00       	call   80490bc <phase_defused>
 8048a6d:	c7 04 24 45 a1 04 08 	movl   $0x804a145,(%esp)
 8048a74:	e8 fb fd ff ff       	call   8048874 <puts@plt>
 8048a79:	e8 e7 07 00 00       	call   8049265 <read_line>
 8048a7e:	89 04 24             	mov    %eax,(%esp)
 8048a81:	e8 c1 03 00 00       	call   8048e47 <phase_3>
 8048a86:	e8 31 06 00 00       	call   80490bc <phase_defused>
 8048a8b:	c7 04 24 63 a1 04 08 	movl   $0x804a163,(%esp)
 8048a92:	e8 dd fd ff ff       	call   8048874 <puts@plt>
 8048a97:	e8 c9 07 00 00       	call   8049265 <read_line>
 8048a9c:	89 04 24             	mov    %eax,(%esp)
 8048a9f:	e8 35 03 00 00       	call   8048dd9 <phase_4>
 8048aa4:	e8 13 06 00 00       	call   80490bc <phase_defused>
 8048aa9:	c7 04 24 24 a2 04 08 	movl   $0x804a224,(%esp)
 8048ab0:	e8 bf fd ff ff       	call   8048874 <puts@plt>
 8048ab5:	e8 ab 07 00 00       	call   8049265 <read_line>
 8048aba:	89 04 24             	mov    %eax,(%esp)
 8048abd:	e8 a5 02 00 00       	call   8048d67 <phase_5>
 8048ac2:	e8 f5 05 00 00       	call   80490bc <phase_defused>
 8048ac7:	c7 04 24 72 a1 04 08 	movl   $0x804a172,(%esp)
 8048ace:	e8 a1 fd ff ff       	call   8048874 <puts@plt>
 8048ad3:	e8 8d 07 00 00       	call   8049265 <read_line>
 8048ad8:	89 04 24             	mov    %eax,(%esp)
 8048adb:	e8 4b 01 00 00       	call   8048c2b <phase_6>
 8048ae0:	e8 d7 05 00 00       	call   80490bc <phase_defused>
 8048ae5:	b8 00 00 00 00       	mov    $0x0,%eax
 8048aea:	83 c4 10             	add    $0x10,%esp
 8048aed:	59                   	pop    %ecx
 8048aee:	5b                   	pop    %ebx
 8048aef:	5d                   	pop    %ebp
 8048af0:	8d 61 fc             	lea    0xfffffffc(%ecx),%esp
 8048af3:	c3                   	ret    
 8048af4:	90                   	nop    
 8048af5:	90                   	nop    
 8048af6:	90                   	nop    
 8048af7:	90                   	nop    
 8048af8:	90                   	nop    
 8048af9:	90                   	nop    
 8048afa:	90                   	nop    
 8048afb:	90                   	nop    
 8048afc:	90                   	nop    
 8048afd:	90                   	nop    
 8048afe:	90                   	nop    
 8048aff:	90                   	nop    

08048b00 <func4>:
 8048b00:	55                   	push   %ebp
 8048b01:	89 e5                	mov    %esp,%ebp
 8048b03:	83 ec 14             	sub    $0x14,%esp
 8048b06:	89 5d f8             	mov    %ebx,0xfffffff8(%ebp)
 8048b09:	89 75 fc             	mov    %esi,0xfffffffc(%ebp)
 8048b0c:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048b0f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8048b12:	8b 75 10             	mov    0x10(%ebp),%esi
 8048b15:	89 f2                	mov    %esi,%edx
 8048b17:	29 ca                	sub    %ecx,%edx
 8048b19:	89 d0                	mov    %edx,%eax
 8048b1b:	c1 e8 1f             	shr    $0x1f,%eax
 8048b1e:	01 d0                	add    %edx,%eax
 8048b20:	d1 f8                	sar    %eax
 8048b22:	01 c8                	add    %ecx,%eax
 8048b24:	39 d8                	cmp    %ebx,%eax
 8048b26:	7e 18                	jle    8048b40 <func4+0x40>
 8048b28:	83 e8 01             	sub    $0x1,%eax
 8048b2b:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048b2f:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048b33:	89 1c 24             	mov    %ebx,(%esp)
 8048b36:	e8 c5 ff ff ff       	call   8048b00 <func4>
 8048b3b:	8d 14 00             	lea    (%eax,%eax,1),%edx
 8048b3e:	eb 20                	jmp    8048b60 <func4+0x60>
 8048b40:	ba 00 00 00 00       	mov    $0x0,%edx
 8048b45:	39 d8                	cmp    %ebx,%eax
 8048b47:	7d 17                	jge    8048b60 <func4+0x60>
 8048b49:	89 74 24 08          	mov    %esi,0x8(%esp)
 8048b4d:	83 c0 01             	add    $0x1,%eax
 8048b50:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b54:	89 1c 24             	mov    %ebx,(%esp)
 8048b57:	e8 a4 ff ff ff       	call   8048b00 <func4>
 8048b5c:	8d 54 00 01          	lea    0x1(%eax,%eax,1),%edx
 8048b60:	89 d0                	mov    %edx,%eax
 8048b62:	8b 5d f8             	mov    0xfffffff8(%ebp),%ebx
 8048b65:	8b 75 fc             	mov    0xfffffffc(%ebp),%esi
 8048b68:	89 ec                	mov    %ebp,%esp
 8048b6a:	5d                   	pop    %ebp
 8048b6b:	c3                   	ret    

08048b6c <fun7>:
 8048b6c:	55                   	push   %ebp
 8048b6d:	89 e5                	mov    %esp,%ebp
 8048b6f:	53                   	push   %ebx
 8048b70:	83 ec 08             	sub    $0x8,%esp
 8048b73:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048b76:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8048b79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048b7e:	85 db                	test   %ebx,%ebx
 8048b80:	74 35                	je     8048bb7 <fun7+0x4b>
 8048b82:	8b 13                	mov    (%ebx),%edx
 8048b84:	39 ca                	cmp    %ecx,%edx
 8048b86:	7e 13                	jle    8048b9b <fun7+0x2f>
 8048b88:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048b8c:	8b 43 04             	mov    0x4(%ebx),%eax
 8048b8f:	89 04 24             	mov    %eax,(%esp)
 8048b92:	e8 d5 ff ff ff       	call   8048b6c <fun7>
 8048b97:	01 c0                	add    %eax,%eax
 8048b99:	eb 1c                	jmp    8048bb7 <fun7+0x4b>
 8048b9b:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ba0:	39 ca                	cmp    %ecx,%edx
 8048ba2:	74 13                	je     8048bb7 <fun7+0x4b>
 8048ba4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048ba8:	8b 43 08             	mov    0x8(%ebx),%eax
 8048bab:	89 04 24             	mov    %eax,(%esp)
 8048bae:	e8 b9 ff ff ff       	call   8048b6c <fun7>
 8048bb3:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048bb7:	83 c4 08             	add    $0x8,%esp
 8048bba:	5b                   	pop    %ebx
 8048bbb:	5d                   	pop    %ebp
 8048bbc:	c3                   	ret    

08048bbd <secret_phase>:
 8048bbd:	55                   	push   %ebp
 8048bbe:	89 e5                	mov    %esp,%ebp
 8048bc0:	53                   	push   %ebx
 8048bc1:	83 ec 14             	sub    $0x14,%esp
 8048bc4:	e8 9c 06 00 00       	call   8049265 <read_line>
 8048bc9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8048bd0:	00 
 8048bd1:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 8048bd8:	00 
 8048bd9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048be0:	00 
 8048be1:	89 04 24             	mov    %eax,(%esp)
 8048be4:	e8 7b fb ff ff       	call   8048764 <__strtol_internal@plt>
 8048be9:	89 c3                	mov    %eax,%ebx
 8048beb:	8d 40 ff             	lea    0xffffffff(%eax),%eax
 8048bee:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048bf3:	76 05                	jbe    8048bfa <secret_phase+0x3d>
 8048bf5:	e8 5b 05 00 00       	call   8049155 <explode_bomb>
 8048bfa:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048bfe:	c7 04 24 b0 b6 04 08 	movl   $0x804b6b0,(%esp) <- nodes
 8048c05:	e8 62 ff ff ff       	call   8048b6c <fun7>
 8048c0a:	83 f8 07             	cmp    $0x7,%eax
 8048c0d:	74 05                	je     8048c14 <secret_phase+0x57>
 8048c0f:	e8 41 05 00 00       	call   8049155 <explode_bomb>
 8048c14:	c7 04 24 48 a2 04 08 	movl   $0x804a248,(%esp)
 8048c1b:	e8 54 fc ff ff       	call   8048874 <puts@plt>
 8048c20:	e8 97 04 00 00       	call   80490bc <phase_defused>
 8048c25:	83 c4 14             	add    $0x14,%esp
 8048c28:	5b                   	pop    %ebx
 8048c29:	5d                   	pop    %ebp
 8048c2a:	c3                   	ret    

08048c2b <phase_6>:
 8048c2b:	55                   	push   %ebp
 8048c2c:	89 e5                	mov    %esp,%ebp
 8048c2e:	57                   	push   %edi
 8048c2f:	56                   	push   %esi
 8048c30:	53                   	push   %ebx
 8048c31:	83 ec 3c             	sub    $0x3c,%esp
 8048c34:	8d 45 dc             	lea    0xffffffdc(%ebp),%eax
 8048c37:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048c3b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c3e:	89 04 24             	mov    %eax,(%esp)
 8048c41:	e8 51 05 00 00       	call   8049197 <read_six_numbers>
 8048c46:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048c4b:	8b 44 9d dc          	mov    0xffffffdc(%ebp,%ebx,4),%eax
 8048c4f:	83 e8 01             	sub    $0x1,%eax
 8048c52:	83 f8 05             	cmp    $0x5,%eax
 8048c55:	76 05                	jbe    8048c5c <phase_6+0x31>
 8048c57:	e8 f9 04 00 00       	call   8049155 <explode_bomb>
 8048c5c:	8d 7b 01             	lea    0x1(%ebx),%edi
 8048c5f:	83 ff 06             	cmp    $0x6,%edi
 8048c62:	0f 84 9a 00 00 00    	je     8048d02 <phase_6+0xd7>
 8048c68:	8d 74 9d dc          	lea    0xffffffdc(%ebp,%ebx,4),%esi
 8048c6c:	89 fb                	mov    %edi,%ebx
 8048c6e:	8d 45 dc             	lea    0xffffffdc(%ebp),%eax
 8048c71:	89 45 c0             	mov    %eax,0xffffffc0(%ebp)
 8048c74:	8b 55 c0             	mov    0xffffffc0(%ebp),%edx
 8048c77:	8b 44 ba fc          	mov    0xfffffffc(%edx,%edi,4),%eax
 8048c7b:	3b 46 04             	cmp    0x4(%esi),%eax
 8048c7e:	75 05                	jne    8048c85 <phase_6+0x5a>
 8048c80:	e8 d0 04 00 00       	call   8049155 <explode_bomb>
 8048c85:	83 c3 01             	add    $0x1,%ebx
 8048c88:	83 c6 04             	add    $0x4,%esi
 8048c8b:	83 fb 05             	cmp    $0x5,%ebx
 8048c8e:	7e e4                	jle    8048c74 <phase_6+0x49>
 8048c90:	89 fb                	mov    %edi,%ebx
 8048c92:	eb b7                	jmp    8048c4b <phase_6+0x20>
 8048c94:	8b 49 08             	mov    0x8(%ecx),%ecx
 8048c97:	83 c0 01             	add    $0x1,%eax
 8048c9a:	3b 44 95 dc          	cmp    0xffffffdc(%ebp,%edx,4),%eax
 8048c9e:	7c f4                	jl     8048c94 <phase_6+0x69>
 8048ca0:	89 4c 95 c4          	mov    %ecx,0xffffffc4(%ebp,%edx,4)
 8048ca4:	83 c2 01             	add    $0x1,%edx
 8048ca7:	83 fa 05             	cmp    $0x5,%edx
 8048caa:	7f 0c                	jg     8048cb8 <phase_6+0x8d>
 8048cac:	b9 fc b5 04 08       	mov    $0x804b5fc,%ecx
 8048cb1:	b8 01 00 00 00       	mov    $0x1,%eax
 8048cb6:	eb e2                	jmp    8048c9a <phase_6+0x6f>
 8048cb8:	8b 4d c4             	mov    0xffffffc4(%ebp),%ecx
 8048cbb:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
 8048cbe:	89 41 08             	mov    %eax,0x8(%ecx)
 8048cc1:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
 8048cc4:	89 50 08             	mov    %edx,0x8(%eax)
 8048cc7:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
 8048cca:	89 42 08             	mov    %eax,0x8(%edx)
 8048ccd:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
 8048cd0:	89 50 08             	mov    %edx,0x8(%eax)
 8048cd3:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 8048cd6:	89 42 08             	mov    %eax,0x8(%edx)
 8048cd9:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8048ce0:	89 cb                	mov    %ecx,%ebx
 8048ce2:	be 00 00 00 00       	mov    $0x0,%esi
 8048ce7:	8b 53 08             	mov    0x8(%ebx),%edx
 8048cea:	8b 03                	mov    (%ebx),%eax
 8048cec:	3b 02                	cmp    (%edx),%eax
 8048cee:	7e 05                	jle    8048cf5 <phase_6+0xca>
 8048cf0:	e8 60 04 00 00       	call   8049155 <explode_bomb>
 8048cf5:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048cf8:	83 c6 01             	add    $0x1,%esi
 8048cfb:	83 fe 05             	cmp    $0x5,%esi
 8048cfe:	74 13                	je     8048d13 <phase_6+0xe8>
 8048d00:	eb e5                	jmp    8048ce7 <phase_6+0xbc>
 8048d02:	b9 fc b5 04 08       	mov    $0x804b5fc,%ecx
 8048d07:	b8 01 00 00 00       	mov    $0x1,%eax
 8048d0c:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d11:	eb 87                	jmp    8048c9a <phase_6+0x6f>
 8048d13:	83 c4 3c             	add    $0x3c,%esp
 8048d16:	5b                   	pop    %ebx
 8048d17:	5e                   	pop    %esi
 8048d18:	5f                   	pop    %edi
 8048d19:	5d                   	pop    %ebp
 8048d1a:	c3                   	ret    

08048d1b <phase_2>:
 8048d1b:	55                   	push   %ebp
 8048d1c:	89 e5                	mov    %esp,%ebp
 8048d1e:	53                   	push   %ebx
 8048d1f:	83 ec 34             	sub    $0x34,%esp
 8048d22:	8d 45 e4             	lea    0xffffffe4(%ebp),%eax
 8048d25:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d29:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d2c:	89 04 24             	mov    %eax,(%esp)
 8048d2f:	e8 63 04 00 00       	call   8049197 <read_six_numbers>
 8048d34:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
 8048d38:	75 06                	jne    8048d40 <phase_2+0x25>
 8048d3a:	83 7d e8 01          	cmpl   $0x1,0xffffffe8(%ebp)
 8048d3e:	74 05                	je     8048d45 <phase_2+0x2a>
 8048d40:	e8 10 04 00 00       	call   8049155 <explode_bomb>
 8048d45:	8d 5d ec             	lea    0xffffffec(%ebp),%ebx
 8048d48:	8b 43 f8             	mov    0xfffffff8(%ebx),%eax
 8048d4b:	03 43 fc             	add    0xfffffffc(%ebx),%eax
 8048d4e:	39 03                	cmp    %eax,(%ebx)
 8048d50:	74 05                	je     8048d57 <phase_2+0x3c>
 8048d52:	e8 fe 03 00 00       	call   8049155 <explode_bomb>
 8048d57:	83 c3 04             	add    $0x4,%ebx
 8048d5a:	8d 45 fc             	lea    0xfffffffc(%ebp),%eax
 8048d5d:	39 c3                	cmp    %eax,%ebx
 8048d5f:	75 e7                	jne    8048d48 <phase_2+0x2d>
 8048d61:	83 c4 34             	add    $0x34,%esp
 8048d64:	5b                   	pop    %ebx
 8048d65:	5d                   	pop    %ebp
 8048d66:	c3                   	ret    

08048d67 <phase_5>:
 8048d67:	55                   	push   %ebp
 8048d68:	89 e5                	mov    %esp,%ebp
 8048d6a:	83 ec 28             	sub    $0x28,%esp
 8048d6d:	8d 45 f8             	lea    0xfffffff8(%ebp),%eax
 8048d70:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048d74:	8d 45 fc             	lea    0xfffffffc(%ebp),%eax
 8048d77:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048d7b:	c7 44 24 04 6a a3 04 	movl   $0x804a36a,0x4(%esp)
 8048d82:	08 
 8048d83:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d86:	89 04 24             	mov    %eax,(%esp)
 8048d89:	e8 f6 fa ff ff       	call   8048884 <sscanf@plt>
 8048d8e:	83 f8 01             	cmp    $0x1,%eax
 8048d91:	7f 05                	jg     8048d98 <phase_5+0x31>
 8048d93:	e8 bd 03 00 00       	call   8049155 <explode_bomb>
 8048d98:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 8048d9b:	83 e0 0f             	and    $0xf,%eax
 8048d9e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 8048da1:	83 f8 0f             	cmp    $0xf,%eax
 8048da4:	74 2c                	je     8048dd2 <phase_5+0x6b>
 8048da6:	ba 00 00 00 00       	mov    $0x0,%edx
 8048dab:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048db0:	83 c2 01             	add    $0x1,%edx
 8048db3:	8b 04 85 c0 a2 04 08 	mov    0x804a2c0(,%eax,4),%eax
 8048dba:	01 c1                	add    %eax,%ecx
 8048dbc:	83 f8 0f             	cmp    $0xf,%eax
 8048dbf:	75 ef                	jne    8048db0 <phase_5+0x49>
 8048dc1:	c7 45 fc 0f 00 00 00 	movl   $0xf,0xfffffffc(%ebp)
 8048dc8:	83 fa 0f             	cmp    $0xf,%edx
 8048dcb:	75 05                	jne    8048dd2 <phase_5+0x6b>
 8048dcd:	39 4d f8             	cmp    %ecx,0xfffffff8(%ebp)
 8048dd0:	74 05                	je     8048dd7 <phase_5+0x70>
 8048dd2:	e8 7e 03 00 00       	call   8049155 <explode_bomb>
 8048dd7:	c9                   	leave  
 8048dd8:	c3                   	ret    

08048dd9 <phase_4>:
 8048dd9:	55                   	push   %ebp
 8048dda:	89 e5                	mov    %esp,%ebp
 8048ddc:	83 ec 28             	sub    $0x28,%esp
 8048ddf:	8d 45 f8             	lea    0xfffffff8(%ebp),%eax
 8048de2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048de6:	8d 45 fc             	lea    0xfffffffc(%ebp),%eax
 8048de9:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048ded:	c7 44 24 04 6a a3 04 	movl   $0x804a36a,0x4(%esp)
 8048df4:	08 
 8048df5:	8b 45 08             	mov    0x8(%ebp),%eax
 8048df8:	89 04 24             	mov    %eax,(%esp)
 8048dfb:	e8 84 fa ff ff       	call   8048884 <sscanf@plt>
 8048e00:	83 f8 02             	cmp    $0x2,%eax
 8048e03:	75 0d                	jne    8048e12 <phase_4+0x39>
 8048e05:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 8048e08:	85 c0                	test   %eax,%eax
 8048e0a:	78 06                	js     8048e12 <phase_4+0x39>
 8048e0c:	83 f8 0e             	cmp    $0xe,%eax
 8048e0f:	90                   	nop    
 8048e10:	7e 05                	jle    8048e17 <phase_4+0x3e>
 8048e12:	e8 3e 03 00 00       	call   8049155 <explode_bomb>
 8048e17:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 8048e1e:	00 
 8048e1f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048e26:	00 
 8048e27:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 8048e2a:	89 04 24             	mov    %eax,(%esp)
 8048e2d:	e8 ce fc ff ff       	call   8048b00 <func4>
 8048e32:	83 f8 02             	cmp    $0x2,%eax
 8048e35:	75 06                	jne    8048e3d <phase_4+0x64>
 8048e37:	83 7d f8 02          	cmpl   $0x2,0xfffffff8(%ebp)
 8048e3b:	74 08                	je     8048e45 <phase_4+0x6c>
 8048e3d:	8d 76 00             	lea    0x0(%esi),%esi
 8048e40:	e8 10 03 00 00       	call   8049155 <explode_bomb>
 8048e45:	c9                   	leave  
 8048e46:	c3                   	ret    

08048e47 <phase_3>:
 8048e47:	55                   	push   %ebp
 8048e48:	89 e5                	mov    %esp,%ebp
 8048e4a:	83 ec 28             	sub    $0x28,%esp
 8048e4d:	8d 45 f8             	lea    0xfffffff8(%ebp),%eax
 8048e50:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048e54:	8d 45 fc             	lea    0xfffffffc(%ebp),%eax
 8048e57:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048e5b:	c7 44 24 04 6a a3 04 	movl   $0x804a36a,0x4(%esp)
 8048e62:	08 
 8048e63:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e66:	89 04 24             	mov    %eax,(%esp)
 8048e69:	e8 16 fa ff ff       	call   8048884 <sscanf@plt>
 8048e6e:	83 f8 01             	cmp    $0x1,%eax
 8048e71:	7f 05                	jg     8048e78 <phase_3+0x31>
 8048e73:	e8 dd 02 00 00       	call   8049155 <explode_bomb>
 8048e78:	83 7d fc 07          	cmpl   $0x7,0xfffffffc(%ebp)
 8048e7c:	8d 74 26 00          	lea    0x0(%esi),%esi
 8048e80:	77 6a                	ja     8048eec <phase_3+0xa5>
 8048e82:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 8048e85:	ff 24 85 a0 a2 04 08 	jmp    *0x804a2a0(,%eax,4)
 8048e8c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048e91:	eb 52                	jmp    8048ee5 <phase_3+0x9e>
 8048e93:	b8 00 00 00 00       	mov    $0x0,%eax
 8048e98:	eb 46                	jmp    8048ee0 <phase_3+0x99>
 8048e9a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048e9f:	90                   	nop    
 8048ea0:	eb 39                	jmp    8048edb <phase_3+0x94>
 8048ea2:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ea7:	eb 2d                	jmp    8048ed6 <phase_3+0x8f>
 8048ea9:	b8 00 00 00 00       	mov    $0x0,%eax
 8048eae:	66 90                	xchg   %ax,%ax
 8048eb0:	eb 1f                	jmp    8048ed1 <phase_3+0x8a>
 8048eb2:	b8 00 00 00 00       	mov    $0x0,%eax
 8048eb7:	eb 13                	jmp    8048ecc <phase_3+0x85>
 8048eb9:	b8 f0 00 00 00       	mov    $0xf0,%eax
 8048ebe:	66 90                	xchg   %ax,%ax
 8048ec0:	eb 05                	jmp    8048ec7 <phase_3+0x80>
 8048ec2:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ec7:	2d 3c 01 00 00       	sub    $0x13c,%eax
 8048ecc:	05 75 03 00 00       	add    $0x375,%eax
 8048ed1:	2d ab 03 00 00       	sub    $0x3ab,%eax
 8048ed6:	05 ab 03 00 00       	add    $0x3ab,%eax
 8048edb:	2d ab 03 00 00       	sub    $0x3ab,%eax
 8048ee0:	05 ab 03 00 00       	add    $0x3ab,%eax
 8048ee5:	2d ab 03 00 00       	sub    $0x3ab,%eax
 8048eea:	eb 0a                	jmp    8048ef6 <phase_3+0xaf>
 8048eec:	e8 64 02 00 00       	call   8049155 <explode_bomb>
 8048ef1:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ef6:	83 7d fc 05          	cmpl   $0x5,0xfffffffc(%ebp)
 8048efa:	7f 06                	jg     8048f02 <phase_3+0xbb>
 8048efc:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
 8048eff:	90                   	nop    
 8048f00:	74 05                	je     8048f07 <phase_3+0xc0>
 8048f02:	e8 4e 02 00 00       	call   8049155 <explode_bomb>
 8048f07:	c9                   	leave  
 8048f08:	c3                   	ret    

08048f09 <phase_1>:
 8048f09:	55                   	push   %ebp
 8048f0a:	89 e5                	mov    %esp,%ebp
 8048f0c:	83 ec 08             	sub    $0x8,%esp
 8048f0f:	c7 44 24 04 70 a2 04 	movl   $0x804a270,0x4(%esp)
 8048f16:	08 
 8048f17:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f1a:	89 04 24             	mov    %eax,(%esp)
 8048f1d:	e8 3e 00 00 00       	call   8048f60 <strings_not_equal>
 8048f22:	85 c0                	test   %eax,%eax
 8048f24:	74 05                	je     8048f2b <phase_1+0x22>
 8048f26:	e8 2a 02 00 00       	call   8049155 <explode_bomb>
 8048f2b:	c9                   	leave  
 8048f2c:	8d 74 26 00          	lea    0x0(%esi),%esi
 8048f30:	c3                   	ret    
 8048f31:	90                   	nop    
 8048f32:	90                   	nop    
 8048f33:	90                   	nop    
 8048f34:	90                   	nop    
 8048f35:	90                   	nop    
 8048f36:	90                   	nop    
 8048f37:	90                   	nop    
 8048f38:	90                   	nop    
 8048f39:	90                   	nop    
 8048f3a:	90                   	nop    
 8048f3b:	90                   	nop    
 8048f3c:	90                   	nop    
 8048f3d:	90                   	nop    
 8048f3e:	90                   	nop    
 8048f3f:	90                   	nop    

08048f40 <string_length>:
 8048f40:	55                   	push   %ebp
 8048f41:	89 e5                	mov    %esp,%ebp
 8048f43:	8b 55 08             	mov    0x8(%ebp),%edx
 8048f46:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f4b:	80 3a 00             	cmpb   $0x0,(%edx)
 8048f4e:	74 0e                	je     8048f5e <string_length+0x1e>
 8048f50:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f55:	83 c0 01             	add    $0x1,%eax
 8048f58:	80 3c 10 00          	cmpb   $0x0,(%eax,%edx,1)
 8048f5c:	75 f7                	jne    8048f55 <string_length+0x15>
 8048f5e:	5d                   	pop    %ebp
 8048f5f:	c3                   	ret    

08048f60 <strings_not_equal>:
 8048f60:	55                   	push   %ebp
 8048f61:	89 e5                	mov    %esp,%ebp
 8048f63:	57                   	push   %edi
 8048f64:	56                   	push   %esi
 8048f65:	53                   	push   %ebx
 8048f66:	83 ec 04             	sub    $0x4,%esp
 8048f69:	8b 75 08             	mov    0x8(%ebp),%esi
 8048f6c:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8048f6f:	89 34 24             	mov    %esi,(%esp)
 8048f72:	e8 c9 ff ff ff       	call   8048f40 <string_length>
 8048f77:	89 c3                	mov    %eax,%ebx
 8048f79:	89 3c 24             	mov    %edi,(%esp)
 8048f7c:	e8 bf ff ff ff       	call   8048f40 <string_length>
 8048f81:	39 c3                	cmp    %eax,%ebx
 8048f83:	75 29                	jne    8048fae <strings_not_equal+0x4e>
 8048f85:	0f b6 06             	movzbl (%esi),%eax
 8048f88:	84 c0                	test   %al,%al
 8048f8a:	74 29                	je     8048fb5 <strings_not_equal+0x55>
 8048f8c:	89 f1                	mov    %esi,%ecx
 8048f8e:	89 fa                	mov    %edi,%edx
 8048f90:	3a 07                	cmp    (%edi),%al
 8048f92:	74 10                	je     8048fa4 <strings_not_equal+0x44>
 8048f94:	eb 18                	jmp    8048fae <strings_not_equal+0x4e>
 8048f96:	0f b6 42 01          	movzbl 0x1(%edx),%eax
 8048f9a:	83 c1 01             	add    $0x1,%ecx
 8048f9d:	83 c2 01             	add    $0x1,%edx
 8048fa0:	38 c3                	cmp    %al,%bl
 8048fa2:	75 0a                	jne    8048fae <strings_not_equal+0x4e>
 8048fa4:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 8048fa8:	84 db                	test   %bl,%bl
 8048faa:	75 ea                	jne    8048f96 <strings_not_equal+0x36>
 8048fac:	eb 07                	jmp    8048fb5 <strings_not_equal+0x55>
 8048fae:	b8 01 00 00 00       	mov    $0x1,%eax
 8048fb3:	eb 05                	jmp    8048fba <strings_not_equal+0x5a>
 8048fb5:	b8 00 00 00 00       	mov    $0x0,%eax
 8048fba:	83 c4 04             	add    $0x4,%esp
 8048fbd:	5b                   	pop    %ebx
 8048fbe:	5e                   	pop    %esi
 8048fbf:	5f                   	pop    %edi
 8048fc0:	5d                   	pop    %ebp
 8048fc1:	c3                   	ret    

08048fc2 <initialize_bomb_solve>:
 8048fc2:	55                   	push   %ebp
 8048fc3:	89 e5                	mov    %esp,%ebp
 8048fc5:	5d                   	pop    %ebp
 8048fc6:	c3                   	ret    

08048fc7 <invalid_phase>:
 8048fc7:	55                   	push   %ebp
 8048fc8:	89 e5                	mov    %esp,%ebp
 8048fca:	83 ec 08             	sub    $0x8,%esp
 8048fcd:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fd0:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048fd4:	c7 04 24 00 a3 04 08 	movl   $0x804a300,(%esp)
 8048fdb:	e8 34 f8 ff ff       	call   8048814 <printf@plt>
 8048fe0:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048fe7:	e8 b8 f8 ff ff       	call   80488a4 <exit@plt>

08048fec <send_msg>:
 8048fec:	55                   	push   %ebp
 8048fed:	89 e5                	mov    %esp,%ebp
 8048fef:	57                   	push   %edi
 8048ff0:	53                   	push   %ebx
 8048ff1:	81 ec 20 40 00 00    	sub    $0x4020,%esp
 8048ff7:	8b 15 d4 b8 04 08    	mov    0x804b8d4,%edx
 8048ffd:	8d 04 92             	lea    (%edx,%edx,4),%eax
 8049000:	c1 e0 04             	shl    $0x4,%eax
 8049003:	8d 98 90 b8 04 08    	lea    0x804b890(%eax),%ebx
 8049009:	89 df                	mov    %ebx,%edi
 804900b:	fc                   	cld    
 804900c:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049011:	b8 00 00 00 00       	mov    $0x0,%eax
 8049016:	f2 ae                	repnz scas %es:(%edi),%al
 8049018:	f7 d1                	not    %ecx
 804901a:	83 c1 63             	add    $0x63,%ecx
 804901d:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 8049023:	76 18                	jbe    804903d <send_msg+0x51>
 8049025:	c7 04 24 f0 a3 04 08 	movl   $0x804a3f0,(%esp)
 804902c:	e8 e3 f7 ff ff       	call   8048814 <printf@plt>
 8049031:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049038:	e8 67 f8 ff ff       	call   80488a4 <exit@plt>
 804903d:	b8 11 a3 04 08       	mov    $0x804a311,%eax
 8049042:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049046:	75 05                	jne    804904d <send_msg+0x61>
 8049048:	b8 19 a3 04 08       	mov    $0x804a319,%eax
 804904d:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 8049051:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049055:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049059:	a1 a0 b1 04 08       	mov    0x804b1a0,%eax
 804905e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049062:	c7 44 24 04 22 a3 04 	movl   $0x804a322,0x4(%esp)
 8049069:	08 
 804906a:	8d 9d f8 df ff ff    	lea    0xffffdff8(%ebp),%ebx
 8049070:	89 1c 24             	mov    %ebx,(%esp)
 8049073:	e8 6c f6 ff ff       	call   80486e4 <sprintf@plt>
 8049078:	8d bd f8 bf ff ff    	lea    0xffffbff8(%ebp),%edi
 804907e:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 8049082:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049089:	00 
 804908a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804908e:	c7 04 24 c0 b1 04 08 	movl   $0x804b1c0,(%esp)
 8049095:	e8 ba 0e 00 00       	call   8049f54 <driver_post>
 804909a:	85 c0                	test   %eax,%eax
 804909c:	79 14                	jns    80490b2 <send_msg+0xc6>
 804909e:	89 3c 24             	mov    %edi,(%esp)
 80490a1:	e8 ce f7 ff ff       	call   8048874 <puts@plt>
 80490a6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80490ad:	e8 f2 f7 ff ff       	call   80488a4 <exit@plt>
 80490b2:	81 c4 20 40 00 00    	add    $0x4020,%esp
 80490b8:	5b                   	pop    %ebx
 80490b9:	5f                   	pop    %edi
 80490ba:	5d                   	pop    %ebp
 80490bb:	c3                   	ret    

080490bc <phase_defused>:
 80490bc:	55                   	push   %ebp
 80490bd:	89 e5                	mov    %esp,%ebp
 80490bf:	53                   	push   %ebx
 80490c0:	83 ec 74             	sub    $0x74,%esp
 80490c3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80490ca:	e8 1d ff ff ff       	call   8048fec <send_msg>
 80490cf:	83 3d d4 b8 04 08 06 	cmpl   $0x6,0x804b8d4
 80490d6:	75 77                	jne    804914f <phase_defused+0x93>
 80490d8:	8d 5d ac             	lea    0xffffffac(%ebp),%ebx
 80490db:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 80490df:	8d 45 a4             	lea    0xffffffa4(%ebp),%eax
 80490e2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80490e6:	8d 45 a8             	lea    0xffffffa8(%ebp),%eax
 80490e9:	89 44 24 08          	mov    %eax,0x8(%esp)
 80490ed:	c7 44 24 04 2e a3 04 	movl   $0x804a32e,0x4(%esp)
 80490f4:	08 
 80490f5:	c7 04 24 d0 b9 04 08 	movl   $0x804b9d0,(%esp)
 80490fc:	e8 83 f7 ff ff       	call   8048884 <sscanf@plt>
 8049101:	83 f8 03             	cmp    $0x3,%eax
 8049104:	75 31                	jne    8049137 <phase_defused+0x7b>
 8049106:	c7 44 24 04 37 a3 04 	movl   $0x804a337,0x4(%esp)
 804910d:	08 
 804910e:	89 1c 24             	mov    %ebx,(%esp)
 8049111:	e8 4a fe ff ff       	call   8048f60 <strings_not_equal>
 8049116:	85 c0                	test   %eax,%eax
 8049118:	75 1d                	jne    8049137 <phase_defused+0x7b>
 804911a:	c7 04 24 14 a4 04 08 	movl   $0x804a414,(%esp)
 8049121:	e8 4e f7 ff ff       	call   8048874 <puts@plt>
 8049126:	c7 04 24 3c a4 04 08 	movl   $0x804a43c,(%esp)
 804912d:	e8 42 f7 ff ff       	call   8048874 <puts@plt>
 8049132:	e8 86 fa ff ff       	call   8048bbd <secret_phase>
 8049137:	c7 04 24 74 a4 04 08 	movl   $0x804a474,(%esp)
 804913e:	e8 31 f7 ff ff       	call   8048874 <puts@plt>
 8049143:	c7 04 24 a0 a4 04 08 	movl   $0x804a4a0,(%esp)
 804914a:	e8 25 f7 ff ff       	call   8048874 <puts@plt>
 804914f:	83 c4 74             	add    $0x74,%esp
 8049152:	5b                   	pop    %ebx
 8049153:	5d                   	pop    %ebp
 8049154:	c3                   	ret    

08049155 <explode_bomb>:
 8049155:	55                   	push   %ebp
 8049156:	89 e5                	mov    %esp,%ebp
 8049158:	83 ec 08             	sub    $0x8,%esp
 804915b:	c7 04 24 3e a3 04 08 	movl   $0x804a33e,(%esp)
 8049162:	e8 0d f7 ff ff       	call   8048874 <puts@plt>
 8049167:	c7 04 24 47 a3 04 08 	movl   $0x804a347,(%esp)
 804916e:	e8 01 f7 ff ff       	call   8048874 <puts@plt>
 8049173:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804917a:	e8 6d fe ff ff       	call   8048fec <send_msg>
 804917f:	c7 04 24 e4 a4 04 08 	movl   $0x804a4e4,(%esp)
 8049186:	e8 e9 f6 ff ff       	call   8048874 <puts@plt>
 804918b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049192:	e8 0d f7 ff ff       	call   80488a4 <exit@plt>

08049197 <read_six_numbers>:
 8049197:	55                   	push   %ebp
 8049198:	89 e5                	mov    %esp,%ebp
 804919a:	83 ec 28             	sub    $0x28,%esp
 804919d:	8b 55 0c             	mov    0xc(%ebp),%edx
 80491a0:	8d 42 14             	lea    0x14(%edx),%eax
 80491a3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80491a7:	8d 42 10             	lea    0x10(%edx),%eax
 80491aa:	89 44 24 18          	mov    %eax,0x18(%esp)
 80491ae:	8d 42 0c             	lea    0xc(%edx),%eax
 80491b1:	89 44 24 14          	mov    %eax,0x14(%esp)
 80491b5:	8d 42 08             	lea    0x8(%edx),%eax
 80491b8:	89 44 24 10          	mov    %eax,0x10(%esp)
 80491bc:	8d 42 04             	lea    0x4(%edx),%eax
 80491bf:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80491c3:	89 54 24 08          	mov    %edx,0x8(%esp)
 80491c7:	c7 44 24 04 5e a3 04 	movl   $0x804a35e,0x4(%esp)
 80491ce:	08 
 80491cf:	8b 45 08             	mov    0x8(%ebp),%eax
 80491d2:	89 04 24             	mov    %eax,(%esp)
 80491d5:	e8 aa f6 ff ff       	call   8048884 <sscanf@plt>
 80491da:	83 f8 05             	cmp    $0x5,%eax
 80491dd:	7f 05                	jg     80491e4 <read_six_numbers+0x4d>
 80491df:	e8 71 ff ff ff       	call   8049155 <explode_bomb>
 80491e4:	c9                   	leave  
 80491e5:	c3                   	ret    

080491e6 <blank_line>:
 80491e6:	55                   	push   %ebp
 80491e7:	89 e5                	mov    %esp,%ebp
 80491e9:	56                   	push   %esi
 80491ea:	53                   	push   %ebx
 80491eb:	8b 75 08             	mov    0x8(%ebp),%esi
 80491ee:	eb 1b                	jmp    804920b <blank_line+0x25>
 80491f0:	e8 bf f5 ff ff       	call   80487b4 <__ctype_b_loc@plt>
 80491f5:	0f be d3             	movsbl %bl,%edx
 80491f8:	8b 00                	mov    (%eax),%eax
 80491fa:	f6 44 50 01 20       	testb  $0x20,0x1(%eax,%edx,2)
 80491ff:	75 07                	jne    8049208 <blank_line+0x22>
 8049201:	b8 00 00 00 00       	mov    $0x0,%eax
 8049206:	eb 0f                	jmp    8049217 <blank_line+0x31>
 8049208:	83 c6 01             	add    $0x1,%esi
 804920b:	0f b6 1e             	movzbl (%esi),%ebx
 804920e:	84 db                	test   %bl,%bl
 8049210:	75 de                	jne    80491f0 <blank_line+0xa>
 8049212:	b8 01 00 00 00       	mov    $0x1,%eax
 8049217:	5b                   	pop    %ebx
 8049218:	5e                   	pop    %esi
 8049219:	5d                   	pop    %ebp
 804921a:	c3                   	ret    

0804921b <skip>:
 804921b:	55                   	push   %ebp
 804921c:	89 e5                	mov    %esp,%ebp
 804921e:	53                   	push   %ebx
 804921f:	83 ec 14             	sub    $0x14,%esp
 8049222:	a1 d8 b8 04 08       	mov    0x804b8d8,%eax
 8049227:	89 44 24 08          	mov    %eax,0x8(%esp)
 804922b:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 8049232:	00 
 8049233:	a1 d4 b8 04 08       	mov    0x804b8d4,%eax
 8049238:	8d 04 80             	lea    (%eax,%eax,4),%eax
 804923b:	c1 e0 04             	shl    $0x4,%eax
 804923e:	05 e0 b8 04 08       	add    $0x804b8e0,%eax
 8049243:	89 04 24             	mov    %eax,(%esp)
 8049246:	e8 f9 f4 ff ff       	call   8048744 <fgets@plt>
 804924b:	89 c3                	mov    %eax,%ebx
 804924d:	85 c0                	test   %eax,%eax
 804924f:	74 0c                	je     804925d <skip+0x42>
 8049251:	89 04 24             	mov    %eax,(%esp)
 8049254:	e8 8d ff ff ff       	call   80491e6 <blank_line>
 8049259:	85 c0                	test   %eax,%eax
 804925b:	75 c5                	jne    8049222 <skip+0x7>
 804925d:	89 d8                	mov    %ebx,%eax
 804925f:	83 c4 14             	add    $0x14,%esp
 8049262:	5b                   	pop    %ebx
 8049263:	5d                   	pop    %ebp
 8049264:	c3                   	ret    

08049265 <read_line>:
 8049265:	55                   	push   %ebp
 8049266:	89 e5                	mov    %esp,%ebp
 8049268:	57                   	push   %edi
 8049269:	83 ec 04             	sub    $0x4,%esp
 804926c:	e8 aa ff ff ff       	call   804921b <skip>
 8049271:	85 c0                	test   %eax,%eax
 8049273:	75 6c                	jne    80492e1 <read_line+0x7c>
 8049275:	a1 d8 b8 04 08       	mov    0x804b8d8,%eax
 804927a:	3b 05 c4 b8 04 08    	cmp    0x804b8c4,%eax
 8049280:	75 18                	jne    804929a <read_line+0x35>
 8049282:	c7 04 24 70 a3 04 08 	movl   $0x804a370,(%esp)
 8049289:	e8 e6 f5 ff ff       	call   8048874 <puts@plt>
 804928e:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049295:	e8 0a f6 ff ff       	call   80488a4 <exit@plt>
 804929a:	c7 04 24 8e a3 04 08 	movl   $0x804a38e,(%esp)
 80492a1:	e8 7e f4 ff ff       	call   8048724 <getenv@plt>
 80492a6:	85 c0                	test   %eax,%eax
 80492a8:	74 0c                	je     80492b6 <read_line+0x51>
 80492aa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80492b1:	e8 ee f5 ff ff       	call   80488a4 <exit@plt>
 80492b6:	a1 c4 b8 04 08       	mov    0x804b8c4,%eax
 80492bb:	a3 d8 b8 04 08       	mov    %eax,0x804b8d8
 80492c0:	e8 56 ff ff ff       	call   804921b <skip>
 80492c5:	85 c0                	test   %eax,%eax
 80492c7:	75 18                	jne    80492e1 <read_line+0x7c>
 80492c9:	c7 04 24 70 a3 04 08 	movl   $0x804a370,(%esp)
 80492d0:	e8 9f f5 ff ff       	call   8048874 <puts@plt>
 80492d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80492dc:	e8 c3 f5 ff ff       	call   80488a4 <exit@plt>
 80492e1:	a1 d4 b8 04 08       	mov    0x804b8d4,%eax
 80492e6:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80492e9:	c1 e0 04             	shl    $0x4,%eax
 80492ec:	8d b8 e0 b8 04 08    	lea    0x804b8e0(%eax),%edi
 80492f2:	fc                   	cld    
 80492f3:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80492f8:	b8 00 00 00 00       	mov    $0x0,%eax
 80492fd:	f2 ae                	repnz scas %es:(%edi),%al
 80492ff:	f7 d1                	not    %ecx
 8049301:	8d 79 ff             	lea    0xffffffff(%ecx),%edi
 8049304:	83 ff 4e             	cmp    $0x4e,%edi
 8049307:	7e 4a                	jle    8049353 <read_line+0xee>
 8049309:	c7 04 24 99 a3 04 08 	movl   $0x804a399,(%esp)
 8049310:	e8 5f f5 ff ff       	call   8048874 <puts@plt>
 8049315:	a1 d4 b8 04 08       	mov    0x804b8d4,%eax
 804931a:	8d 50 01             	lea    0x1(%eax),%edx
 804931d:	89 15 d4 b8 04 08    	mov    %edx,0x804b8d4
 8049323:	8d 04 80             	lea    (%eax,%eax,4),%eax
 8049326:	c1 e0 04             	shl    $0x4,%eax
 8049329:	8d 90 e0 b8 04 08    	lea    0x804b8e0(%eax),%edx
 804932f:	c7 80 e0 b8 04 08 2a 	movl   $0x742a2a2a,0x804b8e0(%eax)
 8049336:	2a 2a 74 
 8049339:	c7 42 04 72 75 6e 63 	movl   $0x636e7572,0x4(%edx)
 8049340:	c7 42 08 61 74 65 64 	movl   $0x64657461,0x8(%edx)
 8049347:	c7 42 0c 2a 2a 2a 00 	movl   $0x2a2a2a,0xc(%edx)
 804934e:	e8 02 fe ff ff       	call   8049155 <explode_bomb>
 8049353:	8b 15 d4 b8 04 08    	mov    0x804b8d4,%edx
 8049359:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804935c:	c1 e0 04             	shl    $0x4,%eax
 804935f:	05 e0 b8 04 08       	add    $0x804b8e0,%eax
 8049364:	c6 44 38 ff 00       	movb   $0x0,0xffffffff(%eax,%edi,1)
 8049369:	83 c2 01             	add    $0x1,%edx
 804936c:	89 15 d4 b8 04 08    	mov    %edx,0x804b8d4
 8049372:	83 c4 04             	add    $0x4,%esp
 8049375:	5f                   	pop    %edi
 8049376:	5d                   	pop    %ebp
 8049377:	c3                   	ret    

08049378 <initialize_bomb>:
 8049378:	55                   	push   %ebp
 8049379:	89 e5                	mov    %esp,%ebp
 804937b:	56                   	push   %esi
 804937c:	53                   	push   %ebx
 804937d:	81 ec 50 20 00 00    	sub    $0x2050,%esp
 8049383:	c7 44 24 04 49 94 04 	movl   $0x8049449,0x4(%esp)
 804938a:	08 
 804938b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049392:	e8 6d f3 ff ff       	call   8048704 <signal@plt>
 8049397:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 804939e:	00 
 804939f:	8d 45 b8             	lea    0xffffffb8(%ebp),%eax
 80493a2:	89 04 24             	mov    %eax,(%esp)
 80493a5:	e8 aa f4 ff ff       	call   8048854 <gethostname@plt>
 80493aa:	85 c0                	test   %eax,%eax
 80493ac:	75 13                	jne    80493c1 <initialize_bomb+0x49>
 80493ae:	a1 c0 b6 04 08       	mov    0x804b6c0,%eax
 80493b3:	bb 00 00 00 00       	mov    $0x0,%ebx
 80493b8:	8d 75 b8             	lea    0xffffffb8(%ebp),%esi
 80493bb:	85 c0                	test   %eax,%eax
 80493bd:	75 1a                	jne    80493d9 <initialize_bomb+0x61>
 80493bf:	eb 66                	jmp    8049427 <initialize_bomb+0xaf>
 80493c1:	c7 04 24 08 a5 04 08 	movl   $0x804a508,(%esp)
 80493c8:	e8 a7 f4 ff ff       	call   8048874 <puts@plt>
 80493cd:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80493d4:	e8 cb f4 ff ff       	call   80488a4 <exit@plt>
 80493d9:	89 74 24 04          	mov    %esi,0x4(%esp)
 80493dd:	89 04 24             	mov    %eax,(%esp)
 80493e0:	e8 3f f4 ff ff       	call   8048824 <strcasecmp@plt>
 80493e5:	85 c0                	test   %eax,%eax
 80493e7:	74 10                	je     80493f9 <initialize_bomb+0x81>
 80493e9:	83 c3 01             	add    $0x1,%ebx
 80493ec:	8b 04 9d c0 b6 04 08 	mov    0x804b6c0(,%ebx,4),%eax
 80493f3:	85 c0                	test   %eax,%eax
 80493f5:	74 30                	je     8049427 <initialize_bomb+0xaf>
 80493f7:	eb e0                	jmp    80493d9 <initialize_bomb+0x61>
 80493f9:	8d 9d b8 df ff ff    	lea    0xffffdfb8(%ebp),%ebx
 80493ff:	89 1c 24             	mov    %ebx,(%esp)
 8049402:	e8 a9 00 00 00       	call   80494b0 <init_driver>
 8049407:	85 c0                	test   %eax,%eax
 8049409:	79 34                	jns    804943f <initialize_bomb+0xc7>
 804940b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804940f:	c7 04 24 b4 a3 04 08 	movl   $0x804a3b4,(%esp)
 8049416:	e8 f9 f3 ff ff       	call   8048814 <printf@plt>
 804941b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049422:	e8 7d f4 ff ff       	call   80488a4 <exit@plt>
 8049427:	c7 04 24 40 a5 04 08 	movl   $0x804a540,(%esp)
 804942e:	e8 41 f4 ff ff       	call   8048874 <puts@plt>
 8049433:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804943a:	e8 65 f4 ff ff       	call   80488a4 <exit@plt>
 804943f:	81 c4 50 20 00 00    	add    $0x2050,%esp
 8049445:	5b                   	pop    %ebx
 8049446:	5e                   	pop    %esi
 8049447:	5d                   	pop    %ebp
 8049448:	c3                   	ret    

08049449 <sig_handler>:
 8049449:	55                   	push   %ebp
 804944a:	89 e5                	mov    %esp,%ebp
 804944c:	83 ec 08             	sub    $0x8,%esp
 804944f:	c7 04 24 78 a5 04 08 	movl   $0x804a578,(%esp)
 8049456:	e8 19 f4 ff ff       	call   8048874 <puts@plt>
 804945b:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8049462:	e8 fd f3 ff ff       	call   8048864 <sleep@plt>
 8049467:	c7 04 24 ce a3 04 08 	movl   $0x804a3ce,(%esp)
 804946e:	e8 a1 f3 ff ff       	call   8048814 <printf@plt>
 8049473:	a1 c8 b8 04 08       	mov    0x804b8c8,%eax
 8049478:	89 04 24             	mov    %eax,(%esp)
 804947b:	e8 14 f3 ff ff       	call   8048794 <fflush@plt>
 8049480:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049487:	e8 d8 f3 ff ff       	call   8048864 <sleep@plt>
 804948c:	c7 04 24 d6 a3 04 08 	movl   $0x804a3d6,(%esp)
 8049493:	e8 dc f3 ff ff       	call   8048874 <puts@plt>
 8049498:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 804949f:	e8 00 f4 ff ff       	call   80488a4 <exit@plt>
 80494a4:	90                   	nop    
 80494a5:	90                   	nop    
 80494a6:	90                   	nop    
 80494a7:	90                   	nop    
 80494a8:	90                   	nop    
 80494a9:	90                   	nop    
 80494aa:	90                   	nop    
 80494ab:	90                   	nop    
 80494ac:	90                   	nop    
 80494ad:	90                   	nop    
 80494ae:	90                   	nop    
 80494af:	90                   	nop    

080494b0 <init_driver>:
 80494b0:	55                   	push   %ebp
 80494b1:	89 e5                	mov    %esp,%ebp
 80494b3:	57                   	push   %edi
 80494b4:	56                   	push   %esi
 80494b5:	53                   	push   %ebx
 80494b6:	83 ec 1c             	sub    $0x1c,%esp
 80494b9:	8b 7d 08             	mov    0x8(%ebp),%edi
 80494bc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80494c3:	00 
 80494c4:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 80494cb:	e8 34 f2 ff ff       	call   8048704 <signal@plt>
 80494d0:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80494d7:	00 
 80494d8:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 80494df:	e8 20 f2 ff ff       	call   8048704 <signal@plt>
 80494e4:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80494eb:	00 
 80494ec:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 80494f3:	e8 0c f2 ff ff       	call   8048704 <signal@plt>
 80494f8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80494ff:	00 
 8049500:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049507:	00 
 8049508:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804950f:	e8 90 f2 ff ff       	call   80487a4 <socket@plt>
 8049514:	89 c6                	mov    %eax,%esi
 8049516:	85 c0                	test   %eax,%eax
 8049518:	79 4e                	jns    8049568 <init_driver+0xb8>
 804951a:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
 8049520:	c7 47 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edi)
 8049527:	c7 47 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edi)
 804952e:	c7 47 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edi)
 8049535:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
 804953c:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
 8049543:	c7 47 18 63 72 65 61 	movl   $0x61657263,0x18(%edi)
 804954a:	c7 47 1c 74 65 20 73 	movl   $0x73206574,0x1c(%edi)
 8049551:	c7 47 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%edi)
 8049558:	66 c7 47 24 74 00    	movw   $0x74,0x24(%edi)
 804955e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049563:	e9 15 01 00 00       	jmp    804967d <init_driver+0x1cd>
 8049568:	c7 04 24 de a3 04 08 	movl   $0x804a3de,(%esp)
 804956f:	e8 20 f3 ff ff       	call   8048894 <gethostbyname@plt>
 8049574:	89 c1                	mov    %eax,%ecx
 8049576:	85 c0                	test   %eax,%eax
 8049578:	75 68                	jne    80495e2 <init_driver+0x132>
 804957a:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
 8049580:	c7 47 04 72 3a 20 44 	movl   $0x44203a72,0x4(%edi)
 8049587:	c7 47 08 4e 53 20 69 	movl   $0x6920534e,0x8(%edi)
 804958e:	c7 47 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%edi)
 8049595:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
 804959c:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
 80495a3:	c7 47 18 72 65 73 6f 	movl   $0x6f736572,0x18(%edi)
 80495aa:	c7 47 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%edi)
 80495b1:	c7 47 20 73 65 72 76 	movl   $0x76726573,0x20(%edi)
 80495b8:	c7 47 24 65 72 20 61 	movl   $0x61207265,0x24(%edi)
 80495bf:	c7 47 28 64 64 72 65 	movl   $0x65726464,0x28(%edi)
 80495c6:	66 c7 47 2c 73 73    	movw   $0x7373,0x2c(%edi)
 80495cc:	c6 47 2e 00          	movb   $0x0,0x2e(%edi)
 80495d0:	89 34 24             	mov    %esi,(%esp)
 80495d3:	e8 5c f2 ff ff       	call   8048834 <close@plt>
 80495d8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80495dd:	e9 9b 00 00 00       	jmp    804967d <init_driver+0x1cd>
 80495e2:	8d 5d e4             	lea    0xffffffe4(%ebp),%ebx
 80495e5:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
 80495ec:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
 80495f3:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 80495fa:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
 8049601:	66 c7 45 e4 02 00    	movw   $0x2,0xffffffe4(%ebp)
 8049607:	8d 55 e8             	lea    0xffffffe8(%ebp),%edx
 804960a:	8b 40 0c             	mov    0xc(%eax),%eax
 804960d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049611:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049615:	8b 41 10             	mov    0x10(%ecx),%eax
 8049618:	8b 00                	mov    (%eax),%eax
 804961a:	89 04 24             	mov    %eax,(%esp)
 804961d:	e8 a2 f1 ff ff       	call   80487c4 <bcopy@plt>
 8049622:	66 c7 45 e6 3b 70    	movw   $0x703b,0xffffffe6(%ebp)
 8049628:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804962f:	00 
 8049630:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049634:	89 34 24             	mov    %esi,(%esp)
 8049637:	e8 b8 f0 ff ff       	call   80486f4 <connect@plt>
 804963c:	85 c0                	test   %eax,%eax
 804963e:	79 27                	jns    8049667 <init_driver+0x1b7>
 8049640:	c7 44 24 08 de a3 04 	movl   $0x804a3de,0x8(%esp)
 8049647:	08 
 8049648:	c7 44 24 04 f0 a5 04 	movl   $0x804a5f0,0x4(%esp)
 804964f:	08 
 8049650:	89 3c 24             	mov    %edi,(%esp)
 8049653:	e8 8c f0 ff ff       	call   80486e4 <sprintf@plt>
 8049658:	89 34 24             	mov    %esi,(%esp)
 804965b:	e8 d4 f1 ff ff       	call   8048834 <close@plt>
 8049660:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049665:	eb 16                	jmp    804967d <init_driver+0x1cd>
 8049667:	89 34 24             	mov    %esi,(%esp)
 804966a:	e8 c5 f1 ff ff       	call   8048834 <close@plt>
 804966f:	66 c7 07 4f 4b       	movw   $0x4b4f,(%edi)
 8049674:	c6 47 02 00          	movb   $0x0,0x2(%edi)
 8049678:	b8 00 00 00 00       	mov    $0x0,%eax
 804967d:	83 c4 1c             	add    $0x1c,%esp
 8049680:	5b                   	pop    %ebx
 8049681:	5e                   	pop    %esi
 8049682:	5f                   	pop    %edi
 8049683:	5d                   	pop    %ebp
 8049684:	c3                   	ret    

08049685 <init_timeout>:
 8049685:	55                   	push   %ebp
 8049686:	89 e5                	mov    %esp,%ebp
 8049688:	53                   	push   %ebx
 8049689:	83 ec 14             	sub    $0x14,%esp
 804968c:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804968f:	85 db                	test   %ebx,%ebx
 8049691:	74 25                	je     80496b8 <init_timeout+0x33>
 8049693:	c7 44 24 04 eb 9f 04 	movl   $0x8049feb,0x4(%esp)
 804969a:	08 
 804969b:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 80496a2:	e8 5d f0 ff ff       	call   8048704 <signal@plt>
 80496a7:	89 d8                	mov    %ebx,%eax
 80496a9:	c1 f8 1f             	sar    $0x1f,%eax
 80496ac:	f7 d0                	not    %eax
 80496ae:	21 d8                	and    %ebx,%eax
 80496b0:	89 04 24             	mov    %eax,(%esp)
 80496b3:	e8 3c f1 ff ff       	call   80487f4 <alarm@plt>
 80496b8:	83 c4 14             	add    $0x14,%esp
 80496bb:	5b                   	pop    %ebx
 80496bc:	5d                   	pop    %ebp
 80496bd:	c3                   	ret    

080496be <rio_readlineb>:
 80496be:	55                   	push   %ebp
 80496bf:	89 e5                	mov    %esp,%ebp
 80496c1:	57                   	push   %edi
 80496c2:	56                   	push   %esi
 80496c3:	53                   	push   %ebx
 80496c4:	83 ec 2c             	sub    $0x2c,%esp
 80496c7:	89 c3                	mov    %eax,%ebx
 80496c9:	89 4d d8             	mov    %ecx,0xffffffd8(%ebp)
 80496cc:	89 55 e0             	mov    %edx,0xffffffe0(%ebp)
 80496cf:	89 55 dc             	mov    %edx,0xffffffdc(%ebp)
 80496d2:	bf 01 00 00 00       	mov    $0x1,%edi
 80496d7:	83 f9 01             	cmp    $0x1,%ecx
 80496da:	77 3d                	ja     8049719 <rio_readlineb+0x5b>
 80496dc:	e9 9b 00 00 00       	jmp    804977c <rio_readlineb+0xbe>
 80496e1:	8d 73 0c             	lea    0xc(%ebx),%esi
 80496e4:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 80496eb:	00 
 80496ec:	89 74 24 04          	mov    %esi,0x4(%esp)
 80496f0:	8b 03                	mov    (%ebx),%eax
 80496f2:	89 04 24             	mov    %eax,(%esp)
 80496f5:	e8 8a f0 ff ff       	call   8048784 <read@plt>
 80496fa:	89 43 04             	mov    %eax,0x4(%ebx)
 80496fd:	85 c0                	test   %eax,%eax
 80496ff:	79 11                	jns    8049712 <rio_readlineb+0x54>
 8049701:	e8 ce ef ff ff       	call   80486d4 <__errno_location@plt>
 8049706:	83 38 04             	cmpl   $0x4,(%eax)
 8049709:	74 0e                	je     8049719 <rio_readlineb+0x5b>
 804970b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049710:	eb 49                	jmp    804975b <rio_readlineb+0x9d>
 8049712:	85 c0                	test   %eax,%eax
 8049714:	74 79                	je     804978f <rio_readlineb+0xd1>
 8049716:	89 73 08             	mov    %esi,0x8(%ebx)
 8049719:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
 804971d:	8d 76 00             	lea    0x0(%esi),%esi
 8049720:	7e bf                	jle    80496e1 <rio_readlineb+0x23>
 8049722:	8d 55 f3             	lea    0xfffffff3(%ebp),%edx
 8049725:	8b 43 08             	mov    0x8(%ebx),%eax
 8049728:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804972f:	00 
 8049730:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049734:	89 14 24             	mov    %edx,(%esp)
 8049737:	e8 98 f0 ff ff       	call   80487d4 <memcpy@plt>
 804973c:	83 43 08 01          	addl   $0x1,0x8(%ebx)
 8049740:	83 6b 04 01          	subl   $0x1,0x4(%ebx)
 8049744:	0f b6 45 f3          	movzbl 0xfffffff3(%ebp),%eax
 8049748:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
 804974b:	88 44 17 ff          	mov    %al,0xffffffff(%edi,%edx,1)
 804974f:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
 8049753:	80 7d f3 0a          	cmpb   $0xa,0xfffffff3(%ebp)
 8049757:	75 19                	jne    8049772 <rio_readlineb+0xb4>
 8049759:	eb 2c                	jmp    8049787 <rio_readlineb+0xc9>
 804975b:	85 c0                	test   %eax,%eax
 804975d:	74 07                	je     8049766 <rio_readlineb+0xa8>
 804975f:	bf ff ff ff ff       	mov    $0xffffffff,%edi
 8049764:	eb 30                	jmp    8049796 <rio_readlineb+0xd8>
 8049766:	83 ff 01             	cmp    $0x1,%edi
 8049769:	75 1c                	jne    8049787 <rio_readlineb+0xc9>
 804976b:	66 bf 00 00          	mov    $0x0,%di
 804976f:	90                   	nop    
 8049770:	eb 24                	jmp    8049796 <rio_readlineb+0xd8>
 8049772:	83 c7 01             	add    $0x1,%edi
 8049775:	3b 7d d8             	cmp    0xffffffd8(%ebp),%edi
 8049778:	75 9f                	jne    8049719 <rio_readlineb+0x5b>
 804977a:	eb 0b                	jmp    8049787 <rio_readlineb+0xc9>
 804977c:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 804977f:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
 8049782:	bf 01 00 00 00       	mov    $0x1,%edi
 8049787:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
 804978a:	c6 02 00             	movb   $0x0,(%edx)
 804978d:	eb 07                	jmp    8049796 <rio_readlineb+0xd8>
 804978f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049794:	eb c5                	jmp    804975b <rio_readlineb+0x9d>
 8049796:	89 f8                	mov    %edi,%eax
 8049798:	83 c4 2c             	add    $0x2c,%esp
 804979b:	5b                   	pop    %ebx
 804979c:	5e                   	pop    %esi
 804979d:	5f                   	pop    %edi
 804979e:	5d                   	pop    %ebp
 804979f:	c3                   	ret    

080497a0 <submitr>:
 80497a0:	55                   	push   %ebp
 80497a1:	89 e5                	mov    %esp,%ebp
 80497a3:	57                   	push   %edi
 80497a4:	56                   	push   %esi
 80497a5:	53                   	push   %ebx
 80497a6:	81 ec 5c a0 00 00    	sub    $0xa05c,%esp
 80497ac:	8b 75 0c             	mov    0xc(%ebp),%esi
 80497af:	c7 85 d4 7f ff ff 00 	movl   $0x0,0xffff7fd4(%ebp)
 80497b6:	00 00 00 
 80497b9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80497c0:	00 
 80497c1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80497c8:	00 
 80497c9:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80497d0:	e8 cf ef ff ff       	call   80487a4 <socket@plt>
 80497d5:	89 85 bc 5f ff ff    	mov    %eax,0xffff5fbc(%ebp)
 80497db:	85 c0                	test   %eax,%eax
 80497dd:	79 51                	jns    8049830 <submitr+0x90>
 80497df:	8b 45 20             	mov    0x20(%ebp),%eax
 80497e2:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80497e8:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80497ef:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80497f6:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80497fd:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049804:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804980b:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049812:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 8049819:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049820:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 8049826:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804982b:	e9 17 07 00 00       	jmp    8049f47 <submitr+0x7a7>
 8049830:	8b 45 08             	mov    0x8(%ebp),%eax
 8049833:	89 04 24             	mov    %eax,(%esp)
 8049836:	e8 59 f0 ff ff       	call   8048894 <gethostbyname@plt>
 804983b:	89 c1                	mov    %eax,%ecx
 804983d:	85 c0                	test   %eax,%eax
 804983f:	75 71                	jne    80498b2 <submitr+0x112>
 8049841:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049844:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 804984a:	c7 41 04 72 3a 20 44 	movl   $0x44203a72,0x4(%ecx)
 8049851:	c7 41 08 4e 53 20 69 	movl   $0x6920534e,0x8(%ecx)
 8049858:	c7 41 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%ecx)
 804985f:	c7 41 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ecx)
 8049866:	c7 41 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ecx)
 804986d:	c7 41 18 72 65 73 6f 	movl   $0x6f736572,0x18(%ecx)
 8049874:	c7 41 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%ecx)
 804987b:	c7 41 20 73 65 72 76 	movl   $0x76726573,0x20(%ecx)
 8049882:	c7 41 24 65 72 20 61 	movl   $0x61207265,0x24(%ecx)
 8049889:	c7 41 28 64 64 72 65 	movl   $0x65726464,0x28(%ecx)
 8049890:	66 c7 41 2c 73 73    	movw   $0x7373,0x2c(%ecx)
 8049896:	c6 41 2e 00          	movb   $0x0,0x2e(%ecx)
 804989a:	8b 9d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ebx
 80498a0:	89 1c 24             	mov    %ebx,(%esp)
 80498a3:	e8 8c ef ff ff       	call   8048834 <close@plt>
 80498a8:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80498ad:	e9 95 06 00 00       	jmp    8049f47 <submitr+0x7a7>
 80498b2:	8d 5d e4             	lea    0xffffffe4(%ebp),%ebx
 80498b5:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
 80498bc:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
 80498c3:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 80498ca:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
 80498d1:	66 c7 45 e4 02 00    	movw   $0x2,0xffffffe4(%ebp)
 80498d7:	8d 55 e8             	lea    0xffffffe8(%ebp),%edx
 80498da:	8b 40 0c             	mov    0xc(%eax),%eax
 80498dd:	89 44 24 08          	mov    %eax,0x8(%esp)
 80498e1:	89 54 24 04          	mov    %edx,0x4(%esp)
 80498e5:	8b 41 10             	mov    0x10(%ecx),%eax
 80498e8:	8b 00                	mov    (%eax),%eax
 80498ea:	89 04 24             	mov    %eax,(%esp)
 80498ed:	e8 d2 ee ff ff       	call   80487c4 <bcopy@plt>
 80498f2:	89 f0                	mov    %esi,%eax
 80498f4:	66 c1 c8 08          	ror    $0x8,%ax
 80498f8:	66 89 45 e6          	mov    %ax,0xffffffe6(%ebp)
 80498fc:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049903:	00 
 8049904:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049908:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 804990e:	89 04 24             	mov    %eax,(%esp)
 8049911:	e8 de ed ff ff       	call   80486f4 <connect@plt>
 8049916:	85 c0                	test   %eax,%eax
 8049918:	79 63                	jns    804997d <submitr+0x1dd>
 804991a:	8b 4d 20             	mov    0x20(%ebp),%ecx
 804991d:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 8049923:	c7 41 04 72 3a 20 55 	movl   $0x55203a72,0x4(%ecx)
 804992a:	c7 41 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%ecx)
 8049931:	c7 41 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%ecx)
 8049938:	c7 41 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%ecx)
 804993f:	c7 41 14 6e 65 63 74 	movl   $0x7463656e,0x14(%ecx)
 8049946:	c7 41 18 20 74 6f 20 	movl   $0x206f7420,0x18(%ecx)
 804994d:	c7 41 1c 74 68 65 20 	movl   $0x20656874,0x1c(%ecx)
 8049954:	c7 41 20 73 65 72 76 	movl   $0x76726573,0x20(%ecx)
 804995b:	66 c7 41 24 65 72    	movw   $0x7265,0x24(%ecx)
 8049961:	c6 41 26 00          	movb   $0x0,0x26(%ecx)
 8049965:	8b 9d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ebx
 804996b:	89 1c 24             	mov    %ebx,(%esp)
 804996e:	e8 c1 ee ff ff       	call   8048834 <close@plt>
 8049973:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049978:	e9 ca 05 00 00       	jmp    8049f47 <submitr+0x7a7>
 804997d:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 8049982:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 8049985:	fc                   	cld    
 8049986:	89 d9                	mov    %ebx,%ecx
 8049988:	b8 00 00 00 00       	mov    $0x0,%eax
 804998d:	f2 ae                	repnz scas %es:(%edi),%al
 804998f:	89 ce                	mov    %ecx,%esi
 8049991:	f7 d6                	not    %esi
 8049993:	8b 7d 10             	mov    0x10(%ebp),%edi
 8049996:	89 d9                	mov    %ebx,%ecx
 8049998:	f2 ae                	repnz scas %es:(%edi),%al
 804999a:	89 ca                	mov    %ecx,%edx
 804999c:	f7 d2                	not    %edx
 804999e:	8b 7d 14             	mov    0x14(%ebp),%edi
 80499a1:	89 d9                	mov    %ebx,%ecx
 80499a3:	f2 ae                	repnz scas %es:(%edi),%al
 80499a5:	f7 d1                	not    %ecx
 80499a7:	89 8d b8 5f ff ff    	mov    %ecx,0xffff5fb8(%ebp)
 80499ad:	8b 7d 18             	mov    0x18(%ebp),%edi
 80499b0:	89 d9                	mov    %ebx,%ecx
 80499b2:	f2 ae                	repnz scas %es:(%edi),%al
 80499b4:	f7 d1                	not    %ecx
 80499b6:	8b 9d b8 5f ff ff    	mov    0xffff5fb8(%ebp),%ebx
 80499bc:	8d 44 13 7e          	lea    0x7e(%ebx,%edx,1),%eax
 80499c0:	8d 4c 01 ff          	lea    0xffffffff(%ecx,%eax,1),%ecx
 80499c4:	8d 44 76 fd          	lea    0xfffffffd(%esi,%esi,2),%eax
 80499c8:	01 c1                	add    %eax,%ecx
 80499ca:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 80499d0:	76 7c                	jbe    8049a4e <submitr+0x2ae>
 80499d2:	8b 45 20             	mov    0x20(%ebp),%eax
 80499d5:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80499db:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 80499e2:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 80499e9:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 80499f0:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 80499f7:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 80499fe:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 8049a05:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049a0c:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 8049a13:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049a1a:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049a21:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049a28:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049a2f:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 8049a36:	8b 8d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ecx
 8049a3c:	89 0c 24             	mov    %ecx,(%esp)
 8049a3f:	e8 f0 ed ff ff       	call   8048834 <close@plt>
 8049a44:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049a49:	e9 f9 04 00 00       	jmp    8049f47 <submitr+0x7a7>
 8049a4e:	8d 9d d8 9f ff ff    	lea    0xffff9fd8(%ebp),%ebx
 8049a54:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049a5b:	00 
 8049a5c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8049a63:	00 
 8049a64:	89 1c 24             	mov    %ebx,(%esp)
 8049a67:	e8 e8 ec ff ff       	call   8048754 <memset@plt>
 8049a6c:	8b 45 1c             	mov    0x1c(%ebp),%eax
 8049a6f:	89 85 c0 5f ff ff    	mov    %eax,0xffff5fc0(%ebp)
 8049a75:	89 c7                	mov    %eax,%edi
 8049a77:	fc                   	cld    
 8049a78:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049a7d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a82:	f2 ae                	repnz scas %es:(%edi),%al
 8049a84:	f7 d1                	not    %ecx
 8049a86:	89 cf                	mov    %ecx,%edi
 8049a88:	83 ef 01             	sub    $0x1,%edi
 8049a8b:	0f 84 f1 03 00 00    	je     8049e82 <submitr+0x6e2>
 8049a91:	be 00 00 00 00       	mov    $0x0,%esi
 8049a96:	8b 8d c0 5f ff ff    	mov    0xffff5fc0(%ebp),%ecx
 8049a9c:	0f b6 14 0e          	movzbl (%esi,%ecx,1),%edx
 8049aa0:	80 fa 2a             	cmp    $0x2a,%dl
 8049aa3:	74 24                	je     8049ac9 <submitr+0x329>
 8049aa5:	80 fa 2d             	cmp    $0x2d,%dl
 8049aa8:	74 1f                	je     8049ac9 <submitr+0x329>
 8049aaa:	80 fa 2e             	cmp    $0x2e,%dl
 8049aad:	74 1a                	je     8049ac9 <submitr+0x329>
 8049aaf:	80 fa 5f             	cmp    $0x5f,%dl
 8049ab2:	74 15                	je     8049ac9 <submitr+0x329>
 8049ab4:	8d 42 d0             	lea    0xffffffd0(%edx),%eax
 8049ab7:	3c 09                	cmp    $0x9,%al
 8049ab9:	76 0e                	jbe    8049ac9 <submitr+0x329>
 8049abb:	8d 42 bf             	lea    0xffffffbf(%edx),%eax
 8049abe:	3c 19                	cmp    $0x19,%al
 8049ac0:	76 07                	jbe    8049ac9 <submitr+0x329>
 8049ac2:	8d 42 9f             	lea    0xffffff9f(%edx),%eax
 8049ac5:	3c 19                	cmp    $0x19,%al
 8049ac7:	77 07                	ja     8049ad0 <submitr+0x330>
 8049ac9:	88 13                	mov    %dl,(%ebx)
 8049acb:	83 c3 01             	add    $0x1,%ebx
 8049ace:	eb 56                	jmp    8049b26 <submitr+0x386>
 8049ad0:	80 fa 20             	cmp    $0x20,%dl
 8049ad3:	75 08                	jne    8049add <submitr+0x33d>
 8049ad5:	c6 03 2b             	movb   $0x2b,(%ebx)
 8049ad8:	83 c3 01             	add    $0x1,%ebx
 8049adb:	eb 49                	jmp    8049b26 <submitr+0x386>
 8049add:	8d 42 e0             	lea    0xffffffe0(%edx),%eax
 8049ae0:	3c 5f                	cmp    $0x5f,%al
 8049ae2:	76 05                	jbe    8049ae9 <submitr+0x349>
 8049ae4:	80 fa 09             	cmp    $0x9,%dl
 8049ae7:	75 4d                	jne    8049b36 <submitr+0x396>
 8049ae9:	0f b6 c2             	movzbl %dl,%eax
 8049aec:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049af0:	c7 44 24 04 b0 a5 04 	movl   $0x804a5b0,0x4(%esp)
 8049af7:	08 
 8049af8:	8d 85 cc 5f ff ff    	lea    0xffff5fcc(%ebp),%eax
 8049afe:	89 04 24             	mov    %eax,(%esp)
 8049b01:	e8 de eb ff ff       	call   80486e4 <sprintf@plt>
 8049b06:	0f b6 85 cc 5f ff ff 	movzbl 0xffff5fcc(%ebp),%eax
 8049b0d:	88 03                	mov    %al,(%ebx)
 8049b0f:	0f b6 85 cd 5f ff ff 	movzbl 0xffff5fcd(%ebp),%eax
 8049b16:	88 43 01             	mov    %al,0x1(%ebx)
 8049b19:	0f b6 85 ce 5f ff ff 	movzbl 0xffff5fce(%ebp),%eax
 8049b20:	88 43 02             	mov    %al,0x2(%ebx)
 8049b23:	83 c3 03             	add    $0x3,%ebx
 8049b26:	83 c6 01             	add    $0x1,%esi
 8049b29:	39 fe                	cmp    %edi,%esi
 8049b2b:	0f 84 51 03 00 00    	je     8049e82 <submitr+0x6e2>
 8049b31:	e9 60 ff ff ff       	jmp    8049a96 <submitr+0x2f6>
 8049b36:	c7 44 24 08 43 00 00 	movl   $0x43,0x8(%esp)
 8049b3d:	00 
 8049b3e:	c7 44 24 04 18 a6 04 	movl   $0x804a618,0x4(%esp)
 8049b45:	08 
 8049b46:	8b 5d 20             	mov    0x20(%ebp),%ebx
 8049b49:	89 1c 24             	mov    %ebx,(%esp)
 8049b4c:	e8 83 ec ff ff       	call   80487d4 <memcpy@plt>
 8049b51:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 8049b57:	89 04 24             	mov    %eax,(%esp)
 8049b5a:	e8 d5 ec ff ff       	call   8048834 <close@plt>
 8049b5f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049b64:	e9 de 03 00 00       	jmp    8049f47 <submitr+0x7a7>
 8049b69:	01 c6                	add    %eax,%esi
 8049b6b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049b6f:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049b73:	8b 8d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ecx
 8049b79:	89 0c 24             	mov    %ecx,(%esp)
 8049b7c:	e8 b3 eb ff ff       	call   8048734 <write@plt>
 8049b81:	85 c0                	test   %eax,%eax
 8049b83:	7f 12                	jg     8049b97 <submitr+0x3f7>
 8049b85:	e8 4a eb ff ff       	call   80486d4 <__errno_location@plt>
 8049b8a:	83 38 04             	cmpl   $0x4,(%eax)
 8049b8d:	8d 76 00             	lea    0x0(%esi),%esi
 8049b90:	75 10                	jne    8049ba2 <submitr+0x402>
 8049b92:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b97:	29 c3                	sub    %eax,%ebx
 8049b99:	75 ce                	jne    8049b69 <submitr+0x3c9>
 8049b9b:	85 ff                	test   %edi,%edi
 8049b9d:	8d 76 00             	lea    0x0(%esi),%esi
 8049ba0:	79 67                	jns    8049c09 <submitr+0x469>
 8049ba2:	8b 5d 20             	mov    0x20(%ebp),%ebx
 8049ba5:	c7 03 45 72 72 6f    	movl   $0x6f727245,(%ebx)
 8049bab:	c7 43 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ebx)
 8049bb2:	c7 43 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ebx)
 8049bb9:	c7 43 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ebx)
 8049bc0:	c7 43 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ebx)
 8049bc7:	c7 43 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ebx)
 8049bce:	c7 43 18 77 72 69 74 	movl   $0x74697277,0x18(%ebx)
 8049bd5:	c7 43 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%ebx)
 8049bdc:	c7 43 20 20 74 68 65 	movl   $0x65687420,0x20(%ebx)
 8049be3:	c7 43 24 20 73 65 72 	movl   $0x72657320,0x24(%ebx)
 8049bea:	c7 43 28 76 65 72 00 	movl   $0x726576,0x28(%ebx)
 8049bf1:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 8049bf7:	89 04 24             	mov    %eax,(%esp)
 8049bfa:	e8 35 ec ff ff       	call   8048834 <close@plt>
 8049bff:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049c04:	e9 3e 03 00 00       	jmp    8049f47 <submitr+0x7a7>
 8049c09:	8b 8d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ecx
 8049c0f:	89 8d d8 df ff ff    	mov    %ecx,0xffffdfd8(%ebp)
 8049c15:	c7 85 dc df ff ff 00 	movl   $0x0,0xffffdfdc(%ebp)
 8049c1c:	00 00 00 
 8049c1f:	8d 85 d8 df ff ff    	lea    0xffffdfd8(%ebp),%eax
 8049c25:	8d 95 e4 df ff ff    	lea    0xffffdfe4(%ebp),%edx
 8049c2b:	89 95 e0 df ff ff    	mov    %edx,0xffffdfe0(%ebp)
 8049c31:	8d 95 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%edx
 8049c37:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049c3c:	e8 7d fa ff ff       	call   80496be <rio_readlineb>
 8049c41:	85 c0                	test   %eax,%eax
 8049c43:	7f 7b                	jg     8049cc0 <submitr+0x520>
 8049c45:	8b 5d 20             	mov    0x20(%ebp),%ebx
 8049c48:	c7 03 45 72 72 6f    	movl   $0x6f727245,(%ebx)
 8049c4e:	c7 43 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ebx)
 8049c55:	c7 43 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ebx)
 8049c5c:	c7 43 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ebx)
 8049c63:	c7 43 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ebx)
 8049c6a:	c7 43 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ebx)
 8049c71:	c7 43 18 72 65 61 64 	movl   $0x64616572,0x18(%ebx)
 8049c78:	c7 43 1c 20 66 69 72 	movl   $0x72696620,0x1c(%ebx)
 8049c7f:	c7 43 20 73 74 20 68 	movl   $0x68207473,0x20(%ebx)
 8049c86:	c7 43 24 65 61 64 65 	movl   $0x65646165,0x24(%ebx)
 8049c8d:	c7 43 28 72 20 66 72 	movl   $0x72662072,0x28(%ebx)
 8049c94:	c7 43 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%ebx)
 8049c9b:	c7 43 30 65 72 76 65 	movl   $0x65767265,0x30(%ebx)
 8049ca2:	66 c7 43 34 72 00    	movw   $0x72,0x34(%ebx)
 8049ca8:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 8049cae:	89 04 24             	mov    %eax,(%esp)
 8049cb1:	e8 7e eb ff ff       	call   8048834 <close@plt>
 8049cb6:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049cbb:	e9 87 02 00 00       	jmp    8049f47 <submitr+0x7a7>
 8049cc0:	8d 9d d4 5f ff ff    	lea    0xffff5fd4(%ebp),%ebx
 8049cc6:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 8049cca:	8d 85 d4 7f ff ff    	lea    0xffff7fd4(%ebp),%eax
 8049cd0:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049cd4:	8d 85 d8 7f ff ff    	lea    0xffff7fd8(%ebp),%eax
 8049cda:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049cde:	c7 44 24 04 b7 a5 04 	movl   $0x804a5b7,0x4(%esp)
 8049ce5:	08 
 8049ce6:	8d 85 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%eax
 8049cec:	89 04 24             	mov    %eax,(%esp)
 8049cef:	e8 90 eb ff ff       	call   8048884 <sscanf@plt>
 8049cf4:	8b 85 d4 7f ff ff    	mov    0xffff7fd4(%ebp),%eax
 8049cfa:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049cff:	74 51                	je     8049d52 <submitr+0x5b2>
 8049d01:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8049d05:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049d09:	c7 44 24 04 5c a6 04 	movl   $0x804a65c,0x4(%esp)
 8049d10:	08 
 8049d11:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049d14:	89 0c 24             	mov    %ecx,(%esp)
 8049d17:	e8 c8 e9 ff ff       	call   80486e4 <sprintf@plt>
 8049d1c:	8b 9d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ebx
 8049d22:	89 1c 24             	mov    %ebx,(%esp)
 8049d25:	e8 0a eb ff ff       	call   8048834 <close@plt>
 8049d2a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049d2f:	e9 13 02 00 00       	jmp    8049f47 <submitr+0x7a7>
 8049d34:	8d 95 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%edx
 8049d3a:	8d 85 d8 df ff ff    	lea    0xffffdfd8(%ebp),%eax
 8049d40:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049d45:	e8 74 f9 ff ff       	call   80496be <rio_readlineb>
 8049d4a:	85 c0                	test   %eax,%eax
 8049d4c:	0f 8e 88 01 00 00    	jle    8049eda <submitr+0x73a>
 8049d52:	8d 9d d8 bf ff ff    	lea    0xffffbfd8(%ebp),%ebx
 8049d58:	0f b6 95 d8 bf ff ff 	movzbl 0xffffbfd8(%ebp),%edx
 8049d5f:	0f b6 05 c8 a5 04 08 	movzbl 0x804a5c8,%eax
 8049d66:	39 c2                	cmp    %eax,%edx
 8049d68:	75 ca                	jne    8049d34 <submitr+0x594>
 8049d6a:	0f b6 95 d9 bf ff ff 	movzbl 0xffffbfd9(%ebp),%edx
 8049d71:	0f b6 05 c9 a5 04 08 	movzbl 0x804a5c9,%eax
 8049d78:	39 c2                	cmp    %eax,%edx
 8049d7a:	75 b8                	jne    8049d34 <submitr+0x594>
 8049d7c:	0f b6 95 da bf ff ff 	movzbl 0xffffbfda(%ebp),%edx
 8049d83:	0f b6 05 ca a5 04 08 	movzbl 0x804a5ca,%eax
 8049d8a:	39 c2                	cmp    %eax,%edx
 8049d8c:	75 a6                	jne    8049d34 <submitr+0x594>
 8049d8e:	8d 85 d8 df ff ff    	lea    0xffffdfd8(%ebp),%eax
 8049d94:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049d99:	89 da                	mov    %ebx,%edx
 8049d9b:	e8 1e f9 ff ff       	call   80496be <rio_readlineb>
 8049da0:	85 c0                	test   %eax,%eax
 8049da2:	7f 7c                	jg     8049e20 <submitr+0x680>
 8049da4:	8b 45 20             	mov    0x20(%ebp),%eax
 8049da7:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049dad:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049db4:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049dbb:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049dc2:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049dc9:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049dd0:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049dd7:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049dde:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049de5:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049dec:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049df3:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049dfa:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049e01:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049e08:	8b 8d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ecx
 8049e0e:	89 0c 24             	mov    %ecx,(%esp)
 8049e11:	e8 1e ea ff ff       	call   8048834 <close@plt>
 8049e16:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049e1b:	e9 27 01 00 00       	jmp    8049f47 <submitr+0x7a7>
 8049e20:	8d 85 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%eax
 8049e26:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049e2a:	8b 5d 20             	mov    0x20(%ebp),%ebx
 8049e2d:	89 1c 24             	mov    %ebx,(%esp)
 8049e30:	e8 cf e9 ff ff       	call   8048804 <strcpy@plt>
 8049e35:	8b 85 bc 5f ff ff    	mov    0xffff5fbc(%ebp),%eax
 8049e3b:	89 04 24             	mov    %eax,(%esp)
 8049e3e:	e8 f1 e9 ff ff       	call   8048834 <close@plt>
 8049e43:	0f b6 13             	movzbl (%ebx),%edx
 8049e46:	0f b6 05 cb a5 04 08 	movzbl 0x804a5cb,%eax
 8049e4d:	39 c2                	cmp    %eax,%edx
 8049e4f:	75 27                	jne    8049e78 <submitr+0x6d8>
 8049e51:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 8049e55:	0f b6 05 cc a5 04 08 	movzbl 0x804a5cc,%eax
 8049e5c:	39 c2                	cmp    %eax,%edx
 8049e5e:	75 18                	jne    8049e78 <submitr+0x6d8>
 8049e60:	0f b6 53 02          	movzbl 0x2(%ebx),%edx
 8049e64:	0f b6 05 cd a5 04 08 	movzbl 0x804a5cd,%eax
 8049e6b:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049e70:	39 c2                	cmp    %eax,%edx
 8049e72:	0f 84 cf 00 00 00    	je     8049f47 <submitr+0x7a7>
 8049e78:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049e7d:	e9 c5 00 00 00       	jmp    8049f47 <submitr+0x7a7>
 8049e82:	8d 85 d8 9f ff ff    	lea    0xffff9fd8(%ebp),%eax
 8049e88:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049e8c:	8b 4d 18             	mov    0x18(%ebp),%ecx
 8049e8f:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 8049e93:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8049e96:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8049e9a:	8b 45 10             	mov    0x10(%ebp),%eax
 8049e9d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049ea1:	c7 44 24 04 8c a6 04 	movl   $0x804a68c,0x4(%esp)
 8049ea8:	08 
 8049ea9:	8d b5 d8 bf ff ff    	lea    0xffffbfd8(%ebp),%esi
 8049eaf:	89 34 24             	mov    %esi,(%esp)
 8049eb2:	e8 2d e8 ff ff       	call   80486e4 <sprintf@plt>
 8049eb7:	89 f7                	mov    %esi,%edi
 8049eb9:	fc                   	cld    
 8049eba:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049ebf:	b8 00 00 00 00       	mov    $0x0,%eax
 8049ec4:	f2 ae                	repnz scas %es:(%edi),%al
 8049ec6:	f7 d1                	not    %ecx
 8049ec8:	89 cf                	mov    %ecx,%edi
 8049eca:	83 ef 01             	sub    $0x1,%edi
 8049ecd:	0f 84 36 fd ff ff    	je     8049c09 <submitr+0x469>
 8049ed3:	89 fb                	mov    %edi,%ebx
 8049ed5:	e9 91 fc ff ff       	jmp    8049b6b <submitr+0x3cb>
 8049eda:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049edd:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 8049ee3:	c7 41 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ecx)
 8049eea:	c7 41 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ecx)
 8049ef1:	c7 41 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ecx)
 8049ef8:	c7 41 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ecx)
 8049eff:	c7 41 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ecx)
 8049f06:	c7 41 18 72 65 61 64 	movl   $0x64616572,0x18(%ecx)
 8049f0d:	c7 41 1c 20 68 65 61 	movl   $0x61656820,0x1c(%ecx)
 8049f14:	c7 41 20 64 65 72 73 	movl   $0x73726564,0x20(%ecx)
 8049f1b:	c7 41 24 20 66 72 6f 	movl   $0x6f726620,0x24(%ecx)
 8049f22:	c7 41 28 6d 20 73 65 	movl   $0x6573206d,0x28(%ecx)
 8049f29:	c7 41 2c 72 76 65 72 	movl   $0x72657672,0x2c(%ecx)
 8049f30:	c6 41 30 00          	movb   $0x0,0x30(%ecx)
 8049f34:	8b 9d bc 5f ff ff    	mov    0xffff5fbc(%ebp),%ebx
 8049f3a:	89 1c 24             	mov    %ebx,(%esp)
 8049f3d:	e8 f2 e8 ff ff       	call   8048834 <close@plt>
 8049f42:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049f47:	89 c8                	mov    %ecx,%eax
 8049f49:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
 8049f4f:	5b                   	pop    %ebx
 8049f50:	5e                   	pop    %esi
 8049f51:	5f                   	pop    %edi
 8049f52:	5d                   	pop    %ebp
 8049f53:	c3                   	ret    

08049f54 <driver_post>:
 8049f54:	55                   	push   %ebp
 8049f55:	89 e5                	mov    %esp,%ebp
 8049f57:	83 ec 28             	sub    $0x28,%esp
 8049f5a:	89 5d f8             	mov    %ebx,0xfffffff8(%ebp)
 8049f5d:	89 75 fc             	mov    %esi,0xfffffffc(%ebp)
 8049f60:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049f63:	8b 75 0c             	mov    0xc(%ebp),%esi
 8049f66:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8049f69:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 8049f6d:	74 20                	je     8049f8f <driver_post+0x3b>
 8049f6f:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049f73:	c7 04 24 ce a5 04 08 	movl   $0x804a5ce,(%esp)
 8049f7a:	e8 95 e8 ff ff       	call   8048814 <printf@plt>
 8049f7f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049f84:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049f88:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f8d:	eb 52                	jmp    8049fe1 <driver_post+0x8d>
 8049f8f:	85 c9                	test   %ecx,%ecx
 8049f91:	74 40                	je     8049fd3 <driver_post+0x7f>
 8049f93:	0f b6 11             	movzbl (%ecx),%edx
 8049f96:	0f b6 05 ca a5 04 08 	movzbl 0x804a5ca,%eax
 8049f9d:	39 c2                	cmp    %eax,%edx
 8049f9f:	74 32                	je     8049fd3 <driver_post+0x7f>
 8049fa1:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8049fa5:	89 74 24 14          	mov    %esi,0x14(%esp)
 8049fa9:	c7 44 24 10 e5 a5 04 	movl   $0x804a5e5,0x10(%esp)
 8049fb0:	08 
 8049fb1:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049fb5:	c7 44 24 08 e9 a5 04 	movl   $0x804a5e9,0x8(%esp)
 8049fbc:	08 
 8049fbd:	c7 44 24 04 70 3b 00 	movl   $0x3b70,0x4(%esp)
 8049fc4:	00 
 8049fc5:	c7 04 24 de a3 04 08 	movl   $0x804a3de,(%esp)
 8049fcc:	e8 cf f7 ff ff       	call   80497a0 <submitr>
 8049fd1:	eb 0e                	jmp    8049fe1 <driver_post+0x8d>
 8049fd3:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049fd8:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049fdc:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fe1:	8b 5d f8             	mov    0xfffffff8(%ebp),%ebx
 8049fe4:	8b 75 fc             	mov    0xfffffffc(%ebp),%esi
 8049fe7:	89 ec                	mov    %ebp,%esp
 8049fe9:	5d                   	pop    %ebp
 8049fea:	c3                   	ret    

08049feb <sigalrm_handler>:
 8049feb:	55                   	push   %ebp
 8049fec:	89 e5                	mov    %esp,%ebp
 8049fee:	83 ec 18             	sub    $0x18,%esp
 8049ff1:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049ff8:	00 
 8049ff9:	c7 44 24 04 d8 a6 04 	movl   $0x804a6d8,0x4(%esp)
 804a000:	08 
 804a001:	a1 c0 b8 04 08       	mov    0x804b8c0,%eax
 804a006:	89 04 24             	mov    %eax,(%esp)
 804a009:	e8 36 e8 ff ff       	call   8048844 <fprintf@plt>
 804a00e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804a015:	e8 8a e8 ff ff       	call   80488a4 <exit@plt>
 804a01a:	90                   	nop    
 804a01b:	90                   	nop    
 804a01c:	90                   	nop    
 804a01d:	90                   	nop    
 804a01e:	90                   	nop    
 804a01f:	90                   	nop    

0804a020 <__libc_csu_fini>:
 804a020:	55                   	push   %ebp
 804a021:	89 e5                	mov    %esp,%ebp
 804a023:	5d                   	pop    %ebp
 804a024:	c3                   	ret    
 804a025:	8d 74 26 00          	lea    0x0(%esi),%esi
 804a029:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

0804a030 <__libc_csu_init>:
 804a030:	55                   	push   %ebp
 804a031:	89 e5                	mov    %esp,%ebp
 804a033:	57                   	push   %edi
 804a034:	56                   	push   %esi
 804a035:	53                   	push   %ebx
 804a036:	e8 5e 00 00 00       	call   804a099 <__i686.get_pc_thunk.bx>
 804a03b:	81 c3 a5 10 00 00    	add    $0x10a5,%ebx
 804a041:	83 ec 1c             	sub    $0x1c,%esp
 804a044:	e8 63 e6 ff ff       	call   80486ac <_init>
 804a049:	8d 83 20 ff ff ff    	lea    0xffffff20(%ebx),%eax
 804a04f:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 804a052:	8d 83 20 ff ff ff    	lea    0xffffff20(%ebx),%eax
 804a058:	29 45 f0             	sub    %eax,0xfffffff0(%ebp)
 804a05b:	c1 7d f0 02          	sarl   $0x2,0xfffffff0(%ebp)
 804a05f:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 804a062:	85 d2                	test   %edx,%edx
 804a064:	74 2b                	je     804a091 <__libc_csu_init+0x61>
 804a066:	31 ff                	xor    %edi,%edi
 804a068:	89 c6                	mov    %eax,%esi
 804a06a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a070:	8b 45 10             	mov    0x10(%ebp),%eax
 804a073:	83 c7 01             	add    $0x1,%edi
 804a076:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a07a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a07d:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a081:	8b 45 08             	mov    0x8(%ebp),%eax
 804a084:	89 04 24             	mov    %eax,(%esp)
 804a087:	ff 16                	call   *(%esi)
 804a089:	83 c6 04             	add    $0x4,%esi
 804a08c:	39 7d f0             	cmp    %edi,0xfffffff0(%ebp)
 804a08f:	75 df                	jne    804a070 <__libc_csu_init+0x40>
 804a091:	83 c4 1c             	add    $0x1c,%esp
 804a094:	5b                   	pop    %ebx
 804a095:	5e                   	pop    %esi
 804a096:	5f                   	pop    %edi
 804a097:	5d                   	pop    %ebp
 804a098:	c3                   	ret    

0804a099 <__i686.get_pc_thunk.bx>:
 804a099:	8b 1c 24             	mov    (%esp),%ebx
 804a09c:	c3                   	ret    
 804a09d:	90                   	nop    
 804a09e:	90                   	nop    
 804a09f:	90                   	nop    

0804a0a0 <__do_global_ctors_aux>:
 804a0a0:	55                   	push   %ebp
 804a0a1:	89 e5                	mov    %esp,%ebp
 804a0a3:	53                   	push   %ebx
 804a0a4:	bb 00 b0 04 08       	mov    $0x804b000,%ebx
 804a0a9:	83 ec 04             	sub    $0x4,%esp
 804a0ac:	a1 00 b0 04 08       	mov    0x804b000,%eax
 804a0b1:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a0b4:	74 0c                	je     804a0c2 <__do_global_ctors_aux+0x22>
 804a0b6:	83 eb 04             	sub    $0x4,%ebx
 804a0b9:	ff d0                	call   *%eax
 804a0bb:	8b 03                	mov    (%ebx),%eax
 804a0bd:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a0c0:	75 f4                	jne    804a0b6 <__do_global_ctors_aux+0x16>
 804a0c2:	83 c4 04             	add    $0x4,%esp
 804a0c5:	5b                   	pop    %ebx
 804a0c6:	5d                   	pop    %ebp
 804a0c7:	c3                   	ret    
Disassembly of section .fini:

0804a0c8 <_fini>:
 804a0c8:	55                   	push   %ebp
 804a0c9:	89 e5                	mov    %esp,%ebp
 804a0cb:	53                   	push   %ebx
 804a0cc:	83 ec 04             	sub    $0x4,%esp
 804a0cf:	e8 00 00 00 00       	call   804a0d4 <_fini+0xc>
 804a0d4:	5b                   	pop    %ebx
 804a0d5:	81 c3 0c 10 00 00    	add    $0x100c,%ebx
 804a0db:	e8 30 e8 ff ff       	call   8048910 <__do_global_dtors_aux>
 804a0e0:	59                   	pop    %ecx
 804a0e1:	5b                   	pop    %ebx
 804a0e2:	c9                   	leave  
 804a0e3:	c3                   	ret    
