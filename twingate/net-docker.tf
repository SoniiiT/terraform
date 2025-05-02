# Security Policy für Docker
resource "twingate_security_policy" "policy_docker" {
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