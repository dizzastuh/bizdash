# -- Domain IP -- #
resource "google_compute_address" "ip_address" {
  name = "${local.name_prefix}-ip"
}