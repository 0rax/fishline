#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_STATUS
	
	if not set -q FLINE_BG_STATUS
		set -g FLINE_BG_STATUS red
	end
	if not set -q FLINE_FG_STATUS
		set -g FLINE_FG_STATUS normal
	end

	set -l slast $argv[1]
	if test $slast -gt 0
		__close_prev $FLINE_BG_STATUS $FLINE_FG_STATUS
		echo -n " $slast "
	end

end
