output "bucket" {
  value = aws_s3_bucket.web.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.web.arn
}

output "bucket_id" {
  value = aws_s3_bucket.web.id
}

output "bucket_domain_name" {
  value = aws_s3_bucket.web.bucket_domain_name
}

output "website_endpoint" {
  value = aws_s3_bucket.web.website_endpoint
}

output "website_domain" {
  value = aws_s3_bucket.web.website_domain
}