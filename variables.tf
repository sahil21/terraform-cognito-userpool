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
