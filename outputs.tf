output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

# output "private_subnet_id1a" {
#   description = "ID of the first private subnet in availability zone A"
# }

# output "private_subnet_id1b" {
#   description = "ID of the first private subnet in availability zone B"
# }

# output "private_subnet_id1a" {
#   description = "ID of the first public subnet in availability zone A"
# }

# output "private_subnet_id1b" {
#   description = "ID of the first public subnet in availability zone B"
# }
