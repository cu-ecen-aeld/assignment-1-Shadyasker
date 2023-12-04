#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Check if filesdir is specified and is a directory
if [ -z "$filesdir" ] || [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a valid directory"
    exit 1
fi

# Find matching lines and count them
matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Count the number of files
num_files=$(find "$filesdir" -type f | wc -l)

# Print the result
echo "The number of files are $num_files and the number of matching lines are $matching_lines"

