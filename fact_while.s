	.file	"fact_while.c"
	.text
	.globl	fact_while
	.type	fact_while, @function
fact_while:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
	jmp	.L2
.L3:
	leal	(%rdi,%rsi), %edx
	imull	%edx, %eax
	addl	$1, %edi
.L2:
	cmpl	%esi, %edi
	jl	.L3
	rep; ret
	.cfi_endproc
.LFE0:
	.size	fact_while, .-fact_while
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
