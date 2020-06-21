TITLE ZF/SF and add/sub (2c.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h

.code
main PROC
	mov		eax,EMPTY
	call	DumpRegs
	add		eax,-8
	call	DumpRegs
	add		eax,14
	call	DumpRegs
	sub		eax,6
	call	DumpRegs
	sub		eax,4
	call	DumpRegs
	exit
main ENDP
END main