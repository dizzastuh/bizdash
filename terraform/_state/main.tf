provider "google" {
  credentials = file(var.creds_file)
  project     = var.project
  region      = var.region
  zone        = var.zone
}

terraform {
  backend "local" {}
}

resource "google_storage_bucket" "tf-state-bucket" {
  name     = var.state_bucket_name
  location = var.location 

  storage_class = "REGIONAL"

  versioning {
    enabled = true
  }
}
