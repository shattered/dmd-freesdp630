/*       Copyright (c) 1987 AT&T   */
/*       All Rights Reserved       */

/*       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T   */
/*       The copyright notice above does not evidence any      */
/*       actual or intended publication of such source code.   */


static char _2Vsccsid[]="@(#)icons.c	1.1.1.2	(5/10/87)";


/* These are icons/textures taken out of the 5620 firmware */

#include <dmd.h>


Texture16 C_sweep = {
        0x43FF, 0xE001, 0x7001, 0x3801,
        0x1D01, 0x0F01, 0x8701, 0x8F01,
        0x8001, 0x8001, 0x8001, 0x8001,
        0x8001, 0x8001, 0x8001, 0xFFFF,
};

Texture16 C_crosshair = {
         0x0100, 0x0100, 0x0100, 0x0100,
         0x0100, 0x0100, 0x0000, 0xFC7E,
         0x0000, 0x0100, 0x0100, 0x0100,
         0x0100, 0x0100, 0x0100, 0x0000,
};

Texture16 C_confirm = {
        0x000E, 0x061B, 0x0241, 0x72C3,
        0xDB86, 0x8B0C, 0x8BC0, 0xDA6C,
        0x766C, 0x0000, 0x0001, 0x0003,
        0x94A6, 0x632C, 0x6318, 0x9490,
};


Texture16  T_lightgrey = {
         0x2222, 0x8888, 0x2222, 0x8888,
         0x2222, 0x8888, 0x2222, 0x8888,
         0x2222, 0x8888, 0x2222, 0x8888,
         0x2222, 0x8888, 0x2222, 0x8888,
};

Texture16  T_darkgrey = {
         0xDDDD, 0x7777, 0xDDDD, 0x7777,
         0xDDDD, 0x7777, 0xDDDD, 0x7777,
         0xDDDD, 0x7777, 0xDDDD, 0x7777,
         0xDDDD, 0x7777, 0xDDDD, 0x7777,
};

