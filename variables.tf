variable "repositories" {
  type        = list(string)
  description = "The ECR repositories to create"
  default     = []
}

variable "image_retention_count" {
  type        = number
  description = "The number of tagged images to retain"
  default     = 60
}

variable "additional_aws_account_access" {
  type        = list(string)
  description = "Additional aws accounts with readonly access to the repositories"
  default     = []
}
