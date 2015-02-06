#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set -g FLSYM_WRITE_LOCK "\uE0A2"

function FLSEG_WRITE

	if not test -w .
		FLINT_CLOSE $FLCLR_WRITE_BG $FLCLR_WRITE_FG
		printf "$FLSYM_WRITE_LOCK"
	end

end