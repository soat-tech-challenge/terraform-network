output "vpc_vpc" {
  description = "VPC"
  value = {
    "arn" : aws_vpc.main.arn
    "cidr_block" : aws_vpc.main.cidr_block
    "default_network_acl_id" : aws_vpc.main.default_network_acl_id
    "default_route_table_id" : aws_vpc.main.default_route_table_id
    "default_security_group_id" : aws_vpc.main.default_security_group_id
    "id" : aws_vpc.main.id
    "main_route_table_id" : aws_vpc.main.main_route_table_id
    "tags" : aws_vpc.main.tags
  }
}

output "vpc_public_subnets" {
  description = "Public Subnets"
  value = [for sub in aws_subnet.public_subnets : {
    "arn" : sub.arn
    "availability_zone" : sub.availability_zone
    "availability_zone_id" : sub.availability_zone_id
    "cidr_block" : sub.cidr_block
    "id" : sub.id
    "tags" : sub.tags
    "vpc_id" : sub.vpc_id
  }]
}

output "vpc_private_subnets" {
  description = "Private Subnets"
  value = [for sub in aws_subnet.private_subnets : {
    "arn" : sub.arn
    "availability_zone" : sub.availability_zone
    "availability_zone_id" : sub.availability_zone_id
    "cidr_block" : sub.cidr_block
    "id" : sub.id
    "tags" : sub.tags
    "vpc_id" : sub.vpc_id
  }]
}

output "vpc_public_rt" {
  description = "Public Route Tables"
  value = {
    "arn" : aws_route_table.public_rt.arn
    "id" : aws_route_table.public_rt.id
    "route" : aws_route_table.public_rt.route
    "vpc_id" : aws_route_table.public_rt.vpc_id
  }
}
output "vpc_private_rt" {
  description = "Private Route Tables"
  value = {
    "arn" : aws_route_table.private_rt.arn
    "id" : aws_route_table.private_rt.id
    "route" : aws_route_table.private_rt.route
    "vpc_id" : aws_route_table.private_rt.vpc_id
  }
}

output "vpc_endpoint_dynamodb" {
  description = "Endpoint for DynamoDB"
  value = {
    "arn" : aws_vpc_endpoint.dynamodb.arn,
    "id" : aws_vpc_endpoint.dynamodb.id,
    "service_name" : aws_vpc_endpoint.dynamodb.service_name,
    "vpc_endpoint_type" : aws_vpc_endpoint.dynamodb.vpc_endpoint_type,
    "vpc_id" : aws_vpc_endpoint.dynamodb.vpc_id,
  }
}

output "vpc_endpoint_sqs" {
  description = "Endpoint for SQS"
  value = {
    "arn" : aws_vpc_endpoint.sqs.arn,
    "dns_entry" : aws_vpc_endpoint.sqs.dns_entry,
    "id" : aws_vpc_endpoint.sqs.id,
    "service_name" : aws_vpc_endpoint.sqs.service_name,
    "vpc_endpoint_type" : aws_vpc_endpoint.sqs.vpc_endpoint_type,
    "vpc_id" : aws_vpc_endpoint.sqs.vpc_id,
  }
}
