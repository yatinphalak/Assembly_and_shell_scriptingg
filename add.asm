	segment .data
a	dq	12
b	dq	10
c	dq	0

	segment .text
	global main
main:
	push 	rbp
	mov		rbp,rsp
	sub		rsp,16
	
	mov		rax,[a]
	add		rax,[b]
	mov		[c],rax
	mov		rax,60
	xor		rax,rax
	ret
		
