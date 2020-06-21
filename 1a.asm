TITLE subtraction of 3 words(1a.asm)

INCLUDE Irvine32.inc

.data
EMPTY EQU 00000000h
BIGWORD WORD 0FFFFh
WORD1 WORD 0320h
WORD2 WORD 01234h
WORD3 WORD 012h

.code
MAIN PROC
	mov eax,EMPTY	;зачищаем eax
	mov	ax,BIGWORD 	;при введении другого типа данных регистра
					;выдаст ошибку, т.к. они меньше/больше 16 разрядного WORD
	call DumpRegs	;функция Irvine32 для вывода значений регистров
	sub ax,WORD1
	call DumpRegs
	sub ax,WORD2
	call DumpRegs
	sub ax,WORD3
	call DumpRegs
	exit
MAIN ENDP
END MAIN