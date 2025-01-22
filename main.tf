provider "aws" {

  region = "us-east-1"
}


module "s3_website" {
  source      = "./modules/s3-mywebsite"
  bucket_name = "proyectodepractica-${terraform.workspace}"
  index_file  = "index.html"
  environment = "development"
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

