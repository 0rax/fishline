#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_JOBS

    echo "Context: no background jobs"
    __fishline_test JOBS
    echo "Context: 1 background job"
    sleep 0.05s &
    __fishline_test JOBS
    sleep 0.05s
    echo "Context: 2 background job"
    sleep 0.05s &
    sleep 0.05s &
    __fishline_test JOBS

end
