#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

if not set -q FLINE_THEME_DIR
	if type -q realpath
		set FLINE_THEME_DIR (dirname (realpath (status -f)))/fishline-themes
	else
		set FLINE_THEME_DIR (dirname (status -f))/fishline-themes
	end
end

# Load default symbols
source $FLINE_THEME_DIR/default_symbols.fish

# Load default color theme depending on terminal capabilities
if begin; [ (uname) != "Darwin" ]; and tty | grep tty > /dev/null; end
    # Emable a TTY safe default theme if a TTY is detected
	source $FLINE_THEME_DIR/tty_compatible.fish
else if begin; not command -s tput > /dev/null; or [ (tput colors) -lt 256 ]; end
	# Assume ANSI 8 Colors when tput is not availlable & tput colors < 256
	source $FLINE_THEME_DIR/default_ansi_colors.fish
else
    # Load default 256 colors theme otherwise
	source $FLINE_THEME_DIR/default_256_colors.fish
end

# Default Fishline Prompt
set FLINE_DEFAULT_PROMPT vimode sigstatus jobs pwd git write n root

# Set Signal Code list for internal use
set FLSEG_STATUS_NAME (command kill -l| tr ' [a-z]' '\n[A-Z]')

# Set internal initialization flag
set _fishline_init true
