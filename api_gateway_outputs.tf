output "api_gw_gateway_api" {
  description = "HTTP API"
  value = {
    "api_endpoint" : aws_apigatewayv2_api.main.api_endpoint
    "arn" : aws_apigatewayv2_api.main.arn
    "execution_arn" : aws_apigatewayv2_api.main.execution_arn
    "id" : aws_apigatewayv2_api.main.id
    "name" : aws_apigatewayv2_api.main.name
    "tags" : aws_apigatewayv2_api.main.tags
    "version" : aws_apigatewayv2_api.main.version
  }
}

output "api_gw_gateway_stage" {
  description = "Default Stage"
  value = {
    "api_id" : aws_apigatewayv2_stage.main.api_id
    "arn" : aws_apigatewayv2_stage.main.arn
    "execution_arn" : aws_apigatewayv2_stage.main.execution_arn
    "id" : aws_apigatewayv2_stage.main.id
    "tags" : aws_apigatewayv2_stage.main.tags
  }
}

# output "api_gw_routes_to_be_integrated" {

# }
