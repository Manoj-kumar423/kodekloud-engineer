#!/bin/bash

# Set region
REGION="us-east-1"

# Get the default VPC ID
VPC_ID=$(aws ec2 describe-vpcs \
  --region $REGION \
  --filters "Name=isDefault,Values=true" \
  --query "Vpcs[0].VpcId" \
  --output text)

# Choose an available CIDR block
SUBNET_CIDR="10.0.1.0/24"

# Get an availability zone in us-east-1
AZ=$(aws ec2 describe-availability-zones \
  --region $REGION \
  --query "AvailabilityZones[0].ZoneName" \
  --output text)

# Create the subnet
aws ec2 create-subnet \
  --region $REGION \
  --vpc-id $VPC_ID \
  --cidr-block $SUBNET_CIDR \
  --availability-zone $AZ \
  --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=datacenter-subnet}]"

echo "✅ Subnet 'datacenter-subnet' created successfully in $AZ under default VPC."
