# ###########################################################################################
# #                                     ESSENTIAL                                           #
# ###########################################################################################
variable "POLICY_ACTION" {
  description = "Action executed in the policy"
  type        = list(any)
}

variable "POLICY_EFFECT" {
  description = "Either allow or deny for the actions"
  type        = string
}

variable "POLICY_RESOURCE" {
  description = "Resource to be allowed or denied actions"
  type        = list(any)
}

# ###########################################################################################
# #                                      OPTIONAL                                           #
# ###########################################################################################
variable "POLICY_NAME" {
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name."
  type        = string
}

variable "POLICY_DESCRIPTION" {
  description = "Description for the policy"
  type        = string
}

variable "NAME_PREFIX" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with name"
  default     = null
}

variable "PATH" {
  description = "Path in which to create the policy. See IAM Identifiers for more information"
  default     = null
}