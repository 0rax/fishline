#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

if test -z "$FLINE_PATH" # If FLINE_PATH is not set, trying to find it from init.fish path
    set -gx FLINE_PATH (dirname (status -f))
end

if [ "$FLINE_PATH" = "$HOME/.config/fish/conf.d" -a -d "$HOME/.config/fisherman/fishline" ]
    # Assumes fishline has been installed using fisherman
    set -gx FLINE_PATH $HOME/.config/fisherman/fishline
    set -gx fish_function_path $fish_function_path $FLINE_PATH/internals $FLINE_PATH/segments
else
    # Standard installation, add function loading path
    set -gx fish_function_path $fish_function_path $FLINE_PATH/functions $FLINE_PATH/internals $FLINE_PATH/segments
end

# Default theme
source $FLINE_PATH/themes/default_colors.fish
source $FLINE_PATH/themes/default_glyphs.fish

# Default Fishline Prompt
set FLINT_DEFAULT_PROMPT VIMODE SIGSTATUS JOBS PWD GIT WRITE N ROOT
