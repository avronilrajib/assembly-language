;String printing in assembly Language 8086  

.MODEL SMALL
.STACK 100H
.DATA
a db "Razib Dash $" 
b db "Department Of CSE $"
c db "Metropolitan university $" 

.CODE
MAIN PROC 
    
;iniitialize DS
MOV AX,@DATA
MOV DS,AX   

;enter your code here  

mov ah,9
lea dx,a
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
lea dx,b
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
lea dx,c
int 21h

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN