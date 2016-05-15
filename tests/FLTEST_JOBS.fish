#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function FLTEST_JOBS

    echo "Context: no background jobs"
    FLINT_TEST JOBS
    echo "Context: 1 background job"
    sleep 0.05s &
    FLINT_TEST JOBS
    sleep 0.05s
    echo "Context: 2 background job"
    sleep 0.05s &
    sleep 0.05s &
    FLINT_TEST JOBS

end
