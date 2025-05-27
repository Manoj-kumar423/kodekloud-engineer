# 🌐 AWS Subnet Creation

## 🧩 Problem

The Nautilus DevOps team is strategizing the migration of a portion of their infrastructure to the AWS cloud. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition.

### 📌 Task Requirements

Create a **subnet** with the following configuration:

- **Name**: `datacenter-subnet`
- **Region**: `us-east-1`
- **VPC**: Must be created under the **default VPC**
- **CIDR block**: Any available block (e.g., `10.0.1.0/24`)
- **Availability Zone**: Any zone in `us-east-1`

---

## 📂 Script File

The CLI solution for this task is provided in the shell script below:  
👉 [`create-subnet.sh`](./create-subnet.sh)

---

## ▶️ How to Run the Script
Open your terminal and run the following commands:

# Step 1: Navigate to the directory
cd curriculum/aws/level1/create-subnet

# Step 2: Make the shell script executable
chmod +x create-subnet.sh

# Step 3: Run the script
./create-subnet.sh
