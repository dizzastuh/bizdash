# -- Domain IP -- #
# resource "google_compute_address" "ip_address" {
#   name = "${local.name_prefix}-ip"
# }

resource "google_dns_managed_zone" "zone" {
  name        = var.project
  dns_name    = "${var.project}.${var.domain_name}."
  description = "DNS Zone for ${title(var.project)} App"
  
  labels = {
    env  = var.env
    proj = var.project
  }
}

# resource "google_dns_record_set" "cluster" {
#   name    = "${var.project}.${google_dns_managed_zone.zone.dns_name}"
#   type    = "CNAME"
#   ttl     = 300
#   rrdatas = [""]

#   managed_zone = google_dns_managed_zone.zone.name
# }