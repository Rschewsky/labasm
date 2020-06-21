TITLE Fibbonacci (3a.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h

.code
main PROC
	mov		eax,EMPTY
	mov		ebx,EMPTY
	mov		ecx,EMPTY
	mov		cl,07h
	mov		ebx,1
L_1:
	add		eax,ebx
	sub		ebx,eax
	neg		ebx
	call	DumpRegs
	loop 	L_1
	exit
main ENDP
END main