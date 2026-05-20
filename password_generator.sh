#!/bin/bash

characters='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*'

password=$(cat /dev/urandom | tr -dc "$characters" | head -c 12)

echo "Generated Password:"
echo "$password"
