resource "aws_s3_bucket" "sts_aws_master" {
  bucket = var.s3_bucket_name
}
