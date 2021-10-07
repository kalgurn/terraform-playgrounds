output "arn" {
  value       = aws_subnet.default.arn
  description = "The ARN of the subnet."
}
output "id" {
  value       = aws_subnet.default.id
  description = "The ID of the subnet"
}
output "cidr" {
  value       = aws_subnet.default.cidr_block
  description = "The CIDR block of the VPC"
}