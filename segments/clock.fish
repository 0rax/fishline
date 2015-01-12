#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_CLOCK

	FLINT_CLOSE $FLCLR_CLOCK_BG $FLCLR_CLOCK_FG
	echo -n " "(date "+%H:%M")" "

end
