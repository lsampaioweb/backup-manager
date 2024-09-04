project     = "Backup"
environment = "Staging"

vm_instances = {
  "01" = {
    # VM
    clone       = "ubuntu-24-04-server-standard"
    vmid        = 1001
    vcpus       = 2
    memory      = 6144
    startup     = "order=11"
    description = "VM that will run all the backup jobs."

    networks = {
      "01" = {
        bridge = "vmbr102"
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
