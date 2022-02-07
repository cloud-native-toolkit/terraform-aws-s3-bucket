
resource null_resource write_outputs {
  provisioner "local-exec" {
    command = "echo \"$${OUTPUT}\" > gitops-output.json"

    environment = {
      OUTPUT = jsonencode({
        name        = module.aws-s3-bucket.bucket
        sub_chart   = module.aws-s3-bucket.s3_bucket_region
      })
    }
  }
}
