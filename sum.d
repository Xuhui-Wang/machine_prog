
sum:     file format elf64-x86-64


Disassembly of section .init:

00000000004003d0 <_init>:
  4003d0:	48 83 ec 08          	sub    $0x8,%rsp
  4003d4:	e8 83 00 00 00       	callq  40045c <call_gmon_start>
  4003d9:	e8 82 01 00 00       	callq  400560 <frame_dummy>
  4003de:	e8 cd 02 00 00       	callq  4006b0 <__do_global_ctors_aux>
  4003e3:	48 83 c4 08          	add    $0x8,%rsp
  4003e7:	c3                   	retq   

Disassembly of section .plt:

00000000004003e8 <printf@plt-0x10>:
  4003e8:	ff 35 e2 05 20 00    	pushq  0x2005e2(%rip)        # 6009d0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003ee:	ff 25 e4 05 20 00    	jmpq   *0x2005e4(%rip)        # 6009d8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003f4:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003f8 <printf@plt>:
  4003f8:	ff 25 e2 05 20 00    	jmpq   *0x2005e2(%rip)        # 6009e0 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003fe:	68 00 00 00 00       	pushq  $0x0
  400403:	e9 e0 ff ff ff       	jmpq   4003e8 <_init+0x18>

0000000000400408 <__libc_start_main@plt>:
  400408:	ff 25 da 05 20 00    	jmpq   *0x2005da(%rip)        # 6009e8 <_GLOBAL_OFFSET_TABLE_+0x20>
  40040e:	68 01 00 00 00       	pushq  $0x1
  400413:	e9 d0 ff ff ff       	jmpq   4003e8 <_init+0x18>

0000000000400418 <strtol@plt>:
  400418:	ff 25 d2 05 20 00    	jmpq   *0x2005d2(%rip)        # 6009f0 <_GLOBAL_OFFSET_TABLE_+0x28>
  40041e:	68 02 00 00 00       	pushq  $0x2
  400423:	e9 c0 ff ff ff       	jmpq   4003e8 <_init+0x18>

Disassembly of section .text:

0000000000400430 <_start>:
  400430:	31 ed                	xor    %ebp,%ebp
  400432:	49 89 d1             	mov    %rdx,%r9
  400435:	5e                   	pop    %rsi
  400436:	48 89 e2             	mov    %rsp,%rdx
  400439:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40043d:	50                   	push   %rax
  40043e:	54                   	push   %rsp
  40043f:	49 c7 c0 10 06 40 00 	mov    $0x400610,%r8
  400446:	48 c7 c1 20 06 40 00 	mov    $0x400620,%rcx
  40044d:	48 c7 c7 a3 05 40 00 	mov    $0x4005a3,%rdi
  400454:	e8 af ff ff ff       	callq  400408 <__libc_start_main@plt>
  400459:	f4                   	hlt    
  40045a:	90                   	nop
  40045b:	90                   	nop

000000000040045c <call_gmon_start>:
  40045c:	48 83 ec 08          	sub    $0x8,%rsp
  400460:	48 8b 05 59 05 20 00 	mov    0x200559(%rip),%rax        # 6009c0 <_DYNAMIC+0x190>
  400467:	48 85 c0             	test   %rax,%rax
  40046a:	74 02                	je     40046e <call_gmon_start+0x12>
  40046c:	ff d0                	callq  *%rax
  40046e:	48 83 c4 08          	add    $0x8,%rsp
  400472:	c3                   	retq   
  400473:	90                   	nop
  400474:	90                   	nop
  400475:	90                   	nop
  400476:	90                   	nop
  400477:	90                   	nop
  400478:	90                   	nop
  400479:	90                   	nop
  40047a:	90                   	nop
  40047b:	90                   	nop
  40047c:	90                   	nop
  40047d:	90                   	nop
  40047e:	90                   	nop
  40047f:	90                   	nop

0000000000400480 <deregister_tm_clones>:
  400480:	b8 0f 0a 60 00       	mov    $0x600a0f,%eax
  400485:	55                   	push   %rbp
  400486:	48 2d 08 0a 60 00    	sub    $0x600a08,%rax
  40048c:	48 83 f8 0e          	cmp    $0xe,%rax
  400490:	48 89 e5             	mov    %rsp,%rbp
  400493:	77 02                	ja     400497 <deregister_tm_clones+0x17>
  400495:	5d                   	pop    %rbp
  400496:	c3                   	retq   
  400497:	b8 00 00 00 00       	mov    $0x0,%eax
  40049c:	48 85 c0             	test   %rax,%rax
  40049f:	74 f4                	je     400495 <deregister_tm_clones+0x15>
  4004a1:	5d                   	pop    %rbp
  4004a2:	bf 08 0a 60 00       	mov    $0x600a08,%edi
  4004a7:	ff e0                	jmpq   *%rax
  4004a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004b0 <register_tm_clones>:
  4004b0:	b8 08 0a 60 00       	mov    $0x600a08,%eax
  4004b5:	55                   	push   %rbp
  4004b6:	48 2d 08 0a 60 00    	sub    $0x600a08,%rax
  4004bc:	48 c1 f8 03          	sar    $0x3,%rax
  4004c0:	48 89 e5             	mov    %rsp,%rbp
  4004c3:	48 89 c2             	mov    %rax,%rdx
  4004c6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4004ca:	48 01 d0             	add    %rdx,%rax
  4004cd:	48 d1 f8             	sar    %rax
  4004d0:	75 02                	jne    4004d4 <register_tm_clones+0x24>
  4004d2:	5d                   	pop    %rbp
  4004d3:	c3                   	retq   
  4004d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4004d9:	48 85 d2             	test   %rdx,%rdx
  4004dc:	74 f4                	je     4004d2 <register_tm_clones+0x22>
  4004de:	5d                   	pop    %rbp
  4004df:	48 89 c6             	mov    %rax,%rsi
  4004e2:	bf 08 0a 60 00       	mov    $0x600a08,%edi
  4004e7:	ff e2                	jmpq   *%rdx
  4004e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004f0 <__do_global_dtors_aux>:
  4004f0:	80 3d 11 05 20 00 00 	cmpb   $0x0,0x200511(%rip)        # 600a08 <__bss_start>
  4004f7:	75 5f                	jne    400558 <__do_global_dtors_aux+0x68>
  4004f9:	55                   	push   %rbp
  4004fa:	48 89 e5             	mov    %rsp,%rbp
  4004fd:	53                   	push   %rbx
  4004fe:	bb 20 08 60 00       	mov    $0x600820,%ebx
  400503:	48 81 eb 18 08 60 00 	sub    $0x600818,%rbx
  40050a:	48 83 ec 08          	sub    $0x8,%rsp
  40050e:	48 8b 05 fb 04 20 00 	mov    0x2004fb(%rip),%rax        # 600a10 <dtor_idx.6302>
  400515:	48 c1 fb 03          	sar    $0x3,%rbx
  400519:	48 83 eb 01          	sub    $0x1,%rbx
  40051d:	48 39 d8             	cmp    %rbx,%rax
  400520:	73 24                	jae    400546 <__do_global_dtors_aux+0x56>
  400522:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400528:	48 83 c0 01          	add    $0x1,%rax
  40052c:	48 89 05 dd 04 20 00 	mov    %rax,0x2004dd(%rip)        # 600a10 <dtor_idx.6302>
  400533:	ff 14 c5 18 08 60 00 	callq  *0x600818(,%rax,8)
  40053a:	48 8b 05 cf 04 20 00 	mov    0x2004cf(%rip),%rax        # 600a10 <dtor_idx.6302>
  400541:	48 39 d8             	cmp    %rbx,%rax
  400544:	72 e2                	jb     400528 <__do_global_dtors_aux+0x38>
  400546:	e8 35 ff ff ff       	callq  400480 <deregister_tm_clones>
  40054b:	c6 05 b6 04 20 00 01 	movb   $0x1,0x2004b6(%rip)        # 600a08 <__bss_start>
  400552:	48 83 c4 08          	add    $0x8,%rsp
  400556:	5b                   	pop    %rbx
  400557:	5d                   	pop    %rbp
  400558:	c3                   	retq   
  400559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400560 <frame_dummy>:
  400560:	48 83 3d c0 02 20 00 	cmpq   $0x0,0x2002c0(%rip)        # 600828 <__JCR_END__>
  400567:	00 
  400568:	74 1e                	je     400588 <frame_dummy+0x28>
  40056a:	b8 00 00 00 00       	mov    $0x0,%eax
  40056f:	48 85 c0             	test   %rax,%rax
  400572:	74 14                	je     400588 <frame_dummy+0x28>
  400574:	55                   	push   %rbp
  400575:	bf 28 08 60 00       	mov    $0x600828,%edi
  40057a:	48 89 e5             	mov    %rsp,%rbp
  40057d:	ff d0                	callq  *%rax
  40057f:	5d                   	pop    %rbp
  400580:	e9 2b ff ff ff       	jmpq   4004b0 <register_tm_clones>
  400585:	0f 1f 00             	nopl   (%rax)
  400588:	e9 23 ff ff ff       	jmpq   4004b0 <register_tm_clones>
  40058d:	90                   	nop
  40058e:	90                   	nop
  40058f:	90                   	nop

0000000000400590 <plus>:
  400590:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  400594:	c3                   	retq   

0000000000400595 <sumstore>:
  400595:	53                   	push   %rbx
  400596:	48 89 d3             	mov    %rdx,%rbx
  400599:	e8 f2 ff ff ff       	callq  400590 <plus>
  40059e:	48 89 03             	mov    %rax,(%rbx)
  4005a1:	5b                   	pop    %rbx
  4005a2:	c3                   	retq   

00000000004005a3 <main>:
  4005a3:	55                   	push   %rbp
  4005a4:	53                   	push   %rbx
  4005a5:	48 83 ec 18          	sub    $0x18,%rsp
  4005a9:	48 89 f5             	mov    %rsi,%rbp
  4005ac:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4005b0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4005b5:	be 00 00 00 00       	mov    $0x0,%esi
  4005ba:	e8 59 fe ff ff       	callq  400418 <strtol@plt>
  4005bf:	48 63 d8             	movslq %eax,%rbx
  4005c2:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  4005c6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4005cb:	be 00 00 00 00       	mov    $0x0,%esi
  4005d0:	e8 43 fe ff ff       	callq  400418 <strtol@plt>
  4005d5:	48 63 e8             	movslq %eax,%rbp
  4005d8:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4005dd:	48 89 ee             	mov    %rbp,%rsi
  4005e0:	48 89 df             	mov    %rbx,%rdi
  4005e3:	e8 ad ff ff ff       	callq  400595 <sumstore>
  4005e8:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4005ed:	48 89 ea             	mov    %rbp,%rdx
  4005f0:	48 89 de             	mov    %rbx,%rsi
  4005f3:	bf fc 06 40 00       	mov    $0x4006fc,%edi
  4005f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4005fd:	e8 f6 fd ff ff       	callq  4003f8 <printf@plt>
  400602:	b8 00 00 00 00       	mov    $0x0,%eax
  400607:	48 83 c4 18          	add    $0x18,%rsp
  40060b:	5b                   	pop    %rbx
  40060c:	5d                   	pop    %rbp
  40060d:	c3                   	retq   
  40060e:	90                   	nop
  40060f:	90                   	nop

0000000000400610 <__libc_csu_fini>:
  400610:	f3 c3                	repz retq 
  400612:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400619:	1f 84 00 00 00 00 00 

0000000000400620 <__libc_csu_init>:
  400620:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400625:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40062a:	48 8d 2d d3 01 20 00 	lea    0x2001d3(%rip),%rbp        # 600804 <__init_array_end>
  400631:	4c 8d 25 cc 01 20 00 	lea    0x2001cc(%rip),%r12        # 600804 <__init_array_end>
  400638:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40063d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400642:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400647:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40064c:	48 83 ec 38          	sub    $0x38,%rsp
  400650:	4c 29 e5             	sub    %r12,%rbp
  400653:	41 89 fd             	mov    %edi,%r13d
  400656:	49 89 f6             	mov    %rsi,%r14
  400659:	48 c1 fd 03          	sar    $0x3,%rbp
  40065d:	49 89 d7             	mov    %rdx,%r15
  400660:	e8 6b fd ff ff       	callq  4003d0 <_init>
  400665:	48 85 ed             	test   %rbp,%rbp
  400668:	74 1c                	je     400686 <__libc_csu_init+0x66>
  40066a:	31 db                	xor    %ebx,%ebx
  40066c:	0f 1f 40 00          	nopl   0x0(%rax)
  400670:	4c 89 fa             	mov    %r15,%rdx
  400673:	4c 89 f6             	mov    %r14,%rsi
  400676:	44 89 ef             	mov    %r13d,%edi
  400679:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40067d:	48 83 c3 01          	add    $0x1,%rbx
  400681:	48 39 eb             	cmp    %rbp,%rbx
  400684:	72 ea                	jb     400670 <__libc_csu_init+0x50>
  400686:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40068b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400690:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400695:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40069a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40069f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4006a4:	48 83 c4 38          	add    $0x38,%rsp
  4006a8:	c3                   	retq   
  4006a9:	90                   	nop
  4006aa:	90                   	nop
  4006ab:	90                   	nop
  4006ac:	90                   	nop
  4006ad:	90                   	nop
  4006ae:	90                   	nop
  4006af:	90                   	nop

00000000004006b0 <__do_global_ctors_aux>:
  4006b0:	55                   	push   %rbp
  4006b1:	48 89 e5             	mov    %rsp,%rbp
  4006b4:	53                   	push   %rbx
  4006b5:	bb 08 08 60 00       	mov    $0x600808,%ebx
  4006ba:	48 83 ec 08          	sub    $0x8,%rsp
  4006be:	48 8b 05 43 01 20 00 	mov    0x200143(%rip),%rax        # 600808 <__CTOR_LIST__>
  4006c5:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4006c9:	74 14                	je     4006df <__do_global_ctors_aux+0x2f>
  4006cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006d0:	48 83 eb 08          	sub    $0x8,%rbx
  4006d4:	ff d0                	callq  *%rax
  4006d6:	48 8b 03             	mov    (%rbx),%rax
  4006d9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4006dd:	75 f1                	jne    4006d0 <__do_global_ctors_aux+0x20>
  4006df:	48 83 c4 08          	add    $0x8,%rsp
  4006e3:	5b                   	pop    %rbx
  4006e4:	5d                   	pop    %rbp
  4006e5:	c3                   	retq   
  4006e6:	90                   	nop
  4006e7:	90                   	nop

Disassembly of section .fini:

00000000004006e8 <_fini>:
  4006e8:	48 83 ec 08          	sub    $0x8,%rsp
  4006ec:	e8 ff fd ff ff       	callq  4004f0 <__do_global_dtors_aux>
  4006f1:	48 83 c4 08          	add    $0x8,%rsp
  4006f5:	c3                   	retq   
