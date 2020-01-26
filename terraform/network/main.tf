provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
  zone        = "${var.zone}"
}

resource "google_compute_address" "ip_address" {
  name = "${var.ip_name}"
}
