resource aws_internet_gateway "project_ig" {
    vpc_id = var.vpc_id
    tags = {
        Name = "${var.environment}-ig"
    }
}

