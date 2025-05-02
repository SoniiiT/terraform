# Datenquelle für den User
data "twingate_users" "all" {
  email = "Toni.Romero@live.de"
}

# Twingate Gruppe für Demo
resource "twingate_group" "demo" {
  name = "demo_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für Desktop
resource "twingate_group" "desktop" {
  name = "desktop_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für Development
resource "twingate_group" "development" {
  name = "development_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für Docker
resource "twingate_group" "docker" {
  name = "docker_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für GitAgents
resource "twingate_group" "gitagents" {
  name = "gitagents_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für Home
resource "twingate_group" "home" {
  name = "home_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für Kubernetes
resource "twingate_group" "kubernetes" {
  name = "kubernetes_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für LXC
resource "twingate_group" "lxc" {
  name = "lxc_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für NAS
resource "twingate_group" "nas" {
  name = "nas_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Twingate Gruppe für Windows
resource "twingate_group" "windows" {
  name = "windows_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}