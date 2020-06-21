TITLE 50 numbers (4e.asm)

INCLUDE Irvine32.inc

.data
	EMPTY EQU 00000000h
	counter WORD ?

.code
main PROC
	mov ecx,EMPTY
	mov eax,EMPTY
	mov ebx,EMPTY
	mov cx,50
L_1:
	mov counter,cx
	call GetMseconds
	call RandomRange
	and eax,000000FFh
	mov ebx,EMPTY
	mov bl,40
	div bl
	mov bl,ah
	add ebx,-20
	mov eax,ebx
	call WriteInt
	mov cx,counter
	loop L_1
	exit
main ENDP
END main
	
	
	
	
	