#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_PWD

	set -l pwd (prompt_pwd)

	if echo $pwd | grep '^~' >> /dev/null
		__close_prev $FLINE_BG_HOME $FLINE_FG_HOME
		echo -n " ~ "
	end

	if not echo $pwd | grep '^~$' >> /dev/null
		__close_prev $FLINE_BG_PWD $FLINE_FG_PWD
		if echo $pwd | grep '^/$' >> /dev/null
			printf " /"
		else
			echo -n $pwd | sed "s/~//; s/\// /; s/\//$FLINE_SEPARATOR/g"
		end
		echo -n " "
	end

end
