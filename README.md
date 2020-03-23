## About

Terraform module to create S3 bucket to host static website:

### Params

* `bucket` - Bucket name

### Optional params with default values

* `index_doc` - Default index document (Default `index.html`).
* `error_doc` - Default error document (Default `error.html`).
* `acl` - Bucket ACL name (Default `public-read`).
* `force_destroy` - Allow delete bucket with its content (Default `false`).

## Usage

Default 
```
module "static_website" {
    source = "github.com/jetbrains-infra/terraform-aws-s3-website"
    bucket = "example.com"
}
```

## Outputs

* `bucket`
* `bucket_id`
* `bucket_arn`
* `bucket_domain_name` - for CloudFront distribution
* `website_endpoint` 
* `website_domain` 