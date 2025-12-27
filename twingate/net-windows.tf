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

resource "twingate_resource" "windows" {
  for_each = var.windows_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_windows.id

  security_policy_id = data.twingate_security_policy.policy_windows.id

  protocols = {
    allow_icmp = true
    tcp = {
      policy = each.value.tcp_policy
      ports  = each.value.ports
    }
    udp = {
      policy = each.value.udp_policy
      ports  = each.value.udp_ports
    }
  }

  access_group {
    group_id                           = twingate_group.windows_group.id
    security_policy_id                 = data.twingate_security_policy.policy_windows.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
