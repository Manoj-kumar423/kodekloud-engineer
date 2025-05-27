#!/bin/bash

# Define variables
VOLUME_NAME="nautilus-volume"
VOLUME_TYPE="gp3"
VOLUME_SIZE=2  # in GiB
AVAILABILITY_ZONE=$(aws ec2 describe-availability-zones --query "AvailabilityZones[0].ZoneName" --output text)

# Create the volume
aws ec2 create-volume --volume-type $VOLUME_TYPE --size $VOLUME_SIZE \
  --availability-zone $AVAILABILITY_ZONE \
  --tag-specifications "ResourceType=volume,Tags=[{Key=Name,Value=$VOLUME_NAME}]"

echo "✅ EBS volume '$VOLUME_NAME' of type '$VOLUME_TYPE' and size ${VOLUME_SIZE}GiB created successfully."
