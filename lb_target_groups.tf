// ECS service will register themselves into these target groups


resource "aws_lb_target_group" "ecs_identification_svc_tg" {
  name        = "SOAT-TC-ALB-IdentificationSVC-TG"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name : "SOAT-TC ALB Identification Service Target Group"
  }
}

resource "aws_lb_target_group" "ecs_order_svc_tg" {
  name        = "SOAT-TC-ALB-OrderSVC-TG"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name : "SOAT-TC ALB Order Service Target Group"
  }
}

resource "aws_lb_target_group" "ecs_payment_svc_tg" {
  name        = "SOAT-TC-ALB-PaymentSVC-TG"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name : "SOAT-TC ALB Payment Service Target Group"
  }
}


resource "aws_lb_target_group" "ecs_production_svc_tg" {
  name        = "SOAT-TC-ALB-ProductionSVC-TG"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name : "SOAT-TC ALB Production Service Target Group"
  }
}
