#!/bin/bash
for servers in instance01 instance02 instance03 10.X.X.1 10.X.X.2
do
    ssh ubuntu@${servers} 'bash -s' <<'ENDSSH'
    # The following commands run on the remote host
    echo connecting to $(hostname)
    locate  *log4* && dpkg
    dpkg -l | grep log4
    echo done for $(hostname)
ENDSSH
done


