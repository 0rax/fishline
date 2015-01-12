#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLSEG_USERHOST

	__close_prev $FLCLR_USERHOST_BG $FLCLR_USERHOST_FG
	echo -n " $USER"'@'(hostname)" "

end
