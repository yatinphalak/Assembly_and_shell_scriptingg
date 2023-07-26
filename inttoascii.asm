	segment .data
a 	dq	55

	segment .text
	global main

main:
	push 	rbp
	mov		rbp,rsp
	
	mov		rax,[a]
	add		rax,'0'
	
	jmp ext
ext:
	mov		rax,60
	xor		rdi,rdi
	syscall
	
