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