# 🛡️ AWS Security Group Creation
## 🧩 Problem

The Nautilus DevOps team is strategizing the migration of a portion of their infrastructure to the AWS cloud. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units. This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.
### 📌 Task Requirements

Create a security group under the **default VPC** with the following configuration:

- **Name**: Name of the security group is 'xfusion-sg'.
- **Description**: The description must be `Security group for Nautilus App Servers`
- **Inbound Rules**:
  - Add the inbound rule of type HTTP, with port range of 80. Enter the source CIDR range of 0.0.0.0/0. (Type: HTTP | Port: 80 | Source: `0.0.0.0/0`)
  - Add another inbound rule of type SSH, with port range of 22. Enter the source CIDR range of 0.0.0.0/0.Type: SSH  | Port: 22 | Source: `0.0.0.0/0`
---

## 📂 Script File

The solution for this task is implemented in the shell script:  
👉 [`security-group.sh`](./security-group.sh)

---

## ▶️ How to Run the Script

Follow these steps to execute the script:

# Step 1: Navigate to the security-group directory
cd curriculum/aws/level1/security-group

# Step 2: Make the script executable
chmod +x security-group.sh

# Step 3: Run the script
./security-group.sh
