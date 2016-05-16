#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __fishline_segment --argument-name bg_clr fg_clr -d "open a new fishline segment"

    if [ "$FLINT_POSITION" = "right" ]

        if [ "$FLINT_LAST" != true ]
            if not [ "$FLINT_FIRST" = true ]
                printf "$FLSYM_RIGHT_PRE"
            end
            set_color $bg_clr
            printf "$FLSYM_RIGHT_OPEN"
            set_color $fg_clr -b $bg_clr
            printf "$FLSYM_RIGHT_POST"
        else
            printf "$FLSYM_RIGHT_PRE"
            set_color normal -b normal
        end

    else

        if set -q FLINT_BCOLOR
            printf "$FLSYM_LEFT_PRE"
            set_color -b $bg_clr
            set_color "$FLINT_BCOLOR"
            printf $FLSYM_LEFT_CLOSE
            set_color normal
        end
        set_color -b $bg_clr $fg_clr
        if [ "$FLINT_LAST" != true ]
            printf "$FLSYM_LEFT_POST"
        end
        set -g FLINT_BCOLOR $bg_clr

    end

    set FLINT_FIRST false

end
