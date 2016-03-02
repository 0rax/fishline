#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_FULLPWD

	set _OLDPWD $PWD
	echo "Context: Current Working Directory is '/'"
	cd /
	FLINT_TEST FULLPWD
	echo "Context: Current Working Directory is '/tmp'"
	cd /tmp
	FLINT_TEST FULLPWD
	echo "Context: Current Working Directory is '/var/log'"
	cd /var/log
	FLINT_TEST FULLPWD
	echo "Context: Current Working Directory is '$HOME'"
	cd $HOME
	FLINT_TEST FULLPWD
	echo "Context: Current Working Directory is '$HOME/.config/fish'"
	cd $HOME/.config/fish/
	FLINT_TEST FULLPWD
	cd $_OLDPWD

end

function FLSEG_FULLPWD

	FLINT_CLOSE $FLCLR_FULLPWD_BG $FLCLR_FULLPWD_FG
	printf $PWD | sed "s|^$HOME|~|" | tr -d '\n'

end
