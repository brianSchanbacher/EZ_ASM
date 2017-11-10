	global _start

	section .text
_start:
	;put instructions here

	; exit
	MOV AL, 1
	MOV EBX, 0 
	INT 80h 
