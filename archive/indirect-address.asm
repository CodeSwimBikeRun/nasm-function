segment .data
MY_TABLE times 10 dw 0          ; Allocates 10 words each initialized to 0

section .text
    global _start

_start:
    mov ebx, [MY_TABLE]         ; I don't understand how this is the effective address.
                                ; there is no offset, it is the address of the start of the table!
    mov [ebx], 110              ; I don't understand this either, wouldn't we want to move 110 to the ebx register? Why is it using the []?
    add ebx, 2                  ; now we are blowing my mind. when we mov 2 to the 