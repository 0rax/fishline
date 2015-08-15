#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_N

	echo "Context: N segment between CLOCK and ARROW segments"
	FLINT_TEST CLOCK N ARROW

end

function FLSEG_N

	FLINT_CLOSE normal normal True
	set -e FLINT_BCOLOR
	tput el
	printf \n

end
