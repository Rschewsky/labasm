Title Four-colored string (4a.asm)

INCLUDE Irvine32.inc

.data
	EMPTY 	EQU	00000000h
	string 	BYTE "This is a string",0

.code
main PROC
	mov		ecx,EMPTY
	mov		eax,EMPTY
	mov		edx,EMPTY
	mov		ecx,4
L_1:
	call	GetMseconds
	call	RandomRange
	and		eax,0000000Fh
	call 	SetTextColor
	mov		edx,OFFSET string
	call	WriteString
	loop L_1
	exit
main ENDP
END main
	