		SECTION .data
truemesg:	db "This is a leap year ",10
lentrue:	equ $-truemesg
falsemesg:	db "This is not a leap year ",10
lenfalse:	equ $-falsemesg
num: equ 2016

SECTION .text
global main

; Add to the code in order to make it print out the correct string based on the value of num
; A year is a leap year if it is divisable by 4, unless it is divisiable by 100, unless it
; is also divisable by 400.

main:
    mov ebp, esp; for correct debugging


divisible4:


divisible100:


true:


false:

exit:
	xor ebx, ebx
	mov eax, 1
	int 80h
