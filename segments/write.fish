#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_WRITE

	if not test -w .
		__close_prev $FLCLR_WRITE_BG $FLCLR_WRITE_FG
		echo -n "$FLSYM_WRITE_LOCK"
	end

end
