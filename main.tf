resource "aws_s3_bucket" "web" {
  bucket = "${local.name}"
  acl    = "${local.acl}"

  website {
    index_document = "${local.index_doc}"
    error_document = "${local.error_doc}"
  }

  tags {
    Project = "${local.project}"
  }

  versioning {
    enabled = "${local.versioning}"
  }
}

data "aws_iam_policy_document" "read_only" {
  statement {
    resources = ["arn:aws:s3:::${aws_s3_bucket.web.bucket}/*"]
    actions   = ["s3:GetObject"]

    principals {
      identifiers = ["*"]
      type        = "*"
    }
  }
}

resource "aws_s3_bucket_policy" "read_only" {
  bucket = "${aws_s3_bucket.web.bucket}"
  policy = "${data.aws_iam_policy_document.read_only.json}"
}

