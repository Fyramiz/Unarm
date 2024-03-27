.text
_panic:
	bl _exit
//_start:
//	bl write_linux
_exit:
	mov x8, 93
	mov x0, 1 
	svc 0
_start:
	mov x8, 0x40
	mov x1, helloworld
	mov x2, len
	svc 0

helloworld:
	.asciz "Hello, World!"
len = . - helloworld
