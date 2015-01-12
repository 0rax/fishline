#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_STATUS

	if test $FLINE_STATUS -gt 0
		__close_prev $FLCLR_STATUS_BG $FLCLR_STATUS_FG
		echo -n " $FLINE_STATUS "
	end

end
