resource "proxmox_lxc" "lxc_container" {
  for_each = var.lxc_containers

  target_node  = "pve-srv-01"
  hostname     = each.key
  vmid         = each.value.vmid
  ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
  password     = var.lxc_password
  ssh_public_keys = var.ci_ssh_public_key
  ostype       = "ubuntu"
  unprivileged = true
  cores        = each.value.cores
  memory       = each.value.memory
  pool         = "LXC"
  nameserver   = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
  rootfs {
    storage = "M2-Storage"
    size    = each.value.os_disk_size
  }

  dynamic "mountpoint" {
    for_each = each.value.data_disk_size != null ? [1] : []
    content {
      key     = "mp0"
      slot    = 0
      storage = "HDD-Storage"
      mp      = each.value.data_disk_mountpoint
      size    = each.value.data_disk_size
    }
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "${each.value.ip}/24"
    ip6    = "auto"
    gw     = "192.168.178.1"
  }

  features {
    nesting = true
  }

  onboot = true
}
