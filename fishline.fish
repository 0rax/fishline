#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
# Powerline Glyphs →  ⇡      

function __status
	set -l slast $argv[1]
	if test $slast -gt 0
		if set -q __bcolor
			set_color -b $FLINE_COLOR_STATUS
			set_color $__bcolor
			printf ""
			set_color normal
		end
		set -g __bcolor $FLINE_COLOR_STATUS
		set_color -b $__bcolor
		echo -n " $slast "
	end
end

function __arrow
	if set -q __bcolor
		set_color -b $FLINE_COLOR_ARROW
		set_color $__bcolor
		printf ""
		set_color normal
	end
	set -g __bcolor $FLINE_COLOR_ARROW
	set_color -b $__bcolor
	printf " → "
end

function __write
	if not test -w .
		if set -q __bcolor
			set_color -b $FLINE_COLOR_WRITE
			set_color $__bcolor
			printf ""
			set_color normal
		end
		set -g __bcolor $FLINE_COLOR_WRITE
		set_color -b $__bcolor
		echo -n "  "
	end
end

function __pwd
	set -l pwd (prompt_pwd)
	if echo $pwd | grep '^~' >> /dev/null
		if set -q __bcolor
			set_color -b $FLINE_COLOR_HOME
			set_color $__bcolor
			printf ""
			set_color normal
		end
		set -g __bcolor $FLINE_COLOR_HOME
		set_color -b $__bcolor
		printf " ~ "
	end
	if not echo $pwd | grep '^~$' >> /dev/null
		if set -q __bcolor
			set_color -b $FLINE_COLOR_PWD
			set_color $__bcolor
			printf ""
			set_color normal
		end
		set -g __bcolor $FLINE_COLOR_PWD
		set_color -b $__bcolor
		if echo $pwd | grep '^/$' >> /dev/null
			printf " /"
		else
			echo -n $pwd | sed "s/~//; s/\// /; s/\//  /g"
		end
		printf " "
	end
end

function __nd
	set_color -b normal
	set_color $__bcolor
	printf ""
	set_color normal
	set_color -b normal
end

function __check_fishline_conf
	if not set -q argv[1]
		echo "Warning: last status not passed as first argument to fishline,"
	end
	if not set -q FLINE_PROMPT
		set -g FLINE_PROMPT status pwd write n arrow
	end
	if not set -q FLINE_COLOR_HOME
		set -g FLINE_COLOR_HOME blue
	end
	if not set -q FLINE_COLOR_PWD
		set -g FLINE_COLOR_PWD black
	end
	if not set -q FLINE_COLOR_STATUS
		set -g FLINE_COLOR_STATUS red
	end
	if not set -q FLINE_COLOR_WRITE
		set -g FLINE_COLOR_WRITE red
	end
	if not set -q FLINE_COLOR_ARROW
		set -g FLINE_COLOR_ARROW black
	end
end

function fishline

	set -l slast $argv[1]
	__check_fishline_conf $argv
	if not set -q slast
		set slast 0
	end
	
	set -e __bcolor
	for p in $FLINE_PROMPT
		switch $p
			case status
				__status $slast
			case pwd
				__pwd
			case write
				__write
			case n
				__nd
				echo ""
				set -e __bcolor
			case arrow
				__arrow
		end
	end
	__nd
	set -e __bcolor
end
