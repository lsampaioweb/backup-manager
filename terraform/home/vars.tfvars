project     = "Backup"
environment = "Staging"

vm_instances = {
  "01" = {
    # Project
    state    = "MASTER"
    priority = 250

    # VM
    target_node = "edge-pve-01"
    vmid        = 1020
    vcpus       = 2
    memory      = 6144
    startup     = "order=12"
    description = "VM that will store the backup for all other VMs."

    networks = {
      "01" = {
        bridge  = "vmbr102"
        macaddr = "5A:53:76:31:AF:8B"
      }
    }

    disks = {
      scsi = {
        # disk0 (required)
        scsi0 = {
          disk = [{}]
        }
        # disk1 (optional)
        scsi1 = {
          disk = [{
            size    = "50G"
            storage = "Ceph_Gold"
          }]
        }
        # disk2 (optional)
        scsi2 = {
          disk = [{
            size    = "50G"
            storage = "Ceph_Gold"
          }]
        }
        # cloud-init disk (optional)
        scsi10 = {
          cloudinit = [{}]
        }
      }
    }
  }
}
