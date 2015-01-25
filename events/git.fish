#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLEVENT_GIT --on-variable PWD
	git ls-files ^^ /dev/null >> /dev/null
	set -g FLINT_GIT $status
end

FLEVENT_GIT	# To be sure that FLEVENT_GIT is called when Fish starts
