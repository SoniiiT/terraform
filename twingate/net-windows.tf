# Security Policy für Windows
data "twingate_users" "all" {
  email = "Toni.Romero@live.de"
}

data "twingate_security_policy" "policy_windows" {
  name = "Windows Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_windows" {
  name = "net-windows"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "windows" {
  name = "net-windows_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}