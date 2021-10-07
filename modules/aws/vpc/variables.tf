variable "tags" {
  default     = {}
  description = "Resource tags"
  type        = map(string)
}

variable "cidr" {
  default     = "10.0.0.0/16"
  description = "The CIDR block for the VPC"
}