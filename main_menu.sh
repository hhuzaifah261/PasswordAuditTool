#!/bin/bash

while true
do
    clear

    echo "================================="
    echo " PASSWORD AUDIT TOOL "
    echo "================================="

    echo "1. Password Strength Checker"
    echo "2. Credential Scanner"
    echo "3. Generate Audit Report"
    echo "4. Password Generator"
    echo "5. Policy Enforcement"
    echo "6. Exit"

    echo ""
    echo "Enter your choice:"

    read choice

    case $choice in

        1)
            ./strength_checker.sh
            ;;

        2)
            ./credential_scanner.sh

            ;;

        3)
            ./audit_report.sh
	    echo ""
            cat report.txt
            ;;

        4)
            ./password_generator.sh
            ;;

        5)
            ./policy_enforcer.sh
            ;;

        6)
            echo "Exiting..."
            exit
            ;;

        *)
            echo "Invalid choice"
            ;;

    esac

    echo ""
    echo "Press ENTER to continue..."
    read

done
