# ###########################################################################################
# #                                     ESSENTIAL                                           #
# ###########################################################################################
output "IAM_POLICY_ARN" {
  value = aws_iam_policy.iam_policy.arn
}

output "POLICY_ACTION" {
  value = var.POLICY_ACTION
}

output "POLICY_EFFECT" {
  value = var.POLICY_EFFECT
}

output "POLICY_RESOURCE" {
  value = var.POLICY_RESOURCE
}

# ###########################################################################################
# #                                      OPTIONAL                                           #
# ###########################################################################################
output "POLICY_NAME" {
  value = var.POLICY_NAME
}

output "POLICY_DESCRIPTION" {
  value = var.POLICY_DESCRIPTION
}

output "NAME_PREFIX" {
  value = var.NAME_PREFIX
}

output "PATH" {
  value = var.PATH
}