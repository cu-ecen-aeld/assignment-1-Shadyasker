#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Check if writefile and writestr are specified
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: Both <writefile> and <writestr> must be specified"
    exit 1
fi

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write content to the file
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ "$?" -ne 0 ]; then
    echo "Error: Could not create file '$writefile'"
    exit 1
fi

echo "File created successfully: $writefile"

