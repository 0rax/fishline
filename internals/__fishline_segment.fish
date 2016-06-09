#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __fishline_segment --argument-name bg_clr fg_clr pre post -d "open a new fishline segment"

    if [ "$FLINT_INVERT" = "true" -a "$FLINT_POSITION" = "left" ]; or [ "$FLINT_INVERT" != "true" -a "$FLINT_POSITION" = "right" ]

        if [ "$FLINT_FIRST" != true ]
            [ "$FLINT_PRINT_POST" = true ]; and printf "$FLSYM_RIGHT_POST"
        end

        if [ "$FLINT_LAST" != true ]
            set_color $bg_clr
            printf "$FLSYM_RIGHT_OPEN"
            set_color $fg_clr -b $bg_clr
            [ "$pre" = false ]; or printf "$FLSYM_RIGHT_PRE"
        else
            set_color normal -b normal
        end

    else

        if [ "$FLINT_FIRST" != true ]
            [ "$FLINT_PRINT_POST" = true ]; and printf "$FLSYM_LEFT_POST"
            set_color -b $bg_clr
            set_color "$FLINT_BCOLOR"
            printf $FLSYM_LEFT_CLOSE
            set_color normal
        end
        set_color -b $bg_clr $fg_clr
        if [ "$FLINT_LAST" != true ]
            [ "$pre" = false ]; or printf "$FLSYM_LEFT_PRE"
        end

    end

    set FLINT_BCOLOR $bg_clr
    set FLINT_FIRST  false
    set FLINT_LAST   false
    set FLINT_INVERT false
    [ "$post" = false ]; and set FLINT_PRINT_POST false; or set FLINT_PRINT_POST true

end
