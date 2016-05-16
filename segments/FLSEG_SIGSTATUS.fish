#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_SIGSTATUS

    if [ $FLINT_STATUS -gt 128 -a $FLINT_STATUS -lt 160 ]
        __fishline_segment $FLCLR_STATUS_BG $FLCLR_STATUS_FG
        printf SIG(kill -l $FLINT_STATUS | tr '[a-z]' '[A-Z]')
    else if [ $FLINT_STATUS -eq 126 ]
        __fishline_segment $FLCLR_STATUS_BG $FLCLR_STATUS_FG
        printf "NOEXEC"
    else if [ $FLINT_STATUS -eq 127 ]
        __fishline_segment $FLCLR_STATUS_BG $FLCLR_STATUS_FG
        printf "NFOUND"
    else if [ $FLINT_STATUS -gt 0 ]
        __fishline_segment $FLCLR_STATUS_BG $FLCLR_STATUS_FG
        printf $FLINT_STATUS
    end

end
