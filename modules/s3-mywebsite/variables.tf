variable "bucket_name" {
  description = "Bucket name"
  type        = string
}

variable "index_file" {
  description = "index.html path"
  type        = string
}

variable "environment" {
  description = "Enviroment tag"
  type        = string
  default     = "production"
}
