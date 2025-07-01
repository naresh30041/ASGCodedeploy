#!/bin/bash

# Navigate to the app directory
cd /home/ec2-user/app

# Update the system (optional but recommended)
sudo yum update -y

# Install Python3 and pip if not already installed
sudo yum install -y python3

# Install virtualenv (optional, but good practice)
pip3 install --user virtualenv

# Create virtual environment and activate
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Give execution permissions to app scripts (if any)
chmod +x *.sh || true
