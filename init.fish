#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

# If FLINE_PATH is not set, trying to find it from init.fish path
if test -z "$FLINE_PATH"
    if type -q realpath
        set -gx FLINE_PATH (dirname (realpath (status -f)))
    else
        set -gx FLINE_PATH (dirname (status -f))
    end
end

if not set -q FLINE_INIT
    set -g FLINE_INIT true
    # Use FLINE_PATH to load internals, functions and segments
    if [ "$FLINE_PATH" = "$HOME/.config/fish/conf.d" -a -d "$HOME/.config/fisherman/fishline" ]
        # Assumes fishline has been installed using fisherman on system without realpath
        set -gx FLINE_PATH $HOME/.config/fisherman/fishline
        set -ga fish_function_path $FLINE_PATH/internals $FLINE_PATH/segments
    else
        # Standard installation, add function loading path
        set -ga fish_function_path $FLINE_PATH/functions $FLINE_PATH/internals $FLINE_PATH/segments
    end
end

# Load default color theme based on tput output
if begin; not command -s tput > /dev/null; or [ (tput colors) -lt 256 ]; end
    # Assume ANSI 8 Colors when tput is not availlable & tput colors < 256
    source $FLINE_PATH/themes/default_ansi_colors.fish
else
    source $FLINE_PATH/themes/default_256_colors.fish
end

# Load default symbols
source $FLINE_PATH/themes/default_symbols.fish

# Set special themes based if on a tty or not
if begin; [ (uname) != "Darwin" ]; and tty | grep tty > /dev/null; end
    source $FLINE_PATH/themes/tty_compatible.fish
end

# Default Fishline Prompt
set FLINE_DEFAULT_PROMPT vimode sigstatus jobs pwd git write n root

# Set Signal Code list for internal use
set FLSEG_STATUS_NAME (command kill -l| tr ' [a-z]' '\n[A-Z]')
