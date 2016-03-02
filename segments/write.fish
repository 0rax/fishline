#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLSYM_WRITE_LOCK "\uE0A2"

function FLTEST_WRITE

	set _OLDPWD $PWD
	echo "Context: Current Working Directory is '/tmp' which should be user writable"
	cd /tmp
	FLINT_TEST WRITE
	echo "Context: Current Working Directory is '/' which should not be user writable"
	cd /
	FLINT_TEST WRITE
	cd $_OLDPWD

end


function FLSEG_WRITE

	if not test -w .
		FLINT_CLOSE $FLCLR_WRITE_BG $FLCLR_WRITE_FG
		printf "$FLSYM_WRITE_LOCK"
	end

end
