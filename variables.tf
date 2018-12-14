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

variable "email_config_reply_email_address" {
  default = ""
  description = "The REPLY-TO email address"
}

variable "password_policy" {
  type    = "map"
  default = {
    "minimum_length" = 8
    "require_lowercase" = false
    "require_numbers" = true
    "require_symbols" =false
    "require_uppercase" =true
  }
  description = "Password Policy for Cognito User Pool"
}

variable "lambda_config" {
  type = "map"
  default = {
    "create_auth_challenge" = ""
    "custom_message" = ""
    "define_auth_challenge" = ""
    "post_authentication" = ""
    "post_confirmation" = ""
    "pre_authentication" = ""
    "pre_sign_up" = ""
    "pre_token_generation" = ""
    "user_migration" = ""
    "verify_auth_challenge_response" = ""
  }
  description = "A container for the AWS Lambda triggers associated with the user pool"  
}
