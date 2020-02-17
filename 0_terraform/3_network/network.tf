# -- Domain IP -- #

resource "google_dns_managed_zone" "zone" {
  name        = var.domain_name
  dns_name    = "${var.domain_name}."
  description = "DNS Zone for ${title(var.project)} App (${var.env})"
  
  labels = {
    env  = var.env
    proj = var.project
  }
}

resource "google_dns_record_set" "cluster" {
  name    = "${var.project}.${var.domain_name}."
  type    = "CNAME"
  ttl     = 300
  rrdatas = ["${var.domain_name}."]

  managed_zone = "dizzastuh"
}