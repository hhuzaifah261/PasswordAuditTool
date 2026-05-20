#!/bin/bash

echo "Generating audit report..."

echo "==============================" > report.txt
echo " PASSWORD AUDIT REPORT " >> report.txt
echo "==============================" >> report.txt

date >> report.txt

echo "" >> report.txt

while IFS=: read username password
do

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
    risk="LOW"
elif [ $score -ge 3 ]; then
    risk="MEDIUM"
else
    risk="HIGH"
fi

echo "User: $username" >> report.txt
echo "Risk Level: $risk" >> report.txt
echo "----------------------" >> report.txt


done < users.txt

echo "Report generated successfully!"
