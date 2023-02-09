		SECTION .data
truemesg:	db "This is a leap year ",10
lentrue:	equ $-truemesg
falsemesg:	db "This is not a leap year ",10
lenfalse:	equ $-falsemesg
num: equ 2016

SECTION .text
global main

main:
    mov ebp, esp; for correct debugging
    
    ; Start of new code
	mov eax, num
	xor edx, edx
         mov ebx, 4
         div ebx
         cmp edx, 0
         je  divisible4
         jmp false
         
divisible4:
        mov eax, num
        xor edx, edx
        mov ebx, 100
        div ebx
        cmp edx, 0
        je  divisible100
        jmp true

divisible100:
        mov eax, num
        xor edx, edx
        mov ebx, 400
        div ebx
        cmp edx, 0
        je  true
        jmp false

true:
	; Task: Print the "outmesg" variable to the screen
	mov ecx, truemesg
	mov edx, lentrue
	mov ebx, 1
	mov eax, 4
	int 80h
        jmp exit

false:
	; Task: Print the "outmesg" variable to the screen
	mov ecx, falsemesg
	mov edx, lenfalse
	mov ebx, 1
	mov eax, 4
	int 80h
        jmp exit
        ; End of new code

exit:
	xor ebx, ebx
	mov eax, 1
	int 80h
