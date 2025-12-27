runner_resources = {
  "github_runner_terraform" = {
    name    = "github-runner-terraform"
    address = "192.168.178.70"
    alias   = "gr-terraform.home.soniiit.net"
    ports   = ["22"]
  }
  "github_runner_packer" = {
    name    = "github-runner-packer"
    address = "192.168.178.72"
    alias   = "gr-packer.home.soniiit.net"
    ports   = ["22"]
  }
}
