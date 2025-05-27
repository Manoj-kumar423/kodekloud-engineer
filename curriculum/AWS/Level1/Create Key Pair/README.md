# 🔐 AWS Key Pair Creation
## 🧩 Problem

The Nautilus DevOps team is strategizing the migration of a portion of their infrastructure to the AWS cloud. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units. This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

### 📌 Task Requirements
Create a key pair with the following specifications:

- **Name of the key pair**: `datacenter-kp`
- **Key pair type**: `rsa`
This key pair will be used to securely access EC2 instances in upcoming tasks.

---

## 📂 Script File
The solution for this task is implemented in the shell script file:  
👉 [`key-pair.sh`](./key-pair.sh)

This script uses AWS CLI to create the key pair and save the private key in the local directory.
---

## ▶️ How to Run the Script

Follow these steps in your terminal to execute the script:

# Step 1: Navigate to the key-pair directory
cd curriculum/aws/level1/key-pair

# Step 2: Make the script executable
chmod +x key-pair.sh

# Step 3: Run the script
./key-pair.sh
