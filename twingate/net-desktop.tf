# Security Policy für Desktop
data "twingate_security_policy" "policy_desktop" {
  name = "Desktop Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_desktop" {
  name = "net-desktop"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "desktop_group" {
  name = "net-desktop_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}