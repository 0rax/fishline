#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLSYM_GIT_BRANCH "\uE0A0 "
set FLSYM_GIT_DETACHED "\u21CC  "
set FLSYM_GIT_UNTRACKED "\u00D7"
set FLSYM_GIT_UNSTAGED "\u002B"
set FLSYM_GIT_STAGED "\u2219"
set FLSYM_GIT_AHEAD "\u21E1"
set FLSYM_GIT_BEHIND "\u21E3"

function FLSEG_GIT

	if [ $FLINT_GIT -eq 0 ]

		set -l detached 0
		set -l ahead 0
		set -l behind 0
		set -l branch (git rev-parse --abbrev-ref HEAD)

		if [ "$branch" = "HEAD" ]
			set branch (git describe --tags --exact-match ^^ /dev/null; or git log --pretty=oneline --abbrev-commit -1 | cut -d' ' -f1)
			set detached 1
		else if git rev-parse --verify --quiet origin/$branch ^^ /dev/null >> /dev/null
			set ahead (git rev-list origin/$branch..$branch | wc -l)
			set behind (git rev-list $branch..origin/$branch | wc -l)
		end

		set -l gitstatus (git status --porcelain ^^ /dev/null | cut -c 1-2 | awk 'BEGIN {s=0; n=0; u=0}; /^[AM].$/ {s=1}; /^.M$/ {n=1}; /^\?\?$/ {u=1}; END {printf("%d\n%d\n%d", s, n, u)}')
		# bool gitstatus[1] staged changes
		# bool gitstatus[2] unstaged changes
		# bool gitstatus[3] untracked files

		if [ $detached -eq 1 ]
			set state Detached
		else if [ (math $gitstatus[1] + $gitstatus[2] + $gitstatus[3]) -gt 0 ]
			set state Dirty
		else
			set state Clean
		end

		switch $state
		case Dirty
			FLINT_CLOSE $FLCLR_GIT_BG_DIRTY $FLCLR_GIT_FG_DIRTY
			printf "$FLSYM_GIT_BRANCH"
		case Detached
			FLINT_CLOSE $FLCLR_GIT_BG_DETACHED $FLCLR_GIT_FG_DETACHED
			printf "$FLSYM_GIT_DETACHED"
		case '*'
			FLINT_CLOSE $FLCLR_GIT_BG_CLEAN $FLCLR_GIT_FG_CLEAN
			printf "$FLSYM_GIT_BRANCH"
		end

		printf "$branch"
		if [ $ahead -gt 0 ]
			printf " %d$FLSYM_GIT_AHEAD" $ahead
		end
		if [ $behind -gt 0 ]
			printf " %d$FLSYM_GIT_BEHIND" $behind
		end

		if [ $gitstatus[3] -eq 1 ]
			printf " $FLSYM_GIT_UNTRACKED"
		else if [ $gitstatus[2] -eq 1 ]
			printf " $FLSYM_GIT_UNSTAGED"
		else if [ $gitstatus[1] -eq 1 ]
			printf " $FLSYM_GIT_STAGED"
		end

	end

end
