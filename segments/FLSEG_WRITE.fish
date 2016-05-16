#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_WRITE

	if not test -w .
		__FLINT_SEGMENT $FLCLR_WRITE_BG $FLCLR_WRITE_FG
		printf "$FLSYM_WRITE_LOCK"
	end

end
