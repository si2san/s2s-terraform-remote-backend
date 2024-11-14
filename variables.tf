variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "s3_bucket_name" {
  description = "Test Git Module"
  type        = string
  default     = "sts-git-module-test"
}

variable "aws_profile" {
  description = "AWS Profile Name"
  type        = string
  default     = "sts-terraform-admin"
}
