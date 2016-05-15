#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_PWD

    set -l pwd (prompt_pwd | sed -E 's;/?([^/]+)/;\1'\u1F';g' | tr \u1F '\n')

    set -l it 1
    set -l len (count $pwd)

    if [ "$pwd[1]" = "~" ]
        __FLINT_CLOSE $FLCLR_PWD_BG_HOME $FLCLR_PWD_FG_HOME
        printf "~"
        set it 2
    end

    if [ $it -le $len ]

        __FLINT_CLOSE $FLCLR_PWD_BG $FLCLR_PWD_FG

        for f in $pwd[$it..$len]
            set it (expr $it + 1)
            if test $it -le $len
                printf "$f$FLSYM_SEPARATOR"
            else
                printf "$f"
            end
        end

    end

end
