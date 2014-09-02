#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_WRITE

	if not test -w .
		__close_prev $FLINE_BG_WRITE $FLINE_FG_WRITE
		echo -n "$FLINE_WRITE_LOCK"
	end

end
