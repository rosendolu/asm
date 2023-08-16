# asm

Assembly code

## dev

安装 nasm
https://www.nasm.us

编译

asm

```sh
nasm src/01.asm -f bin -o dist/01.bin

```

c

````sh
gcc -S src/02.c -o src/02.s
```

## vscode

vscode 插件配置

```json
{
  "recommendations": ["maziac.asm-code-lens", "ms-vscode.hexeditor"]
}
````

## demo

```c
int main() {
  return 1 + 1;
}
```

<details>
<summary>macos 汇编</summary>
 
```asm
	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
  ; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	wzr, [sp, #12]
	mov	w0, #2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
```

</details>

<details >
<summary>ubuntu 汇编</summary>
 
```asm
	.file	"01.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$2, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
```
</details>

## 参考

当学习汇编语言开发时，以下是一些优质的学习资源，包括在线教程、书籍、工具和实践项目，可以帮助你入门和深入学习：

**在线教程和资源：**

1. **x86 Assembly Tutorial**: 提供了关于 x86 汇编语言的详细教程和示例代码。链接：[x86 Assembly Tutorial](https://www.tutorialspoint.com/assembly_programming/index.htm)

2. **NASM Tutorial**: 一个针对 NASM（Netwide Assembler）的教程，适用于 x86 和 x86-64 架构。链接：[NASM Tutorial](https://cs.lmu.edu/~ray/notes/nasmtutorial/)

3. **Assembly Language Programming** (Coursera): 由加州大学洛杉矶分校（UCLA）提供的在线课程，涵盖了汇编语言编程的基础知识。链接：[Assembly Language Programming](https://www.coursera.org/learn/cs-bits-pieces)

**经典书籍：**

1. **PC Assembly Language** by Paul Carter: 一本深入浅出的汇编语言教材，适合初学者。可以在网上免费获取。链接：[PC Assembly Language](http://pacman128.github.io/pcasm/)

2. **Programming from the Ground Up** by Jonathan Bartlett: 面向 x86 汇编的入门教程，涵盖了汇编基础和编程实践。可以在网上免费获取。链接：[Programming from the Ground Up](https://download-mirror.savannah.gnu.org/releases/pgubook/ProgrammingGroundUp-1-0-booksize.pdf)

**汇编工具：**

1. **NASM (Netwide Assembler)**: 一个流行的开源汇编器，支持多种指令集架构。链接：[NASM](https://www.nasm.us/)

2. **GCC (GNU Compiler Collection)**: GCC 也可以用于编写和调试汇编代码。它支持多种架构和汇编语言。

**实践项目：**

1. **汇编实验室**：一个在线平台，提供了许多汇编语言的实验和项目，帮助你练习和应用你的知识。链接：[汇编实验室](https://schweigi.github.io/assembler-sandbox/)

2. **汇编游戏开发**：尝试使用汇编语言编写小型游戏，这是一个很好的实践项目，可以让你应用汇编编程来实现实际功能。

**社区和论坛：**

1. **Reddit r/asm**：一个汇编语言开发的 Reddit 社区，你可以在这里寻求帮助、分享经验和获取资源。链接：[r/asm](https://www.reddit.com/r/asm/)

2. **Stack Overflow**: 在 Stack Overflow 上搜索相关问题，你会找到很多关于汇编语言的答案和讨论。

无论你是初学者还是有一些经验的开发者，这些学习资源都可以帮助你逐步掌握汇编语言开发技能。记得保持耐心，并通过实践不断巩固所学知识。
