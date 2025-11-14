resource aws_eip "project_eip" {
    vpc = true
    availability_zone = var.az_id
    tags = {
        Name = "${var.environment}-eip"
    }
}