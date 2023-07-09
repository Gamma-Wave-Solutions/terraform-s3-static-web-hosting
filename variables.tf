variable "AWS_DEFAULT_REGION" {
  type = string
}
variable "AWS_ACCESS_KEY_ID" {
  type = string
}
variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "TERRAFORM_ORGANIZATION" {
  type = string
}

variable "WORKSPACE_TAGS" {
  type = list(string)
}