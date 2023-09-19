resource "aws_lambda_function" "lambda" { 
    filename            = "lambda_code.zip" 
    function_name       = "${var.cognito_name}_${terraform.workspace}"
    role                = aws_iam_role.role.arn
    handler             = "index.handler"
    memory_size         = "128"
    timeout             = "60"
 
    source_code_hash    = "${base64sha256("lambda_code.zip")}"

    runtime             = "nodejs18.x"
  
    environment {
        variables = {
            region = var.region
            stage = terraform.workspace
        }
    } 
}