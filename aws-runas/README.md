# AWS Credentials Setter

## Overview
This bash script is designed to automate the retrieval and setting of AWS credentials using `aws-runas` within the Windows Subsystem for Linux (WSL). It runs `aws-runas` with the provided directory and AWS profile, captures the output containing AWS credentials, and writes them to the AWS credentials file.

## Usage
1. **Clone Repository**: Clone this repository to your WSL Ubuntu environment.
2. **Install Dependencies**: Ensure that `aws-runas` is installed in your Windows.
3. **Run Script**: Execute the script with the following command:
   ```bash
   ./aws-runas/aws-runas.sh <directory> <profile>
