/*       Copyright (c) 1987 AT&T   */
/*       All Rights Reserved       */

/*       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T   */
/*       The copyright notice above does not evidence any      */
/*       actual or intended publication of such source code.   */


static char _2Vsccsid[]="@(#)cosdeg.c	1.1.1.1	(5/10/87)";

static
short costab[91]={
	1024,	1024,	1023,	1023,	1022,
	1020,	1018,	1016,	1014,	1011,
	1008,	1005,	1002,	998,	994,
	989,	984,	979,	974,	968,
	962,	956,	949,	943,	935,
	928,	920,	912,	904,	896,
	887,	878,	868,	859,	849,
	839,	828,	818,	807,	796,
	784,	773,	761,	749,	737,
	724,	711,	698,	685,	672,
	658,	644,	630,	616,	602,
	587,	573,	558,	543,	527,
	512,	496,	481,	465,	449,
	433,	416,	400,	384,	367,
	350,	333,	316,	299,	282,
	265,	248,	230,	213,	195,
	178,	160,	143,	125,	107,
	89,	71,	54,	36,	18,
	0,
};
Icos(x)
	register x;
{
	x %= 360;
	if(x<0)
		x+=360;
	if(x<=180)
		return(x<90? costab[x] : -costab[180-x]);
	return(x<180+90? -costab[x-180] : costab[360-x]);
}
Isin(x)
	register x;
{
	return(Icos(x-90));
}