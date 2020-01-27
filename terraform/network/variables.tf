# -- General -- #
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
}

# -- KMS -- #
variable "key_ring_name" {
    description = "name of the kms key ring to create"
    type = "string"
}

variable "key_name" {
    description = "name of the kms key to create"
    type = "string"
}

# -- Network -- #
variable "ip_name" {
    description = "Name of the IP Compute Address"
    type = "string"
}
