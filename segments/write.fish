#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLSYM_WRITE_LOCK	"  "

function FLSEG_WRITE

	if not test -w .
		FLINT_CLOSE $FLCLR_WRITE_BG $FLCLR_WRITE_FG
		echo -n "$FLSYM_WRITE_LOCK"
	end

end
