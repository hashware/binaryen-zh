	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr61375.c"
	.section	.text.uint128_central_bitsi_ior,"ax",@progbits
	.hidden	uint128_central_bitsi_ior
	.globl	uint128_central_bitsi_ior
	.type	uint128_central_bitsi_ior,@function
uint128_central_bitsi_ior:              # @uint128_central_bitsi_ior
	.param  	i64, i64, i64
	.result 	i64
# BB#0:                                 # %entry
	i64.const	$push2=, 56
	i64.shr_u	$push3=, $0, $pop2
	i64.const	$push0=, 8
	i64.shl 	$push1=, $1, $pop0
	i64.or  	$push4=, $pop3, $pop1
	i64.const	$push5=, 65535
	i64.and 	$push6=, $pop4, $pop5
	i64.or  	$push7=, $pop6, $2
                                        # fallthrough-return: $pop7
	.endfunc
.Lfunc_end0:
	.size	uint128_central_bitsi_ior, .Lfunc_end0-uint128_central_bitsi_ior

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	block   	
	i64.const	$push2=, 0
	i64.const	$push1=, 1
	i64.const	$push0=, 2
	i64.call	$push3=, uint128_central_bitsi_ior@FUNCTION, $pop2, $pop1, $pop0
	i64.const	$push4=, 258
	i64.ne  	$push5=, $pop3, $pop4
	br_if   	0, $pop5        # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push6=, 0
	return  	$pop6
.LBB1_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
