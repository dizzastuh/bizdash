# -- Setup -- #


terraform {
  backend "gcs" {
    bucket  = var.state_bucket_name
  }
}

provider "google" {
  credentials = "${file("${var.creds_file}")}"
  project     = var.project
  region      = var.region
  zone        = var.zone
}

# -- Domain IP -- #

resource "google_compute_address" "ip_address" {
  name = "${var.ip_name}-${var.env}"
}
