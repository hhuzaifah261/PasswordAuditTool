#!/bin/bash

echo "Enter your password:"

read password

score=0

length=${#password}

if [ $length -ge 8 ]; then
    echo "Good length"
    ((score++))
else
    echo "Password too short"
fi

if [[ $password =~ [A-Z] ]]; then
    echo "Contains uppercase letter"
    ((score++))
else
    echo "Missing uppercase letter"
fi

if [[ $password =~ [a-z] ]]; then
    echo "Contains lowercase letter"
    ((score++))
else
    echo "Missing lowercase letter"
fi

if [[ $password =~ [0-9] ]]; then
    echo "Contains number"
    ((score++))
else
    echo "Missing number"
fi

if [[ $password =~ [^a-zA-Z0-9] ]]; then
    echo "Contains symbol"
    ((score++))
else
    echo "Missing symbol"
fi

echo "Final Score: $score"

if [ $score -eq 5 ]; then
    echo "STRONG PASSWORD"
elif [ $score -ge 3 ]; then
    echo "MEDIUM PASSWORD"
else
    echo "WEAK PASSWORD"
fi
