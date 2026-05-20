# Linux Password Audit and Security Automation Tool
## Project Overview
This project is a Linux based Password Audit and Security Automation Tool developed using Bash scripting on Fedora Linux.
The tool simulates basic cybersecurity and password auditing operations such as:
 Password strength checking, 
 Credential scanning, 
 Password policy enforcement, 
 Automated audit reporting, 
 Logging, 
 Cron job automation.

# Technologies Used
 Fedora Linux, 
 Bash Scripting, 
 VMware Workstation, 
 Linux Terminal Commands.
 
# Features
## 1. Password Strength Checker
Checks password strength based on:
 Length, 
 Uppercase letters, 
 Lowercase letters, 
 Numbers, 
 Symbols.

## 2. Credential Scanner
Scans credentials stored in users.txt and identifies weak passwords.

## 3. Audit Report Generator
Generates automated security audit reports and stores them in report.txt.

## 4. Password Generator
Generates strong random passwords using:
 Uppercase characters, 
 Lowercase characters, 
 Numbers, 
 Special symbols.

## 5. Policy Enforcement
Uses policy.config to enforce password security policies.
Example:
MIN_LENGTH=8, 
REQUIRE_UPPERCASE=1, 
REQUIRE_LOWERCASE=1, 
REQUIRE_NUMBER=1, 
REQUIRE_SYMBOL=1.

## 6. Logging System
Stores activity logs and timestamps in logs.txt.

## 7. Cron Job Automation
Automates report generation using Linux cron jobs.

# Project Structure
bash
PasswordAuditTool/
 main_menu.sh, 
 strength_checker.sh, 
 credential_scanner.sh, 
 audit_report.sh, 
 password_generator.sh, 
 policy_enforcer.sh, 
 policy.config, 
 users.txt, 
 logs.txt, 
 report.txt.

# Concepts Demonstrated
 Bash scripting, 
 Linux automation, 
 File handling, 
 Shell scripting, 
 Cron jobs, 
 Password auditing, 
 Security policies, 
 Logging systems.
