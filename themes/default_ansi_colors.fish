#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

# Color for PWD and FULLPWD segment
set FLCLR_PWD_BG_HOME       blue
set FLCLR_PWD_FG_HOME       normal
set FLCLR_PWD_BG            white
set FLCLR_PWD_FG            black
set FLCLR_FULLPWD_BG        $FLCLR_PWD_BG
set FLCLR_FULLPWD_FG        $FLCLR_PWD_FG

# Color for STATUS segment
set FLCLR_STATUS_BG         red
set FLCLR_STATUS_FG         normal

# Color for WRITE segment
set FLCLR_WRITE_BG          red
set FLCLR_WRITE_FG          normal

# Color for ARROW  segment
set FLCLR_ARROW_BG          white
set FLCLR_ARROW_FG          black

# Color for ROOT segment
set FLCLR_ROOT_BG_USER      white
set FLCLR_ROOT_FG_USER      black
set FLCLR_ROOT_BG_ROOT      red
set FLCLR_ROOT_FG_ROOT      normal

# Color for VFISH segment
set FLCLR_VFISH_BG          green
set FLCLR_VFISH_FG          black

# Color for CONDA segment
set FLCLR_CONDA_BG          $FLCLR_VFISH_BG
set FLCLR_CONDA_FG          $FLCLR_VFISH_FG

# Color for GIT segment
set FLCLR_GIT_BG_CLEAN      yellow
set FLCLR_GIT_FG_CLEAN      black
set FLCLR_GIT_BG_DIRTY      magenta
set FLCLR_GIT_FG_DIRTY      black
set FLCLR_GIT_BG_DETACHED   red
set FLCLR_GIT_FG_DETACHED   normal

# Color for CLOCK segment
set FLCLR_CLOCK_BG          white
set FLCLR_CLOCK_FG          black

# Color for USER and USERHOST segments
set FLCLR_USER_BG           cyan
set FLCLR_USER_FG           normal
set FLCLR_USERHOST_BG       cyan
set FLCLR_USERHOST_FG       normal

# Color for JOBS segment
set FLCLR_JOBS_BG           yellow
set FLCLR_JOBS_FG           normal

# Color for EXECTIME segment
set FLCLR_EXECTIME_BG       red
set FLCLR_EXECTIME_FG       black

# Color for SCREEN segment
set FLCLR_SCREEN_BG         cyan
set FLCLR_SCREEN_FG         white

# Color for VIMODE segment
set FLCLR_VIMODE_DEFAULT_BG green
set FLCLR_VIMODE_DEFAULT_FG black
set FLCLR_VIMODE_INSERT_BG  white
set FLCLR_VIMODE_INSERT_FG  black
set FLCLR_VIMODE_REPLACE_BG red
set FLCLR_VIMODE_REPLACE_FG normal
set FLCLR_VIMODE_VISUAL_BG  orange
set FLCLR_VIMODE_VISUAL_FG  normal

# Color for SEPARATOR segment
set FLCLR_SEPARATOR_BG      black
set FLCLR_SEPARATOR_FG      white

# Color for FISH segment
set FLCLR_FISH              yellow

# Color for FISH segment when not using Powerline glyph in your theme
set FLCLR_FISH_FG           yellow
set FLCLR_FISH_BG           normal
