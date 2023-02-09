	SECTION .data
msg: db "Hello World", 10	;string to be printed with the new line char 
len: equ $-msg			;length of the msg 

	SECTION .text
	global main
main:

	mov edx, len		;Move the length of the msg into edx
	mov ecx, msg		;Move the msg location into ecx
	mov ebx, 1		;Move stdout (1) into ebx
	mov eax, 4		;Move sysnumber 4 into eax
	int 80h			;Call the interrupt 80h

	mov ebx, 0		;Move error code of 0 into ebx
	mov eax, 1		;Move sysnumber 1 into eax for sys_exit call
	int 80h 		;Call the interrupt 80h, this will exit program









