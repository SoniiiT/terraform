# Security Policy für Gitagents
data "twingate_security_policy" "policy_gitagents" {
  name = "Gitagents Policy"
}

# Remote Network für Gitagents
resource "twingate_remote_network" "net_gitagents" {
  name = "net-gitagents"
  location = "ON_PREMISE"
}

# Gitagents Gruppe
resource "twingate_group" "gitagents_group" {
  name = "net-gitagents_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# GitHub-Runner-Terraform
/* resource "twingate_resource" "github_runner_terraform" {
    name = "github-runner-terraform"
    address = "192.168.178.70"
    alias = "gr-terraform.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_gitagents.id

    security_policy_id = data.twingate_security_policy.policy_gitagents.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.gitagents_group.id
        security_policy_id = data.twingate_security_policy.policy_gitagents.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
} */