#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_PWD

    set _OLDPWD $PWD
    echo "Context: Current Working Directory is '/'"
    cd /
    __FLINT_TEST PWD
    echo "Context: Current Working Directory is '/tmp'"
    cd /tmp
    __FLINT_TEST PWD
    echo "Context: Current Working Directory is '/var/log'"
    cd /var/log
    __FLINT_TEST PWD
    echo "Context: Current Working Directory is '$HOME'"
    cd $HOME
    __FLINT_TEST PWD
    echo "Context: Current Working Directory is '$HOME/.config/fish'"
    cd $HOME/.config/fish/
    __FLINT_TEST PWD
    cd $_OLDPWD

end
