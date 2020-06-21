TITLE 30 random symbols (4g.asm)

INCLUDE Irvine32.inc

.data
	Symbol BYTE ?
	counter WORD ?
	MAXCOORD word ?
	
.code
RandomWord PROC
	call GetMseconds
	call RandomRange
	and eax,0000FFFFh
ret
RandomWord ENDP

main PROC
	call ClrScr
	mov ecx,300
	mov eax,0
	mov ebx,0
	mov edx,0
	call GetMaxXY
	mov MAXCOORD,dx
L_1:
	mov counter,cx
	
	call RandomWord
	mov edx,eax
	mov eax,0
	mov al,dl
	mov bx,MAXCOORD
	div bl
	mov dl,ah
	mov eax,0
	mov al,dh
	mov bl,bh
	div bl
	mov dh,ah
	call GotoXY
	
	mov eax,77
	call WriteChar
	
	call RandomWord
	mov bx,290
	mov edx,0
	div bx
	mov ax,dx
	add ax,10
	call Delay
	
	mov cx,counter
	loop L_1
	
exit
main ENDP
END main