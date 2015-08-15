#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLSYM_ARROW "\u2192"

function FLTEST_ARROW

	FLINT_TEST ARROW

end

function FLSEG_ARROW

	FLINT_CLOSE $FLCLR_ARROW_BG $FLCLR_ARROW_FG
	printf $FLSYM_ARROW

end
