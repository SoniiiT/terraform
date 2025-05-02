# Security Policy für Desktop
data "twingate_users" "all" {
  email = "Toni.Romero@live.de"
}

data "twingate_security_policy" "policy_desktop" {
  name = "Desktop Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_desktop" {
  name = "net-desktop"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "desktop" {
  name = "net-desktop_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Ubuntu-Desktop
resource "twingate_resource" "ubuntu_desktop" {
    name = "ubuntu-desktop"
    address = "192.168.178.7"
    alias = "ubuntu-desktop.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_desktop.id

    security_policy_id = data.twingate_security_policy.policy_desktop.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22", "3389"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.desktop_group.id
        security_policy_id = data.twingate_security_policy.policy_desktop.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Windows-Desktop
resource "twingate_resource" "windows_desktop" {
    name = "windows-desktop"
    address = "192.168.178.8"
    alias = "windows-desktop.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_desktop.id

    security_policy_id = data.twingate_security_policy.policy_desktop.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22", "3389"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.desktop_group.id
        security_policy_id = data.twingate_security_policy.policy_desktop.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}