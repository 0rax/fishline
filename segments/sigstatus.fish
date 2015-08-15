#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_SIGSTATUS

	echo "Context: Last command returned with exit code '1'"
	set -gx FLINT_TEST_STATUS 1
	FLINT_TEST SIGSTATUS
	echo "Context: Last called command was not executable"
	set -gx FLINT_TEST_STATUS 126
	FLINT_TEST SIGSTATUS
	echo "Context: Last called command was not found"
	set -gx FLINT_TEST_STATUS 127
	FLINT_TEST SIGSTATUS
	echo "Context: Last command was killed by 'SIGINT'"
	set -gx FLINT_TEST_STATUS 130
	FLINT_TEST SIGSTATUS
	echo "Context: Last command returned with exit code '160'"
	set -gx FLINT_TEST_STATUS 160
	FLINT_TEST SIGSTATUS
	echo "Context: Last command returned with exit code '255'"
	set -gx FLINT_TEST_STATUS 255
	FLINT_TEST SIGSTATUS

end

function FLSEG_SIGSTATUS

	if [ $FLINT_STATUS -gt 128 -a $FLINT_STATUS -lt 160 ]
		FLINT_CLOSE $FLCLR_STATUS_BG $FLCLR_STATUS_FG
		printf SIG(kill -l $FLINT_STATUS | tr '[a-z]' '[A-Z]')
	else if [ $FLINT_STATUS -eq 126 ]
		FLINT_CLOSE $FLCLR_STATUS_BG $FLCLR_STATUS_FG
		printf "NOEXEC"
	else if [ $FLINT_STATUS -eq 127 ]
		FLINT_CLOSE $FLCLR_STATUS_BG $FLCLR_STATUS_FG
		printf "NFOUND"
	else if [ $FLINT_STATUS -gt 0 ]
		FLINT_CLOSE $FLCLR_STATUS_BG $FLCLR_STATUS_FG
		printf $FLINT_STATUS
	end

end
