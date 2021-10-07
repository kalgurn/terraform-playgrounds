resource "aws_vpc" "default" {
  cidr_block = var.cidr

  tags = var.tags
}