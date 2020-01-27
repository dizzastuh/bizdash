# -- Setup -- #
terraform {
  backend "gcs" {}
}

provider "google" {
  credentials = file(var.creds_file)
  project     = var.project
  region      = var.region
  zone        = var.zone
}

# -- Domain IP -- #

resource "google_compute_address" "ip_address" {
  name = "${var.project}-ip-${var.env}"
}
