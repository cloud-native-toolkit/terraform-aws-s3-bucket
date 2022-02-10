
resource null_resource write_outputs {
  provisioner "local-exec" {
    command = "echo \"$${OUTPUT}\" > gitops-output.json"

    environment = {
      OUTPUT = jsonencode({
        s3_bucket_id       = module.aws-s3-bucket.s3_bucket_id
        s3_bucket_region   = module.aws-s3-bucket.s3_bucket_region
      })
    }
  }
}
