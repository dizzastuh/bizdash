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

data "google_iam_policy" "admin" {
  binding {
    role = "roles/storage.admin"
    members = var.state_bucket_users
  }
}

resource "google_storage_bucket_iam_policy" "editor" {
  bucket = google_storage_bucket.tf-state-bucket.name
  policy_data = data.google_iam_policy.admin.policy_data
}
