output "bucket_name" {
  value = aws_s3_bucket.website_bucket.bucket
  description = "Bucket name"
}

output "website_endpoint" {
  value = aws_s3_bucket.website_bucket.website_endpoint
}
