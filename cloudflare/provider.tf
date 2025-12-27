terraform {
  cloud {
    organization = "soniiit-net"
    workspaces {
      name = "cloudflare"
    }
  }

  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "5.3.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

