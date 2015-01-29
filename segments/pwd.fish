#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_PWD

	set -l pwd (prompt_pwd)

	if echo $pwd | grep '^~' >> /dev/null
		FLINT_CLOSE $FLCLR_PWD_BG_HOME $FLCLR_PWD_FG_HOME
		printf " ~ "
	end

	if not echo $pwd | grep '^~$' >> /dev/null
		FLINT_CLOSE $FLCLR_PWD_BG $FLCLR_PWD_FG
		set -l path (printf $pwd | sed "s/~//; s/\///; s/\// \\$FLSYM_SEPARATOR /g; s/^\$/\//")
		printf " $path "
	end

end
