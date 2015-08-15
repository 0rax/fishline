#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLSYM_ROOT_ROOT "\u221E"
set FLSYM_ROOT_USER "\u2192"

function FLTEST_ROOT

	echo "Context: USER is set to the current user"
	FLINT_TEST ROOT
	echo "Context: USER is set to 'root'"
	set USER root
	FLINT_TEST ROOT

end

function FLSEG_ROOT

	if [ "$USER" = "root" ]
		FLINT_CLOSE $FLCLR_ROOT_BG_ROOT $FLCLR_ROOT_FG_ROOT
		printf $FLSYM_ROOT_ROOT
	else
		FLINT_CLOSE $FLCLR_ROOT_BG_USER $FLCLR_ROOT_FG_USER
		printf $FLSYM_ROOT_USER
	end

end
