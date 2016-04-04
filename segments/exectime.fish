#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-
set FLCLR_EXECTIME_BG red
set FLCLR_EXECTIME_FG black

function FLTEST_EXECTIME

  echo "Context: Last command took 42ms to complete"
  set -gx CMD_DURATION 42
  FLINT_TEST EXECTIME

  echo "Context: Last command took 360ms to complete"
  set -gx CMD_DURATION 360
  FLINT_TEST EXECTIME

  echo "Context: Last command took 1042ms to complete"
  set -gx CMD_DURATION 21042
  FLINT_TEST EXECTIME

  echo "Context: Last command took 162042ms to complete"
  set -gx CMD_DURATION 162320
  FLINT_TEST EXECTIME

end

function FLSEG_EXECTIME

  set -l duration "$CMD_DURATION"

	if [ $duration -ge 100 ]

    FLINT_CLOSE $FLCLR_EXECTIME_BG $FLCLR_EXECTIME_FG

    set -l ms  (math "$duration%1000")
    if [ $duration -gt 60000 ]
      set -l min (math "$duration/60000")
      set -l s   (math "$duration/1000%60")
      printf "%sm %ss %sms" $min $s $ms
    else if [ $duration -gt 1000 ]
      set -l s   (math "$duration/1000%60")
      printf "%ss %sms" $s $ms
    else
      printf "%sms" $ms
    end
	end

end
