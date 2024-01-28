resource "aws_apigatewayv2_integration" "debug_integration" {
  api_id           = aws_apigatewayv2_api.main.id
  integration_type = "HTTP_PROXY"

  integration_method = "ANY"
  integration_uri    = "https://example.com/"
}


resource "aws_apigatewayv2_vpc_link" "load_balancer" {
  name               = "SOAT-TC API Gateway Private Subnets VPC Link"
  subnet_ids         = aws_subnet.private_subnets[*].id
  security_group_ids = [aws_default_security_group.default.id]
}
