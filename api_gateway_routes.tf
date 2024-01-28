resource "aws_apigatewayv2_route" "debug_route" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "GET /debug"

  target = "integrations/${aws_apigatewayv2_integration.debug_integration.id}"
}
