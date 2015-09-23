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

		set -l gitstatus (git status ^ /dev/null | \
		awk 'BEGIN {d=0; s=0; ns=0; u=0; a=0; b=0};\
		/On branch .+/ {m=$4}; \
		/HEAD detached (at|from) .+/ {m=$5;d=1}; \
		/Changes to be committed:/ {s=1}; \
		/Changes not staged for commit:/ {ns=1}; \
		/Untracked files:/ {u=1}; \
		/Your branch is ahead/ {a=$8}; \
		/Your branch is behind/ {b=$8}; \
		END {print d, m, s, ns, u, a, b}' | tr ' ' '\n' )

		# bool gitstatus[1] detached
		# str  gitstatus[2] branch name
		# bool gitstatus[3] staged changes
		# bool gitstatus[4] unstaged changes
		# bool gitstatus[5] untracked files
		# int  gitstatus[6] numbers of commit ahead from head
		# int  gitstatus[7] numbers of commit behind from head

		if [ $gitstatus[1] -eq 1 ]
			set state Detached
		else if [ (expr $gitstatus[3] + $gitstatus[4] + $gitstatus[5]) -gt 0 ]
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

		printf "$gitstatus[2]"
		if [ $gitstatus[6] -gt 0 ]
			printf " %d$FLSYM_GIT_AHEAD" $gitstatus[6]
		end
		if [ $gitstatus[7] -gt 0 ]
			printf " %d$FLSYM_GIT_AHEAD" $gitstatus[7]
		end
		if [ $gitstatus[5] -eq 1 ]
			printf " $FLSYM_GIT_UNTRACKED"
		else if [ $gitstatus[4] -eq 1 ]
			printf " $FLSYM_GIT_UNSTAGED"
		else if [ $gitstatus[3] -eq 1 ]
			printf " $FLSYM_GIT_STAGED"
		end
	end

end
