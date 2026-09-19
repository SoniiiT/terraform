# Security Policy für Desktop
data "twingate_security_policy" "policy_desktop" {
  name = "Desktop Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_desktop" {
  name = "net-desktop"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "desktop_group" {
  name = "net-desktop_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

resource "twingate_resource" "desktop" {
  for_each = var.desktop_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_desktop.id

  security_policy_id = data.twingate_security_policy.policy_desktop.id

  protocols = {
    allow_icmp = true
    tcp = {
      policy = each.value.tcp_policy
      ports  = each.value.tcp_policy == "ALLOW_ALL" ? null : each.value.ports
    }
    udp = {
      policy = each.value.udp_policy
      ports  = each.value.udp_policy == "ALLOW_ALL" ? null : each.value.udp_ports
    }
  }

  access_group {
    group_id           = twingate_group.desktop_group.id
    security_policy_id = data.twingate_security_policy.policy_desktop.id
    access_policy {
      mode          = "AUTO_LOCK"
      approval_mode = "AUTOMATIC"
      duration      = "30d"
    }
  }

  is_active = true
}
