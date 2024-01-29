output "lb_lb" {
  description = "ALB"
  value = {
    "arn" : aws_lb.main.arn
    "arn_suffix" : aws_lb.main.arn_suffix
    "dns_name" : aws_lb.main.dns_name
    "id" : aws_lb.main.id
    "internal" : aws_lb.main.internal
    "ip_address_type" : aws_lb.main.ip_address_type
    "load_balancer_type" : aws_lb.main.load_balancer_type
    "name" : aws_lb.main.name
    "security_groups" : aws_lb.main.security_groups
    "subnet_mapping" : aws_lb.main.subnet_mapping
    "subnets" : aws_lb.main.subnets
    "tags" : aws_lb.main.tags
    "vpc_id" : aws_lb.main.vpc_id
    "zone_id" : aws_lb.main.zone_id
  }
}

output "lb_tgs" {
  description = "ALB Target Groups"
  value = {
    "ecs_identification_svc_tg" : {
      "arn" : aws_lb_target_group.ecs_identification_svc_tg.arn
      "arn_suffix" : aws_lb_target_group.ecs_identification_svc_tg.arn_suffix
      "health_check" : aws_lb_target_group.ecs_identification_svc_tg.health_check
      "id" : aws_lb_target_group.ecs_identification_svc_tg.id
      "ip_address_type" : aws_lb_target_group.ecs_identification_svc_tg.ip_address_type
      "name" : aws_lb_target_group.ecs_identification_svc_tg.name
      "name_prefix" : aws_lb_target_group.ecs_identification_svc_tg.name_prefix
      "port" : aws_lb_target_group.ecs_identification_svc_tg.port
      "protocol_version" : aws_lb_target_group.ecs_identification_svc_tg.protocol_version
      "tags" : aws_lb_target_group.ecs_identification_svc_tg.tags
      "target_type" : aws_lb_target_group.ecs_identification_svc_tg.target_type
      "vpc_id" : aws_lb_target_group.ecs_identification_svc_tg.vpc_id
    }
    "ecs_order_svc_tg" : {
      "arn" : aws_lb_target_group.ecs_order_svc_tg.arn
      "arn_suffix" : aws_lb_target_group.ecs_order_svc_tg.arn_suffix
      "health_check" : aws_lb_target_group.ecs_order_svc_tg.health_check
      "id" : aws_lb_target_group.ecs_order_svc_tg.id
      "ip_address_type" : aws_lb_target_group.ecs_order_svc_tg.ip_address_type
      "name" : aws_lb_target_group.ecs_order_svc_tg.name
      "name_prefix" : aws_lb_target_group.ecs_order_svc_tg.name_prefix
      "port" : aws_lb_target_group.ecs_order_svc_tg.port
      "protocol_version" : aws_lb_target_group.ecs_order_svc_tg.protocol_version
      "tags" : aws_lb_target_group.ecs_order_svc_tg.tags
      "target_type" : aws_lb_target_group.ecs_order_svc_tg.target_type
      "vpc_id" : aws_lb_target_group.ecs_order_svc_tg.vpc_id
    }
    "ecs_payment_svc_tg" : {
      "arn" : aws_lb_target_group.ecs_payment_svc_tg.arn
      "arn_suffix" : aws_lb_target_group.ecs_payment_svc_tg.arn_suffix
      "health_check" : aws_lb_target_group.ecs_payment_svc_tg.health_check
      "id" : aws_lb_target_group.ecs_payment_svc_tg.id
      "ip_address_type" : aws_lb_target_group.ecs_payment_svc_tg.ip_address_type
      "name" : aws_lb_target_group.ecs_payment_svc_tg.name
      "name_prefix" : aws_lb_target_group.ecs_payment_svc_tg.name_prefix
      "port" : aws_lb_target_group.ecs_payment_svc_tg.port
      "protocol_version" : aws_lb_target_group.ecs_payment_svc_tg.protocol_version
      "tags" : aws_lb_target_group.ecs_payment_svc_tg.tags
      "target_type" : aws_lb_target_group.ecs_payment_svc_tg.target_type
      "vpc_id" : aws_lb_target_group.ecs_payment_svc_tg.vpc_id
    }
    "ecs_production_svc_tg" : {
      "arn" : aws_lb_target_group.ecs_production_svc_tg.arn
      "arn_suffix" : aws_lb_target_group.ecs_production_svc_tg.arn_suffix
      "health_check" : aws_lb_target_group.ecs_production_svc_tg.health_check
      "id" : aws_lb_target_group.ecs_production_svc_tg.id
      "ip_address_type" : aws_lb_target_group.ecs_production_svc_tg.ip_address_type
      "name" : aws_lb_target_group.ecs_production_svc_tg.name
      "name_prefix" : aws_lb_target_group.ecs_production_svc_tg.name_prefix
      "port" : aws_lb_target_group.ecs_production_svc_tg.port
      "protocol_version" : aws_lb_target_group.ecs_production_svc_tg.protocol_version
      "tags" : aws_lb_target_group.ecs_production_svc_tg.tags
      "target_type" : aws_lb_target_group.ecs_production_svc_tg.target_type
      "vpc_id" : aws_lb_target_group.ecs_production_svc_tg.vpc_id
    }
  }
}

