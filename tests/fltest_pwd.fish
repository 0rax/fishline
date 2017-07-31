#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_pwd

    set _OLDPWD $PWD
    echo "Context: Current Working Directory is '/'"
    cd /
    __fishline_test PWD
    echo "Context: Current Working Directory is '/dev'"
    cd /dev
    __fishline_test PWD
    echo "Context: Current Working Directory is '/usr/local/bin'"
    cd /usr/local/bin
    __fishline_test PWD
    echo "Context: Current Working Directory is '$HOME'"
    cd $HOME
    __fishline_test PWD
    echo "Context: Current Working Directory is '$HOME/.config/fish'"
    cd $HOME/.config/fish/
    __fishline_test PWD
    cd $_OLDPWD

end
