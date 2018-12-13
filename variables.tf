variable "namespace" {
  type        = "string"
  description = "Namespace, which could be your organization name/project"
}

variable "stage" {
  type        = "string"
  description = "Stage, e.g. 'prod', 'staging', 'dev', or 'test'"
}

variable "name" {
  default     = "pool"
  description = "Solution name, e.g. 'pool'"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit`,`XYZ`)"
}

variable "email_verification_subject" {
  default     = "Verification Code"
  description = "Subject of verification E-mail"
}

variable "email_verification_message" {
  default     = "Please use the following code {####}"
  description = "Message of verification E-mail"
}

variable "password_policy_minimum_length" {
  default     = 8
  description = "The minimum length of the password policy that you have set"
}

variable "password_policy_require_lowercase" {
  default     = false
  description = "Whether you have required users to use at least one lowercase letter in their password"
}

variable "password_policy_require_numbers" {
  default     = true
  description = "Whether you have required users to use at least one number in their password"
}

variable "password_policy_require_symbols" {
  default     = false
  description = "Whether you have required users to use at least one symbol in their password"
}

variable "password_policy_require_uppercase" {
  default     = true
  description = "Whether you have required users to use at least one uppercase letter in their password"
}
