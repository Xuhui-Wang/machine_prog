	.file	"arith.c"
	.text
	.globl	arith
	.type	arith, @function
arith:
.LFB0:
	.cfi_startproc
	addl	%edi, %esi
	leal	(%rdx,%rdx,2), %eax
	sall	$4, %eax
	movzwl	%si, %esi
	imull	%esi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	arith, .-arith
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
