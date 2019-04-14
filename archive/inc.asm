section .data
    count dw 0
    value db 15

section .text
    global _start
_start:    
    inc [count]
    dec [value]

    mov ebx, count
    inc word [ebx]

    mov esi, value
    dec byte [esi]

    mov eax, 4
    mov ebx, 1
    mov ecx, count
    mov edx, 3
    int 0x80

    mov eax, 1        ;system call number (sys_exit)
    int 0x80    