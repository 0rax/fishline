#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLSYM_VIMODE_DEFAULT "NORMAL"
set FLSYM_VIMODE_INSERT  "INSERT"
set FLSYM_VIMODE_REPLACE "REPLACE"
set FLSYM_VIMODE_VISUAL  "VISUAL"

set FLCLR_VIMODE_DEFAULT_BG green
set FLCLR_VIMODE_DEFAULT_FG black
set FLCLR_VIMODE_INSERT_BG  white
set FLCLR_VIMODE_INSERT_FG  black
set FLCLR_VIMODE_REPLACE_BG red
set FLCLR_VIMODE_REPLACE_FG normal
set FLCLR_VIMODE_VISUAL_BG  orange
set FLCLR_VIMODE_VISUAL_FG  normal

functions -e fish_mode_prompt

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
