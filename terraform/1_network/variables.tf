# -- Creds -- #

variable "creds_file" {
  description = "Path to the Google credentials file to use for this project"
  type        = string
}

variable "project" {
  description = "Name of the project"
  type        = string
}

variable "region" {
  description = "Region the project uses"
  type        = string
}

variable "zone" {
  description = "Zone the project uses"
  type        = string
}


# -- State -- #

variable "state_bucket_name" {
    description = "Name of the bucket in which the state is stored"
    type        = string
}
