TITLE 4c on cicle (4d.asm)

INCLUDE Irvine32.inc

.data
sum DWORD ?
counter BYTE ?
cCoords WORD ?

.code
main PROC
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
	mov cCoords,dx
	mov ecx,00000003h
L_1:
	mov counter,cl
	call ClrScr
	call ReadInt
	mov ebx,eax
	call ReadInt
	add eax,ebx
	mov sum,eax
	mov dx,cCoords
	call GoToXY
	mov cCoords,dx
	mov eax,sum
	call WriteInt
	mov eax,500
	call Delay
	mov cl,counter
	loop L_1
	exit
main ENDP
END main
	
	