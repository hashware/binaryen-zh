	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/bitfld-5.c"
	.section	.text.g,"ax",@progbits
	.hidden	g
	.globl	g
	.type	g,@function
g:                                      # @g
	.param  	i64, i64
# BB#0:                                 # %entry
	#APP
	#NO_APP
	block   	
	i64.ne  	$push0=, $0, $1
	br_if   	0, $pop0        # 0: down to label0
# BB#1:                                 # %if.end
	return
.LBB0_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	g, .Lfunc_end0-g

	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32, i64
# BB#0:                                 # %entry
	#APP
	#NO_APP
	i64.load	$push0=, 0($0)
	i64.const	$push1=, 2
	i64.shr_u	$push2=, $pop0, $pop1
	i64.const	$push3=, 1099511627775
	i64.and 	$push4=, $pop2, $pop3
	call    	g@FUNCTION, $pop4, $1
                                        # fallthrough-return
	.endfunc
.Lfunc_end1:
	.size	f, .Lfunc_end1-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push8=, 0
	i32.const	$push6=, 0
	i32.load	$push5=, __stack_pointer($pop6)
	i32.const	$push7=, 16
	i32.sub 	$push17=, $pop5, $pop7
	tee_local	$push16=, $0=, $pop17
	i32.store	__stack_pointer($pop8), $pop16
	i32.const	$push0=, 0
	i64.load	$push1=, .Lmain.s($pop0)
	i64.store	8($0), $pop1
	i32.const	$push12=, 8
	i32.add 	$push13=, $0, $pop12
	i64.const	$push2=, 10
	call    	f@FUNCTION, $pop13, $pop2
	i32.const	$push15=, 0
	i64.load	$push3=, .Lmain.t($pop15)
	i64.store	0($0), $pop3
	i64.const	$push4=, 1099511627778
	call    	f@FUNCTION, $0, $pop4
	i32.const	$push11=, 0
	i32.const	$push9=, 16
	i32.add 	$push10=, $0, $pop9
	i32.store	__stack_pointer($pop11), $pop10
	i32.const	$push14=, 0
                                        # fallthrough-return: $pop14
	.endfunc
.Lfunc_end2:
	.size	main, .Lfunc_end2-main

	.type	.Lmain.s,@object        # @main.s
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.Lmain.s:
	.int8	41                      # 0x29
	.int8	0                       # 0x0
	.int8	0                       # 0x0
	.int8	0                       # 0x0
	.int8	0                       # 0x0
	.int8	12                      # 0xc
	.int8	0                       # 0x0
	.int8	0                       # 0x0
	.size	.Lmain.s, 8

	.type	.Lmain.t,@object        # @main.t
	.p2align	3
.Lmain.t:
	.int8	9                       # 0x9
	.int8	0                       # 0x0
	.int8	0                       # 0x0
	.int8	0                       # 0x0
	.int8	0                       # 0x0
	.int8	12                      # 0xc
	.int8	0                       # 0x0
	.int8	0                       # 0x0
	.size	.Lmain.t, 8


	.ident	"clang version 5.0.0 (https://chromium.googlesource.com/external/github.com/llvm-mirror/clang e7bf9bd23e5ab5ae3f79d88d3e8956f0067fc683) (https://chromium.googlesource.com/external/github.com/llvm-mirror/llvm 7bfedca6fc415b0e5edea211f299142b03de1e97)"
	.functype	abort, void
