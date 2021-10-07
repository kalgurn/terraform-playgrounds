resource "aws_iam_role" "default" {
  name               = var.name
  assume_role_policy = var.policy

  tags = var.tags
}