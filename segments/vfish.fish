#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set -g FLSYM_VFISH "\u2302"

function FLSEG_VFISH

	if set -q VIRTUAL_ENV
		FLINT_CLOSE $FLCLR_VFISH_BG $FLCLR_VFISH_FG
		printf $FLSYM_VFISH" "$VIRTUAL_ENV  | sed 's/\/.*\///; s/^/ /; s/$/ /'
	end

end