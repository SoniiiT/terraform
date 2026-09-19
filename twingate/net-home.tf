# Security Policy für Home
data "twingate_security_policy" "policy_home" {
  name = "Home Policy"
}

# Remote Network für Home
resource "twingate_remote_network" "net_home" {
  name = "net-home"
  location = "ON_PREMISE"
}

# Home Gruppe
resource "twingate_group" "home_group" {
  name = "net-home_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

resource "twingate_resource" "home" {
  for_each = var.home_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_home.id

  security_policy_id = data.twingate_security_policy.policy_home.id

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
    group_id           = twingate_group.home_group.id
    security_policy_id = data.twingate_security_policy.policy_home.id
    access_policy {
      mode          = "AUTO_LOCK"
      approval_mode = "AUTOMATIC"
      duration      = "30d"
    }
  }

  is_active = true
}
