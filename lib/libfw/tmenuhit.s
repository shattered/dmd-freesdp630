#       Copyright (c) 1987 AT&T   
#       All Rights Reserved       

#       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T   
#       The copyright notice above does not evidence any     
#       actual or intended publication of such source code.  

# @(#)tmenuhit.s	1.1.1.2	(5/12/87)

	text
	def	~0fake;	scl	10;	type	010;	size	4;	endef
	def	uval;	val	0;	scl	8;	type	016;	endef
	def	grey;	val	2;	scl	8;	type	016;	endef
	def	~eos;	val	4;	scl	102;	tag	~0fake;	size	4;	endef
	data	1
	text
	def	Point;	scl	10;	type	010;	size	4;	endef
	def	x;	val	0;	scl	8;	type	04;	endef
	def	y;	val	2;	scl	8;	type	04;	endef
	def	~eos;	val	4;	scl	102;	tag	Point;	size	4;	endef
	data	1
	def	Point;	scl	13;	type	010;	tag	Point;	size	4;	endef
	text
	def	Rectangle;	scl	10;	type	010;	size	8;	endef
	def	origin;	val	0;	scl	8;	type	010;	tag	Point;	size	4;	endef
	def	corner;	val	4;	scl	8;	type	010;	tag	Point;	size	4;	endef
	def	~eos;	val	8;	scl	102;	tag	Rectangle;	size	8;	endef
	data	1
	def	Rectangle;	scl	13;	type	010;	tag	Rectangle;	size	8;	endef
	text
	def	Bitmap;	scl	10;	type	010;	size	18;	endef
	def	base;	val	0;	scl	8;	type	024;	endef
	def	width;	val	4;	scl	8;	type	016;	endef
	def	rect;	val	6;	scl	8;	type	010;	tag	Rectangle;	size	8;	endef
	def	_null;	val	14;	scl	8;	type	022;	endef
	def	~eos;	val	18;	scl	102;	tag	Bitmap;	size	18;	endef
	data	1
	def	Bitmap;	scl	13;	type	010;	tag	Bitmap;	size	18;	endef
	text
	def	Fontchar;	scl	10;	type	010;	size	6;	endef
	def	x;	val	0;	scl	8;	type	04;	endef
	def	top;	val	2;	scl	8;	type	014;	endef
	def	bottom;	val	3;	scl	8;	type	014;	endef
	def	left;	val	4;	scl	8;	type	02;	endef
	def	width;	val	5;	scl	8;	type	014;	endef
	def	~eos;	val	6;	scl	102;	tag	Fontchar;	size	6;	endef
	data	1
	def	Fontchar;	scl	13;	type	010;	tag	Fontchar;	size	6;	endef
	text
	def	Font;	scl	10;	type	010;	size	18;	endef
	def	n;	val	0;	scl	8;	type	04;	endef
	def	height;	val	2;	scl	8;	type	02;	endef
	def	ascent;	val	3;	scl	8;	type	02;	endef
	def	unused;	val	4;	scl	8;	type	05;	endef
	def	bits;	val	8;	scl	8;	type	030;	tag	Bitmap;	size	18;	endef
	def	info;	val	12;	scl	8;	type	070;	tag	Fontchar;	size	6;	dim	1;	size	6;	endef
	def	~eos;	val	18;	scl	102;	tag	Font;	size	18;	endef
	data	1
	def	Font;	scl	13;	type	010;	tag	Font;	size	18;	endef
	text
	def	Titem;	scl	10;	type	010;	size	32;	endef
	def	text;	val	0;	scl	8;	type	022;	endef
	def	ufield;	val	4;	scl	8;	type	010;	tag	~0fake;	size	4;	endef
	def	next;	val	8;	scl	8;	type	030;	endef
	def	icon;	val	12;	scl	8;	type	030;	tag	Bitmap;	size	18;	endef
	def	font;	val	16;	scl	8;	type	030;	tag	Font;	size	18;	endef
	def	dfn;	val	20;	scl	8;	type	0260;	endef
	def	bfn;	val	24;	scl	8;	type	0260;	endef
	def	hfn;	val	28;	scl	8;	type	0260;	endef
	def	~eos;	val	32;	scl	102;	tag	Titem;	size	32;	endef
	data	1
	def	Titem;	scl	13;	type	010;	tag	Titem;	size	32;	endef
	text
	def	tmenuhit;	val	tmenuhit;	scl	2;	type	0150;	tag	Titem;	size	32;	endef

	global	tmenuhit
tmenuhit:
	mov.l	_addrSys,%a0
	mov.l	4*727(%a0),%a0
	jmp	(%a0)
	def	tmenuhit;	val	~;	scl	-1;	endef
