	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/950710-1.c"
	.section	.text.g,"ax",@progbits
	.hidden	g
	.globl	g
	.type	g,@function
g:                                      # @g
	.param  	i32
# BB#0:                                 # %entry
                                        # fallthrough-return
	.endfunc
.Lfunc_end0:
	.size	g, .Lfunc_end0-g

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push9=, 0
	i32.const	$push7=, 0
	i32.load	$push6=, __stack_pointer($pop7)
	i32.const	$push8=, 32
	i32.sub 	$push17=, $pop6, $pop8
	tee_local	$push16=, $0=, $pop17
	i32.store	__stack_pointer($pop9), $pop16
	block   	
	i32.const	$push10=, 16
	i32.add 	$push11=, $0, $pop10
	i32.sub 	$push15=, $0, $pop11
	tee_local	$push14=, $0=, $pop15
	i32.const	$push0=, 31
	i32.shr_s	$push13=, $0, $pop0
	tee_local	$push12=, $0=, $pop13
	i32.add 	$push1=, $pop14, $pop12
	i32.xor 	$push2=, $pop1, $0
	i32.const	$push3=, 11
	i32.gt_u	$push4=, $pop2, $pop3
	br_if   	0, $pop4        # 0: down to label0
# BB#1:                                 # %if.then.i
	call    	abort@FUNCTION
	unreachable
.LBB1_2:                                # %f.exit
	end_block                       # label0:
	i32.const	$push5=, 0
	call    	exit@FUNCTION, $pop5
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	exit, void, i32
	.functype	abort, void
