#!/bin/bash

# Function to commit and push a file
commit_and_push() {
    local file_name="$1"
    git add "$file_name"
    git commit -m "Add ${file_name}"
    git push
}

# Create and commit each file
for i in {1..30}; do
    file_name="file${i}.js"
    touch "$file_name"
    echo "// This is file ${i}" > "$file_name"  # Add a comment to each file
    commit_and_push "$file_name"
done

echo ":)"

