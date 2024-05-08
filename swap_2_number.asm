;XCHG pseudo ops to swap tw
;swap 2 number

.MODEL SMALL
.STACK 100H
.DATA  


.CODE
MAIN PROC 
    
;iniitialize DS
MOV AX,@DATA
MOV DS,AX   

;enter your code here  

 mov ah,1
 int 21h
 mov bl,al
 
 mov ah,1
 int 21h
 mov bh,al
 
 xchg bl,bh
 
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
          
 mov ah,2
 mov dl,bl
 int 21h
 
 mov ah,2
 mov dl,bh
 int 21h


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN