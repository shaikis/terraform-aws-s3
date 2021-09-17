resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name
  acl    = var.s3_bucket_acl
  versioning {
      enabled = var.s3_bucket_versioning
  }

  lifecycle_rule {
    prefix  = var.s3_bucket_lifecycle_prefix
    enabled = var.s3_bucket_lifecycle_enable

    transition {
      days          = var.s3_bucket_lifecycle_transition_days
      storage_class = var.s3_bucket_lifecycle_transition_storage_class
    }

    noncurrent_version_transition {
      days          = var.s3_bucket_lifecycle_transition_days
      storage_class = var.s3_bucket_lifecycle_transition_storage_class
    }

    expiration {
      days = var.s3_bucket_lifecycle_expiration_days
    }

    noncurrent_version_expiration {
      days = var.s3_bucket_lifecycle_expiration_days
    }
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.s3_bucket_kms_arn
        sse_algorithm     = var.s3_bucket_sse_algorithm
      }
    }
    }


}