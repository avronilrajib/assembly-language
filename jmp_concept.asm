;JMP CONCEPT 

.MODEL SMALL
.STACK 100H
.DATA
  
a db "JMP Concept $"
b db 10,13, "Assembly Language $" 
c db  " Programming$" 
d db 10,13, "Thank You$"

.CODE
MAIN PROC 
    
;iniitialize DS
MOV AX,@DATA
MOV DS,AX   

;enter your code here  

 mov ah,9
 lea dx,a
 int 21h 

m:
 mov ah,9
 lea dx,b
 int 21h 
 jmp n

n:
 mov ah,9
 lea dx,c
 int 21h 
 jmp O

O:
mov ah,9
lea dx,d
int 21h
jmp exit




;exit to DOS 
exit:
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN