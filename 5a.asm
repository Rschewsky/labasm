TITLE Ocenki1 (5a.asm)

INCLUDE Irvine32.inc

.data
	scorestring BYTE "enter your scores:",0
	output BYTE "your mark is ",0
	toosmall BYTE "your mark is too small",0
	toobig BYTE "your mark is extremely large",0



.code
main PROC
	call ClrScr
	mov edx,offset scorestring
	call WriteString
	mov eax,0
	call ReadInt
	jns L_1
	mov edx,offset toosmall
	call WriteString
	jmp L_2
L_1:
.IF eax>100
	mov edx,offset toobig
	call WriteString
.ELSE
	mov edx,offset output
	call WriteString
.IF eax<60
	mov al,1
.ELSEIF eax<70
	mov al,2
.ELSEIF eax<80
	mov al,3
.ELSEIF eax<90
	mov al,4
.ELSE
	mov al,5
.ENDIF
	or al,00110000b
	mov ah,0
	call WriteChar
.ENDIF
L_2:
	exit
main ENDP
END main