# Security Policy für Runners
data "twingate_security_policy" "policy_runners" {
  name = "runners Policy"
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

# GitHub-Runner-Terraform
resource "twingate_resource" "github_runner_terraform" {
    name = "github-runner-terraform"
    address = "192.168.178.70"
    alias = "gr-terraform.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_runners.id

    security_policy_id = data.twingate_security_policy.policy_runners.id

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
        group_id = twingate_group.runners_group.id
        security_policy_id = data.twingate_security_policy.policy_runners.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}