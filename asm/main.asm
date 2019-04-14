; Define variables in the data section
EXTERN exit_0
EXTERN echo_hello
section .data
	hello:     db 'Hello world!',10
	helloLen:  equ $-hello
SECTION .TEXT
	GLOBAL _start 
_start:
	call echo_hello
	; Terminate program
	call exit_0