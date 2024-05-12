;Task 04
;If AL contains 1 or 3, display “o”; if AL contains 2 or 4 display "e".

.MODEL SMALL
.STACK 100H
.DATA  

a db "O $"
b db "E $"
.CODE
MAIN PROC 
    
;iniitialize DS
MOV AX,@DATA
MOV DS,AX   

;enter your code here  
mov al,4 
          
cmp al,1
je O

cmp al,3
je O
 
cmp al,2 
je E 

cmp al,4
je E 
 
O:
mov ah,9
lea dx,a
int 21h
jmp end



E:
mov ah,9
lea dx,b
int 21h
end:

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN