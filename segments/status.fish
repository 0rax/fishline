#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_STATUS

	set -l slast $argv[1]
	if test $slast -gt 0
		__close_prev $FLINE_BG_STATUS $FLINE_FG_STATUS
		echo -n " $slast "
	end

end
