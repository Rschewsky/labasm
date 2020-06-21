TITLE moving sum (4c.asm)

INCLUDE Irvine32.inc

.data
sum DWORD ?


.code
main PROC
	call ClrScr
	call ReadInt
	mov ebx,eax
	call ReadInt
	add eax,ebx
	mov sum,eax
	call ClrScr
	mov edx,0
	call GetMaxXY	;для поиска центра возьмем макс координаты
	mov bl,2		;и разделим их надвое
	mov eax,0
	mov al,dl	;сначала X
	div bl
	mov dl,al
	mov eax,0
	mov al,dh		;теперь Y
	div bl
	mov dh,al
	call GoToXY		;по полученным значениям идём в центр
	mov eax,sum
	call WriteInt
	call GoToXY
	exit
main ENDP
END main
	
	