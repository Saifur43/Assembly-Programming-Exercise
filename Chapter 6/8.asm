.MODEL SMALL
.STACK 100H
.DATA
MSG DB '?$'
MSG2 DB 'OUTPUT IS: $'

.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    ;PRINT MSG
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    ;LETTERS INPUT
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1                                     )
    INT 21H
    MOV CL,AL
    
    ;NEW LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;PRINT MSG

    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    ;COMPARE TWO LETTTERS
    CMP BL,CL
    
    ;JUMP TP GREAT IF BL>CL
    JA GREAT
    
    
    ;ELSE OUTPUT IN INPUT ORDER
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    
    ;JUMP TO EXIT
    JMP EXIT
    
    
    ;IF BL>CL
    GREAT:
    
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    MOV AH,2
    MOV DL,bL
    INT 21H
     
     
    ;EXIT 
    JMP EXIT
    
    EXIT:
    
    
    MAIN ENDP
END MAIN
