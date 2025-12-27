# Security Policy für Runners
data "twingate_security_policy" "policy_runners" {
  name = "Runners Policy"
}

# Remote Network für Runners
resource "twingate_remote_network" "net_runners" {
  name = "net-runners"
  location = "ON_PREMISE"
}

# Runners Gruppe
resource "twingate_group" "runners_group" {
  name = "net-runners_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

resource "twingate_resource" "runners" {
  for_each = var.runner_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_runners.id

  security_policy_id = data.twingate_security_policy.policy_runners.id

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
    group_id                           = twingate_group.runners_group.id
    security_policy_id                 = data.twingate_security_policy.policy_runners.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
