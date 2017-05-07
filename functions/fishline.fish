#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fishline -d "fishline prompt function"

    set -g FLINT_POSITION   left
    set -g FLSYM_SEPARATOR  $FLSYM_LEFT_SEPARATOR
    set -g FLINT_FIRST      true
    set -g FLINT_LAST       false
    set -g FLINT_BCOLOR     normal
    set -g FLINT_PRINT_POST true
    set -g FLINT_INVERT     false
    set -g FLINT_STATUS     false

    set -l prompt_segments  $FLINE_DEFAULT_PROMPT
    set -l args             (getopt "lrxhvs:" $argv)
    if [ $status -gt 0 ]
        return 1
    end

    set args (echo $args | sed -E 's/^\s//;s/\ +/ /g' | tr ' ' '\n')
    while [ (count $args) -ge 0 ]
        switch $args[1]
        case "-s"
            set FLINT_STATUS $args[2]
            set args $args[2..-1]
        case "-r"
            set FLINT_POSITION right
            set FLSYM_SEPARATOR $FLSYM_RIGHT_SEPARATOR
        case "-l"
            set FLINT_POSITION left
            set FLSYM_SEPARATOR $FLSYM_LEFT_SEPARATOR
        case "-x"
            functions -a | sed -nE 's/__flseg_([a-zA-Z_]+)/\1/p'
            return 0
        case "-h"
            __fishline_usage
            return 0
        case "-v"
            __fishline_version
            return 0
        case "--"
            break
        end
        set args $args[2..-1]
    end

    if [ "$FLINT_STATUS" = "false" ]
        if [ (count $args) -ge 2 ]; and [ "$args[2]" -eq "$args[2]" ]
            set FLINT_STATUS $args[2]
            if [ (count $args) -eq 2 ]
                set args '--'
            else
                set args -- $args[3..-1]
            end
        else
            echo "Warning: last status not passed as positional '-s' argument to fishline" >&2
            set FLINT_STATUS 0
        end
    end

    if [ (count $args) -gt 1 ]
        set prompt_segments (echo $args[2..-1] | tr 'A-Z' 'a-z' | tr ' ' '\n')
    else if set -q FLINE_PROMPT
        set prompt_segments (echo $FLINE_PROMPT | tr 'A-Z' 'a-z' | tr ' ' '\n')
    end

    for seg in $prompt_segments
        eval __flseg_$seg
    end
    __fishline_segment_close

    set -e FLINT_FIRST
    set -e FLINT_LAST
    set -e FLINT_POSITION
    set -e FLINT_STATUS
    set -e FLINT_BCOLOR
    set -e FLINT_INVERT
    set -e FLINT_PRINT_POST

end
