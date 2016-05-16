# Internals
## Functions

- `__FLINT_SEGMENT`
  - Arguments:
    - `BG`: background color of the new segment
    - `FG`: foreground color of the new segment
  - Description: close previous segment and open a new one based on `FG` & `BG`
- `__FLINT_SEGMENT_CLOSE`
  - Arguments: N/A
  - Description: close previous segment without opening a new one and reset colors to `normal` `normal`
- `__FLINT_TEST`
  - Arguments:
    - `SEGMENT`: name of the segment to test
  - Description:
- `__FLINT_USAGE`
  - Arguments: N/A
  - Description: show a small help for `fishline` and return
- `__FLINT_VERSION`
  - Arguments: N/A
  - Description: show `fishline` software version based on `git describe` and exit

## Global variables

- `FLINT_STATUS`
  - Possible values: `False` | copy of `-s $status` value
  - Used by: `fishline` & some segments
- `FLINT_FIRST`
  - Possible values: `True` | `False`
  - Used by: `fishline`, `__FLINT_CLOSE` & `__FLINT_SEGMENT_CLOSE`
- `FLINT_LAST`
  - Possible values: `True` | `False`
  - Used by: `fishline`, `__FLINT_CLOSE` & `__FLINT_SEGMENT_CLOSE`
- `FLINT_POSITION`
  - Possible values: `Left` | `Right`
  - Used by: `fishline` & `__FLINT_CLOSE`
- `FLINT_BCOLOR`
  - Possible values: deleted | any color
  - Used by: `fishline`, `__FLINT_CLOSE` & some segments
- `FLINT_TEST_SEG`
  - Possible values: any segment
  - Used by: `__FLINT_TEST`
- `FLINT_TEST_STATUS`
  - Possible values: any exit code (0-255)
  - Used by: `__FLINT_TEST`

## Meta symbols

- `FLSYM_SEPARATOR`
  - Possible values: `$FLSYM_LEFT_SEPARATOR` | `$FLSYM_RIGHT_SEPARATOR`

## Special variables

- `FLINE_DEFAULT_PROMPT`
  - Possible values: list of segment
  - Used by: `fishline`
- `FLINT_PROMPT`
  - Possible values: list of segment
  - Used by: `fishline`
