#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set -g FLSYM_ARROW "\u2192"

function FLSEG_ARROW

	FLINT_CLOSE $FLCLR_ARROW_BG $FLCLR_ARROW_FG
	printf $FLSYM_ARROW

end