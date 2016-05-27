/*       Copyright (c) 1987 AT&T   */
/*       All Rights Reserved       */

/*       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T   */
/*       The copyright notice above does not evidence any      */
/*       actual or intended publication of such source code.   */


static char _2Vsccsid[]="@(#)bprintf.c	1.1.1.3	(5/10/87)";

#include <dmdio.h>

_bputc(p, n)
char *p;
int n;
{
	while(n--)
		bputchar(*p++);
}

Bprintf(format, args)
char *format;
char *args;
{
	FILE fout;
	FILE *f;

	f = &fout;
	f->file = _NFILE;
	f->base = (char *)_bputc;
	f->count = 0;
	f->cp = 0;
	f->flag = 0;
	return _Doprnt(f, format, &args);
}

