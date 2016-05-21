#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_vimode

    if begin;
            set -q __fish_vi_mode;
            or [ "$__fish_active_key_bindings" = "fish_vi_key_bindings" ]
       end

        switch $fish_bind_mode
          case default
            __fishline_segment $FLCLR_VIMODE_DEFAULT_BG $FLCLR_VIMODE_DEFAULT_FG
            printf $FLSYM_VIMODE_DEFAULT
          case insert
            __fishline_segment $FLCLR_VIMODE_INSERT_BG $FLCLR_VIMODE_INSERT_FG
            printf $FLSYM_VIMODE_INSERT
          case replace-one
            __fishline_segment $FLCLR_VIMODE_REPLACE_BG $FLCLR_VIMODE_REPLACE_FG
            printf $FLSYM_VIMODE_REPLACE
          case visual
            __fishline_segment $FLCLR_VIMODE_VISUAL_BG $FLCLR_VIMODE_VISUAL_FG
            printf $FLSYM_VIMODE_VISUAL
        end
    end

end
