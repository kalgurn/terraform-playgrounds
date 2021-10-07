variable "role_name" {
  default     = ""
  type        = string
  description = "To which IAM role to attach"
}

variable "policy_arn" {
  default     = ""
  type        = string
  description = "Which policy we are attaching"
}