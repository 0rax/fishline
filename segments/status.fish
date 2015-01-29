#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_STATUS

	if test $FLINT_STATUS -gt 0
		FLINT_CLOSE $FLCLR_STATUS_BG $FLCLR_STATUS_FG
		printf " %d " $FLINT_STATUS
	end

end
