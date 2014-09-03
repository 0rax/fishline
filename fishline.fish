#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

source $FLINE_PATH/themes/default.fish
source $FLINE_PATH/styles/powerline.fish
set FLINE_PROMPT VFISH STATUS PWD GIT WRITE N ARROW

function __close_prev

	if set -q __bcolor
		set_color -b $argv[1]
		set_color $__bcolor
		echo -n "$FLINE_CLOSE"
	set_color normal
	end
	set -g __bcolor $argv[1]
	set_color -b $argv[1] $argv[2]

end

function fishline

	set -l slast $argv[1]
	if not set -q slast[1]
		echo "Warning: last status not passed as first argument to fishline,"
		set slast 0
	end

	for seg in (find $FLINE_PATH/segments -name '*.fish')
		source $seg
	end
	set -e __bcolor
	for seg in $FLINE_PROMPT
		eval FLINE_$seg $slast
	end
	__close_prev normal normal
	set -e __bcolor

end
