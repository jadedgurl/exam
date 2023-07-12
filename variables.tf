terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "4.57.0"
    }
  }
}

provider "google" {
  project = "mcit"
  region = "us-central1"
}
terraform {
  cloud {
    organization = "mcit-jaden"

    workspaces {
      tags = ["loadbalancer"]
    }
  }
}

variable "project" {
  type = list(string)
  default = "mcit"
}
variable "name"{
  type = list(string)
  default = "functionneg"
}
variable "function_name" {
  type = list(string)
}
variable "backend" {
  type = list(string)
}
variable "region" {
type = list(string) 
default=["northamerica-northeast1","us-central1"]
}
