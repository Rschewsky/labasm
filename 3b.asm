TITLE Counting (3b.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h
val1 SDWORD 8
val2 SDWORD -15
val3 SDWORD 20

.code
main PROC
	mov		eax,EMPTY
	mov		eax,val2
	neg		eax
	add		eax,7
	sub		eax,val3
	add		eax,val1
	call	DumpRegs
	exit
main ENDP
END main