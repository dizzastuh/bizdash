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
  name     = var.state_bucket_name
  location = var.location 

  storage_class = "REGIONAL"

  versioning {
    enabled = true
  }
}

# -- IAM for State Bucket -- #

resource "google_project_iam_custom_role" "terraform_role" {
  role_id     = "TFRole${title(var.env)}"
  title       = "Terraform Role (${title(var.env)})"
  permissions = ["iam.roles.list"]
}

data "google_iam_policy" "terraform_bucket" {
  binding {
    role    = google_project_iam_custom_role.terraform_role.role_id
    members = var.state_bucket_users
  }
}

resource "google_storage_bucket_iam_policy" "editor" {
  bucket      = google_storage_bucket.tf_state_bucket.name
  policy_data = data.google_iam_policy.terraform_bucket.policy_data
}
