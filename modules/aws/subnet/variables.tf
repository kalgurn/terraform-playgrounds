variable "tags" {
  default     = {}
  description = "Resource tags"
  type        = map(string)
}

variable "cidr" {
  default     = "10.0.1.0/24"
  description = "The CIDR block for the Subnet"
}

variable "vpc_id" {
  default     = ""
  description = "The VPC ID"
}

variable "availability_zone" {
  default = "eu-central-1"
}