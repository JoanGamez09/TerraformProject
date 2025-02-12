variable "region" {
  description = "The AWS region where the resources will be created."
  default     = "us-east-1"

  validation {
    condition     = var.region == "us-east-1"
    error_message = "Only the ‘us-east-1’ region is allowed. Please select ‘us-east-1’ as the region."
  }
}

provider "aws" {
  region = var.region
}

module "s3_website" {
  source      = "./modules/s3-mywebsite"
  bucket_name = ""BUCKET-NAME"-${terraform.workspace}"
  index_file  = "index.html"
}

output "bucket_arn" {
    value = module.s3_website.bucket_arn
}

output "bucket_name" {
  value = module.s3_website.bucket_name
}

output "website_url" {
  value = module.s3_website.website_endpoint
}

