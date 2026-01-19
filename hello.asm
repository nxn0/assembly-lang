	global	_start

	section	.text
_start:	mov	rax, 1			;writing syscall
	mov	rdi, 1			;file handle 1 is stdout
	mov	rsi, message 		;address of string to op
	mov	rdx, 13			;no of bytes
	syscall				;os will write
	mov	rax, 60			;exiting call
	xor	rdi, rdi		;exit code 0
	syscall				;os to exit pgrm

	section	.data
message:	db	"nandana", 10	;10 is newline

