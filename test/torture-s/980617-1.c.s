	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/980617-1.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
# BB#0:                                 # %entry
	block   	
	i32.load8_s	$push0=, 0($0)
	i32.const	$push1=, -17
	i32.add 	$push2=, $pop0, $pop1
	i32.const	$push3=, 1
	i32.gt_u	$push4=, $pop2, $pop3
	br_if   	0, $pop4        # 0: down to label0
# BB#1:                                 # %if.then
	return
.LBB0_2:                                # %if.else
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push5=, 0
	i32.const	$push3=, 0
	i32.load	$push2=, __stack_pointer($pop3)
	i32.const	$push4=, 16
	i32.sub 	$push9=, $pop2, $pop4
	tee_local	$push8=, $0=, $pop9
	i32.store	__stack_pointer($pop5), $pop8
	i32.const	$push0=, 196625
	i32.store	12($0), $pop0
	i32.const	$push6=, 12
	i32.add 	$push7=, $0, $pop6
	call    	foo@FUNCTION, $pop7
	i32.const	$push1=, 0
	call    	exit@FUNCTION, $pop1
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
	.functype	exit, void, i32
