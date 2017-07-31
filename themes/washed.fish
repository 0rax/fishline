#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
#
# Washed theme ported from powerline-shell
#

# Color for PWD and FULLPWD segment
set FLCLR_PWD_BG            808080
set FLCLR_PWD_FG            FFFFFF
set FLCLR_PWD_BG_HOME       $FLCLR_PWD_BG
set FLCLR_PWD_FG_HOME       $FLCLR_PWD_FG
set FLCLR_FULLPWD_BG        $FLCLR_PWD_BG
set FLCLR_FULLPWD_FG        $FLCLR_PWD_FG

# Color for STATUS segment
set FLCLR_STATUS_BG         red
set FLCLR_STATUS_FG         white

# Color for WRITE segment
set FLCLR_WRITE_BG          FF875F
set FLCLR_WRITE_FG          FFFFFF

# Color for ARROW segment
set FLCLR_ARROW_BG          $FLCLR_PWD_BG
set FLCLR_ARROW_FG          $FLCLR_PWD_FG

# Color for ROOT segment
set FLCLR_ROOT_BG_USER      $FLCLR_PWD_BG
set FLCLR_ROOT_FG_USER      $FLCLR_PWD_FG
set FLCLR_ROOT_BG_ROOT      red
set FLCLR_ROOT_FG_ROOT      $FLCLR_PWD_FG

# Color for VFISH segment
set FLCLR_VFISH_BG          AFD787
set FLCLR_VFISH_FG          black

# Color for CONDA segment
set FLCLR_CONDA_BG          $FLCLR_VFISH_BG
set FLCLR_CONDA_FG          $FLCLR_VFISH_FG

# Color for GIT segment
set FLCLR_GIT_BG_CLEAN      AFD787
set FLCLR_GIT_FG_CLEAN      262626
set FLCLR_GIT_BG_DIRTY      FF5F5F
set FLCLR_GIT_FG_DIRTY      FFFFFF
set FLCLR_GIT_BG_DETACHED   yellow
set FLCLR_GIT_FG_DETACHED   black

# Color for CLOCK segment
set FLCLR_CLOCK_BG          FF8700
set FLCLR_CLOCK_FG          FFFFFF

# Color for USERHOST segment
set FLCLR_USERHOST_BG       c0c0c0
set FLCLR_USERHOST_FG       808080

# Color for JOBS segment
set FLCLR_JOBS_BG           808080
set FLCLR_JOBS_FG           00FFFF

# Color for SCREEN segment
set FLCLR_SCREEN_BG         608080
set FLCLR_SCREEN_FG         FFFFFF
