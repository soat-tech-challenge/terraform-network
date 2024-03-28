# Allow API Gateway to push logs to CloudWatch
resource "aws_api_gateway_account" "main" {
  cloudwatch_role_arn = data.aws_iam_role.lab_role.arn
}

#tfsec:ignore:aws-cloudwatch-log-group-customer-key
resource "aws_cloudwatch_log_group" "api_gateway_access_log" {
  name              = "/aws/apigateway/SOAT-TC_API_Gateway_Access_Log"
  retention_in_days = 30

  tags = {
    Name : "SOAT-TC API Gateway Default Stage Access Log Cloudwatch Log Group"
  }
}

resource "aws_flow_log" "vpc" {
  iam_role_arn    = data.aws_iam_role.lab_role.arn
  log_destination = aws_cloudwatch_log_group.vpc_flow_log.arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.main.id

  max_aggregation_interval = 60

  tags = {
    Name : "SOAT-TC VPC Flow Log"
  }
}

#tfsec:ignore:aws-cloudwatch-log-group-customer-key
resource "aws_cloudwatch_log_group" "vpc_flow_log" {
  name              = "/aws/vpc/SOAT-TC_VPC_Flow_Logs"
  retention_in_days = 30

  tags = {
    Name : "SOAT-TC VPC Flow Log Cloudwatch Log Group"
  }
}
