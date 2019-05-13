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

variable "versioning" {
  description = "Enable versioning. Once you version-enable a bucket, it can never return to an unversioned state."
  default     = false
}

variable "project" {
  description = "Project tag"
}

locals {
  project    = "${var.project}"
  name       = "${var.bucket}"
  index_doc  = "${var.index_doc}"
  error_doc  = "${var.error_doc}"
  acl        = "${var.acl}"
  versioning = "${var.versioning}"
}