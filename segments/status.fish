#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_STATUS

	echo "Context: Last command returned with exit code '1'"
	set -gx FLINT_TEST_STATUS 1
	FLINT_TEST STATUS
	echo "Context: Last called command was not executable"
	set -gx FLINT_TEST_STATUS 126
	FLINT_TEST STATUS
	echo "Context: Last called command was not found"
	set -gx FLINT_TEST_STATUS 127
	FLINT_TEST STATUS
	echo "Context: Last command was killed by 'SIGINT'"
	set -gx FLINT_TEST_STATUS 130
	FLINT_TEST STATUS
	echo "Context: Last command returned with exit code '160'"
	set -gx FLINT_TEST_STATUS 160
	FLINT_TEST STATUS
	echo "Context: Last command returned with exit code '255'"
	set -gx FLINT_TEST_STATUS 255
	FLINT_TEST STATUS

end


function FLSEG_STATUS

	if [ $FLINT_STATUS -gt 0 ]
		FLINT_CLOSE $FLCLR_STATUS_BG $FLCLR_STATUS_FG
		printf $FLINT_STATUS
	end

end
