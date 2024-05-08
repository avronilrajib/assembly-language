;Input output using user frendly 

.MODEL SMALL
.STACK 100H
.DATA  

a db "Enter A Number: $" 
b db "Your Number Is: $"


.CODE
MAIN PROC 
    
;iniitialize DS
MOV AX,@DATA
MOV DS,AX   

;enter your code here  

mov ah,9
lea dx,a
int 21h

mov ah,1
int 21h
mov a,al

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
lea dx,b
int 21h

mov ah,2
mov dl,a
int 21h


mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h





;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN