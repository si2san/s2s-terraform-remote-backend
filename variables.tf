variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-1"
}

variable "s3_bucket_name" {
  description = "Test Master S3 Bucket Name"
  type        = string
  default     = "sts-aws-master"
}

variable "aws_profile" {
  description = "AWS Profile Name"
  type        = string
  default     = "sts-terraform-admin"
}
