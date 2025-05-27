# Security Policy für Windows
data "twingate_security_policy" "policy_windows" {
  name = "Windows Policy"
}

# Remote Network für Windows
resource "twingate_remote_network" "net_windows" {
  name = "net-windows"
  location = "ON_PREMISE"
}

# Windows Gruppe
resource "twingate_group" "windows_group" {
  name = "net-windows_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}