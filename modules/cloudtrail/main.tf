resource "aws_cloudtrail" "secure_logging" {
  name                          = "cloudtrail-logging"
  s3_bucket_name                = "my-cloudtrail-bucket"
  enable_logging                = true
  cloud_watch_logs_group_arn    = "arn:aws:logs:REGION:ACCOUNT-ID:log-group:asd"
  cloud_watch_logs_role_arn     = "arn:aws:iam::ACCOUNT-ID:role/asd"
  enable_log_file_validation    = true
  is_multi_region_trail         = true
  kms_key_id                    = "arn:aws:kms:REGION:ACCOUNT-ID:key/asd"
}
