#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_GIT

	git status ^^ /dev/null > /tmp/gitstatus
	if test $status -eq 0
		set -l branch (cat /tmp/gitstatus | grep "On branch" | cut -d" " -f3-)
		set -l staged (cat /tmp/gitstatus | grep "Changes to be committed")
		set -l unstaged (cat /tmp/gitstatus | grep "Changes not staged for commit")
		set -l untracked (cat /tmp/gitstatus | grep "Untracked files")
		set -l ahead (cat /tmp/gitstatus | grep "Your branch is ahead" | grep -o '[0-9]\+ commits.' | cut -d" " -f1)
		set -l behind (cat /tmp/gitstatus | grep "Your branch is behind" | grep -o '[0-9]\+ commits.' | cut -d" " -f1)
		if test -n "$staged" -o -n "$unstaged" -o -n "$untracked"
		   set dirty yes
		end
		if set -q dirty
		   __close_prev $FLINE_BG_GIT_DIRTY $FLINE_FG_GIT_DIRTY
		else
		   __close_prev $FLINE_BG_GIT_CLEAN $FLINE_FG_GIT_CLEAN
		end
		echo -n $FLINE_GIT_BRANCH
		echo -n "$branch "
		if test -n "$ahead"
			echo -n "$ahead$FLINE_GIT_AHEAD"
		end
		if test -n "$behind"
			echo -n "$behind$FLINE_GIT_BEHIND"
		end
		if test -n "$untracked"
			echo -n "$FLINE_GIT_UNTRACKED"
		end
	end
	rm -f /tmp/gitstatus

end
