resource "aws_iam_policy" "policy" {
    name            = "${var.cognito_name}-${terraform.workspace}"
    description     = "${var.cognito_name}-${terraform.workspace}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "logs:CreateLogGroup",
            "Effect": "Allow",            
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ses:SendEmail",
                "ses:SendRawEmail"
            ],
            "Resource": "*"
        },
        {
            "Action": "dynamodb:*",
            "Effect": "Allow",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "*"
        },
        {            
            "Action": "cognito:*",
            "Effect": "Allow",
            "Resource": "*"            
        },
        {            
            "Action": "sns:*",
            "Effect": "Allow",
            "Resource": "*"            
        },
        {            
            "Action": [ "logs:CreateLogStream", "logs:PutLogEvents" ],
            "Effect": "Allow",
            "Resource": "*"
        },
        {            
            "Action": "execute-api:*",
            "Effect": "Allow",
            "Resource": "*"            
        }
    ]
}
EOF
}