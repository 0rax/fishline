#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

# If FLINE_PATH is not set, trying to find it from init.fish path
if not set -q FLINE_PATH
	if type -q realpath
		set -gx FLINE_PATH (dirname (realpath (status -f)))
	else
		set -gx FLINE_PATH (dirname (status -f))
	end
	set FLINE_THEME_DIR $FLINE_PATH/themes
end

if not set -q fishline_init
	set -a fish_function_path $FLINE_PATH/functions
	set -a fish_completion_path $FLINE_PATH/completion.d
	source $FLINE_PATH/conf.d/fishline-init.fish
end
