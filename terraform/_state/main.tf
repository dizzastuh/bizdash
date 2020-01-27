provider "google" {
  credentials = file(var.creds_file)
  region      = var.region
  zone        = var.zone
}

terraform {
  backend "local" {}
}
