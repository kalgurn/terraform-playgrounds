resource "aws_subnet" "default" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr
  availability_zone = var.availability_zone

  tags = var.tags

}