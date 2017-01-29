	.file	"structure.c"
	.text
	.globl	set_i
	.type	set_i, @function
set_i:
.LFB7:
	.cfi_startproc
	movq	%rsi, 16(%rdi)
	ret
	.cfi_endproc
.LFE7:
	.size	set_i, .-set_i
	.globl	get_ap
	.type	get_ap, @function
get_ap:
.LFB8:
	.cfi_startproc
	leaq	(%rdi,%rsi,4), %rax
	ret
	.cfi_endproc
.LFE8:
	.size	get_ap, .-get_ap
	.globl	check_val
	.type	check_val, @function
check_val:
.LFB9:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L8
.L6:
	movq	16(%rdi), %rdx
	cmpl	%esi, (%rdi,%rdx,4)
	je	.L7
	movq	24(%rdi), %rdi
	jmp	.L8
.L7:
	movl	$1, %eax
.L8:
	testl	%eax, %eax
	sete	%cl
	testq	%rdi, %rdi
	setne	%dl
	testb	%dl, %cl
	jne	.L6
	rep; ret
	.cfi_endproc
.LFE9:
	.size	check_val, .-check_val
	.globl	set_val
	.type	set_val, @function
set_val:
.LFB10:
	.cfi_startproc
	jmp	.L10
.L11:
	movslq	16(%rdi), %rax
	movl	%esi, (%rdi,%rax,4)
	movq	24(%rdi), %rdi
.L10:
	testq	%rdi, %rdi
	jne	.L11
	rep; ret
	.cfi_endproc
.LFE10:
	.size	set_val, .-set_val
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
