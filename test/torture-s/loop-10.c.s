	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/loop-10.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %while.end
	i32.const	$push5=, 0
	i32.const	$push4=, 0
	i32.load	$push3=, count($pop4)
	tee_local	$push2=, $0=, $pop3
	i32.const	$push0=, 2
	i32.add 	$push1=, $pop2, $pop0
	i32.store	count($pop5), $pop1
	block   	
	br_if   	0, $0           # 0: down to label0
# BB#1:                                 # %if.end4
	i32.const	$push6=, 0
	return  	$pop6
.LBB0_2:                                # %if.then3
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	count,@object           # @count
	.section	.bss.count,"aw",@nobits
	.p2align	2
count:
	.int32	0                       # 0x0
	.size	count, 4


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
