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

  tags = "${var.tags}"

}
