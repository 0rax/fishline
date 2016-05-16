# Internals
## Internal functions

- `__fishline_segment`
  - Arguments:
    - `bg_clr`: background color of the new segment
    - `fg_clr`: foreground color of the new segment
  - Description: close previous segment and open a new one based on `fg_clr` & `bg_clr`
- `__fishline_segment_close`
  - Arguments: N/A
  - Description: close previous segment without opening a new one and reset colors to `normal` `normal`
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

## Global variables

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
  - Used by: `fishline`, `__fishline_segment` & some segments
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
- `FLINT_PROMPT`
  - Possible values: list of segment
  - Used by: `fishline`
