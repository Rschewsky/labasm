TITLE defining operators (1b.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h
SMALLEST BYTE 042h
NORMAL WORD 01984h
BIG DWORD 012345678h
BIGGER QWORD 0123456789ABCDEFh

.code
MAIN PROC
mov eax,EMPTY
call DumpRegs
mov al,SMALLEST
call DumpRegs
add ax,NORMAL
call DumpRegs
sub eax,BIG
call DumpRegs
				;арифметические действия с 64-битным QWORD не выполнялись из-за
				;трудностей с этим в 32-битной арифметике MASM32
exit
MAIN ENDP
END MAIN