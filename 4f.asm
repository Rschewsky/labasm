TITLE 20 strings (4f.asm)

INCLUDE Irvine32.inc

.data
	EMPTY EQU 00000000h
	string BYTE 11 DUP (0)
	counter WORD ?

.code
main PROC
	mov ecx,EMPTY
	mov ecx,20
L_1:
	mov esi,0
	mov counter,cx
	mov cx,10
L_2:
	call GetMseconds
	call RandomRange
	mov ebx,25
	and eax,0000000Fh
	div bl
	mov al,ah
	add al,65
	mov [string+esi],al
	inc esi
	loop L_2
	mov esi,0
	mov edx,offset string
	call WriteString
	call CrLf
	mov cx,counter
	loop L_1
	exit
main ENDP
END main