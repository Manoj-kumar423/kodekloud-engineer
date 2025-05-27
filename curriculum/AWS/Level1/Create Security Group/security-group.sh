#!/bin/bash

# Define variables
SECURITY_GROUP_NAME="xfusion-sg"
DESCRIPTION="Security group for Nautilus App Servers"
VPC_ID=$(aws ec2 describe-vpcs --query "Vpcs[?IsDefault==\`true\`].VpcId" --output text)

# Create the security group
aws ec2 create-security-group --group-name "$SECURITY_GROUP_NAME" --description "$DESCRIPTION" --vpc-id "$VPC_ID"

# Wait a few seconds to ensure creation
sleep 2

# Get the Security Group ID
SG_ID=$(aws ec2 describe-security-groups --filters Name=group-name,Values="$SECURITY_GROUP_NAME" --query "SecurityGroups[0].GroupId" --output text)

# Add HTTP rule (port 80)
aws ec2 authorize-security-group-ingress \
  --group-id "$SG_ID" \
  --protocol tcp \
  --port 80 \
  --cidr 0.0.0.0/0

# Add SSH rule (port 22)
aws ec2 authorize-security-group-ingress \
  --group-id "$SG_ID" \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0

echo "✅ Security group '$SECURITY_GROUP_NAME' created and rules added successfully."
