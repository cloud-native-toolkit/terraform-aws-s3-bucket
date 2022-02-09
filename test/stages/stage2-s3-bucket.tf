module "aws-s3-bucket" {
  depends_on = [ module.aws_s3_instance]
  source = "./module"
  bucket_id = module.aws_s3_instance.s3_bucket_id
  s3_bucket_region = module.aws_s3_instance.s3_bucket_region
}
