# GitHub-Runner-Terraform
resource "dns_a_record_set" "lxc_github_runner_terraform" {
    zone = "home.soniiit.net."
    name = "lxc-gr-terraform"
    addresses = [ "192.168.178.70" ]
    ttl = 3600
}

# GitHub-Runner-Docker
resource "dns_a_record_set" "lxc_github_runner_docker" {
    zone = "home.soniiit.net."
    name = "lxc-gr-docker"
    addresses = [ "192.168.178.71" ]
    ttl = 3600
}

# GitHub-Runner-Packer
resource "dns_a_record_set" "lxc_github_runner_packer" {
    zone = "home.soniiit.net."
    name = "lxc-gr-packer"
    addresses = [ "192.168.178.72" ]
    ttl = 3600
}

# GitHub-Runner-Ansible
resource "dns_a_record_set" "lxc_github_runner_ansible" {
    zone = "home.soniiit.net."
    name = "lxc-gr-ansible"
    addresses = [ "192.168.178.73" ]
    ttl = 3600
}

# GitHub-Runner-Websites
resource "dns_a_record_set" "lxc_github_runner_websites" {
    zone = "home.soniiit.net."
    name = "lxc-gr-websites"
    addresses = [ "192.168.178.74" ]
    ttl = 3600
}

# GitHub-Runner-Scripts
resource "dns_a_record_set" "lxc_github_runner_scripts" {
    zone = "home.soniiit.net."
    name = "lxc-gr-scripts"
    addresses = [ "192.168.178.75" ]
    ttl = 3600
}