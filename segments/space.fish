#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_SPACE

	echo "Context: SPACE segment after ARROW segment"
	FLINT_TEST ARROW SPACE
	echo "Context: SPACE segment between CLOCK and ARROW segments"
	FLINT_TEST CLOCK SPACE ARROW

end

function FLSEG_SPACE

	FLINT_CLOSE normal normal True
	set -e FLINT_BCOLOR
	tput el
	printf " "

end
