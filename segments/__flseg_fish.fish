#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_fish

    if [ "$FLSYM_LEFT_CLOSE" != "\uE0B0" -o "$FLSYM_RIGHT_OPEN" != "\uE0B2" ]

        __fishline_segment $FLCLR_FISH_BG $FLCLR_FISH_FG
        if [ "$FLINT_POSITION" = "right" ]
            printf "$FLSYM_FISH_ASCII_RIGHT"
        else
            printf "$FLSYM_FISH_ASCII_LEFT"
        end

    else if [ "$FLINT_POSITION" = "right" ]

        __fishline_segment $FLCLR_FISH normal      false false
        printf " "
        __flseg_invert
        __fishline_segment normal      $FLCLR_FISH false false
        __fishline_segment $FLCLR_FISH $FLCLR_FISH false false

    else

        __fishline_segment $FLCLR_FISH $FLCLR_FISH false false
        __fishline_segment normal      $FLCLR_FISH false false
        __flseg_invert
        __fishline_segment $FLCLR_FISH normal      false false
        printf " "

    end

end
