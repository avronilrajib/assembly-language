;Variable

.MODEL SMALL
.STACK 100H
.DATA 

  msg db 3
  msg1 db ? 
  msg2 db ?  
  r db ?
  
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here  

mov ax,@DATA  
mov ds,ax

mov ah,2
add msg,48
mov dl,msg 
int 21h

mov ah,1 
int 21h
mov msg1,al

 
 ;new line print start
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
 ;new line print end
 
mov ah,2
mov dl,msg1
int 21h  
 
 ;new line print start
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
 ;new line print end 
 
mov ah,1
int 21h
mov msg2,al

 ;new line print start
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
 ;new line print end

mov ah,2
mov dl,msg2
int 21h 

 ;new line print start
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
 ;new line print end  
 
 mov ah,1
 int 21h
 mov r,al  
 
 ;new line print start
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h                 
 ;new line print end     
 
 mov ah,2
 mov dl,r
 int 21h
 

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN