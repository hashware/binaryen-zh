	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20080506-2.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i32
# BB#0:                                 # %entry
	i32.load	$push7=, 0($0)
	tee_local	$push6=, $0=, $pop7
	i32.const	$push0=, 1
	i32.store	0($pop6), $pop0
	i32.load	$push1=, 0($1)
	i32.const	$push2=, 2
	i32.store	0($pop1), $pop2
	block   	
	i32.load	$push3=, 0($0)
	i32.const	$push5=, 2
	i32.ne  	$push4=, $pop3, $pop5
	br_if   	0, $pop4        # 0: down to label0
# BB#1:                                 # %if.end
	return
.LBB0_2:                                # %if.then
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
	i32.const	$push4=, 0
	i32.const	$push2=, 0
	i32.load	$push1=, __stack_pointer($pop2)
	i32.const	$push3=, 16
	i32.sub 	$push17=, $pop1, $pop3
	tee_local	$push16=, $0=, $pop17
	i32.store	__stack_pointer($pop4), $pop16
	i32.const	$push8=, 12
	i32.add 	$push9=, $0, $pop8
	i32.store	8($0), $pop9
	i32.const	$push10=, 12
	i32.add 	$push11=, $0, $pop10
	i32.store	4($0), $pop11
	i32.const	$push12=, 8
	i32.add 	$push13=, $0, $pop12
	i32.const	$push14=, 4
	i32.add 	$push15=, $0, $pop14
	call    	foo@FUNCTION, $pop13, $pop15
	i32.const	$push7=, 0
	i32.const	$push5=, 16
	i32.add 	$push6=, $0, $pop5
	i32.store	__stack_pointer($pop7), $pop6
	i32.const	$push0=, 0
                                        # fallthrough-return: $pop0
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
