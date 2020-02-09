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

variable "domain_name" {
  description = "Name of the domain the project belongs to"
  type        = string
}
