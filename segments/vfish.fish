#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_VFISH

	if not set -q FLINE_BG_VFISH
		set -g FLINE_BG_VFISH green
	end
	if not set -q FLINE_FG_VFISH
		set -g FLINE_FG_VFISH black
	end

	if set -q VIRTUAL_ENV
		__close_prev $FLINE_BG_VFISH $FLINE_FG_VFISH
		set vpath (echo $VIRTUAL_ENV | sed 's/\/.*\///')
		printf " $vpath "
	end
end
