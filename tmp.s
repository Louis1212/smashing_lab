
a.out:     file format elf32-i386


Disassembly of section .init:

08048278 <_init>:
 8048278:	55                   	push   %ebp
 8048279:	89 e5                	mov    %esp,%ebp
 804827b:	53                   	push   %ebx
 804827c:	83 ec 04             	sub    $0x4,%esp
 804827f:	e8 00 00 00 00       	call   8048284 <_init+0xc>
 8048284:	5b                   	pop    %ebx
 8048285:	81 c3 d0 14 00 00    	add    $0x14d0,%ebx
 804828b:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 8048291:	85 d2                	test   %edx,%edx
 8048293:	74 05                	je     804829a <_init+0x22>
 8048295:	e8 1e 00 00 00       	call   80482b8 <__gmon_start__@plt>
 804829a:	e8 51 01 00 00       	call   80483f0 <frame_dummy>
 804829f:	e8 3c 02 00 00       	call   80484e0 <__do_global_ctors_aux>
 80482a4:	58                   	pop    %eax
 80482a5:	5b                   	pop    %ebx
 80482a6:	c9                   	leave  
 80482a7:	c3                   	ret    

Disassembly of section .plt:

080482a8 <__gmon_start__@plt-0x10>:
 80482a8:	ff 35 58 97 04 08    	pushl  0x8049758
 80482ae:	ff 25 5c 97 04 08    	jmp    *0x804975c
 80482b4:	00 00                	add    %al,(%eax)
	...

080482b8 <__gmon_start__@plt>:
 80482b8:	ff 25 60 97 04 08    	jmp    *0x8049760
 80482be:	68 00 00 00 00       	push   $0x0
 80482c3:	e9 e0 ff ff ff       	jmp    80482a8 <_init+0x30>

080482c8 <__libc_start_main@plt>:
 80482c8:	ff 25 64 97 04 08    	jmp    *0x8049764
 80482ce:	68 08 00 00 00       	push   $0x8
 80482d3:	e9 d0 ff ff ff       	jmp    80482a8 <_init+0x30>

080482d8 <remove@plt>:
 80482d8:	ff 25 68 97 04 08    	jmp    *0x8049768
 80482de:	68 10 00 00 00       	push   $0x10
 80482e3:	e9 c0 ff ff ff       	jmp    80482a8 <_init+0x30>

Disassembly of section .text:

080482f0 <_start>:
 80482f0:	31 ed                	xor    %ebp,%ebp
 80482f2:	5e                   	pop    %esi
 80482f3:	89 e1                	mov    %esp,%ecx
 80482f5:	83 e4 f0             	and    $0xfffffff0,%esp
 80482f8:	50                   	push   %eax
 80482f9:	54                   	push   %esp
 80482fa:	52                   	push   %edx
 80482fb:	68 70 84 04 08       	push   $0x8048470
 8048300:	68 80 84 04 08       	push   $0x8048480
 8048305:	51                   	push   %ecx
 8048306:	56                   	push   %esi
 8048307:	68 20 84 04 08       	push   $0x8048420
 804830c:	e8 b7 ff ff ff       	call   80482c8 <__libc_start_main@plt>
 8048311:	f4                   	hlt    
 8048312:	90                   	nop
 8048313:	90                   	nop
 8048314:	90                   	nop
 8048315:	90                   	nop
 8048316:	90                   	nop
 8048317:	90                   	nop
 8048318:	90                   	nop
 8048319:	90                   	nop
 804831a:	90                   	nop
 804831b:	90                   	nop
 804831c:	90                   	nop
 804831d:	90                   	nop
 804831e:	90                   	nop
 804831f:	90                   	nop

08048320 <deregister_tm_clones>:
 8048320:	b8 77 97 04 08       	mov    $0x8049777,%eax
 8048325:	2d 74 97 04 08       	sub    $0x8049774,%eax
 804832a:	83 f8 06             	cmp    $0x6,%eax
 804832d:	76 1a                	jbe    8048349 <deregister_tm_clones+0x29>
 804832f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048334:	85 c0                	test   %eax,%eax
 8048336:	74 11                	je     8048349 <deregister_tm_clones+0x29>
 8048338:	55                   	push   %ebp
 8048339:	89 e5                	mov    %esp,%ebp
 804833b:	83 ec 14             	sub    $0x14,%esp
 804833e:	68 74 97 04 08       	push   $0x8049774
 8048343:	ff d0                	call   *%eax
 8048345:	83 c4 10             	add    $0x10,%esp
 8048348:	c9                   	leave  
 8048349:	f3 c3                	repz ret 
 804834b:	90                   	nop
 804834c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048350 <register_tm_clones>:
 8048350:	b8 74 97 04 08       	mov    $0x8049774,%eax
 8048355:	2d 74 97 04 08       	sub    $0x8049774,%eax
 804835a:	c1 f8 02             	sar    $0x2,%eax
 804835d:	89 c2                	mov    %eax,%edx
 804835f:	c1 ea 1f             	shr    $0x1f,%edx
 8048362:	01 d0                	add    %edx,%eax
 8048364:	d1 f8                	sar    %eax
 8048366:	74 1b                	je     8048383 <register_tm_clones+0x33>
 8048368:	ba 00 00 00 00       	mov    $0x0,%edx
 804836d:	85 d2                	test   %edx,%edx
 804836f:	74 12                	je     8048383 <register_tm_clones+0x33>
 8048371:	55                   	push   %ebp
 8048372:	89 e5                	mov    %esp,%ebp
 8048374:	83 ec 10             	sub    $0x10,%esp
 8048377:	50                   	push   %eax
 8048378:	68 74 97 04 08       	push   $0x8049774
 804837d:	ff d2                	call   *%edx
 804837f:	83 c4 10             	add    $0x10,%esp
 8048382:	c9                   	leave  
 8048383:	f3 c3                	repz ret 
 8048385:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048390 <__do_global_dtors_aux>:
 8048390:	80 3d 74 97 04 08 00 	cmpb   $0x0,0x8049774
 8048397:	75 50                	jne    80483e9 <__do_global_dtors_aux+0x59>
 8048399:	55                   	push   %ebp
 804839a:	89 e5                	mov    %esp,%ebp
 804839c:	53                   	push   %ebx
 804839d:	bb 80 96 04 08       	mov    $0x8049680,%ebx
 80483a2:	81 eb 7c 96 04 08    	sub    $0x804967c,%ebx
 80483a8:	83 ec 04             	sub    $0x4,%esp
 80483ab:	a1 78 97 04 08       	mov    0x8049778,%eax
 80483b0:	c1 fb 02             	sar    $0x2,%ebx
 80483b3:	83 eb 01             	sub    $0x1,%ebx
 80483b6:	39 d8                	cmp    %ebx,%eax
 80483b8:	73 1e                	jae    80483d8 <__do_global_dtors_aux+0x48>
 80483ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80483c0:	83 c0 01             	add    $0x1,%eax
 80483c3:	a3 78 97 04 08       	mov    %eax,0x8049778
 80483c8:	ff 14 85 7c 96 04 08 	call   *0x804967c(,%eax,4)
 80483cf:	a1 78 97 04 08       	mov    0x8049778,%eax
 80483d4:	39 d8                	cmp    %ebx,%eax
 80483d6:	72 e8                	jb     80483c0 <__do_global_dtors_aux+0x30>
 80483d8:	e8 43 ff ff ff       	call   8048320 <deregister_tm_clones>
 80483dd:	c6 05 74 97 04 08 01 	movb   $0x1,0x8049774
 80483e4:	83 c4 04             	add    $0x4,%esp
 80483e7:	5b                   	pop    %ebx
 80483e8:	5d                   	pop    %ebp
 80483e9:	f3 c3                	repz ret 
 80483eb:	90                   	nop
 80483ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080483f0 <frame_dummy>:
 80483f0:	b8 84 96 04 08       	mov    $0x8049684,%eax
 80483f5:	8b 10                	mov    (%eax),%edx
 80483f7:	85 d2                	test   %edx,%edx
 80483f9:	75 05                	jne    8048400 <frame_dummy+0x10>
 80483fb:	e9 50 ff ff ff       	jmp    8048350 <register_tm_clones>
 8048400:	ba 00 00 00 00       	mov    $0x0,%edx
 8048405:	85 d2                	test   %edx,%edx
 8048407:	74 f2                	je     80483fb <frame_dummy+0xb>
 8048409:	55                   	push   %ebp
 804840a:	89 e5                	mov    %esp,%ebp
 804840c:	83 ec 14             	sub    $0x14,%esp
 804840f:	50                   	push   %eax
 8048410:	ff d2                	call   *%edx
 8048412:	83 c4 10             	add    $0x10,%esp
 8048415:	c9                   	leave  
 8048416:	e9 35 ff ff ff       	jmp    8048350 <register_tm_clones>
 804841b:	90                   	nop
 804841c:	90                   	nop
 804841d:	90                   	nop
 804841e:	90                   	nop
 804841f:	90                   	nop

08048420 <main>:
 8048420:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048424:	83 e4 f0             	and    $0xfffffff0,%esp
 8048427:	ff 71 fc             	pushl  -0x4(%ecx)
 804842a:	55                   	push   %ebp
 804842b:	89 e5                	mov    %esp,%ebp
 804842d:	57                   	push   %edi
 804842e:	56                   	push   %esi
 804842f:	51                   	push   %ecx
 8048430:	8d 7d 94             	lea    -0x6c(%ebp),%edi
 8048433:	be 39 85 04 08       	mov    $0x8048539,%esi
 8048438:	b9 15 00 00 00       	mov    $0x15,%ecx
 804843d:	83 ec 78             	sub    $0x78,%esp
 8048440:	a1 38 85 04 08       	mov    0x8048538,%eax
 8048445:	89 45 93             	mov    %eax,-0x6d(%ebp)
 8048448:	a1 89 85 04 08       	mov    0x8048589,%eax
 804844d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048450:	8d 45 93             	lea    -0x6d(%ebp),%eax
 8048453:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8048455:	50                   	push   %eax
 8048456:	e8 7d fe ff ff       	call   80482d8 <remove@plt>
 804845b:	83 c4 10             	add    $0x10,%esp
 804845e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048461:	59                   	pop    %ecx
 8048462:	5e                   	pop    %esi
 8048463:	5f                   	pop    %edi
 8048464:	5d                   	pop    %ebp
 8048465:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048468:	c3                   	ret    
 8048469:	90                   	nop
 804846a:	90                   	nop
 804846b:	90                   	nop
 804846c:	90                   	nop
 804846d:	90                   	nop
 804846e:	90                   	nop
 804846f:	90                   	nop

08048470 <__libc_csu_fini>:
 8048470:	55                   	push   %ebp
 8048471:	89 e5                	mov    %esp,%ebp
 8048473:	5d                   	pop    %ebp
 8048474:	c3                   	ret    
 8048475:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%eax,%eax,1)
 804847c:	00 00 00 00 

08048480 <__libc_csu_init>:
 8048480:	55                   	push   %ebp
 8048481:	89 e5                	mov    %esp,%ebp
 8048483:	57                   	push   %edi
 8048484:	56                   	push   %esi
 8048485:	53                   	push   %ebx
 8048486:	e8 4f 00 00 00       	call   80484da <__i686.get_pc_thunk.bx>
 804848b:	81 c3 c9 12 00 00    	add    $0x12c9,%ebx
 8048491:	83 ec 1c             	sub    $0x1c,%esp
 8048494:	e8 df fd ff ff       	call   8048278 <_init>
 8048499:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804849f:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 80484a5:	29 c7                	sub    %eax,%edi
 80484a7:	c1 ff 02             	sar    $0x2,%edi
 80484aa:	85 ff                	test   %edi,%edi
 80484ac:	74 24                	je     80484d2 <__libc_csu_init+0x52>
 80484ae:	31 f6                	xor    %esi,%esi
 80484b0:	8b 45 10             	mov    0x10(%ebp),%eax
 80484b3:	89 44 24 08          	mov    %eax,0x8(%esp)
 80484b7:	8b 45 0c             	mov    0xc(%ebp),%eax
 80484ba:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484be:	8b 45 08             	mov    0x8(%ebp),%eax
 80484c1:	89 04 24             	mov    %eax,(%esp)
 80484c4:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 80484cb:	83 c6 01             	add    $0x1,%esi
 80484ce:	39 fe                	cmp    %edi,%esi
 80484d0:	72 de                	jb     80484b0 <__libc_csu_init+0x30>
 80484d2:	83 c4 1c             	add    $0x1c,%esp
 80484d5:	5b                   	pop    %ebx
 80484d6:	5e                   	pop    %esi
 80484d7:	5f                   	pop    %edi
 80484d8:	5d                   	pop    %ebp
 80484d9:	c3                   	ret    

080484da <__i686.get_pc_thunk.bx>:
 80484da:	8b 1c 24             	mov    (%esp),%ebx
 80484dd:	c3                   	ret    
 80484de:	90                   	nop
 80484df:	90                   	nop

080484e0 <__do_global_ctors_aux>:
 80484e0:	55                   	push   %ebp
 80484e1:	89 e5                	mov    %esp,%ebp
 80484e3:	53                   	push   %ebx
 80484e4:	bb 74 96 04 08       	mov    $0x8049674,%ebx
 80484e9:	83 ec 04             	sub    $0x4,%esp
 80484ec:	a1 74 96 04 08       	mov    0x8049674,%eax
 80484f1:	83 f8 ff             	cmp    $0xffffffff,%eax
 80484f4:	74 16                	je     804850c <__do_global_ctors_aux+0x2c>
 80484f6:	8d 76 00             	lea    0x0(%esi),%esi
 80484f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048500:	83 eb 04             	sub    $0x4,%ebx
 8048503:	ff d0                	call   *%eax
 8048505:	8b 03                	mov    (%ebx),%eax
 8048507:	83 f8 ff             	cmp    $0xffffffff,%eax
 804850a:	75 f4                	jne    8048500 <__do_global_ctors_aux+0x20>
 804850c:	83 c4 04             	add    $0x4,%esp
 804850f:	5b                   	pop    %ebx
 8048510:	5d                   	pop    %ebp
 8048511:	c3                   	ret    
 8048512:	90                   	nop
 8048513:	90                   	nop

Disassembly of section .fini:

08048514 <_fini>:
 8048514:	55                   	push   %ebp
 8048515:	89 e5                	mov    %esp,%ebp
 8048517:	53                   	push   %ebx
 8048518:	83 ec 04             	sub    $0x4,%esp
 804851b:	e8 00 00 00 00       	call   8048520 <_fini+0xc>
 8048520:	5b                   	pop    %ebx
 8048521:	81 c3 34 12 00 00    	add    $0x1234,%ebx
 8048527:	e8 64 fe ff ff       	call   8048390 <__do_global_dtors_aux>
 804852c:	59                   	pop    %ecx
 804852d:	5b                   	pop    %ebx
 804852e:	c9                   	leave  
 804852f:	c3                   	ret    
