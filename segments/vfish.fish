#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_VFISH

	if set -q VIRTUAL_ENV
		__close_prev $FLINE_BG_VFISH $FLINE_FG_VFISH
		set vpath (echo $VIRTUAL_ENV | sed 's/\/.*\///')
		echo -n " $vpath "
	end

end
