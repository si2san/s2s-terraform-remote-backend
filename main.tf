module "s3_module" {
  source         = "git@github.com:si2san/s2s-terraform-remote-backend.git"
  s3_bucket_name = var.s3_bucket_name
}
