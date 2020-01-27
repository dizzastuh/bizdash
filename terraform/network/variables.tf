# -- General -- #
variable "creds_file" {
  description = "Path to the Google credentials file to use for this project"
  type = "string"
}

variable "region" {
  description = "Region the project uses"
  type = "string"
}

variable "zone" {
  description = "Zone the project uses"
}

variable "state_bucket_name" {
    description = "Name of the bucket in which the state is stored"
    type = string
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
