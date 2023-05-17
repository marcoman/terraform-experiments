variable "owner" {
  description = "This variable is my name"
  sensitive   = false
  type        = string
  default     = "Marco Morales"
}

variable "demo" {
  description = "This specifies if we're doing a demo, or not"
  sensitive   = false
  type        = string
  default     = "yes"
}