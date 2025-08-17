# GitHub-Runner-Terraform
resource "dns_a_record_set" "lxc_github_runner_terraform" {
    zone = "home.soniiit.net."
    name = "lxc-gr-terraform"
    addresses = [ "192.168.178.70" ]
    ttl = 3600
}

# GitHub-Runner-Packer
resource "dns_a_record_set" "lxc_github_runner_packer" {
    zone = "home.soniiit.net."
    name = "lxc-gr-packer"
    addresses = [ "192.168.178.72" ]
    ttl = 3600
}