.MODEL SMALL
.DATA
.stack

hello db 13,10,'Hello World',0
;      db 13,10,'    #####     ',0        ; there are spaces
ROW1 DB 5
COL DB 20

.CODE
.STARTUP
MOV AL, 3       ; 80x25 color
INT 10H         ; video BIOS call   
MOV AH, 2       ; set cursor position
MOV BH, 0       ; display page number
; mov bl,3
MOV DH, ROW1        ; row number
MOV DL, COL     ; column number
INT 10H         ; video BIOS call
CALL FAR PTR DISP   ; display first line of video text

.EXIT

DISP PROC FAR
        MOV SI, 0   ; set up array pointer
NEXT:   
    MOV AL, hello[SI]; get name character
    CMP AL, 0   ; exit if character is 0
    JZ EXIT     
    MOV BH, 0   ; display page number
;    MOV BL, [BP+SI] ; get attribute
    MOV CX, 1   ; do 1 character
    MOV AH, 9   ; write character/attribute on screen
    INT 10H     ; video BIOS call
;    INC SI      ; point to next character/attribute
    ADD DL, 1   ; move two columns to the right
    MOV AH, 2   ; set cursor position
    INT 10H     ; video BIOS call
    JMP NEXT    ; and continue
EXIT:   RET
DISP ENDP

END