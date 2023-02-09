		SECTION .bss
num:		resb 5

		SECTION .text
		global main
main:
    mov ebp, esp; for correct debugging

	; Task: Take the users input and store it in 5 bytes

        ; Start of new code
        mov edx, 5              ; Move 5 byes into edx
        mov ecx, num            ; Move num into ecx
        mov ebx, 0              ; Move file descriptor of stdin into ebx
        mov eax, 3              ; Move sys_read value into eax
	; End of new code

        int 80h

	; Task: Print the "num" variable to screen
        
        ; Start of new code
	mov edx, 5		; Move the length of the msg into edx
	mov ecx, num		; Move the msg location into ecx
	mov ebx, 1		; Move stdout (1) into ebx
	mov eax, 4		; Move sysnumber 4 into eax
        ; End of new code

	int 80h

	xor ebx, ebx
	mov eax, 1
	int 80h
