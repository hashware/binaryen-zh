	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr57568.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	block   	
	block   	
	i32.const	$push3=, 0
	i32.load	$push0=, b($pop3)
	i32.eqz 	$push10=, $pop0
	br_if   	0, $pop10       # 0: down to label1
# BB#1:                                 # %land.lhs.true
	i32.const	$push8=, 0
	i32.load	$push7=, c($pop8)
	tee_local	$push6=, $0=, $pop7
	i32.load	$push5=, 0($0)
	tee_local	$push4=, $0=, $pop5
	i32.const	$push1=, 1
	i32.shl 	$push2=, $pop4, $pop1
	i32.store	0($pop6), $pop2
	br_if   	1, $0           # 1: down to label0
.LBB0_2:                                # %if.end
	end_block                       # label1:
	i32.const	$push9=, 0
	return  	$pop9
.LBB0_3:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	a                       # @a
	.type	a,@object
	.section	.bss.a,"aw",@nobits
	.globl	a
	.p2align	4
a:
	.skip	216
	.size	a, 216

	.hidden	b                       # @b
	.type	b,@object
	.section	.data.b,"aw",@progbits
	.globl	b
	.p2align	2
b:
	.int32	1                       # 0x1
	.size	b, 4

	.hidden	c                       # @c
	.type	c,@object
	.section	.data.c,"aw",@progbits
	.globl	c
	.p2align	2
c:
	.int32	a+128
	.size	c, 4


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
