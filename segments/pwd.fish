#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_PWD

	set -l pwd (prompt_pwd)

	if echo $pwd | grep '^~' >> /dev/null
		__close_prev $FLCLR_PWD_BG_HOME $FLCLR_PWD_FG_HOME
		echo -n " ~ "
	end

	if not echo $pwd | grep '^~$' >> /dev/null
		__close_prev $FLCLR_PWD_BG $FLCLR_PWD_FG
		if echo $pwd | grep '^/$' >> /dev/null
			printf " /"
		else
			echo -n $pwd | sed "s/~//; s/\// /; s/\//$FLSYM_SEPARATOR/g"
		end
		echo -n " "
	end

end
