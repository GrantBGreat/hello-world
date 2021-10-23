SECTION .data
	message:	db "Hello World!",10	; define char, append a newline
	length:		equ $-message		; NASM keyword for const length

SECTION .text
	GLOBAL _start		; define entrypoint

_start:
	mov	rax,1		; write syscall
	mov	rdi,1		; file handle to STDOUT
	mov	rsi,message	; message
	mov	rdx,length	; length
	syscall			; invoke kernel

	mov	rax,60		; exit syscall
	mov	rdi,0		; exit code (success)
	syscall			; invoke kernel
