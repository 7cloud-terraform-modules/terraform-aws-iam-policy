resource "aws_iam_policy" "iam_policy" {
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = var.POLICY_ACTION
        Effect   = var.POLICY_EFFECT
        Resource = var.POLICY_RESOURCE
      },
    ] 
    })
  name        = var.POLICY_NAME != null ? var.POLICY_NAME : null
  description = var.POLICY_DESCRIPTION != null ? var.POLICY_DESCRIPTION : null
  name_prefix = var.NAME_PREFIX != null ? var.NAME_PREFIX : null
  path = var.PATH != null ? var.PATH : null
}