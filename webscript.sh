#!/bin/bash

# Function for checking website status
check_website() {
    url="https://www.example.com"
    status_code=$(curl --write-out %{http_code} --silent --output /dev/null $url)
    if [[ "$status_code" -eq 200 ]] ; then
        echo "Website is up and running"
    else
        echo "Website is down"
    fi
}

# Function for checking file existence
check_file() {
    file="/file.txt"
    if [ -e "$file" ] ; then
        echo "File exists: $file"
    else
        echo "File does not exist: $file"
    fi
}

# Function for creating dummy backup
create_backup() {
    echo "Creating a dummy backup..."
    sleep 2  # Simulate backup process (2 seconds)
    echo "Dummy backup created successfully."
}

# Main script execution
case "$1" in
  "website")
    check_website
    ;;
  "file")
    check_file
    ;;
  "backup")
    create_backup
    ;;
  *)
    echo "Usage: $0 {website|file|backup}"
    exit 1
esac

