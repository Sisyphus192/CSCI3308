#!/bin/bash
# Derek Thomas
if [[ $# -eq 0 ]] ; then
    echo 'usage Grades.sh filename'
    exit 0
fi

students=()
while read id first_name last_name grade1 grade2 grade3
do
    avg=$(((${grade1}+${grade2}+${grade3})/3))
    students+="${avg} [${id}] ${last_name}, ${first_name}\n"
done < $1
echo -e "${students[@]}" | sort -t ' ' -k3 -k4 -k2
