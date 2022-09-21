module "iam_policy_bucket_allow" {
  source = "../../"
  POLICY_ACTION = [
    "s3:*"
  ]
  POLICY_EFFECT = "Allow"
  POLICY_RESOURCE = [
    "${var.AWS_S3_BUCKET_ARN}",
    "${var.AWS_S3_BUCKET_ARN}/*"
  ]
  POLICY_NAME        = "bucket-access"
  POLICY_DESCRIPTION = "A policy to access a bucket"
  NAME_PREFIX        = null
  PATH               = null
}