# 💽 AWS EBS Volume Creation

## 🧩 Problem

The Nautilus DevOps team is strategizing the migration of a portion of their infrastructure to the AWS cloud. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units. This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

### 📌 Task Requirements

Create an EBS volume with the following configuration:

- **Name**: Name of the volume should be `nautilus-volume`
- **Type**: Volume type must be `gp3`
- **Size**: Volume size must be `2 GiB`
- **Availability Zone**: Any available zone in your region

---

## 📂 Script File

The solution for this task is implemented in the shell script:  
👉 [`create-volume.sh`](./gp3-volume.sh)

---

## ▶️ How to Run the Script

Use the following commands in your terminal:

# Step 1: Navigate to the create-volume directory
cd curriculum/aws/level1/create-volume

# Step 2: Make the script executable
chmod +x create-volume.sh

# Step 3: Run the script
./create-volume.sh
