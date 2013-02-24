	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	RBP
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset rbp, -16
	mov	RBP, RSP
Ltmp4:
	.cfi_def_cfa_register rbp
	mov	RAX, QWORD PTR [RIP + _a@GOTPCREL]
	mov	DWORD PTR [RBP - 4], 0
	mov	DWORD PTR [RAX], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	RAX, QWORD PTR [RIP + _a@GOTPCREL]
	mov	RCX, QWORD PTR [RIP + _b@GOTPCREL]
	mov	EDX, DWORD PTR [RAX]
	add	EDX, 1
	mov	ESI, DWORD PTR [RCX]
	add	ESI, EDX
	mov	DWORD PTR [RCX], ESI
	mov	EDX, DWORD PTR [RAX]
	add	EDX, 1
	mov	DWORD PTR [RAX], EDX
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	RAX, QWORD PTR [RIP + _a@GOTPCREL]
	cmp	DWORD PTR [RAX], 11
	jl	LBB0_1
## BB#3:
	mov	EAX, DWORD PTR [RBP - 4]
	pop	RBP
	ret
	.cfi_endproc

	.comm	_a,4,2                  ## @a
	.comm	_b,4,2                  ## @b

.subsections_via_symbols
