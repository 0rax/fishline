#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINT_CLOSE --argument-name BG FG END -d "close the previous fishline segment"

    if [ "$FLINT_POSITION" = "Right" ]

        if [ "$END" != True ]
            if not [ "$FLINT_FIRST" = True ]
                printf "$FLSYM_RIGHT_PRE"
            end
            set_color $BG
            printf "$FLSYM_RIGHT_OPEN"
            set_color $FG
            set_color -b $BG
            printf "$FLSYM_RIGHT_POST"
        else
            printf "$FLSYM_RIGHT_PRE"
            set_color normal -b normal
        end

    else

        if set -q FLINT_BCOLOR
            printf "$FLSYM_LEFT_PRE"
            set_color -b $BG
            set_color "$FLINT_BCOLOR"
            printf $FLSYM_LEFT_CLOSE
            set_color normal
        end
        set_color -b $BG $FG
        if [ "$END" != True ]
            printf "$FLSYM_LEFT_POST"
        end
        set -g FLINT_BCOLOR $BG

    end

    if [ "$END" = True ]
        set FLINT_FIRST True
    else
        set FLINT_FIRST False
    end

end
