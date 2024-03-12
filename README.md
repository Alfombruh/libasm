# libasm project

This project is a little library done in asm using the Intel Syntax and only writting in 64bits ASM </br>
I still need to understand what this means</br>

In this project I will need to recreate this functions in ASM: </br>

1. strlen as ft_strlen </br>
2. strcpy as ft_strcpy </br>
3. strcmp as ft_strcmp </br>
4. write as ft_write </br>
5. read as ft_read </br>
6. strdup as ft_strdup </br>

# TO-DO List

## Make a simple asm program and then make it into function I can call from another asm file

## What operands are

## Find what 64bits ASM means

Guess this is just what the typical 86_64x or however is written means and prolly has to do with the max size of a variable

## Find an assembler

In assembly there is not such thing as a compiler, what appears that you do with the code is "to assemble it". </br>

So first I gotta understand what assembling means and does behind and then I shall find one to use </br>

## Find a way to compile a .a file from an assembly function

Currently I dont know how to create a .a file from a .s file</br>
I should also learn how to create .o files from a .s file. But we'll see</br>

## Find a way to call a .s function from a .c file

I dont have the slightest clue about how to call a function thats inside a .s file from a .c file, so gl with this

## Learn how to properly code in assembly and all that :

```test```

# What is the ASM Intel Syntax

Well when you write code in assembly there are two main syntaxses you can use. You can either go with the Intel syntax, that is mainly use in Windows and DOS, or the AT&T syntax, which is mainly use in Unix enviroments since AT&T is the company behind Unix.</br>
Here are some differneces between them:

<table>
<tr>
<th></th>
<th> AT&T </th>
<th> Intel </th>
</tr>
<tr>
<td> Parameter Order </td>
<td> <code>movl $5, eax</code> </td>
<td> <code>mov eax, 5</code> </td>
</tr>
<tr>
<td> Parameter Size </td>
<td> 
<div markdown="1">
```asm
addl $0x24, %esp
movsql %ecx, %rax 
paddd %xmm1, %xmm2
```
</div>
<p>
Mnemonics are suffixed with a letter depending on the size of the operands.</br> 
q for qword, (64bits) <a href="https://www.hows.tech/2024/02/dword-vs-qword-what-is-difference.html#"> whats a word </a></br>
l for dword (32bits)</br>
w for word (16bits)</br>
b for byte (8bits)</br>
</p>
</td>
<td> 
<code>add esp, 24h
movsxd rax, ecv
paddd xmm2, xmm1</code>
<p>
The parameter size is decided in the register that is being used. For example:</br>
<b>rax</b> is used to register a qword </br>
<b>eax</b> is used to register a dword </br>
<b>ax</b> is used to register a word </br>
<b>al</b> is used to register a byte </br>
<a href="https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture"> </a>
</p>
</td>
</tr>
<tr>
<td>Sigils</td>
<td>
<p>
Immediate values are prefixed by <code>$</code> and registers are prefixed by <code>%</code>
</p>
</td>
<td>
<p>
The assembler automatically detects the type of symbols. Whether they are registers, constants, ...
</p>
</td>
</tr>
<tr>
<td>
Effective Addresses
</td>
<td>
<code>
movl offset(%ebx, %ecx, 4), %eax
</code>
<p>
General syntax of DISP(BASE, INDEX, SCALE)
</p>
</td>
<td>
<code>
mov eax, [ebx, ecx*4 + offset]
</code>
<p>
Arithmetic Expressions are done in square brackets.</br>
Size keywords like byte (word), dword have to be used if the size cannot be determined by the operands.</br>
</p>
</td>
</tr>
</table>

As you might already guessed, these are just two ways of writting assembly code. The syntax you choose to go with is up 2 you (besides in this project). </br>
Many assemblers, like NASM, support the Intel syntax. Others, like GAS, which was originally created for AT&T syntax now, now supports both syntaxes via the <code>.intel_syntax</code> directive.

# Links

[x86 Assembly language wikipedia page](https://en.wikipedia.org/wiki/X86_assembly_language)</br>
[x86 Assembly architecture wikibook](https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture)</br>
[What's a word (in ASM)](https://www.hows.tech/2024/02/dword-vs-qword-what-is-difference.html#)</br>
