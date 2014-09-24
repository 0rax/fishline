#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_FULLPWD

	set -l pwd (pwd)
	set -l home (echo "$HOME" | sed 's/\//\\\\\//g')

	__close_prev $FLINE_BG_PWD $FLINE_FG_PWD
	echo -n " "
	if echo $pwd | grep "^$HOME" >> /dev/null
		echo -n "~"
	end
	echo -n $pwd | sed "s/$home//"
	echo -n " "
end
