.MODEL SMALL
.STACK 200H
.DATA  
Textstring db 13,10, "I'm a string$",0
subok      db 13d,10d,"I'm a string$"

.CODE
START:
Mov ax, SEG Textstring
Mov ds, ax
Mov dx, OFFSET Textstring
Mov ah, 09
Int 21h
    INC SI      ; point to next character/attribute
    ADD DL, 1   ; move two columns to the right
    MOV AH, 2   ; set cursor position

Mov ax, SEG subok
Mov ds, ax
Mov dx, OFFSET subok
Mov ah, 09
Int 21h
mov ah, 4ch
mov al,00h
int 21h

END START