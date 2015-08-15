#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_PWD

	set _OLDPWD $PWD
	echo "Context: Current Working Directory is '/'"
	cd /
	FLINT_TEST PWD
	echo "Context: Current Working Directory is '/tmp'"
	cd /tmp
	FLINT_TEST PWD
	echo "Context: Current Working Directory is '/var/log'"
	cd /var/log
	FLINT_TEST PWD
	echo "Context: Current Working Directory is '$HOME'"
	cd $HOME
	FLINT_TEST PWD
	echo "Context: Current Working Directory is '$HOME/.config/fish'"
	cd $HOME/.config/fish/
	FLINT_TEST PWD
	cd $_OLDPWD

end

function FLSEG_PWD

	set -l pwd (echo $PWD | sed -E "s|^$HOME|~|;s|/?(\.?[^/])[^/]*/|\1"\u1F"|g" | tr \u1F '\n')
	set -l it 1
	set -l len (count $pwd)

	if [ "$pwd[1]" = "~" ]
		FLINT_CLOSE $FLCLR_PWD_BG_HOME $FLCLR_PWD_FG_HOME
		printf "~"
		set it 2
	end

	if [ $it -le $len ]

		FLINT_CLOSE $FLCLR_PWD_BG $FLCLR_PWD_FG

		for f in $pwd[$it..$len]
			set it (expr $it + 1)
			if test $it -le $len
				printf $f$FLSYM_SEPARATOR
			else
				printf $f
			end
		end

	end

end
