# Define composite variables for resources
module "label" {
  source     = "git::https://github.com/cloudposse/terraform-terraform-label.git?ref=tags/0.2.1"
  namespace  = "${var.namespace}"
  name       = "${var.name}"
  stage      = "${var.stage}"
  tags       = "${var.tags}"
}

resource "aws_cognito_user_pool" "pool" {
  name                       = "${module.label.id}"
  email_verification_subject = "${var.email_verification_subject}"
  email_verification_message = "${var.email_verification_message}"

  password_policy {
    minimum_length    = "${lookup(var.password_policy, "minimum_length")}"
    require_lowercase = "${lookup(var.password_policy, "require_lowercase")}"
    require_numbers   = "${lookup(var.password_policy, "require_numbers")}"
    require_symbols   = "${lookup(var.password_policy, "require_symbols")}"
    require_uppercase = "${lookup(var.password_policy, "require_uppercase")}"
  }

  lambda_config {
    create_auth_challenge          = "${lookup(var.lambda_config, "create_auth_challenge")}"
    custom_message                 = "${lookup(var.lambda_config, "custom_message")}"
    define_auth_challenge          = "${lookup(var.lambda_config, "define_auth_challenge")}"
    post_authentication            = "${lookup(var.lambda_config, "post_authentication")}"
    post_confirmation              = "${lookup(var.lambda_config, "post_confirmation")}"
    pre_authentication             = "${lookup(var.lambda_config, "pre_authentication")}"
    pre_sign_up                    = "${lookup(var.lambda_config, "pre_sign_up")}"
    pre_token_generation           = "${lookup(var.lambda_config, "pre_token_generation")}"
    user_migration                 = "${lookup(var.lambda_config, "user_migration")}"
    verify_auth_challenge_response = "${lookup(var.lambda_config, "verify_auth_challenge_response")}"
  }

  tags = "${var.tags}"

}
