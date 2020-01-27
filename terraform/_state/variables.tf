# -- Bucket -- #
variable "state_bucket_name" {
    description = "Name of the bucket in which the state is stored"
    type = "string"
}

variable "location" {
    description = "Location code (ex: US, EU)"
    type = "string"
}

variable "bucket_users" {
    description = "List of users that can access the bucket"
    type = list(string)
}