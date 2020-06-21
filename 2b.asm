TITLE CF and inc/dec (2a.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h

.code
main PROC
	mov		eax,EMPTY
	call	DumpRegs
	dec		eax
	call	DumpRegs
	inc		eax
	call	DumpRegs
	sub		eax,1
	call	DumpRegs
	dec		eax
	call	DumpRegs
	exit
main ENDP
END main