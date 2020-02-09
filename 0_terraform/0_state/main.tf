# -- Setup -- #

terraform {
  backend "local" {}
}

provider "google" {
  credentials = file(var.creds_file)
  project     = var.project
  region      = var.region
  zone        = var.zone
}


# -- State Bucket -- #

resource "google_storage_bucket" "tf_state_bucket" {
  name     = "${var.project}-tfstate-${var.env}"
  location = var.location

  versioning {
    enabled = true
  }
}


# -- IAM for State Bucket -- #

data "google_iam_policy" "admin" {
  binding {
    role    = "roles/storage.admin"
    members = var.state_bucket_users
  }
}

resource "google_storage_bucket_iam_policy" "terraformer" {
  bucket      = google_storage_bucket.tf_state_bucket.name
  policy_data = data.google_iam_policy.admin.policy_data
}
