#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_conda

    echo "Context: CONDA_DEFAULT_ENV var is set to 'fishline_test'"
    set -gx CONDA_DEFAULT_ENV fishline_test
    __fishline_test CONDA

end
