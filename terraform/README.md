# backup-manager

Project with Terraform and Ansible scripts to create an Ubuntu VM on Proxmox from a cloned template to be used as a backup manager.

## Running Terraform

Follow these steps on the computer running Terraform:

1. **Initialize the Project**

   Navigate to the Terraform directory and initialize the project:

   ```bash
   cd terraform/
   terraform init
   ```

2. **Run Terraform to Create the VM**

   Use the provided bash script to manage Terraform operations. Below are some example commands:

   ```bash
   # Plan and apply configurations for the 'home' environment
   ./tf.sh plan home
   ./tf.sh apply home -auto-approve

   # Apply configurations for the 'homelab' environment
   ./tf.sh apply homelab

   # Destroy the 'home' environment if needed
   ./tf.sh destroy home
   ```

## Created by

- Luciano Sampaio
