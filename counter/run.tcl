debug .
host .
xc on -xt0 -zt0 -run
probe -create -add vid_tb_top -depth all
database -open 818
xeset traceMemSize 10000000ns
run 1000000ns
database -upload
run -nowait
database -upload

