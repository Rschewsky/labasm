TITLE OF and add/sub (2d.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h

.code
main PROC
	mov		eax,EMPTY
	mov		al,087h
	call	DumpRegs
	sub		al,18h
	call	DumpRegs
	sub		al,04h
	call	DumpRegs
	add		al,33h
	call	DumpRegs
	exit
main ENDP
END main