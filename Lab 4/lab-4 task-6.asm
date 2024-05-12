;Task 06
;Read a character. If it's "y" or "Y", display it; otherwise, terminate the
;program.

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

cmp al,89
je P

cmp al,121
je S 

jmp end

P:
mov ah,2
mov dl,89
int 21h
jmp end


S:
mov ah,2
mov dl,121
int 21h

end:


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN