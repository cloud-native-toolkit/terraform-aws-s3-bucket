module "aws-s3-bucket" {
  source = "./module"
  bucket_id = module.aws_s3_instance.s3_bucket_id
}
