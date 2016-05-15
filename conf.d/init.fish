#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

if test -z "$FLINE_PATH" # If FLINE_PATH is not set, trying to find it from init.fish path
    set -gx FLINE_PATH (dirname (status -f))/..
end

# Load fishline internal functions & segments
set -gx fish_function_path $fish_function_path $FLINE_PATH/functions $FLINE_PATH/segments

# Set default theme
source $FLINE_PATH/themes/default_colors.fish
source $FLINE_PATH/themes/default_glyphs.fish

# Default Fishline Prompt
set FLINE_DEFAULT STATUS JOBS PWD GIT WRITE N ROOT
#
# # Force segment reload on initialization
# FLINT_RELOAD
