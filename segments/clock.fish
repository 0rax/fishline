#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_CLOCK

	__close_prev $FLINE_BG_CLOCK $FLINE_FG_CLOCK
	echo -n " "(date "+%H:%M")" "

end
