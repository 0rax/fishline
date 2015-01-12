#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
# Might add color + symbol specific for user/root

function FLSEG_ARROW

	FLINT_CLOSE $FLCLR_ARROW_BG $FLCLR_ARROW_FG
	echo -n "$FLSYM_ARROW"

end
