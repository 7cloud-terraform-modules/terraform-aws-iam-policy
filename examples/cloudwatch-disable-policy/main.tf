module "iam_policy_cloudwatch_disable" {
  source = "../../"
  POLICY_ACTION = [
    "logs:CreateLogGroup",
    "logs:CreateLogStream",
    "logs:PutLogEvents"
  ]
  POLICY_EFFECT      = "Deny"
  POLICY_RESOURCE    = ["arn:aws:logs:*:*:*"]
  POLICY_NAME        = "cloudwatch-disable"
  POLICY_DESCRIPTION = "A policy to disable cloudwatch creation of log groups and log event creation"
  NAME_PREFIX        = null
  PATH               = null
}