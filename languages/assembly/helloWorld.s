.global _start
.intel_syntax noprefix

_start:
    // sys_write
        // movi'ng 1 to rax, rax register the op that syscall call, 1 is write
        mov rax, 1
        // moving 1 to rdi
        mov rdi, 1
        // LEA := Load Effective Address, allow us to create a new "funcrton" hello_world
        lea rsi, [hello_world]
        // moving the length of the string to rdx
        mov rdx, 13
        syscall

    // sys_exit
        // op 60 is exit
        mov rax, 60
        // mov a dummy number into rdi, which is the return code
        mov rdi, 0
        syscall

hello_world:
    .asciz "Hello World!\n"
