resource "aws_cognito_user_pool" "user_pool" { 
    name                    = "${var.cognito_name}-${terraform.workspace}"
    username_attributes     = ["email"]    

    lambda_config {
        pre_sign_up     = "${aws_lambda_function.lambda.arn}"    
    }
}