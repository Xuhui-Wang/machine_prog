	.file	"zip.c"
	.text
	.globl	get_digit
	.type	get_digit, @function
get_digit:
.LFB18:
	.cfi_startproc
	movl	(%rdi,%rsi,4), %eax
	ret
	.cfi_endproc
.LFE18:
	.size	get_digit, .-get_digit
	.globl	zincr
	.type	zincr, @function
zincr:
.LFB19:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L3
.L4:
	addl	$1, (%rdi,%rax,4)
	addq	$1, %rax
.L3:
	cmpq	$4, %rax
	jbe	.L4
	rep; ret
	.cfi_endproc
.LFE19:
	.size	zincr, .-zincr
	.globl	zincr_p
	.type	zincr_p, @function
zincr_p:
.LFB20:
	.cfi_startproc
	leaq	20(%rdi), %rax
.L6:
	addl	$1, (%rdi)
	addq	$4, %rdi
	cmpq	%rax, %rdi
	jne	.L6
	rep; ret
	.cfi_endproc
.LFE20:
	.size	zincr_p, .-zincr_p
	.globl	zincr_v
	.type	zincr_v, @function
zincr_v:
.LFB21:
	.cfi_startproc
	movl	$0, %eax
.L9:
	addl	$1, (%rdi,%rax)
	addq	$4, %rax
	cmpq	$20, %rax
	jne	.L9
	rep; ret
	.cfi_endproc
.LFE21:
	.size	zincr_v, .-zincr_v
	.globl	get_pgh_zip
	.type	get_pgh_zip, @function
get_pgh_zip:
.LFB22:
	.cfi_startproc
	leaq	(%rdi,%rdi,4), %rax
	leaq	pgh(,%rax,4), %rax
	ret
	.cfi_endproc
.LFE22:
	.size	get_pgh_zip, .-get_pgh_zip
	.globl	get_pgh_digit
	.type	get_pgh_digit, @function
get_pgh_digit:
.LFB23:
	.cfi_startproc
	leaq	(%rdi,%rdi,4), %rax
	addq	%rax, %rsi
	movl	pgh(,%rsi,4), %eax
	ret
	.cfi_endproc
.LFE23:
	.size	get_pgh_digit, .-get_pgh_digit
	.globl	get_univ_digit
	.type	get_univ_digit, @function
get_univ_digit:
.LFB24:
	.cfi_startproc
	salq	$2, %rsi
	addq	univ(,%rdi,8), %rsi
	movl	(%rsi), %eax
	ret
	.cfi_endproc
.LFE24:
	.size	get_univ_digit, .-get_univ_digit
	.globl	univ
	.data
	.align 16
	.type	univ, @object
	.size	univ, 24
univ:
	.quad	mit
	.quad	cmu
	.quad	ucb
	.globl	pgh
	.align 32
	.type	pgh, @object
	.size	pgh, 80
pgh:
	.long	1
	.long	5
	.long	2
	.long	0
	.long	6
	.long	1
	.long	5
	.long	2
	.long	1
	.long	3
	.long	1
	.long	5
	.long	2
	.long	1
	.long	7
	.long	1
	.long	5
	.long	2
	.long	2
	.long	1
	.globl	ucb
	.align 16
	.type	ucb, @object
	.size	ucb, 20
ucb:
	.long	9
	.long	4
	.long	7
	.long	2
	.long	0
	.globl	mit
	.align 16
	.type	mit, @object
	.size	mit, 20
mit:
	.long	0
	.long	2
	.long	1
	.long	3
	.long	9
	.globl	cmu
	.align 16
	.type	cmu, @object
	.size	cmu, 20
cmu:
	.long	1
	.long	5
	.long	2
	.long	1
	.long	3
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
