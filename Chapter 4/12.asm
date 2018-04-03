.MODEL SMALL
.STACK 100H
.DATA
MSG DB '***********$'
MSG2 DB '****$'
MSG1 DB '?$'
 
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    ;PRINT MSG1
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    ;FIRST INPUT
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;FIRST INPUT
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ;FIRST INPUT
    MOV AH,1
    INT 21H
    MOV BH,AL  
    
    ;NEW LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;PRINT MSG 5 TIMES
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;PRINT MSG2
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    ;PRINT FIRST INPUT
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    ;PRINT FIRST INPUT
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    ;PRINT FIRST INPUT
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    ;PRINT MSG2
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    ;NEW LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;PRINT MSG 5 TIMES
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;EXIT TO DOS
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN