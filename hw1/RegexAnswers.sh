#!/bin/bash

if [[ $# -eq 0 ]] ; then
     echo 'usage RegexAnswers.sh filename'
     exit 0
fi
egrep -o '\d+$' $1 | wc -l
grep -v "^$" $1 | egrep -vo '^[aeiouAEIOU]' | wc -l
egrep -o '^[A-Za-z]{12}$' $1 | wc -l
egrep -o '\d{3}-\d{3}-\d{4}$' $1 | wc -l
egrep -o '^303\-\d{3}-\d{4}$' $1 | wc -l
egrep -o '^[aeiouAEIOU].*\d$' $1 | wc -l
egrep -o '^[A-Za-z0-9._%+-]+@geocities.com$' $1 | wc -l
egrep -o '^[A-Ma-m][A-Za-z]*\.[A-Za-z]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}' $1 | wc -l
