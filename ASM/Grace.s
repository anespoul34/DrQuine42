%define a "%define a ",b,10,"%define b ",39,b,39,10,"%macro MAIN 1",10,"SECTION .data",10,"filename db ",34,"Grace_kid.s",34,", 0",10,"string db a",10,"length: equ $-string",10,"SECTION .text",10,"global _main",10,"_main:",10,";commentaire",10,"push rbp",10,"mov rbp, rsp",10,"sub rsp, 16",10,"mov rax, 0x2000005",10,"lea rdi, [rel filename]",10,"mov rsi, 0x0202",10,"mov rdx, 0666o",10,"syscall",10,"mov r12, rax",10,"mov rax, 0x2000004",10,"mov rdi, r12",10,"lea rsi, [rel string]",10,"mov rdx, length",10,"syscall",10,"mov rax, 0x2000006",10,"mov rdi, r12",10,"syscall",10,"leave",10,"ret",10,"%endmacro",10,"MAIN b"
%define b '"%define a ",b,10,"%define b ",39,b,39,10,"%macro MAIN 1",10,"SECTION .data",10,"filename db ",34,"Grace_kid.s",34,", 0",10,"string db a",10,"length: equ $-string",10,"SECTION .text",10,"global _main",10,"_main:",10,";commentaire",10,"push rbp",10,"mov rbp, rsp",10,"sub rsp, 16",10,"mov rax, 0x2000005",10,"lea rdi, [rel filename]",10,"mov rsi, 0x0202",10,"mov rdx, 0666o",10,"syscall",10,"mov r12, rax",10,"mov rax, 0x2000004",10,"mov rdi, r12",10,"lea rsi, [rel string]",10,"mov rdx, length",10,"syscall",10,"mov rax, 0x2000006",10,"mov rdi, r12",10,"syscall",10,"leave",10,"ret",10,"%endmacro",10,"MAIN b"'
%macro MAIN 1
SECTION .data
filename db "Grace_kid.s", 0
string db a
length: equ $-string
SECTION .text
global _main
_main:
;commentaire
push rbp
mov rbp, rsp
sub rsp, 16
mov rax, 0x2000005
lea rdi, [rel filename]
mov rsi, 0x0202
mov rdx, 0666o
syscall
mov r12, rax
mov rax, 0x2000004
mov rdi, r12
lea rsi, [rel string]
mov rdx, length
syscall
mov rax, 0x2000006
mov rdi, r12
syscall
leave
ret
%endmacro
MAIN b