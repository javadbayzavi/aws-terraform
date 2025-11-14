resource aws_nat_gateway "project_nat" {
    allocation_id = var.ig_id
    subnet_id = var.subnet_id
    tags = {
        Name = "${var.environment}-nat-gateway"
    }
}