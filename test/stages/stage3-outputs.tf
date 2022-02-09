
resource null_resource write_outputs {
  provisioner "local-exec" {
    command = "echo \"$${OUTPUT}\" > gitops-output.json"

    environment = {
      OUTPUT = jsonencode({
        bucket_id = module.aws-s3-bucket.bucket_id
        region   = module.aws-s3-bucket.region
      })
    }
  }
}
