output "name" {
  value       = aws_iam_role.default.name
  description = "IAM Role name"
}
output "arn" {
  value       = aws_iam_role.default.arn
  description = "IAM Role ARN"
}