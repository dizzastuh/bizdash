terraform {
  backend "gcs" {
    bucket  = var.state_bucket_name
    prefix  = "network"
  }
}

provider "google" {
  credentials = "${file("account.json")}"
  project     = var.project
  region      = var.region
  zone        = var.zone
}