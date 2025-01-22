variable "region" {
  description = "La región de AWS donde se crearán los recursos."
  default     = "us-east-1"

  validation {
    condition     = var.region == "us-east-1"
    error_message = "Solo se permite usar la región 'us-east-1'. Por favor, selecciona 'us-east-1' como región."
  }
}

provider "aws" {
  region = var.region
}

module "s3_website" {
  source      = "./modules/s3-mywebsite"
  bucket_name = "proyectodepractica-${terraform.workspace}"
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

