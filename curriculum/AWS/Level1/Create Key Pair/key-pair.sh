#!/bin/bash

# Step 1: Create the key pair
aws ec2 create-key-pair --key-name datacenter-kp --key-type rsa --query 'KeyMaterial' --output text > datacenter-kp.pem

# Step 2: Set the right permissions for the private key file
chmod 400 datacenter-kp.pem

# Optional: Print success message
echo "Key pair 'datacenter-kp' created and saved as datacenter-kp.pem"
