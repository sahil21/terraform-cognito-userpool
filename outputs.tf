output "userpool_id" {
    value = "${aws_cognito_user_pool.pool.id}"
    description = "The id of the user pool"
}

output "userpool_arn" {
    value = "${aws_cognito_user_pool.pool.arn}"
    description = "The ARN of the user pool"
}

output "userpool_endpoint" {
    value = "${aws_cognito_user_pool.pool.endpoint}"
    description = "The endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxx_yyyyy"
}

output "userpool_creation_date" {
    value = "${aws_cognito_user_pool.pool.creation_date}"
    description = "The date the user pool was created"
}

output "userpool_last_modified_date" {
	value = "${aws_cognito_user_pool.pool.last_modified_date}"
	description = "The date the user pool was last modified"
}

output "userpool_client_id" {
  value       = "${aws_cognito_user_pool_client.client.id}"
  description = "The id of the user pool client"
}

output "userpool_client_secret" {
  value = "${aws_cognito_user_pool_client.client.client_secret}"
  description = "The client secret of the user pool client"
}

output "aws_account_id" {
  value = "${aws_cognito_user_pool_domain.domain.aws_account_id}"
  description = "The AWS account ID for the user pool owner"
}

output "cloudfront_distribution_arn" {
  value = "${aws_cognito_user_pool_domain.domain.cloudfront_distribution_arn}"
  description = "The ARN of the CloudFront distribution"
}

output "s3_bucket" {
  value = "${aws_cognito_user_pool_domain.domain.s3_bucket}"
  description = "The S3 bucket where the static files for this domain are stored"
}

output "version" {
  value = "${aws_cognito_user_pool_domain.domain.version}"
  description = "The app version"
}
