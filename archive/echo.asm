segment .data 
SYS_EXIT  equ 1
SYS_READ  equ 3
SYS_WRITE equ 4
STDIN     equ 0
STDOUT    equ 1

segment .bss

   num1 resb 2 
   num2 resb 2 
   res1 resb 2

section	.text
   global _start    ;must be declared for using gcc
	
_start:             ;tell linker entry point
    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, num1
    mov edx, res1
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    int 0x80

    mov eax, SYS_EXIT
    mov edx, 1
    int 0x80
