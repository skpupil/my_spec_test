	.file	"g23.i"
	.data
	.align 8
	.type	size_htab.0,@object
	.size	size_htab.0,8
size_htab.0:
	.quad	0
	.align 8
	.type	new_const.1,@object
	.size	new_const.1,8
new_const.1:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"fold-const.c"
.LC2:
	.string	"const_binop"
.LC1:
	.string	"int_const_binop"
	.section	.rodata.str1.32,"aMS",@progbits,1
	.align 32
.LC7:
	.string	"`and' of mutually exclusive equal-tests is always 0"
	.align 32
.LC6:
	.string	"`or' of unmatched not-equal tests is always 1"
	.section	.rodata.str1.1
.LC5:
	.string	"comparison is always %d"
.LC4:
	.string	"invert_truthvalue"
.LC3:
	.string	"invert_tree_comparison"
.LC8:
	.string	"swap_tree_comparison"
	.section	.rodata.str1.32
	.align 32
.LC9:
	.string	"comparison is always %d due to width of bit-field"
	.text
	.align 2
	.p2align 4,,15
.globl fold
	.type	fold,@function
fold:
.LFB1:
	pushq	%r15
.LCFI0:
	xorl	%r15d, %r15d
	pushq	%r14
.LCFI1:
	xorl	%r14d, %r14d
	pushq	%r13
.LCFI2:
	pushq	%r12
.LCFI3:
	xorl	%r12d, %r12d
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
	subq	$18728, %rsp
.LCFI6:
	movq	%rdi, 344(%rsp)
	movq	8(%rdi), %rdx
	movq	%rdx, 3736(%rsp)
	movzbl	16(%rdi), %ebp
	movslq	%ebp,%rdx
	cmpl	$120, %ebp
	movsbl	tree_code_type(%rdx),%eax
	je	.L20884
	cmpl	$118, %ebp
	je	.L21253
.L2:
	cmpl	$99, %eax
	je	.L20884
	leal	-59(%rbp), %eax
	cmpl	$43, %eax
	ja	.L1
	mov	%eax, %ecx
	jmp	*.L19100(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L19100:
	.quad	.L32
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L1
	.quad	.L6
	.quad	.L1098
	.quad	.L1
	.quad	.L1100
	.quad	.L1
	.quad	.L1
	.quad	.L1056
	.quad	.L15392
	.quad	.L15392
	.quad	.L15392
	.quad	.L15392
	.quad	.L15392
	.quad	.L15392
	.text
.L6:
	movl	$1, %eax
	testl	%eax, %eax
	jne	.L21254
	cmpb	$90, 16(%r15)
	je	.L21255
	.p2align 4,,7
.L20884:
	movq	344(%rsp), %r12
.L1:
	addq	$18728, %rsp
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L21255:
	movq	32(%r15), %r12
	jmp	.L1
.L21254:
	movq	32(%r15), %rdi
	movq	40(%r15), %rsi
	notq	%rdi
	notq	%rsi
	call	build_int_2_wide
	movq	3736(%rsp), %rcx
	movq	%rax, %r12
	movq	%rax, %rdx
	movq	%rcx, 8(%rax)
	movzbl	16(%rax), %eax
	cmpb	$26, %al
	je	.L9
	cmpb	$25, %al
	je	.L21256
.L9:
	movzbl	18(%r15), %r10d
	movzbl	18(%r12), %r8d
	andb	$8, %r10b
	andb	$-9, %r8b
	orb	%r10b, %r8b
	movb	%r8b, 18(%r12)
	andb	$-5, %r8b
	movzbl	18(%r15), %r9d
	andb	$4, %r9b
	orb	%r9b, %r8b
	movb	%r8b, 18(%r12)
	jmp	.L1
.L21256:
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13
	cmpb	$15, %al
	je	.L13
	movq	3736(%rsp), %rdi
	movzwl	60(%rdi), %esi
	andl	$511, %esi
.L16:
	cmpl	$128, %esi
	je	.L18
	cmpl	$64, %esi
	jbe	.L19
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L18:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L22
	cmpb	$6, 16(%rax)
	jne	.L9
	testb	$2, 62(%rax)
	je	.L9
.L22:
	cmpl	$128, %esi
	je	.L9
	cmpl	$64, %esi
	jbe	.L25
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19376:
	testl	$1, %eax 
	je	.L9
	cmpl	$64, %esi
	jbe	.L27
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
	jmp	.L9
.L27:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9
.L25:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19376
.L19:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L18
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L18
.L13:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L16
	.p2align 6,,7
.L32:
	movzbl	16(%r14), %ecx
	cmpb	$77, %cl
	je	.L21257
	movzbl	16(%r15), %edx
	cmpb	$77, %dl
	je	.L21258
	movq	3736(%rsp), %rbx
	movzbl	16(%rbx), %eax
	cmpb	$7, %al
	je	.L37
	cmpb	$8, %al
	je	.L21259
.L38:
	cmpb	$61, %dl
	je	.L21260
.L328:
	movzbl	16(%r15), %edx
	cmpl	$83, %edx
	movl	%edx, 3724(%rsp)
	movzbl	16(%r14), %eax
	je	.L21261
.L331:
	cmpl	$83, %eax
	je	.L21262
.L549:
	movl	$1, %eax
	testl	%eax, %eax
	jne	.L19365
	movq	3736(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$7, %al
	je	.L552
	cmpb	$8, %al
	je	.L21263
.L551:
	movq	global_trees(%rip), %r9
	movq	%r15, %r8
	movl	%ebp, %r10d
	movq	$0, 2064(%rsp)
	movq	$0, 7832(%rsp)
	movq	$0, 7824(%rsp)
	movq	$0, 7816(%rsp)
.L553:
	movzbl	16(%r8), %ebx
	subb	$114, %bl
	cmpb	$2, %bl
	ja	.L554
	movq	32(%r8), %rcx
	cmpq	%r9, %rcx
	je	.L554
	movq	8(%r8), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %eax
	movzbl	61(%rdi), %r11d
	andb	$-2, %al
	andb	$-2, %r11b
	cmpb	%r11b, %al
	jne	.L554
	movzbl	17(%rsi), %r13d
	movzbl	17(%rdi), %esi
	shrb	$5, %r13b
	shrb	$5, %sil
	andl	$1, %r13d
	andl	$1, %esi
	cmpl	%esi, %r13d
	jne	.L554
	movq	%rcx, %r8
	jmp	.L553
.L554:
	movzbl	16(%r8), %edx
	leal	-25(%rdx), %ecx
	cmpb	$1, %cl
	ja	.L558
	movq	%r8, 7824(%rsp)
.L559:
	xorl	%r13d, %r13d
	testl	%r13d, %r13d
	je	.L618
	movq	7824(%rsp), %rax
	testq	%rax, %rax
	je	.L619
	movq	%rax, 7816(%rsp)
	movq	$0, 7824(%rsp)
.L620:
	movq	7832(%rsp), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.L623
	movq	8(%rbx), %r13
	movq	global_trees(%rip), %r8
.L624:
	movzbl	16(%rbx), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L625
	movq	32(%rbx), %rcx
	cmpq	%r8, %rcx
	je	.L625
	movq	8(%rbx), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %r11d
	movzbl	61(%rdi), %r10d
	andb	$-2, %r11b
	andb	$-2, %r10b
	cmpb	%r10b, %r11b
	jne	.L625
	movzbl	17(%rsi), %eax
	movzbl	17(%rdi), %r9d
	shrb	$5, %al
	shrb	$5, %r9b
	andl	$1, %eax
	andl	$1, %r9d
	cmpl	%r9d, %eax
	jne	.L625
	movq	%rcx, %rbx
	jmp	.L624
.L625:
	movzbl	16(%rbx), %eax
	cmpl	$60, %eax
	je	.L634
	cmpl	$60, %eax
	ja	.L640
	subl	$25, %eax
	cmpl	$1, %eax
	ja	.L629
	testb	$32, 17(%r13)
	je	.L21264
.L629:
	movq	8(%rbx), %rsi
	movl	$77, %edi
	movq	%rbx, %rdx
	call	build1
.L19397:
	movq	%rax, %rdi
	call	fold
	movq	%r13, %rdi
	movq	%rax, %rsi
.L19398:
	call	convert
.L623:
	movq	%rax, 7832(%rsp)
	xorl	%eax, %eax
	cmpq	$0, 2064(%rsp)
	je	.L642
	movq	2064(%rsp), %rdi
	movq	global_trees(%rip), %r8
	movq	8(%rdi), %rbx
.L643:
	movq	2064(%rsp), %rdx
	movzbl	16(%rdx), %esi
	subb	$114, %sil
	cmpb	$2, %sil
	ja	.L644
	movq	32(%rdx), %rcx
	cmpq	%r8, %rcx
	je	.L644
	movq	8(%rdx), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %r10d
	movzbl	61(%rdi), %r13d
	andb	$-2, %r10b
	andb	$-2, %r13b
	cmpb	%r13b, %r10b
	jne	.L644
	movzbl	17(%rsi), %r9d
	movzbl	17(%rdi), %r11d
	shrb	$5, %r9b
	shrb	$5, %r11b
	andl	$1, %r9d
	andl	$1, %r11d
	cmpl	%r11d, %r9d
	jne	.L644
	movq	%rcx, 2064(%rsp)
	jmp	.L643
.L644:
	movq	2064(%rsp), %r8
	movzbl	16(%r8), %eax
	cmpl	$60, %eax
	je	.L653
	cmpl	$60, %eax
	ja	.L659
	subl	$25, %eax
	cmpl	$1, %eax
	ja	.L648
	testb	$32, 17(%rbx)
	je	.L21265
.L648:
	movq	2064(%rsp), %rdx
	movl	$77, %edi
	movq	8(%rdx), %rsi
	call	build1
.L19399:
	movq	%rax, %rdi
	call	fold
	movq	%rbx, %rdi
	movq	%rax, %rsi
.L19400:
	call	convert
.L642:
	movq	%rax, 2064(%rsp)
.L618:
	xorl	%ebx, %ebx
	movq	global_trees(%rip), %r9
	movq	%r14, %r8
	cmpl	$60, %ebp
	movl	%ebp, %r10d
	movq	$0, 7808(%rsp)
	sete	%bl
	movq	$0, 7800(%rsp)
	movq	$0, 7792(%rsp)
	xorl	%r13d, %r13d
	movl	%ebx, 3700(%rsp)
.L661:
	movzbl	16(%r8), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L662
	movq	32(%r8), %rcx
	cmpq	%r9, %rcx
	je	.L662
	movq	8(%r8), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %eax
	movzbl	61(%rdi), %r11d
	andb	$-2, %al
	andb	$-2, %r11b
	cmpb	%r11b, %al
	jne	.L662
	movzbl	17(%rsi), %ebx
	movzbl	17(%rdi), %esi
	shrb	$5, %bl
	shrb	$5, %sil
	andl	$1, %ebx
	andl	$1, %esi
	cmpl	%esi, %ebx
	jne	.L662
	movq	%rcx, %r8
	jmp	.L661
.L662:
	movzbl	16(%r8), %edx
	leal	-25(%rdx), %r9d
	cmpb	$1, %r9b
	ja	.L666
	movq	%r8, 7800(%rsp)
.L667:
	movl	3700(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L726
	movq	7800(%rsp), %rax
	testq	%rax, %rax
	je	.L727
	movq	%rax, 7792(%rsp)
	movq	$0, 7800(%rsp)
.L728:
	movq	7808(%rsp), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.L731
	movq	8(%rbx), %r9
	movq	global_trees(%rip), %r8
	movq	%r9, 3688(%rsp)
.L732:
	movzbl	16(%rbx), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L733
	movq	32(%rbx), %rcx
	cmpq	%r8, %rcx
	je	.L733
	movq	8(%rbx), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %eax
	movzbl	61(%rdi), %r10d
	andb	$-2, %al
	andb	$-2, %r10b
	cmpb	%r10b, %al
	jne	.L733
	movzbl	17(%rsi), %r11d
	movzbl	17(%rdi), %esi
	shrb	$5, %r11b
	shrb	$5, %sil
	andl	$1, %r11d
	andl	$1, %esi
	cmpl	%esi, %r11d
	jne	.L733
	movq	%rcx, %rbx
	jmp	.L732
.L733:
	movzbl	16(%rbx), %eax
	cmpl	$60, %eax
	je	.L742
	cmpl	$60, %eax
	ja	.L748
	subl	$25, %eax
	cmpl	$1, %eax
	ja	.L737
	movq	3688(%rsp), %rsi
	testb	$32, 17(%rsi)
	je	.L21266
.L737:
	movq	8(%rbx), %rsi
	movl	$77, %edi
	movq	%rbx, %rdx
	call	build1
.L19405:
	movq	%rax, %rdi
	call	fold
	movq	3688(%rsp), %rdi
	movq	%rax, %rsi
.L19406:
	call	convert
.L731:
	movq	%rax, 7808(%rsp)
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.L750
	movq	8(%r13), %rbx
	movq	global_trees(%rip), %r8
.L751:
	movzbl	16(%r13), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L752
	movq	32(%r13), %rcx
	cmpq	%r8, %rcx
	je	.L752
	movq	8(%r13), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %r10d
	movzbl	61(%rdi), %r9d
	andb	$-2, %r10b
	andb	$-2, %r9b
	cmpb	%r9b, %r10b
	jne	.L752
	movzbl	17(%rsi), %eax
	movzbl	17(%rdi), %esi
	shrb	$5, %al
	shrb	$5, %sil
	andl	$1, %eax
	andl	$1, %esi
	cmpl	%esi, %eax
	jne	.L752
	movq	%rcx, %r13
	jmp	.L751
.L752:
	movzbl	16(%r13), %eax
	cmpl	$60, %eax
	je	.L761
	cmpl	$60, %eax
	ja	.L767
	subl	$25, %eax
	cmpl	$1, %eax
	ja	.L756
	testb	$32, 17(%rbx)
	je	.L21267
.L756:
	movq	8(%r13), %rsi
	movl	$77, %edi
	movq	%r13, %rdx
	call	build1
.L19407:
	movq	%rax, %rdi
	call	fold
	movq	%rbx, %rdi
	movq	%rax, %rsi
.L19408:
	call	convert
.L750:
	movq	%rax, %r13
.L726:
	xorl	%edx, %edx
	cmpq	$0, 2064(%rsp)
	setne	%dl
	testq	%r13, %r13
	leal	1(%rdx), %r10d
	cmovne	%r10d, %edx
	cmpq	$0, 7832(%rsp)
	leal	1(%rdx), %r9d
	cmovne	%r9d, %edx
	cmpq	$0, 7808(%rsp)
	leal	1(%rdx), %edi
	cmovne	%edi, %edx
	cmpq	$0, 7824(%rsp)
	leal	1(%rdx), %ecx
	cmovne	%ecx, %edx
	cmpq	$0, 7800(%rsp)
	leal	1(%rdx), %r8d
	cmovne	%r8d, %edx
	cmpq	$0, 7816(%rsp)
	leal	1(%rdx), %ebx
	cmovne	%ebx, %edx
	cmpq	$0, 7792(%rsp)
	je	.L776
	leal	1(%rdx), %esi
	cmpl	$2, %esi
.L19409:
	jle	.L785
	cmpl	$60, %ebp
	movl	$59, %eax
	movq	2064(%rsp), %rdi
	movq	3736(%rsp), %rcx
	cmove	%eax, %ebp
	movq	%r13, %rsi
	movl	%ebp, %edx
	call	associate_trees
	movq	3736(%rsp), %rcx
	movl	%ebp, %edx
	movq	7832(%rsp), %rdi
	movq	7808(%rsp), %rsi
	movq	%rax, %rbx
	call	associate_trees
	movq	3736(%rsp), %rcx
	movl	%ebp, %edx
	movq	7824(%rsp), %rdi
	movq	7800(%rsp), %rsi
	movq	%rax, 7832(%rsp)
	call	associate_trees
	movq	3736(%rsp), %rcx
	movl	%ebp, %edx
	movq	7816(%rsp), %rdi
	movq	7792(%rsp), %rsi
	movq	%rax, 7824(%rsp)
	call	associate_trees
	testq	%rax, %rax
	movq	%rax, 7816(%rsp)
	je	.L779
	movq	7824(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.L21268
.L779:
	movq	7816(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L782
	movq	7832(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.L783
	movq	%rbx, %rdi
	movl	$60, %edx
.L20894:
	movq	3736(%rsp), %rcx
	call	associate_trees
	movq	3736(%rsp), %rdi
	movq	%rax, %rsi
.L20898:
	call	convert
.L20883:
	movq	%rax, %r12
	jmp	.L1
.L783:
	movq	3736(%rsp), %rcx
	movl	$60, %edx
	call	associate_trees
	movl	$59, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rax, 7832(%rsp)
	jmp	.L20894
.L782:
	movq	7832(%rsp), %rdi
	movq	7824(%rsp), %rsi
	movl	%ebp, %edx
	movq	3736(%rsp), %rcx
	call	associate_trees
	movl	%ebp, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rax, 7832(%rsp)
	jmp	.L20894
.L21268:
	movq	%rax, %rsi
	call	tree_int_cst_lt
	testl	%eax, %eax
	je	.L780
	movq	7816(%rsp), %rdi
	movq	7824(%rsp), %rsi
	movl	$60, %edx
	movq	3736(%rsp), %rcx
	call	associate_trees
	movq	$0, 7824(%rsp)
	movq	%rax, 7816(%rsp)
	jmp	.L779
.L780:
	movq	7824(%rsp), %rdi
	movq	7816(%rsp), %rsi
	movl	$60, %edx
	movq	3736(%rsp), %rcx
	call	associate_trees
	movq	$0, 7816(%rsp)
	movq	%rax, 7824(%rsp)
	jmp	.L779
	.p2align 6,,7
.L785:
	movl	$1, %eax
	testl	%eax, %eax
	je	.L786
.L19365:
	movq	global_trees(%rip), %rcx
	.p2align 4,,7
.L787:
	movzbl	16(%r15), %r12d
	subb	$114, %r12b
	cmpb	$2, %r12b
	ja	.L788
	movq	32(%r15), %rsi
	cmpq	%rcx, %rsi
	je	.L788
	movq	8(%r15), %rbx
	movq	8(%rsi), %rdx
	movzbl	61(%rbx), %r11d
	movzbl	61(%rdx), %r13d
	andb	$-2, %r11b
	andb	$-2, %r13b
	cmpb	%r13b, %r11b
	jne	.L788
	movq	%rsi, %r15
	jmp	.L787
.L788:
	movq	global_trees(%rip), %rcx
	.p2align 4,,7
.L792:
	movzbl	16(%r14), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L793
	movq	32(%r14), %rsi
	cmpq	%rcx, %rsi
	je	.L793
	movq	8(%r14), %r12
	movq	8(%rsi), %r10
	movzbl	61(%r12), %r9d
	movzbl	61(%r10), %edi
	andb	$-2, %r9b
	andb	$-2, %dil
	cmpb	%dil, %r9b
	jne	.L793
	movq	%rsi, %r14
	jmp	.L792
.L793:
	movzbl	16(%r15), %eax
	cmpb	$25, %al
	je	.L21269
	cmpb	$26, %al
	je	.L21270
	cmpb	$27, %al
	je	.L21271
	xorl	%ebx, %ebx
.L1004:
	movq	%rbx, %r12
.L786:
	testq	%r12, %r12
	je	.L20884
	movq	344(%rsp), %r13
	movq	8(%r13), %rdi
	cmpq	%rdi, 8(%r12)
	je	.L1
	movq	%r12, %rsi
	jmp	.L20898
.L21271:
	movq	8(%r15), %r11
	cmpl	$60, %ebp
	movq	%r11, 3672(%rsp)
	movq	40(%r15), %rbx
	movq	32(%r15), %r13
	movq	%rbx, 3664(%rsp)
	movq	32(%r14), %r15
	movq	40(%r14), %r14
	je	.L1036
	cmpl	$60, %ebp
	ja	.L1053
	cmpl	$59, %ebp
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L20953:
	movq	3664(%rsp), %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3672(%rsp), %rdi
.L19431:
	movq	%rax, %rdx
	call	build_complex
.L19432:
	movq	%rax, %rbx
	jmp	.L1004
.L19036:
	movl	$.LC0, %edi
	movl	$1908, %esi
	movl	$.LC2, %edx
	jmp	.L20923
	.p2align 6,,7
.L1053:
	cmpl	$61, %ebp
	je	.L1037
	cmpl	$70, %ebp
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%r15, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	3664(%rsp), %rsi
	movl	$61, %edi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r10
	movq	%rax, %rsi
	movzbl	16(%r10), %eax
	cmpb	$6, %al
	je	.L1047
	cmpb	$10, %al
	je	.L1047
	cmpb	$11, %al
	je	.L1047
	cmpb	$12, %al
	movl	$70, %edi
	je	.L1047
.L1046:
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	3664(%rsp), %rsi
	movl	$61, %edi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r15
	movq	%rax, %rsi
	movzbl	16(%r15), %eax
	cmpb	$6, %al
	je	.L1050
	cmpb	$10, %al
	je	.L1050
	cmpb	$11, %al
	je	.L1050
	cmpb	$12, %al
	movl	$70, %edi
	je	.L1050
.L1049:
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbp, %rsi
	movq	3672(%rsp), %rdi
	jmp	.L19431
.L1050:
	movl	$62, %edi
	jmp	.L1049
.L1047:
	movl	$62, %edi
	jmp	.L1046
.L1037:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	3664(%rsp), %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	3664(%rsp), %rsi
	movl	$61, %edi
	movq	%rax, %r14
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	%rbp, %rsi
	movq	3672(%rsp), %rdi
	jmp	.L19431
.L1036:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L20953
.L21270:
	movq	32(%r15), %rsi
	xorl	%r12d, %r12d
	movq	%r15, %rbx
	movq	%rsi, 18560(%rsp)
	movq	40(%r15), %rdx
	movq	%rdx, 18568(%rsp)
	movq	48(%r15), %rdi
	movq	%rdi, 18576(%rsp)
	movq	32(%r14), %r11
	movq	%r11, 18528(%rsp)
	movq	40(%r14), %rcx
	movq	%rcx, 18536(%rsp)
	movq	48(%r14), %r9
	movq	%rdi, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r9, 18544(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L1004
	movq	18544(%rsp), %rbx
	movq	18528(%rsp), %r8
	movq	18536(%rsp), %r10
	movq	%rbx, 16(%rsp)
	movq	%r8, (%rsp)
	movq	%r14, %rbx
	movq	%r10, 8(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L1004
	movq	18576(%rsp), %rsi
	movq	18536(%rsp), %rdi
	movq	8(%r15), %r11
	movq	18560(%rsp), %rcx
	movl	%ebp, 18448(%rsp)
	movq	18568(%rsp), %r9
	movq	18528(%rsp), %rdx
	movq	18544(%rsp), %r13
	movq	%rsi, 18480(%rsp)
	movq	%rdi, 18496(%rsp)
	leaq	18448(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r11, 18456(%rsp)
	movq	%rcx, 18464(%rsp)
	movq	%r9, 18472(%rsp)
	movq	%rdx, 18488(%rsp)
	movq	%r13, 18504(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L1009
	movq	18512(%rsp), %rbx
.L1010:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L1012
	cmpb	$25, %al
	je	.L21274
.L1012:
	movzbl	18(%r15), %ecx
	movzbl	18(%r14), %edx
	shrb	$3, %cl
	shrb	$3, %dl
	andl	$1, %ecx
	andl	$1, %edx
	orb	%r12b, %cl
	movzbl	18(%rbx), %r12d
	orb	%dl, %cl
	salb	$3, %cl
	andb	$-9, %r12b
	orb	%cl, %r12b
	movb	%r12b, 18(%rbx)
	movl	%r12d, %r9d
	movzbl	18(%r14), %eax
	movzbl	18(%r15), %edi
	shrb	$3, %r9b
	andb	$-5, %r12b
	shrb	$2, %al
	shrb	$2, %dil
	orl	%r9d, %edi
	orl	%eax, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %r12b
	movb	%r12b, 18(%rbx)
	jmp	.L1004
.L21274:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L1016
	cmpb	$15, %al
	je	.L1016
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L1019:
	cmpl	$128, %esi
	je	.L1021
	cmpl	$64, %esi
	jbe	.L1022
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 40(%rdx)
.L1021:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L1025
	cmpb	$6, 16(%rax)
	jne	.L1012
	testb	$2, 62(%rax)
	je	.L1012
.L1025:
	cmpl	$128, %esi
	je	.L1027
	cmpl	$64, %esi
	jbe	.L1028
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19430:
	testl	$1, %eax 
	je	.L1027
	cmpl	$64, %esi
	jbe	.L1030
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L1027:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%r12d,%rsi
	orq	%rdi, %rsi
	orq	%r8, %rsi
	setne	%r8b
	movzbl	%r8b, %r12d
	jmp	.L1012
.L1030:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L1027
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L1027
.L1028:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19430
.L1022:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L1021
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L1021
.L1016:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L1019
.L1009:
	movq	%r15, %rdi
	movl	$1, %r12d
	call	copy_node
	movq	%rax, %rbx
	jmp	.L1010
	.p2align 6,,7
.L21269:
	movq	8(%r15), %r13
	movl	$0, 2044(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	movl	%esi, %ecx
	andl	$1, %ecx
	movl	%ecx, 3684(%rsp)
	cmpb	$6, 16(%r13)
	je	.L21275
.L798:
	leal	-59(%rbp), %eax
	movl	$0, 2016(%rsp)
	movl	$0, 2040(%rsp)
	cmpl	$30, %eax
	movq	32(%r15), %rbx
	movq	40(%r15), %r12
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %r11d
	jmp	*.L939(,%r11,8)
	.section	.rodata
	.align 8
	.align 4
.L939:
	.quad	.L873
	.quad	.L876
	.quad	.L882
	.quad	.L915
	.quad	.L915
	.quad	.L915
	.quad	.L918
	.quad	.L924
	.quad	.L924
	.quad	.L924
	.quad	.L927
	.quad	.L18929
	.quad	.L915
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L929
	.quad	.L929
	.quad	.L18929
	.quad	.L18929
	.quad	.L805
	.quad	.L804
	.quad	.L832
	.quad	.L831
	.quad	.L800
	.quad	.L801
	.quad	.L802
	.quad	.L803
	.text
.L800:
	orq	%r8, %rbx
	orq	%r9, %r12
	movq	%rbx, 7784(%rsp)
.L19425:
	movq	%r12, 7776(%rsp)
.L799:
	movl	2044(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L940
	movq	7776(%rsp), %rax
	testq	%rax, %rax
	jne	.L942
	cmpq	$0, 7784(%rsp)
	js	.L942
.L941:
	movl	2016(%rsp), %eax
	testl	%eax, %eax
	jne	.L940
	testb	$8, 18(%r15)
	jne	.L940
	testb	$8, 18(%r14)
	jne	.L940
	cmpq	$0, size_htab.0(%rip)
	movq	7784(%rsp), %rbx
	je	.L21276
.L943:
	movq	new_const.1(%rip), %r15
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r15), %eax
	decq	%rcx
	movq	%rbx, 32(%r15)
	movq	%rcx, 40(%r15)
	movq	%r13, 8(%r15)
	movq	%r15, %rdi
	movq	%r15, %r11
	movq	%r15, %rdx
	cmpb	$26, %al
	je	.L947
	cmpb	$25, %al
	je	.L21277
.L947:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %eax
	movl	$1, %edx
	andb	$-5, %sil
	orb	%al, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r9d
	leal	0(,%r10,8), %r11d
	andb	$-9, %r9b
	orb	%r11b, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19432
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L1004
.L21277:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L951
	cmpb	$15, %al
	je	.L951
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L954:
	cmpl	$128, %esi
	je	.L956
	cmpl	$64, %esi
	jbe	.L957
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L956:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L960
	cmpb	$6, 16(%rax)
	jne	.L947
	testb	$2, 62(%rax)
	je	.L947
.L960:
	cmpl	$128, %esi
	je	.L962
	cmpl	$64, %esi
	jbe	.L963
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19427:
	testl	$1, %eax 
	je	.L962
	cmpl	$64, %esi
	jbe	.L965
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	orq	%rbp, 40(%rdx)
.L962:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r12
	orq	%r8, %r12
	orq	%r9, %r12
	setne	%bl
	movzbl	%bl, %r10d
	jmp	.L947
.L965:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L962
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L962
.L963:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19427
.L957:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L956
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L956
.L951:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L954
.L21276:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L943
	.p2align 6,,7
.L940:
	movq	7784(%rsp), %rdi
	movq	7776(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%r15), %r8
	movq	%rax, %rdi
	movq	%r8, 8(%rax)
	movzbl	18(%r14), %edx
	movzbl	18(%r15), %ecx
	shrb	$3, %dl
	shrb	$3, %cl
	movl	%edx, %ebx
	andl	%ecx, %r11d
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L973
	movl	3684(%rsp), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L976
	movl	2044(%rsp), %eax
	testl	%eax, %eax
	je	.L975
.L976:
	movl	2016(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L975:
	movl	%edx, %eax
.L19429:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	2044(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L1002
	testb	$8, %dl
	jne	.L1002
	movq	7776(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L21278
.L1003:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L1002:
	movzbl	18(%rdi), %r10d
	movzbl	18(%r15), %r8d
	movq	%rdi, %rbx
	movzbl	18(%r14), %r15d
	movl	%r10d, %r13d
	shrb	$2, %r8b
	andb	$-5, %r10b
	shrb	$3, %r13b
	shrb	$2, %r15b
	orl	%r13d, %r8d
	orl	%r15d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %r10b
	movb	%r10b, 18(%rdi)
	jmp	.L1004
.L21278:
	movq	7784(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L1003
	jmp	.L1002
	.p2align 6,,7
.L973:
	movq	%rax, %rdx
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movl	3684(%rsp), %eax
	testl	%eax, %eax
	je	.L979
	movl	2044(%rsp), %eax
	testl	%eax, %eax
	je	.L978
.L979:
	movl	2016(%rsp), %r12d
	movl	$1, %r10d
	movl	$0, %r13d
	testl	%r12d, %r12d
	cmove	%r13d, %r10d
.L978:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L981
	cmpb	$25, %al
	je	.L21279
.L981:
	testl	%r10d, %r10d
	je	.L977
	movl	2040(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L977:
	movl	%ebp, %eax
	jmp	.L19429
.L21279:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L985
	cmpb	$15, %al
	je	.L985
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L988:
	cmpl	$128, %esi
	je	.L990
	cmpl	$64, %esi
	jbe	.L991
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L990:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L994
	cmpb	$6, 16(%rax)
	jne	.L981
	testb	$2, 62(%rax)
	je	.L981
.L994:
	cmpl	$128, %esi
	je	.L996
	cmpl	$64, %esi
	jbe	.L997
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19428:
	testl	$1, %eax 
	je	.L996
	cmpl	$64, %esi
	jbe	.L999
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L996:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L981
.L999:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L996
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L996
	.p2align 6,,7
.L997:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19428
.L991:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L990
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L990
.L985:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L988
.L942:
	cmpq	$-1, %rax
	jne	.L940
	cmpq	$0, 7784(%rsp)
	jns	.L940
	jmp	.L941
.L873:
	leaq	(%r9,%r12), %r10
	leaq	(%r8,%rbx), %rsi
	cmpq	%rbx, %rsi
	leaq	1(%r10), %rax
	movq	%rsi, 7784(%rsp)
	cmovb	%rax, %r10
	xorq	%r12, %r9 
	notq	%r9
	xorq	%r10, %r12 
	movq	%r10, 7776(%rsp)
	andq	%r12, %r9
.L19424:
	shrq	$63, %r9
	movl	%r9d, 2016(%rsp)
	jmp	.L799
.L876:
	testq	%r8, %r8
	jne	.L877
	movq	%r9, %rax
	movq	$0, 7784(%rsp)
	negq	%rax
.L19419:
	movq	%rax, 7776(%rsp)
	movq	%rbx, %rdx
	movq	%r12, %rbp
	addq	7784(%rsp), %rdx
	addq	7776(%rsp), %rbp
	cmpq	%rbx, %rdx
	leaq	1(%rbp), %rdi
	movq	%rdx, 7784(%rsp)
	cmovb	%rdi, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 7776(%rsp)
	xorq	%r12, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L19424
.L877:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 7784(%rsp)
	notq	%rax
	jmp	.L19419
.L882:
	movq	%rbx, %r11
	movq	%rbx, %rcx
	movq	%r12, %rdi
	andl	$4294967295, %r11d
	shrq	$32, %rcx
	movq	%r12, %rdx
	movq	%r11, 18688(%rsp)
	movq	%rcx, 18696(%rsp)
	movq	%r8, %rsi
	movq	%r8, %r10
	movq	%r9, %r11
	movq	%r9, %rcx
	shrq	$32, %r10
	andl	$4294967295, %edi
	shrq	$32, %rdx
	andl	$4294967295, %esi
	andl	$4294967295, %r11d
	shrq	$32, %rcx
	movq	%r10, 18664(%rsp)
	leaq	7776(%rsp), %rbp
	movq	%rdi, 18704(%rsp)
	movq	%rdx, 18712(%rsp)
	movq	%rsi, 18656(%rsp)
	movq	%r11, 18672(%rsp)
	movq	%rcx, 18680(%rsp)
	movq	$0, 18592(%rsp)
	movq	$0, 18600(%rsp)
	movq	$0, 18608(%rsp)
	movq	$0, 18616(%rsp)
	movq	$0, 18624(%rsp)
	movq	$0, 18632(%rsp)
	movq	$0, 18640(%rsp)
	movq	$0, 18648(%rsp)
	xorl	%r10d, %r10d
.L894:
	movslq	%r10d,%rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	18688(%rsp,%rdi,8), %r11
	xorl	%edi, %edi
.L893:
	movq	%r11, %rcx
	leal	(%rsi,%r10), %eax
	incl	%esi
	imulq	18656(%rsp,%rdi), %rcx
	cltq
	addq	$8, %rdi
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	18592(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 18592(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %esi
	jle	.L893
	movslq	%r10d,%rsi
	incl	%r10d
	cmpl	$3, %r10d
	movq	%rdx, 18624(%rsp,%rsi,8)
	jle	.L894
	movq	18600(%rsp), %rdx
	movq	18616(%rsp), %r10
	salq	$32, %rdx
	salq	$32, %r10
	addq	18592(%rsp), %rdx
	addq	18608(%rsp), %r10
	movq	%rdx, 7784(%rsp)
	movq	%r10, (%rbp)
	movq	18648(%rsp), %rcx
	movq	18632(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	18640(%rsp), %rcx
	addq	18624(%rsp), %rax
	testq	%r12, %r12
	js	.L21280
.L897:
	testq	%r9, %r9
	js	.L21281
.L903:
	cmpq	$0, (%rbp)
	js	.L21282
	orq	%rcx, %rax
.L20952:
	setne	%bl
	movzbl	%bl, %eax
.L19423:
	movl	%eax, 2016(%rsp)
	jmp	.L799
.L21282:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L20952
.L21281:
	testq	%rbx, %rbx
	jne	.L904
	movq	%r12, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L905:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L903
.L904:
	movq	%rbx, %r8
	movq	%r12, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L905
	.p2align 6,,7
.L21280:
	testq	%r8, %r8
	jne	.L898
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L899:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L897
.L898:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L899
	.p2align 6,,7
.L918:
	testq	%r9, %r9
	jne	.L919
	cmpq	$1, %r8
	je	.L19422
.L919:
	cmpq	%r8, %rbx
	je	.L21283
.L920:
	leaq	7784(%rsp), %rdi
	leaq	7776(%rsp), %r11
	leaq	7736(%rsp), %rcx
	leaq	7728(%rsp), %rax
	movq	%rdi, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L19420:
	movl	3684(%rsp), %esi
	movl	%ebp, %edi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L19423
.L21283:
	cmpq	%r9, %r12
	jne	.L920
	testq	%r8, %r8
	jne	.L921
	testq	%r9, %r9
	je	.L920
.L921:
	movq	$1, 7784(%rsp)
.L19421:
	movq	$0, 7776(%rsp)
	jmp	.L799
	.p2align 6,,7
.L19422:
	movq	%rbx, 7784(%rsp)
	jmp	.L19425
.L924:
	testq	%r9, %r9
	jne	.L927
	testq	%r8, %r8
	jle	.L927
	testb	$4, 18(%r15)
	jne	.L927
	testb	$4, 18(%r14)
	jne	.L927
	testq	%r12, %r12
	jne	.L927
	testq	%rbx, %rbx
	js	.L927
	cmpl	$67, %ebp
	leaq	-1(%r8,%rbx), %r12
	cmove	%r12, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%r8
	movq	%rdx, 7784(%rsp)
	jmp	.L19421
	.p2align 6,,7
.L927:
	leaq	7736(%rsp), %rdx
	leaq	7728(%rsp), %r10
	leaq	7784(%rsp), %rsi
	movq	%rdx, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	7776(%rsp), %rax
	jmp	.L19420
.L915:
	testq	%r9, %r9
	jne	.L919
	testq	%r8, %r8
	jle	.L918
	testb	$4, 18(%r15)
	jne	.L918
	testb	$4, 18(%r14)
	jne	.L918
	testq	%r12, %r12
	jne	.L918
	testq	%rbx, %rbx
	js	.L918
	cmpl	$63, %ebp
	leaq	-1(%r8,%rbx), %r9
	cmove	%r9, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%r8
	movq	%rax, 7784(%rsp)
	jmp	.L19421
	.p2align 6,,7
.L929:
	movl	3684(%rsp), %eax
	testl	%eax, %eax
	je	.L930
	xorl	%eax, %eax
	cmpq	%r9, %r12
	jb	.L935
.L21154:
	cmpq	%r9, %r12
	je	.L21284
.L934:
	xorl	%ecx, %ecx
	movq	%rax, 7784(%rsp)
	cmpl	$78, %ebp
	sete	%cl
	cmpq	%rcx, 7784(%rsp)
	je	.L19422
	movq	%r8, 7784(%rsp)
	movq	%r9, 7776(%rsp)
	jmp	.L799
.L21284:
	cmpq	%r8, %rbx
	jae	.L934
.L935:
	movl	$1, %eax
	jmp	.L934
.L930:
	xorl	%eax, %eax
	cmpq	%r9, %r12
	jl	.L935
	jmp	.L21154
.L18929:
	movl	$.LC0, %edi
	movl	$1671, %esi
	movl	$.LC1, %edx
	jmp	.L20923
.L805:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	7784(%rsp), %r10
	leaq	7776(%rsp), %r9
	andl	$511, %esi
	cmpl	$0, 3684(%rsp)
	sete	%al
	testq	%r8, %r8
	js	.L21285
	cmpq	$127, %r8
	jle	.L821
	movq	$0, 7776(%rsp)
.L19410:
	movq	$0, 7784(%rsp)
.L822:
	cmpl	$64, %esi
	jbe	.L825
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L19411:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L820
	cmpl	$63, %esi
	jbe	.L829
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L19413:
	movq	%rax, (%r9)
.L820:
	movl	$1, 2040(%rsp)
	jmp	.L799
.L829:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r10), %rax
	orq	%rdx, %rax
.L19412:
	movq	%rax, (%r10)
	jmp	.L820
.L825:
	movq	(%r10), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L19411
.L821:
	cmpq	$63, %r8
	jle	.L823
	leal	-64(%r8), %ecx
	salq	%cl, %rbx
	movq	%rbx, 7776(%rsp)
	jmp	.L19410
.L823:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%rbx, %r11
	subl	%r8d, %eax
	salq	%cl, %r12
	movl	%eax, %ecx
	shrq	%cl, %r11
	movl	%r8d, %ecx
	movq	%r11, %rdi
	salq	%cl, %rbx
	shrq	$1, %rdi
	movq	%rbx, 7784(%rsp)
	orq	%rdi, %r12
	movq	%r12, 7776(%rsp)
	jmp	.L822
.L21285:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L807
	movq	%r12, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L808:
	cmpq	$127, %rdx
	jle	.L809
	movq	$0, (%r9)
	movq	$0, (%r10)
.L810:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L813
	movq	%rdi, (%r9)
	movq	%rdi, (%r10)
	jmp	.L820
.L813:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L820
	cmpq	$63, %rax
	jle	.L817
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L19413
.L817:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r10), %rax
	orq	%rdi, %rax
	jmp	.L19412
	.p2align 6,,7
.L809:
	cmpq	$63, %rdx
	jle	.L811
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r12
	movq	%r12, (%r10)
	jmp	.L810
.L811:
	movl	%edx, %ecx
	movq	%r12, %r8
	shrq	%cl, %r8
	shrq	%cl, %rbx
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r12
	leaq	(%r12,%r12), %rbp
	orq	%rbp, %rbx
	movq	%rbx, (%r10)
	jmp	.L810
	.p2align 6,,7
.L807:
	xorl	%edi, %edi
	jmp	.L808
.L804:
	negq	%r8
	jmp	.L805
.L832:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	7768(%rsp), %r11
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %r10
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%r10, %r8
	leaq	7760(%rsp), %r10
	testq	%r8, %r8
	js	.L21286
	cmpq	$127, %r8
	jle	.L849
	movq	$0, 7760(%rsp)
.L19415:
	movq	$0, 7768(%rsp)
.L850:
	cmpl	$64, %edi
	jbe	.L853
	movq	(%r10), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L19416:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L848
	cmpl	$63, %edi
	jbe	.L857
.L19418:
	leal	-64(%rdi), %ecx
	movq	$-1, %rdi
	salq	%cl, %rdi
	salq	%cl, %rdx
	notq	%rdi
	andq	(%r10), %rdi
	orq	%rdx, %rdi
	movq	%rdi, (%r10)
.L848:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	7744(%rsp), %rdi
	subq	%r8, %rsi
	leaq	7752(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L861
	movq	$0, 7744(%rsp)
	movq	$0, 7752(%rsp)
.L862:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L865
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L871:
	movq	7752(%rsp), %r8
	movq	7744(%rsp), %r12
	orq	7768(%rsp), %r8
	orq	7760(%rsp), %r12
	movq	%r8, 7784(%rsp)
	movq	%r12, 7776(%rsp)
	jmp	.L799
.L865:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L871
	cmpq	$63, %rax
	jle	.L869
	subl	%esi, %r9d
	movq	$-1, %rbx
	leal	-64(%r9), %ecx
	salq	%cl, %rbx
	salq	%cl, %rdx
	notq	%rbx
	andq	(%rdi), %rbx
	orq	%rdx, %rbx
	movq	%rbx, (%rdi)
	jmp	.L871
.L869:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L871
.L861:
	cmpq	$63, %rsi
	jle	.L863
	leal	-64(%rsi), %ecx
	movq	$0, 7744(%rsp)
	shrq	%cl, %r12
	movq	%r12, 7752(%rsp)
	jmp	.L862
.L863:
	movl	%esi, %ecx
	movq	%r12, %r11
	shrq	%cl, %r11
	shrq	%cl, %rbx
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r11, 7744(%rsp)
	salq	%cl, %r12
	leaq	(%r12,%r12), %rcx
	orq	%rcx, %rbx
	movq	%rbx, 7752(%rsp)
	jmp	.L862
.L857:
	movq	%rdx, (%r10)
	movq	$-1, %rax
	movl	%edi, %ecx
.L19417:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r11), %rax
	orq	%rdx, %rax
	movq	%rax, (%r11)
	jmp	.L848
.L853:
	movq	(%r11), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L19416
.L849:
	cmpq	$63, %r8
	jle	.L851
	leal	-64(%r8), %ecx
	movq	%rbx, %rsi
	salq	%cl, %rsi
	movq	%rsi, 7760(%rsp)
	jmp	.L19415
.L851:
	movl	%r8d, %ecx
	movq	%r12, %rbp
	movq	%rbx, %rdx
	salq	%cl, %rbp
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %rbp
	movq	%rbp, 7760(%rsp)
	movq	%rbx, %rbp
	salq	%cl, %rbp
	movq	%rbp, 7768(%rsp)
	jmp	.L850
.L21286:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L837
	movq	$0, 7760(%rsp)
	movq	$0, 7768(%rsp)
.L838:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L841
	movq	%rdx, (%r10)
	movq	%rdx, (%r11)
	jmp	.L848
.L841:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L848
	cmpq	$63, %rax
	jle	.L845
	subl	%esi, %edi
	jmp	.L19418
.L845:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r10)
	subl	%esi, %ecx
	jmp	.L19417
	.p2align 6,,7
.L837:
	cmpq	$63, %rsi
	jle	.L839
	leal	-64(%rsi), %ecx
	movq	%r12, %rax
	movq	$0, 7760(%rsp)
	shrq	%cl, %rax
.L19414:
	movq	%rax, 7768(%rsp)
	jmp	.L838
.L839:
	movl	%esi, %ecx
	movq	%r12, %rbp
	movq	%rbx, %rax
	shrq	%cl, %rbp
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbp, 7760(%rsp)
	movq	%r12, %rbp
	salq	%cl, %rbp
	movq	%rbp, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L19414
	.p2align 6,,7
.L831:
	negq	%r8
	jmp	.L832
.L801:
	xorq	%r8, %rbx 
	xorq	%r9, %r12 
	movq	%rbx, 7784(%rsp)
	jmp	.L19425
.L802:
	andq	%r8, %rbx
	movq	%rbx, 7784(%rsp)
.L19426:
	andq	%r9, %r12
	jmp	.L19425
.L803:
	notq	%r8
	notq	%r9
	andq	%r8, %rbx
	movq	%rbx, 7784(%rsp)
	jmp	.L19426
.L21275:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	2044(%rsp), %eax
	movl	%eax, 2044(%rsp)
	jmp	.L798
.L776:
	cmpl	$2, %edx
	jmp	.L19409
.L21267:
	movl	$77, %edi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	call	build1
	movq	%rax, %rdi
	call	fold
	testq	%rax, %rax
	je	.L756
	testb	$8, 18(%rax)
	jne	.L756
	jmp	.L750
	.p2align 6,,7
.L767:
	cmpl	$77, %eax
	jne	.L756
	movq	32(%r13), %rsi
	movq	%rbx, %rdi
	jmp	.L19408
.L761:
	movzbl	16(%rbx), %eax
	cmpb	$7, %al
	je	.L764
	cmpb	$8, %al
	je	.L21287
.L763:
	movq	8(%r13), %rsi
	movq	40(%r13), %rdx
	movl	$60, %edi
	movq	32(%r13), %rcx
	xorl	%eax, %eax
	call	build
	jmp	.L19407
.L21287:
	movq	8(%rbx), %rdx
	cmpb	$7, 16(%rdx)
	jne	.L763
.L764:
	movl	flag_unsafe_math_optimizations(%rip), %r11d
	testl	%r11d, %r11d
	je	.L756
	jmp	.L763
.L21266:
	movl	$77, %edi
	movq	%rbx, %rdx
	call	build1
	movq	%rax, %rdi
	call	fold
	testq	%rax, %rax
	je	.L737
	testb	$8, 18(%rax)
	jne	.L737
	jmp	.L731
	.p2align 6,,7
.L748:
	cmpl	$77, %eax
	jne	.L737
	movq	3688(%rsp), %rdi
	movq	32(%rbx), %rsi
	jmp	.L19406
.L742:
	movq	3688(%rsp), %rdi
	movzbl	16(%rdi), %eax
	cmpb	$7, %al
	je	.L745
	cmpb	$8, %al
	je	.L21288
.L744:
	movq	8(%rbx), %rsi
	movq	40(%rbx), %rdx
	movl	$60, %edi
	movq	32(%rbx), %rcx
	xorl	%eax, %eax
	call	build
	jmp	.L19405
.L21288:
	movq	8(%rdi), %r8
	cmpb	$7, 16(%r8)
	jne	.L744
.L745:
	movl	flag_unsafe_math_optimizations(%rip), %ecx
	testl	%ecx, %ecx
	je	.L737
	jmp	.L744
	.p2align 6,,7
.L727:
	movq	7792(%rsp), %rax
	testq	%rax, %rax
	je	.L728
	movq	%rax, 7800(%rsp)
	movq	$0, 7792(%rsp)
	jmp	.L728
.L666:
	movzbl	%dl, %ecx
	cmpl	%r10d, %ecx
	je	.L669
	movq	8(%r8), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$7, %al
	je	.L668
	cmpb	$8, %al
	je	.L21289
.L670:
	cmpl	$59, %r10d
	je	.L21290
.L671:
	cmpl	$60, %r10d
	je	.L21291
.L668:
	testb	$2, 17(%r8)
	je	.L724
	movq	%r8, 7808(%rsp)
	jmp	.L667
.L724:
	movq	%r8, %r13
	jmp	.L667
.L21291:
	cmpb	$59, %dl
	jne	.L668
.L669:
	movq	32(%r8), %rdx
	movq	40(%r8), %r13
	xorl	%ecx, %ecx
	movq	%r13, 2048(%rsp)
	cmpb	$60, 16(%r8)
	movl	$0, 2060(%rsp)
	movzbl	16(%rdx), %r10d
	sete	%cl
	xorl	%edi, %edi
	xorl	%esi, %esi
	subb	$25, %r10b
	cmpb	$1, %r10b
	ja	.L672
	movq	%rdx, 7800(%rsp)
	xorl	%edx, %edx
.L673:
	testq	%rdx, %rdx
	je	.L675
	testb	$2, 17(%rdx)
	je	.L675
	movq	%rdx, 7808(%rsp)
	xorl	%edx, %edx
.L676:
	testq	%rdx, %rdx
	je	.L680
	cmpq	$0, 2048(%rsp)
	cmove	%rdx, %r8
	movq	%r8, 2048(%rsp)
.L679:
	testl	%esi, %esi
	je	.L682
	movq	7800(%rsp), %r8
	movq	$0, 7800(%rsp)
	movq	%r8, 7792(%rsp)
.L682:
	testl	%edi, %edi
	je	.L683
	movq	7808(%rsp), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.L685
	movq	8(%rbx), %r13
	movq	global_trees(%rip), %r8
.L686:
	movzbl	16(%rbx), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L687
	movq	32(%rbx), %rcx
	cmpq	%r8, %rcx
	je	.L687
	movq	8(%rbx), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %eax
	movzbl	61(%rdi), %r9d
	andb	$-2, %al
	andb	$-2, %r9b
	cmpb	%r9b, %al
	jne	.L687
	movzbl	17(%rsi), %r10d
	movzbl	17(%rdi), %esi
	shrb	$5, %r10b
	shrb	$5, %sil
	andl	$1, %r10d
	andl	$1, %esi
	cmpl	%esi, %r10d
	jne	.L687
	movq	%rcx, %rbx
	jmp	.L686
.L687:
	movzbl	16(%rbx), %eax
	cmpl	$60, %eax
	je	.L696
	cmpl	$60, %eax
	ja	.L702
	subl	$25, %eax
	cmpl	$1, %eax
	ja	.L691
	testb	$32, 17(%r13)
	je	.L21292
.L691:
	movq	8(%rbx), %rsi
	movl	$77, %edi
	movq	%rbx, %rdx
	call	build1
.L19401:
	movq	%rax, %rdi
	call	fold
	movq	%r13, %rdi
	movq	%rax, %rsi
.L19402:
	call	convert
.L685:
	movq	%rax, 7808(%rsp)
.L683:
	movl	2060(%rsp), %ebx
	movq	2048(%rsp), %r13
	testl	%ebx, %ebx
	je	.L667
	xorl	%r13d, %r13d
	cmpq	$0, 2048(%rsp)
	je	.L667
	movq	2048(%rsp), %r13
	movq	global_trees(%rip), %r8
	movq	8(%r13), %rbx
.L706:
	movq	2048(%rsp), %rcx
	movzbl	16(%rcx), %r11d
	subb	$114, %r11b
	cmpb	$2, %r11b
	ja	.L707
	movq	%rcx, %rsi
	movq	32(%rcx), %rcx
	cmpq	%r8, %rcx
	je	.L707
	movq	8(%rsi), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %eax
	movzbl	61(%rdi), %r9d
	andb	$-2, %al
	andb	$-2, %r9b
	cmpb	%r9b, %al
	jne	.L707
	movzbl	17(%rsi), %r10d
	movzbl	17(%rdi), %esi
	shrb	$5, %r10b
	shrb	$5, %sil
	andl	$1, %r10d
	andl	$1, %esi
	cmpl	%esi, %r10d
	jne	.L707
	movq	%rcx, 2048(%rsp)
	jmp	.L706
.L707:
	movq	2048(%rsp), %r8
	movzbl	16(%r8), %eax
	cmpl	$60, %eax
	je	.L716
	cmpl	$60, %eax
	ja	.L722
	subl	$25, %eax
	cmpl	$1, %eax
	ja	.L711
	testb	$32, 17(%rbx)
	je	.L21293
.L711:
	movq	2048(%rsp), %rdx
	movl	$77, %edi
	movq	8(%rdx), %rsi
	call	build1
.L19403:
	movq	%rax, %rdi
	call	fold
	movq	%rbx, %rdi
	movq	%rax, %rsi
.L19404:
	call	convert
	movq	%rax, %r13
	jmp	.L667
.L21293:
	movq	2048(%rsp), %rdx
	movl	$77, %edi
	movq	%rbx, %rsi
	call	build1
	movq	%rax, %rdi
	call	fold
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L711
	testb	$8, 18(%rax)
	jne	.L711
	jmp	.L667
	.p2align 6,,7
.L722:
	cmpl	$77, %eax
	jne	.L711
	movq	%rbx, %rdi
	movq	2048(%rsp), %rbx
	movq	32(%rbx), %rsi
	jmp	.L19404
	.p2align 6,,7
.L716:
	movzbl	16(%rbx), %eax
	cmpb	$7, %al
	je	.L719
	cmpb	$8, %al
	je	.L21294
.L718:
	movq	2048(%rsp), %r13
	movl	$60, %edi
	xorl	%eax, %eax
	movq	8(%r13), %rsi
	movq	40(%r13), %rdx
	movq	32(%r13), %rcx
	call	build
	jmp	.L19403
.L21294:
	movq	8(%rbx), %rcx
	cmpb	$7, 16(%rcx)
	jne	.L718
.L719:
	movl	flag_unsafe_math_optimizations(%rip), %edi
	testl	%edi, %edi
	je	.L711
	jmp	.L718
.L21292:
	movl	$77, %edi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	call	build1
	movq	%rax, %rdi
	call	fold
	testq	%rax, %rax
	je	.L691
	testb	$8, 18(%rax)
	jne	.L691
	jmp	.L685
	.p2align 6,,7
.L702:
	cmpl	$77, %eax
	jne	.L691
	movq	32(%rbx), %rsi
	movq	%r13, %rdi
	jmp	.L19402
	.p2align 6,,7
.L696:
	movzbl	16(%r13), %eax
	cmpb	$7, %al
	je	.L699
	cmpb	$8, %al
	je	.L21295
.L698:
	movq	8(%rbx), %rsi
	movq	40(%rbx), %rdx
	movl	$60, %edi
	movq	32(%rbx), %rcx
	xorl	%eax, %eax
	call	build
	jmp	.L19401
.L21295:
	movq	8(%r13), %rcx
	cmpb	$7, 16(%rcx)
	jne	.L698
.L699:
	movl	flag_unsafe_math_optimizations(%rip), %edi
	testl	%edi, %edi
	je	.L691
	jmp	.L698
	.p2align 6,,7
.L680:
	movl	%ecx, 2060(%rsp)
	jmp	.L679
.L675:
	cmpq	$0, 2048(%rsp)
	je	.L676
	movq	2048(%rsp), %rax
	testb	$2, 17(%rax)
	je	.L676
	movq	%rax, 7808(%rsp)
	movl	%ecx, %edi
	movq	$0, 2048(%rsp)
	jmp	.L676
.L672:
	movq	2048(%rsp), %rbx
	movzbl	16(%rbx), %r11d
	subb	$25, %r11b
	cmpb	$1, %r11b
	ja	.L673
	movq	%rbx, 7800(%rsp)
	movl	%ecx, %esi
	movq	$0, 2048(%rsp)
	jmp	.L673
.L21290:
	cmpb	$60, %dl
	jne	.L671
	jmp	.L669
.L21289:
	movq	8(%rcx), %rdi
	cmpb	$7, 16(%rdi)
	jne	.L670
	jmp	.L668
.L21265:
	movq	2064(%rsp), %rdx
	movl	$77, %edi
	movq	%rbx, %rsi
	call	build1
	movq	%rax, %rdi
	call	fold
	testq	%rax, %rax
	je	.L648
	testb	$8, 18(%rax)
	jne	.L648
	jmp	.L642
	.p2align 6,,7
.L659:
	cmpl	$77, %eax
	jne	.L648
	movq	2064(%rsp), %rdx
	movq	%rbx, %rdi
	movq	32(%rdx), %rsi
	jmp	.L19400
.L653:
	movzbl	16(%rbx), %eax
	cmpb	$7, %al
	je	.L656
	cmpb	$8, %al
	je	.L21296
.L655:
	movq	2064(%rsp), %r13
	movl	$60, %edi
	xorl	%eax, %eax
	movq	8(%r13), %rsi
	movq	40(%r13), %rdx
	movq	32(%r13), %rcx
	call	build
	jmp	.L19399
.L21296:
	movq	8(%rbx), %rcx
	cmpb	$7, 16(%rcx)
	jne	.L655
.L656:
	movl	flag_unsafe_math_optimizations(%rip), %eax
	testl	%eax, %eax
	je	.L648
	jmp	.L655
.L21264:
	movl	$77, %edi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	call	build1
	movq	%rax, %rdi
	call	fold
	testq	%rax, %rax
	je	.L629
	testb	$8, 18(%rax)
	jne	.L629
	jmp	.L623
	.p2align 6,,7
.L640:
	cmpl	$77, %eax
	jne	.L629
	movq	32(%rbx), %rsi
	movq	%r13, %rdi
	jmp	.L19398
.L634:
	movzbl	16(%r13), %eax
	cmpb	$7, %al
	je	.L637
	cmpb	$8, %al
	je	.L21297
.L636:
	movq	8(%rbx), %rsi
	movq	40(%rbx), %rdx
	movl	$60, %edi
	movq	32(%rbx), %rcx
	xorl	%eax, %eax
	call	build
	jmp	.L19397
.L21297:
	movq	8(%r13), %rcx
	cmpb	$7, 16(%rcx)
	jne	.L636
.L637:
	movl	flag_unsafe_math_optimizations(%rip), %eax
	testl	%eax, %eax
	je	.L629
	jmp	.L636
	.p2align 6,,7
.L619:
	movq	7816(%rsp), %rax
	testq	%rax, %rax
	je	.L620
	movq	%rax, 7824(%rsp)
	movq	$0, 7816(%rsp)
	jmp	.L620
.L558:
	movzbl	%dl, %edi
	cmpl	%r10d, %edi
	je	.L561
	movq	8(%r8), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$7, %al
	je	.L560
	cmpb	$8, %al
	je	.L21298
.L562:
	cmpl	$59, %r10d
	je	.L21299
.L563:
	cmpl	$60, %r10d
	je	.L21300
.L560:
	testb	$2, 17(%r8)
	je	.L616
	movq	%r8, 7832(%rsp)
	jmp	.L559
.L616:
	movq	%r8, 2064(%rsp)
	jmp	.L559
.L21300:
	cmpb	$59, %dl
	jne	.L560
.L561:
	movq	32(%r8), %rdx
	xorl	%ecx, %ecx
	movq	40(%r8), %r13
	cmpb	$60, 16(%r8)
	movl	$0, 2076(%rsp)
	sete	%cl
	xorl	%edi, %edi
	xorl	%esi, %esi
	movzbl	16(%rdx), %r10d
	subb	$25, %r10b
	cmpb	$1, %r10b
	ja	.L564
	movq	%rdx, 7824(%rsp)
	xorl	%edx, %edx
.L565:
	testq	%rdx, %rdx
	je	.L567
	testb	$2, 17(%rdx)
	je	.L567
	movq	%rdx, 7832(%rsp)
	xorl	%edx, %edx
.L568:
	testq	%rdx, %rdx
	je	.L572
	testq	%r13, %r13
	movq	%r8, %r13
	cmove	%rdx, %r13
.L571:
	testl	%esi, %esi
	je	.L574
	movq	7824(%rsp), %r8
	movq	$0, 7824(%rsp)
	movq	%r8, 7816(%rsp)
.L574:
	testl	%edi, %edi
	je	.L575
	movq	7832(%rsp), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.L577
	movq	8(%rbx), %rdx
	movq	global_trees(%rip), %r8
	movq	%rdx, 3704(%rsp)
.L578:
	movzbl	16(%rbx), %r11d
	subb	$114, %r11b
	cmpb	$2, %r11b
	ja	.L579
	movq	32(%rbx), %rcx
	cmpq	%r8, %rcx
	je	.L579
	movq	8(%rbx), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %eax
	movzbl	61(%rdi), %r9d
	andb	$-2, %al
	andb	$-2, %r9b
	cmpb	%r9b, %al
	jne	.L579
	movzbl	17(%rsi), %r10d
	movzbl	17(%rdi), %esi
	shrb	$5, %r10b
	shrb	$5, %sil
	andl	$1, %r10d
	andl	$1, %esi
	cmpl	%esi, %r10d
	jne	.L579
	movq	%rcx, %rbx
	jmp	.L578
.L579:
	movzbl	16(%rbx), %eax
	cmpl	$60, %eax
	je	.L588
	cmpl	$60, %eax
	ja	.L594
	subl	$25, %eax
	cmpl	$1, %eax
	ja	.L583
	movq	3704(%rsp), %rsi
	testb	$32, 17(%rsi)
	je	.L21301
.L583:
	movq	8(%rbx), %rsi
	movl	$77, %edi
	movq	%rbx, %rdx
	call	build1
.L19393:
	movq	%rax, %rdi
	call	fold
	movq	3704(%rsp), %rdi
	movq	%rax, %rsi
.L19394:
	call	convert
.L577:
	movq	%rax, 7832(%rsp)
.L575:
	movl	2076(%rsp), %eax
	movq	%r13, 2064(%rsp)
	testl	%eax, %eax
	je	.L559
	testq	%r13, %r13
	movq	$0, 2064(%rsp)
	je	.L559
	movq	8(%r13), %rbx
	movq	global_trees(%rip), %r8
.L598:
	movzbl	16(%r13), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L599
	movq	32(%r13), %rcx
	cmpq	%r8, %rcx
	je	.L599
	movq	8(%r13), %rsi
	movq	8(%rcx), %rdi
	movzbl	61(%rsi), %r9d
	movzbl	61(%rdi), %r11d
	andb	$-2, %r9b
	andb	$-2, %r11b
	cmpb	%r11b, %r9b
	jne	.L599
	movzbl	17(%rsi), %eax
	movzbl	17(%rdi), %esi
	shrb	$5, %al
	shrb	$5, %sil
	andl	$1, %eax
	andl	$1, %esi
	cmpl	%esi, %eax
	jne	.L599
	movq	%rcx, %r13
	jmp	.L598
.L599:
	movzbl	16(%r13), %eax
	cmpl	$60, %eax
	je	.L608
	cmpl	$60, %eax
	ja	.L614
	subl	$25, %eax
	cmpl	$1, %eax
	ja	.L603
	testb	$32, 17(%rbx)
	je	.L21302
.L603:
	movq	8(%r13), %rsi
	movl	$77, %edi
	movq	%r13, %rdx
	call	build1
.L19395:
	movq	%rax, %rdi
	call	fold
	movq	%rbx, %rdi
	movq	%rax, %rsi
.L19396:
	call	convert
	movq	%rax, 2064(%rsp)
	jmp	.L559
.L21302:
	movl	$77, %edi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	call	build1
	movq	%rax, %rdi
	call	fold
	testq	%rax, %rax
	movq	%rax, 2064(%rsp)
	je	.L603
	testb	$8, 18(%rax)
	jne	.L603
	jmp	.L559
	.p2align 6,,7
.L614:
	cmpl	$77, %eax
	jne	.L603
	movq	32(%r13), %rsi
	movq	%rbx, %rdi
	jmp	.L19396
	.p2align 6,,7
.L608:
	movzbl	16(%rbx), %eax
	cmpb	$7, %al
	je	.L611
	cmpb	$8, %al
	je	.L21303
.L610:
	movq	8(%r13), %rsi
	movq	40(%r13), %rdx
	movl	$60, %edi
	movq	32(%r13), %rcx
	xorl	%eax, %eax
	call	build
	jmp	.L19395
.L21303:
	movq	8(%rbx), %r8
	cmpb	$7, 16(%r8)
	jne	.L610
.L611:
	movl	flag_unsafe_math_optimizations(%rip), %eax
	testl	%eax, %eax
	je	.L603
	jmp	.L610
.L21301:
	movl	$77, %edi
	movq	%rbx, %rdx
	call	build1
	movq	%rax, %rdi
	call	fold
	testq	%rax, %rax
	je	.L583
	testb	$8, 18(%rax)
	jne	.L583
	jmp	.L577
	.p2align 6,,7
.L594:
	cmpl	$77, %eax
	jne	.L583
	movq	3704(%rsp), %rdi
	movq	32(%rbx), %rsi
	jmp	.L19394
	.p2align 6,,7
.L588:
	movq	3704(%rsp), %rdi
	movzbl	16(%rdi), %eax
	cmpb	$7, %al
	je	.L591
	cmpb	$8, %al
	je	.L21304
.L590:
	movq	8(%rbx), %rsi
	movq	40(%rbx), %rdx
	movl	$60, %edi
	movq	32(%rbx), %rcx
	xorl	%eax, %eax
	call	build
	jmp	.L19393
.L21304:
	movq	8(%rdi), %rcx
	cmpb	$7, 16(%rcx)
	jne	.L590
.L591:
	movl	flag_unsafe_math_optimizations(%rip), %eax
	testl	%eax, %eax
	je	.L583
	jmp	.L590
	.p2align 6,,7
.L572:
	movl	%ecx, 2076(%rsp)
	jmp	.L571
.L567:
	testq	%r13, %r13
	je	.L568
	testb	$2, 17(%r13)
	je	.L568
	movq	%r13, 7832(%rsp)
	movl	%ecx, %edi
	xorl	%r13d, %r13d
	jmp	.L568
.L564:
	movzbl	16(%r13), %ebx
	subb	$25, %bl
	cmpb	$1, %bl
	ja	.L565
	movq	%r13, 7824(%rsp)
	movl	%ecx, %esi
	xorl	%r13d, %r13d
	jmp	.L565
.L21299:
	cmpb	$60, %dl
	jne	.L563
	jmp	.L561
.L21298:
	movq	8(%rcx), %r9
	cmpb	$7, 16(%r9)
	jne	.L562
	jmp	.L560
	.p2align 6,,7
.L21263:
	movq	8(%rdx), %r13
	cmpb	$7, 16(%r13)
	jne	.L551
.L552:
	movl	flag_unsafe_math_optimizations(%rip), %eax
	testl	%eax, %eax
	je	.L785
	cmpl	$61, %ebp
	jne	.L785
	jmp	.L551
.L21262:
	cmpl	$82, 3724(%rsp)
	jne	.L549
.L330:
	movq	32(%r15), %rbx
	movq	32(%r14), %r13
	movq	8(%rbx), %rdi
	movq	8(%r13), %r8
	movl	$0, 2100(%rsp)
	movzbl	17(%rdi), %r11d
	movzbl	17(%r8), %ecx
	shrb	$5, %r11b
	shrb	$5, %cl
	andl	$1, %r11d
	andl	$1, %ecx
	cmpl	%ecx, %r11d
	je	.L21305
.L333:
	movl	2100(%rsp), %eax
	testl	%eax, %eax
	je	.L549
	movq	32(%r15), %r8
	movq	8(%r8), %rax
	testb	$32, 17(%rax)
	je	.L549
	movq	40(%r15), %rdx
	movq	%rdx, 2088(%rsp)
	movq	40(%r14), %r13
	movq	%r13, 3712(%rsp)
	movq	3712(%rsp), %rbx
	movzbl	16(%rdx), %ecx
	movzbl	16(%rbx), %esi
	cmpl	$25, %ecx
	je	.L21306
.L398:
	cmpl	$60, %esi
	je	.L21307
	cmpl	$60, %ecx
	jne	.L549
	movq	2088(%rsp), %rdx
	movq	32(%rdx), %rdi
	movq	40(%rdx), %r13
	cmpb	$25, 16(%rdi)
	jne	.L549
	movq	32(%r15), %r11
	movq	8(%r11), %rbx
	movzwl	60(%rbx), %esi
	andl	$511, %esi
	call	compare_tree_int
	testl	%eax, %eax
	jne	.L549
	movq	3712(%rsp), %rbx
	movq	8(%r13), %r10
	movq	8(%rbx), %r8
	movzbl	17(%r10), %ecx
	movl	$0, 2080(%rsp)
	movzbl	17(%r8), %r9d
	shrb	$5, %cl
	andl	$1, %ecx
	shrb	$5, %r9b
	andl	$1, %r9d
	cmpl	%ecx, %r9d
	je	.L21308
.L480:
	movl	2080(%rsp), %eax
	testl	%eax, %eax
	je	.L549
	cmpl	$82, 3724(%rsp)
	movq	3736(%rsp), %rsi
	sete	%r14b
	movq	32(%r15), %rdx
	movq	3712(%rsp), %rcx
	movzbl	%r14b, %edi
	addl	$84, %edi
.L20920:
	xorl	%eax, %eax
	call	build
	jmp	.L20883
.L21308:
	movq	global_trees(%rip), %rcx
.L481:
	movzbl	16(%rbx), %esi
	subb	$114, %sil
	cmpb	$2, %sil
	ja	.L482
	movq	32(%rbx), %rdi
	cmpq	%rcx, %rdi
	je	.L482
	movq	8(%rbx), %r10
	movq	8(%rdi), %rdx
	movzbl	61(%r10), %r9d
	movzbl	61(%rdx), %r11d
	andb	$-2, %r9b
	andb	$-2, %r11b
	cmpb	%r11b, %r9b
	jne	.L482
	movq	%rdi, %rbx
	jmp	.L481
.L482:
	movq	global_trees(%rip), %rcx
.L486:
	movzbl	16(%r13), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L487
	movq	32(%r13), %rsi
	cmpq	%rcx, %rsi
	je	.L487
	movq	8(%r13), %rdx
	movq	8(%rsi), %r9
	movzbl	61(%rdx), %r11d
	movzbl	61(%r9), %r8d
	andb	$-2, %r11b
	andb	$-2, %r8b
	cmpb	%r8b, %r11b
	jne	.L487
	movq	%rsi, %r13
	jmp	.L486
.L487:
	movzbl	16(%rbx), %ecx
	cmpb	16(%r13), %cl
	je	.L21309
.L542:
	movl	$0, 2080(%rsp)
	jmp	.L480
.L21309:
	movq	8(%rbx), %rdx
	cmpb	$0, 16(%rdx)
	je	.L542
	movq	8(%r13), %rax
	cmpb	$0, 16(%rax)
	je	.L542
	movzbl	61(%rdx), %r10d
	movzbl	61(%rax), %esi
	andb	$-2, %r10b
	andb	$-2, %sil
	cmpb	%sil, %r10b
	jne	.L542
	cmpq	%r13, %rbx
	je	.L21310
.L493:
	testb	$2, 17(%rbx)
	je	.L495
	testb	$2, 17(%r13)
	je	.L495
	movzbl	16(%rbx), %eax
	cmpl	$27, %eax
	je	.L534
	cmpl	$27, %eax
	ja	.L517
	cmpl	$25, %eax
	je	.L497
	cmpl	$26, %eax
	je	.L499
.L495:
	xorl	%ecx, %ecx
	movl	$0, 2080(%rsp)
	testl	%ecx, %ecx
	jne	.L480
	movzbl	16(%rbx), %edx
	movzbl	%dl, %ecx
	movslq	%ecx,%rdi
	movsbl	tree_code_type(%rdi),%eax
	cmpl	$60, %eax
	je	.L523
	cmpl	$60, %eax
	jg	.L544
	cmpl	$49, %eax
	je	.L520
	cmpl	$50, %eax
	jne	.L542
.L523:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	jne	.L21311
.L524:
	movl	$0, 2080(%rsp)
	movzbl	16(%rbx), %eax
	cmpb	$59, %al
	je	.L526
	cmpb	$61, %al
	je	.L526
	cmpb	$78, %al
	je	.L526
	cmpb	$79, %al
	je	.L526
	cmpb	$86, %al
	je	.L526
	cmpb	$87, %al
	je	.L526
	cmpb	$88, %al
	je	.L526
	cmpb	$102, %al
	je	.L526
	cmpb	$101, %al
	jne	.L480
.L526:
	movq	32(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L480
	movq	40(%rbx), %rdi
	movq	32(%r13), %rsi
.L20950:
	xorl	%edx, %edx
	call	operand_equal_p
.L20948:
	testl	%eax, %eax
	je	.L480
.L19391:
	movl	$1, 2080(%rsp)
	jmp	.L480
.L21311:
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	movl	$1, 2080(%rsp)
	testl	%eax, %eax
	jne	.L480
	jmp	.L524
.L520:
	leal	-114(%rdx), %r8d
	cmpb	$1, %r8b
	ja	.L531
	movq	8(%rbx), %rsi
	movq	8(%r13), %rdx
	movl	$0, 2080(%rsp)
	movzbl	17(%rsi), %r9d
	movzbl	17(%rdx), %r11d
	shrb	$5, %r9b
	shrb	$5, %r11b
	andl	$1, %r9d
	andl	$1, %r11d
	cmpl	%r11d, %r9d
	jne	.L480
.L531:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
.L19392:
	movl	%eax, 2080(%rsp)
	jmp	.L480
.L544:
	cmpl	$101, %eax
	je	.L540
	cmpl	$114, %eax
	jne	.L542
	testb	$1, 17(%rbx)
	jne	.L542
	testb	$1, 17(%r13)
	jne	.L542
	leal	-39(%rcx), %eax
	cmpl	$5, %eax
	ja	.L542
	mov	%eax, %r10d
	jmp	*.L539(,%r10,8)
	.section	.rodata
	.align 8
	.align 4
.L539:
	.quad	.L534
	.quad	.L536
	.quad	.L531
	.quad	.L542
	.quad	.L534
	.quad	.L534
	.text
.L536:
	movl	$0, 2080(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L480
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L480
	movq	48(%rbx), %rdi
	movq	48(%r13), %rsi
	jmp	.L20950
.L534:
	movl	$0, 2080(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L480
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	jmp	.L20950
.L540:
	cmpb	$120, %dl
	jne	.L542
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	call	rtx_equal_p
	jmp	.L19392
.L499:
	testb	$4, 18(%rbx)
	movl	$0, 2080(%rsp)
	jne	.L480
	testb	$4, 18(%r13)
	jne	.L480
	leaq	32(%rbx), %rsi
	leaq	32(%r13), %rdi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L20949:
	seta	%bl
	setb	%r13b
	cmpb	%r13b, %bl
	jne	.L480
	jmp	.L19391
.L497:
	testb	$4, 18(%rbx)
	movl	$0, 2080(%rsp)
	jne	.L480
	testb	$4, 18(%r13)
	jne	.L480
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	tree_int_cst_equal
	jmp	.L20948
.L517:
	cmpl	$29, %eax
	je	.L512
	cmpl	$29, %eax
	jb	.L501
	cmpl	$121, %eax
	je	.L531
	jmp	.L495
.L501:
	testb	$4, 18(%rbx)
	jne	.L542
	testb	$4, 18(%r13)
	jne	.L542
	movq	32(%rbx), %r8
	movq	32(%r13), %rbx
	testq	%r8, %r8
	je	.L19391
	testq	%rbx, %rbx
	je	.L19391
.L509:
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r8, 72(%rsp)
	call	operand_equal_p
	movq	72(%rsp), %r8
	testl	%eax, %eax
	je	.L542
	movq	(%r8), %r8
	movq	(%rbx), %rbx
	testq	%r8, %r8
	je	.L19391
	testq	%rbx, %rbx
	jne	.L509
	jmp	.L19391
.L512:
	movl	$0, 2080(%rsp)
	movl	32(%rbx), %eax
	cmpl	32(%r13), %eax
	jne	.L480
	movq	40(%rbx), %rsi
	movq	40(%r13), %rdi
	movslq	%eax,%rcx
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	jmp	.L20949
.L21310:
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L493
	cmpb	$118, %cl
	je	.L19391
	testb	$1, 17(%r13)
	je	.L19391
	jmp	.L493
	.p2align 6,,7
.L21307:
	movq	3712(%rsp), %rbx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r13
	cmpb	$25, 16(%rdi)
	jne	.L549
	movq	32(%r15), %r8
	movq	8(%r8), %rcx
	movzwl	60(%rcx), %esi
	andl	$511, %esi
	call	compare_tree_int
	testl	%eax, %eax
	jne	.L549
	movq	2088(%rsp), %rbx
	movq	8(%r13), %rdx
	movq	8(%rbx), %r11
	movzbl	17(%rdx), %edi
	movl	$0, 2084(%rsp)
	movzbl	17(%r11), %esi
	shrb	$5, %dil
	andl	$1, %edi
	shrb	$5, %sil
	andl	$1, %esi
	cmpl	%edi, %esi
	je	.L21312
.L407:
	movl	2084(%rsp), %eax
	testl	%eax, %eax
	je	.L549
	cmpl	$82, 3724(%rsp)
	movq	3736(%rsp), %rsi
	setne	%r12b
	movq	32(%r15), %rdx
	movzbl	%r12b, %edi
	addl	$84, %edi
.L20890:
	movq	2088(%rsp), %rcx
	jmp	.L20920
.L21312:
	movq	global_trees(%rip), %rcx
.L408:
	movzbl	16(%rbx), %r9d
	subb	$114, %r9b
	cmpb	$2, %r9b
	ja	.L409
	movq	32(%rbx), %rdi
	cmpq	%rcx, %rdi
	je	.L409
	movq	8(%rbx), %rdx
	movq	8(%rdi), %rsi
	movzbl	61(%rdx), %r8d
	movzbl	61(%rsi), %r10d
	andb	$-2, %r8b
	andb	$-2, %r10b
	cmpb	%r10b, %r8b
	jne	.L409
	movq	%rdi, %rbx
	jmp	.L408
.L409:
	movq	global_trees(%rip), %rcx
.L413:
	movzbl	16(%r13), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L414
	movq	32(%r13), %rsi
	cmpq	%rcx, %rsi
	je	.L414
	movq	8(%r13), %r8
	movq	8(%rsi), %r10
	movzbl	61(%r8), %r9d
	movzbl	61(%r10), %r11d
	andb	$-2, %r9b
	andb	$-2, %r11b
	cmpb	%r11b, %r9b
	jne	.L414
	movq	%rsi, %r13
	jmp	.L413
.L414:
	movzbl	16(%rbx), %ecx
	cmpb	16(%r13), %cl
	je	.L21313
.L469:
	movl	$0, 2084(%rsp)
	jmp	.L407
.L21313:
	movq	8(%rbx), %rdx
	cmpb	$0, 16(%rdx)
	je	.L469
	movq	8(%r13), %rax
	cmpb	$0, 16(%rax)
	je	.L469
	movzbl	61(%rdx), %edi
	movzbl	61(%rax), %esi
	andb	$-2, %dil
	andb	$-2, %sil
	cmpb	%sil, %dil
	jne	.L469
	cmpq	%r13, %rbx
	je	.L21314
.L420:
	testb	$2, 17(%rbx)
	je	.L422
	testb	$2, 17(%r13)
	je	.L422
	movzbl	16(%rbx), %eax
	cmpl	$27, %eax
	je	.L461
	cmpl	$27, %eax
	ja	.L444
	cmpl	$25, %eax
	je	.L424
	cmpl	$26, %eax
	je	.L426
.L422:
	xorl	%edx, %edx
	movl	$0, 2084(%rsp)
	testl	%edx, %edx
	jne	.L407
	movzbl	16(%rbx), %edx
	movzbl	%dl, %ecx
	movslq	%ecx,%r11
	movsbl	tree_code_type(%r11),%eax
	cmpl	$60, %eax
	je	.L450
	cmpl	$60, %eax
	jg	.L471
	cmpl	$49, %eax
	je	.L447
	cmpl	$50, %eax
	jne	.L469
.L450:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	jne	.L21315
.L451:
	movl	$0, 2084(%rsp)
	movzbl	16(%rbx), %eax
	cmpb	$59, %al
	je	.L453
	cmpb	$61, %al
	je	.L453
	cmpb	$78, %al
	je	.L453
	cmpb	$79, %al
	je	.L453
	cmpb	$86, %al
	je	.L453
	cmpb	$87, %al
	je	.L453
	cmpb	$88, %al
	je	.L453
	cmpb	$102, %al
	je	.L453
	cmpb	$101, %al
	jne	.L407
.L453:
	movq	32(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L407
	movq	40(%rbx), %rdi
	movq	32(%r13), %rsi
.L20946:
	xorl	%edx, %edx
	call	operand_equal_p
.L20944:
	testl	%eax, %eax
	je	.L407
.L19389:
	movl	$1, 2084(%rsp)
	jmp	.L407
.L21315:
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	movl	$1, 2084(%rsp)
	testl	%eax, %eax
	jne	.L407
	jmp	.L451
.L447:
	leal	-114(%rdx), %ecx
	cmpb	$1, %cl
	ja	.L458
	movq	8(%rbx), %rsi
	movq	8(%r13), %r8
	movl	$0, 2084(%rsp)
	movzbl	17(%rsi), %r10d
	movzbl	17(%r8), %r9d
	shrb	$5, %r10b
	shrb	$5, %r9b
	andl	$1, %r10d
	andl	$1, %r9d
	cmpl	%r9d, %r10d
	jne	.L407
.L458:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
.L19390:
	movl	%eax, 2084(%rsp)
	jmp	.L407
.L471:
	cmpl	$101, %eax
	je	.L467
	cmpl	$114, %eax
	jne	.L469
	testb	$1, 17(%rbx)
	jne	.L469
	testb	$1, 17(%r13)
	jne	.L469
	leal	-39(%rcx), %eax
	cmpl	$5, %eax
	ja	.L469
	mov	%eax, %edi
	jmp	*.L466(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L466:
	.quad	.L461
	.quad	.L463
	.quad	.L458
	.quad	.L469
	.quad	.L461
	.quad	.L461
	.text
.L463:
	movl	$0, 2084(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L407
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L407
	movq	48(%rbx), %rdi
	movq	48(%r13), %rsi
	jmp	.L20946
.L461:
	movl	$0, 2084(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L407
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	jmp	.L20946
.L467:
	cmpb	$120, %dl
	jne	.L469
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	call	rtx_equal_p
	jmp	.L19390
.L426:
	testb	$4, 18(%rbx)
	movl	$0, 2084(%rsp)
	jne	.L407
	testb	$4, 18(%r13)
	jne	.L407
	leaq	32(%rbx), %rsi
	leaq	32(%r13), %rdi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L20945:
	seta	%bl
	setb	%r13b
	cmpb	%r13b, %bl
	jne	.L407
	jmp	.L19389
.L424:
	testb	$4, 18(%rbx)
	movl	$0, 2084(%rsp)
	jne	.L407
	testb	$4, 18(%r13)
	jne	.L407
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	tree_int_cst_equal
	jmp	.L20944
.L444:
	cmpl	$29, %eax
	je	.L439
	cmpl	$29, %eax
	jb	.L428
	cmpl	$121, %eax
	je	.L458
	jmp	.L422
.L428:
	testb	$4, 18(%rbx)
	jne	.L469
	testb	$4, 18(%r13)
	jne	.L469
	movq	32(%rbx), %r8
	movq	32(%r13), %rbx
	testq	%r8, %r8
	je	.L19389
	testq	%rbx, %rbx
	je	.L19389
.L436:
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r8, 72(%rsp)
	call	operand_equal_p
	movq	72(%rsp), %r8
	testl	%eax, %eax
	je	.L469
	movq	(%r8), %r8
	movq	(%rbx), %rbx
	testq	%r8, %r8
	je	.L19389
	testq	%rbx, %rbx
	jne	.L436
	jmp	.L19389
.L439:
	movl	$0, 2084(%rsp)
	movl	32(%rbx), %eax
	cmpl	32(%r13), %eax
	jne	.L407
	movq	40(%rbx), %rsi
	movq	40(%r13), %rdi
	movslq	%eax,%rcx
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	jmp	.L20945
.L21314:
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L420
	cmpb	$118, %cl
	je	.L19389
	testb	$1, 17(%r13)
	je	.L19389
	jmp	.L420
	.p2align 6,,7
.L21306:
	cmpl	$25, %esi
	jne	.L398
	cmpq	$0, 40(%rdx)
	jne	.L398
	cmpq	$0, 40(%rbx)
	jne	.L398
	movq	2088(%rsp), %rdi
	movzwl	60(%rax), %r9d
	movq	32(%rbx), %r10
	addq	32(%rdi), %r10
	andl	$511, %r9d
	cmpq	%r9, %r10
	jne	.L398
	cmpl	$82, 3724(%rsp)
	movq	3736(%rsp), %rsi
	movq	%r8, %rdx
	cmovne	%rbx, %rdi
	movq	%rdi, 2088(%rsp)
	movl	$84, %edi
	jmp	.L20890
	.p2align 6,,7
.L21305:
	movq	global_trees(%rip), %rcx
.L334:
	movzbl	16(%rbx), %r9d
	subb	$114, %r9b
	cmpb	$2, %r9b
	ja	.L335
	movq	32(%rbx), %rdi
	cmpq	%rcx, %rdi
	je	.L335
	movq	8(%rbx), %r11
	movq	8(%rdi), %rdx
	movzbl	61(%r11), %r10d
	movzbl	61(%rdx), %esi
	andb	$-2, %r10b
	andb	$-2, %sil
	cmpb	%sil, %r10b
	jne	.L335
	movq	%rdi, %rbx
	jmp	.L334
.L335:
	movq	global_trees(%rip), %rcx
.L339:
	movzbl	16(%r13), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L340
	movq	32(%r13), %rsi
	cmpq	%rcx, %rsi
	je	.L340
	movq	8(%r13), %rdx
	movq	8(%rsi), %r10
	movzbl	61(%rdx), %r9d
	movzbl	61(%r10), %edi
	andb	$-2, %r9b
	andb	$-2, %dil
	cmpb	%dil, %r9b
	jne	.L340
	movq	%rsi, %r13
	jmp	.L339
.L340:
	movzbl	16(%rbx), %ecx
	cmpb	16(%r13), %cl
	je	.L21316
.L395:
	movl	$0, 2100(%rsp)
	jmp	.L333
.L21316:
	movq	8(%rbx), %rdx
	cmpb	$0, 16(%rdx)
	je	.L395
	movq	8(%r13), %rax
	cmpb	$0, 16(%rax)
	je	.L395
	movzbl	61(%rdx), %r11d
	movzbl	61(%rax), %esi
	andb	$-2, %r11b
	andb	$-2, %sil
	cmpb	%sil, %r11b
	jne	.L395
	cmpq	%r13, %rbx
	je	.L21317
.L346:
	testb	$2, 17(%rbx)
	je	.L348
	testb	$2, 17(%r13)
	je	.L348
	movzbl	16(%rbx), %eax
	cmpl	$27, %eax
	je	.L387
	cmpl	$27, %eax
	ja	.L370
	cmpl	$25, %eax
	je	.L350
	cmpl	$26, %eax
	je	.L352
.L348:
	xorl	%ecx, %ecx
	movl	$0, 2100(%rsp)
	testl	%ecx, %ecx
	jne	.L333
	movzbl	16(%rbx), %edx
	movzbl	%dl, %ecx
	movslq	%ecx,%r8
	movsbl	tree_code_type(%r8),%eax
	cmpl	$60, %eax
	je	.L376
	cmpl	$60, %eax
	jg	.L397
	cmpl	$49, %eax
	je	.L373
	cmpl	$50, %eax
	jne	.L395
.L376:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	jne	.L21318
.L377:
	movl	$0, 2100(%rsp)
	movzbl	16(%rbx), %eax
	cmpb	$59, %al
	je	.L379
	cmpb	$61, %al
	je	.L379
	cmpb	$78, %al
	je	.L379
	cmpb	$79, %al
	je	.L379
	cmpb	$86, %al
	je	.L379
	cmpb	$87, %al
	je	.L379
	cmpb	$88, %al
	je	.L379
	cmpb	$102, %al
	je	.L379
	cmpb	$101, %al
	jne	.L333
.L379:
	movq	32(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L333
	movq	40(%rbx), %rdi
	movq	32(%r13), %rsi
.L20942:
	xorl	%edx, %edx
	call	operand_equal_p
.L20940:
	testl	%eax, %eax
	je	.L333
.L19387:
	movl	$1, 2100(%rsp)
	jmp	.L333
.L21318:
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	movl	$1, 2100(%rsp)
	testl	%eax, %eax
	jne	.L333
	jmp	.L377
.L373:
	leal	-114(%rdx), %edi
	cmpb	$1, %dil
	ja	.L384
	movq	8(%rbx), %rsi
	movq	8(%r13), %rdx
	movl	$0, 2100(%rsp)
	movzbl	17(%rsi), %r10d
	movzbl	17(%rdx), %r9d
	shrb	$5, %r10b
	shrb	$5, %r9b
	andl	$1, %r10d
	andl	$1, %r9d
	cmpl	%r9d, %r10d
	jne	.L333
.L384:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
.L19388:
	movl	%eax, 2100(%rsp)
	jmp	.L333
.L397:
	cmpl	$101, %eax
	je	.L393
	cmpl	$114, %eax
	jne	.L395
	testb	$1, 17(%rbx)
	jne	.L395
	testb	$1, 17(%r13)
	jne	.L395
	leal	-39(%rcx), %eax
	cmpl	$5, %eax
	ja	.L395
	mov	%eax, %r11d
	jmp	*.L392(,%r11,8)
	.section	.rodata
	.align 8
	.align 4
.L392:
	.quad	.L387
	.quad	.L389
	.quad	.L384
	.quad	.L395
	.quad	.L387
	.quad	.L387
	.text
.L389:
	movl	$0, 2100(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L333
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L333
	movq	48(%rbx), %rdi
	movq	48(%r13), %rsi
	jmp	.L20942
.L387:
	movl	$0, 2100(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L333
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	jmp	.L20942
.L393:
	cmpb	$120, %dl
	jne	.L395
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	call	rtx_equal_p
	jmp	.L19388
.L352:
	testb	$4, 18(%rbx)
	movl	$0, 2100(%rsp)
	jne	.L333
	testb	$4, 18(%r13)
	jne	.L333
	leaq	32(%rbx), %rsi
	leaq	32(%r13), %rdi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L20941:
	seta	%bl
	setb	%r13b
	cmpb	%r13b, %bl
	jne	.L333
	jmp	.L19387
.L350:
	testb	$4, 18(%rbx)
	movl	$0, 2100(%rsp)
	jne	.L333
	testb	$4, 18(%r13)
	jne	.L333
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	tree_int_cst_equal
	jmp	.L20940
.L370:
	cmpl	$29, %eax
	je	.L365
	cmpl	$29, %eax
	jb	.L354
	cmpl	$121, %eax
	je	.L384
	jmp	.L348
.L354:
	testb	$4, 18(%rbx)
	jne	.L395
	testb	$4, 18(%r13)
	jne	.L395
	movq	32(%rbx), %r8
	movq	32(%r13), %rbx
	testq	%r8, %r8
	je	.L19387
	testq	%rbx, %rbx
	je	.L19387
.L362:
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r8, 72(%rsp)
	call	operand_equal_p
	movq	72(%rsp), %r8
	testl	%eax, %eax
	je	.L395
	movq	(%r8), %r8
	movq	(%rbx), %rbx
	testq	%r8, %r8
	je	.L19387
	testq	%rbx, %rbx
	jne	.L362
	jmp	.L19387
.L365:
	movl	$0, 2100(%rsp)
	movl	32(%rbx), %eax
	cmpl	32(%r13), %eax
	jne	.L333
	movq	40(%rbx), %rsi
	movq	40(%r13), %rdi
	movslq	%eax,%rcx
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	jmp	.L20941
.L21317:
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L346
	cmpb	$118, %cl
	je	.L19387
	testb	$1, 17(%r13)
	je	.L19387
	jmp	.L346
	.p2align 6,,7
.L21261:
	cmpl	$82, %eax
	jne	.L331
	jmp	.L330
.L21260:
	cmpb	$61, %cl
	jne	.L328
	movq	32(%r15), %rbx
	movq	%rbx, 2120(%rsp)
	movq	40(%r15), %r8
	movq	%r8, 2104(%rsp)
	movq	%r8, %rbx
	movq	32(%r14), %r13
	movq	%r13, 3728(%rsp)
	movq	40(%r14), %r9
	movq	$0, 2112(%rsp)
	movq	%r9, 2128(%rsp)
	movq	%r9, %r13
	movq	8(%r9), %rdx
	movq	8(%r8), %rsi
	movl	$0, 2148(%rsp)
	movzbl	17(%rdx), %ecx
	movzbl	17(%rsi), %edi
	shrb	$5, %cl
	shrb	$5, %dil
	andl	$1, %ecx
	andl	$1, %edi
	cmpl	%ecx, %edi
	je	.L21319
.L42:
	movl	2148(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L40
	movq	2104(%rsp), %r13
	movq	2120(%rsp), %rax
	movq	3728(%rsp), %rcx
	movq	%r13, 2112(%rsp)
	movq	%rax, 2104(%rsp)
.L19386:
	movq	%rcx, 2120(%rsp)
.L107:
	cmpq	$0, 2112(%rsp)
	je	.L328
	movq	3736(%rsp), %rsi
	movq	2104(%rsp), %rdx
	movl	$59, %edi
	movq	2120(%rsp), %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	movq	2112(%rsp), %rcx
	movq	3736(%rsp), %rsi
	movl	$61, %edi
	movq	%rax, %rdx
.L20921:
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	jmp	.L20883
.L40:
	movq	2120(%rsp), %rbx
	movq	3728(%rsp), %r13
	movq	8(%rbx), %r11
	movq	8(%r13), %r10
	movl	$0, 2144(%rsp)
	movzbl	17(%r11), %edi
	movzbl	17(%r10), %r9d
	shrb	$5, %dil
	shrb	$5, %r9b
	andl	$1, %edi
	andl	$1, %r9d
	cmpl	%r9d, %edi
	je	.L21320
.L110:
	movl	2144(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L108
	movq	2120(%rsp), %rbx
	movq	2128(%rsp), %rdx
	movq	%rbx, 2112(%rsp)
.L19385:
	movq	%rdx, 2120(%rsp)
	jmp	.L107
.L108:
	movq	2120(%rsp), %rbx
	movq	2128(%rsp), %r13
	movq	8(%rbx), %r9
	movq	8(%r13), %r8
	movl	$0, 2140(%rsp)
	movzbl	17(%r9), %edi
	movzbl	17(%r8), %r11d
	shrb	$5, %dil
	shrb	$5, %r11b
	andl	$1, %edi
	andl	$1, %r11d
	cmpl	%r11d, %edi
	je	.L21321
.L178:
	movl	2140(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L176
	movq	2120(%rsp), %r13
	movq	3728(%rsp), %rdx
	movq	%r13, 2112(%rsp)
	jmp	.L19385
.L176:
	movq	2104(%rsp), %rbx
	movq	3728(%rsp), %r13
	movq	8(%rbx), %r11
	movq	8(%r13), %r10
	movl	$0, 2136(%rsp)
	movzbl	17(%r11), %edi
	movzbl	17(%r10), %r9d
	shrb	$5, %dil
	shrb	$5, %r9b
	andl	$1, %edi
	andl	$1, %r9d
	cmpl	%r9d, %edi
	je	.L21322
.L246:
	movl	2136(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L244
	movq	2104(%rsp), %rbx
	movq	2120(%rsp), %rax
	movq	2128(%rsp), %rcx
	movq	%rbx, 2112(%rsp)
	movq	%rax, 2104(%rsp)
	jmp	.L19386
.L244:
	movq	2104(%rsp), %rbx
	cmpb	$25, 16(%rbx)
	je	.L21323
.L19354:
	movq	$0, 2104(%rsp)
.L19357:
	movq	$0, 2120(%rsp)
	jmp	.L107
.L21323:
	movq	2128(%rsp), %rsi
	cmpb	$25, 16(%rsi)
	jne	.L19354
	cmpq	$0, 40(%rbx)
	jne	.L19354
	cmpq	$0, 40(%rsi)
	jne	.L19354
	movq	%rbx, %rdi
	movq	32(%rsi), %r13
	movq	32(%rbx), %rbx
	movq	%rbx, %r8
	movq	%r13, %r11
	negq	%r8
	cmpq	$-1, %rbx
	cmovg	%rbx, %r8
	negq	%r11
	cmpq	$-1, %r13
	cmovg	%r13, %r11
	cmpq	%r11, %r8
	jge	.L19355
	movq	%rdi, 2128(%rsp)
.L313:
	movq	%rbx, %rdi
	call	exact_log2_wide
	testl	%eax, %eax
	jle	.L19357
	movq	%r13, %rax
	cqto
	idivq	%rbx
	testq	%rdx, %rdx
	jne	.L19357
	movq	%rax, %rdi
	xorl	%esi, %esi
	call	build_int_2_wide
	movq	3728(%rsp), %rdx
	movq	3736(%rsp), %rsi
	movq	%rax, %rcx
	movl	$61, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	movq	2128(%rsp), %r10
	movq	%rax, 2104(%rsp)
	movq	%r10, 2112(%rsp)
	jmp	.L107
.L19355:
	movq	3728(%rsp), %r9
	movq	2120(%rsp), %rsi
	movq	%r13, %rdi
	movq	$0, 2104(%rsp)
	movq	%rbx, %r13
	movq	%rdi, %rbx
	movq	%rsi, 3728(%rsp)
	movq	%r9, 2120(%rsp)
	jmp	.L313
.L21322:
	movq	global_trees(%rip), %rcx
.L247:
	movzbl	16(%rbx), %esi
	subb	$114, %sil
	cmpb	$2, %sil
	ja	.L248
	movq	32(%rbx), %rdi
	cmpq	%rcx, %rdi
	je	.L248
	movq	8(%rbx), %r10
	movq	8(%rdi), %rdx
	movzbl	61(%r10), %r9d
	movzbl	61(%rdx), %r8d
	andb	$-2, %r9b
	andb	$-2, %r8b
	cmpb	%r8b, %r9b
	jne	.L248
	movq	%rdi, %rbx
	jmp	.L247
.L248:
	movq	global_trees(%rip), %rcx
.L252:
	movzbl	16(%r13), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L253
	movq	32(%r13), %rsi
	cmpq	%rcx, %rsi
	je	.L253
	movq	8(%r13), %rdx
	movq	8(%rsi), %r9
	movzbl	61(%rdx), %r8d
	movzbl	61(%r9), %r11d
	andb	$-2, %r8b
	andb	$-2, %r11b
	cmpb	%r11b, %r8b
	jne	.L253
	movq	%rsi, %r13
	jmp	.L252
.L253:
	movzbl	16(%rbx), %ecx
	cmpb	16(%r13), %cl
	je	.L21324
.L308:
	movl	$0, 2136(%rsp)
	jmp	.L246
.L21324:
	movq	8(%rbx), %rdx
	cmpb	$0, 16(%rdx)
	je	.L308
	movq	8(%r13), %rax
	cmpb	$0, 16(%rax)
	je	.L308
	movzbl	61(%rdx), %r10d
	movzbl	61(%rax), %esi
	andb	$-2, %r10b
	andb	$-2, %sil
	cmpb	%sil, %r10b
	jne	.L308
	cmpq	%r13, %rbx
	je	.L21325
.L259:
	testb	$2, 17(%rbx)
	je	.L261
	testb	$2, 17(%r13)
	je	.L261
	movzbl	16(%rbx), %eax
	cmpl	$27, %eax
	je	.L300
	cmpl	$27, %eax
	ja	.L283
	cmpl	$25, %eax
	je	.L263
	cmpl	$26, %eax
	je	.L265
.L261:
	xorl	%r11d, %r11d
	movl	$0, 2136(%rsp)
	testl	%r11d, %r11d
	jne	.L246
	movzbl	16(%rbx), %edx
	movzbl	%dl, %ecx
	movslq	%ecx,%rdi
	movsbl	tree_code_type(%rdi),%eax
	cmpl	$60, %eax
	je	.L289
	cmpl	$60, %eax
	jg	.L310
	cmpl	$49, %eax
	je	.L286
	cmpl	$50, %eax
	jne	.L308
.L289:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	jne	.L21326
.L290:
	movl	$0, 2136(%rsp)
	movzbl	16(%rbx), %eax
	cmpb	$59, %al
	je	.L292
	cmpb	$61, %al
	je	.L292
	cmpb	$78, %al
	je	.L292
	cmpb	$79, %al
	je	.L292
	cmpb	$86, %al
	je	.L292
	cmpb	$87, %al
	je	.L292
	cmpb	$88, %al
	je	.L292
	cmpb	$102, %al
	je	.L292
	cmpb	$101, %al
	jne	.L246
.L292:
	movq	32(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L246
	movq	40(%rbx), %rdi
	movq	32(%r13), %rsi
.L20938:
	xorl	%edx, %edx
	call	operand_equal_p
.L20936:
	testl	%eax, %eax
	je	.L246
.L19383:
	movl	$1, 2136(%rsp)
	jmp	.L246
.L21326:
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	movl	$1, 2136(%rsp)
	testl	%eax, %eax
	jne	.L246
	jmp	.L290
.L286:
	leal	-114(%rdx), %r8d
	cmpb	$1, %r8b
	ja	.L297
	movq	8(%rbx), %r10
	movq	8(%r13), %rdx
	movl	$0, 2136(%rsp)
	movzbl	17(%r10), %esi
	movzbl	17(%rdx), %r9d
	shrb	$5, %sil
	shrb	$5, %r9b
	andl	$1, %esi
	andl	$1, %r9d
	cmpl	%r9d, %esi
	jne	.L246
.L297:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
.L19384:
	movl	%eax, 2136(%rsp)
	jmp	.L246
.L310:
	cmpl	$101, %eax
	je	.L306
	cmpl	$114, %eax
	jne	.L308
	testb	$1, 17(%rbx)
	jne	.L308
	testb	$1, 17(%r13)
	jne	.L308
	leal	-39(%rcx), %eax
	cmpl	$5, %eax
	ja	.L308
	mov	%eax, %ecx
	jmp	*.L305(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L305:
	.quad	.L300
	.quad	.L302
	.quad	.L297
	.quad	.L308
	.quad	.L300
	.quad	.L300
	.text
.L302:
	movl	$0, 2136(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L246
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L246
	movq	48(%rbx), %rdi
	movq	48(%r13), %rsi
	jmp	.L20938
.L300:
	movl	$0, 2136(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L246
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	jmp	.L20938
.L306:
	cmpb	$120, %dl
	jne	.L308
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	call	rtx_equal_p
	jmp	.L19384
.L265:
	testb	$4, 18(%rbx)
	movl	$0, 2136(%rsp)
	jne	.L246
	testb	$4, 18(%r13)
	jne	.L246
	leaq	32(%rbx), %rsi
	leaq	32(%r13), %rdi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L20937:
	seta	%bl
	setb	%cl
	cmpb	%cl, %bl
	jne	.L246
	jmp	.L19383
.L263:
	testb	$4, 18(%rbx)
	movl	$0, 2136(%rsp)
	jne	.L246
	testb	$4, 18(%r13)
	jne	.L246
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	tree_int_cst_equal
	jmp	.L20936
.L283:
	cmpl	$29, %eax
	je	.L278
	cmpl	$29, %eax
	jb	.L267
	cmpl	$121, %eax
	je	.L297
	jmp	.L261
.L267:
	testb	$4, 18(%rbx)
	jne	.L308
	testb	$4, 18(%r13)
	jne	.L308
	movq	32(%rbx), %r8
	movq	32(%r13), %rbx
	testq	%r8, %r8
	je	.L19383
	testq	%rbx, %rbx
	je	.L19383
.L275:
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r8, 72(%rsp)
	call	operand_equal_p
	movq	72(%rsp), %r8
	testl	%eax, %eax
	je	.L308
	movq	(%r8), %r8
	movq	(%rbx), %rbx
	testq	%r8, %r8
	je	.L19383
	testq	%rbx, %rbx
	jne	.L275
	jmp	.L19383
.L278:
	movl	$0, 2136(%rsp)
	movl	32(%rbx), %eax
	cmpl	32(%r13), %eax
	jne	.L246
	movq	40(%rbx), %rsi
	movq	40(%r13), %rdi
	movslq	%eax,%rcx
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	jmp	.L20937
.L21325:
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L259
	cmpb	$118, %cl
	je	.L19383
	testb	$1, 17(%r13)
	je	.L19383
	jmp	.L259
	.p2align 6,,7
.L21321:
	movq	global_trees(%rip), %rcx
.L179:
	movzbl	16(%rbx), %esi
	subb	$114, %sil
	cmpb	$2, %sil
	ja	.L180
	movq	32(%rbx), %rdi
	cmpq	%rcx, %rdi
	je	.L180
	movq	8(%rbx), %r8
	movq	8(%rdi), %rdx
	movzbl	61(%r8), %r11d
	movzbl	61(%rdx), %r10d
	andb	$-2, %r11b
	andb	$-2, %r10b
	cmpb	%r10b, %r11b
	jne	.L180
	movq	%rdi, %rbx
	jmp	.L179
.L180:
	movq	global_trees(%rip), %rcx
.L184:
	movzbl	16(%r13), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L185
	movq	32(%r13), %rsi
	cmpq	%rcx, %rsi
	je	.L185
	movq	8(%r13), %rdx
	movq	8(%rsi), %r11
	movzbl	61(%rdx), %r10d
	movzbl	61(%r11), %r9d
	andb	$-2, %r10b
	andb	$-2, %r9b
	cmpb	%r9b, %r10b
	jne	.L185
	movq	%rsi, %r13
	jmp	.L184
.L185:
	movzbl	16(%rbx), %ecx
	cmpb	16(%r13), %cl
	je	.L21327
.L240:
	movl	$0, 2140(%rsp)
	jmp	.L178
.L21327:
	movq	8(%rbx), %rdx
	cmpb	$0, 16(%rdx)
	je	.L240
	movq	8(%r13), %rax
	cmpb	$0, 16(%rax)
	je	.L240
	movzbl	61(%rdx), %r8d
	movzbl	61(%rax), %esi
	andb	$-2, %r8b
	andb	$-2, %sil
	cmpb	%sil, %r8b
	jne	.L240
	cmpq	%r13, %rbx
	je	.L21328
.L191:
	testb	$2, 17(%rbx)
	je	.L193
	testb	$2, 17(%r13)
	je	.L193
	movzbl	16(%rbx), %eax
	cmpl	$27, %eax
	je	.L232
	cmpl	$27, %eax
	ja	.L215
	cmpl	$25, %eax
	je	.L195
	cmpl	$26, %eax
	je	.L197
.L193:
	xorl	%r9d, %r9d
	movl	$0, 2140(%rsp)
	testl	%r9d, %r9d
	jne	.L178
	movzbl	16(%rbx), %edx
	movzbl	%dl, %ecx
	movslq	%ecx,%rdi
	movsbl	tree_code_type(%rdi),%eax
	cmpl	$60, %eax
	je	.L221
	cmpl	$60, %eax
	jg	.L242
	cmpl	$49, %eax
	je	.L218
	cmpl	$50, %eax
	jne	.L240
.L221:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	jne	.L21329
.L222:
	movl	$0, 2140(%rsp)
	movzbl	16(%rbx), %eax
	cmpb	$59, %al
	je	.L224
	cmpb	$61, %al
	je	.L224
	cmpb	$78, %al
	je	.L224
	cmpb	$79, %al
	je	.L224
	cmpb	$86, %al
	je	.L224
	cmpb	$87, %al
	je	.L224
	cmpb	$88, %al
	je	.L224
	cmpb	$102, %al
	je	.L224
	cmpb	$101, %al
	jne	.L178
.L224:
	movq	32(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L178
	movq	40(%rbx), %rdi
	movq	32(%r13), %rsi
.L20934:
	xorl	%edx, %edx
	call	operand_equal_p
.L20932:
	testl	%eax, %eax
	je	.L178
.L19381:
	movl	$1, 2140(%rsp)
	jmp	.L178
.L21329:
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	movl	$1, 2140(%rsp)
	testl	%eax, %eax
	jne	.L178
	jmp	.L222
.L218:
	leal	-114(%rdx), %r10d
	cmpb	$1, %r10b
	ja	.L229
	movq	8(%rbx), %r8
	movq	8(%r13), %rdx
	movl	$0, 2140(%rsp)
	movzbl	17(%r8), %esi
	movzbl	17(%rdx), %r11d
	shrb	$5, %sil
	shrb	$5, %r11b
	andl	$1, %esi
	andl	$1, %r11d
	cmpl	%r11d, %esi
	jne	.L178
.L229:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
.L19382:
	movl	%eax, 2140(%rsp)
	jmp	.L178
.L242:
	cmpl	$101, %eax
	je	.L238
	cmpl	$114, %eax
	jne	.L240
	testb	$1, 17(%rbx)
	jne	.L240
	testb	$1, 17(%r13)
	jne	.L240
	leal	-39(%rcx), %eax
	cmpl	$5, %eax
	ja	.L240
	mov	%eax, %ecx
	jmp	*.L237(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L237:
	.quad	.L232
	.quad	.L234
	.quad	.L229
	.quad	.L240
	.quad	.L232
	.quad	.L232
	.text
.L234:
	movl	$0, 2140(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L178
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L178
	movq	48(%rbx), %rdi
	movq	48(%r13), %rsi
	jmp	.L20934
.L232:
	movl	$0, 2140(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L178
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	jmp	.L20934
.L238:
	cmpb	$120, %dl
	jne	.L240
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	call	rtx_equal_p
	jmp	.L19382
.L197:
	testb	$4, 18(%rbx)
	movl	$0, 2140(%rsp)
	jne	.L178
	testb	$4, 18(%r13)
	jne	.L178
	leaq	32(%rbx), %rsi
	leaq	32(%r13), %rdi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L20933:
	seta	%r13b
	setb	%cl
	cmpb	%cl, %r13b
	jne	.L178
	jmp	.L19381
.L195:
	testb	$4, 18(%rbx)
	movl	$0, 2140(%rsp)
	jne	.L178
	testb	$4, 18(%r13)
	jne	.L178
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	tree_int_cst_equal
	jmp	.L20932
.L215:
	cmpl	$29, %eax
	je	.L210
	cmpl	$29, %eax
	jb	.L199
	cmpl	$121, %eax
	je	.L229
	jmp	.L193
.L199:
	testb	$4, 18(%rbx)
	jne	.L240
	testb	$4, 18(%r13)
	jne	.L240
	movq	32(%rbx), %r8
	movq	32(%r13), %rbx
	testq	%r8, %r8
	je	.L19381
	testq	%rbx, %rbx
	je	.L19381
.L207:
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r8, 72(%rsp)
	call	operand_equal_p
	movq	72(%rsp), %r8
	testl	%eax, %eax
	je	.L240
	movq	(%r8), %r8
	movq	(%rbx), %rbx
	testq	%r8, %r8
	je	.L19381
	testq	%rbx, %rbx
	jne	.L207
	jmp	.L19381
.L210:
	movl	$0, 2140(%rsp)
	movl	32(%rbx), %eax
	cmpl	32(%r13), %eax
	jne	.L178
	movq	40(%rbx), %rsi
	movq	40(%r13), %rdi
	movslq	%eax,%rcx
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	jmp	.L20933
.L21328:
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L191
	cmpb	$118, %cl
	je	.L19381
	testb	$1, 17(%r13)
	je	.L19381
	jmp	.L191
	.p2align 6,,7
.L21320:
	movq	global_trees(%rip), %rcx
.L111:
	movzbl	16(%rbx), %esi
	subb	$114, %sil
	cmpb	$2, %sil
	ja	.L112
	movq	32(%rbx), %rdi
	cmpq	%rcx, %rdi
	je	.L112
	movq	8(%rbx), %r10
	movq	8(%rdi), %rdx
	movzbl	61(%r10), %r9d
	movzbl	61(%rdx), %r8d
	andb	$-2, %r9b
	andb	$-2, %r8b
	cmpb	%r8b, %r9b
	jne	.L112
	movq	%rdi, %rbx
	jmp	.L111
.L112:
	movq	global_trees(%rip), %rcx
.L116:
	movzbl	16(%r13), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L117
	movq	32(%r13), %rsi
	cmpq	%rcx, %rsi
	je	.L117
	movq	8(%r13), %rdx
	movq	8(%rsi), %r9
	movzbl	61(%rdx), %r8d
	movzbl	61(%r9), %r11d
	andb	$-2, %r8b
	andb	$-2, %r11b
	cmpb	%r11b, %r8b
	jne	.L117
	movq	%rsi, %r13
	jmp	.L116
.L117:
	movzbl	16(%rbx), %ecx
	cmpb	16(%r13), %cl
	je	.L21330
.L172:
	movl	$0, 2144(%rsp)
	jmp	.L110
.L21330:
	movq	8(%rbx), %rdx
	cmpb	$0, 16(%rdx)
	je	.L172
	movq	8(%r13), %rax
	cmpb	$0, 16(%rax)
	je	.L172
	movzbl	61(%rdx), %r10d
	movzbl	61(%rax), %esi
	andb	$-2, %r10b
	andb	$-2, %sil
	cmpb	%sil, %r10b
	jne	.L172
	cmpq	%r13, %rbx
	je	.L21331
.L123:
	testb	$2, 17(%rbx)
	je	.L125
	testb	$2, 17(%r13)
	je	.L125
	movzbl	16(%rbx), %eax
	cmpl	$27, %eax
	je	.L164
	cmpl	$27, %eax
	ja	.L147
	cmpl	$25, %eax
	je	.L127
	cmpl	$26, %eax
	je	.L129
.L125:
	xorl	%r11d, %r11d
	movl	$0, 2144(%rsp)
	testl	%r11d, %r11d
	jne	.L110
	movzbl	16(%rbx), %edx
	movzbl	%dl, %ecx
	movslq	%ecx,%rdi
	movsbl	tree_code_type(%rdi),%eax
	cmpl	$60, %eax
	je	.L153
	cmpl	$60, %eax
	jg	.L174
	cmpl	$49, %eax
	je	.L150
	cmpl	$50, %eax
	jne	.L172
.L153:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	jne	.L21332
.L154:
	movl	$0, 2144(%rsp)
	movzbl	16(%rbx), %eax
	cmpb	$59, %al
	je	.L156
	cmpb	$61, %al
	je	.L156
	cmpb	$78, %al
	je	.L156
	cmpb	$79, %al
	je	.L156
	cmpb	$86, %al
	je	.L156
	cmpb	$87, %al
	je	.L156
	cmpb	$88, %al
	je	.L156
	cmpb	$102, %al
	je	.L156
	cmpb	$101, %al
	jne	.L110
.L156:
	movq	32(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L110
	movq	40(%rbx), %rdi
	movq	32(%r13), %rsi
.L20930:
	xorl	%edx, %edx
	call	operand_equal_p
.L20928:
	testl	%eax, %eax
	je	.L110
.L19379:
	movl	$1, 2144(%rsp)
	jmp	.L110
.L21332:
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	movl	$1, 2144(%rsp)
	testl	%eax, %eax
	jne	.L110
	jmp	.L154
.L150:
	leal	-114(%rdx), %r8d
	cmpb	$1, %r8b
	ja	.L161
	movq	8(%rbx), %r10
	movq	8(%r13), %rdx
	movl	$0, 2144(%rsp)
	movzbl	17(%r10), %esi
	movzbl	17(%rdx), %r9d
	shrb	$5, %sil
	shrb	$5, %r9b
	andl	$1, %esi
	andl	$1, %r9d
	cmpl	%r9d, %esi
	jne	.L110
.L161:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
.L19380:
	movl	%eax, 2144(%rsp)
	jmp	.L110
.L174:
	cmpl	$101, %eax
	je	.L170
	cmpl	$114, %eax
	jne	.L172
	testb	$1, 17(%rbx)
	jne	.L172
	testb	$1, 17(%r13)
	jne	.L172
	leal	-39(%rcx), %eax
	cmpl	$5, %eax
	ja	.L172
	mov	%eax, %ecx
	jmp	*.L169(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L169:
	.quad	.L164
	.quad	.L166
	.quad	.L161
	.quad	.L172
	.quad	.L164
	.quad	.L164
	.text
.L166:
	movl	$0, 2144(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L110
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L110
	movq	48(%rbx), %rdi
	movq	48(%r13), %rsi
	jmp	.L20930
.L164:
	movl	$0, 2144(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L110
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	jmp	.L20930
.L170:
	cmpb	$120, %dl
	jne	.L172
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	call	rtx_equal_p
	jmp	.L19380
.L129:
	testb	$4, 18(%rbx)
	movl	$0, 2144(%rsp)
	jne	.L110
	testb	$4, 18(%r13)
	jne	.L110
	leaq	32(%rbx), %rsi
	leaq	32(%r13), %rdi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L20929:
	seta	%bl
	setb	%cl
	cmpb	%cl, %bl
	jne	.L110
	jmp	.L19379
.L127:
	testb	$4, 18(%rbx)
	movl	$0, 2144(%rsp)
	jne	.L110
	testb	$4, 18(%r13)
	jne	.L110
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	tree_int_cst_equal
	jmp	.L20928
.L147:
	cmpl	$29, %eax
	je	.L142
	cmpl	$29, %eax
	jb	.L131
	cmpl	$121, %eax
	je	.L161
	jmp	.L125
.L131:
	testb	$4, 18(%rbx)
	jne	.L172
	testb	$4, 18(%r13)
	jne	.L172
	movq	32(%rbx), %r8
	movq	32(%r13), %rbx
	testq	%r8, %r8
	je	.L19379
	testq	%rbx, %rbx
	je	.L19379
.L139:
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r8, 72(%rsp)
	call	operand_equal_p
	movq	72(%rsp), %r8
	testl	%eax, %eax
	je	.L172
	movq	(%r8), %r8
	movq	(%rbx), %rbx
	testq	%r8, %r8
	je	.L19379
	testq	%rbx, %rbx
	jne	.L139
	jmp	.L19379
.L142:
	movl	$0, 2144(%rsp)
	movl	32(%rbx), %eax
	cmpl	32(%r13), %eax
	jne	.L110
	movq	40(%rbx), %rsi
	movq	40(%r13), %rdi
	movslq	%eax,%rcx
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	jmp	.L20929
.L21331:
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L123
	cmpb	$118, %cl
	je	.L19379
	testb	$1, 17(%r13)
	je	.L19379
	jmp	.L123
	.p2align 6,,7
.L21319:
	movq	global_trees(%rip), %rcx
.L43:
	movzbl	16(%rbx), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L44
	movq	32(%rbx), %rdi
	cmpq	%rcx, %rdi
	je	.L44
	movq	8(%rbx), %r8
	movq	8(%rdi), %rdx
	movzbl	61(%r8), %esi
	movzbl	61(%rdx), %r11d
	andb	$-2, %sil
	andb	$-2, %r11b
	cmpb	%r11b, %sil
	jne	.L44
	movq	%rdi, %rbx
	jmp	.L43
.L44:
	movq	global_trees(%rip), %rcx
.L48:
	movzbl	16(%r13), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L49
	movq	32(%r13), %rsi
	cmpq	%rcx, %rsi
	je	.L49
	movq	8(%r13), %rdx
	movq	8(%rsi), %r11
	movzbl	61(%rdx), %r10d
	movzbl	61(%r11), %r9d
	andb	$-2, %r10b
	andb	$-2, %r9b
	cmpb	%r9b, %r10b
	jne	.L49
	movq	%rsi, %r13
	jmp	.L48
.L49:
	movzbl	16(%rbx), %ecx
	cmpb	16(%r13), %cl
	je	.L21333
.L104:
	movl	$0, 2148(%rsp)
	jmp	.L42
.L21333:
	movq	8(%rbx), %rdx
	cmpb	$0, 16(%rdx)
	je	.L104
	movq	8(%r13), %rax
	cmpb	$0, 16(%rax)
	je	.L104
	movzbl	61(%rdx), %r8d
	movzbl	61(%rax), %esi
	andb	$-2, %r8b
	andb	$-2, %sil
	cmpb	%sil, %r8b
	jne	.L104
	cmpq	%r13, %rbx
	je	.L21334
.L55:
	testb	$2, 17(%rbx)
	je	.L57
	testb	$2, 17(%r13)
	je	.L57
	movzbl	16(%rbx), %eax
	cmpl	$27, %eax
	je	.L96
	cmpl	$27, %eax
	ja	.L79
	cmpl	$25, %eax
	je	.L59
	cmpl	$26, %eax
	je	.L61
.L57:
	xorl	%r9d, %r9d
	movl	$0, 2148(%rsp)
	testl	%r9d, %r9d
	jne	.L42
	movzbl	16(%rbx), %edx
	movzbl	%dl, %ecx
	movslq	%ecx,%rdi
	movsbl	tree_code_type(%rdi),%eax
	cmpl	$60, %eax
	je	.L85
	cmpl	$60, %eax
	jg	.L106
	cmpl	$49, %eax
	je	.L82
	cmpl	$50, %eax
	jne	.L104
.L85:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	jne	.L21335
.L86:
	movl	$0, 2148(%rsp)
	movzbl	16(%rbx), %eax
	cmpb	$59, %al
	je	.L88
	cmpb	$61, %al
	je	.L88
	cmpb	$78, %al
	je	.L88
	cmpb	$79, %al
	je	.L88
	cmpb	$86, %al
	je	.L88
	cmpb	$87, %al
	je	.L88
	cmpb	$88, %al
	je	.L88
	cmpb	$102, %al
	je	.L88
	cmpb	$101, %al
	jne	.L42
.L88:
	movq	32(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L42
	movq	40(%rbx), %rdi
	movq	32(%r13), %rsi
.L20926:
	xorl	%edx, %edx
	call	operand_equal_p
.L20924:
	testl	%eax, %eax
	je	.L42
.L19377:
	movl	$1, 2148(%rsp)
	jmp	.L42
.L21335:
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	movl	$1, 2148(%rsp)
	testl	%eax, %eax
	jne	.L42
	jmp	.L86
.L82:
	leal	-114(%rdx), %r10d
	cmpb	$1, %r10b
	ja	.L93
	movq	8(%rbx), %r8
	movq	8(%r13), %rdx
	movl	$0, 2148(%rsp)
	movzbl	17(%r8), %esi
	movzbl	17(%rdx), %r11d
	shrb	$5, %sil
	shrb	$5, %r11b
	andl	$1, %esi
	andl	$1, %r11d
	cmpl	%r11d, %esi
	jne	.L42
.L93:
	movq	32(%rbx), %rdi
	movq	32(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
.L19378:
	movl	%eax, 2148(%rsp)
	jmp	.L42
.L106:
	cmpl	$101, %eax
	je	.L102
	cmpl	$114, %eax
	jne	.L104
	testb	$1, 17(%rbx)
	jne	.L104
	testb	$1, 17(%r13)
	jne	.L104
	leal	-39(%rcx), %eax
	cmpl	$5, %eax
	ja	.L104
	mov	%eax, %ecx
	jmp	*.L101(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L101:
	.quad	.L96
	.quad	.L98
	.quad	.L93
	.quad	.L104
	.quad	.L96
	.quad	.L96
	.text
.L98:
	movl	$0, 2148(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L42
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	call	operand_equal_p
	testl	%eax, %eax
	je	.L42
	movq	48(%rbx), %rdi
	movq	48(%r13), %rsi
	jmp	.L20926
.L96:
	movl	$0, 2148(%rsp)
	xorl	%edx, %edx
	movq	32(%r13), %rsi
	movq	32(%rbx), %rdi
	call	operand_equal_p
	testl	%eax, %eax
	je	.L42
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	jmp	.L20926
.L102:
	cmpb	$120, %dl
	jne	.L104
	movq	40(%rbx), %rdi
	movq	40(%r13), %rsi
	call	rtx_equal_p
	jmp	.L19378
.L61:
	testb	$4, 18(%rbx)
	movl	$0, 2148(%rsp)
	jne	.L42
	testb	$4, 18(%r13)
	jne	.L42
	leaq	32(%rbx), %rsi
	leaq	32(%r13), %rdi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L20925:
	seta	%r13b
	setb	%cl
	cmpb	%cl, %r13b
	jne	.L42
	jmp	.L19377
.L59:
	testb	$4, 18(%rbx)
	movl	$0, 2148(%rsp)
	jne	.L42
	testb	$4, 18(%r13)
	jne	.L42
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	tree_int_cst_equal
	jmp	.L20924
.L79:
	cmpl	$29, %eax
	je	.L74
	cmpl	$29, %eax
	jb	.L63
	cmpl	$121, %eax
	je	.L93
	jmp	.L57
.L63:
	testb	$4, 18(%rbx)
	jne	.L104
	testb	$4, 18(%r13)
	jne	.L104
	movq	32(%rbx), %r8
	movq	32(%r13), %rbx
	testq	%r8, %r8
	je	.L19377
	testq	%rbx, %rbx
	je	.L19377
.L71:
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r8, 72(%rsp)
	call	operand_equal_p
	movq	72(%rsp), %r8
	testl	%eax, %eax
	je	.L104
	movq	(%r8), %r8
	movq	(%rbx), %rbx
	testq	%r8, %r8
	je	.L19377
	testq	%rbx, %rbx
	jne	.L71
	jmp	.L19377
.L74:
	movl	$0, 2148(%rsp)
	movl	32(%rbx), %eax
	cmpl	32(%r13), %eax
	jne	.L42
	movq	40(%rbx), %rsi
	movq	40(%r13), %rdi
	movslq	%eax,%rcx
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	jmp	.L20925
.L21334:
	xorl	%eax, %eax
	testl	%eax, %eax
	jne	.L55
	cmpb	$118, %cl
	je	.L19377
	testb	$1, 17(%r13)
	je	.L19377
	jmp	.L55
	.p2align 6,,7
.L21259:
	movq	8(%rbx), %r11
	cmpb	$7, 16(%r11)
	jne	.L38
.L37:
	movl	flag_unsafe_math_optimizations(%rip), %edx
	testl	%edx, %edx
	jne	.L21336
.L319:
	cmpb	$26, 16(%r14)
	jne	.L328
	movq	32(%r14), %rdi
	movq	dconst0(%rip), %rbx
	movq	dconst0+8(%rip), %r13
	movq	dconst0+16(%rip), %rcx
	movq	%rdi, (%rsp)
	movq	40(%r14), %r8
	movq	%r8, 8(%rsp)
	movq	48(%r14), %r11
	movq	%rcx, 40(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r13, 32(%rsp)
	movq	%r11, 16(%rsp)
	call	ereal_cmp
	testl	%eax, %eax
	jne	.L328
	movq	32(%r14), %r10
	movq	%r10, (%rsp)
	movq	40(%r14), %rsi
	movq	%rsi, 8(%rsp)
	movq	48(%r14), %r9
	movq	%r9, 16(%rsp)
	call	ereal_isneg
	testl	%eax, %eax
	je	.L328
.L1106:
	movq	3736(%rsp), %rdi
	movq	%r15, %rsi
.L21228:
	call	convert
	movq	%rax, %r12
	movzbl	16(%rax), %eax
	cmpb	$116, %al
	je	.L1
	cmpb	$25, %al
	je	.L1
	cmpb	$26, %al
	je	.L1
	cmpb	$29, %al
	je	.L1
	cmpb	$121, %al
	je	.L1
	movq	8(%r12), %rsi
	movl	$116, %edi
	movq	%r12, %rdx
	call	build1
	movzbl	17(%r12), %r11d
	movzbl	17(%rax), %ebx
	andb	$2, %r11b
	andb	$-3, %bl
	orb	%r11b, %bl
	movb	%bl, 17(%rax)
	jmp	.L20883
.L21336:
	movq	%r14, %rdi
	call	real_zerop
	testl	%eax, %eax
	je	.L319
	jmp	.L1106
.L21258:
	movq	3736(%rsp), %rsi
	movl	$60, %edi
	movq	%r14, %rdx
.L21089:
	movq	32(%r15), %rcx
	jmp	.L20921
.L21257:
	movq	3736(%rsp), %rsi
	movq	32(%r14), %rcx
	movl	$60, %edi
	movq	%r15, %rdx
	jmp	.L20921
.L1098:
	movq	%r15, %rdi
	call	integer_zerop
	testl	%eax, %eax
	jne	.L21065
.L1100:
	cmpb	$25, 16(%r15)
	je	.L21337
.L1101:
	cmpb	$25, 16(%r14)
	je	.L21338
.L1105:
	movq	%r14, %rdi
	call	integer_zerop
	testl	%eax, %eax
	je	.L1110
	movq	3736(%rsp), %rdi
	movq	%r14, %rsi
	call	convert
	testb	$1, 17(%r15)
	movq	%rax, %rbx
	jne	.L21070
.L1117:
	movzbl	16(%rbx), %eax
	cmpb	$116, %al
	je	.L16660
	cmpb	$25, %al
	je	.L16660
	cmpb	$26, %al
	je	.L16660
	cmpb	$29, %al
	je	.L16660
	cmpb	$121, %al
	je	.L16660
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$116, %edi
	call	build1
	movzbl	17(%rbx), %ebp
	movzbl	17(%rax), %r10d
	movq	%rax, %rbx
	andb	$2, %bpl
	andb	$-3, %r10b
	orb	%bpl, %r10b
	movb	%r10b, 17(%rax)
.L16660:
	movq	%rbx, %r12
	jmp	.L1
.L21070:
	movl	$47, %edi
	movq	3736(%rsp), %rsi
	movq	%r15, %rdx
.L21071:
	movq	%rbx, %rcx
	jmp	.L20920
.L1110:
	movq	%r15, %rdi
	call	integer_zerop
	testl	%eax, %eax
	jne	.L21339
.L1122:
	movl	optimize(%rip), %r12d
	testl	%r12d, %r12d
	je	.L20884
	movzbl	16(%r15), %r13d
	cmpl	%ebp, %r13d
	jne	.L20884
	movq	40(%r15), %r12
	testb	$1, 17(%r12)
	jne	.L20884
	testb	$1, 17(%r14)
	jne	.L20884
	movzbl	16(%r12), %r15d
	movl	%r15d, 2012(%rsp)
	cmpl	$88, %r15d
	movzbl	16(%r14), %r8d
	movl	%r8d, 2008(%rsp)
	je	.L21340
.L1129:
	cmpl	$88, 2008(%rsp)
	je	.L21341
.L1130:
	movslq	2012(%rsp),%rsi
	cmpb	$60, tree_code_type(%rsi)
	jne	.L20884
	movslq	2008(%rsp),%rdi
	cmpb	$60, tree_code_type(%rdi)
	jne	.L20884
	cmpl	$93, %ebp
	je	.L1135
	cmpl	$91, %ebp
	movl	$94, 2004(%rsp)
	je	.L1135
.L1134:
	movq	40(%r12), %r9
	movq	32(%r12), %rbx
	cmpl	$1, ix86_branch_cost(%rip)
	movq	%r9, 544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 1888(%rsp)
	movq	40(%r14), %rax
	movq	%rax, 536(%rsp)
	jle	.L1136
	movq	8(%rcx), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$7, %al
	je	.L1136
	cmpb	$8, %al
	je	.L21342
.L1137:
	movq	1888(%rsp), %rcx
	movzbl	16(%rcx), %r11d
	subb	$114, %r11b
	cmpb	$1, %r11b
	ja	.L1139
	movq	32(%rcx), %r15
	movzbl	61(%rdx), %ebp
	movq	8(%r15), %r13
	andb	$-2, %bpl
	movzbl	61(%r13), %r10d
	andb	$-2, %r10b
	cmpb	%r10b, %bpl
	je	.L1142
.L1139:
	movzbq	16(%rcx), %r10
	xorl	%esi, %esi
	movzbl	tree_code_type(%r10), %eax
	cmpb	$99, %al
	je	.L1144
	cmpb	$100, %al
	je	.L21343
.L1145:
	testl	%esi, %esi
	je	.L1136
	movq	536(%rsp), %rcx
	movzbl	16(%rcx), %ebp
	subb	$114, %bpl
	cmpb	$1, %bpl
	ja	.L1147
	movq	32(%rcx), %r8
	movq	8(%rcx), %rsi
	movq	8(%r8), %rdx
	movzbl	61(%rsi), %r15d
	movzbl	61(%rdx), %r13d
	andb	$-2, %r15b
	andb	$-2, %r13b
	cmpb	%r13b, %r15b
	je	.L1150
.L1147:
	movzbq	16(%rcx), %r15
	xorl	%esi, %esi
	movzbl	tree_code_type(%r15), %eax
	cmpb	$99, %al
	je	.L1152
	cmpb	$100, %al
	je	.L21344
.L1153:
	testl	%esi, %esi
	jne	.L21345
.L1136:
	movl	2012(%rsp), %eax
	subl	$101, %eax
	cmpl	$1, %eax
	ja	.L20884
	movl	2008(%rsp), %eax
	subl	$101, %eax
	cmpl	$1, %eax
	ja	.L20884
	movl	$0, 7700(%rsp)
	movq	$0, 1992(%rsp)
	movq	8(%rbx), %r14
	movzbl	16(%r14), %eax
	cmpb	$6, %al
	je	.L1156
	cmpb	$10, %al
	je	.L1156
	cmpb	$11, %al
	je	.L1156
	cmpb	$12, %al
	movq	$0, 3656(%rsp)
	je	.L1156
.L1157:
	movq	544(%rsp), %rbx
	movq	$0, 1944(%rsp)
	movq	8(%rbx), %r9
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L1793
	cmpb	$10, %al
	je	.L1793
	cmpb	$11, %al
	je	.L1793
	cmpb	$12, %al
	movq	$0, 3648(%rsp)
	je	.L1793
.L1794:
	movq	1888(%rsp), %rcx
	movq	$0, 1896(%rsp)
	movq	8(%rcx), %r9
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L2430
	cmpb	$10, %al
	je	.L2430
	cmpb	$11, %al
	je	.L2430
	cmpb	$12, %al
	movq	$0, 1784(%rsp)
	je	.L2430
.L2431:
	movq	536(%rsp), %rbx
	movq	$0, 1832(%rsp)
	movq	8(%rbx), %r9
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L3067
	cmpb	$10, %al
	je	.L3067
	cmpb	$11, %al
	je	.L3067
	xorl	%r13d, %r13d
	cmpb	$12, %al
	je	.L3067
.L3068:
	movl	7700(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L20884
	cmpq	$0, 3656(%rsp)
	je	.L20884
	cmpq	$0, 1784(%rsp)
	je	.L20884
	movq	3656(%rsp), %rbx
	movq	1784(%rsp), %rax
	xorl	%r12d, %r12d
	movq	8(%rax), %rbp
	movq	8(%rbx), %rcx
	movzbl	17(%rbp), %r11d
	movzbl	17(%rcx), %edi
	xorl	%ebp, %ebp
	shrb	$5, %dil
	shrb	$5, %r11b
	andl	$1, %edi
	andl	$1, %r11d
	cmpl	%r11d, %edi
	je	.L21346
.L3707:
	testl	%ebp, %ebp
	je	.L20884
	movq	544(%rsp), %rdi
	cmpb	$25, 16(%rdi)
	je	.L21347
.L3772:
	cmpq	$0, 3648(%rsp)
	je	.L20884
	testq	%r13, %r13
	je	.L20884
	movq	3648(%rsp), %rbx
	movq	8(%r13), %rdx
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	movq	8(%rbx), %r15
	movzbl	17(%rdx), %ecx
	movzbl	17(%r15), %r8d
	shrb	$5, %cl
	andl	$1, %ecx
	shrb	$5, %r8b
	andl	$1, %r8d
	cmpl	%ecx, %r8d
	je	.L21348
.L3777:
	testl	%ebp, %ebp
	je	.L20884
	movq	$0, 536(%rsp)
	movq	$0, 544(%rsp)
.L3773:
	xorl	%ebx, %ebx
	cmpl	$93, 2004(%rsp)
	setne	%bl
	addl	$101, %ebx
	cmpl	%ebx, 2012(%rsp)
	movl	%ebx, 1780(%rsp)
	je	.L3845
	cmpq	$0, 544(%rsp)
	je	.L20884
	movq	544(%rsp), %rdi
	call	integer_zerop
	testl	%eax, %eax
	je	.L20884
	movq	7688(%rsp), %rdi
	call	integer_pow2p
	testl	%eax, %eax
	je	.L20884
	movq	7688(%rsp), %rax
	movl	$1, 7704(%rsp)
	movq	%rax, 544(%rsp)
.L3845:
	movl	1780(%rsp), %edx
	cmpl	%edx, 2008(%rsp)
	je	.L3848
	cmpq	$0, 536(%rsp)
	je	.L20884
	movq	536(%rsp), %rdi
	call	integer_zerop
	testl	%eax, %eax
	je	.L20884
	movq	7336(%rsp), %rdi
	call	integer_pow2p
	testl	%eax, %eax
	je	.L20884
	movq	7336(%rsp), %r9
	movl	$1, 7344(%rsp)
	movq	%r9, 536(%rsp)
.L3848:
	movq	7712(%rsp), %r12
	movq	7352(%rsp), %rsi
	movq	3656(%rsp), %r13
	movq	7360(%rsp), %rdi
	movl	word_mode(%rip), %ecx
	movl	7700(%rsp), %r8d
	cmpq	%r12, %rsi
	cmovg	%r12, %rsi
	movq	8(%r13), %r10
	addq	7352(%rsp), %rdi
	addq	7720(%rsp), %r12
	movl	%esi, %ebx
	movl	64(%r10), %edx
	cmpq	%r12, %rdi
	cmovl	%r12, %rdi
	subl	%esi, %edi
	call	get_best_mode
	testl	%eax, %eax
	je	.L20884
	cltq
	movslq	%ebx,%r14
	movl	$1, %esi
	movzwq	mode_bitsize(%rax,%rax), %rcx
	movl	$82, %r12d
	movq	%rcx, 3624(%rsp)
	movl	3624(%rsp), %edi
	negq	%rcx
	andq	%rcx, %r14
	movq	%r14, 3616(%rsp)
	call	type_for_size
	movq	7352(%rsp), %rsi
	movq	7712(%rsp), %r11
	movq	%rax, 3592(%rsp)
	movq	3592(%rsp), %rdi
	subq	%r14, %rsi
	subq	%r14, %r11
	movq	%rsi, 1008(%rsp)
	movq	%r11, 3640(%rsp)
	movq	7688(%rsp), %rsi
	call	convert
	cmpq	$0, size_htab.0(%rip)
	movq	sizetype_tab(%rip), %rbx
	movq	%rax, %r14
	je	.L21349
.L3855:
	movq	new_const.1(%rip), %rbp
	movq	3640(%rsp), %rdi
	xorl	%r10d, %r10d
	movzbl	16(%rbp), %eax
	movq	%rdi, %rcx
	movq	%rdi, 32(%rbp)
	notq	%rcx
	movq	%rbx, 8(%rbp)
	movq	%rbp, %r11
	shrq	$63, %rcx
	movq	%rbp, %rdi
	movq	%rbp, %rdx
	decq	%rcx
	cmpb	$26, %al
	movq	%rcx, 40(%rbp)
	je	.L3859
	cmpb	$25, %al
	je	.L21350
.L3859:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebp
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bpl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21351
	movq	%rdx, 1768(%rsp)
.L3881:
	movq	global_trees(%rip), %rsi
.L3884:
	movzbl	16(%r14), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L3885
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L3885
	movq	8(%r14), %rbx
	movq	8(%rcx), %r15
	movzbl	61(%rbx), %edi
	movzbl	61(%r15), %r11d
	andb	$-2, %dil
	andb	$-2, %r11b
	cmpb	%r11b, %dil
	jne	.L3885
	movq	%rcx, %r14
	jmp	.L3884
.L3885:
	movq	global_trees(%rip), %rsi
.L3889:
	movq	1768(%rsp), %rdi
	movzbl	16(%rdi), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L3890
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L3890
	movq	8(%rdi), %rdx
	movq	8(%rcx), %rbp
	movzbl	61(%rdx), %r9d
	movzbl	61(%rbp), %r8d
	andb	$-2, %r9b
	andb	$-2, %r8b
	cmpb	%r8b, %r9b
	jne	.L3890
	movq	%rcx, 1768(%rsp)
	jmp	.L3889
.L3890:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21352
	cmpb	$26, %al
	je	.L21353
	cmpb	$27, %al
	je	.L21354
	xorl	%ebx, %ebx
.L4101:
	movq	7336(%rsp), %rsi
	movq	3592(%rsp), %rdi
	movq	%rbx, 7688(%rsp)
	movl	$82, %r12d
	call	convert
	cmpq	$0, size_htab.0(%rip)
	movq	sizetype_tab(%rip), %rbx
	movq	%rax, %r14
	je	.L21355
.L4151:
	movq	new_const.1(%rip), %r8
	movq	1008(%rsp), %r9
	xorl	%r10d, %r10d
	movzbl	16(%r8), %eax
	movq	%r9, %rcx
	movq	%r9, 32(%r8)
	notq	%rcx
	movq	%rbx, 8(%r8)
	movq	%r8, %rdi
	shrq	$63, %rcx
	movq	%r8, %r11
	movq	%r8, %rdx
	decq	%rcx
	cmpb	$26, %al
	movq	%rcx, 40(%r8)
	je	.L4155
	cmpb	$25, %al
	je	.L21356
.L4155:
	movzbl	18(%r11), %ebp
	leal	0(,%r10,4), %r8d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %bpl
	orb	%r8b, %bpl
	movb	%bpl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21357
	movq	%rdx, 1736(%rsp)
.L4177:
	movq	global_trees(%rip), %rsi
.L4180:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L4181
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L4181
	movq	8(%r14), %r15
	movq	8(%rcx), %r13
	movzbl	61(%r15), %r9d
	movzbl	61(%r13), %r11d
	andb	$-2, %r9b
	andb	$-2, %r11b
	cmpb	%r11b, %r9b
	jne	.L4181
	movq	%rcx, %r14
	jmp	.L4180
.L4181:
	movq	global_trees(%rip), %rsi
.L4185:
	movq	1736(%rsp), %rdi
	movzbl	16(%rdi), %ebx
	subb	$114, %bl
	cmpb	$2, %bl
	ja	.L4186
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L4186
	movq	8(%rdi), %rdx
	movq	8(%rcx), %r8
	movzbl	61(%rdx), %ebp
	movzbl	61(%r8), %r10d
	andb	$-2, %bpl
	andb	$-2, %r10b
	cmpb	%r10b, %bpl
	jne	.L4186
	movq	%rcx, 1736(%rsp)
	jmp	.L4185
.L4186:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21358
	cmpb	$26, %al
	je	.L21359
	cmpb	$27, %al
	je	.L21360
	xorl	%ebx, %ebx
.L4397:
	cmpq	$0, 544(%rsp)
	movq	%rbx, 7336(%rsp)
	jne	.L21361
.L4447:
	cmpq	$0, 536(%rsp)
	jne	.L21362
.L6728:
	cmpq	$0, 544(%rsp)
	jne	.L9009
	movq	7720(%rsp), %r8
	cmpq	7536(%rsp), %r8
	jne	.L20884
	movq	7360(%rsp), %r9
	cmpq	7184(%rsp), %r9
	jne	.L20884
	movl	7520(%rsp), %eax
	cmpl	%eax, 7704(%rsp)
	jne	.L20884
	movl	7168(%rsp), %eax
	cmpl	%eax, 7344(%rsp)
	jne	.L20884
	movq	7528(%rsp), %rcx
	movq	7712(%rsp), %r10
	movq	7176(%rsp), %rdi
	subq	7352(%rsp), %r10
	movq	%rcx, %r11
	subq	%rdi, %r11
	cmpq	%r11, %r10
	jne	.L20884
	movq	3648(%rsp), %rax
	cmpq	%rcx, %rdi
	leaq	(%r8,%rcx), %rbp
	movq	%rcx, %rsi
	movl	7700(%rsp), %r8d
	cmovle	%rdi, %rsi
	addq	%r9, %rdi
	movq	8(%rax), %rcx
	cmpq	%rbp, %rdi
	movl	%esi, %ebx
	cmovl	%rbp, %rdi
	subl	%esi, %edi
	movl	64(%rcx), %edx
	movl	word_mode(%rip), %ecx
	call	get_best_mode
	testl	%eax, %eax
	je	.L20884
	cltq
	movslq	%ebx,%r13
	movl	$82, %r12d
	movzwq	mode_bitsize(%rax,%rax), %rsi
	movq	%rsi, 3608(%rsp)
	movl	3608(%rsp), %edi
	negq	%rsi
	andq	%rsi, %r13
	movl	$1, %esi
	movq	%r13, 3600(%rsp)
	call	type_for_size
	movq	7512(%rsp), %rsi
	movq	7176(%rsp), %rdi
	movq	7528(%rsp), %rdx
	movq	%rax, 3584(%rsp)
	subq	%r13, %rdi
	movq	%rdi, 968(%rsp)
	subq	%r13, %rdx
	movq	3584(%rsp), %rdi
	movq	%rdx, 3632(%rsp)
	call	convert
	cmpq	$0, size_htab.0(%rip)
	movq	sizetype_tab(%rip), %rbx
	movq	%rax, %r14
	je	.L21363
.L9016:
	movq	new_const.1(%rip), %r8
	movq	3632(%rsp), %r15
	xorl	%r10d, %r10d
	movzbl	16(%r8), %eax
	movq	%r15, %rcx
	movq	%r15, 32(%r8)
	notq	%rcx
	movq	%rbx, 8(%r8)
	movq	%r8, %rdi
	shrq	$63, %rcx
	movq	%r8, %r11
	movq	%r8, %rdx
	decq	%rcx
	cmpb	$26, %al
	movq	%rcx, 40(%r8)
	je	.L9020
	cmpb	$25, %al
	je	.L21364
.L9020:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %r8d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %sil
	orb	%r8b, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21365
	movq	%rdx, 1288(%rsp)
.L9042:
	movq	global_trees(%rip), %rsi
.L9045:
	movzbl	16(%r14), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L9046
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L9046
	movq	8(%r14), %rbp
	movq	8(%rcx), %rdx
	movzbl	61(%rbp), %ebx
	movzbl	61(%rdx), %r15d
	andb	$-2, %bl
	andb	$-2, %r15b
	cmpb	%r15b, %bl
	jne	.L9046
	movq	%rcx, %r14
	jmp	.L9045
.L9046:
	movq	global_trees(%rip), %rsi
.L9050:
	movq	1288(%rsp), %rdi
	movzbl	16(%rdi), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L9051
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L9051
	movq	8(%rdi), %r10
	movq	8(%rcx), %r8
	movzbl	61(%r10), %r11d
	movzbl	61(%r8), %r9d
	andb	$-2, %r11b
	andb	$-2, %r9b
	cmpb	%r9b, %r11b
	jne	.L9051
	movq	%rcx, 1288(%rsp)
	jmp	.L9050
.L9051:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21366
	cmpb	$26, %al
	je	.L21367
	cmpb	$27, %al
	je	.L21368
	xorl	%ebx, %ebx
.L9262:
	movq	7160(%rsp), %rsi
	movq	3584(%rsp), %rdi
	movq	%rbx, 7512(%rsp)
	movl	$82, %r12d
	call	convert
	cmpq	$0, size_htab.0(%rip)
	movq	sizetype_tab(%rip), %rbx
	movq	%rax, %r14
	je	.L21369
.L9312:
	movq	new_const.1(%rip), %r9
	movq	968(%rsp), %rdi
	xorl	%r10d, %r10d
	movzbl	16(%r9), %eax
	movq	%rdi, %rcx
	movq	%rdi, 32(%r9)
	notq	%rcx
	movq	%rbx, 8(%r9)
	movq	%r9, %r11
	shrq	$63, %rcx
	movq	%r9, %rdi
	movq	%r9, %rdx
	decq	%rcx
	cmpb	$26, %al
	movq	%rcx, 40(%r9)
	je	.L9316
	cmpb	$25, %al
	je	.L21370
.L9316:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %ebp
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %sil
	orb	%bpl, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r8d
	andb	$-9, %r8b
	orb	%al, %r8b
	movb	%r8b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21371
	movq	%rdx, 1256(%rsp)
.L9338:
	movq	global_trees(%rip), %rsi
.L9341:
	movzbl	16(%r14), %r11d
	subb	$114, %r11b
	cmpb	$2, %r11b
	ja	.L9342
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L9342
	movq	8(%r14), %r15
	movq	8(%rcx), %r13
	movzbl	61(%r15), %edi
	movzbl	61(%r13), %r9d
	andb	$-2, %dil
	andb	$-2, %r9b
	cmpb	%r9b, %dil
	jne	.L9342
	movq	%rcx, %r14
	jmp	.L9341
.L9342:
	movq	global_trees(%rip), %rsi
.L9346:
	movq	1256(%rsp), %rdi
	movzbl	16(%rdi), %ebx
	subb	$114, %bl
	cmpb	$2, %bl
	ja	.L9347
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L9347
	movq	8(%rdi), %r10
	movq	8(%rcx), %rdx
	movzbl	61(%r10), %ebp
	movzbl	61(%rdx), %r8d
	andb	$-2, %bpl
	andb	$-2, %r8b
	cmpb	%r8b, %bpl
	jne	.L9347
	movq	%rcx, 1256(%rsp)
	jmp	.L9346
.L9347:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21372
	cmpb	$26, %al
	je	.L21373
	cmpb	$27, %al
	je	.L21374
	xorl	%ebx, %ebx
.L9558:
	movq	7688(%rsp), %r12
	movq	7336(%rsp), %r14
	movq	%rbx, 7160(%rsp)
	movq	global_trees(%rip), %rsi
.L9608:
	movzbl	16(%r12), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L9609
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L9609
	movq	8(%r12), %rdx
	movq	8(%rcx), %r15
	movzbl	61(%rdx), %edi
	movzbl	61(%r15), %r13d
	andb	$-2, %dil
	andb	$-2, %r13b
	cmpb	%r13b, %dil
	jne	.L9609
	movq	%rcx, %r12
	jmp	.L9608
.L9609:
	movq	global_trees(%rip), %rsi
.L9613:
	movzbl	16(%r14), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L9614
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L9614
	movq	8(%r14), %r9
	movq	8(%rcx), %r10
	movzbl	61(%r9), %r11d
	movzbl	61(%r10), %ebx
	andb	$-2, %r11b
	andb	$-2, %bl
	cmpb	%bl, %r11b
	jne	.L9614
	movq	%rcx, %r14
	jmp	.L9613
.L9614:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L21375
	cmpb	$26, %al
	je	.L21376
	cmpb	$27, %al
	je	.L21377
	xorl	%ebx, %ebx
.L9825:
	movq	7512(%rsp), %r12
	movq	7160(%rsp), %r14
	movq	%rbx, 7688(%rsp)
	movq	global_trees(%rip), %rsi
.L9875:
	movzbl	16(%r12), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L9876
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L9876
	movq	8(%r12), %rdi
	movq	8(%rcx), %r8
	movzbl	61(%rdi), %r9d
	movzbl	61(%r8), %r11d
	andb	$-2, %r9b
	andb	$-2, %r11b
	cmpb	%r11b, %r9b
	jne	.L9876
	movq	%rcx, %r12
	jmp	.L9875
.L9876:
	movq	global_trees(%rip), %rsi
.L9880:
	movzbl	16(%r14), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L9881
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L9881
	movq	8(%r14), %r10
	movq	8(%rcx), %rdx
	movzbl	61(%r10), %ebx
	movzbl	61(%rdx), %r15d
	andb	$-2, %bl
	andb	$-2, %r15b
	cmpb	%r15b, %bl
	jne	.L9881
	movq	%rcx, %r14
	jmp	.L9880
.L9881:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L21378
	cmpb	$26, %al
	je	.L21379
	cmpb	$27, %al
	je	.L21380
	xorl	%ebx, %ebx
.L10092:
	movq	3608(%rsp), %r11
	movq	%rbx, 7512(%rsp)
	cmpq	%r11, 3624(%rsp)
	je	.L21381
.L10142:
	movq	7712(%rsp), %rcx
	movq	7720(%rsp), %r10
	movq	7352(%rsp), %rdx
	addq	%rcx, %r10
	cmpq	%rdx, %r10
	je	.L21382
.L11475:
	addq	7360(%rsp), %rdx
	cmpq	%rdx, %rcx
	jne	.L20884
	movq	7184(%rsp), %rcx
	addq	7176(%rsp), %rcx
	cmpq	%rcx, 7528(%rsp)
	jne	.L20884
.L11474:
	movq	7352(%rsp), %r11
	movq	7712(%rsp), %r8
	movl	7360(%rsp), %r14d
	movq	3592(%rsp), %r13
	addl	7720(%rsp), %r14d
	movl	7704(%rsp), %r15d
	cmpq	%r8, %r11
	movq	sizetype_tab+24(%rip), %rbp
	cmovg	%r8, %r11
	cmpq	$0, size_htab.0(%rip)
	movslq	%r11d,%rbx
	je	.L21383
.L11477:
	movq	new_const.1(%rip), %r9
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r9), %eax
	decq	%rcx
	movq	%rbx, 32(%r9)
	movq	%rcx, 40(%r9)
	movq	%rbp, 8(%r9)
	movq	%r9, %rdi
	movq	%r9, %r11
	movq	%r9, %rdx
	cmpb	$26, %al
	je	.L11481
	cmpb	$25, %al
	je	.L21384
.L11481:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %r8d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %cl
	orb	%r8b, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21385
	movq	%rdx, %r12
.L11503:
	cmpq	$0, size_htab.0(%rip)
	movslq	%r14d,%rbx
	movq	sizetype_tab(%rip), %rbp
	je	.L21386
.L11506:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%rbp, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L11510
	cmpb	$25, %al
	je	.L21387
.L11510:
	movzbl	18(%r11), %r8d
	leal	0(,%r10,4), %r14d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r8b
	orb	%r14b, %r8b
	movb	%r8b, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L21388
	movq	%rcx, %rbx
.L11532:
	movq	3656(%rsp), %rdx
	movl	$40, %edi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movq	%r12, %r8
	xorl	%eax, %eax
	call	build
	movl	%r15d, %r10d
	movq	%rax, 840(%rsp)
	andb	$1, %r10b
	movzbl	17(%rax), %r12d
	salb	$5, %r10b
	andb	$-33, %r12b
	orb	%r10b, %r12b
	movb	%r12b, 17(%rax)
	movq	sizetype_tab+24(%rip), %rbp
	movq	7528(%rsp), %r15
	movq	7176(%rsp), %rdi
	movl	7184(%rsp), %r14d
	addl	7536(%rsp), %r14d
	movq	3584(%rsp), %r13
	cmpq	%r15, %rdi
	cmovg	%r15, %rdi
	cmpq	$0, size_htab.0(%rip)
	movl	7520(%rsp), %r15d
	movslq	%edi,%rbx
	je	.L21389
.L11537:
	movq	new_const.1(%rip), %rdx
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	decq	%rcx
	movq	%rdx, %rdi
	movq	%rbx, 32(%rdx)
	movq	%rcx, 40(%rdx)
	movq	%rbp, 8(%rdx)
	movq	%rdx, %r11
	movzbl	16(%rdi), %eax
	cmpb	$26, %al
	je	.L11541
	cmpb	$25, %al
	je	.L21390
.L11541:
	movzbl	18(%r11), %r8d
	leal	0(,%r10,4), %r12d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r8b
	orb	%r12b, %r8b
	movb	%r8b, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21391
	movq	%rdx, %r12
.L11563:
	cmpq	$0, size_htab.0(%rip)
	movslq	%r14d,%rbx
	movq	sizetype_tab(%rip), %rbp
	je	.L21392
.L11566:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%rbp, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L11570
	cmpb	$25, %al
	je	.L21393
.L11570:
	movzbl	18(%r11), %r8d
	leal	0(,%r10,4), %eax
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %r8b
	orb	%al, %r8b
	movb	%r8b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%r9b, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L21394
	movq	%rcx, %rbx
.L11592:
	movq	3648(%rsp), %rdx
	movl	$40, %edi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movq	%r12, %r8
	xorl	%eax, %eax
	movl	$83, %r12d
	call	build
	movl	%r15d, %r11d
	movq	%rax, 760(%rsp)
	andb	$1, %r11b
	movzbl	17(%rax), %r13d
	salb	$5, %r11b
	andb	$-33, %r13b
	orb	%r11b, %r13b
	movb	%r13b, 17(%rax)
	movq	sizetype_tab(%rip), %rbx
	movq	3640(%rsp), %rdi
	cmpq	%rdi, 1008(%rsp)
	movq	7688(%rsp), %r14
	cmovle	1008(%rsp), %rdi
	cmpq	$0, size_htab.0(%rip)
	movq	%rdi, 1008(%rsp)
	je	.L21395
.L11597:
	movq	new_const.1(%rip), %rbp
	movq	1008(%rsp), %rsi
	xorl	%r10d, %r10d
	movzbl	16(%rbp), %eax
	movq	%rsi, %rcx
	movq	%rsi, 32(%rbp)
	notq	%rcx
	movq	%rbx, 8(%rbp)
	movq	%rbp, %rdi
	shrq	$63, %rcx
	movq	%rbp, %r11
	movq	%rbp, %rdx
	decq	%rcx
	cmpb	$26, %al
	movq	%rcx, 40(%rbp)
	je	.L11601
	cmpb	$25, %al
	je	.L21396
.L11601:
	movzbl	18(%r11), %r8d
	leal	0(,%r10,4), %eax
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %r8b
	orb	%al, %r8b
	movb	%r8b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%r9b, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21397
	movq	%rdx, 1000(%rsp)
.L11623:
	movq	global_trees(%rip), %rsi
.L11626:
	movzbl	16(%r14), %r11d
	subb	$114, %r11b
	cmpb	$2, %r11b
	ja	.L11627
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L11627
	movq	8(%r14), %r13
	movq	8(%rcx), %r15
	movzbl	61(%r13), %ebx
	movzbl	61(%r15), %ebp
	andb	$-2, %bl
	andb	$-2, %bpl
	cmpb	%bpl, %bl
	jne	.L11627
	movq	%rcx, %r14
	jmp	.L11626
.L11627:
	movq	global_trees(%rip), %rsi
.L11631:
	movq	1000(%rsp), %rdi
	movzbl	16(%rdi), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L11632
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L11632
	movq	8(%rdi), %r11
	movq	8(%rcx), %r8
	movzbl	61(%r11), %r9d
	movzbl	61(%r8), %r10d
	andb	$-2, %r9b
	andb	$-2, %r10b
	cmpb	%r10b, %r9b
	jne	.L11632
	movq	%rcx, 1000(%rsp)
	jmp	.L11631
.L11632:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21398
	cmpb	$26, %al
	je	.L21399
	cmpb	$27, %al
	je	.L21400
	xorl	%ebx, %ebx
.L11843:
	movq	3632(%rsp), %r13
	movq	%rbx, 7688(%rsp)
	movl	$83, %r12d
	cmpq	%r13, 968(%rsp)
	movq	7512(%rsp), %r14
	cmovle	968(%rsp), %r13
	movq	sizetype_tab(%rip), %rbx
	cmpq	$0, size_htab.0(%rip)
	movq	%r13, 968(%rsp)
	je	.L21401
.L11894:
	movq	new_const.1(%rip), %rdx
	movq	968(%rsp), %r8
	xorl	%r10d, %r10d
	movq	%r8, 32(%rdx)
	movq	%rdx, %rdi
	movq	%rdx, %r11
	movq	968(%rsp), %rcx
	movq	%rbx, 8(%rdx)
	notq	%rcx
	shrq	$63, %rcx
	decq	%rcx
	movq	%rcx, 40(%rdx)
	movzbl	16(%rdi), %eax
	cmpb	$26, %al
	je	.L11898
	cmpb	$25, %al
	je	.L21402
.L11898:
	movzbl	18(%r11), %ebp
	leal	0(,%r10,4), %r13d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %bpl
	orb	%r13b, %bpl
	movb	%bpl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21403
	movq	%rdx, 960(%rsp)
.L11920:
	movq	global_trees(%rip), %rsi
.L11923:
	movzbl	16(%r14), %r11d
	subb	$114, %r11b
	cmpb	$2, %r11b
	ja	.L11924
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L11924
	movq	8(%r14), %r15
	movq	8(%rcx), %rdx
	movzbl	61(%r15), %ebx
	movzbl	61(%rdx), %r8d
	andb	$-2, %bl
	andb	$-2, %r8b
	cmpb	%r8b, %bl
	jne	.L11924
	movq	%rcx, %r14
	jmp	.L11923
.L11924:
	movq	global_trees(%rip), %rsi
.L11928:
	movq	960(%rsp), %rdi
	movzbl	16(%rdi), %r9d
	subb	$114, %r9b
	cmpb	$2, %r9b
	ja	.L11929
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L11929
	movq	8(%rdi), %r11
	movq	8(%rcx), %r13
	movzbl	61(%r11), %ebp
	movzbl	61(%r13), %r10d
	andb	$-2, %bpl
	andb	$-2, %r10b
	cmpb	%r10b, %bpl
	jne	.L11929
	movq	%rcx, 960(%rsp)
	jmp	.L11928
.L11929:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21404
	cmpb	$26, %al
	je	.L21405
	cmpb	$27, %al
	je	.L21406
	xorl	%ebx, %ebx
.L12140:
	movq	3592(%rsp), %r8
	movq	3584(%rsp), %rcx
	movq	%rbx, 7512(%rsp)
	cmpq	%rcx, %r8
	movq	%r8, 920(%rsp)
	je	.L12190
	movq	3608(%rsp), %r9
	cmpq	%r9, 3624(%rsp)
	jg	.L21407
	movq	3608(%rsp), %rax
	cmpq	%rax, 3624(%rsp)
	jl	.L21408
.L12190:
	movl	7360(%rsp), %eax
	movl	7720(%rsp), %ebx
	movq	$-1, %rdi
	movq	7688(%rsp), %rcx
	movq	%rdi, %rsi
	addl	%ebx, %eax
	movq	%rcx, 2808(%rsp)
	movl	%eax, 2804(%rsp)
	movq	8(%rcx), %r15
	movzwl	60(%r15), %edx
	andl	$511, %edx
	movl	%edx, 2800(%rsp)
	call	build_int_2_wide
	movq	%r15, %rdi
	movq	%rax, %r14
	call	signed_type
	movzbl	16(%r14), %edx
	movq	%rax, 8(%r14)
	movq	%r14, %rsi
	cmpb	$26, %dl
	je	.L12196
	cmpb	$25, %dl
	je	.L21409
.L12196:
	movl	2800(%rsp), %ebp
	movl	$82, %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2804(%rsp), %ebp
	cmpq	$0, size_htab.0(%rip)
	je	.L21410
.L12217:
	movq	new_const.1(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movzbl	16(%rsi), %eax
	movq	%rbp, 32(%rsi)
	movq	%rcx, 40(%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	movq	%rsi, %r11
	movq	%rsi, %rdx
	cmpb	$26, %al
	je	.L12221
	cmpb	$25, %al
	je	.L21411
.L12221:
	movzbl	18(%r11), %ebx
	leal	0(,%r10,4), %esi
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %bl
	orb	%sil, %bl
	movb	%bl, 18(%r11)
	movzbl	18(%rdi), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21412
	movq	%rdx, 912(%rsp)
.L12243:
	movq	global_trees(%rip), %rsi
.L12246:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L12247
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L12247
	movq	8(%r14), %r13
	movq	8(%rcx), %rbp
	movzbl	61(%r13), %r11d
	movzbl	61(%rbp), %r10d
	andb	$-2, %r11b
	andb	$-2, %r10b
	cmpb	%r10b, %r11b
	jne	.L12247
	movq	%rcx, %r14
	jmp	.L12246
.L12247:
	movq	global_trees(%rip), %rsi
.L12251:
	movq	912(%rsp), %rdi
	movzbl	16(%rdi), %r15d
	subb	$114, %r15b
	cmpb	$2, %r15b
	ja	.L12252
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L12252
	movq	8(%rdi), %rdx
	movq	8(%rcx), %rbx
	movzbl	61(%rdx), %r9d
	movzbl	61(%rbx), %r8d
	andb	$-2, %r9b
	andb	$-2, %r8b
	cmpb	%r8b, %r9b
	jne	.L12252
	movq	%rcx, 912(%rsp)
	jmp	.L12251
.L12252:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21413
	cmpb	$26, %al
	je	.L21414
	cmpb	$27, %al
	je	.L21415
	xorl	%ebp, %ebp
.L12463:
	movl	2800(%rsp), %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2804(%rsp), %r12d
	cmpq	$0, size_htab.0(%rip)
	je	.L21416
.L12507:
	movq	new_const.1(%rip), %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movq	%rdx, %rdi
	movq	%r12, 32(%rdx)
	movq	%rcx, 40(%rdx)
	movzbl	16(%rdi), %eax
	movq	%rbx, 8(%rdx)
	movq	%rdx, %r11
	cmpb	$26, %al
	je	.L12511
	cmpb	$25, %al
	je	.L21417
.L12511:
	movzbl	18(%r11), %r14d
	leal	0(,%r10,4), %r12d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r14b
	orb	%r12b, %r14b
	movb	%r14b, 18(%r11)
	movzbl	18(%rdi), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21418
	movq	%rdx, %r14
.L12533:
	movq	global_trees(%rip), %rsi
.L12536:
	movzbl	16(%rbp), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L12537
	movq	32(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	.L12537
	movq	8(%rbp), %rdx
	movq	8(%rcx), %r15
	movzbl	61(%rdx), %r11d
	movzbl	61(%r15), %edi
	andb	$-2, %r11b
	andb	$-2, %dil
	cmpb	%dil, %r11b
	jne	.L12537
	movq	%rcx, %rbp
	jmp	.L12536
.L12537:
	movq	global_trees(%rip), %rsi
.L12541:
	movzbl	16(%r14), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L12542
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L12542
	movq	8(%r14), %r12
	movq	8(%rcx), %r9
	movzbl	61(%r12), %r8d
	movzbl	61(%r9), %ebx
	andb	$-2, %r8b
	andb	$-2, %bl
	cmpb	%bl, %r8b
	jne	.L12542
	movq	%rcx, %r14
	jmp	.L12541
.L12542:
	movzbl	16(%rbp), %eax
	cmpb	$25, %al
	je	.L21419
	cmpb	$26, %al
	je	.L21420
	cmpb	$27, %al
	je	.L21421
	xorl	%ebx, %ebx
.L12753:
	movq	2808(%rsp), %rdi
	movq	%rbx, %rsi
	call	tree_int_cst_equal
	testl	%eax, %eax
	je	.L21422
.L12194:
	movl	7184(%rsp), %ecx
	movl	7536(%rsp), %eax
	movq	$-1, %rdi
	movq	7512(%rsp), %r11
	movq	%rdi, %rsi
	addl	%eax, %ecx
	movq	%r11, 2760(%rsp)
	movl	%ecx, 2756(%rsp)
	movq	8(%r11), %r13
	movzwl	60(%r13), %r10d
	andl	$511, %r10d
	movl	%r10d, 2752(%rsp)
	call	build_int_2_wide
	movq	%r13, %rdi
	movq	%rax, %r14
	call	signed_type
	movzbl	16(%r14), %edx
	movq	%rax, 8(%r14)
	movq	%r14, %rsi
	cmpb	$26, %dl
	je	.L12800
	cmpb	$25, %dl
	je	.L21423
.L12800:
	movl	2752(%rsp), %ebp
	movl	$82, %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2756(%rsp), %ebp
	cmpq	$0, size_htab.0(%rip)
	je	.L21424
.L12821:
	movq	new_const.1(%rip), %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movq	%rdx, %rdi
	movq	%rbp, 32(%rdx)
	movq	%rcx, 40(%rdx)
	movzbl	16(%rdi), %eax
	movq	%rbx, 8(%rdx)
	movq	%rdx, %r11
	cmpb	$26, %al
	je	.L12825
	cmpb	$25, %al
	je	.L21425
.L12825:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %r9d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %cl
	orb	%r9b, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21426
	movq	%rdx, 832(%rsp)
.L12847:
	movq	global_trees(%rip), %rsi
.L12850:
	movzbl	16(%r14), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L12851
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L12851
	movq	8(%r14), %rbp
	movq	8(%rcx), %rdx
	movzbl	61(%rbp), %ebx
	movzbl	61(%rdx), %edi
	andb	$-2, %bl
	andb	$-2, %dil
	cmpb	%dil, %bl
	jne	.L12851
	movq	%rcx, %r14
	jmp	.L12850
.L12851:
	movq	global_trees(%rip), %rsi
.L12855:
	movq	832(%rsp), %rdi
	movzbl	16(%rdi), %r15d
	subb	$114, %r15b
	cmpb	$2, %r15b
	ja	.L12856
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L12856
	movq	8(%rdi), %r11
	movq	8(%rcx), %r9
	movzbl	61(%r11), %r10d
	movzbl	61(%r9), %r13d
	andb	$-2, %r10b
	andb	$-2, %r13b
	cmpb	%r13b, %r10b
	jne	.L12856
	movq	%rcx, 832(%rsp)
	jmp	.L12855
.L12856:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21427
	cmpb	$26, %al
	je	.L21428
	cmpb	$27, %al
	je	.L21429
	xorl	%ebp, %ebp
.L13067:
	movl	2752(%rsp), %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2756(%rsp), %r12d
	cmpq	$0, size_htab.0(%rip)
	je	.L21430
.L13111:
	movq	new_const.1(%rip), %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movq	%rdx, %rdi
	movq	%r12, 32(%rdx)
	movq	%rcx, 40(%rdx)
	movzbl	16(%rdi), %eax
	movq	%rbx, 8(%rdx)
	movq	%rdx, %r11
	cmpb	$26, %al
	je	.L13115
	cmpb	$25, %al
	je	.L21431
.L13115:
	movzbl	18(%r11), %r14d
	leal	0(,%r10,4), %r12d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r14b
	orb	%r12b, %r14b
	movb	%r14b, 18(%r11)
	movzbl	18(%rdi), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21432
	movq	%rdx, %r14
.L13137:
	movq	global_trees(%rip), %rsi
.L13140:
	movzbl	16(%rbp), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L13141
	movq	32(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	.L13141
	movq	8(%rbp), %rdx
	movq	8(%rcx), %r15
	movzbl	61(%rdx), %r11d
	movzbl	61(%r15), %edi
	andb	$-2, %r11b
	andb	$-2, %dil
	cmpb	%dil, %r11b
	jne	.L13141
	movq	%rcx, %rbp
	jmp	.L13140
.L13141:
	movq	global_trees(%rip), %rsi
.L13145:
	movzbl	16(%r14), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L13146
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L13146
	movq	8(%r14), %r12
	movq	8(%rcx), %r9
	movzbl	61(%r12), %r8d
	movzbl	61(%r9), %ebx
	andb	$-2, %r8b
	andb	$-2, %bl
	cmpb	%bl, %r8b
	jne	.L13146
	movq	%rcx, %r14
	jmp	.L13145
.L13146:
	movzbl	16(%rbp), %eax
	cmpb	$25, %al
	je	.L21433
	cmpb	$26, %al
	je	.L21434
	cmpb	$27, %al
	je	.L21435
	xorl	%ebx, %ebx
.L13357:
	movq	2760(%rsp), %rdi
	movq	%rbx, %rsi
	call	tree_int_cst_equal
	testl	%eax, %eax
	je	.L21436
.L12798:
	movl	1780(%rsp), %edi
	movq	3736(%rsp), %rsi
	movq	840(%rsp), %rdx
	movq	760(%rsp), %rcx
.L20601:
	xorl	%eax, %eax
	call	build
	jmp	.L20884
.L21436:
	movq	7512(%rsp), %rcx
	movq	920(%rsp), %rsi
	movl	$88, %edi
	movq	760(%rsp), %rdx
	xorl	%eax, %eax
	call	build
	movq	%rax, 760(%rsp)
	jmp	.L12798
.L21435:
	movq	8(%rbp), %rsi
	movq	%rsi, 2728(%rsp)
	movl	$83, %esi
	movq	40(%rbp), %r15
	cmpl	$60, %esi
	movq	32(%rbp), %r13
	movq	32(%r14), %rbp
	movq	40(%r14), %r14
	je	.L13389
	cmpl	$60, %esi
	ja	.L13400
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21037:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2728(%rsp), %rdi
.L20429:
	movq	%rax, %rdx
	call	build_complex
.L20430:
	movq	%rax, %rbx
	jmp	.L13357
.L13400:
	movl	$83, %edi
	cmpl	$61, %edi
	je	.L13390
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2720(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L13394
	cmpb	$10, %al
	je	.L13394
	cmpb	$11, %al
	je	.L13394
	cmpb	$12, %al
	movl	$70, %edi
	je	.L13394
.L13393:
	movq	2720(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbp
	movq	%rax, %rsi
	movzbl	16(%rbp), %eax
	cmpb	$6, %al
	je	.L13397
	cmpb	$10, %al
	je	.L13397
	cmpb	$11, %al
	je	.L13397
	cmpb	$12, %al
	movl	$70, %edi
	je	.L13397
.L13396:
	movq	2720(%rsp), %rdx
.L20428:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2728(%rsp), %rdi
	jmp	.L20429
.L13397:
	movl	$62, %edi
	jmp	.L13396
.L13394:
	movl	$62, %edi
	jmp	.L13393
.L13390:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20428
.L13389:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21037
.L21434:
	movq	32(%rbp), %r9
	xorl	%r12d, %r12d
	movq	%rbp, %rbx
	movq	%r9, 18528(%rsp)
	movq	40(%rbp), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%rbp), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %rsi
	movq	%rsi, 18568(%rsp)
	movq	48(%r14), %r15
	movq	%rdi, 16(%rsp)
	movq	%r9, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r15, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L13357
	movq	18560(%rsp), %rbx
	movq	18568(%rsp), %r10
	movq	18576(%rsp), %r13
	movq	%rbx, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r14, %rbx
	movq	%r13, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L13357
	movq	8(%rbp), %rsi
	movq	18560(%rsp), %rdi
	movl	$83, 10544(%rsp)
	movq	18528(%rsp), %r15
	movq	18536(%rsp), %r9
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r11
	movq	18576(%rsp), %r8
	movq	%rsi, 10552(%rsp)
	movq	%rdi, 10584(%rsp)
	leaq	10544(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r15, 10560(%rsp)
	movq	%r9, 10568(%rsp)
	movq	%rdx, 10576(%rsp)
	movq	%r11, 10592(%rsp)
	movq	%r8, 10600(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L13362
	movq	10608(%rsp), %rbx
.L13363:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L13365
	cmpb	$25, %al
	je	.L21439
.L13365:
	movzbl	18(%rbp), %r15d
	movzbl	18(%r14), %edx
	shrb	$3, %r15b
	shrb	$3, %dl
	andl	$1, %r15d
	andl	$1, %edx
	orb	%r12b, %r15b
	movzbl	18(%rbx), %r12d
	orb	%dl, %r15b
	salb	$3, %r15b
	andb	$-9, %r12b
	orb	%r15b, %r12b
	movb	%r12b, 18(%rbx)
	movl	%r12d, %edi
	movzbl	18(%r14), %eax
	movzbl	18(%rbp), %r8d
	shrb	$3, %dil
	andb	$-5, %r12b
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%edi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %r12b
	movb	%r12b, 18(%rbx)
	jmp	.L13357
.L21439:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13369
	cmpb	$15, %al
	je	.L13369
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L13372:
	cmpl	$128, %esi
	je	.L13374
	cmpl	$64, %esi
	jbe	.L13375
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L13374:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13378
	cmpb	$6, 16(%rax)
	jne	.L13365
	testb	$2, 62(%rax)
	je	.L13365
.L13378:
	cmpl	$128, %esi
	je	.L13380
	cmpl	$64, %esi
	jbe	.L13381
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20427:
	testl	$1, %eax 
	je	.L13380
	cmpl	$64, %esi
	jbe	.L13383
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L13380:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%r12d,%r9
	orq	%rdi, %r9
	orq	%r8, %r9
	setne	%cl
	movzbl	%cl, %r12d
	jmp	.L13365
.L13383:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13380
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13380
.L13381:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20427
.L13375:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13374
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L13374
.L13369:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13372
.L13362:
	movq	%rbp, %rdi
	movl	$1, %r12d
	call	copy_node
	movq	%rax, %rbx
	jmp	.L13363
.L21433:
	movq	8(%rbp), %r13
	movl	$1, %r15d
	movl	$0, 796(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21440
.L13151:
	movl	$83, %eax
	movl	$0, 768(%rsp)
	movl	$0, 792(%rsp)
	subl	$59, %eax
	movq	32(%rbp), %r11
	movq	40(%rbp), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L13292(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L13292:
	.quad	.L13226
	.quad	.L13229
	.quad	.L13235
	.quad	.L13268
	.quad	.L13268
	.quad	.L13268
	.quad	.L13271
	.quad	.L13277
	.quad	.L13277
	.quad	.L13277
	.quad	.L13280
	.quad	.L18929
	.quad	.L13268
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L13282
	.quad	.L13282
	.quad	.L18929
	.quad	.L18929
	.quad	.L13158
	.quad	.L13157
	.quad	.L13185
	.quad	.L13184
	.quad	.L13153
	.quad	.L13154
	.quad	.L13155
	.quad	.L13156
	.text
.L13153:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5024(%rsp)
.L20422:
	movq	%r10, 5016(%rsp)
.L13152:
	movl	796(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L13293
	movq	5016(%rsp), %rax
	testq	%rax, %rax
	jne	.L13295
	cmpq	$0, 5024(%rsp)
	js	.L13295
.L13294:
	movl	768(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L13293
	testb	$8, 18(%rbp)
	jne	.L13293
	testb	$8, 18(%r14)
	jne	.L13293
	cmpq	$0, size_htab.0(%rip)
	movq	5024(%rsp), %rbx
	je	.L21441
.L13296:
	movq	new_const.1(%rip), %rbp
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%rbp), %eax
	decq	%rcx
	movq	%rbx, 32(%rbp)
	movq	%rcx, 40(%rbp)
	movq	%r13, 8(%rbp)
	movq	%rbp, %rdi
	movq	%rbp, %r11
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L13300
	cmpb	$25, %al
	je	.L21442
.L13300:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %esi
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%sil, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20430
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L13357
.L21442:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L13304
	cmpb	$15, %al
	je	.L13304
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L13307:
	cmpl	$128, %esi
	je	.L13309
	cmpl	$64, %esi
	jbe	.L13310
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L13309:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13313
	cmpb	$6, 16(%rax)
	jne	.L13300
	testb	$2, 62(%rax)
	je	.L13300
.L13313:
	cmpl	$128, %esi
	je	.L13315
	cmpl	$64, %esi
	jbe	.L13316
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20424:
	testl	$1, %eax 
	je	.L13315
	cmpl	$64, %esi
	jbe	.L13318
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L13315:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r12
	orq	%r8, %r12
	orq	%r9, %r12
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L13300
.L13318:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13315
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13315
.L13316:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20424
.L13310:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13309
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L13309
.L13304:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13307
.L21441:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L13296
.L13293:
	movq	5024(%rsp), %rdi
	movq	5016(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%rbp), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movzbl	18(%r14), %r8d
	movl	$1, %r11d
	movzbl	18(%rbp), %r13d
	shrb	$3, %r8b
	shrb	$3, %r13b
	movl	%r8d, %ebx
	andl	%r13d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L13326
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L13329
	movl	796(%rsp), %eax
	testl	%eax, %eax
	je	.L13328
.L13329:
	movl	768(%rsp), %r15d
	movl	$1, %eax
	testl	%r15d, %r15d
	cmovne	%eax, %edx
.L13328:
	movl	%edx, %eax
.L20426:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	796(%rsp), %eax
	testl	%eax, %eax
	je	.L13355
	testb	$8, %dl
	jne	.L13355
	movq	5016(%rsp), %r12
	cmpq	%r12, 40(%rdi)
	je	.L21443
.L13356:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L13355:
	movzbl	18(%rdi), %ebx
	movzbl	18(%rbp), %r8d
	movzbl	18(%r14), %ebp
	movl	%ebx, %r11d
	shrb	$2, %r8b
	andb	$-5, %bl
	shrb	$3, %r11b
	shrb	$2, %bpl
	orl	%r11d, %r8d
	orl	%ebp, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L13357
.L21443:
	movq	5024(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L13356
	jmp	.L13355
.L13326:
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L13332
	movl	796(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L13331
.L13332:
	movl	768(%rsp), %esi
	movl	$1, %r10d
	movl	$0, %eax
	testl	%esi, %esi
	cmove	%eax, %r10d
.L13331:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L13334
	cmpb	$25, %al
	je	.L21444
.L13334:
	testl	%r10d, %r10d
	je	.L13330
	movl	792(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %r12d
.L13330:
	movl	%r12d, %eax
	jmp	.L20426
.L21444:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13338
	cmpb	$15, %al
	je	.L13338
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L13341:
	cmpl	$128, %esi
	je	.L13343
	cmpl	$64, %esi
	jbe	.L13344
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L13343:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13347
	cmpb	$6, 16(%rax)
	jne	.L13334
	testb	$2, 62(%rax)
	je	.L13334
.L13347:
	cmpl	$128, %esi
	je	.L13349
	cmpl	$64, %esi
	jbe	.L13350
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20425:
	testl	$1, %eax 
	je	.L13349
	cmpl	$64, %esi
	jbe	.L13352
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L13349:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r13
	orq	%r8, %r13
	orq	%r9, %r13
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L13334
.L13352:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13349
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13349
.L13350:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20425
.L13344:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13343
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L13343
.L13338:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13341
.L13295:
	cmpq	$-1, %rax
	jne	.L13293
	cmpq	$0, 5024(%rsp)
	jns	.L13293
	jmp	.L13294
.L13226:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5024(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5016(%rsp)
	andq	%r10, %r9
.L20421:
	shrq	$63, %r9
	movl	%r9d, 768(%rsp)
	jmp	.L13152
.L13229:
	testq	%r8, %r8
	jne	.L13230
	movq	%r9, %rax
	movq	$0, 5024(%rsp)
	negq	%rax
.L20416:
	movq	%rax, 5016(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5024(%rsp), %rdx
	addq	5016(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbx
	movq	%rdx, 5024(%rsp)
	cmovb	%rbx, %r12
	xorq	%r12, %r9 
	movq	%r12, 5016(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20421
.L13230:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5024(%rsp)
	notq	%rax
	jmp	.L20416
.L13235:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 10720(%rsp)
	movq	%rcx, 10728(%rsp)
	movq	%r8, %r12
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %r12d
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 10696(%rsp)
	movq	%rbx, 10736(%rsp)
	movq	%rdx, 10744(%rsp)
	movq	%r12, 10688(%rsp)
	movq	%rdi, 10704(%rsp)
	movq	%rcx, 10712(%rsp)
	movq	$0, 10624(%rsp)
	movq	$0, 10632(%rsp)
	movq	$0, 10640(%rsp)
	movq	$0, 10648(%rsp)
	movq	$0, 10656(%rsp)
	movq	$0, 10664(%rsp)
	movq	$0, 10672(%rsp)
	movq	$0, 10680(%rsp)
	xorl	%esi, %esi
.L13247:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	10720(%rsp,%rbx,8), %r12
	xorl	%ebx, %ebx
.L13246:
	movq	%r12, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	10688(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	10624(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 10624(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L13246
	movslq	%esi,%r12
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 10656(%rsp,%r12,8)
	jle	.L13247
	movq	10632(%rsp), %rdx
	movq	10648(%rsp), %rsi
	movq	10664(%rsp), %rax
	movq	10680(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	10624(%rsp), %rdx
	addq	10640(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	10656(%rsp), %rax
	addq	10672(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 5024(%rsp)
	movq	%rsi, 5016(%rsp)
	js	.L21445
.L13250:
	testq	%r9, %r9
	js	.L21446
.L13256:
	cmpq	$0, 5016(%rsp)
	js	.L21447
	orq	%rcx, %rax
.L21036:
	setne	%r10b
	movzbl	%r10b, %eax
.L20420:
	movl	%eax, 768(%rsp)
	jmp	.L13152
.L21447:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21036
.L21446:
	testq	%r11, %r11
	jne	.L13257
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L13258:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L13256
.L13257:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L13258
.L21445:
	testq	%r8, %r8
	jne	.L13251
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L13252:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L13250
.L13251:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L13252
.L13271:
	testq	%r9, %r9
	jne	.L13272
	cmpq	$1, %r8
	je	.L20419
.L13272:
	cmpq	%r8, %r11
	je	.L21448
.L13273:
	leaq	5024(%rsp), %rbx
	leaq	5016(%rsp), %rdi
	leaq	4976(%rsp), %rcx
	leaq	4968(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20417:
	movl	$83, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20420
.L21448:
	cmpq	%r9, %r10
	jne	.L13273
	testq	%r8, %r8
	jne	.L13274
	testq	%r9, %r9
	je	.L13273
.L13274:
	movq	$1, 5024(%rsp)
.L20418:
	movq	$0, 5016(%rsp)
	jmp	.L13152
.L20419:
	movq	%r11, 5024(%rsp)
	jmp	.L20422
.L13277:
	testq	%r9, %r9
	jne	.L13280
	testq	%r8, %r8
	jle	.L13280
	testb	$4, 18(%rbp)
	jne	.L13280
	testb	$4, 18(%r14)
	jne	.L13280
	testq	%r10, %r10
	jne	.L13280
	testq	%r11, %r11
	js	.L13280
	movl	$83, %edx
	leaq	-1(%r8,%r11), %r12
	cmpl	$67, %edx
	cmove	%r12, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5024(%rsp)
	jmp	.L20418
.L13280:
	leaq	4976(%rsp), %rdi
	leaq	4968(%rsp), %rcx
	leaq	5024(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5016(%rsp), %rax
	jmp	.L20417
.L13268:
	testq	%r9, %r9
	jne	.L13272
	testq	%r8, %r8
	jle	.L13271
	testb	$4, 18(%rbp)
	jne	.L13271
	testb	$4, 18(%r14)
	jne	.L13271
	testq	%r10, %r10
	jne	.L13271
	testq	%r11, %r11
	js	.L13271
	movl	$83, %eax
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %eax
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5024(%rsp)
	jmp	.L20418
.L13282:
	testl	%r15d, %r15d
	je	.L13283
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L13288
.L21197:
	cmpq	%r9, %r10
	je	.L21449
.L13287:
	movq	%rax, 5024(%rsp)
	xorl	%ebx, %ebx
	movl	$83, %eax
	cmpl	$78, %eax
	sete	%bl
	cmpq	%rbx, 5024(%rsp)
	je	.L20419
	movq	%r8, 5024(%rsp)
	movq	%r9, 5016(%rsp)
	jmp	.L13152
.L21449:
	cmpq	%r8, %r11
	jae	.L13287
.L13288:
	movl	$1, %eax
	jmp	.L13287
.L13283:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L13288
	jmp	.L21197
.L13158:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5024(%rsp), %rbx
	leaq	5016(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21450
	cmpq	$127, %r8
	jle	.L13174
	movq	$0, 5016(%rsp)
.L20408:
	movq	$0, 5024(%rsp)
.L13175:
	cmpl	$64, %esi
	jbe	.L13178
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20409:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L13173
	cmpl	$63, %esi
	jbe	.L13182
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20411:
	movq	%rax, (%r9)
.L13173:
	movl	$1, 792(%rsp)
	jmp	.L13152
.L13182:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20410:
	movq	%rax, (%rbx)
	jmp	.L13173
.L13178:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20409
.L13174:
	cmpq	$63, %r8
	jle	.L13176
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5016(%rsp)
	jmp	.L20408
.L13176:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5024(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5016(%rsp)
	jmp	.L13175
.L21450:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L13160
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L13161:
	cmpq	$127, %rdx
	jle	.L13162
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L13163:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L13166
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L13173
.L13166:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L13173
	cmpq	$63, %rax
	jle	.L13170
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20411
.L13170:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20410
.L13162:
	cmpq	$63, %rdx
	jle	.L13164
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L13163
.L13164:
	movl	%edx, %ecx
	movq	%r10, %r12
	shrq	%cl, %r12
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r12, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L13163
.L13160:
	xorl	%edi, %edi
	jmp	.L13161
.L13157:
	negq	%r8
	jmp	.L13158
.L13185:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5008(%rsp), %r12
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5000(%rsp), %rbx
	testq	%r8, %r8
	js	.L21451
	cmpq	$127, %r8
	jle	.L13202
	movq	$0, 5000(%rsp)
.L20412:
	movq	$0, 5008(%rsp)
.L13203:
	cmpl	$64, %edi
	jbe	.L13206
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20413:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L13201
	cmpl	$63, %edi
	jbe	.L13210
.L20415:
	leal	-64(%rdi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	salq	%cl, %rdx
	notq	%r12
	andq	(%rbx), %r12
	orq	%rdx, %r12
	movq	%r12, (%rbx)
.L13201:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	4984(%rsp), %rdi
	subq	%r8, %rsi
	leaq	4992(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L13214
	movq	$0, 4984(%rsp)
	movq	$0, 4992(%rsp)
.L13215:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L13218
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L13224:
	movq	4992(%rsp), %rdi
	movq	4984(%rsp), %r9
	orq	5008(%rsp), %rdi
	orq	5000(%rsp), %r9
	movq	%rdi, 5024(%rsp)
	movq	%r9, 5016(%rsp)
	jmp	.L13152
.L13218:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L13224
	cmpq	$63, %rax
	jle	.L13222
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L13224
.L13222:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L13224
.L13214:
	cmpq	$63, %rsi
	jle	.L13216
	leal	-64(%rsi), %ecx
	movq	$0, 4984(%rsp)
	shrq	%cl, %r10
	movq	%r10, 4992(%rsp)
	jmp	.L13215
.L13216:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 4984(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 4992(%rsp)
	jmp	.L13215
.L13210:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20414:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r12), %rax
	orq	%rdx, %rax
	movq	%rax, (%r12)
	jmp	.L13201
.L13206:
	movq	(%r12), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20413
.L13202:
	cmpq	$63, %r8
	jle	.L13204
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 5000(%rsp)
	jmp	.L20412
.L13204:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 5000(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5008(%rsp)
	jmp	.L13203
.L21451:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L13190
	movq	$0, 5000(%rsp)
	movq	$0, 5008(%rsp)
.L13191:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L13194
	movq	%rdx, (%rbx)
	movq	%rdx, (%r12)
	jmp	.L13201
.L13194:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L13201
	cmpq	$63, %rax
	jle	.L13198
	subl	%esi, %edi
	jmp	.L20415
.L13198:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20414
.L13190:
	cmpq	$63, %rsi
	jle	.L13192
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5000(%rsp)
	shrq	%cl, %rax
	movq	%rax, 5008(%rsp)
	jmp	.L13191
.L13192:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 5000(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 5008(%rsp)
	jmp	.L13191
.L13184:
	negq	%r8
	jmp	.L13185
.L13154:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5024(%rsp)
	jmp	.L20422
.L13155:
	andq	%r8, %r11
	movq	%r11, 5024(%rsp)
.L20423:
	andq	%r9, %r10
	jmp	.L20422
.L13156:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5024(%rsp)
	jmp	.L20423
.L21440:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	796(%rsp), %eax
	movl	%eax, 796(%rsp)
	jmp	.L13151
.L21432:
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L13137
.L21431:
	movzbl	16(%rbx), %eax
	movq	%r12, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L13119
	cmpb	$15, %al
	je	.L13119
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L13122:
	cmpl	$128, %esi
	je	.L13124
	cmpl	$64, %esi
	jbe	.L13125
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L13124:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13128
	cmpb	$6, 16(%rax)
	jne	.L13115
	testb	$2, 62(%rax)
	je	.L13115
.L13128:
	cmpl	$128, %esi
	je	.L13130
	cmpl	$64, %esi
	jbe	.L13131
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20407:
	testl	$1, %eax 
	je	.L13130
	cmpl	$64, %esi
	jbe	.L13133
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L13130:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L13115
.L13133:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13130
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13130
.L13131:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20407
.L13125:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13124
	movq	$-1, %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 32(%rdx)
	jmp	.L13124
.L13119:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13122
.L21430:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L13111
.L21429:
	movq	8(%r14), %rbp
	movq	832(%rsp), %rdi
	cmpl	$60, %r12d
	movq	%rbp, 2744(%rsp)
	movq	32(%rdi), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rdi), %r14
	je	.L13099
	cmpl	$60, %r12d
	ja	.L13110
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21035:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2744(%rsp), %rdi
.L20405:
	movq	%rax, %rdx
	call	build_complex
.L20406:
	movq	%rax, %rbp
	jmp	.L13067
.L13110:
	cmpl	$61, %r12d
	je	.L13100
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2736(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L13104
	cmpb	$10, %al
	je	.L13104
	cmpb	$11, %al
	je	.L13104
	cmpb	$12, %al
	movl	$70, %edi
	je	.L13104
.L13103:
	movq	2736(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r15
	movq	%rax, %rsi
	movzbl	16(%r15), %eax
	cmpb	$6, %al
	je	.L13107
	cmpb	$10, %al
	je	.L13107
	cmpb	$11, %al
	je	.L13107
	cmpb	$12, %al
	movl	$70, %edi
	je	.L13107
.L13106:
	movq	2736(%rsp), %rdx
.L20404:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2744(%rsp), %rdi
	jmp	.L20405
.L13107:
	movl	$62, %edi
	jmp	.L13106
.L13104:
	movl	$62, %edi
	jmp	.L13103
.L13100:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20404
.L13099:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21035
.L21428:
	movq	32(%r14), %rsi
	movq	832(%rsp), %r10
	xorl	%ebx, %ebx
	movq	%rsi, 18528(%rsp)
	movq	40(%r14), %r9
	movq	%r9, 18536(%rsp)
	movq	48(%r14), %r13
	movq	%r13, 18544(%rsp)
	movq	32(%r10), %rbp
	movq	%rbp, 18560(%rsp)
	movq	%r14, %rbp
	movq	40(%r10), %rdi
	movq	%rdi, 18568(%rsp)
	movq	48(%r10), %rcx
	movq	%r13, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	%r9, 8(%rsp)
	movq	%rcx, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L13067
	movq	18560(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %r11
	movq	%rdx, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%r11, 16(%rsp)
	call	target_isnan
	movq	832(%rsp), %rbp
	testl	%eax, %eax
	jne	.L13067
	movq	8(%r14), %rdi
	movq	18544(%rsp), %rsi
	movl	%r12d, 10752(%rsp)
	movq	18528(%rsp), %r10
	movq	18536(%rsp), %rcx
	movq	18560(%rsp), %r9
	movq	18568(%rsp), %r13
	movq	18576(%rsp), %r8
	movq	%rdi, 10760(%rsp)
	movq	%rsi, 10784(%rsp)
	movl	$const_binop_1, %edi
	leaq	10752(%rsp), %rsi
	movq	%r10, 10768(%rsp)
	movq	%rcx, 10776(%rsp)
	movq	%r9, 10792(%rsp)
	movq	%r13, 10800(%rsp)
	movq	%r8, 10808(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L13072
	movq	10816(%rsp), %rbp
.L13073:
	movzbl	16(%rbp), %eax
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L13075
	cmpb	$25, %al
	je	.L21454
.L13075:
	movq	832(%rsp), %r9
	movzbl	18(%r14), %ecx
	movzbl	18(%r9), %r10d
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%bl, %cl
	movzbl	18(%rbp), %ebx
	shrb	$3, %r10b
	andl	$1, %r10d
	orb	%r10b, %cl
	salb	$3, %cl
	andb	$-9, %bl
	orb	%cl, %bl
	movb	%bl, 18(%rbp)
	movl	%ebx, %esi
	movzbl	18(%r9), %eax
	movzbl	18(%r14), %r8d
	shrb	$3, %sil
	andb	$-5, %bl
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%esi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rbp)
	jmp	.L13067
.L21454:
	movq	8(%rbp), %rcx
	movq	32(%rbp), %rdi
	movq	40(%rbp), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13079
	cmpb	$15, %al
	je	.L13079
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L13082:
	cmpl	$128, %esi
	je	.L13084
	cmpl	$64, %esi
	jbe	.L13085
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L13084:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13088
	cmpb	$6, 16(%rax)
	jne	.L13075
	testb	$2, 62(%rax)
	je	.L13075
.L13088:
	cmpl	$128, %esi
	je	.L13090
	cmpl	$64, %esi
	jbe	.L13091
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20403:
	testl	$1, %eax 
	je	.L13090
	cmpl	$64, %esi
	jbe	.L13093
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L13090:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%dl
	movzbl	%dl, %ebx
	jmp	.L13075
.L13093:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13090
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13090
.L13091:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20403
.L13085:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13084
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L13084
.L13079:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13082
.L13072:
	movq	%r14, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %rbp
	jmp	.L13073
.L21427:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 828(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21455
.L12861:
	movq	832(%rsp), %rax
	movl	$0, 800(%rsp)
	movl	$0, 824(%rsp)
	movq	32(%r14), %r11
	movq	40(%r14), %r10
	movq	32(%rax), %r8
	movq	40(%rax), %r9
	leal	-59(%r12), %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L13002(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L13002:
	.quad	.L12936
	.quad	.L12939
	.quad	.L12945
	.quad	.L12978
	.quad	.L12978
	.quad	.L12978
	.quad	.L12981
	.quad	.L12987
	.quad	.L12987
	.quad	.L12987
	.quad	.L12990
	.quad	.L18929
	.quad	.L12978
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L12992
	.quad	.L12992
	.quad	.L18929
	.quad	.L18929
	.quad	.L12868
	.quad	.L12867
	.quad	.L12895
	.quad	.L12894
	.quad	.L12863
	.quad	.L12864
	.quad	.L12865
	.quad	.L12866
	.text
.L12863:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5088(%rsp)
.L20398:
	movq	%r10, 5080(%rsp)
.L12862:
	movl	828(%rsp), %eax
	testl	%eax, %eax
	je	.L13003
	movq	5080(%rsp), %rax
	testq	%rax, %rax
	jne	.L13005
	cmpq	$0, 5088(%rsp)
	js	.L13005
.L13004:
	movl	800(%rsp), %eax
	testl	%eax, %eax
	jne	.L13003
	testb	$8, 18(%r14)
	jne	.L13003
	movq	832(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L13003
	cmpq	$0, size_htab.0(%rip)
	movq	5088(%rsp), %rbx
	je	.L21456
.L13006:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L13010
	cmpb	$25, %al
	je	.L21457
.L13010:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %esi
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%sil, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20406
	movq	new_const.1(%rip), %rbp
	movl	$25, %edi
	movq	%rbp, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L13067
.L21457:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L13014
	cmpb	$15, %al
	je	.L13014
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L13017:
	cmpl	$128, %esi
	je	.L13019
	cmpl	$64, %esi
	jbe	.L13020
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L13019:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13023
	cmpb	$6, 16(%rax)
	jne	.L13010
	testb	$2, 62(%rax)
	je	.L13010
.L13023:
	cmpl	$128, %esi
	je	.L13025
	cmpl	$64, %esi
	jbe	.L13026
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20400:
	testl	$1, %eax 
	je	.L13025
	cmpl	$64, %esi
	jbe	.L13028
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	orq	%r12, 40(%rdx)
.L13025:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L13010
.L13028:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13025
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13025
.L13026:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20400
.L13020:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13019
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L13019
.L13014:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13017
.L21456:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L13006
.L13003:
	movq	5088(%rsp), %rdi
	movq	5080(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	832(%rsp), %r13
	movl	$1, %r11d
	movzbl	18(%r14), %ebx
	movzbl	18(%r13), %ecx
	shrb	$3, %bl
	andl	%ebx, %r11d
	shrb	$3, %cl
	movl	%ecx, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L13036
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L13039
	movl	828(%rsp), %eax
	testl	%eax, %eax
	je	.L13038
.L13039:
	movl	800(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L13038:
	movl	%edx, %eax
.L20402:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	828(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L13065
	testb	$8, %dl
	jne	.L13065
	movq	5080(%rsp), %rax
	cmpq	%rax, 40(%rdi)
	je	.L21458
.L13066:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L13065:
	movq	832(%rsp), %rdx
	movzbl	18(%rdi), %r11d
	movq	%rdi, %rbp
	movzbl	18(%r14), %r15d
	movzbl	18(%rdx), %r14d
	movl	%r11d, %r8d
	andb	$-5, %r11b
	shrb	$3, %r8b
	shrb	$2, %r15b
	orl	%r8d, %r15d
	shrb	$2, %r14b
	orl	%r14d, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %r11b
	movb	%r11b, 18(%rdi)
	jmp	.L13067
.L21458:
	movq	5088(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L13066
	jmp	.L13065
.L13036:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L13042
	movl	828(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L13041
.L13042:
	movl	800(%rsp), %r8d
	movl	$1, %r10d
	movl	$0, %r15d
	testl	%r8d, %r8d
	cmove	%r15d, %r10d
.L13041:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L13044
	cmpb	$25, %al
	je	.L21459
.L13044:
	testl	%r10d, %r10d
	je	.L13040
	movl	824(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L13040:
	movl	%ebp, %eax
	jmp	.L20402
.L21459:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13048
	cmpb	$15, %al
	je	.L13048
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L13051:
	cmpl	$128, %esi
	je	.L13053
	cmpl	$64, %esi
	jbe	.L13054
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L13053:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13057
	cmpb	$6, 16(%rax)
	jne	.L13044
	testb	$2, 62(%rax)
	je	.L13044
.L13057:
	cmpl	$128, %esi
	je	.L13059
	cmpl	$64, %esi
	jbe	.L13060
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20401:
	testl	$1, %eax 
	je	.L13059
	cmpl	$64, %esi
	jbe	.L13062
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L13059:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L13044
.L13062:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13059
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13059
.L13060:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20401
.L13054:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13053
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L13053
.L13048:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13051
.L13005:
	cmpq	$-1, %rax
	jne	.L13003
	cmpq	$0, 5088(%rsp)
	jns	.L13003
	jmp	.L13004
.L12936:
	leaq	(%r9,%r10), %rbp
	leaq	(%r8,%r11), %rsi
	cmpq	%r11, %rsi
	leaq	1(%rbp), %rax
	movq	%rsi, 5088(%rsp)
	cmovb	%rax, %rbp
	xorq	%r10, %r9 
	notq	%r9
	xorq	%rbp, %r10 
	movq	%rbp, 5080(%rsp)
	andq	%r10, %r9
.L20397:
	shrq	$63, %r9
	movl	%r9d, 800(%rsp)
	jmp	.L12862
.L12939:
	testq	%r8, %r8
	jne	.L12940
	movq	%r9, %rax
	movq	$0, 5088(%rsp)
	negq	%rax
.L20392:
	movq	%rax, 5080(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5088(%rsp), %rdx
	addq	5080(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rdi
	movq	%rdx, 5088(%rsp)
	cmovb	%rdi, %r12
	xorq	%r12, %r9 
	movq	%r12, 5080(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20397
.L12940:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5088(%rsp)
	notq	%rax
	jmp	.L20392
.L12945:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 10928(%rsp)
	movq	%rcx, 10936(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rbp
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %edi
	shrq	$32, %rdx
	shrq	$32, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 10896(%rsp)
	leaq	5080(%rsp), %r12
	movq	%rdi, 10944(%rsp)
	movq	%rdx, 10952(%rsp)
	movq	%rbp, 10904(%rsp)
	movq	%rbx, 10912(%rsp)
	movq	%rcx, 10920(%rsp)
	movq	$0, 10832(%rsp)
	movq	$0, 10840(%rsp)
	movq	$0, 10848(%rsp)
	movq	$0, 10856(%rsp)
	movq	$0, 10864(%rsp)
	movq	$0, 10872(%rsp)
	movq	$0, 10880(%rsp)
	movq	$0, 10888(%rsp)
	xorl	%esi, %esi
.L12957:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	10928(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L12956:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	10896(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	10832(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 10832(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L12956
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 10864(%rsp,%rbp,8)
	jle	.L12957
	movq	10840(%rsp), %rdx
	movq	10856(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	10832(%rsp), %rdx
	addq	10848(%rsp), %rsi
	movq	%rdx, 5088(%rsp)
	movq	%rsi, (%r12)
	movq	10888(%rsp), %rcx
	movq	10872(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	10880(%rsp), %rcx
	addq	10864(%rsp), %rax
	testq	%r10, %r10
	js	.L21460
.L12960:
	testq	%r9, %r9
	js	.L21461
.L12966:
	cmpq	$0, (%r12)
	js	.L21462
	orq	%rcx, %rax
.L21034:
	setne	%r10b
	movzbl	%r10b, %eax
.L20396:
	movl	%eax, 800(%rsp)
	jmp	.L12862
.L21462:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21034
.L21461:
	testq	%r11, %r11
	jne	.L12967
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L12968:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L12966
.L12967:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L12968
.L21460:
	testq	%r8, %r8
	jne	.L12961
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L12962:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L12960
.L12961:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L12962
.L12981:
	testq	%r9, %r9
	jne	.L12982
	cmpq	$1, %r8
	je	.L20395
.L12982:
	cmpq	%r8, %r11
	je	.L21463
.L12983:
	leaq	5088(%rsp), %rcx
	leaq	5080(%rsp), %rbx
	leaq	5040(%rsp), %rdi
	leaq	5032(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rdi, 16(%rsp)
.L20393:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20396
.L21463:
	cmpq	%r9, %r10
	jne	.L12983
	testq	%r8, %r8
	jne	.L12984
	testq	%r9, %r9
	je	.L12983
.L12984:
	movq	$1, 5088(%rsp)
.L20394:
	movq	$0, 5080(%rsp)
	jmp	.L12862
.L20395:
	movq	%r11, 5088(%rsp)
	jmp	.L20398
.L12987:
	testq	%r9, %r9
	jne	.L12990
	testq	%r8, %r8
	jle	.L12990
	testb	$4, 18(%r14)
	jne	.L12990
	movq	832(%rsp), %rbp
	testb	$4, 18(%rbp)
	jne	.L12990
	testq	%r10, %r10
	jne	.L12990
	testq	%r11, %r11
	js	.L12990
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5088(%rsp)
	jmp	.L20394
.L12990:
	leaq	5040(%rsp), %rbx
	leaq	5032(%rsp), %rdi
	leaq	5088(%rsp), %rdx
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	5080(%rsp), %rax
	jmp	.L20393
.L12978:
	testq	%r9, %r9
	jne	.L12982
	testq	%r8, %r8
	jle	.L12981
	testb	$4, 18(%r14)
	jne	.L12981
	movq	832(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L12981
	testq	%r10, %r10
	jne	.L12981
	testq	%r11, %r11
	js	.L12981
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5088(%rsp)
	jmp	.L20394
.L12992:
	testl	%r15d, %r15d
	je	.L12993
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L12998
.L21196:
	cmpq	%r9, %r10
	je	.L21464
.L12997:
	xorl	%ecx, %ecx
	movq	%rax, 5088(%rsp)
	cmpl	$78, %r12d
	sete	%cl
	cmpq	%rcx, 5088(%rsp)
	je	.L20395
	movq	%r8, 5088(%rsp)
	movq	%r9, 5080(%rsp)
	jmp	.L12862
.L21464:
	cmpq	%r8, %r11
	jae	.L12997
.L12998:
	movl	$1, %eax
	jmp	.L12997
.L12993:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L12998
	jmp	.L21196
.L12868:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5088(%rsp), %rbx
	leaq	5080(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21465
	cmpq	$127, %r8
	jle	.L12884
	movq	$0, 5080(%rsp)
.L20383:
	movq	$0, 5088(%rsp)
.L12885:
	cmpl	$64, %esi
	jbe	.L12888
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20384:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L12883
	cmpl	$63, %esi
	jbe	.L12892
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20386:
	movq	%rax, (%r9)
.L12883:
	movl	$1, 824(%rsp)
	jmp	.L12862
.L12892:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20385:
	movq	%rax, (%rbx)
	jmp	.L12883
.L12888:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20384
.L12884:
	cmpq	$63, %r8
	jle	.L12886
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5080(%rsp)
	jmp	.L20383
.L12886:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%r11, %r12
	subl	%r8d, %eax
	salq	%cl, %r10
	movl	%eax, %ecx
	shrq	%cl, %r12
	movl	%r8d, %ecx
	movq	%r12, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5088(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5080(%rsp)
	jmp	.L12885
.L21465:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L12870
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L12871:
	cmpq	$127, %rdx
	jle	.L12872
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L12873:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L12876
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L12883
.L12876:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L12883
	cmpq	$63, %rax
	jle	.L12880
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20386
.L12880:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20385
.L12872:
	cmpq	$63, %rdx
	jle	.L12874
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L12873
.L12874:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L12873
.L12870:
	xorl	%edi, %edi
	jmp	.L12871
.L12867:
	negq	%r8
	jmp	.L12868
.L12895:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	cqto
	andl	$511, %r9d
	mov	%r9d, %ebp
	movl	%r9d, %edi
	idivq	%rbp
	leaq	(%rbp,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5072(%rsp), %rbp
	leaq	5064(%rsp), %rbx
	testq	%r8, %r8
	js	.L21466
	cmpq	$127, %r8
	jle	.L12912
	movq	$0, 5064(%rsp)
.L20388:
	movq	$0, 5072(%rsp)
.L12913:
	cmpl	$64, %edi
	jbe	.L12916
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20389:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L12911
	cmpl	$63, %edi
	jbe	.L12920
.L20391:
	leal	-64(%rdi), %ecx
	movq	$-1, %rdi
	salq	%cl, %rdi
	salq	%cl, %rdx
	notq	%rdi
	andq	(%rbx), %rdi
	orq	%rdx, %rdi
	movq	%rdi, (%rbx)
.L12911:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5048(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5056(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L12924
	movq	$0, 5048(%rsp)
	movq	$0, 5056(%rsp)
.L12925:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L12928
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L12934:
	movq	5056(%rsp), %r8
	movq	5048(%rsp), %r11
	orq	5072(%rsp), %r8
	orq	5064(%rsp), %r11
	movq	%r8, 5088(%rsp)
	movq	%r11, 5080(%rsp)
	jmp	.L12862
.L12928:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L12934
	cmpq	$63, %rax
	jle	.L12932
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L12934
.L12932:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L12934
.L12924:
	cmpq	$63, %rsi
	jle	.L12926
	leal	-64(%rsi), %ecx
	movq	$0, 5048(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5056(%rsp)
	jmp	.L12925
.L12926:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5048(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5056(%rsp)
	jmp	.L12925
.L12920:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20390:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L12911
.L12916:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20389
.L12912:
	cmpq	$63, %r8
	jle	.L12914
	leal	-64(%r8), %ecx
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5064(%rsp)
	jmp	.L20388
.L12914:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5064(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5072(%rsp)
	jmp	.L12913
.L21466:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L12900
	movq	$0, 5064(%rsp)
	movq	$0, 5072(%rsp)
.L12901:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L12904
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L12911
.L12904:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L12911
	cmpq	$63, %rax
	jle	.L12908
	subl	%esi, %edi
	jmp	.L20391
.L12908:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20390
.L12900:
	cmpq	$63, %rsi
	jle	.L12902
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5064(%rsp)
	shrq	%cl, %rax
.L20387:
	movq	%rax, 5072(%rsp)
	jmp	.L12901
.L12902:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5064(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20387
.L12894:
	negq	%r8
	jmp	.L12895
.L12864:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5088(%rsp)
	jmp	.L20398
.L12865:
	andq	%r8, %r11
	movq	%r11, 5088(%rsp)
.L20399:
	andq	%r9, %r10
	jmp	.L20398
.L12866:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5088(%rsp)
	jmp	.L20399
.L21455:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	828(%rsp), %eax
	movl	%eax, 828(%rsp)
	jmp	.L12861
.L21426:
	movq	new_const.1(%rip), %r11
	movl	$25, %edi
	movq	%r11, (%rax)
	movq	%r11, 832(%rsp)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L12847
.L21425:
	movzbl	16(%rbx), %eax
	movq	%rbp, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L12829
	cmpb	$15, %al
	je	.L12829
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L12832:
	cmpl	$128, %esi
	je	.L12834
	cmpl	$64, %esi
	jbe	.L12835
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L12834:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12838
	cmpb	$6, 16(%rax)
	jne	.L12825
	testb	$2, 62(%rax)
	je	.L12825
.L12838:
	cmpl	$128, %esi
	je	.L12840
	cmpl	$64, %esi
	jbe	.L12841
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20382:
	testl	$1, %eax 
	je	.L12840
	cmpl	$64, %esi
	jbe	.L12843
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L12840:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%r13
	orq	%r8, %r13
	orq	%r9, %r13
	setne	%r15b
	movzbl	%r15b, %r10d
	jmp	.L12825
.L12843:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12840
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12840
.L12841:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20382
.L12835:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12834
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L12834
.L12829:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12832
.L21424:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L12821
.L21423:
	movzbl	16(%rax), %edx
	cmpb	$13, %dl
	je	.L12804
	cmpb	$15, %dl
	je	.L12804
	movzwl	60(%rax), %edx
	andl	$511, %edx
.L12807:
	cmpl	$128, %edx
	je	.L12809
	cmpl	$64, %edx
	jbe	.L12810
	leal	-64(%rdx), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 40(%rsi)
.L12809:
	movq	8(%rsi), %rax
	testb	$32, 17(%rax)
	je	.L12813
	cmpb	$6, 16(%rax)
	jne	.L12800
	testb	$2, 62(%rax)
	je	.L12800
.L12813:
	cmpl	$128, %edx
	je	.L12800
	cmpl	$64, %edx
	jbe	.L12816
	movq	40(%rsi), %rax
	leal	-65(%rdx), %ecx
	sarq	%cl, %rax
.L20381:
	testl	$1, %eax 
	je	.L12800
	cmpl	$64, %edx
	jbe	.L12818
	leal	-64(%rdx), %ecx
	movq	$-1, %rdi
	salq	%cl, %rdi
	orq	%rdi, 40(%rsi)
	jmp	.L12800
.L12818:
	movq	$-1, %rax
	cmpl	$63, %edx
	movq	%rax, 40(%rsi)
	ja	.L12800
	movl	%edx, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rsi)
	jmp	.L12800
.L12816:
	movq	32(%rsi), %rax
	leal	-1(%rdx), %ecx
	shrq	%cl, %rax
	jmp	.L20381
.L12810:
	cmpl	$63, %edx
	movq	$0, 40(%rsi)
	ja	.L12809
	movq	$-1, %r8
	movl	%edx, %ecx
	salq	%cl, %r8
	notq	%r8
	andq	%r8, 32(%rsi)
	jmp	.L12809
.L12804:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edx
	movl	$32, %eax
	cmove	%eax, %edx
	jmp	.L12807
.L21422:
	movq	7688(%rsp), %rcx
	movq	920(%rsp), %rsi
	movl	$88, %edi
	movq	840(%rsp), %rdx
	xorl	%eax, %eax
	call	build
	movq	%rax, 840(%rsp)
	jmp	.L12194
.L21421:
	movq	8(%rbp), %rsi
	movq	%rsi, 2776(%rsp)
	movl	$83, %esi
	movq	40(%rbp), %r15
	cmpl	$60, %esi
	movq	32(%rbp), %r13
	movq	32(%r14), %rbp
	movq	40(%r14), %r14
	je	.L12785
	cmpl	$60, %esi
	ja	.L12796
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21033:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2776(%rsp), %rdi
.L20379:
	movq	%rax, %rdx
	call	build_complex
.L20380:
	movq	%rax, %rbx
	jmp	.L12753
.L12796:
	movl	$83, %edi
	cmpl	$61, %edi
	je	.L12786
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2768(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L12790
	cmpb	$10, %al
	je	.L12790
	cmpb	$11, %al
	je	.L12790
	cmpb	$12, %al
	movl	$70, %edi
	je	.L12790
.L12789:
	movq	2768(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbp
	movq	%rax, %rsi
	movzbl	16(%rbp), %eax
	cmpb	$6, %al
	je	.L12793
	cmpb	$10, %al
	je	.L12793
	cmpb	$11, %al
	je	.L12793
	cmpb	$12, %al
	movl	$70, %edi
	je	.L12793
.L12792:
	movq	2768(%rsp), %rdx
.L20378:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2776(%rsp), %rdi
	jmp	.L20379
.L12793:
	movl	$62, %edi
	jmp	.L12792
.L12790:
	movl	$62, %edi
	jmp	.L12789
.L12786:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20378
.L12785:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21033
.L21420:
	movq	32(%rbp), %r9
	xorl	%r12d, %r12d
	movq	%rbp, %rbx
	movq	%r9, 18528(%rsp)
	movq	40(%rbp), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%rbp), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %rsi
	movq	%rsi, 18568(%rsp)
	movq	48(%r14), %r15
	movq	%rdi, 16(%rsp)
	movq	%r9, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r15, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L12753
	movq	18560(%rsp), %rbx
	movq	18568(%rsp), %r10
	movq	18576(%rsp), %r13
	movq	%rbx, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r14, %rbx
	movq	%r13, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L12753
	movq	8(%rbp), %rsi
	movq	18560(%rsp), %rdi
	movl	$83, 10960(%rsp)
	movq	18528(%rsp), %r15
	movq	18536(%rsp), %r9
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r11
	movq	18576(%rsp), %r8
	movq	%rsi, 10968(%rsp)
	movq	%rdi, 11000(%rsp)
	leaq	10960(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r15, 10976(%rsp)
	movq	%r9, 10984(%rsp)
	movq	%rdx, 10992(%rsp)
	movq	%r11, 11008(%rsp)
	movq	%r8, 11016(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L12758
	movq	11024(%rsp), %rbx
.L12759:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L12761
	cmpb	$25, %al
	je	.L21469
.L12761:
	movzbl	18(%rbp), %r15d
	movzbl	18(%r14), %edx
	shrb	$3, %r15b
	shrb	$3, %dl
	andl	$1, %r15d
	andl	$1, %edx
	orb	%r12b, %r15b
	movzbl	18(%rbx), %r12d
	orb	%dl, %r15b
	salb	$3, %r15b
	andb	$-9, %r12b
	orb	%r15b, %r12b
	movb	%r12b, 18(%rbx)
	movl	%r12d, %edi
	movzbl	18(%r14), %eax
	movzbl	18(%rbp), %r8d
	shrb	$3, %dil
	andb	$-5, %r12b
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%edi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %r12b
	movb	%r12b, 18(%rbx)
	jmp	.L12753
.L21469:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L12765
	cmpb	$15, %al
	je	.L12765
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L12768:
	cmpl	$128, %esi
	je	.L12770
	cmpl	$64, %esi
	jbe	.L12771
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L12770:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12774
	cmpb	$6, 16(%rax)
	jne	.L12761
	testb	$2, 62(%rax)
	je	.L12761
.L12774:
	cmpl	$128, %esi
	je	.L12776
	cmpl	$64, %esi
	jbe	.L12777
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20377:
	testl	$1, %eax 
	je	.L12776
	cmpl	$64, %esi
	jbe	.L12779
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L12776:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%r12d,%r9
	orq	%rdi, %r9
	orq	%r8, %r9
	setne	%cl
	movzbl	%cl, %r12d
	jmp	.L12761
.L12779:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12776
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12776
.L12777:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20377
.L12771:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12770
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L12770
.L12765:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12768
.L12758:
	movq	%rbp, %rdi
	movl	$1, %r12d
	call	copy_node
	movq	%rax, %rbx
	jmp	.L12759
.L21419:
	movq	8(%rbp), %r13
	movl	$1, %r15d
	movl	$0, 876(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21470
.L12547:
	movl	$83, %eax
	movl	$0, 848(%rsp)
	movl	$0, 872(%rsp)
	subl	$59, %eax
	movq	32(%rbp), %r11
	movq	40(%rbp), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L12688(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L12688:
	.quad	.L12622
	.quad	.L12625
	.quad	.L12631
	.quad	.L12664
	.quad	.L12664
	.quad	.L12664
	.quad	.L12667
	.quad	.L12673
	.quad	.L12673
	.quad	.L12673
	.quad	.L12676
	.quad	.L18929
	.quad	.L12664
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L12678
	.quad	.L12678
	.quad	.L18929
	.quad	.L18929
	.quad	.L12554
	.quad	.L12553
	.quad	.L12581
	.quad	.L12580
	.quad	.L12549
	.quad	.L12550
	.quad	.L12551
	.quad	.L12552
	.text
.L12549:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5152(%rsp)
.L20372:
	movq	%r10, 5144(%rsp)
.L12548:
	movl	876(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L12689
	movq	5144(%rsp), %rax
	testq	%rax, %rax
	jne	.L12691
	cmpq	$0, 5152(%rsp)
	js	.L12691
.L12690:
	movl	848(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L12689
	testb	$8, 18(%rbp)
	jne	.L12689
	testb	$8, 18(%r14)
	jne	.L12689
	cmpq	$0, size_htab.0(%rip)
	movq	5152(%rsp), %rbx
	je	.L21471
.L12692:
	movq	new_const.1(%rip), %rbp
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%rbp), %eax
	decq	%rcx
	movq	%rbx, 32(%rbp)
	movq	%rcx, 40(%rbp)
	movq	%r13, 8(%rbp)
	movq	%rbp, %rdi
	movq	%rbp, %r11
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L12696
	cmpb	$25, %al
	je	.L21472
.L12696:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %esi
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%sil, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20380
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L12753
.L21472:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L12700
	cmpb	$15, %al
	je	.L12700
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L12703:
	cmpl	$128, %esi
	je	.L12705
	cmpl	$64, %esi
	jbe	.L12706
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L12705:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12709
	cmpb	$6, 16(%rax)
	jne	.L12696
	testb	$2, 62(%rax)
	je	.L12696
.L12709:
	cmpl	$128, %esi
	je	.L12711
	cmpl	$64, %esi
	jbe	.L12712
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20374:
	testl	$1, %eax 
	je	.L12711
	cmpl	$64, %esi
	jbe	.L12714
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L12711:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r12
	orq	%r8, %r12
	orq	%r9, %r12
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L12696
.L12714:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12711
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12711
.L12712:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20374
.L12706:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12705
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L12705
.L12700:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12703
.L21471:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L12692
.L12689:
	movq	5152(%rsp), %rdi
	movq	5144(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%rbp), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movzbl	18(%r14), %r8d
	movl	$1, %r11d
	movzbl	18(%rbp), %r13d
	shrb	$3, %r8b
	shrb	$3, %r13b
	movl	%r8d, %ebx
	andl	%r13d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L12722
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L12725
	movl	876(%rsp), %eax
	testl	%eax, %eax
	je	.L12724
.L12725:
	movl	848(%rsp), %r15d
	movl	$1, %eax
	testl	%r15d, %r15d
	cmovne	%eax, %edx
.L12724:
	movl	%edx, %eax
.L20376:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	876(%rsp), %eax
	testl	%eax, %eax
	je	.L12751
	testb	$8, %dl
	jne	.L12751
	movq	5144(%rsp), %r12
	cmpq	%r12, 40(%rdi)
	je	.L21473
.L12752:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L12751:
	movzbl	18(%rdi), %ebx
	movzbl	18(%rbp), %r8d
	movzbl	18(%r14), %ebp
	movl	%ebx, %r11d
	shrb	$2, %r8b
	andb	$-5, %bl
	shrb	$3, %r11b
	shrb	$2, %bpl
	orl	%r11d, %r8d
	orl	%ebp, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L12753
.L21473:
	movq	5152(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L12752
	jmp	.L12751
.L12722:
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L12728
	movl	876(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L12727
.L12728:
	movl	848(%rsp), %esi
	movl	$1, %r10d
	movl	$0, %eax
	testl	%esi, %esi
	cmove	%eax, %r10d
.L12727:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L12730
	cmpb	$25, %al
	je	.L21474
.L12730:
	testl	%r10d, %r10d
	je	.L12726
	movl	872(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %r12d
.L12726:
	movl	%r12d, %eax
	jmp	.L20376
.L21474:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L12734
	cmpb	$15, %al
	je	.L12734
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L12737:
	cmpl	$128, %esi
	je	.L12739
	cmpl	$64, %esi
	jbe	.L12740
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L12739:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12743
	cmpb	$6, 16(%rax)
	jne	.L12730
	testb	$2, 62(%rax)
	je	.L12730
.L12743:
	cmpl	$128, %esi
	je	.L12745
	cmpl	$64, %esi
	jbe	.L12746
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20375:
	testl	$1, %eax 
	je	.L12745
	cmpl	$64, %esi
	jbe	.L12748
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L12745:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r13
	orq	%r8, %r13
	orq	%r9, %r13
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L12730
.L12748:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12745
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12745
.L12746:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20375
.L12740:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12739
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L12739
.L12734:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12737
.L12691:
	cmpq	$-1, %rax
	jne	.L12689
	cmpq	$0, 5152(%rsp)
	jns	.L12689
	jmp	.L12690
.L12622:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5152(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5144(%rsp)
	andq	%r10, %r9
.L20371:
	shrq	$63, %r9
	movl	%r9d, 848(%rsp)
	jmp	.L12548
.L12625:
	testq	%r8, %r8
	jne	.L12626
	movq	%r9, %rax
	movq	$0, 5152(%rsp)
	negq	%rax
.L20366:
	movq	%rax, 5144(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5152(%rsp), %rdx
	addq	5144(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbx
	movq	%rdx, 5152(%rsp)
	cmovb	%rbx, %r12
	xorq	%r12, %r9 
	movq	%r12, 5144(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20371
.L12626:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5152(%rsp)
	notq	%rax
	jmp	.L20366
.L12631:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 11136(%rsp)
	movq	%rcx, 11144(%rsp)
	movq	%r8, %r12
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %r12d
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 11112(%rsp)
	movq	%rbx, 11152(%rsp)
	movq	%rdx, 11160(%rsp)
	movq	%r12, 11104(%rsp)
	movq	%rdi, 11120(%rsp)
	movq	%rcx, 11128(%rsp)
	movq	$0, 11040(%rsp)
	movq	$0, 11048(%rsp)
	movq	$0, 11056(%rsp)
	movq	$0, 11064(%rsp)
	movq	$0, 11072(%rsp)
	movq	$0, 11080(%rsp)
	movq	$0, 11088(%rsp)
	movq	$0, 11096(%rsp)
	xorl	%esi, %esi
.L12643:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	11136(%rsp,%rbx,8), %r12
	xorl	%ebx, %ebx
.L12642:
	movq	%r12, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	11104(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	11040(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 11040(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L12642
	movslq	%esi,%r12
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 11072(%rsp,%r12,8)
	jle	.L12643
	movq	11048(%rsp), %rdx
	movq	11064(%rsp), %rsi
	movq	11080(%rsp), %rax
	movq	11096(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	11040(%rsp), %rdx
	addq	11056(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	11072(%rsp), %rax
	addq	11088(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 5152(%rsp)
	movq	%rsi, 5144(%rsp)
	js	.L21475
.L12646:
	testq	%r9, %r9
	js	.L21476
.L12652:
	cmpq	$0, 5144(%rsp)
	js	.L21477
	orq	%rcx, %rax
.L21032:
	setne	%r10b
	movzbl	%r10b, %eax
.L20370:
	movl	%eax, 848(%rsp)
	jmp	.L12548
.L21477:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21032
.L21476:
	testq	%r11, %r11
	jne	.L12653
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L12654:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L12652
.L12653:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L12654
.L21475:
	testq	%r8, %r8
	jne	.L12647
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L12648:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L12646
.L12647:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L12648
.L12667:
	testq	%r9, %r9
	jne	.L12668
	cmpq	$1, %r8
	je	.L20369
.L12668:
	cmpq	%r8, %r11
	je	.L21478
.L12669:
	leaq	5152(%rsp), %rbx
	leaq	5144(%rsp), %rdi
	leaq	5104(%rsp), %rcx
	leaq	5096(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20367:
	movl	$83, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20370
.L21478:
	cmpq	%r9, %r10
	jne	.L12669
	testq	%r8, %r8
	jne	.L12670
	testq	%r9, %r9
	je	.L12669
.L12670:
	movq	$1, 5152(%rsp)
.L20368:
	movq	$0, 5144(%rsp)
	jmp	.L12548
.L20369:
	movq	%r11, 5152(%rsp)
	jmp	.L20372
.L12673:
	testq	%r9, %r9
	jne	.L12676
	testq	%r8, %r8
	jle	.L12676
	testb	$4, 18(%rbp)
	jne	.L12676
	testb	$4, 18(%r14)
	jne	.L12676
	testq	%r10, %r10
	jne	.L12676
	testq	%r11, %r11
	js	.L12676
	movl	$83, %edx
	leaq	-1(%r8,%r11), %r12
	cmpl	$67, %edx
	cmove	%r12, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5152(%rsp)
	jmp	.L20368
.L12676:
	leaq	5104(%rsp), %rdi
	leaq	5096(%rsp), %rcx
	leaq	5152(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5144(%rsp), %rax
	jmp	.L20367
.L12664:
	testq	%r9, %r9
	jne	.L12668
	testq	%r8, %r8
	jle	.L12667
	testb	$4, 18(%rbp)
	jne	.L12667
	testb	$4, 18(%r14)
	jne	.L12667
	testq	%r10, %r10
	jne	.L12667
	testq	%r11, %r11
	js	.L12667
	movl	$83, %eax
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %eax
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5152(%rsp)
	jmp	.L20368
.L12678:
	testl	%r15d, %r15d
	je	.L12679
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L12684
.L21195:
	cmpq	%r9, %r10
	je	.L21479
.L12683:
	movq	%rax, 5152(%rsp)
	xorl	%ebx, %ebx
	movl	$83, %eax
	cmpl	$78, %eax
	sete	%bl
	cmpq	%rbx, 5152(%rsp)
	je	.L20369
	movq	%r8, 5152(%rsp)
	movq	%r9, 5144(%rsp)
	jmp	.L12548
.L21479:
	cmpq	%r8, %r11
	jae	.L12683
.L12684:
	movl	$1, %eax
	jmp	.L12683
.L12679:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L12684
	jmp	.L21195
.L12554:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5152(%rsp), %rbx
	leaq	5144(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21480
	cmpq	$127, %r8
	jle	.L12570
	movq	$0, 5144(%rsp)
.L20358:
	movq	$0, 5152(%rsp)
.L12571:
	cmpl	$64, %esi
	jbe	.L12574
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20359:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L12569
	cmpl	$63, %esi
	jbe	.L12578
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20361:
	movq	%rax, (%r9)
.L12569:
	movl	$1, 872(%rsp)
	jmp	.L12548
.L12578:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20360:
	movq	%rax, (%rbx)
	jmp	.L12569
.L12574:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20359
.L12570:
	cmpq	$63, %r8
	jle	.L12572
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5144(%rsp)
	jmp	.L20358
.L12572:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5152(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5144(%rsp)
	jmp	.L12571
.L21480:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L12556
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L12557:
	cmpq	$127, %rdx
	jle	.L12558
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L12559:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L12562
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L12569
.L12562:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L12569
	cmpq	$63, %rax
	jle	.L12566
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20361
.L12566:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20360
.L12558:
	cmpq	$63, %rdx
	jle	.L12560
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L12559
.L12560:
	movl	%edx, %ecx
	movq	%r10, %r12
	shrq	%cl, %r12
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r12, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L12559
.L12556:
	xorl	%edi, %edi
	jmp	.L12557
.L12553:
	negq	%r8
	jmp	.L12554
.L12581:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5136(%rsp), %r12
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5128(%rsp), %rbx
	testq	%r8, %r8
	js	.L21481
	cmpq	$127, %r8
	jle	.L12598
	movq	$0, 5128(%rsp)
.L20362:
	movq	$0, 5136(%rsp)
.L12599:
	cmpl	$64, %edi
	jbe	.L12602
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20363:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L12597
	cmpl	$63, %edi
	jbe	.L12606
.L20365:
	leal	-64(%rdi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	salq	%cl, %rdx
	notq	%r12
	andq	(%rbx), %r12
	orq	%rdx, %r12
	movq	%r12, (%rbx)
.L12597:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5112(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5120(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L12610
	movq	$0, 5112(%rsp)
	movq	$0, 5120(%rsp)
.L12611:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L12614
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L12620:
	movq	5120(%rsp), %rdi
	movq	5112(%rsp), %r9
	orq	5136(%rsp), %rdi
	orq	5128(%rsp), %r9
	movq	%rdi, 5152(%rsp)
	movq	%r9, 5144(%rsp)
	jmp	.L12548
.L12614:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L12620
	cmpq	$63, %rax
	jle	.L12618
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L12620
.L12618:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L12620
.L12610:
	cmpq	$63, %rsi
	jle	.L12612
	leal	-64(%rsi), %ecx
	movq	$0, 5112(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5120(%rsp)
	jmp	.L12611
.L12612:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5112(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5120(%rsp)
	jmp	.L12611
.L12606:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20364:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r12), %rax
	orq	%rdx, %rax
	movq	%rax, (%r12)
	jmp	.L12597
.L12602:
	movq	(%r12), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20363
.L12598:
	cmpq	$63, %r8
	jle	.L12600
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 5128(%rsp)
	jmp	.L20362
.L12600:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 5128(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5136(%rsp)
	jmp	.L12599
.L21481:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L12586
	movq	$0, 5128(%rsp)
	movq	$0, 5136(%rsp)
.L12587:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L12590
	movq	%rdx, (%rbx)
	movq	%rdx, (%r12)
	jmp	.L12597
.L12590:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L12597
	cmpq	$63, %rax
	jle	.L12594
	subl	%esi, %edi
	jmp	.L20365
.L12594:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20364
.L12586:
	cmpq	$63, %rsi
	jle	.L12588
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5128(%rsp)
	shrq	%cl, %rax
	movq	%rax, 5136(%rsp)
	jmp	.L12587
.L12588:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 5128(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 5136(%rsp)
	jmp	.L12587
.L12580:
	negq	%r8
	jmp	.L12581
.L12550:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5152(%rsp)
	jmp	.L20372
.L12551:
	andq	%r8, %r11
	movq	%r11, 5152(%rsp)
.L20373:
	andq	%r9, %r10
	jmp	.L20372
.L12552:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5152(%rsp)
	jmp	.L20373
.L21470:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	876(%rsp), %eax
	movl	%eax, 876(%rsp)
	jmp	.L12547
.L21418:
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L12533
.L21417:
	movzbl	16(%rbx), %eax
	movq	%r12, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L12515
	cmpb	$15, %al
	je	.L12515
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L12518:
	cmpl	$128, %esi
	je	.L12520
	cmpl	$64, %esi
	jbe	.L12521
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L12520:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12524
	cmpb	$6, 16(%rax)
	jne	.L12511
	testb	$2, 62(%rax)
	je	.L12511
.L12524:
	cmpl	$128, %esi
	je	.L12526
	cmpl	$64, %esi
	jbe	.L12527
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20357:
	testl	$1, %eax 
	je	.L12526
	cmpl	$64, %esi
	jbe	.L12529
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L12526:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L12511
.L12529:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12526
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12526
.L12527:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20357
.L12521:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12520
	movq	$-1, %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 32(%rdx)
	jmp	.L12520
.L12515:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12518
.L21416:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L12507
.L21415:
	movq	8(%r14), %rbp
	movq	912(%rsp), %rdi
	cmpl	$60, %r12d
	movq	%rbp, 2792(%rsp)
	movq	32(%rdi), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rdi), %r14
	je	.L12495
	cmpl	$60, %r12d
	ja	.L12506
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21031:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2792(%rsp), %rdi
.L20355:
	movq	%rax, %rdx
	call	build_complex
.L20356:
	movq	%rax, %rbp
	jmp	.L12463
.L12506:
	cmpl	$61, %r12d
	je	.L12496
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2784(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L12500
	cmpb	$10, %al
	je	.L12500
	cmpb	$11, %al
	je	.L12500
	cmpb	$12, %al
	movl	$70, %edi
	je	.L12500
.L12499:
	movq	2784(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r15
	movq	%rax, %rsi
	movzbl	16(%r15), %eax
	cmpb	$6, %al
	je	.L12503
	cmpb	$10, %al
	je	.L12503
	cmpb	$11, %al
	je	.L12503
	cmpb	$12, %al
	movl	$70, %edi
	je	.L12503
.L12502:
	movq	2784(%rsp), %rdx
.L20354:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2792(%rsp), %rdi
	jmp	.L20355
.L12503:
	movl	$62, %edi
	jmp	.L12502
.L12500:
	movl	$62, %edi
	jmp	.L12499
.L12496:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20354
.L12495:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21031
.L21414:
	movq	32(%r14), %rsi
	movq	912(%rsp), %r10
	xorl	%ebx, %ebx
	movq	%rsi, 18528(%rsp)
	movq	40(%r14), %r9
	movq	%r9, 18536(%rsp)
	movq	48(%r14), %r13
	movq	%r13, 18544(%rsp)
	movq	32(%r10), %rbp
	movq	%rbp, 18560(%rsp)
	movq	%r14, %rbp
	movq	40(%r10), %rdi
	movq	%rdi, 18568(%rsp)
	movq	48(%r10), %rcx
	movq	%r13, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	%r9, 8(%rsp)
	movq	%rcx, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L12463
	movq	18560(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %r11
	movq	%rdx, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%r11, 16(%rsp)
	call	target_isnan
	movq	912(%rsp), %rbp
	testl	%eax, %eax
	jne	.L12463
	movq	8(%r14), %rdi
	movq	18544(%rsp), %rsi
	movl	%r12d, 11168(%rsp)
	movq	18528(%rsp), %r10
	movq	18536(%rsp), %rcx
	movq	18560(%rsp), %r9
	movq	18568(%rsp), %r13
	movq	18576(%rsp), %r8
	movq	%rdi, 11176(%rsp)
	movq	%rsi, 11200(%rsp)
	movl	$const_binop_1, %edi
	leaq	11168(%rsp), %rsi
	movq	%r10, 11184(%rsp)
	movq	%rcx, 11192(%rsp)
	movq	%r9, 11208(%rsp)
	movq	%r13, 11216(%rsp)
	movq	%r8, 11224(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L12468
	movq	11232(%rsp), %rbp
.L12469:
	movzbl	16(%rbp), %eax
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L12471
	cmpb	$25, %al
	je	.L21484
.L12471:
	movq	912(%rsp), %r9
	movzbl	18(%r14), %ecx
	movzbl	18(%r9), %r10d
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%bl, %cl
	movzbl	18(%rbp), %ebx
	shrb	$3, %r10b
	andl	$1, %r10d
	orb	%r10b, %cl
	salb	$3, %cl
	andb	$-9, %bl
	orb	%cl, %bl
	movb	%bl, 18(%rbp)
	movl	%ebx, %esi
	movzbl	18(%r9), %eax
	movzbl	18(%r14), %r8d
	shrb	$3, %sil
	andb	$-5, %bl
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%esi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rbp)
	jmp	.L12463
.L21484:
	movq	8(%rbp), %rcx
	movq	32(%rbp), %rdi
	movq	40(%rbp), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L12475
	cmpb	$15, %al
	je	.L12475
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L12478:
	cmpl	$128, %esi
	je	.L12480
	cmpl	$64, %esi
	jbe	.L12481
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L12480:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12484
	cmpb	$6, 16(%rax)
	jne	.L12471
	testb	$2, 62(%rax)
	je	.L12471
.L12484:
	cmpl	$128, %esi
	je	.L12486
	cmpl	$64, %esi
	jbe	.L12487
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20353:
	testl	$1, %eax 
	je	.L12486
	cmpl	$64, %esi
	jbe	.L12489
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L12486:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%dl
	movzbl	%dl, %ebx
	jmp	.L12471
.L12489:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12486
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12486
.L12487:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20353
.L12481:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12480
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L12480
.L12475:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12478
.L12468:
	movq	%r14, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %rbp
	jmp	.L12469
.L21413:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 908(%rsp)
	movzbl	17(%r13), %ecx
	shrb	$5, %cl
	andl	%ecx, %r15d
	cmpb	$6, 16(%r13)
	je	.L21485
.L12257:
	movq	912(%rsp), %rax
	movl	$0, 880(%rsp)
	movl	$0, 904(%rsp)
	movq	32(%r14), %r11
	movq	40(%r14), %r10
	movq	32(%rax), %r8
	movq	40(%rax), %r9
	leal	-59(%r12), %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %esi
	jmp	*.L12398(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L12398:
	.quad	.L12332
	.quad	.L12335
	.quad	.L12341
	.quad	.L12374
	.quad	.L12374
	.quad	.L12374
	.quad	.L12377
	.quad	.L12383
	.quad	.L12383
	.quad	.L12383
	.quad	.L12386
	.quad	.L18929
	.quad	.L12374
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L12388
	.quad	.L12388
	.quad	.L18929
	.quad	.L18929
	.quad	.L12264
	.quad	.L12263
	.quad	.L12291
	.quad	.L12290
	.quad	.L12259
	.quad	.L12260
	.quad	.L12261
	.quad	.L12262
	.text
.L12259:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5216(%rsp)
.L20348:
	movq	%r10, 5208(%rsp)
.L12258:
	movl	908(%rsp), %eax
	testl	%eax, %eax
	je	.L12399
	movq	5208(%rsp), %rax
	testq	%rax, %rax
	jne	.L12401
	cmpq	$0, 5216(%rsp)
	js	.L12401
.L12400:
	movl	880(%rsp), %eax
	testl	%eax, %eax
	jne	.L12399
	testb	$8, 18(%r14)
	jne	.L12399
	movq	912(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L12399
	cmpq	$0, size_htab.0(%rip)
	movq	5216(%rsp), %rbx
	je	.L21486
.L12402:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L12406
	cmpb	$25, %al
	je	.L21487
.L12406:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %ebp
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%bpl, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20356
	movq	new_const.1(%rip), %rbp
	movl	$25, %edi
	movq	%rbp, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L12463
.L21487:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L12410
	cmpb	$15, %al
	je	.L12410
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L12413:
	cmpl	$128, %esi
	je	.L12415
	cmpl	$64, %esi
	jbe	.L12416
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L12415:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12419
	cmpb	$6, 16(%rax)
	jne	.L12406
	testb	$2, 62(%rax)
	je	.L12406
.L12419:
	cmpl	$128, %esi
	je	.L12421
	cmpl	$64, %esi
	jbe	.L12422
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20350:
	testl	$1, %eax 
	je	.L12421
	cmpl	$64, %esi
	jbe	.L12424
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	orq	%r12, 40(%rdx)
.L12421:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L12406
.L12424:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12421
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12421
.L12422:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20350
.L12416:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12415
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L12415
.L12410:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12413
.L21486:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L12402
.L12399:
	movq	5216(%rsp), %rdi
	movq	5208(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	912(%rsp), %r13
	movl	$1, %r11d
	movzbl	18(%r14), %ebx
	movzbl	18(%r13), %ecx
	shrb	$3, %bl
	andl	%ebx, %r11d
	shrb	$3, %cl
	movl	%ecx, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L12432
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L12435
	movl	908(%rsp), %eax
	testl	%eax, %eax
	je	.L12434
.L12435:
	movl	880(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L12434:
	movl	%edx, %eax
.L20352:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	908(%rsp), %eax
	testl	%eax, %eax
	je	.L12461
	testb	$8, %dl
	jne	.L12461
	movq	5208(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21488
.L12462:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L12461:
	movq	912(%rsp), %rdx
	movzbl	18(%rdi), %r11d
	movq	%rdi, %rbp
	movzbl	18(%r14), %r15d
	movzbl	18(%rdx), %r14d
	movl	%r11d, %r8d
	andb	$-5, %r11b
	shrb	$3, %r8b
	shrb	$2, %r15b
	orl	%r8d, %r15d
	shrb	$2, %r14b
	orl	%r14d, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %r11b
	movb	%r11b, 18(%rdi)
	jmp	.L12463
.L21488:
	movq	5216(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L12462
	jmp	.L12461
.L12432:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L12438
	movl	908(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L12437
.L12438:
	movl	880(%rsp), %r8d
	movl	$1, %r10d
	movl	$0, %r15d
	testl	%r8d, %r8d
	cmove	%r15d, %r10d
.L12437:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L12440
	cmpb	$25, %al
	je	.L21489
.L12440:
	testl	%r10d, %r10d
	je	.L12436
	movl	904(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L12436:
	movl	%ebp, %eax
	jmp	.L20352
.L21489:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L12444
	cmpb	$15, %al
	je	.L12444
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L12447:
	cmpl	$128, %esi
	je	.L12449
	cmpl	$64, %esi
	jbe	.L12450
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L12449:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12453
	cmpb	$6, 16(%rax)
	jne	.L12440
	testb	$2, 62(%rax)
	je	.L12440
.L12453:
	cmpl	$128, %esi
	je	.L12455
	cmpl	$64, %esi
	jbe	.L12456
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20351:
	testl	$1, %eax 
	je	.L12455
	cmpl	$64, %esi
	jbe	.L12458
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L12455:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L12440
.L12458:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12455
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12455
.L12456:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20351
.L12450:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12449
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L12449
.L12444:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12447
.L12401:
	cmpq	$-1, %rax
	jne	.L12399
	cmpq	$0, 5216(%rsp)
	jns	.L12399
	jmp	.L12400
.L12332:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5216(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5208(%rsp)
	andq	%r10, %r9
.L20347:
	shrq	$63, %r9
	movl	%r9d, 880(%rsp)
	jmp	.L12258
.L12335:
	testq	%r8, %r8
	jne	.L12336
	movq	%r9, %rax
	movq	$0, 5216(%rsp)
	negq	%rax
.L20342:
	movq	%rax, 5208(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5216(%rsp), %rdx
	addq	5208(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 5216(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 5208(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20347
.L12336:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5216(%rsp)
	notq	%rax
	jmp	.L20342
.L12341:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 11344(%rsp)
	movq	%rcx, 11352(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 11312(%rsp)
	leaq	5208(%rsp), %r12
	movq	%rbp, 11360(%rsp)
	movq	%rdx, 11368(%rsp)
	movq	%rdi, 11320(%rsp)
	movq	%rbx, 11328(%rsp)
	movq	%rcx, 11336(%rsp)
	movq	$0, 11248(%rsp)
	movq	$0, 11256(%rsp)
	movq	$0, 11264(%rsp)
	movq	$0, 11272(%rsp)
	movq	$0, 11280(%rsp)
	movq	$0, 11288(%rsp)
	movq	$0, 11296(%rsp)
	movq	$0, 11304(%rsp)
	xorl	%esi, %esi
.L12353:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	11344(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L12352:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	11312(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	11248(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 11248(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L12352
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 11280(%rsp,%rdi,8)
	jle	.L12353
	movq	11256(%rsp), %rdx
	movq	11272(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	11248(%rsp), %rdx
	addq	11264(%rsp), %rsi
	movq	%rdx, 5216(%rsp)
	movq	%rsi, (%r12)
	movq	11304(%rsp), %rcx
	movq	11288(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	11296(%rsp), %rcx
	addq	11280(%rsp), %rax
	testq	%r10, %r10
	js	.L21490
.L12356:
	testq	%r9, %r9
	js	.L21491
.L12362:
	cmpq	$0, (%r12)
	js	.L21492
	orq	%rcx, %rax
.L21030:
	setne	%r10b
	movzbl	%r10b, %eax
.L20346:
	movl	%eax, 880(%rsp)
	jmp	.L12258
.L21492:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21030
.L21491:
	testq	%r11, %r11
	jne	.L12363
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L12364:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L12362
.L12363:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L12364
.L21490:
	testq	%r8, %r8
	jne	.L12357
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L12358:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L12356
.L12357:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L12358
.L12377:
	testq	%r9, %r9
	jne	.L12378
	cmpq	$1, %r8
	je	.L20345
.L12378:
	cmpq	%r8, %r11
	je	.L21493
.L12379:
	leaq	5216(%rsp), %rcx
	leaq	5208(%rsp), %rbx
	leaq	5168(%rsp), %rbp
	leaq	5160(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
.L20343:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20346
.L21493:
	cmpq	%r9, %r10
	jne	.L12379
	testq	%r8, %r8
	jne	.L12380
	testq	%r9, %r9
	je	.L12379
.L12380:
	movq	$1, 5216(%rsp)
.L20344:
	movq	$0, 5208(%rsp)
	jmp	.L12258
.L20345:
	movq	%r11, 5216(%rsp)
	jmp	.L20348
.L12383:
	testq	%r9, %r9
	jne	.L12386
	testq	%r8, %r8
	jle	.L12386
	testb	$4, 18(%r14)
	jne	.L12386
	movq	912(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L12386
	testq	%r10, %r10
	jne	.L12386
	testq	%r11, %r11
	js	.L12386
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5216(%rsp)
	jmp	.L20344
.L12386:
	leaq	5168(%rsp), %rbx
	leaq	5160(%rsp), %rbp
	leaq	5216(%rsp), %rdx
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	5208(%rsp), %rax
	jmp	.L20343
.L12374:
	testq	%r9, %r9
	jne	.L12378
	testq	%r8, %r8
	jle	.L12377
	testb	$4, 18(%r14)
	jne	.L12377
	movq	912(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L12377
	testq	%r10, %r10
	jne	.L12377
	testq	%r11, %r11
	js	.L12377
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5216(%rsp)
	jmp	.L20344
.L12388:
	testl	%r15d, %r15d
	je	.L12389
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L12394
.L21194:
	cmpq	%r9, %r10
	je	.L21494
.L12393:
	xorl	%ecx, %ecx
	movq	%rax, 5216(%rsp)
	cmpl	$78, %r12d
	sete	%cl
	cmpq	%rcx, 5216(%rsp)
	je	.L20345
	movq	%r8, 5216(%rsp)
	movq	%r9, 5208(%rsp)
	jmp	.L12258
.L21494:
	cmpq	%r8, %r11
	jae	.L12393
.L12394:
	movl	$1, %eax
	jmp	.L12393
.L12389:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L12394
	jmp	.L21194
.L12264:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5216(%rsp), %rbx
	leaq	5208(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21495
	cmpq	$127, %r8
	jle	.L12280
	movq	$0, 5208(%rsp)
.L20333:
	movq	$0, 5216(%rsp)
.L12281:
	cmpl	$64, %esi
	jbe	.L12284
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20334:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L12279
	cmpl	$63, %esi
	jbe	.L12288
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20336:
	movq	%rax, (%r9)
.L12279:
	movl	$1, 904(%rsp)
	jmp	.L12258
.L12288:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20335:
	movq	%rax, (%rbx)
	jmp	.L12279
.L12284:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20334
.L12280:
	cmpq	$63, %r8
	jle	.L12282
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5208(%rsp)
	jmp	.L20333
.L12282:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5216(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5208(%rsp)
	jmp	.L12281
.L21495:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L12266
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L12267:
	cmpq	$127, %rdx
	jle	.L12268
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L12269:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L12272
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L12279
.L12272:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L12279
	cmpq	$63, %rax
	jle	.L12276
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20336
.L12276:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20335
.L12268:
	cmpq	$63, %rdx
	jle	.L12270
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L12269
.L12270:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L12269
.L12266:
	xorl	%edi, %edi
	jmp	.L12267
.L12263:
	negq	%r8
	jmp	.L12264
.L12291:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5200(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5192(%rsp), %rbx
	testq	%r8, %r8
	js	.L21496
	cmpq	$127, %r8
	jle	.L12308
	movq	$0, 5192(%rsp)
.L20338:
	movq	$0, 5200(%rsp)
.L12309:
	cmpl	$64, %edi
	jbe	.L12312
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20339:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L12307
	cmpl	$63, %edi
	jbe	.L12316
.L20341:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L12307:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5176(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5184(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L12320
	movq	$0, 5176(%rsp)
	movq	$0, 5184(%rsp)
.L12321:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L12324
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L12330:
	movq	5184(%rsp), %rdi
	movq	5176(%rsp), %r9
	orq	5200(%rsp), %rdi
	orq	5192(%rsp), %r9
	movq	%rdi, 5216(%rsp)
	movq	%r9, 5208(%rsp)
	jmp	.L12258
.L12324:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L12330
	cmpq	$63, %rax
	jle	.L12328
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L12330
.L12328:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L12330
.L12320:
	cmpq	$63, %rsi
	jle	.L12322
	leal	-64(%rsi), %ecx
	movq	$0, 5176(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5184(%rsp)
	jmp	.L12321
.L12322:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5176(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5184(%rsp)
	jmp	.L12321
.L12316:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20340:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L12307
.L12312:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20339
.L12308:
	cmpq	$63, %r8
	jle	.L12310
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 5192(%rsp)
	jmp	.L20338
.L12310:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5192(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5200(%rsp)
	jmp	.L12309
.L21496:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L12296
	movq	$0, 5192(%rsp)
	movq	$0, 5200(%rsp)
.L12297:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L12300
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L12307
.L12300:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L12307
	cmpq	$63, %rax
	jle	.L12304
	subl	%esi, %edi
	jmp	.L20341
.L12304:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20340
.L12296:
	cmpq	$63, %rsi
	jle	.L12298
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5192(%rsp)
	shrq	%cl, %rax
.L20337:
	movq	%rax, 5200(%rsp)
	jmp	.L12297
.L12298:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5192(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20337
.L12290:
	negq	%r8
	jmp	.L12291
.L12260:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5216(%rsp)
	jmp	.L20348
.L12261:
	andq	%r8, %r11
	movq	%r11, 5216(%rsp)
.L20349:
	andq	%r9, %r10
	jmp	.L20348
.L12262:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5216(%rsp)
	jmp	.L20349
.L21485:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	908(%rsp), %eax
	movl	%eax, 908(%rsp)
	jmp	.L12257
.L21412:
	movq	new_const.1(%rip), %rdi
	movq	%rdi, 912(%rsp)
	movq	%rdi, (%rax)
	movl	$25, %edi
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L12243
.L21411:
	movzbl	16(%rbx), %eax
	movq	%rbp, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L12225
	cmpb	$15, %al
	je	.L12225
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L12228:
	cmpl	$128, %esi
	je	.L12230
	cmpl	$64, %esi
	jbe	.L12231
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 40(%rdx)
.L12230:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12234
	cmpb	$6, 16(%rax)
	jne	.L12221
	testb	$2, 62(%rax)
	je	.L12221
.L12234:
	cmpl	$128, %esi
	je	.L12236
	cmpl	$64, %esi
	jbe	.L12237
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20332:
	testl	$1, %eax 
	je	.L12236
	cmpl	$64, %esi
	jbe	.L12239
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L12236:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L12221
.L12239:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12236
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12236
.L12237:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20332
.L12231:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12230
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L12230
.L12225:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12228
.L21410:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L12217
.L21409:
	movzbl	16(%rax), %edx
	cmpb	$13, %dl
	je	.L12200
	cmpb	$15, %dl
	je	.L12200
	movzwl	60(%rax), %edx
	andl	$511, %edx
.L12203:
	cmpl	$128, %edx
	je	.L12205
	cmpl	$64, %edx
	jbe	.L12206
	leal	-64(%rdx), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 40(%rsi)
.L12205:
	movq	8(%rsi), %rax
	testb	$32, 17(%rax)
	je	.L12209
	cmpb	$6, 16(%rax)
	jne	.L12196
	testb	$2, 62(%rax)
	je	.L12196
.L12209:
	cmpl	$128, %edx
	je	.L12196
	cmpl	$64, %edx
	jbe	.L12212
	movq	40(%rsi), %rax
	leal	-65(%rdx), %ecx
	sarq	%cl, %rax
.L20331:
	testl	$1, %eax 
	je	.L12196
	cmpl	$64, %edx
	jbe	.L12214
	leal	-64(%rdx), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rsi)
	jmp	.L12196
.L12214:
	movq	$-1, %rax
	cmpl	$63, %edx
	movq	%rax, 40(%rsi)
	ja	.L12196
	movl	%edx, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rsi)
	jmp	.L12196
.L12212:
	movq	32(%rsi), %rax
	leal	-1(%rdx), %ecx
	shrq	%cl, %rax
	jmp	.L20331
.L12206:
	cmpl	$63, %edx
	movq	$0, 40(%rsi)
	ja	.L12205
	movq	$-1, %r12
	movl	%edx, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rsi)
	jmp	.L12205
.L12200:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edx
	movl	$32, %eax
	cmove	%eax, %edx
	jmp	.L12203
.L21408:
	movq	3592(%rsp), %rdi
	movq	760(%rsp), %rsi
	call	convert
	movq	3592(%rsp), %rdi
	movq	7512(%rsp), %rsi
	movq	%rax, 760(%rsp)
	call	convert
	movq	3592(%rsp), %r13
	movq	%rax, 7512(%rsp)
	movq	%r13, 920(%rsp)
	jmp	.L12190
.L21407:
	movq	840(%rsp), %rsi
	movq	%rcx, %rdi
	call	convert
	movq	3584(%rsp), %rdi
	movq	7688(%rsp), %rsi
	movq	%rax, 840(%rsp)
	call	convert
	movq	3584(%rsp), %rdi
	movq	%rax, 7688(%rsp)
	movq	%rdi, 920(%rsp)
	jmp	.L12190
.L21406:
	movq	8(%r14), %rsi
	movq	960(%rsp), %rbx
	cmpl	$60, %r12d
	movq	%rsi, 2824(%rsp)
	movq	32(%rbx), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rbx), %r14
	je	.L12172
	cmpl	$60, %r12d
	ja	.L12189
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21029:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2824(%rsp), %rdi
.L20329:
	movq	%rax, %rdx
	call	build_complex
.L20330:
	movq	%rax, %rbx
	jmp	.L12140
.L12189:
	cmpl	$61, %r12d
	je	.L12173
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2816(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r10
	movq	%rax, %rsi
	movzbl	16(%r10), %eax
	cmpb	$6, %al
	je	.L12183
	cmpb	$10, %al
	je	.L12183
	cmpb	$11, %al
	je	.L12183
	cmpb	$12, %al
	movl	$70, %edi
	je	.L12183
.L12182:
	movq	2816(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L12186
	cmpb	$10, %al
	je	.L12186
	cmpb	$11, %al
	je	.L12186
	cmpb	$12, %al
	movl	$70, %edi
	je	.L12186
.L12185:
	movq	2816(%rsp), %rdx
.L20328:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2824(%rsp), %rdi
	jmp	.L20329
.L12186:
	movl	$62, %edi
	jmp	.L12185
.L12183:
	movl	$62, %edi
	jmp	.L12182
.L12173:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20328
.L12172:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21029
.L21405:
	movq	32(%r14), %r13
	movq	960(%rsp), %rcx
	xorl	%ebp, %ebp
	movq	%r14, %rbx
	movq	%r13, 18528(%rsp)
	movq	40(%r14), %r9
	movq	%r9, 18536(%rsp)
	movq	48(%r14), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%rcx), %r10
	movq	%r10, 18560(%rsp)
	movq	40(%rcx), %rsi
	movq	%rsi, 18568(%rsp)
	movq	48(%rcx), %r15
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%r9, 8(%rsp)
	movq	%r15, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L12140
	movq	18576(%rsp), %rbx
	movq	18560(%rsp), %r11
	movq	18568(%rsp), %r8
	movq	%rbx, 16(%rsp)
	movq	%r11, (%rsp)
	movq	%r8, 8(%rsp)
	call	target_isnan
	movq	960(%rsp), %rbx
	testl	%eax, %eax
	jne	.L12140
	movq	8(%r14), %rsi
	movq	18568(%rsp), %rdi
	movl	%r12d, 11376(%rsp)
	movq	18528(%rsp), %rcx
	movq	18536(%rsp), %r15
	movq	18544(%rsp), %r13
	movq	18560(%rsp), %r9
	movq	18576(%rsp), %rdx
	movq	%rsi, 11384(%rsp)
	movq	%rdi, 11424(%rsp)
	leaq	11376(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%rcx, 11392(%rsp)
	movq	%r15, 11400(%rsp)
	movq	%r13, 11408(%rsp)
	movq	%r9, 11416(%rsp)
	movq	%rdx, 11432(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L12145
	movq	11440(%rsp), %rbx
.L12146:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L12148
	cmpb	$25, %al
	je	.L21499
.L12148:
	movq	960(%rsp), %r13
	movzbl	18(%r14), %ecx
	movzbl	18(%r13), %edx
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%bpl, %cl
	movzbl	18(%rbx), %ebp
	shrb	$3, %dl
	andl	$1, %edx
	orb	%dl, %cl
	salb	$3, %cl
	andb	$-9, %bpl
	orb	%cl, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %r15d
	movzbl	18(%r13), %eax
	movzbl	18(%r14), %edi
	shrb	$3, %r15b
	andb	$-5, %bpl
	shrb	$2, %al
	shrb	$2, %dil
	orl	%r15d, %edi
	orl	%eax, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L12140
.L21499:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L12152
	cmpb	$15, %al
	je	.L12152
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L12155:
	cmpl	$128, %esi
	je	.L12157
	cmpl	$64, %esi
	jbe	.L12158
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L12157:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12161
	cmpb	$6, 16(%rax)
	jne	.L12148
	testb	$2, 62(%rax)
	je	.L12148
.L12161:
	cmpl	$128, %esi
	je	.L12163
	cmpl	$64, %esi
	jbe	.L12164
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20327:
	testl	$1, %eax 
	je	.L12163
	cmpl	$64, %esi
	jbe	.L12166
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L12163:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r9
	orq	%rdi, %r9
	orq	%r8, %r9
	setne	%r8b
	movzbl	%r8b, %ebp
	jmp	.L12148
.L12166:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12163
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12163
.L12164:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20327
.L12158:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12157
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L12157
.L12152:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12155
.L12145:
	movq	%r14, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L12146
.L21404:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 956(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21500
.L11934:
	movq	960(%rsp), %rcx
	leal	-59(%r12), %eax
	movl	$0, 928(%rsp)
	cmpl	$30, %eax
	movl	$0, 952(%rsp)
	movq	40(%r14), %r10
	movq	32(%r14), %r11
	movq	32(%rcx), %r8
	movq	40(%rcx), %r9
	ja	.L18929
	mov	%eax, %edi
	jmp	*.L12075(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L12075:
	.quad	.L12009
	.quad	.L12012
	.quad	.L12018
	.quad	.L12051
	.quad	.L12051
	.quad	.L12051
	.quad	.L12054
	.quad	.L12060
	.quad	.L12060
	.quad	.L12060
	.quad	.L12063
	.quad	.L18929
	.quad	.L12051
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L12065
	.quad	.L12065
	.quad	.L18929
	.quad	.L18929
	.quad	.L11941
	.quad	.L11940
	.quad	.L11968
	.quad	.L11967
	.quad	.L11936
	.quad	.L11937
	.quad	.L11938
	.quad	.L11939
	.text
.L11936:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5280(%rsp)
.L20322:
	movq	%r10, 5272(%rsp)
.L11935:
	movl	956(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L12076
	movq	5272(%rsp), %rax
	testq	%rax, %rax
	jne	.L12078
	cmpq	$0, 5280(%rsp)
	js	.L12078
.L12077:
	movl	928(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L12076
	testb	$8, 18(%r14)
	jne	.L12076
	movq	960(%rsp), %r12
	testb	$8, 18(%r12)
	jne	.L12076
	cmpq	$0, size_htab.0(%rip)
	movq	5280(%rsp), %rbx
	je	.L21501
.L12079:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L12083
	cmpb	$25, %al
	je	.L21502
.L12083:
	movzbl	18(%r11), %ebx
	leal	0(,%r10,4), %ecx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %bl
	orb	%cl, %bl
	movb	%bl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20330
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L12140
.L21502:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L12087
	cmpb	$15, %al
	je	.L12087
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L12090:
	cmpl	$128, %esi
	je	.L12092
	cmpl	$64, %esi
	jbe	.L12093
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L12092:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12096
	cmpb	$6, 16(%rax)
	jne	.L12083
	testb	$2, 62(%rax)
	je	.L12083
.L12096:
	cmpl	$128, %esi
	je	.L12098
	cmpl	$64, %esi
	jbe	.L12099
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20324:
	testl	$1, %eax 
	je	.L12098
	cmpl	$64, %esi
	jbe	.L12101
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	orq	%rbp, 40(%rdx)
.L12098:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L12083
.L12101:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12098
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12098
.L12099:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20324
.L12093:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12092
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L12092
.L12087:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12090
.L21501:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L12079
.L12076:
	movq	5280(%rsp), %rdi
	movq	5272(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	960(%rsp), %r12
	movl	$1, %r11d
	movzbl	18(%r14), %r13d
	movzbl	18(%r12), %r8d
	shrb	$3, %r13b
	andl	%r13d, %r11d
	shrb	$3, %r8b
	movl	%r8d, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L12109
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L12112
	movl	956(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L12111
.L12112:
	movl	928(%rsp), %ebp
	movl	$1, %eax
	testl	%ebp, %ebp
	cmovne	%eax, %edx
.L12111:
	movl	%edx, %eax
.L20326:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	956(%rsp), %eax
	testl	%eax, %eax
	je	.L12138
	testb	$8, %dl
	jne	.L12138
	movq	5272(%rsp), %r10
	cmpq	%r10, 40(%rdi)
	je	.L21503
.L12139:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L12138:
	movq	960(%rsp), %rdx
	movzbl	18(%rdi), %r8d
	movq	%rdi, %rbx
	movzbl	18(%r14), %r11d
	movzbl	18(%rdx), %r14d
	movl	%r8d, %ebp
	andb	$-5, %r8b
	shrb	$3, %bpl
	shrb	$2, %r11b
	orl	%ebp, %r11d
	shrb	$2, %r14b
	orl	%r14d, %r11d
	andb	$1, %r11b
	salb	$2, %r11b
	orb	%r11b, %r8b
	movb	%r8b, 18(%rdi)
	jmp	.L12140
.L21503:
	movq	5280(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L12139
	jmp	.L12138
.L12109:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L12115
	movl	956(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L12114
.L12115:
	movl	928(%rsp), %eax
	movl	$1, %r10d
	movl	$0, %esi
	testl	%eax, %eax
	cmove	%esi, %r10d
.L12114:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L12117
	cmpb	$25, %al
	je	.L21504
.L12117:
	testl	%r10d, %r10d
	je	.L12113
	movl	952(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L12113:
	movl	%ebp, %eax
	jmp	.L20326
.L21504:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L12121
	cmpb	$15, %al
	je	.L12121
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L12124:
	cmpl	$128, %esi
	je	.L12126
	cmpl	$64, %esi
	jbe	.L12127
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L12126:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L12130
	cmpb	$6, 16(%rax)
	jne	.L12117
	testb	$2, 62(%rax)
	je	.L12117
.L12130:
	cmpl	$128, %esi
	je	.L12132
	cmpl	$64, %esi
	jbe	.L12133
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20325:
	testl	$1, %eax 
	je	.L12132
	cmpl	$64, %esi
	jbe	.L12135
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L12132:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L12117
.L12135:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L12132
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L12132
.L12133:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20325
.L12127:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L12126
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L12126
.L12121:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L12124
.L12078:
	cmpq	$-1, %rax
	jne	.L12076
	cmpq	$0, 5280(%rsp)
	jns	.L12076
	jmp	.L12077
.L12009:
	leaq	(%r9,%r10), %rbp
	leaq	(%r8,%r11), %rsi
	cmpq	%r11, %rsi
	leaq	1(%rbp), %rax
	movq	%rsi, 5280(%rsp)
	cmovb	%rax, %rbp
	xorq	%r10, %r9 
	notq	%r9
	xorq	%rbp, %r10 
	movq	%rbp, 5272(%rsp)
	andq	%r10, %r9
.L20321:
	shrq	$63, %r9
	movl	%r9d, 928(%rsp)
	jmp	.L11935
.L12012:
	testq	%r8, %r8
	jne	.L12013
	movq	%r9, %rax
	movq	$0, 5280(%rsp)
	negq	%rax
.L20316:
	movq	%rax, 5272(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5280(%rsp), %rdx
	addq	5272(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rdi
	movq	%rdx, 5280(%rsp)
	cmovb	%rdi, %r12
	xorq	%r12, %r9 
	movq	%r12, 5272(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20321
.L12013:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5280(%rsp)
	notq	%rax
	jmp	.L20316
.L12018:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 11552(%rsp)
	movq	%rcx, 11560(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rbp
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %edi
	shrq	$32, %rdx
	shrq	$32, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 11520(%rsp)
	leaq	5272(%rsp), %r12
	movq	%rdi, 11568(%rsp)
	movq	%rdx, 11576(%rsp)
	movq	%rbp, 11528(%rsp)
	movq	%rbx, 11536(%rsp)
	movq	%rcx, 11544(%rsp)
	movq	$0, 11456(%rsp)
	movq	$0, 11464(%rsp)
	movq	$0, 11472(%rsp)
	movq	$0, 11480(%rsp)
	movq	$0, 11488(%rsp)
	movq	$0, 11496(%rsp)
	movq	$0, 11504(%rsp)
	movq	$0, 11512(%rsp)
	xorl	%esi, %esi
.L12030:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	11552(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L12029:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	11520(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	11456(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 11456(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L12029
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 11488(%rsp,%rbp,8)
	jle	.L12030
	movq	11464(%rsp), %rdx
	movq	11480(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	11456(%rsp), %rdx
	addq	11472(%rsp), %rsi
	movq	%rdx, 5280(%rsp)
	movq	%rsi, (%r12)
	movq	11512(%rsp), %rcx
	movq	11496(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	11504(%rsp), %rcx
	addq	11488(%rsp), %rax
	testq	%r10, %r10
	js	.L21505
.L12033:
	testq	%r9, %r9
	js	.L21506
.L12039:
	cmpq	$0, (%r12)
	js	.L21507
	orq	%rcx, %rax
.L21028:
	setne	%r9b
	movzbl	%r9b, %eax
.L20320:
	movl	%eax, 928(%rsp)
	jmp	.L11935
.L21507:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21028
.L21506:
	testq	%r11, %r11
	jne	.L12040
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L12041:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L12039
.L12040:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L12041
.L21505:
	testq	%r8, %r8
	jne	.L12034
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L12035:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L12033
.L12034:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L12035
.L12054:
	testq	%r9, %r9
	jne	.L12055
	cmpq	$1, %r8
	je	.L20319
.L12055:
	cmpq	%r8, %r11
	je	.L21508
.L12056:
	leaq	5280(%rsp), %rcx
	leaq	5272(%rsp), %rbx
	leaq	5232(%rsp), %rdi
	leaq	5224(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rdi, 16(%rsp)
.L20317:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20320
.L21508:
	cmpq	%r9, %r10
	jne	.L12056
	testq	%r8, %r8
	jne	.L12057
	testq	%r9, %r9
	je	.L12056
.L12057:
	movq	$1, 5280(%rsp)
.L20318:
	movq	$0, 5272(%rsp)
	jmp	.L11935
.L20319:
	movq	%r11, 5280(%rsp)
	jmp	.L20322
.L12060:
	testq	%r9, %r9
	jne	.L12063
	testq	%r8, %r8
	jle	.L12063
	testb	$4, 18(%r14)
	jne	.L12063
	movq	960(%rsp), %rbp
	testb	$4, 18(%rbp)
	jne	.L12063
	testq	%r10, %r10
	jne	.L12063
	testq	%r11, %r11
	js	.L12063
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5280(%rsp)
	jmp	.L20318
.L12063:
	leaq	5232(%rsp), %rbx
	leaq	5224(%rsp), %rdi
	leaq	5280(%rsp), %rdx
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	5272(%rsp), %rax
	jmp	.L20317
.L12051:
	testq	%r9, %r9
	jne	.L12055
	testq	%r8, %r8
	jle	.L12054
	testb	$4, 18(%r14)
	jne	.L12054
	movq	960(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L12054
	testq	%r10, %r10
	jne	.L12054
	testq	%r11, %r11
	js	.L12054
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r10
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5280(%rsp)
	jmp	.L20318
.L12065:
	testl	%r15d, %r15d
	je	.L12066
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L12071
.L21193:
	cmpq	%r9, %r10
	je	.L21509
.L12070:
	xorl	%ecx, %ecx
	movq	%rax, 5280(%rsp)
	cmpl	$78, %r12d
	sete	%cl
	cmpq	%rcx, 5280(%rsp)
	je	.L20319
	movq	%r8, 5280(%rsp)
	movq	%r9, 5272(%rsp)
	jmp	.L11935
.L21509:
	cmpq	%r8, %r11
	jae	.L12070
.L12071:
	movl	$1, %eax
	jmp	.L12070
.L12066:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L12071
	jmp	.L21193
.L11941:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5280(%rsp), %rbx
	leaq	5272(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21510
	cmpq	$127, %r8
	jle	.L11957
	movq	$0, 5272(%rsp)
.L20307:
	movq	$0, 5280(%rsp)
.L11958:
	cmpl	$64, %esi
	jbe	.L11961
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20308:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L11956
	cmpl	$63, %esi
	jbe	.L11965
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20310:
	movq	%rax, (%r9)
.L11956:
	movl	$1, 952(%rsp)
	jmp	.L11935
.L11965:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20309:
	movq	%rax, (%rbx)
	jmp	.L11956
.L11961:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20308
.L11957:
	cmpq	$63, %r8
	jle	.L11959
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5272(%rsp)
	jmp	.L20307
.L11959:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%r11, %rdi
	subl	%r8d, %eax
	salq	%cl, %r10
	movl	%eax, %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rcx
	shrq	$1, %rcx
	orq	%rcx, %r10
	movl	%r8d, %ecx
	salq	%cl, %r11
	movq	%r10, 5272(%rsp)
	movq	%r11, 5280(%rsp)
	jmp	.L11958
.L21510:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L11943
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L11944:
	cmpq	$127, %rdx
	jle	.L11945
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L11946:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L11949
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L11956
.L11949:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L11956
	cmpq	$63, %rax
	jle	.L11953
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20310
.L11953:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20309
.L11945:
	cmpq	$63, %rdx
	jle	.L11947
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L11946
.L11947:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L11946
.L11943:
	xorl	%edi, %edi
	jmp	.L11944
.L11940:
	negq	%r8
	jmp	.L11941
.L11968:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	cqto
	andl	$511, %r9d
	mov	%r9d, %ebp
	movl	%r9d, %edi
	idivq	%rbp
	leaq	(%rbp,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5264(%rsp), %rbp
	leaq	5256(%rsp), %rbx
	testq	%r8, %r8
	js	.L21511
	cmpq	$127, %r8
	jle	.L11985
	movq	$0, 5256(%rsp)
.L20312:
	movq	$0, 5264(%rsp)
.L11986:
	cmpl	$64, %edi
	jbe	.L11989
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20313:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L11984
	cmpl	$63, %edi
	jbe	.L11993
.L20315:
	leal	-64(%rdi), %ecx
	movq	$-1, %rdi
	salq	%cl, %rdi
	salq	%cl, %rdx
	notq	%rdi
	andq	(%rbx), %rdi
	orq	%rdx, %rdi
	movq	%rdi, (%rbx)
.L11984:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5240(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5248(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L11997
	movq	$0, 5240(%rsp)
	movq	$0, 5248(%rsp)
.L11998:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L12001
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L12007:
	movq	5248(%rsp), %r8
	movq	5240(%rsp), %r11
	orq	5264(%rsp), %r8
	orq	5256(%rsp), %r11
	movq	%r8, 5280(%rsp)
	movq	%r11, 5272(%rsp)
	jmp	.L11935
.L12001:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L12007
	cmpq	$63, %rax
	jle	.L12005
	subl	%esi, %r9d
	leal	-64(%r9), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%rdi), %r9
	orq	%rdx, %r9
	movq	%r9, (%rdi)
	jmp	.L12007
.L12005:
	movl	%r9d, %ecx
	movq	$-1, %r10
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%r8), %r10
	orq	%rdx, %r10
	movq	%r10, (%r8)
	jmp	.L12007
.L11997:
	cmpq	$63, %rsi
	jle	.L11999
	leal	-64(%rsi), %ecx
	movq	$0, 5240(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5248(%rsp)
	jmp	.L11998
.L11999:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5240(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5248(%rsp)
	jmp	.L11998
.L11993:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20314:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L11984
.L11989:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20313
.L11985:
	cmpq	$63, %r8
	jle	.L11987
	leal	-64(%r8), %ecx
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5256(%rsp)
	jmp	.L20312
.L11987:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5256(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5264(%rsp)
	jmp	.L11986
.L21511:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L11973
	movq	$0, 5256(%rsp)
	movq	$0, 5264(%rsp)
.L11974:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L11977
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L11984
.L11977:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L11984
	cmpq	$63, %rax
	jle	.L11981
	subl	%esi, %edi
	jmp	.L20315
.L11981:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20314
.L11973:
	cmpq	$63, %rsi
	jle	.L11975
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5256(%rsp)
	shrq	%cl, %rax
.L20311:
	movq	%rax, 5264(%rsp)
	jmp	.L11974
.L11975:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5256(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20311
.L11967:
	negq	%r8
	jmp	.L11968
.L11937:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5280(%rsp)
	jmp	.L20322
.L11938:
	andq	%r8, %r11
	movq	%r11, 5280(%rsp)
.L20323:
	andq	%r9, %r10
	jmp	.L20322
.L11939:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5280(%rsp)
	jmp	.L20323
.L21500:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	956(%rsp), %eax
	movl	%eax, 956(%rsp)
	jmp	.L11934
.L21403:
	movq	new_const.1(%rip), %rdi
	movq	%rdi, 960(%rsp)
	movq	%rdi, (%rax)
	movl	$25, %edi
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11920
.L21402:
	movzbl	16(%rbx), %eax
	movq	968(%rsp), %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11902
	cmpb	$15, %al
	je	.L11902
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L11905:
	cmpl	$128, %esi
	je	.L11907
	cmpl	$64, %esi
	jbe	.L11908
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L11907:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11911
	cmpb	$6, 16(%rax)
	jne	.L11898
	testb	$2, 62(%rax)
	je	.L11898
.L11911:
	cmpl	$128, %esi
	je	.L11913
	cmpl	$64, %esi
	jbe	.L11914
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20306:
	testl	$1, %eax 
	je	.L11913
	cmpl	$64, %esi
	jbe	.L11916
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11913:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L11898
.L11916:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11913
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11913
.L11914:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20306
.L11908:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11907
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L11907
.L11902:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11905
.L21401:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11894
.L21400:
	movq	8(%r14), %r10
	movq	1000(%rsp), %rbx
	cmpl	$60, %r12d
	movq	%r10, 2840(%rsp)
	movq	32(%rbx), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rbx), %r14
	je	.L11875
	cmpl	$60, %r12d
	ja	.L11892
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21027:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2840(%rsp), %rdi
.L20304:
	movq	%rax, %rdx
	call	build_complex
.L20305:
	movq	%rax, %rbx
	jmp	.L11843
.L11892:
	cmpl	$61, %r12d
	je	.L11876
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2832(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L11886
	cmpb	$10, %al
	je	.L11886
	cmpb	$11, %al
	je	.L11886
	cmpb	$12, %al
	movl	$70, %edi
	je	.L11886
.L11885:
	movq	2832(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r15
	movq	%rax, %rsi
	movzbl	16(%r15), %eax
	cmpb	$6, %al
	je	.L11889
	cmpb	$10, %al
	je	.L11889
	cmpb	$11, %al
	je	.L11889
	cmpb	$12, %al
	movl	$70, %edi
	je	.L11889
.L11888:
	movq	2832(%rsp), %rdx
.L20303:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2840(%rsp), %rdi
	jmp	.L20304
.L11889:
	movl	$62, %edi
	jmp	.L11888
.L11886:
	movl	$62, %edi
	jmp	.L11885
.L11876:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20303
.L11875:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21027
.L21399:
	movq	32(%r14), %rsi
	movq	1000(%rsp), %rcx
	xorl	%ebp, %ebp
	movq	%rsi, 18528(%rsp)
	movq	40(%r14), %r13
	movq	%r13, 18536(%rsp)
	movq	48(%r14), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%rcx), %rbx
	movq	%rbx, 18560(%rsp)
	movq	%r14, %rbx
	movq	40(%rcx), %r10
	movq	%r10, 18568(%rsp)
	movq	48(%rcx), %r9
	movq	%rdi, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	%r13, 8(%rsp)
	movq	%r9, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L11843
	movq	18560(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %r11
	movq	%rdx, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%r11, 16(%rsp)
	call	target_isnan
	movq	1000(%rsp), %rbx
	testl	%eax, %eax
	jne	.L11843
	movq	18544(%rsp), %rsi
	movq	18568(%rsp), %rdi
	movq	8(%r14), %r10
	movq	18528(%rsp), %rcx
	movl	%r12d, 11584(%rsp)
	movq	18536(%rsp), %r9
	movq	18560(%rsp), %r13
	movq	18576(%rsp), %r8
	movq	%rsi, 11616(%rsp)
	movq	%rdi, 11632(%rsp)
	leaq	11584(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r10, 11592(%rsp)
	movq	%rcx, 11600(%rsp)
	movq	%r9, 11608(%rsp)
	movq	%r13, 11624(%rsp)
	movq	%r8, 11640(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L11848
	movq	11648(%rsp), %rbx
.L11849:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L11851
	cmpb	$25, %al
	je	.L21514
.L11851:
	movq	1000(%rsp), %rdi
	movzbl	18(%r14), %r9d
	movzbl	18(%rdi), %ecx
	shrb	$3, %r9b
	andl	$1, %r9d
	orb	%bpl, %r9b
	movzbl	18(%rbx), %ebp
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%cl, %r9b
	salb	$3, %r9b
	andb	$-9, %bpl
	orb	%r9b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %esi
	movzbl	18(%rdi), %eax
	movzbl	18(%r14), %r8d
	shrb	$3, %sil
	andb	$-5, %bpl
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%esi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L11843
.L21514:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L11855
	cmpb	$15, %al
	je	.L11855
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L11858:
	cmpl	$128, %esi
	je	.L11860
	cmpl	$64, %esi
	jbe	.L11861
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L11860:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11864
	cmpb	$6, 16(%rax)
	jne	.L11851
	testb	$2, 62(%rax)
	je	.L11851
.L11864:
	cmpl	$128, %esi
	je	.L11866
	cmpl	$64, %esi
	jbe	.L11867
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20302:
	testl	$1, %eax 
	je	.L11866
	cmpl	$64, %esi
	jbe	.L11869
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L11866:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%dl
	movzbl	%dl, %ebp
	jmp	.L11851
.L11869:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11866
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11866
.L11867:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20302
.L11861:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11860
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L11860
.L11855:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11858
.L11848:
	movq	%r14, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L11849
.L21398:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 996(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21515
.L11637:
	movq	1000(%rsp), %rcx
	leal	-59(%r12), %eax
	movl	$0, 976(%rsp)
	cmpl	$30, %eax
	movl	$0, 992(%rsp)
	movq	40(%r14), %r10
	movq	32(%r14), %r11
	movq	32(%rcx), %r8
	movq	40(%rcx), %r9
	ja	.L18929
	mov	%eax, %edi
	jmp	*.L11778(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L11778:
	.quad	.L11712
	.quad	.L11715
	.quad	.L11721
	.quad	.L11754
	.quad	.L11754
	.quad	.L11754
	.quad	.L11757
	.quad	.L11763
	.quad	.L11763
	.quad	.L11763
	.quad	.L11766
	.quad	.L18929
	.quad	.L11754
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L11768
	.quad	.L11768
	.quad	.L18929
	.quad	.L18929
	.quad	.L11644
	.quad	.L11643
	.quad	.L11671
	.quad	.L11670
	.quad	.L11639
	.quad	.L11640
	.quad	.L11641
	.quad	.L11642
	.text
.L11639:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5344(%rsp)
.L20297:
	movq	%r10, 5336(%rsp)
.L11638:
	movl	996(%rsp), %eax
	testl	%eax, %eax
	je	.L11779
	movq	5336(%rsp), %rax
	testq	%rax, %rax
	jne	.L11781
	cmpq	$0, 5344(%rsp)
	js	.L11781
.L11780:
	movl	976(%rsp), %eax
	testl	%eax, %eax
	jne	.L11779
	testb	$8, 18(%r14)
	jne	.L11779
	movq	1000(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L11779
	cmpq	$0, size_htab.0(%rip)
	movq	5344(%rsp), %rbx
	je	.L21516
.L11782:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L11786
	cmpb	$25, %al
	je	.L21517
.L11786:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %ebp
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%bpl, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20305
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11843
.L21517:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11790
	cmpb	$15, %al
	je	.L11790
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L11793:
	cmpl	$128, %esi
	je	.L11795
	cmpl	$64, %esi
	jbe	.L11796
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L11795:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11799
	cmpb	$6, 16(%rax)
	jne	.L11786
	testb	$2, 62(%rax)
	je	.L11786
.L11799:
	cmpl	$128, %esi
	je	.L11801
	cmpl	$64, %esi
	jbe	.L11802
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20299:
	testl	$1, %eax 
	je	.L11801
	cmpl	$64, %esi
	jbe	.L11804
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	orq	%r12, 40(%rdx)
.L11801:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L11786
.L11804:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11801
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11801
.L11802:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20299
.L11796:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11795
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L11795
.L11790:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11793
.L21516:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11782
.L11779:
	movq	5344(%rsp), %rdi
	movq	5336(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	1000(%rsp), %r13
	movl	$1, %r11d
	movzbl	18(%r14), %ebx
	movzbl	18(%r13), %ecx
	shrb	$3, %bl
	andl	%ebx, %r11d
	shrb	$3, %cl
	movl	%ecx, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L11812
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L11815
	movl	996(%rsp), %eax
	testl	%eax, %eax
	je	.L11814
.L11815:
	movl	976(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L11814:
	movl	%edx, %eax
.L20301:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	996(%rsp), %eax
	testl	%eax, %eax
	je	.L11841
	testb	$8, %dl
	jne	.L11841
	movq	5336(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21518
.L11842:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L11841:
	movq	1000(%rsp), %rdx
	movzbl	18(%rdi), %r11d
	movq	%rdi, %rbx
	movzbl	18(%r14), %r15d
	movzbl	18(%rdx), %r14d
	movl	%r11d, %r8d
	andb	$-5, %r11b
	shrb	$3, %r8b
	shrb	$2, %r15b
	orl	%r8d, %r15d
	shrb	$2, %r14b
	orl	%r14d, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %r11b
	movb	%r11b, 18(%rdi)
	jmp	.L11843
.L21518:
	movq	5344(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L11842
	jmp	.L11841
.L11812:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L11818
	movl	996(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L11817
.L11818:
	movl	976(%rsp), %r8d
	movl	$1, %r10d
	movl	$0, %r15d
	testl	%r8d, %r8d
	cmove	%r15d, %r10d
.L11817:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L11820
	cmpb	$25, %al
	je	.L21519
.L11820:
	testl	%r10d, %r10d
	je	.L11816
	movl	992(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L11816:
	movl	%ebp, %eax
	jmp	.L20301
.L21519:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L11824
	cmpb	$15, %al
	je	.L11824
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L11827:
	cmpl	$128, %esi
	je	.L11829
	cmpl	$64, %esi
	jbe	.L11830
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L11829:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11833
	cmpb	$6, 16(%rax)
	jne	.L11820
	testb	$2, 62(%rax)
	je	.L11820
.L11833:
	cmpl	$128, %esi
	je	.L11835
	cmpl	$64, %esi
	jbe	.L11836
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20300:
	testl	$1, %eax 
	je	.L11835
	cmpl	$64, %esi
	jbe	.L11838
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11835:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L11820
.L11838:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11835
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11835
.L11836:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20300
.L11830:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11829
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L11829
.L11824:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11827
.L11781:
	cmpq	$-1, %rax
	jne	.L11779
	cmpq	$0, 5344(%rsp)
	jns	.L11779
	jmp	.L11780
.L11712:
	leaq	(%r9,%r10), %rdi
	leaq	(%r8,%r11), %rsi
	cmpq	%r11, %rsi
	leaq	1(%rdi), %rax
	movq	%rsi, 5344(%rsp)
	cmovb	%rax, %rdi
	xorq	%r10, %r9 
	notq	%r9
	xorq	%rdi, %r10 
	movq	%rdi, 5336(%rsp)
	andq	%r10, %r9
.L20296:
	shrq	$63, %r9
	movl	%r9d, 976(%rsp)
	jmp	.L11638
.L11715:
	testq	%r8, %r8
	jne	.L11716
	movq	%r9, %rax
	movq	$0, 5344(%rsp)
	negq	%rax
.L20291:
	movq	%rax, 5336(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5344(%rsp), %rdx
	addq	5336(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 5344(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 5336(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20296
.L11716:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5344(%rsp)
	notq	%rax
	jmp	.L20291
.L11721:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 11760(%rsp)
	movq	%rcx, 11768(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 11728(%rsp)
	leaq	5336(%rsp), %r12
	movq	%rbp, 11776(%rsp)
	movq	%rdx, 11784(%rsp)
	movq	%rdi, 11736(%rsp)
	movq	%rbx, 11744(%rsp)
	movq	%rcx, 11752(%rsp)
	movq	$0, 11664(%rsp)
	movq	$0, 11672(%rsp)
	movq	$0, 11680(%rsp)
	movq	$0, 11688(%rsp)
	movq	$0, 11696(%rsp)
	movq	$0, 11704(%rsp)
	movq	$0, 11712(%rsp)
	movq	$0, 11720(%rsp)
	xorl	%esi, %esi
.L11733:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	11760(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L11732:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	11728(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	11664(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 11664(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L11732
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 11696(%rsp,%rdi,8)
	jle	.L11733
	movq	11672(%rsp), %rdx
	movq	11688(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	11664(%rsp), %rdx
	addq	11680(%rsp), %rsi
	movq	%rdx, 5344(%rsp)
	movq	%rsi, (%r12)
	movq	11720(%rsp), %rcx
	movq	11704(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	11712(%rsp), %rcx
	addq	11696(%rsp), %rax
	testq	%r10, %r10
	js	.L21520
.L11736:
	testq	%r9, %r9
	js	.L21521
.L11742:
	cmpq	$0, (%r12)
	js	.L21522
	orq	%rcx, %rax
.L21026:
	setne	%r10b
	movzbl	%r10b, %eax
.L20295:
	movl	%eax, 976(%rsp)
	jmp	.L11638
.L21522:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21026
.L21521:
	testq	%r11, %r11
	jne	.L11743
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L11744:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L11742
.L11743:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L11744
.L21520:
	testq	%r8, %r8
	jne	.L11737
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L11738:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L11736
.L11737:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L11738
.L11757:
	testq	%r9, %r9
	jne	.L11758
	cmpq	$1, %r8
	je	.L20294
.L11758:
	cmpq	%r8, %r11
	je	.L21523
.L11759:
	leaq	5344(%rsp), %rcx
	leaq	5336(%rsp), %rbx
	leaq	5296(%rsp), %rbp
	leaq	5288(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
.L20292:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20295
.L21523:
	cmpq	%r9, %r10
	jne	.L11759
	testq	%r8, %r8
	jne	.L11760
	testq	%r9, %r9
	je	.L11759
.L11760:
	movq	$1, 5344(%rsp)
.L20293:
	movq	$0, 5336(%rsp)
	jmp	.L11638
.L20294:
	movq	%r11, 5344(%rsp)
	jmp	.L20297
.L11763:
	testq	%r9, %r9
	jne	.L11766
	testq	%r8, %r8
	jle	.L11766
	testb	$4, 18(%r14)
	jne	.L11766
	movq	1000(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L11766
	testq	%r10, %r10
	jne	.L11766
	testq	%r11, %r11
	js	.L11766
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5344(%rsp)
	jmp	.L20293
.L11766:
	leaq	5296(%rsp), %rbx
	leaq	5288(%rsp), %rbp
	leaq	5344(%rsp), %rdx
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	5336(%rsp), %rax
	jmp	.L20292
.L11754:
	testq	%r9, %r9
	jne	.L11758
	testq	%r8, %r8
	jle	.L11757
	testb	$4, 18(%r14)
	jne	.L11757
	movq	1000(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L11757
	testq	%r10, %r10
	jne	.L11757
	testq	%r11, %r11
	js	.L11757
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5344(%rsp)
	jmp	.L20293
.L11768:
	testl	%r15d, %r15d
	je	.L11769
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L11774
.L21192:
	cmpq	%r9, %r10
	je	.L21524
.L11773:
	xorl	%ecx, %ecx
	movq	%rax, 5344(%rsp)
	cmpl	$78, %r12d
	sete	%cl
	cmpq	%rcx, 5344(%rsp)
	je	.L20294
	movq	%r8, 5344(%rsp)
	movq	%r9, 5336(%rsp)
	jmp	.L11638
.L21524:
	cmpq	%r8, %r11
	jae	.L11773
.L11774:
	movl	$1, %eax
	jmp	.L11773
.L11769:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L11774
	jmp	.L21192
.L11644:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5344(%rsp), %rbx
	leaq	5336(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21525
	cmpq	$127, %r8
	jle	.L11660
	movq	$0, 5336(%rsp)
.L20282:
	movq	$0, 5344(%rsp)
.L11661:
	cmpl	$64, %esi
	jbe	.L11664
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20283:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L11659
	cmpl	$63, %esi
	jbe	.L11668
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20285:
	movq	%rax, (%r9)
.L11659:
	movl	$1, 992(%rsp)
	jmp	.L11638
.L11668:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20284:
	movq	%rax, (%rbx)
	jmp	.L11659
.L11664:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20283
.L11660:
	cmpq	$63, %r8
	jle	.L11662
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5336(%rsp)
	jmp	.L20282
.L11662:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%r11, %rdi
	subl	%r8d, %eax
	salq	%cl, %r10
	movl	%r8d, %edx
	movl	%eax, %ecx
	shrq	%cl, %rdi
	movl	%edx, %ecx
	movq	%rdi, %r8
	salq	%cl, %r11
	shrq	$1, %r8
	movq	%r11, 5344(%rsp)
	orq	%r8, %r10
	movq	%r10, 5336(%rsp)
	jmp	.L11661
.L21525:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L11646
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L11647:
	cmpq	$127, %rdx
	jle	.L11648
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L11649:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L11652
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L11659
.L11652:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L11659
	cmpq	$63, %rax
	jle	.L11656
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20285
.L11656:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20284
.L11648:
	cmpq	$63, %rdx
	jle	.L11650
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L11649
.L11650:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L11649
.L11646:
	xorl	%edi, %edi
	jmp	.L11647
.L11643:
	negq	%r8
	jmp	.L11644
.L11671:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5328(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5320(%rsp), %rbx
	testq	%r8, %r8
	js	.L21526
	cmpq	$127, %r8
	jle	.L11688
	movq	$0, 5320(%rsp)
.L20287:
	movq	$0, 5328(%rsp)
.L11689:
	cmpl	$64, %edi
	jbe	.L11692
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20288:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L11687
	cmpl	$63, %edi
	jbe	.L11696
.L20290:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L11687:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5304(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5312(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L11700
	movq	$0, 5304(%rsp)
	movq	$0, 5312(%rsp)
.L11701:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L11704
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L11710:
	movq	5312(%rsp), %r8
	movq	5304(%rsp), %r11
	orq	5328(%rsp), %r8
	orq	5320(%rsp), %r11
	movq	%r8, 5344(%rsp)
	movq	%r11, 5336(%rsp)
	jmp	.L11638
.L11704:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L11710
	cmpq	$63, %rax
	jle	.L11708
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L11710
.L11708:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L11710
.L11700:
	cmpq	$63, %rsi
	jle	.L11702
	leal	-64(%rsi), %ecx
	movq	$0, 5304(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5312(%rsp)
	jmp	.L11701
.L11702:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5304(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5312(%rsp)
	jmp	.L11701
.L11696:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20289:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L11687
.L11692:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20288
.L11688:
	cmpq	$63, %r8
	jle	.L11690
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 5320(%rsp)
	jmp	.L20287
.L11690:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5320(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5328(%rsp)
	jmp	.L11689
.L21526:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L11676
	movq	$0, 5320(%rsp)
	movq	$0, 5328(%rsp)
.L11677:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L11680
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L11687
.L11680:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L11687
	cmpq	$63, %rax
	jle	.L11684
	subl	%esi, %edi
	jmp	.L20290
.L11684:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20289
.L11676:
	cmpq	$63, %rsi
	jle	.L11678
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5320(%rsp)
	shrq	%cl, %rax
.L20286:
	movq	%rax, 5328(%rsp)
	jmp	.L11677
.L11678:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5320(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20286
.L11670:
	negq	%r8
	jmp	.L11671
.L11640:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5344(%rsp)
	jmp	.L20297
.L11641:
	andq	%r8, %r11
	movq	%r11, 5344(%rsp)
.L20298:
	andq	%r9, %r10
	jmp	.L20297
.L11642:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5344(%rsp)
	jmp	.L20298
.L21515:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	996(%rsp), %eax
	movl	%eax, 996(%rsp)
	jmp	.L11637
.L21397:
	movq	new_const.1(%rip), %rdi
	movq	%rdi, 1000(%rsp)
	movq	%rdi, (%rax)
	movl	$25, %edi
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11623
.L21396:
	movzbl	16(%rbx), %eax
	movq	1008(%rsp), %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11605
	cmpb	$15, %al
	je	.L11605
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L11608:
	cmpl	$128, %esi
	je	.L11610
	cmpl	$64, %esi
	jbe	.L11611
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L11610:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11614
	cmpb	$6, 16(%rax)
	jne	.L11601
	testb	$2, 62(%rax)
	je	.L11601
.L11614:
	cmpl	$128, %esi
	je	.L11616
	cmpl	$64, %esi
	jbe	.L11617
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20281:
	testl	$1, %eax 
	je	.L11616
	cmpl	$64, %esi
	jbe	.L11619
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L11616:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L11601
.L11619:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11616
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11616
.L11617:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20281
.L11611:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11610
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L11610
.L11605:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11608
.L21395:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11597
.L21394:
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11592
.L21393:
	movzbl	16(%rbp), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11574
	cmpb	$15, %al
	je	.L11574
	movzwl	60(%rbp), %esi
	andl	$511, %esi
.L11577:
	cmpl	$128, %esi
	je	.L11579
	cmpl	$64, %esi
	jbe	.L11580
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L11579:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11583
	cmpb	$6, 16(%rax)
	jne	.L11570
	testb	$2, 62(%rax)
	je	.L11570
.L11583:
	cmpl	$128, %esi
	je	.L11585
	cmpl	$64, %esi
	jbe	.L11586
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20280:
	testl	$1, %eax 
	je	.L11585
	cmpl	$64, %esi
	jbe	.L11588
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11585:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L11570
.L11588:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11585
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11585
.L11586:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20280
.L11580:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11579
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L11579
.L11574:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11577
.L21392:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11566
.L21391:
	movq	new_const.1(%rip), %r12
	movl	$25, %edi
	movq	%r12, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11563
.L21390:
	movzbl	16(%rbp), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11545
	cmpb	$15, %al
	je	.L11545
	movzwl	60(%rbp), %esi
	andl	$511, %esi
.L11548:
	cmpl	$128, %esi
	je	.L11550
	cmpl	$64, %esi
	jbe	.L11551
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L11550:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11554
	cmpb	$6, 16(%rax)
	jne	.L11541
	testb	$2, 62(%rax)
	je	.L11541
.L11554:
	cmpl	$128, %esi
	je	.L11556
	cmpl	$64, %esi
	jbe	.L11557
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20279:
	testl	$1, %eax 
	je	.L11556
	cmpl	$64, %esi
	jbe	.L11559
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11556:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L11541
.L11559:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11556
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11556
.L11557:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20279
.L11551:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11550
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L11550
.L11545:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11548
.L21389:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11537
.L21388:
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11532
.L21387:
	movzbl	16(%rbp), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11514
	cmpb	$15, %al
	je	.L11514
	movzwl	60(%rbp), %esi
	andl	$511, %esi
.L11517:
	cmpl	$128, %esi
	je	.L11519
	cmpl	$64, %esi
	jbe	.L11520
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L11519:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11523
	cmpb	$6, 16(%rax)
	jne	.L11510
	testb	$2, 62(%rax)
	je	.L11510
.L11523:
	cmpl	$128, %esi
	je	.L11525
	cmpl	$64, %esi
	jbe	.L11526
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20278:
	testl	$1, %eax 
	je	.L11525
	cmpl	$64, %esi
	jbe	.L11528
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11525:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L11510
.L11528:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11525
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11525
.L11526:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20278
.L11520:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11519
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L11519
.L11514:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11517
.L21386:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11506
.L21385:
	movq	new_const.1(%rip), %r12
	movl	$25, %edi
	movq	%r12, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11503
.L21384:
	movzbl	16(%rbp), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11485
	cmpb	$15, %al
	je	.L11485
	movzwl	60(%rbp), %esi
	andl	$511, %esi
.L11488:
	cmpl	$128, %esi
	je	.L11490
	cmpl	$64, %esi
	jbe	.L11491
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L11490:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11494
	cmpb	$6, 16(%rax)
	jne	.L11481
	testb	$2, 62(%rax)
	je	.L11481
.L11494:
	cmpl	$128, %esi
	je	.L11496
	cmpl	$64, %esi
	jbe	.L11497
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20277:
	testl	$1, %eax 
	je	.L11496
	cmpl	$64, %esi
	jbe	.L11499
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	orq	%rbp, 40(%rdx)
.L11496:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L11481
.L11499:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11496
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11496
.L11497:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20277
.L11491:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11490
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L11490
.L11485:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11488
.L21383:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11477
.L21382:
	movq	7528(%rsp), %rsi
	addq	7536(%rsp), %rsi
	cmpq	7176(%rsp), %rsi
	jne	.L11475
	jmp	.L11474
.L21381:
	movq	3632(%rsp), %r10
	cmpq	%r10, 3640(%rsp)
	jne	.L10142
	movl	7704(%rsp), %ecx
	xorl	%r15d, %r15d
	movq	3592(%rsp), %r13
	movl	3624(%rsp), %r14d
	movl	3616(%rsp), %eax
	testl	%ecx, %ecx
	jne	.L10144
	movl	7344(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L10143
.L10144:
	movl	$1, %r15d
.L10143:
	cmpq	$0, size_htab.0(%rip)
	movslq	%eax,%rbx
	movq	sizetype_tab+24(%rip), %rbp
	je	.L21527
.L10145:
	movq	new_const.1(%rip), %rdi
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%rdi), %eax
	decq	%rcx
	movq	%rbx, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%rbp, 8(%rdi)
	movq	%rdi, %r8
	movq	%rdi, %r11
	movq	%rdi, %rdx
	cmpb	$26, %al
	je	.L10149
	cmpb	$25, %al
	je	.L21528
.L10149:
	movzbl	18(%r11), %edi
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %dil
	orb	%bl, %dil
	movb	%dil, 18(%r11)
	movzbl	18(%r8), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%r8)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21529
	movq	%rdx, %r12
.L10171:
	cmpq	$0, size_htab.0(%rip)
	movslq	%r14d,%rbp
	movq	sizetype_tab(%rip), %rbx
	je	.L21530
.L10174:
	movq	new_const.1(%rip), %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movq	%rdx, %rdi
	movq	%rbp, 32(%rdx)
	movq	%rcx, 40(%rdx)
	movzbl	16(%rdi), %eax
	movq	%rbx, 8(%rdx)
	movq	%rdx, %r11
	cmpb	$26, %al
	je	.L10178
	cmpb	$25, %al
	je	.L21531
.L10178:
	movzbl	18(%r11), %ebx
	leal	0(,%r10,4), %eax
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %bl
	orb	%al, %bl
	movb	%bl, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L21532
	movq	%rcx, %rbx
.L10200:
	movq	3656(%rsp), %rdx
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movl	$40, %edi
	xorl	%eax, %eax
	call	build
	movl	%r15d, %edx
	movq	%rax, 1096(%rsp)
	salb	$5, %dl
	movq	1096(%rsp), %rdi
	movzbl	17(%rdi), %r14d
	andb	$-33, %r14b
	orb	%dl, %r14b
	movb	%r14b, 17(%rdi)
	movq	$-1, %rdi
	movl	3624(%rsp), %r12d
	movq	7688(%rsp), %r10
	movq	%rdi, %rsi
	movl	%r12d, 2932(%rsp)
	movq	%r10, 2936(%rsp)
	movq	8(%r10), %r13
	movzwl	60(%r13), %r15d
	andl	$511, %r15d
	movl	%r15d, 2928(%rsp)
	call	build_int_2_wide
	movq	%r13, %rdi
	movq	%rax, %r14
	call	signed_type
	movzbl	16(%r14), %edx
	movq	%rax, 8(%r14)
	movq	%r14, %rsi
	cmpb	$26, %dl
	je	.L10206
	cmpb	$25, %dl
	je	.L21533
.L10206:
	movl	2928(%rsp), %ebp
	movl	$82, %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2932(%rsp), %ebp
	cmpq	$0, size_htab.0(%rip)
	je	.L21534
.L10227:
	movq	new_const.1(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movzbl	16(%rsi), %eax
	movq	%rbp, 32(%rsi)
	movq	%rcx, 40(%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	movq	%rsi, %r11
	movq	%rsi, %rdx
	cmpb	$26, %al
	je	.L10231
	cmpb	$25, %al
	je	.L21535
.L10231:
	movzbl	18(%r11), %r8d
	leal	0(,%r10,4), %esi
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r8b
	orb	%sil, %r8b
	movb	%r8b, 18(%r11)
	movzbl	18(%rdi), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21536
	movq	%rdx, 1160(%rsp)
.L10253:
	movq	global_trees(%rip), %rsi
.L10256:
	movzbl	16(%r14), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L10257
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L10257
	movq	8(%r14), %r13
	movq	8(%rcx), %rdx
	movzbl	61(%r13), %ebx
	movzbl	61(%rdx), %r11d
	andb	$-2, %bl
	andb	$-2, %r11b
	cmpb	%r11b, %bl
	jne	.L10257
	movq	%rcx, %r14
	jmp	.L10256
.L10257:
	movq	global_trees(%rip), %rsi
.L10261:
	movq	1160(%rsp), %rdi
	movzbl	16(%rdi), %r15d
	subb	$114, %r15b
	cmpb	$2, %r15b
	ja	.L10262
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L10262
	movq	8(%rdi), %r10
	movq	8(%rcx), %r8
	movzbl	61(%r10), %r9d
	movzbl	61(%r8), %ebp
	andb	$-2, %r9b
	andb	$-2, %bpl
	cmpb	%bpl, %r9b
	jne	.L10262
	movq	%rcx, 1160(%rsp)
	jmp	.L10261
.L10262:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21537
	cmpb	$26, %al
	je	.L21538
	cmpb	$27, %al
	je	.L21539
	xorl	%ebp, %ebp
.L10473:
	movl	2928(%rsp), %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2932(%rsp), %r12d
	cmpq	$0, size_htab.0(%rip)
	je	.L21540
.L10517:
	movq	new_const.1(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movzbl	16(%rsi), %eax
	movq	%r12, 32(%rsi)
	movq	%rcx, 40(%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %r8
	movq	%rsi, %r11
	movq	%rsi, %rdx
	cmpb	$26, %al
	je	.L10521
	cmpb	$25, %al
	je	.L21541
.L10521:
	movzbl	18(%r11), %edi
	leal	0(,%r10,4), %r12d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %dil
	orb	%r12b, %dil
	movb	%dil, 18(%r11)
	movzbl	18(%r8), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%r8)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21542
	movq	%rdx, %r14
.L10543:
	movq	global_trees(%rip), %rsi
.L10546:
	movzbl	16(%rbp), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L10547
	movq	32(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	.L10547
	movq	8(%rbp), %rbx
	movq	8(%rcx), %r15
	movzbl	61(%rbx), %r8d
	movzbl	61(%r15), %r10d
	andb	$-2, %r8b
	andb	$-2, %r10b
	cmpb	%r10b, %r8b
	jne	.L10547
	movq	%rcx, %rbp
	jmp	.L10546
.L10547:
	movq	global_trees(%rip), %rsi
.L10551:
	movzbl	16(%r14), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L10552
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L10552
	movq	8(%r14), %r12
	movq	8(%rcx), %rdi
	movzbl	61(%r12), %r11d
	movzbl	61(%rdi), %r9d
	andb	$-2, %r11b
	andb	$-2, %r9b
	cmpb	%r9b, %r11b
	jne	.L10552
	movq	%rcx, %r14
	jmp	.L10551
.L10552:
	movzbl	16(%rbp), %eax
	cmpb	$25, %al
	je	.L21543
	cmpb	$26, %al
	je	.L21544
	cmpb	$27, %al
	je	.L21545
	xorl	%ebx, %ebx
.L10763:
	movq	2936(%rsp), %rdi
	movq	%rbx, %rsi
	call	tree_int_cst_equal
	testl	%eax, %eax
	je	.L21546
.L10204:
	movl	7520(%rsp), %r10d
	xorl	%r15d, %r15d
	movq	3584(%rsp), %r13
	movl	3608(%rsp), %r14d
	movl	3600(%rsp), %eax
	testl	%r10d, %r10d
	jne	.L10809
	movl	7168(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L10808
.L10809:
	movl	$1, %r15d
.L10808:
	cmpq	$0, size_htab.0(%rip)
	movslq	%eax,%rbx
	movq	sizetype_tab+24(%rip), %rbp
	je	.L21547
.L10810:
	movq	new_const.1(%rip), %rdi
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%rdi), %eax
	decq	%rcx
	movq	%rbx, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%rbp, 8(%rdi)
	movq	%rdi, %r8
	movq	%rdi, %r11
	movq	%rdi, %rdx
	cmpb	$26, %al
	je	.L10814
	cmpb	$25, %al
	je	.L21548
.L10814:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %ebp
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%bpl, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%r8), %esi
	andb	$-9, %sil
	orb	%al, %sil
	movb	%sil, 18(%r8)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21549
	movq	%rdx, %r12
.L10836:
	cmpq	$0, size_htab.0(%rip)
	movslq	%r14d,%rbp
	movq	sizetype_tab(%rip), %rbx
	je	.L21550
.L10839:
	movq	new_const.1(%rip), %r8
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movzbl	16(%r8), %eax
	movq	%rbp, 32(%r8)
	movq	%rcx, 40(%r8)
	movq	%rbx, 8(%r8)
	movq	%r8, %rdi
	movq	%r8, %r11
	movq	%r8, %rdx
	cmpb	$26, %al
	je	.L10843
	cmpb	$25, %al
	je	.L21551
.L10843:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%r11)
	leal	0(,%r10,8), %r11d
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%r11b, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L21552
	movq	%rcx, %rbx
.L10865:
	movq	3648(%rsp), %rdx
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movq	%r12, %r8
	movl	$40, %edi
	xorl	%eax, %eax
	movl	%r15d, %r14d
	call	build
	salb	$5, %r14b
	movq	%rax, 1016(%rsp)
	movq	1016(%rsp), %rdi
	movzbl	17(%rdi), %r8d
	andb	$-33, %r8b
	orb	%r14b, %r8b
	movb	%r8b, 17(%rdi)
	movq	$-1, %rdi
	movl	3608(%rsp), %ebp
	movq	7512(%rsp), %r12
	movq	%rdi, %rsi
	movl	%ebp, 2884(%rsp)
	movq	%r12, 2888(%rsp)
	movq	8(%r12), %r13
	movzwl	60(%r13), %r15d
	andl	$511, %r15d
	movl	%r15d, 2880(%rsp)
	call	build_int_2_wide
	movq	%r13, %rdi
	movq	%rax, %r14
	call	signed_type
	movzbl	16(%r14), %edx
	movq	%rax, 8(%r14)
	movq	%r14, %rsi
	cmpb	$26, %dl
	je	.L10871
	cmpb	$25, %dl
	je	.L21553
.L10871:
	movl	2880(%rsp), %ebp
	movl	$82, %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2884(%rsp), %ebp
	cmpq	$0, size_htab.0(%rip)
	je	.L21554
.L10892:
	movq	new_const.1(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movzbl	16(%rsi), %eax
	movq	%rbp, 32(%rsi)
	movq	%rcx, 40(%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	movq	%rsi, %r11
	movq	%rsi, %rdx
	cmpb	$26, %al
	je	.L10896
	cmpb	$25, %al
	je	.L21555
.L10896:
	movzbl	18(%r11), %r8d
	leal	0(,%r10,4), %eax
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %r8b
	orb	%al, %r8b
	movb	%r8b, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21556
	movq	%rdx, 1088(%rsp)
.L10918:
	movq	global_trees(%rip), %rsi
.L10921:
	movzbl	16(%r14), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L10922
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L10922
	movq	8(%r14), %rbp
	movq	8(%rcx), %rdx
	movzbl	61(%rbp), %r15d
	movzbl	61(%rdx), %r13d
	andb	$-2, %r15b
	andb	$-2, %r13b
	cmpb	%r13b, %r15b
	jne	.L10922
	movq	%rcx, %r14
	jmp	.L10921
.L10922:
	movq	global_trees(%rip), %rsi
.L10926:
	movq	1088(%rsp), %rdi
	movzbl	16(%rdi), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L10927
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L10927
	movq	8(%rdi), %r8
	movq	8(%rcx), %r9
	movzbl	61(%r8), %r11d
	movzbl	61(%r9), %ebx
	andb	$-2, %r11b
	andb	$-2, %bl
	cmpb	%bl, %r11b
	jne	.L10927
	movq	%rcx, 1088(%rsp)
	jmp	.L10926
.L10927:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21557
	cmpb	$26, %al
	je	.L21558
	cmpb	$27, %al
	je	.L21559
	xorl	%ebp, %ebp
.L11138:
	movl	2880(%rsp), %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2884(%rsp), %r12d
	cmpq	$0, size_htab.0(%rip)
	je	.L21560
.L11182:
	movq	new_const.1(%rip), %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movq	%rdx, %r8
	movq	%r12, 32(%rdx)
	movq	%rcx, 40(%rdx)
	movzbl	16(%r8), %eax
	movq	%rbx, 8(%rdx)
	movq	%rdx, %r11
	cmpb	$26, %al
	je	.L11186
	cmpb	$25, %al
	je	.L21561
.L11186:
	movzbl	18(%r11), %edi
	leal	0(,%r10,4), %r14d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %dil
	orb	%r14b, %dil
	movb	%dil, 18(%r11)
	movzbl	18(%r8), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%r8)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21562
	movq	%rdx, %r14
.L11208:
	movq	global_trees(%rip), %rsi
.L11211:
	movzbl	16(%rbp), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L11212
	movq	32(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	.L11212
	movq	8(%rbp), %rdx
	movq	8(%rcx), %r15
	movzbl	61(%rdx), %r12d
	movzbl	61(%r15), %r11d
	andb	$-2, %r12b
	andb	$-2, %r11b
	cmpb	%r11b, %r12b
	jne	.L11212
	movq	%rcx, %rbp
	jmp	.L11211
.L11212:
	movq	global_trees(%rip), %rsi
.L11216:
	movzbl	16(%r14), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L11217
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L11217
	movq	8(%r14), %rdi
	movq	8(%rcx), %r10
	movzbl	61(%rdi), %r9d
	movzbl	61(%r10), %ebx
	andb	$-2, %r9b
	andb	$-2, %bl
	cmpb	%bl, %r9b
	jne	.L11217
	movq	%rcx, %r14
	jmp	.L11216
.L11217:
	movzbl	16(%rbp), %eax
	cmpb	$25, %al
	je	.L21563
	cmpb	$26, %al
	je	.L21564
	cmpb	$27, %al
	je	.L21565
	xorl	%ebx, %ebx
.L11428:
	movq	2888(%rsp), %rdi
	movq	%rbx, %rsi
	call	tree_int_cst_equal
	testl	%eax, %eax
	je	.L21566
.L10869:
	movl	1780(%rsp), %edi
	movq	3736(%rsp), %rsi
	movq	1096(%rsp), %rdx
	movq	1016(%rsp), %rcx
	jmp	.L20601
.L21566:
	movq	7512(%rsp), %rcx
	movq	3584(%rsp), %rsi
	movl	$88, %edi
	movq	1016(%rsp), %rdx
	xorl	%eax, %eax
	call	build
	movq	%rax, 1016(%rsp)
	jmp	.L10869
.L21565:
	movq	8(%rbp), %r13
	movl	$83, %esi
	cmpl	$60, %esi
	movq	%r13, 2856(%rsp)
	movq	40(%rbp), %r15
	movq	32(%rbp), %r13
	movq	32(%r14), %rbp
	movq	40(%r14), %r14
	je	.L11460
	cmpl	$60, %esi
	ja	.L11471
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21025:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2856(%rsp), %rdi
.L20275:
	movq	%rax, %rdx
	call	build_complex
.L20276:
	movq	%rax, %rbx
	jmp	.L11428
.L11471:
	movl	$83, %edi
	cmpl	$61, %edi
	je	.L11461
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2848(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L11465
	cmpb	$10, %al
	je	.L11465
	cmpb	$11, %al
	je	.L11465
	cmpb	$12, %al
	movl	$70, %edi
	je	.L11465
.L11464:
	movq	2848(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbp
	movq	%rax, %rsi
	movzbl	16(%rbp), %eax
	cmpb	$6, %al
	je	.L11468
	cmpb	$10, %al
	je	.L11468
	cmpb	$11, %al
	je	.L11468
	cmpb	$12, %al
	movl	$70, %edi
	je	.L11468
.L11467:
	movq	2848(%rsp), %rdx
.L20274:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2856(%rsp), %rdi
	jmp	.L20275
.L11468:
	movl	$62, %edi
	jmp	.L11467
.L11465:
	movl	$62, %edi
	jmp	.L11464
.L11461:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20274
.L11460:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21025
.L21564:
	movq	32(%rbp), %r11
	xorl	%r12d, %r12d
	movq	%rbp, %rbx
	movq	%r11, 18528(%rsp)
	movq	40(%rbp), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%rbp), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rsi
	movq	%rsi, 18560(%rsp)
	movq	40(%r14), %r13
	movq	%r13, 18568(%rsp)
	movq	48(%r14), %r9
	movq	%rdi, 16(%rsp)
	movq	%r11, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r9, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L11428
	movq	18560(%rsp), %r10
	movq	18568(%rsp), %r15
	movq	%r14, %rbx
	movq	18576(%rsp), %rcx
	movq	%r10, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%rcx, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L11428
	movq	18560(%rsp), %rdi
	movq	8(%rbp), %r13
	leaq	11792(%rsp), %rsi
	movq	18528(%rsp), %r9
	movq	18536(%rsp), %r11
	movl	$83, 11792(%rsp)
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r8
	movq	18576(%rsp), %rbx
	movq	%rdi, 11832(%rsp)
	movq	%r13, 11800(%rsp)
	movl	$const_binop_1, %edi
	movq	%r9, 11808(%rsp)
	movq	%r11, 11816(%rsp)
	movq	%rdx, 11824(%rsp)
	movq	%r8, 11840(%rsp)
	movq	%rbx, 11848(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L11433
	movq	11856(%rsp), %rbx
.L11434:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L11436
	cmpb	$25, %al
	je	.L21569
.L11436:
	movzbl	18(%rbp), %r9d
	movzbl	18(%r14), %edx
	shrb	$3, %r9b
	shrb	$3, %dl
	andl	$1, %r9d
	andl	$1, %edx
	orb	%r12b, %r9b
	movzbl	18(%rbx), %r12d
	orb	%dl, %r9b
	salb	$3, %r9b
	andb	$-9, %r12b
	orb	%r9b, %r12b
	movb	%r12b, 18(%rbx)
	movl	%r12d, %edi
	movzbl	18(%r14), %eax
	movzbl	18(%rbp), %r8d
	shrb	$3, %dil
	andb	$-5, %r12b
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%edi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %r12b
	movb	%r12b, 18(%rbx)
	jmp	.L11428
.L21569:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L11440
	cmpb	$15, %al
	je	.L11440
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L11443:
	cmpl	$128, %esi
	je	.L11445
	cmpl	$64, %esi
	jbe	.L11446
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L11445:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11449
	cmpb	$6, 16(%rax)
	jne	.L11436
	testb	$2, 62(%rax)
	je	.L11436
.L11449:
	cmpl	$128, %esi
	je	.L11451
	cmpl	$64, %esi
	jbe	.L11452
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20273:
	testl	$1, %eax 
	je	.L11451
	cmpl	$64, %esi
	jbe	.L11454
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11451:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%r12d,%r11
	orq	%rdi, %r11
	orq	%r8, %r11
	setne	%cl
	movzbl	%cl, %r12d
	jmp	.L11436
.L11454:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11451
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11451
.L11452:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20273
.L11446:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11445
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L11445
.L11440:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11443
.L11433:
	movq	%rbp, %rdi
	movl	$1, %r12d
	call	copy_node
	movq	%rax, %rbx
	jmp	.L11434
.L21563:
	movq	8(%rbp), %r13
	movl	$1, %r15d
	movl	$0, 1052(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21570
.L11222:
	movl	$83, %eax
	movl	$0, 1024(%rsp)
	movl	$0, 1048(%rsp)
	subl	$59, %eax
	movq	32(%rbp), %r11
	movq	40(%rbp), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L11363(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L11363:
	.quad	.L11297
	.quad	.L11300
	.quad	.L11306
	.quad	.L11339
	.quad	.L11339
	.quad	.L11339
	.quad	.L11342
	.quad	.L11348
	.quad	.L11348
	.quad	.L11348
	.quad	.L11351
	.quad	.L18929
	.quad	.L11339
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L11353
	.quad	.L11353
	.quad	.L18929
	.quad	.L18929
	.quad	.L11229
	.quad	.L11228
	.quad	.L11256
	.quad	.L11255
	.quad	.L11224
	.quad	.L11225
	.quad	.L11226
	.quad	.L11227
	.text
.L11224:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5408(%rsp)
.L20268:
	movq	%r10, 5400(%rsp)
.L11223:
	movl	1052(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L11364
	movq	5400(%rsp), %rax
	testq	%rax, %rax
	jne	.L11366
	cmpq	$0, 5408(%rsp)
	js	.L11366
.L11365:
	movl	1024(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L11364
	testb	$8, 18(%rbp)
	jne	.L11364
	testb	$8, 18(%r14)
	jne	.L11364
	cmpq	$0, size_htab.0(%rip)
	movq	5408(%rsp), %rbx
	je	.L21571
.L11367:
	movq	new_const.1(%rip), %rbp
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%rbp), %eax
	decq	%rcx
	movq	%rbx, 32(%rbp)
	movq	%rcx, 40(%rbp)
	movq	%r13, 8(%rbp)
	movq	%rbp, %rdi
	movq	%rbp, %r11
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L11371
	cmpb	$25, %al
	je	.L21572
.L11371:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20276
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11428
.L21572:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11375
	cmpb	$15, %al
	je	.L11375
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L11378:
	cmpl	$128, %esi
	je	.L11380
	cmpl	$64, %esi
	jbe	.L11381
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L11380:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11384
	cmpb	$6, 16(%rax)
	jne	.L11371
	testb	$2, 62(%rax)
	je	.L11371
.L11384:
	cmpl	$128, %esi
	je	.L11386
	cmpl	$64, %esi
	jbe	.L11387
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20270:
	testl	$1, %eax 
	je	.L11386
	cmpl	$64, %esi
	jbe	.L11389
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L11386:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L11371
.L11389:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11386
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11386
.L11387:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20270
.L11381:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11380
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L11380
.L11375:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11378
.L21571:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11367
.L11364:
	movq	5408(%rsp), %rdi
	movq	5400(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%rbp), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movzbl	18(%r14), %r12d
	movl	$1, %r11d
	movzbl	18(%rbp), %r8d
	shrb	$3, %r12b
	shrb	$3, %r8b
	movl	%r12d, %ebx
	andl	%r8d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L11397
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L11400
	movl	1052(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L11399
.L11400:
	movl	1024(%rsp), %r13d
	movl	$1, %eax
	testl	%r13d, %r13d
	cmovne	%eax, %edx
.L11399:
	movl	%edx, %eax
.L20272:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1052(%rsp), %eax
	testl	%eax, %eax
	je	.L11426
	testb	$8, %dl
	jne	.L11426
	movq	5400(%rsp), %r10
	cmpq	%r10, 40(%rdi)
	je	.L21573
.L11427:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L11426:
	movzbl	18(%rdi), %ebx
	movzbl	18(%rbp), %r12d
	movzbl	18(%r14), %ebp
	movl	%ebx, %r8d
	shrb	$2, %r12b
	andb	$-5, %bl
	shrb	$3, %r8b
	shrb	$2, %bpl
	orl	%r8d, %r12d
	orl	%ebp, %r12d
	andb	$1, %r12b
	salb	$2, %r12b
	orb	%r12b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L11428
.L21573:
	movq	5408(%rsp), %rax
	cmpq	%rax, 32(%rdi)
	jne	.L11427
	jmp	.L11426
.L11397:
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L11403
	movl	1052(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L11402
.L11403:
	movl	1024(%rsp), %esi
	movl	$1, %r10d
	movl	$0, %eax
	testl	%esi, %esi
	cmove	%eax, %r10d
.L11402:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L11405
	cmpb	$25, %al
	je	.L21574
.L11405:
	testl	%r10d, %r10d
	je	.L11401
	movl	1048(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %r12d
.L11401:
	movl	%r12d, %eax
	jmp	.L20272
.L21574:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L11409
	cmpb	$15, %al
	je	.L11409
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L11412:
	cmpl	$128, %esi
	je	.L11414
	cmpl	$64, %esi
	jbe	.L11415
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L11414:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11418
	cmpb	$6, 16(%rax)
	jne	.L11405
	testb	$2, 62(%rax)
	je	.L11405
.L11418:
	cmpl	$128, %esi
	je	.L11420
	cmpl	$64, %esi
	jbe	.L11421
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20271:
	testl	$1, %eax 
	je	.L11420
	cmpl	$64, %esi
	jbe	.L11423
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11420:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r15
	orq	%r8, %r15
	orq	%r9, %r15
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L11405
.L11423:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11420
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11420
.L11421:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20271
.L11415:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11414
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L11414
.L11409:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11412
.L11366:
	cmpq	$-1, %rax
	jne	.L11364
	cmpq	$0, 5408(%rsp)
	jns	.L11364
	jmp	.L11365
.L11297:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5408(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5400(%rsp)
	andq	%r10, %r9
.L20267:
	shrq	$63, %r9
	movl	%r9d, 1024(%rsp)
	jmp	.L11223
.L11300:
	testq	%r8, %r8
	jne	.L11301
	movq	%r9, %rax
	movq	$0, 5408(%rsp)
	negq	%rax
.L20262:
	movq	%rax, 5400(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5408(%rsp), %rdx
	addq	5400(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbx
	movq	%rdx, 5408(%rsp)
	cmovb	%rbx, %r12
	xorq	%r12, %r9 
	movq	%r12, 5400(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20267
.L11301:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5408(%rsp)
	notq	%rax
	jmp	.L20262
.L11306:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 11968(%rsp)
	movq	%rcx, 11976(%rsp)
	movq	%r8, %r12
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %r12d
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 11944(%rsp)
	movq	%rbx, 11984(%rsp)
	movq	%rdx, 11992(%rsp)
	movq	%r12, 11936(%rsp)
	movq	%rdi, 11952(%rsp)
	movq	%rcx, 11960(%rsp)
	movq	$0, 11872(%rsp)
	movq	$0, 11880(%rsp)
	movq	$0, 11888(%rsp)
	movq	$0, 11896(%rsp)
	movq	$0, 11904(%rsp)
	movq	$0, 11912(%rsp)
	movq	$0, 11920(%rsp)
	movq	$0, 11928(%rsp)
	xorl	%esi, %esi
.L11318:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	11968(%rsp,%rbx,8), %r12
	xorl	%ebx, %ebx
.L11317:
	movq	%r12, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	11936(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	11872(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 11872(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L11317
	movslq	%esi,%r12
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 11904(%rsp,%r12,8)
	jle	.L11318
	movq	11880(%rsp), %rdx
	movq	11896(%rsp), %rsi
	movq	11912(%rsp), %rax
	movq	11928(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	11872(%rsp), %rdx
	addq	11888(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	11904(%rsp), %rax
	addq	11920(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 5408(%rsp)
	movq	%rsi, 5400(%rsp)
	js	.L21575
.L11321:
	testq	%r9, %r9
	js	.L21576
.L11327:
	cmpq	$0, 5400(%rsp)
	js	.L21577
	orq	%rcx, %rax
.L21024:
	setne	%r11b
	movzbl	%r11b, %eax
.L20266:
	movl	%eax, 1024(%rsp)
	jmp	.L11223
.L21577:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21024
.L21576:
	testq	%r11, %r11
	jne	.L11328
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L11329:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L11327
.L11328:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L11329
.L21575:
	testq	%r8, %r8
	jne	.L11322
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L11323:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L11321
.L11322:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L11323
.L11342:
	testq	%r9, %r9
	jne	.L11343
	cmpq	$1, %r8
	je	.L20265
.L11343:
	cmpq	%r8, %r11
	je	.L21578
.L11344:
	leaq	5408(%rsp), %rbx
	leaq	5400(%rsp), %rdi
	leaq	5360(%rsp), %rcx
	leaq	5352(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20263:
	movl	$83, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20266
.L21578:
	cmpq	%r9, %r10
	jne	.L11344
	testq	%r8, %r8
	jne	.L11345
	testq	%r9, %r9
	je	.L11344
.L11345:
	movq	$1, 5408(%rsp)
.L20264:
	movq	$0, 5400(%rsp)
	jmp	.L11223
.L20265:
	movq	%r11, 5408(%rsp)
	jmp	.L20268
.L11348:
	testq	%r9, %r9
	jne	.L11351
	testq	%r8, %r8
	jle	.L11351
	testb	$4, 18(%rbp)
	jne	.L11351
	testb	$4, 18(%r14)
	jne	.L11351
	testq	%r10, %r10
	jne	.L11351
	testq	%r11, %r11
	js	.L11351
	movl	$83, %eax
	leaq	-1(%r8,%r11), %r12
	cmpl	$67, %eax
	cmove	%r12, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5408(%rsp)
	jmp	.L20264
.L11351:
	leaq	5360(%rsp), %rcx
	leaq	5352(%rsp), %rdx
	leaq	5408(%rsp), %rsi
	movq	%rcx, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5400(%rsp), %rax
	jmp	.L20263
.L11339:
	testq	%r9, %r9
	jne	.L11343
	testq	%r8, %r8
	jle	.L11342
	testb	$4, 18(%rbp)
	jne	.L11342
	testb	$4, 18(%r14)
	jne	.L11342
	testq	%r10, %r10
	jne	.L11342
	testq	%r11, %r11
	js	.L11342
	movl	$83, %r10d
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %r10d
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5408(%rsp)
	jmp	.L20264
.L11353:
	testl	%r15d, %r15d
	je	.L11354
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L11359
.L21191:
	cmpq	%r9, %r10
	je	.L21579
.L11358:
	movl	$83, %r12d
	xorl	%ebx, %ebx
	movq	%rax, 5408(%rsp)
	cmpl	$78, %r12d
	sete	%bl
	cmpq	%rbx, 5408(%rsp)
	je	.L20265
	movq	%r8, 5408(%rsp)
	movq	%r9, 5400(%rsp)
	jmp	.L11223
.L21579:
	cmpq	%r8, %r11
	jae	.L11358
.L11359:
	movl	$1, %eax
	jmp	.L11358
.L11354:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L11359
	jmp	.L21191
.L11229:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5408(%rsp), %rbx
	leaq	5400(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21580
	cmpq	$127, %r8
	jle	.L11245
	movq	$0, 5400(%rsp)
.L20254:
	movq	$0, 5408(%rsp)
.L11246:
	cmpl	$64, %esi
	jbe	.L11249
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20255:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L11244
	cmpl	$63, %esi
	jbe	.L11253
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20257:
	movq	%rax, (%r9)
.L11244:
	movl	$1, 1048(%rsp)
	jmp	.L11223
.L11253:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20256:
	movq	%rax, (%rbx)
	jmp	.L11244
.L11249:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20255
.L11245:
	cmpq	$63, %r8
	jle	.L11247
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5400(%rsp)
	jmp	.L20254
.L11247:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5408(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5400(%rsp)
	jmp	.L11246
.L21580:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L11231
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L11232:
	cmpq	$127, %rdx
	jle	.L11233
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L11234:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L11237
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L11244
.L11237:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L11244
	cmpq	$63, %rax
	jle	.L11241
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20257
.L11241:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20256
.L11233:
	cmpq	$63, %rdx
	jle	.L11235
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L11234
.L11235:
	movl	%edx, %ecx
	movq	%r10, %r12
	shrq	%cl, %r12
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r12, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L11234
.L11231:
	xorl	%edi, %edi
	jmp	.L11232
.L11228:
	negq	%r8
	jmp	.L11229
.L11256:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5392(%rsp), %r12
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5384(%rsp), %rbx
	testq	%r8, %r8
	js	.L21581
	cmpq	$127, %r8
	jle	.L11273
	movq	$0, 5384(%rsp)
.L20258:
	movq	$0, 5392(%rsp)
.L11274:
	cmpl	$64, %edi
	jbe	.L11277
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20259:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L11272
	cmpl	$63, %edi
	jbe	.L11281
.L20261:
	leal	-64(%rdi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	salq	%cl, %rdx
	notq	%r12
	andq	(%rbx), %r12
	orq	%rdx, %r12
	movq	%r12, (%rbx)
.L11272:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5368(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5376(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L11285
	movq	$0, 5368(%rsp)
	movq	$0, 5376(%rsp)
.L11286:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L11289
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L11295:
	movq	5376(%rsp), %rdi
	movq	5368(%rsp), %r10
	orq	5392(%rsp), %rdi
	orq	5384(%rsp), %r10
	movq	%rdi, 5408(%rsp)
	movq	%r10, 5400(%rsp)
	jmp	.L11223
.L11289:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L11295
	cmpq	$63, %rax
	jle	.L11293
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L11295
.L11293:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L11295
.L11285:
	cmpq	$63, %rsi
	jle	.L11287
	leal	-64(%rsi), %ecx
	movq	$0, 5368(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5376(%rsp)
	jmp	.L11286
.L11287:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5368(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5376(%rsp)
	jmp	.L11286
.L11281:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20260:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r12), %rax
	orq	%rdx, %rax
	movq	%rax, (%r12)
	jmp	.L11272
.L11277:
	movq	(%r12), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20259
.L11273:
	cmpq	$63, %r8
	jle	.L11275
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 5384(%rsp)
	jmp	.L20258
.L11275:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 5384(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5392(%rsp)
	jmp	.L11274
.L21581:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L11261
	movq	$0, 5384(%rsp)
	movq	$0, 5392(%rsp)
.L11262:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L11265
	movq	%rdx, (%rbx)
	movq	%rdx, (%r12)
	jmp	.L11272
.L11265:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L11272
	cmpq	$63, %rax
	jle	.L11269
	subl	%esi, %edi
	jmp	.L20261
.L11269:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20260
.L11261:
	cmpq	$63, %rsi
	jle	.L11263
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5384(%rsp)
	shrq	%cl, %rax
	movq	%rax, 5392(%rsp)
	jmp	.L11262
.L11263:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 5384(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 5392(%rsp)
	jmp	.L11262
.L11255:
	negq	%r8
	jmp	.L11256
.L11225:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5408(%rsp)
	jmp	.L20268
.L11226:
	andq	%r8, %r11
	movq	%r11, 5408(%rsp)
.L20269:
	andq	%r9, %r10
	jmp	.L20268
.L11227:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5408(%rsp)
	jmp	.L20269
.L21570:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1052(%rsp), %eax
	movl	%eax, 1052(%rsp)
	jmp	.L11222
.L21562:
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11208
.L21561:
	movzbl	16(%rbx), %eax
	movq	%r12, %rdi
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11190
	cmpb	$15, %al
	je	.L11190
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L11193:
	cmpl	$128, %esi
	je	.L11195
	cmpl	$64, %esi
	jbe	.L11196
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L11195:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11199
	cmpb	$6, 16(%rax)
	jne	.L11186
	testb	$2, 62(%rax)
	je	.L11186
.L11199:
	cmpl	$128, %esi
	je	.L11201
	cmpl	$64, %esi
	jbe	.L11202
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20253:
	testl	$1, %eax 
	je	.L11201
	cmpl	$64, %esi
	jbe	.L11204
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11201:
	xorq	32(%rdx), %rdi
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%rdi, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L11186
.L11204:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11201
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11201
.L11202:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20253
.L11196:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11195
	movq	$-1, %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 32(%rdx)
	jmp	.L11195
.L11190:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11193
.L21560:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11182
.L21559:
	movq	8(%r14), %rbp
	movq	1088(%rsp), %rdi
	cmpl	$60, %r12d
	movq	%rbp, 2872(%rsp)
	movq	32(%rdi), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rdi), %r14
	je	.L11170
	cmpl	$60, %r12d
	ja	.L11181
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21023:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2872(%rsp), %rdi
.L20251:
	movq	%rax, %rdx
	call	build_complex
.L20252:
	movq	%rax, %rbp
	jmp	.L11138
.L11181:
	cmpl	$61, %r12d
	je	.L11171
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2864(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L11175
	cmpb	$10, %al
	je	.L11175
	cmpb	$11, %al
	je	.L11175
	cmpb	$12, %al
	movl	$70, %edi
	je	.L11175
.L11174:
	movq	2864(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r15
	movq	%rax, %rsi
	movzbl	16(%r15), %eax
	cmpb	$6, %al
	je	.L11178
	cmpb	$10, %al
	je	.L11178
	cmpb	$11, %al
	je	.L11178
	cmpb	$12, %al
	movl	$70, %edi
	je	.L11178
.L11177:
	movq	2864(%rsp), %rdx
.L20250:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2872(%rsp), %rdi
	jmp	.L20251
.L11178:
	movl	$62, %edi
	jmp	.L11177
.L11175:
	movl	$62, %edi
	jmp	.L11174
.L11171:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20250
.L11170:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21023
.L21558:
	movq	32(%r14), %rsi
	movq	1088(%rsp), %r10
	xorl	%ebx, %ebx
	movq	%rsi, 18528(%rsp)
	movq	40(%r14), %r9
	movq	%r9, 18536(%rsp)
	movq	48(%r14), %r13
	movq	%r13, 18544(%rsp)
	movq	32(%r10), %rbp
	movq	%rbp, 18560(%rsp)
	movq	%r14, %rbp
	movq	40(%r10), %rdi
	movq	%rdi, 18568(%rsp)
	movq	48(%r10), %rcx
	movq	%r13, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	%r9, 8(%rsp)
	movq	%rcx, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L11138
	movq	18560(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %r11
	movq	%rdx, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%r11, 16(%rsp)
	call	target_isnan
	movq	1088(%rsp), %rbp
	testl	%eax, %eax
	jne	.L11138
	movq	8(%r14), %rdi
	movq	18544(%rsp), %rsi
	movl	%r12d, 12000(%rsp)
	movq	18528(%rsp), %r10
	movq	18536(%rsp), %rcx
	movq	18560(%rsp), %r9
	movq	18568(%rsp), %r13
	movq	18576(%rsp), %r8
	movq	%rdi, 12008(%rsp)
	movq	%rsi, 12032(%rsp)
	movl	$const_binop_1, %edi
	leaq	12000(%rsp), %rsi
	movq	%r10, 12016(%rsp)
	movq	%rcx, 12024(%rsp)
	movq	%r9, 12040(%rsp)
	movq	%r13, 12048(%rsp)
	movq	%r8, 12056(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L11143
	movq	12064(%rsp), %rbp
.L11144:
	movzbl	16(%rbp), %eax
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L11146
	cmpb	$25, %al
	je	.L21584
.L11146:
	movq	1088(%rsp), %r9
	movzbl	18(%r14), %ecx
	movzbl	18(%r9), %r10d
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%bl, %cl
	movzbl	18(%rbp), %ebx
	shrb	$3, %r10b
	andl	$1, %r10d
	orb	%r10b, %cl
	salb	$3, %cl
	andb	$-9, %bl
	orb	%cl, %bl
	movb	%bl, 18(%rbp)
	movl	%ebx, %esi
	movzbl	18(%r9), %eax
	movzbl	18(%r14), %r8d
	shrb	$3, %sil
	andb	$-5, %bl
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%esi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rbp)
	jmp	.L11138
.L21584:
	movq	8(%rbp), %rcx
	movq	32(%rbp), %rdi
	movq	40(%rbp), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L11150
	cmpb	$15, %al
	je	.L11150
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L11153:
	cmpl	$128, %esi
	je	.L11155
	cmpl	$64, %esi
	jbe	.L11156
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L11155:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11159
	cmpb	$6, 16(%rax)
	jne	.L11146
	testb	$2, 62(%rax)
	je	.L11146
.L11159:
	cmpl	$128, %esi
	je	.L11161
	cmpl	$64, %esi
	jbe	.L11162
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20249:
	testl	$1, %eax 
	je	.L11161
	cmpl	$64, %esi
	jbe	.L11164
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L11161:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%dl
	movzbl	%dl, %ebx
	jmp	.L11146
.L11164:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11161
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11161
.L11162:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20249
.L11156:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11155
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L11155
.L11150:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11153
.L11143:
	movq	%r14, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %rbp
	jmp	.L11144
.L21557:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 1084(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21585
.L10932:
	movq	1088(%rsp), %rax
	movl	$0, 1056(%rsp)
	movl	$0, 1080(%rsp)
	movq	32(%r14), %r11
	movq	40(%r14), %r10
	movq	32(%rax), %r8
	movq	40(%rax), %r9
	leal	-59(%r12), %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %edi
	jmp	*.L11073(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L11073:
	.quad	.L11007
	.quad	.L11010
	.quad	.L11016
	.quad	.L11049
	.quad	.L11049
	.quad	.L11049
	.quad	.L11052
	.quad	.L11058
	.quad	.L11058
	.quad	.L11058
	.quad	.L11061
	.quad	.L18929
	.quad	.L11049
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L11063
	.quad	.L11063
	.quad	.L18929
	.quad	.L18929
	.quad	.L10939
	.quad	.L10938
	.quad	.L10966
	.quad	.L10965
	.quad	.L10934
	.quad	.L10935
	.quad	.L10936
	.quad	.L10937
	.text
.L10934:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5472(%rsp)
.L20244:
	movq	%r10, 5464(%rsp)
.L10933:
	movl	1084(%rsp), %eax
	testl	%eax, %eax
	je	.L11074
	movq	5464(%rsp), %rax
	testq	%rax, %rax
	jne	.L11076
	cmpq	$0, 5472(%rsp)
	js	.L11076
.L11075:
	movl	1056(%rsp), %eax
	testl	%eax, %eax
	jne	.L11074
	testb	$8, 18(%r14)
	jne	.L11074
	movq	1088(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L11074
	cmpq	$0, size_htab.0(%rip)
	movq	5472(%rsp), %rbx
	je	.L21586
.L11077:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L11081
	cmpb	$25, %al
	je	.L21587
.L11081:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %ebp
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%bpl, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20252
	movq	new_const.1(%rip), %rbp
	movl	$25, %edi
	movq	%rbp, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L11138
.L21587:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L11085
	cmpb	$15, %al
	je	.L11085
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L11088:
	cmpl	$128, %esi
	je	.L11090
	cmpl	$64, %esi
	jbe	.L11091
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L11090:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11094
	cmpb	$6, 16(%rax)
	jne	.L11081
	testb	$2, 62(%rax)
	je	.L11081
.L11094:
	cmpl	$128, %esi
	je	.L11096
	cmpl	$64, %esi
	jbe	.L11097
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20246:
	testl	$1, %eax 
	je	.L11096
	cmpl	$64, %esi
	jbe	.L11099
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	orq	%r12, 40(%rdx)
.L11096:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L11081
.L11099:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11096
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11096
.L11097:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20246
.L11091:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11090
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L11090
.L11085:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11088
.L21586:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L11077
.L11074:
	movq	5472(%rsp), %rdi
	movq	5464(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	1088(%rsp), %r13
	movl	$1, %r11d
	movzbl	18(%r14), %ebx
	movzbl	18(%r13), %ecx
	shrb	$3, %bl
	andl	%ebx, %r11d
	shrb	$3, %cl
	movl	%ecx, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L11107
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L11110
	movl	1084(%rsp), %eax
	testl	%eax, %eax
	je	.L11109
.L11110:
	movl	1056(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L11109:
	movl	%edx, %eax
.L20248:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1084(%rsp), %eax
	testl	%eax, %eax
	je	.L11136
	testb	$8, %dl
	jne	.L11136
	movq	5464(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21588
.L11137:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L11136:
	movq	1088(%rsp), %rdx
	movzbl	18(%rdi), %r11d
	movq	%rdi, %rbp
	movzbl	18(%r14), %r15d
	movzbl	18(%rdx), %r14d
	movl	%r11d, %r8d
	andb	$-5, %r11b
	shrb	$3, %r8b
	shrb	$2, %r15b
	orl	%r8d, %r15d
	shrb	$2, %r14b
	orl	%r14d, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %r11b
	movb	%r11b, 18(%rdi)
	jmp	.L11138
.L21588:
	movq	5472(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L11137
	jmp	.L11136
.L11107:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L11113
	movl	1084(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L11112
.L11113:
	movl	1056(%rsp), %r8d
	movl	$1, %r10d
	movl	$0, %r15d
	testl	%r8d, %r8d
	cmove	%r15d, %r10d
.L11112:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L11115
	cmpb	$25, %al
	je	.L21589
.L11115:
	testl	%r10d, %r10d
	je	.L11111
	movl	1080(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L11111:
	movl	%ebp, %eax
	jmp	.L20248
.L21589:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L11119
	cmpb	$15, %al
	je	.L11119
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L11122:
	cmpl	$128, %esi
	je	.L11124
	cmpl	$64, %esi
	jbe	.L11125
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L11124:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L11128
	cmpb	$6, 16(%rax)
	jne	.L11115
	testb	$2, 62(%rax)
	je	.L11115
.L11128:
	cmpl	$128, %esi
	je	.L11130
	cmpl	$64, %esi
	jbe	.L11131
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20247:
	testl	$1, %eax 
	je	.L11130
	cmpl	$64, %esi
	jbe	.L11133
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L11130:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L11115
.L11133:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L11130
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L11130
.L11131:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20247
.L11125:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L11124
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L11124
.L11119:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L11122
.L11076:
	cmpq	$-1, %rax
	jne	.L11074
	cmpq	$0, 5472(%rsp)
	jns	.L11074
	jmp	.L11075
.L11007:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5472(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5464(%rsp)
	andq	%r10, %r9
.L20243:
	shrq	$63, %r9
	movl	%r9d, 1056(%rsp)
	jmp	.L10933
.L11010:
	testq	%r8, %r8
	jne	.L11011
	movq	%r9, %rax
	movq	$0, 5472(%rsp)
	negq	%rax
.L20238:
	movq	%rax, 5464(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5472(%rsp), %rdx
	addq	5464(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rdi
	movq	%rdx, 5472(%rsp)
	cmovb	%rdi, %r12
	xorq	%r12, %r9 
	movq	%r12, 5464(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20243
.L11011:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5472(%rsp)
	notq	%rax
	jmp	.L20238
.L11016:
	movq	%r11, %rbx
	movq	%r11, %rbp
	movq	%r10, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rbp
	movq	%r10, %rdx
	movq	%rbx, 12176(%rsp)
	movq	%rbp, 12184(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rcx
	movq	%r9, %rbx
	movq	%r9, %rbp
	andl	$4294967295, %esi
	andl	$4294967295, %edi
	shrq	$32, %rdx
	shrq	$32, %rcx
	andl	$4294967295, %ebx
	shrq	$32, %rbp
	movq	%rsi, 12144(%rsp)
	leaq	5464(%rsp), %r12
	movq	%rdi, 12192(%rsp)
	movq	%rdx, 12200(%rsp)
	movq	%rcx, 12152(%rsp)
	movq	%rbx, 12160(%rsp)
	movq	%rbp, 12168(%rsp)
	movq	$0, 12080(%rsp)
	movq	$0, 12088(%rsp)
	movq	$0, 12096(%rsp)
	movq	$0, 12104(%rsp)
	movq	$0, 12112(%rsp)
	movq	$0, 12120(%rsp)
	movq	$0, 12128(%rsp)
	movq	$0, 12136(%rsp)
	xorl	%esi, %esi
.L11028:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	12176(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L11027:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	12144(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	12080(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 12080(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L11027
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 12112(%rsp,%rdi,8)
	jle	.L11028
	movq	12088(%rsp), %rdx
	movq	12104(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	12080(%rsp), %rdx
	addq	12096(%rsp), %rsi
	movq	%rdx, 5472(%rsp)
	movq	%rsi, (%r12)
	movq	12136(%rsp), %rcx
	movq	12120(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	12128(%rsp), %rcx
	addq	12112(%rsp), %rax
	testq	%r10, %r10
	js	.L21590
.L11031:
	testq	%r9, %r9
	js	.L21591
.L11037:
	cmpq	$0, (%r12)
	js	.L21592
	orq	%rcx, %rax
.L21022:
	setne	%r10b
	movzbl	%r10b, %eax
.L20242:
	movl	%eax, 1056(%rsp)
	jmp	.L10933
.L21592:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21022
.L21591:
	testq	%r11, %r11
	jne	.L11038
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L11039:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L11037
.L11038:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L11039
.L21590:
	testq	%r8, %r8
	jne	.L11032
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L11033:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L11031
.L11032:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L11033
.L11052:
	testq	%r9, %r9
	jne	.L11053
	cmpq	$1, %r8
	je	.L20241
.L11053:
	cmpq	%r8, %r11
	je	.L21593
.L11054:
	leaq	5472(%rsp), %rcx
	leaq	5464(%rsp), %rbx
	leaq	5424(%rsp), %rbp
	leaq	5416(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
.L20239:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20242
.L21593:
	cmpq	%r9, %r10
	jne	.L11054
	testq	%r8, %r8
	jne	.L11055
	testq	%r9, %r9
	je	.L11054
.L11055:
	movq	$1, 5472(%rsp)
.L20240:
	movq	$0, 5464(%rsp)
	jmp	.L10933
.L20241:
	movq	%r11, 5472(%rsp)
	jmp	.L20244
.L11058:
	testq	%r9, %r9
	jne	.L11061
	testq	%r8, %r8
	jle	.L11061
	testb	$4, 18(%r14)
	jne	.L11061
	movq	1088(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L11061
	testq	%r10, %r10
	jne	.L11061
	testq	%r11, %r11
	js	.L11061
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5472(%rsp)
	jmp	.L20240
.L11061:
	leaq	5424(%rsp), %rbx
	leaq	5416(%rsp), %rbp
	leaq	5472(%rsp), %rdx
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	5464(%rsp), %rax
	jmp	.L20239
.L11049:
	testq	%r9, %r9
	jne	.L11053
	testq	%r8, %r8
	jle	.L11052
	testb	$4, 18(%r14)
	jne	.L11052
	movq	1088(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L11052
	testq	%r10, %r10
	jne	.L11052
	testq	%r11, %r11
	js	.L11052
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5472(%rsp)
	jmp	.L20240
.L11063:
	testl	%r15d, %r15d
	je	.L11064
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L11069
.L21190:
	cmpq	%r9, %r10
	je	.L21594
.L11068:
	xorl	%ecx, %ecx
	movq	%rax, 5472(%rsp)
	cmpl	$78, %r12d
	sete	%cl
	cmpq	%rcx, 5472(%rsp)
	je	.L20241
	movq	%r8, 5472(%rsp)
	movq	%r9, 5464(%rsp)
	jmp	.L10933
.L21594:
	cmpq	%r8, %r11
	jae	.L11068
.L11069:
	movl	$1, %eax
	jmp	.L11068
.L11064:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L11069
	jmp	.L21190
.L10939:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5472(%rsp), %rbx
	leaq	5464(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21595
	cmpq	$127, %r8
	jle	.L10955
	movq	$0, 5464(%rsp)
.L20229:
	movq	$0, 5472(%rsp)
.L10956:
	cmpl	$64, %esi
	jbe	.L10959
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20230:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L10954
	cmpl	$63, %esi
	jbe	.L10963
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20232:
	movq	%rax, (%r9)
.L10954:
	movl	$1, 1080(%rsp)
	jmp	.L10933
.L10963:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20231:
	movq	%rax, (%rbx)
	jmp	.L10954
.L10959:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20230
.L10955:
	cmpq	$63, %r8
	jle	.L10957
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5464(%rsp)
	jmp	.L20229
.L10957:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movq	%r8, %rcx
	shrq	$1, %rcx
	orq	%rcx, %r10
	movl	%edx, %ecx
	salq	%cl, %r11
	movq	%r10, 5464(%rsp)
	movq	%r11, 5472(%rsp)
	jmp	.L10956
.L21595:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L10941
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L10942:
	cmpq	$127, %rdx
	jle	.L10943
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L10944:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L10947
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L10954
.L10947:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L10954
	cmpq	$63, %rax
	jle	.L10951
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20232
.L10951:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20231
.L10943:
	cmpq	$63, %rdx
	jle	.L10945
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L10944
.L10945:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L10944
.L10941:
	xorl	%edi, %edi
	jmp	.L10942
.L10938:
	negq	%r8
	jmp	.L10939
.L10966:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5456(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5448(%rsp), %rbx
	testq	%r8, %r8
	js	.L21596
	cmpq	$127, %r8
	jle	.L10983
	movq	$0, 5448(%rsp)
.L20234:
	movq	$0, 5456(%rsp)
.L10984:
	cmpl	$64, %edi
	jbe	.L10987
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20235:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L10982
	cmpl	$63, %edi
	jbe	.L10991
.L20237:
	leal	-64(%rdi), %ecx
	movq	$-1, %rdi
	salq	%cl, %rdi
	salq	%cl, %rdx
	notq	%rdi
	andq	(%rbx), %rdi
	orq	%rdx, %rdi
	movq	%rdi, (%rbx)
.L10982:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5432(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5440(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L10995
	movq	$0, 5432(%rsp)
	movq	$0, 5440(%rsp)
.L10996:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L10999
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L11005:
	movq	5440(%rsp), %rcx
	movq	5432(%rsp), %r9
	orq	5456(%rsp), %rcx
	orq	5448(%rsp), %r9
	movq	%rcx, 5472(%rsp)
	movq	%r9, 5464(%rsp)
	jmp	.L10933
.L10999:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L11005
	cmpq	$63, %rax
	jle	.L11003
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L11005
.L11003:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L11005
.L10995:
	cmpq	$63, %rsi
	jle	.L10997
	leal	-64(%rsi), %ecx
	movq	$0, 5432(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5440(%rsp)
	jmp	.L10996
.L10997:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5432(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rbp
	orq	%rbp, %r11
	movq	%r11, 5440(%rsp)
	jmp	.L10996
.L10991:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20236:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L10982
.L10987:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20235
.L10983:
	cmpq	$63, %r8
	jle	.L10985
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 5448(%rsp)
	jmp	.L20234
.L10985:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5448(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5456(%rsp)
	jmp	.L10984
.L21596:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L10971
	movq	$0, 5448(%rsp)
	movq	$0, 5456(%rsp)
.L10972:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L10975
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L10982
.L10975:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L10982
	cmpq	$63, %rax
	jle	.L10979
	subl	%esi, %edi
	jmp	.L20237
.L10979:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20236
.L10971:
	cmpq	$63, %rsi
	jle	.L10973
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5448(%rsp)
	shrq	%cl, %rax
.L20233:
	movq	%rax, 5456(%rsp)
	jmp	.L10972
.L10973:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5448(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20233
.L10965:
	negq	%r8
	jmp	.L10966
.L10935:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5472(%rsp)
	jmp	.L20244
.L10936:
	andq	%r8, %r11
	movq	%r11, 5472(%rsp)
.L20245:
	andq	%r9, %r10
	jmp	.L20244
.L10937:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5472(%rsp)
	jmp	.L20245
.L21585:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1084(%rsp), %eax
	movl	%eax, 1084(%rsp)
	jmp	.L10932
.L21556:
	movq	new_const.1(%rip), %rdi
	movq	%rdi, 1088(%rsp)
	movq	%rdi, (%rax)
	movl	$25, %edi
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10918
.L21555:
	movzbl	16(%rbx), %eax
	movq	%rbp, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10900
	cmpb	$15, %al
	je	.L10900
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L10903:
	cmpl	$128, %esi
	je	.L10905
	cmpl	$64, %esi
	jbe	.L10906
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L10905:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10909
	cmpb	$6, 16(%rax)
	jne	.L10896
	testb	$2, 62(%rax)
	je	.L10896
.L10909:
	cmpl	$128, %esi
	je	.L10911
	cmpl	$64, %esi
	jbe	.L10912
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20228:
	testl	$1, %eax 
	je	.L10911
	cmpl	$64, %esi
	jbe	.L10914
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	orq	%rbp, 40(%rdx)
.L10911:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%rbx
	orq	%r8, %rbx
	orq	%r9, %rbx
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L10896
.L10914:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10911
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10911
.L10912:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20228
.L10906:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10905
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L10905
.L10900:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10903
.L21554:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10892
.L21553:
	movzbl	16(%rax), %edx
	cmpb	$13, %dl
	je	.L10875
	cmpb	$15, %dl
	je	.L10875
	movzwl	60(%rax), %edx
	andl	$511, %edx
.L10878:
	cmpl	$128, %edx
	je	.L10880
	cmpl	$64, %edx
	jbe	.L10881
	leal	-64(%rdx), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rsi)
.L10880:
	movq	8(%rsi), %rax
	testb	$32, 17(%rax)
	je	.L10884
	cmpb	$6, 16(%rax)
	jne	.L10871
	testb	$2, 62(%rax)
	je	.L10871
.L10884:
	cmpl	$128, %edx
	je	.L10871
	cmpl	$64, %edx
	jbe	.L10887
	movq	40(%rsi), %rax
	leal	-65(%rdx), %ecx
	sarq	%cl, %rax
.L20227:
	testl	$1, %eax 
	je	.L10871
	cmpl	$64, %edx
	jbe	.L10889
	leal	-64(%rdx), %ecx
	movq	$-1, %rdx
	salq	%cl, %rdx
	orq	%rdx, 40(%rsi)
	jmp	.L10871
.L10889:
	movq	$-1, %rax
	cmpl	$63, %edx
	movq	%rax, 40(%rsi)
	ja	.L10871
	movl	%edx, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rsi)
	jmp	.L10871
.L10887:
	movq	32(%rsi), %rax
	leal	-1(%rdx), %ecx
	shrq	%cl, %rax
	jmp	.L20227
.L10881:
	cmpl	$63, %edx
	movq	$0, 40(%rsi)
	ja	.L10880
	movq	$-1, %r10
	movl	%edx, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rsi)
	jmp	.L10880
.L10875:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edx
	movl	$32, %eax
	cmove	%eax, %edx
	jmp	.L10878
.L21552:
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10865
.L21551:
	movzbl	16(%rbx), %eax
	movq	%rbp, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10847
	cmpb	$15, %al
	je	.L10847
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L10850:
	cmpl	$128, %esi
	je	.L10852
	cmpl	$64, %esi
	jbe	.L10853
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L10852:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10856
	cmpb	$6, 16(%rax)
	jne	.L10843
	testb	$2, 62(%rax)
	je	.L10843
.L10856:
	cmpl	$128, %esi
	je	.L10858
	cmpl	$64, %esi
	jbe	.L10859
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20226:
	testl	$1, %eax 
	je	.L10858
	cmpl	$64, %esi
	jbe	.L10861
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L10858:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L10843
.L10861:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10858
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10858
.L10859:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20226
.L10853:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10852
	movq	$-1, %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 32(%rdx)
	jmp	.L10852
.L10847:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10850
.L21550:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10839
.L21549:
	movq	new_const.1(%rip), %r12
	movl	$25, %edi
	movq	%r12, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10836
.L21548:
	movzbl	16(%rbp), %eax
	movq	%rbx, %rsi
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10818
	cmpb	$15, %al
	je	.L10818
	movzwl	60(%rbp), %edi
	andl	$511, %edi
.L10821:
	cmpl	$128, %edi
	je	.L10823
	cmpl	$64, %edi
	jbe	.L10824
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 40(%rdx)
.L10823:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10827
	cmpb	$6, 16(%rax)
	jne	.L10814
	testb	$2, 62(%rax)
	je	.L10814
.L10827:
	cmpl	$128, %edi
	je	.L10829
	cmpl	$64, %edi
	jbe	.L10830
	movq	40(%rdx), %rax
	leal	-65(%rdi), %ecx
	sarq	%cl, %rax
.L20225:
	testl	$1, %eax 
	je	.L10829
	cmpl	$64, %edi
	jbe	.L10832
	leal	-64(%rdi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	orq	%r12, 40(%rdx)
.L10829:
	xorq	32(%rdx), %rsi
	xorq	40(%rdx), %r9
	movslq	%r10d,%rdi
	orq	%rsi, %rdi
	orq	%r9, %rdi
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L10814
.L10832:
	movq	$-1, %rax
	cmpl	$63, %edi
	movq	%rax, 40(%rdx)
	ja	.L10829
	movl	%edi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10829
.L10830:
	movq	32(%rdx), %rax
	leal	-1(%rdi), %ecx
	shrq	%cl, %rax
	jmp	.L20225
.L10824:
	cmpl	$63, %edi
	movq	$0, 40(%rdx)
	ja	.L10823
	movq	$-1, %rbx
	movl	%edi, %ecx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 32(%rdx)
	jmp	.L10823
.L10818:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edi
	movl	$32, %eax
	cmove	%eax, %edi
	jmp	.L10821
.L21547:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10810
.L21546:
	movq	7688(%rsp), %rcx
	movq	3592(%rsp), %rsi
	movl	$88, %edi
	movq	1096(%rsp), %rdx
	xorl	%eax, %eax
	call	build
	movq	%rax, 1096(%rsp)
	jmp	.L10204
.L21545:
	movq	8(%rbp), %rsi
	movq	%rsi, 2904(%rsp)
	movl	$83, %esi
	movq	40(%rbp), %r15
	cmpl	$60, %esi
	movq	32(%rbp), %r13
	movq	32(%r14), %rbp
	movq	40(%r14), %r14
	je	.L10795
	cmpl	$60, %esi
	ja	.L10806
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21021:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2904(%rsp), %rdi
.L20223:
	movq	%rax, %rdx
	call	build_complex
.L20224:
	movq	%rax, %rbx
	jmp	.L10763
.L10806:
	movl	$83, %edi
	cmpl	$61, %edi
	je	.L10796
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2896(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L10800
	cmpb	$10, %al
	je	.L10800
	cmpb	$11, %al
	je	.L10800
	cmpb	$12, %al
	movl	$70, %edi
	je	.L10800
.L10799:
	movq	2896(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L10803
	cmpb	$10, %al
	je	.L10803
	cmpb	$11, %al
	je	.L10803
	cmpb	$12, %al
	movl	$70, %edi
	je	.L10803
.L10802:
	movq	2896(%rsp), %rdx
.L20222:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2904(%rsp), %rdi
	jmp	.L20223
.L10803:
	movl	$62, %edi
	jmp	.L10802
.L10800:
	movl	$62, %edi
	jmp	.L10799
.L10796:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20222
.L10795:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21021
.L21544:
	movq	32(%rbp), %r15
	xorl	%r12d, %r12d
	movq	%rbp, %rbx
	movq	%r15, 18528(%rsp)
	movq	40(%rbp), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%rbp), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %r9
	movq	%r9, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%rdi, 16(%rsp)
	movq	%r15, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L10763
	movq	18560(%rsp), %rbx
	movq	18568(%rsp), %r11
	movq	18576(%rsp), %r10
	movq	%rbx, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r14, %rbx
	movq	%r10, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L10763
	movq	18528(%rsp), %rsi
	movq	18560(%rsp), %rdi
	movq	8(%rbp), %r9
	movq	18536(%rsp), %r15
	movl	$83, 12208(%rsp)
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r13
	movq	18576(%rsp), %r8
	movq	%rsi, 12224(%rsp)
	movq	%rdi, 12248(%rsp)
	leaq	12208(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r9, 12216(%rsp)
	movq	%r15, 12232(%rsp)
	movq	%rdx, 12240(%rsp)
	movq	%r13, 12256(%rsp)
	movq	%r8, 12264(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L10768
	movq	12272(%rsp), %rbx
.L10769:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L10771
	cmpb	$25, %al
	je	.L21599
.L10771:
	movzbl	18(%rbp), %edi
	movzbl	18(%r14), %edx
	shrb	$3, %dil
	shrb	$3, %dl
	andl	$1, %edi
	andl	$1, %edx
	orb	%r12b, %dil
	movzbl	18(%rbx), %r12d
	orb	%dl, %dil
	salb	$3, %dil
	andb	$-9, %r12b
	orb	%dil, %r12b
	movb	%r12b, 18(%rbx)
	movl	%r12d, %eax
	movzbl	18(%rbp), %r8d
	movzbl	18(%r14), %ebp
	shrb	$3, %al
	andb	$-5, %r12b
	shrb	$2, %r8b
	orl	%eax, %r8d
	shrb	$2, %bpl
	orl	%ebp, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %r12b
	movb	%r12b, 18(%rbx)
	jmp	.L10763
.L21599:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L10775
	cmpb	$15, %al
	je	.L10775
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L10778:
	cmpl	$128, %esi
	je	.L10780
	cmpl	$64, %esi
	jbe	.L10781
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 40(%rdx)
.L10780:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10784
	cmpb	$6, 16(%rax)
	jne	.L10771
	testb	$2, 62(%rax)
	je	.L10771
.L10784:
	cmpl	$128, %esi
	je	.L10786
	cmpl	$64, %esi
	jbe	.L10787
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20221:
	testl	$1, %eax 
	je	.L10786
	cmpl	$64, %esi
	jbe	.L10789
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L10786:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%r12d,%r15
	orq	%rdi, %r15
	orq	%r8, %r15
	setne	%cl
	movzbl	%cl, %r12d
	jmp	.L10771
.L10789:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10786
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10786
.L10787:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20221
.L10781:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10780
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L10780
.L10775:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10778
.L10768:
	movq	%rbp, %rdi
	movl	$1, %r12d
	call	copy_node
	movq	%rax, %rbx
	jmp	.L10769
.L21543:
	movq	8(%rbp), %r13
	movl	$1, %r15d
	movl	$0, 1132(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21600
.L10557:
	movl	$83, %eax
	movl	$0, 1104(%rsp)
	movl	$0, 1128(%rsp)
	subl	$59, %eax
	movq	32(%rbp), %r11
	movq	40(%rbp), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L10698(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L10698:
	.quad	.L10632
	.quad	.L10635
	.quad	.L10641
	.quad	.L10674
	.quad	.L10674
	.quad	.L10674
	.quad	.L10677
	.quad	.L10683
	.quad	.L10683
	.quad	.L10683
	.quad	.L10686
	.quad	.L18929
	.quad	.L10674
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L10688
	.quad	.L10688
	.quad	.L18929
	.quad	.L18929
	.quad	.L10564
	.quad	.L10563
	.quad	.L10591
	.quad	.L10590
	.quad	.L10559
	.quad	.L10560
	.quad	.L10561
	.quad	.L10562
	.text
.L10559:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5536(%rsp)
.L20216:
	movq	%r10, 5528(%rsp)
.L10558:
	movl	1132(%rsp), %eax
	testl	%eax, %eax
	je	.L10699
	movq	5528(%rsp), %rax
	testq	%rax, %rax
	jne	.L10701
	cmpq	$0, 5536(%rsp)
	js	.L10701
.L10700:
	movl	1104(%rsp), %eax
	testl	%eax, %eax
	jne	.L10699
	testb	$8, 18(%rbp)
	jne	.L10699
	testb	$8, 18(%r14)
	jne	.L10699
	cmpq	$0, size_htab.0(%rip)
	movq	5536(%rsp), %rbx
	je	.L21601
.L10702:
	movq	new_const.1(%rip), %rbp
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%rbp), %eax
	decq	%rcx
	movq	%rbx, 32(%rbp)
	movq	%rcx, 40(%rbp)
	movq	%r13, 8(%rbp)
	movq	%rbp, %rdi
	movq	%rbp, %r11
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L10706
	cmpb	$25, %al
	je	.L21602
.L10706:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %ecx
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %sil
	orb	%cl, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20224
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10763
.L21602:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10710
	cmpb	$15, %al
	je	.L10710
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L10713:
	cmpl	$128, %esi
	je	.L10715
	cmpl	$64, %esi
	jbe	.L10716
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L10715:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10719
	cmpb	$6, 16(%rax)
	jne	.L10706
	testb	$2, 62(%rax)
	je	.L10706
.L10719:
	cmpl	$128, %esi
	je	.L10721
	cmpl	$64, %esi
	jbe	.L10722
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20218:
	testl	$1, %eax 
	je	.L10721
	cmpl	$64, %esi
	jbe	.L10724
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L10721:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r12
	orq	%r8, %r12
	orq	%r9, %r12
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L10706
.L10724:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10721
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10721
.L10722:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20218
.L10716:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10715
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L10715
.L10710:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10713
.L21601:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10702
.L10699:
	movq	5536(%rsp), %rdi
	movq	5528(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%rbp), %r13
	movq	%rax, %rdi
	movq	%r13, 8(%rax)
	movzbl	18(%r14), %edx
	movzbl	18(%rbp), %ebx
	shrb	$3, %dl
	shrb	$3, %bl
	andl	%ebx, %r11d
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L10732
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L10735
	movl	1132(%rsp), %eax
	testl	%eax, %eax
	je	.L10734
.L10735:
	movl	1104(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L10734:
	movl	%edx, %eax
.L20220:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1132(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L10761
	testb	$8, %dl
	jne	.L10761
	movq	5528(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L21603
.L10762:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L10761:
	movzbl	18(%rdi), %r8d
	movzbl	18(%rbp), %r13d
	movq	%rdi, %rbx
	movzbl	18(%r14), %ebp
	movl	%r8d, %eax
	shrb	$2, %r13b
	andb	$-5, %r8b
	shrb	$3, %al
	shrb	$2, %bpl
	orl	%eax, %r13d
	orl	%ebp, %r13d
	andb	$1, %r13b
	salb	$2, %r13b
	orb	%r13b, %r8b
	movb	%r8b, 18(%rdi)
	jmp	.L10763
.L21603:
	movq	5536(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L10762
	jmp	.L10761
.L10732:
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L10738
	movl	1132(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L10737
.L10738:
	movl	1104(%rsp), %r8d
	movl	$1, %r10d
	movl	$0, %eax
	testl	%r8d, %r8d
	cmove	%eax, %r10d
.L10737:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L10740
	cmpb	$25, %al
	je	.L21604
.L10740:
	testl	%r10d, %r10d
	je	.L10736
	movl	1128(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %r12d
.L10736:
	movl	%r12d, %eax
	jmp	.L20220
.L21604:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L10744
	cmpb	$15, %al
	je	.L10744
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L10747:
	cmpl	$128, %esi
	je	.L10749
	cmpl	$64, %esi
	jbe	.L10750
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L10749:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10753
	cmpb	$6, 16(%rax)
	jne	.L10740
	testb	$2, 62(%rax)
	je	.L10740
.L10753:
	cmpl	$128, %esi
	je	.L10755
	cmpl	$64, %esi
	jbe	.L10756
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20219:
	testl	$1, %eax 
	je	.L10755
	cmpl	$64, %esi
	jbe	.L10758
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L10755:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L10740
.L10758:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10755
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10755
.L10756:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20219
.L10750:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10749
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L10749
.L10744:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10747
.L10701:
	cmpq	$-1, %rax
	jne	.L10699
	cmpq	$0, 5536(%rsp)
	jns	.L10699
	jmp	.L10700
.L10632:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5536(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5528(%rsp)
	andq	%r10, %r9
.L20215:
	shrq	$63, %r9
	movl	%r9d, 1104(%rsp)
	jmp	.L10558
.L10635:
	testq	%r8, %r8
	jne	.L10636
	movq	%r9, %rax
	movq	$0, 5536(%rsp)
	negq	%rax
.L20210:
	movq	%rax, 5528(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5536(%rsp), %rdx
	addq	5528(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbx
	movq	%rdx, 5536(%rsp)
	cmovb	%rbx, %r12
	xorq	%r12, %r9 
	movq	%r12, 5528(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20215
.L10636:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5536(%rsp)
	notq	%rax
	jmp	.L20210
.L10641:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 12384(%rsp)
	movq	%rcx, 12392(%rsp)
	movq	%r8, %r12
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %r12d
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 12360(%rsp)
	movq	%rbx, 12400(%rsp)
	movq	%rdx, 12408(%rsp)
	movq	%r12, 12352(%rsp)
	movq	%rdi, 12368(%rsp)
	movq	%rcx, 12376(%rsp)
	movq	$0, 12288(%rsp)
	movq	$0, 12296(%rsp)
	movq	$0, 12304(%rsp)
	movq	$0, 12312(%rsp)
	movq	$0, 12320(%rsp)
	movq	$0, 12328(%rsp)
	movq	$0, 12336(%rsp)
	movq	$0, 12344(%rsp)
	xorl	%esi, %esi
.L10653:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	12384(%rsp,%rbx,8), %r12
	xorl	%ebx, %ebx
.L10652:
	movq	%r12, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	12352(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	12288(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 12288(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L10652
	movslq	%esi,%r12
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 12320(%rsp,%r12,8)
	jle	.L10653
	movq	12296(%rsp), %rdx
	movq	12312(%rsp), %rsi
	movq	12328(%rsp), %rax
	movq	12344(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	12288(%rsp), %rdx
	addq	12304(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	12320(%rsp), %rax
	addq	12336(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 5536(%rsp)
	movq	%rsi, 5528(%rsp)
	js	.L21605
.L10656:
	testq	%r9, %r9
	js	.L21606
.L10662:
	cmpq	$0, 5528(%rsp)
	js	.L21607
	orq	%rcx, %rax
.L21020:
	setne	%r10b
	movzbl	%r10b, %eax
.L20214:
	movl	%eax, 1104(%rsp)
	jmp	.L10558
.L21607:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21020
.L21606:
	testq	%r11, %r11
	jne	.L10663
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L10664:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L10662
.L10663:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L10664
.L21605:
	testq	%r8, %r8
	jne	.L10657
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L10658:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L10656
.L10657:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L10658
.L10677:
	testq	%r9, %r9
	jne	.L10678
	cmpq	$1, %r8
	je	.L20213
.L10678:
	cmpq	%r8, %r11
	je	.L21608
.L10679:
	leaq	5536(%rsp), %rbx
	leaq	5528(%rsp), %rdi
	leaq	5488(%rsp), %rcx
	leaq	5480(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20211:
	movl	$83, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20214
.L21608:
	cmpq	%r9, %r10
	jne	.L10679
	testq	%r8, %r8
	jne	.L10680
	testq	%r9, %r9
	je	.L10679
.L10680:
	movq	$1, 5536(%rsp)
.L20212:
	movq	$0, 5528(%rsp)
	jmp	.L10558
.L20213:
	movq	%r11, 5536(%rsp)
	jmp	.L20216
.L10683:
	testq	%r9, %r9
	jne	.L10686
	testq	%r8, %r8
	jle	.L10686
	testb	$4, 18(%rbp)
	jne	.L10686
	testb	$4, 18(%r14)
	jne	.L10686
	testq	%r10, %r10
	jne	.L10686
	testq	%r11, %r11
	js	.L10686
	movl	$83, %edx
	leaq	-1(%r8,%r11), %r12
	cmpl	$67, %edx
	cmove	%r12, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5536(%rsp)
	jmp	.L20212
.L10686:
	leaq	5488(%rsp), %rdi
	leaq	5480(%rsp), %rcx
	leaq	5536(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5528(%rsp), %rax
	jmp	.L20211
.L10674:
	testq	%r9, %r9
	jne	.L10678
	testq	%r8, %r8
	jle	.L10677
	testb	$4, 18(%rbp)
	jne	.L10677
	testb	$4, 18(%r14)
	jne	.L10677
	testq	%r10, %r10
	jne	.L10677
	testq	%r11, %r11
	js	.L10677
	movl	$83, %eax
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %eax
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5536(%rsp)
	jmp	.L20212
.L10688:
	testl	%r15d, %r15d
	je	.L10689
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L10694
.L21189:
	cmpq	%r9, %r10
	je	.L21609
.L10693:
	movq	%rax, 5536(%rsp)
	xorl	%ebx, %ebx
	movl	$83, %eax
	cmpl	$78, %eax
	sete	%bl
	cmpq	%rbx, 5536(%rsp)
	je	.L20213
	movq	%r8, 5536(%rsp)
	movq	%r9, 5528(%rsp)
	jmp	.L10558
.L21609:
	cmpq	%r8, %r11
	jae	.L10693
.L10694:
	movl	$1, %eax
	jmp	.L10693
.L10689:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L10694
	jmp	.L21189
.L10564:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5536(%rsp), %rbx
	leaq	5528(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21610
	cmpq	$127, %r8
	jle	.L10580
	movq	$0, 5528(%rsp)
.L20202:
	movq	$0, 5536(%rsp)
.L10581:
	cmpl	$64, %esi
	jbe	.L10584
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20203:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L10579
	cmpl	$63, %esi
	jbe	.L10588
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20205:
	movq	%rax, (%r9)
.L10579:
	movl	$1, 1128(%rsp)
	jmp	.L10558
.L10588:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20204:
	movq	%rax, (%rbx)
	jmp	.L10579
.L10584:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20203
.L10580:
	cmpq	$63, %r8
	jle	.L10582
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5528(%rsp)
	jmp	.L20202
.L10582:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5536(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5528(%rsp)
	jmp	.L10581
.L21610:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L10566
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L10567:
	cmpq	$127, %rdx
	jle	.L10568
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L10569:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L10572
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L10579
.L10572:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L10579
	cmpq	$63, %rax
	jle	.L10576
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20205
.L10576:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20204
.L10568:
	cmpq	$63, %rdx
	jle	.L10570
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L10569
.L10570:
	movl	%edx, %ecx
	movq	%r10, %r12
	shrq	%cl, %r12
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r12, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L10569
.L10566:
	xorl	%edi, %edi
	jmp	.L10567
.L10563:
	negq	%r8
	jmp	.L10564
.L10591:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5520(%rsp), %r12
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5512(%rsp), %rbx
	testq	%r8, %r8
	js	.L21611
	cmpq	$127, %r8
	jle	.L10608
	movq	$0, 5512(%rsp)
.L20206:
	movq	$0, 5520(%rsp)
.L10609:
	cmpl	$64, %edi
	jbe	.L10612
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20207:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L10607
	cmpl	$63, %edi
	jbe	.L10616
.L20209:
	leal	-64(%rdi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	salq	%cl, %rdx
	notq	%r12
	andq	(%rbx), %r12
	orq	%rdx, %r12
	movq	%r12, (%rbx)
.L10607:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5496(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5504(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L10620
	movq	$0, 5496(%rsp)
	movq	$0, 5504(%rsp)
.L10621:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L10624
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L10630:
	movq	5504(%rsp), %rdi
	movq	5496(%rsp), %r11
	orq	5520(%rsp), %rdi
	orq	5512(%rsp), %r11
	movq	%rdi, 5536(%rsp)
	movq	%r11, 5528(%rsp)
	jmp	.L10558
.L10624:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L10630
	cmpq	$63, %rax
	jle	.L10628
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L10630
.L10628:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L10630
.L10620:
	cmpq	$63, %rsi
	jle	.L10622
	leal	-64(%rsi), %ecx
	movq	$0, 5496(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5504(%rsp)
	jmp	.L10621
.L10622:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5496(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5504(%rsp)
	jmp	.L10621
.L10616:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20208:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r12), %rax
	orq	%rdx, %rax
	movq	%rax, (%r12)
	jmp	.L10607
.L10612:
	movq	(%r12), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20207
.L10608:
	cmpq	$63, %r8
	jle	.L10610
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 5512(%rsp)
	jmp	.L20206
.L10610:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 5512(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5520(%rsp)
	jmp	.L10609
.L21611:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L10596
	movq	$0, 5512(%rsp)
	movq	$0, 5520(%rsp)
.L10597:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L10600
	movq	%rdx, (%rbx)
	movq	%rdx, (%r12)
	jmp	.L10607
.L10600:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L10607
	cmpq	$63, %rax
	jle	.L10604
	subl	%esi, %edi
	jmp	.L20209
.L10604:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20208
.L10596:
	cmpq	$63, %rsi
	jle	.L10598
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5512(%rsp)
	shrq	%cl, %rax
	movq	%rax, 5520(%rsp)
	jmp	.L10597
.L10598:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 5512(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 5520(%rsp)
	jmp	.L10597
.L10590:
	negq	%r8
	jmp	.L10591
.L10560:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5536(%rsp)
	jmp	.L20216
.L10561:
	andq	%r8, %r11
	movq	%r11, 5536(%rsp)
.L20217:
	andq	%r9, %r10
	jmp	.L20216
.L10562:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5536(%rsp)
	jmp	.L20217
.L21600:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1132(%rsp), %eax
	movl	%eax, 1132(%rsp)
	jmp	.L10557
.L21542:
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10543
.L21541:
	movzbl	16(%rbx), %eax
	movq	%r12, %rdi
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10525
	cmpb	$15, %al
	je	.L10525
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L10528:
	cmpl	$128, %esi
	je	.L10530
	cmpl	$64, %esi
	jbe	.L10531
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L10530:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10534
	cmpb	$6, 16(%rax)
	jne	.L10521
	testb	$2, 62(%rax)
	je	.L10521
.L10534:
	cmpl	$128, %esi
	je	.L10536
	cmpl	$64, %esi
	jbe	.L10537
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20201:
	testl	$1, %eax 
	je	.L10536
	cmpl	$64, %esi
	jbe	.L10539
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	orq	%r14, 40(%rdx)
.L10536:
	xorq	32(%rdx), %rdi
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%rdi, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L10521
.L10539:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10536
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10536
.L10537:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20201
.L10531:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10530
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L10530
.L10525:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10528
.L21540:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10517
.L21539:
	movq	8(%r14), %rbp
	movq	1160(%rsp), %rdi
	cmpl	$60, %r12d
	movq	%rbp, 2920(%rsp)
	movq	32(%rdi), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rdi), %r14
	je	.L10505
	cmpl	$60, %r12d
	ja	.L10516
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21019:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2920(%rsp), %rdi
.L20199:
	movq	%rax, %rdx
	call	build_complex
.L20200:
	movq	%rax, %rbp
	jmp	.L10473
.L10516:
	cmpl	$61, %r12d
	je	.L10506
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2912(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r10
	movq	%rax, %rsi
	movzbl	16(%r10), %eax
	cmpb	$6, %al
	je	.L10510
	cmpb	$10, %al
	je	.L10510
	cmpb	$11, %al
	je	.L10510
	cmpb	$12, %al
	movl	$70, %edi
	je	.L10510
.L10509:
	movq	2912(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L10513
	cmpb	$10, %al
	je	.L10513
	cmpb	$11, %al
	je	.L10513
	cmpb	$12, %al
	movl	$70, %edi
	je	.L10513
.L10512:
	movq	2912(%rsp), %rdx
.L20198:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2920(%rsp), %rdi
	jmp	.L20199
.L10513:
	movl	$62, %edi
	jmp	.L10512
.L10510:
	movl	$62, %edi
	jmp	.L10509
.L10506:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20198
.L10505:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21019
.L21538:
	movq	32(%r14), %r15
	movq	1160(%rsp), %rdx
	xorl	%ebx, %ebx
	movq	%r14, %rbp
	movq	%r15, 18528(%rsp)
	movq	40(%r14), %r13
	movq	%r13, 18536(%rsp)
	movq	48(%r14), %r9
	movq	%r9, 18544(%rsp)
	movq	32(%rdx), %rsi
	movq	%rsi, 18560(%rsp)
	movq	40(%rdx), %rdi
	movq	%rdi, 18568(%rsp)
	movq	48(%rdx), %rcx
	movq	%r9, 16(%rsp)
	movq	%r15, (%rsp)
	movq	%r13, 8(%rsp)
	movq	%rcx, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L10473
	movq	18560(%rsp), %r11
	movq	18568(%rsp), %r8
	movq	18576(%rsp), %r10
	movq	%r11, (%rsp)
	movq	%r8, 8(%rsp)
	movq	%r10, 16(%rsp)
	call	target_isnan
	movq	1160(%rsp), %rbp
	testl	%eax, %eax
	jne	.L10473
	movq	8(%r14), %rdi
	movq	18528(%rsp), %rdx
	leaq	12416(%rsp), %rsi
	movq	18536(%rsp), %rcx
	movq	18544(%rsp), %r15
	movl	%r12d, 12416(%rsp)
	movq	18560(%rsp), %r13
	movq	18568(%rsp), %r9
	movq	18576(%rsp), %rbp
	movq	%rdi, 12424(%rsp)
	movq	%rdx, 12432(%rsp)
	movl	$const_binop_1, %edi
	movq	%rcx, 12440(%rsp)
	movq	%r15, 12448(%rsp)
	movq	%r13, 12456(%rsp)
	movq	%r9, 12464(%rsp)
	movq	%rbp, 12472(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L10478
	movq	12480(%rsp), %rbp
.L10479:
	movzbl	16(%rbp), %eax
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L10481
	cmpb	$25, %al
	je	.L21614
.L10481:
	movq	1160(%rsp), %r13
	movzbl	18(%r14), %ecx
	movzbl	18(%r13), %edx
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%bl, %cl
	movzbl	18(%rbp), %ebx
	shrb	$3, %dl
	andl	$1, %edx
	orb	%dl, %cl
	salb	$3, %cl
	andb	$-9, %bl
	orb	%cl, %bl
	movb	%bl, 18(%rbp)
	movl	%ebx, %r15d
	movzbl	18(%r13), %eax
	movzbl	18(%r14), %r9d
	shrb	$3, %r15b
	andb	$-5, %bl
	shrb	$2, %al
	shrb	$2, %r9b
	orl	%r15d, %r9d
	orl	%eax, %r9d
	andb	$1, %r9b
	salb	$2, %r9b
	orb	%r9b, %bl
	movb	%bl, 18(%rbp)
	jmp	.L10473
.L21614:
	movq	8(%rbp), %rcx
	movq	32(%rbp), %rdi
	movq	40(%rbp), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L10485
	cmpb	$15, %al
	je	.L10485
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L10488:
	cmpl	$128, %esi
	je	.L10490
	cmpl	$64, %esi
	jbe	.L10491
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L10490:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10494
	cmpb	$6, 16(%rax)
	jne	.L10481
	testb	$2, 62(%rax)
	je	.L10481
.L10494:
	cmpl	$128, %esi
	je	.L10496
	cmpl	$64, %esi
	jbe	.L10497
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20197:
	testl	$1, %eax 
	je	.L10496
	cmpl	$64, %esi
	jbe	.L10499
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L10496:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%r11
	orq	%rdi, %r11
	orq	%r8, %r11
	setne	%r8b
	movzbl	%r8b, %ebx
	jmp	.L10481
.L10499:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10496
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10496
.L10497:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20197
.L10491:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10490
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L10490
.L10485:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10488
.L10478:
	movq	%r14, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %rbp
	jmp	.L10479
.L21537:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 1156(%rsp)
	movzbl	17(%r13), %ecx
	shrb	$5, %cl
	andl	%ecx, %r15d
	cmpb	$6, 16(%r13)
	je	.L21615
.L10267:
	movq	1160(%rsp), %rax
	movl	$0, 1136(%rsp)
	movl	$0, 1152(%rsp)
	movq	32(%r14), %r11
	movq	40(%r14), %r10
	movq	32(%rax), %r8
	movq	40(%rax), %r9
	leal	-59(%r12), %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %esi
	jmp	*.L10408(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L10408:
	.quad	.L10342
	.quad	.L10345
	.quad	.L10351
	.quad	.L10384
	.quad	.L10384
	.quad	.L10384
	.quad	.L10387
	.quad	.L10393
	.quad	.L10393
	.quad	.L10393
	.quad	.L10396
	.quad	.L18929
	.quad	.L10384
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L10398
	.quad	.L10398
	.quad	.L18929
	.quad	.L18929
	.quad	.L10274
	.quad	.L10273
	.quad	.L10301
	.quad	.L10300
	.quad	.L10269
	.quad	.L10270
	.quad	.L10271
	.quad	.L10272
	.text
.L10269:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5600(%rsp)
.L20192:
	movq	%r10, 5592(%rsp)
.L10268:
	movl	1156(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L10409
	movq	5592(%rsp), %rax
	testq	%rax, %rax
	jne	.L10411
	cmpq	$0, 5600(%rsp)
	js	.L10411
.L10410:
	movl	1136(%rsp), %r12d
	testl	%r12d, %r12d
	jne	.L10409
	testb	$8, 18(%r14)
	jne	.L10409
	movq	1160(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L10409
	cmpq	$0, size_htab.0(%rip)
	movq	5600(%rsp), %rbx
	je	.L21616
.L10412:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L10416
	cmpb	$25, %al
	je	.L21617
.L10416:
	movzbl	18(%r11), %ebp
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %bpl
	orb	%bl, %bpl
	movb	%bpl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20200
	movq	new_const.1(%rip), %rbp
	movl	$25, %edi
	movq	%rbp, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10473
.L21617:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10420
	cmpb	$15, %al
	je	.L10420
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L10423:
	cmpl	$128, %esi
	je	.L10425
	cmpl	$64, %esi
	jbe	.L10426
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L10425:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10429
	cmpb	$6, 16(%rax)
	jne	.L10416
	testb	$2, 62(%rax)
	je	.L10416
.L10429:
	cmpl	$128, %esi
	je	.L10431
	cmpl	$64, %esi
	jbe	.L10432
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20194:
	testl	$1, %eax 
	je	.L10431
	cmpl	$64, %esi
	jbe	.L10434
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L10431:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L10416
.L10434:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10431
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10431
.L10432:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20194
.L10426:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10425
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L10425
.L10420:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10423
.L21616:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10412
.L10409:
	movq	5600(%rsp), %rdi
	movq	5592(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	1160(%rsp), %r12
	movl	$1, %r11d
	movzbl	18(%r14), %r13d
	movzbl	18(%r12), %r8d
	shrb	$3, %r13b
	andl	%r13d, %r11d
	shrb	$3, %r8b
	movl	%r8d, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L10442
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L10445
	movl	1156(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L10444
.L10445:
	movl	1136(%rsp), %r9d
	movl	$1, %eax
	testl	%r9d, %r9d
	cmovne	%eax, %edx
.L10444:
	movl	%edx, %eax
.L20196:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1156(%rsp), %eax
	testl	%eax, %eax
	je	.L10471
	testb	$8, %dl
	jne	.L10471
	movq	5592(%rsp), %r10
	cmpq	%r10, 40(%rdi)
	je	.L21618
.L10472:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L10471:
	movq	1160(%rsp), %r11
	movzbl	18(%rdi), %ebx
	movzbl	18(%r14), %r8d
	movzbl	18(%r11), %r14d
	movl	%ebx, %ebp
	andb	$-5, %bl
	shrb	$3, %bpl
	shrb	$2, %r8b
	orl	%ebp, %r8d
	movq	%rdi, %rbp
	shrb	$2, %r14b
	orl	%r14d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rdi)
	jmp	.L10473
.L21618:
	movq	5600(%rsp), %rax
	cmpq	%rax, 32(%rdi)
	jne	.L10472
	jmp	.L10471
.L10442:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L10448
	movl	1156(%rsp), %esi
	testl	%esi, %esi
	je	.L10447
.L10448:
	movl	1136(%rsp), %eax
	movl	$1, %r10d
	movl	$0, %ecx
	testl	%eax, %eax
	cmove	%ecx, %r10d
.L10447:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L10450
	cmpb	$25, %al
	je	.L21619
.L10450:
	testl	%r10d, %r10d
	je	.L10446
	movl	1152(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L10446:
	movl	%ebp, %eax
	jmp	.L20196
.L21619:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L10454
	cmpb	$15, %al
	je	.L10454
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L10457:
	cmpl	$128, %esi
	je	.L10459
	cmpl	$64, %esi
	jbe	.L10460
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L10459:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10463
	cmpb	$6, 16(%rax)
	jne	.L10450
	testb	$2, 62(%rax)
	je	.L10450
.L10463:
	cmpl	$128, %esi
	je	.L10465
	cmpl	$64, %esi
	jbe	.L10466
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20195:
	testl	$1, %eax 
	je	.L10465
	cmpl	$64, %esi
	jbe	.L10468
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L10465:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L10450
.L10468:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10465
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10465
.L10466:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20195
.L10460:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10459
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L10459
.L10454:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10457
.L10411:
	cmpq	$-1, %rax
	jne	.L10409
	cmpq	$0, 5600(%rsp)
	jns	.L10409
	jmp	.L10410
.L10342:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5600(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5592(%rsp)
	andq	%r10, %r9
.L20191:
	shrq	$63, %r9
	movl	%r9d, 1136(%rsp)
	jmp	.L10268
.L10345:
	testq	%r8, %r8
	jne	.L10346
	movq	%r9, %rax
	movq	$0, 5600(%rsp)
	negq	%rax
.L20186:
	movq	%rax, 5592(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5600(%rsp), %rdx
	addq	5592(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 5600(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 5592(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20191
.L10346:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5600(%rsp)
	notq	%rax
	jmp	.L20186
.L10351:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 12592(%rsp)
	movq	%rcx, 12600(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 12560(%rsp)
	leaq	5592(%rsp), %r12
	movq	%rbp, 12608(%rsp)
	movq	%rdx, 12616(%rsp)
	movq	%rdi, 12568(%rsp)
	movq	%rbx, 12576(%rsp)
	movq	%rcx, 12584(%rsp)
	movq	$0, 12496(%rsp)
	movq	$0, 12504(%rsp)
	movq	$0, 12512(%rsp)
	movq	$0, 12520(%rsp)
	movq	$0, 12528(%rsp)
	movq	$0, 12536(%rsp)
	movq	$0, 12544(%rsp)
	movq	$0, 12552(%rsp)
	xorl	%esi, %esi
.L10363:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	12592(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L10362:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	12560(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	12496(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 12496(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L10362
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 12528(%rsp,%rdi,8)
	jle	.L10363
	movq	12504(%rsp), %rdx
	movq	12520(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	12496(%rsp), %rdx
	addq	12512(%rsp), %rsi
	movq	%rdx, 5600(%rsp)
	movq	%rsi, (%r12)
	movq	12552(%rsp), %rcx
	movq	12536(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	12544(%rsp), %rcx
	addq	12528(%rsp), %rax
	testq	%r10, %r10
	js	.L21620
.L10366:
	testq	%r9, %r9
	js	.L21621
.L10372:
	cmpq	$0, (%r12)
	js	.L21622
	orq	%rcx, %rax
.L21018:
	setne	%r11b
	movzbl	%r11b, %eax
.L20190:
	movl	%eax, 1136(%rsp)
	jmp	.L10268
.L21622:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21018
.L21621:
	testq	%r11, %r11
	jne	.L10373
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L10374:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L10372
.L10373:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L10374
.L21620:
	testq	%r8, %r8
	jne	.L10367
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L10368:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L10366
.L10367:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L10368
.L10387:
	testq	%r9, %r9
	jne	.L10388
	cmpq	$1, %r8
	je	.L20189
.L10388:
	cmpq	%r8, %r11
	je	.L21623
.L10389:
	leaq	5600(%rsp), %rcx
	leaq	5592(%rsp), %rbx
	leaq	5552(%rsp), %rbp
	leaq	5544(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
.L20187:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20190
.L21623:
	cmpq	%r9, %r10
	jne	.L10389
	testq	%r8, %r8
	jne	.L10390
	testq	%r9, %r9
	je	.L10389
.L10390:
	movq	$1, 5600(%rsp)
.L20188:
	movq	$0, 5592(%rsp)
	jmp	.L10268
.L20189:
	movq	%r11, 5600(%rsp)
	jmp	.L20192
.L10393:
	testq	%r9, %r9
	jne	.L10396
	testq	%r8, %r8
	jle	.L10396
	testb	$4, 18(%r14)
	jne	.L10396
	movq	1160(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L10396
	testq	%r10, %r10
	jne	.L10396
	testq	%r11, %r11
	js	.L10396
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %r10
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5600(%rsp)
	jmp	.L20188
.L10396:
	leaq	5552(%rsp), %rbp
	leaq	5544(%rsp), %rdx
	leaq	5600(%rsp), %rsi
	movq	%rbp, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5592(%rsp), %rax
	jmp	.L20187
.L10384:
	testq	%r9, %r9
	jne	.L10388
	testq	%r8, %r8
	jle	.L10387
	testb	$4, 18(%r14)
	jne	.L10387
	movq	1160(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L10387
	testq	%r10, %r10
	jne	.L10387
	testq	%r11, %r11
	js	.L10387
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5600(%rsp)
	jmp	.L20188
.L10398:
	testl	%r15d, %r15d
	je	.L10399
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L10404
.L21188:
	cmpq	%r9, %r10
	je	.L21624
.L10403:
	xorl	%ebx, %ebx
	movq	%rax, 5600(%rsp)
	cmpl	$78, %r12d
	sete	%bl
	cmpq	%rbx, 5600(%rsp)
	je	.L20189
	movq	%r8, 5600(%rsp)
	movq	%r9, 5592(%rsp)
	jmp	.L10268
.L21624:
	cmpq	%r8, %r11
	jae	.L10403
.L10404:
	movl	$1, %eax
	jmp	.L10403
.L10399:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L10404
	jmp	.L21188
.L10274:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5600(%rsp), %rbx
	leaq	5592(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21625
	cmpq	$127, %r8
	jle	.L10290
	movq	$0, 5592(%rsp)
.L20177:
	movq	$0, 5600(%rsp)
.L10291:
	cmpl	$64, %esi
	jbe	.L10294
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20178:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L10289
	cmpl	$63, %esi
	jbe	.L10298
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20180:
	movq	%rax, (%r9)
.L10289:
	movl	$1, 1152(%rsp)
	jmp	.L10268
.L10298:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20179:
	movq	%rax, (%rbx)
	jmp	.L10289
.L10294:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20178
.L10290:
	cmpq	$63, %r8
	jle	.L10292
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5592(%rsp)
	jmp	.L20177
.L10292:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5600(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5592(%rsp)
	jmp	.L10291
.L21625:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L10276
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L10277:
	cmpq	$127, %rdx
	jle	.L10278
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L10279:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L10282
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L10289
.L10282:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L10289
	cmpq	$63, %rax
	jle	.L10286
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20180
.L10286:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20179
.L10278:
	cmpq	$63, %rdx
	jle	.L10280
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L10279
.L10280:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L10279
.L10276:
	xorl	%edi, %edi
	jmp	.L10277
.L10273:
	negq	%r8
	jmp	.L10274
.L10301:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5584(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5576(%rsp), %rbx
	testq	%r8, %r8
	js	.L21626
	cmpq	$127, %r8
	jle	.L10318
	movq	$0, 5576(%rsp)
.L20182:
	movq	$0, 5584(%rsp)
.L10319:
	cmpl	$64, %edi
	jbe	.L10322
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20183:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L10317
	cmpl	$63, %edi
	jbe	.L10326
.L20185:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L10317:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5560(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5568(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L10330
	movq	$0, 5560(%rsp)
	movq	$0, 5568(%rsp)
.L10331:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L10334
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L10340:
	movq	5568(%rsp), %rdi
	movq	5560(%rsp), %r10
	orq	5584(%rsp), %rdi
	orq	5576(%rsp), %r10
	movq	%rdi, 5600(%rsp)
	movq	%r10, 5592(%rsp)
	jmp	.L10268
.L10334:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L10340
	cmpq	$63, %rax
	jle	.L10338
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L10340
.L10338:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L10340
.L10330:
	cmpq	$63, %rsi
	jle	.L10332
	leal	-64(%rsi), %ecx
	movq	$0, 5560(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5568(%rsp)
	jmp	.L10331
.L10332:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5560(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5568(%rsp)
	jmp	.L10331
.L10326:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20184:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L10317
.L10322:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20183
.L10318:
	cmpq	$63, %r8
	jle	.L10320
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 5576(%rsp)
	jmp	.L20182
.L10320:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5576(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5584(%rsp)
	jmp	.L10319
.L21626:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L10306
	movq	$0, 5576(%rsp)
	movq	$0, 5584(%rsp)
.L10307:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L10310
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L10317
.L10310:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L10317
	cmpq	$63, %rax
	jle	.L10314
	subl	%esi, %edi
	jmp	.L20185
.L10314:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20184
.L10306:
	cmpq	$63, %rsi
	jle	.L10308
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5576(%rsp)
	shrq	%cl, %rax
.L20181:
	movq	%rax, 5584(%rsp)
	jmp	.L10307
.L10308:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5576(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20181
.L10300:
	negq	%r8
	jmp	.L10301
.L10270:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5600(%rsp)
	jmp	.L20192
.L10271:
	andq	%r8, %r11
	movq	%r11, 5600(%rsp)
.L20193:
	andq	%r9, %r10
	jmp	.L20192
.L10272:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5600(%rsp)
	jmp	.L20193
.L21615:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1156(%rsp), %eax
	movl	%eax, 1156(%rsp)
	jmp	.L10267
.L21536:
	movq	new_const.1(%rip), %r10
	movl	$25, %edi
	movq	%r10, (%rax)
	movq	%r10, 1160(%rsp)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10253
.L21535:
	movzbl	16(%rbx), %eax
	movq	%rbp, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10235
	cmpb	$15, %al
	je	.L10235
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L10238:
	cmpl	$128, %esi
	je	.L10240
	cmpl	$64, %esi
	jbe	.L10241
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L10240:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10244
	cmpb	$6, 16(%rax)
	jne	.L10231
	testb	$2, 62(%rax)
	je	.L10231
.L10244:
	cmpl	$128, %esi
	je	.L10246
	cmpl	$64, %esi
	jbe	.L10247
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20176:
	testl	$1, %eax 
	je	.L10246
	cmpl	$64, %esi
	jbe	.L10249
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L10246:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L10231
.L10249:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10246
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10246
.L10247:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20176
.L10241:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10240
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L10240
.L10235:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10238
.L21534:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10227
.L21533:
	movzbl	16(%rax), %edx
	cmpb	$13, %dl
	je	.L10210
	cmpb	$15, %dl
	je	.L10210
	movzwl	60(%rax), %edx
	andl	$511, %edx
.L10213:
	cmpl	$128, %edx
	je	.L10215
	cmpl	$64, %edx
	jbe	.L10216
	leal	-64(%rdx), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 40(%rsi)
.L10215:
	movq	8(%rsi), %rax
	testb	$32, 17(%rax)
	je	.L10219
	cmpb	$6, 16(%rax)
	jne	.L10206
	testb	$2, 62(%rax)
	je	.L10206
.L10219:
	cmpl	$128, %edx
	je	.L10206
	cmpl	$64, %edx
	jbe	.L10222
	movq	40(%rsi), %rax
	leal	-65(%rdx), %ecx
	sarq	%cl, %rax
.L20175:
	testl	$1, %eax 
	je	.L10206
	cmpl	$64, %edx
	jbe	.L10224
	leal	-64(%rdx), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rsi)
	jmp	.L10206
.L10224:
	movq	$-1, %rax
	cmpl	$63, %edx
	movq	%rax, 40(%rsi)
	ja	.L10206
	movl	%edx, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rsi)
	jmp	.L10206
.L10222:
	movq	32(%rsi), %rax
	leal	-1(%rdx), %ecx
	shrq	%cl, %rax
	jmp	.L20175
.L10216:
	cmpl	$63, %edx
	movq	$0, 40(%rsi)
	ja	.L10215
	movq	$-1, %r8
	movl	%edx, %ecx
	salq	%cl, %r8
	notq	%r8
	andq	%r8, 32(%rsi)
	jmp	.L10215
.L10210:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edx
	movl	$32, %eax
	cmove	%eax, %edx
	jmp	.L10213
.L21532:
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10200
.L21531:
	movzbl	16(%rbx), %eax
	movq	%rbp, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10182
	cmpb	$15, %al
	je	.L10182
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L10185:
	cmpl	$128, %esi
	je	.L10187
	cmpl	$64, %esi
	jbe	.L10188
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L10187:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10191
	cmpb	$6, 16(%rax)
	jne	.L10178
	testb	$2, 62(%rax)
	je	.L10178
.L10191:
	cmpl	$128, %esi
	je	.L10193
	cmpl	$64, %esi
	jbe	.L10194
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20174:
	testl	$1, %eax 
	je	.L10193
	cmpl	$64, %esi
	jbe	.L10196
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L10193:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L10178
.L10196:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10193
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10193
.L10194:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20174
.L10188:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10187
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L10187
.L10182:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10185
.L21530:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10174
.L21529:
	movq	new_const.1(%rip), %r12
	movl	$25, %edi
	movq	%r12, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10171
.L21528:
	movzbl	16(%rbp), %eax
	movq	%rbx, %rsi
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10153
	cmpb	$15, %al
	je	.L10153
	movzwl	60(%rbp), %edi
	andl	$511, %edi
.L10156:
	cmpl	$128, %edi
	je	.L10158
	cmpl	$64, %edi
	jbe	.L10159
	leal	-64(%rdi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L10158:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10162
	cmpb	$6, 16(%rax)
	jne	.L10149
	testb	$2, 62(%rax)
	je	.L10149
.L10162:
	cmpl	$128, %edi
	je	.L10164
	cmpl	$64, %edi
	jbe	.L10165
	movq	40(%rdx), %rax
	leal	-65(%rdi), %ecx
	sarq	%cl, %rax
.L20173:
	testl	$1, %eax 
	je	.L10164
	cmpl	$64, %edi
	jbe	.L10167
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	orq	%rbp, 40(%rdx)
.L10164:
	xorq	32(%rdx), %rsi
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%rsi, %rcx
	orq	%r9, %rcx
	setne	%sil
	movzbl	%sil, %r10d
	jmp	.L10149
.L10167:
	movq	$-1, %rax
	cmpl	$63, %edi
	movq	%rax, 40(%rdx)
	ja	.L10164
	movl	%edi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10164
.L10165:
	movq	32(%rdx), %rax
	leal	-1(%rdi), %ecx
	shrq	%cl, %rax
	jmp	.L20173
.L10159:
	cmpl	$63, %edi
	movq	$0, 40(%rdx)
	ja	.L10158
	movq	$-1, %r12
	movl	%edi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L10158
.L10153:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edi
	movl	$32, %eax
	cmove	%eax, %edi
	jmp	.L10156
.L21527:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10145
.L21380:
	movq	8(%r12), %r8
	movl	$86, %esi
	cmpl	$60, %esi
	movq	%r8, 2952(%rsp)
	movq	32(%r14), %rbp
	movq	40(%r12), %r15
	movq	32(%r12), %r13
	movq	40(%r14), %r14
	je	.L10124
	cmpl	$60, %esi
	ja	.L10141
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21017:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2952(%rsp), %rdi
.L20171:
	movq	%rax, %rdx
	call	build_complex
.L20172:
	movq	%rax, %rbx
	jmp	.L10092
.L10141:
	movl	$86, %edi
	cmpl	$61, %edi
	je	.L10125
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2944(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L10135
	cmpb	$10, %al
	je	.L10135
	cmpb	$11, %al
	je	.L10135
	cmpb	$12, %al
	movl	$70, %edi
	je	.L10135
.L10134:
	movq	2944(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L10138
	cmpb	$10, %al
	je	.L10138
	cmpb	$11, %al
	je	.L10138
	cmpb	$12, %al
	movl	$70, %edi
	je	.L10138
.L10137:
	movq	2944(%rsp), %rdx
.L20170:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2952(%rsp), %rdi
	jmp	.L20171
.L10138:
	movl	$62, %edi
	jmp	.L10137
.L10135:
	movl	$62, %edi
	jmp	.L10134
.L10125:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20170
.L10124:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21017
.L21379:
	movq	32(%r12), %r13
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	movq	%r13, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %r8
	movq	%r8, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L10092
	movq	18560(%rsp), %r10
	movq	18568(%rsp), %r11
	movq	%r14, %rbx
	movq	18576(%rsp), %r9
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r9, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L10092
	movq	18528(%rsp), %rsi
	movq	18560(%rsp), %rdi
	movq	8(%r12), %r8
	movq	18536(%rsp), %r13
	movl	$86, 12624(%rsp)
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %rbx
	movq	%rsi, 12640(%rsp)
	movq	%rdi, 12664(%rsp)
	leaq	12624(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r8, 12632(%rsp)
	movq	%r13, 12648(%rsp)
	movq	%rdx, 12656(%rsp)
	movq	%r15, 12672(%rsp)
	movq	%rbx, 12680(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L10097
	movq	12688(%rsp), %rbx
.L10098:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L10100
	cmpb	$25, %al
	je	.L21629
.L10100:
	movzbl	18(%r12), %esi
	movzbl	18(%r14), %edx
	shrb	$3, %sil
	shrb	$3, %dl
	andl	$1, %esi
	andl	$1, %edx
	orb	%bpl, %sil
	movzbl	18(%rbx), %ebp
	orb	%dl, %sil
	salb	$3, %sil
	andb	$-9, %bpl
	orb	%sil, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %r13d
	movzbl	18(%r14), %eax
	movzbl	18(%r12), %edi
	shrb	$3, %r13b
	andb	$-5, %bpl
	shrb	$2, %al
	shrb	$2, %dil
	orl	%r13d, %edi
	orl	%eax, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L10092
.L21629:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L10104
	cmpb	$15, %al
	je	.L10104
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L10107:
	cmpl	$128, %esi
	je	.L10109
	cmpl	$64, %esi
	jbe	.L10110
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 40(%rdx)
.L10109:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10113
	cmpb	$6, 16(%rax)
	jne	.L10100
	testb	$2, 62(%rax)
	je	.L10100
.L10113:
	cmpl	$128, %esi
	je	.L10115
	cmpl	$64, %esi
	jbe	.L10116
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20169:
	testl	$1, %eax 
	je	.L10115
	cmpl	$64, %esi
	jbe	.L10118
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	orq	%r10, 40(%rdx)
.L10115:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r15
	orq	%rdi, %r15
	orq	%r8, %r15
	setne	%cl
	movzbl	%cl, %ebp
	jmp	.L10100
.L10118:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10115
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10115
.L10116:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20169
.L10110:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10109
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L10109
.L10104:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10107
.L10097:
	movq	%r12, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L10098
.L21378:
	movq	8(%r12), %r13
	movl	$1, %r15d
	movl	$0, 1196(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21630
.L9886:
	movl	$86, %eax
	movl	$0, 1168(%rsp)
	movl	$0, 1192(%rsp)
	subl	$59, %eax
	movq	32(%r12), %r11
	movq	40(%r12), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ebp
	jmp	*.L10027(,%rbp,8)
	.section	.rodata
	.align 8
	.align 4
.L10027:
	.quad	.L9961
	.quad	.L9964
	.quad	.L9970
	.quad	.L10003
	.quad	.L10003
	.quad	.L10003
	.quad	.L10006
	.quad	.L10012
	.quad	.L10012
	.quad	.L10012
	.quad	.L10015
	.quad	.L18929
	.quad	.L10003
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L10017
	.quad	.L10017
	.quad	.L18929
	.quad	.L18929
	.quad	.L9893
	.quad	.L9892
	.quad	.L9920
	.quad	.L9919
	.quad	.L9888
	.quad	.L9889
	.quad	.L9890
	.quad	.L9891
	.text
.L9888:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5664(%rsp)
.L20164:
	movq	%r10, 5656(%rsp)
.L9887:
	movl	1196(%rsp), %eax
	testl	%eax, %eax
	je	.L10028
	movq	5656(%rsp), %rax
	testq	%rax, %rax
	jne	.L10030
	cmpq	$0, 5664(%rsp)
	js	.L10030
.L10029:
	movl	1168(%rsp), %eax
	testl	%eax, %eax
	jne	.L10028
	testb	$8, 18(%r12)
	jne	.L10028
	testb	$8, 18(%r14)
	jne	.L10028
	cmpq	$0, size_htab.0(%rip)
	movq	5664(%rsp), %rbx
	je	.L21631
.L10031:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L10035
	cmpb	$25, %al
	je	.L21632
.L10035:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %eax
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20172
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L10092
.L21632:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L10039
	cmpb	$15, %al
	je	.L10039
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L10042:
	cmpl	$128, %esi
	je	.L10044
	cmpl	$64, %esi
	jbe	.L10045
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L10044:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10048
	cmpb	$6, 16(%rax)
	jne	.L10035
	testb	$2, 62(%rax)
	je	.L10035
.L10048:
	cmpl	$128, %esi
	je	.L10050
	cmpl	$64, %esi
	jbe	.L10051
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20166:
	testl	$1, %eax 
	je	.L10050
	cmpl	$64, %esi
	jbe	.L10053
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L10050:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L10035
.L10053:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10050
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10050
.L10051:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20166
.L10045:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10044
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L10044
.L10039:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10042
.L21631:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L10031
.L10028:
	movq	5664(%rsp), %rdi
	movq	5656(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%r12), %rbp
	movq	%rax, %rdi
	movq	%rbp, 8(%rax)
	movzbl	18(%r14), %edx
	movzbl	18(%r12), %ebx
	shrb	$3, %dl
	shrb	$3, %bl
	andl	%ebx, %r11d
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L10061
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L10064
	movl	1196(%rsp), %eax
	testl	%eax, %eax
	je	.L10063
.L10064:
	movl	1168(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L10063:
	movl	%edx, %eax
.L20168:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1196(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L10090
	testb	$8, %dl
	jne	.L10090
	movq	5656(%rsp), %rax
	cmpq	%rax, 40(%rdi)
	je	.L21633
.L10091:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L10090:
	movzbl	18(%rdi), %ebx
	movzbl	18(%r12), %ebp
	movzbl	18(%r14), %r12d
	movl	%ebx, %r15d
	shrb	$2, %bpl
	andb	$-5, %bl
	shrb	$3, %r15b
	shrb	$2, %r12b
	orl	%r15d, %ebp
	orl	%r12d, %ebp
	andb	$1, %bpl
	salb	$2, %bpl
	orb	%bpl, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L10092
.L21633:
	movq	5664(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L10091
	jmp	.L10090
.L10061:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L10067
	movl	1196(%rsp), %eax
	testl	%eax, %eax
	je	.L10066
.L10067:
	movl	1168(%rsp), %r13d
	movl	$1, %r10d
	movl	$0, %eax
	testl	%r13d, %r13d
	cmove	%eax, %r10d
.L10066:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L10069
	cmpb	$25, %al
	je	.L21634
.L10069:
	testl	%r10d, %r10d
	je	.L10065
	movl	1192(%rsp), %r9d
	movl	$1, %eax
	testl	%r9d, %r9d
	cmove	%eax, %ebp
.L10065:
	movl	%ebp, %eax
	jmp	.L20168
.L21634:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L10073
	cmpb	$15, %al
	je	.L10073
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L10076:
	cmpl	$128, %esi
	je	.L10078
	cmpl	$64, %esi
	jbe	.L10079
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L10078:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L10082
	cmpb	$6, 16(%rax)
	jne	.L10069
	testb	$2, 62(%rax)
	je	.L10069
.L10082:
	cmpl	$128, %esi
	je	.L10084
	cmpl	$64, %esi
	jbe	.L10085
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20167:
	testl	$1, %eax 
	je	.L10084
	cmpl	$64, %esi
	jbe	.L10087
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L10084:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L10069
.L10087:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L10084
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L10084
.L10085:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20167
.L10079:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L10078
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L10078
.L10073:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L10076
.L10030:
	cmpq	$-1, %rax
	jne	.L10028
	cmpq	$0, 5664(%rsp)
	jns	.L10028
	jmp	.L10029
.L9961:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5664(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5656(%rsp)
	andq	%r10, %r9
.L20163:
	shrq	$63, %r9
	movl	%r9d, 1168(%rsp)
	jmp	.L9887
.L9964:
	testq	%r8, %r8
	jne	.L9965
	movq	%r9, %rax
	movq	$0, 5664(%rsp)
	negq	%rax
.L20158:
	movq	%rax, 5656(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	5664(%rsp), %rdx
	addq	5656(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rbx
	movq	%rdx, 5664(%rsp)
	cmovb	%rbx, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 5656(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L20163
.L9965:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5664(%rsp)
	notq	%rax
	jmp	.L20158
.L9970:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 12800(%rsp)
	movq	%rcx, 12808(%rsp)
	movq	%r8, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %ebp
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 12776(%rsp)
	movq	%rbx, 12816(%rsp)
	movq	%rdx, 12824(%rsp)
	movq	%rbp, 12768(%rsp)
	movq	%rdi, 12784(%rsp)
	movq	%rcx, 12792(%rsp)
	movq	$0, 12704(%rsp)
	movq	$0, 12712(%rsp)
	movq	$0, 12720(%rsp)
	movq	$0, 12728(%rsp)
	movq	$0, 12736(%rsp)
	movq	$0, 12744(%rsp)
	movq	$0, 12752(%rsp)
	movq	$0, 12760(%rsp)
	xorl	%esi, %esi
.L9982:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	12800(%rsp,%rbx,8), %rbp
	xorl	%ebx, %ebx
.L9981:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	12768(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	12704(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 12704(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L9981
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 12736(%rsp,%rbp,8)
	jle	.L9982
	movq	12712(%rsp), %rdx
	movq	12728(%rsp), %rsi
	movq	12744(%rsp), %rax
	movq	12760(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	12704(%rsp), %rdx
	addq	12720(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	12736(%rsp), %rax
	addq	12752(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 5664(%rsp)
	movq	%rsi, 5656(%rsp)
	js	.L21635
.L9985:
	testq	%r9, %r9
	js	.L21636
.L9991:
	cmpq	$0, 5656(%rsp)
	js	.L21637
	orq	%rcx, %rax
.L21016:
	setne	%r11b
	movzbl	%r11b, %eax
.L20162:
	movl	%eax, 1168(%rsp)
	jmp	.L9887
.L21637:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21016
.L21636:
	testq	%r11, %r11
	jne	.L9992
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L9993:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L9991
.L9992:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L9993
.L21635:
	testq	%r8, %r8
	jne	.L9986
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L9987:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L9985
.L9986:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L9987
.L10006:
	testq	%r9, %r9
	jne	.L10007
	cmpq	$1, %r8
	je	.L20161
.L10007:
	cmpq	%r8, %r11
	je	.L21638
.L10008:
	leaq	5664(%rsp), %rbx
	leaq	5656(%rsp), %rdi
	leaq	5616(%rsp), %rcx
	leaq	5608(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20159:
	movl	$86, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20162
.L21638:
	cmpq	%r9, %r10
	jne	.L10008
	testq	%r8, %r8
	jne	.L10009
	testq	%r9, %r9
	je	.L10008
.L10009:
	movq	$1, 5664(%rsp)
.L20160:
	movq	$0, 5656(%rsp)
	jmp	.L9887
.L20161:
	movq	%r11, 5664(%rsp)
	jmp	.L20164
.L10012:
	testq	%r9, %r9
	jne	.L10015
	testq	%r8, %r8
	jle	.L10015
	testb	$4, 18(%r12)
	jne	.L10015
	testb	$4, 18(%r14)
	jne	.L10015
	testq	%r10, %r10
	jne	.L10015
	testq	%r11, %r11
	js	.L10015
	movl	$86, %eax
	leaq	-1(%r8,%r11), %rbp
	cmpl	$67, %eax
	cmove	%rbp, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5664(%rsp)
	jmp	.L20160
.L10015:
	leaq	5616(%rsp), %rcx
	leaq	5608(%rsp), %rdx
	leaq	5664(%rsp), %rsi
	movq	%rcx, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5656(%rsp), %rax
	jmp	.L20159
.L10003:
	testq	%r9, %r9
	jne	.L10007
	testq	%r8, %r8
	jle	.L10006
	testb	$4, 18(%r12)
	jne	.L10006
	testb	$4, 18(%r14)
	jne	.L10006
	testq	%r10, %r10
	jne	.L10006
	testq	%r11, %r11
	js	.L10006
	movl	$86, %r10d
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %r10d
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5664(%rsp)
	jmp	.L20160
.L10017:
	testl	%r15d, %r15d
	je	.L10018
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L10023
.L21187:
	cmpq	%r9, %r10
	je	.L21639
.L10022:
	movl	$86, %ebp
	xorl	%ebx, %ebx
	movq	%rax, 5664(%rsp)
	cmpl	$78, %ebp
	sete	%bl
	cmpq	%rbx, 5664(%rsp)
	je	.L20161
	movq	%r8, 5664(%rsp)
	movq	%r9, 5656(%rsp)
	jmp	.L9887
.L21639:
	cmpq	%r8, %r11
	jae	.L10022
.L10023:
	movl	$1, %eax
	jmp	.L10022
.L10018:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L10023
	jmp	.L21187
.L9893:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5664(%rsp), %rbx
	leaq	5656(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21640
	cmpq	$127, %r8
	jle	.L9909
	movq	$0, 5656(%rsp)
.L20150:
	movq	$0, 5664(%rsp)
.L9910:
	cmpl	$64, %esi
	jbe	.L9913
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20151:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L9908
	cmpl	$63, %esi
	jbe	.L9917
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20153:
	movq	%rax, (%r9)
.L9908:
	movl	$1, 1192(%rsp)
	jmp	.L9887
.L9917:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20152:
	movq	%rax, (%rbx)
	jmp	.L9908
.L9913:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20151
.L9909:
	cmpq	$63, %r8
	jle	.L9911
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5656(%rsp)
	jmp	.L20150
.L9911:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5664(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5656(%rsp)
	jmp	.L9910
.L21640:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L9895
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L9896:
	cmpq	$127, %rdx
	jle	.L9897
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L9898:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L9901
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L9908
.L9901:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L9908
	cmpq	$63, %rax
	jle	.L9905
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20153
.L9905:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20152
.L9897:
	cmpq	$63, %rdx
	jle	.L9899
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L9898
.L9899:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L9898
.L9895:
	xorl	%edi, %edi
	jmp	.L9896
.L9892:
	negq	%r8
	jmp	.L9893
.L9920:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5648(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5640(%rsp), %rbx
	testq	%r8, %r8
	js	.L21641
	cmpq	$127, %r8
	jle	.L9937
	movq	$0, 5640(%rsp)
.L20154:
	movq	$0, 5648(%rsp)
.L9938:
	cmpl	$64, %edi
	jbe	.L9941
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20155:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L9936
	cmpl	$63, %edi
	jbe	.L9945
.L20157:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L9936:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5624(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5632(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L9949
	movq	$0, 5624(%rsp)
	movq	$0, 5632(%rsp)
.L9950:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L9953
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L9959:
	movq	5632(%rsp), %rdi
	movq	5624(%rsp), %r10
	orq	5648(%rsp), %rdi
	orq	5640(%rsp), %r10
	movq	%rdi, 5664(%rsp)
	movq	%r10, 5656(%rsp)
	jmp	.L9887
.L9953:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L9959
	cmpq	$63, %rax
	jle	.L9957
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L9959
.L9957:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L9959
.L9949:
	cmpq	$63, %rsi
	jle	.L9951
	leal	-64(%rsi), %ecx
	movq	$0, 5624(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5632(%rsp)
	jmp	.L9950
.L9951:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5624(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5632(%rsp)
	jmp	.L9950
.L9945:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20156:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L9936
.L9941:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20155
.L9937:
	cmpq	$63, %r8
	jle	.L9939
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 5640(%rsp)
	jmp	.L20154
.L9939:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 5640(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5648(%rsp)
	jmp	.L9938
.L21641:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L9925
	movq	$0, 5640(%rsp)
	movq	$0, 5648(%rsp)
.L9926:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L9929
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L9936
.L9929:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L9936
	cmpq	$63, %rax
	jle	.L9933
	subl	%esi, %edi
	jmp	.L20157
.L9933:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20156
.L9925:
	cmpq	$63, %rsi
	jle	.L9927
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5640(%rsp)
	shrq	%cl, %rax
	movq	%rax, 5648(%rsp)
	jmp	.L9926
.L9927:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 5640(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 5648(%rsp)
	jmp	.L9926
.L9919:
	negq	%r8
	jmp	.L9920
.L9889:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5664(%rsp)
	jmp	.L20164
.L9890:
	andq	%r8, %r11
	movq	%r11, 5664(%rsp)
.L20165:
	andq	%r9, %r10
	jmp	.L20164
.L9891:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5664(%rsp)
	jmp	.L20165
.L21630:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1196(%rsp), %eax
	movl	%eax, 1196(%rsp)
	jmp	.L9886
.L21377:
	movq	8(%r12), %rsi
	movq	%rsi, 2968(%rsp)
	movl	$86, %esi
	movq	32(%r14), %rbp
	cmpl	$60, %esi
	movq	32(%r12), %r13
	movq	40(%r12), %r15
	movq	40(%r14), %r14
	je	.L9857
	cmpl	$60, %esi
	ja	.L9874
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21015:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2968(%rsp), %rdi
.L20148:
	movq	%rax, %rdx
	call	build_complex
.L20149:
	movq	%rax, %rbx
	jmp	.L9825
.L9874:
	movl	$86, %edi
	cmpl	$61, %edi
	je	.L9858
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2960(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L9868
	cmpb	$10, %al
	je	.L9868
	cmpb	$11, %al
	je	.L9868
	cmpb	$12, %al
	movl	$70, %edi
	je	.L9868
.L9867:
	movq	2960(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r10
	movq	%rax, %rsi
	movzbl	16(%r10), %eax
	cmpb	$6, %al
	je	.L9871
	cmpb	$10, %al
	je	.L9871
	cmpb	$11, %al
	je	.L9871
	cmpb	$12, %al
	movl	$70, %edi
	je	.L9871
.L9870:
	movq	2960(%rsp), %rdx
.L20147:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2968(%rsp), %rdi
	jmp	.L20148
.L9871:
	movl	$62, %edi
	jmp	.L9870
.L9868:
	movl	$62, %edi
	jmp	.L9867
.L9858:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20147
.L9857:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21015
.L21376:
	movq	32(%r12), %r9
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	movq	%r9, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %rsi
	movq	%rsi, 18568(%rsp)
	movq	48(%r14), %r15
	movq	%rdi, 16(%rsp)
	movq	%r9, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r15, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L9825
	movq	18560(%rsp), %rbx
	movq	18568(%rsp), %r10
	movq	18576(%rsp), %r13
	movq	%rbx, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r14, %rbx
	movq	%r13, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L9825
	movq	8(%r12), %rsi
	movq	18560(%rsp), %rdi
	movl	$86, 12832(%rsp)
	movq	18528(%rsp), %r15
	movq	18536(%rsp), %r9
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r11
	movq	18576(%rsp), %r8
	movq	%rsi, 12840(%rsp)
	movq	%rdi, 12872(%rsp)
	leaq	12832(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r15, 12848(%rsp)
	movq	%r9, 12856(%rsp)
	movq	%rdx, 12864(%rsp)
	movq	%r11, 12880(%rsp)
	movq	%r8, 12888(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L9830
	movq	12896(%rsp), %rbx
.L9831:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L9833
	cmpb	$25, %al
	je	.L21644
.L9833:
	movzbl	18(%r12), %r15d
	movzbl	18(%r14), %edx
	shrb	$3, %r15b
	shrb	$3, %dl
	andl	$1, %r15d
	andl	$1, %edx
	orb	%bpl, %r15b
	movzbl	18(%rbx), %ebp
	orb	%dl, %r15b
	salb	$3, %r15b
	andb	$-9, %bpl
	orb	%r15b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %edi
	movzbl	18(%r14), %eax
	movzbl	18(%r12), %r8d
	shrb	$3, %dil
	andb	$-5, %bpl
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%edi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L9825
.L21644:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L9837
	cmpb	$15, %al
	je	.L9837
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L9840:
	cmpl	$128, %esi
	je	.L9842
	cmpl	$64, %esi
	jbe	.L9843
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L9842:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9846
	cmpb	$6, 16(%rax)
	jne	.L9833
	testb	$2, 62(%rax)
	je	.L9833
.L9846:
	cmpl	$128, %esi
	je	.L9848
	cmpl	$64, %esi
	jbe	.L9849
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20146:
	testl	$1, %eax 
	je	.L9848
	cmpl	$64, %esi
	jbe	.L9851
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L9848:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r9
	orq	%rdi, %r9
	orq	%r8, %r9
	setne	%cl
	movzbl	%cl, %ebp
	jmp	.L9833
.L9851:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9848
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9848
.L9849:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20146
.L9843:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9842
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L9842
.L9837:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9840
.L9830:
	movq	%r12, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L9831
.L21375:
	movq	8(%r12), %r13
	movl	$1, %r15d
	movl	$0, 1228(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21645
.L9619:
	movl	$86, %eax
	movl	$0, 1200(%rsp)
	movl	$0, 1224(%rsp)
	subl	$59, %eax
	movq	32(%r12), %r11
	movq	40(%r12), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ebp
	jmp	*.L9760(,%rbp,8)
	.section	.rodata
	.align 8
	.align 4
.L9760:
	.quad	.L9694
	.quad	.L9697
	.quad	.L9703
	.quad	.L9736
	.quad	.L9736
	.quad	.L9736
	.quad	.L9739
	.quad	.L9745
	.quad	.L9745
	.quad	.L9745
	.quad	.L9748
	.quad	.L18929
	.quad	.L9736
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L9750
	.quad	.L9750
	.quad	.L18929
	.quad	.L18929
	.quad	.L9626
	.quad	.L9625
	.quad	.L9653
	.quad	.L9652
	.quad	.L9621
	.quad	.L9622
	.quad	.L9623
	.quad	.L9624
	.text
.L9621:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5728(%rsp)
.L20141:
	movq	%r10, 5720(%rsp)
.L9620:
	movl	1228(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L9761
	movq	5720(%rsp), %rax
	testq	%rax, %rax
	jne	.L9763
	cmpq	$0, 5728(%rsp)
	js	.L9763
.L9762:
	movl	1200(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L9761
	testb	$8, 18(%r12)
	jne	.L9761
	testb	$8, 18(%r14)
	jne	.L9761
	cmpq	$0, size_htab.0(%rip)
	movq	5728(%rsp), %rbx
	je	.L21646
.L9764:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L9768
	cmpb	$25, %al
	je	.L21647
.L9768:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20149
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L9825
.L21647:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L9772
	cmpb	$15, %al
	je	.L9772
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L9775:
	cmpl	$128, %esi
	je	.L9777
	cmpl	$64, %esi
	jbe	.L9778
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L9777:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9781
	cmpb	$6, 16(%rax)
	jne	.L9768
	testb	$2, 62(%rax)
	je	.L9768
.L9781:
	cmpl	$128, %esi
	je	.L9783
	cmpl	$64, %esi
	jbe	.L9784
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20143:
	testl	$1, %eax 
	je	.L9783
	cmpl	$64, %esi
	jbe	.L9786
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L9783:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L9768
.L9786:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9783
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9783
.L9784:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20143
.L9778:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9777
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L9777
.L9772:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9775
.L21646:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L9764
.L9761:
	movq	5728(%rsp), %rdi
	movq	5720(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r12), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movzbl	18(%r14), %ebp
	movl	$1, %r11d
	movzbl	18(%r12), %r8d
	shrb	$3, %bpl
	shrb	$3, %r8b
	movl	%ebp, %ebx
	andl	%r8d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L9794
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L9797
	movl	1228(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L9796
.L9797:
	movl	1200(%rsp), %r15d
	movl	$1, %eax
	testl	%r15d, %r15d
	cmovne	%eax, %edx
.L9796:
	movl	%edx, %eax
.L20145:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1228(%rsp), %eax
	testl	%eax, %eax
	je	.L9823
	testb	$8, %dl
	jne	.L9823
	movq	5720(%rsp), %rax
	cmpq	%rax, 40(%rdi)
	je	.L21648
.L9824:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L9823:
	movzbl	18(%rdi), %ebp
	movzbl	18(%r12), %r8d
	movq	%rdi, %rbx
	movzbl	18(%r14), %r12d
	movl	%ebp, %r11d
	shrb	$2, %r8b
	andb	$-5, %bpl
	shrb	$3, %r11b
	shrb	$2, %r12b
	orl	%r11d, %r8d
	orl	%r12d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bpl
	movb	%bpl, 18(%rdi)
	jmp	.L9825
.L21648:
	movq	5728(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L9824
	jmp	.L9823
.L9794:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L9800
	movl	1228(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L9799
.L9800:
	movl	1200(%rsp), %esi
	movl	$1, %r10d
	movl	$0, %eax
	testl	%esi, %esi
	cmove	%eax, %r10d
.L9799:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L9802
	cmpb	$25, %al
	je	.L21649
.L9802:
	testl	%r10d, %r10d
	je	.L9798
	movl	1224(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L9798:
	movl	%ebp, %eax
	jmp	.L20145
.L21649:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L9806
	cmpb	$15, %al
	je	.L9806
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L9809:
	cmpl	$128, %esi
	je	.L9811
	cmpl	$64, %esi
	jbe	.L9812
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L9811:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9815
	cmpb	$6, 16(%rax)
	jne	.L9802
	testb	$2, 62(%rax)
	je	.L9802
.L9815:
	cmpl	$128, %esi
	je	.L9817
	cmpl	$64, %esi
	jbe	.L9818
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20144:
	testl	$1, %eax 
	je	.L9817
	cmpl	$64, %esi
	jbe	.L9820
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L9817:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r13
	orq	%r8, %r13
	orq	%r9, %r13
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L9802
.L9820:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9817
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9817
.L9818:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20144
.L9812:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9811
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L9811
.L9806:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9809
.L9763:
	cmpq	$-1, %rax
	jne	.L9761
	cmpq	$0, 5728(%rsp)
	jns	.L9761
	jmp	.L9762
.L9694:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5728(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5720(%rsp)
	andq	%r10, %r9
.L20140:
	shrq	$63, %r9
	movl	%r9d, 1200(%rsp)
	jmp	.L9620
.L9697:
	testq	%r8, %r8
	jne	.L9698
	movq	%r9, %rax
	movq	$0, 5728(%rsp)
	negq	%rax
.L20135:
	movq	%rax, 5720(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	5728(%rsp), %rdx
	addq	5720(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rbx
	movq	%rdx, 5728(%rsp)
	cmovb	%rbx, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 5720(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L20140
.L9698:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5728(%rsp)
	notq	%rax
	jmp	.L20135
.L9703:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 13008(%rsp)
	movq	%rcx, 13016(%rsp)
	movq	%r8, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %ebp
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 12984(%rsp)
	movq	%rbx, 13024(%rsp)
	movq	%rdx, 13032(%rsp)
	movq	%rbp, 12976(%rsp)
	movq	%rdi, 12992(%rsp)
	movq	%rcx, 13000(%rsp)
	movq	$0, 12912(%rsp)
	movq	$0, 12920(%rsp)
	movq	$0, 12928(%rsp)
	movq	$0, 12936(%rsp)
	movq	$0, 12944(%rsp)
	movq	$0, 12952(%rsp)
	movq	$0, 12960(%rsp)
	movq	$0, 12968(%rsp)
	xorl	%esi, %esi
.L9715:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	13008(%rsp,%rbx,8), %rbp
	xorl	%ebx, %ebx
.L9714:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	12976(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	12912(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 12912(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L9714
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 12944(%rsp,%rbp,8)
	jle	.L9715
	movq	12920(%rsp), %rdx
	movq	12936(%rsp), %rsi
	movq	12952(%rsp), %rax
	movq	12968(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	12912(%rsp), %rdx
	addq	12928(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	12944(%rsp), %rax
	addq	12960(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 5728(%rsp)
	movq	%rsi, 5720(%rsp)
	js	.L21650
.L9718:
	testq	%r9, %r9
	js	.L21651
.L9724:
	cmpq	$0, 5720(%rsp)
	js	.L21652
	orq	%rcx, %rax
.L21014:
	setne	%r11b
	movzbl	%r11b, %eax
.L20139:
	movl	%eax, 1200(%rsp)
	jmp	.L9620
.L21652:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21014
.L21651:
	testq	%r11, %r11
	jne	.L9725
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L9726:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L9724
.L9725:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L9726
.L21650:
	testq	%r8, %r8
	jne	.L9719
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L9720:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L9718
.L9719:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L9720
.L9739:
	testq	%r9, %r9
	jne	.L9740
	cmpq	$1, %r8
	je	.L20138
.L9740:
	cmpq	%r8, %r11
	je	.L21653
.L9741:
	leaq	5728(%rsp), %rbx
	leaq	5720(%rsp), %rdi
	leaq	5680(%rsp), %rcx
	leaq	5672(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20136:
	movl	$86, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20139
.L21653:
	cmpq	%r9, %r10
	jne	.L9741
	testq	%r8, %r8
	jne	.L9742
	testq	%r9, %r9
	je	.L9741
.L9742:
	movq	$1, 5728(%rsp)
.L20137:
	movq	$0, 5720(%rsp)
	jmp	.L9620
.L20138:
	movq	%r11, 5728(%rsp)
	jmp	.L20141
.L9745:
	testq	%r9, %r9
	jne	.L9748
	testq	%r8, %r8
	jle	.L9748
	testb	$4, 18(%r12)
	jne	.L9748
	testb	$4, 18(%r14)
	jne	.L9748
	testq	%r10, %r10
	jne	.L9748
	testq	%r11, %r11
	js	.L9748
	movl	$86, %eax
	leaq	-1(%r8,%r11), %rbp
	cmpl	$67, %eax
	cmove	%rbp, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5728(%rsp)
	jmp	.L20137
.L9748:
	leaq	5680(%rsp), %rcx
	leaq	5672(%rsp), %rdx
	leaq	5728(%rsp), %rsi
	movq	%rcx, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5720(%rsp), %rax
	jmp	.L20136
.L9736:
	testq	%r9, %r9
	jne	.L9740
	testq	%r8, %r8
	jle	.L9739
	testb	$4, 18(%r12)
	jne	.L9739
	testb	$4, 18(%r14)
	jne	.L9739
	testq	%r10, %r10
	jne	.L9739
	testq	%r11, %r11
	js	.L9739
	movl	$86, %r9d
	leaq	-1(%r8,%r11), %r10
	cmpl	$63, %r9d
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5728(%rsp)
	jmp	.L20137
.L9750:
	testl	%r15d, %r15d
	je	.L9751
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L9756
.L21186:
	cmpq	%r9, %r10
	je	.L21654
.L9755:
	movl	$86, %ebp
	xorl	%ebx, %ebx
	movq	%rax, 5728(%rsp)
	cmpl	$78, %ebp
	sete	%bl
	cmpq	%rbx, 5728(%rsp)
	je	.L20138
	movq	%r8, 5728(%rsp)
	movq	%r9, 5720(%rsp)
	jmp	.L9620
.L21654:
	cmpq	%r8, %r11
	jae	.L9755
.L9756:
	movl	$1, %eax
	jmp	.L9755
.L9751:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L9756
	jmp	.L21186
.L9626:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5728(%rsp), %rbx
	leaq	5720(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21655
	cmpq	$127, %r8
	jle	.L9642
	movq	$0, 5720(%rsp)
.L20127:
	movq	$0, 5728(%rsp)
.L9643:
	cmpl	$64, %esi
	jbe	.L9646
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20128:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L9641
	cmpl	$63, %esi
	jbe	.L9650
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20130:
	movq	%rax, (%r9)
.L9641:
	movl	$1, 1224(%rsp)
	jmp	.L9620
.L9650:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20129:
	movq	%rax, (%rbx)
	jmp	.L9641
.L9646:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20128
.L9642:
	cmpq	$63, %r8
	jle	.L9644
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5720(%rsp)
	jmp	.L20127
.L9644:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5728(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5720(%rsp)
	jmp	.L9643
.L21655:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L9628
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L9629:
	cmpq	$127, %rdx
	jle	.L9630
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L9631:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L9634
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L9641
.L9634:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L9641
	cmpq	$63, %rax
	jle	.L9638
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20130
.L9638:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20129
.L9630:
	cmpq	$63, %rdx
	jle	.L9632
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L9631
.L9632:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L9631
.L9628:
	xorl	%edi, %edi
	jmp	.L9629
.L9625:
	negq	%r8
	jmp	.L9626
.L9653:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5712(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5704(%rsp), %rbx
	testq	%r8, %r8
	js	.L21656
	cmpq	$127, %r8
	jle	.L9670
	movq	$0, 5704(%rsp)
.L20131:
	movq	$0, 5712(%rsp)
.L9671:
	cmpl	$64, %edi
	jbe	.L9674
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20132:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L9669
	cmpl	$63, %edi
	jbe	.L9678
.L20134:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L9669:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5688(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5696(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L9682
	movq	$0, 5688(%rsp)
	movq	$0, 5696(%rsp)
.L9683:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L9686
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L9692:
	movq	5696(%rsp), %rdi
	movq	5688(%rsp), %r9
	orq	5712(%rsp), %rdi
	orq	5704(%rsp), %r9
	movq	%rdi, 5728(%rsp)
	movq	%r9, 5720(%rsp)
	jmp	.L9620
.L9686:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L9692
	cmpq	$63, %rax
	jle	.L9690
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L9692
.L9690:
	movl	%r9d, %ecx
	movq	$-1, %r10
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%r8), %r10
	orq	%rdx, %r10
	movq	%r10, (%r8)
	jmp	.L9692
.L9682:
	cmpq	$63, %rsi
	jle	.L9684
	leal	-64(%rsi), %ecx
	movq	$0, 5688(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5696(%rsp)
	jmp	.L9683
.L9684:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5688(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5696(%rsp)
	jmp	.L9683
.L9678:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20133:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L9669
.L9674:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20132
.L9670:
	cmpq	$63, %r8
	jle	.L9672
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 5704(%rsp)
	jmp	.L20131
.L9672:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 5704(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5712(%rsp)
	jmp	.L9671
.L21656:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L9658
	movq	$0, 5704(%rsp)
	movq	$0, 5712(%rsp)
.L9659:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L9662
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L9669
.L9662:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L9669
	cmpq	$63, %rax
	jle	.L9666
	subl	%esi, %edi
	jmp	.L20134
.L9666:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20133
.L9658:
	cmpq	$63, %rsi
	jle	.L9660
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5704(%rsp)
	shrq	%cl, %rax
	movq	%rax, 5712(%rsp)
	jmp	.L9659
.L9660:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 5704(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 5712(%rsp)
	jmp	.L9659
.L9652:
	negq	%r8
	jmp	.L9653
.L9622:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5728(%rsp)
	jmp	.L20141
.L9623:
	andq	%r8, %r11
	movq	%r11, 5728(%rsp)
.L20142:
	andq	%r9, %r10
	jmp	.L20141
.L9624:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5728(%rsp)
	jmp	.L20142
.L21645:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1228(%rsp), %eax
	movl	%eax, 1228(%rsp)
	jmp	.L9619
.L21374:
	movq	8(%r14), %r11
	movq	1256(%rsp), %rbx
	cmpl	$60, %r12d
	movq	%r11, 2984(%rsp)
	movq	32(%rbx), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rbx), %r14
	je	.L9590
	cmpl	$60, %r12d
	ja	.L9607
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21013:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2984(%rsp), %rdi
.L20125:
	movq	%rax, %rdx
	call	build_complex
.L20126:
	movq	%rax, %rbx
	jmp	.L9558
.L9607:
	cmpl	$61, %r12d
	je	.L9591
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2976(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r10
	movq	%rax, %rsi
	movzbl	16(%r10), %eax
	cmpb	$6, %al
	je	.L9601
	cmpb	$10, %al
	je	.L9601
	cmpb	$11, %al
	je	.L9601
	cmpb	$12, %al
	movl	$70, %edi
	je	.L9601
.L9600:
	movq	2976(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L9604
	cmpb	$10, %al
	je	.L9604
	cmpb	$11, %al
	je	.L9604
	cmpb	$12, %al
	movl	$70, %edi
	je	.L9604
.L9603:
	movq	2976(%rsp), %rdx
.L20124:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2984(%rsp), %rdi
	jmp	.L20125
.L9604:
	movl	$62, %edi
	jmp	.L9603
.L9601:
	movl	$62, %edi
	jmp	.L9600
.L9591:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20124
.L9590:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21013
.L21373:
	movq	32(%r14), %rsi
	movq	1256(%rsp), %r15
	xorl	%ebp, %ebp
	movq	%r14, %rbx
	movq	%rsi, 18528(%rsp)
	movq	40(%r14), %r13
	movq	%r13, 18536(%rsp)
	movq	48(%r14), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r15), %r10
	movq	%r10, 18560(%rsp)
	movq	40(%r15), %r11
	movq	%r11, 18568(%rsp)
	movq	48(%r15), %rcx
	movq	%rdi, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	%r13, 8(%rsp)
	movq	%rcx, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L9558
	movq	18568(%rsp), %rbx
	movq	18560(%rsp), %rdx
	movq	18576(%rsp), %r8
	movq	%rbx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	%r8, 16(%rsp)
	call	target_isnan
	movq	1256(%rsp), %rbx
	testl	%eax, %eax
	jne	.L9558
	movq	18544(%rsp), %rsi
	movq	18568(%rsp), %rdi
	movq	8(%r14), %r11
	movq	18528(%rsp), %r15
	movl	%r12d, 13040(%rsp)
	movq	18536(%rsp), %rcx
	movq	18560(%rsp), %r13
	movq	18576(%rsp), %r9
	movq	%rsi, 13072(%rsp)
	movq	%rdi, 13088(%rsp)
	leaq	13040(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r11, 13048(%rsp)
	movq	%r15, 13056(%rsp)
	movq	%rcx, 13064(%rsp)
	movq	%r13, 13080(%rsp)
	movq	%r9, 13096(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L9563
	movq	13104(%rsp), %rbx
.L9564:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L9566
	cmpb	$25, %al
	je	.L21659
.L9566:
	movq	1256(%rsp), %rcx
	movzbl	18(%r14), %r15d
	movzbl	18(%rcx), %edx
	shrb	$3, %r15b
	andl	$1, %r15d
	orb	%bpl, %r15b
	movzbl	18(%rbx), %ebp
	shrb	$3, %dl
	andl	$1, %edx
	orb	%dl, %r15b
	salb	$3, %r15b
	andb	$-9, %bpl
	orb	%r15b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %esi
	movzbl	18(%rcx), %eax
	movzbl	18(%r14), %edi
	shrb	$3, %sil
	andb	$-5, %bpl
	shrb	$2, %al
	shrb	$2, %dil
	orl	%esi, %edi
	orl	%eax, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L9558
.L21659:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L9570
	cmpb	$15, %al
	je	.L9570
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L9573:
	cmpl	$128, %esi
	je	.L9575
	cmpl	$64, %esi
	jbe	.L9576
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L9575:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9579
	cmpb	$6, 16(%rax)
	jne	.L9566
	testb	$2, 62(%rax)
	je	.L9566
.L9579:
	cmpl	$128, %esi
	je	.L9581
	cmpl	$64, %esi
	jbe	.L9582
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20123:
	testl	$1, %eax 
	je	.L9581
	cmpl	$64, %esi
	jbe	.L9584
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	orq	%r9, 40(%rdx)
.L9581:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%r8b
	movzbl	%r8b, %ebp
	jmp	.L9566
.L9584:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9581
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9581
.L9582:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20123
.L9576:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9575
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L9575
.L9570:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9573
.L9563:
	movq	%r14, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L9564
.L21372:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 1252(%rsp)
	movzbl	17(%r13), %ecx
	shrb	$5, %cl
	andl	%ecx, %r15d
	cmpb	$6, 16(%r13)
	je	.L21660
.L9352:
	movq	1256(%rsp), %rax
	movl	$0, 1232(%rsp)
	movl	$0, 1248(%rsp)
	movq	32(%r14), %r11
	movq	40(%r14), %r10
	movq	32(%rax), %r8
	movq	40(%rax), %r9
	leal	-59(%r12), %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %esi
	jmp	*.L9493(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L9493:
	.quad	.L9427
	.quad	.L9430
	.quad	.L9436
	.quad	.L9469
	.quad	.L9469
	.quad	.L9469
	.quad	.L9472
	.quad	.L9478
	.quad	.L9478
	.quad	.L9478
	.quad	.L9481
	.quad	.L18929
	.quad	.L9469
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L9483
	.quad	.L9483
	.quad	.L18929
	.quad	.L18929
	.quad	.L9359
	.quad	.L9358
	.quad	.L9386
	.quad	.L9385
	.quad	.L9354
	.quad	.L9355
	.quad	.L9356
	.quad	.L9357
	.text
.L9354:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5792(%rsp)
.L20118:
	movq	%r10, 5784(%rsp)
.L9353:
	movl	1252(%rsp), %eax
	testl	%eax, %eax
	je	.L9494
	movq	5784(%rsp), %rax
	testq	%rax, %rax
	jne	.L9496
	cmpq	$0, 5792(%rsp)
	js	.L9496
.L9495:
	movl	1232(%rsp), %eax
	testl	%eax, %eax
	jne	.L9494
	testb	$8, 18(%r14)
	jne	.L9494
	movq	1256(%rsp), %r8
	testb	$8, 18(%r8)
	jne	.L9494
	cmpq	$0, size_htab.0(%rip)
	movq	5792(%rsp), %rbx
	je	.L21661
.L9497:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L9501
	cmpb	$25, %al
	je	.L21662
.L9501:
	movzbl	18(%r11), %ebp
	leal	0(,%r10,4), %esi
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %bpl
	orb	%sil, %bpl
	movb	%bpl, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20126
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L9558
.L21662:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L9505
	cmpb	$15, %al
	je	.L9505
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L9508:
	cmpl	$128, %esi
	je	.L9510
	cmpl	$64, %esi
	jbe	.L9511
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L9510:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9514
	cmpb	$6, 16(%rax)
	jne	.L9501
	testb	$2, 62(%rax)
	je	.L9501
.L9514:
	cmpl	$128, %esi
	je	.L9516
	cmpl	$64, %esi
	jbe	.L9517
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20120:
	testl	$1, %eax 
	je	.L9516
	cmpl	$64, %esi
	jbe	.L9519
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	orq	%r12, 40(%rdx)
.L9516:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L9501
.L9519:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9516
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9516
.L9517:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20120
.L9511:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9510
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L9510
.L9505:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9508
.L21661:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L9497
.L9494:
	movq	5792(%rsp), %rdi
	movq	5784(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%r14), %r13
	movq	%rax, %rdi
	movq	%r13, 8(%rax)
	movq	1256(%rsp), %r8
	movzbl	18(%r14), %ebx
	movzbl	18(%r8), %edx
	shrb	$3, %bl
	andl	%ebx, %r11d
	shrb	$3, %dl
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L9527
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L9530
	movl	1252(%rsp), %eax
	testl	%eax, %eax
	je	.L9529
.L9530:
	movl	1232(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L9529:
	movl	%edx, %eax
.L20122:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1252(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L9556
	testb	$8, %dl
	jne	.L9556
	movq	5784(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21663
.L9557:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L9556:
	movq	1256(%rsp), %rdx
	movzbl	18(%rdi), %r8d
	movzbl	18(%r14), %ebx
	movzbl	18(%rdx), %r14d
	movl	%r8d, %r9d
	andb	$-5, %r8b
	shrb	$3, %r9b
	shrb	$2, %bl
	orl	%r9d, %ebx
	shrb	$2, %r14b
	orl	%r14d, %ebx
	andb	$1, %bl
	salb	$2, %bl
	orb	%bl, %r8b
	movq	%rdi, %rbx
	movb	%r8b, 18(%rdi)
	jmp	.L9558
.L21663:
	movq	5792(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L9557
	jmp	.L9556
.L9527:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L9533
	movl	1252(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L9532
.L9533:
	movl	1232(%rsp), %r9d
	movl	$1, %r10d
	movl	$0, %r15d
	testl	%r9d, %r9d
	cmove	%r15d, %r10d
.L9532:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L9535
	cmpb	$25, %al
	je	.L21664
.L9535:
	testl	%r10d, %r10d
	je	.L9531
	movl	1248(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L9531:
	movl	%ebp, %eax
	jmp	.L20122
.L21664:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L9539
	cmpb	$15, %al
	je	.L9539
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L9542:
	cmpl	$128, %esi
	je	.L9544
	cmpl	$64, %esi
	jbe	.L9545
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L9544:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9548
	cmpb	$6, 16(%rax)
	jne	.L9535
	testb	$2, 62(%rax)
	je	.L9535
.L9548:
	cmpl	$128, %esi
	je	.L9550
	cmpl	$64, %esi
	jbe	.L9551
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20121:
	testl	$1, %eax 
	je	.L9550
	cmpl	$64, %esi
	jbe	.L9553
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L9550:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r15
	orq	%r8, %r15
	orq	%r9, %r15
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L9535
.L9553:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9550
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9550
.L9551:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20121
.L9545:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9544
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L9544
.L9539:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9542
.L9496:
	cmpq	$-1, %rax
	jne	.L9494
	cmpq	$0, 5792(%rsp)
	jns	.L9494
	jmp	.L9495
.L9427:
	leaq	(%r9,%r10), %rbp
	leaq	(%r8,%r11), %rsi
	cmpq	%r11, %rsi
	leaq	1(%rbp), %rax
	movq	%rsi, 5792(%rsp)
	cmovb	%rax, %rbp
	xorq	%r10, %r9 
	notq	%r9
	xorq	%rbp, %r10 
	movq	%rbp, 5784(%rsp)
	andq	%r10, %r9
.L20117:
	shrq	$63, %r9
	movl	%r9d, 1232(%rsp)
	jmp	.L9353
.L9430:
	testq	%r8, %r8
	jne	.L9431
	movq	%r9, %rax
	movq	$0, 5792(%rsp)
	negq	%rax
.L20112:
	movq	%rax, 5784(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5792(%rsp), %rdx
	addq	5784(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rdi
	movq	%rdx, 5792(%rsp)
	cmovb	%rdi, %r12
	xorq	%r12, %r9 
	movq	%r12, 5784(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20117
.L9431:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5792(%rsp)
	notq	%rax
	jmp	.L20112
.L9436:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 13216(%rsp)
	movq	%rcx, 13224(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rbp
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %edi
	shrq	$32, %rdx
	shrq	$32, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 13184(%rsp)
	leaq	5784(%rsp), %r12
	movq	%rdi, 13232(%rsp)
	movq	%rdx, 13240(%rsp)
	movq	%rbp, 13192(%rsp)
	movq	%rbx, 13200(%rsp)
	movq	%rcx, 13208(%rsp)
	movq	$0, 13120(%rsp)
	movq	$0, 13128(%rsp)
	movq	$0, 13136(%rsp)
	movq	$0, 13144(%rsp)
	movq	$0, 13152(%rsp)
	movq	$0, 13160(%rsp)
	movq	$0, 13168(%rsp)
	movq	$0, 13176(%rsp)
	xorl	%esi, %esi
.L9448:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	13216(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L9447:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	13184(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	13120(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 13120(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L9447
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 13152(%rsp,%rbp,8)
	jle	.L9448
	movq	13128(%rsp), %rdx
	movq	13144(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	13120(%rsp), %rdx
	addq	13136(%rsp), %rsi
	movq	%rdx, 5792(%rsp)
	movq	%rsi, (%r12)
	movq	13176(%rsp), %rcx
	movq	13160(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	13168(%rsp), %rcx
	addq	13152(%rsp), %rax
	testq	%r10, %r10
	js	.L21665
.L9451:
	testq	%r9, %r9
	js	.L21666
.L9457:
	cmpq	$0, (%r12)
	js	.L21667
	orq	%rcx, %rax
.L21012:
	setne	%r11b
	movzbl	%r11b, %eax
.L20116:
	movl	%eax, 1232(%rsp)
	jmp	.L9353
.L21667:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21012
.L21666:
	testq	%r11, %r11
	jne	.L9458
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L9459:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L9457
.L9458:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L9459
.L21665:
	testq	%r8, %r8
	jne	.L9452
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L9453:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L9451
.L9452:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L9453
.L9472:
	testq	%r9, %r9
	jne	.L9473
	cmpq	$1, %r8
	je	.L20115
.L9473:
	cmpq	%r8, %r11
	je	.L21668
.L9474:
	leaq	5792(%rsp), %rcx
	leaq	5784(%rsp), %rbx
	leaq	5744(%rsp), %rdi
	leaq	5736(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rdi, 16(%rsp)
.L20113:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20116
.L21668:
	cmpq	%r9, %r10
	jne	.L9474
	testq	%r8, %r8
	jne	.L9475
	testq	%r9, %r9
	je	.L9474
.L9475:
	movq	$1, 5792(%rsp)
.L20114:
	movq	$0, 5784(%rsp)
	jmp	.L9353
.L20115:
	movq	%r11, 5792(%rsp)
	jmp	.L20118
.L9478:
	testq	%r9, %r9
	jne	.L9481
	testq	%r8, %r8
	jle	.L9481
	testb	$4, 18(%r14)
	jne	.L9481
	movq	1256(%rsp), %rbp
	testb	$4, 18(%rbp)
	jne	.L9481
	testq	%r10, %r10
	jne	.L9481
	testq	%r11, %r11
	js	.L9481
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %r10
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5792(%rsp)
	jmp	.L20114
.L9481:
	leaq	5744(%rsp), %rdi
	leaq	5736(%rsp), %rdx
	leaq	5792(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5784(%rsp), %rax
	jmp	.L20113
.L9469:
	testq	%r9, %r9
	jne	.L9473
	testq	%r8, %r8
	jle	.L9472
	testb	$4, 18(%r14)
	jne	.L9472
	movq	1256(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L9472
	testq	%r10, %r10
	jne	.L9472
	testq	%r11, %r11
	js	.L9472
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5792(%rsp)
	jmp	.L20114
.L9483:
	testl	%r15d, %r15d
	je	.L9484
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L9489
.L21185:
	cmpq	%r9, %r10
	je	.L21669
.L9488:
	xorl	%ebx, %ebx
	movq	%rax, 5792(%rsp)
	cmpl	$78, %r12d
	sete	%bl
	cmpq	%rbx, 5792(%rsp)
	je	.L20115
	movq	%r8, 5792(%rsp)
	movq	%r9, 5784(%rsp)
	jmp	.L9353
.L21669:
	cmpq	%r8, %r11
	jae	.L9488
.L9489:
	movl	$1, %eax
	jmp	.L9488
.L9484:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L9489
	jmp	.L21185
.L9359:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5792(%rsp), %rbx
	leaq	5784(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21670
	cmpq	$127, %r8
	jle	.L9375
	movq	$0, 5784(%rsp)
.L20103:
	movq	$0, 5792(%rsp)
.L9376:
	cmpl	$64, %esi
	jbe	.L9379
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20104:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L9374
	cmpl	$63, %esi
	jbe	.L9383
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20106:
	movq	%rax, (%r9)
.L9374:
	movl	$1, 1248(%rsp)
	jmp	.L9353
.L9383:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20105:
	movq	%rax, (%rbx)
	jmp	.L9374
.L9379:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20104
.L9375:
	cmpq	$63, %r8
	jle	.L9377
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5784(%rsp)
	jmp	.L20103
.L9377:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%r11, %r12
	subl	%r8d, %eax
	salq	%cl, %r10
	movl	%eax, %ecx
	shrq	%cl, %r12
	movl	%r8d, %ecx
	movq	%r12, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5792(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5784(%rsp)
	jmp	.L9376
.L21670:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L9361
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L9362:
	cmpq	$127, %rdx
	jle	.L9363
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L9364:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L9367
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L9374
.L9367:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L9374
	cmpq	$63, %rax
	jle	.L9371
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20106
.L9371:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20105
.L9363:
	cmpq	$63, %rdx
	jle	.L9365
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L9364
.L9365:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L9364
.L9361:
	xorl	%edi, %edi
	jmp	.L9362
.L9358:
	negq	%r8
	jmp	.L9359
.L9386:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	cqto
	andl	$511, %r9d
	mov	%r9d, %ebp
	movl	%r9d, %edi
	idivq	%rbp
	leaq	(%rbp,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5776(%rsp), %rbp
	leaq	5768(%rsp), %rbx
	testq	%r8, %r8
	js	.L21671
	cmpq	$127, %r8
	jle	.L9403
	movq	$0, 5768(%rsp)
.L20108:
	movq	$0, 5776(%rsp)
.L9404:
	cmpl	$64, %edi
	jbe	.L9407
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20109:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L9402
	cmpl	$63, %edi
	jbe	.L9411
.L20111:
	leal	-64(%rdi), %ecx
	movq	$-1, %rdi
	salq	%cl, %rdi
	salq	%cl, %rdx
	notq	%rdi
	andq	(%rbx), %rdi
	orq	%rdx, %rdi
	movq	%rdi, (%rbx)
.L9402:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5752(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5760(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L9415
	movq	$0, 5752(%rsp)
	movq	$0, 5760(%rsp)
.L9416:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L9419
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L9425:
	movq	5760(%rsp), %r8
	movq	5752(%rsp), %r10
	orq	5776(%rsp), %r8
	orq	5768(%rsp), %r10
	movq	%r8, 5792(%rsp)
	movq	%r10, 5784(%rsp)
	jmp	.L9353
.L9419:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L9425
	cmpq	$63, %rax
	jle	.L9423
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L9425
.L9423:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L9425
.L9415:
	cmpq	$63, %rsi
	jle	.L9417
	leal	-64(%rsi), %ecx
	movq	$0, 5752(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5760(%rsp)
	jmp	.L9416
.L9417:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5752(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5760(%rsp)
	jmp	.L9416
.L9411:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20110:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L9402
.L9407:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20109
.L9403:
	cmpq	$63, %r8
	jle	.L9405
	leal	-64(%r8), %ecx
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5768(%rsp)
	jmp	.L20108
.L9405:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5768(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5776(%rsp)
	jmp	.L9404
.L21671:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L9391
	movq	$0, 5768(%rsp)
	movq	$0, 5776(%rsp)
.L9392:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L9395
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L9402
.L9395:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L9402
	cmpq	$63, %rax
	jle	.L9399
	subl	%esi, %edi
	jmp	.L20111
.L9399:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20110
.L9391:
	cmpq	$63, %rsi
	jle	.L9393
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5768(%rsp)
	shrq	%cl, %rax
.L20107:
	movq	%rax, 5776(%rsp)
	jmp	.L9392
.L9393:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5768(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20107
.L9385:
	negq	%r8
	jmp	.L9386
.L9355:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5792(%rsp)
	jmp	.L20118
.L9356:
	andq	%r8, %r11
	movq	%r11, 5792(%rsp)
.L20119:
	andq	%r9, %r10
	jmp	.L20118
.L9357:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5792(%rsp)
	jmp	.L20119
.L21660:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1252(%rsp), %eax
	movl	%eax, 1252(%rsp)
	jmp	.L9352
.L21371:
	movq	new_const.1(%rip), %r10
	movl	$25, %edi
	movq	%r10, (%rax)
	movq	%r10, 1256(%rsp)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L9338
.L21370:
	movzbl	16(%rbx), %eax
	movq	968(%rsp), %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L9320
	cmpb	$15, %al
	je	.L9320
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L9323:
	cmpl	$128, %esi
	je	.L9325
	cmpl	$64, %esi
	jbe	.L9326
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L9325:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9329
	cmpb	$6, 16(%rax)
	jne	.L9316
	testb	$2, 62(%rax)
	je	.L9316
.L9329:
	cmpl	$128, %esi
	je	.L9331
	cmpl	$64, %esi
	jbe	.L9332
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20102:
	testl	$1, %eax 
	je	.L9331
	cmpl	$64, %esi
	jbe	.L9334
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	orq	%rbx, 40(%rdx)
.L9331:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L9316
.L9334:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9331
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9331
.L9332:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20102
.L9326:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9325
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L9325
.L9320:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9323
.L21369:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L9312
.L21368:
	movq	8(%r14), %rsi
	movq	1288(%rsp), %rbx
	cmpl	$60, %r12d
	movq	%rsi, 3000(%rsp)
	movq	32(%rbx), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rbx), %r14
	je	.L9294
	cmpl	$60, %r12d
	ja	.L9311
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21011:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3000(%rsp), %rdi
.L20100:
	movq	%rax, %rdx
	call	build_complex
.L20101:
	movq	%rax, %rbx
	jmp	.L9262
.L9311:
	cmpl	$61, %r12d
	je	.L9295
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2992(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r10
	movq	%rax, %rsi
	movzbl	16(%r10), %eax
	cmpb	$6, %al
	je	.L9305
	cmpb	$10, %al
	je	.L9305
	cmpb	$11, %al
	je	.L9305
	cmpb	$12, %al
	movl	$70, %edi
	je	.L9305
.L9304:
	movq	2992(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L9308
	cmpb	$10, %al
	je	.L9308
	cmpb	$11, %al
	je	.L9308
	cmpb	$12, %al
	movl	$70, %edi
	je	.L9308
.L9307:
	movq	2992(%rsp), %rdx
.L20099:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3000(%rsp), %rdi
	jmp	.L20100
.L9308:
	movl	$62, %edi
	jmp	.L9307
.L9305:
	movl	$62, %edi
	jmp	.L9304
.L9295:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20099
.L9294:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21011
.L21367:
	movq	32(%r14), %r13
	movq	1288(%rsp), %rcx
	xorl	%ebp, %ebp
	movq	%r14, %rbx
	movq	%r13, 18528(%rsp)
	movq	40(%r14), %r8
	movq	%r8, 18536(%rsp)
	movq	48(%r14), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%rcx), %r10
	movq	%r10, 18560(%rsp)
	movq	40(%rcx), %rsi
	movq	%rsi, 18568(%rsp)
	movq	48(%rcx), %r15
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%r8, 8(%rsp)
	movq	%r15, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L9262
	movq	18576(%rsp), %rbx
	movq	18560(%rsp), %rdx
	movq	18568(%rsp), %r11
	movq	%rbx, 16(%rsp)
	movq	%rdx, (%rsp)
	movq	%r11, 8(%rsp)
	call	target_isnan
	movq	1288(%rsp), %rbx
	testl	%eax, %eax
	jne	.L9262
	movq	8(%r14), %rsi
	movq	18568(%rsp), %rdi
	movl	%r12d, 13248(%rsp)
	movq	18528(%rsp), %rcx
	movq	18536(%rsp), %r15
	movq	18544(%rsp), %r13
	movq	18560(%rsp), %r8
	movq	18576(%rsp), %r9
	movq	%rsi, 13256(%rsp)
	movq	%rdi, 13296(%rsp)
	leaq	13248(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%rcx, 13264(%rsp)
	movq	%r15, 13272(%rsp)
	movq	%r13, 13280(%rsp)
	movq	%r8, 13288(%rsp)
	movq	%r9, 13304(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L9267
	movq	13312(%rsp), %rbx
.L9268:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L9270
	cmpb	$25, %al
	je	.L21674
.L9270:
	movq	1288(%rsp), %r8
	movzbl	18(%r14), %r15d
	movzbl	18(%r8), %ecx
	shrb	$3, %r15b
	andl	$1, %r15d
	orb	%bpl, %r15b
	movzbl	18(%rbx), %ebp
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%cl, %r15b
	salb	$3, %r15b
	andb	$-9, %bpl
	orb	%r15b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %r13d
	movzbl	18(%r8), %eax
	movzbl	18(%r14), %edi
	shrb	$3, %r13b
	andb	$-5, %bpl
	shrb	$2, %al
	shrb	$2, %dil
	orl	%r13d, %edi
	orl	%eax, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L9262
.L21674:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L9274
	cmpb	$15, %al
	je	.L9274
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L9277:
	cmpl	$128, %esi
	je	.L9279
	cmpl	$64, %esi
	jbe	.L9280
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L9279:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9283
	cmpb	$6, 16(%rax)
	jne	.L9270
	testb	$2, 62(%rax)
	je	.L9270
.L9283:
	cmpl	$128, %esi
	je	.L9285
	cmpl	$64, %esi
	jbe	.L9286
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20098:
	testl	$1, %eax 
	je	.L9285
	cmpl	$64, %esi
	jbe	.L9288
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L9285:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r9
	orq	%rdi, %r9
	orq	%r8, %r9
	setne	%dl
	movzbl	%dl, %ebp
	jmp	.L9270
.L9288:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9285
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9285
.L9286:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20098
.L9280:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9279
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L9279
.L9274:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9277
.L9267:
	movq	%r14, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L9268
.L21366:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 1284(%rsp)
	movzbl	17(%r13), %ecx
	shrb	$5, %cl
	andl	%ecx, %r15d
	cmpb	$6, 16(%r13)
	je	.L21675
.L9056:
	movq	1288(%rsp), %rax
	movl	$0, 1264(%rsp)
	movl	$0, 1280(%rsp)
	movq	32(%r14), %r11
	movq	40(%r14), %r10
	movq	32(%rax), %r8
	movq	40(%rax), %r9
	leal	-59(%r12), %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %esi
	jmp	*.L9197(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L9197:
	.quad	.L9131
	.quad	.L9134
	.quad	.L9140
	.quad	.L9173
	.quad	.L9173
	.quad	.L9173
	.quad	.L9176
	.quad	.L9182
	.quad	.L9182
	.quad	.L9182
	.quad	.L9185
	.quad	.L18929
	.quad	.L9173
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L9187
	.quad	.L9187
	.quad	.L18929
	.quad	.L18929
	.quad	.L9063
	.quad	.L9062
	.quad	.L9090
	.quad	.L9089
	.quad	.L9058
	.quad	.L9059
	.quad	.L9060
	.quad	.L9061
	.text
.L9058:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5856(%rsp)
.L20093:
	movq	%r10, 5848(%rsp)
.L9057:
	movl	1284(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L9198
	movq	5848(%rsp), %rax
	testq	%rax, %rax
	jne	.L9200
	cmpq	$0, 5856(%rsp)
	js	.L9200
.L9199:
	movl	1264(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L9198
	testb	$8, 18(%r14)
	jne	.L9198
	movq	1288(%rsp), %r12
	testb	$8, 18(%r12)
	jne	.L9198
	cmpq	$0, size_htab.0(%rip)
	movq	5856(%rsp), %rbx
	je	.L21676
.L9201:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L9205
	cmpb	$25, %al
	je	.L21677
.L9205:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20101
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L9262
.L21677:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L9209
	cmpb	$15, %al
	je	.L9209
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L9212:
	cmpl	$128, %esi
	je	.L9214
	cmpl	$64, %esi
	jbe	.L9215
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L9214:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9218
	cmpb	$6, 16(%rax)
	jne	.L9205
	testb	$2, 62(%rax)
	je	.L9205
.L9218:
	cmpl	$128, %esi
	je	.L9220
	cmpl	$64, %esi
	jbe	.L9221
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20095:
	testl	$1, %eax 
	je	.L9220
	cmpl	$64, %esi
	jbe	.L9223
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L9220:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L9205
.L9223:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9220
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9220
.L9221:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20095
.L9215:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9214
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L9214
.L9209:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9212
.L21676:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L9201
.L9198:
	movq	5856(%rsp), %rdi
	movq	5848(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	1288(%rsp), %r12
	movl	$1, %r11d
	movzbl	18(%r14), %r13d
	movzbl	18(%r12), %r8d
	shrb	$3, %r13b
	andl	%r13d, %r11d
	shrb	$3, %r8b
	movl	%r8d, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L9231
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L9234
	movl	1284(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L9233
.L9234:
	movl	1264(%rsp), %esi
	movl	$1, %eax
	testl	%esi, %esi
	cmovne	%eax, %edx
.L9233:
	movl	%edx, %eax
.L20097:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1284(%rsp), %eax
	testl	%eax, %eax
	je	.L9260
	testb	$8, %dl
	jne	.L9260
	movq	5848(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21678
.L9261:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L9260:
	movq	1288(%rsp), %rdx
	movzbl	18(%rdi), %ebx
	movzbl	18(%r14), %r11d
	movzbl	18(%rdx), %r14d
	movl	%ebx, %r9d
	andb	$-5, %bl
	shrb	$3, %r9b
	shrb	$2, %r11b
	orl	%r9d, %r11d
	shrb	$2, %r14b
	orl	%r14d, %r11d
	andb	$1, %r11b
	salb	$2, %r11b
	orb	%r11b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L9262
.L21678:
	movq	5856(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L9261
	jmp	.L9260
.L9231:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L9237
	movl	1284(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L9236
.L9237:
	movl	1264(%rsp), %r8d
	movl	$1, %r10d
	movl	$0, %eax
	testl	%r8d, %r8d
	cmove	%eax, %r10d
.L9236:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L9239
	cmpb	$25, %al
	je	.L21679
.L9239:
	testl	%r10d, %r10d
	je	.L9235
	movl	1280(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L9235:
	movl	%ebp, %eax
	jmp	.L20097
.L21679:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L9243
	cmpb	$15, %al
	je	.L9243
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L9246:
	cmpl	$128, %esi
	je	.L9248
	cmpl	$64, %esi
	jbe	.L9249
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L9248:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9252
	cmpb	$6, 16(%rax)
	jne	.L9239
	testb	$2, 62(%rax)
	je	.L9239
.L9252:
	cmpl	$128, %esi
	je	.L9254
	cmpl	$64, %esi
	jbe	.L9255
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20096:
	testl	$1, %eax 
	je	.L9254
	cmpl	$64, %esi
	jbe	.L9257
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L9254:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L9239
.L9257:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9254
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9254
.L9255:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20096
.L9249:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9248
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L9248
.L9243:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9246
.L9200:
	cmpq	$-1, %rax
	jne	.L9198
	cmpq	$0, 5856(%rsp)
	jns	.L9198
	jmp	.L9199
.L9131:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5856(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5848(%rsp)
	andq	%r10, %r9
.L20092:
	shrq	$63, %r9
	movl	%r9d, 1264(%rsp)
	jmp	.L9057
.L9134:
	testq	%r8, %r8
	jne	.L9135
	movq	%r9, %rax
	movq	$0, 5856(%rsp)
	negq	%rax
.L20087:
	movq	%rax, 5848(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5856(%rsp), %rdx
	addq	5848(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 5856(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 5848(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20092
.L9135:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5856(%rsp)
	notq	%rax
	jmp	.L20087
.L9140:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 13392(%rsp)
	movq	%rcx, 13400(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 13424(%rsp)
	leaq	5848(%rsp), %r12
	movq	%rbp, 13408(%rsp)
	movq	%rdx, 13416(%rsp)
	movq	%rdi, 13432(%rsp)
	movq	%rbx, 13440(%rsp)
	movq	%rcx, 13448(%rsp)
	movq	$0, 13328(%rsp)
	movq	$0, 13336(%rsp)
	movq	$0, 13344(%rsp)
	movq	$0, 13352(%rsp)
	movq	$0, 13360(%rsp)
	movq	$0, 13368(%rsp)
	movq	$0, 13376(%rsp)
	movq	$0, 13384(%rsp)
	xorl	%esi, %esi
.L9152:
	movslq	%esi,%rdx
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	leaq	0(,%rdx,8), %rbp
	xorl	%ebx, %ebx
.L9151:
	movq	13424(%rsp,%rbx), %rdx
	leal	(%rdi,%rsi), %eax
	addq	$8, %rbx
	imulq	13392(%rsp,%rbp), %rdx
	cltq
	incl	%edi
	salq	$3, %rax
	leaq	(%rdx,%rcx), %rdx
	addq	13328(%rsp,%rax), %rdx
	movq	%rdx, %rcx
	andl	$4294967295, %ecx
	movq	%rcx, 13328(%rsp,%rax)
	movq	%rdx, %rcx
	shrq	$32, %rcx
	cmpl	$3, %edi
	jle	.L9151
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rcx, 13360(%rsp,%rdi,8)
	jle	.L9152
	movq	13336(%rsp), %rbp
	movq	13352(%rsp), %rsi
	salq	$32, %rbp
	salq	$32, %rsi
	addq	13328(%rsp), %rbp
	addq	13344(%rsp), %rsi
	movq	%rbp, 5856(%rsp)
	movq	%rsi, (%r12)
	movq	13384(%rsp), %rcx
	movq	13368(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	13376(%rsp), %rcx
	addq	13360(%rsp), %rax
	testq	%r10, %r10
	js	.L21680
.L9155:
	testq	%r9, %r9
	js	.L21681
.L9161:
	cmpq	$0, (%r12)
	js	.L21682
	orq	%rcx, %rax
.L21010:
	setne	%r9b
	movzbl	%r9b, %eax
.L20091:
	movl	%eax, 1264(%rsp)
	jmp	.L9057
.L21682:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21010
.L21681:
	testq	%r11, %r11
	jne	.L9162
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L9163:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L9161
.L9162:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L9163
.L21680:
	testq	%r8, %r8
	jne	.L9156
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L9157:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L9155
.L9156:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L9157
.L9176:
	testq	%r9, %r9
	jne	.L9177
	cmpq	$1, %r8
	je	.L20090
.L9177:
	cmpq	%r8, %r11
	je	.L21683
.L9178:
	leaq	5856(%rsp), %rdx
	leaq	5848(%rsp), %rbx
	leaq	5808(%rsp), %rcx
	leaq	5800(%rsp), %rax
	movq	%rdx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20088:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20091
.L21683:
	cmpq	%r9, %r10
	jne	.L9178
	testq	%r8, %r8
	jne	.L9179
	testq	%r9, %r9
	je	.L9178
.L9179:
	movq	$1, 5856(%rsp)
.L20089:
	movq	$0, 5848(%rsp)
	jmp	.L9057
.L20090:
	movq	%r11, 5856(%rsp)
	jmp	.L20093
.L9182:
	testq	%r9, %r9
	jne	.L9185
	testq	%r8, %r8
	jle	.L9185
	testb	$4, 18(%r14)
	jne	.L9185
	movq	1288(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L9185
	testq	%r10, %r10
	jne	.L9185
	testq	%r11, %r11
	js	.L9185
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5856(%rsp)
	jmp	.L20089
.L9185:
	leaq	5808(%rsp), %rbx
	leaq	5800(%rsp), %rcx
	leaq	5856(%rsp), %rbp
	movq	%rbx, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	leaq	5848(%rsp), %rax
	jmp	.L20088
.L9173:
	testq	%r9, %r9
	jne	.L9177
	testq	%r8, %r8
	jle	.L9176
	testb	$4, 18(%r14)
	jne	.L9176
	movq	1288(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L9176
	testq	%r10, %r10
	jne	.L9176
	testq	%r11, %r11
	js	.L9176
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r10
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5856(%rsp)
	jmp	.L20089
.L9187:
	testl	%r15d, %r15d
	je	.L9188
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L9193
.L21184:
	cmpq	%r9, %r10
	je	.L21684
.L9192:
	xorl	%edx, %edx
	movq	%rax, 5856(%rsp)
	cmpl	$78, %r12d
	sete	%dl
	cmpq	%rdx, 5856(%rsp)
	je	.L20090
	movq	%r8, 5856(%rsp)
	movq	%r9, 5848(%rsp)
	jmp	.L9057
.L21684:
	cmpq	%r8, %r11
	jae	.L9192
.L9193:
	movl	$1, %eax
	jmp	.L9192
.L9188:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L9193
	jmp	.L21184
.L9063:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5856(%rsp), %rbx
	leaq	5848(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21685
	cmpq	$127, %r8
	jle	.L9079
	movq	$0, 5848(%rsp)
.L20078:
	movq	$0, 5856(%rsp)
.L9080:
	cmpl	$64, %esi
	jbe	.L9083
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20079:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L9078
	cmpl	$63, %esi
	jbe	.L9087
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20081:
	movq	%rax, (%r9)
.L9078:
	movl	$1, 1280(%rsp)
	jmp	.L9057
.L9087:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20080:
	movq	%rax, (%rbx)
	jmp	.L9078
.L9083:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20079
.L9079:
	cmpq	$63, %r8
	jle	.L9081
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5848(%rsp)
	jmp	.L20078
.L9081:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5856(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5848(%rsp)
	jmp	.L9080
.L21685:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L9065
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L9066:
	cmpq	$127, %rdx
	jle	.L9067
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L9068:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L9071
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L9078
.L9071:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L9078
	cmpq	$63, %rax
	jle	.L9075
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20081
.L9075:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20080
.L9067:
	cmpq	$63, %rdx
	jle	.L9069
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L9068
.L9069:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L9068
.L9065:
	xorl	%edi, %edi
	jmp	.L9066
.L9062:
	negq	%r8
	jmp	.L9063
.L9090:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5840(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5832(%rsp), %rbx
	testq	%r8, %r8
	js	.L21686
	cmpq	$127, %r8
	jle	.L9107
	movq	$0, 5832(%rsp)
.L20083:
	movq	$0, 5840(%rsp)
.L9108:
	cmpl	$64, %edi
	jbe	.L9111
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20084:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L9106
	cmpl	$63, %edi
	jbe	.L9115
.L20086:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L9106:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5816(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5824(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L9119
	movq	$0, 5816(%rsp)
	movq	$0, 5824(%rsp)
.L9120:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L9123
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L9129:
	movq	5824(%rsp), %rdi
	movq	5816(%rsp), %r10
	orq	5840(%rsp), %rdi
	orq	5832(%rsp), %r10
	movq	%rdi, 5856(%rsp)
	movq	%r10, 5848(%rsp)
	jmp	.L9057
.L9123:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L9129
	cmpq	$63, %rax
	jle	.L9127
	subl	%esi, %r9d
	leal	-64(%r9), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%rdi), %r9
	orq	%rdx, %r9
	movq	%r9, (%rdi)
	jmp	.L9129
.L9127:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L9129
.L9119:
	cmpq	$63, %rsi
	jle	.L9121
	leal	-64(%rsi), %ecx
	movq	$0, 5816(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5824(%rsp)
	jmp	.L9120
.L9121:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5816(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5824(%rsp)
	jmp	.L9120
.L9115:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20085:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L9106
.L9111:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20084
.L9107:
	cmpq	$63, %r8
	jle	.L9109
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 5832(%rsp)
	jmp	.L20083
.L9109:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5832(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5840(%rsp)
	jmp	.L9108
.L21686:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L9095
	movq	$0, 5832(%rsp)
	movq	$0, 5840(%rsp)
.L9096:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L9099
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L9106
.L9099:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L9106
	cmpq	$63, %rax
	jle	.L9103
	subl	%esi, %edi
	jmp	.L20086
.L9103:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20085
.L9095:
	cmpq	$63, %rsi
	jle	.L9097
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5832(%rsp)
	shrq	%cl, %rax
.L20082:
	movq	%rax, 5840(%rsp)
	jmp	.L9096
.L9097:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5832(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20082
.L9089:
	negq	%r8
	jmp	.L9090
.L9059:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5856(%rsp)
	jmp	.L20093
.L9060:
	andq	%r8, %r11
	movq	%r11, 5856(%rsp)
.L20094:
	andq	%r9, %r10
	jmp	.L20093
.L9061:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5856(%rsp)
	jmp	.L20094
.L21675:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1284(%rsp), %eax
	movl	%eax, 1284(%rsp)
	jmp	.L9056
.L21365:
	movq	new_const.1(%rip), %r10
	movl	$25, %edi
	movq	%r10, (%rax)
	movq	%r10, 1288(%rsp)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L9042
.L21364:
	movzbl	16(%rbx), %eax
	movq	3632(%rsp), %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L9024
	cmpb	$15, %al
	je	.L9024
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L9027:
	cmpl	$128, %esi
	je	.L9029
	cmpl	$64, %esi
	jbe	.L9030
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L9029:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L9033
	cmpb	$6, 16(%rax)
	jne	.L9020
	testb	$2, 62(%rax)
	je	.L9020
.L9033:
	cmpl	$128, %esi
	je	.L9035
	cmpl	$64, %esi
	jbe	.L9036
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20077:
	testl	$1, %eax 
	je	.L9035
	cmpl	$64, %esi
	jbe	.L9038
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L9035:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L9020
.L9038:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L9035
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L9035
.L9036:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20077
.L9030:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L9029
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L9029
.L9024:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L9027
.L21363:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L9016
.L9009:
	movq	7688(%rsp), %r12
	movq	7336(%rsp), %r14
	movl	$88, %ebx
	movq	global_trees(%rip), %rsi
.L13402:
	movzbl	16(%r12), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L13403
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L13403
	movq	8(%r12), %r8
	movq	8(%rcx), %r9
	movzbl	61(%r8), %r11d
	movzbl	61(%r9), %r10d
	andb	$-2, %r11b
	andb	$-2, %r10b
	cmpb	%r10b, %r11b
	jne	.L13403
	movq	%rcx, %r12
	jmp	.L13402
.L13403:
	movq	global_trees(%rip), %rsi
.L13407:
	movzbl	16(%r14), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L13408
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L13408
	movq	8(%r14), %r15
	movq	8(%rcx), %rdx
	movzbl	61(%r15), %ebp
	movzbl	61(%rdx), %edi
	andb	$-2, %bpl
	andb	$-2, %dil
	cmpb	%dil, %bpl
	jne	.L13408
	movq	%rcx, %r14
	jmp	.L13407
.L13408:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L21687
	cmpb	$26, %al
	je	.L21688
	cmpb	$27, %al
	je	.L21689
	movq	$0, 688(%rsp)
.L13619:
	movq	688(%rsp), %rdi
	call	integer_zerop
	testl	%eax, %eax
	jne	.L13669
	movq	688(%rsp), %r12
	movq	536(%rsp), %r14
	movl	$88, %ebx
	movq	global_trees(%rip), %rsi
.L13670:
	movzbl	16(%r12), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L13671
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L13671
	movq	8(%r12), %r15
	movq	8(%rcx), %rdi
	movzbl	61(%r15), %r13d
	movzbl	61(%rdi), %r8d
	andb	$-2, %r13b
	andb	$-2, %r8b
	cmpb	%r8b, %r13b
	jne	.L13671
	movq	%rcx, %r12
	jmp	.L13670
.L13671:
	movq	global_trees(%rip), %rsi
.L13675:
	movzbl	16(%r14), %r9d
	subb	$114, %r9b
	cmpb	$2, %r9b
	ja	.L13676
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L13676
	movq	8(%r14), %r10
	movq	8(%rcx), %rdx
	movzbl	61(%r10), %ebp
	movzbl	61(%rdx), %r11d
	andb	$-2, %bpl
	andb	$-2, %r11b
	cmpb	%r11b, %bpl
	jne	.L13676
	movq	%rcx, %r14
	jmp	.L13675
.L13676:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L21690
	cmpb	$26, %al
	je	.L21691
	cmpb	$27, %al
	je	.L21692
	movq	$0, 696(%rsp)
.L13887:
	movq	544(%rsp), %r14
	movq	global_trees(%rip), %rsi
	movl	$88, %r12d
.L13931:
	movq	688(%rsp), %rdi
	movzbl	16(%rdi), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L13932
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L13932
	movq	8(%rdi), %r13
	movq	8(%rcx), %rdi
	movzbl	61(%r13), %r8d
	movzbl	61(%rdi), %r11d
	andb	$-2, %r8b
	andb	$-2, %r11b
	cmpb	%r11b, %r8b
	jne	.L13932
	movq	%rcx, 688(%rsp)
	jmp	.L13931
.L13932:
	movq	global_trees(%rip), %rsi
.L13936:
	movzbl	16(%r14), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L13937
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L13937
	movq	8(%r14), %r9
	movq	8(%rcx), %rdx
	movzbl	61(%r9), %ebx
	movzbl	61(%rdx), %r15d
	andb	$-2, %bl
	andb	$-2, %r15b
	cmpb	%r15b, %bl
	jne	.L13937
	movq	%rcx, %r14
	jmp	.L13936
.L13937:
	movq	688(%rsp), %rbp
	movzbl	16(%rbp), %eax
	cmpb	$25, %al
	je	.L21693
	cmpb	$26, %al
	je	.L21694
	cmpb	$27, %al
	je	.L21695
	xorl	%ebx, %ebx
.L14148:
	movq	696(%rsp), %rsi
	movq	%rbx, %rdi
	call	simple_cst_equal
	decl	%eax
	je	.L13669
	cmpl	$102, 1780(%rsp)
	je	.L21696
	movl	$.LC7, %edi
	xorl	%eax, %eax
	call	warning
	movq	3736(%rsp), %rdi
	movq	global_trees+88(%rip), %rsi
.L20600:
	call	convert
	jmp	.L20884
.L21696:
	movl	$.LC6, %edi
	xorl	%eax, %eax
	call	warning
	movq	3736(%rsp), %rdi
	movq	global_trees+96(%rip), %rsi
	jmp	.L20600
.L13669:
	movl	7704(%rsp), %esi
	xorl	%r15d, %r15d
	movq	3592(%rsp), %r13
	movl	3624(%rsp), %r14d
	movl	3616(%rsp), %eax
	testl	%esi, %esi
	jne	.L14195
	movl	7344(%rsp), %edi
	testl	%edi, %edi
	je	.L14194
.L14195:
	movl	$1, %r15d
.L14194:
	cmpq	$0, size_htab.0(%rip)
	movslq	%eax,%rbx
	movq	sizetype_tab+24(%rip), %rbp
	je	.L21697
.L14196:
	movq	new_const.1(%rip), %r9
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r9), %eax
	decq	%rcx
	movq	%rbx, 32(%r9)
	movq	%rcx, 40(%r9)
	movq	%rbp, 8(%r9)
	movq	%r9, %r8
	movq	%r9, %r11
	movq	%r9, %rdx
	cmpb	$26, %al
	je	.L14200
	cmpb	$25, %al
	je	.L21698
.L14200:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %eax
	movl	$1, %edx
	andb	$-5, %sil
	orb	%al, %sil
	movb	%sil, 18(%r11)
	leal	0(,%r10,8), %r11d
	movzbl	18(%r8), %r10d
	andb	$-9, %r10b
	orb	%r11b, %r10b
	movb	%r10b, 18(%r8)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21699
	movq	%rdx, %r12
.L14222:
	cmpq	$0, size_htab.0(%rip)
	movslq	%r14d,%rbp
	movq	sizetype_tab(%rip), %rbx
	je	.L21700
.L14225:
	movq	new_const.1(%rip), %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movq	%rdx, %rdi
	movq	%rbp, 32(%rdx)
	movq	%rcx, 40(%rdx)
	movzbl	16(%rdi), %eax
	movq	%rbx, 8(%rdx)
	movq	%rdx, %r11
	cmpb	$26, %al
	je	.L14229
	cmpb	$25, %al
	je	.L21701
.L14229:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %eax
	movl	$1, %edx
	andb	$-5, %sil
	orb	%al, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r9d
	leal	0(,%r10,8), %r11d
	andb	$-9, %r9b
	orb	%r11b, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L21702
	movq	%rcx, %rbx
.L14251:
	movq	3656(%rsp), %rdx
	movq	%r13, %rsi
	movq	%r12, %r8
	movl	$40, %edi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	movl	%r15d, %r12d
	call	build
	salb	$5, %r12b
	movq	%rax, 552(%rsp)
	movzbl	17(%rax), %r15d
	andb	$-33, %r15b
	orb	%r12b, %r15b
	movb	%r15b, 17(%rax)
	movq	global_trees(%rip), %rsi
	movq	7336(%rsp), %r14
	movq	7688(%rsp), %r12
.L14255:
	movzbl	16(%r12), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L14256
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L14256
	movq	8(%r12), %rbp
	movq	8(%rcx), %rdx
	movzbl	61(%rbp), %ebx
	movzbl	61(%rdx), %r10d
	andb	$-2, %bl
	andb	$-2, %r10b
	cmpb	%r10b, %bl
	jne	.L14256
	movq	%rcx, %r12
	jmp	.L14255
.L14256:
	movq	global_trees(%rip), %rsi
.L14260:
	movzbl	16(%r14), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L14261
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L14261
	movq	8(%r14), %r15
	movq	8(%rcx), %r13
	movzbl	61(%r15), %r11d
	movzbl	61(%r13), %r9d
	andb	$-2, %r11b
	andb	$-2, %r9b
	cmpb	%r9b, %r11b
	jne	.L14261
	movq	%rcx, %r14
	jmp	.L14260
.L14261:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L21703
	cmpb	$26, %al
	je	.L21704
	cmpb	$27, %al
	je	.L21705
	xorl	%ebx, %ebx
.L14472:
	movl	3624(%rsp), %r10d
	movq	%rbx, 7688(%rsp)
	movq	%rbx, 2648(%rsp)
	movq	$-1, %rdi
	movq	%rdi, %rsi
	movl	%r10d, 2644(%rsp)
	movq	8(%rbx), %rbp
	movzwl	60(%rbp), %r9d
	andl	$511, %r9d
	movl	%r9d, 2640(%rsp)
	call	build_int_2_wide
	movq	%rbp, %rdi
	movq	%rax, %r14
	call	signed_type
	movzbl	16(%r14), %edx
	movq	%rax, 8(%r14)
	movq	%r14, %rsi
	cmpb	$26, %dl
	je	.L14524
	cmpb	$25, %dl
	je	.L21706
.L14524:
	movl	2640(%rsp), %ebp
	movl	$82, %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2644(%rsp), %ebp
	cmpq	$0, size_htab.0(%rip)
	je	.L21707
.L14545:
	movq	new_const.1(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movzbl	16(%rsi), %eax
	movq	%rbp, 32(%rsi)
	movq	%rcx, 40(%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	movq	%rsi, %r11
	movq	%rsi, %rdx
	cmpb	$26, %al
	je	.L14549
	cmpb	$25, %al
	je	.L21708
.L14549:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %esi
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%sil, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r8d
	andb	$-9, %r8b
	orb	%al, %r8b
	movb	%r8b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21709
	movq	%rdx, 616(%rsp)
.L14571:
	movq	global_trees(%rip), %rsi
.L14574:
	movzbl	16(%r14), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L14575
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L14575
	movq	8(%r14), %r15
	movq	8(%rcx), %rdx
	movzbl	61(%r15), %ebx
	movzbl	61(%rdx), %edi
	andb	$-2, %bl
	andb	$-2, %dil
	cmpb	%dil, %bl
	jne	.L14575
	movq	%rcx, %r14
	jmp	.L14574
.L14575:
	movq	global_trees(%rip), %rsi
.L14579:
	movq	616(%rsp), %rdi
	movzbl	16(%rdi), %ebp
	subb	$114, %bpl
	cmpb	$2, %bpl
	ja	.L14580
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L14580
	movq	8(%rdi), %r11
	movq	8(%rcx), %r9
	movzbl	61(%r11), %r8d
	movzbl	61(%r9), %r13d
	andb	$-2, %r8b
	andb	$-2, %r13b
	cmpb	%r13b, %r8b
	jne	.L14580
	movq	%rcx, 616(%rsp)
	jmp	.L14579
.L14580:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21710
	cmpb	$26, %al
	je	.L21711
	cmpb	$27, %al
	je	.L21712
	xorl	%ebp, %ebp
.L14791:
	movl	2640(%rsp), %r12d
	movq	sizetype_tab(%rip), %rbx
	subl	2644(%rsp), %r12d
	cmpq	$0, size_htab.0(%rip)
	je	.L21713
.L14835:
	movq	new_const.1(%rip), %r11
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movq	%r11, %r8
	movq	%r12, 32(%r11)
	movq	%rcx, 40(%r11)
	movzbl	16(%r8), %eax
	movq	%rbx, 8(%r11)
	movq	%r8, %rdx
	cmpb	$26, %al
	je	.L14839
	cmpb	$25, %al
	je	.L21714
.L14839:
	movzbl	18(%r11), %edi
	leal	0(,%r10,4), %r12d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %dil
	orb	%r12b, %dil
	movb	%dil, 18(%r11)
	movzbl	18(%r8), %r13d
	andb	$-9, %r13b
	orb	%al, %r13b
	movb	%r13b, 18(%r8)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21715
	movq	%rdx, %r14
.L14861:
	movq	global_trees(%rip), %rsi
.L14864:
	movzbl	16(%rbp), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L14865
	movq	32(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	.L14865
	movq	8(%rbp), %r11
	movq	8(%rcx), %rdx
	movzbl	61(%r11), %r15d
	movzbl	61(%rdx), %r10d
	andb	$-2, %r15b
	andb	$-2, %r10b
	cmpb	%r10b, %r15b
	jne	.L14865
	movq	%rcx, %rbp
	jmp	.L14864
.L14865:
	movq	global_trees(%rip), %rsi
.L14869:
	movzbl	16(%r14), %ebx
	subb	$114, %bl
	cmpb	$2, %bl
	ja	.L14870
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L14870
	movq	8(%r14), %r12
	movq	8(%rcx), %rdi
	movzbl	61(%r12), %r13d
	movzbl	61(%rdi), %r9d
	andb	$-2, %r13b
	andb	$-2, %r9b
	cmpb	%r9b, %r13b
	jne	.L14870
	movq	%rcx, %r14
	jmp	.L14869
.L14870:
	movzbl	16(%rbp), %eax
	cmpb	$25, %al
	je	.L21716
	cmpb	$26, %al
	je	.L21717
	cmpb	$27, %al
	je	.L21718
	xorl	%ebx, %ebx
.L15081:
	movq	2648(%rsp), %rdi
	movq	%rbx, %rsi
	call	tree_int_cst_equal
	testl	%eax, %eax
	je	.L21719
.L14522:
	movq	global_trees(%rip), %rsi
	movl	$86, %r12d
.L15126:
	movq	544(%rsp), %rbp
	movzbl	16(%rbp), %r9d
	subb	$114, %r9b
	cmpb	$2, %r9b
	ja	.L15127
	movq	32(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	.L15127
	movq	8(%rbp), %r13
	movq	8(%rcx), %rdi
	movzbl	61(%r13), %r10d
	movzbl	61(%rdi), %r11d
	andb	$-2, %r10b
	andb	$-2, %r11b
	cmpb	%r11b, %r10b
	jne	.L15127
	movq	%rcx, 544(%rsp)
	jmp	.L15126
.L15127:
	movq	global_trees(%rip), %rsi
.L15131:
	movq	536(%rsp), %rdx
	movzbl	16(%rdx), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L15132
	movq	32(%rdx), %rcx
	cmpq	%rsi, %rcx
	je	.L15132
	movq	8(%rdx), %rbx
	movq	8(%rcx), %rdx
	movzbl	61(%rbx), %r14d
	movzbl	61(%rdx), %ebp
	andb	$-2, %r14b
	andb	$-2, %bpl
	cmpb	%bpl, %r14b
	jne	.L15132
	movq	%rcx, 536(%rsp)
	jmp	.L15131
.L15132:
	movq	544(%rsp), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$25, %al
	je	.L21720
	cmpb	$26, %al
	je	.L21721
	cmpb	$27, %al
	je	.L21722
	xorl	%ebx, %ebx
.L15343:
	movl	1780(%rsp), %edi
	movq	3736(%rsp), %rsi
	movq	%rbx, %rcx
	movq	552(%rsp), %rdx
	jmp	.L20601
.L21722:
	movq	544(%rsp), %r15
	movq	544(%rsp), %r9
	cmpl	$60, %r12d
	movq	536(%rsp), %rbx
	movq	8(%r15), %rax
	movq	%rax, 2600(%rsp)
	movq	40(%rbx), %r14
	movq	32(%rbx), %rbp
	movq	32(%r9), %r13
	movq	40(%r9), %r15
	je	.L15375
	cmpl	$60, %r12d
	ja	.L15386
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21051:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2600(%rsp), %rdi
.L20598:
	movq	%rax, %rdx
	call	build_complex
.L20599:
	movq	%rax, %rbx
	jmp	.L15343
.L15386:
	cmpl	$61, %r12d
	je	.L15376
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2592(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L15380
	cmpb	$10, %al
	je	.L15380
	cmpb	$11, %al
	je	.L15380
	cmpb	$12, %al
	movl	$70, %edi
	je	.L15380
.L15379:
	movq	2592(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L15383
	cmpb	$10, %al
	je	.L15383
	cmpb	$11, %al
	je	.L15383
	cmpb	$12, %al
	movl	$70, %edi
	je	.L15383
.L15382:
	movq	2592(%rsp), %rdx
.L20597:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2600(%rsp), %rdi
	jmp	.L20598
.L15383:
	movl	$62, %edi
	jmp	.L15382
.L15380:
	movl	$62, %edi
	jmp	.L15379
.L15376:
	movq	%r13, %rsi
	movl	$61, %edi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r13
	call	const_binop
	movq	%r13, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20597
.L15375:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21051
.L21721:
	movq	544(%rsp), %r9
	movq	536(%rsp), %r14
	xorl	%ebp, %ebp
	movq	32(%r9), %rsi
	movq	%rsi, 18528(%rsp)
	movq	40(%r9), %r13
	movq	%r13, 18536(%rsp)
	movq	48(%r9), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %r15
	movq	%r15, 18560(%rsp)
	movq	40(%r14), %r10
	movq	%r10, 18568(%rsp)
	movq	48(%r14), %rdx
	movq	%rdi, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	%r13, 8(%rsp)
	movq	%rdx, 18576(%rsp)
	call	target_isnan
	movq	544(%rsp), %rbx
	testl	%eax, %eax
	jne	.L15343
	movq	18576(%rsp), %rbx
	movq	18560(%rsp), %r11
	movq	18568(%rsp), %r8
	movq	%rbx, 16(%rsp)
	movq	%r11, (%rsp)
	movq	%r8, 8(%rsp)
	call	target_isnan
	movq	536(%rsp), %rbx
	testl	%eax, %eax
	jne	.L15343
	movq	544(%rsp), %rax
	movq	18544(%rsp), %rsi
	movq	18568(%rsp), %rdi
	movq	18528(%rsp), %r14
	movq	18536(%rsp), %rdx
	movq	18560(%rsp), %r13
	movq	8(%rax), %r10
	movq	18576(%rsp), %rcx
	movl	%r12d, 9088(%rsp)
	movq	%rsi, 9120(%rsp)
	movq	%rdi, 9136(%rsp)
	movq	%r14, 9104(%rsp)
	leaq	9088(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%rdx, 9112(%rsp)
	movq	%r10, 9096(%rsp)
	movq	%r13, 9128(%rsp)
	movq	%rcx, 9144(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L15348
	movq	9152(%rsp), %rbx
.L15349:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L15351
	cmpb	$25, %al
	je	.L21725
.L15351:
	movq	544(%rsp), %r10
	movq	536(%rsp), %r14
	movzbl	18(%r10), %esi
	movzbl	18(%r14), %edx
	shrb	$3, %sil
	shrb	$3, %dl
	andl	$1, %esi
	andl	$1, %edx
	orb	%bpl, %sil
	movzbl	18(%rbx), %ebp
	orb	%dl, %sil
	salb	$3, %sil
	andb	$-9, %bpl
	orb	%sil, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %edi
	movzbl	18(%r14), %r13d
	movzbl	18(%r10), %ecx
	shrb	$3, %dil
	andb	$-5, %bpl
	shrb	$2, %r13b
	shrb	$2, %cl
	orl	%edi, %ecx
	orl	%r13d, %ecx
	andb	$1, %cl
	salb	$2, %cl
	orb	%cl, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L15343
.L21725:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L15355
	cmpb	$15, %al
	je	.L15355
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L15358:
	cmpl	$128, %esi
	je	.L15360
	cmpl	$64, %esi
	jbe	.L15361
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L15360:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L15364
	cmpb	$6, 16(%rax)
	jne	.L15351
	testb	$2, 62(%rax)
	je	.L15351
.L15364:
	cmpl	$128, %esi
	je	.L15366
	cmpl	$64, %esi
	jbe	.L15367
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20596:
	testl	$1, %eax 
	je	.L15366
	cmpl	$64, %esi
	jbe	.L15369
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	orq	%r9, 40(%rdx)
.L15366:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r11
	orq	%rdi, %r11
	orq	%r8, %r11
	setne	%r8b
	movzbl	%r8b, %ebp
	jmp	.L15351
.L15369:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L15366
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L15366
.L15367:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20596
.L15361:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L15360
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L15360
.L15355:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L15358
.L15348:
	movq	544(%rsp), %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L15349
.L21720:
	movq	8(%rcx), %r13
	movl	$1, %r14d
	xorl	%r15d, %r15d
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r14d
	cmpb	$6, 16(%r13)
	je	.L21726
.L15137:
	movq	544(%rsp), %r8
	movq	536(%rsp), %rax
	movl	$0, 512(%rsp)
	movl	$0, 532(%rsp)
	movq	32(%r8), %r11
	movq	40(%r8), %r10
	movq	40(%rax), %r9
	movq	32(%rax), %r8
	leal	-59(%r12), %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %edi
	jmp	*.L15278(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L15278:
	.quad	.L15212
	.quad	.L15215
	.quad	.L15221
	.quad	.L15254
	.quad	.L15254
	.quad	.L15254
	.quad	.L15257
	.quad	.L15263
	.quad	.L15263
	.quad	.L15263
	.quad	.L15266
	.quad	.L18929
	.quad	.L15254
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L15268
	.quad	.L15268
	.quad	.L18929
	.quad	.L18929
	.quad	.L15144
	.quad	.L15143
	.quad	.L15171
	.quad	.L15170
	.quad	.L15139
	.quad	.L15140
	.quad	.L15141
	.quad	.L15142
	.text
.L15139:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 4576(%rsp)
.L20591:
	movq	%r10, 4568(%rsp)
.L15138:
	testl	%r15d, %r15d
	je	.L15279
	movq	4568(%rsp), %rax
	testq	%rax, %rax
	jne	.L15281
	cmpq	$0, 4576(%rsp)
	js	.L15281
.L15280:
	movl	512(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L15279
	movq	544(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L15279
	movq	536(%rsp), %r12
	testb	$8, 18(%r12)
	jne	.L15279
	cmpq	$0, size_htab.0(%rip)
	movq	4576(%rsp), %rbx
	je	.L21727
.L15282:
	movq	new_const.1(%rip), %r15
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r15), %eax
	decq	%rcx
	movq	%rbx, 32(%r15)
	movq	%rcx, 40(%r15)
	movq	%r13, 8(%r15)
	movq	%r15, %rdi
	movq	%r15, %r11
	movq	%r15, %rdx
	cmpb	$26, %al
	je	.L15286
	cmpb	$25, %al
	je	.L21728
.L15286:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%bl, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20599
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L15343
.L21728:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L15290
	cmpb	$15, %al
	je	.L15290
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L15293:
	cmpl	$128, %esi
	je	.L15295
	cmpl	$64, %esi
	jbe	.L15296
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L15295:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L15299
	cmpb	$6, 16(%rax)
	jne	.L15286
	testb	$2, 62(%rax)
	je	.L15286
.L15299:
	cmpl	$128, %esi
	je	.L15301
	cmpl	$64, %esi
	jbe	.L15302
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20593:
	testl	$1, %eax 
	je	.L15301
	cmpl	$64, %esi
	jbe	.L15304
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L15301:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L15286
.L15304:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L15301
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L15301
.L15302:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20593
.L15296:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L15295
	movq	$-1, %r14
	movl	%esi, %ecx
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 32(%rdx)
	jmp	.L15295
.L15290:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L15293
.L21727:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L15282
.L15279:
	movq	4576(%rsp), %rdi
	movq	4568(%rsp), %rsi
	call	build_int_2_wide
	xorl	%ecx, %ecx
	movq	544(%rsp), %r11
	movq	%rax, %rdi
	movq	8(%r11), %rsi
	movq	%rsi, 8(%rax)
	movq	536(%rsp), %r12
	movzbl	18(%r11), %r13d
	movl	$1, %r11d
	movzbl	18(%r12), %r8d
	shrb	$3, %r13b
	andl	%r13d, %r11d
	shrb	$3, %r8b
	movl	%r8d, %ebx
	andl	$1, %ebx
	testl	%ecx, %ecx
	je	.L15312
	xorl	%edx, %edx
	testl	%r14d, %r14d
	je	.L15315
	testl	%r15d, %r15d
	je	.L15314
.L15315:
	movl	512(%rsp), %r14d
	movl	$1, %eax
	testl	%r14d, %r14d
	cmovne	%eax, %edx
.L15314:
	movl	%edx, %eax
.L20595:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	testl	%r15d, %r15d
	movb	%dl, 18(%rdi)
	je	.L15341
	testb	$8, %dl
	jne	.L15341
	movq	4568(%rsp), %r15
	cmpq	%r15, 40(%rdi)
	je	.L21729
.L15342:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L15341:
	movq	544(%rsp), %rcx
	movq	536(%rsp), %r11
	movzbl	18(%rdi), %r9d
	movzbl	18(%rcx), %ebx
	movzbl	18(%r11), %r8d
	movl	%r9d, %eax
	andb	$-5, %r9b
	shrb	$3, %al
	shrb	$2, %bl
	shrb	$2, %r8b
	orl	%eax, %ebx
	orl	%r8d, %ebx
	andb	$1, %bl
	salb	$2, %bl
	orb	%bl, %r9b
	movq	%rdi, %rbx
	movb	%r9b, 18(%rdi)
	jmp	.L15343
.L21729:
	movq	4576(%rsp), %rbp
	cmpq	%rbp, 32(%rdi)
	jne	.L15342
	jmp	.L15341
.L15312:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r14d, %r14d
	je	.L15318
	testl	%r15d, %r15d
	je	.L15317
.L15318:
	movl	512(%rsp), %ecx
	movl	$1, %r10d
	movl	$0, %eax
	testl	%ecx, %ecx
	cmove	%eax, %r10d
.L15317:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L15320
	cmpb	$25, %al
	je	.L21730
.L15320:
	testl	%r10d, %r10d
	je	.L15316
	movl	532(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L15316:
	movl	%ebp, %eax
	jmp	.L20595
.L21730:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L15324
	cmpb	$15, %al
	je	.L15324
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L15327:
	cmpl	$128, %esi
	je	.L15329
	cmpl	$64, %esi
	jbe	.L15330
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L15329:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L15333
	cmpb	$6, 16(%rax)
	jne	.L15320
	testb	$2, 62(%rax)
	je	.L15320
.L15333:
	cmpl	$128, %esi
	je	.L15335
	cmpl	$64, %esi
	jbe	.L15336
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20594:
	testl	$1, %eax 
	je	.L15335
	cmpl	$64, %esi
	jbe	.L15338
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L15335:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r14
	orq	%r8, %r14
	orq	%r9, %r14
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L15320
.L15338:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L15335
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L15335
.L15336:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20594
.L15330:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L15329
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L15329
.L15324:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L15327
.L15281:
	cmpq	$-1, %rax
	jne	.L15279
	cmpq	$0, 4576(%rsp)
	jns	.L15279
	jmp	.L15280
.L15212:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 4576(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 4568(%rsp)
	andq	%r10, %r9
.L20590:
	shrq	$63, %r9
	movl	%r9d, 512(%rsp)
	jmp	.L15138
.L15215:
	testq	%r8, %r8
	jne	.L15216
	movq	%r9, %rax
	movq	$0, 4576(%rsp)
	negq	%rax
.L20585:
	movq	%rax, 4568(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	4576(%rsp), %rdx
	addq	4568(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rdi
	movq	%rdx, 4576(%rsp)
	cmovb	%rdi, %r12
	xorq	%r12, %r9 
	movq	%r12, 4568(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20590
.L15216:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 4576(%rsp)
	notq	%rax
	jmp	.L20585
.L15221:
	movq	%r11, %rbx
	movq	%r11, %rbp
	movq	%r10, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rbp
	movq	%r10, %rdx
	movq	%rbx, 9264(%rsp)
	movq	%rbp, 9272(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rcx
	movq	%r9, %rbx
	movq	%r9, %rbp
	andl	$4294967295, %esi
	andl	$4294967295, %edi
	shrq	$32, %rdx
	shrq	$32, %rcx
	andl	$4294967295, %ebx
	shrq	$32, %rbp
	movq	%rsi, 9232(%rsp)
	leaq	4568(%rsp), %r12
	movq	%rdi, 9280(%rsp)
	movq	%rdx, 9288(%rsp)
	movq	%rcx, 9240(%rsp)
	movq	%rbx, 9248(%rsp)
	movq	%rbp, 9256(%rsp)
	movq	$0, 9168(%rsp)
	movq	$0, 9176(%rsp)
	movq	$0, 9184(%rsp)
	movq	$0, 9192(%rsp)
	movq	$0, 9200(%rsp)
	movq	$0, 9208(%rsp)
	movq	$0, 9216(%rsp)
	movq	$0, 9224(%rsp)
	xorl	%esi, %esi
.L15233:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	9264(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L15232:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	9232(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	9168(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 9168(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L15232
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 9200(%rsp,%rdi,8)
	jle	.L15233
	movq	9176(%rsp), %rdx
	movq	9192(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	9168(%rsp), %rdx
	addq	9184(%rsp), %rsi
	movq	%rdx, 4576(%rsp)
	movq	%rsi, (%r12)
	movq	9224(%rsp), %rcx
	movq	9208(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	9216(%rsp), %rcx
	addq	9200(%rsp), %rax
	testq	%r10, %r10
	js	.L21731
.L15236:
	testq	%r9, %r9
	js	.L21732
.L15242:
	cmpq	$0, (%r12)
	js	.L21733
	orq	%rcx, %rax
.L21050:
	setne	%r9b
	movzbl	%r9b, %eax
.L20589:
	movl	%eax, 512(%rsp)
	jmp	.L15138
.L21733:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21050
.L21732:
	testq	%r11, %r11
	jne	.L15243
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L15244:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L15242
.L15243:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L15244
.L21731:
	testq	%r8, %r8
	jne	.L15237
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L15238:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L15236
.L15237:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L15238
.L15257:
	testq	%r9, %r9
	jne	.L15258
	cmpq	$1, %r8
	je	.L20588
.L15258:
	cmpq	%r8, %r11
	je	.L21734
.L15259:
	leaq	4576(%rsp), %rdi
	leaq	4568(%rsp), %rcx
	leaq	4528(%rsp), %rbx
	leaq	4520(%rsp), %rax
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rbx, 16(%rsp)
.L20586:
	movl	%r12d, %edi
	movl	%r14d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20589
.L21734:
	cmpq	%r9, %r10
	jne	.L15259
	testq	%r8, %r8
	jne	.L15260
	testq	%r9, %r9
	je	.L15259
.L15260:
	movq	$1, 4576(%rsp)
.L20587:
	movq	$0, 4568(%rsp)
	jmp	.L15138
.L20588:
	movq	%r11, 4576(%rsp)
	jmp	.L20591
.L15263:
	testq	%r9, %r9
	jne	.L15266
	testq	%r8, %r8
	jle	.L15266
	movq	544(%rsp), %rsi
	testb	$4, 18(%rsi)
	jne	.L15266
	movq	536(%rsp), %rdx
	testb	$4, 18(%rdx)
	jne	.L15266
	testq	%r10, %r10
	jne	.L15266
	testq	%r11, %r11
	js	.L15266
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 4576(%rsp)
	jmp	.L20587
.L15266:
	leaq	4528(%rsp), %rcx
	leaq	4520(%rsp), %rbx
	leaq	4576(%rsp), %rbp
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	leaq	4568(%rsp), %rax
	jmp	.L20586
.L15254:
	testq	%r9, %r9
	jne	.L15258
	testq	%r8, %r8
	jle	.L15257
	movq	544(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L15257
	movq	536(%rsp), %rbp
	testb	$4, 18(%rbp)
	jne	.L15257
	testq	%r10, %r10
	jne	.L15257
	testq	%r11, %r11
	js	.L15257
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r10
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 4576(%rsp)
	jmp	.L20587
.L15268:
	testl	%r14d, %r14d
	je	.L15269
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L15274
.L21204:
	cmpq	%r9, %r10
	je	.L21735
.L15273:
	xorl	%edi, %edi
	movq	%rax, 4576(%rsp)
	cmpl	$78, %r12d
	sete	%dil
	cmpq	%rdi, 4576(%rsp)
	je	.L20588
	movq	%r8, 4576(%rsp)
	movq	%r9, 4568(%rsp)
	jmp	.L15138
.L21735:
	cmpq	%r8, %r11
	jae	.L15273
.L15274:
	movl	$1, %eax
	jmp	.L15273
.L15269:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L15274
	jmp	.L21204
.L15144:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	4576(%rsp), %rbx
	leaq	4568(%rsp), %r9
	andl	$511, %esi
	testl	%r14d, %r14d
	sete	%al
	testq	%r8, %r8
	js	.L21736
	cmpq	$127, %r8
	jle	.L15160
	movq	$0, 4568(%rsp)
.L20576:
	movq	$0, 4576(%rsp)
.L15161:
	cmpl	$64, %esi
	jbe	.L15164
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20577:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L15159
	cmpl	$63, %esi
	jbe	.L15168
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20579:
	movq	%rax, (%r9)
.L15159:
	movl	$1, 532(%rsp)
	jmp	.L15138
.L15168:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20578:
	movq	%rax, (%rbx)
	jmp	.L15159
.L15164:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20577
.L15160:
	cmpq	$63, %r8
	jle	.L15162
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 4568(%rsp)
	jmp	.L20576
.L15162:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movq	%r8, %rcx
	shrq	$1, %rcx
	orq	%rcx, %r10
	movl	%edx, %ecx
	salq	%cl, %r11
	movq	%r10, 4568(%rsp)
	movq	%r11, 4576(%rsp)
	jmp	.L15161
.L21736:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L15146
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L15147:
	cmpq	$127, %rdx
	jle	.L15148
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L15149:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L15152
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L15159
.L15152:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L15159
	cmpq	$63, %rax
	jle	.L15156
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20579
.L15156:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20578
.L15148:
	cmpq	$63, %rdx
	jle	.L15150
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L15149
.L15150:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L15149
.L15146:
	xorl	%edi, %edi
	jmp	.L15147
.L15143:
	negq	%r8
	jmp	.L15144
.L15171:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	4560(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	4552(%rsp), %rbx
	testq	%r8, %r8
	js	.L21737
	cmpq	$127, %r8
	jle	.L15188
	movq	$0, 4552(%rsp)
.L20581:
	movq	$0, 4560(%rsp)
.L15189:
	cmpl	$64, %edi
	jbe	.L15192
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20582:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L15187
	cmpl	$63, %edi
	jbe	.L15196
.L20584:
	leal	-64(%rdi), %ecx
	movq	$-1, %rdi
	salq	%cl, %rdi
	salq	%cl, %rdx
	notq	%rdi
	andq	(%rbx), %rdi
	orq	%rdx, %rdi
	movq	%rdi, (%rbx)
.L15187:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	4536(%rsp), %rdi
	subq	%r8, %rsi
	leaq	4544(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L15200
	movq	$0, 4536(%rsp)
	movq	$0, 4544(%rsp)
.L15201:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L15204
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L15210:
	movq	4544(%rsp), %rcx
	movq	4536(%rsp), %r10
	orq	4560(%rsp), %rcx
	orq	4552(%rsp), %r10
	movq	%rcx, 4576(%rsp)
	movq	%r10, 4568(%rsp)
	jmp	.L15138
.L15204:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L15210
	cmpq	$63, %rax
	jle	.L15208
	subl	%esi, %r9d
	leal	-64(%r9), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%rdi), %r9
	orq	%rdx, %r9
	movq	%r9, (%rdi)
	jmp	.L15210
.L15208:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L15210
.L15200:
	cmpq	$63, %rsi
	jle	.L15202
	leal	-64(%rsi), %ecx
	movq	$0, 4536(%rsp)
	shrq	%cl, %r10
	movq	%r10, 4544(%rsp)
	jmp	.L15201
.L15202:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 4536(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rbp
	orq	%rbp, %r11
	movq	%r11, 4544(%rsp)
	jmp	.L15201
.L15196:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20583:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L15187
.L15192:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20582
.L15188:
	cmpq	$63, %r8
	jle	.L15190
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 4552(%rsp)
	jmp	.L20581
.L15190:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 4552(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 4560(%rsp)
	jmp	.L15189
.L21737:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L15176
	movq	$0, 4552(%rsp)
	movq	$0, 4560(%rsp)
.L15177:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L15180
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L15187
.L15180:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L15187
	cmpq	$63, %rax
	jle	.L15184
	subl	%esi, %edi
	jmp	.L20584
.L15184:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20583
.L15176:
	cmpq	$63, %rsi
	jle	.L15178
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 4552(%rsp)
	shrq	%cl, %rax
.L20580:
	movq	%rax, 4560(%rsp)
	jmp	.L15177
.L15178:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 4552(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20580
.L15170:
	negq	%r8
	jmp	.L15171
.L15140:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 4576(%rsp)
	jmp	.L20591
.L15141:
	andq	%r8, %r11
	movq	%r11, 4576(%rsp)
.L20592:
	andq	%r9, %r10
	jmp	.L20591
.L15142:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 4576(%rsp)
	jmp	.L20592
.L21726:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmovne	%eax, %r15d
	jmp	.L15137
.L21719:
	movq	7688(%rsp), %rcx
	movq	3592(%rsp), %rsi
	movl	$88, %edi
	movq	552(%rsp), %rdx
	xorl	%eax, %eax
	call	build
	movq	%rax, 552(%rsp)
	jmp	.L14522
.L21718:
	movq	8(%rbp), %rsi
	movq	%rsi, 2616(%rsp)
	movl	$83, %esi
	movq	40(%rbp), %r15
	cmpl	$60, %esi
	movq	32(%rbp), %r13
	movq	32(%r14), %rbp
	movq	40(%r14), %r14
	je	.L15113
	cmpl	$60, %esi
	ja	.L15124
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21049:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2616(%rsp), %rdi
.L20574:
	movq	%rax, %rdx
	call	build_complex
.L20575:
	movq	%rax, %rbx
	jmp	.L15081
.L15124:
	movl	$83, %edi
	cmpl	$61, %edi
	je	.L15114
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2608(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L15118
	cmpb	$10, %al
	je	.L15118
	cmpb	$11, %al
	je	.L15118
	cmpb	$12, %al
	movl	$70, %edi
	je	.L15118
.L15117:
	movq	2608(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L15121
	cmpb	$10, %al
	je	.L15121
	cmpb	$11, %al
	je	.L15121
	cmpb	$12, %al
	movl	$70, %edi
	je	.L15121
.L15120:
	movq	2608(%rsp), %rdx
.L20573:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2616(%rsp), %rdi
	jmp	.L20574
.L15121:
	movl	$62, %edi
	jmp	.L15120
.L15118:
	movl	$62, %edi
	jmp	.L15117
.L15114:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20573
.L15113:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21049
.L21717:
	movq	32(%rbp), %r13
	xorl	%r12d, %r12d
	movq	%rbp, %rbx
	movq	%r13, 18528(%rsp)
	movq	40(%rbp), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%rbp), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %r8
	movq	%r8, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L15081
	movq	18560(%rsp), %r10
	movq	18568(%rsp), %r11
	movq	%r14, %rbx
	movq	18576(%rsp), %r9
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r9, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L15081
	movq	18528(%rsp), %rsi
	movq	18560(%rsp), %rdi
	movq	8(%rbp), %r8
	movq	18536(%rsp), %r13
	movl	$83, 9296(%rsp)
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %rbx
	movq	%rsi, 9312(%rsp)
	movq	%rdi, 9336(%rsp)
	leaq	9296(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r8, 9304(%rsp)
	movq	%r13, 9320(%rsp)
	movq	%rdx, 9328(%rsp)
	movq	%r15, 9344(%rsp)
	movq	%rbx, 9352(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L15086
	movq	9360(%rsp), %rbx
.L15087:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L15089
	cmpb	$25, %al
	je	.L21740
.L15089:
	movzbl	18(%rbp), %r13d
	movzbl	18(%r14), %edx
	shrb	$3, %r13b
	shrb	$3, %dl
	andl	$1, %r13d
	andl	$1, %edx
	orb	%r12b, %r13b
	movzbl	18(%rbx), %r12d
	orb	%dl, %r13b
	salb	$3, %r13b
	andb	$-9, %r12b
	orb	%r13b, %r12b
	movb	%r12b, 18(%rbx)
	movl	%r12d, %eax
	movzbl	18(%rbp), %edi
	movzbl	18(%r14), %ebp
	shrb	$3, %al
	andb	$-5, %r12b
	shrb	$2, %dil
	orl	%eax, %edi
	shrb	$2, %bpl
	orl	%ebp, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %r12b
	movb	%r12b, 18(%rbx)
	jmp	.L15081
.L21740:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L15093
	cmpb	$15, %al
	je	.L15093
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L15096:
	cmpl	$128, %esi
	je	.L15098
	cmpl	$64, %esi
	jbe	.L15099
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 40(%rdx)
.L15098:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L15102
	cmpb	$6, 16(%rax)
	jne	.L15089
	testb	$2, 62(%rax)
	je	.L15089
.L15102:
	cmpl	$128, %esi
	je	.L15104
	cmpl	$64, %esi
	jbe	.L15105
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20572:
	testl	$1, %eax 
	je	.L15104
	cmpl	$64, %esi
	jbe	.L15107
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	orq	%r10, 40(%rdx)
.L15104:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%r12d,%r15
	orq	%rdi, %r15
	orq	%r8, %r15
	setne	%cl
	movzbl	%cl, %r12d
	jmp	.L15089
.L15107:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L15104
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L15104
.L15105:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20572
.L15099:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L15098
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L15098
.L15093:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L15096
.L15086:
	movq	%rbp, %rdi
	movl	$1, %r12d
	call	copy_node
	movq	%rax, %rbx
	jmp	.L15087
.L21716:
	movq	8(%rbp), %r13
	movl	$1, %r15d
	movl	$0, 588(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21741
.L14875:
	movl	$83, %eax
	movl	$0, 560(%rsp)
	movl	$0, 584(%rsp)
	subl	$59, %eax
	movq	32(%rbp), %r11
	movq	40(%rbp), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L15016(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L15016:
	.quad	.L14950
	.quad	.L14953
	.quad	.L14959
	.quad	.L14992
	.quad	.L14992
	.quad	.L14992
	.quad	.L14995
	.quad	.L15001
	.quad	.L15001
	.quad	.L15001
	.quad	.L15004
	.quad	.L18929
	.quad	.L14992
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L15006
	.quad	.L15006
	.quad	.L18929
	.quad	.L18929
	.quad	.L14882
	.quad	.L14881
	.quad	.L14909
	.quad	.L14908
	.quad	.L14877
	.quad	.L14878
	.quad	.L14879
	.quad	.L14880
	.text
.L14877:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 4640(%rsp)
.L20567:
	movq	%r10, 4632(%rsp)
.L14876:
	movl	588(%rsp), %eax
	testl	%eax, %eax
	je	.L15017
	movq	4632(%rsp), %rax
	testq	%rax, %rax
	jne	.L15019
	cmpq	$0, 4640(%rsp)
	js	.L15019
.L15018:
	movl	560(%rsp), %eax
	testl	%eax, %eax
	jne	.L15017
	testb	$8, 18(%rbp)
	jne	.L15017
	testb	$8, 18(%r14)
	jne	.L15017
	cmpq	$0, size_htab.0(%rip)
	movq	4640(%rsp), %rbx
	je	.L21742
.L15020:
	movq	new_const.1(%rip), %rbp
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%rbp), %eax
	decq	%rcx
	movq	%rbx, 32(%rbp)
	movq	%rcx, 40(%rbp)
	movq	%r13, 8(%rbp)
	movq	%rbp, %rdi
	movq	%rbp, %r11
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L15024
	cmpb	$25, %al
	je	.L21743
.L15024:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %ecx
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %sil
	orb	%cl, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20575
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L15081
.L21743:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L15028
	cmpb	$15, %al
	je	.L15028
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L15031:
	cmpl	$128, %esi
	je	.L15033
	cmpl	$64, %esi
	jbe	.L15034
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L15033:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L15037
	cmpb	$6, 16(%rax)
	jne	.L15024
	testb	$2, 62(%rax)
	je	.L15024
.L15037:
	cmpl	$128, %esi
	je	.L15039
	cmpl	$64, %esi
	jbe	.L15040
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20569:
	testl	$1, %eax 
	je	.L15039
	cmpl	$64, %esi
	jbe	.L15042
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L15039:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r12
	orq	%r8, %r12
	orq	%r9, %r12
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L15024
.L15042:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L15039
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L15039
.L15040:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20569
.L15034:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L15033
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L15033
.L15028:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L15031
.L21742:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L15020
.L15017:
	movq	4640(%rsp), %rdi
	movq	4632(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%rbp), %r13
	movq	%rax, %rdi
	movq	%r13, 8(%rax)
	movzbl	18(%r14), %edx
	movzbl	18(%rbp), %ebx
	shrb	$3, %dl
	shrb	$3, %bl
	andl	%ebx, %r11d
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L15050
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L15053
	movl	588(%rsp), %eax
	testl	%eax, %eax
	je	.L15052
.L15053:
	movl	560(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L15052:
	movl	%edx, %eax
.L20571:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	588(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L15079
	testb	$8, %dl
	jne	.L15079
	movq	4632(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L21744
.L15080:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L15079:
	movzbl	18(%rdi), %ebx
	movzbl	18(%rbp), %r15d
	movzbl	18(%r14), %ebp
	movl	%ebx, %eax
	shrb	$2, %r15b
	andb	$-5, %bl
	shrb	$3, %al
	shrb	$2, %bpl
	orl	%eax, %r15d
	orl	%ebp, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L15081
.L21744:
	movq	4640(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L15080
	jmp	.L15079
.L15050:
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L15056
	movl	588(%rsp), %eax
	testl	%eax, %eax
	je	.L15055
.L15056:
	movl	560(%rsp), %eax
	movl	$1, %r10d
	testl	%eax, %eax
	movl	$0, %eax
	cmove	%eax, %r10d
.L15055:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L15058
	cmpb	$25, %al
	je	.L21745
.L15058:
	testl	%r10d, %r10d
	je	.L15054
	movl	584(%rsp), %r9d
	movl	$1, %eax
	testl	%r9d, %r9d
	cmove	%eax, %r12d
.L15054:
	movl	%r12d, %eax
	jmp	.L20571
.L21745:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L15062
	cmpb	$15, %al
	je	.L15062
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L15065:
	cmpl	$128, %esi
	je	.L15067
	cmpl	$64, %esi
	jbe	.L15068
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L15067:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L15071
	cmpb	$6, 16(%rax)
	jne	.L15058
	testb	$2, 62(%rax)
	je	.L15058
.L15071:
	cmpl	$128, %esi
	je	.L15073
	cmpl	$64, %esi
	jbe	.L15074
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20570:
	testl	$1, %eax 
	je	.L15073
	cmpl	$64, %esi
	jbe	.L15076
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L15073:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L15058
.L15076:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L15073
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L15073
.L15074:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20570
.L15068:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L15067
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L15067
.L15062:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L15065
.L15019:
	cmpq	$-1, %rax
	jne	.L15017
	cmpq	$0, 4640(%rsp)
	jns	.L15017
	jmp	.L15018
.L14950:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 4640(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 4632(%rsp)
	andq	%r10, %r9
.L20566:
	shrq	$63, %r9
	movl	%r9d, 560(%rsp)
	jmp	.L14876
.L14953:
	testq	%r8, %r8
	jne	.L14954
	movq	%r9, %rax
	movq	$0, 4640(%rsp)
	negq	%rax
.L20561:
	movq	%rax, 4632(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	4640(%rsp), %rdx
	addq	4632(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbx
	movq	%rdx, 4640(%rsp)
	cmovb	%rbx, %r12
	xorq	%r12, %r9 
	movq	%r12, 4632(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20566
.L14954:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 4640(%rsp)
	notq	%rax
	jmp	.L20561
.L14959:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 9472(%rsp)
	movq	%rcx, 9480(%rsp)
	movq	%r8, %r12
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %r12d
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 9448(%rsp)
	movq	%rbx, 9488(%rsp)
	movq	%rdx, 9496(%rsp)
	movq	%r12, 9440(%rsp)
	movq	%rdi, 9456(%rsp)
	movq	%rcx, 9464(%rsp)
	movq	$0, 9376(%rsp)
	movq	$0, 9384(%rsp)
	movq	$0, 9392(%rsp)
	movq	$0, 9400(%rsp)
	movq	$0, 9408(%rsp)
	movq	$0, 9416(%rsp)
	movq	$0, 9424(%rsp)
	movq	$0, 9432(%rsp)
	xorl	%esi, %esi
.L14971:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	9472(%rsp,%rbx,8), %r12
	xorl	%ebx, %ebx
.L14970:
	movq	%r12, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	9440(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	9376(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 9376(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L14970
	movslq	%esi,%r12
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 9408(%rsp,%r12,8)
	jle	.L14971
	movq	9384(%rsp), %rdx
	movq	9400(%rsp), %rsi
	movq	9416(%rsp), %rax
	movq	9432(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	9376(%rsp), %rdx
	addq	9392(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	9408(%rsp), %rax
	addq	9424(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 4640(%rsp)
	movq	%rsi, 4632(%rsp)
	js	.L21746
.L14974:
	testq	%r9, %r9
	js	.L21747
.L14980:
	cmpq	$0, 4632(%rsp)
	js	.L21748
	orq	%rcx, %rax
.L21048:
	setne	%r10b
	movzbl	%r10b, %eax
.L20565:
	movl	%eax, 560(%rsp)
	jmp	.L14876
.L21748:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21048
.L21747:
	testq	%r11, %r11
	jne	.L14981
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L14982:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L14980
.L14981:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L14982
.L21746:
	testq	%r8, %r8
	jne	.L14975
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L14976:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L14974
.L14975:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L14976
.L14995:
	testq	%r9, %r9
	jne	.L14996
	cmpq	$1, %r8
	je	.L20564
.L14996:
	cmpq	%r8, %r11
	je	.L21749
.L14997:
	leaq	4640(%rsp), %rbx
	leaq	4632(%rsp), %rdi
	leaq	4592(%rsp), %rcx
	leaq	4584(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20562:
	movl	$83, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20565
.L21749:
	cmpq	%r9, %r10
	jne	.L14997
	testq	%r8, %r8
	jne	.L14998
	testq	%r9, %r9
	je	.L14997
.L14998:
	movq	$1, 4640(%rsp)
.L20563:
	movq	$0, 4632(%rsp)
	jmp	.L14876
.L20564:
	movq	%r11, 4640(%rsp)
	jmp	.L20567
.L15001:
	testq	%r9, %r9
	jne	.L15004
	testq	%r8, %r8
	jle	.L15004
	testb	$4, 18(%rbp)
	jne	.L15004
	testb	$4, 18(%r14)
	jne	.L15004
	testq	%r10, %r10
	jne	.L15004
	testq	%r11, %r11
	js	.L15004
	movl	$83, %edx
	leaq	-1(%r8,%r11), %r12
	cmpl	$67, %edx
	cmove	%r12, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 4640(%rsp)
	jmp	.L20563
.L15004:
	leaq	4592(%rsp), %rdi
	leaq	4584(%rsp), %rcx
	leaq	4640(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	4632(%rsp), %rax
	jmp	.L20562
.L14992:
	testq	%r9, %r9
	jne	.L14996
	testq	%r8, %r8
	jle	.L14995
	testb	$4, 18(%rbp)
	jne	.L14995
	testb	$4, 18(%r14)
	jne	.L14995
	testq	%r10, %r10
	jne	.L14995
	testq	%r11, %r11
	js	.L14995
	movl	$83, %eax
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %eax
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 4640(%rsp)
	jmp	.L20563
.L15006:
	testl	%r15d, %r15d
	je	.L15007
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L15012
.L21203:
	cmpq	%r9, %r10
	je	.L21750
.L15011:
	movq	%rax, 4640(%rsp)
	xorl	%ebx, %ebx
	movl	$83, %eax
	cmpl	$78, %eax
	sete	%bl
	cmpq	%rbx, 4640(%rsp)
	je	.L20564
	movq	%r8, 4640(%rsp)
	movq	%r9, 4632(%rsp)
	jmp	.L14876
.L21750:
	cmpq	%r8, %r11
	jae	.L15011
.L15012:
	movl	$1, %eax
	jmp	.L15011
.L15007:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L15012
	jmp	.L21203
.L14882:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	4640(%rsp), %rbx
	leaq	4632(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21751
	cmpq	$127, %r8
	jle	.L14898
	movq	$0, 4632(%rsp)
.L20553:
	movq	$0, 4640(%rsp)
.L14899:
	cmpl	$64, %esi
	jbe	.L14902
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20554:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L14897
	cmpl	$63, %esi
	jbe	.L14906
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20556:
	movq	%rax, (%r9)
.L14897:
	movl	$1, 584(%rsp)
	jmp	.L14876
.L14906:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20555:
	movq	%rax, (%rbx)
	jmp	.L14897
.L14902:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20554
.L14898:
	cmpq	$63, %r8
	jle	.L14900
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 4632(%rsp)
	jmp	.L20553
.L14900:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 4640(%rsp)
	orq	%rdi, %r10
	movq	%r10, 4632(%rsp)
	jmp	.L14899
.L21751:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L14884
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L14885:
	cmpq	$127, %rdx
	jle	.L14886
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L14887:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L14890
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L14897
.L14890:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L14897
	cmpq	$63, %rax
	jle	.L14894
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20556
.L14894:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20555
.L14886:
	cmpq	$63, %rdx
	jle	.L14888
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L14887
.L14888:
	movl	%edx, %ecx
	movq	%r10, %r12
	shrq	%cl, %r12
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r12, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L14887
.L14884:
	xorl	%edi, %edi
	jmp	.L14885
.L14881:
	negq	%r8
	jmp	.L14882
.L14909:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	4624(%rsp), %r12
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	4616(%rsp), %rbx
	testq	%r8, %r8
	js	.L21752
	cmpq	$127, %r8
	jle	.L14926
	movq	$0, 4616(%rsp)
.L20557:
	movq	$0, 4624(%rsp)
.L14927:
	cmpl	$64, %edi
	jbe	.L14930
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20558:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L14925
	cmpl	$63, %edi
	jbe	.L14934
.L20560:
	leal	-64(%rdi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	salq	%cl, %rdx
	notq	%r12
	andq	(%rbx), %r12
	orq	%rdx, %r12
	movq	%r12, (%rbx)
.L14925:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	4600(%rsp), %rdi
	subq	%r8, %rsi
	leaq	4608(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L14938
	movq	$0, 4600(%rsp)
	movq	$0, 4608(%rsp)
.L14939:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L14942
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L14948:
	movq	4608(%rsp), %rdi
	movq	4600(%rsp), %r9
	orq	4624(%rsp), %rdi
	orq	4616(%rsp), %r9
	movq	%rdi, 4640(%rsp)
	movq	%r9, 4632(%rsp)
	jmp	.L14876
.L14942:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L14948
	cmpq	$63, %rax
	jle	.L14946
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L14948
.L14946:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L14948
.L14938:
	cmpq	$63, %rsi
	jle	.L14940
	leal	-64(%rsi), %ecx
	movq	$0, 4600(%rsp)
	shrq	%cl, %r10
	movq	%r10, 4608(%rsp)
	jmp	.L14939
.L14940:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 4600(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 4608(%rsp)
	jmp	.L14939
.L14934:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20559:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r12), %rax
	orq	%rdx, %rax
	movq	%rax, (%r12)
	jmp	.L14925
.L14930:
	movq	(%r12), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20558
.L14926:
	cmpq	$63, %r8
	jle	.L14928
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 4616(%rsp)
	jmp	.L20557
.L14928:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 4616(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 4624(%rsp)
	jmp	.L14927
.L21752:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L14914
	movq	$0, 4616(%rsp)
	movq	$0, 4624(%rsp)
.L14915:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L14918
	movq	%rdx, (%rbx)
	movq	%rdx, (%r12)
	jmp	.L14925
.L14918:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L14925
	cmpq	$63, %rax
	jle	.L14922
	subl	%esi, %edi
	jmp	.L20560
.L14922:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20559
.L14914:
	cmpq	$63, %rsi
	jle	.L14916
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 4616(%rsp)
	shrq	%cl, %rax
	movq	%rax, 4624(%rsp)
	jmp	.L14915
.L14916:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 4616(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 4624(%rsp)
	jmp	.L14915
.L14908:
	negq	%r8
	jmp	.L14909
.L14878:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 4640(%rsp)
	jmp	.L20567
.L14879:
	andq	%r8, %r11
	movq	%r11, 4640(%rsp)
.L20568:
	andq	%r9, %r10
	jmp	.L20567
.L14880:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 4640(%rsp)
	jmp	.L20568
.L21741:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	588(%rsp), %eax
	movl	%eax, 588(%rsp)
	jmp	.L14875
.L21715:
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L14861
.L21714:
	movzbl	16(%rbx), %eax
	movq	%r12, %rdi
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L14843
	cmpb	$15, %al
	je	.L14843
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L14846:
	cmpl	$128, %esi
	je	.L14848
	cmpl	$64, %esi
	jbe	.L14849
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L14848:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14852
	cmpb	$6, 16(%rax)
	jne	.L14839
	testb	$2, 62(%rax)
	je	.L14839
.L14852:
	cmpl	$128, %esi
	je	.L14854
	cmpl	$64, %esi
	jbe	.L14855
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20552:
	testl	$1, %eax 
	je	.L14854
	cmpl	$64, %esi
	jbe	.L14857
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L14854:
	xorq	32(%rdx), %rdi
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%rdi, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L14839
.L14857:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14854
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14854
.L14855:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20552
.L14849:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14848
	movq	$-1, %r14
	movl	%esi, %ecx
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 32(%rdx)
	jmp	.L14848
.L14843:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14846
.L21713:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L14835
.L21712:
	movq	8(%r14), %rbp
	movq	616(%rsp), %rsi
	cmpl	$60, %r12d
	movq	%rbp, 2632(%rsp)
	movq	32(%rsi), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rsi), %r14
	je	.L14823
	cmpl	$60, %r12d
	ja	.L14834
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21047:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2632(%rsp), %rdi
.L20550:
	movq	%rax, %rdx
	call	build_complex
.L20551:
	movq	%rax, %rbp
	jmp	.L14791
.L14834:
	cmpl	$61, %r12d
	je	.L14824
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2624(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rdi
	movq	%rax, %rsi
	movzbl	16(%rdi), %eax
	cmpb	$6, %al
	je	.L14828
	cmpb	$10, %al
	je	.L14828
	cmpb	$11, %al
	je	.L14828
	cmpb	$12, %al
	movl	$70, %edi
	je	.L14828
.L14827:
	movq	2624(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r10
	movq	%rax, %rsi
	movzbl	16(%r10), %eax
	cmpb	$6, %al
	je	.L14831
	cmpb	$10, %al
	je	.L14831
	cmpb	$11, %al
	je	.L14831
	cmpb	$12, %al
	movl	$70, %edi
	je	.L14831
.L14830:
	movq	2624(%rsp), %rdx
.L20549:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2632(%rsp), %rdi
	jmp	.L20550
.L14831:
	movl	$62, %edi
	jmp	.L14830
.L14828:
	movl	$62, %edi
	jmp	.L14827
.L14824:
	movq	%r13, %rsi
	movl	$61, %edi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r13
	call	const_binop
	movq	%r13, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20549
.L14823:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21047
.L21711:
	movq	32(%r14), %r15
	movq	616(%rsp), %rsi
	xorl	%ebx, %ebx
	movq	%r14, %rbp
	movq	%r15, 18528(%rsp)
	movq	40(%r14), %r13
	movq	%r13, 18536(%rsp)
	movq	48(%r14), %r8
	movq	%r8, 18544(%rsp)
	movq	32(%rsi), %r10
	movq	%r10, 18560(%rsp)
	movq	40(%rsi), %rdi
	movq	%rdi, 18568(%rsp)
	movq	48(%rsi), %rcx
	movq	%r8, 16(%rsp)
	movq	%r15, (%rsp)
	movq	%r13, 8(%rsp)
	movq	%rcx, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L14791
	movq	18576(%rsp), %rbp
	movq	18560(%rsp), %r9
	movq	18568(%rsp), %r11
	movq	%rbp, 16(%rsp)
	movq	%r9, (%rsp)
	movq	%r11, 8(%rsp)
	call	target_isnan
	movq	616(%rsp), %rbp
	testl	%eax, %eax
	jne	.L14791
	movq	8(%r14), %rdi
	movq	18528(%rsp), %rsi
	movl	%r12d, 9504(%rsp)
	movq	18536(%rsp), %rcx
	movq	18544(%rsp), %r15
	movq	18560(%rsp), %r13
	movq	18568(%rsp), %r8
	movq	18576(%rsp), %rdx
	movq	%rdi, 9512(%rsp)
	movq	%rsi, 9520(%rsp)
	movl	$const_binop_1, %edi
	leaq	9504(%rsp), %rsi
	movq	%rcx, 9528(%rsp)
	movq	%r15, 9536(%rsp)
	movq	%r13, 9544(%rsp)
	movq	%r8, 9552(%rsp)
	movq	%rdx, 9560(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L14796
	movq	9568(%rsp), %rbp
.L14797:
	movzbl	16(%rbp), %eax
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L14799
	cmpb	$25, %al
	je	.L21755
.L14799:
	movzbl	18(%r14), %ecx
	movq	616(%rsp), %r15
	movzbl	18(%r15), %edx
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%bl, %cl
	movzbl	18(%rbp), %ebx
	shrb	$3, %dl
	andl	$1, %edx
	orb	%dl, %cl
	salb	$3, %cl
	andb	$-9, %bl
	orb	%cl, %bl
	movb	%bl, 18(%rbp)
	movl	%ebx, %eax
	movzbl	18(%r14), %r8d
	movzbl	18(%r15), %r14d
	shrb	$3, %al
	andb	$-5, %bl
	shrb	$2, %r8b
	orl	%eax, %r8d
	shrb	$2, %r14b
	orl	%r14d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rbp)
	jmp	.L14791
.L21755:
	movq	8(%rbp), %rcx
	movq	32(%rbp), %rdi
	movq	40(%rbp), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L14803
	cmpb	$15, %al
	je	.L14803
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L14806:
	cmpl	$128, %esi
	je	.L14808
	cmpl	$64, %esi
	jbe	.L14809
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L14808:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14812
	cmpb	$6, 16(%rax)
	jne	.L14799
	testb	$2, 62(%rax)
	je	.L14799
.L14812:
	cmpl	$128, %esi
	je	.L14814
	cmpl	$64, %esi
	jbe	.L14815
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20548:
	testl	$1, %eax 
	je	.L14814
	cmpl	$64, %esi
	jbe	.L14817
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L14814:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%r9b
	movzbl	%r9b, %ebx
	jmp	.L14799
.L14817:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14814
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14814
.L14815:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20548
.L14809:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14808
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L14808
.L14803:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14806
.L14796:
	movq	%r14, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %rbp
	jmp	.L14797
.L21710:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 612(%rsp)
	movzbl	17(%r13), %ecx
	shrb	$5, %cl
	andl	%ecx, %r15d
	cmpb	$6, 16(%r13)
	je	.L21756
.L14585:
	movq	616(%rsp), %rax
	movl	$0, 592(%rsp)
	movl	$0, 608(%rsp)
	movq	32(%r14), %r11
	movq	40(%r14), %r10
	movq	32(%rax), %r8
	movq	40(%rax), %r9
	leal	-59(%r12), %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %esi
	jmp	*.L14726(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L14726:
	.quad	.L14660
	.quad	.L14663
	.quad	.L14669
	.quad	.L14702
	.quad	.L14702
	.quad	.L14702
	.quad	.L14705
	.quad	.L14711
	.quad	.L14711
	.quad	.L14711
	.quad	.L14714
	.quad	.L18929
	.quad	.L14702
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L14716
	.quad	.L14716
	.quad	.L18929
	.quad	.L18929
	.quad	.L14592
	.quad	.L14591
	.quad	.L14619
	.quad	.L14618
	.quad	.L14587
	.quad	.L14588
	.quad	.L14589
	.quad	.L14590
	.text
.L14587:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 4704(%rsp)
.L20543:
	movq	%r10, 4696(%rsp)
.L14586:
	movl	612(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L14727
	movq	4696(%rsp), %rax
	testq	%rax, %rax
	jne	.L14729
	cmpq	$0, 4704(%rsp)
	js	.L14729
.L14728:
	movl	592(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L14727
	testb	$8, 18(%r14)
	jne	.L14727
	movq	616(%rsp), %r12
	testb	$8, 18(%r12)
	jne	.L14727
	cmpq	$0, size_htab.0(%rip)
	movq	4704(%rsp), %rbx
	je	.L21757
.L14730:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L14734
	cmpb	$25, %al
	je	.L21758
.L14734:
	movzbl	18(%r11), %ebx
	leal	0(,%r10,4), %ecx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %bl
	orb	%cl, %bl
	movb	%bl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20551
	movq	new_const.1(%rip), %rbp
	movl	$25, %edi
	movq	%rbp, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L14791
.L21758:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L14738
	cmpb	$15, %al
	je	.L14738
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L14741:
	cmpl	$128, %esi
	je	.L14743
	cmpl	$64, %esi
	jbe	.L14744
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L14743:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14747
	cmpb	$6, 16(%rax)
	jne	.L14734
	testb	$2, 62(%rax)
	je	.L14734
.L14747:
	cmpl	$128, %esi
	je	.L14749
	cmpl	$64, %esi
	jbe	.L14750
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20545:
	testl	$1, %eax 
	je	.L14749
	cmpl	$64, %esi
	jbe	.L14752
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L14749:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L14734
.L14752:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14749
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14749
.L14750:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20545
.L14744:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14743
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L14743
.L14738:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14741
.L21757:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L14730
.L14727:
	movq	4704(%rsp), %rdi
	movq	4696(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	616(%rsp), %r12
	movl	$1, %r11d
	movzbl	18(%r14), %r13d
	movzbl	18(%r12), %r8d
	shrb	$3, %r13b
	andl	%r13d, %r11d
	shrb	$3, %r8b
	movl	%r8d, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L14760
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L14763
	movl	612(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L14762
.L14763:
	movl	592(%rsp), %esi
	movl	$1, %eax
	testl	%esi, %esi
	cmovne	%eax, %edx
.L14762:
	movl	%edx, %eax
.L20547:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	612(%rsp), %eax
	testl	%eax, %eax
	je	.L14789
	testb	$8, %dl
	jne	.L14789
	movq	4696(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21759
.L14790:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L14789:
	movq	616(%rsp), %rdx
	movzbl	18(%rdi), %r11d
	movq	%rdi, %rbp
	movzbl	18(%r14), %r9d
	movzbl	18(%rdx), %r14d
	movl	%r11d, %eax
	andb	$-5, %r11b
	shrb	$3, %al
	shrb	$2, %r9b
	orl	%eax, %r9d
	shrb	$2, %r14b
	orl	%r14d, %r9d
	andb	$1, %r9b
	salb	$2, %r9b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	jmp	.L14791
.L21759:
	movq	4704(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L14790
	jmp	.L14789
.L14760:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L14766
	movl	612(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L14765
.L14766:
	movl	592(%rsp), %r8d
	movl	$1, %r10d
	movl	$0, %eax
	testl	%r8d, %r8d
	cmove	%eax, %r10d
.L14765:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L14768
	cmpb	$25, %al
	je	.L21760
.L14768:
	testl	%r10d, %r10d
	je	.L14764
	movl	608(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L14764:
	movl	%ebp, %eax
	jmp	.L20547
.L21760:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L14772
	cmpb	$15, %al
	je	.L14772
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L14775:
	cmpl	$128, %esi
	je	.L14777
	cmpl	$64, %esi
	jbe	.L14778
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L14777:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14781
	cmpb	$6, 16(%rax)
	jne	.L14768
	testb	$2, 62(%rax)
	je	.L14768
.L14781:
	cmpl	$128, %esi
	je	.L14783
	cmpl	$64, %esi
	jbe	.L14784
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20546:
	testl	$1, %eax 
	je	.L14783
	cmpl	$64, %esi
	jbe	.L14786
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L14783:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L14768
.L14786:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14783
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14783
.L14784:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20546
.L14778:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14777
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L14777
.L14772:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14775
.L14729:
	cmpq	$-1, %rax
	jne	.L14727
	cmpq	$0, 4704(%rsp)
	jns	.L14727
	jmp	.L14728
.L14660:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 4704(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 4696(%rsp)
	andq	%r10, %r9
.L20542:
	shrq	$63, %r9
	movl	%r9d, 592(%rsp)
	jmp	.L14586
.L14663:
	testq	%r8, %r8
	jne	.L14664
	movq	%r9, %rax
	movq	$0, 4704(%rsp)
	negq	%rax
.L20537:
	movq	%rax, 4696(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	4704(%rsp), %rdx
	addq	4696(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 4704(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 4696(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20542
.L14664:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 4704(%rsp)
	notq	%rax
	jmp	.L20537
.L14669:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 9680(%rsp)
	movq	%rcx, 9688(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 9648(%rsp)
	leaq	4696(%rsp), %r12
	movq	%rbp, 9696(%rsp)
	movq	%rdx, 9704(%rsp)
	movq	%rdi, 9656(%rsp)
	movq	%rbx, 9664(%rsp)
	movq	%rcx, 9672(%rsp)
	movq	$0, 9584(%rsp)
	movq	$0, 9592(%rsp)
	movq	$0, 9600(%rsp)
	movq	$0, 9608(%rsp)
	movq	$0, 9616(%rsp)
	movq	$0, 9624(%rsp)
	movq	$0, 9632(%rsp)
	movq	$0, 9640(%rsp)
	xorl	%esi, %esi
.L14681:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	9680(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L14680:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	9648(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	9584(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 9584(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L14680
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 9616(%rsp,%rdi,8)
	jle	.L14681
	movq	9592(%rsp), %rdx
	movq	9608(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	9584(%rsp), %rdx
	addq	9600(%rsp), %rsi
	movq	%rdx, 4704(%rsp)
	movq	%rsi, (%r12)
	movq	9640(%rsp), %rcx
	movq	9624(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	9632(%rsp), %rcx
	addq	9616(%rsp), %rax
	testq	%r10, %r10
	js	.L21761
.L14684:
	testq	%r9, %r9
	js	.L21762
.L14690:
	cmpq	$0, (%r12)
	js	.L21763
	orq	%rcx, %rax
.L21046:
	setne	%r10b
	movzbl	%r10b, %eax
.L20541:
	movl	%eax, 592(%rsp)
	jmp	.L14586
.L21763:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21046
.L21762:
	testq	%r11, %r11
	jne	.L14691
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L14692:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L14690
.L14691:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L14692
.L21761:
	testq	%r8, %r8
	jne	.L14685
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L14686:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L14684
.L14685:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L14686
.L14705:
	testq	%r9, %r9
	jne	.L14706
	cmpq	$1, %r8
	je	.L20540
.L14706:
	cmpq	%r8, %r11
	je	.L21764
.L14707:
	leaq	4704(%rsp), %rcx
	leaq	4696(%rsp), %rbx
	leaq	4656(%rsp), %rbp
	leaq	4648(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
.L20538:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20541
.L21764:
	cmpq	%r9, %r10
	jne	.L14707
	testq	%r8, %r8
	jne	.L14708
	testq	%r9, %r9
	je	.L14707
.L14708:
	movq	$1, 4704(%rsp)
.L20539:
	movq	$0, 4696(%rsp)
	jmp	.L14586
.L20540:
	movq	%r11, 4704(%rsp)
	jmp	.L20543
.L14711:
	testq	%r9, %r9
	jne	.L14714
	testq	%r8, %r8
	jle	.L14714
	testb	$4, 18(%r14)
	jne	.L14714
	movq	616(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L14714
	testq	%r10, %r10
	jne	.L14714
	testq	%r11, %r11
	js	.L14714
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 4704(%rsp)
	jmp	.L20539
.L14714:
	leaq	4656(%rsp), %rbx
	leaq	4648(%rsp), %rbp
	leaq	4704(%rsp), %rdx
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	4696(%rsp), %rax
	jmp	.L20538
.L14702:
	testq	%r9, %r9
	jne	.L14706
	testq	%r8, %r8
	jle	.L14705
	testb	$4, 18(%r14)
	jne	.L14705
	movq	616(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L14705
	testq	%r10, %r10
	jne	.L14705
	testq	%r11, %r11
	js	.L14705
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 4704(%rsp)
	jmp	.L20539
.L14716:
	testl	%r15d, %r15d
	je	.L14717
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L14722
.L21202:
	cmpq	%r9, %r10
	je	.L21765
.L14721:
	xorl	%ecx, %ecx
	movq	%rax, 4704(%rsp)
	cmpl	$78, %r12d
	sete	%cl
	cmpq	%rcx, 4704(%rsp)
	je	.L20540
	movq	%r8, 4704(%rsp)
	movq	%r9, 4696(%rsp)
	jmp	.L14586
.L21765:
	cmpq	%r8, %r11
	jae	.L14721
.L14722:
	movl	$1, %eax
	jmp	.L14721
.L14717:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L14722
	jmp	.L21202
.L14592:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	4704(%rsp), %rbx
	leaq	4696(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21766
	cmpq	$127, %r8
	jle	.L14608
	movq	$0, 4696(%rsp)
.L20528:
	movq	$0, 4704(%rsp)
.L14609:
	cmpl	$64, %esi
	jbe	.L14612
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20529:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L14607
	cmpl	$63, %esi
	jbe	.L14616
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20531:
	movq	%rax, (%r9)
.L14607:
	movl	$1, 608(%rsp)
	jmp	.L14586
.L14616:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20530:
	movq	%rax, (%rbx)
	jmp	.L14607
.L14612:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20529
.L14608:
	cmpq	$63, %r8
	jle	.L14610
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 4696(%rsp)
	jmp	.L20528
.L14610:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 4704(%rsp)
	orq	%rdi, %r10
	movq	%r10, 4696(%rsp)
	jmp	.L14609
.L21766:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L14594
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L14595:
	cmpq	$127, %rdx
	jle	.L14596
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L14597:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L14600
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L14607
.L14600:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L14607
	cmpq	$63, %rax
	jle	.L14604
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20531
.L14604:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20530
.L14596:
	cmpq	$63, %rdx
	jle	.L14598
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L14597
.L14598:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L14597
.L14594:
	xorl	%edi, %edi
	jmp	.L14595
.L14591:
	negq	%r8
	jmp	.L14592
.L14619:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	4688(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	4680(%rsp), %rbx
	testq	%r8, %r8
	js	.L21767
	cmpq	$127, %r8
	jle	.L14636
	movq	$0, 4680(%rsp)
.L20533:
	movq	$0, 4688(%rsp)
.L14637:
	cmpl	$64, %edi
	jbe	.L14640
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20534:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L14635
	cmpl	$63, %edi
	jbe	.L14644
.L20536:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L14635:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	4664(%rsp), %rdi
	subq	%r8, %rsi
	leaq	4672(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L14648
	movq	$0, 4664(%rsp)
	movq	$0, 4672(%rsp)
.L14649:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L14652
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L14658:
	movq	4672(%rsp), %rdi
	movq	4664(%rsp), %r11
	orq	4688(%rsp), %rdi
	orq	4680(%rsp), %r11
	movq	%rdi, 4704(%rsp)
	movq	%r11, 4696(%rsp)
	jmp	.L14586
.L14652:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L14658
	cmpq	$63, %rax
	jle	.L14656
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L14658
.L14656:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L14658
.L14648:
	cmpq	$63, %rsi
	jle	.L14650
	leal	-64(%rsi), %ecx
	movq	$0, 4664(%rsp)
	shrq	%cl, %r10
	movq	%r10, 4672(%rsp)
	jmp	.L14649
.L14650:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 4664(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 4672(%rsp)
	jmp	.L14649
.L14644:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20535:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L14635
.L14640:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20534
.L14636:
	cmpq	$63, %r8
	jle	.L14638
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 4680(%rsp)
	jmp	.L20533
.L14638:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 4680(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 4688(%rsp)
	jmp	.L14637
.L21767:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L14624
	movq	$0, 4680(%rsp)
	movq	$0, 4688(%rsp)
.L14625:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L14628
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L14635
.L14628:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L14635
	cmpq	$63, %rax
	jle	.L14632
	subl	%esi, %edi
	jmp	.L20536
.L14632:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20535
.L14624:
	cmpq	$63, %rsi
	jle	.L14626
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 4680(%rsp)
	shrq	%cl, %rax
.L20532:
	movq	%rax, 4688(%rsp)
	jmp	.L14625
.L14626:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 4680(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20532
.L14618:
	negq	%r8
	jmp	.L14619
.L14588:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 4704(%rsp)
	jmp	.L20543
.L14589:
	andq	%r8, %r11
	movq	%r11, 4704(%rsp)
.L20544:
	andq	%r9, %r10
	jmp	.L20543
.L14590:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 4704(%rsp)
	jmp	.L20544
.L21756:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	612(%rsp), %eax
	movl	%eax, 612(%rsp)
	jmp	.L14585
.L21709:
	movq	new_const.1(%rip), %r11
	movl	$25, %edi
	movq	%r11, (%rax)
	movq	%r11, 616(%rsp)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L14571
.L21708:
	movzbl	16(%rbx), %eax
	movq	%rbp, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L14553
	cmpb	$15, %al
	je	.L14553
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L14556:
	cmpl	$128, %esi
	je	.L14558
	cmpl	$64, %esi
	jbe	.L14559
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L14558:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14562
	cmpb	$6, 16(%rax)
	jne	.L14549
	testb	$2, 62(%rax)
	je	.L14549
.L14562:
	cmpl	$128, %esi
	je	.L14564
	cmpl	$64, %esi
	jbe	.L14565
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20527:
	testl	$1, %eax 
	je	.L14564
	cmpl	$64, %esi
	jbe	.L14567
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	orq	%rbp, 40(%rdx)
.L14564:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%r13
	orq	%r8, %r13
	orq	%r9, %r13
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L14549
.L14567:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14564
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14564
.L14565:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20527
.L14559:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14558
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L14558
.L14553:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14556
.L21707:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L14545
.L21706:
	movzbl	16(%rax), %edx
	cmpb	$13, %dl
	je	.L14528
	cmpb	$15, %dl
	je	.L14528
	movzwl	60(%rax), %edx
	andl	$511, %edx
.L14531:
	cmpl	$128, %edx
	je	.L14533
	cmpl	$64, %edx
	jbe	.L14534
	leal	-64(%rdx), %ecx
	movq	$-1, %rdi
	salq	%cl, %rdi
	notq	%rdi
	andq	%rdi, 40(%rsi)
.L14533:
	movq	8(%rsi), %rax
	testb	$32, 17(%rax)
	je	.L14537
	cmpb	$6, 16(%rax)
	jne	.L14524
	testb	$2, 62(%rax)
	je	.L14524
.L14537:
	cmpl	$128, %edx
	je	.L14524
	cmpl	$64, %edx
	jbe	.L14540
	movq	40(%rsi), %rax
	leal	-65(%rdx), %ecx
	sarq	%cl, %rax
.L20526:
	testl	$1, %eax 
	je	.L14524
	cmpl	$64, %edx
	jbe	.L14542
	leal	-64(%rdx), %ecx
	movq	$-1, %rdx
	salq	%cl, %rdx
	orq	%rdx, 40(%rsi)
	jmp	.L14524
.L14542:
	movq	$-1, %rax
	cmpl	$63, %edx
	movq	%rax, 40(%rsi)
	ja	.L14524
	movl	%edx, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rsi)
	jmp	.L14524
.L14540:
	movq	32(%rsi), %rax
	leal	-1(%rdx), %ecx
	shrq	%cl, %rax
	jmp	.L20526
.L14534:
	cmpl	$63, %edx
	movq	$0, 40(%rsi)
	ja	.L14533
	movq	$-1, %r13
	movl	%edx, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rsi)
	jmp	.L14533
.L14528:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edx
	movl	$32, %eax
	cmove	%eax, %edx
	jmp	.L14531
.L21705:
	movq	8(%r12), %rsi
	movq	%rsi, 2664(%rsp)
	movl	$86, %esi
	movq	32(%r14), %rbp
	cmpl	$60, %esi
	movq	32(%r12), %r13
	movq	40(%r12), %r15
	movq	40(%r14), %r14
	je	.L14504
	cmpl	$60, %esi
	ja	.L14521
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21045:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2664(%rsp), %rdi
.L20524:
	movq	%rax, %rdx
	call	build_complex
.L20525:
	movq	%rax, %rbx
	jmp	.L14472
.L14521:
	movl	$86, %edi
	cmpl	$61, %edi
	je	.L14505
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2656(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L14515
	cmpb	$10, %al
	je	.L14515
	cmpb	$11, %al
	je	.L14515
	cmpb	$12, %al
	movl	$70, %edi
	je	.L14515
.L14514:
	movq	2656(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L14518
	cmpb	$10, %al
	je	.L14518
	cmpb	$11, %al
	je	.L14518
	cmpb	$12, %al
	movl	$70, %edi
	je	.L14518
.L14517:
	movq	2656(%rsp), %rdx
.L20523:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2664(%rsp), %rdi
	jmp	.L20524
.L14518:
	movl	$62, %edi
	jmp	.L14517
.L14515:
	movl	$62, %edi
	jmp	.L14514
.L14505:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20523
.L14504:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21045
.L21704:
	movq	32(%r12), %r13
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	movq	%r13, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %r8
	movq	%r8, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L14472
	movq	18560(%rsp), %r10
	movq	18568(%rsp), %r11
	movq	%r14, %rbx
	movq	18576(%rsp), %r9
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r9, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L14472
	movq	18528(%rsp), %rsi
	movq	18560(%rsp), %rdi
	movq	8(%r12), %r8
	movq	18536(%rsp), %r13
	movl	$86, 9712(%rsp)
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %rbx
	movq	%rsi, 9728(%rsp)
	movq	%rdi, 9752(%rsp)
	leaq	9712(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r8, 9720(%rsp)
	movq	%r13, 9736(%rsp)
	movq	%rdx, 9744(%rsp)
	movq	%r15, 9760(%rsp)
	movq	%rbx, 9768(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L14477
	movq	9776(%rsp), %rbx
.L14478:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L14480
	cmpb	$25, %al
	je	.L21770
.L14480:
	movzbl	18(%r12), %r13d
	movzbl	18(%r14), %edx
	shrb	$3, %r13b
	shrb	$3, %dl
	andl	$1, %r13d
	andl	$1, %edx
	orb	%bpl, %r13b
	movzbl	18(%rbx), %ebp
	orb	%dl, %r13b
	salb	$3, %r13b
	andb	$-9, %bpl
	orb	%r13b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %eax
	movzbl	18(%r12), %edi
	movzbl	18(%r14), %r12d
	shrb	$3, %al
	andb	$-5, %bpl
	shrb	$2, %dil
	orl	%eax, %edi
	shrb	$2, %r12b
	orl	%r12d, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L14472
.L21770:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L14484
	cmpb	$15, %al
	je	.L14484
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L14487:
	cmpl	$128, %esi
	je	.L14489
	cmpl	$64, %esi
	jbe	.L14490
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 40(%rdx)
.L14489:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14493
	cmpb	$6, 16(%rax)
	jne	.L14480
	testb	$2, 62(%rax)
	je	.L14480
.L14493:
	cmpl	$128, %esi
	je	.L14495
	cmpl	$64, %esi
	jbe	.L14496
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20522:
	testl	$1, %eax 
	je	.L14495
	cmpl	$64, %esi
	jbe	.L14498
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	orq	%r10, 40(%rdx)
.L14495:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r15
	orq	%rdi, %r15
	orq	%r8, %r15
	setne	%cl
	movzbl	%cl, %ebp
	jmp	.L14480
.L14498:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14495
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14495
.L14496:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20522
.L14490:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14489
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L14489
.L14484:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14487
.L14477:
	movq	%r12, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L14478
.L21703:
	movq	8(%r12), %r13
	movl	$1, %r15d
	movl	$0, 652(%rsp)
	movzbl	17(%r13), %ecx
	shrb	$5, %cl
	andl	%ecx, %r15d
	cmpb	$6, 16(%r13)
	je	.L21771
.L14266:
	movl	$86, %eax
	movl	$0, 624(%rsp)
	movl	$0, 648(%rsp)
	subl	$59, %eax
	movq	32(%r12), %r11
	movq	40(%r12), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %esi
	jmp	*.L14407(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L14407:
	.quad	.L14341
	.quad	.L14344
	.quad	.L14350
	.quad	.L14383
	.quad	.L14383
	.quad	.L14383
	.quad	.L14386
	.quad	.L14392
	.quad	.L14392
	.quad	.L14392
	.quad	.L14395
	.quad	.L18929
	.quad	.L14383
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L14397
	.quad	.L14397
	.quad	.L18929
	.quad	.L18929
	.quad	.L14273
	.quad	.L14272
	.quad	.L14300
	.quad	.L14299
	.quad	.L14268
	.quad	.L14269
	.quad	.L14270
	.quad	.L14271
	.text
.L14268:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 4768(%rsp)
.L20517:
	movq	%r10, 4760(%rsp)
.L14267:
	movl	652(%rsp), %eax
	testl	%eax, %eax
	je	.L14408
	movq	4760(%rsp), %rax
	testq	%rax, %rax
	jne	.L14410
	cmpq	$0, 4768(%rsp)
	js	.L14410
.L14409:
	movl	624(%rsp), %eax
	testl	%eax, %eax
	jne	.L14408
	testb	$8, 18(%r12)
	jne	.L14408
	testb	$8, 18(%r14)
	jne	.L14408
	cmpq	$0, size_htab.0(%rip)
	movq	4768(%rsp), %rbx
	je	.L21772
.L14411:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L14415
	cmpb	$25, %al
	je	.L21773
.L14415:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %ecx
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %sil
	orb	%cl, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20525
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L14472
.L21773:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L14419
	cmpb	$15, %al
	je	.L14419
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L14422:
	cmpl	$128, %esi
	je	.L14424
	cmpl	$64, %esi
	jbe	.L14425
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L14424:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14428
	cmpb	$6, 16(%rax)
	jne	.L14415
	testb	$2, 62(%rax)
	je	.L14415
.L14428:
	cmpl	$128, %esi
	je	.L14430
	cmpl	$64, %esi
	jbe	.L14431
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20519:
	testl	$1, %eax 
	je	.L14430
	cmpl	$64, %esi
	jbe	.L14433
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L14430:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L14415
.L14433:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14430
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14430
.L14431:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20519
.L14425:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14424
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L14424
.L14419:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14422
.L21772:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L14411
.L14408:
	movq	4768(%rsp), %rdi
	movq	4760(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%r12), %r13
	movq	%rax, %rdi
	movq	%r13, 8(%rax)
	movzbl	18(%r14), %edx
	movzbl	18(%r12), %ebx
	shrb	$3, %dl
	shrb	$3, %bl
	andl	%ebx, %r11d
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L14441
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L14444
	movl	652(%rsp), %eax
	testl	%eax, %eax
	je	.L14443
.L14444:
	movl	624(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L14443:
	movl	%edx, %eax
.L20521:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	652(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L14470
	testb	$8, %dl
	jne	.L14470
	movq	4760(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L21774
.L14471:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L14470:
	movzbl	18(%rdi), %ebx
	movzbl	18(%r12), %r15d
	movzbl	18(%r14), %r12d
	movl	%ebx, %eax
	shrb	$2, %r15b
	andb	$-5, %bl
	shrb	$3, %al
	shrb	$2, %r12b
	orl	%eax, %r15d
	orl	%r12d, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L14472
.L21774:
	movq	4768(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L14471
	jmp	.L14470
.L14441:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L14447
	movl	652(%rsp), %eax
	testl	%eax, %eax
	je	.L14446
.L14447:
	movl	624(%rsp), %eax
	movl	$1, %r10d
	testl	%eax, %eax
	movl	$0, %eax
	cmove	%eax, %r10d
.L14446:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L14449
	cmpb	$25, %al
	je	.L21775
.L14449:
	testl	%r10d, %r10d
	je	.L14445
	movl	648(%rsp), %r9d
	movl	$1, %eax
	testl	%r9d, %r9d
	cmove	%eax, %ebp
.L14445:
	movl	%ebp, %eax
	jmp	.L20521
.L21775:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L14453
	cmpb	$15, %al
	je	.L14453
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L14456:
	cmpl	$128, %esi
	je	.L14458
	cmpl	$64, %esi
	jbe	.L14459
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L14458:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14462
	cmpb	$6, 16(%rax)
	jne	.L14449
	testb	$2, 62(%rax)
	je	.L14449
.L14462:
	cmpl	$128, %esi
	je	.L14464
	cmpl	$64, %esi
	jbe	.L14465
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20520:
	testl	$1, %eax 
	je	.L14464
	cmpl	$64, %esi
	jbe	.L14467
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L14464:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L14449
.L14467:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14464
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14464
.L14465:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20520
.L14459:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14458
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L14458
.L14453:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14456
.L14410:
	cmpq	$-1, %rax
	jne	.L14408
	cmpq	$0, 4768(%rsp)
	jns	.L14408
	jmp	.L14409
.L14341:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 4768(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 4760(%rsp)
	andq	%r10, %r9
.L20516:
	shrq	$63, %r9
	movl	%r9d, 624(%rsp)
	jmp	.L14267
.L14344:
	testq	%r8, %r8
	jne	.L14345
	movq	%r9, %rax
	movq	$0, 4768(%rsp)
	negq	%rax
.L20511:
	movq	%rax, 4760(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	4768(%rsp), %rdx
	addq	4760(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rbx
	movq	%rdx, 4768(%rsp)
	cmovb	%rbx, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 4760(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L20516
.L14345:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 4768(%rsp)
	notq	%rax
	jmp	.L20511
.L14350:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 9888(%rsp)
	movq	%rcx, 9896(%rsp)
	movq	%r8, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %ebp
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 9864(%rsp)
	movq	%rbx, 9904(%rsp)
	movq	%rdx, 9912(%rsp)
	movq	%rbp, 9856(%rsp)
	movq	%rdi, 9872(%rsp)
	movq	%rcx, 9880(%rsp)
	movq	$0, 9792(%rsp)
	movq	$0, 9800(%rsp)
	movq	$0, 9808(%rsp)
	movq	$0, 9816(%rsp)
	movq	$0, 9824(%rsp)
	movq	$0, 9832(%rsp)
	movq	$0, 9840(%rsp)
	movq	$0, 9848(%rsp)
	xorl	%esi, %esi
.L14362:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	9888(%rsp,%rbx,8), %rbp
	xorl	%ebx, %ebx
.L14361:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	9856(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	9792(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 9792(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L14361
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 9824(%rsp,%rbp,8)
	jle	.L14362
	movq	9800(%rsp), %rdx
	movq	9816(%rsp), %rsi
	movq	9832(%rsp), %rax
	movq	9848(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	9792(%rsp), %rdx
	addq	9808(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	9824(%rsp), %rax
	addq	9840(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 4768(%rsp)
	movq	%rsi, 4760(%rsp)
	js	.L21776
.L14365:
	testq	%r9, %r9
	js	.L21777
.L14371:
	cmpq	$0, 4760(%rsp)
	js	.L21778
	orq	%rcx, %rax
.L21044:
	setne	%r10b
	movzbl	%r10b, %eax
.L20515:
	movl	%eax, 624(%rsp)
	jmp	.L14267
.L21778:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21044
.L21777:
	testq	%r11, %r11
	jne	.L14372
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L14373:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L14371
.L14372:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L14373
.L21776:
	testq	%r8, %r8
	jne	.L14366
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L14367:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L14365
.L14366:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L14367
.L14386:
	testq	%r9, %r9
	jne	.L14387
	cmpq	$1, %r8
	je	.L20514
.L14387:
	cmpq	%r8, %r11
	je	.L21779
.L14388:
	leaq	4768(%rsp), %rbx
	leaq	4760(%rsp), %rdi
	leaq	4720(%rsp), %rcx
	leaq	4712(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20512:
	movl	$86, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20515
.L21779:
	cmpq	%r9, %r10
	jne	.L14388
	testq	%r8, %r8
	jne	.L14389
	testq	%r9, %r9
	je	.L14388
.L14389:
	movq	$1, 4768(%rsp)
.L20513:
	movq	$0, 4760(%rsp)
	jmp	.L14267
.L20514:
	movq	%r11, 4768(%rsp)
	jmp	.L20517
.L14392:
	testq	%r9, %r9
	jne	.L14395
	testq	%r8, %r8
	jle	.L14395
	testb	$4, 18(%r12)
	jne	.L14395
	testb	$4, 18(%r14)
	jne	.L14395
	testq	%r10, %r10
	jne	.L14395
	testq	%r11, %r11
	js	.L14395
	movl	$86, %edx
	leaq	-1(%r8,%r11), %rbp
	cmpl	$67, %edx
	cmove	%rbp, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 4768(%rsp)
	jmp	.L20513
.L14395:
	leaq	4720(%rsp), %rdi
	leaq	4712(%rsp), %rcx
	leaq	4768(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	4760(%rsp), %rax
	jmp	.L20512
.L14383:
	testq	%r9, %r9
	jne	.L14387
	testq	%r8, %r8
	jle	.L14386
	testb	$4, 18(%r12)
	jne	.L14386
	testb	$4, 18(%r14)
	jne	.L14386
	testq	%r10, %r10
	jne	.L14386
	testq	%r11, %r11
	js	.L14386
	movl	$86, %eax
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %eax
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 4768(%rsp)
	jmp	.L20513
.L14397:
	testl	%r15d, %r15d
	je	.L14398
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L14403
.L21201:
	cmpq	%r9, %r10
	je	.L21780
.L14402:
	movq	%rax, 4768(%rsp)
	xorl	%ebx, %ebx
	movl	$86, %eax
	cmpl	$78, %eax
	sete	%bl
	cmpq	%rbx, 4768(%rsp)
	je	.L20514
	movq	%r8, 4768(%rsp)
	movq	%r9, 4760(%rsp)
	jmp	.L14267
.L21780:
	cmpq	%r8, %r11
	jae	.L14402
.L14403:
	movl	$1, %eax
	jmp	.L14402
.L14398:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L14403
	jmp	.L21201
.L14273:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	4768(%rsp), %rbx
	leaq	4760(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21781
	cmpq	$127, %r8
	jle	.L14289
	movq	$0, 4760(%rsp)
.L20503:
	movq	$0, 4768(%rsp)
.L14290:
	cmpl	$64, %esi
	jbe	.L14293
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20504:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L14288
	cmpl	$63, %esi
	jbe	.L14297
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20506:
	movq	%rax, (%r9)
.L14288:
	movl	$1, 648(%rsp)
	jmp	.L14267
.L14297:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20505:
	movq	%rax, (%rbx)
	jmp	.L14288
.L14293:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20504
.L14289:
	cmpq	$63, %r8
	jle	.L14291
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 4760(%rsp)
	jmp	.L20503
.L14291:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 4768(%rsp)
	orq	%rdi, %r10
	movq	%r10, 4760(%rsp)
	jmp	.L14290
.L21781:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L14275
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L14276:
	cmpq	$127, %rdx
	jle	.L14277
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L14278:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L14281
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L14288
.L14281:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L14288
	cmpq	$63, %rax
	jle	.L14285
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20506
.L14285:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20505
.L14277:
	cmpq	$63, %rdx
	jle	.L14279
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L14278
.L14279:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rbp
	orq	%rbp, %r11
	movq	%r11, (%rbx)
	jmp	.L14278
.L14275:
	xorl	%edi, %edi
	jmp	.L14276
.L14272:
	negq	%r8
	jmp	.L14273
.L14300:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	4752(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	4744(%rsp), %rbx
	testq	%r8, %r8
	js	.L21782
	cmpq	$127, %r8
	jle	.L14317
	movq	$0, 4744(%rsp)
.L20507:
	movq	$0, 4752(%rsp)
.L14318:
	cmpl	$64, %edi
	jbe	.L14321
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20508:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L14316
	cmpl	$63, %edi
	jbe	.L14325
.L20510:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L14316:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	4728(%rsp), %rdi
	subq	%r8, %rsi
	leaq	4736(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L14329
	movq	$0, 4728(%rsp)
	movq	$0, 4736(%rsp)
.L14330:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L14333
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L14339:
	movq	4736(%rsp), %rdi
	movq	4728(%rsp), %r11
	orq	4752(%rsp), %rdi
	orq	4744(%rsp), %r11
	movq	%rdi, 4768(%rsp)
	movq	%r11, 4760(%rsp)
	jmp	.L14267
.L14333:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L14339
	cmpq	$63, %rax
	jle	.L14337
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L14339
.L14337:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L14339
.L14329:
	cmpq	$63, %rsi
	jle	.L14331
	leal	-64(%rsi), %ecx
	movq	$0, 4728(%rsp)
	shrq	%cl, %r10
	movq	%r10, 4736(%rsp)
	jmp	.L14330
.L14331:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 4728(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 4736(%rsp)
	jmp	.L14330
.L14325:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20509:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L14316
.L14321:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20508
.L14317:
	cmpq	$63, %r8
	jle	.L14319
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 4744(%rsp)
	jmp	.L20507
.L14319:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 4744(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 4752(%rsp)
	jmp	.L14318
.L21782:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L14305
	movq	$0, 4744(%rsp)
	movq	$0, 4752(%rsp)
.L14306:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L14309
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L14316
.L14309:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L14316
	cmpq	$63, %rax
	jle	.L14313
	subl	%esi, %edi
	jmp	.L20510
.L14313:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20509
.L14305:
	cmpq	$63, %rsi
	jle	.L14307
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 4744(%rsp)
	shrq	%cl, %rax
	movq	%rax, 4752(%rsp)
	jmp	.L14306
.L14307:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 4744(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 4752(%rsp)
	jmp	.L14306
.L14299:
	negq	%r8
	jmp	.L14300
.L14269:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 4768(%rsp)
	jmp	.L20517
.L14270:
	andq	%r8, %r11
	movq	%r11, 4768(%rsp)
.L20518:
	andq	%r9, %r10
	jmp	.L20517
.L14271:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 4768(%rsp)
	jmp	.L20518
.L21771:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	652(%rsp), %eax
	movl	%eax, 652(%rsp)
	jmp	.L14266
.L21702:
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L14251
.L21701:
	movzbl	16(%rbx), %eax
	movq	%rbp, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L14233
	cmpb	$15, %al
	je	.L14233
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L14236:
	cmpl	$128, %esi
	je	.L14238
	cmpl	$64, %esi
	jbe	.L14239
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L14238:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14242
	cmpb	$6, 16(%rax)
	jne	.L14229
	testb	$2, 62(%rax)
	je	.L14229
.L14242:
	cmpl	$128, %esi
	je	.L14244
	cmpl	$64, %esi
	jbe	.L14245
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20502:
	testl	$1, %eax 
	je	.L14244
	cmpl	$64, %esi
	jbe	.L14247
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	orq	%rbp, 40(%rdx)
.L14244:
	xorq	32(%rdx), %r8
	orq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L14229
.L14247:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14244
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14244
.L14245:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20502
.L14239:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14238
	movq	$-1, %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 32(%rdx)
	jmp	.L14238
.L14233:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14236
.L21700:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L14225
.L21699:
	movq	new_const.1(%rip), %r12
	movl	$25, %edi
	movq	%r12, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L14222
.L21698:
	movzbl	16(%rbp), %eax
	movq	%rbx, %rsi
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L14204
	cmpb	$15, %al
	je	.L14204
	movzwl	60(%rbp), %edi
	andl	$511, %edi
.L14207:
	cmpl	$128, %edi
	je	.L14209
	cmpl	$64, %edi
	jbe	.L14210
	leal	-64(%rdi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L14209:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14213
	cmpb	$6, 16(%rax)
	jne	.L14200
	testb	$2, 62(%rax)
	je	.L14200
.L14213:
	cmpl	$128, %edi
	je	.L14215
	cmpl	$64, %edi
	jbe	.L14216
	movq	40(%rdx), %rax
	leal	-65(%rdi), %ecx
	sarq	%cl, %rax
.L20501:
	testl	$1, %eax 
	je	.L14215
	cmpl	$64, %edi
	jbe	.L14218
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	orq	%rbp, 40(%rdx)
.L14215:
	xorq	32(%rdx), %rsi
	xorq	40(%rdx), %r9
	movslq	%r10d,%rdi
	orq	%rsi, %rdi
	orq	%r9, %rdi
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L14200
.L14218:
	movq	$-1, %rax
	cmpl	$63, %edi
	movq	%rax, 40(%rdx)
	ja	.L14215
	movl	%edi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14215
.L14216:
	movq	32(%rdx), %rax
	leal	-1(%rdi), %ecx
	shrq	%cl, %rax
	jmp	.L20501
.L14210:
	cmpl	$63, %edi
	movq	$0, 40(%rdx)
	ja	.L14209
	movq	$-1, %r12
	movl	%edi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L14209
.L14204:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edi
	movl	$32, %eax
	cmove	%eax, %edi
	jmp	.L14207
.L21697:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L14196
.L21695:
	movq	688(%rsp), %r13
	movq	688(%rsp), %rbx
	cmpl	$60, %r12d
	movq	8(%r13), %rax
	movq	%rax, 2680(%rsp)
	movq	32(%r14), %rbp
	movq	40(%rbx), %r15
	movq	32(%rbx), %r13
	movq	40(%r14), %r14
	je	.L14180
	cmpl	$60, %r12d
	ja	.L14191
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21043:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2680(%rsp), %rdi
.L20499:
	movq	%rax, %rdx
	call	build_complex
.L20500:
	movq	%rax, %rbx
	jmp	.L14148
.L14191:
	cmpl	$61, %r12d
	je	.L14181
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2672(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L14185
	cmpb	$10, %al
	je	.L14185
	cmpb	$11, %al
	je	.L14185
	cmpb	$12, %al
	movl	$70, %edi
	je	.L14185
.L14184:
	movq	2672(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r15
	movq	%rax, %rsi
	movzbl	16(%r15), %eax
	cmpb	$6, %al
	je	.L14188
	cmpb	$10, %al
	je	.L14188
	cmpb	$11, %al
	je	.L14188
	cmpb	$12, %al
	movl	$70, %edi
	je	.L14188
.L14187:
	movq	2672(%rsp), %rdx
.L20498:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2680(%rsp), %rdi
	jmp	.L20499
.L14188:
	movl	$62, %edi
	jmp	.L14187
.L14185:
	movl	$62, %edi
	jmp	.L14184
.L14181:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20498
.L14180:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21043
.L21694:
	movq	688(%rsp), %rbx
	xorl	%ebp, %ebp
	movq	32(%rbx), %r9
	movq	%r9, 18528(%rsp)
	movq	40(%rbx), %r15
	movq	%r15, 18536(%rsp)
	movq	48(%rbx), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %r11
	movq	%r11, 18560(%rsp)
	movq	40(%r14), %r10
	movq	%r10, 18568(%rsp)
	movq	48(%r14), %rcx
	movq	%rdi, 16(%rsp)
	movq	%r9, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%rcx, 18576(%rsp)
	call	target_isnan
	movq	688(%rsp), %rbx
	testl	%eax, %eax
	jne	.L14148
	movq	18560(%rsp), %r13
	movq	18568(%rsp), %rsi
	movq	%r14, %rbx
	movq	18576(%rsp), %r8
	movq	%r13, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%r8, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L14148
	movq	688(%rsp), %rax
	movq	18568(%rsp), %rdi
	leaq	9920(%rsp), %rsi
	movq	18528(%rsp), %r10
	movq	18536(%rsp), %rcx
	movq	18544(%rsp), %r9
	movq	18560(%rsp), %r15
	movq	8(%rax), %r11
	movq	18576(%rsp), %rdx
	movl	%r12d, 9920(%rsp)
	movq	%rdi, 9968(%rsp)
	movq	%r10, 9936(%rsp)
	movq	%rcx, 9944(%rsp)
	movl	$const_binop_1, %edi
	movq	%r9, 9952(%rsp)
	movq	%r15, 9960(%rsp)
	movq	%r11, 9928(%rsp)
	movq	%rdx, 9976(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L14153
	movq	9984(%rsp), %rbx
.L14154:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L14156
	cmpb	$25, %al
	je	.L21785
.L14156:
	movq	688(%rsp), %r10
	movzbl	18(%r14), %edx
	movzbl	18(%r10), %r11d
	shrb	$3, %dl
	andl	$1, %edx
	shrb	$3, %r11b
	andl	$1, %r11d
	orb	%bpl, %r11b
	movzbl	18(%rbx), %ebp
	orb	%dl, %r11b
	salb	$3, %r11b
	andb	$-9, %bpl
	orb	%r11b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %ecx
	movzbl	18(%r14), %r9d
	movzbl	18(%r10), %edi
	shrb	$3, %cl
	andb	$-5, %bpl
	shrb	$2, %r9b
	shrb	$2, %dil
	orl	%ecx, %edi
	orl	%r9d, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L14148
.L21785:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L14160
	cmpb	$15, %al
	je	.L14160
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L14163:
	cmpl	$128, %esi
	je	.L14165
	cmpl	$64, %esi
	jbe	.L14166
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L14165:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14169
	cmpb	$6, 16(%rax)
	jne	.L14156
	testb	$2, 62(%rax)
	je	.L14156
.L14169:
	cmpl	$128, %esi
	je	.L14171
	cmpl	$64, %esi
	jbe	.L14172
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20497:
	testl	$1, %eax 
	je	.L14171
	cmpl	$64, %esi
	jbe	.L14174
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L14171:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r15
	orq	%rdi, %r15
	orq	%r8, %r15
	setne	%r8b
	movzbl	%r8b, %ebp
	jmp	.L14156
.L14174:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14171
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14171
.L14172:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20497
.L14166:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14165
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L14165
.L14160:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14163
.L14153:
	movq	688(%rsp), %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L14154
.L21693:
	movq	8(%rbp), %r13
	movl	$1, %r15d
	movl	$0, 684(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21786
.L13942:
	movq	688(%rsp), %rbp
	leal	-59(%r12), %eax
	movl	$0, 656(%rsp)
	cmpl	$30, %eax
	movl	$0, 680(%rsp)
	movq	40(%r14), %r9
	movq	32(%r14), %r8
	movq	32(%rbp), %r11
	movq	40(%rbp), %r10
	ja	.L18929
	mov	%eax, %edi
	jmp	*.L14083(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L14083:
	.quad	.L14017
	.quad	.L14020
	.quad	.L14026
	.quad	.L14059
	.quad	.L14059
	.quad	.L14059
	.quad	.L14062
	.quad	.L14068
	.quad	.L14068
	.quad	.L14068
	.quad	.L14071
	.quad	.L18929
	.quad	.L14059
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L14073
	.quad	.L14073
	.quad	.L18929
	.quad	.L18929
	.quad	.L13949
	.quad	.L13948
	.quad	.L13976
	.quad	.L13975
	.quad	.L13944
	.quad	.L13945
	.quad	.L13946
	.quad	.L13947
	.text
.L13944:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 4832(%rsp)
.L20492:
	movq	%r10, 4824(%rsp)
.L13943:
	movl	684(%rsp), %eax
	testl	%eax, %eax
	je	.L14084
	movq	4824(%rsp), %rax
	testq	%rax, %rax
	jne	.L14086
	cmpq	$0, 4832(%rsp)
	js	.L14086
.L14085:
	movl	656(%rsp), %eax
	testl	%eax, %eax
	jne	.L14084
	movq	688(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L14084
	testb	$8, 18(%r14)
	jne	.L14084
	cmpq	$0, size_htab.0(%rip)
	movq	4832(%rsp), %rbx
	je	.L21787
.L14087:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L14091
	cmpb	$25, %al
	je	.L21788
.L14091:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %ebp
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%bpl, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20500
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L14148
.L21788:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L14095
	cmpb	$15, %al
	je	.L14095
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L14098:
	cmpl	$128, %esi
	je	.L14100
	cmpl	$64, %esi
	jbe	.L14101
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L14100:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14104
	cmpb	$6, 16(%rax)
	jne	.L14091
	testb	$2, 62(%rax)
	je	.L14091
.L14104:
	cmpl	$128, %esi
	je	.L14106
	cmpl	$64, %esi
	jbe	.L14107
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20494:
	testl	$1, %eax 
	je	.L14106
	cmpl	$64, %esi
	jbe	.L14109
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	orq	%r12, 40(%rdx)
.L14106:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L14091
.L14109:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14106
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14106
.L14107:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20494
.L14101:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14100
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L14100
.L14095:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14098
.L21787:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L14087
.L14084:
	movq	4832(%rsp), %rdi
	movq	4824(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	688(%rsp), %r11
	movq	%rax, %rdi
	movq	8(%r11), %rbx
	movq	%rbx, 8(%rax)
	movzbl	18(%r14), %ecx
	movzbl	18(%r11), %r13d
	movl	$1, %r11d
	shrb	$3, %cl
	shrb	$3, %r13b
	movl	%ecx, %ebx
	andl	%r13d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L14117
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L14120
	movl	684(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L14119
.L14120:
	movl	656(%rsp), %r15d
	movl	$1, %eax
	testl	%r15d, %r15d
	cmovne	%eax, %edx
.L14119:
	movl	%edx, %eax
.L20496:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	684(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L14146
	testb	$8, %dl
	jne	.L14146
	movq	4824(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L21789
.L14147:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L14146:
	movq	688(%rsp), %rdx
	movzbl	18(%rdi), %r8d
	movq	%rdi, %rbx
	movzbl	18(%r14), %eax
	movzbl	18(%rdx), %esi
	movl	%r8d, %r13d
	andb	$-5, %r8b
	shrb	$3, %r13b
	shrb	$2, %al
	shrb	$2, %sil
	orl	%r13d, %esi
	orl	%eax, %esi
	andb	$1, %sil
	salb	$2, %sil
	orb	%sil, %r8b
	movb	%r8b, 18(%rdi)
	jmp	.L14148
.L21789:
	movq	4832(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L14147
	jmp	.L14146
.L14117:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L14123
	movl	684(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L14122
.L14123:
	movl	656(%rsp), %eax
	movl	$1, %r10d
	movl	$0, %esi
	testl	%eax, %eax
	cmove	%esi, %r10d
.L14122:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L14125
	cmpb	$25, %al
	je	.L21790
.L14125:
	testl	%r10d, %r10d
	je	.L14121
	movl	680(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L14121:
	movl	%ebp, %eax
	jmp	.L20496
.L21790:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L14129
	cmpb	$15, %al
	je	.L14129
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L14132:
	cmpl	$128, %esi
	je	.L14134
	cmpl	$64, %esi
	jbe	.L14135
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L14134:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L14138
	cmpb	$6, 16(%rax)
	jne	.L14125
	testb	$2, 62(%rax)
	je	.L14125
.L14138:
	cmpl	$128, %esi
	je	.L14140
	cmpl	$64, %esi
	jbe	.L14141
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20495:
	testl	$1, %eax 
	je	.L14140
	cmpl	$64, %esi
	jbe	.L14143
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L14140:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L14125
.L14143:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L14140
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L14140
.L14141:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20495
.L14135:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L14134
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L14134
.L14129:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L14132
.L14086:
	cmpq	$-1, %rax
	jne	.L14084
	cmpq	$0, 4832(%rsp)
	jns	.L14084
	jmp	.L14085
.L14017:
	leaq	(%r9,%r10), %rdi
	leaq	(%r8,%r11), %rsi
	cmpq	%r11, %rsi
	leaq	1(%rdi), %rax
	movq	%rsi, 4832(%rsp)
	cmovb	%rax, %rdi
	xorq	%r10, %r9 
	notq	%r9
	xorq	%rdi, %r10 
	movq	%rdi, 4824(%rsp)
	andq	%r10, %r9
.L20491:
	shrq	$63, %r9
	movl	%r9d, 656(%rsp)
	jmp	.L13943
.L14020:
	testq	%r8, %r8
	jne	.L14021
	movq	%r9, %rax
	movq	$0, 4832(%rsp)
	negq	%rax
.L20486:
	movq	%rax, 4824(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	4832(%rsp), %rdx
	addq	4824(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 4832(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 4824(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20491
.L14021:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 4832(%rsp)
	notq	%rax
	jmp	.L20486
.L14026:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 10096(%rsp)
	movq	%rcx, 10104(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 10064(%rsp)
	leaq	4824(%rsp), %r12
	movq	%rbp, 10112(%rsp)
	movq	%rdx, 10120(%rsp)
	movq	%rdi, 10072(%rsp)
	movq	%rbx, 10080(%rsp)
	movq	%rcx, 10088(%rsp)
	movq	$0, 10000(%rsp)
	movq	$0, 10008(%rsp)
	movq	$0, 10016(%rsp)
	movq	$0, 10024(%rsp)
	movq	$0, 10032(%rsp)
	movq	$0, 10040(%rsp)
	movq	$0, 10048(%rsp)
	movq	$0, 10056(%rsp)
	xorl	%esi, %esi
.L14038:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	10096(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L14037:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	10064(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	10000(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 10000(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L14037
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 10032(%rsp,%rdi,8)
	jle	.L14038
	movq	10008(%rsp), %rdx
	movq	10024(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	10000(%rsp), %rdx
	addq	10016(%rsp), %rsi
	movq	%rdx, 4832(%rsp)
	movq	%rsi, (%r12)
	movq	10056(%rsp), %rcx
	movq	10040(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	10048(%rsp), %rcx
	addq	10032(%rsp), %rax
	testq	%r10, %r10
	js	.L21791
.L14041:
	testq	%r9, %r9
	js	.L21792
.L14047:
	cmpq	$0, (%r12)
	js	.L21793
	orq	%rcx, %rax
.L21042:
	setne	%r10b
	movzbl	%r10b, %eax
.L20490:
	movl	%eax, 656(%rsp)
	jmp	.L13943
.L21793:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21042
.L21792:
	testq	%r11, %r11
	jne	.L14048
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L14049:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L14047
.L14048:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L14049
.L21791:
	testq	%r8, %r8
	jne	.L14042
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L14043:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L14041
.L14042:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L14043
.L14062:
	testq	%r9, %r9
	jne	.L14063
	cmpq	$1, %r8
	je	.L20489
.L14063:
	cmpq	%r8, %r11
	je	.L21794
.L14064:
	leaq	4832(%rsp), %rcx
	leaq	4824(%rsp), %rbx
	leaq	4784(%rsp), %rbp
	leaq	4776(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
.L20487:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20490
.L21794:
	cmpq	%r9, %r10
	jne	.L14064
	testq	%r8, %r8
	jne	.L14065
	testq	%r9, %r9
	je	.L14064
.L14065:
	movq	$1, 4832(%rsp)
.L20488:
	movq	$0, 4824(%rsp)
	jmp	.L13943
.L20489:
	movq	%r11, 4832(%rsp)
	jmp	.L20492
.L14068:
	testq	%r9, %r9
	jne	.L14071
	testq	%r8, %r8
	jle	.L14071
	movq	688(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L14071
	testb	$4, 18(%r14)
	jne	.L14071
	testq	%r10, %r10
	jne	.L14071
	testq	%r11, %r11
	js	.L14071
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 4832(%rsp)
	jmp	.L20488
.L14071:
	leaq	4784(%rsp), %rbx
	leaq	4776(%rsp), %rbp
	leaq	4832(%rsp), %rdx
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	4824(%rsp), %rax
	jmp	.L20487
.L14059:
	testq	%r9, %r9
	jne	.L14063
	testq	%r8, %r8
	jle	.L14062
	movq	688(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L14062
	testb	$4, 18(%r14)
	jne	.L14062
	testq	%r10, %r10
	jne	.L14062
	testq	%r11, %r11
	js	.L14062
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 4832(%rsp)
	jmp	.L20488
.L14073:
	testl	%r15d, %r15d
	je	.L14074
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L14079
.L21200:
	cmpq	%r9, %r10
	je	.L21795
.L14078:
	xorl	%ecx, %ecx
	movq	%rax, 4832(%rsp)
	cmpl	$78, %r12d
	sete	%cl
	cmpq	%rcx, 4832(%rsp)
	je	.L20489
	movq	%r8, 4832(%rsp)
	movq	%r9, 4824(%rsp)
	jmp	.L13943
.L21795:
	cmpq	%r8, %r11
	jae	.L14078
.L14079:
	movl	$1, %eax
	jmp	.L14078
.L14074:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L14079
	jmp	.L21200
.L13949:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	4832(%rsp), %rbx
	leaq	4824(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21796
	cmpq	$127, %r8
	jle	.L13965
	movq	$0, 4824(%rsp)
.L20477:
	movq	$0, 4832(%rsp)
.L13966:
	cmpl	$64, %esi
	jbe	.L13969
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20478:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L13964
	cmpl	$63, %esi
	jbe	.L13973
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20480:
	movq	%rax, (%r9)
.L13964:
	movl	$1, 680(%rsp)
	jmp	.L13943
.L13973:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20479:
	movq	%rax, (%rbx)
	jmp	.L13964
.L13969:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20478
.L13965:
	cmpq	$63, %r8
	jle	.L13967
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 4824(%rsp)
	jmp	.L20477
.L13967:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%r11, %rdi
	subl	%r8d, %eax
	salq	%cl, %r10
	movl	%eax, %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rcx
	shrq	$1, %rcx
	orq	%rcx, %r10
	movl	%r8d, %ecx
	salq	%cl, %r11
	movq	%r10, 4824(%rsp)
	movq	%r11, 4832(%rsp)
	jmp	.L13966
.L21796:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L13951
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L13952:
	cmpq	$127, %rdx
	jle	.L13953
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L13954:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L13957
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L13964
.L13957:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L13964
	cmpq	$63, %rax
	jle	.L13961
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20480
.L13961:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20479
.L13953:
	cmpq	$63, %rdx
	jle	.L13955
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L13954
.L13955:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L13954
.L13951:
	xorl	%edi, %edi
	jmp	.L13952
.L13948:
	negq	%r8
	jmp	.L13949
.L13976:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	4816(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	4808(%rsp), %rbx
	testq	%r8, %r8
	js	.L21797
	cmpq	$127, %r8
	jle	.L13993
	movq	$0, 4808(%rsp)
.L20482:
	movq	$0, 4816(%rsp)
.L13994:
	cmpl	$64, %edi
	jbe	.L13997
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20483:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L13992
	cmpl	$63, %edi
	jbe	.L14001
.L20485:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L13992:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	4792(%rsp), %rdi
	subq	%r8, %rsi
	leaq	4800(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L14005
	movq	$0, 4792(%rsp)
	movq	$0, 4800(%rsp)
.L14006:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L14009
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L14015:
	movq	4800(%rsp), %r8
	movq	4792(%rsp), %r9
	orq	4816(%rsp), %r8
	orq	4808(%rsp), %r9
	movq	%r8, 4832(%rsp)
	movq	%r9, 4824(%rsp)
	jmp	.L13943
.L14009:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L14015
	cmpq	$63, %rax
	jle	.L14013
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L14015
.L14013:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L14015
.L14005:
	cmpq	$63, %rsi
	jle	.L14007
	leal	-64(%rsi), %ecx
	movq	$0, 4792(%rsp)
	shrq	%cl, %r10
	movq	%r10, 4800(%rsp)
	jmp	.L14006
.L14007:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 4792(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 4800(%rsp)
	jmp	.L14006
.L14001:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20484:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L13992
.L13997:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20483
.L13993:
	cmpq	$63, %r8
	jle	.L13995
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 4808(%rsp)
	jmp	.L20482
.L13995:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 4808(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 4816(%rsp)
	jmp	.L13994
.L21797:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L13981
	movq	$0, 4808(%rsp)
	movq	$0, 4816(%rsp)
.L13982:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L13985
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L13992
.L13985:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L13992
	cmpq	$63, %rax
	jle	.L13989
	subl	%esi, %edi
	jmp	.L20485
.L13989:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20484
.L13981:
	cmpq	$63, %rsi
	jle	.L13983
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 4808(%rsp)
	shrq	%cl, %rax
.L20481:
	movq	%rax, 4816(%rsp)
	jmp	.L13982
.L13983:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 4808(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20481
.L13975:
	negq	%r8
	jmp	.L13976
.L13945:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 4832(%rsp)
	jmp	.L20492
.L13946:
	andq	%r8, %r11
	movq	%r11, 4832(%rsp)
.L20493:
	andq	%r9, %r10
	jmp	.L20492
.L13947:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 4832(%rsp)
	jmp	.L20493
.L21786:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	684(%rsp), %eax
	movl	%eax, 684(%rsp)
	jmp	.L13942
.L21692:
	movq	8(%r12), %rax
	cmpl	$60, %ebx
	movq	%rax, 2696(%rsp)
	movq	32(%r14), %rbp
	movq	40(%r12), %r15
	movq	32(%r12), %r13
	movq	40(%r14), %r14
	je	.L13919
	cmpl	$60, %ebx
	ja	.L13930
	cmpl	$59, %ebx
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21041:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2696(%rsp), %rdi
.L20475:
	movq	%rax, %rdx
	call	build_complex
.L20476:
	movq	%rax, 696(%rsp)
	jmp	.L13887
.L13930:
	cmpl	$61, %ebx
	je	.L13920
	cmpl	$70, %ebx
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2688(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L13924
	cmpb	$10, %al
	je	.L13924
	cmpb	$11, %al
	je	.L13924
	cmpb	$12, %al
	movl	$70, %edi
	je	.L13924
.L13923:
	movq	2688(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L13927
	cmpb	$10, %al
	je	.L13927
	cmpb	$11, %al
	je	.L13927
	cmpb	$12, %al
	movl	$70, %edi
	je	.L13927
.L13926:
	movq	2688(%rsp), %rdx
.L20474:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2696(%rsp), %rdi
	jmp	.L20475
.L13927:
	movl	$62, %edi
	jmp	.L13926
.L13924:
	movl	$62, %edi
	jmp	.L13923
.L13920:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20474
.L13919:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21041
.L21691:
	movq	32(%r12), %r11
	xorl	%ebp, %ebp
	movq	%r11, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rsi
	movq	%rsi, 18560(%rsp)
	movq	40(%r14), %r15
	movq	%r15, 18568(%rsp)
	movq	48(%r14), %r13
	movq	%rdi, 16(%rsp)
	movq	%r11, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r13, 18576(%rsp)
	call	target_isnan
	movq	%r12, 696(%rsp)
	testl	%eax, %eax
	jne	.L13887
	movq	18560(%rsp), %r10
	movq	18568(%rsp), %rcx
	movq	18576(%rsp), %r9
	movq	%r10, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r9, 16(%rsp)
	call	target_isnan
	movq	%r14, 696(%rsp)
	testl	%eax, %eax
	jne	.L13887
	movq	8(%r12), %rsi
	movq	18568(%rsp), %rdi
	movl	%ebx, 10128(%rsp)
	movq	18528(%rsp), %r15
	movq	18536(%rsp), %r13
	movq	18544(%rsp), %r11
	movq	18560(%rsp), %rdx
	movq	18576(%rsp), %r8
	movq	%rsi, 10136(%rsp)
	movq	%rdi, 10176(%rsp)
	leaq	10128(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r15, 10144(%rsp)
	movq	%r13, 10152(%rsp)
	movq	%r11, 10160(%rsp)
	movq	%rdx, 10168(%rsp)
	movq	%r8, 10184(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L13892
	movq	10192(%rsp), %rax
	movq	%rax, 696(%rsp)
.L13893:
	movq	696(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L13895
	cmpb	$25, %al
	je	.L21800
.L13895:
	movzbl	18(%r12), %r15d
	movzbl	18(%r14), %edx
	shrb	$3, %r15b
	shrb	$3, %dl
	andl	$1, %r15d
	andl	$1, %edx
	orb	%bpl, %r15b
	movq	696(%rsp), %rbp
	orb	%dl, %r15b
	salb	$3, %r15b
	movzbl	18(%rbp), %r8d
	andb	$-9, %r8b
	orb	%r15b, %r8b
	movb	%r8b, 18(%rbp)
	movl	%r8d, %r13d
	movzbl	18(%r12), %edi
	movzbl	18(%r14), %r12d
	shrb	$3, %r13b
	andb	$-5, %r8b
	shrb	$2, %dil
	orl	%r13d, %edi
	shrb	$2, %r12b
	orl	%r12d, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %r8b
	movb	%r8b, 18(%rbp)
	jmp	.L13887
.L21800:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %rdi
	movq	40(%rdx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13899
	cmpb	$15, %al
	je	.L13899
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L13902:
	cmpl	$128, %esi
	je	.L13904
	cmpl	$64, %esi
	jbe	.L13905
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L13904:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13908
	cmpb	$6, 16(%rax)
	jne	.L13895
	testb	$2, 62(%rax)
	je	.L13895
.L13908:
	cmpl	$128, %esi
	je	.L13910
	cmpl	$64, %esi
	jbe	.L13911
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20473:
	testl	$1, %eax 
	je	.L13910
	cmpl	$64, %esi
	jbe	.L13913
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	orq	%r10, 40(%rdx)
.L13910:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r11
	orq	%rdi, %r11
	orq	%r8, %r11
	setne	%cl
	movzbl	%cl, %ebp
	jmp	.L13895
.L13913:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13910
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13910
.L13911:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20473
.L13905:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13904
	movq	$-1, %r9
	movl	%esi, %ecx
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 32(%rdx)
	jmp	.L13904
.L13899:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13902
.L13892:
	movq	%r12, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, 696(%rsp)
	jmp	.L13893
.L21690:
	movq	8(%r12), %r13
	movl	$1, %r15d
	movl	$0, 732(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21801
.L13681:
	leal	-59(%rbx), %eax
	movl	$0, 704(%rsp)
	movl	$0, 728(%rsp)
	cmpl	$30, %eax
	movq	32(%r12), %r11
	movq	40(%r12), %r10
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L13822(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L13822:
	.quad	.L13756
	.quad	.L13759
	.quad	.L13765
	.quad	.L13798
	.quad	.L13798
	.quad	.L13798
	.quad	.L13801
	.quad	.L13807
	.quad	.L13807
	.quad	.L13807
	.quad	.L13810
	.quad	.L18929
	.quad	.L13798
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L13812
	.quad	.L13812
	.quad	.L18929
	.quad	.L18929
	.quad	.L13688
	.quad	.L13687
	.quad	.L13715
	.quad	.L13714
	.quad	.L13683
	.quad	.L13684
	.quad	.L13685
	.quad	.L13686
	.text
.L13683:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 4896(%rsp)
.L20468:
	movq	%r10, 4888(%rsp)
.L13682:
	movl	732(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L13823
	movq	4888(%rsp), %rax
	testq	%rax, %rax
	jne	.L13825
	cmpq	$0, 4896(%rsp)
	js	.L13825
.L13824:
	movl	704(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L13823
	testb	$8, 18(%r12)
	jne	.L13823
	testb	$8, 18(%r14)
	jne	.L13823
	cmpq	$0, size_htab.0(%rip)
	movq	4896(%rsp), %rbx
	je	.L21802
.L13826:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L13830
	cmpb	$25, %al
	je	.L21803
.L13830:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebp
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bpl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20476
	movq	new_const.1(%rip), %r10
	movl	$25, %edi
	movq	%r10, (%rdx)
	movq	%r10, 696(%rsp)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L13887
.L21803:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L13834
	cmpb	$15, %al
	je	.L13834
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L13837:
	cmpl	$128, %esi
	je	.L13839
	cmpl	$64, %esi
	jbe	.L13840
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L13839:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13843
	cmpb	$6, 16(%rax)
	jne	.L13830
	testb	$2, 62(%rax)
	je	.L13830
.L13843:
	cmpl	$128, %esi
	je	.L13845
	cmpl	$64, %esi
	jbe	.L13846
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20470:
	testl	$1, %eax 
	je	.L13845
	cmpl	$64, %esi
	jbe	.L13848
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L13845:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%bl
	movzbl	%bl, %r10d
	jmp	.L13830
.L13848:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13845
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13845
.L13846:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20470
.L13840:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13839
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L13839
.L13834:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13837
.L21802:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L13826
.L13823:
	movq	4896(%rsp), %rdi
	movq	4888(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r12), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movzbl	18(%r14), %r8d
	movl	$1, %r11d
	movzbl	18(%r12), %r13d
	shrb	$3, %r8b
	shrb	$3, %r13b
	movl	%r8d, %ebx
	andl	%r13d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L13856
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L13859
	movl	732(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L13858
.L13859:
	movl	704(%rsp), %esi
	movl	$1, %eax
	testl	%esi, %esi
	cmovne	%eax, %edx
.L13858:
	movl	%edx, %eax
.L20472:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	732(%rsp), %eax
	testl	%eax, %eax
	je	.L13885
	testb	$8, %dl
	jne	.L13885
	movq	4888(%rsp), %rax
	cmpq	%rax, 40(%rdi)
	je	.L21804
.L13886:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L13885:
	movzbl	18(%rdi), %ebp
	movzbl	18(%r12), %r10d
	movzbl	18(%r14), %r12d
	movl	%ebp, %r8d
	shrb	$2, %r10b
	andb	$-5, %bpl
	shrb	$3, %r8b
	shrb	$2, %r12b
	orl	%r8d, %r10d
	orl	%r12d, %r10d
	andb	$1, %r10b
	salb	$2, %r10b
	orb	%r10b, %bpl
	movb	%bpl, 18(%rdi)
	movq	%rdi, 696(%rsp)
	jmp	.L13887
.L21804:
	movq	4896(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L13886
	jmp	.L13885
.L13856:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L13862
	movl	732(%rsp), %eax
	testl	%eax, %eax
	je	.L13861
.L13862:
	movl	704(%rsp), %eax
	movl	$1, %r10d
	testl	%eax, %eax
	movl	$0, %eax
	cmove	%eax, %r10d
.L13861:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L13864
	cmpb	$25, %al
	je	.L21805
.L13864:
	testl	%r10d, %r10d
	je	.L13860
	movl	728(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L13860:
	movl	%ebp, %eax
	jmp	.L20472
.L21805:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13868
	cmpb	$15, %al
	je	.L13868
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L13871:
	cmpl	$128, %esi
	je	.L13873
	cmpl	$64, %esi
	jbe	.L13874
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L13873:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13877
	cmpb	$6, 16(%rax)
	jne	.L13864
	testb	$2, 62(%rax)
	je	.L13864
.L13877:
	cmpl	$128, %esi
	je	.L13879
	cmpl	$64, %esi
	jbe	.L13880
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20471:
	testl	$1, %eax 
	je	.L13879
	cmpl	$64, %esi
	jbe	.L13882
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L13879:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L13864
.L13882:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13879
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13879
.L13880:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20471
.L13874:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13873
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L13873
.L13868:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13871
.L13825:
	cmpq	$-1, %rax
	jne	.L13823
	cmpq	$0, 4896(%rsp)
	jns	.L13823
	jmp	.L13824
.L13756:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 4896(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 4888(%rsp)
	andq	%r10, %r9
.L20467:
	shrq	$63, %r9
	movl	%r9d, 704(%rsp)
	jmp	.L13682
.L13759:
	testq	%r8, %r8
	jne	.L13760
	movq	%r9, %rax
	movq	$0, 4896(%rsp)
	negq	%rax
.L20462:
	movq	%rax, 4888(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	4896(%rsp), %rdx
	addq	4888(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rbx
	movq	%rdx, 4896(%rsp)
	cmovb	%rbx, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 4888(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L20467
.L13760:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 4896(%rsp)
	notq	%rax
	jmp	.L20462
.L13765:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 10304(%rsp)
	movq	%rcx, 10312(%rsp)
	movq	%r8, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %ebp
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 10280(%rsp)
	movq	%rbx, 10320(%rsp)
	movq	%rdx, 10328(%rsp)
	movq	%rbp, 10272(%rsp)
	movq	%rdi, 10288(%rsp)
	movq	%rcx, 10296(%rsp)
	movq	$0, 10208(%rsp)
	movq	$0, 10216(%rsp)
	movq	$0, 10224(%rsp)
	movq	$0, 10232(%rsp)
	movq	$0, 10240(%rsp)
	movq	$0, 10248(%rsp)
	movq	$0, 10256(%rsp)
	movq	$0, 10264(%rsp)
	xorl	%esi, %esi
.L13777:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	10304(%rsp,%rbx,8), %rbp
	xorl	%ebx, %ebx
.L13776:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	10272(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	10208(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 10208(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L13776
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 10240(%rsp,%rbp,8)
	jle	.L13777
	movq	10216(%rsp), %rdx
	movq	10232(%rsp), %rsi
	movq	10248(%rsp), %rax
	movq	10264(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	10208(%rsp), %rdx
	addq	10224(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	10240(%rsp), %rax
	addq	10256(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 4896(%rsp)
	movq	%rsi, 4888(%rsp)
	js	.L21806
.L13780:
	testq	%r9, %r9
	js	.L21807
.L13786:
	cmpq	$0, 4888(%rsp)
	js	.L21808
	orq	%rcx, %rax
.L21040:
	setne	%r9b
	movzbl	%r9b, %eax
.L20466:
	movl	%eax, 704(%rsp)
	jmp	.L13682
.L21808:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21040
.L21807:
	testq	%r11, %r11
	jne	.L13787
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L13788:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L13786
.L13787:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L13788
.L21806:
	testq	%r8, %r8
	jne	.L13781
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L13782:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L13780
.L13781:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L13782
.L13801:
	testq	%r9, %r9
	jne	.L13802
	cmpq	$1, %r8
	je	.L20465
.L13802:
	cmpq	%r8, %r11
	je	.L21809
.L13803:
	leaq	4896(%rsp), %rbp
	leaq	4888(%rsp), %rdi
	leaq	4848(%rsp), %rcx
	leaq	4840(%rsp), %rax
	movq	%rbp, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20463:
	movl	%ebx, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20466
.L21809:
	cmpq	%r9, %r10
	jne	.L13803
	testq	%r8, %r8
	jne	.L13804
	testq	%r9, %r9
	je	.L13803
.L13804:
	movq	$1, 4896(%rsp)
.L20464:
	movq	$0, 4888(%rsp)
	jmp	.L13682
.L20465:
	movq	%r11, 4896(%rsp)
	jmp	.L20468
.L13807:
	testq	%r9, %r9
	jne	.L13810
	testq	%r8, %r8
	jle	.L13810
	testb	$4, 18(%r12)
	jne	.L13810
	testb	$4, 18(%r14)
	jne	.L13810
	testq	%r10, %r10
	jne	.L13810
	testq	%r11, %r11
	js	.L13810
	cmpl	$67, %ebx
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 4896(%rsp)
	jmp	.L20464
.L13810:
	leaq	4848(%rsp), %rdi
	leaq	4840(%rsp), %rcx
	leaq	4896(%rsp), %rdx
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	4888(%rsp), %rax
	jmp	.L20463
.L13798:
	testq	%r9, %r9
	jne	.L13802
	testq	%r8, %r8
	jle	.L13801
	testb	$4, 18(%r12)
	jne	.L13801
	testb	$4, 18(%r14)
	jne	.L13801
	testq	%r10, %r10
	jne	.L13801
	testq	%r11, %r11
	js	.L13801
	cmpl	$63, %ebx
	leaq	-1(%r8,%r11), %r10
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 4896(%rsp)
	jmp	.L20464
.L13812:
	testl	%r15d, %r15d
	je	.L13813
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L13818
.L21199:
	cmpq	%r9, %r10
	je	.L21810
.L13817:
	xorl	%ebp, %ebp
	movq	%rax, 4896(%rsp)
	cmpl	$78, %ebx
	sete	%bpl
	cmpq	%rbp, 4896(%rsp)
	je	.L20465
	movq	%r8, 4896(%rsp)
	movq	%r9, 4888(%rsp)
	jmp	.L13682
.L21810:
	cmpq	%r8, %r11
	jae	.L13817
.L13818:
	movl	$1, %eax
	jmp	.L13817
.L13813:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L13818
	jmp	.L21199
.L13688:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	4896(%rsp), %rbx
	leaq	4888(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21811
	cmpq	$127, %r8
	jle	.L13704
	movq	$0, 4888(%rsp)
.L20454:
	movq	$0, 4896(%rsp)
.L13705:
	cmpl	$64, %esi
	jbe	.L13708
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20455:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L13703
	cmpl	$63, %esi
	jbe	.L13712
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20457:
	movq	%rax, (%r9)
.L13703:
	movl	$1, 728(%rsp)
	jmp	.L13682
.L13712:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20456:
	movq	%rax, (%rbx)
	jmp	.L13703
.L13708:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20455
.L13704:
	cmpq	$63, %r8
	jle	.L13706
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 4888(%rsp)
	jmp	.L20454
.L13706:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 4896(%rsp)
	orq	%rdi, %r10
	movq	%r10, 4888(%rsp)
	jmp	.L13705
.L21811:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L13690
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L13691:
	cmpq	$127, %rdx
	jle	.L13692
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L13693:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L13696
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L13703
.L13696:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L13703
	cmpq	$63, %rax
	jle	.L13700
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20457
.L13700:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20456
.L13692:
	cmpq	$63, %rdx
	jle	.L13694
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L13693
.L13694:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L13693
.L13690:
	xorl	%edi, %edi
	jmp	.L13691
.L13687:
	negq	%r8
	jmp	.L13688
.L13715:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	4880(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	4872(%rsp), %rbx
	testq	%r8, %r8
	js	.L21812
	cmpq	$127, %r8
	jle	.L13732
	movq	$0, 4872(%rsp)
.L20458:
	movq	$0, 4880(%rsp)
.L13733:
	cmpl	$64, %edi
	jbe	.L13736
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20459:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L13731
	cmpl	$63, %edi
	jbe	.L13740
.L20461:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L13731:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	4856(%rsp), %rdi
	subq	%r8, %rsi
	leaq	4864(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L13744
	movq	$0, 4856(%rsp)
	movq	$0, 4864(%rsp)
.L13745:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L13748
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L13754:
	movq	4864(%rsp), %rdi
	movq	4856(%rsp), %r10
	orq	4880(%rsp), %rdi
	orq	4872(%rsp), %r10
	movq	%rdi, 4896(%rsp)
	movq	%r10, 4888(%rsp)
	jmp	.L13682
.L13748:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L13754
	cmpq	$63, %rax
	jle	.L13752
	subl	%esi, %r9d
	leal	-64(%r9), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%rdi), %r9
	orq	%rdx, %r9
	movq	%r9, (%rdi)
	jmp	.L13754
.L13752:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L13754
.L13744:
	cmpq	$63, %rsi
	jle	.L13746
	leal	-64(%rsi), %ecx
	movq	$0, 4856(%rsp)
	shrq	%cl, %r10
	movq	%r10, 4864(%rsp)
	jmp	.L13745
.L13746:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 4856(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 4864(%rsp)
	jmp	.L13745
.L13740:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20460:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L13731
.L13736:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20459
.L13732:
	cmpq	$63, %r8
	jle	.L13734
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 4872(%rsp)
	jmp	.L20458
.L13734:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 4872(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 4880(%rsp)
	jmp	.L13733
.L21812:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L13720
	movq	$0, 4872(%rsp)
	movq	$0, 4880(%rsp)
.L13721:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L13724
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L13731
.L13724:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L13731
	cmpq	$63, %rax
	jle	.L13728
	subl	%esi, %edi
	jmp	.L20461
.L13728:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20460
.L13720:
	cmpq	$63, %rsi
	jle	.L13722
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 4872(%rsp)
	shrq	%cl, %rax
	movq	%rax, 4880(%rsp)
	jmp	.L13721
.L13722:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 4872(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 4880(%rsp)
	jmp	.L13721
.L13714:
	negq	%r8
	jmp	.L13715
.L13684:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 4896(%rsp)
	jmp	.L20468
.L13685:
	andq	%r8, %r11
	movq	%r11, 4896(%rsp)
.L20469:
	andq	%r9, %r10
	jmp	.L20468
.L13686:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 4896(%rsp)
	jmp	.L20469
.L21801:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	732(%rsp), %eax
	movl	%eax, 732(%rsp)
	jmp	.L13681
.L21689:
	movq	8(%r12), %rcx
	cmpl	$60, %ebx
	movq	%rcx, 2712(%rsp)
	movq	32(%r14), %rbp
	movq	40(%r12), %r15
	movq	32(%r12), %r13
	movq	40(%r14), %r14
	je	.L13651
	cmpl	$60, %ebx
	ja	.L13668
	cmpl	$59, %ebx
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21039:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	2712(%rsp), %rdi
.L20452:
	movq	%rax, %rdx
	call	build_complex
.L20453:
	movq	%rax, 688(%rsp)
	jmp	.L13619
.L13668:
	cmpl	$61, %ebx
	je	.L13652
	cmpl	$70, %ebx
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 2704(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L13662
	cmpb	$10, %al
	je	.L13662
	cmpb	$11, %al
	je	.L13662
	cmpb	$12, %al
	movl	$70, %edi
	je	.L13662
.L13661:
	movq	2704(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L13665
	cmpb	$10, %al
	je	.L13665
	cmpb	$11, %al
	je	.L13665
	cmpb	$12, %al
	movl	$70, %edi
	je	.L13665
.L13664:
	movq	2704(%rsp), %rdx
.L20451:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	2712(%rsp), %rdi
	jmp	.L20452
.L13665:
	movl	$62, %edi
	jmp	.L13664
.L13662:
	movl	$62, %edi
	jmp	.L13661
.L13652:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20451
.L13651:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21039
.L21688:
	movq	32(%r12), %r15
	xorl	%ebp, %ebp
	movq	%r15, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %r9
	movq	%r9, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%rdi, 16(%rsp)
	movq	%r15, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	movq	%r12, 688(%rsp)
	testl	%eax, %eax
	jne	.L13619
	movq	18560(%rsp), %r8
	movq	18568(%rsp), %r10
	movq	18576(%rsp), %r11
	movq	%r8, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	call	target_isnan
	movq	%r14, 688(%rsp)
	testl	%eax, %eax
	jne	.L13619
	movq	18536(%rsp), %rsi
	movq	18568(%rsp), %rdi
	movq	8(%r12), %rcx
	movq	18528(%rsp), %r9
	movl	%ebx, 10336(%rsp)
	movq	18544(%rsp), %r15
	movq	18560(%rsp), %rdx
	movq	18576(%rsp), %r13
	movq	%rsi, 10360(%rsp)
	movq	%rdi, 10384(%rsp)
	leaq	10336(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%rcx, 10344(%rsp)
	movq	%r9, 10352(%rsp)
	movq	%r15, 10368(%rsp)
	movq	%rdx, 10376(%rsp)
	movq	%r13, 10392(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L13624
	movq	10400(%rsp), %rax
	movq	%rax, 688(%rsp)
.L13625:
	movq	688(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L13627
	cmpb	$25, %al
	je	.L21815
.L13627:
	movzbl	18(%r12), %r9d
	movzbl	18(%r14), %edx
	shrb	$3, %r9b
	shrb	$3, %dl
	andl	$1, %r9d
	andl	$1, %edx
	orb	%bpl, %r9b
	movq	688(%rsp), %rbp
	orb	%dl, %r9b
	salb	$3, %r9b
	movzbl	18(%rbp), %edi
	andb	$-9, %dil
	orb	%r9b, %dil
	movb	%dil, 18(%rbp)
	movl	%edi, %esi
	movzbl	18(%r12), %r15d
	movzbl	18(%r14), %r12d
	shrb	$3, %sil
	andb	$-5, %dil
	shrb	$2, %r15b
	orl	%esi, %r15d
	shrb	$2, %r12b
	orl	%r12d, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %dil
	movb	%dil, 18(%rbp)
	jmp	.L13619
.L21815:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %rdi
	movq	40(%rdx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13631
	cmpb	$15, %al
	je	.L13631
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L13634:
	cmpl	$128, %esi
	je	.L13636
	cmpl	$64, %esi
	jbe	.L13637
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L13636:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13640
	cmpb	$6, 16(%rax)
	jne	.L13627
	testb	$2, 62(%rax)
	je	.L13627
.L13640:
	cmpl	$128, %esi
	je	.L13642
	cmpl	$64, %esi
	jbe	.L13643
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20450:
	testl	$1, %eax 
	je	.L13642
	cmpl	$64, %esi
	jbe	.L13645
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	orq	%r10, 40(%rdx)
.L13642:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%r8b
	movzbl	%r8b, %ebp
	jmp	.L13627
.L13645:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13642
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13642
.L13643:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20450
.L13637:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13636
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L13636
.L13631:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13634
.L13624:
	movq	%r12, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, 688(%rsp)
	jmp	.L13625
.L21687:
	movq	8(%r12), %r13
	movl	$1, %r15d
	movl	$0, 756(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21816
.L13413:
	leal	-59(%rbx), %eax
	movl	$0, 736(%rsp)
	movl	$0, 752(%rsp)
	cmpl	$30, %eax
	movq	32(%r12), %r11
	movq	40(%r12), %r10
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L13554(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L13554:
	.quad	.L13488
	.quad	.L13491
	.quad	.L13497
	.quad	.L13530
	.quad	.L13530
	.quad	.L13530
	.quad	.L13533
	.quad	.L13539
	.quad	.L13539
	.quad	.L13539
	.quad	.L13542
	.quad	.L18929
	.quad	.L13530
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L13544
	.quad	.L13544
	.quad	.L18929
	.quad	.L18929
	.quad	.L13420
	.quad	.L13419
	.quad	.L13447
	.quad	.L13446
	.quad	.L13415
	.quad	.L13416
	.quad	.L13417
	.quad	.L13418
	.text
.L13415:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 4960(%rsp)
.L20445:
	movq	%r10, 4952(%rsp)
.L13414:
	movl	756(%rsp), %eax
	testl	%eax, %eax
	je	.L13555
	movq	4952(%rsp), %rax
	testq	%rax, %rax
	jne	.L13557
	cmpq	$0, 4960(%rsp)
	js	.L13557
.L13556:
	movl	736(%rsp), %eax
	testl	%eax, %eax
	jne	.L13555
	testb	$8, 18(%r12)
	jne	.L13555
	testb	$8, 18(%r14)
	jne	.L13555
	cmpq	$0, size_htab.0(%rip)
	movq	4960(%rsp), %rbx
	je	.L21817
.L13558:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L13562
	cmpb	$25, %al
	je	.L21818
.L13562:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %esi
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%sil, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20453
	movq	new_const.1(%rip), %r10
	movl	$25, %edi
	movq	%r10, (%rdx)
	movq	%r10, 688(%rsp)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L13619
.L21818:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L13566
	cmpb	$15, %al
	je	.L13566
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L13569:
	cmpl	$128, %esi
	je	.L13571
	cmpl	$64, %esi
	jbe	.L13572
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L13571:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13575
	cmpb	$6, 16(%rax)
	jne	.L13562
	testb	$2, 62(%rax)
	je	.L13562
.L13575:
	cmpl	$128, %esi
	je	.L13577
	cmpl	$64, %esi
	jbe	.L13578
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20447:
	testl	$1, %eax 
	je	.L13577
	cmpl	$64, %esi
	jbe	.L13580
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L13577:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbx
	orq	%r8, %rbx
	orq	%r9, %rbx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L13562
.L13580:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13577
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13577
.L13578:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20447
.L13572:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13571
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L13571
.L13566:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13569
.L21817:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L13558
.L13555:
	movq	4960(%rsp), %rdi
	movq	4952(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movl	$1, %r11d
	movq	8(%r12), %r13
	movq	%rax, %rdi
	movq	%r13, 8(%rax)
	movzbl	18(%r14), %ecx
	movzbl	18(%r12), %ebp
	shrb	$3, %cl
	shrb	$3, %bpl
	movl	%ecx, %ebx
	andl	%ebp, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L13588
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L13591
	movl	756(%rsp), %eax
	testl	%eax, %eax
	je	.L13590
.L13591:
	movl	736(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L13590:
	movl	%edx, %eax
.L20449:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	756(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L13617
	testb	$8, %dl
	jne	.L13617
	movq	4952(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L21819
.L13618:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L13617:
	movzbl	18(%rdi), %ebp
	movzbl	18(%r12), %r8d
	movzbl	18(%r14), %r12d
	movl	%ebp, %r13d
	shrb	$2, %r8b
	andb	$-5, %bpl
	shrb	$3, %r13b
	shrb	$2, %r12b
	orl	%r13d, %r8d
	orl	%r12d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bpl
	movb	%bpl, 18(%rdi)
	movq	%rdi, 688(%rsp)
	jmp	.L13619
.L21819:
	movq	4960(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L13618
	jmp	.L13617
.L13588:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L13594
	movl	756(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L13593
.L13594:
	movl	736(%rsp), %r15d
	movl	$1, %r10d
	movl	$0, %eax
	testl	%r15d, %r15d
	cmove	%eax, %r10d
.L13593:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L13596
	cmpb	$25, %al
	je	.L21820
.L13596:
	testl	%r10d, %r10d
	je	.L13592
	movl	752(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L13592:
	movl	%ebp, %eax
	jmp	.L20449
.L21820:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L13600
	cmpb	$15, %al
	je	.L13600
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L13603:
	cmpl	$128, %esi
	je	.L13605
	cmpl	$64, %esi
	jbe	.L13606
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L13605:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L13609
	cmpb	$6, 16(%rax)
	jne	.L13596
	testb	$2, 62(%rax)
	je	.L13596
.L13609:
	cmpl	$128, %esi
	je	.L13611
	cmpl	$64, %esi
	jbe	.L13612
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20448:
	testl	$1, %eax 
	je	.L13611
	cmpl	$64, %esi
	jbe	.L13614
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L13611:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L13596
.L13614:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L13611
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L13611
.L13612:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20448
.L13606:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L13605
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L13605
.L13600:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L13603
.L13557:
	cmpq	$-1, %rax
	jne	.L13555
	cmpq	$0, 4960(%rsp)
	jns	.L13555
	jmp	.L13556
.L13488:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 4960(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 4952(%rsp)
	andq	%r10, %r9
.L20444:
	shrq	$63, %r9
	movl	%r9d, 736(%rsp)
	jmp	.L13414
.L13491:
	testq	%r8, %r8
	jne	.L13492
	movq	%r9, %rax
	movq	$0, 4960(%rsp)
	negq	%rax
.L20439:
	movq	%rax, 4952(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	4960(%rsp), %rdx
	addq	4952(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rbx
	movq	%rdx, 4960(%rsp)
	cmovb	%rbx, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 4952(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L20444
.L13492:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 4960(%rsp)
	notq	%rax
	jmp	.L20439
.L13497:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 10512(%rsp)
	movq	%rcx, 10520(%rsp)
	movq	%r8, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %ebp
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 10488(%rsp)
	movq	%rbx, 10528(%rsp)
	movq	%rdx, 10536(%rsp)
	movq	%rbp, 10480(%rsp)
	movq	%rdi, 10496(%rsp)
	movq	%rcx, 10504(%rsp)
	movq	$0, 10416(%rsp)
	movq	$0, 10424(%rsp)
	movq	$0, 10432(%rsp)
	movq	$0, 10440(%rsp)
	movq	$0, 10448(%rsp)
	movq	$0, 10456(%rsp)
	movq	$0, 10464(%rsp)
	movq	$0, 10472(%rsp)
	xorl	%esi, %esi
.L13509:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	10512(%rsp,%rbx,8), %rbp
	xorl	%ebx, %ebx
.L13508:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	10480(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	10416(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 10416(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L13508
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 10448(%rsp,%rbp,8)
	jle	.L13509
	movq	10424(%rsp), %rdx
	movq	10440(%rsp), %rsi
	movq	10456(%rsp), %rax
	movq	10472(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	10416(%rsp), %rdx
	addq	10432(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	10448(%rsp), %rax
	addq	10464(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 4960(%rsp)
	movq	%rsi, 4952(%rsp)
	js	.L21821
.L13512:
	testq	%r9, %r9
	js	.L21822
.L13518:
	cmpq	$0, 4952(%rsp)
	js	.L21823
	orq	%rcx, %rax
.L21038:
	setne	%r10b
	movzbl	%r10b, %eax
.L20443:
	movl	%eax, 736(%rsp)
	jmp	.L13414
.L21823:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21038
.L21822:
	testq	%r11, %r11
	jne	.L13519
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L13520:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L13518
.L13519:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L13520
.L21821:
	testq	%r8, %r8
	jne	.L13513
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L13514:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L13512
.L13513:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L13514
.L13533:
	testq	%r9, %r9
	jne	.L13534
	cmpq	$1, %r8
	je	.L20442
.L13534:
	cmpq	%r8, %r11
	je	.L21824
.L13535:
	leaq	4960(%rsp), %rbp
	leaq	4952(%rsp), %rdi
	leaq	4912(%rsp), %rcx
	leaq	4904(%rsp), %rax
	movq	%rbp, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20440:
	movl	%ebx, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20443
.L21824:
	cmpq	%r9, %r10
	jne	.L13535
	testq	%r8, %r8
	jne	.L13536
	testq	%r9, %r9
	je	.L13535
.L13536:
	movq	$1, 4960(%rsp)
.L20441:
	movq	$0, 4952(%rsp)
	jmp	.L13414
.L20442:
	movq	%r11, 4960(%rsp)
	jmp	.L20445
.L13539:
	testq	%r9, %r9
	jne	.L13542
	testq	%r8, %r8
	jle	.L13542
	testb	$4, 18(%r12)
	jne	.L13542
	testb	$4, 18(%r14)
	jne	.L13542
	testq	%r10, %r10
	jne	.L13542
	testq	%r11, %r11
	js	.L13542
	cmpl	$67, %ebx
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 4960(%rsp)
	jmp	.L20441
.L13542:
	leaq	4912(%rsp), %rdi
	leaq	4904(%rsp), %rcx
	leaq	4960(%rsp), %rdx
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	4952(%rsp), %rax
	jmp	.L20440
.L13530:
	testq	%r9, %r9
	jne	.L13534
	testq	%r8, %r8
	jle	.L13533
	testb	$4, 18(%r12)
	jne	.L13533
	testb	$4, 18(%r14)
	jne	.L13533
	testq	%r10, %r10
	jne	.L13533
	testq	%r11, %r11
	js	.L13533
	cmpl	$63, %ebx
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 4960(%rsp)
	jmp	.L20441
.L13544:
	testl	%r15d, %r15d
	je	.L13545
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L13550
.L21198:
	cmpq	%r9, %r10
	je	.L21825
.L13549:
	xorl	%ebp, %ebp
	movq	%rax, 4960(%rsp)
	cmpl	$78, %ebx
	sete	%bpl
	cmpq	%rbp, 4960(%rsp)
	je	.L20442
	movq	%r8, 4960(%rsp)
	movq	%r9, 4952(%rsp)
	jmp	.L13414
.L21825:
	cmpq	%r8, %r11
	jae	.L13549
.L13550:
	movl	$1, %eax
	jmp	.L13549
.L13545:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L13550
	jmp	.L21198
.L13420:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	4960(%rsp), %rbx
	leaq	4952(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21826
	cmpq	$127, %r8
	jle	.L13436
	movq	$0, 4952(%rsp)
.L20431:
	movq	$0, 4960(%rsp)
.L13437:
	cmpl	$64, %esi
	jbe	.L13440
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20432:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L13435
	cmpl	$63, %esi
	jbe	.L13444
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20434:
	movq	%rax, (%r9)
.L13435:
	movl	$1, 752(%rsp)
	jmp	.L13414
.L13444:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20433:
	movq	%rax, (%rbx)
	jmp	.L13435
.L13440:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20432
.L13436:
	cmpq	$63, %r8
	jle	.L13438
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 4952(%rsp)
	jmp	.L20431
.L13438:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 4960(%rsp)
	orq	%rdi, %r10
	movq	%r10, 4952(%rsp)
	jmp	.L13437
.L21826:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L13422
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L13423:
	cmpq	$127, %rdx
	jle	.L13424
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L13425:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L13428
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L13435
.L13428:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L13435
	cmpq	$63, %rax
	jle	.L13432
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20434
.L13432:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20433
.L13424:
	cmpq	$63, %rdx
	jle	.L13426
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L13425
.L13426:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L13425
.L13422:
	xorl	%edi, %edi
	jmp	.L13423
.L13419:
	negq	%r8
	jmp	.L13420
.L13447:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	4944(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	4936(%rsp), %rbx
	testq	%r8, %r8
	js	.L21827
	cmpq	$127, %r8
	jle	.L13464
	movq	$0, 4936(%rsp)
.L20435:
	movq	$0, 4944(%rsp)
.L13465:
	cmpl	$64, %edi
	jbe	.L13468
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20436:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L13463
	cmpl	$63, %edi
	jbe	.L13472
.L20438:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L13463:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	4920(%rsp), %rdi
	subq	%r8, %rsi
	leaq	4928(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L13476
	movq	$0, 4920(%rsp)
	movq	$0, 4928(%rsp)
.L13477:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L13480
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L13486:
	movq	4928(%rsp), %rdi
	movq	4920(%rsp), %r9
	orq	4944(%rsp), %rdi
	orq	4936(%rsp), %r9
	movq	%rdi, 4960(%rsp)
	movq	%r9, 4952(%rsp)
	jmp	.L13414
.L13480:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L13486
	cmpq	$63, %rax
	jle	.L13484
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L13486
.L13484:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L13486
.L13476:
	cmpq	$63, %rsi
	jle	.L13478
	leal	-64(%rsi), %ecx
	movq	$0, 4920(%rsp)
	shrq	%cl, %r10
	movq	%r10, 4928(%rsp)
	jmp	.L13477
.L13478:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 4920(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 4928(%rsp)
	jmp	.L13477
.L13472:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20437:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L13463
.L13468:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20436
.L13464:
	cmpq	$63, %r8
	jle	.L13466
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 4936(%rsp)
	jmp	.L20435
.L13466:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 4936(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 4944(%rsp)
	jmp	.L13465
.L21827:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L13452
	movq	$0, 4936(%rsp)
	movq	$0, 4944(%rsp)
.L13453:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L13456
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L13463
.L13456:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L13463
	cmpq	$63, %rax
	jle	.L13460
	subl	%esi, %edi
	jmp	.L20438
.L13460:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20437
.L13452:
	cmpq	$63, %rsi
	jle	.L13454
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 4936(%rsp)
	shrq	%cl, %rax
	movq	%rax, 4944(%rsp)
	jmp	.L13453
.L13454:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 4936(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 4944(%rsp)
	jmp	.L13453
.L13446:
	negq	%r8
	jmp	.L13447
.L13416:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 4960(%rsp)
	jmp	.L20445
.L13417:
	andq	%r8, %r11
	movq	%r11, 4960(%rsp)
.L20446:
	andq	%r9, %r10
	jmp	.L20445
.L13418:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 4960(%rsp)
	jmp	.L20446
.L21816:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	756(%rsp), %eax
	movl	%eax, 756(%rsp)
	jmp	.L13413
.L21362:
	movq	3592(%rsp), %rdi
	movq	536(%rsp), %rsi
	call	convert
	movq	7328(%rsp), %r13
	movl	7344(%rsp), %edx
	movl	7360(%rsp), %ebp
	movq	%rax, 1360(%rsp)
	movq	%r13, 3152(%rsp)
	movl	%ebp, 3164(%rsp)
	movq	8(%rax), %rcx
	movzbl	61(%rcx), %r11d
	movq	%rcx, 3144(%rsp)
	shrb	$1, %r11b
	andl	$127, %r11d
	movzwl	mode_bitsize(%r11,%r11), %r9d
	cmpl	%r9d, %ebp
	movl	%r9d, 3140(%rsp)
	je	.L6731
	testl	%edx, %edx
	jne	.L6731
	movl	%ebp, %edi
	movl	$83, %r12d
	movq	1360(%rsp), %r14
	decl	%edi
	movq	sizetype_tab(%rip), %rbp
	cmpq	$0, size_htab.0(%rip)
	movslq	%edi,%rbx
	je	.L21828
.L6732:
	movq	new_const.1(%rip), %r15
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r15), %eax
	decq	%rcx
	movq	%rbx, 32(%r15)
	movq	%rcx, 40(%r15)
	movq	%rbp, 8(%r15)
	movq	%r15, %rdi
	movq	%r15, %r11
	movq	%r15, %rdx
	cmpb	$26, %al
	je	.L6736
	cmpb	$25, %al
	je	.L21829
.L6736:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %r13d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%r13b, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r8d
	andb	$-9, %r8b
	orb	%al, %r8b
	movb	%r8b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21830
	movq	%rdx, 1496(%rsp)
.L6758:
	movq	global_trees(%rip), %rsi
.L6761:
	movzbl	16(%r14), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L6762
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L6762
	movq	8(%r14), %rbp
	movq	8(%rcx), %rbx
	movzbl	61(%rbp), %r15d
	movzbl	61(%rbx), %edi
	andb	$-2, %r15b
	andb	$-2, %dil
	cmpb	%dil, %r15b
	jne	.L6762
	movq	%rcx, %r14
	jmp	.L6761
.L6762:
	movq	global_trees(%rip), %rsi
.L6766:
	movq	1496(%rsp), %rdi
	movzbl	16(%rdi), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L6767
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L6767
	movq	8(%rdi), %r11
	movq	8(%rcx), %r13
	movzbl	61(%r11), %r9d
	movzbl	61(%r13), %r8d
	andb	$-2, %r9b
	andb	$-2, %r8b
	cmpb	%r8b, %r9b
	jne	.L6767
	movq	%rcx, 1496(%rsp)
	jmp	.L6766
.L6767:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21831
	cmpb	$26, %al
	je	.L21832
	cmpb	$27, %al
	je	.L21833
	xorl	%ebp, %ebp
.L6978:
	cmpq	$0, size_htab.0(%rip)
	movq	sizetype_tab(%rip), %rbx
	je	.L21834
.L7028:
	movq	new_const.1(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rsi, %rdi
	movq	$1, 32(%rsi)
	movq	$0, 40(%rsi)
	movzbl	16(%rdi), %eax
	movq	%rbx, 8(%rsi)
	movq	%rsi, %r9
	cmpb	$26, %al
	je	.L7032
	cmpb	$25, %al
	je	.L21835
.L7032:
	movzbl	18(%r9), %r12d
	leal	0(,%r8,4), %r10d
	leal	0(,%r8,8), %eax
	movl	$1, %edx
	andb	$-5, %r12b
	orb	%r10b, %r12b
	movb	%r12b, 18(%r9)
	movzbl	18(%rdi), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21836
	movq	%rdx, %r14
.L7054:
	movq	global_trees(%rip), %rsi
.L7057:
	movzbl	16(%rbp), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L7058
	movq	32(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	.L7058
	movq	8(%rbp), %r13
	movq	8(%rcx), %rbx
	movzbl	61(%r13), %r11d
	movzbl	61(%rbx), %r15d
	andb	$-2, %r11b
	andb	$-2, %r15b
	cmpb	%r15b, %r11b
	jne	.L7058
	movq	%rcx, %rbp
	jmp	.L7057
.L7058:
	movq	global_trees(%rip), %rsi
.L7062:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L7063
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L7063
	movq	8(%r14), %r10
	movq	8(%rcx), %r12
	movzbl	61(%r10), %r9d
	movzbl	61(%r12), %r8d
	andb	$-2, %r9b
	andb	$-2, %r8b
	cmpb	%r8b, %r9b
	jne	.L7063
	movq	%rcx, %r14
	jmp	.L7062
.L7063:
	movzbl	16(%rbp), %eax
	cmpb	$25, %al
	je	.L21837
	cmpb	$26, %al
	je	.L21838
	cmpb	$27, %al
	je	.L21839
	xorl	%r12d, %r12d
.L7274:
	movq	3144(%rsp), %rbp
	testb	$32, 17(%rbp)
	jne	.L21840
.L7324:
	movl	3140(%rsp), %eax
	movq	sizetype_tab(%rip), %rbp
	decl	%eax
	cmpq	$0, size_htab.0(%rip)
	movslq	%eax,%rbx
	je	.L21841
.L7325:
	movq	new_const.1(%rip), %r11
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	decq	%rcx
	movq	%r11, %rdi
	movq	%rbx, 32(%r11)
	movq	%rcx, 40(%r11)
	movq	%rbp, 8(%r11)
	movq	%rdi, %rdx
	movzbl	16(%rdi), %eax
	cmpb	$26, %al
	je	.L7329
	cmpb	$25, %al
	je	.L21842
.L7329:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %eax
	leal	0(,%r10,8), %r8d
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%r8b, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21843
	movq	%rdx, 1432(%rsp)
.L7351:
	movq	global_trees(%rip), %rsi
.L7354:
	movzbl	16(%r12), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L7355
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L7355
	movq	8(%r12), %r13
	movq	8(%rcx), %r11
	movzbl	61(%r13), %r15d
	movzbl	61(%r11), %ebp
	andb	$-2, %r15b
	andb	$-2, %bpl
	cmpb	%bpl, %r15b
	jne	.L7355
	movq	%rcx, %r12
	jmp	.L7354
.L7355:
	movq	global_trees(%rip), %rsi
.L7359:
	movq	1432(%rsp), %rdi
	movzbl	16(%rdi), %ebx
	subb	$114, %bl
	cmpb	$2, %bl
	ja	.L7360
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L7360
	movq	8(%rdi), %r9
	movq	8(%rcx), %r8
	movzbl	61(%r9), %r10d
	movzbl	61(%r8), %r14d
	andb	$-2, %r10b
	andb	$-2, %r14b
	cmpb	%r14b, %r10b
	jne	.L7360
	movq	%rcx, 1432(%rsp)
	jmp	.L7359
.L7360:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L21844
	cmpb	$26, %al
	je	.L21845
	cmpb	$27, %al
	je	.L21846
	xorl	%r14d, %r14d
.L7571:
	movl	3164(%rsp), %r11d
	movq	sizetype_tab(%rip), %rbp
	subl	%r11d, 3140(%rsp)
	movl	3140(%rsp), %eax
	decl	%eax
	cmpq	$0, size_htab.0(%rip)
	movslq	%eax,%rbx
	je	.L21847
.L7621:
	movq	new_const.1(%rip), %r10
	movq	%rbx, %rcx
	notq	%rcx
	shrq	$63, %rcx
	decq	%rcx
	movq	%r10, %rdi
	movq	%rbx, 32(%r10)
	movq	%rcx, 40(%r10)
	movq	%rbp, 8(%r10)
	movq	%r10, %r11
	movzbl	16(%rdi), %eax
	movq	%r10, %rdx
	xorl	%r10d, %r10d
	cmpb	$26, %al
	je	.L7625
	cmpb	$25, %al
	je	.L21848
.L7625:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %r15d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%r15b, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r8d
	andb	$-9, %r8b
	orb	%al, %r8b
	movb	%r8b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21849
	movq	%rdx, 1416(%rsp)
.L7647:
	movq	global_trees(%rip), %rsi
.L7650:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L7651
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L7651
	movq	8(%r14), %rbx
	movq	8(%rcx), %r10
	movzbl	61(%rbx), %r11d
	movzbl	61(%r10), %ebp
	andb	$-2, %r11b
	andb	$-2, %bpl
	cmpb	%bpl, %r11b
	jne	.L7651
	movq	%rcx, %r14
	jmp	.L7650
.L7651:
	movq	global_trees(%rip), %rsi
.L7655:
	movq	1416(%rsp), %rdi
	movzbl	16(%rdi), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L7656
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L7656
	movq	8(%rdi), %r15
	movq	8(%rcx), %r9
	movzbl	61(%r15), %r8d
	movzbl	61(%r9), %r12d
	andb	$-2, %r8b
	andb	$-2, %r12b
	cmpb	%r12b, %r8b
	jne	.L7656
	movq	%rcx, 1416(%rsp)
	jmp	.L7655
.L7656:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21850
	cmpb	$26, %al
	je	.L21851
	cmpb	$27, %al
	je	.L21852
	xorl	%r12d, %r12d
.L7867:
	cmpq	$0, 3152(%rsp)
	je	.L7917
	movq	1360(%rsp), %r10
	movq	3152(%rsp), %rsi
	movq	8(%r10), %rdi
	call	convert
	movq	global_trees(%rip), %rsi
	movq	%rax, %r14
.L7918:
	movzbl	16(%r12), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L7919
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L7919
	movq	8(%r12), %rdi
	movq	8(%rcx), %r9
	movzbl	61(%rdi), %ebx
	movzbl	61(%r9), %r13d
	andb	$-2, %bl
	andb	$-2, %r13b
	cmpb	%r13b, %bl
	jne	.L7919
	movq	%rcx, %r12
	jmp	.L7918
.L7919:
	movq	global_trees(%rip), %rsi
.L7923:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L7924
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L7924
	movq	8(%r14), %r10
	movq	8(%rcx), %r15
	movzbl	61(%r10), %ebp
	movzbl	61(%r15), %r11d
	andb	$-2, %bpl
	andb	$-2, %r11b
	cmpb	%r11b, %bpl
	jne	.L7924
	movq	%rcx, %r14
	jmp	.L7923
.L7924:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L21853
	cmpb	$26, %al
	je	.L21854
	cmpb	$27, %al
	je	.L21855
	xorl	%ebx, %ebx
.L8135:
	movq	%rbx, %r12
.L7917:
	movq	3144(%rsp), %rbp
	testb	$32, 17(%rbp)
	jne	.L21856
.L8185:
	movq	global_trees(%rip), %rsi
.L8186:
	movq	1360(%rsp), %rdx
	movzbl	16(%rdx), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L8187
	movq	32(%rdx), %rcx
	cmpq	%rsi, %rcx
	je	.L8187
	movq	8(%rdx), %rdi
	movq	8(%rcx), %r8
	movzbl	61(%rdi), %r13d
	movzbl	61(%r8), %r11d
	andb	$-2, %r13b
	andb	$-2, %r11b
	cmpb	%r11b, %r13b
	jne	.L8187
	movq	%rcx, 1360(%rsp)
	jmp	.L8186
.L8187:
	movq	global_trees(%rip), %rsi
.L8191:
	movzbl	16(%r12), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L8192
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L8192
	movq	8(%r12), %rbx
	movq	8(%rcx), %rdx
	movzbl	61(%rbx), %r14d
	movzbl	61(%rdx), %r15d
	andb	$-2, %r14b
	andb	$-2, %r15b
	cmpb	%r15b, %r14b
	jne	.L8192
	movq	%rcx, %r12
	jmp	.L8191
.L8192:
	movq	1360(%rsp), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$25, %al
	je	.L21857
	cmpb	$26, %al
	je	.L21858
	cmpb	$27, %al
	je	.L21859
	xorl	%ebx, %ebx
.L8403:
	movq	3144(%rsp), %rdi
	movq	%rbx, %rsi
	call	convert
	movq	%rax, 1360(%rsp)
.L6731:
	cmpq	$0, size_htab.0(%rip)
	movl	$82, %r12d
	movq	sizetype_tab(%rip), %rbx
	je	.L21860
.L8447:
	movq	new_const.1(%rip), %rsi
	movq	1008(%rsp), %rdi
	xorl	%r10d, %r10d
	movzbl	16(%rsi), %eax
	movq	%rdi, %rcx
	movq	%rdi, 32(%rsi)
	notq	%rcx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %r11
	shrq	$63, %rcx
	movq	%rsi, %rdi
	movq	%rsi, %rdx
	decq	%rcx
	cmpb	$26, %al
	movq	%rcx, 40(%rsi)
	je	.L8451
	cmpb	$25, %al
	je	.L21861
.L8451:
	movzbl	18(%r11), %r14d
	leal	0(,%r10,4), %r9d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r14b
	orb	%r9b, %r14b
	movb	%r14b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21862
	movq	%rdx, %r14
.L8473:
	movq	global_trees(%rip), %rsi
.L8476:
	movq	1360(%rsp), %rbx
	movzbl	16(%rbx), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L8477
	movq	32(%rbx), %rcx
	cmpq	%rsi, %rcx
	je	.L8477
	movq	8(%rbx), %r15
	movq	8(%rcx), %rdi
	movzbl	61(%r15), %ebp
	movzbl	61(%rdi), %r11d
	andb	$-2, %bpl
	andb	$-2, %r11b
	cmpb	%r11b, %bpl
	jne	.L8477
	movq	%rcx, 1360(%rsp)
	jmp	.L8476
.L8477:
	movq	global_trees(%rip), %rsi
.L8481:
	movzbl	16(%r14), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L8482
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L8482
	movq	8(%r14), %r9
	movq	8(%rcx), %r10
	movzbl	61(%r9), %r8d
	movzbl	61(%r10), %ebx
	andb	$-2, %r8b
	andb	$-2, %bl
	cmpb	%bl, %r8b
	jne	.L8482
	movq	%rcx, %r14
	jmp	.L8481
.L8482:
	movq	1360(%rsp), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$25, %al
	je	.L21863
	cmpb	$26, %al
	je	.L21864
	cmpb	$27, %al
	je	.L21865
	movq	$0, 536(%rsp)
.L8693:
	movq	3592(%rsp), %rsi
	movq	7336(%rsp), %rdx
	movl	$90, %edi
	movq	536(%rsp), %r12
	call	build1
	movq	%rax, %rdi
	call	fold
	movq	global_trees(%rip), %rsi
	movq	%rax, %r14
.L8744:
	movzbl	16(%r12), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L8745
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L8745
	movq	8(%r12), %rbp
	movq	8(%rcx), %r10
	movzbl	61(%rbp), %edi
	movzbl	61(%r10), %ebx
	andb	$-2, %dil
	andb	$-2, %bl
	cmpb	%bl, %dil
	jne	.L8745
	movq	%rcx, %r12
	jmp	.L8744
.L8745:
	movq	global_trees(%rip), %rsi
.L8749:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L8750
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L8750
	movq	8(%r14), %r15
	movq	8(%rcx), %r8
	movzbl	61(%r15), %r9d
	movzbl	61(%r8), %r11d
	andb	$-2, %r9b
	andb	$-2, %r11b
	cmpb	%r11b, %r9b
	jne	.L8750
	movq	%rcx, %r14
	jmp	.L8749
.L8750:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L21866
	cmpb	$26, %al
	je	.L21867
	cmpb	$27, %al
	je	.L21868
	xorl	%ebx, %ebx
.L8961:
	movq	%rbx, %rdi
	call	integer_zerop
	testl	%eax, %eax
	jne	.L6728
.L21183:
	cmpl	$102, 1780(%rsp)
	movl	$.LC5, %edi
	sete	%r9b
	xorl	%eax, %eax
	movzbl	%r9b, %esi
	call	warning
	cmpl	$102, 1780(%rsp)
	je	.L21869
	movq	global_trees+88(%rip), %rsi
.L9008:
	movq	3736(%rsp), %rdi
	jmp	.L20600
.L21869:
	movq	global_trees+96(%rip), %rsi
	jmp	.L9008
.L21868:
	movq	8(%r12), %rsi
	movq	%rsi, 3016(%rsp)
	movl	$88, %esi
	movq	32(%r14), %rbp
	cmpl	$60, %esi
	movq	32(%r12), %r13
	movq	40(%r12), %r15
	movq	40(%r14), %r14
	je	.L8993
	cmpl	$60, %esi
	ja	.L9004
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21009:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3016(%rsp), %rdi
.L20075:
	movq	%rax, %rdx
	call	build_complex
.L20076:
	movq	%rax, %rbx
	jmp	.L8961
.L9004:
	movl	$88, %edi
	cmpl	$61, %edi
	je	.L8994
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3008(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L8998
	cmpb	$10, %al
	je	.L8998
	cmpb	$11, %al
	je	.L8998
	cmpb	$12, %al
	movl	$70, %edi
	je	.L8998
.L8997:
	movq	3008(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L9001
	cmpb	$10, %al
	je	.L9001
	cmpb	$11, %al
	je	.L9001
	cmpb	$12, %al
	movl	$70, %edi
	je	.L9001
.L9000:
	movq	3008(%rsp), %rdx
.L20074:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3016(%rsp), %rdi
	jmp	.L20075
.L9001:
	movl	$62, %edi
	jmp	.L9000
.L8998:
	movl	$62, %edi
	jmp	.L8997
.L8994:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20074
.L8993:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21009
.L21867:
	movq	32(%r12), %r13
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	movq	%r13, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %r8
	movq	%r8, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L8961
	movq	18560(%rsp), %r10
	movq	18568(%rsp), %r11
	movq	%r14, %rbx
	movq	18576(%rsp), %r9
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r9, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L8961
	movq	18528(%rsp), %rsi
	movq	18560(%rsp), %rdi
	movq	8(%r12), %r8
	movq	18536(%rsp), %r13
	movl	$88, 13248(%rsp)
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %rbx
	movq	%rsi, 13264(%rsp)
	movq	%rdi, 13288(%rsp)
	leaq	13248(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r8, 13256(%rsp)
	movq	%r13, 13272(%rsp)
	movq	%rdx, 13280(%rsp)
	movq	%r15, 13296(%rsp)
	movq	%rbx, 13304(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L8966
	movq	13312(%rsp), %rbx
.L8967:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L8969
	cmpb	$25, %al
	je	.L21872
.L8969:
	movzbl	18(%r12), %r13d
	movzbl	18(%r14), %edx
	shrb	$3, %r13b
	shrb	$3, %dl
	andl	$1, %r13d
	andl	$1, %edx
	orb	%bpl, %r13b
	movzbl	18(%rbx), %ebp
	orb	%dl, %r13b
	salb	$3, %r13b
	andb	$-9, %bpl
	orb	%r13b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %eax
	movzbl	18(%r12), %edi
	movzbl	18(%r14), %r12d
	shrb	$3, %al
	andb	$-5, %bpl
	shrb	$2, %dil
	orl	%eax, %edi
	shrb	$2, %r12b
	orl	%r12d, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L8961
.L21872:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L8973
	cmpb	$15, %al
	je	.L8973
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L8976:
	cmpl	$128, %esi
	je	.L8978
	cmpl	$64, %esi
	jbe	.L8979
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 40(%rdx)
.L8978:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8982
	cmpb	$6, 16(%rax)
	jne	.L8969
	testb	$2, 62(%rax)
	je	.L8969
.L8982:
	cmpl	$128, %esi
	je	.L8984
	cmpl	$64, %esi
	jbe	.L8985
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20073:
	testl	$1, %eax 
	je	.L8984
	cmpl	$64, %esi
	jbe	.L8987
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	orq	%r10, 40(%rdx)
.L8984:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r15
	orq	%rdi, %r15
	orq	%r8, %r15
	setne	%cl
	movzbl	%cl, %ebp
	jmp	.L8969
.L8987:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8984
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8984
.L8985:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20073
.L8979:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8978
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L8978
.L8973:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8976
.L8966:
	movq	%r12, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L8967
.L21866:
	movq	8(%r12), %r13
	movl	$1, %r15d
	movl	$0, 1324(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21873
.L8755:
	movl	$88, %eax
	movl	$0, 1296(%rsp)
	movl	$0, 1320(%rsp)
	subl	$59, %eax
	movq	32(%r12), %r11
	movq	40(%r12), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L8896(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L8896:
	.quad	.L8830
	.quad	.L8833
	.quad	.L8839
	.quad	.L8872
	.quad	.L8872
	.quad	.L8872
	.quad	.L8875
	.quad	.L8881
	.quad	.L8881
	.quad	.L8881
	.quad	.L8884
	.quad	.L18929
	.quad	.L8872
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L8886
	.quad	.L8886
	.quad	.L18929
	.quad	.L18929
	.quad	.L8762
	.quad	.L8761
	.quad	.L8789
	.quad	.L8788
	.quad	.L8757
	.quad	.L8758
	.quad	.L8759
	.quad	.L8760
	.text
.L8757:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5920(%rsp)
.L20068:
	movq	%r10, 5912(%rsp)
.L8756:
	movl	1324(%rsp), %eax
	testl	%eax, %eax
	je	.L8897
	movq	5912(%rsp), %rax
	testq	%rax, %rax
	jne	.L8899
	cmpq	$0, 5920(%rsp)
	js	.L8899
.L8898:
	movl	1296(%rsp), %eax
	testl	%eax, %eax
	jne	.L8897
	testb	$8, 18(%r12)
	jne	.L8897
	testb	$8, 18(%r14)
	jne	.L8897
	cmpq	$0, size_htab.0(%rip)
	movq	5920(%rsp), %rbx
	je	.L21874
.L8900:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L8904
	cmpb	$25, %al
	je	.L21875
.L8904:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %ecx
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %sil
	orb	%cl, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20076
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L8961
.L21875:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L8908
	cmpb	$15, %al
	je	.L8908
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L8911:
	cmpl	$128, %esi
	je	.L8913
	cmpl	$64, %esi
	jbe	.L8914
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L8913:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8917
	cmpb	$6, 16(%rax)
	jne	.L8904
	testb	$2, 62(%rax)
	je	.L8904
.L8917:
	cmpl	$128, %esi
	je	.L8919
	cmpl	$64, %esi
	jbe	.L8920
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20070:
	testl	$1, %eax 
	je	.L8919
	cmpl	$64, %esi
	jbe	.L8922
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L8919:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L8904
.L8922:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8919
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8919
.L8920:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20070
.L8914:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8913
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L8913
.L8908:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8911
.L21874:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L8900
.L8897:
	movq	5920(%rsp), %rdi
	movq	5912(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%r12), %r13
	movq	%rax, %rdi
	movq	%r13, 8(%rax)
	movzbl	18(%r14), %edx
	movzbl	18(%r12), %ebx
	shrb	$3, %dl
	shrb	$3, %bl
	andl	%ebx, %r11d
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L8930
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L8933
	movl	1324(%rsp), %eax
	testl	%eax, %eax
	je	.L8932
.L8933:
	movl	1296(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L8932:
	movl	%edx, %eax
.L20072:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1324(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L8959
	testb	$8, %dl
	jne	.L8959
	movq	5912(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L21876
.L8960:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L8959:
	movzbl	18(%rdi), %ebx
	movzbl	18(%r12), %r15d
	movzbl	18(%r14), %r12d
	movl	%ebx, %eax
	shrb	$2, %r15b
	andb	$-5, %bl
	shrb	$3, %al
	shrb	$2, %r12b
	orl	%eax, %r15d
	orl	%r12d, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L8961
.L21876:
	movq	5920(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L8960
	jmp	.L8959
.L8930:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L8936
	movl	1324(%rsp), %eax
	testl	%eax, %eax
	je	.L8935
.L8936:
	movl	1296(%rsp), %eax
	movl	$1, %r10d
	testl	%eax, %eax
	movl	$0, %eax
	cmove	%eax, %r10d
.L8935:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L8938
	cmpb	$25, %al
	je	.L21877
.L8938:
	testl	%r10d, %r10d
	je	.L8934
	movl	1320(%rsp), %r9d
	movl	$1, %eax
	testl	%r9d, %r9d
	cmove	%eax, %ebp
.L8934:
	movl	%ebp, %eax
	jmp	.L20072
.L21877:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L8942
	cmpb	$15, %al
	je	.L8942
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L8945:
	cmpl	$128, %esi
	je	.L8947
	cmpl	$64, %esi
	jbe	.L8948
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L8947:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8951
	cmpb	$6, 16(%rax)
	jne	.L8938
	testb	$2, 62(%rax)
	je	.L8938
.L8951:
	cmpl	$128, %esi
	je	.L8953
	cmpl	$64, %esi
	jbe	.L8954
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20071:
	testl	$1, %eax 
	je	.L8953
	cmpl	$64, %esi
	jbe	.L8956
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L8953:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L8938
.L8956:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8953
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8953
.L8954:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20071
.L8948:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8947
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L8947
.L8942:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8945
.L8899:
	cmpq	$-1, %rax
	jne	.L8897
	cmpq	$0, 5920(%rsp)
	jns	.L8897
	jmp	.L8898
.L8830:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5920(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5912(%rsp)
	andq	%r10, %r9
.L20067:
	shrq	$63, %r9
	movl	%r9d, 1296(%rsp)
	jmp	.L8756
.L8833:
	testq	%r8, %r8
	jne	.L8834
	movq	%r9, %rax
	movq	$0, 5920(%rsp)
	negq	%rax
.L20062:
	movq	%rax, 5912(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	5920(%rsp), %rdx
	addq	5912(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rbx
	movq	%rdx, 5920(%rsp)
	cmovb	%rbx, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 5912(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L20067
.L8834:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5920(%rsp)
	notq	%rax
	jmp	.L20062
.L8839:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 13424(%rsp)
	movq	%rcx, 13432(%rsp)
	movq	%r8, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %ebp
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 13400(%rsp)
	movq	%rbx, 13440(%rsp)
	movq	%rdx, 13448(%rsp)
	movq	%rbp, 13392(%rsp)
	movq	%rdi, 13408(%rsp)
	movq	%rcx, 13416(%rsp)
	movq	$0, 13328(%rsp)
	movq	$0, 13336(%rsp)
	movq	$0, 13344(%rsp)
	movq	$0, 13352(%rsp)
	movq	$0, 13360(%rsp)
	movq	$0, 13368(%rsp)
	movq	$0, 13376(%rsp)
	movq	$0, 13384(%rsp)
	xorl	%esi, %esi
.L8851:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	13424(%rsp,%rbx,8), %rbp
	xorl	%ebx, %ebx
.L8850:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	13392(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	13328(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 13328(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L8850
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 13360(%rsp,%rbp,8)
	jle	.L8851
	movq	13336(%rsp), %rdx
	movq	13352(%rsp), %rsi
	movq	13368(%rsp), %rax
	movq	13384(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	13328(%rsp), %rdx
	addq	13344(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	13360(%rsp), %rax
	addq	13376(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 5920(%rsp)
	movq	%rsi, 5912(%rsp)
	js	.L21878
.L8854:
	testq	%r9, %r9
	js	.L21879
.L8860:
	cmpq	$0, 5912(%rsp)
	js	.L21880
	orq	%rcx, %rax
.L21008:
	setne	%r10b
	movzbl	%r10b, %eax
.L20066:
	movl	%eax, 1296(%rsp)
	jmp	.L8756
.L21880:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21008
.L21879:
	testq	%r11, %r11
	jne	.L8861
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L8862:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L8860
.L8861:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L8862
.L21878:
	testq	%r8, %r8
	jne	.L8855
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L8856:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L8854
.L8855:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L8856
.L8875:
	testq	%r9, %r9
	jne	.L8876
	cmpq	$1, %r8
	je	.L20065
.L8876:
	cmpq	%r8, %r11
	je	.L21881
.L8877:
	leaq	5920(%rsp), %rbx
	leaq	5912(%rsp), %rdi
	leaq	5872(%rsp), %rcx
	leaq	5864(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L20063:
	movl	$88, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20066
.L21881:
	cmpq	%r9, %r10
	jne	.L8877
	testq	%r8, %r8
	jne	.L8878
	testq	%r9, %r9
	je	.L8877
.L8878:
	movq	$1, 5920(%rsp)
.L20064:
	movq	$0, 5912(%rsp)
	jmp	.L8756
.L20065:
	movq	%r11, 5920(%rsp)
	jmp	.L20068
.L8881:
	testq	%r9, %r9
	jne	.L8884
	testq	%r8, %r8
	jle	.L8884
	testb	$4, 18(%r12)
	jne	.L8884
	testb	$4, 18(%r14)
	jne	.L8884
	testq	%r10, %r10
	jne	.L8884
	testq	%r11, %r11
	js	.L8884
	movl	$88, %edx
	leaq	-1(%r8,%r11), %rbp
	cmpl	$67, %edx
	cmove	%rbp, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5920(%rsp)
	jmp	.L20064
.L8884:
	leaq	5872(%rsp), %rdi
	leaq	5864(%rsp), %rcx
	leaq	5920(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5912(%rsp), %rax
	jmp	.L20063
.L8872:
	testq	%r9, %r9
	jne	.L8876
	testq	%r8, %r8
	jle	.L8875
	testb	$4, 18(%r12)
	jne	.L8875
	testb	$4, 18(%r14)
	jne	.L8875
	testq	%r10, %r10
	jne	.L8875
	testq	%r11, %r11
	js	.L8875
	movl	$88, %eax
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %eax
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5920(%rsp)
	jmp	.L20064
.L8886:
	testl	%r15d, %r15d
	je	.L8887
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L8892
.L21182:
	cmpq	%r9, %r10
	je	.L21882
.L8891:
	movq	%rax, 5920(%rsp)
	xorl	%ebx, %ebx
	movl	$88, %eax
	cmpl	$78, %eax
	sete	%bl
	cmpq	%rbx, 5920(%rsp)
	je	.L20065
	movq	%r8, 5920(%rsp)
	movq	%r9, 5912(%rsp)
	jmp	.L8756
.L21882:
	cmpq	%r8, %r11
	jae	.L8891
.L8892:
	movl	$1, %eax
	jmp	.L8891
.L8887:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L8892
	jmp	.L21182
.L8762:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5920(%rsp), %rbx
	leaq	5912(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21883
	cmpq	$127, %r8
	jle	.L8778
	movq	$0, 5912(%rsp)
.L20054:
	movq	$0, 5920(%rsp)
.L8779:
	cmpl	$64, %esi
	jbe	.L8782
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20055:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L8777
	cmpl	$63, %esi
	jbe	.L8786
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20057:
	movq	%rax, (%r9)
.L8777:
	movl	$1, 1320(%rsp)
	jmp	.L8756
.L8786:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20056:
	movq	%rax, (%rbx)
	jmp	.L8777
.L8782:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20055
.L8778:
	cmpq	$63, %r8
	jle	.L8780
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5912(%rsp)
	jmp	.L20054
.L8780:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5920(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5912(%rsp)
	jmp	.L8779
.L21883:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L8764
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L8765:
	cmpq	$127, %rdx
	jle	.L8766
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L8767:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L8770
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L8777
.L8770:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L8777
	cmpq	$63, %rax
	jle	.L8774
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20057
.L8774:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20056
.L8766:
	cmpq	$63, %rdx
	jle	.L8768
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L8767
.L8768:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rbp
	orq	%rbp, %r11
	movq	%r11, (%rbx)
	jmp	.L8767
.L8764:
	xorl	%edi, %edi
	jmp	.L8765
.L8761:
	negq	%r8
	jmp	.L8762
.L8789:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5904(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5896(%rsp), %rbx
	testq	%r8, %r8
	js	.L21884
	cmpq	$127, %r8
	jle	.L8806
	movq	$0, 5896(%rsp)
.L20058:
	movq	$0, 5904(%rsp)
.L8807:
	cmpl	$64, %edi
	jbe	.L8810
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20059:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L8805
	cmpl	$63, %edi
	jbe	.L8814
.L20061:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L8805:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5880(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5888(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L8818
	movq	$0, 5880(%rsp)
	movq	$0, 5888(%rsp)
.L8819:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L8822
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L8828:
	movq	5888(%rsp), %rdi
	movq	5880(%rsp), %r9
	orq	5904(%rsp), %rdi
	orq	5896(%rsp), %r9
	movq	%rdi, 5920(%rsp)
	movq	%r9, 5912(%rsp)
	jmp	.L8756
.L8822:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L8828
	cmpq	$63, %rax
	jle	.L8826
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L8828
.L8826:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L8828
.L8818:
	cmpq	$63, %rsi
	jle	.L8820
	leal	-64(%rsi), %ecx
	movq	$0, 5880(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5888(%rsp)
	jmp	.L8819
.L8820:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5880(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5888(%rsp)
	jmp	.L8819
.L8814:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20060:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L8805
.L8810:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20059
.L8806:
	cmpq	$63, %r8
	jle	.L8808
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 5896(%rsp)
	jmp	.L20058
.L8808:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 5896(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 5904(%rsp)
	jmp	.L8807
.L21884:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L8794
	movq	$0, 5896(%rsp)
	movq	$0, 5904(%rsp)
.L8795:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L8798
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L8805
.L8798:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L8805
	cmpq	$63, %rax
	jle	.L8802
	subl	%esi, %edi
	jmp	.L20061
.L8802:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20060
.L8794:
	cmpq	$63, %rsi
	jle	.L8796
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5896(%rsp)
	shrq	%cl, %rax
	movq	%rax, 5904(%rsp)
	jmp	.L8795
.L8796:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 5896(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 5904(%rsp)
	jmp	.L8795
.L8788:
	negq	%r8
	jmp	.L8789
.L8758:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5920(%rsp)
	jmp	.L20068
.L8759:
	andq	%r8, %r11
	movq	%r11, 5920(%rsp)
.L20069:
	andq	%r9, %r10
	jmp	.L20068
.L8760:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5920(%rsp)
	jmp	.L20069
.L21873:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1324(%rsp), %eax
	movl	%eax, 1324(%rsp)
	jmp	.L8755
.L21865:
	movq	1360(%rsp), %r9
	movq	1360(%rsp), %r11
	cmpl	$60, %r12d
	movq	8(%r9), %rax
	movq	%rax, 3032(%rsp)
	movq	32(%r14), %rbp
	movq	40(%r11), %r15
	movq	32(%r11), %r13
	movq	40(%r14), %r14
	je	.L8725
	cmpl	$60, %r12d
	ja	.L8742
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21007:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3032(%rsp), %rdi
.L20052:
	movq	%rax, %rdx
	call	build_complex
.L20053:
	movq	%rax, 536(%rsp)
	jmp	.L8693
.L8742:
	cmpl	$61, %r12d
	je	.L8726
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3024(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L8736
	cmpb	$10, %al
	je	.L8736
	cmpb	$11, %al
	je	.L8736
	cmpb	$12, %al
	movl	$70, %edi
	je	.L8736
.L8735:
	movq	3024(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rcx
	movq	%rax, %rsi
	movzbl	16(%rcx), %eax
	cmpb	$6, %al
	je	.L8739
	cmpb	$10, %al
	je	.L8739
	cmpb	$11, %al
	je	.L8739
	cmpb	$12, %al
	movl	$70, %edi
	je	.L8739
.L8738:
	movq	3024(%rsp), %rdx
.L20051:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3032(%rsp), %rdi
	jmp	.L20052
.L8739:
	movl	$62, %edi
	jmp	.L8738
.L8736:
	movl	$62, %edi
	jmp	.L8735
.L8726:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20051
.L8725:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21007
.L21864:
	movq	1360(%rsp), %r8
	xorl	%ebx, %ebx
	movq	32(%r8), %rdx
	movq	%rdx, 18528(%rsp)
	movq	40(%r8), %r15
	movq	%r15, 18536(%rsp)
	movq	48(%r8), %r13
	movq	%r13, 18544(%rsp)
	movq	32(%r14), %rbp
	movq	%rbp, 18560(%rsp)
	movq	40(%r14), %r10
	movq	%r10, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%r13, 16(%rsp)
	movq	%rdx, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	movq	1360(%rsp), %rdi
	testl	%eax, %eax
	movq	%rdi, 536(%rsp)
	jne	.L8693
	movq	18560(%rsp), %r9
	movq	18568(%rsp), %rcx
	movq	18576(%rsp), %r11
	movq	%r9, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r11, 16(%rsp)
	call	target_isnan
	movq	%r14, 536(%rsp)
	testl	%eax, %eax
	jne	.L8693
	movq	1360(%rsp), %rax
	movq	18536(%rsp), %rsi
	movq	18576(%rsp), %rdi
	movq	18528(%rsp), %r10
	movq	18544(%rsp), %rdx
	movq	18560(%rsp), %r15
	movq	8(%rax), %rbp
	movq	18568(%rsp), %r13
	movl	%r12d, 13456(%rsp)
	movq	%rsi, 13480(%rsp)
	movq	%rdi, 13512(%rsp)
	movq	%r10, 13472(%rsp)
	leaq	13456(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%rdx, 13488(%rsp)
	movq	%rbp, 13464(%rsp)
	movq	%r15, 13496(%rsp)
	movq	%r13, 13504(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L8698
	movq	13520(%rsp), %r12
	movq	%r12, 536(%rsp)
.L8699:
	movq	536(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L8701
	cmpb	$25, %al
	je	.L21887
.L8701:
	movq	1360(%rsp), %rbp
	movzbl	18(%r14), %edx
	movzbl	18(%rbp), %r12d
	shrb	$3, %dl
	andl	$1, %edx
	shrb	$3, %r12b
	andl	$1, %r12d
	orb	%bl, %r12b
	movq	536(%rsp), %rbx
	orb	%dl, %r12b
	salb	$3, %r12b
	movzbl	18(%rbx), %edi
	andb	$-9, %dil
	orb	%r12b, %dil
	movb	%dil, 18(%rbx)
	movl	%edi, %r10d
	movzbl	18(%r14), %esi
	movzbl	18(%rbp), %r15d
	shrb	$3, %r10b
	andb	$-5, %dil
	shrb	$2, %sil
	shrb	$2, %r15b
	orl	%r10d, %r15d
	orl	%esi, %r15d
	andb	$1, %r15b
	salb	$2, %r15b
	orb	%r15b, %dil
	movb	%dil, 18(%rbx)
	jmp	.L8693
.L21887:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %rdi
	movq	40(%rdx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L8705
	cmpb	$15, %al
	je	.L8705
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L8708:
	cmpl	$128, %esi
	je	.L8710
	cmpl	$64, %esi
	jbe	.L8711
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 40(%rdx)
.L8710:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8714
	cmpb	$6, 16(%rax)
	jne	.L8701
	testb	$2, 62(%rax)
	je	.L8701
.L8714:
	cmpl	$128, %esi
	je	.L8716
	cmpl	$64, %esi
	jbe	.L8717
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20050:
	testl	$1, %eax 
	je	.L8716
	cmpl	$64, %esi
	jbe	.L8719
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L8716:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%rcx
	orq	%rdi, %rcx
	orq	%r8, %rcx
	setne	%r8b
	movzbl	%r8b, %ebx
	jmp	.L8701
.L8719:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8716
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8716
.L8717:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20050
.L8711:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8710
	movq	$-1, %r9
	movl	%esi, %ecx
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 32(%rdx)
	jmp	.L8710
.L8705:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8708
.L8698:
	movq	1360(%rsp), %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, 536(%rsp)
	jmp	.L8699
.L21863:
	movq	8(%rsi), %r13
	movl	$1, %r15d
	movl	$0, 1356(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21888
.L8487:
	movq	1360(%rsp), %rcx
	leal	-59(%r12), %eax
	movl	$0, 1328(%rsp)
	cmpl	$30, %eax
	movl	$0, 1352(%rsp)
	movq	40(%r14), %r9
	movq	32(%r14), %r8
	movq	32(%rcx), %r11
	movq	40(%rcx), %r10
	ja	.L18929
	mov	%eax, %edx
	jmp	*.L8628(,%rdx,8)
	.section	.rodata
	.align 8
	.align 4
.L8628:
	.quad	.L8562
	.quad	.L8565
	.quad	.L8571
	.quad	.L8604
	.quad	.L8604
	.quad	.L8604
	.quad	.L8607
	.quad	.L8613
	.quad	.L8613
	.quad	.L8613
	.quad	.L8616
	.quad	.L18929
	.quad	.L8604
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L8618
	.quad	.L8618
	.quad	.L18929
	.quad	.L18929
	.quad	.L8494
	.quad	.L8493
	.quad	.L8521
	.quad	.L8520
	.quad	.L8489
	.quad	.L8490
	.quad	.L8491
	.quad	.L8492
	.text
.L8489:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 5984(%rsp)
.L20045:
	movq	%r10, 5976(%rsp)
.L8488:
	movl	1356(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L8629
	movq	5976(%rsp), %rax
	testq	%rax, %rax
	jne	.L8631
	cmpq	$0, 5984(%rsp)
	js	.L8631
.L8630:
	movl	1328(%rsp), %r12d
	testl	%r12d, %r12d
	jne	.L8629
	movq	1360(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L8629
	testb	$8, 18(%r14)
	jne	.L8629
	cmpq	$0, size_htab.0(%rip)
	movq	5984(%rsp), %rbx
	je	.L21889
.L8632:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L8636
	cmpb	$25, %al
	je	.L21890
.L8636:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%bl, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20053
	movq	new_const.1(%rip), %rdi
	movq	%rdi, 536(%rsp)
	movq	%rdi, (%rdx)
	movl	$25, %edi
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L8693
.L21890:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L8640
	cmpb	$15, %al
	je	.L8640
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L8643:
	cmpl	$128, %esi
	je	.L8645
	cmpl	$64, %esi
	jbe	.L8646
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L8645:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8649
	cmpb	$6, 16(%rax)
	jne	.L8636
	testb	$2, 62(%rax)
	je	.L8636
.L8649:
	cmpl	$128, %esi
	je	.L8651
	cmpl	$64, %esi
	jbe	.L8652
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20047:
	testl	$1, %eax 
	je	.L8651
	cmpl	$64, %esi
	jbe	.L8654
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L8651:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L8636
.L8654:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8651
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8651
.L8652:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20047
.L8646:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8645
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L8645
.L8640:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8643
.L21889:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L8632
.L8629:
	movq	5984(%rsp), %rdi
	movq	5976(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	1360(%rsp), %r11
	movq	%rax, %rdi
	movq	8(%r11), %r13
	movq	%r13, 8(%rax)
	movzbl	18(%r14), %r8d
	movzbl	18(%r11), %r12d
	movl	$1, %r11d
	shrb	$3, %r8b
	shrb	$3, %r12b
	movl	%r8d, %ebx
	andl	%r12d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L8662
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L8665
	movl	1356(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L8664
.L8665:
	movl	1328(%rsp), %esi
	movl	$1, %eax
	testl	%esi, %esi
	cmovne	%eax, %edx
.L8664:
	movl	%edx, %eax
.L20049:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1356(%rsp), %eax
	testl	%eax, %eax
	je	.L8691
	testb	$8, %dl
	jne	.L8691
	movq	5976(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21891
.L8692:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L8691:
	movq	1360(%rsp), %r9
	movzbl	18(%rdi), %r8d
	movzbl	18(%r14), %ecx
	movzbl	18(%r9), %r11d
	movl	%r8d, %eax
	andb	$-5, %r8b
	shrb	$3, %al
	shrb	$2, %cl
	shrb	$2, %r11b
	orl	%eax, %r11d
	orl	%ecx, %r11d
	andb	$1, %r11b
	salb	$2, %r11b
	orb	%r11b, %r8b
	movb	%r8b, 18(%rdi)
	movq	%rdi, 536(%rsp)
	jmp	.L8693
.L21891:
	movq	5984(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L8692
	jmp	.L8691
.L8662:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L8668
	movl	1356(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L8667
.L8668:
	movl	1328(%rsp), %r9d
	movl	$1, %r10d
	movl	$0, %eax
	testl	%r9d, %r9d
	cmove	%eax, %r10d
.L8667:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L8670
	cmpb	$25, %al
	je	.L21892
.L8670:
	testl	%r10d, %r10d
	je	.L8666
	movl	1352(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L8666:
	movl	%ebp, %eax
	jmp	.L20049
.L21892:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L8674
	cmpb	$15, %al
	je	.L8674
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L8677:
	cmpl	$128, %esi
	je	.L8679
	cmpl	$64, %esi
	jbe	.L8680
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L8679:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8683
	cmpb	$6, 16(%rax)
	jne	.L8670
	testb	$2, 62(%rax)
	je	.L8670
.L8683:
	cmpl	$128, %esi
	je	.L8685
	cmpl	$64, %esi
	jbe	.L8686
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20048:
	testl	$1, %eax 
	je	.L8685
	cmpl	$64, %esi
	jbe	.L8688
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L8685:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L8670
.L8688:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8685
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8685
.L8686:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20048
.L8680:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8679
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L8679
.L8674:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8677
.L8631:
	cmpq	$-1, %rax
	jne	.L8629
	cmpq	$0, 5984(%rsp)
	jns	.L8629
	jmp	.L8630
.L8562:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 5984(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 5976(%rsp)
	andq	%r10, %r9
.L20044:
	shrq	$63, %r9
	movl	%r9d, 1328(%rsp)
	jmp	.L8488
.L8565:
	testq	%r8, %r8
	jne	.L8566
	movq	%r9, %rax
	movq	$0, 5984(%rsp)
	negq	%rax
.L20039:
	movq	%rax, 5976(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	5984(%rsp), %rdx
	addq	5976(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 5984(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 5976(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L20044
.L8566:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 5984(%rsp)
	notq	%rax
	jmp	.L20039
.L8571:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 13632(%rsp)
	movq	%rcx, 13640(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 13600(%rsp)
	leaq	5976(%rsp), %r12
	movq	%rbp, 13648(%rsp)
	movq	%rdx, 13656(%rsp)
	movq	%rdi, 13608(%rsp)
	movq	%rbx, 13616(%rsp)
	movq	%rcx, 13624(%rsp)
	movq	$0, 13536(%rsp)
	movq	$0, 13544(%rsp)
	movq	$0, 13552(%rsp)
	movq	$0, 13560(%rsp)
	movq	$0, 13568(%rsp)
	movq	$0, 13576(%rsp)
	movq	$0, 13584(%rsp)
	movq	$0, 13592(%rsp)
	xorl	%esi, %esi
.L8583:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	13632(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L8582:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	13600(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	13536(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 13536(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L8582
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 13568(%rsp,%rdi,8)
	jle	.L8583
	movq	13544(%rsp), %rdx
	movq	13560(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	13536(%rsp), %rdx
	addq	13552(%rsp), %rsi
	movq	%rdx, 5984(%rsp)
	movq	%rsi, (%r12)
	movq	13592(%rsp), %rcx
	movq	13576(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	13584(%rsp), %rcx
	addq	13568(%rsp), %rax
	testq	%r10, %r10
	js	.L21893
.L8586:
	testq	%r9, %r9
	js	.L21894
.L8592:
	cmpq	$0, (%r12)
	js	.L21895
	orq	%rcx, %rax
.L21006:
	setne	%r11b
	movzbl	%r11b, %eax
.L20043:
	movl	%eax, 1328(%rsp)
	jmp	.L8488
.L21895:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21006
.L21894:
	testq	%r11, %r11
	jne	.L8593
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L8594:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L8592
.L8593:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L8594
.L21893:
	testq	%r8, %r8
	jne	.L8587
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L8588:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L8586
.L8587:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L8588
.L8607:
	testq	%r9, %r9
	jne	.L8608
	cmpq	$1, %r8
	je	.L20042
.L8608:
	cmpq	%r8, %r11
	je	.L21896
.L8609:
	leaq	5984(%rsp), %rcx
	leaq	5976(%rsp), %rbx
	leaq	5936(%rsp), %rbp
	leaq	5928(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
.L20040:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L20043
.L21896:
	cmpq	%r9, %r10
	jne	.L8609
	testq	%r8, %r8
	jne	.L8610
	testq	%r9, %r9
	je	.L8609
.L8610:
	movq	$1, 5984(%rsp)
.L20041:
	movq	$0, 5976(%rsp)
	jmp	.L8488
.L20042:
	movq	%r11, 5984(%rsp)
	jmp	.L20045
.L8613:
	testq	%r9, %r9
	jne	.L8616
	testq	%r8, %r8
	jle	.L8616
	movq	1360(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L8616
	testb	$4, 18(%r14)
	jne	.L8616
	testq	%r10, %r10
	jne	.L8616
	testq	%r11, %r11
	js	.L8616
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 5984(%rsp)
	jmp	.L20041
.L8616:
	leaq	5936(%rsp), %rbp
	leaq	5928(%rsp), %rdx
	leaq	5984(%rsp), %rsi
	movq	%rbp, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	5976(%rsp), %rax
	jmp	.L20040
.L8604:
	testq	%r9, %r9
	jne	.L8608
	testq	%r8, %r8
	jle	.L8607
	movq	1360(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L8607
	testb	$4, 18(%r14)
	jne	.L8607
	testq	%r10, %r10
	jne	.L8607
	testq	%r11, %r11
	js	.L8607
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r10
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 5984(%rsp)
	jmp	.L20041
.L8618:
	testl	%r15d, %r15d
	je	.L8619
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L8624
.L21181:
	cmpq	%r9, %r10
	je	.L21897
.L8623:
	xorl	%ebx, %ebx
	movq	%rax, 5984(%rsp)
	cmpl	$78, %r12d
	sete	%bl
	cmpq	%rbx, 5984(%rsp)
	je	.L20042
	movq	%r8, 5984(%rsp)
	movq	%r9, 5976(%rsp)
	jmp	.L8488
.L21897:
	cmpq	%r8, %r11
	jae	.L8623
.L8624:
	movl	$1, %eax
	jmp	.L8623
.L8619:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L8624
	jmp	.L21181
.L8494:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	5984(%rsp), %rbx
	leaq	5976(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21898
	cmpq	$127, %r8
	jle	.L8510
	movq	$0, 5976(%rsp)
.L20030:
	movq	$0, 5984(%rsp)
.L8511:
	cmpl	$64, %esi
	jbe	.L8514
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20031:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L8509
	cmpl	$63, %esi
	jbe	.L8518
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20033:
	movq	%rax, (%r9)
.L8509:
	movl	$1, 1352(%rsp)
	jmp	.L8488
.L8518:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20032:
	movq	%rax, (%rbx)
	jmp	.L8509
.L8514:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20031
.L8510:
	cmpq	$63, %r8
	jle	.L8512
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 5976(%rsp)
	jmp	.L20030
.L8512:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 5984(%rsp)
	orq	%rdi, %r10
	movq	%r10, 5976(%rsp)
	jmp	.L8511
.L21898:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L8496
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L8497:
	cmpq	$127, %rdx
	jle	.L8498
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L8499:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L8502
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L8509
.L8502:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L8509
	cmpq	$63, %rax
	jle	.L8506
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20033
.L8506:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20032
.L8498:
	cmpq	$63, %rdx
	jle	.L8500
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L8499
.L8500:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L8499
.L8496:
	xorl	%edi, %edi
	jmp	.L8497
.L8493:
	negq	%r8
	jmp	.L8494
.L8521:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	5968(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	5960(%rsp), %rbx
	testq	%r8, %r8
	js	.L21899
	cmpq	$127, %r8
	jle	.L8538
	movq	$0, 5960(%rsp)
.L20035:
	movq	$0, 5968(%rsp)
.L8539:
	cmpl	$64, %edi
	jbe	.L8542
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20036:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L8537
	cmpl	$63, %edi
	jbe	.L8546
.L20038:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L8537:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	5944(%rsp), %rdi
	subq	%r8, %rsi
	leaq	5952(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L8550
	movq	$0, 5944(%rsp)
	movq	$0, 5952(%rsp)
.L8551:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L8554
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L8560:
	movq	5952(%rsp), %rdi
	movq	5944(%rsp), %r9
	orq	5968(%rsp), %rdi
	orq	5960(%rsp), %r9
	movq	%rdi, 5984(%rsp)
	movq	%r9, 5976(%rsp)
	jmp	.L8488
.L8554:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L8560
	cmpq	$63, %rax
	jle	.L8558
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L8560
.L8558:
	movl	%r9d, %ecx
	movq	$-1, %r10
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%r8), %r10
	orq	%rdx, %r10
	movq	%r10, (%r8)
	jmp	.L8560
.L8550:
	cmpq	$63, %rsi
	jle	.L8552
	leal	-64(%rsi), %ecx
	movq	$0, 5944(%rsp)
	shrq	%cl, %r10
	movq	%r10, 5952(%rsp)
	jmp	.L8551
.L8552:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 5944(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 5952(%rsp)
	jmp	.L8551
.L8546:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20037:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L8537
.L8542:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20036
.L8538:
	cmpq	$63, %r8
	jle	.L8540
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 5960(%rsp)
	jmp	.L20035
.L8540:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 5960(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 5968(%rsp)
	jmp	.L8539
.L21899:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L8526
	movq	$0, 5960(%rsp)
	movq	$0, 5968(%rsp)
.L8527:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L8530
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L8537
.L8530:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L8537
	cmpq	$63, %rax
	jle	.L8534
	subl	%esi, %edi
	jmp	.L20038
.L8534:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20037
.L8526:
	cmpq	$63, %rsi
	jle	.L8528
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 5960(%rsp)
	shrq	%cl, %rax
.L20034:
	movq	%rax, 5968(%rsp)
	jmp	.L8527
.L8528:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 5960(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L20034
.L8520:
	negq	%r8
	jmp	.L8521
.L8490:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 5984(%rsp)
	jmp	.L20045
.L8491:
	andq	%r8, %r11
	movq	%r11, 5984(%rsp)
.L20046:
	andq	%r9, %r10
	jmp	.L20045
.L8492:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 5984(%rsp)
	jmp	.L20046
.L21888:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1356(%rsp), %eax
	movl	%eax, 1356(%rsp)
	jmp	.L8487
.L21862:
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L8473
.L21861:
	movzbl	16(%rbx), %eax
	movq	1008(%rsp), %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L8455
	cmpb	$15, %al
	je	.L8455
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L8458:
	cmpl	$128, %esi
	je	.L8460
	cmpl	$64, %esi
	jbe	.L8461
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L8460:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8464
	cmpb	$6, 16(%rax)
	jne	.L8451
	testb	$2, 62(%rax)
	je	.L8451
.L8464:
	cmpl	$128, %esi
	je	.L8466
	cmpl	$64, %esi
	jbe	.L8467
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20029:
	testl	$1, %eax 
	je	.L8466
	cmpl	$64, %esi
	jbe	.L8469
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	orq	%rbx, 40(%rdx)
.L8466:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L8451
.L8469:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8466
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8466
.L8467:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20029
.L8461:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8460
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L8460
.L8455:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8458
.L21860:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L8447
.L21859:
	movq	1360(%rsp), %r10
	movq	1360(%rsp), %rbx
	movq	8(%r10), %rax
	movq	%rax, 3048(%rsp)
	movq	40(%r12), %r14
	movq	32(%r12), %rbp
	movl	$87, %r12d
	movq	32(%rbx), %r13
	movq	40(%rbx), %r15
	cmpl	$60, %r12d
	je	.L8435
	cmpl	$60, %r12d
	ja	.L8446
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21005:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3048(%rsp), %rdi
.L20027:
	movq	%rax, %rdx
	call	build_complex
.L20028:
	movq	%rax, %rbx
	jmp	.L8403
.L8446:
	movl	$87, %eax
	cmpl	$61, %eax
	je	.L8436
	cmpl	$70, %eax
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3040(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L8440
	cmpb	$10, %al
	je	.L8440
	cmpb	$11, %al
	je	.L8440
	cmpb	$12, %al
	movl	$70, %edi
	je	.L8440
.L8439:
	movq	3040(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L8443
	cmpb	$10, %al
	je	.L8443
	cmpb	$11, %al
	je	.L8443
	cmpb	$12, %al
	movl	$70, %edi
	je	.L8443
.L8442:
	movq	3040(%rsp), %rdx
.L20026:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3048(%rsp), %rdi
	jmp	.L20027
.L8443:
	movl	$62, %edi
	jmp	.L8442
.L8440:
	movl	$62, %edi
	jmp	.L8439
.L8436:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20026
.L8435:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21005
.L21858:
	movq	1360(%rsp), %r9
	xorl	%ebp, %ebp
	movq	32(%r9), %r13
	movq	%r13, 18528(%rsp)
	movq	40(%r9), %r15
	movq	%r15, 18536(%rsp)
	movq	48(%r9), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r12), %r10
	movq	%r10, 18560(%rsp)
	movq	40(%r12), %rcx
	movq	%rcx, 18568(%rsp)
	movq	48(%r12), %r8
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%r8, 18576(%rsp)
	call	target_isnan
	movq	1360(%rsp), %rbx
	testl	%eax, %eax
	jne	.L8403
	movq	18568(%rsp), %rbx
	movq	18560(%rsp), %rsi
	movq	18576(%rsp), %r11
	movq	%rbx, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	%r12, %rbx
	movq	%r11, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L8403
	movq	1360(%rsp), %rax
	movq	18560(%rsp), %rdi
	leaq	13664(%rsp), %rsi
	movq	18528(%rsp), %r8
	movq	18536(%rsp), %r13
	movq	18544(%rsp), %r15
	movq	18568(%rsp), %rdx
	movq	8(%rax), %rcx
	movq	18576(%rsp), %r14
	movl	$87, 13664(%rsp)
	movq	%rdi, 13704(%rsp)
	movq	%r8, 13680(%rsp)
	movq	%r13, 13688(%rsp)
	movl	$const_binop_1, %edi
	movq	%r15, 13696(%rsp)
	movq	%rdx, 13712(%rsp)
	movq	%rcx, 13672(%rsp)
	movq	%r14, 13720(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L8408
	movq	13728(%rsp), %rbx
.L8409:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L8411
	cmpb	$25, %al
	je	.L21902
.L8411:
	movq	1360(%rsp), %r8
	movzbl	18(%r12), %edx
	movzbl	18(%r8), %ecx
	shrb	$3, %dl
	andl	$1, %edx
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%bpl, %cl
	movzbl	18(%rbx), %ebp
	orb	%dl, %cl
	salb	$3, %cl
	andb	$-9, %bpl
	orb	%cl, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %r13d
	movzbl	18(%r12), %r15d
	movzbl	18(%r8), %edi
	shrb	$3, %r13b
	andb	$-5, %bpl
	shrb	$2, %r15b
	shrb	$2, %dil
	orl	%r13d, %edi
	orl	%r15d, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L8403
.L21902:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L8415
	cmpb	$15, %al
	je	.L8415
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L8418:
	cmpl	$128, %esi
	je	.L8420
	cmpl	$64, %esi
	jbe	.L8421
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 40(%rdx)
.L8420:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8424
	cmpb	$6, 16(%rax)
	jne	.L8411
	testb	$2, 62(%rax)
	je	.L8411
.L8424:
	cmpl	$128, %esi
	je	.L8426
	cmpl	$64, %esi
	jbe	.L8427
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20025:
	testl	$1, %eax 
	je	.L8426
	cmpl	$64, %esi
	jbe	.L8429
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L8426:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r14
	orq	%rdi, %r14
	orq	%r8, %r14
	setne	%sil
	movzbl	%sil, %ebp
	jmp	.L8411
.L8429:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8426
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8426
.L8427:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20025
.L8421:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8420
	movq	$-1, %r9
	movl	%esi, %ecx
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 32(%rdx)
	jmp	.L8420
.L8415:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8418
.L8408:
	movq	1360(%rsp), %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L8409
.L21857:
	movq	8(%rcx), %r13
	movl	$1, %r14d
	movl	$0, 1372(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r14d
	cmpb	$6, 16(%r13)
	je	.L21903
.L8197:
	movq	1360(%rsp), %rax
	movl	$0, 1368(%rsp)
	xorl	%r15d, %r15d
	movq	32(%r12), %r8
	movq	40(%r12), %r9
	movq	32(%rax), %r11
	movq	40(%rax), %r10
	movl	$87, %eax
	subl	$59, %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %ebp
	jmp	*.L8338(,%rbp,8)
	.section	.rodata
	.align 8
	.align 4
.L8338:
	.quad	.L8272
	.quad	.L8275
	.quad	.L8281
	.quad	.L8314
	.quad	.L8314
	.quad	.L8314
	.quad	.L8317
	.quad	.L8323
	.quad	.L8323
	.quad	.L8323
	.quad	.L8326
	.quad	.L18929
	.quad	.L8314
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L8328
	.quad	.L8328
	.quad	.L18929
	.quad	.L18929
	.quad	.L8204
	.quad	.L8203
	.quad	.L8231
	.quad	.L8230
	.quad	.L8199
	.quad	.L8200
	.quad	.L8201
	.quad	.L8202
	.text
.L8199:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6048(%rsp)
.L20020:
	movq	%r10, 6040(%rsp)
.L8198:
	movl	1372(%rsp), %eax
	testl	%eax, %eax
	je	.L8339
	movq	6040(%rsp), %rax
	testq	%rax, %rax
	jne	.L8341
	cmpq	$0, 6048(%rsp)
	js	.L8341
.L8340:
	testl	%r15d, %r15d
	jne	.L8339
	movq	1360(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L8339
	testb	$8, 18(%r12)
	jne	.L8339
	cmpq	$0, size_htab.0(%rip)
	movq	6048(%rsp), %rbx
	je	.L21904
.L8342:
	movq	new_const.1(%rip), %r12
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r12), %eax
	decq	%rcx
	movq	%rbx, 32(%r12)
	movq	%rcx, 40(%r12)
	movq	%r13, 8(%r12)
	movq	%r12, %rdi
	movq	%r12, %r11
	movq	%r12, %rdx
	cmpb	$26, %al
	je	.L8346
	cmpb	$25, %al
	je	.L21905
.L8346:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %r15d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%r15b, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20028
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L8403
.L21905:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L8350
	cmpb	$15, %al
	je	.L8350
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L8353:
	cmpl	$128, %esi
	je	.L8355
	cmpl	$64, %esi
	jbe	.L8356
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L8355:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8359
	cmpb	$6, 16(%rax)
	jne	.L8346
	testb	$2, 62(%rax)
	je	.L8346
.L8359:
	cmpl	$128, %esi
	je	.L8361
	cmpl	$64, %esi
	jbe	.L8362
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20022:
	testl	$1, %eax 
	je	.L8361
	cmpl	$64, %esi
	jbe	.L8364
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L8361:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L8346
.L8364:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8361
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8361
.L8362:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20022
.L8356:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8355
	movq	$-1, %r14
	movl	%esi, %ecx
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 32(%rdx)
	jmp	.L8355
.L8350:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8353
.L21904:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L8342
.L8339:
	movq	6048(%rsp), %rdi
	movq	6040(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	1360(%rsp), %r11
	movq	%rax, %rdi
	movq	8(%r11), %rbx
	movq	%rbx, 8(%rax)
	movzbl	18(%r12), %ecx
	movzbl	18(%r11), %r13d
	movl	$1, %r11d
	shrb	$3, %cl
	shrb	$3, %r13b
	movl	%ecx, %ebx
	andl	%r13d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L8372
	xorl	%edx, %edx
	testl	%r14d, %r14d
	je	.L8375
	movl	1372(%rsp), %eax
	testl	%eax, %eax
	je	.L8374
.L8375:
	testl	%r15d, %r15d
	movl	$1, %eax
	cmovne	%eax, %edx
.L8374:
	movl	%edx, %eax
.L20024:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1372(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L8401
	testb	$8, %dl
	jne	.L8401
	movq	6040(%rsp), %rax
	cmpq	%rax, 40(%rdi)
	je	.L21906
.L8402:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L8401:
	movq	1360(%rsp), %rdx
	movzbl	18(%rdi), %r11d
	movzbl	18(%r12), %esi
	movzbl	18(%rdx), %ebx
	movl	%r11d, %r14d
	andb	$-5, %r11b
	shrb	$3, %r14b
	shrb	$2, %sil
	shrb	$2, %bl
	orl	%r14d, %ebx
	orl	%esi, %ebx
	andb	$1, %bl
	salb	$2, %bl
	orb	%bl, %r11b
	movq	%rdi, %rbx
	movb	%r11b, 18(%rdi)
	jmp	.L8403
.L21906:
	movq	6048(%rsp), %r9
	cmpq	%r9, 32(%rdi)
	jne	.L8402
	jmp	.L8401
.L8372:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r14d, %r14d
	je	.L8378
	movl	1372(%rsp), %esi
	testl	%esi, %esi
	je	.L8377
.L8378:
	movl	$1, %r10d
	testl	%r15d, %r15d
	movl	$0, %eax
	cmove	%eax, %r10d
.L8377:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L8380
	cmpb	$25, %al
	je	.L21907
.L8380:
	testl	%r10d, %r10d
	je	.L8376
	movl	1368(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L8376:
	movl	%ebp, %eax
	jmp	.L20024
.L21907:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L8384
	cmpb	$15, %al
	je	.L8384
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L8387:
	cmpl	$128, %esi
	je	.L8389
	cmpl	$64, %esi
	jbe	.L8390
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L8389:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8393
	cmpb	$6, 16(%rax)
	jne	.L8380
	testb	$2, 62(%rax)
	je	.L8380
.L8393:
	cmpl	$128, %esi
	je	.L8395
	cmpl	$64, %esi
	jbe	.L8396
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20023:
	testl	$1, %eax 
	je	.L8395
	cmpl	$64, %esi
	jbe	.L8398
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L8395:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L8380
.L8398:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8395
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8395
.L8396:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20023
.L8390:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8389
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L8389
.L8384:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8387
.L8341:
	cmpq	$-1, %rax
	jne	.L8339
	cmpq	$0, 6048(%rsp)
	jns	.L8339
	jmp	.L8340
.L8272:
	leaq	(%r9,%r10), %r15
	leaq	(%r8,%r11), %rsi
	cmpq	%r11, %rsi
	leaq	1(%r15), %r8
	movq	%rsi, 6048(%rsp)
	cmovb	%r8, %r15
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r15, %r10 
	movq	%r15, 6040(%rsp)
	andq	%r10, %r9
.L20019:
	movq	%r9, %r15
	shrq	$63, %r15
	jmp	.L8198
.L8275:
	testq	%r8, %r8
	jne	.L8276
	movq	%r9, %rax
	movq	$0, 6048(%rsp)
	negq	%rax
.L20014:
	movq	%rax, 6040(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	6048(%rsp), %rdx
	addq	6040(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rax
	movq	%rdx, 6048(%rsp)
	cmovb	%rax, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 6040(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L20019
.L8276:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6048(%rsp)
	notq	%rax
	jmp	.L20014
.L8281:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rdx
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rbp
	movq	%rbx, 13840(%rsp)
	movq	%rcx, 13848(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %edx
	shrq	$32, %rbp
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 13808(%rsp)
	leaq	6040(%rsp), %r15
	movq	%rdx, 13856(%rsp)
	movq	%rbp, 13864(%rsp)
	movq	%rdi, 13816(%rsp)
	movq	%rbx, 13824(%rsp)
	movq	%rcx, 13832(%rsp)
	movq	$0, 13744(%rsp)
	movq	$0, 13752(%rsp)
	movq	$0, 13760(%rsp)
	movq	$0, 13768(%rsp)
	movq	$0, 13776(%rsp)
	movq	$0, 13784(%rsp)
	movq	$0, 13792(%rsp)
	movq	$0, 13800(%rsp)
	xorl	%esi, %esi
.L8293:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	13840(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L8292:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	13808(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	13744(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 13744(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L8292
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 13776(%rsp,%rdi,8)
	jle	.L8293
	movq	13752(%rsp), %rbp
	movq	13768(%rsp), %rsi
	salq	$32, %rbp
	salq	$32, %rsi
	addq	13744(%rsp), %rbp
	addq	13760(%rsp), %rsi
	movq	%rbp, 6048(%rsp)
	movq	%rsi, (%r15)
	movq	13800(%rsp), %rcx
	movq	13784(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	13792(%rsp), %rcx
	addq	13776(%rsp), %rax
	testq	%r10, %r10
	js	.L21908
.L8296:
	testq	%r9, %r9
	js	.L21909
.L8302:
	cmpq	$0, (%r15)
	js	.L21910
	orq	%rcx, %rax
.L20018:
	setne	%r9b
	movzbl	%r9b, %r15d
	jmp	.L8198
.L21910:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L20018
.L21909:
	testq	%r11, %r11
	jne	.L8303
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L8304:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L8302
.L8303:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L8304
.L21908:
	testq	%r8, %r8
	jne	.L8297
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L8298:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L8296
.L8297:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L8298
.L8317:
	testq	%r9, %r9
	jne	.L8318
	cmpq	$1, %r8
	je	.L20017
.L8318:
	cmpq	%r8, %r11
	je	.L21911
.L8319:
	leaq	6048(%rsp), %rcx
	leaq	6040(%rsp), %rbx
	leaq	6000(%rsp), %r15
	leaq	5992(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%r15, 16(%rsp)
.L20015:
	movl	$87, %edi
	movl	%r14d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	movl	%eax, %r15d
	jmp	.L8198
.L21911:
	cmpq	%r9, %r10
	jne	.L8319
	testq	%r8, %r8
	jne	.L8320
	testq	%r9, %r9
	je	.L8319
.L8320:
	movq	$1, 6048(%rsp)
.L20016:
	movq	$0, 6040(%rsp)
	jmp	.L8198
.L20017:
	movq	%r11, 6048(%rsp)
	jmp	.L20020
.L8323:
	testq	%r9, %r9
	jne	.L8326
	testq	%r8, %r8
	jle	.L8326
	movq	1360(%rsp), %rsi
	testb	$4, 18(%rsi)
	jne	.L8326
	testb	$4, 18(%r12)
	jne	.L8326
	testq	%r10, %r10
	jne	.L8326
	testq	%r11, %r11
	js	.L8326
	movl	$87, %r9d
	leaq	-1(%r8,%r11), %rdi
	cmpl	$67, %r9d
	cmove	%rdi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 6048(%rsp)
	jmp	.L20016
.L8326:
	leaq	6000(%rsp), %r15
	leaq	5992(%rsp), %rdx
	leaq	6048(%rsp), %rbp
	movq	%r15, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	leaq	6040(%rsp), %rax
	jmp	.L20015
.L8314:
	testq	%r9, %r9
	jne	.L8318
	testq	%r8, %r8
	jle	.L8317
	movq	1360(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L8317
	testb	$4, 18(%r12)
	jne	.L8317
	testq	%r10, %r10
	jne	.L8317
	testq	%r11, %r11
	js	.L8317
	movl	$87, %edx
	leaq	-1(%r8,%r11), %r10
	cmpl	$63, %edx
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 6048(%rsp)
	jmp	.L20016
.L8328:
	testl	%r14d, %r14d
	je	.L8329
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L8334
.L21180:
	cmpq	%r9, %r10
	je	.L21912
.L8333:
	movq	%rax, 6048(%rsp)
	movl	$87, %eax
	cmpl	$78, %eax
	sete	%cl
	movzbl	%cl, %ebx 
	cmpq	%rbx, 6048(%rsp)
	je	.L20017
	movq	%r8, 6048(%rsp)
	movq	%r9, 6040(%rsp)
	jmp	.L8198
.L21912:
	cmpq	%r8, %r11
	jae	.L8333
.L8334:
	movl	$1, %eax
	jmp	.L8333
.L8329:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L8334
	jmp	.L21180
.L8204:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	6048(%rsp), %rbx
	leaq	6040(%rsp), %r9
	andl	$511, %esi
	testl	%r14d, %r14d
	sete	%al
	testq	%r8, %r8
	js	.L21913
	cmpq	$127, %r8
	jle	.L8220
	movq	$0, 6040(%rsp)
.L20006:
	movq	$0, 6048(%rsp)
.L8221:
	cmpl	$64, %esi
	jbe	.L8224
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L20007:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L8219
	cmpl	$63, %esi
	jbe	.L8228
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L20009:
	movq	%rax, (%r9)
.L8219:
	movl	$1, 1368(%rsp)
	jmp	.L8198
.L8228:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L20008:
	movq	%rax, (%rbx)
	jmp	.L8219
.L8224:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L20007
.L8220:
	cmpq	$63, %r8
	jle	.L8222
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 6040(%rsp)
	jmp	.L20006
.L8222:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 6048(%rsp)
	orq	%rdi, %r10
	movq	%r10, 6040(%rsp)
	jmp	.L8221
.L21913:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L8206
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L8207:
	cmpq	$127, %rdx
	jle	.L8208
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L8209:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L8212
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L8219
.L8212:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L8219
	cmpq	$63, %rax
	jle	.L8216
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L20009
.L8216:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L20008
.L8208:
	cmpq	$63, %rdx
	jle	.L8210
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L8209
.L8210:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L8209
.L8206:
	xorl	%edi, %edi
	jmp	.L8207
.L8203:
	negq	%r8
	jmp	.L8204
.L8231:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	6032(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	6024(%rsp), %rbx
	testq	%r8, %r8
	js	.L21914
	cmpq	$127, %r8
	jle	.L8248
	movq	$0, 6024(%rsp)
.L20010:
	movq	$0, 6032(%rsp)
.L8249:
	cmpl	$64, %edi
	jbe	.L8252
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L20011:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L8247
	cmpl	$63, %edi
	jbe	.L8256
.L20013:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L8247:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	6008(%rsp), %rdi
	subq	%r8, %rsi
	leaq	6016(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L8260
	movq	$0, 6008(%rsp)
	movq	$0, 6016(%rsp)
.L8261:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L8264
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L8270:
	movq	6016(%rsp), %rdi
	movq	6008(%rsp), %r11
	orq	6032(%rsp), %rdi
	orq	6024(%rsp), %r11
	movq	%rdi, 6048(%rsp)
	movq	%r11, 6040(%rsp)
	jmp	.L8198
.L8264:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L8270
	cmpq	$63, %rax
	jle	.L8268
	subl	%esi, %r9d
	leal	-64(%r9), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%rdi), %r9
	orq	%rdx, %r9
	movq	%r9, (%rdi)
	jmp	.L8270
.L8268:
	movl	%r9d, %ecx
	movq	$-1, %r10
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%r8), %r10
	orq	%rdx, %r10
	movq	%r10, (%r8)
	jmp	.L8270
.L8260:
	cmpq	$63, %rsi
	jle	.L8262
	leal	-64(%rsi), %ecx
	movq	$0, 6008(%rsp)
	shrq	%cl, %r10
	movq	%r10, 6016(%rsp)
	jmp	.L8261
.L8262:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 6008(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 6016(%rsp)
	jmp	.L8261
.L8256:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L20012:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L8247
.L8252:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L20011
.L8248:
	cmpq	$63, %r8
	jle	.L8250
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 6024(%rsp)
	jmp	.L20010
.L8250:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 6024(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 6032(%rsp)
	jmp	.L8249
.L21914:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L8236
	movq	$0, 6024(%rsp)
	movq	$0, 6032(%rsp)
.L8237:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L8240
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L8247
.L8240:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L8247
	cmpq	$63, %rax
	jle	.L8244
	subl	%esi, %edi
	jmp	.L20013
.L8244:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L20012
.L8236:
	cmpq	$63, %rsi
	jle	.L8238
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 6024(%rsp)
	shrq	%cl, %rax
	movq	%rax, 6032(%rsp)
	jmp	.L8237
.L8238:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 6024(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 6032(%rsp)
	jmp	.L8237
.L8230:
	negq	%r8
	jmp	.L8231
.L8200:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 6048(%rsp)
	jmp	.L20020
.L8201:
	andq	%r8, %r11
	movq	%r11, 6048(%rsp)
.L20021:
	andq	%r9, %r10
	jmp	.L20020
.L8202:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 6048(%rsp)
	jmp	.L20021
.L21903:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1372(%rsp), %eax
	movl	%eax, 1372(%rsp)
	jmp	.L8197
.L21856:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	convert
	movq	%rax, %r12
	jmp	.L8185
.L21855:
	movq	8(%r12), %rsi
	movq	%rsi, 3064(%rsp)
	movl	$88, %esi
	movq	32(%r14), %rbp
	cmpl	$60, %esi
	movq	32(%r12), %r13
	movq	40(%r12), %r15
	movq	40(%r14), %r14
	je	.L8167
	cmpl	$60, %esi
	ja	.L8184
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21004:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3064(%rsp), %rdi
.L20004:
	movq	%rax, %rdx
	call	build_complex
.L20005:
	movq	%rax, %rbx
	jmp	.L8135
.L8184:
	movl	$88, %edi
	cmpl	$61, %edi
	je	.L8168
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3056(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L8178
	cmpb	$10, %al
	je	.L8178
	cmpb	$11, %al
	je	.L8178
	cmpb	$12, %al
	movl	$70, %edi
	je	.L8178
.L8177:
	movq	3056(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L8181
	cmpb	$10, %al
	je	.L8181
	cmpb	$11, %al
	je	.L8181
	cmpb	$12, %al
	movl	$70, %edi
	je	.L8181
.L8180:
	movq	3056(%rsp), %rdx
.L20003:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3064(%rsp), %rdi
	jmp	.L20004
.L8181:
	movl	$62, %edi
	jmp	.L8180
.L8178:
	movl	$62, %edi
	jmp	.L8177
.L8168:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L20003
.L8167:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21004
.L21854:
	movq	32(%r12), %r13
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	movq	%r13, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %r9
	movq	%r9, 18560(%rsp)
	movq	40(%r14), %rsi
	movq	%rsi, 18568(%rsp)
	movq	48(%r14), %r15
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r15, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L8135
	movq	18560(%rsp), %rbx
	movq	18568(%rsp), %r10
	movq	18576(%rsp), %rcx
	movq	%rbx, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r14, %rbx
	movq	%rcx, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L8135
	movq	8(%r12), %rsi
	movq	18560(%rsp), %rdi
	movl	$88, 13872(%rsp)
	movq	18528(%rsp), %r15
	movq	18536(%rsp), %r13
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r11
	movq	18576(%rsp), %r8
	movq	%rsi, 13880(%rsp)
	movq	%rdi, 13912(%rsp)
	leaq	13872(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r15, 13888(%rsp)
	movq	%r13, 13896(%rsp)
	movq	%rdx, 13904(%rsp)
	movq	%r11, 13920(%rsp)
	movq	%r8, 13928(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L8140
	movq	13936(%rsp), %rbx
.L8141:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L8143
	cmpb	$25, %al
	je	.L21917
.L8143:
	movzbl	18(%r12), %r15d
	movzbl	18(%r14), %edx
	shrb	$3, %r15b
	shrb	$3, %dl
	andl	$1, %r15d
	andl	$1, %edx
	orb	%bpl, %r15b
	movzbl	18(%rbx), %ebp
	orb	%dl, %r15b
	salb	$3, %r15b
	andb	$-9, %bpl
	orb	%r15b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %edi
	movzbl	18(%r14), %eax
	movzbl	18(%r12), %r8d
	shrb	$3, %dil
	andb	$-5, %bpl
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%edi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L8135
.L21917:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L8147
	cmpb	$15, %al
	je	.L8147
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L8150:
	cmpl	$128, %esi
	je	.L8152
	cmpl	$64, %esi
	jbe	.L8153
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 40(%rdx)
.L8152:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8156
	cmpb	$6, 16(%rax)
	jne	.L8143
	testb	$2, 62(%rax)
	je	.L8143
.L8156:
	cmpl	$128, %esi
	je	.L8158
	cmpl	$64, %esi
	jbe	.L8159
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20002:
	testl	$1, %eax 
	je	.L8158
	cmpl	$64, %esi
	jbe	.L8161
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L8158:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%cl
	movzbl	%cl, %ebp
	jmp	.L8143
.L8161:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8158
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8158
.L8159:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20002
.L8153:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8152
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L8152
.L8147:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8150
.L8140:
	movq	%r12, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L8141
.L21853:
	movq	8(%r12), %r13
	movl	$1, %r15d
	movl	$0, 1404(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21918
.L7929:
	movl	$88, %eax
	movl	$0, 1376(%rsp)
	movl	$0, 1400(%rsp)
	subl	$59, %eax
	movq	32(%r12), %r11
	movq	40(%r12), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L8070(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L8070:
	.quad	.L8004
	.quad	.L8007
	.quad	.L8013
	.quad	.L8046
	.quad	.L8046
	.quad	.L8046
	.quad	.L8049
	.quad	.L8055
	.quad	.L8055
	.quad	.L8055
	.quad	.L8058
	.quad	.L18929
	.quad	.L8046
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L8060
	.quad	.L8060
	.quad	.L18929
	.quad	.L18929
	.quad	.L7936
	.quad	.L7935
	.quad	.L7963
	.quad	.L7962
	.quad	.L7931
	.quad	.L7932
	.quad	.L7933
	.quad	.L7934
	.text
.L7931:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6112(%rsp)
.L19997:
	movq	%r10, 6104(%rsp)
.L7930:
	movl	1404(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L8071
	movq	6104(%rsp), %rax
	testq	%rax, %rax
	jne	.L8073
	cmpq	$0, 6112(%rsp)
	js	.L8073
.L8072:
	movl	1376(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L8071
	testb	$8, 18(%r12)
	jne	.L8071
	testb	$8, 18(%r14)
	jne	.L8071
	cmpq	$0, size_htab.0(%rip)
	movq	6112(%rsp), %rbx
	je	.L21919
.L8074:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L8078
	cmpb	$25, %al
	je	.L21920
.L8078:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %esi
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%sil, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20005
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L8135
.L21920:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L8082
	cmpb	$15, %al
	je	.L8082
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L8085:
	cmpl	$128, %esi
	je	.L8087
	cmpl	$64, %esi
	jbe	.L8088
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L8087:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8091
	cmpb	$6, 16(%rax)
	jne	.L8078
	testb	$2, 62(%rax)
	je	.L8078
.L8091:
	cmpl	$128, %esi
	je	.L8093
	cmpl	$64, %esi
	jbe	.L8094
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19999:
	testl	$1, %eax 
	je	.L8093
	cmpl	$64, %esi
	jbe	.L8096
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L8093:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L8078
.L8096:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8093
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8093
.L8094:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19999
.L8088:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8087
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L8087
.L8082:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8085
.L21919:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L8074
.L8071:
	movq	6112(%rsp), %rdi
	movq	6104(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r12), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movzbl	18(%r14), %r8d
	movl	$1, %r11d
	movzbl	18(%r12), %r13d
	shrb	$3, %r8b
	shrb	$3, %r13b
	movl	%r8d, %ebx
	andl	%r13d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L8104
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L8107
	movl	1404(%rsp), %eax
	testl	%eax, %eax
	je	.L8106
.L8107:
	movl	1376(%rsp), %r15d
	movl	$1, %eax
	testl	%r15d, %r15d
	cmovne	%eax, %edx
.L8106:
	movl	%edx, %eax
.L20001:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1404(%rsp), %eax
	testl	%eax, %eax
	je	.L8133
	testb	$8, %dl
	jne	.L8133
	movq	6104(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21921
.L8134:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L8133:
	movzbl	18(%rdi), %ebx
	movzbl	18(%r12), %r8d
	movzbl	18(%r14), %r12d
	movl	%ebx, %r11d
	shrb	$2, %r8b
	andb	$-5, %bl
	shrb	$3, %r11b
	shrb	$2, %r12b
	orl	%r11d, %r8d
	orl	%r12d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L8135
.L21921:
	movq	6112(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L8134
	jmp	.L8133
.L8104:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L8110
	movl	1404(%rsp), %eax
	testl	%eax, %eax
	je	.L8109
.L8110:
	movl	1376(%rsp), %eax
	movl	$1, %r10d
	testl	%eax, %eax
	movl	$0, %eax
	cmove	%eax, %r10d
.L8109:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L8112
	cmpb	$25, %al
	je	.L21922
.L8112:
	testl	%r10d, %r10d
	je	.L8108
	movl	1400(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L8108:
	movl	%ebp, %eax
	jmp	.L20001
.L21922:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L8116
	cmpb	$15, %al
	je	.L8116
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L8119:
	cmpl	$128, %esi
	je	.L8121
	cmpl	$64, %esi
	jbe	.L8122
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L8121:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L8125
	cmpb	$6, 16(%rax)
	jne	.L8112
	testb	$2, 62(%rax)
	je	.L8112
.L8125:
	cmpl	$128, %esi
	je	.L8127
	cmpl	$64, %esi
	jbe	.L8128
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L20000:
	testl	$1, %eax 
	je	.L8127
	cmpl	$64, %esi
	jbe	.L8130
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L8127:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L8112
.L8130:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L8127
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L8127
.L8128:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L20000
.L8122:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L8121
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L8121
.L8116:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L8119
.L8073:
	cmpq	$-1, %rax
	jne	.L8071
	cmpq	$0, 6112(%rsp)
	jns	.L8071
	jmp	.L8072
.L8004:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 6112(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 6104(%rsp)
	andq	%r10, %r9
.L19996:
	shrq	$63, %r9
	movl	%r9d, 1376(%rsp)
	jmp	.L7930
.L8007:
	testq	%r8, %r8
	jne	.L8008
	movq	%r9, %rax
	movq	$0, 6112(%rsp)
	negq	%rax
.L19991:
	movq	%rax, 6104(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	6112(%rsp), %rdx
	addq	6104(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rbx
	movq	%rdx, 6112(%rsp)
	cmovb	%rbx, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 6104(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L19996
.L8008:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6112(%rsp)
	notq	%rax
	jmp	.L19991
.L8013:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 14048(%rsp)
	movq	%rcx, 14056(%rsp)
	movq	%r8, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %ebp
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 14024(%rsp)
	movq	%rbx, 14064(%rsp)
	movq	%rdx, 14072(%rsp)
	movq	%rbp, 14016(%rsp)
	movq	%rdi, 14032(%rsp)
	movq	%rcx, 14040(%rsp)
	movq	$0, 13952(%rsp)
	movq	$0, 13960(%rsp)
	movq	$0, 13968(%rsp)
	movq	$0, 13976(%rsp)
	movq	$0, 13984(%rsp)
	movq	$0, 13992(%rsp)
	movq	$0, 14000(%rsp)
	movq	$0, 14008(%rsp)
	xorl	%esi, %esi
.L8025:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	14048(%rsp,%rbx,8), %rbp
	xorl	%ebx, %ebx
.L8024:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	14016(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	13952(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 13952(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L8024
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 13984(%rsp,%rbp,8)
	jle	.L8025
	movq	13960(%rsp), %rdx
	movq	13976(%rsp), %rsi
	movq	13992(%rsp), %rax
	movq	14008(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	13952(%rsp), %rdx
	addq	13968(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	13984(%rsp), %rax
	addq	14000(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 6112(%rsp)
	movq	%rsi, 6104(%rsp)
	js	.L21923
.L8028:
	testq	%r9, %r9
	js	.L21924
.L8034:
	cmpq	$0, 6104(%rsp)
	js	.L21925
	orq	%rcx, %rax
.L21003:
	setne	%r9b
	movzbl	%r9b, %eax
.L19995:
	movl	%eax, 1376(%rsp)
	jmp	.L7930
.L21925:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L21003
.L21924:
	testq	%r11, %r11
	jne	.L8035
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L8036:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L8034
.L8035:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L8036
.L21923:
	testq	%r8, %r8
	jne	.L8029
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L8030:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L8028
.L8029:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L8030
.L8049:
	testq	%r9, %r9
	jne	.L8050
	cmpq	$1, %r8
	je	.L19994
.L8050:
	cmpq	%r8, %r11
	je	.L21926
.L8051:
	leaq	6112(%rsp), %rbx
	leaq	6104(%rsp), %rdi
	leaq	6064(%rsp), %rcx
	leaq	6056(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L19992:
	movl	$88, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L19995
.L21926:
	cmpq	%r9, %r10
	jne	.L8051
	testq	%r8, %r8
	jne	.L8052
	testq	%r9, %r9
	je	.L8051
.L8052:
	movq	$1, 6112(%rsp)
.L19993:
	movq	$0, 6104(%rsp)
	jmp	.L7930
.L19994:
	movq	%r11, 6112(%rsp)
	jmp	.L19997
.L8055:
	testq	%r9, %r9
	jne	.L8058
	testq	%r8, %r8
	jle	.L8058
	testb	$4, 18(%r12)
	jne	.L8058
	testb	$4, 18(%r14)
	jne	.L8058
	testq	%r10, %r10
	jne	.L8058
	testq	%r11, %r11
	js	.L8058
	movl	$88, %edx
	leaq	-1(%r8,%r11), %rbp
	cmpl	$67, %edx
	cmove	%rbp, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 6112(%rsp)
	jmp	.L19993
.L8058:
	leaq	6064(%rsp), %rdi
	leaq	6056(%rsp), %rcx
	leaq	6112(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	6104(%rsp), %rax
	jmp	.L19992
.L8046:
	testq	%r9, %r9
	jne	.L8050
	testq	%r8, %r8
	jle	.L8049
	testb	$4, 18(%r12)
	jne	.L8049
	testb	$4, 18(%r14)
	jne	.L8049
	testq	%r10, %r10
	jne	.L8049
	testq	%r11, %r11
	js	.L8049
	movl	$88, %eax
	leaq	-1(%r8,%r11), %r10
	cmpl	$63, %eax
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 6112(%rsp)
	jmp	.L19993
.L8060:
	testl	%r15d, %r15d
	je	.L8061
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L8066
.L21179:
	cmpq	%r9, %r10
	je	.L21927
.L8065:
	movq	%rax, 6112(%rsp)
	xorl	%ebx, %ebx
	movl	$88, %eax
	cmpl	$78, %eax
	sete	%bl
	cmpq	%rbx, 6112(%rsp)
	je	.L19994
	movq	%r8, 6112(%rsp)
	movq	%r9, 6104(%rsp)
	jmp	.L7930
.L21927:
	cmpq	%r8, %r11
	jae	.L8065
.L8066:
	movl	$1, %eax
	jmp	.L8065
.L8061:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L8066
	jmp	.L21179
.L7936:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	6112(%rsp), %rbx
	leaq	6104(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21928
	cmpq	$127, %r8
	jle	.L7952
	movq	$0, 6104(%rsp)
.L19983:
	movq	$0, 6112(%rsp)
.L7953:
	cmpl	$64, %esi
	jbe	.L7956
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L19984:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L7951
	cmpl	$63, %esi
	jbe	.L7960
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L19986:
	movq	%rax, (%r9)
.L7951:
	movl	$1, 1400(%rsp)
	jmp	.L7930
.L7960:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L19985:
	movq	%rax, (%rbx)
	jmp	.L7951
.L7956:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L19984
.L7952:
	cmpq	$63, %r8
	jle	.L7954
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 6104(%rsp)
	jmp	.L19983
.L7954:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 6112(%rsp)
	orq	%rdi, %r10
	movq	%r10, 6104(%rsp)
	jmp	.L7953
.L21928:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L7938
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L7939:
	cmpq	$127, %rdx
	jle	.L7940
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L7941:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L7944
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L7951
.L7944:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L7951
	cmpq	$63, %rax
	jle	.L7948
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L19986
.L7948:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L19985
.L7940:
	cmpq	$63, %rdx
	jle	.L7942
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L7941
.L7942:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L7941
.L7938:
	xorl	%edi, %edi
	jmp	.L7939
.L7935:
	negq	%r8
	jmp	.L7936
.L7963:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	6096(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	6088(%rsp), %rbx
	testq	%r8, %r8
	js	.L21929
	cmpq	$127, %r8
	jle	.L7980
	movq	$0, 6088(%rsp)
.L19987:
	movq	$0, 6096(%rsp)
.L7981:
	cmpl	$64, %edi
	jbe	.L7984
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L19988:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L7979
	cmpl	$63, %edi
	jbe	.L7988
.L19990:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L7979:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	6072(%rsp), %rdi
	subq	%r8, %rsi
	leaq	6080(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L7992
	movq	$0, 6072(%rsp)
	movq	$0, 6080(%rsp)
.L7993:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L7996
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L8002:
	movq	6080(%rsp), %rdi
	movq	6072(%rsp), %r10
	orq	6096(%rsp), %rdi
	orq	6088(%rsp), %r10
	movq	%rdi, 6112(%rsp)
	movq	%r10, 6104(%rsp)
	jmp	.L7930
.L7996:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L8002
	cmpq	$63, %rax
	jle	.L8000
	subl	%esi, %r9d
	leal	-64(%r9), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%rdi), %r9
	orq	%rdx, %r9
	movq	%r9, (%rdi)
	jmp	.L8002
.L8000:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L8002
.L7992:
	cmpq	$63, %rsi
	jle	.L7994
	leal	-64(%rsi), %ecx
	movq	$0, 6072(%rsp)
	shrq	%cl, %r10
	movq	%r10, 6080(%rsp)
	jmp	.L7993
.L7994:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 6072(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 6080(%rsp)
	jmp	.L7993
.L7988:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L19989:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L7979
.L7984:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L19988
.L7980:
	cmpq	$63, %r8
	jle	.L7982
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 6088(%rsp)
	jmp	.L19987
.L7982:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 6088(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 6096(%rsp)
	jmp	.L7981
.L21929:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L7968
	movq	$0, 6088(%rsp)
	movq	$0, 6096(%rsp)
.L7969:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L7972
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L7979
.L7972:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L7979
	cmpq	$63, %rax
	jle	.L7976
	subl	%esi, %edi
	jmp	.L19990
.L7976:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L19989
.L7968:
	cmpq	$63, %rsi
	jle	.L7970
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 6088(%rsp)
	shrq	%cl, %rax
	movq	%rax, 6096(%rsp)
	jmp	.L7969
.L7970:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 6088(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 6096(%rsp)
	jmp	.L7969
.L7962:
	negq	%r8
	jmp	.L7963
.L7932:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 6112(%rsp)
	jmp	.L19997
.L7933:
	andq	%r8, %r11
	movq	%r11, 6112(%rsp)
.L19998:
	andq	%r9, %r10
	jmp	.L19997
.L7934:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 6112(%rsp)
	jmp	.L19998
.L21918:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1404(%rsp), %eax
	movl	%eax, 1404(%rsp)
	jmp	.L7929
.L21852:
	movq	8(%r14), %r12
	movq	1416(%rsp), %rcx
	movl	$83, %eax
	cmpl	$60, %eax
	movq	%r12, 3080(%rsp)
	movq	32(%rcx), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rcx), %r14
	je	.L7899
	cmpl	$60, %eax
	ja	.L7916
	cmpl	$59, %eax
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21002:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3080(%rsp), %rdi
.L19981:
	movq	%rax, %rdx
	call	build_complex
.L19982:
	movq	%rax, %r12
	jmp	.L7867
.L7916:
	movl	$83, %edx
	cmpl	$61, %edx
	je	.L7900
	cmpl	$70, %edx
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3072(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L7910
	cmpb	$10, %al
	je	.L7910
	cmpb	$11, %al
	je	.L7910
	cmpb	$12, %al
	movl	$70, %edi
	je	.L7910
.L7909:
	movq	3072(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbp
	movq	%rax, %rsi
	movzbl	16(%rbp), %eax
	cmpb	$6, %al
	je	.L7913
	cmpb	$10, %al
	je	.L7913
	cmpb	$11, %al
	je	.L7913
	cmpb	$12, %al
	movl	$70, %edi
	je	.L7913
.L7912:
	movq	3072(%rsp), %rdx
.L19980:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3080(%rsp), %rdi
	jmp	.L19981
.L7913:
	movl	$62, %edi
	jmp	.L7912
.L7910:
	movl	$62, %edi
	jmp	.L7909
.L7900:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L19980
.L7899:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21002
.L21851:
	movq	32(%r14), %rsi
	movq	1416(%rsp), %rcx
	xorl	%ebx, %ebx
	movq	%rsi, 18528(%rsp)
	movq	40(%r14), %r15
	movq	%r15, 18536(%rsp)
	movq	48(%r14), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%rcx), %rbp
	movq	%rbp, 18560(%rsp)
	movq	40(%rcx), %r12
	movq	%r12, 18568(%rsp)
	movq	%r14, %r12
	movq	48(%rcx), %rdx
	movq	%rsi, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%rdx, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L7867
	movq	18560(%rsp), %r8
	movq	18568(%rsp), %r10
	movq	18576(%rsp), %r11
	movq	%r8, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	call	target_isnan
	movq	1416(%rsp), %r12
	testl	%eax, %eax
	jne	.L7867
	movq	18536(%rsp), %rsi
	movq	18560(%rsp), %rdi
	movq	8(%r14), %rcx
	movq	18528(%rsp), %rdx
	movl	$83, 14080(%rsp)
	movq	18544(%rsp), %r15
	movq	18568(%rsp), %r9
	movq	18576(%rsp), %r13
	movq	%rsi, 14104(%rsp)
	movq	%rdi, 14120(%rsp)
	leaq	14080(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%rcx, 14088(%rsp)
	movq	%rdx, 14096(%rsp)
	movq	%r15, 14112(%rsp)
	movq	%r9, 14128(%rsp)
	movq	%r13, 14136(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L7872
	movq	14144(%rsp), %r12
.L7873:
	movzbl	16(%r12), %eax
	movq	%r12, %rdx
	cmpb	$26, %al
	je	.L7875
	cmpb	$25, %al
	je	.L21932
.L7875:
	movq	1416(%rsp), %rdi
	movzbl	18(%r14), %esi
	movzbl	18(%rdi), %edx
	shrb	$3, %sil
	andl	$1, %esi
	orb	%bl, %sil
	movzbl	18(%r12), %ebx
	shrb	$3, %dl
	andl	$1, %edx
	orb	%dl, %sil
	salb	$3, %sil
	andb	$-9, %bl
	orb	%sil, %bl
	movb	%bl, 18(%r12)
	movl	%ebx, %r15d
	movzbl	18(%rdi), %eax
	movzbl	18(%r14), %r9d
	shrb	$3, %r15b
	andb	$-5, %bl
	shrb	$2, %al
	shrb	$2, %r9b
	orl	%r15d, %r9d
	orl	%eax, %r9d
	andb	$1, %r9b
	salb	$2, %r9b
	orb	%r9b, %bl
	movb	%bl, 18(%r12)
	jmp	.L7867
.L21932:
	movq	8(%r12), %rcx
	movq	32(%r12), %rdi
	movq	40(%r12), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L7879
	cmpb	$15, %al
	je	.L7879
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L7882:
	cmpl	$128, %esi
	je	.L7884
	cmpl	$64, %esi
	jbe	.L7885
	leal	-64(%rsi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 40(%rdx)
.L7884:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7888
	cmpb	$6, 16(%rax)
	jne	.L7875
	testb	$2, 62(%rax)
	je	.L7875
.L7888:
	cmpl	$128, %esi
	je	.L7890
	cmpl	$64, %esi
	jbe	.L7891
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19979:
	testl	$1, %eax 
	je	.L7890
	cmpl	$64, %esi
	jbe	.L7893
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	orq	%r10, 40(%rdx)
.L7890:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%r8b
	movzbl	%r8b, %ebx
	jmp	.L7875
.L7893:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7890
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7890
.L7891:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19979
.L7885:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7884
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L7884
.L7879:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7882
.L7872:
	movq	%r14, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %r12
	jmp	.L7873
.L21850:
	movq	8(%r14), %r12
	movl	$1, %r13d
	movl	$0, 1412(%rsp)
	movzbl	17(%r12), %esi
	shrb	$5, %sil
	andl	%esi, %r13d
	cmpb	$6, 16(%r12)
	je	.L21933
.L7661:
	movq	1416(%rsp), %rcx
	movl	$83, %eax
	xorl	%r15d, %r15d
	subl	$59, %eax
	movl	$0, 1408(%rsp)
	movq	40(%r14), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r11
	movq	32(%rcx), %r8
	movq	40(%rcx), %r9
	ja	.L18929
	mov	%eax, %edi
	jmp	*.L7802(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L7802:
	.quad	.L7736
	.quad	.L7739
	.quad	.L7745
	.quad	.L7778
	.quad	.L7778
	.quad	.L7778
	.quad	.L7781
	.quad	.L7787
	.quad	.L7787
	.quad	.L7787
	.quad	.L7790
	.quad	.L18929
	.quad	.L7778
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L7792
	.quad	.L7792
	.quad	.L18929
	.quad	.L18929
	.quad	.L7668
	.quad	.L7667
	.quad	.L7695
	.quad	.L7694
	.quad	.L7663
	.quad	.L7664
	.quad	.L7665
	.quad	.L7666
	.text
.L7663:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6176(%rsp)
.L19974:
	movq	%r10, 6168(%rsp)
.L7662:
	movl	1412(%rsp), %eax
	testl	%eax, %eax
	je	.L7803
	movq	6168(%rsp), %rax
	testq	%rax, %rax
	jne	.L7805
	cmpq	$0, 6176(%rsp)
	js	.L7805
.L7804:
	testl	%r15d, %r15d
	jne	.L7803
	testb	$8, 18(%r14)
	jne	.L7803
	movq	1416(%rsp), %r8
	testb	$8, 18(%r8)
	jne	.L7803
	cmpq	$0, size_htab.0(%rip)
	movq	6176(%rsp), %rbx
	je	.L21934
.L7806:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r12, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L7810
	cmpb	$25, %al
	je	.L21935
.L7810:
	movzbl	18(%r11), %r15d
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r15b
	orb	%bl, %r15b
	movb	%r15b, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19982
	movq	new_const.1(%rip), %r12
	movl	$25, %edi
	movq	%r12, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L7867
.L21935:
	movzbl	16(%r12), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L7814
	cmpb	$15, %al
	je	.L7814
	movzwl	60(%r12), %esi
	andl	$511, %esi
.L7817:
	cmpl	$128, %esi
	je	.L7819
	cmpl	$64, %esi
	jbe	.L7820
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L7819:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7823
	cmpb	$6, 16(%rax)
	jne	.L7810
	testb	$2, 62(%rax)
	je	.L7810
.L7823:
	cmpl	$128, %esi
	je	.L7825
	cmpl	$64, %esi
	jbe	.L7826
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19976:
	testl	$1, %eax 
	je	.L7825
	cmpl	$64, %esi
	jbe	.L7828
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L7825:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L7810
.L7828:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7825
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7825
.L7826:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19976
.L7820:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7819
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L7819
.L7814:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7817
.L21934:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L7806
.L7803:
	movq	6176(%rsp), %rdi
	movq	6168(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%r14), %r12
	movq	%rax, %rdi
	movq	%r12, 8(%rax)
	movq	1416(%rsp), %rcx
	movzbl	18(%r14), %r8d
	movzbl	18(%rcx), %edx
	shrb	$3, %r8b
	andl	%r8d, %r11d
	shrb	$3, %dl
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L7836
	xorl	%edx, %edx
	testl	%r13d, %r13d
	je	.L7839
	movl	1412(%rsp), %esi
	testl	%esi, %esi
	je	.L7838
.L7839:
	testl	%r15d, %r15d
	movl	$1, %eax
	cmovne	%eax, %edx
.L7838:
	movl	%edx, %eax
.L19978:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1412(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L7865
	testb	$8, %dl
	jne	.L7865
	movq	6168(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L21936
.L7866:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L7865:
	movq	1416(%rsp), %r13
	movzbl	18(%rdi), %r10d
	movq	%rdi, %r12
	movzbl	18(%r14), %r8d
	movzbl	18(%r13), %r14d
	movl	%r10d, %r9d
	andb	$-5, %r10b
	shrb	$3, %r9b
	shrb	$2, %r8b
	orl	%r9d, %r8d
	shrb	$2, %r14b
	orl	%r14d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %r10b
	movb	%r10b, 18(%rdi)
	jmp	.L7867
.L21936:
	movq	6176(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L7866
	jmp	.L7865
.L7836:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r13d, %r13d
	je	.L7842
	movl	1412(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L7841
.L7842:
	movl	$1, %r10d
	testl	%r15d, %r15d
	movl	$0, %r9d
	cmove	%r9d, %r10d
.L7841:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L7844
	cmpb	$25, %al
	je	.L21937
.L7844:
	testl	%r10d, %r10d
	je	.L7840
	movl	1408(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L7840:
	movl	%ebp, %eax
	jmp	.L19978
.L21937:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L7848
	cmpb	$15, %al
	je	.L7848
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L7851:
	cmpl	$128, %esi
	je	.L7853
	cmpl	$64, %esi
	jbe	.L7854
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L7853:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7857
	cmpb	$6, 16(%rax)
	jne	.L7844
	testb	$2, 62(%rax)
	je	.L7844
.L7857:
	cmpl	$128, %esi
	je	.L7859
	cmpl	$64, %esi
	jbe	.L7860
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19977:
	testl	$1, %eax 
	je	.L7859
	cmpl	$64, %esi
	jbe	.L7862
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L7859:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L7844
.L7862:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7859
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7859
.L7860:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19977
.L7854:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7853
	movq	$-1, %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 32(%rdx)
	jmp	.L7853
.L7848:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7851
.L7805:
	cmpq	$-1, %rax
	jne	.L7803
	cmpq	$0, 6176(%rsp)
	jns	.L7803
	jmp	.L7804
.L7736:
	leaq	(%r9,%r10), %r15
	leaq	(%r8,%r11), %rdi
	cmpq	%r11, %rdi
	leaq	1(%r15), %rsi
	movq	%rdi, 6176(%rsp)
	cmovb	%rsi, %r15
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r15, %r10 
	movq	%r15, 6168(%rsp)
	andq	%r10, %r9
.L19973:
	movq	%r9, %r15
	shrq	$63, %r15
	jmp	.L7662
.L7739:
	testq	%r8, %r8
	jne	.L7740
	movq	%r9, %rax
	movq	$0, 6176(%rsp)
	negq	%rax
.L19968:
	movq	%rax, 6168(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	6176(%rsp), %rdx
	addq	6168(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rax
	movq	%rdx, 6176(%rsp)
	cmovb	%rax, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 6168(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L19973
.L7740:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6176(%rsp)
	notq	%rax
	jmp	.L19968
.L7745:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rdx
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rbp
	movq	%rbx, 14256(%rsp)
	movq	%rcx, 14264(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %edx
	shrq	$32, %rbp
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 14224(%rsp)
	leaq	6168(%rsp), %r15
	movq	%rdx, 14272(%rsp)
	movq	%rbp, 14280(%rsp)
	movq	%rdi, 14232(%rsp)
	movq	%rbx, 14240(%rsp)
	movq	%rcx, 14248(%rsp)
	movq	$0, 14160(%rsp)
	movq	$0, 14168(%rsp)
	movq	$0, 14176(%rsp)
	movq	$0, 14184(%rsp)
	movq	$0, 14192(%rsp)
	movq	$0, 14200(%rsp)
	movq	$0, 14208(%rsp)
	movq	$0, 14216(%rsp)
	xorl	%esi, %esi
.L7757:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	14256(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L7756:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	14224(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	14160(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 14160(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L7756
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 14192(%rsp,%rdi,8)
	jle	.L7757
	movq	14168(%rsp), %rbp
	movq	14184(%rsp), %rsi
	salq	$32, %rbp
	salq	$32, %rsi
	addq	14160(%rsp), %rbp
	addq	14176(%rsp), %rsi
	movq	%rbp, 6176(%rsp)
	movq	%rsi, (%r15)
	movq	14216(%rsp), %rcx
	movq	14200(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	14208(%rsp), %rcx
	addq	14192(%rsp), %rax
	testq	%r10, %r10
	js	.L21938
.L7760:
	testq	%r9, %r9
	js	.L21939
.L7766:
	cmpq	$0, (%r15)
	js	.L21940
	orq	%rcx, %rax
.L19972:
	setne	%r11b
	movzbl	%r11b, %r15d
	jmp	.L7662
.L21940:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L19972
.L21939:
	testq	%r11, %r11
	jne	.L7767
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L7768:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L7766
.L7767:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L7768
.L21938:
	testq	%r8, %r8
	jne	.L7761
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L7762:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L7760
.L7761:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L7762
.L7781:
	testq	%r9, %r9
	jne	.L7782
	cmpq	$1, %r8
	je	.L19971
.L7782:
	cmpq	%r8, %r11
	je	.L21941
.L7783:
	leaq	6176(%rsp), %rbx
	leaq	6168(%rsp), %rdx
	leaq	6128(%rsp), %r15
	leaq	6120(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r15, 16(%rsp)
.L19969:
	movl	$83, %edi
	movl	%r13d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	movl	%eax, %r15d
	jmp	.L7662
.L21941:
	cmpq	%r9, %r10
	jne	.L7783
	testq	%r8, %r8
	jne	.L7784
	testq	%r9, %r9
	je	.L7783
.L7784:
	movq	$1, 6176(%rsp)
.L19970:
	movq	$0, 6168(%rsp)
	jmp	.L7662
.L19971:
	movq	%r11, 6176(%rsp)
	jmp	.L19974
.L7787:
	testq	%r9, %r9
	jne	.L7790
	testq	%r8, %r8
	jle	.L7790
	testb	$4, 18(%r14)
	jne	.L7790
	movq	1416(%rsp), %rcx
	testb	$4, 18(%rcx)
	jne	.L7790
	testq	%r10, %r10
	jne	.L7790
	testq	%r11, %r11
	js	.L7790
	movl	$83, %esi
	leaq	-1(%r8,%r11), %rdi
	cmpl	$67, %esi
	cmove	%rdi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 6176(%rsp)
	jmp	.L19970
.L7790:
	leaq	6128(%rsp), %rdx
	leaq	6120(%rsp), %r15
	leaq	6176(%rsp), %rbp
	movq	%rdx, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%rbp, 16(%rsp)
	leaq	6168(%rsp), %rax
	jmp	.L19969
.L7778:
	testq	%r9, %r9
	jne	.L7782
	testq	%r8, %r8
	jle	.L7781
	testb	$4, 18(%r14)
	jne	.L7781
	movq	1416(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L7781
	testq	%r10, %r10
	jne	.L7781
	testq	%r11, %r11
	js	.L7781
	movl	$83, %r9d
	leaq	-1(%r8,%r11), %r10
	cmpl	$63, %r9d
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 6176(%rsp)
	jmp	.L19970
.L7792:
	testl	%r13d, %r13d
	je	.L7793
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L7798
.L21178:
	cmpq	%r9, %r10
	je	.L21942
.L7797:
	movq	%rax, 6176(%rsp)
	movl	$83, %eax
	cmpl	$78, %eax
	sete	%cl
	movzbl	%cl, %ebx 
	cmpq	%rbx, 6176(%rsp)
	je	.L19971
	movq	%r8, 6176(%rsp)
	movq	%r9, 6168(%rsp)
	jmp	.L7662
.L21942:
	cmpq	%r8, %r11
	jae	.L7797
.L7798:
	movl	$1, %eax
	jmp	.L7797
.L7793:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L7798
	jmp	.L21178
.L7668:
	movzwl	60(%r12), %esi
	xorl	%eax, %eax
	leaq	6176(%rsp), %rbx
	leaq	6168(%rsp), %r9
	andl	$511, %esi
	testl	%r13d, %r13d
	sete	%al
	testq	%r8, %r8
	js	.L21943
	cmpq	$127, %r8
	jle	.L7684
	movq	$0, 6168(%rsp)
.L19960:
	movq	$0, 6176(%rsp)
.L7685:
	cmpl	$64, %esi
	jbe	.L7688
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L19961:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L7683
	cmpl	$63, %esi
	jbe	.L7692
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L19963:
	movq	%rax, (%r9)
.L7683:
	movl	$1, 1408(%rsp)
	jmp	.L7662
.L7692:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L19962:
	movq	%rax, (%rbx)
	jmp	.L7683
.L7688:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L19961
.L7684:
	cmpq	$63, %r8
	jle	.L7686
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 6168(%rsp)
	jmp	.L19960
.L7686:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%r11, %rdi
	subl	%r8d, %eax
	salq	%cl, %r10
	movl	%eax, %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rcx
	shrq	$1, %rcx
	orq	%rcx, %r10
	movl	%r8d, %ecx
	salq	%cl, %r11
	movq	%r10, 6168(%rsp)
	movq	%r11, 6176(%rsp)
	jmp	.L7685
.L21943:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L7670
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L7671:
	cmpq	$127, %rdx
	jle	.L7672
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L7673:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L7676
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L7683
.L7676:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L7683
	cmpq	$63, %rax
	jle	.L7680
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L19963
.L7680:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L19962
.L7672:
	cmpq	$63, %rdx
	jle	.L7674
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L7673
.L7674:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rbp
	orq	%rbp, %r11
	movq	%r11, (%rbx)
	jmp	.L7673
.L7670:
	xorl	%edi, %edi
	jmp	.L7671
.L7667:
	negq	%r8
	jmp	.L7668
.L7695:
	movzwl	60(%r12), %r9d
	movq	%r8, %rax
	leaq	6160(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	6152(%rsp), %rbx
	testq	%r8, %r8
	js	.L21944
	cmpq	$127, %r8
	jle	.L7712
	movq	$0, 6152(%rsp)
.L19964:
	movq	$0, 6160(%rsp)
.L7713:
	cmpl	$64, %edi
	jbe	.L7716
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L19965:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L7711
	cmpl	$63, %edi
	jbe	.L7720
.L19967:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L7711:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	6136(%rsp), %rdi
	subq	%r8, %rsi
	leaq	6144(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L7724
	movq	$0, 6136(%rsp)
	movq	$0, 6144(%rsp)
.L7725:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L7728
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L7734:
	movq	6144(%rsp), %r8
	movq	6136(%rsp), %r9
	orq	6160(%rsp), %r8
	orq	6152(%rsp), %r9
	movq	%r8, 6176(%rsp)
	movq	%r9, 6168(%rsp)
	jmp	.L7662
.L7728:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L7734
	cmpq	$63, %rax
	jle	.L7732
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L7734
.L7732:
	movl	%r9d, %ecx
	movq	$-1, %r10
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%r8), %r10
	orq	%rdx, %r10
	movq	%r10, (%r8)
	jmp	.L7734
.L7724:
	cmpq	$63, %rsi
	jle	.L7726
	leal	-64(%rsi), %ecx
	movq	$0, 6136(%rsp)
	shrq	%cl, %r10
	movq	%r10, 6144(%rsp)
	jmp	.L7725
.L7726:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 6136(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 6144(%rsp)
	jmp	.L7725
.L7720:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L19966:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L7711
.L7716:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L19965
.L7712:
	cmpq	$63, %r8
	jle	.L7714
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 6152(%rsp)
	jmp	.L19964
.L7714:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 6152(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 6160(%rsp)
	jmp	.L7713
.L21944:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L7700
	movq	$0, 6152(%rsp)
	movq	$0, 6160(%rsp)
.L7701:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L7704
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L7711
.L7704:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L7711
	cmpq	$63, %rax
	jle	.L7708
	subl	%esi, %edi
	jmp	.L19967
.L7708:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L19966
.L7700:
	cmpq	$63, %rsi
	jle	.L7702
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 6152(%rsp)
	shrq	%cl, %rax
	movq	%rax, 6160(%rsp)
	jmp	.L7701
.L7702:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 6152(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 6160(%rsp)
	jmp	.L7701
.L7694:
	negq	%r8
	jmp	.L7695
.L7664:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 6176(%rsp)
	jmp	.L19974
.L7665:
	andq	%r8, %r11
	movq	%r11, 6176(%rsp)
.L19975:
	andq	%r9, %r10
	jmp	.L19974
.L7666:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 6176(%rsp)
	jmp	.L19975
.L21933:
	testb	$2, 62(%r12)
	movl	$1, %eax
	cmove	1412(%rsp), %eax
	movl	%eax, 1412(%rsp)
	jmp	.L7661
.L21849:
	movq	new_const.1(%rip), %rdi
	movq	%rdi, 1416(%rsp)
	movq	%rdi, (%rax)
	movl	$25, %edi
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L7647
.L21848:
	movzbl	16(%rbp), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L7629
	cmpb	$15, %al
	je	.L7629
	movzwl	60(%rbp), %esi
	andl	$511, %esi
.L7632:
	cmpl	$128, %esi
	je	.L7634
	cmpl	$64, %esi
	jbe	.L7635
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L7634:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7638
	cmpb	$6, 16(%rax)
	jne	.L7625
	testb	$2, 62(%rax)
	je	.L7625
.L7638:
	cmpl	$128, %esi
	je	.L7640
	cmpl	$64, %esi
	jbe	.L7641
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19959:
	testl	$1, %eax 
	je	.L7640
	cmpl	$64, %esi
	jbe	.L7643
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L7640:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r12
	orq	%r8, %r12
	orq	%r9, %r12
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L7625
.L7643:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7640
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7640
.L7641:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19959
.L7635:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7634
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L7634
.L7629:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7632
.L21847:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L7621
.L21846:
	movq	8(%r12), %r14
	movq	1432(%rsp), %rsi
	movl	$82, %eax
	cmpl	$60, %eax
	movq	%r14, 3096(%rsp)
	movq	40(%rsi), %r14
	movq	32(%rsi), %rbp
	movq	32(%r12), %r13
	movq	40(%r12), %r15
	je	.L7603
	cmpl	$60, %eax
	ja	.L7620
	cmpl	$59, %eax
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21001:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3096(%rsp), %rdi
.L19957:
	movq	%rax, %rdx
	call	build_complex
.L19958:
	movq	%rax, %r14
	jmp	.L7571
.L7620:
	movl	$82, %edx
	cmpl	$61, %edx
	je	.L7604
	cmpl	$70, %edx
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3088(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L7614
	cmpb	$10, %al
	je	.L7614
	cmpb	$11, %al
	je	.L7614
	cmpb	$12, %al
	movl	$70, %edi
	je	.L7614
.L7613:
	movq	3088(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r15
	movq	%rax, %rsi
	movzbl	16(%r15), %eax
	cmpb	$6, %al
	je	.L7617
	cmpb	$10, %al
	je	.L7617
	cmpb	$11, %al
	je	.L7617
	cmpb	$12, %al
	movl	$70, %edi
	je	.L7617
.L7616:
	movq	3088(%rsp), %rdx
.L19956:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3096(%rsp), %rdi
	jmp	.L19957
.L7617:
	movl	$62, %edi
	jmp	.L7616
.L7614:
	movl	$62, %edi
	jmp	.L7613
.L7604:
	movq	%r13, %rsi
	movl	$61, %edi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r13
	call	const_binop
	movq	%r13, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L19956
.L7603:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21001
.L21845:
	movq	32(%r12), %r14
	movq	1432(%rsp), %rsi
	xorl	%ebx, %ebx
	movq	%r14, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %r13
	movq	%r13, 18544(%rsp)
	movq	32(%rsi), %r9
	movq	%r9, 18560(%rsp)
	movq	40(%rsi), %rdi
	movq	%rdi, 18568(%rsp)
	movq	48(%rsi), %r15
	movq	%r13, 16(%rsp)
	movq	%r14, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r12, %r14
	movq	%r15, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L7571
	movq	18560(%rsp), %r11
	movq	18568(%rsp), %rbp
	movq	18576(%rsp), %rcx
	movq	%r11, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rcx, 16(%rsp)
	call	target_isnan
	movq	1432(%rsp), %r14
	testl	%eax, %eax
	jne	.L7571
	movq	8(%r12), %rsi
	movq	18528(%rsp), %r15
	movl	$const_binop_1, %edi
	movq	18536(%rsp), %r14
	movq	18544(%rsp), %rdx
	movl	$82, 14288(%rsp)
	movq	18560(%rsp), %r13
	movq	18568(%rsp), %r8
	movq	18576(%rsp), %r10
	movq	%rsi, 14296(%rsp)
	movq	%r15, 14304(%rsp)
	leaq	14288(%rsp), %rsi
	movq	%r14, 14312(%rsp)
	movq	%rdx, 14320(%rsp)
	movq	%r13, 14328(%rsp)
	movq	%r8, 14336(%rsp)
	movq	%r10, 14344(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L7576
	movq	14352(%rsp), %r14
.L7577:
	movzbl	16(%r14), %eax
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L7579
	cmpb	$25, %al
	je	.L21947
.L7579:
	movzbl	18(%r12), %r13d
	movq	1432(%rsp), %r8
	movzbl	18(%r8), %edx
	shrb	$3, %r13b
	andl	$1, %r13d
	orb	%bl, %r13b
	movzbl	18(%r14), %ebx
	shrb	$3, %dl
	andl	$1, %edx
	orb	%dl, %r13b
	salb	$3, %r13b
	andb	$-9, %bl
	orb	%r13b, %bl
	movb	%bl, 18(%r14)
	movl	%ebx, %eax
	movzbl	18(%r12), %r10d
	movzbl	18(%r8), %r12d
	shrb	$3, %al
	andb	$-5, %bl
	shrb	$2, %r10b
	orl	%eax, %r10d
	shrb	$2, %r12b
	orl	%r12d, %r10d
	andb	$1, %r10b
	salb	$2, %r10b
	orb	%r10b, %bl
	movb	%bl, 18(%r14)
	jmp	.L7571
.L21947:
	movq	8(%r14), %rcx
	movq	32(%r14), %rdi
	movq	40(%r14), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L7583
	cmpb	$15, %al
	je	.L7583
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L7586:
	cmpl	$128, %esi
	je	.L7588
	cmpl	$64, %esi
	jbe	.L7589
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 40(%rdx)
.L7588:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7592
	cmpb	$6, 16(%rax)
	jne	.L7579
	testb	$2, 62(%rax)
	je	.L7579
.L7592:
	cmpl	$128, %esi
	je	.L7594
	cmpl	$64, %esi
	jbe	.L7595
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19955:
	testl	$1, %eax 
	je	.L7594
	cmpl	$64, %esi
	jbe	.L7597
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L7594:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%rcx
	orq	%rdi, %rcx
	orq	%r8, %rcx
	setne	%dil
	movzbl	%dil, %ebx
	jmp	.L7579
.L7597:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7594
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7594
.L7595:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19955
.L7589:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7588
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L7588
.L7583:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7586
.L7576:
	movq	%r12, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %r14
	jmp	.L7577
.L21844:
	movq	8(%r12), %r13
	movl	$1, %r14d
	movl	$0, 1428(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r14d
	cmpb	$6, 16(%r13)
	je	.L21948
.L7365:
	movq	1432(%rsp), %rcx
	movl	$82, %eax
	xorl	%r15d, %r15d
	subl	$59, %eax
	movl	$0, 1424(%rsp)
	movq	40(%r12), %r10
	cmpl	$30, %eax
	movq	32(%r12), %r11
	movq	32(%rcx), %r8
	movq	40(%rcx), %r9
	ja	.L18929
	mov	%eax, %edi
	jmp	*.L7506(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L7506:
	.quad	.L7440
	.quad	.L7443
	.quad	.L7449
	.quad	.L7482
	.quad	.L7482
	.quad	.L7482
	.quad	.L7485
	.quad	.L7491
	.quad	.L7491
	.quad	.L7491
	.quad	.L7494
	.quad	.L18929
	.quad	.L7482
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L7496
	.quad	.L7496
	.quad	.L18929
	.quad	.L18929
	.quad	.L7372
	.quad	.L7371
	.quad	.L7399
	.quad	.L7398
	.quad	.L7367
	.quad	.L7368
	.quad	.L7369
	.quad	.L7370
	.text
.L7367:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6240(%rsp)
.L19950:
	movq	%r10, 6232(%rsp)
.L7366:
	movl	1428(%rsp), %eax
	testl	%eax, %eax
	je	.L7507
	movq	6232(%rsp), %rax
	testq	%rax, %rax
	jne	.L7509
	cmpq	$0, 6240(%rsp)
	js	.L7509
.L7508:
	testl	%r15d, %r15d
	jne	.L7507
	testb	$8, 18(%r12)
	jne	.L7507
	movq	1432(%rsp), %r8
	testb	$8, 18(%r8)
	jne	.L7507
	cmpq	$0, size_htab.0(%rip)
	movq	6240(%rsp), %rbx
	je	.L21949
.L7510:
	movq	new_const.1(%rip), %r12
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r12), %eax
	decq	%rcx
	movq	%rbx, 32(%r12)
	movq	%rcx, 40(%r12)
	movq	%r13, 8(%r12)
	movq	%r12, %rdi
	movq	%r12, %r11
	movq	%r12, %rdx
	cmpb	$26, %al
	je	.L7514
	cmpb	$25, %al
	je	.L21950
.L7514:
	movzbl	18(%r11), %r15d
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r15b
	orb	%bl, %r15b
	movb	%r15b, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19958
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L7571
.L21950:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L7518
	cmpb	$15, %al
	je	.L7518
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L7521:
	cmpl	$128, %esi
	je	.L7523
	cmpl	$64, %esi
	jbe	.L7524
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L7523:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7527
	cmpb	$6, 16(%rax)
	jne	.L7514
	testb	$2, 62(%rax)
	je	.L7514
.L7527:
	cmpl	$128, %esi
	je	.L7529
	cmpl	$64, %esi
	jbe	.L7530
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19952:
	testl	$1, %eax 
	je	.L7529
	cmpl	$64, %esi
	jbe	.L7532
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L7529:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L7514
.L7532:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7529
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7529
.L7530:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19952
.L7524:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7523
	movq	$-1, %r14
	movl	%esi, %ecx
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 32(%rdx)
	jmp	.L7523
.L7518:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7521
.L21949:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L7510
.L7507:
	movq	6240(%rsp), %rdi
	movq	6232(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%r12), %r13
	movq	%rax, %rdi
	movq	%r13, 8(%rax)
	movq	1432(%rsp), %rcx
	movzbl	18(%r12), %r8d
	movzbl	18(%rcx), %edx
	shrb	$3, %r8b
	andl	%r8d, %r11d
	shrb	$3, %dl
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L7540
	xorl	%edx, %edx
	testl	%r14d, %r14d
	je	.L7543
	movl	1428(%rsp), %eax
	testl	%eax, %eax
	je	.L7542
.L7543:
	testl	%r15d, %r15d
	movl	$1, %eax
	cmovne	%eax, %edx
.L7542:
	movl	%edx, %eax
.L19954:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1428(%rsp), %eax
	testl	%eax, %eax
	je	.L7569
	testb	$8, %dl
	jne	.L7569
	movq	6232(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21951
.L7570:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L7569:
	movq	1432(%rsp), %rax
	movzbl	18(%rdi), %ebx
	movq	%rdi, %r14
	movzbl	18(%r12), %r10d
	movzbl	18(%rax), %r12d
	movl	%ebx, %r8d
	andb	$-5, %bl
	shrb	$3, %r8b
	shrb	$2, %r10b
	orl	%r8d, %r10d
	shrb	$2, %r12b
	orl	%r12d, %r10d
	andb	$1, %r10b
	salb	$2, %r10b
	orb	%r10b, %bl
	movb	%bl, 18(%rdi)
	jmp	.L7571
.L21951:
	movq	6240(%rsp), %r11
	cmpq	%r11, 32(%rdi)
	jne	.L7570
	jmp	.L7569
.L7540:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r14d, %r14d
	je	.L7546
	movl	1428(%rsp), %eax
	testl	%eax, %eax
	je	.L7545
.L7546:
	movl	$1, %r10d
	testl	%r15d, %r15d
	movl	$0, %eax
	cmove	%eax, %r10d
.L7545:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L7548
	cmpb	$25, %al
	je	.L21952
.L7548:
	testl	%r10d, %r10d
	je	.L7544
	movl	1424(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L7544:
	movl	%ebp, %eax
	jmp	.L19954
.L21952:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L7552
	cmpb	$15, %al
	je	.L7552
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L7555:
	cmpl	$128, %esi
	je	.L7557
	cmpl	$64, %esi
	jbe	.L7558
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L7557:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7561
	cmpb	$6, 16(%rax)
	jne	.L7548
	testb	$2, 62(%rax)
	je	.L7548
.L7561:
	cmpl	$128, %esi
	je	.L7563
	cmpl	$64, %esi
	jbe	.L7564
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19953:
	testl	$1, %eax 
	je	.L7563
	cmpl	$64, %esi
	jbe	.L7566
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L7563:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L7548
.L7566:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7563
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7563
.L7564:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19953
.L7558:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7557
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L7557
.L7552:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7555
.L7509:
	cmpq	$-1, %rax
	jne	.L7507
	cmpq	$0, 6240(%rsp)
	jns	.L7507
	jmp	.L7508
.L7440:
	leaq	(%r9,%r10), %r15
	leaq	(%r8,%r11), %rdi
	cmpq	%r11, %rdi
	leaq	1(%r15), %rsi
	movq	%rdi, 6240(%rsp)
	cmovb	%rsi, %r15
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r15, %r10 
	movq	%r15, 6232(%rsp)
	andq	%r10, %r9
.L19949:
	movq	%r9, %r15
	shrq	$63, %r15
	jmp	.L7366
.L7443:
	testq	%r8, %r8
	jne	.L7444
	movq	%r9, %rax
	movq	$0, 6240(%rsp)
	negq	%rax
.L19944:
	movq	%rax, 6232(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	6240(%rsp), %rdx
	addq	6232(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rax
	movq	%rdx, 6240(%rsp)
	cmovb	%rax, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 6232(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L19949
.L7444:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6240(%rsp)
	notq	%rax
	jmp	.L19944
.L7449:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rdx
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rbp
	movq	%rbx, 14464(%rsp)
	movq	%rcx, 14472(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %edx
	shrq	$32, %rbp
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 14432(%rsp)
	leaq	6232(%rsp), %r15
	movq	%rdx, 14480(%rsp)
	movq	%rbp, 14488(%rsp)
	movq	%rdi, 14440(%rsp)
	movq	%rbx, 14448(%rsp)
	movq	%rcx, 14456(%rsp)
	movq	$0, 14368(%rsp)
	movq	$0, 14376(%rsp)
	movq	$0, 14384(%rsp)
	movq	$0, 14392(%rsp)
	movq	$0, 14400(%rsp)
	movq	$0, 14408(%rsp)
	movq	$0, 14416(%rsp)
	movq	$0, 14424(%rsp)
	xorl	%esi, %esi
.L7461:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	14464(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L7460:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	14432(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	14368(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 14368(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L7460
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 14400(%rsp,%rdi,8)
	jle	.L7461
	movq	14376(%rsp), %rbp
	movq	14392(%rsp), %rsi
	salq	$32, %rbp
	salq	$32, %rsi
	addq	14368(%rsp), %rbp
	addq	14384(%rsp), %rsi
	movq	%rbp, 6240(%rsp)
	movq	%rsi, (%r15)
	movq	14424(%rsp), %rcx
	movq	14408(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	14416(%rsp), %rcx
	addq	14400(%rsp), %rax
	testq	%r10, %r10
	js	.L21953
.L7464:
	testq	%r9, %r9
	js	.L21954
.L7470:
	cmpq	$0, (%r15)
	js	.L21955
	orq	%rcx, %rax
.L19948:
	setne	%r11b
	movzbl	%r11b, %r15d
	jmp	.L7366
.L21955:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L19948
.L21954:
	testq	%r11, %r11
	jne	.L7471
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L7472:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L7470
.L7471:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L7472
.L21953:
	testq	%r8, %r8
	jne	.L7465
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L7466:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L7464
.L7465:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L7466
.L7485:
	testq	%r9, %r9
	jne	.L7486
	cmpq	$1, %r8
	je	.L19947
.L7486:
	cmpq	%r8, %r11
	je	.L21956
.L7487:
	leaq	6240(%rsp), %rbx
	leaq	6232(%rsp), %rdx
	leaq	6192(%rsp), %r15
	leaq	6184(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r15, 16(%rsp)
.L19945:
	movl	$82, %edi
	movl	%r14d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	movl	%eax, %r15d
	jmp	.L7366
.L21956:
	cmpq	%r9, %r10
	jne	.L7487
	testq	%r8, %r8
	jne	.L7488
	testq	%r9, %r9
	je	.L7487
.L7488:
	movq	$1, 6240(%rsp)
.L19946:
	movq	$0, 6232(%rsp)
	jmp	.L7366
.L19947:
	movq	%r11, 6240(%rsp)
	jmp	.L19950
.L7491:
	testq	%r9, %r9
	jne	.L7494
	testq	%r8, %r8
	jle	.L7494
	testb	$4, 18(%r12)
	jne	.L7494
	movq	1432(%rsp), %rcx
	testb	$4, 18(%rcx)
	jne	.L7494
	testq	%r10, %r10
	jne	.L7494
	testq	%r11, %r11
	js	.L7494
	movl	$82, %esi
	leaq	-1(%r8,%r11), %rdi
	cmpl	$67, %esi
	cmove	%rdi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 6240(%rsp)
	jmp	.L19946
.L7494:
	leaq	6192(%rsp), %rdx
	leaq	6184(%rsp), %r15
	leaq	6240(%rsp), %rbp
	movq	%rdx, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%rbp, 16(%rsp)
	leaq	6232(%rsp), %rax
	jmp	.L19945
.L7482:
	testq	%r9, %r9
	jne	.L7486
	testq	%r8, %r8
	jle	.L7485
	testb	$4, 18(%r12)
	jne	.L7485
	movq	1432(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L7485
	testq	%r10, %r10
	jne	.L7485
	testq	%r11, %r11
	js	.L7485
	movl	$82, %r9d
	leaq	-1(%r8,%r11), %r10
	cmpl	$63, %r9d
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 6240(%rsp)
	jmp	.L19946
.L7496:
	testl	%r14d, %r14d
	je	.L7497
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L7502
.L21177:
	cmpq	%r9, %r10
	je	.L21957
.L7501:
	movq	%rax, 6240(%rsp)
	movl	$82, %eax
	cmpl	$78, %eax
	sete	%cl
	movzbl	%cl, %ebx 
	cmpq	%rbx, 6240(%rsp)
	je	.L19947
	movq	%r8, 6240(%rsp)
	movq	%r9, 6232(%rsp)
	jmp	.L7366
.L21957:
	cmpq	%r8, %r11
	jae	.L7501
.L7502:
	movl	$1, %eax
	jmp	.L7501
.L7497:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L7502
	jmp	.L21177
.L7372:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	6240(%rsp), %rbx
	leaq	6232(%rsp), %r9
	andl	$511, %esi
	testl	%r14d, %r14d
	sete	%al
	testq	%r8, %r8
	js	.L21958
	cmpq	$127, %r8
	jle	.L7388
	movq	$0, 6232(%rsp)
.L19936:
	movq	$0, 6240(%rsp)
.L7389:
	cmpl	$64, %esi
	jbe	.L7392
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L19937:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L7387
	cmpl	$63, %esi
	jbe	.L7396
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L19939:
	movq	%rax, (%r9)
.L7387:
	movl	$1, 1424(%rsp)
	jmp	.L7366
.L7396:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L19938:
	movq	%rax, (%rbx)
	jmp	.L7387
.L7392:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L19937
.L7388:
	cmpq	$63, %r8
	jle	.L7390
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 6232(%rsp)
	jmp	.L19936
.L7390:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%r11, %rdi
	subl	%r8d, %eax
	salq	%cl, %r10
	movl	%eax, %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rcx
	shrq	$1, %rcx
	orq	%rcx, %r10
	movl	%r8d, %ecx
	salq	%cl, %r11
	movq	%r10, 6232(%rsp)
	movq	%r11, 6240(%rsp)
	jmp	.L7389
.L21958:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L7374
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L7375:
	cmpq	$127, %rdx
	jle	.L7376
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L7377:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L7380
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L7387
.L7380:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L7387
	cmpq	$63, %rax
	jle	.L7384
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L19939
.L7384:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L19938
.L7376:
	cmpq	$63, %rdx
	jle	.L7378
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L7377
.L7378:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rbp
	orq	%rbp, %r11
	movq	%r11, (%rbx)
	jmp	.L7377
.L7374:
	xorl	%edi, %edi
	jmp	.L7375
.L7371:
	negq	%r8
	jmp	.L7372
.L7399:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	6224(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	6216(%rsp), %rbx
	testq	%r8, %r8
	js	.L21959
	cmpq	$127, %r8
	jle	.L7416
	movq	$0, 6216(%rsp)
.L19940:
	movq	$0, 6224(%rsp)
.L7417:
	cmpl	$64, %edi
	jbe	.L7420
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L19941:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L7415
	cmpl	$63, %edi
	jbe	.L7424
.L19943:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L7415:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	6200(%rsp), %rdi
	subq	%r8, %rsi
	leaq	6208(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L7428
	movq	$0, 6200(%rsp)
	movq	$0, 6208(%rsp)
.L7429:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L7432
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L7438:
	movq	6208(%rsp), %r8
	movq	6200(%rsp), %r9
	orq	6224(%rsp), %r8
	orq	6216(%rsp), %r9
	movq	%r8, 6240(%rsp)
	movq	%r9, 6232(%rsp)
	jmp	.L7366
.L7432:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L7438
	cmpq	$63, %rax
	jle	.L7436
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L7438
.L7436:
	movl	%r9d, %ecx
	movq	$-1, %r10
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%r8), %r10
	orq	%rdx, %r10
	movq	%r10, (%r8)
	jmp	.L7438
.L7428:
	cmpq	$63, %rsi
	jle	.L7430
	leal	-64(%rsi), %ecx
	movq	$0, 6200(%rsp)
	shrq	%cl, %r10
	movq	%r10, 6208(%rsp)
	jmp	.L7429
.L7430:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 6200(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 6208(%rsp)
	jmp	.L7429
.L7424:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L19942:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L7415
.L7420:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L19941
.L7416:
	cmpq	$63, %r8
	jle	.L7418
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 6216(%rsp)
	jmp	.L19940
.L7418:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 6216(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 6224(%rsp)
	jmp	.L7417
.L21959:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L7404
	movq	$0, 6216(%rsp)
	movq	$0, 6224(%rsp)
.L7405:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L7408
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L7415
.L7408:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L7415
	cmpq	$63, %rax
	jle	.L7412
	subl	%esi, %edi
	jmp	.L19943
.L7412:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L19942
.L7404:
	cmpq	$63, %rsi
	jle	.L7406
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 6216(%rsp)
	shrq	%cl, %rax
	movq	%rax, 6224(%rsp)
	jmp	.L7405
.L7406:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 6216(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 6224(%rsp)
	jmp	.L7405
.L7398:
	negq	%r8
	jmp	.L7399
.L7368:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 6240(%rsp)
	jmp	.L19950
.L7369:
	andq	%r8, %r11
	movq	%r11, 6240(%rsp)
.L19951:
	andq	%r9, %r10
	jmp	.L19950
.L7370:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 6240(%rsp)
	jmp	.L19951
.L21948:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1428(%rsp), %eax
	movl	%eax, 1428(%rsp)
	jmp	.L7365
.L21843:
	movq	new_const.1(%rip), %rdi
	movq	%rdi, 1432(%rsp)
	movq	%rdi, (%rax)
	movl	$25, %edi
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L7351
.L21842:
	movzbl	16(%rbp), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L7333
	cmpb	$15, %al
	je	.L7333
	movzwl	60(%rbp), %esi
	andl	$511, %esi
.L7336:
	cmpl	$128, %esi
	je	.L7338
	cmpl	$64, %esi
	jbe	.L7339
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L7338:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7342
	cmpb	$6, 16(%rax)
	jne	.L7329
	testb	$2, 62(%rax)
	je	.L7329
.L7342:
	cmpl	$128, %esi
	je	.L7344
	cmpl	$64, %esi
	jbe	.L7345
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19935:
	testl	$1, %eax 
	je	.L7344
	cmpl	$64, %esi
	jbe	.L7347
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L7344:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%r14
	orq	%r8, %r14
	orq	%r9, %r14
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L7329
.L7347:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7344
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7344
.L7345:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19935
.L7339:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7338
	movq	$-1, %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 32(%rdx)
	jmp	.L7338
.L7333:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7336
.L21841:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L7325
.L21840:
	movq	%rbp, %rdi
	call	signed_type
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	convert
	movq	%rax, %r12
	jmp	.L7324
.L21839:
	movq	8(%rbp), %r12
	movl	$88, %esi
	cmpl	$60, %esi
	movq	%r12, 3112(%rsp)
	movq	40(%rbp), %r15
	movq	32(%rbp), %r13
	movq	32(%r14), %rbp
	movq	40(%r14), %r14
	je	.L7306
	cmpl	$60, %esi
	ja	.L7323
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L21000:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3112(%rsp), %rdi
.L19933:
	movq	%rax, %rdx
	call	build_complex
.L19934:
	movq	%rax, %r12
	jmp	.L7274
.L7323:
	movl	$88, %edi
	cmpl	$61, %edi
	je	.L7307
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3104(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L7317
	cmpb	$10, %al
	je	.L7317
	cmpb	$11, %al
	je	.L7317
	cmpb	$12, %al
	movl	$70, %edi
	je	.L7317
.L7316:
	movq	3104(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbp
	movq	%rax, %rsi
	movzbl	16(%rbp), %eax
	cmpb	$6, %al
	je	.L7320
	cmpb	$10, %al
	je	.L7320
	cmpb	$11, %al
	je	.L7320
	cmpb	$12, %al
	movl	$70, %edi
	je	.L7320
.L7319:
	movq	3104(%rsp), %rdx
.L19932:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3112(%rsp), %rdi
	jmp	.L19933
.L7320:
	movl	$62, %edi
	jmp	.L7319
.L7317:
	movl	$62, %edi
	jmp	.L7316
.L7307:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L19932
.L7306:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L21000
.L21838:
	movq	32(%rbp), %r13
	xorl	%ebx, %ebx
	movq	%rbp, %r12
	movq	%r13, 18528(%rsp)
	movq	40(%rbp), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%rbp), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %r9
	movq	%r9, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L7274
	movq	18560(%rsp), %r12
	movq	18568(%rsp), %r10
	movq	18576(%rsp), %r11
	movq	%r12, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r14, %r12
	movq	%r11, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L7274
	movq	18528(%rsp), %rsi
	movq	18560(%rsp), %rdi
	movq	8(%rbp), %r9
	movq	18536(%rsp), %r13
	movl	$88, 14496(%rsp)
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r15
	movq	18576(%rsp), %r8
	movq	%rsi, 14512(%rsp)
	movq	%rdi, 14536(%rsp)
	leaq	14496(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r9, 14504(%rsp)
	movq	%r13, 14520(%rsp)
	movq	%rdx, 14528(%rsp)
	movq	%r15, 14544(%rsp)
	movq	%r8, 14552(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L7279
	movq	14560(%rsp), %r12
.L7280:
	movzbl	16(%r12), %eax
	movq	%r12, %rdx
	cmpb	$26, %al
	je	.L7282
	cmpb	$25, %al
	je	.L21962
.L7282:
	movzbl	18(%rbp), %esi
	movzbl	18(%r14), %edx
	shrb	$3, %sil
	shrb	$3, %dl
	andl	$1, %esi
	andl	$1, %edx
	orb	%bl, %sil
	movzbl	18(%r12), %ebx
	orb	%dl, %sil
	salb	$3, %sil
	andb	$-9, %bl
	orb	%sil, %bl
	movb	%bl, 18(%r12)
	movl	%ebx, %edi
	movzbl	18(%r14), %eax
	movzbl	18(%rbp), %r8d
	shrb	$3, %dil
	andb	$-5, %bl
	shrb	$2, %al
	shrb	$2, %r8b
	orl	%edi, %r8d
	orl	%eax, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%r12)
	jmp	.L7274
.L21962:
	movq	8(%r12), %rcx
	movq	32(%r12), %rdi
	movq	40(%r12), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L7286
	cmpb	$15, %al
	je	.L7286
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L7289:
	cmpl	$128, %esi
	je	.L7291
	cmpl	$64, %esi
	jbe	.L7292
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 40(%rdx)
.L7291:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7295
	cmpb	$6, 16(%rax)
	jne	.L7282
	testb	$2, 62(%rax)
	je	.L7282
.L7295:
	cmpl	$128, %esi
	je	.L7297
	cmpl	$64, %esi
	jbe	.L7298
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19931:
	testl	$1, %eax 
	je	.L7297
	cmpl	$64, %esi
	jbe	.L7300
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L7297:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%cl
	movzbl	%cl, %ebx
	jmp	.L7282
.L7300:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7297
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7297
.L7298:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19931
.L7292:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7291
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L7291
.L7286:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7289
.L7279:
	movq	%rbp, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %r12
	jmp	.L7280
.L21837:
	movq	8(%rbp), %r13
	movl	$1, %r15d
	movl	$0, 1468(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21963
.L7068:
	movl	$88, %eax
	movl	$0, 1440(%rsp)
	movl	$0, 1464(%rsp)
	subl	$59, %eax
	movq	32(%rbp), %r11
	movq	40(%rbp), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L7209(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L7209:
	.quad	.L7143
	.quad	.L7146
	.quad	.L7152
	.quad	.L7185
	.quad	.L7185
	.quad	.L7185
	.quad	.L7188
	.quad	.L7194
	.quad	.L7194
	.quad	.L7194
	.quad	.L7197
	.quad	.L18929
	.quad	.L7185
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L7199
	.quad	.L7199
	.quad	.L18929
	.quad	.L18929
	.quad	.L7075
	.quad	.L7074
	.quad	.L7102
	.quad	.L7101
	.quad	.L7070
	.quad	.L7071
	.quad	.L7072
	.quad	.L7073
	.text
.L7070:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6304(%rsp)
.L19926:
	movq	%r10, 6296(%rsp)
.L7069:
	movl	1468(%rsp), %eax
	testl	%eax, %eax
	je	.L7210
	movq	6296(%rsp), %rax
	testq	%rax, %rax
	jne	.L7212
	cmpq	$0, 6304(%rsp)
	js	.L7212
.L7211:
	movl	1440(%rsp), %eax
	testl	%eax, %eax
	jne	.L7210
	testb	$8, 18(%rbp)
	jne	.L7210
	testb	$8, 18(%r14)
	jne	.L7210
	cmpq	$0, size_htab.0(%rip)
	movq	6304(%rsp), %rbx
	je	.L21964
.L7213:
	movq	new_const.1(%rip), %rbp
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%rbp), %eax
	decq	%rcx
	movq	%rbx, 32(%rbp)
	movq	%rcx, 40(%rbp)
	movq	%r13, 8(%rbp)
	movq	%rbp, %rdi
	movq	%rbp, %r11
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L7217
	cmpb	$25, %al
	je	.L21965
.L7217:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %eax
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19934
	movq	new_const.1(%rip), %r12
	movl	$25, %edi
	movq	%r12, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L7274
.L21965:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L7221
	cmpb	$15, %al
	je	.L7221
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L7224:
	cmpl	$128, %esi
	je	.L7226
	cmpl	$64, %esi
	jbe	.L7227
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L7226:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7230
	cmpb	$6, 16(%rax)
	jne	.L7217
	testb	$2, 62(%rax)
	je	.L7217
.L7230:
	cmpl	$128, %esi
	je	.L7232
	cmpl	$64, %esi
	jbe	.L7233
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19928:
	testl	$1, %eax 
	je	.L7232
	cmpl	$64, %esi
	jbe	.L7235
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L7232:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L7217
.L7235:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7232
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7232
.L7233:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19928
.L7227:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7226
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L7226
.L7221:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7224
.L21964:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L7213
.L7210:
	movq	6304(%rsp), %rdi
	movq	6296(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%rbp), %r12
	movq	%rax, %rdi
	movq	%r12, 8(%rax)
	movzbl	18(%r14), %edx
	movzbl	18(%rbp), %ebx
	shrb	$3, %dl
	shrb	$3, %bl
	andl	%ebx, %r11d
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L7243
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L7246
	movl	1468(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L7245
.L7246:
	movl	1440(%rsp), %r13d
	movl	$1, %eax
	testl	%r13d, %r13d
	cmovne	%eax, %edx
.L7245:
	movl	%edx, %eax
.L19930:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1468(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L7272
	testb	$8, %dl
	jne	.L7272
	movq	6296(%rsp), %r10
	cmpq	%r10, 40(%rdi)
	je	.L21966
.L7273:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L7272:
	movzbl	18(%rdi), %r12d
	movzbl	18(%rbp), %r8d
	movzbl	18(%r14), %ebp
	movl	%r12d, %r15d
	shrb	$2, %r8b
	andb	$-5, %r12b
	shrb	$3, %r15b
	shrb	$2, %bpl
	orl	%r15d, %r8d
	orl	%ebp, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %r12b
	movb	%r12b, 18(%rdi)
	movq	%rdi, %r12
	jmp	.L7274
.L21966:
	movq	6304(%rsp), %rbx
	cmpq	%rbx, 32(%rdi)
	jne	.L7273
	jmp	.L7272
.L7243:
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L7249
	movl	1468(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L7248
.L7249:
	movl	1440(%rsp), %esi
	movl	$1, %r10d
	movl	$0, %eax
	testl	%esi, %esi
	cmove	%eax, %r10d
.L7248:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L7251
	cmpb	$25, %al
	je	.L21967
.L7251:
	testl	%r10d, %r10d
	je	.L7247
	movl	1464(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %r12d
.L7247:
	movl	%r12d, %eax
	jmp	.L19930
.L21967:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L7255
	cmpb	$15, %al
	je	.L7255
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L7258:
	cmpl	$128, %esi
	je	.L7260
	cmpl	$64, %esi
	jbe	.L7261
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L7260:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L7264
	cmpb	$6, 16(%rax)
	jne	.L7251
	testb	$2, 62(%rax)
	je	.L7251
.L7264:
	cmpl	$128, %esi
	je	.L7266
	cmpl	$64, %esi
	jbe	.L7267
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19929:
	testl	$1, %eax 
	je	.L7266
	cmpl	$64, %esi
	jbe	.L7269
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L7266:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L7251
.L7269:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7266
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7266
.L7267:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19929
.L7261:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L7260
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L7260
.L7255:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L7258
.L7212:
	cmpq	$-1, %rax
	jne	.L7210
	cmpq	$0, 6304(%rsp)
	jns	.L7210
	jmp	.L7211
.L7143:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 6304(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 6296(%rsp)
	andq	%r10, %r9
.L19925:
	shrq	$63, %r9
	movl	%r9d, 1440(%rsp)
	jmp	.L7069
.L7146:
	testq	%r8, %r8
	jne	.L7147
	movq	%r9, %rax
	movq	$0, 6304(%rsp)
	negq	%rax
.L19920:
	movq	%rax, 6296(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	6304(%rsp), %rdx
	addq	6296(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbx
	movq	%rdx, 6304(%rsp)
	cmovb	%rbx, %r12
	xorq	%r12, %r9 
	movq	%r12, 6296(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L19925
.L7147:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6304(%rsp)
	notq	%rax
	jmp	.L19920
.L7152:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 14672(%rsp)
	movq	%rcx, 14680(%rsp)
	movq	%r8, %r12
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %r12d
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 14648(%rsp)
	movq	%rbx, 14688(%rsp)
	movq	%rdx, 14696(%rsp)
	movq	%r12, 14640(%rsp)
	movq	%rdi, 14656(%rsp)
	movq	%rcx, 14664(%rsp)
	movq	$0, 14576(%rsp)
	movq	$0, 14584(%rsp)
	movq	$0, 14592(%rsp)
	movq	$0, 14600(%rsp)
	movq	$0, 14608(%rsp)
	movq	$0, 14616(%rsp)
	movq	$0, 14624(%rsp)
	movq	$0, 14632(%rsp)
	xorl	%esi, %esi
.L7164:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	14672(%rsp,%rbx,8), %r12
	xorl	%ebx, %ebx
.L7163:
	movq	%r12, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	14640(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	14576(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 14576(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L7163
	movslq	%esi,%r12
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 14608(%rsp,%r12,8)
	jle	.L7164
	movq	14584(%rsp), %rdx
	movq	14600(%rsp), %rsi
	movq	14616(%rsp), %rax
	movq	14632(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	14576(%rsp), %rdx
	addq	14592(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	14608(%rsp), %rax
	addq	14624(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 6304(%rsp)
	movq	%rsi, 6296(%rsp)
	js	.L21968
.L7167:
	testq	%r9, %r9
	js	.L21969
.L7173:
	cmpq	$0, 6296(%rsp)
	js	.L21970
	orq	%rcx, %rax
.L20999:
	setne	%r11b
	movzbl	%r11b, %eax
.L19924:
	movl	%eax, 1440(%rsp)
	jmp	.L7069
.L21970:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L20999
.L21969:
	testq	%r11, %r11
	jne	.L7174
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L7175:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L7173
.L7174:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L7175
.L21968:
	testq	%r8, %r8
	jne	.L7168
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L7169:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L7167
.L7168:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L7169
.L7188:
	testq	%r9, %r9
	jne	.L7189
	cmpq	$1, %r8
	je	.L19923
.L7189:
	cmpq	%r8, %r11
	je	.L21971
.L7190:
	leaq	6304(%rsp), %rbx
	leaq	6296(%rsp), %rdi
	leaq	6256(%rsp), %rcx
	leaq	6248(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L19921:
	movl	$88, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L19924
.L21971:
	cmpq	%r9, %r10
	jne	.L7190
	testq	%r8, %r8
	jne	.L7191
	testq	%r9, %r9
	je	.L7190
.L7191:
	movq	$1, 6304(%rsp)
.L19922:
	movq	$0, 6296(%rsp)
	jmp	.L7069
.L19923:
	movq	%r11, 6304(%rsp)
	jmp	.L19926
.L7194:
	testq	%r9, %r9
	jne	.L7197
	testq	%r8, %r8
	jle	.L7197
	testb	$4, 18(%rbp)
	jne	.L7197
	testb	$4, 18(%r14)
	jne	.L7197
	testq	%r10, %r10
	jne	.L7197
	testq	%r11, %r11
	js	.L7197
	movl	$88, %eax
	leaq	-1(%r8,%r11), %r12
	cmpl	$67, %eax
	cmove	%r12, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 6304(%rsp)
	jmp	.L19922
.L7197:
	leaq	6256(%rsp), %rcx
	leaq	6248(%rsp), %rdx
	leaq	6304(%rsp), %rsi
	movq	%rcx, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	6296(%rsp), %rax
	jmp	.L19921
.L7185:
	testq	%r9, %r9
	jne	.L7189
	testq	%r8, %r8
	jle	.L7188
	testb	$4, 18(%rbp)
	jne	.L7188
	testb	$4, 18(%r14)
	jne	.L7188
	testq	%r10, %r10
	jne	.L7188
	testq	%r11, %r11
	js	.L7188
	movl	$88, %r10d
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %r10d
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 6304(%rsp)
	jmp	.L19922
.L7199:
	testl	%r15d, %r15d
	je	.L7200
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L7205
.L21176:
	cmpq	%r9, %r10
	je	.L21972
.L7204:
	movl	$88, %r12d
	xorl	%ebx, %ebx
	movq	%rax, 6304(%rsp)
	cmpl	$78, %r12d
	sete	%bl
	cmpq	%rbx, 6304(%rsp)
	je	.L19923
	movq	%r8, 6304(%rsp)
	movq	%r9, 6296(%rsp)
	jmp	.L7069
.L21972:
	cmpq	%r8, %r11
	jae	.L7204
.L7205:
	movl	$1, %eax
	jmp	.L7204
.L7200:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L7205
	jmp	.L21176
.L7075:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	6304(%rsp), %rbx
	leaq	6296(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21973
	cmpq	$127, %r8
	jle	.L7091
	movq	$0, 6296(%rsp)
.L19912:
	movq	$0, 6304(%rsp)
.L7092:
	cmpl	$64, %esi
	jbe	.L7095
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L19913:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L7090
	cmpl	$63, %esi
	jbe	.L7099
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L19915:
	movq	%rax, (%r9)
.L7090:
	movl	$1, 1464(%rsp)
	jmp	.L7069
.L7099:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L19914:
	movq	%rax, (%rbx)
	jmp	.L7090
.L7095:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L19913
.L7091:
	cmpq	$63, %r8
	jle	.L7093
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 6296(%rsp)
	jmp	.L19912
.L7093:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 6304(%rsp)
	orq	%rdi, %r10
	movq	%r10, 6296(%rsp)
	jmp	.L7092
.L21973:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L7077
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L7078:
	cmpq	$127, %rdx
	jle	.L7079
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L7080:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L7083
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L7090
.L7083:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L7090
	cmpq	$63, %rax
	jle	.L7087
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L19915
.L7087:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L19914
.L7079:
	cmpq	$63, %rdx
	jle	.L7081
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L7080
.L7081:
	movl	%edx, %ecx
	movq	%r10, %r12
	shrq	%cl, %r12
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r12, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r8
	orq	%r8, %r11
	movq	%r11, (%rbx)
	jmp	.L7080
.L7077:
	xorl	%edi, %edi
	jmp	.L7078
.L7074:
	negq	%r8
	jmp	.L7075
.L7102:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	6288(%rsp), %r12
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	6280(%rsp), %rbx
	testq	%r8, %r8
	js	.L21974
	cmpq	$127, %r8
	jle	.L7119
	movq	$0, 6280(%rsp)
.L19916:
	movq	$0, 6288(%rsp)
.L7120:
	cmpl	$64, %edi
	jbe	.L7123
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L19917:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L7118
	cmpl	$63, %edi
	jbe	.L7127
.L19919:
	leal	-64(%rdi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	salq	%cl, %rdx
	notq	%r12
	andq	(%rbx), %r12
	orq	%rdx, %r12
	movq	%r12, (%rbx)
.L7118:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	6264(%rsp), %rdi
	subq	%r8, %rsi
	leaq	6272(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L7131
	movq	$0, 6264(%rsp)
	movq	$0, 6272(%rsp)
.L7132:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L7135
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L7141:
	movq	6272(%rsp), %rdi
	movq	6264(%rsp), %r10
	orq	6288(%rsp), %rdi
	orq	6280(%rsp), %r10
	movq	%rdi, 6304(%rsp)
	movq	%r10, 6296(%rsp)
	jmp	.L7069
.L7135:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L7141
	cmpq	$63, %rax
	jle	.L7139
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L7141
.L7139:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L7141
.L7131:
	cmpq	$63, %rsi
	jle	.L7133
	leal	-64(%rsi), %ecx
	movq	$0, 6264(%rsp)
	shrq	%cl, %r10
	movq	%r10, 6272(%rsp)
	jmp	.L7132
.L7133:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 6264(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 6272(%rsp)
	jmp	.L7132
.L7127:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L19918:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r12), %rax
	orq	%rdx, %rax
	movq	%rax, (%r12)
	jmp	.L7118
.L7123:
	movq	(%r12), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L19917
.L7119:
	cmpq	$63, %r8
	jle	.L7121
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 6280(%rsp)
	jmp	.L19916
.L7121:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 6280(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 6288(%rsp)
	jmp	.L7120
.L21974:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L7107
	movq	$0, 6280(%rsp)
	movq	$0, 6288(%rsp)
.L7108:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L7111
	movq	%rdx, (%rbx)
	movq	%rdx, (%r12)
	jmp	.L7118
.L7111:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L7118
	cmpq	$63, %rax
	jle	.L7115
	subl	%esi, %edi
	jmp	.L19919
.L7115:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L19918
.L7107:
	cmpq	$63, %rsi
	jle	.L7109
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 6280(%rsp)
	shrq	%cl, %rax
	movq	%rax, 6288(%rsp)
	jmp	.L7108
.L7109:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 6280(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 6288(%rsp)
	jmp	.L7108
.L7101:
	negq	%r8
	jmp	.L7102
.L7071:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 6304(%rsp)
	jmp	.L19926
.L7072:
	andq	%r8, %r11
	movq	%r11, 6304(%rsp)
.L19927:
	andq	%r9, %r10
	jmp	.L19926
.L7073:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 6304(%rsp)
	jmp	.L19927
.L21963:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1468(%rsp), %eax
	movl	%eax, 1468(%rsp)
	jmp	.L7068
.L21836:
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L7054
.L21835:
	movzbl	16(%rbx), %eax
	cmpb	$13, %al
	je	.L7036
	cmpb	$15, %al
	je	.L7036
	movzwl	60(%rbx), %edx
	andl	$511, %edx
.L7039:
	cmpl	$128, %edx
	je	.L7041
	cmpl	$64, %edx
	jbe	.L7042
	leal	-64(%rdx), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 40(%rsi)
.L7041:
	movq	8(%rsi), %rax
	testb	$32, 17(%rax)
	je	.L7045
	cmpb	$6, 16(%rax)
	jne	.L7032
	testb	$2, 62(%rax)
	je	.L7032
.L7045:
	cmpl	$128, %edx
	je	.L7047
	cmpl	$64, %edx
	jbe	.L7048
	movq	40(%rsi), %rax
	leal	-65(%rdx), %ecx
	sarq	%cl, %rax
.L19911:
	testl	$1, %eax 
	je	.L7047
	cmpl	$64, %edx
	jbe	.L7050
	leal	-64(%rdx), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rsi)
.L7047:
	movl	$1, %r14d
	movslq	%r8d,%rcx
	xorq	32(%rsi), %r14
	xorl	%r8d, %r8d
	orq	40(%rsi), %r8
	orq	%r14, %rcx
	orq	%r8, %rcx
	setne	%dl
	movzbl	%dl, %r8d
	jmp	.L7032
.L7050:
	movq	$-1, %rax
	cmpl	$63, %edx
	movq	%rax, 40(%rsi)
	ja	.L7047
	movl	%edx, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rsi)
	jmp	.L7047
.L7048:
	movq	32(%rsi), %rax
	leal	-1(%rdx), %ecx
	shrq	%cl, %rax
	jmp	.L19911
.L7042:
	cmpl	$63, %edx
	movq	$0, 40(%rsi)
	ja	.L7041
	movq	$-1, %rbx
	movl	%edx, %ecx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 32(%rsi)
	jmp	.L7041
.L7036:
	testb	$2, target_flags+3(%rip)
	movl	$64, %edx
	movl	$32, %eax
	cmove	%eax, %edx
	jmp	.L7039
.L21834:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L7028
.L21833:
	movq	8(%r14), %rbp
	movq	1496(%rsp), %rcx
	cmpl	$60, %r12d
	movq	%rbp, 3128(%rsp)
	movq	32(%rcx), %rbp
	movq	40(%r14), %r15
	movq	32(%r14), %r13
	movq	40(%rcx), %r14
	je	.L7010
	cmpl	$60, %r12d
	ja	.L7027
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L20998:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3128(%rsp), %rdi
.L19909:
	movq	%rax, %rdx
	call	build_complex
.L19910:
	movq	%rax, %rbp
	jmp	.L6978
.L7027:
	cmpl	$61, %r12d
	je	.L7011
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3120(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rdi
	movq	%rax, %rsi
	movzbl	16(%rdi), %eax
	cmpb	$6, %al
	je	.L7021
	cmpb	$10, %al
	je	.L7021
	cmpb	$11, %al
	je	.L7021
	cmpb	$12, %al
	movl	$70, %edi
	je	.L7021
.L7020:
	movq	3120(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r10
	movq	%rax, %rsi
	movzbl	16(%r10), %eax
	cmpb	$6, %al
	je	.L7024
	cmpb	$10, %al
	je	.L7024
	cmpb	$11, %al
	je	.L7024
	cmpb	$12, %al
	movl	$70, %edi
	je	.L7024
.L7023:
	movq	3120(%rsp), %rdx
.L19908:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3128(%rsp), %rdi
	jmp	.L19909
.L7024:
	movl	$62, %edi
	jmp	.L7023
.L7021:
	movl	$62, %edi
	jmp	.L7020
.L7011:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L19908
.L7010:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L20998
.L21832:
	movq	32(%r14), %r13
	movq	1496(%rsp), %rcx
	xorl	%ebx, %ebx
	movq	%r14, %rbp
	movq	%r13, 18528(%rsp)
	movq	40(%r14), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r14), %r9
	movq	%r9, 18544(%rsp)
	movq	32(%rcx), %rsi
	movq	%rsi, 18560(%rsp)
	movq	40(%rcx), %rdi
	movq	%rdi, 18568(%rsp)
	movq	48(%rcx), %r15
	movq	%r9, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r15, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L6978
	movq	18576(%rsp), %rbp
	movq	18560(%rsp), %r8
	movq	18568(%rsp), %r10
	movq	%rbp, 16(%rsp)
	movq	%r8, (%rsp)
	movq	%r10, 8(%rsp)
	call	target_isnan
	movq	1496(%rsp), %rbp
	testl	%eax, %eax
	jne	.L6978
	movq	8(%r14), %rdi
	movq	18528(%rsp), %rcx
	leaq	14704(%rsp), %rsi
	movq	18536(%rsp), %r15
	movq	18544(%rsp), %r13
	movl	%r12d, 14704(%rsp)
	movq	18560(%rsp), %rdx
	movq	18568(%rsp), %r9
	movq	18576(%rsp), %r11
	movq	%rdi, 14712(%rsp)
	movq	%rcx, 14720(%rsp)
	movl	$const_binop_1, %edi
	movq	%r15, 14728(%rsp)
	movq	%r13, 14736(%rsp)
	movq	%rdx, 14744(%rsp)
	movq	%r9, 14752(%rsp)
	movq	%r11, 14760(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L6983
	movq	14768(%rsp), %rbp
.L6984:
	movzbl	16(%rbp), %eax
	movq	%rbp, %rdx
	cmpb	$26, %al
	je	.L6986
	cmpb	$25, %al
	je	.L21977
.L6986:
	movzbl	18(%r14), %r15d
	movq	1496(%rsp), %r13
	movzbl	18(%r13), %edx
	shrb	$3, %r15b
	andl	$1, %r15d
	orb	%bl, %r15b
	movzbl	18(%rbp), %ebx
	shrb	$3, %dl
	andl	$1, %edx
	orb	%dl, %r15b
	salb	$3, %r15b
	andb	$-9, %bl
	orb	%r15b, %bl
	movb	%bl, 18(%rbp)
	movl	%ebx, %eax
	movzbl	18(%r14), %r9d
	movzbl	18(%r13), %r14d
	shrb	$3, %al
	andb	$-5, %bl
	shrb	$2, %r9b
	orl	%eax, %r9d
	shrb	$2, %r14b
	orl	%r14d, %r9d
	andb	$1, %r9b
	salb	$2, %r9b
	orb	%r9b, %bl
	movb	%bl, 18(%rbp)
	jmp	.L6978
.L21977:
	movq	8(%rbp), %rcx
	movq	32(%rbp), %rdi
	movq	40(%rbp), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L6990
	cmpb	$15, %al
	je	.L6990
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L6993:
	cmpl	$128, %esi
	je	.L6995
	cmpl	$64, %esi
	jbe	.L6996
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L6995:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6999
	cmpb	$6, 16(%rax)
	jne	.L6986
	testb	$2, 62(%rax)
	je	.L6986
.L6999:
	cmpl	$128, %esi
	je	.L7001
	cmpl	$64, %esi
	jbe	.L7002
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19907:
	testl	$1, %eax 
	je	.L7001
	cmpl	$64, %esi
	jbe	.L7004
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L7001:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%r11
	orq	%rdi, %r11
	orq	%r8, %r11
	setne	%r8b
	movzbl	%r8b, %ebx
	jmp	.L6986
.L7004:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L7001
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L7001
.L7002:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19907
.L6996:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6995
	movq	$-1, %r10
	movl	%esi, %ecx
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 32(%rdx)
	jmp	.L6995
.L6990:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6993
.L6983:
	movq	%r14, %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, %rbp
	jmp	.L6984
.L21831:
	movq	8(%r14), %r13
	movl	$1, %r15d
	movl	$0, 1492(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L21978
.L6772:
	movq	1496(%rsp), %rcx
	leal	-59(%r12), %eax
	movl	$0, 1472(%rsp)
	cmpl	$30, %eax
	movl	$0, 1488(%rsp)
	movq	40(%r14), %r10
	movq	32(%r14), %r11
	movq	32(%rcx), %r8
	movq	40(%rcx), %r9
	ja	.L18929
	mov	%eax, %edi
	jmp	*.L6913(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L6913:
	.quad	.L6847
	.quad	.L6850
	.quad	.L6856
	.quad	.L6889
	.quad	.L6889
	.quad	.L6889
	.quad	.L6892
	.quad	.L6898
	.quad	.L6898
	.quad	.L6898
	.quad	.L6901
	.quad	.L18929
	.quad	.L6889
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L6903
	.quad	.L6903
	.quad	.L18929
	.quad	.L18929
	.quad	.L6779
	.quad	.L6778
	.quad	.L6806
	.quad	.L6805
	.quad	.L6774
	.quad	.L6775
	.quad	.L6776
	.quad	.L6777
	.text
.L6774:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6368(%rsp)
.L19902:
	movq	%r10, 6360(%rsp)
.L6773:
	movl	1492(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L6914
	movq	6360(%rsp), %rax
	testq	%rax, %rax
	jne	.L6916
	cmpq	$0, 6368(%rsp)
	js	.L6916
.L6915:
	movl	1472(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L6914
	testb	$8, 18(%r14)
	jne	.L6914
	movq	1496(%rsp), %r12
	testb	$8, 18(%r12)
	jne	.L6914
	cmpq	$0, size_htab.0(%rip)
	movq	6368(%rsp), %rbx
	je	.L21979
.L6917:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L6921
	cmpb	$25, %al
	je	.L21980
.L6921:
	movzbl	18(%r11), %ecx
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %cl
	orb	%bl, %cl
	movb	%cl, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19910
	movq	new_const.1(%rip), %rbp
	movl	$25, %edi
	movq	%rbp, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L6978
.L21980:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L6925
	cmpb	$15, %al
	je	.L6925
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L6928:
	cmpl	$128, %esi
	je	.L6930
	cmpl	$64, %esi
	jbe	.L6931
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L6930:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6934
	cmpb	$6, 16(%rax)
	jne	.L6921
	testb	$2, 62(%rax)
	je	.L6921
.L6934:
	cmpl	$128, %esi
	je	.L6936
	cmpl	$64, %esi
	jbe	.L6937
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19904:
	testl	$1, %eax 
	je	.L6936
	cmpl	$64, %esi
	jbe	.L6939
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L6936:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r9b
	movzbl	%r9b, %r10d
	jmp	.L6921
.L6939:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6936
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6936
.L6937:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19904
.L6931:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6930
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L6930
.L6925:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6928
.L21979:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L6917
.L6914:
	movq	6368(%rsp), %rdi
	movq	6360(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	8(%r14), %r11
	movq	%rax, %rdi
	movq	%r11, 8(%rax)
	movq	1496(%rsp), %r12
	movl	$1, %r11d
	movzbl	18(%r14), %r13d
	movzbl	18(%r12), %r8d
	shrb	$3, %r13b
	andl	%r13d, %r11d
	shrb	$3, %r8b
	movl	%r8d, %ebx
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L6947
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L6950
	movl	1492(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L6949
.L6950:
	movl	1472(%rsp), %esi
	movl	$1, %eax
	testl	%esi, %esi
	cmovne	%eax, %edx
.L6949:
	movl	%edx, %eax
.L19906:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1492(%rsp), %eax
	testl	%eax, %eax
	je	.L6976
	testb	$8, %dl
	jne	.L6976
	movq	6360(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L21981
.L6977:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L6976:
	movq	1496(%rsp), %rax
	movzbl	18(%rdi), %ebx
	movq	%rdi, %rbp
	movzbl	18(%r14), %r8d
	movzbl	18(%rax), %r14d
	movl	%ebx, %r11d
	andb	$-5, %bl
	shrb	$3, %r11b
	shrb	$2, %r8b
	orl	%r11d, %r8d
	shrb	$2, %r14b
	orl	%r14d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rdi)
	jmp	.L6978
.L21981:
	movq	6368(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L6977
	jmp	.L6976
.L6947:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L6953
	movl	1492(%rsp), %eax
	testl	%eax, %eax
	je	.L6952
.L6953:
	movl	1472(%rsp), %eax
	movl	$1, %r10d
	movl	$0, %r9d
	testl	%eax, %eax
	cmove	%r9d, %r10d
.L6952:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L6955
	cmpb	$25, %al
	je	.L21982
.L6955:
	testl	%r10d, %r10d
	je	.L6951
	movl	1488(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L6951:
	movl	%ebp, %eax
	jmp	.L19906
.L21982:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L6959
	cmpb	$15, %al
	je	.L6959
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L6962:
	cmpl	$128, %esi
	je	.L6964
	cmpl	$64, %esi
	jbe	.L6965
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L6964:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6968
	cmpb	$6, 16(%rax)
	jne	.L6955
	testb	$2, 62(%rax)
	je	.L6955
.L6968:
	cmpl	$128, %esi
	je	.L6970
	cmpl	$64, %esi
	jbe	.L6971
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19905:
	testl	$1, %eax 
	je	.L6970
	cmpl	$64, %esi
	jbe	.L6973
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L6970:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L6955
.L6973:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6970
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6970
.L6971:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19905
.L6965:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6964
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L6964
.L6959:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6962
.L6916:
	cmpq	$-1, %rax
	jne	.L6914
	cmpq	$0, 6368(%rsp)
	jns	.L6914
	jmp	.L6915
.L6847:
	leaq	(%r9,%r10), %rdi
	leaq	(%r8,%r11), %rsi
	cmpq	%r11, %rsi
	leaq	1(%rdi), %rax
	movq	%rsi, 6368(%rsp)
	cmovb	%rax, %rdi
	xorq	%r10, %r9 
	notq	%r9
	xorq	%rdi, %r10 
	movq	%rdi, 6360(%rsp)
	andq	%r10, %r9
.L19901:
	shrq	$63, %r9
	movl	%r9d, 1472(%rsp)
	jmp	.L6773
.L6850:
	testq	%r8, %r8
	jne	.L6851
	movq	%r9, %rax
	movq	$0, 6368(%rsp)
	negq	%rax
.L19896:
	movq	%rax, 6360(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	6368(%rsp), %rdx
	addq	6360(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 6368(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 6360(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L19901
.L6851:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6368(%rsp)
	notq	%rax
	jmp	.L19896
.L6856:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 14848(%rsp)
	movq	%rcx, 14856(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 14880(%rsp)
	leaq	6360(%rsp), %r12
	movq	%rbp, 14864(%rsp)
	movq	%rdx, 14872(%rsp)
	movq	%rdi, 14888(%rsp)
	movq	%rbx, 14896(%rsp)
	movq	%rcx, 14904(%rsp)
	movq	$0, 14784(%rsp)
	movq	$0, 14792(%rsp)
	movq	$0, 14800(%rsp)
	movq	$0, 14808(%rsp)
	movq	$0, 14816(%rsp)
	movq	$0, 14824(%rsp)
	movq	$0, 14832(%rsp)
	movq	$0, 14840(%rsp)
	xorl	%esi, %esi
.L6868:
	movslq	%esi,%rdx
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	leaq	0(,%rdx,8), %rbp
	xorl	%ebx, %ebx
.L6867:
	movq	14880(%rsp,%rbx), %rdx
	leal	(%rdi,%rsi), %eax
	addq	$8, %rbx
	imulq	14848(%rsp,%rbp), %rdx
	cltq
	incl	%edi
	salq	$3, %rax
	leaq	(%rdx,%rcx), %rdx
	addq	14784(%rsp,%rax), %rdx
	movq	%rdx, %rcx
	andl	$4294967295, %ecx
	movq	%rcx, 14784(%rsp,%rax)
	movq	%rdx, %rcx
	shrq	$32, %rcx
	cmpl	$3, %edi
	jle	.L6867
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rcx, 14816(%rsp,%rdi,8)
	jle	.L6868
	movq	14792(%rsp), %rbp
	movq	14808(%rsp), %rsi
	salq	$32, %rbp
	salq	$32, %rsi
	addq	14784(%rsp), %rbp
	addq	14800(%rsp), %rsi
	movq	%rbp, 6368(%rsp)
	movq	%rsi, (%r12)
	movq	14840(%rsp), %rcx
	movq	14824(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	14832(%rsp), %rcx
	addq	14816(%rsp), %rax
	testq	%r10, %r10
	js	.L21983
.L6871:
	testq	%r9, %r9
	js	.L21984
.L6877:
	cmpq	$0, (%r12)
	js	.L21985
	orq	%rcx, %rax
.L20997:
	setne	%r10b
	movzbl	%r10b, %eax
.L19900:
	movl	%eax, 1472(%rsp)
	jmp	.L6773
.L21985:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L20997
.L21984:
	testq	%r11, %r11
	jne	.L6878
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L6879:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L6877
.L6878:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L6879
.L21983:
	testq	%r8, %r8
	jne	.L6872
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L6873:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L6871
.L6872:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L6873
.L6892:
	testq	%r9, %r9
	jne	.L6893
	cmpq	$1, %r8
	je	.L19899
.L6893:
	cmpq	%r8, %r11
	je	.L21986
.L6894:
	leaq	6368(%rsp), %rdx
	leaq	6360(%rsp), %rbx
	leaq	6320(%rsp), %rcx
	leaq	6312(%rsp), %rax
	movq	%rdx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L19897:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L19900
.L21986:
	cmpq	%r9, %r10
	jne	.L6894
	testq	%r8, %r8
	jne	.L6895
	testq	%r9, %r9
	je	.L6894
.L6895:
	movq	$1, 6368(%rsp)
.L19898:
	movq	$0, 6360(%rsp)
	jmp	.L6773
.L19899:
	movq	%r11, 6368(%rsp)
	jmp	.L19902
.L6898:
	testq	%r9, %r9
	jne	.L6901
	testq	%r8, %r8
	jle	.L6901
	testb	$4, 18(%r14)
	jne	.L6901
	movq	1496(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L6901
	testq	%r10, %r10
	jne	.L6901
	testq	%r11, %r11
	js	.L6901
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %rsi
	cmove	%rsi, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 6368(%rsp)
	jmp	.L19898
.L6901:
	leaq	6320(%rsp), %rbx
	leaq	6312(%rsp), %rcx
	leaq	6368(%rsp), %rbp
	movq	%rbx, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	leaq	6360(%rsp), %rax
	jmp	.L19897
.L6889:
	testq	%r9, %r9
	jne	.L6893
	testq	%r8, %r8
	jle	.L6892
	testb	$4, 18(%r14)
	jne	.L6892
	movq	1496(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L6892
	testq	%r10, %r10
	jne	.L6892
	testq	%r11, %r11
	js	.L6892
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 6368(%rsp)
	jmp	.L19898
.L6903:
	testl	%r15d, %r15d
	je	.L6904
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L6909
.L21175:
	cmpq	%r9, %r10
	je	.L21987
.L6908:
	xorl	%edx, %edx
	movq	%rax, 6368(%rsp)
	cmpl	$78, %r12d
	sete	%dl
	cmpq	%rdx, 6368(%rsp)
	je	.L19899
	movq	%r8, 6368(%rsp)
	movq	%r9, 6360(%rsp)
	jmp	.L6773
.L21987:
	cmpq	%r8, %r11
	jae	.L6908
.L6909:
	movl	$1, %eax
	jmp	.L6908
.L6904:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L6909
	jmp	.L21175
.L6779:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	6368(%rsp), %rbx
	leaq	6360(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L21988
	cmpq	$127, %r8
	jle	.L6795
	movq	$0, 6360(%rsp)
.L19887:
	movq	$0, 6368(%rsp)
.L6796:
	cmpl	$64, %esi
	jbe	.L6799
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L19888:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L6794
	cmpl	$63, %esi
	jbe	.L6803
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L19890:
	movq	%rax, (%r9)
.L6794:
	movl	$1, 1488(%rsp)
	jmp	.L6773
.L6803:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L19889:
	movq	%rax, (%rbx)
	jmp	.L6794
.L6799:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L19888
.L6795:
	cmpq	$63, %r8
	jle	.L6797
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 6360(%rsp)
	jmp	.L19887
.L6797:
	movl	$63, %eax
	movl	%r8d, %ecx
	movq	%r11, %rdi
	subl	%r8d, %eax
	salq	%cl, %r10
	movl	%r8d, %edx
	movl	%eax, %ecx
	shrq	%cl, %rdi
	movl	%edx, %ecx
	movq	%rdi, %r8
	salq	%cl, %r11
	shrq	$1, %r8
	movq	%r11, 6368(%rsp)
	orq	%r8, %r10
	movq	%r10, 6360(%rsp)
	jmp	.L6796
.L21988:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L6781
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L6782:
	cmpq	$127, %rdx
	jle	.L6783
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L6784:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L6787
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L6794
.L6787:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L6794
	cmpq	$63, %rax
	jle	.L6791
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L19890
.L6791:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L19889
.L6783:
	cmpq	$63, %rdx
	jle	.L6785
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L6784
.L6785:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L6784
.L6781:
	xorl	%edi, %edi
	jmp	.L6782
.L6778:
	negq	%r8
	jmp	.L6779
.L6806:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	6352(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	6344(%rsp), %rbx
	testq	%r8, %r8
	js	.L21989
	cmpq	$127, %r8
	jle	.L6823
	movq	$0, 6344(%rsp)
.L19892:
	movq	$0, 6352(%rsp)
.L6824:
	cmpl	$64, %edi
	jbe	.L6827
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L19893:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L6822
	cmpl	$63, %edi
	jbe	.L6831
.L19895:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L6822:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	6328(%rsp), %rdi
	subq	%r8, %rsi
	leaq	6336(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L6835
	movq	$0, 6328(%rsp)
	movq	$0, 6336(%rsp)
.L6836:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L6839
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L6845:
	movq	6336(%rsp), %r8
	movq	6328(%rsp), %r11
	orq	6352(%rsp), %r8
	orq	6344(%rsp), %r11
	movq	%r8, 6368(%rsp)
	movq	%r11, 6360(%rsp)
	jmp	.L6773
.L6839:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L6845
	cmpq	$63, %rax
	jle	.L6843
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L6845
.L6843:
	movl	%r9d, %ecx
	movq	%rdx, (%rdi)
	movq	$-1, %r9
	subl	%esi, %ecx
	salq	%cl, %r9
	salq	%cl, %rdx
	notq	%r9
	andq	(%r8), %r9
	orq	%rdx, %r9
	movq	%r9, (%r8)
	jmp	.L6845
.L6835:
	cmpq	$63, %rsi
	jle	.L6837
	leal	-64(%rsi), %ecx
	movq	$0, 6328(%rsp)
	shrq	%cl, %r10
	movq	%r10, 6336(%rsp)
	jmp	.L6836
.L6837:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 6328(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 6336(%rsp)
	jmp	.L6836
.L6831:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L19894:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L6822
.L6827:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L19893
.L6823:
	cmpq	$63, %r8
	jle	.L6825
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 6344(%rsp)
	jmp	.L19892
.L6825:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 6344(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 6352(%rsp)
	jmp	.L6824
.L21989:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L6811
	movq	$0, 6344(%rsp)
	movq	$0, 6352(%rsp)
.L6812:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L6815
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L6822
.L6815:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L6822
	cmpq	$63, %rax
	jle	.L6819
	subl	%esi, %edi
	jmp	.L19895
.L6819:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L19894
.L6811:
	cmpq	$63, %rsi
	jle	.L6813
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 6344(%rsp)
	shrq	%cl, %rax
.L19891:
	movq	%rax, 6352(%rsp)
	jmp	.L6812
.L6813:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 6344(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L19891
.L6805:
	negq	%r8
	jmp	.L6806
.L6775:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 6368(%rsp)
	jmp	.L19902
.L6776:
	andq	%r8, %r11
	movq	%r11, 6368(%rsp)
.L19903:
	andq	%r9, %r10
	jmp	.L19902
.L6777:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 6368(%rsp)
	jmp	.L19903
.L21978:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1492(%rsp), %eax
	movl	%eax, 1492(%rsp)
	jmp	.L6772
.L21830:
	movq	new_const.1(%rip), %r11
	movl	$25, %edi
	movq	%r11, (%rax)
	movq	%r11, 1496(%rsp)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L6758
.L21829:
	movzbl	16(%rbp), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L6740
	cmpb	$15, %al
	je	.L6740
	movzwl	60(%rbp), %esi
	andl	$511, %esi
.L6743:
	cmpl	$128, %esi
	je	.L6745
	cmpl	$64, %esi
	jbe	.L6746
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	notq	%rbx
	andq	%rbx, 40(%rdx)
.L6745:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6749
	cmpb	$6, 16(%rax)
	jne	.L6736
	testb	$2, 62(%rax)
	je	.L6736
.L6749:
	cmpl	$128, %esi
	je	.L6751
	cmpl	$64, %esi
	jbe	.L6752
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19886:
	testl	$1, %eax 
	je	.L6751
	cmpl	$64, %esi
	jbe	.L6754
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L6751:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L6736
.L6754:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6751
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6751
.L6752:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19886
.L6746:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6745
	movq	$-1, %rbp
	movl	%esi, %ecx
	salq	%cl, %rbp
	notq	%rbp
	andq	%rbp, 32(%rdx)
	jmp	.L6745
.L6740:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6743
.L21828:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L6732
.L21361:
	movq	3592(%rsp), %rdi
	movq	544(%rsp), %rsi
	call	convert
	movq	7680(%rsp), %r13
	movl	7704(%rsp), %edx
	movl	7720(%rsp), %esi
	movq	%rax, 1568(%rsp)
	movq	%r13, 3312(%rsp)
	movl	%esi, 3324(%rsp)
	movq	8(%rax), %rdi
	movzbl	61(%rdi), %ecx
	movq	%rdi, 3304(%rsp)
	shrb	$1, %cl
	andl	$127, %ecx
	movzwl	mode_bitsize(%rcx,%rcx), %r8d
	cmpl	%r8d, 3324(%rsp)
	movl	%r8d, 3300(%rsp)
	je	.L4450
	testl	%edx, %edx
	jne	.L4450
	movl	3324(%rsp), %eax
	movl	$83, %r12d
	movq	1568(%rsp), %r14
	movq	sizetype_tab(%rip), %rbp
	decl	%eax
	cmpq	$0, size_htab.0(%rip)
	movslq	%eax,%rbx
	je	.L21990
.L4451:
	movq	new_const.1(%rip), %r15
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r15), %eax
	decq	%rcx
	movq	%rbx, 32(%r15)
	movq	%rcx, 40(%r15)
	movq	%rbp, 8(%r15)
	movq	%r15, %rdi
	movq	%r15, %r11
	movq	%r15, %rdx
	cmpb	$26, %al
	je	.L4455
	cmpb	$25, %al
	je	.L21991
.L4455:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %r8d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%r8b, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%al, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21992
	movq	%rdx, 1704(%rsp)
.L4477:
	movq	global_trees(%rip), %rsi
.L4480:
	movzbl	16(%r14), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L4481
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L4481
	movq	8(%r14), %r13
	movq	8(%rcx), %rbp
	movzbl	61(%r13), %ebx
	movzbl	61(%rbp), %r15d
	andb	$-2, %bl
	andb	$-2, %r15b
	cmpb	%r15b, %bl
	jne	.L4481
	movq	%rcx, %r14
	jmp	.L4480
.L4481:
	movq	global_trees(%rip), %rsi
.L4485:
	movq	1704(%rsp), %rdi
	movzbl	16(%rdi), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L4486
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L4486
	movq	8(%rdi), %r10
	movq	8(%rcx), %r8
	movzbl	61(%r10), %r9d
	movzbl	61(%r8), %r11d
	andb	$-2, %r9b
	andb	$-2, %r11b
	cmpb	%r11b, %r9b
	jne	.L4486
	movq	%rcx, 1704(%rsp)
	jmp	.L4485
.L4486:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L21993
	cmpb	$26, %al
	je	.L21994
	cmpb	$27, %al
	je	.L21995
	xorl	%ebp, %ebp
.L4697:
	cmpq	$0, size_htab.0(%rip)
	movq	sizetype_tab(%rip), %rbx
	je	.L21996
.L4747:
	movq	new_const.1(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rsi, %rdi
	movq	$1, 32(%rsi)
	movq	$0, 40(%rsi)
	movzbl	16(%rdi), %eax
	movq	%rbx, 8(%rsi)
	movq	%rsi, %r9
	cmpb	$26, %al
	je	.L4751
	cmpb	$25, %al
	je	.L21997
.L4751:
	movzbl	18(%r9), %r12d
	leal	0(,%r8,4), %r15d
	leal	0(,%r8,8), %eax
	movl	$1, %edx
	andb	$-5, %r12b
	orb	%r15b, %r12b
	movb	%r12b, 18(%r9)
	movzbl	18(%rdi), %r9d
	andb	$-9, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L21998
	movq	%rdx, %r14
.L4773:
	movq	global_trees(%rip), %rsi
.L4776:
	movzbl	16(%rbp), %edi
	subb	$114, %dil
	cmpb	$2, %dil
	ja	.L4777
	movq	32(%rbp), %rcx
	cmpq	%rsi, %rcx
	je	.L4777
	movq	8(%rbp), %r13
	movq	8(%rcx), %rbx
	movzbl	61(%r13), %r11d
	movzbl	61(%rbx), %r8d
	andb	$-2, %r11b
	andb	$-2, %r8b
	cmpb	%r8b, %r11b
	jne	.L4777
	movq	%rcx, %rbp
	jmp	.L4776
.L4777:
	movq	global_trees(%rip), %rsi
.L4781:
	movzbl	16(%r14), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L4782
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L4782
	movq	8(%r14), %r12
	movq	8(%rcx), %rdx
	movzbl	61(%r12), %r9d
	movzbl	61(%rdx), %r10d
	andb	$-2, %r9b
	andb	$-2, %r10b
	cmpb	%r10b, %r9b
	jne	.L4782
	movq	%rcx, %r14
	jmp	.L4781
.L4782:
	movzbl	16(%rbp), %eax
	cmpb	$25, %al
	je	.L21999
	cmpb	$26, %al
	je	.L22000
	cmpb	$27, %al
	je	.L22001
	xorl	%r12d, %r12d
.L4993:
	movq	3304(%rsp), %rbp
	testb	$32, 17(%rbp)
	jne	.L22002
.L5043:
	movl	3300(%rsp), %eax
	movq	sizetype_tab(%rip), %rbp
	decl	%eax
	cmpq	$0, size_htab.0(%rip)
	movslq	%eax,%rbx
	je	.L22003
.L5044:
	movq	new_const.1(%rip), %r11
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	decq	%rcx
	movq	%r11, %rdi
	movq	%rbx, 32(%r11)
	movq	%rcx, 40(%r11)
	movq	%rbp, 8(%r11)
	movq	%rdi, %rdx
	movzbl	16(%rdi), %eax
	cmpb	$26, %al
	je	.L5048
	cmpb	$25, %al
	je	.L22004
.L5048:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %eax
	leal	0(,%r10,8), %r8d
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%al, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%r8b, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L22005
	movq	%rdx, 1640(%rsp)
.L5070:
	movq	global_trees(%rip), %rsi
.L5073:
	movzbl	16(%r12), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L5074
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L5074
	movq	8(%r12), %r13
	movq	8(%rcx), %r11
	movzbl	61(%r13), %r15d
	movzbl	61(%r11), %ebp
	andb	$-2, %r15b
	andb	$-2, %bpl
	cmpb	%bpl, %r15b
	jne	.L5074
	movq	%rcx, %r12
	jmp	.L5073
.L5074:
	movq	global_trees(%rip), %rsi
.L5078:
	movq	1640(%rsp), %rdi
	movzbl	16(%rdi), %ebx
	subb	$114, %bl
	cmpb	$2, %bl
	ja	.L5079
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L5079
	movq	8(%rdi), %r9
	movq	8(%rcx), %r8
	movzbl	61(%r9), %r10d
	movzbl	61(%r8), %r14d
	andb	$-2, %r10b
	andb	$-2, %r14b
	cmpb	%r14b, %r10b
	jne	.L5079
	movq	%rcx, 1640(%rsp)
	jmp	.L5078
.L5079:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L22006
	cmpb	$26, %al
	je	.L22007
	cmpb	$27, %al
	je	.L22008
	xorl	%r14d, %r14d
.L5290:
	movl	3324(%rsp), %r11d
	movq	sizetype_tab(%rip), %rbp
	subl	%r11d, 3300(%rsp)
	movl	3300(%rsp), %eax
	decl	%eax
	cmpq	$0, size_htab.0(%rip)
	movslq	%eax,%rbx
	je	.L22009
.L5340:
	movq	new_const.1(%rip), %r10
	movq	%rbx, %rcx
	notq	%rcx
	shrq	$63, %rcx
	decq	%rcx
	movq	%r10, %rdi
	movq	%rbx, 32(%r10)
	movq	%rcx, 40(%r10)
	movq	%rbp, 8(%r10)
	movq	%r10, %r11
	movzbl	16(%rdi), %eax
	movq	%r10, %rdx
	xorl	%r10d, %r10d
	cmpb	$26, %al
	je	.L5344
	cmpb	$25, %al
	je	.L22010
.L5344:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %r15d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%r15b, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r8d
	andb	$-9, %r8b
	orb	%al, %r8b
	movb	%r8b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L22011
	movq	%rdx, 1624(%rsp)
.L5366:
	movq	global_trees(%rip), %rsi
.L5369:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L5370
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L5370
	movq	8(%r14), %rbx
	movq	8(%rcx), %r10
	movzbl	61(%rbx), %r11d
	movzbl	61(%r10), %ebp
	andb	$-2, %r11b
	andb	$-2, %bpl
	cmpb	%bpl, %r11b
	jne	.L5370
	movq	%rcx, %r14
	jmp	.L5369
.L5370:
	movq	global_trees(%rip), %rsi
.L5374:
	movq	1624(%rsp), %rdi
	movzbl	16(%rdi), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L5375
	movq	32(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.L5375
	movq	8(%rdi), %r15
	movq	8(%rcx), %r9
	movzbl	61(%r15), %r8d
	movzbl	61(%r9), %r12d
	andb	$-2, %r8b
	andb	$-2, %r12b
	cmpb	%r12b, %r8b
	jne	.L5375
	movq	%rcx, 1624(%rsp)
	jmp	.L5374
.L5375:
	movzbl	16(%r14), %eax
	cmpb	$25, %al
	je	.L22012
	cmpb	$26, %al
	je	.L22013
	cmpb	$27, %al
	je	.L22014
	xorl	%r12d, %r12d
.L5586:
	cmpq	$0, 3312(%rsp)
	je	.L5636
	movq	1568(%rsp), %r10
	movq	3312(%rsp), %rsi
	movq	8(%r10), %rdi
	call	convert
	movq	global_trees(%rip), %rsi
	movq	%rax, %r14
.L5637:
	movzbl	16(%r12), %r8d
	subb	$114, %r8b
	cmpb	$2, %r8b
	ja	.L5638
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L5638
	movq	8(%r12), %rdi
	movq	8(%rcx), %r9
	movzbl	61(%rdi), %ebx
	movzbl	61(%r9), %r13d
	andb	$-2, %bl
	andb	$-2, %r13b
	cmpb	%r13b, %bl
	jne	.L5638
	movq	%rcx, %r12
	jmp	.L5637
.L5638:
	movq	global_trees(%rip), %rsi
.L5642:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L5643
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L5643
	movq	8(%r14), %r10
	movq	8(%rcx), %r15
	movzbl	61(%r10), %ebp
	movzbl	61(%r15), %r11d
	andb	$-2, %bpl
	andb	$-2, %r11b
	cmpb	%r11b, %bpl
	jne	.L5643
	movq	%rcx, %r14
	jmp	.L5642
.L5643:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L22015
	cmpb	$26, %al
	je	.L22016
	cmpb	$27, %al
	je	.L22017
	xorl	%ebx, %ebx
.L5854:
	movq	%rbx, %r12
.L5636:
	movq	3304(%rsp), %rbp
	testb	$32, 17(%rbp)
	jne	.L22018
.L5904:
	movq	global_trees(%rip), %rsi
.L5905:
	movq	1568(%rsp), %rdx
	movzbl	16(%rdx), %r10d
	subb	$114, %r10b
	cmpb	$2, %r10b
	ja	.L5906
	movq	32(%rdx), %rcx
	cmpq	%rsi, %rcx
	je	.L5906
	movq	8(%rdx), %rdi
	movq	8(%rcx), %r8
	movzbl	61(%rdi), %r13d
	movzbl	61(%r8), %r11d
	andb	$-2, %r13b
	andb	$-2, %r11b
	cmpb	%r11b, %r13b
	jne	.L5906
	movq	%rcx, 1568(%rsp)
	jmp	.L5905
.L5906:
	movq	global_trees(%rip), %rsi
.L5910:
	movzbl	16(%r12), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L5911
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L5911
	movq	8(%r12), %rbx
	movq	8(%rcx), %rdx
	movzbl	61(%rbx), %r14d
	movzbl	61(%rdx), %r15d
	andb	$-2, %r14b
	andb	$-2, %r15b
	cmpb	%r15b, %r14b
	jne	.L5911
	movq	%rcx, %r12
	jmp	.L5910
.L5911:
	movq	1568(%rsp), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$25, %al
	je	.L22019
	cmpb	$26, %al
	je	.L22020
	cmpb	$27, %al
	je	.L22021
	xorl	%ebx, %ebx
.L6122:
	movq	3304(%rsp), %rdi
	movq	%rbx, %rsi
	call	convert
	movq	%rax, 1568(%rsp)
.L4450:
	cmpq	$0, size_htab.0(%rip)
	movl	$82, %r12d
	movq	sizetype_tab(%rip), %rbx
	je	.L22022
.L6166:
	movq	new_const.1(%rip), %rsi
	movq	3640(%rsp), %rdi
	xorl	%r10d, %r10d
	movzbl	16(%rsi), %eax
	movq	%rdi, %rcx
	movq	%rdi, 32(%rsi)
	notq	%rcx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %r11
	shrq	$63, %rcx
	movq	%rsi, %rdi
	movq	%rsi, %rdx
	decq	%rcx
	cmpb	$26, %al
	movq	%rcx, 40(%rsi)
	je	.L6170
	cmpb	$25, %al
	je	.L22023
.L6170:
	movzbl	18(%r11), %r14d
	leal	0(,%r10,4), %r9d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r14b
	orb	%r9b, %r14b
	movb	%r14b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L22024
	movq	%rdx, %r14
.L6192:
	movq	global_trees(%rip), %rsi
.L6195:
	movq	1568(%rsp), %rbx
	movzbl	16(%rbx), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L6196
	movq	32(%rbx), %rcx
	cmpq	%rsi, %rcx
	je	.L6196
	movq	8(%rbx), %r15
	movq	8(%rcx), %rdi
	movzbl	61(%r15), %ebp
	movzbl	61(%rdi), %r11d
	andb	$-2, %bpl
	andb	$-2, %r11b
	cmpb	%r11b, %bpl
	jne	.L6196
	movq	%rcx, 1568(%rsp)
	jmp	.L6195
.L6196:
	movq	global_trees(%rip), %rsi
.L6200:
	movzbl	16(%r14), %r13d
	subb	$114, %r13b
	cmpb	$2, %r13b
	ja	.L6201
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L6201
	movq	8(%r14), %r9
	movq	8(%rcx), %r10
	movzbl	61(%r9), %r8d
	movzbl	61(%r10), %ebx
	andb	$-2, %r8b
	andb	$-2, %bl
	cmpb	%bl, %r8b
	jne	.L6201
	movq	%rcx, %r14
	jmp	.L6200
.L6201:
	movq	1568(%rsp), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$25, %al
	je	.L22025
	cmpb	$26, %al
	je	.L22026
	cmpb	$27, %al
	je	.L22027
	movq	$0, 544(%rsp)
.L6412:
	movq	3592(%rsp), %rsi
	movq	7688(%rsp), %rdx
	movl	$90, %edi
	movq	544(%rsp), %r12
	call	build1
	movq	%rax, %rdi
	call	fold
	movq	global_trees(%rip), %rsi
	movq	%rax, %r14
.L6463:
	movzbl	16(%r12), %ecx
	subb	$114, %cl
	cmpb	$2, %cl
	ja	.L6464
	movq	32(%r12), %rcx
	cmpq	%rsi, %rcx
	je	.L6464
	movq	8(%r12), %rbp
	movq	8(%rcx), %r13
	movzbl	61(%rbp), %edi
	movzbl	61(%r13), %ebx
	andb	$-2, %dil
	andb	$-2, %bl
	cmpb	%bl, %dil
	jne	.L6464
	movq	%rcx, %r12
	jmp	.L6463
.L6464:
	movq	global_trees(%rip), %rsi
.L6468:
	movzbl	16(%r14), %edx
	subb	$114, %dl
	cmpb	$2, %dl
	ja	.L6469
	movq	32(%r14), %rcx
	cmpq	%rsi, %rcx
	je	.L6469
	movq	8(%r14), %r8
	movq	8(%rcx), %r9
	movzbl	61(%r8), %r11d
	movzbl	61(%r9), %r10d
	andb	$-2, %r11b
	andb	$-2, %r10b
	cmpb	%r10b, %r11b
	jne	.L6469
	movq	%rcx, %r14
	jmp	.L6468
.L6469:
	movzbl	16(%r12), %eax
	cmpb	$25, %al
	je	.L22028
	cmpb	$26, %al
	je	.L22029
	cmpb	$27, %al
	je	.L22030
	xorl	%ebx, %ebx
.L6680:
	movq	%rbx, %rdi
	call	integer_zerop
	testl	%eax, %eax
	jne	.L4447
	jmp	.L21183
.L22030:
	movq	8(%r12), %rsi
	movq	%rsi, 3176(%rsp)
	movl	$88, %esi
	movq	32(%r14), %rbp
	cmpl	$60, %esi
	movq	32(%r12), %r13
	movq	40(%r12), %r15
	movq	40(%r14), %r14
	je	.L6712
	cmpl	$60, %esi
	ja	.L6723
	cmpl	$59, %esi
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L20996:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3176(%rsp), %rdi
.L19884:
	movq	%rax, %rdx
	call	build_complex
.L19885:
	movq	%rax, %rbx
	jmp	.L6680
.L6723:
	movl	$88, %edi
	cmpl	$61, %edi
	je	.L6713
	cmpl	$70, %edi
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3168(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %rbx
	movq	%rax, %rsi
	movzbl	16(%rbx), %eax
	cmpb	$6, %al
	je	.L6717
	cmpb	$10, %al
	je	.L6717
	cmpb	$11, %al
	je	.L6717
	cmpb	$12, %al
	movl	$70, %edi
	je	.L6717
.L6716:
	movq	3168(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L6720
	cmpb	$10, %al
	je	.L6720
	cmpb	$11, %al
	je	.L6720
	cmpb	$12, %al
	movl	$70, %edi
	je	.L6720
.L6719:
	movq	3168(%rsp), %rdx
.L19883:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3176(%rsp), %rdi
	jmp	.L19884
.L6720:
	movl	$62, %edi
	jmp	.L6719
.L6717:
	movl	$62, %edi
	jmp	.L6716
.L6713:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L19883
.L6712:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L20996
.L22029:
	movq	32(%r12), %r15
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	movq	%r15, 18528(%rsp)
	movq	40(%r12), %rdx
	movq	%rdx, 18536(%rsp)
	movq	48(%r12), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r14), %rcx
	movq	%rcx, 18560(%rsp)
	movq	40(%r14), %r8
	movq	%r8, 18568(%rsp)
	movq	48(%r14), %rsi
	movq	%rdi, 16(%rsp)
	movq	%r15, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 18576(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L6680
	movq	18560(%rsp), %r10
	movq	18568(%rsp), %r11
	movq	%r14, %rbx
	movq	18576(%rsp), %r9
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r9, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L6680
	movq	18528(%rsp), %rsi
	movq	18560(%rsp), %rdi
	movq	8(%r12), %r8
	movq	18536(%rsp), %r15
	movl	$88, 14704(%rsp)
	movq	18544(%rsp), %rdx
	movq	18568(%rsp), %r13
	movq	18576(%rsp), %rbx
	movq	%rsi, 14720(%rsp)
	movq	%rdi, 14744(%rsp)
	leaq	14704(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r8, 14712(%rsp)
	movq	%r15, 14728(%rsp)
	movq	%rdx, 14736(%rsp)
	movq	%r13, 14752(%rsp)
	movq	%rbx, 14760(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L6685
	movq	14768(%rsp), %rbx
.L6686:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L6688
	cmpb	$25, %al
	je	.L22033
.L6688:
	movzbl	18(%r12), %r15d
	movzbl	18(%r14), %edx
	shrb	$3, %r15b
	shrb	$3, %dl
	andl	$1, %r15d
	andl	$1, %edx
	orb	%bpl, %r15b
	movzbl	18(%rbx), %ebp
	orb	%dl, %r15b
	salb	$3, %r15b
	andb	$-9, %bpl
	orb	%r15b, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %eax
	movzbl	18(%r12), %edi
	movzbl	18(%r14), %r12d
	shrb	$3, %al
	andb	$-5, %bpl
	shrb	$2, %dil
	orl	%eax, %edi
	shrb	$2, %r12b
	orl	%r12d, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L6680
.L22033:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L6692
	cmpb	$15, %al
	je	.L6692
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L6695:
	cmpl	$128, %esi
	je	.L6697
	cmpl	$64, %esi
	jbe	.L6698
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 40(%rdx)
.L6697:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6701
	cmpb	$6, 16(%rax)
	jne	.L6688
	testb	$2, 62(%rax)
	je	.L6688
.L6701:
	cmpl	$128, %esi
	je	.L6703
	cmpl	$64, %esi
	jbe	.L6704
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19882:
	testl	$1, %eax 
	je	.L6703
	cmpl	$64, %esi
	jbe	.L6706
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	orq	%r10, 40(%rdx)
.L6703:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r13
	orq	%rdi, %r13
	orq	%r8, %r13
	setne	%cl
	movzbl	%cl, %ebp
	jmp	.L6688
.L6706:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6703
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6703
.L6704:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19882
.L6698:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6697
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L6697
.L6692:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6695
.L6685:
	movq	%r12, %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L6686
.L22028:
	movq	8(%r12), %r13
	movl	$1, %r15d
	movl	$0, 1532(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L22034
.L6474:
	movl	$88, %eax
	movl	$0, 1504(%rsp)
	movl	$0, 1528(%rsp)
	subl	$59, %eax
	movq	32(%r12), %r11
	movq	40(%r12), %r10
	cmpl	$30, %eax
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	ja	.L18929
	mov	%eax, %ecx
	jmp	*.L6615(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L6615:
	.quad	.L6549
	.quad	.L6552
	.quad	.L6558
	.quad	.L6591
	.quad	.L6591
	.quad	.L6591
	.quad	.L6594
	.quad	.L6600
	.quad	.L6600
	.quad	.L6600
	.quad	.L6603
	.quad	.L18929
	.quad	.L6591
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L6605
	.quad	.L6605
	.quad	.L18929
	.quad	.L18929
	.quad	.L6481
	.quad	.L6480
	.quad	.L6508
	.quad	.L6507
	.quad	.L6476
	.quad	.L6477
	.quad	.L6478
	.quad	.L6479
	.text
.L6476:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6432(%rsp)
.L19877:
	movq	%r10, 6424(%rsp)
.L6475:
	movl	1532(%rsp), %eax
	testl	%eax, %eax
	je	.L6616
	movq	6424(%rsp), %rax
	testq	%rax, %rax
	jne	.L6618
	cmpq	$0, 6432(%rsp)
	js	.L6618
.L6617:
	movl	1504(%rsp), %eax
	testl	%eax, %eax
	jne	.L6616
	testb	$8, 18(%r12)
	jne	.L6616
	testb	$8, 18(%r14)
	jne	.L6616
	cmpq	$0, size_htab.0(%rip)
	movq	6432(%rsp), %rbx
	je	.L22035
.L6619:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L6623
	cmpb	$25, %al
	je	.L22036
.L6623:
	movzbl	18(%r11), %esi
	leal	0(,%r10,4), %ecx
	leal	0(,%r10,8), %r9d
	movl	$1, %edx
	andb	$-5, %sil
	orb	%cl, %sil
	movb	%sil, 18(%r11)
	movzbl	18(%rdi), %r11d
	andb	$-9, %r11b
	orb	%r9b, %r11b
	movb	%r11b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19885
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L6680
.L22036:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L6627
	cmpb	$15, %al
	je	.L6627
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L6630:
	cmpl	$128, %esi
	je	.L6632
	cmpl	$64, %esi
	jbe	.L6633
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L6632:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6636
	cmpb	$6, 16(%rax)
	jne	.L6623
	testb	$2, 62(%rax)
	je	.L6623
.L6636:
	cmpl	$128, %esi
	je	.L6638
	cmpl	$64, %esi
	jbe	.L6639
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19879:
	testl	$1, %eax 
	je	.L6638
	cmpl	$64, %esi
	jbe	.L6641
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L6638:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L6623
.L6641:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6638
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6638
.L6639:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19879
.L6633:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6632
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L6632
.L6627:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6630
.L22035:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L6619
.L6616:
	movq	6432(%rsp), %rdi
	movq	6424(%rsp), %rsi
	call	build_int_2_wide
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	8(%r12), %r13
	movq	%rax, %rdi
	movq	%r13, 8(%rax)
	movzbl	18(%r14), %edx
	movzbl	18(%r12), %ebx
	shrb	$3, %dl
	shrb	$3, %bl
	andl	%ebx, %r11d
	movl	%edx, %ebx
	andl	$1, %ebx
	testl	%r10d, %r10d
	je	.L6649
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L6652
	movl	1532(%rsp), %eax
	testl	%eax, %eax
	je	.L6651
.L6652:
	movl	1504(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmovne	%eax, %edx
.L6651:
	movl	%edx, %eax
.L19881:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1532(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L6678
	testb	$8, %dl
	jne	.L6678
	movq	6424(%rsp), %r11
	cmpq	%r11, 40(%rdi)
	je	.L22037
.L6679:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L6678:
	movzbl	18(%rdi), %ebx
	movzbl	18(%r12), %r13d
	movzbl	18(%r14), %r12d
	movl	%ebx, %eax
	shrb	$2, %r13b
	andb	$-5, %bl
	shrb	$3, %al
	shrb	$2, %r12b
	orl	%eax, %r13d
	orl	%r12d, %r13d
	andb	$1, %r13b
	salb	$2, %r13b
	orb	%r13b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, %rbx
	jmp	.L6680
.L22037:
	movq	6432(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L6679
	jmp	.L6678
.L6649:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L6655
	movl	1532(%rsp), %eax
	testl	%eax, %eax
	je	.L6654
.L6655:
	movl	1504(%rsp), %r15d
	movl	$1, %r10d
	movl	$0, %eax
	testl	%r15d, %r15d
	cmove	%eax, %r10d
.L6654:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L6657
	cmpb	$25, %al
	je	.L22038
.L6657:
	testl	%r10d, %r10d
	je	.L6653
	movl	1528(%rsp), %r9d
	movl	$1, %eax
	testl	%r9d, %r9d
	cmove	%eax, %ebp
.L6653:
	movl	%ebp, %eax
	jmp	.L19881
.L22038:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L6661
	cmpb	$15, %al
	je	.L6661
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L6664:
	cmpl	$128, %esi
	je	.L6666
	cmpl	$64, %esi
	jbe	.L6667
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L6666:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6670
	cmpb	$6, 16(%rax)
	jne	.L6657
	testb	$2, 62(%rax)
	je	.L6657
.L6670:
	cmpl	$128, %esi
	je	.L6672
	cmpl	$64, %esi
	jbe	.L6673
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19880:
	testl	$1, %eax 
	je	.L6672
	cmpl	$64, %esi
	jbe	.L6675
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L6672:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L6657
.L6675:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6672
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6672
.L6673:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19880
.L6667:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6666
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L6666
.L6661:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6664
.L6618:
	cmpq	$-1, %rax
	jne	.L6616
	cmpq	$0, 6432(%rsp)
	jns	.L6616
	jmp	.L6617
.L6549:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 6432(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 6424(%rsp)
	andq	%r10, %r9
.L19876:
	shrq	$63, %r9
	movl	%r9d, 1504(%rsp)
	jmp	.L6475
.L6552:
	testq	%r8, %r8
	jne	.L6553
	movq	%r9, %rax
	movq	$0, 6432(%rsp)
	negq	%rax
.L19871:
	movq	%rax, 6424(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	6432(%rsp), %rdx
	addq	6424(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rbx
	movq	%rdx, 6432(%rsp)
	cmovb	%rbx, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 6424(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L19876
.L6553:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6432(%rsp)
	notq	%rax
	jmp	.L19871
.L6558:
	movq	%r11, %rdi
	movq	%r11, %rcx
	movq	%r10, %rbx
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rdi, 14880(%rsp)
	movq	%rcx, 14888(%rsp)
	movq	%r8, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%r9, %rcx
	shrq	$32, %rsi
	andl	$4294967295, %ebx
	shrq	$32, %rdx
	andl	$4294967295, %ebp
	andl	$4294967295, %edi
	shrq	$32, %rcx
	movq	%rsi, 14856(%rsp)
	movq	%rbx, 14896(%rsp)
	movq	%rdx, 14904(%rsp)
	movq	%rbp, 14848(%rsp)
	movq	%rdi, 14864(%rsp)
	movq	%rcx, 14872(%rsp)
	movq	$0, 14784(%rsp)
	movq	$0, 14792(%rsp)
	movq	$0, 14800(%rsp)
	movq	$0, 14808(%rsp)
	movq	$0, 14816(%rsp)
	movq	$0, 14824(%rsp)
	movq	$0, 14832(%rsp)
	movq	$0, 14840(%rsp)
	xorl	%esi, %esi
.L6570:
	movslq	%esi,%rbx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	14880(%rsp,%rbx,8), %rbp
	xorl	%ebx, %ebx
.L6569:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	14848(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	14784(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 14784(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L6569
	movslq	%esi,%rbp
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 14816(%rsp,%rbp,8)
	jle	.L6570
	movq	14792(%rsp), %rdx
	movq	14808(%rsp), %rsi
	movq	14824(%rsp), %rax
	movq	14840(%rsp), %rcx
	salq	$32, %rdx
	salq	$32, %rsi
	addq	14784(%rsp), %rdx
	addq	14800(%rsp), %rsi
	salq	$32, %rax
	salq	$32, %rcx
	addq	14816(%rsp), %rax
	addq	14832(%rsp), %rcx
	testq	%r10, %r10
	movq	%rdx, 6432(%rsp)
	movq	%rsi, 6424(%rsp)
	js	.L22039
.L6573:
	testq	%r9, %r9
	js	.L22040
.L6579:
	cmpq	$0, 6424(%rsp)
	js	.L22041
	orq	%rcx, %rax
.L20995:
	setne	%r10b
	movzbl	%r10b, %eax
.L19875:
	movl	%eax, 1504(%rsp)
	jmp	.L6475
.L22041:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L20995
.L22040:
	testq	%r11, %r11
	jne	.L6580
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L6581:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L6579
.L6580:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L6581
.L22039:
	testq	%r8, %r8
	jne	.L6574
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L6575:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L6573
.L6574:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L6575
.L6594:
	testq	%r9, %r9
	jne	.L6595
	cmpq	$1, %r8
	je	.L19874
.L6595:
	cmpq	%r8, %r11
	je	.L22042
.L6596:
	leaq	6432(%rsp), %rbx
	leaq	6424(%rsp), %rdi
	leaq	6384(%rsp), %rcx
	leaq	6376(%rsp), %rax
	movq	%rbx, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
.L19872:
	movl	$88, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L19875
.L22042:
	cmpq	%r9, %r10
	jne	.L6596
	testq	%r8, %r8
	jne	.L6597
	testq	%r9, %r9
	je	.L6596
.L6597:
	movq	$1, 6432(%rsp)
.L19873:
	movq	$0, 6424(%rsp)
	jmp	.L6475
.L19874:
	movq	%r11, 6432(%rsp)
	jmp	.L19877
.L6600:
	testq	%r9, %r9
	jne	.L6603
	testq	%r8, %r8
	jle	.L6603
	testb	$4, 18(%r12)
	jne	.L6603
	testb	$4, 18(%r14)
	jne	.L6603
	testq	%r10, %r10
	jne	.L6603
	testq	%r11, %r11
	js	.L6603
	movl	$88, %edx
	leaq	-1(%r8,%r11), %rbp
	cmpl	$67, %edx
	cmove	%rbp, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 6432(%rsp)
	jmp	.L19873
.L6603:
	leaq	6384(%rsp), %rdi
	leaq	6376(%rsp), %rcx
	leaq	6432(%rsp), %rsi
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	6424(%rsp), %rax
	jmp	.L19872
.L6591:
	testq	%r9, %r9
	jne	.L6595
	testq	%r8, %r8
	jle	.L6594
	testb	$4, 18(%r12)
	jne	.L6594
	testb	$4, 18(%r14)
	jne	.L6594
	testq	%r10, %r10
	jne	.L6594
	testq	%r11, %r11
	js	.L6594
	movl	$88, %eax
	leaq	-1(%r8,%r11), %r9
	cmpl	$63, %eax
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 6432(%rsp)
	jmp	.L19873
.L6605:
	testl	%r15d, %r15d
	je	.L6606
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L6611
.L21174:
	cmpq	%r9, %r10
	je	.L22043
.L6610:
	movq	%rax, 6432(%rsp)
	xorl	%ebx, %ebx
	movl	$88, %eax
	cmpl	$78, %eax
	sete	%bl
	cmpq	%rbx, 6432(%rsp)
	je	.L19874
	movq	%r8, 6432(%rsp)
	movq	%r9, 6424(%rsp)
	jmp	.L6475
.L22043:
	cmpq	%r8, %r11
	jae	.L6610
.L6611:
	movl	$1, %eax
	jmp	.L6610
.L6606:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L6611
	jmp	.L21174
.L6481:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	6432(%rsp), %rbx
	leaq	6424(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L22044
	cmpq	$127, %r8
	jle	.L6497
	movq	$0, 6424(%rsp)
.L19863:
	movq	$0, 6432(%rsp)
.L6498:
	cmpl	$64, %esi
	jbe	.L6501
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L19864:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L6496
	cmpl	$63, %esi
	jbe	.L6505
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L19866:
	movq	%rax, (%r9)
.L6496:
	movl	$1, 1528(%rsp)
	jmp	.L6475
.L6505:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L19865:
	movq	%rax, (%rbx)
	jmp	.L6496
.L6501:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L19864
.L6497:
	cmpq	$63, %r8
	jle	.L6499
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 6424(%rsp)
	jmp	.L19863
.L6499:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 6432(%rsp)
	orq	%rdi, %r10
	movq	%r10, 6424(%rsp)
	jmp	.L6498
.L22044:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L6483
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L6484:
	cmpq	$127, %rdx
	jle	.L6485
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L6486:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L6489
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L6496
.L6489:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L6496
	cmpq	$63, %rax
	jle	.L6493
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L19866
.L6493:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L19865
.L6485:
	cmpq	$63, %rdx
	jle	.L6487
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L6486
.L6487:
	movl	%edx, %ecx
	movq	%r10, %r8
	shrq	%cl, %r8
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%r8, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rbp
	orq	%rbp, %r11
	movq	%r11, (%rbx)
	jmp	.L6486
.L6483:
	xorl	%edi, %edi
	jmp	.L6484
.L6480:
	negq	%r8
	jmp	.L6481
.L6508:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	6416(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	6408(%rsp), %rbx
	testq	%r8, %r8
	js	.L22045
	cmpq	$127, %r8
	jle	.L6525
	movq	$0, 6408(%rsp)
.L19867:
	movq	$0, 6416(%rsp)
.L6526:
	cmpl	$64, %edi
	jbe	.L6529
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L19868:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L6524
	cmpl	$63, %edi
	jbe	.L6533
.L19870:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L6524:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	6392(%rsp), %rdi
	subq	%r8, %rsi
	leaq	6400(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L6537
	movq	$0, 6392(%rsp)
	movq	$0, 6400(%rsp)
.L6538:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L6541
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L6547:
	movq	6400(%rsp), %rdi
	movq	6392(%rsp), %r9
	orq	6416(%rsp), %rdi
	orq	6408(%rsp), %r9
	movq	%rdi, 6432(%rsp)
	movq	%r9, 6424(%rsp)
	jmp	.L6475
.L6541:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L6547
	cmpq	$63, %rax
	jle	.L6545
	subl	%esi, %r9d
	movq	$-1, %r10
	leal	-64(%r9), %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%rdi), %r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	jmp	.L6547
.L6545:
	movl	%r9d, %ecx
	movq	$-1, %r11
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%r8), %r11
	orq	%rdx, %r11
	movq	%r11, (%r8)
	jmp	.L6547
.L6537:
	cmpq	$63, %rsi
	jle	.L6539
	leal	-64(%rsi), %ecx
	movq	$0, 6392(%rsp)
	shrq	%cl, %r10
	movq	%r10, 6400(%rsp)
	jmp	.L6538
.L6539:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 6392(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 6400(%rsp)
	jmp	.L6538
.L6533:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L19869:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L6524
.L6529:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L19868
.L6525:
	cmpq	$63, %r8
	jle	.L6527
	leal	-64(%r8), %ecx
	movq	%r11, %rax
	salq	%cl, %rax
	movq	%rax, 6408(%rsp)
	jmp	.L19867
.L6527:
	movl	%r8d, %ecx
	movq	%r10, %rdx
	movq	%r11, %rax
	salq	%cl, %rdx
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rax
	movl	%r8d, %ecx
	shrq	$1, %rax
	orq	%rax, %rdx
	movq	%rdx, 6408(%rsp)
	movq	%r11, %rdx
	salq	%cl, %rdx
	movq	%rdx, 6416(%rsp)
	jmp	.L6526
.L22045:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L6513
	movq	$0, 6408(%rsp)
	movq	$0, 6416(%rsp)
.L6514:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L6517
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L6524
.L6517:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L6524
	cmpq	$63, %rax
	jle	.L6521
	subl	%esi, %edi
	jmp	.L19870
.L6521:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L19869
.L6513:
	cmpq	$63, %rsi
	jle	.L6515
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 6408(%rsp)
	shrq	%cl, %rax
	movq	%rax, 6416(%rsp)
	jmp	.L6514
.L6515:
	movl	%esi, %ecx
	movq	%r10, %rax
	shrq	%cl, %rax
	movq	%rax, 6408(%rsp)
	movq	%r11, %rax
	shrq	%cl, %rax
	movl	$63, %ecx
	movq	%rax, 56(%rsp)
	subl	%esi, %ecx
	movq	%r10, %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	addq	%rcx, %rcx
	orq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 6416(%rsp)
	jmp	.L6514
.L6507:
	negq	%r8
	jmp	.L6508
.L6477:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 6432(%rsp)
	jmp	.L19877
.L6478:
	andq	%r8, %r11
	movq	%r11, 6432(%rsp)
.L19878:
	andq	%r9, %r10
	jmp	.L19877
.L6479:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 6432(%rsp)
	jmp	.L19878
.L22034:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1532(%rsp), %eax
	movl	%eax, 1532(%rsp)
	jmp	.L6474
.L22027:
	movq	1568(%rsp), %r11
	movq	1568(%rsp), %r10
	cmpl	$60, %r12d
	movq	8(%r11), %rax
	movq	%rax, 3192(%rsp)
	movq	32(%r14), %rbp
	movq	40(%r10), %r15
	movq	32(%r10), %r13
	movq	40(%r14), %r14
	je	.L6444
	cmpl	$60, %r12d
	ja	.L6461
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L20994:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3192(%rsp), %rdi
.L19861:
	movq	%rax, %rdx
	call	build_complex
.L19862:
	movq	%rax, 544(%rsp)
	jmp	.L6412
.L6461:
	cmpl	$61, %r12d
	je	.L6445
	cmpl	$70, %r12d
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3184(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L6455
	cmpb	$10, %al
	je	.L6455
	cmpb	$11, %al
	je	.L6455
	cmpb	$12, %al
	movl	$70, %edi
	je	.L6455
.L6454:
	movq	3184(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movl	$61, %edi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r15
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r8
	movq	%rax, %rsi
	movzbl	16(%r8), %eax
	cmpb	$6, %al
	je	.L6458
	cmpb	$10, %al
	je	.L6458
	cmpb	$11, %al
	je	.L6458
	cmpb	$12, %al
	movl	$70, %edi
	je	.L6458
.L6457:
	movq	3184(%rsp), %rdx
.L19860:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3192(%rsp), %rdi
	jmp	.L19861
.L6458:
	movl	$62, %edi
	jmp	.L6457
.L6455:
	movl	$62, %edi
	jmp	.L6454
.L6445:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L19860
.L6444:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L20994
.L22026:
	movq	1568(%rsp), %r10
	xorl	%ebx, %ebx
	movq	32(%r10), %r15
	movq	%r15, 18528(%rsp)
	movq	40(%r10), %r13
	movq	%r13, 18536(%rsp)
	movq	48(%r10), %r9
	movq	%r9, 18544(%rsp)
	movq	32(%r14), %rbp
	movq	%rbp, 18560(%rsp)
	movq	40(%r14), %rsi
	movq	%rsi, 18568(%rsp)
	movq	48(%r14), %rdx
	movq	%r9, 16(%rsp)
	movq	%r15, (%rsp)
	movq	%r13, 8(%rsp)
	movq	%rdx, 18576(%rsp)
	call	target_isnan
	movq	1568(%rsp), %rdi
	testl	%eax, %eax
	movq	%rdi, 544(%rsp)
	jne	.L6412
	movq	18560(%rsp), %rcx
	movq	18568(%rsp), %r11
	movq	18576(%rsp), %r8
	movq	%rcx, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r8, 16(%rsp)
	call	target_isnan
	movq	%r14, 544(%rsp)
	testl	%eax, %eax
	jne	.L6412
	movq	1568(%rsp), %rax
	movq	18528(%rsp), %rsi
	movq	18576(%rsp), %rdi
	movq	18536(%rsp), %rdx
	movq	18544(%rsp), %r15
	movq	18560(%rsp), %r13
	movq	8(%rax), %rbp
	movq	18568(%rsp), %r9
	movl	%r12d, 14912(%rsp)
	movq	%rsi, 14928(%rsp)
	movq	%rdi, 14968(%rsp)
	movq	%rdx, 14936(%rsp)
	leaq	14912(%rsp), %rsi
	movl	$const_binop_1, %edi
	movq	%r15, 14944(%rsp)
	movq	%rbp, 14920(%rsp)
	movq	%r13, 14952(%rsp)
	movq	%r9, 14960(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L6417
	movq	14976(%rsp), %r12
	movq	%r12, 544(%rsp)
.L6418:
	movq	544(%rsp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L6420
	cmpb	$25, %al
	je	.L22048
.L6420:
	movq	1568(%rsp), %r12
	movzbl	18(%r14), %edx
	movzbl	18(%r12), %esi
	shrb	$3, %dl
	andl	$1, %edx
	shrb	$3, %sil
	andl	$1, %esi
	orb	%bl, %sil
	movq	544(%rsp), %rbx
	orb	%dl, %sil
	salb	$3, %sil
	movzbl	18(%rbx), %edi
	andb	$-9, %dil
	orb	%sil, %dil
	movb	%dil, 18(%rbx)
	movl	%edi, %ebp
	movzbl	18(%r14), %r15d
	movzbl	18(%r12), %r13d
	shrb	$3, %bpl
	andb	$-5, %dil
	shrb	$2, %r15b
	shrb	$2, %r13b
	orl	%ebp, %r13d
	orl	%r15d, %r13d
	andb	$1, %r13b
	salb	$2, %r13b
	orb	%r13b, %dil
	movb	%dil, 18(%rbx)
	jmp	.L6412
.L22048:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %rdi
	movq	40(%rdx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L6424
	cmpb	$15, %al
	je	.L6424
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L6427:
	cmpl	$128, %esi
	je	.L6429
	cmpl	$64, %esi
	jbe	.L6430
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 40(%rdx)
.L6429:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6433
	cmpb	$6, 16(%rax)
	jne	.L6420
	testb	$2, 62(%rax)
	je	.L6420
.L6433:
	cmpl	$128, %esi
	je	.L6435
	cmpl	$64, %esi
	jbe	.L6436
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19859:
	testl	$1, %eax 
	je	.L6435
	cmpl	$64, %esi
	jbe	.L6438
	leal	-64(%rsi), %ecx
	movq	$-1, %r9
	salq	%cl, %r9
	orq	%r9, 40(%rdx)
.L6435:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebx,%rcx
	orq	%rdi, %rcx
	orq	%r8, %rcx
	setne	%r8b
	movzbl	%r8b, %ebx
	jmp	.L6420
.L6438:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6435
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6435
.L6436:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19859
.L6430:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6429
	movq	$-1, %r11
	movl	%esi, %ecx
	salq	%cl, %r11
	notq	%r11
	andq	%r11, 32(%rdx)
	jmp	.L6429
.L6424:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6427
.L6417:
	movq	1568(%rsp), %rdi
	movl	$1, %ebx
	call	copy_node
	movq	%rax, 544(%rsp)
	jmp	.L6418
.L22025:
	movq	8(%rsi), %r13
	movl	$1, %r15d
	movl	$0, 1564(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r15d
	cmpb	$6, 16(%r13)
	je	.L22049
.L6206:
	movq	1568(%rsp), %rcx
	leal	-59(%r12), %eax
	movl	$0, 1536(%rsp)
	cmpl	$30, %eax
	movl	$0, 1560(%rsp)
	movq	40(%r14), %r9
	movq	32(%r14), %r8
	movq	32(%rcx), %r11
	movq	40(%rcx), %r10
	ja	.L18929
	mov	%eax, %edx
	jmp	*.L6347(,%rdx,8)
	.section	.rodata
	.align 8
	.align 4
.L6347:
	.quad	.L6281
	.quad	.L6284
	.quad	.L6290
	.quad	.L6323
	.quad	.L6323
	.quad	.L6323
	.quad	.L6326
	.quad	.L6332
	.quad	.L6332
	.quad	.L6332
	.quad	.L6335
	.quad	.L18929
	.quad	.L6323
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L6337
	.quad	.L6337
	.quad	.L18929
	.quad	.L18929
	.quad	.L6213
	.quad	.L6212
	.quad	.L6240
	.quad	.L6239
	.quad	.L6208
	.quad	.L6209
	.quad	.L6210
	.quad	.L6211
	.text
.L6208:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6496(%rsp)
.L19854:
	movq	%r10, 6488(%rsp)
.L6207:
	movl	1564(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L6348
	movq	6488(%rsp), %rax
	testq	%rax, %rax
	jne	.L6350
	cmpq	$0, 6496(%rsp)
	js	.L6350
.L6349:
	movl	1536(%rsp), %r12d
	testl	%r12d, %r12d
	jne	.L6348
	movq	1568(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L6348
	testb	$8, 18(%r14)
	jne	.L6348
	cmpq	$0, size_htab.0(%rip)
	movq	6496(%rsp), %rbx
	je	.L22050
.L6351:
	movq	new_const.1(%rip), %r14
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r14), %eax
	decq	%rcx
	movq	%rbx, 32(%r14)
	movq	%rcx, 40(%r14)
	movq	%r13, 8(%r14)
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %rdx
	cmpb	$26, %al
	je	.L6355
	cmpb	$25, %al
	je	.L22051
.L6355:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %ebx
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%bl, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19862
	movq	new_const.1(%rip), %rdi
	movq	%rdi, 544(%rsp)
	movq	%rdi, (%rdx)
	movl	$25, %edi
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L6412
.L22051:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L6359
	cmpb	$15, %al
	je	.L6359
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L6362:
	cmpl	$128, %esi
	je	.L6364
	cmpl	$64, %esi
	jbe	.L6365
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L6364:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6368
	cmpb	$6, 16(%rax)
	jne	.L6355
	testb	$2, 62(%rax)
	je	.L6355
.L6368:
	cmpl	$128, %esi
	je	.L6370
	cmpl	$64, %esi
	jbe	.L6371
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19856:
	testl	$1, %eax 
	je	.L6370
	cmpl	$64, %esi
	jbe	.L6373
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L6370:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%cl
	movzbl	%cl, %r10d
	jmp	.L6355
.L6373:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6370
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6370
.L6371:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19856
.L6365:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6364
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L6364
.L6359:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6362
.L22050:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L6351
.L6348:
	movq	6496(%rsp), %rdi
	movq	6488(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	1568(%rsp), %r11
	movq	%rax, %rdi
	movq	8(%r11), %r13
	movq	%r13, 8(%rax)
	movzbl	18(%r14), %r8d
	movzbl	18(%r11), %r12d
	movl	$1, %r11d
	shrb	$3, %r8b
	shrb	$3, %r12b
	movl	%r8d, %ebx
	andl	%r12d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L6381
	xorl	%edx, %edx
	testl	%r15d, %r15d
	je	.L6384
	movl	1564(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L6383
.L6384:
	movl	1536(%rsp), %esi
	movl	$1, %eax
	testl	%esi, %esi
	cmovne	%eax, %edx
.L6383:
	movl	%edx, %eax
.L19858:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1564(%rsp), %eax
	testl	%eax, %eax
	je	.L6410
	testb	$8, %dl
	jne	.L6410
	movq	6488(%rsp), %rbp
	cmpq	%rbp, 40(%rdi)
	je	.L22052
.L6411:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L6410:
	movq	1568(%rsp), %rax
	movzbl	18(%rdi), %ebx
	movzbl	18(%r14), %r11d
	movzbl	18(%rax), %r8d
	movl	%ebx, %ecx
	andb	$-5, %bl
	shrb	$3, %cl
	shrb	$2, %r11b
	shrb	$2, %r8b
	orl	%ecx, %r8d
	orl	%r11d, %r8d
	andb	$1, %r8b
	salb	$2, %r8b
	orb	%r8b, %bl
	movb	%bl, 18(%rdi)
	movq	%rdi, 544(%rsp)
	jmp	.L6412
.L22052:
	movq	6496(%rsp), %r10
	cmpq	%r10, 32(%rdi)
	jne	.L6411
	jmp	.L6410
.L6381:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r15d, %r15d
	je	.L6387
	movl	1564(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L6386
.L6387:
	movl	1536(%rsp), %r9d
	movl	$1, %r10d
	movl	$0, %eax
	testl	%r9d, %r9d
	cmove	%eax, %r10d
.L6386:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L6389
	cmpb	$25, %al
	je	.L22053
.L6389:
	testl	%r10d, %r10d
	je	.L6385
	movl	1560(%rsp), %eax
	testl	%eax, %eax
	movl	$1, %eax
	cmove	%eax, %ebp
.L6385:
	movl	%ebp, %eax
	jmp	.L19858
.L22053:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L6393
	cmpb	$15, %al
	je	.L6393
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L6396:
	cmpl	$128, %esi
	je	.L6398
	cmpl	$64, %esi
	jbe	.L6399
	leal	-64(%rsi), %ecx
	movq	$-1, %r12
	salq	%cl, %r12
	notq	%r12
	andq	%r12, 40(%rdx)
.L6398:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6402
	cmpb	$6, 16(%rax)
	jne	.L6389
	testb	$2, 62(%rax)
	je	.L6389
.L6402:
	cmpl	$128, %esi
	je	.L6404
	cmpl	$64, %esi
	jbe	.L6405
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19857:
	testl	$1, %eax 
	je	.L6404
	cmpl	$64, %esi
	jbe	.L6407
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	orq	%r15, 40(%rdx)
.L6404:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rsi
	orq	%r8, %rsi
	orq	%r9, %rsi
	setne	%dl
	movzbl	%dl, %r10d
	jmp	.L6389
.L6407:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6404
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6404
.L6405:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19857
.L6399:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6398
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L6398
.L6393:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6396
.L6350:
	cmpq	$-1, %rax
	jne	.L6348
	cmpq	$0, 6496(%rsp)
	jns	.L6348
	jmp	.L6349
.L6281:
	leaq	(%r8,%r11), %rsi
	leaq	(%r9,%r10), %r8
	cmpq	%r11, %rsi
	leaq	1(%r8), %rax
	movq	%rsi, 6496(%rsp)
	cmovb	%rax, %r8
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r8, %r10 
	movq	%r8, 6488(%rsp)
	andq	%r10, %r9
.L19853:
	shrq	$63, %r9
	movl	%r9d, 1536(%rsp)
	jmp	.L6207
.L6284:
	testq	%r8, %r8
	jne	.L6285
	movq	%r9, %rax
	movq	$0, 6496(%rsp)
	negq	%rax
.L19848:
	movq	%rax, 6488(%rsp)
	movq	%r11, %rdx
	movq	%r10, %r12
	addq	6496(%rsp), %rdx
	addq	6488(%rsp), %r12
	cmpq	%r11, %rdx
	leaq	1(%r12), %rbp
	movq	%rdx, 6496(%rsp)
	cmovb	%rbp, %r12
	xorq	%r12, %r9 
	movq	%r12, 6488(%rsp)
	xorq	%r10, %r12 
	notq	%r9
	andq	%r12, %r9
	jmp	.L19853
.L6285:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6496(%rsp)
	notq	%rax
	jmp	.L19848
.L6290:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rbp
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rdx
	movq	%rbx, 15088(%rsp)
	movq	%rcx, 15096(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %ebp
	shrq	$32, %rdx
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 15056(%rsp)
	leaq	6488(%rsp), %r12
	movq	%rbp, 15104(%rsp)
	movq	%rdx, 15112(%rsp)
	movq	%rdi, 15064(%rsp)
	movq	%rbx, 15072(%rsp)
	movq	%rcx, 15080(%rsp)
	movq	$0, 14992(%rsp)
	movq	$0, 15000(%rsp)
	movq	$0, 15008(%rsp)
	movq	$0, 15016(%rsp)
	movq	$0, 15024(%rsp)
	movq	$0, 15032(%rsp)
	movq	$0, 15040(%rsp)
	movq	$0, 15048(%rsp)
	xorl	%esi, %esi
.L6302:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	15088(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L6301:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	15056(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	14992(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 14992(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L6301
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 15024(%rsp,%rdi,8)
	jle	.L6302
	movq	15000(%rsp), %rdx
	movq	15016(%rsp), %rsi
	salq	$32, %rdx
	salq	$32, %rsi
	addq	14992(%rsp), %rdx
	addq	15008(%rsp), %rsi
	movq	%rdx, 6496(%rsp)
	movq	%rsi, (%r12)
	movq	15048(%rsp), %rcx
	movq	15032(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
	addq	15040(%rsp), %rcx
	addq	15024(%rsp), %rax
	testq	%r10, %r10
	js	.L22054
.L6305:
	testq	%r9, %r9
	js	.L22055
.L6311:
	cmpq	$0, (%r12)
	js	.L22056
	orq	%rcx, %rax
.L20993:
	setne	%r11b
	movzbl	%r11b, %eax
.L19852:
	movl	%eax, 1536(%rsp)
	jmp	.L6207
.L22056:
	andq	%rcx, %rax
	cmpq	$-1, %rax
	jmp	.L20993
.L22055:
	testq	%r11, %r11
	jne	.L6312
	movq	%r10, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L6313:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L6311
.L6312:
	movq	%r11, %r8
	movq	%r10, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L6313
.L22054:
	testq	%r8, %r8
	jne	.L6306
	movq	%r9, %rdx
	xorl	%r8d, %r8d
	negq	%rdx
.L6307:
	addq	%rcx, %rdx
	leaq	(%rax,%r8), %rax
	leaq	1(%rdx), %rcx
	cmpq	%r8, %rax
	cmovae	%rdx, %rcx
	jmp	.L6305
.L6306:
	movq	%r9, %rdx
	negq	%r8
	notq	%rdx
	jmp	.L6307
.L6326:
	testq	%r9, %r9
	jne	.L6327
	cmpq	$1, %r8
	je	.L19851
.L6327:
	cmpq	%r8, %r11
	je	.L22057
.L6328:
	leaq	6496(%rsp), %rcx
	leaq	6488(%rsp), %rbx
	leaq	6448(%rsp), %rbp
	leaq	6440(%rsp), %rax
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
.L19849:
	movl	%r12d, %edi
	movl	%r15d, %esi
	movq	%r11, %rdx
	movq	%r10, %rcx
	movq	%rax, 24(%rsp)
	call	div_and_round_double
	jmp	.L19852
.L22057:
	cmpq	%r9, %r10
	jne	.L6328
	testq	%r8, %r8
	jne	.L6329
	testq	%r9, %r9
	je	.L6328
.L6329:
	movq	$1, 6496(%rsp)
.L19850:
	movq	$0, 6488(%rsp)
	jmp	.L6207
.L19851:
	movq	%r11, 6496(%rsp)
	jmp	.L19854
.L6332:
	testq	%r9, %r9
	jne	.L6335
	testq	%r8, %r8
	jle	.L6335
	movq	1568(%rsp), %rdi
	testb	$4, 18(%rdi)
	jne	.L6335
	testb	$4, 18(%r14)
	jne	.L6335
	testq	%r10, %r10
	jne	.L6335
	testq	%r11, %r11
	js	.L6335
	cmpl	$67, %r12d
	leaq	-1(%r8,%r11), %r9
	cmove	%r9, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rdx, 6496(%rsp)
	jmp	.L19850
.L6335:
	leaq	6448(%rsp), %rbp
	leaq	6440(%rsp), %rdx
	leaq	6496(%rsp), %rsi
	movq	%rbp, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	6488(%rsp), %rax
	jmp	.L19849
.L6323:
	testq	%r9, %r9
	jne	.L6327
	testq	%r8, %r8
	jle	.L6326
	movq	1568(%rsp), %rax
	testb	$4, 18(%rax)
	jne	.L6326
	testb	$4, 18(%r14)
	jne	.L6326
	testq	%r10, %r10
	jne	.L6326
	testq	%r11, %r11
	js	.L6326
	cmpl	$63, %r12d
	leaq	-1(%r8,%r11), %r10
	cmove	%r10, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r8
	movq	%rax, 6496(%rsp)
	jmp	.L19850
.L6337:
	testl	%r15d, %r15d
	je	.L6338
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jb	.L6343
.L21173:
	cmpq	%r9, %r10
	je	.L22058
.L6342:
	xorl	%ebx, %ebx
	movq	%rax, 6496(%rsp)
	cmpl	$78, %r12d
	sete	%bl
	cmpq	%rbx, 6496(%rsp)
	je	.L19851
	movq	%r8, 6496(%rsp)
	movq	%r9, 6488(%rsp)
	jmp	.L6207
.L22058:
	cmpq	%r8, %r11
	jae	.L6342
.L6343:
	movl	$1, %eax
	jmp	.L6342
.L6338:
	xorl	%eax, %eax
	cmpq	%r9, %r10
	jl	.L6343
	jmp	.L21173
.L6213:
	movzwl	60(%r13), %esi
	xorl	%eax, %eax
	leaq	6496(%rsp), %rbx
	leaq	6488(%rsp), %r9
	andl	$511, %esi
	testl	%r15d, %r15d
	sete	%al
	testq	%r8, %r8
	js	.L22059
	cmpq	$127, %r8
	jle	.L6229
	movq	$0, 6488(%rsp)
.L19839:
	movq	$0, 6496(%rsp)
.L6230:
	cmpl	$64, %esi
	jbe	.L6233
	movq	(%r9), %rdx
	leal	-65(%rsi), %ecx
	sarq	%cl, %rdx
.L19840:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %esi
	ja	.L6228
	cmpl	$63, %esi
	jbe	.L6237
	leal	-64(%rsi), %ecx
	movq	$-1, %rax
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%r9), %rax
	orq	%rdx, %rax
.L19842:
	movq	%rax, (%r9)
.L6228:
	movl	$1, 1560(%rsp)
	jmp	.L6207
.L6237:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%r9)
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdx, %rax
.L19841:
	movq	%rax, (%rbx)
	jmp	.L6228
.L6233:
	movq	(%rbx), %rdx
	leal	-1(%rsi), %ecx
	shrq	%cl, %rdx
	jmp	.L19840
.L6229:
	cmpq	$63, %r8
	jle	.L6231
	leal	-64(%r8), %ecx
	salq	%cl, %r11
	movq	%r11, 6488(%rsp)
	jmp	.L19839
.L6231:
	movl	$63, %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	subl	%r8d, %eax
	salq	%cl, %r10
	movq	%r11, %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movl	%edx, %ecx
	movq	%r8, %rdi
	salq	%cl, %r11
	shrq	$1, %rdi
	movq	%r11, 6496(%rsp)
	orq	%rdi, %r10
	movq	%r10, 6488(%rsp)
	jmp	.L6230
.L22059:
	movq	%r8, %rdx
	negq	%rdx
	testl	%eax, %eax
	je	.L6215
	movq	%r10, %rdi
	shrq	$63, %rdi
	negq	%rdi
.L6216:
	cmpq	$127, %rdx
	jle	.L6217
	movq	$0, (%r9)
	movq	$0, (%rbx)
.L6218:
	mov	%esi, %eax
	cmpq	%rax, %rdx
	jl	.L6221
	movq	%rdi, (%r9)
	movq	%rdi, (%rbx)
	jmp	.L6228
.L6221:
	subq	%rdx, %rax
	cmpq	$127, %rax
	jg	.L6228
	cmpq	$63, %rax
	jle	.L6225
	subl	%edx, %esi
	movq	$-1, %rax
	leal	-64(%rsi), %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%r9), %rax
	orq	%rdi, %rax
	jmp	.L19842
.L6225:
	movl	%esi, %ecx
	movq	$-1, %rax
	movq	%rdi, (%r9)
	subl	%edx, %ecx
	salq	%cl, %rax
	salq	%cl, %rdi
	notq	%rax
	andq	(%rbx), %rax
	orq	%rdi, %rax
	jmp	.L19841
.L6217:
	cmpq	$63, %rdx
	jle	.L6219
	leal	-64(%rdx), %ecx
	movq	$0, (%r9)
	shrq	%cl, %r10
	movq	%r10, (%rbx)
	jmp	.L6218
.L6219:
	movl	%edx, %ecx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%edx, %ecx
	movq	%rbp, (%r9)
	salq	%cl, %r10
	leaq	(%r10,%r10), %r12
	orq	%r12, %r11
	movq	%r11, (%rbx)
	jmp	.L6218
.L6215:
	xorl	%edi, %edi
	jmp	.L6216
.L6212:
	negq	%r8
	jmp	.L6213
.L6240:
	movzwl	60(%r13), %r9d
	movq	%r8, %rax
	leaq	6480(%rsp), %rbp
	cqto
	andl	$511, %r9d
	mov	%r9d, %esi
	movl	%r9d, %edi
	idivq	%rsi
	leaq	(%rsi,%rdx), %rbx
	cmpq	$-1, %rdx
	movq	%rdx, %r8
	cmovle	%rbx, %r8
	leaq	6472(%rsp), %rbx
	testq	%r8, %r8
	js	.L22060
	cmpq	$127, %r8
	jle	.L6257
	movq	$0, 6472(%rsp)
.L19844:
	movq	$0, 6480(%rsp)
.L6258:
	cmpl	$64, %edi
	jbe	.L6261
	movq	(%rbx), %rdx
	leal	-65(%rdi), %ecx
	sarq	%cl, %rdx
.L19845:
	andl	$1, %edx
	negq	%rdx
	cmpl	$127, %edi
	ja	.L6256
	cmpl	$63, %edi
	jbe	.L6265
.L19847:
	leal	-64(%rdi), %ecx
	movq	$-1, %rbp
	salq	%cl, %rbp
	salq	%cl, %rdx
	notq	%rbp
	andq	(%rbx), %rbp
	orq	%rdx, %rbp
	movq	%rbp, (%rbx)
.L6256:
	mov	%r9d, %esi
	xorl	%edx, %edx
	leaq	6456(%rsp), %rdi
	subq	%r8, %rsi
	leaq	6464(%rsp), %r8
	cmpq	$127, %rsi
	jle	.L6269
	movq	$0, 6456(%rsp)
	movq	$0, 6464(%rsp)
.L6270:
	mov	%r9d, %eax
	cmpq	%rax, %rsi
	jl	.L6273
	movq	%rdx, (%rdi)
	movq	%rdx, (%r8)
.L6279:
	movq	6464(%rsp), %rdi
	movq	6456(%rsp), %r9
	orq	6480(%rsp), %rdi
	orq	6472(%rsp), %r9
	movq	%rdi, 6496(%rsp)
	movq	%r9, 6488(%rsp)
	jmp	.L6207
.L6273:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L6279
	cmpq	$63, %rax
	jle	.L6277
	subl	%esi, %r9d
	movq	$-1, %r11
	leal	-64(%r9), %ecx
	salq	%cl, %r11
	salq	%cl, %rdx
	notq	%r11
	andq	(%rdi), %r11
	orq	%rdx, %r11
	movq	%r11, (%rdi)
	jmp	.L6279
.L6277:
	movl	%r9d, %ecx
	movq	$-1, %r10
	movq	%rdx, (%rdi)
	subl	%esi, %ecx
	salq	%cl, %r10
	salq	%cl, %rdx
	notq	%r10
	andq	(%r8), %r10
	orq	%rdx, %r10
	movq	%r10, (%r8)
	jmp	.L6279
.L6269:
	cmpq	$63, %rsi
	jle	.L6271
	leal	-64(%rsi), %ecx
	movq	$0, 6456(%rsp)
	shrq	%cl, %r10
	movq	%r10, 6464(%rsp)
	jmp	.L6270
.L6271:
	movl	%esi, %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	shrq	%cl, %r11
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%rbx, 6456(%rsp)
	salq	%cl, %r10
	leaq	(%r10,%r10), %rcx
	orq	%rcx, %r11
	movq	%r11, 6464(%rsp)
	jmp	.L6270
.L6265:
	movq	%rdx, (%rbx)
	movq	$-1, %rax
	movl	%edi, %ecx
.L19846:
	salq	%cl, %rax
	salq	%cl, %rdx
	notq	%rax
	andq	(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, (%rbp)
	jmp	.L6256
.L6261:
	movq	(%rbp), %rdx
	leal	-1(%rdi), %ecx
	shrq	%cl, %rdx
	jmp	.L19845
.L6257:
	cmpq	$63, %r8
	jle	.L6259
	leal	-64(%r8), %ecx
	movq	%r11, %rsi
	salq	%cl, %rsi
	movq	%rsi, 6472(%rsp)
	jmp	.L19844
.L6259:
	movl	%r8d, %ecx
	movq	%r10, %r12
	movq	%r11, %rdx
	salq	%cl, %r12
	movl	$63, %ecx
	subl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	%r8d, %ecx
	shrq	$1, %rdx
	orq	%rdx, %r12
	movq	%r12, 6472(%rsp)
	movq	%r11, %r12
	salq	%cl, %r12
	movq	%r12, 6480(%rsp)
	jmp	.L6258
.L22060:
	movq	%r8, %rsi
	xorl	%edx, %edx
	negq	%rsi
	cmpq	$127, %rsi
	jle	.L6245
	movq	$0, 6472(%rsp)
	movq	$0, 6480(%rsp)
.L6246:
	mov	%edi, %eax
	cmpq	%rax, %rsi
	jl	.L6249
	movq	%rdx, (%rbx)
	movq	%rdx, (%rbp)
	jmp	.L6256
.L6249:
	subq	%rsi, %rax
	cmpq	$127, %rax
	jg	.L6256
	cmpq	$63, %rax
	jle	.L6253
	subl	%esi, %edi
	jmp	.L19847
.L6253:
	movl	%edi, %ecx
	movq	$-1, %rax
	movq	%rdx, (%rbx)
	subl	%esi, %ecx
	jmp	.L19846
.L6245:
	cmpq	$63, %rsi
	jle	.L6247
	leal	-64(%rsi), %ecx
	movq	%r10, %rax
	movq	$0, 6472(%rsp)
	shrq	%cl, %rax
.L19843:
	movq	%rax, 6480(%rsp)
	jmp	.L6246
.L6247:
	movl	%esi, %ecx
	movq	%r10, %r12
	movq	%r11, %rax
	shrq	%cl, %r12
	shrq	%cl, %rax
	movl	$63, %ecx
	subl	%esi, %ecx
	movq	%r12, 6472(%rsp)
	movq	%r10, %r12
	salq	%cl, %r12
	movq	%r12, %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rax
	jmp	.L19843
.L6239:
	negq	%r8
	jmp	.L6240
.L6209:
	xorq	%r8, %r11 
	xorq	%r9, %r10 
	movq	%r11, 6496(%rsp)
	jmp	.L19854
.L6210:
	andq	%r8, %r11
	movq	%r11, 6496(%rsp)
.L19855:
	andq	%r9, %r10
	jmp	.L19854
.L6211:
	notq	%r8
	notq	%r9
	andq	%r8, %r11
	movq	%r11, 6496(%rsp)
	jmp	.L19855
.L22049:
	testb	$2, 62(%r13)
	movl	$1, %eax
	cmove	1564(%rsp), %eax
	movl	%eax, 1564(%rsp)
	jmp	.L6206
.L22024:
	movq	new_const.1(%rip), %r14
	movl	$25, %edi
	movq	%r14, (%rax)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L6192
.L22023:
	movzbl	16(%rbx), %eax
	movq	3640(%rsp), %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L6174
	cmpb	$15, %al
	je	.L6174
	movzwl	60(%rbx), %esi
	andl	$511, %esi
.L6177:
	cmpl	$128, %esi
	je	.L6179
	cmpl	$64, %esi
	jbe	.L6180
	leal	-64(%rsi), %ecx
	movq	$-1, %r15
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 40(%rdx)
.L6179:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6183
	cmpb	$6, 16(%rax)
	jne	.L6170
	testb	$2, 62(%rax)
	je	.L6170
.L6183:
	cmpl	$128, %esi
	je	.L6185
	cmpl	$64, %esi
	jbe	.L6186
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19838:
	testl	$1, %eax 
	je	.L6185
	cmpl	$64, %esi
	jbe	.L6188
	leal	-64(%rsi), %ecx
	movq	$-1, %rbx
	salq	%cl, %rbx
	orq	%rbx, 40(%rdx)
.L6185:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L6170
.L6188:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6185
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6185
.L6186:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19838
.L6180:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6179
	movq	$-1, %r13
	movl	%esi, %ecx
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 32(%rdx)
	jmp	.L6179
.L6174:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6177
.L22022:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L6166
.L22021:
	movq	1568(%rsp), %r10
	movq	1568(%rsp), %rbx
	movq	8(%r10), %rax
	movq	%rax, 3208(%rsp)
	movq	40(%r12), %r14
	movq	32(%r12), %rbp
	movl	$87, %r12d
	movq	32(%rbx), %r13
	movq	40(%rbx), %r15
	cmpl	$60, %r12d
	je	.L6154
	cmpl	$60, %r12d
	ja	.L6165
	cmpl	$59, %r12d
	jne	.L19036
	movl	$59, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$59, %edi
	movq	%rax, %rbx
.L20992:
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movq	%rbx, %rsi
	movq	3208(%rsp), %rdi
.L19836:
	movq	%rax, %rdx
	call	build_complex
.L19837:
	movq	%rax, %rbx
	jmp	.L6122
.L6165:
	movl	$87, %eax
	cmpl	$61, %eax
	je	.L6155
	cmpl	$70, %eax
	jne	.L19036
	xorl	%ecx, %ecx
	movl	$61, %edi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r14, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, 3200(%rsp)
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r9
	movq	%rax, %rsi
	movzbl	16(%r9), %eax
	cmpb	$6, %al
	je	.L6159
	cmpb	$10, %al
	je	.L6159
	cmpb	$11, %al
	je	.L6159
	cmpb	$12, %al
	movl	$70, %edi
	je	.L6159
.L6158:
	movq	3200(%rsp), %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %rbp
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	movq	8(%r13), %r11
	movq	%rax, %rsi
	movzbl	16(%r11), %eax
	cmpb	$6, %al
	je	.L6162
	cmpb	$10, %al
	je	.L6162
	cmpb	$11, %al
	je	.L6162
	cmpb	$12, %al
	movl	$70, %edi
	je	.L6162
.L6161:
	movq	3200(%rsp), %rdx
.L19835:
	xorl	%ecx, %ecx
	call	const_binop
	movq	%r12, %rsi
	movq	3208(%rsp), %rdi
	jmp	.L19836
.L6162:
	movl	$62, %edi
	jmp	.L6161
.L6159:
	movl	$62, %edi
	jmp	.L6158
.L6155:
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rdx
	call	const_binop
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%r13, %rsi
	movq	%rax, %r12
	call	const_binop
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movl	$61, %edi
	movq	%r15, %rsi
	movq	%rax, %r14
	call	const_binop
	movq	%r14, %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	jmp	.L19835
.L6154:
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	call	const_binop
	movl	$60, %edi
	movq	%rax, %rbx
	jmp	.L20992
.L22020:
	movq	1568(%rsp), %r9
	xorl	%ebp, %ebp
	movq	32(%r9), %r13
	movq	%r13, 18528(%rsp)
	movq	40(%r9), %r15
	movq	%r15, 18536(%rsp)
	movq	48(%r9), %rdi
	movq	%rdi, 18544(%rsp)
	movq	32(%r12), %r10
	movq	%r10, 18560(%rsp)
	movq	40(%r12), %rcx
	movq	%rcx, 18568(%rsp)
	movq	48(%r12), %r8
	movq	%rdi, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%r15, 8(%rsp)
	movq	%r8, 18576(%rsp)
	call	target_isnan
	movq	1568(%rsp), %rbx
	testl	%eax, %eax
	jne	.L6122
	movq	18568(%rsp), %rbx
	movq	18560(%rsp), %rsi
	movq	18576(%rsp), %r11
	movq	%rbx, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	%r12, %rbx
	movq	%r11, 16(%rsp)
	call	target_isnan
	testl	%eax, %eax
	jne	.L6122
	movq	1568(%rsp), %rax
	movq	18560(%rsp), %rdi
	leaq	15120(%rsp), %rsi
	movq	18528(%rsp), %r8
	movq	18536(%rsp), %r13
	movq	18544(%rsp), %r15
	movq	18568(%rsp), %rdx
	movq	8(%rax), %rcx
	movq	18576(%rsp), %r14
	movl	$87, 15120(%rsp)
	movq	%rdi, 15160(%rsp)
	movq	%r8, 15136(%rsp)
	movq	%r13, 15144(%rsp)
	movl	$const_binop_1, %edi
	movq	%r15, 15152(%rsp)
	movq	%rdx, 15168(%rsp)
	movq	%rcx, 15128(%rsp)
	movq	%r14, 15176(%rsp)
	call	do_float_handler
	testl	%eax, %eax
	je	.L6127
	movq	15184(%rsp), %rbx
.L6128:
	movzbl	16(%rbx), %eax
	movq	%rbx, %rdx
	cmpb	$26, %al
	je	.L6130
	cmpb	$25, %al
	je	.L22063
.L6130:
	movq	1568(%rsp), %r8
	movzbl	18(%r12), %edx
	movzbl	18(%r8), %ecx
	shrb	$3, %dl
	andl	$1, %edx
	shrb	$3, %cl
	andl	$1, %ecx
	orb	%bpl, %cl
	movzbl	18(%rbx), %ebp
	orb	%dl, %cl
	salb	$3, %cl
	andb	$-9, %bpl
	orb	%cl, %bpl
	movb	%bpl, 18(%rbx)
	movl	%ebp, %r13d
	movzbl	18(%r12), %r15d
	movzbl	18(%r8), %edi
	shrb	$3, %r13b
	andb	$-5, %bpl
	shrb	$2, %r15b
	shrb	$2, %dil
	orl	%r13d, %edi
	orl	%r15d, %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %bpl
	movb	%bpl, 18(%rbx)
	jmp	.L6122
.L22063:
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r8
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L6134
	cmpb	$15, %al
	je	.L6134
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L6137:
	cmpl	$128, %esi
	je	.L6139
	cmpl	$64, %esi
	jbe	.L6140
	leal	-64(%rsi), %ecx
	movq	$-1, %r10
	salq	%cl, %r10
	notq	%r10
	andq	%r10, 40(%rdx)
.L6139:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6143
	cmpb	$6, 16(%rax)
	jne	.L6130
	testb	$2, 62(%rax)
	je	.L6130
.L6143:
	cmpl	$128, %esi
	je	.L6145
	cmpl	$64, %esi
	jbe	.L6146
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19834:
	testl	$1, %eax 
	je	.L6145
	cmpl	$64, %esi
	jbe	.L6148
	leal	-64(%rsi), %ecx
	movq	$-1, %r11
	salq	%cl, %r11
	orq	%r11, 40(%rdx)
.L6145:
	xorq	32(%rdx), %rdi
	xorq	40(%rdx), %r8
	movslq	%ebp,%r14
	orq	%rdi, %r14
	orq	%r8, %r14
	setne	%sil
	movzbl	%sil, %ebp
	jmp	.L6130
.L6148:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6145
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6145
.L6146:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19834
.L6140:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6139
	movq	$-1, %r9
	movl	%esi, %ecx
	salq	%cl, %r9
	notq	%r9
	andq	%r9, 32(%rdx)
	jmp	.L6139
.L6134:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6137
.L6127:
	movq	1568(%rsp), %rdi
	movl	$1, %ebp
	call	copy_node
	movq	%rax, %rbx
	jmp	.L6128
.L22019:
	movq	8(%rcx), %r13
	movl	$1, %r14d
	movl	$0, 1580(%rsp)
	movzbl	17(%r13), %esi
	shrb	$5, %sil
	andl	%esi, %r14d
	cmpb	$6, 16(%r13)
	je	.L22064
.L5916:
	movq	1568(%rsp), %rax
	movl	$0, 1576(%rsp)
	xorl	%r15d, %r15d
	movq	32(%r12), %r8
	movq	40(%r12), %r9
	movq	32(%rax), %r11
	movq	40(%rax), %r10
	movl	$87, %eax
	subl	$59, %eax
	cmpl	$30, %eax
	ja	.L18929
	mov	%eax, %ebp
	jmp	*.L6057(,%rbp,8)
	.section	.rodata
	.align 8
	.align 4
.L6057:
	.quad	.L5991
	.quad	.L5994
	.quad	.L6000
	.quad	.L6033
	.quad	.L6033
	.quad	.L6033
	.quad	.L6036
	.quad	.L6042
	.quad	.L6042
	.quad	.L6042
	.quad	.L6045
	.quad	.L18929
	.quad	.L6033
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L18929
	.quad	.L6047
	.quad	.L6047
	.quad	.L18929
	.quad	.L18929
	.quad	.L5923
	.quad	.L5922
	.quad	.L5950
	.quad	.L5949
	.quad	.L5918
	.quad	.L5919
	.quad	.L5920
	.quad	.L5921
	.text
.L5918:
	orq	%r8, %r11
	orq	%r9, %r10
	movq	%r11, 6560(%rsp)
.L19829:
	movq	%r10, 6552(%rsp)
.L5917:
	movl	1580(%rsp), %eax
	testl	%eax, %eax
	je	.L6058
	movq	6552(%rsp), %rax
	testq	%rax, %rax
	jne	.L6060
	cmpq	$0, 6560(%rsp)
	js	.L6060
.L6059:
	testl	%r15d, %r15d
	jne	.L6058
	movq	1568(%rsp), %r11
	testb	$8, 18(%r11)
	jne	.L6058
	testb	$8, 18(%r12)
	jne	.L6058
	cmpq	$0, size_htab.0(%rip)
	movq	6560(%rsp), %rbx
	je	.L22065
.L6061:
	movq	new_const.1(%rip), %r12
	movq	%rbx, %rcx
	xorl	%r10d, %r10d
	notq	%rcx
	shrq	$63, %rcx
	movzbl	16(%r12), %eax
	decq	%rcx
	movq	%rbx, 32(%r12)
	movq	%rcx, 40(%r12)
	movq	%r13, 8(%r12)
	movq	%r12, %rdi
	movq	%r12, %r11
	movq	%r12, %rdx
	cmpb	$26, %al
	je	.L6065
	cmpb	$25, %al
	je	.L22066
.L6065:
	movzbl	18(%r11), %r9d
	leal	0(,%r10,4), %r15d
	leal	0(,%r10,8), %eax
	movl	$1, %edx
	andb	$-5, %r9b
	orb	%r15b, %r9b
	movb	%r9b, 18(%r11)
	movzbl	18(%rdi), %r10d
	andb	$-9, %r10b
	orb	%al, %r10b
	movb	%r10b, 18(%rdi)
	movq	new_const.1(%rip), %rsi
	movq	size_htab.0(%rip), %rdi
	call	htab_find_slot
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19837
	movq	new_const.1(%rip), %rbx
	movl	$25, %edi
	movq	%rbx, (%rdx)
	call	make_node
	movq	%rax, new_const.1(%rip)
	jmp	.L6122
.L22066:
	movzbl	16(%r13), %eax
	movq	%rbx, %r8
	movq	%rcx, %r9
	cmpb	$13, %al
	je	.L6069
	cmpb	$15, %al
	je	.L6069
	movzwl	60(%r13), %esi
	andl	$511, %esi
.L6072:
	cmpl	$128, %esi
	je	.L6074
	cmpl	$64, %esi
	jbe	.L6075
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	notq	%r13
	andq	%r13, 40(%rdx)
.L6074:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6078
	cmpb	$6, 16(%rax)
	jne	.L6065
	testb	$2, 62(%rax)
	je	.L6065
.L6078:
	cmpl	$128, %esi
	je	.L6080
	cmpl	$64, %esi
	jbe	.L6081
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19831:
	testl	$1, %eax 
	je	.L6080
	cmpl	$64, %esi
	jbe	.L6083
	leal	-64(%rsi), %ecx
	movq	$-1, %rsi
	salq	%cl, %rsi
	orq	%rsi, 40(%rdx)
.L6080:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rbp
	orq	%r8, %rbp
	orq	%r9, %rbp
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L6065
.L6083:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6080
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6080
.L6081:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19831
.L6075:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6074
	movq	$-1, %r14
	movl	%esi, %ecx
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 32(%rdx)
	jmp	.L6074
.L6069:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6072
.L22065:
	xorl	%ecx, %ecx
	movl	$1024, %edi
	movl	$size_htab_hash, %esi
	movl	$size_htab_eq, %edx
	call	htab_create
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, size_htab.0(%rip)
	call	ggc_add_deletable_htab
	movl	$25, %edi
	call	make_node
	movl	$1, %esi
	movl	$new_const.1, %edi
	movq	%rax, new_const.1(%rip)
	call	ggc_add_tree_root
	jmp	.L6061
.L6058:
	movq	6560(%rsp), %rdi
	movq	6552(%rsp), %rsi
	call	build_int_2_wide
	xorl	%edx, %edx
	movq	1568(%rsp), %r11
	movq	%rax, %rdi
	movq	8(%r11), %rbx
	movq	%rbx, 8(%rax)
	movzbl	18(%r12), %ecx
	movzbl	18(%r11), %r13d
	movl	$1, %r11d
	shrb	$3, %cl
	shrb	$3, %r13b
	movl	%ecx, %ebx
	andl	%r13d, %r11d
	andl	$1, %ebx
	testl	%edx, %edx
	je	.L6091
	xorl	%edx, %edx
	testl	%r14d, %r14d
	je	.L6094
	movl	1580(%rsp), %eax
	testl	%eax, %eax
	je	.L6093
.L6094:
	testl	%r15d, %r15d
	movl	$1, %eax
	cmovne	%eax, %edx
.L6093:
	movl	%edx, %eax
.L19833:
	movzbl	18(%rdi), %edx
	orl	%r11d, %eax
	orl	%ebx, %eax
	andb	$1, %al
	salb	$3, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 18(%rdi)
	movl	1580(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L6120
	testb	$8, %dl
	jne	.L6120
	movq	6552(%rsp), %rax
	cmpq	%rax, 40(%rdi)
	je	.L22067
.L6121:
	orb	$8, %dl
	movb	%dl, 18(%rdi)
.L6120:
	movq	1568(%rsp), %rdx
	movzbl	18(%rdi), %r11d
	movzbl	18(%r12), %esi
	movzbl	18(%rdx), %ebx
	movl	%r11d, %r14d
	andb	$-5, %r11b
	shrb	$3, %r14b
	shrb	$2, %sil
	shrb	$2, %bl
	orl	%r14d, %ebx
	orl	%esi, %ebx
	andb	$1, %bl
	salb	$2, %bl
	orb	%bl, %r11b
	movq	%rdi, %rbx
	movb	%r11b, 18(%rdi)
	jmp	.L6122
.L22067:
	movq	6560(%rsp), %r9
	cmpq	%r9, 32(%rdi)
	jne	.L6121
	jmp	.L6120
.L6091:
	xorl	%ebp, %ebp
	xorl	%r10d, %r10d
	movq	%rax, %rdx
	testl	%r14d, %r14d
	je	.L6097
	movl	1580(%rsp), %esi
	testl	%esi, %esi
	je	.L6096
.L6097:
	movl	$1, %r10d
	testl	%r15d, %r15d
	movl	$0, %eax
	cmove	%eax, %r10d
.L6096:
	movzbl	16(%rdx), %eax
	cmpb	$26, %al
	je	.L6099
	cmpb	$25, %al
	je	.L22068
.L6099:
	testl	%r10d, %r10d
	je	.L6095
	movl	1576(%rsp), %r10d
	movl	$1, %eax
	testl	%r10d, %r10d
	cmove	%eax, %ebp
.L6095:
	movl	%ebp, %eax
	jmp	.L19833
.L22068:
	movq	8(%rdx), %rcx
	movq	32(%rdx), %r8
	movq	40(%rdx), %r9
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L6103
	cmpb	$15, %al
	je	.L6103
	movzwl	60(%rcx), %esi
	andl	$511, %esi
.L6106:
	cmpl	$128, %esi
	je	.L6108
	cmpl	$64, %esi
	jbe	.L6109
	leal	-64(%rsi), %ecx
	movq	$-1, %r14
	salq	%cl, %r14
	notq	%r14
	andq	%r14, 40(%rdx)
.L6108:
	movq	8(%rdx), %rax
	testb	$32, 17(%rax)
	je	.L6112
	cmpb	$6, 16(%rax)
	jne	.L6099
	testb	$2, 62(%rax)
	je	.L6099
.L6112:
	cmpl	$128, %esi
	je	.L6114
	cmpl	$64, %esi
	jbe	.L6115
	movq	40(%rdx), %rax
	leal	-65(%rsi), %ecx
	sarq	%cl, %rax
.L19832:
	testl	$1, %eax 
	je	.L6114
	cmpl	$64, %esi
	jbe	.L6117
	leal	-64(%rsi), %ecx
	movq	$-1, %r13
	salq	%cl, %r13
	orq	%r13, 40(%rdx)
.L6114:
	xorq	32(%rdx), %r8
	xorq	40(%rdx), %r9
	movslq	%r10d,%rcx
	orq	%r8, %rcx
	orq	%r9, %rcx
	setne	%r8b
	movzbl	%r8b, %r10d
	jmp	.L6099
.L6117:
	movq	$-1, %rax
	cmpl	$63, %esi
	movq	%rax, 40(%rdx)
	ja	.L6114
	movl	%esi, %ecx
	salq	%cl, %rax
	orq	%rax, 32(%rdx)
	jmp	.L6114
.L6115:
	movq	32(%rdx), %rax
	leal	-1(%rsi), %ecx
	shrq	%cl, %rax
	jmp	.L19832
.L6109:
	cmpl	$63, %esi
	movq	$0, 40(%rdx)
	ja	.L6108
	movq	$-1, %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	notq	%r15
	andq	%r15, 32(%rdx)
	jmp	.L6108
.L6103:
	testb	$2, target_flags+3(%rip)
	movl	$64, %esi
	movl	$32, %eax
	cmove	%eax, %esi
	jmp	.L6106
.L6060:
	cmpq	$-1, %rax
	jne	.L6058
	cmpq	$0, 6560(%rsp)
	jns	.L6058
	jmp	.L6059
.L5991:
	leaq	(%r9,%r10), %r15
	leaq	(%r8,%r11), %rsi
	cmpq	%r11, %rsi
	leaq	1(%r15), %r8
	movq	%rsi, 6560(%rsp)
	cmovb	%r8, %r15
	xorq	%r10, %r9 
	notq	%r9
	xorq	%r15, %r10 
	movq	%r15, 6552(%rsp)
	andq	%r10, %r9
.L19828:
	movq	%r9, %r15
	shrq	$63, %r15
	jmp	.L5917
.L5994:
	testq	%r8, %r8
	jne	.L5995
	movq	%r9, %rax
	movq	$0, 6560(%rsp)
	negq	%rax
.L19823:
	movq	%rax, 6552(%rsp)
	movq	%r11, %rdx
	movq	%r10, %rbp
	addq	6560(%rsp), %rdx
	addq	6552(%rsp), %rbp
	cmpq	%r11, %rdx
	leaq	1(%rbp), %rax
	movq	%rdx, 6560(%rsp)
	cmovb	%rax, %rbp
	xorq	%rbp, %r9 
	movq	%rbp, 6552(%rsp)
	xorq	%r10, %rbp 
	notq	%r9
	andq	%rbp, %r9
	jmp	.L19828
.L5995:
	negq	%r8
	movq	%r9, %rax
	movq	%r8, 6560(%rsp)
	notq	%rax
	jmp	.L19823
.L6000:
	movq	%r11, %rbx
	movq	%r11, %rcx
	movq	%r10, %rdx
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%r10, %rbp
	movq	%rbx, 15296(%rsp)
	movq	%rcx, 15304(%rsp)
	movq	%r8, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbx
	movq	%r9, %rcx
	andl	$4294967295, %esi
	andl	$4294967295, %edx
	shrq	$32, %rbp
	shrq	$32, %rdi
	andl	$4294967295, %ebx
	shrq	$32, %rcx
	movq	%rsi, 15264(%rsp)
	leaq	6552(%rsp), %r15
	movq	%rdx, 15312(%rsp)
	movq	%rbp, 15320(%rsp)
	movq	%rdi, 15272(%rsp)
	movq	%rbx, 15280(%rsp)
	movq	%rcx, 15288(%rsp)
	movq	$0, 15200(%rsp)
	movq	$0, 15208(%rsp)
	movq	$0, 15216(%rsp)
	movq	$0, 15224(%rsp)
	movq	$0, 15232(%rsp)
	movq	$0, 15240(%rsp)
	movq	$0, 15248(%rsp)
	movq	$0, 15256(%rsp)
	xorl	%esi, %esi
.L6012:
	movslq	%esi,%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movq	15296(%rsp,%rcx,8), %rbp
	xorl	%ebx, %ebx
.L6011:
	movq	%rbp, %rcx
	leal	(%rdi,%rsi), %eax
	incl	%edi
	imulq	15264(%rsp,%rbx), %rcx
	cltq
	addq	$8, %rbx
	salq	$3, %rax
	leaq	(%rcx,%rdx), %rcx
	addq	15200(%rsp,%rax), %rcx
	movq	%rcx, %rdx
	andl	$4294967295, %edx
	movq	%rdx, 15200(%rsp,%rax)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	cmpl	$3, %edi
	jle	.L6011
	movslq	%esi,%rdi
	incl	%esi
	cmpl	$3, %esi
	movq	%rdx, 15232(%rsp,%rdi,8)
	jle	.L6012
	movq	15208(%rsp), %rbp
	movq	15224(%rsp), %rsi
	salq	$32, %rbp
	salq	$32, %rsi
	addq	15200(%rsp), %rbp
	addq	15216(%rsp), %rsi
	movq	%rbp, 6560(%rsp)
	movq	%rsi, (%r15)
	movq	15256(%rsp), %rcx
	movq	15240(%rsp), %rax
	salq	$32, %rcx
	salq	$32, %rax
.L6015: