;LAB-4 Task 03
;If AX contains a negative number, put -1 in BX; if AX contains 0, put 0 In BX;
;if AX contains a positive number, put 1 in BX.

.MODEL SMALL
.STACK 100H
.DATA  

.CODE
MAIN PROC 
    
;iniitialize DS
MOV AX,@DATA
MOV DS,AX   

;enter your code here  

 mov ax,5
 neg ax
 
 cmp ax,0
 jl nege
 
 cmp ax,0
 jg posi
 
 posi:
 mov bx,1
 jmp end
 
 cmp ax,0
 je equal
 
 equal:
 mov bx,0
 jmp end
 
 nege:
 mov bx,1
 neg bx 
 

 end:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN