# Security Policy für Windows
data "twingate_security_policy" "policy_windows" {
  name = "Windows Policy"
}

# Remote Network für Windows
resource "twingate_remote_network" "net_windows" {
  name = "net-windows"
  location = "ON_PREMISE"
}

# Windows Gruppe
resource "twingate_group" "windows_group" {
  name = "net-windows_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# DC-SRV-01
resource "twingate_resource" "dc_srv_01" {
    name = "dc-srv-01"
    address = "192.168.178.90"
    alias = "dc-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_windows.id

    security_policy_id = data.twingate_security_policy.policy_windows.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["3389", "445"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.windows_group.id
        security_policy_id = data.twingate_security_policy.policy_windows.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# DC-SRV-02
resource "twingate_resource" "dc_srv_02" {
    name = "dc-srv-02"
    address = "192.168.178.91"
    alias = "dc-srv-02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_windows.id

    security_policy_id = data.twingate_security_policy.policy_windows.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["3389", "445"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.windows_group.id
        security_policy_id = data.twingate_security_policy.policy_windows.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}
