	global ft_write

ft_write:
	mov	rax, 1
	syscall
	jc	error  ; if doesn't work, write set flags carry to 1 so jmp exit error
	ret

error:
	mov	rax, -1
	ret
