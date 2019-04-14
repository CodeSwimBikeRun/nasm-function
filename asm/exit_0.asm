section .text
	GLOBAL exit_0
exit_0:
	mov rax,1            ; 'exit' system call
	mov rbx,0            ; exit with error code 0
	int 80h              ; call the kernel