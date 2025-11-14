resource aws_eip "project_eip" {
    domain = "vpc"
    tags = {
        Name = "${var.environment}-eip"
    }
}