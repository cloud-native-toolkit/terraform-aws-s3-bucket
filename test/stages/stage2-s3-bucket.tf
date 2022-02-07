module "aws-s3-bucket" {
  depends_on = [ module.aws-s3-instance]
  source = "./module"
  bucket = module.aws-s3-instance.bucket.id
  s3_bucket_region = aws_s3_bucket.s3_bucket.region
}
