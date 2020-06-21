TITLE CF and add/sub (2a.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h

.code
main PROC
	mov		eax,EMPTY
	call	DumpRegs
	mov		al,2h
	call	DumpRegs
	sub		al,12h
	call	DumpRegs
	add 	al,9h
	call	DumpRegs
	add 	al,24h
	call	DumpRegs
	exit
main ENDP
END main