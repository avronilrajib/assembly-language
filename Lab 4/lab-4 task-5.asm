;Task 05
;Read a character, and if it's an uppercase letter, display it. 

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
cmp al,65
jg E
jmp end
E:
 cmp al,95
 jl C
 C:
  mov dl,al
  mov ah,2
  int 21h

  end:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN