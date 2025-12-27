# Security Policy für NAS
data "twingate_security_policy" "policy_nas" {
  name = "NAS Policy"
}

# Remote Network für NAS
resource "twingate_remote_network" "net_nas" {
  name = "net-nas"
  location = "ON_PREMISE"
}

# NAS Gruppe
resource "twingate_group" "nas_group" {
  name = "net-nas_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

resource "twingate_resource" "nas" {
  for_each = var.nas_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_nas.id

  security_policy_id = data.twingate_security_policy.policy_nas.id

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
    group_id                           = twingate_group.nas_group.id
    security_policy_id                 = data.twingate_security_policy.policy_nas.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
