#       Copyright (c) 1987 AT&T   
#       All Rights Reserved       

#       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T   
#       The copyright notice above does not evidence any     
#       actual or intended publication of such source code.  

# @(#)tm_ret.s	1.1.1.2	(5/12/87)

	text
	def	tm_ret;	val	tm_ret;	scl	2;	type	040;	endef

	global	tm_ret
tm_ret:
	mov.l	_addrSys,%a0
	mov.l	4*726(%a0),%a0
	jmp	(%a0)
	def	tm_ret;	val	~;	scl	-1;	endef
