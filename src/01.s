	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_add_a_and_b                    ; -- Begin function add_a_and_b
	.p2align	2
_add_a_and_b:       ;这是一个函数的标签，函数名为 _add_a_and_b。汇编代码的开头通常会定义函数的标签
	.cfi_startproc ; 这是一条调试信息，用于标识函数的开始
  ; %bb.0:
	sub	sp, sp, #16    ;这条指令将栈指针（sp）减少16个字节，为函数的局部变量分配空间
	.cfi_def_cfa_offset 16 ;这是一条调试信息，指定了当前堆栈指针的偏移量，用于栈帧信息
	str	w0, [sp, #12]  ;将寄存器 w0 的值存储到栈指针 sp 偏移为 12 字节的位置，相当于将第一个函数参数保存到栈上
	str	w1, [sp, #8]  ;将寄存器 w1 的值存储到栈指针 sp 偏移为 8 字节的位置，相当于将第二个函数参数保存到栈上
	ldr	w8, [sp, #12] ; 从栈指针 sp 偏移为 12 字节的位置加载一个字（32位）到寄存器 w8，这是将第一个参数加载回寄存器
	ldr	w9, [sp, #8] ; 从栈指针 sp 偏移为 8 字节的位置加载一个字（32位）到寄存器 w9，这是将第二个参数加载回寄存器
	add	w0, w8, w9 ; 将寄存器 w8 和 w9 的值相加，结果存储到寄存器 w0，这是进行实际的相加操作。
	add	sp, sp, #16 ; 将栈指针 sp 增加16个字节，释放之前分配的局部变量空间。
	ret              ; 函数返回指令，将程序控制流返回到函数调用点。
	.cfi_endproc ; 这是一条调试信息，标识函数的结束。
                                        ; -- End function  声明一个名为 _main 的全局函数，这可能是程序的入口点。
	.globl	_main                           ; -- Begin function main  进行指令对齐，确保下一个函数或数据在内存中按照合适的边界对齐。
	.p2align	2   ; 进行指令对齐，确保下一个函数或数据在内存中按照合适的边界对齐  齐是为了优化内存访问和指令执行速度
_main:                                  ; @main
	.cfi_startproc
  ; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	mov	w0, #2
	mov	w1, #3
	bl	_add_a_and_b
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
