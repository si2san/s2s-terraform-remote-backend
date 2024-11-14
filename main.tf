resource "aws_s3_bucket" "sts_aws_master" {
  bucket = var.s3_bucket_name
}

resource "aws_s3_bucket_ownership_controls" "s3_ownership" {
  bucket = aws_s3_bucket.sts_aws_master.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "s3_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.s3_ownership]
  bucket     = aws_s3_bucket.sts_aws_master.id
  acl        = "private"
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.sts_aws_master.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_server_side_encryption" {
  bucket = aws_s3_bucket.sts_aws_master.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}


