output "subnet_id" {
  description = "The ID of the Subnet"
  value       = aws_subnet.project_subnet.id
}

output "subnet_arn" {
  description = "The ARN of the Subnet"
  value       = aws_subnet.project_subnet.arn
}

