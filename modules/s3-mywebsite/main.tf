resource "aws_s3_bucket" "website_bucket" {
  bucket = var.bucket_name

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Environment = var.environment
  }
}

output "bucket_arn" {
  value       = aws_s3_bucket.website_bucket.arn
  description = "El ARN del bucket S3."
}

resource "aws_s3_bucket_public_access_block" "website_bucket_public_access_block" {
  bucket                  = aws_s3_bucket.website_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


resource "aws_s3_bucket_policy" "website_policy" {
  bucket = aws_s3_bucket.website_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "PublicReadGetObject",
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:GetObject",
        Resource  = "${aws_s3_bucket.website_bucket.arn}/*"
      }
    ]
  })
}


resource "aws_s3_object" "index_file" {
  bucket = aws_s3_bucket.website_bucket.id
  key    = "index.html"
  source = var.index_file
  content_type = "text/html"
}


resource "aws_s3_object" "error_file" {
  bucket = aws_s3_bucket.website_bucket.id
  key    = "error.html"
  content_type = "text/html"
  content = <<EOT
<!DOCTYPE html>
<html>
  <head><title>Error</title></head>
  <body><h1>404 Not Found</h1></body>
</html>
EOT
}
