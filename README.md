# terraform-aws-s3
```
usage of this module according to your requirement.
module "s3_bucket" {
    source = "git@github.com:shaikis/terraform-aws-s3.git"
    s3_bucket_name                                    = "unique_name"
    s3_bucket_acl                                     = "private"
    s3_bucket_versioning                              = "true|false"
    s3_bucket_lifecycle_prefix                        = "AWSLogs"
    s3_bucket_lifecycle_enable                        = "true | false"
    s3_bucket_lifecycle_transition_storage_class      = "GLACIER"
    s3_bucket_lifecycle_transition_days               = "90"
    s3_bucket_lifecycle_expiration_days               = "365"
    s3_bucket_kms_arn                                 = "give kms arn detail if you have | empty if not "
    s3_bucket_sse_algorithm                           = "AES256"
}
```