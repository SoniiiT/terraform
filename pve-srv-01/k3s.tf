resource "proxmox_vm_qemu" "k3s_srv" {
  for_each = var.k3s_vms

  # VM General Settings
  target_node               = "pve-srv-01"
  vmid                      = each.value.vmid
  name                      = each.key
  tags                      = each.value.tags
  description               = each.value.description
  automatic_reboot          = true
  automatic_reboot_severity = "warning"

  # The destination resource pool for the new VM
  pool = "K3s-SoniiiT-Prod-01"

  # VM Advanced General Settings
  start_at_node_boot   = true
  boot     = "order=virtio0;net0"
  bootdisk = "virtio"
  scsihw   = "virtio-scsi-pci"

  # VM OS Settings
  full_clone = true
  clone      = "ubuntu-server-24-04-02"
  bios       = "seabios"

  # VM System Settings
  agent = 1

  # VM cpu_type Settings
  cpu {
    cores   = each.value.cores
    sockets = each.value.sockets
  }
  cpu_type = "host"

  # VM Memory Settings
  memory = each.value.memory

  # VM Network Settings
  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }

  # VM Disk Settings Cloud-Init
  disks {
    ide {
      ide0 {
        cloudinit {
          storage = "M2-Storage"
        }
      }
    }
    virtio {
      virtio0 {
        disk {
          size    = each.value.os_disk_size
          storage = "M2-Storage"
        }
      }
      dynamic "virtio1" {
        for_each = each.value.data_disk_size != null ? [1] : []
        content {
          disk {
            size    = each.value.data_disk_size
            storage = "HDD-Storage"
          }
        }
      }
    }
  }

  # VM Cloud-Init Settings
  os_type = "cloud-init"

  # (Optional) IP Address and Gateway
  ipconfig0 = "ip=${each.value.ip}/24,gw=192.168.178.1,ip6=dhcp"

  # (Optional) DNS Servers
  nameserver = "192.168.178.3"

  # (Optional) Default User
  ciuser = "soniiit"

  # (Optional) Add your Public SSH KEY
  sshkeys = var.ci_ssh_public_key
}
