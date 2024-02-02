#!/bin/bash

# Define backup base directory....
backup_base="/backup"

# Create a timestamp for the backup
timestamp=$(date +%Y%m%d%H%M%S)

# Backup the "Students" department directory to "stdbackup"
students_dir="/Students"
if [ -d "$students_dir" ]; then
    backup_dir="$backup_base/stdbackup"
    mkdir -p "$backup_dir"
    tar -czvf "$backup_dir/students-$timestamp.tar.gz" -C "$students_dir" .
    echo "Backup created for Students department in $backup_dir."
fi

# Backup the "Staff" department directory to "stfbackup"
staff_dir="/Staff"
if [ -d "$staff_dir" ]; then
    backup_dir="$backup_base/stfbackup"
    mkdir -p "$backup_dir"
    tar -czvf "$backup_dir/staff-$timestamp.tar.gz" -C "$staff_dir" .
    echo "Backup created for Staff department in $backup_dir."
fi

