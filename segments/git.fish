#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_GIT

	git status ^^ /dev/null > /tmp/gitstatus
	if test $status -eq 0
		set -l branch (cat /tmp/gitstatus | grep "On branch" | cut -d" " -f3-)
		set -l staged (cat /tmp/gitstatus | grep "Changes to be committed")
		set -l unstaged (cat /tmp/gitstatus | grep "Changes not staged for commit")
		set -l untracked (cat /tmp/gitstatus | grep "Untracked files")
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
		if test -n "$untracked"
			echo -n "+ "
		end
	end
	rm -f /tmp/gitstatus
end
