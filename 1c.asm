TITLE week days (1c.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h
MON EQU 01h;Monday
TUE EQU 02h;Tuesday
WED EQU 03h;Wednesday
THU EQU 04h;Thursday
FRI EQU 05h;Friday
SAT EQU 06h;Saturday
SUN EQU 07h;Sunday

.code
MAIN proc
	mov 	eax,EMPTY
	mov 	al,MON
	call	DumpRegs
	mov 	al,TUE
	call	DumpRegs
	mov 	al,WED
	call	DumpRegs
	mov 	al,THU
	call	DumpRegs
	mov 	al,FRI
	call	DumpRegs
	mov 	al,SAT
	call	DumpRegs
	mov 	al,SUN
	call	DumpRegs
	exit
MAIN ENDP
END MAIN