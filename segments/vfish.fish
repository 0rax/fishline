#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_VFISH

	if set -q VIRTUAL_ENV
		FLINT_CLOSE $FLCLR_VFISH_BG $FLCLR_VFISH_FG
		set vpath (echo $VIRTUAL_ENV | sed 's/\/.*\///')
		echo -n " $vpath "
	end

end
