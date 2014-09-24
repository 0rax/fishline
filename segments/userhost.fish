#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLINE_USERHOST

	__close_prev $FLINE_BG_USERHOST $FLINE_FG_USERHOST
	echo -n " $USER"'@'(hostname)" "

end
