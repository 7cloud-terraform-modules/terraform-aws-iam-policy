# Iam Policy Module by 7Clouds
Thank you for riding with us! Feel free to download or reference this respository in your terraform projects and studies  

This module is a part of our product SCA - An automated __API__ and __Serverless Infrastructure__ generator that can reduce your API development time by 40-60% and automate your deployments up to 90%! Check it out at https://seventechnologies.cloud/

Please rank this repo 5 starts if you like our job!

## Usage

```hcl
module iam_policy_cloudwatch_disable {
    source             = "./"
    POLICY_ACTION      = [
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

module "iam_policy_bucket_allow" {
    source             = "./"
    POLICY_ACTION      = [
                            "s3:*"
                         ]
    POLICY_EFFECT      = "Allow"
    POLICY_RESOURCE    = [
                            "${aws_s3_bucket.example_bucket.arn}",
                            "${aws_s3_bucket.example_bucket.arn}/*"
                         ]
    POLICY_NAME        = "bucket-access"
    POLICY_DESCRIPTION = "A policy to access a bucket"
    NAME_PREFIX        = null
    PATH               = null
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules
| Name | Source | Version |
|------|--------|---------|
| <a name="iam_policy"></a> [iam\_policy](#module\_waf\_ip\_block\_module) | ./ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_NAME_PREFIX"></a> [NAME\_PREFIX](#input\_NAME\_PREFIX) | Creates a unique name beginning with the specified prefix. Conflicts with name | `any` | `null` | no |
| <a name="input_PATH"></a> [PATH](#input\_PATH) | Path in which to create the policy. See IAM Identifiers for more information | `any` | `null` | no |
| <a name="input_POLICY_ACTION"></a> [POLICY\_ACTION](#input\_POLICY\_ACTION) | Action executed in the policy | `list(any)` | n/a | yes |
| <a name="input_POLICY_DESCRIPTION"></a> [POLICY\_DESCRIPTION](#input\_POLICY\_DESCRIPTION) | Description for the policy | `string` | n/a | no |
| <a name="input_POLICY_EFFECT"></a> [POLICY\_EFFECT](#input\_POLICY\_EFFECT) | Either allow or deny for the actions | `string` | n/a | yes |
| <a name="input_POLICY_NAME"></a> [POLICY\_NAME](#input\_POLICY\_NAME) | The name of the policy. If omitted, Terraform will assign a random, unique name. | `string` | n/a | no |
| <a name="input_POLICY_RESOURCE"></a> [POLICY\_RESOURCE](#input\_POLICY\_RESOURCE) | Resource to be allowed or denied actions | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_IAM_POLICY_ARN"></a> [IAM\_POLICY\_ARN](#output\_IAM\_POLICY\_ARN) | n/a |
| <a name="output_NAME_PREFIX"></a> [NAME\_PREFIX](#output\_NAME\_PREFIX) | n/a |
| <a name="output_PATH"></a> [PATH](#output\_PATH) | n/a |
| <a name="output_POLICY_ACTION"></a> [POLICY\_ACTION](#output\_POLICY\_ACTION) | n/a |
| <a name="output_POLICY_DESCRIPTION"></a> [POLICY\_DESCRIPTION](#output\_POLICY\_DESCRIPTION) | n/a |
| <a name="output_POLICY_EFFECT"></a> [POLICY\_EFFECT](#output\_POLICY\_EFFECT) | n/a |
| <a name="output_POLICY_NAME"></a> [POLICY\_NAME](#output\_POLICY\_NAME) | n/a |
| <a name="output_POLICY_RESOURCE"></a> [POLICY\_RESOURCE](#output\_POLICY\_RESOURCE) | n/a |
<!-- END_TF_DOCS -->
