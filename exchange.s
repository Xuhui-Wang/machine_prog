	.file	"exchange.c"
	.text
	.globl	exchange
	.type	exchange, @function
exchange:
.LFB11:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	%esi, (%rdi)
	ret
	.cfi_endproc
.LFE11:
	.size	exchange, .-exchange
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a = %d, b = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$4, 12(%rsp)
	movl	$3, %esi
	leaq	12(%rsp), %rdi
	call	exchange
	movl	%eax, %edx
	movl	12(%rsp), %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
