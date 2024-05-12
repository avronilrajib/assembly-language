;Task 01
;Take a number in AX, and if it’s a negative number, replace it by 5.

.MODEL SMALL
.STACK 100H
.DATA  

.CODE
MAIN PROC 
    
;iniitialize DS
MOV AX,@DATA
MOV DS,AX   

;enter your code here  
mov ax,2
neg ax

cmp ax,0
jnl nege

nege:
 mov ax,5 
 
 jmp exit

;exit to DOS
exit:
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN