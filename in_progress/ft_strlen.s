	global _ft_strlen

_ft_strlen:
	xor	rax, rax	; initialise rax equal to mov	rax, 0
	cmp	rdi, 0
	je	_return

_while_loop:
	cmp	byte [rdi + rax], 0
	je	_return
	inc	rax
	jmp	_while_loop

_return:
	ret
