	.file	"recurse.c"
	.text
	.globl	pcount_r
	.type	pcount_r, @function
pcount_r:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	testq	%rdi, %rdi
	je	.L6
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	andl	$1, %ebx
	shrq	%rdi
	call	pcount_r
	addq	%rbx, %rax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L6:
	rep; ret
	.cfi_endproc
.LFE0:
	.size	pcount_r, .-pcount_r
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
