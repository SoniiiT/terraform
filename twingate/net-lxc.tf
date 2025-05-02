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