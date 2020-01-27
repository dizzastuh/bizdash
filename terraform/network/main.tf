terraform {
  backend "gcs" {
    bucket  = var.state_bucket_name
    prefix  = "network"
  }
}

provider "google" {
  credentials = "${file("${var.creds_file}")}"
  project     = var.project
  region      = var.region
  zone        = var.zone
}