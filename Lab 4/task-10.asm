;Task 10
;Write a program to find the maximum and minimum between three
;numbers.
.MODEL SMALL
.STACK 100H
.DATA
W DB "ENTER THREEE NUMBER : $"
X DB "MAXIMUM NUMBER IS $"
Y DB "MINIMUM NUMBER IS $"
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
LEA DX,W
MOV AH,9
INT 21H

MOV AH,1
INT 21H
MOV BL,AL
SUB BL,30

MOV AH,1
INT 21H
MOV CL,AL
SUB CL,30 

MOV AH,1
INT 21H
MOV CH,AL
SUB CH,30

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

CMP BL,CL
JG CK1
JMP OUTER1
CK1:

CMP BL,CH
JG CK2
JMP OUTER1
CK2:

MOV BH,BL
OUTER1:

CMP CL,BL
JG CK3
JMP OUTER2
CK3:
CMP CL,CH
JG CK4
JMP OUTER2
CK4:

MOV BH,CL
OUTER2:
CMP CH,BL
JG CK5
JMP OUTER3
CK5:
CMP CH,CL
JG CK6
JMP OUTER3
CK6:

MOV BH,CH
OUTER3:
CMP BL,CL
JL CK7
JMP OUTER4
CK7:
CMP BL,CH
JL CK8
JMP OUTER4
CK8:

MOV AL,BL
OUTER4:
CMP CL,BL
JL CK9
JMP OUTER5
CK9:
CMP CL,CH
JL CK10
JMP OUTER5
CK10:

MOV AL,CL
OUTER5:
CMP CH,BL
JL CK11
JMP OUTER6
CK11:
CMP CH,CL
JL CK12
JMP OUTER6
CK12:

MOV AL,CH
OUTER6:

MOV CL,AL
LEA DX,X
MOV AH,9
INT 21H
MOV DL,BH
ADD DL,30

MOV AH,2
INT 21H

MOV DL,0AH
INT 21H

MOV DL,0DH
INT 21H
LEA DX,Y

MOV AH,9
INT 21H

MOV DL,CL
ADD DL,30

MOV AH,2
INT 21H

END:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN