variable "bucket_name" {
    default = "swew_bucket"
}

variable "acl_value" {
    default = "private"
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "access_key" {
  type    = string
  default = ""
}

variable "secret_key" {
  type    = string
  default = ""
}

variable "file_path" {
  type    = string
  default = "Datafiles/aws"
  description = "Path to a folder that will be read and uploaded "
}



