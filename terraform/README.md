# Backup Manager Project

This project provides Terraform and Ansible scripts to automate the creation of an Ubuntu VM on Proxmox. The VM is cloned from a template and configured as a backup manager using Minio for object storage. The goal is to centralize and manage backups for all your other VMs.

## Features

- **Proxmox Integration**: Uses Terraform to clone an Ubuntu template and deploy a virtual machine.
- **Minio Setup**: Automatically installs and configures Minio as an object storage solution to handle backups.
- **Backup Centralization**: Designed to be the central backup manager for your infrastructure, storing backups from other VMs.

## Getting Started

### 1. Terraform Module

The project uses the following Terraform module to create the Proxmox VM:

- [Terraform Proxmox Ubuntu Module](https://github.com/lsampaioweb/terraform-proxmox-vm-qemu) - This module simplifies the process of creating an Ubuntu virtual machine (server or desktop) on Proxmox VE from a cloned template.

### 2. Project Initialization

Navigate to the `terraform/` directory and initialize the Terraform project:

```bash
cd terraform/
terraform init
```

### 3. Create the VM with Terraform

To manage your VM creation and environment operations, use the included bash script `tf.sh`. Below are some example commands:

```bash
# Plan and apply configurations for the 'home' environment
./tf.sh plan home
./tf.sh apply home -auto-approve

# Apply configurations for the 'homelab' environment
./tf.sh apply homelab

# Destroy the 'home' environment if needed
./tf.sh destroy home
```

### 4. Ansible for Post-Provisioning Configuration

After the VM is created, use the provided Ansible playbooks to install and configure Minio. This will allow you to manage and store backups from other VMs effectively.

## Author

**Luciano Sampaio**
