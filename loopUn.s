	.file	"loop.c"
.lcomm _i,4,4
.lcomm _j,4,4
.lcomm _k,4,4
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	jmp	L2
L3:
	movl	_i, %edx
	movl	8(%esp), %eax
	addl	%edx, %eax
	movl	%eax, _i
	movl	_j, %edx
	movl	8(%esp), %eax
	addl	%edx, %eax
	movl	%eax, _j
	movl	_k, %edx
	movl	8(%esp), %eax
	addl	%edx, %eax
	movl	%eax, _k
	addl	$1, 12(%esp)
L2:
	cmpl	$65535, 12(%esp)
	jle	L3
	movl	_i, %edx
	movl	_j, %eax
	addl	%eax, %edx
	movl	_k, %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
