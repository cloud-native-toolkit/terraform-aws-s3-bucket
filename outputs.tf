output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = local.s3_bucket_id
}

output "s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = var.region
}
