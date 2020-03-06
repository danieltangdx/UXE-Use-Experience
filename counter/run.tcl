debug .
host .
xc on -xt0 -zt0 -run
probe -create -add counter_tb -depth all
database -open counter
xeset traceMemSize 10000000ns
run 1000000ns
database -upload
run -nowait
database -upload

