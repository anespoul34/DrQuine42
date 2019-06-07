%define a "%define "
%define b ";Ceci est un commentaire",10,"section .data",10,"string db f",10,"section .text",10,"global _main",10,"extern _puts",10,"fonction:",10,"ret",10,"_main:",10,"call fonction",10,";Ceci est un second commentaire",10,"push rbp",10,"mov rbp, rsp",10,"sub rsp, 16",10,"lea rdi, [rel string]",10,"call _puts",10,"leave",10,"ret"
%define c '";Ceci est un commentaire",10,"section .data",10,"string db f",10,"section .text",10,"global _main",10,"extern _puts",10,"fonction:",10,"ret",10,"_main:",10,"call fonction",10,";Ceci est un second commentaire",10,"push rbp",10,"mov rbp, rsp",10,"sub rsp, 16",10,"lea rdi, [rel string]",10,"call _puts",10,"leave",10,"ret"'
%define d "%deftok "
%define e "a, 97, 32, 34, a, 34, 10, a, 98, 32, c, 10, a, 99, 32, 39, c, 39, 10, a, 100, 32, 34, d, 34, 10, a, 101, 32, 34, e, 34, 10, d, 102, 32, 101, 10, 100, 98, 32, 102, 10, 10, b"
%deftok f e
db f

;Ceci est un commentaire
section .data
string db f
section .text
global _main
extern _puts
fonction:
ret
_main:
call fonction
;Ceci est un second commentaire
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel string]
call _puts
leave
ret
