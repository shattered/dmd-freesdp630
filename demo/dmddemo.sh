#       Copyright (c) 1987 AT&T   
#       All Rights Reserved       

#       THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T   
#       The copyright notice above does not evidence any     
#       actual or intended publication of such source code.  

# @(#)dmddemo.sh	1.1.1.1	(5/8/87)


DMD=${DMD:-DeFdMd}
if test $# = 0
then
	echo Available demos are:
	cd $DMD/lib/demolib
	ls | pr -t -6 -l1
else
	if test -s $DMD/lib/demobin/$1
	then
		$DMD/lib/demobin/$1
	else
		if test -s $DMD/lib/demolib/$1
		then
			dmdld $DMD/lib/demolib/$1
		else
			echo Demo \`$1\' does not exist
			echo Type \"dmddemo\" for a list of demos
		fi
	fi
fi
