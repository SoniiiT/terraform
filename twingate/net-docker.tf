# Security Policy für Docker
data "twingate_users" "all" {
  email = "Toni.Romero@live.de"
}

data "twingate_security_policy" "policy_docker" {
  name = "Docker Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_docker" {
  name = "net-docker"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "docker" {
  name = "net-docker_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}