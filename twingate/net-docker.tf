# Security Policy für Docker
data "twingate_security_policy" "policy_docker" {
  name = "Docker Policy"
}

# Remote Network für Docker
resource "twingate_remote_network" "net_docker" {
  name = "net-docker"
  location = "ON_PREMISE"
}

# Docker Gruppe
resource "twingate_group" "docker_group" {
  name = "net-docker_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

resource "twingate_resource" "docker" {
  for_each = var.docker_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_docker.id

  security_policy_id = data.twingate_security_policy.policy_docker.id

  protocols = {
    allow_icmp = true
    tcp = {
      policy = each.value.tcp_policy
      ports  = each.value.tcp_policy == "ALLOW_ALL" ? null : each.value.ports
    }
    udp = {
      policy = each.value.udp_policy
      ports  = each.value.udp_ports
    }
  }

  access_group {
    group_id                           = twingate_group.docker_group.id
    security_policy_id                 = data.twingate_security_policy.policy_docker.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
