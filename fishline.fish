#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

# Powerline Glyphs
set FLSYM_LEFT_PRE " "
set FLSYM_LEFT_CLOSE "\uE0B0"
set FLSYM_LEFT_POST " "
set FLSYM_LEFT_SEPARATOR " \uE0B1 "
set FLSYM_RIGHT_PRE " "
set FLSYM_RIGHT_OPEN "\uE0B2"
set FLSYM_RIGHT_POST " "
set FLSYM_RIGHT_SEPARATOR " \uE0B3 "
set FLSYM_SEPARATOR $FLSYM_LEFT_SEPARATOR

# Default Fishline Prompt
set FLINE_DEFAULT STATUS JOBS PWD GIT WRITE N ROOT

source $FLINE_PATH/themes/default.fish

function FLINT_CLOSE --argument-name BG FG END -d "close the previous fishline segment"

	if [ "$FLINT_POSITION" = "Right" ]

		if [ "$END" != True ]
			if not [ "$FLINT_FIRST" = True ]
				printf "$FLSYM_RIGHT_PRE"
			end
			set_color $BG
			printf "$FLSYM_RIGHT_OPEN"
			set_color $FG
			set_color -b $BG
			printf "$FLSYM_RIGHT_POST"
		else
			printf "$FLSYM_RIGHT_PRE"
			set_color normal -b normal
		end

	else

		if set -q FLINT_BCOLOR
			printf "$FLSYM_LEFT_PRE"
			set_color -b $BG
			set_color "$FLINT_BCOLOR"
			printf $FLSYM_LEFT_CLOSE
			set_color normal
		end
		set_color -b $BG $FG
		if [ "$END" != True ]
			printf "$FLSYM_LEFT_POST"
		end
		set -g FLINT_BCOLOR $BG

	end

	if [ "$END" = True ]
		set FLINT_FIRST True
	else
		set FLINT_FIRST False
	end

end

function FLINT_TEST -d 'test segments'

	set -gx FLINT_TEST_SEG $argv
	if not set -q FLINT_TEST_STATUS
		set -gx FLINT_TEST_STATUS 0
	end

	function FLINT_TEST_RIGHT --argument-names LAST_STATUS
		fishline -r -s $FLINT_TEST_STATUS $FLINT_TEST_SEG
	end

	function FLINT_TEST_LEFT --argument-names LAST_STATUS
		fishline -l -s $FLINT_TEST_STATUS $FLINT_TEST_SEG
	end

	read -R FLINT_TEST_RIGHT -p FLINT_TEST_LEFT

end

function FLINT_RELOAD -S -d "reload every fishline segment"

	for seg in (find $FLINE_PATH/segments -name '*.fish')
		source $seg
	end

end

FLINT_RELOAD

function fishline -d "fishline prompt function"

	set -g FLINT_STATUS False
	set -g FLINT_POSITION Left
	set -g FLINT_FIRST True
	set FLSYM_SEPARATOR $FLSYM_LEFT_SEPARATOR

	set -l args (getopt "lrs:" $argv | sed -E 's/^\s//;s/\ +/ /g' | tr ' ' '\n')
	while [ (count $args) -ge 0 ]
		switch $args[1]
		case "-s"
			set FLINT_STATUS $args[2]
			set args $args[2..-1]
		case "-r"
			set FLINT_POSITION Right
			set FLSYM_SEPARATOR $FLSYM_RIGHT_SEPARATOR
		case "-l"
			set FLINT_POSITION Left
			set FLSYM_SEPARATOR $FLSYM_LEFT_SEPARATOR
		case "--"
			break
		end
		set args $args[2..-1]
	end

	if [ "$FLINT_STATUS" = "False" ]
		if [ (count $args) -ge 2 ]; and [ "$args[2]" -eq "$args[2]" ]
			set FLINT_STATUS $args[2]
			if [ (count $args) -eq 2 ]
				set args '--'
			else
				set args -- $args[3..-1]
			end
		else
			echo "Warning: last status not passed as positional '-s' argument to fishline"
			set FLINT_STATUS 0
		end
	end

	set -e FLINT_BCOLOR
	if [ (count $args) -gt 1 ]
		for seg in $args[2..-1]
			eval FLSEG_$seg
		end
	else if set -q FLINE_PROMPT
		for seg in $FLINE_PROMPT
			eval FLSEG_$seg
		end
	else
		for seg in $FLINE_DEFAULT
			eval FLSEG_$seg
		end
	end
	FLINT_CLOSE normal normal True
	set -e FLINT_BCOLOR

end
