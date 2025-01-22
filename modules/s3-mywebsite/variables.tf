variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}

variable "index_file" {
  description = "Ruta al archivo index.html"
  type        = string
}

variable "environment" {
  description = "Etiqueta para identificar el entorno"
  type        = string
  default     = "production"
}
