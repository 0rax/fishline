#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_GIT

	git status ^^ /dev/null > /tmp/gitstatus
	if test $status -eq 0
		set -l branch (cat /tmp/gitstatus | grep "On branch" | cut -d" " -f3-)
		set -l staged (cat /tmp/gitstatus | grep "Changes to be committed")
		set -l unstaged (cat /tmp/gitstatus | grep "Changes not staged for commit")
		set -l untracked (cat /tmp/gitstatus | grep "Untracked files")
		set -l ahead (cat /tmp/gitstatus | grep "Your branch is ahead" | grep -o '[0-9]\+ commit' | cut -d" " -f1)
		set -l behind (cat /tmp/gitstatus | grep "Your branch is behind" | grep -o '[0-9]\+ commit' | cut -d" " -f1)
		if test -n "$staged" -o -n "$unstaged" -o -n "$untracked"
		   set dirty yes
		end
		if set -q dirty
		   FLINT_CLOSE $FLCLR_GIT_BG_DIRTY $FLCLR_GIT_FG_DIRTY
		else
		   FLINT_CLOSE $FLCLR_GIT_BG_CLEAN $FLCLR_GIT_FG_CLEAN
		end
		echo -n $FLSYM_GIT_BRANCH
		echo -n "$branch "
		if test -n "$ahead"
			echo -n "$ahead$FLSYM_GIT_AHEAD"
		end
		if test -n "$behind"
			echo -n "$behind$FLSYM_GIT_BEHIND"
		end
		if test -n "$untracked"
			echo -n "$FLSYM_GIT_UNTRACKED"
		end
	end
	rm -f /tmp/gitstatus

end
