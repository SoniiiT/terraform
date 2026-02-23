# PTR Records definition
# map key is a unique identifier for terraform
# name is the last octet of the IP (e.g. 10 for 192.168.178.10)
# ptr is the FQDN

ptr_records = {
  "lxc-bind9" = {
    name = "3"
    ptr  = "lxc-bind9.home.soniiit.net."
  }
  "pve-srv-01" = {
    name = "6"
    ptr  = "pve-srv-01.home.soniiit.net."
  }
  "home-srv-01" = {
    name = "8"
    ptr  = "home-srv-01.home.soniiit.net."
  }
  "docker-srv-01" = {
    name = "30"
    ptr  = "docker-srv-01.home.soniiit.net."
  }
  "docker-srv-02" = {
    name = "31"
    ptr  = "docker-srv-02.home.soniiit.net."
  }
  "lxc-pterodactyl-panel" = {
    name = "40"
    ptr  = "lxc-pterodactyl-panel.home.soniiit.net."
  }
  "lxc-pterodactyl-wings" = {
    name = "41"
    ptr  = "lxc-pterodactyl-wings.home.soniiit.net."
  }
  "lxc-harbor" = {
    name = "42"
    ptr  = "lxc-harbor.home.soniiit.net."
  }
  "lxc-cloudflared-01" = {
    name = "44"
    ptr  = "lxc-cloudflared-01.home.soniiit.net."
  }
  "lxc-wireguard" = {
    name = "45"
    ptr  = "lxc-wireguard.home.soniiit.net."
  }
  "lxc-remotely" = {
    name = "46"
    ptr  = "lxc-remotely.home.soniiit.net."
  }
  "lxc-teleport-server" = {
    name = "47"
    ptr  = "lxc-teleport-server.home.soniiit.net."
  }
  "lxc-teleport-proxy" = {
    name = "48"
    ptr  = "lxc-teleport-proxy.home.soniiit.net."
  }
  "lxc-semaphore" = {
    name = "50"
    ptr  = "lxc-semaphore.home.soniiit.net."
  }
  "lxc-omada" = {
    name = "51"
    ptr  = "lxc-omada.home.soniiit.net."
  }
  "lxc-scanopy" = {
    name = "52"
    ptr  = "lxc-scanopy.home.soniiit.net."
  }
  "dev-srv-01" = {
    name = "60"
    ptr  = "dev-srv-01.dev.soniiit.net."
  }
  "dev-srv-02" = {
    name = "61"
    ptr  = "dev-srv-02.dev.soniiit.net."
  }
  "gr-terraform" = {
    name = "70"
    ptr  = "gr-terraform.home.soniiit.net."
  }
  "gr-packer" = {
    name = "72"
    ptr  = "gr-packer.home.soniiit.net."
  }
  "jellyfin-home-01" = {
    name = "98"
    ptr  = "jellyfin-home-01.home.soniiit.net."
  }
  "ai-srv-01" = {
    name = "90"
    ptr  = "ai-srv-01.home.soniiit.net."
  }
  "app-srv-01" = {
    name = "91"
    ptr  = "app-srv-01.home.soniiit.net."
  }
}
