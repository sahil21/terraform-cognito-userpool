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
    minimum_length    = "${var.password_policy_minimum_length}"
    require_lowercase = "${var.password_policy_require_lowercase}"
    require_numbers   = "${var.password_policy_require_numbers}"
    require_symbols   = "${var.password_policy_require_symbols}"
    require_uppercase = "${var.password_policy_require_uppercase}"
  }

  lambda_config {
    create_auth_challenge          = "${var.lambda_config_create_auth_challenge}"
    custom_message                 = "${var.lambda_config_custom_message}"
    define_auth_challenge          = "${var.lambda_config_define_auth_challenge}"
    post_authentication            = "${var.lambda_config_post_authentication}"
    post_confirmation              = "${var.lambda_config_post_confirmation}"
    pre_authentication             = "${var.lambda_config_pre_authentication}"
    pre_sign_up                    = "${var.lambda_config_pre_sign_up}"
    pre_token_generation           = "${var.lambda_config_pre_token_generation}"
    user_migration                 = "${var.lambda_config_user_migration}"
    verify_auth_challenge_response = "${var.lambda_config_verify_auth_challenge_response}"
  }

  tags = "${var.tags}"

}
