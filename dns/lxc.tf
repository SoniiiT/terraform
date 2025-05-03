# GitHub-Runner-Terraform
resource "dns_a_record_set" "github_runner_terraform" {
    zone = "home.soniiit.net."
    name = "gr-terraform"
    addresses = [ "192.168.178.70" ]
    ttl = 3600
}

# Authentik
resource "dns_a_record_set" "authentik" {
    zone = "home.soniiit.net."
    name = "authentik"
    addresses = [ "192.168.178.44" ]
    ttl = 3600
}

# Bind9
resource "dns_a_record_set" "bind9" {
    zone = "home.soniiit.net."
    name = "bind9"
    addresses = [ "192.168.178.3" ]
    ttl = 3600
}

# CheckMK
resource "dns_a_record_set" "checkmk" {
    zone = "home.soniiit.net."
    name = "checkmk"
    addresses = [ "192.168.178.48" ]
    ttl = 3600
}

# Cloudflared
resource "dns_a_record_set" "cloudflared" {
    zone = "home.soniiit.net."
    name = "cloudflared"
    addresses = [ "192.168.178.43" ]
    ttl = 3600
}

# CloudflareDDNS
resource "dns_a_record_set" "cloudflareddns" {
    zone = "home.soniiit.net."
    name = "cloudflareddns"
    addresses = [ "192.168.178.42" ]
    ttl = 3600
}

# Lancache
resource "dns_a_record_set" "lancache" {
    zone = "home.soniiit.net."
    name = "lancache"
    addresses = [ "192.168.178.4" ]
    ttl = 3600
}

# Nextcloud
resource "dns_a_record_set" "nextcloud" {
    zone = "home.soniiit.net."
    name = "nextcloud"
    addresses = [ "192.168.178.47" ]
    ttl = 3600
}

# PiHole
resource "dns_a_record_set" "pihole" {
    zone = "home.soniiit.net."
    name = "pihole"
    addresses = [ "192.168.178.99" ]
    ttl = 3600
}

# Pterodactyl-Panel
resource "dns_a_record_set" "pterodactyl_panel" {
    zone = "home.soniiit.net."
    name = "pterodactyl-panel"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

# Pterodactyl-Wings
resource "dns_a_record_set" "pterodactyl_wings" {
    zone = "home.soniiit.net."
    name = "pterodactyl-wings"
    addresses = [ "192.168.178.41" ]
    ttl = 3600
}

# Remotely
resource "dns_a_record_set" "remotely" {
    zone = "home.soniiit.net."
    name = "remotely"
    addresses = [ "192.168.178.45" ]
    ttl = 3600
}

# Wazuh
resource "dns_a_record_set" "wazuh" {
    zone = "home.soniiit.net."
    name = "wazuh"
    addresses = [ "192.168.178.46" ]
    ttl = 3600
}