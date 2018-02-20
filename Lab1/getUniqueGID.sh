#!/bin/zsh

sort -n -t ':' -k4 password_demo.txt | uniq -u
