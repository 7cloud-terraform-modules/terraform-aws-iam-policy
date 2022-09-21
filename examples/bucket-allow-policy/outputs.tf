output "IAM_POLICY_ARN" {
  description = "The ARN of the policy"
  value       = module.iam_policy_bucket_allow.arn
}
