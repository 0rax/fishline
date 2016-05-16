#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fishline -d "fishline prompt function"

    set -g FLINT_STATUS     False
    set -g FLINT_POSITION   Left
    set -g FLINT_FIRST      True
    set -g FLINT_LAST       False
    set -g FLSYM_SEPARATOR  $FLSYM_LEFT_SEPARATOR
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
            set FLINT_POSITION Right
            set FLSYM_SEPARATOR $FLSYM_RIGHT_SEPARATOR
        case "-l"
            set FLINT_POSITION Left
            set FLSYM_SEPARATOR $FLSYM_LEFT_SEPARATOR
        case "-x"
            functions | sed -nE 's/FLSEG_([a-zA-Z_]+)/\1/p'
            return 0
        case "-h"
            __FLINT_USAGE
            return 0
        case "-v"
            __FLINT_VERSION
            return 0
        case "--"
            break
        end
        set args $args[2..-1]
    end

    if [ "$FLINT_STATUS" = "False" ]
        if [ (count $args) -ge 2 ]; and [ "$args[2]" -eq "$args[2]" ]
            set FLINT_STATUS $args[2]
            if [ (count $args) -eq 2 ]
                set args '--'
            else
                set args -- $args[3..-1]
            end
        else
            echo "Warning: last status not passed as positional '-s' argument to fishline"
            set FLINT_STATUS 0
        end
    end

    set -e FLINT_BCOLOR
    if [ (count $args) -gt 1 ]
        for seg in $args[2..-1]
            eval FLSEG_$seg
        end
    else if set -q FLINE_PROMPT
        for seg in $FLINE_PROMPT
            eval FLSEG_$seg
        end
    else
        for seg in $FLINE_DEFAULT_PROMPT
            eval FLSEG_$seg
        end
    end
    __FLINT_SEGMENT_CLOSE

    set -e FLINT_BCOLOR
    set -e FLINT_FIRST
    set -e FLINT_LAST
    set -e FLINT_POSITION
    set -e FLINT_STATUS

end
