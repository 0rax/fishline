#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_STATUS

	if test $FLINT_STATUS -gt 0
		FLINT_CLOSE $FLCLR_STATUS_BG $FLCLR_STATUS_FG
		echo -n " $FLINT_STATUS "
	end

end
