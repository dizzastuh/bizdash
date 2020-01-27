resource "google_storage_bucket" "tf_state_bucket" {
  name     = var.state_bucket_name
  location = var.location 

  storage_class = "REGIONAL"

  versioning {
    enabled = true
  }
}