#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_PWD
	
	if not set -q FLINE_BG_HOME
		set -g FLINE_BG_HOME blue
	end
	if not set -q FLINE_BG_PWD
		set -g FLINE_BG_PWD black
	end
	if not set -q FLINE_FG_HOME
		set -g FLINE_FG_HOME normal
	end
	if not set -q FLINE_FG_PWD
		set -g FLINE_FG_PWD normal
	end

	set -l pwd (prompt_pwd)

	if echo $pwd | grep '^~' >> /dev/null
		__close_prev $FLINE_BG_HOME $FLINE_FG_HOME
		printf " ~ "
	end

	if not echo $pwd | grep '^~$' >> /dev/null
		__close_prev $FLINE_BG_PWD $FLINE_FG_PWD
		if echo $pwd | grep '^/$' >> /dev/null
			printf " /"
		else
			echo -n $pwd | sed "s/~//; s/\// /; s/\//  /g"
		end
		printf " "
	end
end
