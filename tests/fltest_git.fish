#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_git

    if not command -s git > /dev/null
        echo "Could not test GIT segment as git is not installed"
        return
    end

    set _OLDPWD $PWD

    git clone https://github.com/0rax/fishline.git /tmp/fishline_test 2> /dev/null
    echo
    echo

    echo "Context: Not in a git repository"
    cd /tmp
    __fishline_test GIT

    echo "Context: Newly checkedout repository / clean repository"
    cd /tmp/fishline_test
    __fishline_test GIT

    echo "Context: Untracked file in git repository"
    touch test_fishline
    __fishline_test GIT
    rm test_fishline

    echo "Context: Changes not staged for commit"
    echo test_fishline >> LICENSE
    __fishline_test GIT
    git checkout LICENSE

    echo "Context: Changes to be commited"
    touch test_fishline
    git add test_fishline
    __fishline_test GIT
    git rm -rf test_fishline > /dev/null 2> /dev/null

    git commit -am "Testing GIT Segment" --allow-empty > /dev/null 2> /dev/null
    git commit -am "Testing GIT Segment" --allow-empty > /dev/null 2> /dev/null
    echo "Context: with commits ahead and behind in branch dev"
    git checkout -b dev > /dev/null 2> /dev/null
    __fishline_test GIT

    echo "Context: EVERYTHING"
    touch test_fishline_untracked
    echo test_fishline >> LICENSE
    touch test_fishline
    git add test_fishline
    git commit --allow-empty -m "Empty commit" > /dev/null 2> /dev/null
    __fishline_test GIT

    rm -rf /tmp/fishline_test
    cd $_OLDPWD

end
