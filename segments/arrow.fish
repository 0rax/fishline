#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
# Might add color + symbol specific for user/root

function FLINE_ARROW

	__close_prev $FLINE_BG_ARROW $FLINE_FG_ARROW
	echo -n "$FLINE_ARROW_SIGN"

end
