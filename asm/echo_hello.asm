section .text
	GLOBAL echo_hello
echo_hello:
	mov rax,4            ; 'write' system call = 4
	mov rbx,1            ; file descriptor 1 = STDOUT
	mov rcx,hello        ; string to write
	mov rdx,helloLen     ; length of string to write
	int 80h              ; call the kernel
	ret

section .data
	hello:     db 'Hello world!!',10
	helloLen:  equ $-hello