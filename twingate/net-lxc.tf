# Security Policy für LXC
data "twingate_security_policy" "policy_lxc" {
  name = "LXC Policy"
}

# Remote Network für LXC
resource "twingate_remote_network" "net_lxc" {
  name = "net-lxc"
  location = "ON_PREMISE"
}

# LXC Gruppe
resource "twingate_group" "lxc_group" {
  name = "net-lxc_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

resource "twingate_resource" "lxc" {
  for_each = var.lxc_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_lxc.id

  security_policy_id = data.twingate_security_policy.policy_lxc.id

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
    group_id                           = twingate_group.lxc_group.id
    security_policy_id                 = data.twingate_security_policy.policy_lxc.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
