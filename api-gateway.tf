resource "aws_apigatewayv2_api" "main" {
  name          = "SOAT Tech Challenge API"
  description   = "API for SOAT Tech Challenge HTTP communication"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "main" {
  api_id      = aws_apigatewayv2_api.main.id
  name        = "$default"
  auto_deploy = true

  tags = {
    Name = "SOAT-TC API Default Stage"
  }
}
