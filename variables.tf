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

variable "username_attributes" {
  type = "list"
  default = ["email"]
  description = "Specifies whether email addresses or phone numbers can be specified as usernames when a user signs up"
}

variable "auto_verified_attributes" {
  type = "list"
  default = ["email"]
  description = "The attributes to be auto-verified. Possible values: email, phone_number"
}

variable "allow_admin_create_user_only" {
  default = false
  description = "Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app"
}

variable "password_policy_minimum_length" {
  default = 8
  description = "The minimum length of the password policy that you have set"
}

variable "password_policy_require_lowercase" {
  default = false
  description = "Whether you have required users to use at least one lowercase letter in their password"
}

variable "password_policy_require_numbers" {
  default = false
  description = "Whether you have required users to use at least one number in their password"
}

variable "password_policy_require_symbols" {
  default = false
  description = "Whether you have required users to use at least one symbol in their password"
}

variable "password_policy_require_uppercase" {
  default = false
  description = "Whether you have required users to use at least one uppercase letter in their password"
}

variable "lambda_config_create_auth_challenge" {
  default = ""
  description = "The ARN of the lambda creating an authentication challenge"
}

variable "lambda_config_custom_message" {
  default = ""
  description = "A custom Message AWS Lambda trigger"
}

variable "lambda_config_define_auth_challenge" {
  default = ""
  description = "Defines the authentication challenge"
}

variable "lambda_config_post_authentication" {
  default = ""
  description = "A post-authentication AWS Lambda trigger"
}

variable "lambda_config_post_confirmation" {
  default = ""
  description = "A post-confirmation AWS Lambda trigger"
}

variable "lambda_config_pre_authentication" {
  default = ""
  description = "A pre-authentication AWS Lambda trigger"
}

variable "lambda_config_pre_sign_up" {
  default = ""
  description = "A pre-registration AWS Lambda trigger"
}

variable "lambda_config_pre_token_generation" {
  default = ""
  description = "Allow to customize identity token claims before token generation"
}

variable "lambda_config_user_migration" {
  default = ""
  description = "The user migration Lambda config type"
}

variable "lambda_config_verify_auth_challenge_response" {
  default = ""
  description = "Verifies the authentication challenge response"
}

variable "allowed_oauth_flows" {
  default = ["code", "implicit"]
  description = "List of allowed OAuth flows (code, implicit, client_credentials)"
}

variable "allowed_oauth_scopes" {
  default = ["phone", "email", "openid", "profile", "aws.cognito.signin.user.admin"]
  description = "List of allowed OAuth scopes (phone, email, openid, profile, and aws.cognito.signin.user.admin)"
}

variable "callback_urls" {
  type = "list"
  default = []
  description = "List of allowed callback URLs for the identity providers"
}

variable "logout_urls" {
  type = "list"
  default = []
  description = "List of allowed logout URLs for the identity providers"
}
