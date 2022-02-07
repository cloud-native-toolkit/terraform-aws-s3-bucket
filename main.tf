locals {
  file_path = var.file_path
  s3_bucket_id = var.bucket_name
}

resource "aws_s3_bucket_object" "s3fileupload" {
    for_each = fileset(local.file_path, "**/*.*")
    bucket = local.s3_bucket_id
    key = each.value
    source = "${local.file_path}/${each.value}"
    etag = filemd5("${local.file_path}/${each.value}")
}
