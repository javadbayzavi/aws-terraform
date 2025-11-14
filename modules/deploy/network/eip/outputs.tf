output "eip_id" {
    description = "The id of the Elastic IP"
    value = aws_eip.project_eip.id
}