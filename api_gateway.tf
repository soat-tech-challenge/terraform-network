resource "aws_apigatewayv2_api" "main" {
  name          = "SOAT Tech Challenge API"
  description   = "API for SOAT Tech Challenge HTTP communication"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "default" {
  api_id      = aws_apigatewayv2_api.main.id
  name        = "$default"
  auto_deploy = true

  access_log_settings {
    destination_arn = aws_cloudwatch_log_group.api_gateway_access_log.arn
    format          = "$context.identity.sourceIp - [$context.requestTime] \"$context.routeKey $context.protocol\" $context.status $context.responseLength $context.requestId"
  }

  tags = {
    Name = "SOAT-TC API GW Default Stage"
  }
}
