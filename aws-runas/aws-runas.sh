#!/bin/bash

# Check if required arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <profile>"
    exit 1
fi

dir="$1"
profile="$2"

# Run aws-runas using cmd.exe and capture its output
output=$(cmd.exe /C "cd $dir && aws-runas $profile")

# Extract AWS credentials from the output
AWS_ACCESS_KEY_ID=$(awk -F= '/AWS_ACCESS_KEY_ID/ {print $2}' <<< "$output")
AWS_SECRET_ACCESS_KEY=$(awk -F= '/AWS_SECRET_ACCESS_KEY/ {print $2}' <<< "$output")
AWS_SESSION_TOKEN=$(awk -F= '/AWS_SESSION_TOKEN/ {print $2}' <<< "$output")

# Check if AWS_ACCESS_KEY_ID is empty
if [ -z "$AWS_ACCESS_KEY_ID" ]; then
    echo "Error: Failed to retrieve AWS credentials"
    echo "$output"
    exit 1
fi

# Write the credentials to the credentials file
cat <<EOT > "$HOME/.aws/credentials"
[default]
aws_access_key_id = $AWS_ACCESS_KEY_ID
aws_secret_access_key = $AWS_SECRET_ACCESS_KEY
aws_session_token = $AWS_SESSION_TOKEN
EOT
