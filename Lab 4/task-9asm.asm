;Task 09
;Write a program to check whether a number is divisible by 5 and 11 or not.
.MODEL SMALL
.STACK 100H
.DATA
a db 10,13,"divisible$"
b db 10,13,"Not divisible$"
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
 
 mov ax,55
 mov bl,5
 mov cx,ax
 mov dl,11
 div bl
 
 cmp ah,0
 je divi
 jmp notdiv
  
 divi:
  mov ax,cx
  div dl
  cmp ah,0
  je done 
  jmp notdiv
  
  done:
  mov ah,9
  lea dx,a
  int 21h
  jmp exit
  
 notdiv:
 mov ah,9
 lea dx,b
 int 21h
  exit: 
  
 
 
 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN