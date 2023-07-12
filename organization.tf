terraform {
  cloud {
    organization = "mcit-jaden"

    workspaces {
      tags = ["loadbalancer"]
    }
  }
}