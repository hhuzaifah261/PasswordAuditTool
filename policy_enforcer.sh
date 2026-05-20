#!/bin/bash

source policy.config

echo "Enter password to test against policy:"

read password

length=${#password}

policy_passed=1

if [ $length -lt $MIN_LENGTH ]; then
echo "Password does not meet minimum length"
policy_passed=0
fi

if [ $REQUIRE_UPPERCASE -eq 1 ]; then
if [[ ! "$password" =~ [A-Z] ]]; then
echo "Missing uppercase letter"
policy_passed=0
fi
fi

if [ $REQUIRE_LOWERCASE -eq 1 ]; then
if [[ ! "$password" =~ [a-z] ]]; then
echo "Missing lowercase letter"
policy_passed=0
fi
fi

if [ $REQUIRE_NUMBER -eq 1 ]; then
if [[ ! "$password" =~ [0-9] ]]; then
echo "Missing number"
policy_passed=0
fi
fi

if [ $REQUIRE_SYMBOL -eq 1 ]; then
if [[ ! "$password" =~ [^a-zA-Z0-9] ]]; then
echo "Missing symbol"
policy_passed=0
fi
fi

if [ $policy_passed -eq 1 ]; then
echo "PASSWORD ACCEPTED"
else
echo "PASSWORD REJECTED"
fi

echo "[$(date)]" >> logs.txt
echo "Password tested" >> logs.txt

if [ $policy_passed -eq 1 ]; then
echo "Result: PASSWORD ACCEPTED" >> logs.txt
else
echo "Result: PASSWORD REJECTED" >> logs.txt
fi

echo "-------------------------" >> logs.txt
