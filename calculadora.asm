.model small
.stack 64
.data

numero1 db 0
numero2 db 0
resta db 0
multiplicacion db 0
residuo db 0                             
  
msgn1 db 10,13, "INGRESE EL PRIMER NUMERO   : ",'$'               
msgn2 db 10,13, "INGRESE EL SEGUNDO NUMERO  : ",'$'
msg1 db 10,13,  "SUMA                       : ",'$'
msg2 db 10,13,  "RESTA                      : ",'$'
msg3 db 10,13,  "MULTIPLICACION             : ",'$'
msg4 db 10,13,  "DIVISION                   : ",'$'
msg5 db 10,13,  "RESIDUO                    : ",'$'

.code
begin proc far

mov ax,@data
mov ds,ax

mov ah,09
lea dx, msgn1
int 21h
mov ah,01
int 21h
sub al,30h
mov numerol, al

mov ah,09
lea dx, msgn2
int 21h
mov ah,01
int 21h
sub al,30h
mov numero2,al

mov a1, numero1
add a1, numero2
mov suma, a1

mov a1, numero1
sub a1, numero2
mov resta, a1

mov a1, numero1
mul numero2
mov multiplicacion, a1

mov a1, numero1
div numero2
mov division,a1

mov a1,numero1
div numero2
mov residuo,ah

mov ah,09
lea dx,msg1
int 21h
mov d1,suma
add d1,30h
mov ah,02
int 21h

mov ah,09
lea dx,msg2
int 21h
mov d1,resta
add d1,30h
mov ah,02
int 21h

mov ah,09
lea dx,msg3
int 21h
mov d1,multiplicacion
add d1,30h
mov ah,02
int 21h

mov ah,09
lea dx,msg4
int 21h
mov d1,division
add d1,30h
mov ah,02
int 21h

mov ah,09
lea dx,msg5
int 21h
mov d1,residuo
add d1,30h
mov ah,02
int 21h
;
mov ah, 4ch
int 21h

begin endp
end








