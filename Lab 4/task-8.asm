;Task 08
;Write a program to input any alphabet and check whether it is vowel or
;consonant.
.MODEL SMALL
.STACK 100H
.DATA
 a db 65
 e db 69
 i db 73
 o db 79
 u db 85 
 
 vo db 10,13, "Vowel$"
 cn db 10,13, "Consonant$" 
 
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
 
mov ah,1
int 21h

cmp al,a
je vowel
cmp al,e
je vowel
cmp al,i
je vowel
cmp al,o
je vowel
cmp al,u
je vowel

 mov ah,9
 lea dx,cn
 int 21h
 jmp exit


vowel: 

mov ah,9
lea dx,vo
int 21h
exit:
 



;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN