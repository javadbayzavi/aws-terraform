resource "aws_subnet" "project_subnet" {
    vpc_id = var.vpc_id
    availability_zone = var.availability_zone 
    cidr_block = var.cidr_block
    tags = {Name = "${var.environment}-subnet"}
}