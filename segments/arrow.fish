#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_ARROW

	__close_prev $FLINE_BG_ARROW $FLINE_FG_ARROW
	echo -n "$FLINE_ARROW_SIGN"

end
