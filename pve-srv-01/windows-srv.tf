resource "proxmox_vm_qemu" "windows_srv" {
  for_each = var.windows_vms

  # VM General Settings
  target_node               = "pve-srv-01"
  vmid                      = each.value.vmid
  name                      = each.key
  description               = each.value.description
  automatic_reboot          = true
  automatic_reboot_severity = "warning"

  # The destination resource pool for the new VM
  pool = "Windows"

  # VM Advanced General Settings
  start_at_node_boot = true
  boot               = "order=scsi0"
  bootdisk           = "virtio"
  scsihw             = "virtio-scsi-pci"

  # VM OS Settings
  full_clone = true
  clone      = each.value.os
  bios       = "ovmf"

  # VM System Settings
  agent                  = 1
  define_connection_info = false

  # VM CPU Settings
  cpu {
    cores   = each.value.cores
    sockets = each.value.sockets
    type    = "host"
  }

  # VM Memory Settings
  memory = each.value.memory

  # VM Network Settings
  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }

  # Efi Disk Settings
  efidisk {
    efitype = "4m"
    storage = "M2-Storage"
  }

  # VM Disk Settings
  disks {
    scsi {
      scsi0 {
        disk {
          size    = each.value.os_disk_size
          storage = "M2-Storage"
        }
      }
    }
  }

  # IP Address and Gateway
  ipconfig0 = each.value.ip == "dhcp" ? "ip=dhcp,ip6=dhcp" : "ip=${each.value.ip}/24,gw=192.168.178.1,ip6=dhcp"

  # Skip IPv6 Validation
  skip_ipv6 = true
}
