output "app_hosts" {
  value = {
    for k, v in proxmox_vm_qemu.app_srv : k => v.default_ipv4_address
  }
  description = "Map of App VM names to their IP addresses"
}

output "app_hosts_config_ips" {
  value = {
    for k, v in var.app_vms : k => v.ip
  }
  description = "Map of App VM names to their configured IP addresses"
}

output "docker_hosts" {
  value = {
    for k, v in proxmox_vm_qemu.docker_srv : k => v.default_ipv4_address
  }
  description = "Map of Docker VM names to their IP addresses"
}

# Also outputting the raw IP from input if the provider doesn't return default_ipv4_address reliably immediately
output "docker_hosts_config_ips" {
  value = {
    for k, v in var.docker_vms : k => v.ip
  }
  description = "Map of Docker VM names to their configured IP addresses"
}

output "k3s_hosts" {
  value = {
    for k, v in proxmox_vm_qemu.k3s_srv : k => v.default_ipv4_address
  }
  description = "Map of K3s VM names to their IP addresses"
}

output "k3s_hosts_config_ips" {
  value = {
    for k, v in var.k3s_vms : k => v.ip
  }
  description = "Map of K3s VM names to their configured IP addresses"
}

output "lxc_hosts" {
  value = {
    for k, v in proxmox_lxc.lxc_container : k => v.network[0].ip
  }
  description = "Map of LXC container names to their IP addresses"
}

output "lxc_hosts_config_ips" {
  value = {
    for k, v in var.lxc_containers : k => v.ip
  }
  description = "Map of LXC container names to their configured IP addresses"
}
