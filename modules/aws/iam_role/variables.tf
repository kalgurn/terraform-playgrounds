variable "policy" {
  default     = ""
  type        = string
  description = "Policy definition"
}

variable "name" {
  default     = "role"
  type        = string
  description = "Role Name"
}

variable "tags" {
  default     = {}
  description = "Resource tags"
  type        = map(string)
}