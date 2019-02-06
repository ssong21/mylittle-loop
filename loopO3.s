	.file	"loop.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4,,15
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
	call	___main
	movl	_i, %eax
	movl	_k, %edx
	leal	65536(%eax), %ecx
	movl	_j, %eax
	addl	$65536, %edx
	movl	%edx, _k
	movl	%ecx, _i
	addl	$65536, %eax
	movl	%eax, _j
	addl	%ecx, %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
.lcomm _k,4,4
.lcomm _j,4,4
.lcomm _i,4,4
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
