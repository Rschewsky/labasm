TITLE table of colors (4b.asm)

INCLUDE Irvine32.inc

.data
EMPTY	EQU 00000000h
IntArray DWORD 10 DUP (EMPTY)

.code
main PROC
	mov eax,EMPTY
	mov ecx,EMPTY
	mov ecx,0Ah
	mov esi,0h
L_1:
	call ReadInt
	mov [IntArray+esi],eax
	call DumpRegs
	add esi,4
	loop L_1
	mov ecx,0Ah
	mov esi,0h
L_2:
	mov eax,[IntArray+esi]
	call DumpRegs
	call WriteInt
	add esi,4
	loop L_2
	exit
main ENDP
END main