#!/bin/bash

while IFS=: read username password
do

echo "Checking user: $username"

score=0

length=${#password}

if [ $length -ge 8 ]; then
    score=$((score + 1))
fi

if [[ "$password" =~ [A-Z] ]]; then
    score=$((score + 1))
fi

if [[ "$password" =~ [a-z] ]]; then
    score=$((score + 1))
fi

if [[ "$password" =~ [0-9] ]]; then
    score=$((score + 1))
fi

if [[ "$password" =~ [^a-zA-Z0-9] ]]; then
    score=$((score + 1))
fi

if [ $score -eq 5 ]; then
    echo "$username -> LOW RISK"
elif [ $score -ge 3 ]; then
    echo "$username -> MEDIUM RISK"
else
    echo "$username -> HIGH RISK"
fi

echo "-------------------------"

done < users.txt
