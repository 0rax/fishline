#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLSYM_VFISH "\u2635"

function FLTEST_VFISH

	echo "Context: VIRTUAL_ENV var is set to 'fishline_test'"
	set -gx VIRTUAL_ENV fishline_test
	FLINT_TEST VFISH

end

function FLSEG_VFISH

	if set -q VIRTUAL_ENV
		FLINT_CLOSE $FLCLR_VFISH_BG $FLCLR_VFISH_FG
		printf $FLSYM_VFISH" "(basename $VIRTUAL_ENV)
	end

end
