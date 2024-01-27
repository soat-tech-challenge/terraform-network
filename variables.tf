// Variable sets

variable "aws_region" {
  description = "AWS Region to create resources on"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "aws_session_token" {
  description = "AWS Secret Key"
  type        = string
}

// Workspace variables

locals {
  // Availability Zones
  azs = ["${var.aws_region}a", "${var.aws_region}b"]
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.10.0/24", "10.0.11.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.20.0/24", "10.0.21.0/24"]
}

