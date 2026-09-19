terraform {
  cloud {
    organization = "soniiit-net"
    workspaces {
      name = "twingate"
    }
  }

  required_providers {
    twingate = {
      source = "Twingate/twingate"
      version = "5.0.2"
    }
  }
}

provider "twingate" {
  api_token = var.tg_api_token
  network   = "soniiit"
}