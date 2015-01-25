#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLENV_GIT --on-variable PWD
	git ls-files ^^ /dev/null >> /dev/null
	set -g FLINT_GIT $status
end

FLENV_GIT	# To be sure that FLENV_GIT is called when Fish starts
