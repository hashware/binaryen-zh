	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/990127-2.c"
	.section	.text.fpEq,"ax",@progbits
	.hidden	fpEq
	.globl	fpEq
	.type	fpEq,@function
fpEq:                                   # @fpEq
	.param  	f64, f64
# BB#0:                                 # %entry
	block   	
	f64.ne  	$push0=, $0, $1
	br_if   	0, $pop0        # 0: down to label0
# BB#1:                                 # %if.end
	return
.LBB0_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	fpEq, .Lfunc_end0-fpEq

	.section	.text.fpTest,"ax",@progbits
	.hidden	fpTest
	.globl	fpTest
	.type	fpTest,@function
fpTest:                                 # @fpTest
	.param  	f64, f64
# BB#0:                                 # %entry
	block   	
	f64.const	$push0=, 0x1.9p6
	f64.mul 	$push1=, $0, $pop0
	f64.div 	$push2=, $pop1, $1
	f64.const	$push3=, 0x1.3d55555555556p6
	f64.ne  	$push4=, $pop2, $pop3
	br_if   	0, $pop4        # 0: down to label1
# BB#1:                                 # %fpEq.exit
	return
.LBB1_2:                                # %if.then.i
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	fpTest, .Lfunc_end1-fpTest

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
	.endfunc
.Lfunc_end2:
	.size	main, .Lfunc_end2-main


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
	.functype	exit, void, i32
