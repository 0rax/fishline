#!/usr/bin/env fish

set -g FLINE_PATH (pwd)

source $FLINE_PATH/fishline.fish

set -l SEGMENTS

if [ (count $argv) -eq 0 ]
    set SEGMENTS (functions | sed -nE 's/FLSEG_([a-zA-Z_]+)/\1/p')
else
    set SEGMENTS $argv
end

echo

for SEG in $SEGMENTS

    printf '%*s\r' (tput cols) '' | tr ' ' -
    printf "-- Testing segment: %s --\n\n" $SEG

    if functions FLTEST_$SEG > /dev/null
        eval FLTEST_$SEG
    else
        printf "No test availlable for segment: %s\n\n" $SEG
    end

end

printf '%*s\r' (tput cols) '' | tr ' ' -
printf "-- Done Testing --\n\n" $SEG
