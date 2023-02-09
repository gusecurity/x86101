
; Task: Jump through so that the program 
; prints success as well as exiting

	SECTION .data
mesg:	db "Success", 10
mesg2:   db "Loop...", 10
len:	equ $-mesg
len2:	equ $-mesg2

	SECTION .text
	global main
main:
    mov ebp, esp; for correct debugging
    mov ecx, mesg2
    mov edx, len2
    mov ebx, 1
    mov eax, 4
    int 80h
    ; Start of new instruction
    jmp success
    ; End of new instruction
    jmp main		

exit:
    xor ebx, ebx
    mov eax, 1
    int 80h

success:
    mov ecx, mesg
    mov edx, len
    mov ebx, 1
    mov eax, 4
    int 80h
    ; Start of new instruction
    jmp exit
    ; End of new instruction

