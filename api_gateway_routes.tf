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

resource "aws_apigatewayv2_route" "order_checkout_and_listing" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "ANY /order/orders" // due to Servlet Filter urlPatterns not supporting specific HTTP methods

  // Client Lambda Authorizer authorization
  target = "integrations/${aws_apigatewayv2_integration.proxy_to_alb.id}"
}

resource "aws_apigatewayv2_route" "order_confirmation" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "POST /payment/payments/initialize"

  // Client Lambda Authorizer authorization
  target = "integrations/${aws_apigatewayv2_integration.proxy_to_alb.id}"
}

resource "aws_apigatewayv2_route" "forward_to_alb_route" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "ANY /{proxy+}"

  target = "integrations/${aws_apigatewayv2_integration.proxy_to_alb.id}"
}
