# -- GENERAL - from shared -- #

variable "creds_file" {
  description = "Path to the Google credentials file to use for this project"
  type        = string
}

variable "env" {
  description = "Name of the project"
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

variable "location" {
    description = "Location code (ex: US, EU)"
    type        = string
}

variable "state_bucket_users" {
    description = "List of users that can access the state bucket"
    type        = list(string)
}
