#       Copyright (c) 1988 AT&T
#       All Rights Reserved

#       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T
#       The copyright notice above does not evidence any 
#       actual or intended publication of such source code.

# %W (%G)

	text
	def	t_sync;	val	t_sync;	scl	2;	type	044;	endef

	global	t_sync
t_sync:
	mov.l	_addrSys,%a0
	mov.l	4*940(%a0),%a0
	jmp	(%a0)
	def	t_sync;	val	~;	scl	-1;	endef
