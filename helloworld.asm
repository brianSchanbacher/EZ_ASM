	global _start
	
	section     .data
	msg     db  'Hello, world!',0xa
	len     equ $ - msg
	
	section .text
_start:
	;put instructions here
    mov     edx,len
	mov     ecx,msg
	mov     ebx,1
	mov     eax,4
	int     0x80 
	
	; exit
	MOV AL, 1
	MOV EBX, 0 
	INT 80h 
