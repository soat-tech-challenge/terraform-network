# Allow API Gateway to push logs to CloudWatch
resource "aws_api_gateway_account" "main" {
  cloudwatch_role_arn = data.aws_iam_role.lab_role.arn
}

resource "aws_cloudwatch_log_group" "api_gateway_access_logs" {
  name              = "/aws/apigateway/SOAT-TC_API_Gateway_Access_Logs"
  retention_in_days = 30
}
