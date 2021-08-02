#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __flseg_git

    if git rev-parse --git-dir >> /dev/null 2> /dev/null

        set -l detached 0
        set -l ahead 0
        set -l behind 0
        set -l branch (git rev-parse --abbrev-ref HEAD 2> /dev/null)

        if [ "$status" -ne 0 ] # Repository is empty
            set branch (git status —porcelain -b | head -n1 | cut -d' ' -f 3-)
            set detached 1
        else if [ "$branch" = "HEAD" ] # Repository is detached on tags / commit
            set branch (git describe --tags --exact-match 2> /dev/null; or git log --format=%h --abbrev-commit -1 2> /dev/null)
            set detached 1
        else if git rev-parse --verify --quiet origin/$branch 2> /dev/null >> /dev/null
            set ahead (git rev-list origin/$branch..$branch | wc -l)
            set behind (git rev-list $branch..origin/$branch | wc -l)
        end

        # http://git-scm.com/docs/git-status
        set -l gitstatus (git status --porcelain 2> /dev/null | cut -c 1-2 | awk 'BEGIN {s=0; n=0; u=0; t=0}; /^[MARCDU].$/ {s=1}; /^.[MDAU]$/ {n=1}; /^\?\?$/ {u=1}; {t=s+n+u} END {printf("%s\n%d\n%d\n%d", t, s, n, u)}')
        # bool gitstatus[1] any changes
        # bool gitstatus[2] staged changes
        # bool gitstatus[3] unstaged changes
        # bool gitstatus[4] untracked files

        if [ $detached -eq 1 ]
            set state Detached
        else if [ $gitstatus[1] -gt 0 ]
            set state Dirty
        else
            set state Clean
        end

        switch $state
        case Dirty
            __fishline_segment $FLCLR_GIT_BG_DIRTY $FLCLR_GIT_FG_DIRTY
            printf "$FLSYM_GIT_BRANCH"
        case Detached
            __fishline_segment $FLCLR_GIT_BG_DETACHED $FLCLR_GIT_FG_DETACHED
            printf "$FLSYM_GIT_DETACHED"
        case '*'
            __fishline_segment $FLCLR_GIT_BG_CLEAN $FLCLR_GIT_FG_CLEAN
            printf "$FLSYM_GIT_BRANCH"
        end

        printf "$branch"
        if [ $ahead -gt 0 ]
            printf " %d$FLSYM_GIT_AHEAD" $ahead
        end
        if [ $behind -gt 0 ]
            printf " %d$FLSYM_GIT_BEHIND" $behind
        end

        if [ $gitstatus[4] -eq 1 ]
            printf " $FLSYM_GIT_UNTRACKED"
        else if [ $gitstatus[3] -eq 1 ]
            printf " $FLSYM_GIT_UNSTAGED"
        else if [ $gitstatus[2] -eq 1 ]
            printf " $FLSYM_GIT_STAGED"
        end

    end

end
