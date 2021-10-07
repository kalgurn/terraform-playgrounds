variable "name" {
  type        = string
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = "default_policy"
}
variable "description" {
  type        = string
  description = "Description of the IAM policy"
  default     = "No description provided"
}
variable "policy" {
  default     = ""
  description = "Policy definition"
}
variable "tags" {
  default     = {}
  description = "Resource tags"
  type        = map(string)
}