variable "bucket_id" {
    type    = string
    default = ""
}

variable "acl_value" {
    default = "private"
}

variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "Please set the region where the resouces to be created "
}

variable "access_key" {
  type        = string
  default = ""
  description= " Refer https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html"
}

variable "secret_key" {
  type        = string
  default = ""
  description= " Refer https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html"
}

variable "file_path" {
  type    = string
  default = "Datafiles/aws"
  description = "Path to a folder that will be read and uploaded "
}



