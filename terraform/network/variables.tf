# -- Credentials -- #

variable "project" {
    description = "Name of the project"
    type = "string"
}
variable "region" {
    description = "Region the project uses"
    type = "string"
}
variable "zone" {
    description = "Zone the project uses"
    type = "string"
}

# -- Network -- #
variable "ip_name" {
    description = "Name of the IP Compute Address"
    type = "string"
}
