#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_jobs

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
