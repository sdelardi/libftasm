section .data
i:
	.int db 0

section .text
	global start
	global ft_bzero
	global endwhile

start:
	call ft_bzero
	ret

ft_bzero:
	enter 16, 0
	lea rax, [rel i.int]
	ret
	cmp rax, rdi
	jl endwhile
	inc rax
	push byte 0
	jmp loop

endwhile:
	leave
	ret
