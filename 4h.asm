TITLE table of colors (4h.asm)

INCLUDE Irvine32.inc

.data
	counter BYTE ?
	symbol EQU 82
	color BYTE ?

.code
main PROC
	call ClrScr
	mov eax,15
	call SetTextColor
	mov eax,0
	mov ecx,16
L_1:
	mov counter,cl
	mov ecx,16
L_2:
	call SetTextColor
	mov color,al
	mov al,Symbol
	call WriteChar
	mov al,color
	inc al
	loop L_2
	call CrLf
	mov cl,counter
	loop L_1
	mov eax,15
	call SetTextColor
	exit
main ENDP
END main