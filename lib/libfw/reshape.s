#       Copyright (c) 1987 AT&T   
#       All Rights Reserved       

#       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T   
#       The copyright notice above does not evidence any     
#       actual or intended publication of such source code.  

# @(#)reshape.s	1.1.1.3	(5/12/87)

	text
	def	_reshape;	val	_reshape;	scl	2;	type	044;	endef

	global	_reshape
_reshape:
	mov.l	_addrSys,%a0
	mov.l	4*623(%a0),%a0
	jmp	(%a0)
	def	_reshape;	val	~;	scl	-1;	endef
