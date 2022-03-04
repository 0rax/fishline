#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
#
# A tty-compatible theme (does not include any glyph)
#

# Symbol for Fishline
set FLSYM_LEFT_PRE          "["
set FLSYM_LEFT_CLOSE        ""
set FLSYM_LEFT_SEPARATOR    "/"
set FLSYM_LEFT_POST         "]"
set FLSYM_RIGHT_PRE         "["
set FLSYM_RIGHT_OPEN        ""
set FLSYM_RIGHT_SEPARATOR   "/"
set FLSYM_RIGHT_POST        "]"

# Symbol for ARROW segment
set FLSYM_ARROW             "\$"

# Symbol for GIT segment
set FLSYM_GIT_BRANCH        "git:"
set FLSYM_GIT_DETACHED      "det:"
set FLSYM_GIT_UNTRACKED     "u"
set FLSYM_GIT_UNSTAGED      "s"
set FLSYM_GIT_STAGED        "c"
set FLSYM_GIT_AHEAD         "A"
set FLSYM_GIT_BEHIND        "B"

# Symbol for JOBS segment
set FLSYM_JOBS              "J"

# Symbol for ROOT segment
set FLSYM_ROOT_ROOT         "#"
set FLSYM_ROOT_USER         "\$"

# Symbol for VFISH segment
set FLSYM_VFISH             "vfish:"

# Symbol for CONDA segment
set FLSYM_CONDA             "conda:"

# Symbol for SCREEN segment
set FLSYM_SCREEN            "screen:"

# Symbol for VIMODE segment
set FLSYM_VIMODE_DEFAULT    "NORMAL"
set FLSYM_VIMODE_INSERT     "INSERT"
set FLSYM_VIMODE_REPLACE    "REPLACE"
set FLSYM_VIMODE_VISUAL     "VISUAL"

# Symbol for WRITE segment
set FLSYM_WRITE_LOCK        "X"

# Symbol for SEPARATOR segment
set FLSYM_SEPARATOR_SEG     "|"

# Color for PWD and FULLPWD segment
set FLCLR_PWD_BG_HOME       normal
set FLCLR_PWD_FG_HOME       normal
set FLCLR_PWD_BG            normal
set FLCLR_PWD_FG            normal
set FLCLR_FULLPWD_BG        $FLCLR_PWD_BG
set FLCLR_FULLPWD_FG        $FLCLR_PWD_FG

# Color for STATUS segment
set FLCLR_STATUS_BG         normal
set FLCLR_STATUS_FG         red

# Color for WRITE segment
set FLCLR_WRITE_BG          normal
set FLCLR_WRITE_FG          red

# Color for ARROW segment
set FLCLR_ARROW_BG          normal
set FLCLR_ARROW_FG          white

# Color for ROOT segment
set FLCLR_ROOT_BG_USER      normal
set FLCLR_ROOT_FG_USER      white
set FLCLR_ROOT_BG_ROOT      normal
set FLCLR_ROOT_FG_ROOT      red

# Color for VFISH segment
set FLCLR_VFISH_BG          normal
set FLCLR_VFISH_FG          green

# Color for CONDA segment
set FLCLR_CONDA_BG          $FLCLR_VFISH_BG
set FLCLR_CONDA_FG          $FLCLR_VFISH_FG

# Color for GIT segment
set FLCLR_GIT_BG_CLEAN      normal
set FLCLR_GIT_FG_CLEAN      yellow
set FLCLR_GIT_BG_DIRTY      normal
set FLCLR_GIT_FG_DIRTY      purple
set FLCLR_GIT_BG_DETACHED   normal
set FLCLR_GIT_FG_DETACHED   red

# Color for CLOCK segment
set FLCLR_CLOCK_BG          normal
set FLCLR_CLOCK_FG          yellow

# Color for USER and USERHOST segments
set FLCLR_USER_BG           normal
set FLCLR_USER_FG           purple
set FLCLR_USERHOST_BG       normal
set FLCLR_USERHOST_FG       purple

# Color for JOBS segment
set FLCLR_JOBS_BG           normal
set FLCLR_JOBS_FG           brown

# Color for EXECTIME segment
set FLCLR_EXECTIME_BG       normal
set FLCLR_EXECTIME_FG       red

# Color for SCREEN segment
set FLCLR_SCREEN_BG         normal
set FLCLR_SCREEN_FG         cyan

# Color for SEPARATOR segment
set FLCLR_SEPARATOR_BG      normal
set FLCLR_SEPARATOR_FG      white
