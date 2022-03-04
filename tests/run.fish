#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function usage

    pushd (dirname (status -f)) > /dev/null
    set -l fline_version (git describe --tag)
    popd > /dev/null

    printf "# tests/run.sh for fishline %s\n" $fline_version
    printf "
A small testing framework for fishline.

Usage:
    tests/run.sh [OPTIONS] [segment ...]

Argument and Options:

    -t path_to_theme
            This option allow you to ask the test framework to load a theme for
            you before testing. You can load multiple theme this option multiple
            time (for example a glyph theme & a color theme). This option is
            provided to let you preview any theme before using it.
    -a      Test all availlable segment
    -h      Print this help and exit
"
    exit 0

end

function println

    printf '%*s\r' (tput cols) '' | tr ' ' _
    printf '__ %s \n\n' $argv

end

set -l segments
set -l themes
set -l all_seg false
set -l args    (getopt "aht:" $argv)

if [ $status -gt 0 ]
    exit 1
end

# Parse cli options
set args (echo $args | sed -E 's/^\s//;s/\ +/ /g' | tr ' ' '\n')
while [ (count $args) -ge 0 ]
    switch $args[1]
    case "-a"
        set all_seg true
    case "-t"
        set themes $themes $args[2]
        set args $args[2..-1]
    case "-h"
        usage
    case "--"
        break
    end
    set args $args[2..-1]
end

# Init fishline
set FLINE_PATH (git rev-parse --show-toplevel)
set -a fish_function_path $FLINE_PATH/functions
set -a fish_function_path $FLINE_PATH/tests
source $FLINE_PATH/conf.d/fishline-init.fish

# Get segment list to check
if [ "$all_seg" = "true" ]
    set segments (fishline -x)
else if [ (count $args) -gt 1 ]
    set segments $args[2..-1]
else
    usage
end

echo

# Load themes
for theme in $themes
    println "Loading theme: $theme"
    source $theme
end

# Run tests
for seg in (echo $segments | tr 'A-Z' 'a-z' | tr ' ' '\n')
    println "Testing segment: $seg"

    if functions fltest_$seg > /dev/null
        eval fltest_$seg
    else
        printf "No test availlable for segment: %s\n" $seg
    end
    printf "\n"

end
println "Done Testing "
