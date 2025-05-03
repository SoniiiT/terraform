# GitHub-Runner-Terraform
resource "dns_a_record_set" "lxc_github_runner_terraform" {
    zone = "home.soniiit.net."
    name = "lxc-gr-terraform"
    addresses = [ "192.168.178.70" ]
    ttl = 3600
}

# Authentik
resource "dns_a_record_set" "lxc_authentik" {
    zone = "home.soniiit.net."
    name = "lxc-authentik"
    addresses = [ "192.168.178.44" ]
    ttl = 3600
}

# Bind9
resource "dns_a_record_set" "lxc_bind9" {
    zone = "home.soniiit.net."
    name = "lxc-bind9"
    addresses = [ "192.168.178.3" ]
    ttl = 3600
}

# CheckMK
resource "dns_a_record_set" "lxc_checkmk" {
    zone = "home.soniiit.net."
    name = "lxc-checkmk"
    addresses = [ "192.168.178.48" ]
    ttl = 3600
}

# Cloudflared
resource "dns_a_record_set" "lxc_cloudflared" {
    zone = "home.soniiit.net."
    name = "lxc-cloudflared"
    addresses = [ "192.168.178.43" ]
    ttl = 3600
}

# CloudflareDDNS
resource "dns_a_record_set" "lxc_cloudflare_ddns" {
    zone = "home.soniiit.net."
    name = "lxc-cloudflareddns"
    addresses = [ "192.168.178.42" ]
    ttl = 3600
}

# Lancache
resource "dns_a_record_set" "lxc_lancache" {
    zone = "home.soniiit.net."
    name = "lxc-lancache"
    addresses = [ "192.168.178.4" ]
    ttl = 3600
}

# Nextcloud
resource "dns_a_record_set" "lxc_nextcloud" {
    zone = "home.soniiit.net."
    name = "lxc-nextcloud"
    addresses = [ "192.168.178.47" ]
    ttl = 3600
}

# PiHole
resource "dns_a_record_set" "lxc_pihole" {
    zone = "home.soniiit.net."
    name = "lxc-pihole"
    addresses = [ "192.168.178.99" ]
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

# Remotely
resource "dns_a_record_set" "lxc_remotely" {
    zone = "home.soniiit.net."
    name = "lxc-remotely"
    addresses = [ "192.168.178.45" ]
    ttl = 3600
}

# Wazuh
resource "dns_a_record_set" "lxc_wazuh" {
    zone = "home.soniiit.net."
    name = "lxc-wazuh"
    addresses = [ "192.168.178.46" ]
    ttl = 3600
}