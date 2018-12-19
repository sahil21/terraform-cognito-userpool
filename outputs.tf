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
