terraform {
  required_version = ">= 0.13.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.19.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.2.2"
    }
  }
}
