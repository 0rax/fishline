#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_USERHOST

	FLINT_TEST USERHOST

end


function FLSEG_USERHOST

	FLINT_CLOSE $FLCLR_USERHOST_BG $FLCLR_USERHOST_FG
	printf '%s@%s' $USER (hostname)

end
