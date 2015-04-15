	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str1(%rip), %rdi
	leaq	L_.str(%rip), %rax
	movl	$0, -4(%rbp)
	movl	$38, -8(%rbp)
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	_printf
	movl	$0, %esi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hello, world"

L_.str1:                                ## @.str1
	.asciz	"%d %s\n"


.subsections_via_symbols
