;Task 02
;Suppose AL and BL contain extended ASCII characters. Display the one that
;comes first in the character sequence.

.MODEL SMALL
.STACK 100H
.DATA  
a db 80
b db 77
W db "COMES FIRST IN THE CHARACTER SEQUENCE : $"
.CODE
MAIN PROC 
    
;iniitialize DS
MOV AX,@DATA
MOV DS,AX   

;enter your code here  

mov al,a
sub al,30h

mov bl,b
sub bl,30h

mov ah,9
lea dx,w
int 21h

cmp al,bl
jg R

mov dl,al
add dl,30h
mov ah,2
int 21h
jmp end

R:

 mov dl,bl
 add dl,30h
 mov ah,2
 int 21h
 
 end:


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN