	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr46316.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i64
	.result 	i64
	.local  	i64
# BB#0:                                 # %entry
	i64.const	$push0=, -1
	i64.xor 	$push12=, $0, $pop0
	tee_local	$push11=, $1=, $pop12
	i64.const	$push1=, 3
	i64.const	$push10=, 3
	i64.gt_s	$push2=, $1, $pop10
	i64.select	$push3=, $pop11, $pop1, $pop2
	i64.add 	$push4=, $pop3, $0
	i64.const	$push5=, 2
	i64.add 	$push6=, $pop4, $pop5
	i64.const	$push7=, -2
	i64.and 	$push8=, $pop6, $pop7
	i64.sub 	$push9=, $0, $pop8
                                        # fallthrough-return: $pop9
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	block   	
	i64.const	$push0=, 0
	i64.call	$push1=, foo@FUNCTION, $pop0
	i64.const	$push2=, -4
	i64.ne  	$push3=, $pop1, $pop2
	br_if   	0, $pop3        # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push4=, 0
	return  	$pop4
.LBB1_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
