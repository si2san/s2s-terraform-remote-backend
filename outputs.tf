output "sts-aws-master-s3-bucket-name" {
  value = resource.aws_s3_bucket.sts_aws_master.id
}

output "sts-aws-master-s3-bucket-arn" {
  value = resource.aws_s3_bucket.sts_aws_master.arn
}
