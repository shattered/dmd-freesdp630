#       Copyright (c) 1987 AT&T   
#       All Rights Reserved       

#       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T   
#       The copyright notice above does not evidence any     
#       actual or intended publication of such source code.  

# @(#)newmore.s	1.1.1.3	(5/12/87)

	text
	def	newmore;	val	newmore;	scl	2;	type	040;	endef

	global	newmore
newmore:
	mov.l	_addrSys,%a0
	mov.l	4*794(%a0),%a0
	jmp	(%a0)
	def	newmore;	val	~;	scl	-1;	endef
