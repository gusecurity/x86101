	SECTION .data
msg:    db "Please enter a number: "	; Message string
len:    equ $-msg           ; length value of the message string

	SECTION .bss       ; bss section
num:    resb 5              ; reserve 5 bytes in location num

	SECTION .text
	global main        ; start point of the code
main:
    mov ebp, esp            ; for correct debugging
    mov edx, 5              ; Task: move 5 byes into edx
    mov ecx, num            ; Task: move num into ecx
    mov ebx, 0              ; Task: move file descriptor of stdin into ebx
    mov eax, 3              ; Task: move sys_read value into eax
    int 80h				 ; call kernel

    mov ebx,0               ; move exit code 0 into ebx
    mov eax,1               ; move sys_exit value into eax
    int 80h                 ; call kernel
