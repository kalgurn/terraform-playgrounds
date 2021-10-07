output "id" {
  value       = aws_iam_policy.default.id
  description = "Should be policy ID but it's ARN"
}
output "arn" {
  value       = aws_iam_policy.default.arn
  description = "ARN"
}
output "policy_id" {
  value       = aws_iam_policy.default.policy_id
  description = "Should be policy ID"
}
output "policy" {
  value       = aws_iam_policy.default.policy
  description = "Policy document"
}
