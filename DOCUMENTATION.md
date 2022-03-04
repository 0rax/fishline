# Documentation

## Internal functions

- `__fishline_segment`
  - Arguments:
    - `bg_clr`: background color of the new segment
    - `fg_clr`: foreground color of the new segment
    - `pre`:    print `FLSYM_{LEFT|RIGHT}_PRE` in the new segment  [optional, default: true]
    - `post`:   print `FLSYM_{LEFT|RIGHT}_POST` in the new segment [optional, default: true]
  - Description: create a new segment based on `fg_clr` & `bg_clr`
- `__fishline_segment_close`
  - Arguments: N/A
  - Description: close the line (previous segment) and colors to `normal` `normal`
- `__fishline_test`
  - Arguments:
    - `segment`: name of the segment to test
  - Description: test the segment passed as argument
- `__fishline_usage`
  - Arguments: N/A
  - Used by: `fishline -h`
  - Description: show a small help for `fishline` and return
- `__fishline_version`
  - Arguments: N/A
  - Used by: `fishline -v`
  - Description: show `fishline` software version based on `git describe` and exit

## Internal variables (used in fishline's scope)

- `FLINT_STATUS`
  - Possible values: `false` | copy of `-s $status` value
  - Used by: `fishline` & some segments
- `FLINT_FIRST`
  - Possible values: `true` | `false`
  - Used by: `fishline`, `__fishline_segment` & `__fishline_segment_close`
- `FLINT_LAST`
  - Possible values: `true` | `false`
  - Used by: `fishline`, `__fishline_segment` & `__fishline_segment_close`
- `FLINT_POSITION`
  - Possible values: `left` | `right`
  - Used by: `fishline` & `__fishline_segment`
- `FLINT_BCOLOR`
  - Possible values: deleted | any color
  - Used by: `fishline`, `__fishline_segment`
- `FLINT_PRINT_POST`
  - Possible values: `true` | `false`
  - Used by: `fishline`, `__fishline_segment`
- `FLINT_INVERT`
  - Possible values: `true` | `false`
  - Used by: `fishline`, `__fishline_segment`, `__flseg_invert`
- `FLINT_TEST_SEG`
  - Possible values: any segment
  - Used by: `__FLINT_TEST`
- `FLINT_TEST_STATUS`
  - Possible values: any exit code (0-255)
  - Used by: `__FLINT_TEST`

## Special symbols

- `FLSYM_SEPARATOR`
  - Possible values: `$FLSYM_LEFT_SEPARATOR` | `$FLSYM_RIGHT_SEPARATOR`

## Special variables

- `FLINE_DEFAULT_PROMPT`
  - Possible values: list of segment
  - Used by: `fishline`
- `FLINE_PROMPT`
  - Possible values: list of segment
  - Used by: `fishline`
- `FLINE_INIT`
  - Possible values: `true`
  - Used by: `init.fish`

## Segment initialization variables (initialized for the session)

- `FLSEG_STATUS_NAME`
  - Value: list of signal name indexed from their code
  - Used by: `__flseg_sigstatus`
  - Initialized in: `init.fish`
