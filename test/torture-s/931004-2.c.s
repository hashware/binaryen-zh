	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/931004-2.c"
	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$push13=, 0
	i32.const	$push11=, 0
	i32.load	$push10=, __stack_pointer($pop11)
	i32.const	$push12=, 16
	i32.sub 	$push20=, $pop10, $pop12
	tee_local	$push19=, $5=, $pop20
	i32.store	__stack_pointer($pop13), $pop19
	i32.store	12($5), $1
	i32.const	$push18=, 4
	i32.add 	$push2=, $1, $pop18
	i32.store	12($5), $pop2
	i32.load	$4=, 0($1)
	block   	
	block   	
	i32.const	$push17=, 1
	i32.lt_s	$push3=, $0, $pop17
	br_if   	0, $pop3        # 0: down to label1
# BB#1:                                 # %for.body.preheader
	i32.const	$push4=, 8
	i32.add 	$3=, $1, $pop4
	i32.const	$1=, 10
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop    	                # label2:
	i32.ne  	$push5=, $1, $4
	br_if   	2, $pop5        # 2: down to label0
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.store	12($5), $3
	i32.const	$push24=, -9
	i32.add 	$2=, $1, $pop24
	i32.const	$push23=, -4
	i32.add 	$push7=, $3, $pop23
	i32.load	$4=, 0($pop7)
	i32.const	$push22=, 1
	i32.add 	$push1=, $1, $pop22
	copy_local	$1=, $pop1
	i32.const	$push21=, 4
	i32.add 	$push0=, $3, $pop21
	copy_local	$3=, $pop0
	i32.lt_s	$push6=, $2, $0
	br_if   	0, $pop6        # 0: up to label2
.LBB0_4:                                # %for.end
	end_loop
	end_block                       # label1:
	i32.const	$push8=, 123
	i32.ne  	$push9=, $4, $pop8
	br_if   	0, $pop9        # 0: down to label0
# BB#5:                                 # %if.end8
	i32.const	$push16=, 0
	i32.const	$push14=, 16
	i32.add 	$push15=, $5, $pop14
	i32.store	__stack_pointer($pop16), $pop15
	return  	$1
.LBB0_6:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push7=, 0
	i32.const	$push5=, 0
	i32.load	$push4=, __stack_pointer($pop5)
	i32.const	$push6=, 16
	i32.sub 	$push9=, $pop4, $pop6
	tee_local	$push8=, $0=, $pop9
	i32.store	__stack_pointer($pop7), $pop8
	i64.const	$push0=, 528280977420
	i64.store	8($0), $pop0
	i64.const	$push1=, 47244640266
	i64.store	0($0), $pop1
	i32.const	$push2=, 3
	i32.call	$drop=, f@FUNCTION, $pop2, $0
	i32.const	$push3=, 0
	call    	exit@FUNCTION, $pop3
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
	.functype	exit, void, i32
