#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

# Powerline Glyphs →  ⇡       ⚡ ± ✘ ⚙ ➦
set FLSYM_CLOSE				""
set FLSYM_SEPARATOR			"  "
set FLSYM_WRITE_LOCK		"  "
set FLSYM_GIT_BRANCH		"  "
set FLSYM_GIT_UNTRACKED		"× "
set FLSYM_GIT_AHEAD			"⇡ "
set FLSYM_GIT_BEHIND		"⇡ "
set FLSYM_ARROW				" → "

source $FLINE_PATH/themes/default.fish
set FLINE_PROMPT VFISH STATUS PWD GIT WRITE N ARROW

for seg in (find $FLINE_PATH/segments -name '*.fish')
    source $seg
end

function __close_prev

	if set -q __bcolor
		set_color -b $argv[1]
		set_color $__bcolor
		echo -n "$FLSYM_CLOSE"
	set_color normal
	end
	set -g __bcolor $argv[1]
	set_color -b $argv[1] $argv[2]

end

function fishline

	set -g FLINE_STATUS $argv[1]
	if not set -q FLINE_STATUS[1]
		echo "Warning: last status not passed as first argument to fishline,"
		set FLINE_STATUS 0
	end

	set -e __bcolor
	for seg in $FLINE_PROMPT
		eval FLSEG_$seg
	end
	__close_prev normal normal
	set -e __bcolor

end
