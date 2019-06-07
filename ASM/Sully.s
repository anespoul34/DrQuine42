%define i 5
%define a "%define i ",i+47,10,"%define a ",b,10,"%define b ",39,b,39,10,"SECTION .data",10,"string db a",10,"length: equ $-string",10,"sully5 db ",34,"Sully_5.s",34,",0",10,"filename db ",34,"Sully_",34,",i+47,",34,".s",34,",0",10,"compil db ",34,"nasm -f macho64 Sully_",34,",i+47,",34,".s && ld -macosx_version_min 10.8.0 -lSystem -o Sully_",34,",i+47,",34," Sully_",34,",i+47,",34,".o && ./Sully_",34,",i+47,",34," ; rm Sully_",34,",i+47,",34,".o",34,",0",10,"sully5_compil db ",34,"nasm -f macho64 Sully_",34,",i+48,",34,".s && ld -macosx_version_min 10.8.0 -lSystem -o Sully_",34,",i+48,",34," Sully_",34,",i+48,",34,".o && ./Sully_",34,",i+48,",34," ; rm Sully_",34,",i+48,",34,".o",34,",0",10,"SECTION .text",10,"global _main",10,"extern _system",10,"extern _open",10,"_main:",10,"push rbp",10,"mov rbp, rsp",10,"sub rsp, 16",10,"lea r13, [rel string]",10,"lea r15, [rel compil]",10,"lea rdi, [rel sully5]",10,"mov rsi, 0x0000",10,"call _open",10,"cmp rax, 0",10,"lea rdi, [rel filename]",10,"jle increm",10,"jmp decrem",10,"increm:",10,"mov r14, i",10,"cmp r14, 5",10,"jne decrem",10,"mov byte[r13 + 10], 53",10,"lea r15, [rel sully5_compil]",10,"lea rdi, [rel sully5]",10,"decrem:",10,"mov r14, i",10,"cmp r14, 0",10,"jle end",10,"cmp r14, 5",10,"jg end",10,"mov rax, 0x2000005",10,"mov rsi, 0x0202",10,"mov rdx, 0666o",10,"syscall",10,"mov r12, rax",10,"mov rax, 0x2000004",10,"mov rdi, r12",10,"lea rsi, [rel r13]",10,"mov rdx, length",10,"syscall",10,"mov rax, 0x2000006",10,"mov rdi, r12",10,"syscall",10,"mov r14, i",10,"cmp r14, 0",10,"jle end",10,"lea rdi, [rel r15]",10,"call _system",10,"end:",10,"leave",10,"ret"
%define b '"%define i ",i+47,10,"%define a ",b,10,"%define b ",39,b,39,10,"SECTION .data",10,"string db a",10,"length: equ $-string",10,"sully5 db ",34,"Sully_5.s",34,",0",10,"filename db ",34,"Sully_",34,",i+47,",34,".s",34,",0",10,"compil db ",34,"nasm -f macho64 Sully_",34,",i+47,",34,".s && ld -macosx_version_min 10.8.0 -lSystem -o Sully_",34,",i+47,",34," Sully_",34,",i+47,",34,".o && ./Sully_",34,",i+47,",34," ; rm Sully_",34,",i+47,",34,".o",34,",0",10,"sully5_compil db ",34,"nasm -f macho64 Sully_",34,",i+48,",34,".s && ld -macosx_version_min 10.8.0 -lSystem -o Sully_",34,",i+48,",34," Sully_",34,",i+48,",34,".o && ./Sully_",34,",i+48,",34," ; rm Sully_",34,",i+48,",34,".o",34,",0",10,"SECTION .text",10,"global _main",10,"extern _system",10,"extern _open",10,"_main:",10,"push rbp",10,"mov rbp, rsp",10,"sub rsp, 16",10,"lea r13, [rel string]",10,"lea r15, [rel compil]",10,"lea rdi, [rel sully5]",10,"mov rsi, 0x0000",10,"call _open",10,"cmp rax, 0",10,"lea rdi, [rel filename]",10,"jle increm",10,"jmp decrem",10,"increm:",10,"mov r14, i",10,"cmp r14, 5",10,"jne decrem",10,"mov byte[r13 + 10], 53",10,"lea r15, [rel sully5_compil]",10,"lea rdi, [rel sully5]",10,"decrem:",10,"mov r14, i",10,"cmp r14, 0",10,"jle end",10,"cmp r14, 5",10,"jg end",10,"mov rax, 0x2000005",10,"mov rsi, 0x0202",10,"mov rdx, 0666o",10,"syscall",10,"mov r12, rax",10,"mov rax, 0x2000004",10,"mov rdi, r12",10,"lea rsi, [rel r13]",10,"mov rdx, length",10,"syscall",10,"mov rax, 0x2000006",10,"mov rdi, r12",10,"syscall",10,"mov r14, i",10,"cmp r14, 0",10,"jle end",10,"lea rdi, [rel r15]",10,"call _system",10,"end:",10,"leave",10,"ret"'
SECTION .data
string db a
length: equ $-string
sully5 db "Sully_5.s",0
filename db "Sully_",i+47,".s",0
compil db "nasm -f macho64 Sully_",i+47,".s && ld -macosx_version_min 10.8.0 -lSystem -o Sully_",i+47," Sully_",i+47,".o && ./Sully_",i+47," ; rm Sully_",i+47,".o",0
sully5_compil db "nasm -f macho64 Sully_",i+48,".s && ld -macosx_version_min 10.8.0 -lSystem -o Sully_",i+48," Sully_",i+48,".o && ./Sully_",i+48," ; rm Sully_",i+48,".o",0
SECTION .text
global _main
extern _system
extern _open
_main:
push rbp
mov rbp, rsp
sub rsp, 16
lea r13, [rel string]
lea r15, [rel compil]
lea rdi, [rel sully5]
mov rsi, 0x0000
call _open
cmp rax, 0
lea rdi, [rel filename]
jle increm
jmp decrem
increm:
mov r14, i
cmp r14, 5
jne decrem
mov byte[r13 + 10], 53
lea r15, [rel sully5_compil]
lea rdi, [rel sully5]
decrem:
mov r14, i
cmp r14, 0
jle end
cmp r14, 5
jg end
mov rax, 0x2000005
mov rsi, 0x0202
mov rdx, 0666o
syscall
mov r12, rax
mov rax, 0x2000004
mov rdi, r12
lea rsi, [rel r13]
mov rdx, length
syscall
mov rax, 0x2000006
mov rdi, r12
syscall
mov r14, i
cmp r14, 0
jle end
lea rdi, [rel r15]
call _system
end:
leave
ret