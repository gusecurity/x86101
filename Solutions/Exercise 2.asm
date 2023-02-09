	SECTION .text
	global main

main:
    mov ebp, esp; for correct debugging
	;Task: Multiply the ecx register by 3
	;Task: Divide ecx by ebx

    mov ebp, esp; for correct debugging

	mov ecx, 8
	mov ebx, 24
        
        ; Start of new code
        
        mov edx, 3

        mov eax, ecx
        mul edx
        
        div ebx
        ; End of new code

	mov eax, 1
	int 80h 


