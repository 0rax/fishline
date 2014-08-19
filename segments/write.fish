#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_WRITE

	if not set -q FLINE_BG_WRITE
		set -g FLINE_BG_WRITE red
	end
	if not set -q FLINE_FG_WRITE
		set -g FLINE_FG_WRITE normal
	end

	if not test -w .
		__close_prev $FLINE_BG_WRITE $FLINE_FG_WRITE
		echo -n "  "
	end
end
