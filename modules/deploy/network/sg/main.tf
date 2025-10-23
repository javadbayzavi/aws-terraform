resource "aws_security_group" "project_sg"{
    name = "${var.environment}-vpc-sg"
    description = "Security group for ${var.environment} environment"
    vpc_id = var.vpc_id
    tags = {
      Name = "${var.environment}-vpc-sg"
    }
}

resource "aws_vpc_security_group_ingress_rule" "project_sg_ingress" {
  security_group_id = aws_security_group.project_sg.id
  for_each = {for _, port in var.allowed_ports : port => port}
  cidr_ipv4   = "10.0.0.0/8"
  from_port   = each.key
  ip_protocol = "tcp"
  to_port     = each.key
}

