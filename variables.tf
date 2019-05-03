variable "bucket" {
  description = "Bucket name"
}

variable "index_doc" {
  description = "Default index document."
  default     = "index.html"
}

variable "error_doc" {
  description = "Default error document."
  default     = "error.html"
}

variable "acl" {
  description = "Bucket ACL name"
  default     = "public-read"
}

locals {
  name      = "${var.bucket}"
  index_doc = "${var.index_doc}"
  error_doc = "${var.error_doc}"
}