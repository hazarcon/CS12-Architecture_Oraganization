.model small

.stack 100h

.data

CR	 equ	13d

LF	 equ	10d

prompt	 db	 'Enter a character: $'

;msgout	 db	 'You entered: ' , CR, LF, '$'
msgout	 db	 CR, LF, 'You entered: $'

.code

start:

mov	ax, @data

mov	ds, ax

; copy address of message to dx

mov	dx, offset prompt

call puts	 ; display prompt

call getc	; read character into al

mov	bl, al	; save character in bl

;display next message

mov	dx, offset msgout

call puts	 ; display msgout

; display character read from keyboard

mov	dl, bl	 ; copy character to dl

call putc

mov	ax, 4c00h ; return to ms-dos

int	21h

; User defined Subprograms

putc:	 ; display character in dl

mov	ah, 2h

int	21h

ret

getc:	 ; read character into al

mov	ah, 1h

int	21h

ret

puts:	 ; display string terminated by $

; dx contains address of string

mov ah, 9h

int 21h

ret

end	 start