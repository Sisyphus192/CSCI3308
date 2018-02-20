#!/bin/bash
# Derek Thomas

if [[ $# -eq 0 ]] ; then
     echo 'usage GradesAwk.sh filename'
     exit 0
fi

awk '{sum = 0; for (i=4;i<7;i++) sum+=$i; print int(sum/3),"["$1"]",$3",",$2}' $1 | sort -t ' ' -k3 -k4 -k2
