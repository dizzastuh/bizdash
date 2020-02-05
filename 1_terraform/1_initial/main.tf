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

locals {
  name_prefix="${var.project}-${var.env}"
}
