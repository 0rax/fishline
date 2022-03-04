#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __fishline_usage

    printf "# %s (%s)\n" (fishline -v) "https://github.com/0rax/fishline"
    printf "
Powerline prompt for Fish Shell in Fish Shell.

Usage:
    fishline [OPTIONS] [-s \$status] [segment ...]

Examples:
    # Generate a fish_prompt compatible prompt
    fishline -s \$status $FLINT_DEFAULT_PROMPT
    # Generate a fish_right_prompt compatible prompt
    fishline -r -s 0 CLOCK

Argument and Options:

    segment This argument should match the name of the segment you wish to print
            in your prompt. To Make sure that this segment exist, you can list
            them using `fishline -x`
    -s \$num Set the last command status exit code (should be internal \$status)
            This is only used by a limited number of segment but it should be
            set everytime you call fishline (if not needed set it to 0)
    -l      Left mode: generate a fish_prompt compatible prompt (default)
    -r      Right mode: generate a fish_right_prompt compatible prompt
    -x      Print the list of availlable segment and exit
    -h      Print this help and exit
    -v      Print the software version and exit
"

end
