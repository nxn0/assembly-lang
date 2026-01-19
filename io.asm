global 	_start

section	.data

	str:	db	"max 64 bytes. say smthing:", 0xA
	STRSIZE:	equ $ - str
	STDIN: 	equ 	0
	STDOUT: equ	1

section .bss
	buf:	resb	64
	BUF_SIZE:equ	64
section	.text
	_start:
		mov	rax, 1
		mov	rdi, STDOUT
		mov	rsi, str
		mov	rdx, STRSIZE
		syscall
	
		xor 	rax, rax
		mov	rdi, STDIN
		mov 	rsi, buf
		mov	rdx, BUF_SIZE
		syscall

		mov 	rbx, rax
		mov	rax, 1
		mov	rdi, STDOUT
		mov	rsi, buf
		mov 	rdx, rbx
		syscall

		mov	rax, 60
		xor	rdi, rdi
		syscall



