output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.project_vpc.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.project_vpc.cidr_block
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.project_vpc.arn
}

output "vpc_name" {
  description = "The conceptual name of the VPC"
  value = var.vpc_name
}