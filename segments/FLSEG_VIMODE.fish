#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_VIMODE

    if set -q __fish_vi_mode

        switch $fish_bind_mode
          case default
            FLINT_CLOSE $FLCLR_VIMODE_DEFAULT_BG $FLCLR_VIMODE_DEFAULT_FG
            printf $FLSYM_VIMODE_DEFAULT
          case insert
            FLINT_CLOSE $FLCLR_VIMODE_INSERT_BG $FLCLR_VIMODE_INSERT_FG
            printf $FLSYM_VIMODE_INSERT
          case replace-one
            FLINT_CLOSE $FLCLR_VIMODE_REPLACE_BG $FLCLR_VIMODE_REPLACE_FG
            printf $FLSYM_VIMODE_REPLACE
          case visual
            FLINT_CLOSE $FLCLR_VIMODE_VISUAL_BG $FLCLR_VIMODE_VISUAL_FG
            printf $FLSYM_VIMODE_VISUAL
        end
    end

end
