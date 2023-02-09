	SECTION .text
	global main

main:
    mov ebp, esp; for correct debugging
	mov eax, 1
	mov edx, 2

        ; Start of new code
        mov ebx, 10
        add eax, edx
        add eax, ebx
        ; End of new code 
    
	mov eax, 1
	int 80h
