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

  tags = "${var.tags}"

}
