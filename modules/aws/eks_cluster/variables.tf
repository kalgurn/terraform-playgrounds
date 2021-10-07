variable "name" {
  type        = string
  description = "Name of EKS cluster"
  default     = "example"
}
variable "role_arn" {
  type        = string
  description = "Which IAM Role cluster should pick"
  default     = ""
}
variable "subnet_ids" {
  type        = list(string)
  description = "Which subnets cluster should be located in"
  default     = []
}
variable "tags" {
  default     = {}
  description = "Resource tags"
  type        = map(string)
}