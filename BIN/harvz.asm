.MODEL SMALL
.STACK 200H
.DATA  
Textstring db 13,10, "This is mine:",0

subok1     db 13d,10d,"      ___           ___           ___                        ___     $"
subok2     db 13d,10d,"     /__/\         /  /\         /  /\          ___         /  /\    $"
subok3     db 13d,10d,"     \  \:\       /  /::\       /  /::\        /__/\       /  /::|   $"
subok4     db 13d,10d,"      \__\:\     /  /:/\:\     /  /:/\:\       \  \:\     /  /:/:|   $"
subok5     db 13d,10d,"  ___ /  /::\   /  /:/~/::\   /  /:/~/:/        \  \:\   /  /:/|:|__ $"
subok6     db 13d,10d," /__/\  /:/\:\ /__/:/ /:/\:\ /__/:/ /:/___  ___  \__\:\ /__/:/ |:| /\$"
subok7     db 13d,10d," \  \:\/:/__\/ \  \:\/:/__\/ \  \:\/:::::/ /__/\ |  |:| \__\/  |:|/:/$"
subok8     db 13d,10d,"  \  \::/       \  \::/       \  \::/~~~~  \  \:\|  |:|     |  |:/:/ $"
subok9     db 13d,10d,"   \  \:\        \  \:\        \  \:\       \  \:\__|:|     |  |::/  $"
subok10    db 13d,10d,"    \  \:\        \  \:\        \  \:\       \__\::::/      |  |:/   $"
subok11    db 13d,10d,"     \__\/         \__\/         \__\/           ~~~~       |__|/    $"

.CODE
START:
Mov ax, SEG Textstring
Mov ds, ax
Mov dx, OFFSET Textstring
Mov ah, 09
Int 21h
Mov ax, SEG subok1
Mov ds, ax
Mov dx, OFFSET subok1
Mov ah, 09
Int 21h
Mov ax, SEG subok2
Mov ds, ax
Mov dx, OFFSET subok3
Mov ah, 09
Int 21h
Mov ax, SEG subok4
Mov ds, ax
Mov dx, OFFSET subok4
Mov ah, 09
Int 21h
Mov ax, SEG subok5
Mov ds, ax
Mov dx, OFFSET subok5
Mov ah, 09
Int 21h
Mov ax, SEG subok6
Mov ds, ax
Mov dx, OFFSET subok6
Mov ah, 09
Int 21h
Mov ax, SEG subok7
Mov ds, ax
Mov dx, OFFSET subok7
Mov ah, 09
Int 21h
Mov ax, SEG subok8
Mov ds, ax
Mov dx, OFFSET subok8
Mov ah, 09
Int 21h
Mov ax, SEG subok9
Mov ds, ax
Mov dx, OFFSET subok9
Mov ah, 09
Int 21h
Mov ax, SEG subok10
Mov ds, ax
Mov dx, OFFSET subok10
Mov ah, 09
Int 21h
Mov ax, SEG subok11
Mov ds, ax
Mov dx, OFFSET subok11
Mov ah, 09
Int 21h
mov ah, 4ch
mov al,00h
int 21h

END START