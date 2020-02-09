# -- KMS -- #

resource "google_kms_key_ring" "key_ring" {
  project  = var.project
  name     = "${local.name_prefix}-key-ring"
  location = "us-central1"
}

resource "google_kms_crypto_key" "crypto_key" {
  name     = "${local.name_prefix}-crytpo-key"
  key_ring = google_kms_key_ring.key_ring.self_link
}
