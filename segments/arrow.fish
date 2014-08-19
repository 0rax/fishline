#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_ARROW

	if not set -q FLINE_BG_ARROW
		set -g FLINE_BG_ARROW black
	end
	if not set -q FLINE_FG_ARROW
		set -g FLINE_FG_ARROW normal
	end

	__close_prev $FLINE_BG_ARROW $FLINE_FG_ARROW
	printf " → "

end
