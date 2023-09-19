resource "aws_cognito_user_pool_client" "user_pool_client" { 
    name                    = "${var.cognito_name}-${terraform.workspace}"

    user_pool_id            = "${aws_cognito_user_pool.user_pool.id}"
 
    generate_secret         = false
    explicit_auth_flows     = ["USER_PASSWORD_AUTH"] 
}