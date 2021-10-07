output "arn" {
  value       = aws_vpc.default.arn
  description = "Amazon Resource Name (ARN) of VPC"
}
output "id" {
  value       = aws_vpc.default.id
  description = "The ID of the VPC"
}
output "cidr" {
  value       = aws_vpc.default.cidr_block
  description = "The CIDR block of the VPC"
}