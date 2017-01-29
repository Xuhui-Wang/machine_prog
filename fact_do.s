	.file	"fact_do.c"
	.text
	.globl	fact_do
	.type	fact_do, @function
fact_do:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
.L2:
	imull	%edi, %eax
	subl	$1, %edi
	cmpl	$1, %edi
	jg	.L2
	rep; ret
	.cfi_endproc
.LFE0:
	.size	fact_do, .-fact_do
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
