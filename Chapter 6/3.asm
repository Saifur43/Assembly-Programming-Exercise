.MODEL SMALL
.STACK 100H

.DATA
.CODE
MAIN PROC
    MOV CX,49
    MOV AX,1
    MOV BX,1
    MOV AH,2
    
   LL:
    MOV DX,AX
    INT 21H
    
    ADD BX,3
    ADD AX,BX
    
    LOOP LL
    
    
    MAIN ENDP
END MAIN