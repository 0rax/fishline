#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_FULLPWD

	set -l pwd (pwd)
	set -l home (echo "$HOME" | sed 's/\//\\\\\//g')

	FLINT_CLOSE $FLCLR_FULLPWD_BG $FLCLR_FULLPWD_FG
	echo -n " "
	if echo $pwd | grep "^$HOME" >> /dev/null
		echo -n "~"
	end
	echo -n $pwd | sed "s/$home//"
	echo -n " "
end
