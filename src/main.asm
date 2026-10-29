global _start

section .data
    array dq 3, 4, 1, 2, 5

section .bss
    suma resq 1

section .text

add_numbers:
    mov rdi,[suma]
    add rdi,rsi
    mov [suma],rdi
    ret

_start:
    mov [suma],0
    mov rbx,0
    mov rcx,5
    _loop_start:
    mov rsi,[array+rbx]

    call add_numbers
    add rbx,8
    loop _loop_start

    
    ; Zakoncz program.
    mov rax, 60            ; Numer wywolania exit.
    mov rdi, 0             ; Kod zakonczenia — sukces.
    syscall
