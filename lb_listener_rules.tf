resource "aws_lb_listener_rule" "identification_svc_rule" {
  listener_arn = aws_lb_listener.main.arn
  priority     = 10

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs_identification_svc_tg.arn
  }

  condition {
    path_pattern {
      values = ["/identification*"]
    }
  }

  tags = {
    Name : "SOAT-TC ALB Identification Service Listener Rule"
  }
}

resource "aws_lb_listener_rule" "order_svc_rule" {
  listener_arn = aws_lb_listener.main.arn
  priority     = 20

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs_order_svc_tg.arn
  }

  condition {
    path_pattern {
      values = ["/order*"]
    }
  }

  tags = {
    Name : "SOAT-TC ALB Order Service Listener Rule"
  }
}

resource "aws_lb_listener_rule" "payment_svc_rule" {
  listener_arn = aws_lb_listener.main.arn
  priority     = 30

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs_payment_svc_tg.arn
  }

  condition {
    path_pattern {
      values = ["/payment*"]
    }
  }

  tags = {
    Name : "SOAT-TC ALB Payment Service Listener Rule"
  }
}

resource "aws_lb_listener_rule" "production_svc_rule" {
  listener_arn = aws_lb_listener.main.arn
  priority     = 40

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs_production_svc_tg.arn
  }

  condition {
    path_pattern {
      values = ["/production*"]
    }
  }

  tags = {
    Name : "SOAT-TC ALB Production Service Listener Rule"
  }
}
