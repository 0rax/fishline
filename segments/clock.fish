#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_CLOCK

	FLINT_TEST CLOCK

end

function FLSEG_CLOCK

	FLINT_CLOSE $FLCLR_CLOCK_BG $FLCLR_CLOCK_FG
	printf "%s" (date "+%H:%M")

end
