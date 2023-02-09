		SECTION .bss
num:		resb 5

		SECTION .text
		global main
main:

	; Task: Take the users input and store it in 5 bytes
	mov
    mov
    mov
    mov
	int 80h

	; Task: Print the "num" variable to screen
	mov
	mov
	mov
	mov
	int 80h

	xor ebx, ebx
	mov eax, 1
	int 80h
