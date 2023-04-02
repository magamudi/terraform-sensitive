terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  backend "s3" {
    key      = "state/terraform.tfstate"
    bucket   = "magnus-amudi"
    region   = "us-west-1"
    endpoint = "https://fra1.digitaloceanspaces.com"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    }
  }

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}