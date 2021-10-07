resource "aws_iam_policy" "default" {
  name        = var.name
  policy      = var.policy
  description = var.description

  tags = var.tags
}