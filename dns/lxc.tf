# Hier sind die A-Records für die LXC Container

# Bind9
resource "dns_a_record_set" "lxc_bind9" {
    zone = "home.soniiit.net."
    name = "lxc-bind9"
    addresses = [ "192.168.178.3" ]
    ttl = 3600
}

# Pterodactyl-Panel
resource "dns_a_record_set" "lxc_pterodactyl_panel" {
    zone = "home.soniiit.net."
    name = "lxc-pterodactyl-panel"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

# Pterodactyl-Wings
resource "dns_a_record_set" "lxc_pterodactyl_wings" {
    zone = "home.soniiit.net."
    name = "lxc-pterodactyl-wings"
    addresses = [ "192.168.178.41" ]
    ttl = 3600
}

# Wazuh
resource "dns_a_record_set" "lxc_wazuh" {
    zone = "home.soniiit.net."
    name = "lxc-wazuh"
    addresses = [ "192.168.178.42" ]
    ttl = 3600
}

# Cloudflared
resource "dns_a_record_set" "lxc_cloudflared" {
    zone = "home.soniiit.net."
    name = "lxc-cloudflared"
    addresses = [ "192.168.178.43" ]
    ttl = 3600
}

# Harbor
resource "dns_a_record_set" "lxc_harbor" {
    zone = "home.soniiit.net."
    name = "lxc-harbor"
    addresses = [ "192.168.178.44" ]
    ttl = 3600
}

# Wireguard
resource "dns_a_record_set" "lxc_wireguard" {
    zone = "home.soniiit.net."
    name = "lxc-wireguard"
    addresses = [ "192.168.178.45" ]
    ttl = 3600
}

# Teleport-Server
resource "dns_a_record_set" "lxc_teleport_server" {
    zone = "home.soniiit.net."
    name = "lxc-teleport-server"
    addresses = [ "192.168.178.46" ]
    ttl = 3600
}

# Nextcloud
resource "dns_a_record_set" "lxc_nextcloud" {
    zone = "home.soniiit.net."
    name = "lxc-nextcloud"
    addresses = [ "192.168.178.47" ]
    ttl = 3600
}

# Syncthing
resource "dns_a_record_set" "lxc_syncthing" {
    zone = "home.soniiit.net."
    name = "lxc-syncthing"
    addresses = [ "192.168.178.48" ]
    ttl = 3600
}

# Teleport-Proxy
resource "dns_a_record_set" "lxc_teleport_proxy" {
    zone = "home.soniiit.net."
    name = "lxc-teleport-proxy"
    addresses = [ "192.168.178.49" ]
    ttl = 3600
}

# MyIP
resource "dns_a_record_set" "lxc_myip" {
    zone = "home.soniiit.net."
    name = "lxc-myip"
    addresses = [ "192.168.178.50" ]
    ttl = 3600
}

# Unifi Controller
resource "dns_a_record_set" "lxc_unifi_controller" {
    zone = "home.soniiit.net."
    name = "lxc-unifi-controller"
    addresses = [ "192.168.178.51" ]
    ttl = 3600
}