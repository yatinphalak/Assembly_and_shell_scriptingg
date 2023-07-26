	section .data
a       dq      0
b       dq      1
i       dq      2
c       dw      1
final   dq      0

	section .text
	global main

main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 16
    mov     rdx, [c]
    mov     rcx, [i]       
    mov     rax, [a]
    mov     rbx, [b]
    
    ;cmp		

for_loop:
    cmp     rcx, rdx
    jnl     end_for_loop

    mov     r8, rax
    add     r8, rbx
    mov     rax, rbx
    mov     rbx, r8
    inc     rcx
    jmp     for_loop

end_for_loop:
	cmp		rdx,1
	jne		cond2
	mov		rax,0
	jmp 	ext
cond2:
	cmp 	rdx,2
	jne		endif
	mov		rax,1
	jmp		ext
endif:
	mov	    rax,r8
ext:
    mov     rax, 60         ; syscall number for sys_exit
    xor     rdi, rdi        ; exit code 0
    syscall


