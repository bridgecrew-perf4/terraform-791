provider "aws" {
  region     = "ap-south-1"
}

locals {
  credential = {
    admin = "password"
  }
}

output "credential" {
  value = local.credential
  sensitive = true
}


terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}
