resource "aws_apigatewayv2_route" "debug_route" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "GET /debug"

  target = "integrations/${aws_apigatewayv2_integration.debug_integration.id}"
}


resource "aws_apigatewayv2_route" "client_identification" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "POST /identification/clients/identification"
  // Identification Lambda integration
}

resource "aws_apigatewayv2_route" "order_checkout" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "POST /order/orders"
  // Client Lambda Authorizer integration
}

resource "aws_apigatewayv2_route" "order_confirmation" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "POST /payment/payments/initialize"
  // Client Lambda Authorizer integration
}

resource "aws_apigatewayv2_route" "forward_to_alb_route" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "ANY /{proxy+}"
  // Private Resource integration (vpc link + alb)
}
